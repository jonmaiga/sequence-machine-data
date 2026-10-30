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
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C014
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C041
import Seq.B000.C046
import Seq.B000.C047
import Seq.B000.C048
import Seq.B000.C049
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C008
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
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C004
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C001
import Seq.B007.C001
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
import Seq.Opaque.C024
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A362500: Number of symmetric compositions of n where differences between adjacent parts are in {-1,1}.

The programs for A362500, there is no canonical definition to state claims against.
-/

/-! ## A362500.P6748589749266050210

`A139351(A325676(2*n)+A000120(n))`
-/

namespace A362500.P6748589749266050210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139351 (A325676 (2 * n) + A000120 n).toNat

end

end A362500.P6748589749266050210

/-!
# A362501: Number of vertex cuts in the n-alkane graph.

The programs for A362501, the canonical program `A362501.P14087118245000770553` is in `Seq.B000.C046`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A362501 has offset 1).

The definition of A362501 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A362501.P16923574114874490450

`ogf((11+15x-40x^2)/(1-14x+57x^2-76x^3+32x^4))`
-/

namespace A362501.P16923574114874490450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [11, 15, -40] [1, -14, 57, -76, 32] n

end

end A362501.P16923574114874490450

namespace A362501

/-- `ogf((11+15x-40x^2)/(1-14x+57x^2-76x^3+32x^4))` -/
def P16923574114874490450.Spec : Prop :=
  ∀ n, P16923574114874490450.a n = A362501 (n + 1)

end A362501

/-! ## A362501.P14087118245000770553

`4*8^(n+1)-(49*4^(n+1)+6*(n+1)-13)/9`

The canonical program, it is in `Seq.B000.C046`.
-/

namespace A362501

/-- `4*8^(n+1)-(49*4^(n+1)+6*(n+1)-13)/9` -/
def P14087118245000770553.Spec : Prop :=
  ∀ n, P14087118245000770553.a n = (A362501 (n + 1) : ℚ)

end A362501

/-!
# A362503: a(n) is the number of k such that n - A000045(k) is a square.

The programs for A362503, there is no canonical definition to state claims against.
-/

/-! ## A362503.P16876198967509584138

`A112106(A053219(n+1))`
-/

namespace A362503.P16876198967509584138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112106 (A053219 (n + 1)).toNat

end

end A362503.P16876198967509584138

/-! ## A362503.P13156108562290298988

`A296150(A290760(n+1))+A010051(n+1)`
-/

namespace A362503.P13156108562290298988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296150 (A290760 (n + 1)).toNat + A010051 (n + 1)

end

end A362503.P13156108562290298988

/-! ## A362503.P4196373607383119522

`A010882(A356862(n+1)+A091958(2*n))`
-/

namespace A362503.P4196373607383119522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010882 (A356862 (n + 1) + A091958 (2 * n)).toNat

end

end A362503.P4196373607383119522

/-! ## A362503.P10751220373503768092

`A078929(A387484(n)+A216348(2*(n+1)))`
-/

namespace A362503.P10751220373503768092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078929 (A387484 n + A216348 (2 * (n + 1))).toNat

end

end A362503.P10751220373503768092

/-! ## A362503.P8809808571180325832

`A333206(A212431(3*n+4))+A005614(n+4)`
-/

namespace A362503.P8809808571180325832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333206 (A212431 (3 * n + 4)).toNat + A005614 (n + 4)

end

end A362503.P8809808571180325832

/-!
# A362505: Nonnegative numbers of the form x*y where x and y have the same set of decimal digits.

The programs for A362505, there is no canonical definition to state claims against.
-/

/-! ## A362505.P10297783377476198230

`∩[A010456(n+1), A020670(n+1)]`
-/

namespace A362505.P10297783377476198230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010456 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020670 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A362505.P10297783377476198230

/-! ## A362505.P6481503144922009972

`∩[A010459(n+1), A166498(n+1)]`
-/

namespace A362505.P6481503144922009972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010459 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166498 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A362505.P6481503144922009972

/-! ## A362505.P18439314020893419604

`∩[A010456(n+1), A243191(n+1)]`
-/

namespace A362505.P18439314020893419604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010456 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243191 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A362505.P18439314020893419604

/-! ## A362505.P13687030083602688076

`∩[A010456(n+1), A316621(n+1)]`
-/

namespace A362505.P13687030083602688076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010456 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316621 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A362505.P13687030083602688076

/-! ## A362505.P8676148396086448518

`∩[A010438(n+1), A010456(n+1)]`
-/

namespace A362505.P8676148396086448518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010438 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010456 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A362505.P8676148396086448518

/-!
# A362508: Number of vertex cuts in the n-Andrásfai graph.

The programs for A362508, there is no canonical definition to state claims against.
-/

/-! ## A362508.P4469530584440491138

`2^(3*(n+1)-1)-1-A287995(n+1)`
-/

namespace A362508.P4469530584440491138
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((3 * (n + 1) : ℤ) - 1 : ℤ) - 1 - (A287995 (n + 1) : ℚ)

end

end A362508.P4469530584440491138

/-!
# A362509: Number of vertex cuts in the n X n black bishop graph.

The programs for A362509, there is no canonical definition to state claims against.
-/

/-! ## A362509.P198542039075889963

`2^ceil((n+1)²/2)-1-A290719(n+1)`
-/

namespace A362509.P198542039075889963
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (⌈((n + 1) ^ 2 : ℚ) / 2⌉ : ℤ) - 1 - (A290719 (n + 1) : ℚ)

end

end A362509.P198542039075889963

/-!
# A362510: Number of odd chordless cycles of length > 4 in the halved cube graph Q_n/2.

The programs for A362510, there is no canonical definition to state claims against.
-/

/-! ## A362510.P15383440796892497193

`A244963(∏[Δ[n²]])`
-/

namespace A362510.P15383440796892497193
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244963 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A362510.P15383440796892497193

/-! ## A362510.P6864855390740550724

`A265397(∏[eq[n, ∏{d}[n, #]]])`
-/

namespace A362510.P6864855390740550724
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f4 n), d

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265397 (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A362510.P6864855390740550724

/-!
# A362511: Number of odd chordless cycles of length > 4 in the n X n king graph.

The programs for A362511, there is no canonical definition to state claims against.
-/

/-! ## A362511.P13115283458721333687

`A171462(A001142(n)-A144590(n))`
-/

namespace A362511.P13115283458721333687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171462 (A001142 n - A144590 n).toNat

end

end A362511.P13115283458721333687

/-! ## A362511.P3505853211402288

`A003415(A000704(n)*A020082(n))`
-/

namespace A362511.P3505853211402288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A000704 n * A020082 n).toNat

end

end A362511.P3505853211402288

/-!
# A362512: Number of odd chordless cycles of length > 4 in the n-Mycielski graph.

The programs for A362512, there is no canonical definition to state claims against.
-/

/-! ## A362512.P14819738871566967193

`A090616((2*(n-1))^n)`
-/

namespace A362512.P14819738871566967193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090616 ((2 * ((n : ℤ) - 1)) ^ n).toNat

end

end A362512.P14819738871566967193

/-!
# A362514: Number of odd chordless cycles of length >4 in the n-triangular grid graph.

The programs for A362514, there is no canonical definition to state claims against.
-/

/-! ## A362514.P4930654266787358391

`A057367(A057886(2^n))`
-/

namespace A362514.P4930654266787358391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057367 (A057886 (2 ^ n)).toNat

end

end A362514.P4930654266787358391

/-! ## A362514.P12987294798431211448

`A154448(A151826(n+4)-∑{e}[n+1, val((2*#)!, 2)])`
-/

namespace A362514.P12987294798431211448
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154448 (A151826 (n + 4) - ((∑ p ∈ Nat.primeFactors (f1 n), SequenceMachineLib.valuation (Nat.factorial (2 * Nat.factorization (f1 n) p)) 2 : ℕ) : ℤ)).toNat

end

end A362514.P12987294798431211448

/-! ## A362514.P15747024707706368908

`A091194(A186362(n+1)+A094280(n+5))`
-/

namespace A362514.P15747024707706368908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091194 (A186362 (n + 1) + A094280 (n + 5)).toNat

end

end A362514.P15747024707706368908

/-!
# A362515: Number of vertex cuts in the n-Fibonacci cube graph.

The programs for A362515, there is no canonical definition to state claims against.
-/

/-! ## A362515.P10973080796413847431

`2^A000045(n+3)-1-A292066(n+1)`
-/

namespace A362515.P10973080796413847431
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A000045 (n + 3) : ℤ) - 1 - (A292066 (n + 1) : ℚ)

end

end A362515.P10973080796413847431

/-!
# A362516: Number of vertex cuts in the n-gear graph.

The programs for A362516, the canonical program `A362516.P4966196509825039487` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A362516 has offset 1).

The definition of A362516 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A362516.P4966196509825039487

`2^(2*(n+1)+1)-1-A286188(n+1)`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A362516

/-- `2^(2*(n+1)+1)-1-A286188(n+1)` -/
def P4966196509825039487.Spec : Prop :=
  ∀ n, P4966196509825039487.a n = A362516 (n + 1)

theorem P4966196509825039487.correct : P4966196509825039487.Spec := by
  intro n
  simp only [A362516, Nat.add_sub_cancel]

end A362516

/-! ## A362516.P5867998492523573793

`ogf((1-5x+35x^2-91x^3-20x^4-16x^5)/(1-10x+34x^2-44x^3+13x^4+14x^5-8x^6))`
-/

namespace A362516.P5867998492523573793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -5, 35, -91, -20, -16] [1, -10, 34, -44, 13, 14, -8] n

end

end A362516.P5867998492523573793

namespace A362516

/-- `ogf((1-5x+35x^2-91x^3-20x^4-16x^5)/(1-10x+34x^2-44x^3+13x^4+14x^5-8x^6))` -/
def P5867998492523573793.Spec : Prop :=
  ∀ n, P5867998492523573793.a n = A362516 (n + 1)

end A362516

/-! ## A362516.P16795991333836353696

`A131577(2*(n+2))-(A286188(n+1)+1)`
-/

namespace A362516.P16795991333836353696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 (2 * (n + 2)) - (A286188 (n + 1) + 1)

end

end A362516.P16795991333836353696

namespace A362516

/-- `A131577(2*(n+2))-(A286188(n+1)+1)` -/
def P16795991333836353696.Spec : Prop :=
  ∀ n, P16795991333836353696.a n = A362516 (n + 1)

end A362516

/-! ## A362516.P17265095180685890531

`A000079(2*n+3)-(A286188(n+1)+1)`
-/

namespace A362516.P17265095180685890531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (2 * n + 3) - (A286188 (n + 1) + 1)

end

end A362516.P17265095180685890531

namespace A362516

/-- `A000079(2*n+3)-(A286188(n+1)+1)` -/
def P17265095180685890531.Spec : Prop :=
  ∀ n, P17265095180685890531.a n = A362516 (n + 1)

theorem P17265095180685890531.correct : P17265095180685890531.Spec := by
  intro n
  simp only [A362516, Nat.add_sub_cancel, A362516.P17265095180685890531.a, A362516.P4966196509825039487.a, A000079, A000079.P10855139691139572931.a, A286188, A286188.P11269980393292216230.a, A206776, A206776.P2228107440392899219.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A362516

/-! ## A362516.P1506692691912940813

`A286184(n+1)+A362518(n+1)-A286188(n+1)`
-/

namespace A362516.P1506692691912940813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286184 (n + 1) + (A362518 (n + 1) - A286188 (n + 1))

end

end A362516.P1506692691912940813

namespace A362516

/-- `A286184(n+1)+A362518(n+1)-A286188(n+1)` -/
def P1506692691912940813.Spec : Prop :=
  ∀ n, P1506692691912940813.a n = A362516 (n + 1)

theorem P1506692691912940813.correct : P1506692691912940813.Spec := by
  intro n
  simp only [A362516, Nat.add_sub_cancel, A362516.P1506692691912940813.a, A362516.P4966196509825039487.a, A286184, A286184.P17816476555876103025.a, A286188, A286188.P11269980393292216230.a, A362518, A362518.P11301908214829493238.a, A206776, A206776.P2228107440392899219.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A362516

/-!
# A362517: Number of vertex cuts in the n X n grid graph.

The programs for A362517, there is no canonical definition to state claims against.
-/

/-! ## A362517.P7342610116050151724

`2^(n+1)²-1-A059525(n+1)`
-/

namespace A362517.P7342610116050151724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 1) ^ 2 : ℤ) - 1 - A059525 (n + 1)

end

end A362517.P7342610116050151724

/-!
# A362518: Number of vertex cuts in the n-helm graph.

The programs for A362518, the canonical program `A362518.P11301908214829493238` is in `Seq.B000.C046`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A362518 has offset 1).

The definition of A362518 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A362518.P11301908214829493238

`(2^(n+1)-1)*(1+2^(n+2)-(n+1))-3^(n+1)`

The canonical program, it is in `Seq.B000.C046`.
-/

namespace A362518

/-- `(2^(n+1)-1)*(1+2^(n+2)-(n+1))-3^(n+1)` -/
def P11301908214829493238.Spec : Prop :=
  ∀ n, P11301908214829493238.a n = A362518 (n + 1)

theorem P11301908214829493238.correct : P11301908214829493238.Spec := by
  intro n
  simp only [A362518, Nat.add_sub_cancel]

end A362518

/-!
# A362519: Number of vertex cuts in the hypercube graph Q_n.

The programs for A362519, there is no canonical definition to state claims against.
-/

/-! ## A362519.P3900877687810335340

`2^2^n-1-A290758(n)`
-/

namespace A362519.P3900877687810335340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ 2 ^ n : ℤ) - 1 - A290758 n

end

end A362519.P3900877687810335340

/-!
# A362520: Number of vertex cuts in the n-triangular grid graph.

The programs for A362520, there is no canonical definition to state claims against.
-/

/-! ## A362520.P10887064179899799542

`A000203(A036442(n+1))-A288722(n+1)`
-/

namespace A362520.P10887064179899799542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A036442 (n + 1)).toNat - A288722 (n + 1)

end

end A362520.P10887064179899799542

/-!
# A362521: Number of vertex cuts in the n-web graph.

The programs for A362521, there is no canonical definition to state claims against.
-/

/-! ## A362521.P17428886662548473660

`2^(3*(n+1))-1-A286187(n+1)`
-/

namespace A362521.P17428886662548473660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (3 * (n + 1)) : ℤ) - 1 - A286187 (n + 1)

end

end A362521.P17428886662548473660

/-! ## A362521.P14767066632782200661

`xor(A000225(3*(n+1)), A286187(n+1))`
-/

namespace A362521.P14767066632782200661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000225 (3 * (n + 1))) (A286187 (n + 1))

end

end A362521.P14767066632782200661

/-! ## A362521.P6032332600031531697

`A000079(3*(n+1))-(A286187(n+1)+1)`
-/

namespace A362521.P6032332600031531697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (3 * (n + 1)) - (A286187 (n + 1) + 1)

end

end A362521.P6032332600031531697

/-!
# A362522: a(n) = n! * Sum_{k=0..floor(n/2)} (k+1)^(k-1) / (k! * (n-2*k)!).

The programs for A362522, the canonical program `A362522.P2557059228366508160` is in `Seq.B000.C046`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A362522 has offset 0).

The definition of A362522 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A362522.P2557059228366508160

`n!*∑{#}[floor(n/2), (#+1)^(#-1)/(#!*(n-2*#)!)]`

The canonical program, it is in `Seq.B000.C046`.
-/

namespace A362522

/-- `n!*∑{#}[floor(n/2), (#+1)^(#-1)/(#!*(n-2*#)!)]` -/
def P2557059228366508160.Spec : Prop :=
  ∀ n, P2557059228366508160.a n = (A362522 n : ℚ)

end A362522

/-! ## A362522.P6065954642686625342

`A309361(A148279(n))`
-/

namespace A362522.P6065954642686625342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309361 (A148279 n).toNat

end

end A362522.P6065954642686625342

namespace A362522

/-- `A309361(A148279(n))` -/
def P6065954642686625342.Spec : Prop :=
  ∀ n, P6065954642686625342.a n = A362522 n

end A362522

/-!
# A362523: a(n) = n! * Sum_{k=0..floor(n/3)} (k+1)^(k-1) / (k! * (n-3*k)!).

The programs for A362523, the canonical program `A362523.P12454730936039677530` is in `Seq.B000.C046`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A362523 has offset 0).

The definition of A362523 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A362523.P12454730936039677530

`n!*∑{#}[floor(n/3), (#+1)^(#-1)/(#!*(n-3*#)!)]`

The canonical program, it is in `Seq.B000.C046`.
-/

namespace A362523

/-- `n!*∑{#}[floor(n/3), (#+1)^(#-1)/(#!*(n-3*#)!)]` -/
def P12454730936039677530.Spec : Prop :=
  ∀ n, P12454730936039677530.a n = (A362523 n : ℚ)

end A362523

/-! ## A362523.P3841026113900771289

`A000027(A193375(n))`
-/

namespace A362523.P3841026113900771289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A193375 n).toNat

end

end A362523.P3841026113900771289

namespace A362523

/-- `A000027(A193375(n))` -/
def P3841026113900771289.Spec : Prop :=
  ∀ n, P3841026113900771289.a n = A362523 n

end A362523

/-! ## A362523.P2308799407154756973

`A052125(2*A193375(n))`
-/

namespace A362523.P2308799407154756973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052125 (2 * A193375 n).toNat

end

end A362523.P2308799407154756973

namespace A362523

/-- `A052125(2*A193375(n))` -/
def P2308799407154756973.Spec : Prop :=
  ∀ n, P2308799407154756973.a n = A362523 n

end A362523

/-! ## A362523.P3924038548188828050

`A193375(lcm(n, A007095(n)))`
-/

namespace A362523.P3924038548188828050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193375 (Int.lcm (n : ℤ) (A007095 n))

end

end A362523.P3924038548188828050

namespace A362523

/-- `A193375(lcm(n, A007095(n)))` -/
def P3924038548188828050.Spec : Prop :=
  ∀ n, P3924038548188828050.a n = A362523 n

end A362523

/-! ## A362523.P3389000430951241846

`A000265(A193375(n)+A193375(n))`
-/

namespace A362523.P3389000430951241846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A193375 n + A193375 n).toNat

end

end A362523.P3389000430951241846

namespace A362523

/-- `A000265(A193375(n)+A193375(n))` -/
def P3389000430951241846.Spec : Prop :=
  ∀ n, P3389000430951241846.a n = A362523 n

end A362523

/-!
# A362524: a(n) = n! * Sum_{k=0..floor(n/2)} (k+1)^(k-1) / (2^k * k! * (n-2*k)!).

The programs for A362524, the canonical program `A362524.P6424334557139040722` is in `Seq.B000.C046`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A362524 has offset 0).

The definition of A362524 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A362524.P6424334557139040722

`n!*∑{#}[floor(n/2), (#+1)^(#-1)/(2^#*#!*(n-2*#)!)]`

The canonical program, it is in `Seq.B000.C046`.
-/

namespace A362524

/-- `n!*∑{#}[floor(n/2), (#+1)^(#-1)/(2^#*#!*(n-2*#)!)]` -/
def P6424334557139040722.Spec : Prop :=
  ∀ n, P6424334557139040722.a n = (A362524 n : ℚ)

end A362524

/-! ## A362524.P565824696707328504

`A200512(A009290(n))+A009290(n)`
-/

namespace A362524.P565824696707328504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200512 (A009290 n).toNat + A009290 n

end

end A362524.P565824696707328504

namespace A362524

/-- `A200512(A009290(n))+A009290(n)` -/
def P565824696707328504.Spec : Prop :=
  ∀ n, P565824696707328504.a n = A362524 n

end A362524

/-! ## A362524.P6614005236812148956

`A185294(A001405(n))+A081919(n)`
-/

namespace A362524.P6614005236812148956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185294 (A001405 n).toNat + A081919 n

end

end A362524.P6614005236812148956

namespace A362524

/-- `A185294(A001405(n))+A081919(n)` -/
def P6614005236812148956.Spec : Prop :=
  ∀ n, P6614005236812148956.a n = A362524 n

end A362524

/-!
# A362525: a(n) = n! * Sum_{k=0..floor(n/3)} (k+1)^(k-1) / (6^k * k! * (n-3*k)!).

The programs for A362525, the canonical program `A362525.P1056116051681484644` is in `Seq.B000.C046`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A362525 has offset 0).

The definition of A362525 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A362525.P1056116051681484644

`n!*∑{#}[floor(n/3), (#+1)^(#-1)/(6^#*#!*(n-3*#)!)]`

The canonical program, it is in `Seq.B000.C046`.
-/

namespace A362525

/-- `n!*∑{#}[floor(n/3), (#+1)^(#-1)/(6^#*#!*(n-3*#)!)]` -/
def P1056116051681484644.Spec : Prop :=
  ∀ n, P1056116051681484644.a n = (A362525 n : ℚ)

end A362525

/-!
# A362526: a(n) = 2^n*(n + 2) + (n - 7)*n/2 - 2.

The programs for A362526, the canonical program `A362526.P16300002904822244468` is in `Seq.B000.C046`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A362526 has offset 1).

The definition of A362526 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A362526.P16300002904822244468

`2^(n+1)*(n+3)+(n-6)*(n+1)/2-2`

The canonical program, it is in `Seq.B000.C046`.
-/

namespace A362526

/-- `2^(n+1)*(n+3)+(n-6)*(n+1)/2-2` -/
def P16300002904822244468.Spec : Prop :=
  ∀ n, P16300002904822244468.a n = (A362526 (n + 1) : ℚ)

end A362526

/-! ## A362526.P12103574305956124880

`ogf((1+2x-12x^2+10x^3)/(1-7x+19x^2-25x^3+16x^4-4x^5))`
-/

namespace A362526.P12103574305956124880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2, -12, 10] [1, -7, 19, -25, 16, -4] n

end

end A362526.P12103574305956124880

namespace A362526

/-- `ogf((1+2x-12x^2+10x^3)/(1-7x+19x^2-25x^3+16x^4-4x^5))` -/
def P12103574305956124880.Spec : Prop :=
  ∀ n, P12103574305956124880.a n = A362526 (n + 1)

end A362526

/-! ## A362526.P711451066581115051

`∑[n-(3-A079859(n+4))]`
-/

namespace A362526.P711451066581115051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (3 - A079859 (n + 4))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A362526.P711451066581115051

namespace A362526

/-- `∑[n-(3-A079859(n+4))]` -/
def P711451066581115051.Spec : Prop :=
  ∀ n, P711451066581115051.a n = A362526 (n + 1)

end A362526

/-! ## A362526.P438571314751086887

`∑[(n+4)*A000051(n)-7]`
-/

namespace A362526.P438571314751086887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 4 : ℤ) * A000051 n - 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A362526.P438571314751086887

namespace A362526

/-- `∑[(n+4)*A000051(n)-7]` -/
def P438571314751086887.Spec : Prop :=
  ∀ n, P438571314751086887.a n = A362526 (n + 1)

end A362526

/-! ## A362526.P7847884535187395597

`∑[A360951(n+2)+n+n]`
-/

namespace A362526.P7847884535187395597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360951 (n + 2) + (n : ℤ) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A362526.P7847884535187395597

namespace A362526

/-- `∑[A360951(n+2)+n+n]` -/
def P7847884535187395597.Spec : Prop :=
  ∀ n, P7847884535187395597.a n = A362526 (n + 1)

end A362526

/-! ## A362526.P3967048605968954061

`∑[∑[(n+5)*A131577(n)+1]]`
-/

namespace A362526.P3967048605968954061
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 5 : ℤ) * A131577 n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A362526.P3967048605968954061

namespace A362526

/-- `∑[∑[(n+5)*A131577(n)+1]]` -/
def P3967048605968954061.Spec : Prop :=
  ∀ n, P3967048605968954061.a n = A362526 (n + 1)

end A362526

/-!
# A362527: a(1) = 2 and a(n+1) is the largest prime <= a(n) + n.

The programs for A362527, the canonical program `A362527.P900221847411490249` is in `Seq.B001.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A362527 has offset 1).

The definition of A362527 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 454 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A362527.P15556969299125787162

`A151799(n+1+a(n-1))` with `a(0)=2`
-/

namespace A362527.P15556969299125787162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A151799 ((n + 1 : ℤ) + a (n - 1)).toNat

end

end A362527.P15556969299125787162

namespace A362527

/-- `A151799(n+1+a(n-1))` -/
def P15556969299125787162.Spec : Prop :=
  ∀ n, P15556969299125787162.a n = A362527 (n + 1)

end A362527

/-! ## A362527.P900221847411490249

`A000040(A000720(a(n-1)+n))` with `a(0)=2`

The canonical program, it is in `Seq.B001.C013`.
-/

namespace A362527

/-- `A000040(A000720(a(n-1)+n))` -/
def P900221847411490249.Spec : Prop :=
  ∀ n, P900221847411490249.a n = A362527 (n + 1)

theorem P900221847411490249.correct : P900221847411490249.Spec := by
  intro n
  simp only [A362527, Nat.add_sub_cancel]

end A362527

/-! ## A362527.P2977797218513283924

`A151799(A151800(a(n-1)+n))` with `a(0)=2`
-/

namespace A362527.P2977797218513283924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A151799 (A151800 (a (n - 1) + (n : ℤ)).toNat).toNat

end

end A362527.P2977797218513283924

namespace A362527

/-- `A151799(A151800(a(n-1)+n))` -/
def P2977797218513283924.Spec : Prop :=
  ∀ n, P2977797218513283924.a n = A362527 (n + 1)

end A362527

/-! ## A362527.P6032689290286354928

`A007917(a(n-1)+n)` with `a(0)=2`
-/

namespace A362527.P6032689290286354928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A007917 (a (n - 1) + (n : ℤ)).toNat

end

end A362527.P6032689290286354928

namespace A362527

/-- `A007917(a(n-1)+n)` -/
def P6032689290286354928.Spec : Prop :=
  ∀ n, P6032689290286354928.a n = A362527 (n + 1)

end A362527

/-! ## A362527.P6459918163127751025

`A070320(a(n-1)+n)+1` with `a(0)=2`
-/

namespace A362527.P6459918163127751025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A070320 (a (n - 1) + (n : ℤ)).toNat + 1

end

end A362527.P6459918163127751025

namespace A362527

/-- `A070320(a(n-1)+n)+1` -/
def P6459918163127751025.Spec : Prop :=
  ∀ n, P6459918163127751025.a n = A362527 (n + 1)

end A362527

/-! ## A362527.P15959864150397642277

`A000040(A230980(a(n-1)+n))` with `a(0)=2`
-/

namespace A362527.P15959864150397642277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A000040 (A230980 (a (n - 1) + (n : ℤ)).toNat).toNat

end

end A362527.P15959864150397642277

namespace A362527

/-- `A000040(A230980(a(n-1)+n))` -/
def P15959864150397642277.Spec : Prop :=
  ∀ n, P15959864150397642277.a n = A362527 (n + 1)

end A362527

/-! ## A362527.P10097576327016380606

`A349127(A066169(a(n-1)+n))+1` with `a(0)=2`
-/

namespace A362527.P10097576327016380606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A349127 (A066169 (a (n - 1) + (n : ℤ)).toNat).toNat + 1

end

end A362527.P10097576327016380606

namespace A362527

/-- `A349127(A066169(a(n-1)+n))+1` -/
def P10097576327016380606.Spec : Prop :=
  ∀ n, P10097576327016380606.a n = A362527 (n + 1)

end A362527

/-! ## A362527.P14399907774801827536

`A136548(a(n-1)+n+1)` with `a(0)=2`
-/

namespace A362527.P14399907774801827536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A136548 (a (n - 1) + (n + 1 : ℤ)).toNat

end

end A362527.P14399907774801827536

namespace A362527

/-- `A136548(a(n-1)+n+1)` -/
def P14399907774801827536.Spec : Prop :=
  ∀ n, P14399907774801827536.a n = A362527 (n + 1)

end A362527

/-!
# A362532: The smallest positive integer m such that m mod 2k < k for k = 1, 2, 3, ..., n.

The programs for A362532, there is no canonical definition to state claims against.
-/

/-! ## A362532.P15228711390101168082

`A004277(A395741(n+1))`
-/

namespace A362532.P15228711390101168082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A395741 (n + 1)).toNat

end

end A362532.P15228711390101168082

/-! ## A362532.P16552927323996181958

`∏[A326702(A265192(2*n+1))+1]`
-/

namespace A362532.P16552927323996181958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326702 (A265192 (2 * n + 1)).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A362532.P16552927323996181958

/-! ## A362532.P12841977899093005019

`∏[A326691(A002865(n)+A002774(n))]`
-/

namespace A362532.P12841977899093005019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326691 (A002865 n + A002774 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A362532.P12841977899093005019

/-! ## A362532.P4594561015210692654

`A014695(A124315(n+1))*A124315(A175943(n+1))`
-/

namespace A362532.P4594561015210692654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014695 (A124315 (n + 1)).toNat * A124315 (A175943 (n + 1)).toNat

end

end A362532.P4594561015210692654

/-!
# A362534: Numerators of the ratio of the symmetry-constrained bound to the adiabatic bound on polarization transfer in AXn spin-1/2 systems.

The programs for A362534, there is no canonical definition to state claims against.
-/

/-! ## A362534.P15695416877898699505

`A000265(A063886(n+2))*A008619(n)`
-/

namespace A362534.P15695416877898699505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A063886 (n + 2)).toNat * A008619 n

end

end A362534.P15695416877898699505

/-! ## A362534.P3239013606699830011

`A065033(n+1)*A317933(A003945(n+3))`
-/

namespace A362534.P3239013606699830011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (n + 1) * A317933 (A003945 (n + 3)).toNat

end

end A362534.P3239013606699830011

/-! ## A362534.P6466397254976384678

`A324497(A286826(n+2)-n)`
-/

namespace A362534.P6466397254976384678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324497 (A286826 (n + 2) - (n : ℤ)).toNat

end

end A362534.P6466397254976384678

/-! ## A362534.P1489149870128289470

`A324497(xor(n, A286826(n+2)))`
-/

namespace A362534.P1489149870128289470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324497 (Int.xor (n : ℤ) (A286826 (n + 2))).toNat

end

end A362534.P1489149870128289470

/-! ## A362534.P3286595490162562726

`lcm(A086116(n+1), A119704(2^(A011371(n)+1)))`
-/

namespace A362534.P3286595490162562726
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A086116 (n + 1)) (A119704 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A011371 n + 1 : ℤ))).toNat)

end

end A362534.P3286595490162562726

/-!
# A362536: Number of chordless cycles of length >= 4 in the n X n antelope graph.

The programs for A362536, there is no canonical definition to state claims against.
-/

/-! ## A362536.P5797940675480038070

`Δ[A137432(A324088(n+1))]`
-/

namespace A362536.P5797940675480038070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137432 (A324088 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A362536.P5797940675480038070

/-! ## A362536.P16075354528178516421

`A006370(C(∑[A320645(n+1)], 2))`
-/

namespace A362536.P16075354528178516421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320645 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006370 (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j).toNat 2)

end

end A362536.P16075354528178516421

/-! ## A362536.P13387607461155123791

`A192232(3*n+1)%A000351(A185036(2*(n+1)))`
-/

namespace A362536.P13387607461155123791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A192232 (3 * n + 1)) (A000351 (A185036 (2 * (n + 1))).toNat)

end

end A362536.P13387607461155123791

/-!
# A362538: Number of chordless cycles of length >=4 in the n X n camel graph.

The programs for A362538, there is no canonical definition to state claims against.
-/

/-! ## A362538.P6832203448201690068

`A074426(n+1)-A302242(A136653(n))`
-/

namespace A362538.P6832203448201690068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074426 (n + 1) - A302242 (A136653 n).toNat

end

end A362538.P6832203448201690068

/-! ## A362538.P10114726249310692796

`A205727(A148231(n))`
-/

namespace A362538.P10114726249310692796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205727 (A148231 n).toNat

end

end A362538.P10114726249310692796

/-!
# A362539: Number of chordless cycles of length >=4 in the n X n zebra graph.

The programs for A362539, there is no canonical definition to state claims against.
-/

/-! ## A362539.P5258248195966646669

`2^A208222(n)-2`
-/

namespace A362539.P5258248195966646669
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A208222 n : ℤ) - 2

end

end A362539.P5258248195966646669

/-! ## A362539.P15837184332611859542

`2^A208225(n)-2`
-/

namespace A362539.P15837184332611859542
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A208225 n : ℤ) - 2

end

end A362539.P15837184332611859542

/-!
# A362540: Number of chordless cycles of length >= 4 in the n-flower graph.

The programs for A362540, the canonical program `A362540.P10541930115098861431` is in `Seq.B000.C046`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A362540 has offset 2).

The definition of A362540 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A362540.P10541930115098861431

`ogf((3+11x-14x^2-22x^3-6x^4-68x^5+9x^6+19x^7-25x^8+13x^9+9x^10-x^11)/(1-4x+5x^2-4x^3+2x^4+4x^5-7x^6+8x^7-6x^8-4x^9+6x^10-x^12))`

The canonical program, it is in `Seq.B000.C046`.
-/

namespace A362540

/-- `ogf((3+11x-14x^2-22x^3-6x^4-68x^5+9x^6+19x^7-25x^8+13x^9+9x^10-x^11)/(1-4x+5x^2-4x^3+2x^4+4x^5-7x^6+8x^7-6x^8-4x^9+6x^10-x^12))` -/
def P10541930115098861431.Spec : Prop :=
  ∀ n, P10541930115098861431.a n = A362540 (n + 2)

theorem P10541930115098861431.correct : P10541930115098861431.Spec := by
  intro n
  simp only [A362540, Nat.add_sub_cancel]

end A362540

/-!
# A362545: Number of odd chordless cycles of length >4 in the (2n+1)-flower snark.

The programs for A362545, the canonical program `A362545.P6428571546983445576` is in `Seq.B001.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A362545 has offset 0).

The definition of A362545 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A362545.P11784816421777614431

`ogf((1+6x-3x^2)/(1-7x+7x^2-x^3))`
-/

namespace A362545.P11784816421777614431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 6, -3] [1, -7, 7, -1] n

end

end A362545.P11784816421777614431

namespace A362545

/-- `ogf((1+6x-3x^2)/(1-7x+7x^2-x^3))` -/
def P11784816421777614431.Spec : Prop :=
  ∀ n, P11784816421777614431.a n = A362545 n

end A362545

/-! ## A362545.P18243908783060706484

`A377725(n)-2`
-/

namespace A362545.P18243908783060706484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377725 n - 2

end

end A362545.P18243908783060706484

namespace A362545

/-- `A377725(n)-2` -/
def P18243908783060706484.Spec : Prop :=
  ∀ n, P18243908783060706484.a n = A362545 n

theorem P18243908783060706484.correct : P18243908783060706484.Spec := by
  intro n
  simp only [A362545, Nat.add_sub_cancel, A362545.P18243908783060706484.a, A362545.P6428571546983445576.a, A002315, A002315.P5084403563182278193.a, A377725, A377725.P10966813579059079895.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A362545

/-! ## A362545.P6428571546983445576

`2*A002315(n)-1`

The canonical program, it is in `Seq.B001.C013`.
-/

namespace A362545

/-- `2*A002315(n)-1` -/
def P6428571546983445576.Spec : Prop :=
  ∀ n, P6428571546983445576.a n = A362545 n

theorem P6428571546983445576.correct : P6428571546983445576.Spec := by
  intro n
  simp only [A362545]

end A362545

/-! ## A362545.P890062323221492305

`∑[ogf((1+6x-3x^2)/(1-6x+x^2))]`
-/

namespace A362545.P890062323221492305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 6, -3] [1, -6, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A362545.P890062323221492305

namespace A362545

/-- `∑[ogf((1+6x-3x^2)/(1-6x+x^2))]` -/
def P890062323221492305.Spec : Prop :=
  ∀ n, P890062323221492305.a n = A362545 n

end A362545

/-! ## A362545.P6185196545577466085

`A051927(Δ[n²])`
-/

namespace A362545.P6185196545577466085
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051927 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A362545.P6185196545577466085

namespace A362545

/-- `A051927(Δ[n²])` -/
def P6185196545577466085.Spec : Prop :=
  ∀ n, P6185196545577466085.a n = A362545 n

end A362545

/-! ## A362545.P17845550716050606411

`A100227(Δ[n²])`
-/

namespace A362545.P17845550716050606411
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100227 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A362545.P17845550716050606411

namespace A362545

/-- `A100227(Δ[n²])` -/
def P17845550716050606411.Spec : Prop :=
  ∀ n, P17845550716050606411.a n = A362545 n

end A362545

/-! ## A362545.P4300665563669427823

`Δ[A001541(n)]-1`
-/

namespace A362545.P4300665563669427823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001541 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A362545.P4300665563669427823

namespace A362545

/-- `Δ[A001541(n)]-1` -/
def P4300665563669427823.Spec : Prop :=
  ∀ n, P4300665563669427823.a n = A362545 n

end A362545

/-! ## A362545.P9703094927020262746

`A077444(n+1)-1`
-/

namespace A362545.P9703094927020262746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077444 (n + 1) - 1

end

end A362545.P9703094927020262746

namespace A362545

/-- `A077444(n+1)-1` -/
def P9703094927020262746.Spec : Prop :=
  ∀ n, P9703094927020262746.a n = A362545 n

end A362545

/-! ## A362545.P18212515523096927584

`A041010(2*n)-1`
-/

namespace A362545.P18212515523096927584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041010 (2 * n) - 1

end

end A362545.P18212515523096927584

namespace A362545

/-- `A041010(2*n)-1` -/
def P18212515523096927584.Spec : Prop :=
  ∀ n, P18212515523096927584.a n = A362545 n

end A362545

/-! ## A362545.P5451263030923518156

`A174504(3*n+1)`
-/

namespace A362545.P5451263030923518156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174504 (3 * n + 1)

end

end A362545.P5451263030923518156

namespace A362545

/-- `A174504(3*n+1)` -/
def P5451263030923518156.Spec : Prop :=
  ∀ n, P5451263030923518156.a n = A362545 n

end A362545

/-! ## A362545.P3091907203430067333

`4*A001652(n)+1`
-/

namespace A362545.P3091907203430067333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A001652 n + 1

end

end A362545.P3091907203430067333

namespace A362545

/-- `4*A001652(n)+1` -/
def P3091907203430067333.Spec : Prop :=
  ∀ n, P3091907203430067333.a n = A362545 n

end A362545

/-! ## A362545.P244808843633714698

`4*A046090(n)-3`
-/

namespace A362545.P244808843633714698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A046090 n - 3

end

end A362545.P244808843633714698

namespace A362545

/-- `4*A046090(n)-3` -/
def P244808843633714698.Spec : Prop :=
  ∀ n, P244808843633714698.a n = A362545 n

end A362545

/-! ## A362545.P8268495665542705512

`A002203(Δ[n²])-1`
-/

namespace A362545.P8268495665542705512
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002203 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - 1

end

end A362545.P8268495665542705512

namespace A362545

/-- `A002203(Δ[n²])-1` -/
def P8268495665542705512.Spec : Prop :=
  ∀ n, P8268495665542705512.a n = A362545 n

end A362545

/-! ## A362545.P128773655408402577

`A080039(Δ[n²])-1`
-/

namespace A362545.P128773655408402577
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080039 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - 1

end

end A362545.P128773655408402577

namespace A362545

/-- `A080039(Δ[n²])-1` -/
def P128773655408402577.Spec : Prop :=
  ∀ n, P128773655408402577.a n = A362545 n

end A362545

/-! ## A362545.P6834823264488571479

`A099425(Δ[n²])-1`
-/

namespace A362545.P6834823264488571479
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099425 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - 1

end

end A362545.P6834823264488571479

namespace A362545

/-- `A099425(Δ[n²])-1` -/
def P6834823264488571479.Spec : Prop :=
  ∀ n, P6834823264488571479.a n = A362545 n

end A362545

/-! ## A362545.P3050127692934244746

`A129744(Δ[n²])-1`
-/

namespace A362545.P3050127692934244746
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129744 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - 1

end

end A362545.P3050127692934244746

namespace A362545

/-- `A129744(Δ[n²])-1` -/
def P3050127692934244746.Spec : Prop :=
  ∀ n, P3050127692934244746.a n = A362545 n

end A362545

/-! ## A362545.P15457884072814396930

`A162484(Δ[n²])-1`
-/

namespace A362545.P15457884072814396930
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162484 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - 1

end

end A362545.P15457884072814396930

namespace A362545

/-- `A162484(Δ[n²])-1` -/
def P15457884072814396930.Spec : Prop :=
  ∀ n, P15457884072814396930.a n = A362545 n

end A362545

/-! ## A362545.P1791729528191807825

`A124696(Δ[n²])-2`
-/

namespace A362545.P1791729528191807825
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124696 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - 2

end

end A362545.P1791729528191807825

namespace A362545

/-- `A124696(Δ[n²])-2` -/
def P1791729528191807825.Spec : Prop :=
  ∀ n, P1791729528191807825.a n = A362545 n

end A362545

/-! ## A362545.P6380543177146692492

`A182143(Δ[n²])-2`
-/

namespace A362545.P6380543177146692492
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182143 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - 2

end

end A362545.P6380543177146692492

namespace A362545

/-- `A182143(Δ[n²])-2` -/
def P6380543177146692492.Spec : Prop :=
  ∀ n, P6380543177146692492.a n = A362545 n

end A362545

/-! ## A362545.P10655399937795408140

`A162485(Δ[n²])-3`
-/

namespace A362545.P10655399937795408140
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162485 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - 3

end

end A362545.P10655399937795408140

namespace A362545

/-- `A162485(Δ[n²])-3` -/
def P10655399937795408140.Spec : Prop :=
  ∀ n, P10655399937795408140.a n = A362545 n

end A362545

/-!
# A362548: Number of partitions of n with at least three parts larger than 1.

The programs for A362548, there is no canonical definition to state claims against.
-/

/-! ## A362548.P1620442831813917056

`A000041(n)-(1+floor(n²/4))`
-/

namespace A362548.P1620442831813917056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - (1 + ⌊(n ^ 2 : ℚ) / 4⌋)

end

end A362548.P1620442831813917056

/-! ## A362548.P17634796968668424005

`A000065(n)-floor((n/2)²)`
-/

namespace A362548.P17634796968668424005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000065 n - ⌊((n : ℚ) / 2) ^ 2⌋

end

end A362548.P17634796968668424005

/-! ## A362548.P18357282326080621586

`A133041(n)-∑[1+floor(n/2)]`
-/

namespace A362548.P18357282326080621586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + ⌊(n : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133041 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A362548.P18357282326080621586

/-! ## A362548.P917125398057322321

`∑[A002865(n)-floor(n/2)]-1`
-/

namespace A362548.P917125398057322321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n - ⌊(n : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A362548.P917125398057322321

/-! ## A362548.P6766022660913120881

`a(n-1)+A232697(n)-1-(n-∑[and(1, n)])` with `a(0)=0`
-/

namespace A362548.P6766022660913120881
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 n

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + (A232697 n - 1) - ((n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ))

end

end A362548.P6766022660913120881

/-! ## A362548.P16323986360298994168

`abs(A033638(n)-A000041(n))`
-/

namespace A362548.P16323986360298994168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A033638 n - A000041 n|

end

end A362548.P16323986360298994168

/-! ## A362548.P1452345680395589523

`∑[A002865(n)]-A033638(n)`
-/

namespace A362548.P1452345680395589523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A033638 n

end

end A362548.P1452345680395589523

/-! ## A362548.P12879758258836722478

`∑[A002865(n)-A123108(n)]`
-/

namespace A362548.P12879758258836722478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n - A123108 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A362548.P12879758258836722478

/-! ## A362548.P10398628120126319297

`∑[A232697(n)-A008619(n)]`
-/

namespace A362548.P10398628120126319297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232697 n - A008619 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A362548.P10398628120126319297

/-! ## A362548.P6480005569577469405

`A000041(n)-1-A002620(n)`
-/

namespace A362548.P6480005569577469405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - 1 - A002620 n

end

end A362548.P6480005569577469405

/-! ## A362548.P15541544858956046051

`∑[A232697(n)-(A004526(n)+1)]`
-/

namespace A362548.P15541544858956046051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232697 n - (A004526 n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A362548.P15541544858956046051

/-! ## A362548.P18254751412760863561

`A000041(n)-1-∑[A004526(n)]`
-/

namespace A362548.P18254751412760863561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - 1 - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A362548.P18254751412760863561

/-! ## A362548.P6785993838034036063

`∑[A085811(n+3)-A123108(n)]`
-/

namespace A362548.P6785993838034036063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085811 (n + 3) - A123108 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A362548.P6785993838034036063

/-! ## A362548.P14156513399677799304

`∑{d}[n+1, A133732(#)]-∑[A123108(n)]`
-/

namespace A362548.P14156513399677799304
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A133732 d - ∑ j ∈ Finset.range (n + 1), f2 j

end

end A362548.P14156513399677799304

/-! ## A362548.P4493453960358131193

`A003106(n)+A039900(n)-A033638(n)`
-/

namespace A362548.P4493453960358131193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003106 n + (A039900 n - A033638 n)

end

end A362548.P4493453960358131193

/-! ## A362548.P15080377970723193321

`A000009(n)+A047967(n)-A033638(n)`
-/

namespace A362548.P15080377970723193321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 n + (A047967 n - A033638 n)

end

end A362548.P15080377970723193321

/-! ## A362548.P17857947452959420433

`A032741(n)+A167934(n)-A033638(n)`
-/

namespace A362548.P17857947452959420433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n + (A167934 n - A033638 n)

end

end A362548.P17857947452959420433

/-! ## A362548.P14692429335956311950

`A047967(n)+A000009(n)-∑[A123108(n)]`
-/

namespace A362548.P14692429335956311950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047967 n + A000009 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A362548.P14692429335956311950

/-! ## A362548.P1475274746581932623

`∑[A167928(n)+A032741(n)-A123108(n)]`
-/

namespace A362548.P1475274746581932623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167928 n + A032741 n - A123108 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A362548.P1475274746581932623

/-! ## A362548.P1286418421910049160

`A100824(2*n)-A033638(n)`
-/

namespace A362548.P1286418421910049160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100824 (2 * n) - A033638 n

end

end A362548.P1286418421910049160

/-!
# A362549: Number of partitions of [n] whose blocks can be ordered such that the i-th block (except possibly the last) has at least i elements and no block j > i has an element smaller than the i-th smallest element of block i.

The programs for A362549, there is no canonical definition to state claims against.
-/

/-! ## A362549.P7190477940043225047

`Δ[A210540(n+2)%A198683(n+2)]`
-/

namespace A362549.P7190477940043225047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A210540 (n + 2)) (A198683 (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A362549.P7190477940043225047

/-! ## A362549.P6638801045648267311

`floor(sqrt(A343703(n!)))`
-/

namespace A362549.P6638801045648267311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A343703 (Nat.factorial n))

end

end A362549.P6638801045648267311

/-! ## A362549.P10859623000751935582

`A055086(A159311(n))`
-/

namespace A362549.P10859623000751935582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055086 (A159311 n).toNat

end

end A362549.P10859623000751935582

/-! ## A362549.P5120995072455669879

`A356874(A137953(n))`
-/

namespace A362549.P5120995072455669879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356874 (A137953 n).toNat

end

end A362549.P5120995072455669879

/-!
# A362551: a(0)=0. For each digit d in the sequence, append the smallest unused integer such that its last digit equals d.

The programs for A362551, there is no canonical definition to state claims against.
-/

/-! ## A362551.P10480239222109827527

`A362371(lt[A363519(3*(n+1)), A157676(n+3)])`
-/

namespace A362551.P10480239222109827527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363519 (3 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157676 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362371 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A362551.P10480239222109827527

/-! ## A362551.P16291379996127558103

`A362371(lt[A363519(3*(n+1)), A078633(2*n+5)])`
-/

namespace A362551.P16291379996127558103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363519 (3 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078633 (2 * n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362371 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A362551.P16291379996127558103

/-!
# A362555: Number of distinct n-digit suffixes generated by iteratively multiplying an integer by 6, where the initial integer is 1.

The programs for A362555, the canonical program `A362555.P8565414055957789994` is in `Seq.B000.C046`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A362555 has offset 1).

The definition of A362555 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A362555.P8565414055957789994

`5^n+n+1`

The canonical program, it is in `Seq.B000.C046`.
-/

namespace A362555

/-- `5^n+n+1` -/
def P8565414055957789994.Spec : Prop :=
  ∀ n, (P8565414055957789994.a n : ℤ) = A362555 (n + 1)

theorem P8565414055957789994.correct : P8565414055957789994.Spec := by
  intro n
  simp only [A362555, Nat.add_sub_cancel]

end A362555

/-! ## A362555.P9679546125515634044

`ogf((2-7x+x^2)/(1-7x+11x^2-5x^3))`
-/

namespace A362555.P9679546125515634044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -7, 1] [1, -7, 11, -5] n

end

end A362555.P9679546125515634044

namespace A362555

/-- `ogf((2-7x+x^2)/(1-7x+11x^2-5x^3))` -/
def P9679546125515634044.Spec : Prop :=
  ∀ n, P9679546125515634044.a n = A362555 (n + 1)

end A362555

/-! ## A362555.P731545453273409661

`∑[ogf((2-7x+x^2)/(1-6x+5x^2))]`
-/

namespace A362555.P731545453273409661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -7, 1] [1, -6, 5] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A362555.P731545453273409661

namespace A362555

/-- `∑[ogf((2-7x+x^2)/(1-6x+5x^2))]` -/
def P731545453273409661.Spec : Prop :=
  ∀ n, P731545453273409661.a n = A362555 (n + 1)

end A362555

/-! ## A362555.P4466709077865786820

`∑[5*a(n-1)-4]` with `a(0)=2, a(1)=5`
-/

namespace A362555.P4466709077865786820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, 5] fun n f1 =>
  5 * f1 (n - 1) - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A362555.P4466709077865786820

namespace A362555

/-- `∑[5*a(n-1)-4]` -/
def P4466709077865786820.Spec : Prop :=
  ∀ n, P4466709077865786820.a n = A362555 (n + 1)

end A362555

/-! ## A362555.P8232090019115916594

`floor(5*(a(n-1)-n)+n+1)` with `a(0)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A362555.P8232090019115916594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  5 * (a (n - 1) - (n : ℤ)) + (n + 1 : ℤ)

end

end A362555.P8232090019115916594

namespace A362555

/-- `floor(5*(a(n-1)-n)+n+1)` -/
def P8232090019115916594.Spec : Prop :=
  ∀ n, P8232090019115916594.a n = A362555 (n + 1)

theorem P8232090019115916594.correct : P8232090019115916594.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A362555, Nat.add_sub_cancel, A362555.P8232090019115916594.a, A362555.P8565414055957789994.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A362555, Nat.add_sub_cancel, A362555.P8232090019115916594.a, A362555.P8565414055957789994.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A362555

/-! ## A362555.P13378282049398406757

`5*((n+1)/5+a(n-1)-n)` with `a(0)=2`
-/

namespace A362555.P13378282049398406757
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [2] fun n a =>
  5 * ((n + 1 : ℚ) / 5 + (a (n - 1) - (n : ℚ)))

end

end A362555.P13378282049398406757

namespace A362555

/-- `5*((n+1)/5+a(n-1)-n)` -/
def P13378282049398406757.Spec : Prop :=
  ∀ n, P13378282049398406757.a n = (A362555 (n + 1) : ℚ)

theorem P13378282049398406757.correct : P13378282049398406757.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A362555, Nat.add_sub_cancel, A362555.P13378282049398406757.a, A362555.P8565414055957789994.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A362555, Nat.add_sub_cancel, A362555.P13378282049398406757.a, A362555.P8565414055957789994.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A362555

/-! ## A362555.P17379010153368468743

`floor(a(n-1)-(4*(n-a(n-1))-1))` with `a(0)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A362555.P17379010153368468743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  a (n - 1) - (4 * ((n : ℤ) - a (n - 1)) - 1)

end

end A362555.P17379010153368468743

namespace A362555

/-- `floor(a(n-1)-(4*(n-a(n-1))-1))` -/
def P17379010153368468743.Spec : Prop :=
  ∀ n, P17379010153368468743.a n = A362555 (n + 1)

theorem P17379010153368468743.correct : P17379010153368468743.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A362555, Nat.add_sub_cancel, A362555.P17379010153368468743.a, A362555.P8565414055957789994.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A362555, Nat.add_sub_cancel, A362555.P17379010153368468743.a, A362555.P8565414055957789994.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A362555

/-! ## A362555.P13823128940443095866

`∑[A005054(n)+1]`
-/

namespace A362555.P13823128940443095866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005054 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A362555.P13823128940443095866

namespace A362555

/-- `∑[A005054(n)+1]` -/
def P13823128940443095866.Spec : Prop :=
  ∀ n, P13823128940443095866.a n = A362555 (n + 1)

end A362555

/-! ## A362555.P10285140347136708119

`∑[∑[A055842(n)]+1]`
-/

namespace A362555.P10285140347136708119
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055842 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A362555.P10285140347136708119

namespace A362555

/-- `∑[∑[A055842(n)]+1]` -/
def P10285140347136708119.Spec : Prop :=
  ∀ n, P10285140347136708119.a n = A362555 (n + 1)

end A362555

/-! ## A362555.P5098600529297111506

`∑[A026395(2*n)+1]`
-/

namespace A362555.P5098600529297111506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026395 (2 * n) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A362555.P5098600529297111506

namespace A362555

/-- `∑[A026395(2*n)+1]` -/
def P5098600529297111506.Spec : Prop :=
  ∀ n, P5098600529297111506.a n = A362555 (n + 1)

end A362555

/-! ## A362555.P4992336034631754484

`∑[A133632(A004277(n))+1]`
-/

namespace A362555.P4992336034631754484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133632 (A004277 n).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A362555.P4992336034631754484

namespace A362555

/-- `∑[A133632(A004277(n))+1]` -/
def P4992336034631754484.Spec : Prop :=
  ∀ n, P4992336034631754484.a n = A362555 (n + 1)

end A362555

/-! ## A362555.P8509695524099896429

`A221907(n+1)/5`
-/

namespace A362555.P8509695524099896429
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A221907 (n + 1) : ℚ) / 5

end

end A362555.P8509695524099896429

namespace A362555

/-- `A221907(n+1)/5` -/
def P8509695524099896429.Spec : Prop :=
  ∀ n, P8509695524099896429.a n = (A362555 (n + 1) : ℚ)

theorem P8509695524099896429.correct : P8509695524099896429.Spec := by
  intro n
  simp only [A362555, Nat.add_sub_cancel, A362555.P8509695524099896429.a, A362555.P8565414055957789994.a, A221907, A221907.P10682136879725288040.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A362555

/-! ## A362555.P6643430465574277805

`Δ[A003463(n)+∑[n]]`
-/

namespace A362555.P6643430465574277805
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003463 n + ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A362555.P6643430465574277805

namespace A362555

/-- `Δ[A003463(n)+∑[n]]` -/
def P6643430465574277805.Spec : Prop :=
  ∀ n, P6643430465574277805.a n = A362555 (n + 1)

end A362555

/-! ## A362555.P7960020715109534457

`(A199212(n)+A005408(n))/2`
-/

namespace A362555.P7960020715109534457
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A199212 n + A005408 n : ℚ) / 2

end

end A362555.P7960020715109534457

namespace A362555

/-- `(A199212(n)+A005408(n))/2` -/
def P7960020715109534457.Spec : Prop :=
  ∀ n, P7960020715109534457.a n = (A362555 (n + 1) : ℚ)

theorem P7960020715109534457.correct : P7960020715109534457.Spec := by
  intro n
  simp only [A362555, Nat.add_sub_cancel, A362555.P7960020715109534457.a, A362555.P8565414055957789994.a, A005408, A005408.P17437947328870227736.a, A199212, A199212.P17062083861671985709.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A362555

/-! ## A362555.P6328285776822012286

`(A317108(n+1)+A020729(n))/2`
-/

namespace A362555.P6328285776822012286
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A317108 (n + 1) + A020729 n : ℚ) / 2

end

end A362555.P6328285776822012286

namespace A362555

/-- `(A317108(n+1)+A020729(n))/2` -/
def P6328285776822012286.Spec : Prop :=
  ∀ n, P6328285776822012286.a n = (A362555 (n + 1) : ℚ)

end A362555

/-!
# A362556: Number of distinct n-digit suffixes generated by iteratively multiplying an integer by 8, where the initial integer is 1.

The programs for A362556, the canonical program `A362556.P9892634350837393890` is in `Seq.B000.C046`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A362556 has offset 1).

The definition of A362556 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A362556.P9892634350837393890

`4*5^n+ceil((n+1)/3)`

The canonical program, it is in `Seq.B000.C046`.
-/

namespace A362556

/-- `4*5^n+ceil((n+1)/3)` -/
def P9892634350837393890.Spec : Prop :=
  ∀ n, P9892634350837393890.a n = A362556 (n + 1)

theorem P9892634350837393890.correct : P9892634350837393890.Spec := by
  intro n
  simp only [A362556, Nat.add_sub_cancel]

end A362556

/-! ## A362556.P3001774089780399410

`ogf((5-9x-4x^3+4x^4)/(1-6x+5x^2-x^3+6x^4-5x^5))`
-/

namespace A362556.P3001774089780399410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [5, -9, 0, -4, 4] [1, -6, 5, -1, 6, -5] n

end

end A362556.P3001774089780399410

namespace A362556

/-- `ogf((5-9x-4x^3+4x^4)/(1-6x+5x^2-x^3+6x^4-5x^5))` -/
def P3001774089780399410.Spec : Prop :=
  ∀ n, P3001774089780399410.a n = A362556 (n + 1)

end A362556

/-! ## A362556.P3254619726889973930

`Δ[A001840(n)+A000351(n)]`
-/

namespace A362556.P3254619726889973930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001840 n + A000351 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A362556.P3254619726889973930

namespace A362556

/-- `Δ[A001840(n)+A000351(n)]` -/
def P3254619726889973930.Spec : Prop :=
  ∀ n, P3254619726889973930.a n = A362556 (n + 1)

end A362556

/-! ## A362556.P9176402381933755797

`Δ[A024049(n)+A001840(n)]`
-/

namespace A362556.P9176402381933755797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024049 n + A001840 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A362556.P9176402381933755797

namespace A362556

/-- `Δ[A024049(n)+A001840(n)]` -/
def P9176402381933755797.Spec : Prop :=
  ∀ n, P9176402381933755797.a n = A362556 (n + 1)

end A362556

/-! ## A362556.P13073104570874335885

`Δ[A034474(n)+A001840(n)]`
-/

namespace A362556.P13073104570874335885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034474 n + A001840 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A362556.P13073104570874335885

namespace A362556

/-- `Δ[A034474(n)+A001840(n)]` -/
def P13073104570874335885.Spec : Prop :=
  ∀ n, P13073104570874335885.a n = A362556 (n + 1)

end A362556

/-!
# A362557: Start with first term 0, then add paired terms counting every preceding term up to the largest term so far and loop back to 0 after every pair has been counted.

The programs for A362557, there is no canonical definition to state claims against.
-/

/-! ## A362557.P16079547918853179848

`A372472(A372472(n+1)+A135302(3*n+2))`
-/

namespace A362557.P16079547918853179848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372472 (A372472 (n + 1) + A135302 (3 * n + 2)).toNat

end

end A362557.P16079547918853179848

/-! ## A362557.P5457739200433852012

`A081603(A145906(n)*A333347(n))`
-/

namespace A362557.P5457739200433852012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081603 (A145906 n * A333347 n).toNat

end

end A362557.P5457739200433852012

/-! ## A362557.P12660206612741075659

`A081603(lcm(A145906(n), A333347(n)))`
-/

namespace A362557.P12660206612741075659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081603 (Int.lcm (A145906 n) (A333347 n))

end

end A362557.P12660206612741075659

/-! ## A362557.P8286246194857581840

`A221171(A230627(n+2)+A079209(n+1))`
-/

namespace A362557.P8286246194857581840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221171 (A230627 (n + 2) + A079209 (n + 1)).toNat

end

end A362557.P8286246194857581840

/-! ## A362557.P1406020285035238687

`A005087(A000203(n+1)*A322190(3*n+2))`
-/

namespace A362557.P1406020285035238687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005087 (A000203 (n + 1) * A322190 (3 * n + 2)).toNat

end

end A362557.P1406020285035238687

/-!
# A362559: Number of integer partitions of n whose weighted sum is divisible by n.

The programs for A362559, there is no canonical definition to state claims against.
-/

/-! ## A362559.P7828631993518158

`Δ[A000070(n)]-A362560(n+1)`
-/

namespace A362559.P7828631993518158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000070 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A362560 (n + 1)

end

end A362559.P7828631993518158

/-! ## A362559.P10870418467148933965

`record[A035444(n)]-A362560(n+1)`
-/

namespace A362559.P10870418467148933965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035444 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A362560 (n + 1)

end

end A362559.P10870418467148933965

/-! ## A362559.P10431135605659300252

`A000041(n+1)-A362560(n+1)`
-/

namespace A362559.P10431135605659300252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 1) - A362560 (n + 1)

end

end A362559.P10431135605659300252

/-! ## A362559.P8217073598734095873

`A035444(4*(n+1))-A362560(n+1)`
-/

namespace A362559.P8217073598734095873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035444 (4 * (n + 1)) - A362560 (n + 1)

end

end A362559.P8217073598734095873

/-!
# A362560: Number of integer partitions of n whose weighted sum is not divisible by n.

The programs for A362560, there is no canonical definition to state claims against.
-/

/-! ## A362560.P1227498524459157346

`Δ[A000070(n)]-A362559(n+1)`
-/

namespace A362560.P1227498524459157346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000070 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A362559 (n + 1)

end

end A362560.P1227498524459157346

/-! ## A362560.P7105229931496181274

`record[A194543(n)]-A362559(n+1)`
-/

namespace A362560.P7105229931496181274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194543 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A362559 (n + 1)

end

end A362560.P7105229931496181274

/-! ## A362560.P3306109585090315620

`A000041(n+1)-A362559(n+1)`
-/

namespace A362560.P3306109585090315620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 1) - A362559 (n + 1)

end

end A362560.P3306109585090315620

/-! ## A362560.P18363416314920262961

`∑[A187219(n+1)]-A362559(n+1)`
-/

namespace A362560.P18363416314920262961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187219 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A362559 (n + 1)

end

end A362560.P18363416314920262961

/-! ## A362560.P4737045621877339563

`record[A194446(n+1)]-A362559(n+1)`
-/

namespace A362560.P4737045621877339563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194446 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A362559 (n + 1)

end

end A362560.P4737045621877339563

/-!
# A362561: Sphenic numbers k such that none of k-2, k-1, k+1 and k+2 is squarefree.

The programs for A362561, there is no canonical definition to state claims against.
-/

/-! ## A362561.P5647416054062486443

`∩[A268331(n+1), A364905(n+1)]`
-/

namespace A362561.P5647416054062486443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268331 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364905 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A362561.P5647416054062486443

/-! ## A362561.P12220754723950333032

`filter[A268331(n+1), A354926(#)]`
-/

namespace A362561.P12220754723950333032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268331 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354926 (f1 j).toNat = 1) n)

end

end A362561.P12220754723950333032

/-! ## A362561.P12598004912068088799

`filter[A268331(n+1), A358753(#)]`
-/

namespace A362561.P12598004912068088799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268331 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358753 (f1 j).toNat = 1) n)

end

end A362561.P12598004912068088799

/-! ## A362561.P17819664472086859826

`filter[A268331(n+1), A373975(#)]`
-/

namespace A362561.P17819664472086859826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268331 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373975 (f1 j).toNat = 1) n)

end

end A362561.P17819664472086859826

/-! ## A362561.P4169964515223705817

`filter[A268331(n+1), A101605(#)]`
-/

namespace A362561.P4169964515223705817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268331 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A101605 (f1 j).toNat = 1) n)

end

end A362561.P4169964515223705817

/-!
# A362562: Number of non-constant integer partitions of n having a unique mode equal to the mean.

The programs for A362562, there is no canonical definition to state claims against.
-/

/-! ## A362562.P2979649004459743668

`A363728(C(A197280(n+1), n²)+n)`
-/

namespace A362562.P2979649004459743668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363728 (Nat.choose (A197280 (n + 1)).toNat (n ^ 2) + n)

end

end A362562.P2979649004459743668

/-! ## A362562.P3750158124143747945

`A363728(C(A342981(n), A329797(n+1))+n)`
-/

namespace A362562.P3750158124143747945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363728 (Nat.choose (A342981 n).toNat (A329797 (n + 1)).toNat + n)

end

end A362562.P3750158124143747945

/-! ## A362562.P13347076639575527493

`A363728(C(2, A293934(2*n))+n)`
-/

namespace A362562.P13347076639575527493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363728 (Nat.choose 2 (A293934 (2 * n)).toNat + n)

end

end A362562.P13347076639575527493

/-! ## A362562.P3038704587372644161

`A363728(C(A363728(n+1), n)+n)`
-/

namespace A362562.P3038704587372644161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363728 (Nat.choose (A363728 (n + 1)).toNat n + n)

end

end A362562.P3038704587372644161

/-! ## A362562.P3231159641251717776

`A363728(A028310(n))%A122340(3*n+2)`
-/

namespace A362562.P3231159641251717776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A363728 (A028310 n).toNat) (A122340 (3 * n + 2))

end

end A362562.P3231159641251717776

/-!
# A362566: a(n) is the area of the smallest rectangle that the Harter-Heighway Dragon Curve will fit in after n doublings, starting with a segment of length 1.

The programs for A362566, the canonical program `A362566.P8379956500283411384` is in `Seq.B000.C047`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A362566 has offset 0).

The definition of A362566 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A362566.P8379956500283411384

`ogf((x+x^2+x^3+6x^4+7x^5+2x^7)/(1-x-3x^2+3x^3-8x^4+8x^5+12x^6-12x^7+16x^8-16x^9))`

The canonical program, it is in `Seq.B000.C047`.
-/

namespace A362566

/-- `ogf((x+x^2+x^3+6x^4+7x^5+2x^7)/(1-x-3x^2+3x^3-8x^4+8x^5+12x^6-12x^7+16x^8-16x^9))` -/
def P8379956500283411384.Spec : Prop :=
  ∀ n, P8379956500283411384.a n = A362566 n

theorem P8379956500283411384.correct : P8379956500283411384.Spec := by
  intro n
  simp only [A362566]

end A362566

/-! ## A362566.P318203407799390885

`record[A374748(3*(n+1))-n]`
-/

namespace A362566.P318203407799390885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374748 (3 * (n + 1)) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A362566.P318203407799390885

namespace A362566

/-- `record[A374748(3*(n+1))-n]` -/
def P318203407799390885.Spec : Prop :=
  ∀ n, P318203407799390885.a n = A362566 n

end A362566

/-! ## A362566.P1082746109284935282

`A000041(n)*A186233(A308618(n+1))`
-/

namespace A362566.P1082746109284935282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n * A186233 (A308618 (n + 1)).toNat

end

end A362566.P1082746109284935282

namespace A362566

/-- `A000041(n)*A186233(A308618(n+1))` -/
def P1082746109284935282.Spec : Prop :=
  ∀ n, P1082746109284935282.a n = A362566 n

end A362566

/-!
# A362567: Number of rational solutions to the S-unit equation x + y = 1, where S = {prime(i): 1 <= i <= n}.

The programs for A362567, there is no canonical definition to state claims against.
-/

/-! ## A362567.P16316586208940899156

`A210991(A327548(n))`
-/

namespace A362567.P16316586208940899156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210991 (A327548 n).toNat

end

end A362567.P16316586208940899156

/-!
# A362568: E.g.f. satisfies A(x) = exp(x/A(x)^x).

The programs for A362568, there is no canonical definition to state claims against.
-/

/-! ## A362568.P13189089080708342409

`A106407(xor(9, A259212(n+1)))`
-/

namespace A362568.P13189089080708342409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106407 (Int.xor 9 (A259212 (n + 1))).toNat

end

end A362568.P13189089080708342409

/-! ## A362568.P2964542827862429840

`A157303(n)-A369054(A002275(n))`
-/

namespace A362568.P2964542827862429840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157303 n - A369054 (A002275 n).toNat

end

end A362568.P2964542827862429840

/-!
# A362570: a(n) is the number of isogeny classes of elliptic curves over the finite field of order prime(n).

The programs for A362570, the canonical program `A362570.P15557334788396659153` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A362570 has offset 1).

The definition of A362570 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A362570.P15557334788396659153

`2*A247485(n+1)-1`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A362570

/-- `2*A247485(n+1)-1` -/
def P15557334788396659153.Spec : Prop :=
  ∀ n, P15557334788396659153.a n = A362570 (n + 1)

theorem P15557334788396659153.correct : P15557334788396659153.Spec := by
  intro n
  simp only [A362570, Nat.add_sub_cancel]

end A362570

/-! ## A362570.P3885238263508754000

`2*floor(2*sqrt(A000040(n+1)))+1`
-/

namespace A362570.P3885238263508754000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ⌊2 * Real.sqrt (A000040 (n + 1) : ℝ)⌋ + 1

end

end A362570.P3885238263508754000

namespace A362570

/-- `2*floor(2*sqrt(A000040(n+1)))+1` -/
def P3885238263508754000.Spec : Prop :=
  ∀ n, P3885238263508754000.a n = A362570 (n + 1)

end A362570

/-! ## A362570.P10394428831565120803

`2*A000196(4*A000040(n+1))+1`
-/

namespace A362570.P10394428831565120803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000196 (4 * A000040 (n + 1)).toNat + 1

end

end A362570.P10394428831565120803

namespace A362570

/-- `2*A000196(4*A000040(n+1))+1` -/
def P10394428831565120803.Spec : Prop :=
  ∀ n, P10394428831565120803.a n = A362570 (n + 1)

theorem P10394428831565120803.correct : P10394428831565120803.Spec := by
  intro n
  simp only [A362570, Nat.add_sub_cancel, A362570.P10394428831565120803.a, A362570.P15557334788396659153.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A000196, A000196.P15434771586934192083.a, A247485, A247485.P12156992232107316837.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A362570

/-! ## A362570.P6522742365442440328

`A004273(A247485(n+1))`
-/

namespace A362570.P6522742365442440328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A247485 (n + 1)).toNat

end

end A362570.P6522742365442440328

namespace A362570

/-- `A004273(A247485(n+1))` -/
def P6522742365442440328.Spec : Prop :=
  ∀ n, P6522742365442440328.a n = A362570 (n + 1)

end A362570

/-! ## A362570.P9634902749862071962

`A364681(A027883(n+1))`
-/

namespace A362570.P9634902749862071962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364681 (A027883 (n + 1)).toNat

end

end A362570.P9634902749862071962

namespace A362570

/-- `A364681(A027883(n+1))` -/
def P9634902749862071962.Spec : Prop :=
  ∀ n, P9634902749862071962.a n = A362570 (n + 1)

end A362570

/-! ## A362570.P15066132956239891128

`A143730(A112045(n+1))`
-/

namespace A362570.P15066132956239891128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143730 (A112045 (n + 1)).toNat

end

end A362570.P15066132956239891128

namespace A362570

/-- `A143730(A112045(n+1))` -/
def P15066132956239891128.Spec : Prop :=
  ∀ n, P15066132956239891128.a n = A362570 (n + 1)

end A362570

/-! ## A362570.P14405080824039559501

`A265359(A049068(A000040(n+1)))`
-/

namespace A362570.P14405080824039559501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265359 (A049068 (A000040 (n + 1)).toNat).toNat

end

end A362570.P14405080824039559501

namespace A362570

/-- `A265359(A049068(A000040(n+1)))` -/
def P14405080824039559501.Spec : Prop :=
  ∀ n, P14405080824039559501.a n = A362570 (n + 1)

end A362570

/-! ## A362570.P6212961661395612589

`A001650(A001749(n+1))`
-/

namespace A362570.P6212961661395612589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001650 (A001749 (n + 1)).toNat

end

end A362570.P6212961661395612589

namespace A362570

/-- `A001650(A001749(n+1))` -/
def P6212961661395612589.Spec : Prop :=
  ∀ n, P6212961661395612589.a n = A362570 (n + 1)

end A362570

/-! ## A362570.P18045905874755919824

`A001650(2*A100484(n+1))`
-/

namespace A362570.P18045905874755919824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001650 (2 * A100484 (n + 1)).toNat

end

end A362570.P18045905874755919824

namespace A362570

/-- `A001650(2*A100484(n+1))` -/
def P18045905874755919824.Spec : Prop :=
  ∀ n, P18045905874755919824.a n = A362570 (n + 1)

end A362570

/-!
# A362571: E.g.f. satisfies A(x) = exp(x * A(x)^(x^2)).

The programs for A362571, there is no canonical definition to state claims against.
-/

/-! ## A362571.P16485935512608778233

`A159083(n)+A325959(A190875(n))+A159083(n)/2`
-/

namespace A362571.P16485935512608778233
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A159083 n : ℚ) + ((A325959 (A190875 n).toNat : ℚ) + (A159083 n : ℚ) / 2)

end

end A362571.P16485935512608778233

/-! ## A362571.P13527184210473686024

`A159083(n)+A325959(A205800(n))+A159083(n)/2`
-/

namespace A362571.P13527184210473686024
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A159083 n : ℚ) + ((A325959 (A205800 n).toNat : ℚ) + (A159083 n : ℚ) / 2)

end

end A362571.P13527184210473686024

/-! ## A362571.P9174621227457672446

`A000265(A373680(n)+1)`
-/

namespace A362571.P9174621227457672446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A373680 n + 1).toNat

end

end A362571.P9174621227457672446

/-! ## A362571.P11741917997785478722

`A293493(n)+A004526((n-6)*(n-5)*(n-4)*(n-3)*(n-2)*(n²-n))`
-/

namespace A362571.P11741917997785478722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293493 n + A004526 (((n : ℤ) - 6) * (((n : ℤ) - 5) * (((n : ℤ) - 4) * (((n : ℤ) - 3) * (((n : ℤ) - 2) * ((n ^ 2 : ℤ) - (n : ℤ))))))).toNat

end

end A362571.P11741917997785478722

/-!
# A362573: E.g.f. satisfies A(x) = exp(x * A(x)^(x^2/6)).

The programs for A362573, there is no canonical definition to state claims against.
-/

/-! ## A362573.P16246958155686336650

`A126760(A362571(n)+A060455(n))`
-/

namespace A362573.P16246958155686336650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126760 (A362571 n + A060455 n).toNat

end

end A362573.P16246958155686336650

/-! ## A362573.P14701377036644812314

`A126760(A060455(n)+A293493(n)+A004526((n-6)*(n-5)*(n-4)*(n-3)*(n-2)*(n²-n)))`
-/

namespace A362573.P14701377036644812314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126760 (A060455 n + (A293493 n + A004526 (((n : ℤ) - 6) * (((n : ℤ) - 5) * (((n : ℤ) - 4) * (((n : ℤ) - 3) * (((n : ℤ) - 2) * ((n ^ 2 : ℤ) - (n : ℤ))))))).toNat)).toNat

end

end A362573.P14701377036644812314

/-!
# A362574: Number of vertex cuts in the n X n queen graph.

The programs for A362574, there is no canonical definition to state claims against.
-/

/-! ## A362574.P16858786640927330261

`A000225((n+1)²)-A285765(n+1)`
-/

namespace A362574.P16858786640927330261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 ((n + 1) ^ 2) - A285765 (n + 1)

end

end A362574.P16858786640927330261

/-!
# A362575: Number of vertex cuts in the n X n rook graph.

The programs for A362575, there is no canonical definition to state claims against.
-/

/-! ## A362575.P12334013646286372421

`2^(n+1)²-1-A286189(n+1)`
-/

namespace A362575.P12334013646286372421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 1) ^ 2 : ℤ) - 1 - A286189 (n + 1)

end

end A362575.P12334013646286372421

/-!
# A362577: Number of vertex cuts in the n-trapezohedral graph.

The programs for A362577, the canonical program `A362577.P12384799473361245898` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A362577 has offset 1).

The definition of A362577 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A362577.P12384799473361245898

`3*4^(n+1)-4*(n+1)²+2*(n+1)-2+A005248(n+1)-2*A206776(n+1)`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A362577

/-- `3*4^(n+1)-4*(n+1)²+2*(n+1)-2+A005248(n+1)-2*A206776(n+1)` -/
def P12384799473361245898.Spec : Prop :=
  ∀ n, P12384799473361245898.a n = A362577 (n + 1)

theorem P12384799473361245898.correct : P12384799473361245898.Spec := by
  intro n
  simp only [A362577, Nat.add_sub_cancel]

end A362577

/-!
# A362579: Numbers k such that the decimal expansion of 1/k does not contain the digit 5.

The programs for A362579, there is no canonical definition to state claims against.
-/

/-! ## A362579.P17099404921220453714

`eq[char[A353441(n+1)], A000007(n)]`
-/

namespace A362579.P17099404921220453714
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353441 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A362579.P17099404921220453714

/-! ## A362579.P17911815847369707941

`eq[char[A353441(n+1)], A000038(n)]`
-/

namespace A362579.P17911815847369707941
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353441 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A362579.P17911815847369707941

/-! ## A362579.P16707066514175979411

`lt[char[A353441(n+1)], A057427(n)]`
-/

namespace A362579.P16707066514175979411
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353441 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f3 j) n

end

end A362579.P16707066514175979411

/-! ## A362579.P17854080112799666178

`eq[char[A353441(n+1)], A353463(3*(n+1))]`
-/

namespace A362579.P17854080112799666178
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353441 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353463 (3 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A362579.P17854080112799666178

/-! ## A362579.P3456848364017240179

`eq[char[A353441(n+1)], A019590(2*n+1)]`
-/

namespace A362579.P3456848364017240179
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353441 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019590 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A362579.P3456848364017240179

/-!
# A362581: Number of alternating permutations on [2n+1] with 1 in position n+1.

The programs for A362581, there is no canonical definition to state claims against.
-/

/-! ## A362581.P16725567170410279013

`C(2*n, n)*A000111(n)²`
-/

namespace A362581.P16725567170410279013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (2 * n) n : ℤ) * A000111 n ^ 2

end

end A362581.P16725567170410279013

/-! ## A362581.P779060376238506898

`A104345(C(2*n+1, 2)+n)`
-/

namespace A362581.P779060376238506898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104345 (Nat.choose (2 * n + 1) 2 + n)

end

end A362581.P779060376238506898

/-! ## A362581.P5443709617522488088

`A361648(2*n)`
-/

namespace A362581.P5443709617522488088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361648 (2 * n)

end

end A362581.P5443709617522488088

/-! ## A362581.P17054195228986675842

`A000111(n)²*A000984(n)`
-/

namespace A362581.P17054195228986675842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000111 n ^ 2 * A000984 n

end

end A362581.P17054195228986675842

/-! ## A362581.P7915157161161431617

`A104345(∑[4*n])`
-/

namespace A362581.P7915157161161431617
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104345 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A362581.P7915157161161431617

/-!
# A362582: Triangular array read by rows. T(n,k) is the number of alternating permutations of [2n+1] having exactly 2k elements to the left of 1, n >= 0, 0 <= k <= n.

The programs for A362582, there is no canonical definition to state claims against.
-/

/-! ## A362582.P6374862042273405218

`C(2*row(n), 2*col(n))*A000111(2*col(n))*A000111(2*(row(n)-col(n)))`
-/

namespace A362582.P6374862042273405218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (2 * SequenceMachineLib.triRow n) (2 * SequenceMachineLib.triCol n) : ℤ) * A000111 (2 * SequenceMachineLib.triCol n) * A000111 (2 * ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ))).toNat

end

end A362582.P6374862042273405218

/-! ## A362582.P13872081571630362233

`A000364(A002262(n))*A086646(n)`
-/

namespace A362582.P13872081571630362233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000364 (A002262 n).toNat * A086646 n

end

end A362582.P13872081571630362233

/-! ## A362582.P5187267617663589056

`A086646(n)*A086646(A112367(n))`
-/

namespace A362582.P5187267617663589056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086646 n * A086646 (A112367 n).toNat

end

end A362582.P5187267617663589056

/-!
# A362583: Concatenation of ((p mod 4) - 1)/2 for the primes from 3 through prime(n), converted from binary to decimal.

The programs for A362583, there is no canonical definition to state claims against.
-/

/-! ## A362583.P12785127062640962393

`record[A292383(n+3)]`
-/

namespace A362583.P12785127062640962393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292383 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A362583.P12785127062640962393

/-! ## A362583.P12878422831039372607

`A292383(p?[2*n+1])`
-/

namespace A362583.P12878422831039372607
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292383 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A362583.P12878422831039372607

/-! ## A362583.P6900176948806447538

`A292383(A065091(n+1))`
-/

namespace A362583.P6900176948806447538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292383 (A065091 (n + 1)).toNat

end

end A362583.P6900176948806447538

/-! ## A362583.P13643020048557740231

`A292383(A000040(2+n))`
-/

namespace A362583.P13643020048557740231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292383 (A000040 (2 + n)).toNat

end

end A362583.P13643020048557740231

/-! ## A362583.P12506146834653347343

`A292383(A006005(n+2))`
-/

namespace A362583.P12506146834653347343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292383 (A006005 (n + 2)).toNat

end

end A362583.P12506146834653347343

/-! ## A362583.P15318105487583379909

`A292383(A160656(n+2))`
-/

namespace A362583.P15318105487583379909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292383 (A160656 (n + 2)).toNat

end

end A362583.P15318105487583379909

/-!
# A362584: Integers k > 1 such that k >= the square of the sum of their prime factors (A074373(k)).

The programs for A362584, there is no canonical definition to state claims against.
-/

/-! ## A362584.P1558289756719298990

`A321454(A331400(n+1)+A077680(n+1))`
-/

namespace A362584.P1558289756719298990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321454 (A331400 (n + 1) + A077680 (n + 1)).toNat

end

end A362584.P1558289756719298990

/-!
# A362585: Triangle read by rows, T(n, k) = A000670(n) * binomial(n, k).

The programs for A362585, the canonical program `A362585.P4352098755447402043` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A362585 has offset 0).

The definition of A362585 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A362585.P4352098755447402043

`A000670(row(n))*C(row(n), col(n))`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A362585

/-- `A000670(row(n))*C(row(n), col(n))` -/
def P4352098755447402043.Spec : Prop :=
  ∀ n, P4352098755447402043.a n = A362585 n

theorem P4352098755447402043.correct : P4352098755447402043.Spec := by
  intro n
  simp only [A362585]

end A362585

/-! ## A362585.P42754027465292932

`C(row(n), col(n))*A000670(row(n))`
-/

namespace A362585.P42754027465292932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (SequenceMachineLib.triRow n) (SequenceMachineLib.triCol n) : ℤ) * A000670 (SequenceMachineLib.triRow n)

end

end A362585.P42754027465292932

namespace A362585

/-- `C(row(n), col(n))*A000670(row(n))` -/
def P42754027465292932.Spec : Prop :=
  ∀ n, P42754027465292932.a n = A362585 n

theorem P42754027465292932.correct : P42754027465292932.Spec := by
  intro n
  simp only [A362585, Nat.add_sub_cancel, A362585.P42754027465292932.a, A362585.P4352098755447402043.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A362585

/-! ## A362585.P11813904803261981594

`A000670(A003056(n))*A007318(n)`
-/

namespace A362585.P11813904803261981594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000670 (A003056 n).toNat * A007318 n

end

end A362585.P11813904803261981594

namespace A362585

/-- `A000670(A003056(n))*A007318(n)` -/
def P11813904803261981594.Spec : Prop :=
  ∀ n, P11813904803261981594.a n = A362585 n

end A362585

/-! ## A362585.P16168517808498611066

`A000670(A163352(n))*A007318(n)`
-/

namespace A362585.P16168517808498611066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000670 (A163352 n).toNat * A007318 n

end

end A362585.P16168517808498611066

namespace A362585

/-- `A000670(A163352(n))*A007318(n)` -/
def P16168517808498611066.Spec : Prop :=
  ∀ n, P16168517808498611066.a n = A362585 n

end A362585

/-! ## A362585.P11857717629281958008

`A000670(A169894(n))*A007318(n)`
-/

namespace A362585.P11857717629281958008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000670 (A169894 n).toNat * A007318 n

end

end A362585.P11857717629281958008

namespace A362585

/-- `A000670(A169894(n))*A007318(n)` -/
def P11857717629281958008.Spec : Prop :=
  ∀ n, P11857717629281958008.a n = A362585 n

end A362585

/-!
# A362586: Triangle read by rows, T(n, k) = A094088(n) * binomial(n, k).

The programs for A362586, there is no canonical definition to state claims against.
-/

/-! ## A362586.P1174838347679665055

`A094088(row(n))*C(row(n), col(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A362586.P1174838347679665055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094088 (SequenceMachineLib.triRow n) * (Nat.choose (SequenceMachineLib.triRow n) (SequenceMachineLib.triCol n) : ℤ)

end

end A362586.P1174838347679665055

/-! ## A362586.P10262771500177189002

`A007318(n)*A094088(row(n))`
-/

namespace A362586.P10262771500177189002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A094088 (SequenceMachineLib.triRow n)

end

end A362586.P10262771500177189002

/-! ## A362586.P860899909313139550

`A007318(n)*A094088(A003056(n))`
-/

namespace A362586.P860899909313139550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A094088 (A003056 n).toNat

end

end A362586.P860899909313139550

/-! ## A362586.P14152191618015382476

`A007318(n)*A294933(A181836(3*n))`
-/

namespace A362586.P14152191618015382476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A294933 (A181836 (3 * n)).toNat

end

end A362586.P14152191618015382476

/-!
# A362587: a(n) = 2^n * A094088(n). Row sums of A362586.

The programs for A362587, there is no canonical definition to state claims against.
-/

/-! ## A362587.P9802545143043867807

`2^n*A094088(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A362587.P9802545143043867807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A094088 n

end

end A362587.P9802545143043867807

/-! ## A362587.P14536938694540358250

`lcm(A000079(n), A094088(n))`
-/

namespace A362587.P14536938694540358250
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000079 n) (A094088 n)

end

end A362587.P14536938694540358250

/-! ## A362587.P7305821357919952120

`A011782(n)*A327034(2*n)`
-/

namespace A362587.P7305821357919952120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n * A327034 (2 * n)

end

end A362587.P7305821357919952120

/-! ## A362587.P11548158494289908820

`A000079(n)*A375381(2*n)`
-/

namespace A362587.P11548158494289908820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n * A375381 (2 * n)

end

end A362587.P11548158494289908820

/-! ## A362587.P14415738323712755342

`A094088(n)*A141539(A000096(n))`
-/

namespace A362587.P14415738323712755342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094088 n * A141539 (A000096 n).toNat

end

end A362587.P14415738323712755342

/-!
# A362588: Triangle read by rows, T(n, k) = RisingFactorial(n - k, k) * FallingFactorial(n, k).

The programs for A362588, the canonical program `A362588.P6849223915613361597` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A362588 has offset 0).

The definition of A362588 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 943 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A362588.P6849223915613361597

`A008279(n)*A265609(n)`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A362588

/-- `A008279(n)*A265609(n)` -/
def P6849223915613361597.Spec : Prop :=
  ∀ n, P6849223915613361597.a n = A362588 n

theorem P6849223915613361597.correct : P6849223915613361597.Spec := by
  intro n
  simp only [A362588]

end A362588

/-! ## A362588.P1445512104687038200

`A071919(n)*A371767(n)`
-/

namespace A362588.P1445512104687038200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071919 n * A371767 n

end

end A362588.P1445512104687038200

namespace A362588

/-- `A071919(n)*A371767(n)` -/
def P1445512104687038200.Spec : Prop :=
  ∀ n, P1445512104687038200.a n = A362588 n

end A362588

/-! ## A362588.P6772189289928894558

`A265609(comp[∑[n-1]])*A265609(n)`
-/

namespace A362588.P6772189289928894558
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265609 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n) * A265609 n

end

end A362588.P6772189289928894558

namespace A362588

/-- `A265609(comp[∑[n-1]])*A265609(n)` -/
def P6772189289928894558.Spec : Prop :=
  ∀ n, P6772189289928894558.a n = A362588 n

end A362588

/-! ## A362588.P5666645356261328367

`A233543(n)*A271703(A061579(n))`
-/

namespace A362588.P5666645356261328367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233543 n * A271703 (A061579 n).toNat

end

end A362588.P5666645356261328367

namespace A362588

/-- `A233543(n)*A271703(A061579(n))` -/
def P5666645356261328367.Spec : Prop :=
  ∀ n, P5666645356261328367.a n = A362588 n

end A362588

/-! ## A362588.P6068940633080841206

`(A324362(n)+A060475(n))*A265609(n)`
-/

namespace A362588.P6068940633080841206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A324362 n + A060475 n) * A265609 n

end

end A362588.P6068940633080841206

namespace A362588

/-- `(A324362(n)+A060475(n))*A265609(n)` -/
def P6068940633080841206.Spec : Prop :=
  ∀ n, P6068940633080841206.a n = A362588 n

end A362588

/-! ## A362588.P14342119813373426139

`A007318(n)*A233543(n)*A265609(n)`
-/

namespace A362588.P14342119813373426139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A233543 n * A265609 n

end

end A362588.P14342119813373426139

namespace A362588

/-- `A007318(n)*A233543(n)*A265609(n)` -/
def P14342119813373426139.Spec : Prop :=
  ∀ n, P14342119813373426139.a n = A362588 n

end A362588

/-! ## A362588.P11480355322612697961

`gcd(A217629(n), A218016(n))*A265609(n)`
-/

namespace A362588.P11480355322612697961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd (A217629 n) (A218016 n) : ℤ) * A265609 n

end

end A362588.P11480355322612697961

namespace A362588

/-- `gcd(A217629(n), A218016(n))*A265609(n)` -/
def P11480355322612697961.Spec : Prop :=
  ∀ n, P11480355322612697961.a n = A362588 n

end A362588

/-! ## A362588.P5427185549905850725

`A002262(n)!*A007318(n)*A265609(n)`
-/

namespace A362588.P5427185549905850725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A002262 n).toNat : ℤ) * A007318 n * A265609 n

end

end A362588.P5427185549905850725

namespace A362588

/-- `A002262(n)!*A007318(n)*A265609(n)` -/
def P5427185549905850725.Spec : Prop :=
  ∀ n, P5427185549905850725.a n = A362588 n

end A362588

/-! ## A362588.P5157712319435031489

`A094587(A038722(n+1)-1)*A265609(n)`
-/

namespace A362588.P5157712319435031489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094587 (A038722 (n + 1) - 1).toNat * A265609 n

end

end A362588.P5157712319435031489

namespace A362588

/-- `A094587(A038722(n+1)-1)*A265609(n)` -/
def P5157712319435031489.Spec : Prop :=
  ∀ n, P5157712319435031489.a n = A362588 n

end A362588

/-! ## A362588.P13681761195540036242

`A166350(n+1)/A002260(n+1)*A007318(n)*A265609(n)`
-/

namespace A362588.P13681761195540036242
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166350 (n + 1) : ℚ) / (A002260 (n + 1) : ℚ) * (A007318 n : ℚ) * (A265609 n : ℚ)

end

end A362588.P13681761195540036242

namespace A362588

/-- `A166350(n+1)/A002260(n+1)*A007318(n)*A265609(n)` -/
def P13681761195540036242.Spec : Prop :=
  ∀ n, P13681761195540036242.a n = (A362588 n : ℚ)

end A362588

/-!
# A362589: Triangular array read by rows. T(n,k) is the number of ways to form an ordered pair of n-permutations and then choose a size k subset of its common descent set, n >= 0, 0 <= k <= max{0,n-1}.

The programs for A362589, there is no canonical definition to state claims against.
-/

/-! ## A362589.P7994524709735615907

`A192722(∑[char[∑[n]]]²-n+1)`
-/

namespace A362589.P7994524709735615907
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192722 ((((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) - (n : ℤ) + 1).toNat

end

end A362589.P7994524709735615907

/-! ## A362589.P12074871785941442844

`A325621(A008277(n+1)*A209766(n+1))`
-/

namespace A362589.P12074871785941442844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325621 (A008277 (n + 1) * A209766 (n + 1)).toNat

end

end A362589.P12074871785941442844

/-!
# A362592: Discriminants D of the negative Pell equation x^2 - D*y^2 = -1, whose fundamental and all higher roots produce abc-triples a+b=c (or 1 + x^2 = D*y^2) with radical R(abc) < c.

The programs for A362592, there is no canonical definition to state claims against.
-/

/-! ## A362592.P11475238776796926310

`A172000(A037001(n+1)+8)`
-/

namespace A362592.P11475238776796926310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172000 (A037001 (n + 1) + 8).toNat

end

end A362592.P11475238776796926310

/-!
# A362593: Number of coprime positive integer S-unit solutions to a + b = c where a <= b < c, and where S = {prime(1), ..., prime(n)}.

The programs for A362593, there is no canonical definition to state claims against.
-/

/-! ## A362593.P8629006983597705172

`ceil(A362567(n)/6)`
-/

namespace A362593.P8629006983597705172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A362567 n : ℚ) / 6⌉

end

end A362593.P8629006983597705172

/-! ## A362593.P1005609956557243559

`A049639(A320176(3*(n+1))-2)`
-/

namespace A362593.P1005609956557243559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049639 (A320176 (3 * (n + 1)) - 2).toNat

end

end A362593.P1005609956557243559

/-!
# A362594: Exponentially odd numbers that are neither squarefree nor prime powers.

The programs for A362594, the canonical program `A362594.P5891847164442960394` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A362594 has offset 1).

The definition of A362594 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5751 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A362594.P5952397508567689225

`filter[A374459(n+1), A355447(#)]`
-/

namespace A362594.P5952397508567689225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374459 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355447 (f1 j).toNat = 1) n)

end

end A362594.P5952397508567689225

namespace A362594

/-- `filter[A374459(n+1), A355447(#)]` -/
def P5952397508567689225.Spec : Prop :=
  ∀ n, P5952397508567689225.a n = A362594 (n + 1)

end A362594

/-! ## A362594.P5891847164442960394

`filter[A378767(n+1), A295316(#)]`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A362594

/-- `filter[A378767(n+1), A295316(#)]` -/
def P5891847164442960394.Spec : Prop :=
  ∀ n, P5891847164442960394.a n = A362594 (n + 1)

theorem P5891847164442960394.correct : P5891847164442960394.Spec := by
  intro n
  simp only [A362594, Nat.add_sub_cancel]

end A362594

/-! ## A362594.P2573967344796999455

`∩[A374459(n+1), A378767(n+1)]`
-/

namespace A362594.P2573967344796999455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374459 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378767 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A362594.P2573967344796999455

namespace A362594

/-- `∩[A374459(n+1), A378767(n+1)]` -/
def P2573967344796999455.Spec : Prop :=
  ∀ n, (P2573967344796999455.a n : ℤ) = A362594 (n + 1)

end A362594

/-! ## A362594.P17493079580897160661

`filter[A378878(n+1), A295316(#)]`
-/

namespace A362594.P17493079580897160661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378878 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A295316 (f1 j).toNat = 1) n)

end

end A362594.P17493079580897160661

namespace A362594

/-- `filter[A378878(n+1), A295316(#)]` -/
def P17493079580897160661.Spec : Prop :=
  ∀ n, P17493079580897160661.a n = A362594 (n + 1)

end A362594

/-! ## A362594.P12398841616607373202

`∩[A374459(n+1), A378878(n+1)]`
-/

namespace A362594.P12398841616607373202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374459 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378878 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A362594.P12398841616607373202

namespace A362594

/-- `∩[A374459(n+1), A378878(n+1)]` -/
def P12398841616607373202.Spec : Prop :=
  ∀ n, (P12398841616607373202.a n : ℤ) = A362594 (n + 1)

end A362594

/-! ## A362594.P14164114493222122806

`filter[A393201(n+1), A295316(#)]`
-/

namespace A362594.P14164114493222122806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393201 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A295316 (f1 j).toNat = 1) n)

end

end A362594.P14164114493222122806

namespace A362594

/-- `filter[A393201(n+1), A295316(#)]` -/
def P14164114493222122806.Spec : Prop :=
  ∀ n, P14164114493222122806.a n = A362594 (n + 1)

end A362594

/-! ## A362594.P3655712429818496546

`∩[A374459(n+1), A393201(n+1)]`
-/

namespace A362594.P3655712429818496546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374459 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393201 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A362594.P3655712429818496546

namespace A362594

/-- `∩[A374459(n+1), A393201(n+1)]` -/
def P3655712429818496546.Spec : Prop :=
  ∀ n, (P3655712429818496546.a n : ℤ) = A362594 (n + 1)

end A362594

/-! ## A362594.P179663207216537711

`filter[A379336(n+1), A295316(#)]`
-/

namespace A362594.P179663207216537711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379336 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A295316 (f1 j).toNat = 1) n)

end

end A362594.P179663207216537711

namespace A362594

/-- `filter[A379336(n+1), A295316(#)]` -/
def P179663207216537711.Spec : Prop :=
  ∀ n, P179663207216537711.a n = A362594 (n + 1)

end A362594

/-! ## A362594.P1592324720582761861

`∩[A374459(n+1), A379336(n+1)]`
-/

namespace A362594.P1592324720582761861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374459 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379336 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A362594.P1592324720582761861

namespace A362594

/-- `∩[A374459(n+1), A379336(n+1)]` -/
def P1592324720582761861.Spec : Prop :=
  ∀ n, (P1592324720582761861.a n : ℤ) = A362594 (n + 1)

end A362594

/-! ## A362594.P4729109559352001237

`filter[A376271(n+1), A295316(#)]`
-/

namespace A362594.P4729109559352001237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376271 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A295316 (f1 j).toNat = 1) n)

end

end A362594.P4729109559352001237

namespace A362594

/-- `filter[A376271(n+1), A295316(#)]` -/
def P4729109559352001237.Spec : Prop :=
  ∀ n, P4729109559352001237.a n = A362594 (n + 1)

end A362594

/-! ## A362594.P8985585168167827316

`∩[A374459(n+1), A376271(n+1)]`
-/

namespace A362594.P8985585168167827316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374459 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376271 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A362594.P8985585168167827316

namespace A362594

/-- `∩[A374459(n+1), A376271(n+1)]` -/
def P8985585168167827316.Spec : Prop :=
  ∀ n, (P8985585168167827316.a n : ℤ) = A362594 (n + 1)

end A362594

/-! ## A362594.P14786328346347004027

`filter[A126706(n+1), A295316(#)]`
-/

namespace A362594.P14786328346347004027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126706 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A295316 (f1 j).toNat = 1) n)

end

end A362594.P14786328346347004027

namespace A362594

/-- `filter[A126706(n+1), A295316(#)]` -/
def P14786328346347004027.Spec : Prop :=
  ∀ n, P14786328346347004027.a n = A362594 (n + 1)

end A362594

/-! ## A362594.P1570037397326201574

`∩[A126706(n+1), A374459(n+1)]`
-/

namespace A362594.P1570037397326201574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126706 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374459 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A362594.P1570037397326201574

namespace A362594

/-- `∩[A126706(n+1), A374459(n+1)]` -/
def P1570037397326201574.Spec : Prop :=
  ∀ n, (P1570037397326201574.a n : ℤ) = A362594 (n + 1)

end A362594

/-! ## A362594.P17964481702448056065

`∩[A374459(n+1), A376384(n+1)]`
-/

namespace A362594.P17964481702448056065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374459 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376384 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A362594.P17964481702448056065

namespace A362594

/-- `∩[A374459(n+1), A376384(n+1)]` -/
def P17964481702448056065.Spec : Prop :=
  ∀ n, (P17964481702448056065.a n : ℤ) = A362594 (n + 1)

end A362594

/-! ## A362594.P1565536686515829608

`filter[A365535(n+1), A355447(#)]`
-/

namespace A362594.P1565536686515829608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365535 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355447 (f1 j).toNat = 1) n)

end

end A362594.P1565536686515829608

namespace A362594

/-- `filter[A365535(n+1), A355447(#)]` -/
def P1565536686515829608.Spec : Prop :=
  ∀ n, P1565536686515829608.a n = A362594 (n + 1)

end A362594

/-! ## A362594.P13301302619999579548

`∩[A126706(n+1), A365535(n+1)]`
-/

namespace A362594.P13301302619999579548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126706 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365535 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A362594.P13301302619999579548

namespace A362594

/-- `∩[A126706(n+1), A365535(n+1)]` -/
def P13301302619999579548.Spec : Prop :=
  ∀ n, (P13301302619999579548.a n : ℤ) = A362594 (n + 1)

end A362594

/-! ## A362594.P5765870061295974686

`∩[A365535(n+1), A376271(n+1)]`
-/

namespace A362594.P5765870061295974686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365535 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376271 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A362594.P5765870061295974686

namespace A362594

/-- `∩[A365535(n+1), A376271(n+1)]` -/
def P5765870061295974686.Spec : Prop :=
  ∀ n, (P5765870061295974686.a n : ℤ) = A362594 (n + 1)

end A362594

/-! ## A362594.P6613119001830568927

`∩[A365535(n+1), A378767(n+1)]`
-/

namespace A362594.P6613119001830568927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365535 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378767 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A362594.P6613119001830568927

namespace A362594

/-- `∩[A365535(n+1), A378767(n+1)]` -/
def P6613119001830568927.Spec : Prop :=
  ∀ n, (P6613119001830568927.a n : ℤ) = A362594 (n + 1)

end A362594

/-! ## A362594.P6508160208333382873

`∩[A365535(n+1), A378878(n+1)]`
-/

namespace A362594.P6508160208333382873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365535 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378878 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A362594.P6508160208333382873

namespace A362594

/-- `∩[A365535(n+1), A378878(n+1)]` -/
def P6508160208333382873.Spec : Prop :=
  ∀ n, (P6508160208333382873.a n : ℤ) = A362594 (n + 1)

end A362594

/-! ## A362594.P2547149477059780085

`∩[A365535(n+1), A379336(n+1)]`
-/

namespace A362594.P2547149477059780085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365535 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379336 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A362594.P2547149477059780085

namespace A362594

/-- `∩[A365535(n+1), A379336(n+1)]` -/
def P2547149477059780085.Spec : Prop :=
  ∀ n, (P2547149477059780085.a n : ℤ) = A362594 (n + 1)

end A362594

/-!
# A362595: Number of parking functions of size n avoiding the patterns 132 and 321.

The programs for A362595, the canonical program `A362595.P1441981575621675091` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A362595 has offset 0).

The definition of A362595 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 165 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A362595.P1441981575621675091

`A194590(A004275(n))+A126120(2*n)`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A362595

/-- `A194590(A004275(n))+A126120(2*n)` -/
def P1441981575621675091.Spec : Prop :=
  ∀ n, P1441981575621675091.a n = A362595 n

theorem P1441981575621675091.correct : P1441981575621675091.Spec := by
  intro n
  simp only [A362595]

end A362595

/-! ## A362595.P9133227669181665068

`A208355(2*n)+A194590(A004275(n))`
-/

namespace A362595.P9133227669181665068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208355 (2 * n) + A194590 (A004275 n).toNat

end

end A362595.P9133227669181665068

namespace A362595

/-- `A208355(2*n)+A194590(A004275(n))` -/
def P9133227669181665068.Spec : Prop :=
  ∀ n, P9133227669181665068.a n = A362595 n

end A362595

/-! ## A362595.P13921770512459488503

`A329687(3*n)+A194590(A004275(n))`
-/

namespace A362595.P13921770512459488503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329687 (3 * n) + A194590 (A004275 n).toNat

end

end A362595.P13921770512459488503

namespace A362595

/-- `A329687(3*n)+A194590(A004275(n))` -/
def P13921770512459488503.Spec : Prop :=
  ∀ n, P13921770512459488503.a n = A362595 n

end A362595

/-! ## A362595.P17275225841523133481

`A194590(A004275(n))+A246604(n)+n`
-/

namespace A362595.P17275225841523133481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194590 (A004275 n).toNat + (A246604 n + (n : ℤ))

end

end A362595.P17275225841523133481

namespace A362595

/-- `A194590(A004275(n))+A246604(n)+n` -/
def P17275225841523133481.Spec : Prop :=
  ∀ n, P17275225841523133481.a n = A362595 n

end A362595

/-! ## A362595.P11362256059921283803

`A194590(A004275(n))+A089408(Δ[n²])`
-/

namespace A362595.P11362256059921283803
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194590 (A004275 n).toNat + A089408 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A362595.P11362256059921283803

namespace A362595

/-- `A194590(A004275(n))+A089408(Δ[n²])` -/
def P11362256059921283803.Spec : Prop :=
  ∀ n, P11362256059921283803.a n = A362595 n

end A362595

/-! ## A362595.P13036900694186849190

`A194590(A004275(n))+A097331(Δ[n²])`
-/

namespace A362595.P13036900694186849190
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194590 (A004275 n).toNat + A097331 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A362595.P13036900694186849190

namespace A362595

/-- `A194590(A004275(n))+A097331(Δ[n²])` -/
def P13036900694186849190.Spec : Prop :=
  ∀ n, P13036900694186849190.a n = A362595 n

end A362595

/-! ## A362595.P12545272843522122789

`A194590(A004275(n))+∑{d}[n+1, A034742(#)]`
-/

namespace A362595.P12545272843522122789
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194590 (A004275 n).toNat + ∑ d ∈ Nat.divisors (f1 n), A034742 d

end

end A362595.P12545272843522122789

namespace A362595

/-- `A194590(A004275(n))+∑{d}[n+1, A034742(#)]` -/
def P12545272843522122789.Spec : Prop :=
  ∀ n, P12545272843522122789.a n = A362595 n

end A362595

/-! ## A362595.P1515922149370603748

`A194590(A004275(n))+abs(A105523(2*n+1))`
-/

namespace A362595.P1515922149370603748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194590 (A004275 n).toNat + |A105523 (2 * n + 1)|

end

end A362595.P1515922149370603748

namespace A362595

/-- `A194590(A004275(n))+abs(A105523(2*n+1))` -/
def P1515922149370603748.Spec : Prop :=
  ∀ n, P1515922149370603748.a n = A362595 n

end A362595

/-!
# A362596: Number of parking functions of size n avoiding the patterns 213 and 321.

The programs for A362596, the canonical program `A362596.P425571288444165629` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A362596 has offset 0).

The definition of A362596 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A362596.P425571288444165629

`A258431(n)-A276666(n)`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A362596

/-- `A258431(n)-A276666(n)` -/
def P425571288444165629.Spec : Prop :=
  ∀ n, P425571288444165629.a n = A362596 n

theorem P425571288444165629.correct : P425571288444165629.Spec := by
  intro n
  simp only [A362596]

end A362596

/-! ## A362596.P10451973932077612837

`A191386(Δ[n²])/2-A276666(n)`
-/

namespace A362596.P10451973932077612837
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A191386 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / 2 - (A276666 n : ℚ)

end

end A362596.P10451973932077612837

namespace A362596

/-- `A191386(Δ[n²])/2-A276666(n)` -/
def P10451973932077612837.Spec : Prop :=
  ∀ n, P10451973932077612837.a n = (A362596 n : ℚ)

end A362596

/-! ## A362596.P6713063392899897216

`record[A191386(A022998(n)-n)]-A276666(n)`
-/

namespace A362596.P6713063392899897216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191386 (A022998 n - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A276666 n

end

end A362596.P6713063392899897216

namespace A362596

/-- `record[A191386(A022998(n)-n)]-A276666(n)` -/
def P6713063392899897216.Spec : Prop :=
  ∀ n, P6713063392899897216.a n = A362596 n

end A362596

/-!
# A362597: Number of parking functions of size n avoiding the patterns 213 and 312.

The programs for A362597, there is no canonical definition to state claims against.
-/

/-! ## A362597.P9826232630066507923

`A168223(A184993(n))+A125188(n)`
-/

namespace A362597.P9826232630066507923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168223 (A184993 n).toNat + A125188 n

end

end A362597.P9826232630066507923

/-! ## A362597.P12262206752966276458

`A125188(n)-A121262(A005573(n))`
-/

namespace A362597.P12262206752966276458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125188 n - A121262 (A005573 n).toNat

end

end A362597.P12262206752966276458

/-! ## A362597.P13960975962830695030

`A125188(n)-A125203(A064062(n))`
-/

namespace A362597.P13960975962830695030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125188 n - A125203 (A064062 n).toNat

end

end A362597.P13960975962830695030

