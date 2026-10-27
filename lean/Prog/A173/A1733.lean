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
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C038
import Seq.B000.C040
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
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C006
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B006.C000
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
# A173300: a(n) is the denominator of the fraction f = x^n + y^n given that x + y = 1 and x^2 + y^2 = 2.

The programs for A173300, the canonical program `A173300.P11506039170907989081` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A173300 has offset 1).

The definition of A173300 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A173300.P11506039170907989081

`4*a(n-4)` with `a(0)=1, a(1)=1, a(2)=2, a(3)=2, a(4)=4, a(5)=2`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A173300

/-- `4*a(n-4)` -/
def P11506039170907989081.Spec : Prop :=
  ∀ n, (P11506039170907989081.a n : ℤ) = A173300 (n + 1)

theorem P11506039170907989081.correct : P11506039170907989081.Spec := by
  intro n
  simp only [A173300, Nat.add_sub_cancel]

end A173300

/-! ## A173300.P10311128982861732365

`ceil(2^floor(n/2)/C(2, n%4)!)`
-/

namespace A173300.P10311128982861732365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 : ℚ) ^ (⌊(n : ℚ) / 2⌋ : ℤ) / (Nat.factorial (Nat.choose 2 (n % 4)) : ℚ)⌉

end

end A173300.P10311128982861732365

namespace A173300

/-- `ceil(2^floor(n/2)/C(2, n%4)!)` -/
def P10311128982861732365.Spec : Prop :=
  ∀ n, P10311128982861732365.a n = A173300 (n + 1)

end A173300

/-! ## A173300.P7816853600367464995

`ceil(2^floor(n/2)/gcd(4, n+1)%3)`
-/

namespace A173300.P7816853600367464995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 : ℚ) ^ (⌊(n : ℚ) / 2⌋ : ℤ) / ((Nat.gcd 4 (n + 1) % 3 : ℕ) : ℚ)⌉

end

end A173300.P7816853600367464995

namespace A173300

/-- `ceil(2^floor(n/2)/gcd(4, n+1)%3)` -/
def P7816853600367464995.Spec : Prop :=
  ∀ n, P7816853600367464995.a n = A173300 (n + 1)

end A173300

/-! ## A173300.P2700055690783077623

`2^floor(∑[n]/(gcd(n+3, n-1)+n))`
-/

namespace A173300.P2700055690783077623
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / (Int.gcd (n + 3 : ℤ) ((n : ℤ) - 1) + n : ℚ)⌋ : ℤ)

end

end A173300.P2700055690783077623

namespace A173300

/-- `2^floor(∑[n]/(gcd(n+3, n-1)+n))` -/
def P2700055690783077623.Spec : Prop :=
  ∀ n, P2700055690783077623.a n = (A173300 (n + 1) : ℚ)

end A173300

/-! ## A173300.P16670075814584010587

`2^floor(abs(acot(val(n+1, 2)-1)-n)/2)`
-/

namespace A173300.P16670075814584010587
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (⌊|SequenceMachineLib.acot ((SequenceMachineLib.valuation (n + 1) 2 : ℤ) - 1 : ℝ) - (n : ℝ)| / 2⌋ : ℤ)

end

end A173300.P16670075814584010587

namespace A173300

/-- `2^floor(abs(acot(val(n+1, 2)-1)-n)/2)` -/
def P16670075814584010587.Spec : Prop :=
  ∀ n, P16670075814584010587.a n = (A173300 (n + 1) : ℚ)

end A173300

/-! ## A173300.P3262724256937515719

`2^A173989(n+1)`
-/

namespace A173300.P3262724256937515719
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A173989 (n + 1) : ℤ)

end

end A173300.P3262724256937515719

namespace A173300

/-- `2^A173989(n+1)` -/
def P3262724256937515719.Spec : Prop :=
  ∀ n, P3262724256937515719.a n = (A173300 (n + 1) : ℚ)

end A173300

/-! ## A173300.P15155704608814157573

`A000079(A173989(n+1))`
-/

namespace A173300.P15155704608814157573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A173989 (n + 1)).toNat

end

end A173300.P15155704608814157573

namespace A173300

/-- `A000079(A173989(n+1))` -/
def P15155704608814157573.Spec : Prop :=
  ∀ n, P15155704608814157573.a n = A173300 (n + 1)

end A173300

/-! ## A173300.P12502199206996225139

`A011782(A291271(n+3))`
-/

namespace A173300.P12502199206996225139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A291271 (n + 3)).toNat

end

end A173300.P12502199206996225139

namespace A173300

/-- `A011782(A291271(n+3))` -/
def P12502199206996225139.Spec : Prop :=
  ∀ n, P12502199206996225139.a n = A173300 (n + 1)

end A173300

/-! ## A173300.P9219685460882337453

`A211164(A291330(n+3))`
-/

namespace A173300.P9219685460882337453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211164 (A291330 (n + 3)).toNat

end

end A173300.P9219685460882337453

namespace A173300

/-- `A211164(A291330(n+3))` -/
def P9219685460882337453.Spec : Prop :=
  ∀ n, P9219685460882337453.a n = A173300 (n + 1)

end A173300

/-!
# A173301: a(n) = A000041(2^n - 1).

The programs for A173301, there is no canonical definition to state claims against.
-/

/-! ## A173301.P15657453681444306935

`A000041(2^n-1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A173301.P15657453681444306935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (2 ^ n - 1)

end

end A173301.P15657453681444306935

/-! ## A173301.P3336022399784499270

`∑[A133732(2^n)]`
-/

namespace A173301.P3336022399784499270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133732 (2 ^ n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173301.P3336022399784499270

/-! ## A173301.P14290936014861402867

`A163295(2^n)-n`
-/

namespace A173301.P14290936014861402867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163295 (2 ^ n) - (n : ℤ)

end

end A173301.P14290936014861402867

/-! ## A173301.P7197684981215008948

`∑{d}[2^n, A133732(#)]`
-/

namespace A173301.P7197684981215008948
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A133732 d

end

end A173301.P7197684981215008948

/-! ## A173301.P11548954327852281250

`A000065(2^n-1)+1`
-/

namespace A173301.P11548954327852281250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000065 (2 ^ n - 1) + 1

end

end A173301.P11548954327852281250

/-!
# A173302: Irregular triangle by rows, generated from an array with A000041 starting again at columns (2^n - 1), n=1,2,3,...

The programs for A173302, there is no canonical definition to state claims against.
-/

/-! ## A173302.P13443834157895425393

`A119620(A089654(n+1))`
-/

namespace A173302.P13443834157895425393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119620 (A089654 (n + 1)).toNat

end

end A173302.P13443834157895425393

/-! ## A173302.P6552486058639997017

`A000041(val(record[A099884(n)], 2))`
-/

namespace A173302.P6552486058639997017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099884 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (SequenceMachineLib.valuation (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat 2)

end

end A173302.P6552486058639997017

/-! ## A173302.P5484148897609909179

`A000041(∏{e}[record[A099884(n)], #])`
-/

namespace A173302.P5484148897609909179
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099884 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p)

end

end A173302.P5484148897609909179

/-! ## A173302.P1964382556353173990

`A035363(A089654(n+1)-1)`
-/

namespace A173302.P1964382556353173990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 (A089654 (n + 1) - 1).toNat

end

end A173302.P1964382556353173990

/-! ## A173302.P2734601327058564986

`A100824(A089654(n+1)-1)`
-/

namespace A173302.P2734601327058564986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100824 (A089654 (n + 1) - 1).toNat

end

end A173302.P2734601327058564986

/-! ## A173302.P2644051974994725135

`A035363(xor(1, A089654(n+1)))`
-/

namespace A173302.P2644051974994725135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 (Int.xor 1 (A089654 (n + 1))).toNat

end

end A173302.P2644051974994725135

/-! ## A173302.P4492797436610431384

`A000041((A089654(n+1)-1)/2)`
-/

namespace A173302.P4492797436610431384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (SequenceMachineLib.roundAway ((A089654 (n + 1) - 1 : ℚ) / 2)).toNat

end

end A173302.P4492797436610431384

/-! ## A173302.P15721454424003682086

`A000041(xor(1, A089654(n+1))/2)`
-/

namespace A173302.P15721454424003682086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (SequenceMachineLib.roundAway ((Int.xor 1 (A089654 (n + 1)) : ℚ) / 2)).toNat

end

end A173302.P15721454424003682086

/-! ## A173302.P13280693076451743876

`A000041(A051903(record[A099884(n)]))`
-/

namespace A173302.P13280693076451743876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099884 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (A051903 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat).toNat

end

end A173302.P13280693076451743876

/-! ## A173302.P8103779206629480421

`A286589(A336551(record[A099884(n)]))`
-/

namespace A173302.P8103779206629480421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099884 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286589 (A336551 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat).toNat

end

end A173302.P8103779206629480421

/-!
# A173303: Row sums of triangle A173302.

The programs for A173303, there is no canonical definition to state claims against.
-/

/-! ## A173303.P17880767577464743101

`∑{d}[A053644(n+1), A000041(1-#+n)]`
-/

namespace A173303.P17880767577464743101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053644 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000041 (1 - (d : ℤ) + (n : ℤ)).toNat

end

end A173303.P17880767577464743101

/-! ## A173303.P16520130563647670062

`∑{d}[A000079(A000523(n+1)), A000041(n+1-#)]`
-/

namespace A173303.P16520130563647670062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A000523 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000041 (n + 1 - d)

end

end A173303.P16520130563647670062

/-! ## A173303.P3302865799375836800

`A295342(A187829(n+1))+A084376(n)`
-/

namespace A173303.P3302865799375836800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295342 (A187829 (n + 1)).toNat + A084376 n

end

end A173303.P3302865799375836800

/-! ## A173303.P6229454666845059414

`A025157(3*(n+1))-A191907(A209621((n+1)/2^val(n+1, 2)))`
-/

namespace A173303.P6229454666845059414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025157 (3 * (n + 1)) - A191907 (A209621 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ))).toNat).toNat

end

end A173303.P6229454666845059414

/-! ## A173303.P6159296337253125174

`A084376(A062399(n))+A024788(n+1)`
-/

namespace A173303.P6159296337253125174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084376 (A062399 n).toNat + A024788 (n + 1)

end

end A173303.P6159296337253125174

/-!
# A173305: Triangle by columns, A000009 in every column shifted down twice for k > 0.

The programs for A173305, there is no canonical definition to state claims against.
-/

/-! ## A173305.P11678209867798310145

`A000009(A082375(n))`
-/

namespace A173305.P11678209867798310145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 (A082375 n).toNat

end

end A173305.P11678209867798310145

/-! ## A173305.P4699261225061869042

`A035457(2*A082375(n))`
-/

namespace A173305.P4699261225061869042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035457 (2 * A082375 n).toNat

end

end A173305.P4699261225061869042

/-! ## A173305.P13310582310565344517

`A219347(A056536(n+1))`
-/

namespace A173305.P13310582310565344517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 (A056536 (n + 1)).toNat

end

end A173305.P13310582310565344517

/-! ## A173305.P9916411350375758573

`A219347(∑[2-char[n²]])`
-/

namespace A173305.P9916411350375758573
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A173305.P9916411350375758573

/-! ## A173305.P4267541037756790405

`A000009(ceil(log2(A119440(n))))`
-/

namespace A173305.P4267541037756790405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 ⌈Real.logb 2 (A119440 n : ℝ)⌉.toNat

end

end A173305.P4267541037756790405

/-! ## A173305.P11946710604362393527

`A000009(round(log2(A119440(n))))`
-/

namespace A173305.P11946710604362393527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 (SequenceMachineLib.roundAway (Real.logb 2 (A119440 n : ℝ))).toNat

end

end A173305.P11946710604362393527

/-! ## A173305.P12653804770987503824

`A050361(record[A222599(n)])`
-/

namespace A173305.P12653804770987503824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222599 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050361 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A173305.P12653804770987503824

/-! ## A173305.P8601245505841369596

`A050361(A181666(n+1))`
-/

namespace A173305.P8601245505841369596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050361 (A181666 (n + 1)).toNat

end

end A173305.P8601245505841369596

/-! ## A173305.P12042336269810532474

`A050361(2^A082375(n))`
-/

namespace A173305.P12042336269810532474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050361 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A082375 n : ℤ))).toNat

end

end A173305.P12042336269810532474

/-! ## A173305.P16625203663593601978

`A050361(A062052(n+1))`
-/

namespace A173305.P16625203663593601978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050361 (A062052 (n + 1)).toNat

end

end A173305.P16625203663593601978

/-!
# A173306: Triangle read by rows, generated from an array of terms in powers of triangle A173305.

The programs for A173306, there is no canonical definition to state claims against.
-/

/-! ## A173306.P13041983868449636419

`A008963(xor(A022264(3*n+2), A078315(n+2)))`
-/

namespace A173306.P13041983868449636419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008963 (Int.xor (A022264 (3 * n + 2)) (A078315 (n + 2))).toNat

end

end A173306.P13041983868449636419

/-! ## A173306.P11604237348066346948

`A116482(n)+A025469(A000225(n))`
-/

namespace A173306.P11604237348066346948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116482 n + A025469 (A000225 n).toNat

end

end A173306.P11604237348066346948

/-! ## A173306.P7783765536936027375

`A264404(n)+A102683(A006011(n))`
-/

namespace A173306.P7783765536936027375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264404 n + A102683 (A006011 n).toNat

end

end A173306.P7783765536936027375

/-! ## A173306.P3634228197372947680

`or(A004530(A098615(n)), A116482(n))`
-/

namespace A173306.P3634228197372947680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A004530 (A098615 n).toNat) (A116482 n)

end

end A173306.P3634228197372947680

/-! ## A173306.P18119068383714002296

`or(A092078(A016725(n)), A116482(n))`
-/

namespace A173306.P18119068383714002296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A092078 (A016725 n).toNat) (A116482 n)

end

end A173306.P18119068383714002296

/-!
# A173307: a(n) = 13*n*(n+1).

The programs for A173307, the canonical program `A173307.P1544508757824544434` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A173307 has offset 0).

The definition of A173307 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `13*n*(n+1)` (program `A173307.P1544508757824544434`, by `A173307.P1544508757824544434.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A173307.P1544508757824544434

`13*n*(n+1)`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A173307

/-- `13*n*(n+1)` -/
def P1544508757824544434.Spec : Prop :=
  ∀ n, (P1544508757824544434.a n : ℤ) = A173307 n

theorem P1544508757824544434.correct : P1544508757824544434.Spec := by
  intro n
  simp only [A173307]

end A173307

/-! ## A173307.P3701049008316621019

`-(13*n*xor(n, -1))`
-/

namespace A173307.P3701049008316621019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -((13 * n : ℤ) * Int.xor (n : ℤ) (-1))

end

end A173307.P3701049008316621019

namespace A173307

/-- `-(13*n*xor(n, -1))` -/
def P3701049008316621019.Spec : Prop :=
  ∀ n, P3701049008316621019.a n = A173307 n

end A173307

/-! ## A173307.P13241537233745978671

`floor(∑[a(n-1)+26])` with `a(0)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A173307.P13241537233745978671
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 (n - 1) + 26

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173307.P13241537233745978671

namespace A173307

/-- `floor(∑[a(n-1)+26])` -/
def P13241537233745978671.Spec : Prop :=
  ∀ n, (P13241537233745978671.a n : ℤ) = A173307 n

end A173307

/-! ## A173307.P5417303331909718041

`26*n²-a(n-1)` with `a(0)=0`
-/

namespace A173307.P5417303331909718041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (26 * n ^ 2 : ℤ) - a (n - 1)

end

end A173307.P5417303331909718041

namespace A173307

/-- `26*n²-a(n-1)` -/
def P5417303331909718041.Spec : Prop :=
  ∀ n, P5417303331909718041.a n = A173307 n

theorem P5417303331909718041.correct : P5417303331909718041.Spec := by
  intro n
  induction n with
  | zero => simp [A173307, A173307.P5417303331909718041.a, A173307.P1544508757824544434.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A173307, Nat.add_sub_cancel, A173307.P5417303331909718041.a, A173307.P1544508757824544434.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A173307

/-! ## A173307.P3938619885046634561

`27*n-(n-a(n-1))` with `a(0)=0`
-/

namespace A173307.P3938619885046634561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (27 * n : ℤ) - ((n : ℤ) - a (n - 1))

end

end A173307.P3938619885046634561

namespace A173307

/-- `27*n-(n-a(n-1))` -/
def P3938619885046634561.Spec : Prop :=
  ∀ n, P3938619885046634561.a n = A173307 n

theorem P3938619885046634561.correct : P3938619885046634561.Spec := by
  intro n
  induction n with
  | zero => simp [A173307, A173307.P3938619885046634561.a, A173307.P1544508757824544434.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A173307, Nat.add_sub_cancel, A173307.P3938619885046634561.a, A173307.P1544508757824544434.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A173307

/-! ## A173307.P14094343589286798223

`∑[ogf((8+10x+8x^2)/(1-2x+x^2))]-8`
-/

namespace A173307.P14094343589286798223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [8, 10, 8] [1, -2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 8

end

end A173307.P14094343589286798223

namespace A173307

/-- `∑[ogf((8+10x+8x^2)/(1-2x+x^2))]-8` -/
def P14094343589286798223.Spec : Prop :=
  ∀ n, P14094343589286798223.a n = A173307 n

end A173307

/-! ## A173307.P2054717198191635972

`4*∑[ogf(13x/(1-2x+x^2))]/2`
-/

namespace A173307.P2054717198191635972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 13] [1, -2, 1] n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((4 * (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ) : ℚ) / 2

end

end A173307.P2054717198191635972

namespace A173307

/-- `4*∑[ogf(13x/(1-2x+x^2))]/2` -/
def P2054717198191635972.Spec : Prop :=
  ∀ n, P2054717198191635972.a n = (A173307 n : ℚ)

end A173307

/-! ## A173307.P12504038150593692040

`A195028(n)-n²`
-/

namespace A173307.P12504038150593692040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195028 n - (n ^ 2 : ℤ)

end

end A173307.P12504038150593692040

namespace A173307

/-- `A195028(n)-n²` -/
def P12504038150593692040.Spec : Prop :=
  ∀ n, P12504038150593692040.a n = A173307 n

theorem P12504038150593692040.correct : P12504038150593692040.Spec := by
  intro n
  simp only [A173307, Nat.add_sub_cancel, A173307.P12504038150593692040.a, A173307.P1544508757824544434.a, A195028, A195028.P15304006162796783085.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A173307

/-! ## A173307.P3508400535233795112

`A123296(n)+∑[n]`
-/

namespace A173307.P3508400535233795112
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123296 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A173307.P3508400535233795112

namespace A173307

/-- `A123296(n)+∑[n]` -/
def P3508400535233795112.Spec : Prop :=
  ∀ n, P3508400535233795112.a n = A173307 n

end A173307

/-! ## A173307.P15512311301843642453

`A132761(n)+A014642(n)`
-/

namespace A173307.P15512311301843642453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132761 n + A014642 n

end

end A173307.P15512311301843642453

namespace A173307

/-- `A132761(n)+A014642(n)` -/
def P15512311301843642453.Spec : Prop :=
  ∀ n, P15512311301843642453.a n = A173307 n

theorem P15512311301843642453.correct : P15512311301843642453.Spec := by
  intro n
  simp only [A173307, Nat.add_sub_cancel, A173307.P15512311301843642453.a, A173307.P1544508757824544434.a, A014642, A014642.P1230047363248524840.a, A132761, A132761.P14936844187475922917.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A173307

/-! ## A173307.P3526031085289443584

`A132755(n)+A022283(n)`
-/

namespace A173307.P3526031085289443584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132755 n + A022283 n

end

end A173307.P3526031085289443584

namespace A173307

/-- `A132755(n)+A022283(n)` -/
def P3526031085289443584.Spec : Prop :=
  ∀ n, P3526031085289443584.a n = A173307 n

end A173307

/-! ## A173307.P2246154116634504628

`A132756(n)+A022282(n)`
-/

namespace A173307.P2246154116634504628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132756 n + A022282 n

end

end A173307.P2246154116634504628

namespace A173307

/-- `A132756(n)+A022282(n)` -/
def P2246154116634504628.Spec : Prop :=
  ∀ n, P2246154116634504628.a n = A173307 n

end A173307

/-! ## A173307.P760321289539327700

`A124080(n)+A035008(n)`
-/

namespace A173307.P760321289539327700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124080 n + A035008 n

end

end A173307.P760321289539327700

namespace A173307

/-- `A124080(n)+A035008(n)` -/
def P760321289539327700.Spec : Prop :=
  ∀ n, P760321289539327700.a n = A173307 n

theorem P760321289539327700.correct : P760321289539327700.Spec := by
  intro n
  simp only [A173307, Nat.add_sub_cancel, A173307.P760321289539327700.a, A173307.P1544508757824544434.a, A035008, A035008.P9220570800855289153.a, A124080, A124080.P13908832204994963490.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A173307

/-! ## A173307.P7466606313307605578

`A152742(n)+A008595(n)`
-/

namespace A173307.P7466606313307605578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152742 n + A008595 n

end

end A173307.P7466606313307605578

namespace A173307

/-- `A152742(n)+A008595(n)` -/
def P7466606313307605578.Spec : Prop :=
  ∀ n, P7466606313307605578.a n = A173307 n

theorem P7466606313307605578.correct : P7466606313307605578.Spec := by
  intro n
  simp only [A173307, Nat.add_sub_cancel, A173307.P7466606313307605578.a, A173307.P1544508757824544434.a, A008595, A008595.P16021929412859907016.a, A152742, A152742.P4687310680346739208.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A173307

/-! ## A173307.P9031683488425419581

`A098849(n)+A062783(n)`
-/

namespace A173307.P9031683488425419581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098849 n + A062783 n

end

end A173307.P9031683488425419581

namespace A173307

/-- `A098849(n)+A062783(n)` -/
def P9031683488425419581.Spec : Prop :=
  ∀ n, P9031683488425419581.a n = A173307 n

theorem P9031683488425419581.correct : P9031683488425419581.Spec := by
  intro n
  simp only [A173307, Nat.add_sub_cancel, A173307.P9031683488425419581.a, A173307.P1544508757824544434.a, A062783, A062783.P15889295991207525073.a, A098849, A098849.P2368772450570550712.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A173307

/-! ## A173307.P7801157012681712228

`A098603(n)+A063436(n)`
-/

namespace A173307.P7801157012681712228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098603 n + A063436 n

end

end A173307.P7801157012681712228

namespace A173307

/-- `A098603(n)+A063436(n)` -/
def P7801157012681712228.Spec : Prop :=
  ∀ n, P7801157012681712228.a n = A173307 n

theorem P7801157012681712228.correct : P7801157012681712228.Spec := by
  intro n
  simp only [A173307, Nat.add_sub_cancel, A173307.P7801157012681712228.a, A173307.P1544508757824544434.a, A063436, A063436.P6856054806736193048.a, A098603, A098603.P15074787285242523117.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A173307

/-! ## A173307.P3865852538750895168

`A131878(n)+A033569(n)`
-/

namespace A173307.P3865852538750895168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131878 n + A033569 n

end

end A173307.P3865852538750895168

namespace A173307

/-- `A131878(n)+A033569(n)` -/
def P3865852538750895168.Spec : Prop :=
  ∀ n, P3865852538750895168.a n = A173307 n

theorem P3865852538750895168.correct : P3865852538750895168.Spec := by
  intro n
  simp only [A173307, Nat.add_sub_cancel, A173307.P3865852538750895168.a, A173307.P1544508757824544434.a, A033569, A033569.P5108390427402809841.a, A131878, A131878.P398517035312320865.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A173307

/-! ## A173307.P8928498507429280483

`A161935(n)+A008607(n)`
-/

namespace A173307.P8928498507429280483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161935 n + A008607 n

end

end A173307.P8928498507429280483

namespace A173307

/-- `A161935(n)+A008607(n)` -/
def P8928498507429280483.Spec : Prop :=
  ∀ n, P8928498507429280483.a n = A173307 n

theorem P8928498507429280483.correct : P8928498507429280483.Spec := by
  intro n
  simp only [A173307, Nat.add_sub_cancel, A173307.P8928498507429280483.a, A173307.P1544508757824544434.a, A008607, A008607.P4608234580437606002.a, A161935, A161935.P14335868775891492350.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A173307

/-! ## A173307.P10948816786720368276

`A139578(n)+A033584(n)`
-/

namespace A173307.P10948816786720368276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139578 n + A033584 n

end

end A173307.P10948816786720368276

namespace A173307

/-- `A139578(n)+A033584(n)` -/
def P10948816786720368276.Spec : Prop :=
  ∀ n, P10948816786720368276.a n = A173307 n

theorem P10948816786720368276.correct : P10948816786720368276.Spec := by
  intro n
  simp only [A173307, Nat.add_sub_cancel, A173307.P10948816786720368276.a, A173307.P1544508757824544434.a, A033584, A033584.P5749212620470657919.a, A139578, A139578.P1798970913824919969.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A173307

/-! ## A173307.P13231588913201889359

`A163761(n)+A028896(n)`
-/

namespace A173307.P13231588913201889359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163761 n + A028896 n

end

end A173307.P13231588913201889359

namespace A173307

/-- `A163761(n)+A028896(n)` -/
def P13231588913201889359.Spec : Prop :=
  ∀ n, P13231588913201889359.a n = A173307 n

theorem P13231588913201889359.correct : P13231588913201889359.Spec := by
  intro n
  simp only [A173307, Nat.add_sub_cancel, A173307.P13231588913201889359.a, A173307.P1544508757824544434.a, A028896, A028896.P3776891904721443318.a, A163761, A163761.P557953753826643866.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A173307

/-!
# A173308: a(n) = 17*n*(n+1).

The programs for A173308, the canonical program `A173308.P4817436796078873519` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A173308 has offset 0).

The definition of A173308 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `17*n*(n+1)` (program `A173308.P4817436796078873519`, by `A173308.P4817436796078873519.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A173308.P17637319507491036712

`34*C(n+1, 2)`
-/

namespace A173308.P17637319507491036712
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  34 * Nat.choose (n + 1) 2

end

end A173308.P17637319507491036712

namespace A173308

/-- `34*C(n+1, 2)` -/
def P17637319507491036712.Spec : Prop :=
  ∀ n, (P17637319507491036712.a n : ℤ) = A173308 n

theorem P17637319507491036712.correct : P17637319507491036712.Spec := by
  intro n
  simp only [A173308, Nat.add_sub_cancel, A173308.P17637319507491036712.a, A173308.P4817436796078873519.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A173308

/-! ## A173308.P4817436796078873519

`17*n*(n+1)`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A173308

/-- `17*n*(n+1)` -/
def P4817436796078873519.Spec : Prop :=
  ∀ n, (P4817436796078873519.a n : ℤ) = A173308 n

theorem P4817436796078873519.correct : P4817436796078873519.Spec := by
  intro n
  simp only [A173308]

end A173308

/-! ## A173308.P4418928812086007194

`floor(∑[a(n-1)+34])` with `a(0)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A173308.P4418928812086007194
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 (n - 1) + 34

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173308.P4418928812086007194

namespace A173308

/-- `floor(∑[a(n-1)+34])` -/
def P4418928812086007194.Spec : Prop :=
  ∀ n, (P4418928812086007194.a n : ℤ) = A173308 n

end A173308

/-! ## A173308.P12003729436301696931

`34*n²-a(n-1)` with `a(0)=0`
-/

namespace A173308.P12003729436301696931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (34 * n ^ 2 : ℤ) - a (n - 1)

end

end A173308.P12003729436301696931

namespace A173308

/-- `34*n²-a(n-1)` -/
def P12003729436301696931.Spec : Prop :=
  ∀ n, P12003729436301696931.a n = A173308 n

theorem P12003729436301696931.correct : P12003729436301696931.Spec := by
  intro n
  induction n with
  | zero => simp [A173308, A173308.P12003729436301696931.a, A173308.P4817436796078873519.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A173308, Nat.add_sub_cancel, A173308.P12003729436301696931.a, A173308.P4817436796078873519.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A173308

/-! ## A173308.P2322342369877366242

`35*n-(n-a(n-1))` with `a(0)=0`
-/

namespace A173308.P2322342369877366242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (35 * n : ℤ) - ((n : ℤ) - a (n - 1))

end

end A173308.P2322342369877366242

namespace A173308

/-- `35*n-(n-a(n-1))` -/
def P2322342369877366242.Spec : Prop :=
  ∀ n, P2322342369877366242.a n = A173308 n

theorem P2322342369877366242.correct : P2322342369877366242.Spec := by
  intro n
  induction n with
  | zero => simp [A173308, A173308.P2322342369877366242.a, A173308.P4817436796078873519.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A173308, Nat.add_sub_cancel, A173308.P2322342369877366242.a, A173308.P4817436796078873519.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A173308

/-! ## A173308.P11272740643218224847

`A244630(n)+17*n`
-/

namespace A173308.P11272740643218224847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244630 n + (17 * n : ℤ)

end

end A173308.P11272740643218224847

namespace A173308

/-- `A244630(n)+17*n` -/
def P11272740643218224847.Spec : Prop :=
  ∀ n, P11272740643218224847.a n = A173308 n

theorem P11272740643218224847.correct : P11272740643218224847.Spec := by
  intro n
  simp only [A173308, Nat.add_sub_cancel, A173308.P11272740643218224847.a, A173308.P4817436796078873519.a, A244630, A244630.P17246717711598176874.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A173308

/-! ## A173308.P17917085505877470018

`A162940(n)-(n²+n)`
-/

namespace A173308.P17917085505877470018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162940 n - (n ^ 2 + n : ℤ)

end

end A173308.P17917085505877470018

namespace A173308

/-- `A162940(n)-(n²+n)` -/
def P17917085505877470018.Spec : Prop :=
  ∀ n, P17917085505877470018.a n = A173308 n

theorem P17917085505877470018.correct : P17917085505877470018.Spec := by
  intro n
  simp only [A173308, Nat.add_sub_cancel, A173308.P17917085505877470018.a, A173308.P4817436796078873519.a, A162940, A162940.P6076576400821307123.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A173308

/-! ## A173308.P7280132926717145130

`A132761(n)+A016802(n)`
-/

namespace A173308.P7280132926717145130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132761 n + A016802 n

end

end A173308.P7280132926717145130

namespace A173308

/-- `A132761(n)+A016802(n)` -/
def P7280132926717145130.Spec : Prop :=
  ∀ n, P7280132926717145130.a n = A173308 n

theorem P7280132926717145130.correct : P7280132926717145130.Spec := by
  intro n
  simp only [A173308, Nat.add_sub_cancel, A173308.P7280132926717145130.a, A173308.P4817436796078873519.a, A016802, A016802.P8146297889048034948.a, A132761, A132761.P14936844187475922917.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A173308

/-! ## A173308.P11378446629407286889

`A123296(n)+A027468(n)`
-/

namespace A173308.P11378446629407286889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123296 n + A027468 n

end

end A173308.P11378446629407286889

namespace A173308

/-- `A123296(n)+A027468(n)` -/
def P11378446629407286889.Spec : Prop :=
  ∀ n, P11378446629407286889.a n = A173308 n

end A173308

/-! ## A173308.P10212692094495132008

`A132765(n)+A028994(n)`
-/

namespace A173308.P10212692094495132008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132765 n + A028994 n

end

end A173308.P10212692094495132008

namespace A173308

/-- `A132765(n)+A028994(n)` -/
def P10212692094495132008.Spec : Prop :=
  ∀ n, P10212692094495132008.a n = A173308 n

theorem P10212692094495132008.correct : P10212692094495132008.Spec := by
  intro n
  simp only [A173308, Nat.add_sub_cancel, A173308.P10212692094495132008.a, A173308.P4817436796078873519.a, A028994, A028994.P2614720213617424781.a, A132765, A132765.P2423139807718157486.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A173308

/-! ## A173308.P14398128603114435408

`A163758(n)+A035008(n)`
-/

namespace A173308.P14398128603114435408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163758 n + A035008 n

end

end A173308.P14398128603114435408

namespace A173308

/-- `A163758(n)+A035008(n)` -/
def P14398128603114435408.Spec : Prop :=
  ∀ n, P14398128603114435408.a n = A173308 n

theorem P14398128603114435408.correct : P14398128603114435408.Spec := by
  intro n
  simp only [A173308, Nat.add_sub_cancel, A173308.P14398128603114435408.a, A173308.P4817436796078873519.a, A035008, A035008.P9220570800855289153.a, A163758, A163758.P16330388119460632135.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A173308

/-! ## A173308.P15725069908674030286

`A139580(n)+A064761(n)`
-/

namespace A173308.P15725069908674030286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139580 n + A064761 n

end

end A173308.P15725069908674030286

namespace A173308

/-- `A139580(n)+A064761(n)` -/
def P15725069908674030286.Spec : Prop :=
  ∀ n, P15725069908674030286.a n = A173308 n

theorem P15725069908674030286.correct : P15725069908674030286.Spec := by
  intro n
  simp only [A173308, Nat.add_sub_cancel, A173308.P15725069908674030286.a, A173308.P4817436796078873519.a, A064761, A064761.P5984238371699821623.a, A139580, A139580.P14196476466695398530.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A173308

/-! ## A173308.P1218546443631898498

`A173307(n)+A033996(n)`
-/

namespace A173308.P1218546443631898498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173307 n + A033996 n

end

end A173308.P1218546443631898498

namespace A173308

/-- `A173307(n)+A033996(n)` -/
def P1218546443631898498.Spec : Prop :=
  ∀ n, P1218546443631898498.a n = A173308 n

theorem P1218546443631898498.correct : P1218546443631898498.Spec := by
  intro n
  simp only [A173308, Nat.add_sub_cancel, A173308.P1218546443631898498.a, A173308.P4817436796078873519.a, A033996, A033996.P3972738276246908348.a, A173307, A173307.P1544508757824544434.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A173308

/-! ## A173308.P16978515970560971483

`A164136(n)+A049598(n)`
-/

namespace A173308.P16978515970560971483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164136 n + A049598 n

end

end A173308.P16978515970560971483

namespace A173308

/-- `A164136(n)+A049598(n)` -/
def P16978515970560971483.Spec : Prop :=
  ∀ n, P16978515970560971483.a n = A173308 n

theorem P16978515970560971483.correct : P16978515970560971483.Spec := by
  intro n
  simp only [A173308, Nat.add_sub_cancel, A173308.P16978515970560971483.a, A173308.P4817436796078873519.a, A049598, A049598.P15670095646145140517.a, A164136, A164136.P8976148698682902853.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A173308

/-! ## A173308.P4544150664444838844

`A132763(n)+A104188(n)`
-/

namespace A173308.P4544150664444838844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132763 n + A104188 n

end

end A173308.P4544150664444838844

namespace A173308

/-- `A132763(n)+A104188(n)` -/
def P4544150664444838844.Spec : Prop :=
  ∀ n, P4544150664444838844.a n = A173308 n

theorem P4544150664444838844.correct : P4544150664444838844.Spec := by
  intro n
  simp only [A173308, Nat.add_sub_cancel, A173308.P4544150664444838844.a, A173308.P4817436796078873519.a, A104188, A104188.P226395597657789732.a, A132763, A132763.P15204131958599443596.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A173308

/-! ## A173308.P11611821106410678183

`A152750(n)+A132767(n)`
-/

namespace A173308.P11611821106410678183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152750 n + A132767 n

end

end A173308.P11611821106410678183

namespace A173308

/-- `A152750(n)+A132767(n)` -/
def P11611821106410678183.Spec : Prop :=
  ∀ n, P11611821106410678183.a n = A173308 n

theorem P11611821106410678183.correct : P11611821106410678183.Spec := by
  intro n
  simp only [A173308, Nat.add_sub_cancel, A173308.P11611821106410678183.a, A173308.P4817436796078873519.a, A132767, A132767.P13309384290684019065.a, A152750, A152750.P9324821272604293728.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A173308

/-! ## A173308.P1264614824417924795

`A147651(n)+A139274(n)`
-/

namespace A173308.P1264614824417924795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147651 n + A139274 n

end

end A173308.P1264614824417924795

namespace A173308

/-- `A147651(n)+A139274(n)` -/
def P1264614824417924795.Spec : Prop :=
  ∀ n, P1264614824417924795.a n = A173308 n

theorem P1264614824417924795.correct : P1264614824417924795.Spec := by
  intro n
  simp only [A173308, Nat.add_sub_cancel, A173308.P1264614824417924795.a, A173308.P4817436796078873519.a, A139274, A139274.P5572148062200826074.a, A147651, A147651.P5567796470201540316.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A173308

/-! ## A173308.P8281952560774120004

`A185019(n)+A140689(n)`
-/

namespace A173308.P8281952560774120004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185019 n + A140689 n

end

end A173308.P8281952560774120004

namespace A173308

/-- `A185019(n)+A140689(n)` -/
def P8281952560774120004.Spec : Prop :=
  ∀ n, P8281952560774120004.a n = A173308 n

theorem P8281952560774120004.correct : P8281952560774120004.Spec := by
  intro n
  simp only [A173308, Nat.add_sub_cancel, A173308.P8281952560774120004.a, A173308.P4817436796078873519.a, A140689, A140689.P2638629226622628695.a, A185019, A185019.P9430512347604204283.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A173308

/-! ## A173308.P13109004690176006611

`A163761(n)+A163756(n)`
-/

namespace A173308.P13109004690176006611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163761 n + A163756 n

end

end A173308.P13109004690176006611

namespace A173308

/-- `A163761(n)+A163756(n)` -/
def P13109004690176006611.Spec : Prop :=
  ∀ n, P13109004690176006611.a n = A173308 n

theorem P13109004690176006611.correct : P13109004690176006611.Spec := by
  intro n
  simp only [A173308, Nat.add_sub_cancel, A173308.P13109004690176006611.a, A173308.P4817436796078873519.a, A163756, A163756.P13614041795755210983.a, A163761, A163761.P557953753826643866.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A173308

/-! ## A173308.P9230939757445598598

`A195024(n)+A140681(n)`
-/

namespace A173308.P9230939757445598598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195024 n + A140681 n

end

end A173308.P9230939757445598598

namespace A173308

/-- `A195024(n)+A140681(n)` -/
def P9230939757445598598.Spec : Prop :=
  ∀ n, P9230939757445598598.a n = A173308 n

theorem P9230939757445598598.correct : P9230939757445598598.Spec := by
  intro n
  simp only [A173308, Nat.add_sub_cancel, A173308.P9230939757445598598.a, A173308.P4817436796078873519.a, A140681, A140681.P11404641493444198903.a, A195024, A195024.P14352591559818533670.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A173308

/-!
# A173309: a(n) = 19*n*(n+1).

The programs for A173309, the canonical program `A173309.P14730977432803289593` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A173309 has offset 0).

The definition of A173309 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `19*n*(n+1)` (program `A173309.P14730977432803289593`, by `A173309.P14730977432803289593.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A173309.P14730977432803289593

`19*n*(n+1)`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A173309

/-- `19*n*(n+1)` -/
def P14730977432803289593.Spec : Prop :=
  ∀ n, (P14730977432803289593.a n : ℤ) = A173309 n

theorem P14730977432803289593.correct : P14730977432803289593.Spec := by
  intro n
  simp only [A173309]

end A173309

/-! ## A173309.P16813432109017063237

`∑[a(n-1)+38]` with `a(0)=0`
-/

namespace A173309.P16813432109017063237
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 (n - 1) + 38

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173309.P16813432109017063237

namespace A173309

/-- `∑[a(n-1)+38]` -/
def P16813432109017063237.Spec : Prop :=
  ∀ n, (P16813432109017063237.a n : ℤ) = A173309 n

end A173309

/-! ## A173309.P12252257142499750103

`38*n²-a(n-1)` with `a(0)=0`
-/

namespace A173309.P12252257142499750103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (38 * n ^ 2 : ℤ) - a (n - 1)

end

end A173309.P12252257142499750103

namespace A173309

/-- `38*n²-a(n-1)` -/
def P12252257142499750103.Spec : Prop :=
  ∀ n, P12252257142499750103.a n = A173309 n

theorem P12252257142499750103.correct : P12252257142499750103.Spec := by
  intro n
  induction n with
  | zero => simp [A173309, A173309.P12252257142499750103.a, A173309.P14730977432803289593.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A173309, Nat.add_sub_cancel, A173309.P12252257142499750103.a, A173309.P14730977432803289593.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A173309

/-! ## A173309.P17622168210068413910

`39*n-(n-a(n-1))` with `a(0)=0`
-/

namespace A173309.P17622168210068413910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (39 * n : ℤ) - ((n : ℤ) - a (n - 1))

end

end A173309.P17622168210068413910

namespace A173309

/-- `39*n-(n-a(n-1))` -/
def P17622168210068413910.Spec : Prop :=
  ∀ n, P17622168210068413910.a n = A173309 n

theorem P17622168210068413910.correct : P17622168210068413910.Spec := by
  intro n
  induction n with
  | zero => simp [A173309, A173309.P17622168210068413910.a, A173309.P14730977432803289593.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A173309, Nat.add_sub_cancel, A173309.P17622168210068413910.a, A173309.P14730977432803289593.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A173309

/-! ## A173309.P8313068510809948711

`A244631(n)+19*n`
-/

namespace A173309.P8313068510809948711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244631 n + (19 * n : ℤ)

end

end A173309.P8313068510809948711

namespace A173309

/-- `A244631(n)+19*n` -/
def P8313068510809948711.Spec : Prop :=
  ∀ n, P8313068510809948711.a n = A173309 n

theorem P8313068510809948711.correct : P8313068510809948711.Spec := by
  intro n
  simp only [A173309, Nat.add_sub_cancel, A173309.P8313068510809948711.a, A173309.P14730977432803289593.a, A244631, A244631.P16156651558373966406.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A173309

/-! ## A173309.P13220032471069551737

`n²+A162940(n)+n`
-/

namespace A173309.P13220032471069551737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) + (A162940 n + (n : ℤ))

end

end A173309.P13220032471069551737

namespace A173309

/-- `n²+A162940(n)+n` -/
def P13220032471069551737.Spec : Prop :=
  ∀ n, P13220032471069551737.a n = A173309 n

theorem P13220032471069551737.correct : P13220032471069551737.Spec := by
  intro n
  simp only [A173309, Nat.add_sub_cancel, A173309.P13220032471069551737.a, A173309.P14730977432803289593.a, A162940, A162940.P6076576400821307123.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A173309

/-! ## A173309.P11181812646762948105

`A162940(n)+A002378(n)`
-/

namespace A173309.P11181812646762948105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162940 n + A002378 n

end

end A173309.P11181812646762948105

namespace A173309

/-- `A162940(n)+A002378(n)` -/
def P11181812646762948105.Spec : Prop :=
  ∀ n, P11181812646762948105.a n = A173309 n

theorem P11181812646762948105.correct : P11181812646762948105.Spec := by
  intro n
  simp only [A173309, Nat.add_sub_cancel, A173309.P11181812646762948105.a, A173309.P14730977432803289593.a, A002378, A002378.P6342434596694243671.a, A162940, A162940.P6076576400821307123.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A173309

/-! ## A173309.P11240749652816606198

`A132759(n)+A045946(n)`
-/

namespace A173309.P11240749652816606198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132759 n + A045946 n

end

end A173309.P11240749652816606198

namespace A173309

/-- `A132759(n)+A045946(n)` -/
def P11240749652816606198.Spec : Prop :=
  ∀ n, P11240749652816606198.a n = A173309 n

theorem P11240749652816606198.correct : P11240749652816606198.Spec := by
  intro n
  simp only [A173309, Nat.add_sub_cancel, A173309.P11240749652816606198.a, A173309.P14730977432803289593.a, A045946, A045946.P9467780037797056746.a, A132759, A132759.P11337813535892278005.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A173309

/-! ## A173309.P4799707854442190292

`A164136(n)+A035008(n)`
-/

namespace A173309.P4799707854442190292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164136 n + A035008 n

end

end A173309.P4799707854442190292

namespace A173309

/-- `A164136(n)+A035008(n)` -/
def P4799707854442190292.Spec : Prop :=
  ∀ n, P4799707854442190292.a n = A173309 n

theorem P4799707854442190292.correct : P4799707854442190292.Spec := by
  intro n
  simp only [A173309, Nat.add_sub_cancel, A173309.P4799707854442190292.a, A173309.P14730977432803289593.a, A035008, A035008.P9220570800855289153.a, A164136, A164136.P8976148698682902853.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A173309

/-! ## A173309.P3090361988799702595

`A173308(n)+A046092(n)`
-/

namespace A173309.P3090361988799702595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173308 n + A046092 n

end

end A173309.P3090361988799702595

namespace A173309

/-- `A173308(n)+A046092(n)` -/
def P3090361988799702595.Spec : Prop :=
  ∀ n, P3090361988799702595.a n = A173309 n

theorem P3090361988799702595.correct : P3090361988799702595.Spec := by
  intro n
  simp only [A173309, Nat.add_sub_cancel, A173309.P3090361988799702595.a, A173309.P14730977432803289593.a, A046092, A046092.P16411658895297056450.a, A173308, A173308.P4817436796078873519.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A173309

/-! ## A173309.P455555543636396074

`A173307(n)+A049598(n)`
-/

namespace A173309.P455555543636396074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173307 n + A049598 n

end

end A173309.P455555543636396074

namespace A173309

/-- `A173307(n)+A049598(n)` -/
def P455555543636396074.Spec : Prop :=
  ∀ n, P455555543636396074.a n = A173309 n

theorem P455555543636396074.correct : P455555543636396074.Spec := by
  intro n
  simp only [A173309, Nat.add_sub_cancel, A173309.P455555543636396074.a, A173309.P14730977432803289593.a, A049598, A049598.P15670095646145140517.a, A173307, A173307.P1544508757824544434.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A173309

/-! ## A173309.P13031849465506112706

`A144314(n)+A098849(n)`
-/

namespace A173309.P13031849465506112706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144314 n + A098849 n

end

end A173309.P13031849465506112706

namespace A173309

/-- `A144314(n)+A098849(n)` -/
def P13031849465506112706.Spec : Prop :=
  ∀ n, P13031849465506112706.a n = A173309 n

theorem P13031849465506112706.correct : P13031849465506112706.Spec := by
  intro n
  simp only [A173309, Nat.add_sub_cancel, A173309.P13031849465506112706.a, A173309.P14730977432803289593.a, A098849, A098849.P2368772450570550712.a, A144314, A144314.P8498779635623249334.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A173309

/-! ## A173309.P11609716667701503921

`A152741(n)+A123296(n)`
-/

namespace A173309.P11609716667701503921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152741 n + A123296 n

end

end A173309.P11609716667701503921

namespace A173309

/-- `A152741(n)+A123296(n)` -/
def P11609716667701503921.Spec : Prop :=
  ∀ n, P11609716667701503921.a n = A173309 n

end A173309

/-! ## A173309.P1304406098817940321

`A152994(n)+A132770(n)`
-/

namespace A173309.P1304406098817940321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152994 n + A132770 n

end

end A173309.P1304406098817940321

namespace A173309

/-- `A152994(n)+A132770(n)` -/
def P1304406098817940321.Spec : Prop :=
  ∀ n, P1304406098817940321.a n = A173309 n

theorem P1304406098817940321.correct : P1304406098817940321.Spec := by
  intro n
  simp only [A173309, Nat.add_sub_cancel, A173309.P1304406098817940321.a, A173309.P14730977432803289593.a, A132770, A132770.P12357990989208412572.a, A152994, A152994.P7052798607735396897.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A173309

/-! ## A173309.P15372620453160936060

`A153792(n)+A132767(n)`
-/

namespace A173309.P15372620453160936060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153792 n + A132767 n

end

end A173309.P15372620453160936060

namespace A173309

/-- `A153792(n)+A132767(n)` -/
def P15372620453160936060.Spec : Prop :=
  ∀ n, P15372620453160936060.a n = A173309 n

theorem P15372620453160936060.correct : P15372620453160936060.Spec := by
  intro n
  simp only [A173309, Nat.add_sub_cancel, A173309.P15372620453160936060.a, A173309.P14730977432803289593.a, A132767, A132767.P13309384290684019065.a, A153792, A153792.P13758873412561183293.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A173309

/-! ## A173309.P11742280900063460968

`A153796(n)+A132773(n)`
-/

namespace A173309.P11742280900063460968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153796 n + A132773 n

end

end A173309.P11742280900063460968

namespace A173309

/-- `A153796(n)+A132773(n)` -/
def P11742280900063460968.Spec : Prop :=
  ∀ n, P11742280900063460968.a n = A173309 n

theorem P11742280900063460968.correct : P11742280900063460968.Spec := by
  intro n
  simp only [A173309, Nat.add_sub_cancel, A173309.P11742280900063460968.a, A173309.P14730977432803289593.a, A132773, A132773.P1585102501411787334.a, A153796, A153796.P2544292493987041900.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A173309

/-! ## A173309.P463461534280916606

`A163761(n)+A163758(n)`
-/

namespace A173309.P463461534280916606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163761 n + A163758 n

end

end A173309.P463461534280916606

namespace A173309

/-- `A163761(n)+A163758(n)` -/
def P463461534280916606.Spec : Prop :=
  ∀ n, P463461534280916606.a n = A173309 n

theorem P463461534280916606.correct : P463461534280916606.Spec := by
  intro n
  simp only [A173309, Nat.add_sub_cancel, A173309.P463461534280916606.a, A173309.P14730977432803289593.a, A163758, A163758.P16330388119460632135.a, A163761, A163761.P557953753826643866.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A173309

/-! ## A173309.P10338828871206296129

`A195321(n)+A132762(n)`
-/

namespace A173309.P10338828871206296129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195321 n + A132762 n

end

end A173309.P10338828871206296129

namespace A173309

/-- `A195321(n)+A132762(n)` -/
def P10338828871206296129.Spec : Prop :=
  ∀ n, P10338828871206296129.a n = A173309 n

theorem P10338828871206296129.correct : P10338828871206296129.Spec := by
  intro n
  simp only [A173309, Nat.add_sub_cancel, A173309.P10338828871206296129.a, A173309.P14730977432803289593.a, A132762, A132762.P13283584558511949576.a, A195321, A195321.P9690014683711486293.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A173309

/-! ## A173309.P15214840133889969709

`A261191(n)+A085959(n)`
-/

namespace A173309.P15214840133889969709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261191 n + A085959 n

end

end A173309.P15214840133889969709

namespace A173309

/-- `A261191(n)+A085959(n)` -/
def P15214840133889969709.Spec : Prop :=
  ∀ n, P15214840133889969709.a n = A173309 n

theorem P15214840133889969709.correct : P15214840133889969709.Spec := by
  intro n
  simp only [A173309, Nat.add_sub_cancel, A173309.P15214840133889969709.a, A173309.P14730977432803289593.a, A085959, A085959.P3841702424596331541.a, A261191, A261191.P14259318423697160448.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A173309

/-! ## A173309.P11523625565632382846

`A277980(n)+A092277(n)`
-/

namespace A173309.P11523625565632382846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277980 n + A092277 n

end

end A173309.P11523625565632382846

namespace A173309

/-- `A277980(n)+A092277(n)` -/
def P11523625565632382846.Spec : Prop :=
  ∀ n, P11523625565632382846.a n = A173309 n

theorem P11523625565632382846.correct : P11523625565632382846.Spec := by
  intro n
  simp only [A173309, Nat.add_sub_cancel, A173309.P11523625565632382846.a, A173309.P14730977432803289593.a, A092277, A092277.P17700678065174571920.a, A277980, A277980.P488489438075414926.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A173309

/-!
# A173310: Partial sums of A005470.

The programs for A173310, there is no canonical definition to state claims against.
-/

/-! ## A173310.P2155398098904210602

`∑[A005470(n)]`
-/

namespace A173310.P2155398098904210602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005470 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173310.P2155398098904210602

/-! ## A173310.P1246217282448421186

`∑[A049369(n)+a(n-1)]` with `a(0)=1`
-/

namespace A173310.P1246217282448421186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A049369 n + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173310.P1246217282448421186

/-! ## A173310.P2122611878219875534

`∑[∑[A049369(abs(1-n)+1)]]`
-/

namespace A173310.P2122611878219875534
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049369 (|1 - (n : ℤ)| + 1).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173310.P2122611878219875534

/-! ## A173310.P13828347992499200613

`∑[A000088(n)-A145269(n)]`
-/

namespace A173310.P13828347992499200613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000088 n - A145269 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173310.P13828347992499200613

/-! ## A173310.P914318164409952921

`∑[∑[A002494(n)]-A145269(n)]`
-/

namespace A173310.P914318164409952921
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002494 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A145269 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173310.P914318164409952921

/-!
# A173311: a(n) is the number of regular D classes in the semigroup of all binary relations on [n].

The programs for A173311, there is no canonical definition to state claims against.
-/

/-! ## A173311.P11104846752392747771

`∑[A000112(n)]`
-/

namespace A173311.P11104846752392747771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000112 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173311.P11104846752392747771

/-! ## A173311.P5696531534198631690

`∑[∑[A381121(n)]]`
-/

namespace A173311.P5696531534198631690
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381121 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173311.P5696531534198631690

/-! ## A173311.P16980417353557240669

`∑[A349401(n)+A000608(n)]`
-/

namespace A173311.P16980417353557240669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349401 n + A000608 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173311.P16980417353557240669

/-! ## A173311.P11454105339823198127

`A000112(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A173311.P11454105339823198127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000112 n + a (A023443 n).toNat

end

end A173311.P11454105339823198127

/-! ## A173311.P10801719496909572653

`A174118(n+1)+∑[A349401(n)]`
-/

namespace A173311.P10801719496909572653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349401 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174118 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173311.P10801719496909572653

/-!
# A173312: Partial sums of A005130.

The programs for A173312, there is no canonical definition to state claims against.
-/

/-! ## A173312.P799173845323191864

`∑[A005130(n)]`
-/

namespace A173312.P799173845323191864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005130 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173312.P799173845323191864

/-! ## A173312.P8494331419517921753

`∑[A048601(∑[n]+1)]`
-/

namespace A173312.P8494331419517921753
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048601 (∑ j ∈ Finset.range (n + 1), f2 j + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173312.P8494331419517921753

/-! ## A173312.P16508200607110283532

`∑[A321511(n)+A000142(n)]`
-/

namespace A173312.P16508200607110283532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321511 n + A000142 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173312.P16508200607110283532

/-! ## A173312.P382138028871060302

`∑[A049505(n)/A005157(n)]`
-/

namespace A173312.P382138028871060302
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049505 n : ℚ) / (A005157 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173312.P382138028871060302

/-! ## A173312.P2890310283167752335

`∑[sqrt(A049503(n))]`
-/

namespace A173312.P2890310283167752335
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A049503 n : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173312.P2890310283167752335

/-!
# A173313: Partial sums of A000273.

The programs for A173313, there is no canonical definition to state claims against.
-/

/-! ## A173313.P7245447491940158101

`∑[A000273(n)]`
-/

namespace A173313.P7245447491940158101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000273 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173313.P7245447491940158101

/-! ## A173313.P9982017697283236565

`∑[∑[A053598(n)]]`
-/

namespace A173313.P9982017697283236565
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053598 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173313.P9982017697283236565

/-! ## A173313.P7527968681672603657

`∑[∑[A217654(∑[n])]]`
-/

namespace A173313.P7527968681672603657
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217654 (∑ j ∈ Finset.range (n + 1), f3 j)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173313.P7527968681672603657

/-! ## A173313.P639765100345816057

`∑[A127909(n)+A000088(n)]`
-/

namespace A173313.P639765100345816057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127909 n + A000088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173313.P639765100345816057

/-! ## A173313.P1210419037962991286

`∑[A127909(n)+∑[A002494(n)]]`
-/

namespace A173313.P1210419037962991286
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002494 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127909 n + ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173313.P1210419037962991286

/-!
# A173314: a(n) = 6*n! + 1.

The programs for A173314, the canonical program `A173314.P971736042059699701` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A173314 has offset 0).

The definition of A173314 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `6*n!+1` (program `A173314.P971736042059699701`, by `A173314.P971736042059699701.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A173314.P971736042059699701

`6*n!+1`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A173314

/-- `6*n!+1` -/
def P971736042059699701.Spec : Prop :=
  ∀ n, (P971736042059699701.a n : ℤ) = A173314 n

theorem P971736042059699701.correct : P971736042059699701.Spec := by
  intro n
  simp only [A173314]

end A173314

/-! ## A173314.P6441779692627527550

`n*a(n-1)-n+1` with `a(0)=7`
-/

namespace A173314.P6441779692627527550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [7] fun n a =>
  (n : ℤ) * a (n - 1) - (n : ℤ) + 1

end

end A173314.P6441779692627527550

namespace A173314

/-- `n*a(n-1)-n+1` -/
def P6441779692627527550.Spec : Prop :=
  ∀ n, P6441779692627527550.a n = A173314 n

end A173314

/-! ## A173314.P742879269224858846

`6*A000142(n)+1`
-/

namespace A173314.P742879269224858846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A000142 n + 1

end

end A173314.P742879269224858846

namespace A173314

/-- `6*A000142(n)+1` -/
def P742879269224858846.Spec : Prop :=
  ∀ n, P742879269224858846.a n = A173314 n

theorem P742879269224858846.correct : P742879269224858846.Spec := by
  intro n
  simp only [A173314, Nat.add_sub_cancel, A173314.P742879269224858846.a, A173314.P971736042059699701.a, A000142, A000142.P3272619076580183195.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A173314

/-! ## A173314.P11099235943434349563

`or(1, 6*n!)`
-/

namespace A173314.P11099235943434349563
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (6 * Nat.factorial n)

end

end A173314.P11099235943434349563

namespace A173314

/-- `or(1, 6*n!)` -/
def P11099235943434349563.Spec : Prop :=
  ∀ n, (P11099235943434349563.a n : ℤ) = A173314 n

end A173314

/-! ## A173314.P7076854967471938673

`xor(1, 6*n!)`
-/

namespace A173314.P7076854967471938673
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (6 * Nat.factorial n)

end

end A173314.P7076854967471938673

namespace A173314

/-- `xor(1, 6*n!)` -/
def P7076854967471938673.Spec : Prop :=
  ∀ n, (P7076854967471938673.a n : ℤ) = A173314 n

end A173314

/-! ## A173314.P8548290830427685223

`7-6*(1-n!)`
-/

namespace A173314.P8548290830427685223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 - 6 * (1 - (Nat.factorial n : ℤ))

end

end A173314.P8548290830427685223

namespace A173314

/-- `7-6*(1-n!)` -/
def P8548290830427685223.Spec : Prop :=
  ∀ n, P8548290830427685223.a n = A173314 n

theorem P8548290830427685223.correct : P8548290830427685223.Spec := by
  intro n
  simp only [A173314, Nat.add_sub_cancel, A173314.P8548290830427685223.a, A173314.P971736042059699701.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A173314

/-! ## A173314.P7770937963980666737

`6*∏[ceil(abs(γ-n))]+1`
-/

namespace A173314.P7770937963980666737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈|Real.eulerMascheroniConstant - (n : ℝ)|⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * (∏ j ∈ Finset.range (n + 1), f1 j) + 1

end

end A173314.P7770937963980666737

namespace A173314

/-- `6*∏[ceil(abs(γ-n))]+1` -/
def P7770937963980666737.Spec : Prop :=
  ∀ n, P7770937963980666737.a n = A173314 n

end A173314

/-! ## A173314.P16565046176092505013

`or(1, ∏[a(n-1)+1])` with `a(0)=6, a(1)=1`
-/

namespace A173314.P16565046176092505013
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [6, 1] fun n f1 =>
  f1 (n - 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A173314.P16565046176092505013

namespace A173314

/-- `or(1, ∏[a(n-1)+1])` -/
def P16565046176092505013.Spec : Prop :=
  ∀ n, (P16565046176092505013.a n : ℤ) = A173314 n

end A173314

/-! ## A173314.P3581264646419899766

`xor(1, ∏[a(n-1)+1])` with `a(0)=6, a(1)=1`
-/

namespace A173314.P3581264646419899766
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [6, 1] fun n f1 =>
  f1 (n - 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A173314.P3581264646419899766

namespace A173314

/-- `xor(1, ∏[a(n-1)+1])` -/
def P3581264646419899766.Spec : Prop :=
  ∀ n, (P3581264646419899766.a n : ℤ) = A173314 n

end A173314

/-! ## A173314.P7694298008942455835

`or(1, ∏[C(n, a(n-1))])` with `a(0)=6, a(1)=1`
-/

namespace A173314.P7694298008942455835
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [6, 1] fun n f1 =>
  Nat.choose n (f1 (n - 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A173314.P7694298008942455835

namespace A173314

/-- `or(1, ∏[C(n, a(n-1))])` -/
def P7694298008942455835.Spec : Prop :=
  ∀ n, (P7694298008942455835.a n : ℤ) = A173314 n

end A173314

/-!
# A173315: Inverse binomial transform of A131800.

The programs for A173315, the canonical program `A173315.P11569175325327384851` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A173315 has offset 0).

The definition of A173315 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 331 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A173315.P11569175325327384851

`2*(A108520(n)-a(n-1))` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A173315

/-- `2*(A108520(n)-a(n-1))` -/
def P11569175325327384851.Spec : Prop :=
  ∀ n, P11569175325327384851.a n = A173315 n

theorem P11569175325327384851.correct : P11569175325327384851.Spec := by
  intro n
  simp only [A173315]

end A173315

/-!
# A173316: a(n) = 6*n! - 1.

The programs for A173316, the canonical program `A173316.P9878971224664947001` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A173316 has offset 0).

The definition of A173316 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `6*n!-1` (program `A173316.P9878971224664947001`, by `A173316.P9878971224664947001.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A173316.P9878971224664947001

`6*n!-1`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A173316

/-- `6*n!-1` -/
def P9878971224664947001.Spec : Prop :=
  ∀ n, P9878971224664947001.a n = A173316 n

theorem P9878971224664947001.correct : P9878971224664947001.Spec := by
  intro n
  simp only [A173316]

end A173316

/-! ## A173316.P7091370152516071223

`n*a(n-1)+n-1` with `a(0)=5`
-/

namespace A173316.P7091370152516071223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  (n : ℤ) * a (n - 1) + (n : ℤ) - 1

end

end A173316.P7091370152516071223

namespace A173316

/-- `n*a(n-1)+n-1` -/
def P7091370152516071223.Spec : Prop :=
  ∀ n, P7091370152516071223.a n = A173316 n

end A173316

/-! ## A173316.P9070977560862189844

`6*A000142(n)-1`
-/

namespace A173316.P9070977560862189844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A000142 n - 1

end

end A173316.P9070977560862189844

namespace A173316

/-- `6*A000142(n)-1` -/
def P9070977560862189844.Spec : Prop :=
  ∀ n, P9070977560862189844.a n = A173316 n

end A173316

/-! ## A173316.P7440024626652011034

`xor(n!, -1)+7*n!`
-/

namespace A173316.P7440024626652011034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (Nat.factorial n : ℤ) (-1) + (7 * Nat.factorial n : ℤ)

end

end A173316.P7440024626652011034

namespace A173316

/-- `xor(n!, -1)+7*n!` -/
def P7440024626652011034.Spec : Prop :=
  ∀ n, P7440024626652011034.a n = A173316 n

end A173316

/-! ## A173316.P15547392842630173202

`∏[a(n-1)+1]-1` with `a(0)=6, a(1)=1`
-/

namespace A173316.P15547392842630173202
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [6, 1] fun n f1 =>
  f1 (n - 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A173316.P15547392842630173202

namespace A173316

/-- `∏[a(n-1)+1]-1` -/
def P15547392842630173202.Spec : Prop :=
  ∀ n, P15547392842630173202.a n = A173316 n

end A173316

/-! ## A173316.P8412143320815516773

`3*∏[abs(1-n)+1]-1`
-/

namespace A173316.P8412143320815516773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (n : ℤ)| + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (∏ j ∈ Finset.range (n + 1), f1 j) - 1

end

end A173316.P8412143320815516773

namespace A173316

/-- `3*∏[abs(1-n)+1]-1` -/
def P8412143320815516773.Spec : Prop :=
  ∀ n, P8412143320815516773.a n = A173316 n

end A173316

/-! ## A173316.P7654193852772715896

`or(n-1, n*a(n-1))` with `a(0)=5`
-/

namespace A173316.P7654193852772715896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  Int.lor ((n : ℤ) - 1) ((n : ℤ) * a (n - 1))

end

end A173316.P7654193852772715896

namespace A173316

/-- `or(n-1, n*a(n-1))` -/
def P7654193852772715896.Spec : Prop :=
  ∀ n, P7654193852772715896.a n = A173316 n

end A173316

/-! ## A173316.P4465251817094648205

`xor(n-1, n*a(n-1))` with `a(0)=5`
-/

namespace A173316.P4465251817094648205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  Int.xor ((n : ℤ) - 1) ((n : ℤ) * a (n - 1))

end

end A173316.P4465251817094648205

namespace A173316

/-- `xor(n-1, n*a(n-1))` -/
def P4465251817094648205.Spec : Prop :=
  ∀ n, P4465251817094648205.a n = A173316 n

end A173316

/-! ## A173316.P9061470658725462034

`Δ[∑[(n-1)*a(n-1)]-n]` with `a(0)=11, a(1)=6`
-/

namespace A173316.P9061470658725462034
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [11, 6] fun n f2 =>
  ((n : ℤ) - 1) * f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A173316.P9061470658725462034

namespace A173316

/-- `Δ[∑[(n-1)*a(n-1)]-n]` -/
def P9061470658725462034.Spec : Prop :=
  ∀ n, P9061470658725462034.a n = A173316 n

end A173316

/-!
# A173317: a(n) = 5*n! - 1.

The programs for A173317, the canonical program `A173317.P1532681317241066922` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A173317 has offset 0).

The definition of A173317 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `5*n!-1` (program `A173317.P1532681317241066922`, by `A173317.P1532681317241066922.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A173317.P1532681317241066922

`5*n!-1`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A173317

/-- `5*n!-1` -/
def P1532681317241066922.Spec : Prop :=
  ∀ n, P1532681317241066922.a n = A173317 n

theorem P1532681317241066922.correct : P1532681317241066922.Spec := by
  intro n
  simp only [A173317]

end A173317

/-! ## A173317.P12970792969825250728

`n*a(n-1)+n-1` with `a(0)=4`
-/

namespace A173317.P12970792969825250728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  (n : ℤ) * a (n - 1) + (n : ℤ) - 1

end

end A173317.P12970792969825250728

namespace A173317

/-- `n*a(n-1)+n-1` -/
def P12970792969825250728.Spec : Prop :=
  ∀ n, P12970792969825250728.a n = A173317 n

end A173317

/-! ## A173317.P6108292688698164810

`5*A000142(n)-1`
-/

namespace A173317.P6108292688698164810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A000142 n - 1

end

end A173317.P6108292688698164810

namespace A173317

/-- `5*A000142(n)-1` -/
def P6108292688698164810.Spec : Prop :=
  ∀ n, P6108292688698164810.a n = A173317 n

end A173317

/-! ## A173317.P7627812263257642436

`xor(-1, -(5*n!))`
-/

namespace A173317.P7627812263257642436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (-1) (-(5 * Nat.factorial n : ℤ))

end

end A173317.P7627812263257642436

namespace A173317

/-- `xor(-1, -(5*n!))` -/
def P7627812263257642436.Spec : Prop :=
  ∀ n, P7627812263257642436.a n = A173317 n

end A173317

/-! ## A173317.P1666495896682576029

`n!/(1-4/5)-1`
-/

namespace A173317.P1666495896682576029
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℚ) / (1 - (4 : ℚ) / 5) - 1

end

end A173317.P1666495896682576029

namespace A173317

/-- `n!/(1-4/5)-1` -/
def P1666495896682576029.Spec : Prop :=
  ∀ n, P1666495896682576029.a n = (A173317 n : ℚ)

theorem P1666495896682576029.correct : P1666495896682576029.Spec := by
  intro n
  simp only [A173317, Nat.add_sub_cancel, A173317.P1666495896682576029.a, A173317.P1532681317241066922.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A173317

/-! ## A173317.P7322183373906691306

`5*∏[round(1/acot(n))]-1`
-/

namespace A173317.P7322183373906691306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (1 / SequenceMachineLib.acot (n : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * (∏ j ∈ Finset.range (n + 1), f1 j) - 1

end

end A173317.P7322183373906691306

namespace A173317

/-- `5*∏[round(1/acot(n))]-1` -/
def P7322183373906691306.Spec : Prop :=
  ∀ n, P7322183373906691306.a n = A173317 n

end A173317

/-! ## A173317.P8008199474824944063

`∏[a(n-1)+1]-1` with `a(0)=5, a(1)=1`
-/

namespace A173317.P8008199474824944063
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [5, 1] fun n f1 =>
  f1 (n - 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A173317.P8008199474824944063

namespace A173317

/-- `∏[a(n-1)+1]-1` -/
def P8008199474824944063.Spec : Prop :=
  ∀ n, P8008199474824944063.a n = A173317 n

end A173317

/-! ## A173317.P3740621213924634577

`∏[C(n, a(n-1))]-1` with `a(0)=5, a(1)=1`
-/

namespace A173317.P3740621213924634577
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [5, 1] fun n f1 =>
  Nat.choose n (f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A173317.P3740621213924634577

namespace A173317

/-- `∏[C(n, a(n-1))]-1` -/
def P3740621213924634577.Spec : Prop :=
  ∀ n, P3740621213924634577.a n = A173317 n

end A173317

/-! ## A173317.P3462874966380071552

`n-(1-n*a(n-1))` with `a(0)=4`
-/

namespace A173317.P3462874966380071552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  (n : ℤ) - (1 - (n : ℤ) * a (n - 1))

end

end A173317.P3462874966380071552

namespace A173317

/-- `n-(1-n*a(n-1))` -/
def P3462874966380071552.Spec : Prop :=
  ∀ n, P3462874966380071552.a n = A173317 n

end A173317

/-! ## A173317.P11700810340086992996

`A173319(n)-2`
-/

namespace A173317.P11700810340086992996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173319 n - 2

end

end A173317.P11700810340086992996

namespace A173317

/-- `A173319(n)-2` -/
def P11700810340086992996.Spec : Prop :=
  ∀ n, P11700810340086992996.a n = A173317 n

theorem P11700810340086992996.correct : P11700810340086992996.Spec := by
  intro n
  simp only [A173317, Nat.add_sub_cancel, A173317.P11700810340086992996.a, A173317.P1532681317241066922.a, A173319, A173319.P12018361508198312358.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A173317

/-!
# A173318: Partial sums of A005811.

The programs for A173318, the canonical program `A173318.P15963027490098370925` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A173318 has offset 0).

The definition of A173318 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A173318.P15963027490098370925

`∑[a(n-1-and(n, 2*n))+1]` with `a(0)=0`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A173318

/-- `∑[a(n-1-and(n, 2*n))+1]` -/
def P15963027490098370925.Spec : Prop :=
  ∀ n, (P15963027490098370925.a n : ℤ) = A173318 n

theorem P15963027490098370925.correct : P15963027490098370925.Spec := by
  intro n
  simp only [A173318]

end A173318

/-! ## A173318.P4531468247305655253

`∑[∑[Δ[xor(n, 2*n-1)]%2]-1]`
-/

namespace A173318.P4531468247305655253
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) ((2 * n : ℤ) - 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f3 (n + 1) - f3 n) 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173318.P4531468247305655253

namespace A173318

/-- `∑[∑[Δ[xor(n, 2*n-1)]%2]-1]` -/
def P4531468247305655253.Spec : Prop :=
  ∀ n, P4531468247305655253.a n = A173318 n

end A173318

/-! ## A173318.P3884304739899065194

`∑[∑{e}[2*a(n-1-and(n, 2*n)), #]]` with `a(0)=1`
-/

namespace A173318.P3884304739899065194
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f2 =>
  2 * f2 ((n : ℤ) - 1 - (Nat.land n (2 * n) : ℤ)).toNat

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173318.P3884304739899065194

namespace A173318

/-- `∑[∑{e}[2*a(n-1-and(n, 2*n)), #]]` -/
def P3884304739899065194.Spec : Prop :=
  ∀ n, (P3884304739899065194.a n : ℤ) = A173318 n

end A173318

/-! ## A173318.P2086190081965558791

`∑[A005811(n)]`
-/

namespace A173318.P2086190081965558791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005811 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173318.P2086190081965558791

namespace A173318

/-- `∑[A005811(n)]` -/
def P2086190081965558791.Spec : Prop :=
  ∀ n, P2086190081965558791.a n = A173318 n

end A173318

/-! ## A173318.P4649519529689895115

`∑[∑[A112347(n)]]`
-/

namespace A173318.P4649519529689895115
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112347 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173318.P4649519529689895115

namespace A173318

/-- `∑[∑[A112347(n)]]` -/
def P4649519529689895115.Spec : Prop :=
  ∀ n, P4649519529689895115.a n = A173318 n

end A173318

/-! ## A173318.P8545931561087822859

`∑[A088748(n)-1]`
-/

namespace A173318.P8545931561087822859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088748 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173318.P8545931561087822859

namespace A173318

/-- `∑[A088748(n)-1]` -/
def P8545931561087822859.Spec : Prop :=
  ∀ n, P8545931561087822859.a n = A173318 n

end A173318

/-! ## A173318.P10329946000671140681

`∑[A136004(n)-4]`
-/

namespace A173318.P10329946000671140681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136004 n - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173318.P10329946000671140681

namespace A173318

/-- `∑[A136004(n)-4]` -/
def P10329946000671140681.Spec : Prop :=
  ∀ n, P10329946000671140681.a n = A173318 n

end A173318

/-! ## A173318.P2788674938750380553

`∑[n-A236840(n)]`
-/

namespace A173318.P2788674938750380553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A236840 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173318.P2788674938750380553

namespace A173318

/-- `∑[n-A236840(n)]` -/
def P2788674938750380553.Spec : Prop :=
  ∀ n, P2788674938750380553.a n = A173318 n

end A173318

/-! ## A173318.P11673287643643386890

`∑[∑[A121238(n)]-1]`
-/

namespace A173318.P11673287643643386890
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121238 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173318.P11673287643643386890

namespace A173318

/-- `∑[∑[A121238(n)]-1]` -/
def P11673287643643386890.Spec : Prop :=
  ∀ n, P11673287643643386890.a n = A173318 n

end A173318

/-! ## A173318.P13599635002855621906

`∑[n-2*A255070(n)]`
-/

namespace A173318.P13599635002855621906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 2 * A255070 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173318.P13599635002855621906

namespace A173318

/-- `∑[n-2*A255070(n)]` -/
def P13599635002855621906.Spec : Prop :=
  ∀ n, P13599635002855621906.a n = A173318 n

end A173318

/-! ## A173318.P3038498627541529995

`A164910(n+1)-(n+1)`
-/

namespace A173318.P3038498627541529995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164910 (n + 1) - (n + 1 : ℤ)

end

end A173318.P3038498627541529995

namespace A173318

/-- `A164910(n+1)-(n+1)` -/
def P3038498627541529995.Spec : Prop :=
  ∀ n, P3038498627541529995.a n = A173318 n

theorem P3038498627541529995.correct : P3038498627541529995.Spec := by
  intro n
  simp only [A173318, Nat.add_sub_cancel, A173318.P3038498627541529995.a, A173318.P15963027490098370925.f1, A173318.P15963027490098370925.a, A164910, A164910.P1632267053222193330.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A173318

/-! ## A173318.P12637072154001225830

`∑[A088743(n+1)-(n+1)]`
-/

namespace A173318.P12637072154001225830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088743 (n + 1) - (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173318.P12637072154001225830

namespace A173318

/-- `∑[A088743(n+1)-(n+1)]` -/
def P12637072154001225830.Spec : Prop :=
  ∀ n, P12637072154001225830.a n = A173318 n

end A173318

/-! ## A173318.P8957933413347728767

`∑[a(n-A006257(n))+1]` with `a(0)=0`
-/

namespace A173318.P8957933413347728767
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 ((n : ℤ) - A006257 n).toNat + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173318.P8957933413347728767

namespace A173318

/-- `∑[a(n-A006257(n))+1]` -/
def P8957933413347728767.Spec : Prop :=
  ∀ n, (P8957933413347728767.a n : ℤ) = A173318 n

end A173318

/-! ## A173318.P7701778019809595423

`a(n-1)+A037834(n)+1` with `a(0)=0`
-/

namespace A173318.P7701778019809595423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + (A037834 n + 1)

end

end A173318.P7701778019809595423

namespace A173318

/-- `a(n-1)+A037834(n)+1` -/
def P7701778019809595423.Spec : Prop :=
  ∀ n, P7701778019809595423.a n = A173318 n

end A173318

/-! ## A173318.P1621013061271904225

`∑[∑[A134824(A089309(n))]]`
-/

namespace A173318.P1621013061271904225
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134824 (A089309 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173318.P1621013061271904225

namespace A173318

/-- `∑[∑[A134824(A089309(n))]]` -/
def P1621013061271904225.Spec : Prop :=
  ∀ n, P1621013061271904225.a n = A173318 n

end A173318

/-! ## A173318.P15846922248421492033

`A303548(n+1)+A000788(n)`
-/

namespace A173318.P15846922248421492033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303548 (n + 1) + A000788 n

end

end A173318.P15846922248421492033

namespace A173318

/-- `A303548(n+1)+A000788(n)` -/
def P15846922248421492033.Spec : Prop :=
  ∀ n, P15846922248421492033.a n = A173318 n

end A173318

/-! ## A173318.P3856331449202545652

`∑[∑[A034947(n+1)]-A034947(n+1)]`
-/

namespace A173318.P3856331449202545652
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034947 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A034947 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173318.P3856331449202545652

namespace A173318

/-- `∑[∑[A034947(n+1)]-A034947(n+1)]` -/
def P3856331449202545652.Spec : Prop :=
  ∀ n, P3856331449202545652.a n = A173318 n

end A173318

/-! ## A173318.P10934596516137081135

`∑[A037834(n+1)]-A037834(n+1)+n`
-/

namespace A173318.P10934596516137081135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037834 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A037834 (n + 1) + (n : ℤ)

end

end A173318.P10934596516137081135

namespace A173318

/-- `∑[A037834(n+1)]-A037834(n+1)+n` -/
def P10934596516137081135.Spec : Prop :=
  ∀ n, P10934596516137081135.a n = A173318 n

end A173318

/-! ## A173318.P1717266957862489211

`∑[A000120(A003817(A090079(n)))]`
-/

namespace A173318.P1717266957862489211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A003817 (A090079 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173318.P1717266957862489211

namespace A173318

/-- `∑[A000120(A003817(A090079(n)))]` -/
def P1717266957862489211.Spec : Prop :=
  ∀ n, P1717266957862489211.a n = A173318 n

end A173318

/-!
# A173319: a(n) = 5*n! + 1.

The programs for A173319, the canonical program `A173319.P12018361508198312358` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A173319 has offset 0).

The definition of A173319 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `5*n!+1` (program `A173319.P12018361508198312358`, by `A173319.P12018361508198312358.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A173319.P12018361508198312358

`5*n!+1`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A173319

/-- `5*n!+1` -/
def P12018361508198312358.Spec : Prop :=
  ∀ n, (P12018361508198312358.a n : ℤ) = A173319 n

theorem P12018361508198312358.correct : P12018361508198312358.Spec := by
  intro n
  simp only [A173319]

end A173319

/-! ## A173319.P13037995316465134925

`n*a(n-1)-n+1` with `a(0)=6`
-/

namespace A173319.P13037995316465134925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [6] fun n a =>
  (n : ℤ) * a (n - 1) - (n : ℤ) + 1

end

end A173319.P13037995316465134925

namespace A173319

/-- `n*a(n-1)-n+1` -/
def P13037995316465134925.Spec : Prop :=
  ∀ n, P13037995316465134925.a n = A173319 n

end A173319

/-! ## A173319.P1737080998847929189

`5*A000142(n)+1`
-/

namespace A173319.P1737080998847929189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A000142 n + 1

end

end A173319.P1737080998847929189

namespace A173319

/-- `5*A000142(n)+1` -/
def P1737080998847929189.Spec : Prop :=
  ∀ n, P1737080998847929189.a n = A173319 n

theorem P1737080998847929189.correct : P1737080998847929189.Spec := by
  intro n
  simp only [A173319, Nat.add_sub_cancel, A173319.P1737080998847929189.a, A173319.P12018361508198312358.a, A000142, A000142.P3272619076580183195.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A173319

/-! ## A173319.P17504939347601378536

`6-5*(1-n!)`
-/

namespace A173319.P17504939347601378536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 - 5 * (1 - (Nat.factorial n : ℤ))

end

end A173319.P17504939347601378536

namespace A173319

/-- `6-5*(1-n!)` -/
def P17504939347601378536.Spec : Prop :=
  ∀ n, P17504939347601378536.a n = A173319 n

theorem P17504939347601378536.correct : P17504939347601378536.Spec := by
  intro n
  simp only [A173319, Nat.add_sub_cancel, A173319.P17504939347601378536.a, A173319.P12018361508198312358.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A173319

/-! ## A173319.P10453409255061650796

`abs(xor(5*n!, -1))`
-/

namespace A173319.P10453409255061650796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor (5 * Nat.factorial n : ℤ) (-1)|

end

end A173319.P10453409255061650796

namespace A173319

/-- `abs(xor(5*n!, -1))` -/
def P10453409255061650796.Spec : Prop :=
  ∀ n, P10453409255061650796.a n = A173319 n

end A173319

/-! ## A173319.P6116398321648189415

`-xor(5*n!, -1)`
-/

namespace A173319.P6116398321648189415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.xor (5 * Nat.factorial n : ℤ) (-1)

end

end A173319.P6116398321648189415

namespace A173319

/-- `-xor(5*n!, -1)` -/
def P6116398321648189415.Spec : Prop :=
  ∀ n, P6116398321648189415.a n = A173319 n

end A173319

/-! ## A173319.P17365128998605792224

`n!/(1-4/5)+1`
-/

namespace A173319.P17365128998605792224
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℚ) / (1 - (4 : ℚ) / 5) + 1

end

end A173319.P17365128998605792224

namespace A173319

/-- `n!/(1-4/5)+1` -/
def P17365128998605792224.Spec : Prop :=
  ∀ n, P17365128998605792224.a n = (A173319 n : ℚ)

theorem P17365128998605792224.correct : P17365128998605792224.Spec := by
  intro n
  simp only [A173319, Nat.add_sub_cancel, A173319.P17365128998605792224.a, A173319.P12018361508198312358.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A173319

/-! ## A173319.P14768319470979706939

`5*∏[ceil(abs(γ-n))]+1`
-/

namespace A173319.P14768319470979706939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈|Real.eulerMascheroniConstant - (n : ℝ)|⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * (∏ j ∈ Finset.range (n + 1), f1 j) + 1

end

end A173319.P14768319470979706939

namespace A173319

/-- `5*∏[ceil(abs(γ-n))]+1` -/
def P14768319470979706939.Spec : Prop :=
  ∀ n, P14768319470979706939.a n = A173319 n

end A173319

/-!
# A173320: Numbers k such that tau(sigma(k)) = sopf(k).

The programs for A173320, there is no canonical definition to state claims against.
-/

/-! ## A173320.P12923523911148602921

`eq[A000005(A000203(n+1)), A008472(n+1)]+1`
-/

namespace A173320.P12923523911148602921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A000203 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A173320.P12923523911148602921

/-!
# A173321: a(n) = 4*n! - 1.

The programs for A173321, the canonical program `A173321.P4264485921575751362` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A173321 has offset 0).

The definition of A173321 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4*n!-1` (program `A173321.P4264485921575751362`, by `A173321.P4264485921575751362.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A173321.P4264485921575751362

`4*n!-1`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A173321

/-- `4*n!-1` -/
def P4264485921575751362.Spec : Prop :=
  ∀ n, P4264485921575751362.a n = A173321 n

theorem P4264485921575751362.correct : P4264485921575751362.Spec := by
  intro n
  simp only [A173321]

end A173321

/-! ## A173321.P5373187556837774554

`n*a(n-1)+n-1` with `a(0)=3`
-/

namespace A173321.P5373187556837774554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  (n : ℤ) * a (n - 1) + (n : ℤ) - 1

end

end A173321.P5373187556837774554

namespace A173321

/-- `n*a(n-1)+n-1` -/
def P5373187556837774554.Spec : Prop :=
  ∀ n, P5373187556837774554.a n = A173321 n

end A173321

/-! ## A173321.P14512049009408417913

`4*A000142(n)-1`
-/

namespace A173321.P14512049009408417913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A000142 n - 1

end

end A173321.P14512049009408417913

namespace A173321

/-- `4*A000142(n)-1` -/
def P14512049009408417913.Spec : Prop :=
  ∀ n, P14512049009408417913.a n = A173321 n

end A173321

/-! ## A173321.P9677873791203654060

`lcm(4, 1-n!)+3`
-/

namespace A173321.P9677873791203654060
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 4 (1 - (Nat.factorial n : ℤ)) + 3

end

end A173321.P9677873791203654060

namespace A173321

/-- `lcm(4, 1-n!)+3` -/
def P9677873791203654060.Spec : Prop :=
  ∀ n, (P9677873791203654060.a n : ℤ) = A173321 n

end A173321

/-! ## A173321.P18362465824298712691

`abs(or(1, -(4*n!)))`
-/

namespace A173321.P18362465824298712691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.lor 1 (-(4 * Nat.factorial n : ℤ))|

end

end A173321.P18362465824298712691

namespace A173321

/-- `abs(or(1, -(4*n!)))` -/
def P18362465824298712691.Spec : Prop :=
  ∀ n, P18362465824298712691.a n = A173321 n

end A173321

/-! ## A173321.P6727077962151510189

`-or(1, -(4*n!))`
-/

namespace A173321.P6727077962151510189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.lor 1 (-(4 * Nat.factorial n : ℤ))

end

end A173321.P6727077962151510189

namespace A173321

/-- `-or(1, -(4*n!))` -/
def P6727077962151510189.Spec : Prop :=
  ∀ n, P6727077962151510189.a n = A173321 n

end A173321

/-! ## A173321.P16642436080092979130

`abs(xor(1, -(4*n!)))`
-/

namespace A173321.P16642436080092979130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor 1 (-(4 * Nat.factorial n : ℤ))|

end

end A173321.P16642436080092979130

namespace A173321

/-- `abs(xor(1, -(4*n!)))` -/
def P16642436080092979130.Spec : Prop :=
  ∀ n, P16642436080092979130.a n = A173321 n

end A173321

/-! ## A173321.P15925469612491387565

`-xor(1, -(4*n!))`
-/

namespace A173321.P15925469612491387565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.xor 1 (-(4 * Nat.factorial n : ℤ))

end

end A173321.P15925469612491387565

namespace A173321

/-- `-xor(1, -(4*n!))` -/
def P15925469612491387565.Spec : Prop :=
  ∀ n, P15925469612491387565.a n = A173321 n

end A173321

/-! ## A173321.P6052149830971379398

`∏[a(n-1)+1]-1` with `a(0)=4, a(1)=1`
-/

namespace A173321.P6052149830971379398
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [4, 1] fun n f1 =>
  f1 (n - 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A173321.P6052149830971379398

namespace A173321

/-- `∏[a(n-1)+1]-1` -/
def P6052149830971379398.Spec : Prop :=
  ∀ n, P6052149830971379398.a n = A173321 n

end A173321

/-! ## A173321.P11041664633361172008

`∏[C(n, a(n-1))]-1` with `a(0)=4, a(1)=1`
-/

namespace A173321.P11041664633361172008
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [4, 1] fun n f1 =>
  Nat.choose n (f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A173321.P11041664633361172008

namespace A173321

/-- `∏[C(n, a(n-1))]-1` -/
def P11041664633361172008.Spec : Prop :=
  ∀ n, P11041664633361172008.a n = A173321 n

end A173321

/-!
# A173322: a(n) = 4*n! + 1.

The programs for A173322, the canonical program `A173322.P1612665210268740170` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A173322 has offset 0).

The definition of A173322 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4*n!+1` (program `A173322.P1612665210268740170`, by `A173322.P1612665210268740170.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A173322.P1612665210268740170

`4*n!+1`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A173322

/-- `4*n!+1` -/
def P1612665210268740170.Spec : Prop :=
  ∀ n, (P1612665210268740170.a n : ℤ) = A173322 n

theorem P1612665210268740170.correct : P1612665210268740170.Spec := by
  intro n
  simp only [A173322]

end A173322

/-! ## A173322.P15737963284383168245

`n*a(n-1)-n+1` with `a(0)=5`
-/

namespace A173322.P15737963284383168245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  (n : ℤ) * a (n - 1) - (n : ℤ) + 1

end

end A173322.P15737963284383168245

namespace A173322

/-- `n*a(n-1)-n+1` -/
def P15737963284383168245.Spec : Prop :=
  ∀ n, P15737963284383168245.a n = A173322 n

end A173322

/-! ## A173322.P8730019633214174848

`4*A000142(n)+1`
-/

namespace A173322.P8730019633214174848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A000142 n + 1

end

end A173322.P8730019633214174848

namespace A173322

/-- `4*A000142(n)+1` -/
def P8730019633214174848.Spec : Prop :=
  ∀ n, P8730019633214174848.a n = A173322 n

theorem P8730019633214174848.correct : P8730019633214174848.Spec := by
  intro n
  simp only [A173322, Nat.add_sub_cancel, A173322.P8730019633214174848.a, A173322.P1612665210268740170.a, A000142, A000142.P3272619076580183195.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A173322

/-! ## A173322.P9714186345448330625

`or(1, 4*n!)`
-/

namespace A173322.P9714186345448330625
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (4 * Nat.factorial n)

end

end A173322.P9714186345448330625

namespace A173322

/-- `or(1, 4*n!)` -/
def P9714186345448330625.Spec : Prop :=
  ∀ n, (P9714186345448330625.a n : ℤ) = A173322 n

end A173322

/-! ## A173322.P13957793590903055839

`xor(1, 4*n!)`
-/

namespace A173322.P13957793590903055839
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (4 * Nat.factorial n)

end

end A173322.P13957793590903055839

namespace A173322

/-- `xor(1, 4*n!)` -/
def P13957793590903055839.Spec : Prop :=
  ∀ n, (P13957793590903055839.a n : ℤ) = A173322 n

end A173322

/-! ## A173322.P16163387129053367014

`5-4*(1-n!)`
-/

namespace A173322.P16163387129053367014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 - 4 * (1 - (Nat.factorial n : ℤ))

end

end A173322.P16163387129053367014

namespace A173322

/-- `5-4*(1-n!)` -/
def P16163387129053367014.Spec : Prop :=
  ∀ n, P16163387129053367014.a n = A173322 n

theorem P16163387129053367014.correct : P16163387129053367014.Spec := by
  intro n
  simp only [A173322, Nat.add_sub_cancel, A173322.P16163387129053367014.a, A173322.P1612665210268740170.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A173322

/-! ## A173322.P17162082923221150836

`lcm(4, 1-n!)+5`
-/

namespace A173322.P17162082923221150836
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 4 (1 - (Nat.factorial n : ℤ)) + 5

end

end A173322.P17162082923221150836

namespace A173322

/-- `lcm(4, 1-n!)+5` -/
def P17162082923221150836.Spec : Prop :=
  ∀ n, (P17162082923221150836.a n : ℤ) = A173322 n

end A173322

/-! ## A173322.P7721568199801044705

`∏[a(n-1)+1]+1` with `a(0)=4, a(1)=1`
-/

namespace A173322.P7721568199801044705
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [4, 1] fun n f1 =>
  f1 (n - 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j + 1

end

end A173322.P7721568199801044705

namespace A173322

/-- `∏[a(n-1)+1]+1` -/
def P7721568199801044705.Spec : Prop :=
  ∀ n, (P7721568199801044705.a n : ℤ) = A173322 n

end A173322

/-! ## A173322.P7454588042044708258

`1-n*(1-a(n-1))` with `a(0)=5`
-/

namespace A173322.P7454588042044708258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  1 - (n : ℤ) * (1 - a (n - 1))

end

end A173322.P7454588042044708258

namespace A173322

/-- `1-n*(1-a(n-1))` -/
def P7454588042044708258.Spec : Prop :=
  ∀ n, P7454588042044708258.a n = A173322 n

end A173322

/-! ## A173322.P1044491236636256276

`2*∏[abs(1-n)+1]+1`
-/

namespace A173322.P1044491236636256276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (n : ℤ)| + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∏ j ∈ Finset.range (n + 1), f1 j) + 1

end

end A173322.P1044491236636256276

namespace A173322

/-- `2*∏[abs(1-n)+1]+1` -/
def P1044491236636256276.Spec : Prop :=
  ∀ n, P1044491236636256276.a n = A173322 n

end A173322

/-!
# A173323: a(n) = 3*n! - 1.

The programs for A173323, the canonical program `A173323.P1175896722568867782` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A173323 has offset 0).

The definition of A173323 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*n!-1` (program `A173323.P1175896722568867782`, by `A173323.P1175896722568867782.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A173323.P1175896722568867782

`3*n!-1`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A173323

/-- `3*n!-1` -/
def P1175896722568867782.Spec : Prop :=
  ∀ n, P1175896722568867782.a n = A173323 n

theorem P1175896722568867782.correct : P1175896722568867782.Spec := by
  intro n
  simp only [A173323]

end A173323

/-! ## A173323.P15631659861041907927

`n*a(n-1)+n-1` with `a(0)=2, a(1)=2`
-/

namespace A173323.P15631659861041907927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 2] fun n a =>
  (n : ℤ) * a (n - 1) + (n : ℤ) - 1

end

end A173323.P15631659861041907927

namespace A173323

/-- `n*a(n-1)+n-1` -/
def P15631659861041907927.Spec : Prop :=
  ∀ n, P15631659861041907927.a n = A173323 n

end A173323

/-! ## A173323.P16161052982210408014

`lcm(3, 1-n!)+2`
-/

namespace A173323.P16161052982210408014
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 3 (1 - (Nat.factorial n : ℤ)) + 2

end

end A173323.P16161052982210408014

namespace A173323

/-- `lcm(3, 1-n!)+2` -/
def P16161052982210408014.Spec : Prop :=
  ∀ n, (P16161052982210408014.a n : ℤ) = A173323 n

end A173323

/-! ## A173323.P9427521796145370899

`xor(-1, -(3*n!))`
-/

namespace A173323.P9427521796145370899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (-1) (-(3 * Nat.factorial n : ℤ))

end

end A173323.P9427521796145370899

namespace A173323

/-- `xor(-1, -(3*n!))` -/
def P9427521796145370899.Spec : Prop :=
  ∀ n, P9427521796145370899.a n = A173323 n

end A173323

/-! ## A173323.P313071400466830691

`n!/tan(acot(3))-1`
-/

namespace A173323.P313071400466830691
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℝ) / Real.tan (SequenceMachineLib.acot (3 : ℝ)) - 1

end

end A173323.P313071400466830691

namespace A173323

/-- `n!/tan(acot(3))-1` -/
def P313071400466830691.Spec : Prop :=
  ∀ n, P313071400466830691.a n = (A173323 n : ℝ)

end A173323

/-! ## A173323.P2164804261949348549

`∏[C(3, 4^n)+n]-1`
-/

namespace A173323.P2164804261949348549
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 3 (4 ^ n) + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A173323.P2164804261949348549

namespace A173323

/-- `∏[C(3, 4^n)+n]-1` -/
def P2164804261949348549.Spec : Prop :=
  ∀ n, P2164804261949348549.a n = A173323 n

end A173323

/-! ## A173323.P6845452238481814751

`∏[gcd(n, C(3, n+2))]-1`
-/

namespace A173323.P6845452238481814751
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd n (Nat.choose 3 (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A173323.P6845452238481814751

namespace A173323

/-- `∏[gcd(n, C(3, n+2))]-1` -/
def P6845452238481814751.Spec : Prop :=
  ∀ n, P6845452238481814751.a n = A173323 n

end A173323

/-! ## A173323.P9871702195175050295

`3*∏[round(1/acot(n))]-1`
-/

namespace A173323.P9871702195175050295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (1 / SequenceMachineLib.acot (n : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (∏ j ∈ Finset.range (n + 1), f1 j) - 1

end

end A173323.P9871702195175050295

namespace A173323

/-- `3*∏[round(1/acot(n))]-1` -/
def P9871702195175050295.Spec : Prop :=
  ∀ n, P9871702195175050295.a n = A173323 n

end A173323

/-! ## A173323.P11081458527482612939

`3*∏[ceil(abs(γ-n))]-1`
-/

namespace A173323.P11081458527482612939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈|Real.eulerMascheroniConstant - (n : ℝ)|⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (∏ j ∈ Finset.range (n + 1), f1 j) - 1

end

end A173323.P11081458527482612939

namespace A173323

/-- `3*∏[ceil(abs(γ-n))]-1` -/
def P11081458527482612939.Spec : Prop :=
  ∀ n, P11081458527482612939.a n = A173323 n

end A173323

/-! ## A173323.P16210910396749984390

`abs(n-(1-n*a(n-1)))` with `a(0)=2`
-/

namespace A173323.P16210910396749984390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  |(n : ℤ) - (1 - (n : ℤ) * a (n - 1))|

end

end A173323.P16210910396749984390

namespace A173323

/-- `abs(n-(1-n*a(n-1)))` -/
def P16210910396749984390.Spec : Prop :=
  ∀ n, P16210910396749984390.a n = A173323 n

end A173323

/-!
# A173324: a(n) = 3*n! + 1.

The programs for A173324, the canonical program `A173324.P6135029427116497775` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A173324 has offset 0).

The definition of A173324 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*n!+1` (program `A173324.P6135029427116497775`, by `A173324.P6135029427116497775.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A173324.P6135029427116497775

`3*n!+1`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A173324

/-- `3*n!+1` -/
def P6135029427116497775.Spec : Prop :=
  ∀ n, (P6135029427116497775.a n : ℤ) = A173324 n

theorem P6135029427116497775.correct : P6135029427116497775.Spec := by
  intro n
  simp only [A173324]

end A173324

/-! ## A173324.P17278623905380722310

`n*a(n-1)-n+1` with `a(0)=4`
-/

namespace A173324.P17278623905380722310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  (n : ℤ) * a (n - 1) - (n : ℤ) + 1

end

end A173324.P17278623905380722310

namespace A173324

/-- `n*a(n-1)-n+1` -/
def P17278623905380722310.Spec : Prop :=
  ∀ n, P17278623905380722310.a n = A173324 n

end A173324

/-! ## A173324.P6509878686180185037

`3*A000142(n)+1`
-/

namespace A173324.P6509878686180185037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A000142 n + 1

end

end A173324.P6509878686180185037

namespace A173324

/-- `3*A000142(n)+1` -/
def P6509878686180185037.Spec : Prop :=
  ∀ n, P6509878686180185037.a n = A173324 n

theorem P6509878686180185037.correct : P6509878686180185037.Spec := by
  intro n
  simp only [A173324, Nat.add_sub_cancel, A173324.P6509878686180185037.a, A173324.P6135029427116497775.a, A000142, A000142.P3272619076580183195.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A173324

/-! ## A173324.P13348573218469175332

`4-3*(1-n!)`
-/

namespace A173324.P13348573218469175332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 - 3 * (1 - (Nat.factorial n : ℤ))

end

end A173324.P13348573218469175332

namespace A173324

/-- `4-3*(1-n!)` -/
def P13348573218469175332.Spec : Prop :=
  ∀ n, P13348573218469175332.a n = A173324 n

theorem P13348573218469175332.correct : P13348573218469175332.Spec := by
  intro n
  simp only [A173324, Nat.add_sub_cancel, A173324.P13348573218469175332.a, A173324.P6135029427116497775.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A173324

/-! ## A173324.P3603299355633268808

`lcm(3, 1-n!)+4`
-/

namespace A173324.P3603299355633268808
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 3 (1 - (Nat.factorial n : ℤ)) + 4

end

end A173324.P3603299355633268808

namespace A173324

/-- `lcm(3, 1-n!)+4` -/
def P3603299355633268808.Spec : Prop :=
  ∀ n, (P3603299355633268808.a n : ℤ) = A173324 n

end A173324

/-! ## A173324.P11202687520290979845

`abs(xor(3*n!, -1))`
-/

namespace A173324.P11202687520290979845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor (3 * Nat.factorial n : ℤ) (-1)|

end

end A173324.P11202687520290979845

namespace A173324

/-- `abs(xor(3*n!, -1))` -/
def P11202687520290979845.Spec : Prop :=
  ∀ n, P11202687520290979845.a n = A173324 n

end A173324

/-! ## A173324.P11896397064739896923

`-xor(3*n!, -1)`
-/

namespace A173324.P11896397064739896923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.xor (3 * Nat.factorial n : ℤ) (-1)

end

end A173324.P11896397064739896923

namespace A173324

/-- `-xor(3*n!, -1)` -/
def P11896397064739896923.Spec : Prop :=
  ∀ n, P11896397064739896923.a n = A173324 n

end A173324

/-! ## A173324.P3565049125327162714

`∏[a(n-1)+1]+1` with `a(0)=3, a(1)=1`
-/

namespace A173324.P3565049125327162714
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3, 1] fun n f1 =>
  f1 (n - 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j + 1

end

end A173324.P3565049125327162714

namespace A173324

/-- `∏[a(n-1)+1]+1` -/
def P3565049125327162714.Spec : Prop :=
  ∀ n, (P3565049125327162714.a n : ℤ) = A173324 n

end A173324

/-! ## A173324.P4993871698182891862

`1-n*(1-a(n-1))` with `a(0)=4`
-/

namespace A173324.P4993871698182891862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  1 - (n : ℤ) * (1 - a (n - 1))

end

end A173324.P4993871698182891862

namespace A173324

/-- `1-n*(1-a(n-1))` -/
def P4993871698182891862.Spec : Prop :=
  ∀ n, P4993871698182891862.a n = A173324 n

end A173324

/-! ## A173324.P12075058558892737039

`∏[C(n, a(n-1))]-(n!-1)` with `a(0)=4, a(1)=1`
-/

namespace A173324.P12075058558892737039
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [4, 1] fun n f1 =>
  Nat.choose n (f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - ((Nat.factorial n : ℤ) - 1)

end

end A173324.P12075058558892737039

namespace A173324

/-- `∏[C(n, a(n-1))]-(n!-1)` -/
def P12075058558892737039.Spec : Prop :=
  ∀ n, P12075058558892737039.a n = A173324 n

end A173324

/-!
# A173325: Numbers k such that sigma(tau(k)) equals the sum of distinct primes dividing k.

The programs for A173325, there is no canonical definition to state claims against.
-/

/-! ## A173325.P5694535221396447941

`eq[A000203(A000005(n+1)), A008472(n+1)]+1`
-/

namespace A173325.P5694535221396447941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A000005 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A173325.P5694535221396447941

/-! ## A173325.P4494005472376304955

`eq[A008472(n+1), A062069(n+1)]+1`
-/

namespace A173325.P4494005472376304955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062069 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A173325.P4494005472376304955

/-! ## A173325.P1246919696731308382

`eq[A075653(n+1)-(n+1), A069290(A000005(n+1)²)]+1`
-/

namespace A173325.P1246919696731308382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075653 (n + 1) - (n + 1 : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069290 (A000005 (n + 1) ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A173325.P1246919696731308382

/-! ## A173325.P14827185026418433905

`eq[A254340(n+1)-(n+2), A069290(A000005(n+1)²)]+1`
-/

namespace A173325.P14827185026418433905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254340 (n + 1) - (n + 2 : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069290 (A000005 (n + 1) ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A173325.P14827185026418433905

/-! ## A173325.P4983728234113154495

`eq[A075653(n+1)-(n+1), A000203(A032741(n+1)+1)]+1`
-/

namespace A173325.P4983728234113154495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075653 (n + 1) - (n + 1 : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A032741 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A173325.P4983728234113154495

/-!
# A173326: Numbers k such that phi(tau(k)) = sopf(k).

The programs for A173326, there is no canonical definition to state claims against.
-/

/-! ## A173326.P417596046776706461

`A100327(n)*A212173(A100328(n+1))`
-/

namespace A173326.P417596046776706461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100327 n * A212173 (A100328 (n + 1)).toNat

end

end A173326.P417596046776706461

/-!
# A173327: Numbers k such that tau(phi(k))= sopf(k).

The programs for A173327, the canonical program `A173327.P8802107638902619474` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A173327 has offset 1).

The definition of A173327 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 126 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A173327.P8802107638902619474

`eq[A000005(A000010(n+1)), A008472(n+1)]+1`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A173327

/-- `eq[A000005(A000010(n+1)), A008472(n+1)]+1` -/
def P8802107638902619474.Spec : Prop :=
  ∀ n, (P8802107638902619474.a n : ℤ) = A173327 (n + 1)

theorem P8802107638902619474.correct : P8802107638902619474.Spec := by
  intro n
  simp only [A173327, Nat.add_sub_cancel]

end A173327

/-! ## A173327.P15122334482342165594

`eq[A008472(n+1), A062821(n+1)]+1`
-/

namespace A173327.P15122334482342165594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062821 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A173327.P15122334482342165594

namespace A173327

/-- `eq[A008472(n+1), A062821(n+1)]+1` -/
def P15122334482342165594.Spec : Prop :=
  ∀ n, (P15122334482342165594.a n : ℤ) = A173327 (n + 1)

end A173327

/-! ## A173327.P7061103945393768246

`eq[A075653(n+1)-(n+1), A062821(n+1)]+1`
-/

namespace A173327.P7061103945393768246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075653 (n + 1) - (n + 1 : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062821 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A173327.P7061103945393768246

namespace A173327

/-- `eq[A075653(n+1)-(n+1), A062821(n+1)]+1` -/
def P7061103945393768246.Spec : Prop :=
  ∀ n, (P7061103945393768246.a n : ℤ) = A173327 (n + 1)

end A173327

/-! ## A173327.P4872459408849772709

`eq[A254340(n+1)-(n+2), A062821(n+1)]+1`
-/

namespace A173327.P4872459408849772709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254340 (n + 1) - (n + 2 : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062821 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A173327.P4872459408849772709

namespace A173327

/-- `eq[A254340(n+1)-(n+2), A062821(n+1)]+1` -/
def P4872459408849772709.Spec : Prop :=
  ∀ n, (P4872459408849772709.a n : ℤ) = A173327 (n + 1)

end A173327

/-! ## A173327.P17138903776533008311

`eq[A008474(n+1)-A001222(n+1), A062821(n+1)]+1`
-/

namespace A173327.P17138903776533008311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008474 (n + 1) - A001222 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062821 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A173327.P17138903776533008311

namespace A173327

/-- `eq[A008474(n+1)-A001222(n+1), A062821(n+1)]+1` -/
def P17138903776533008311.Spec : Prop :=
  ∀ n, (P17138903776533008311.a n : ℤ) = A173327 (n + 1)

end A173327

/-!
# A173329: a(n) = a(n-2) + a(n-3) - floor(a(n-3)/2) - floor(a(n-6)/2).

The programs for A173329, the canonical program `A173329.P18209558847064970136` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A173329 has offset 0).

The definition of A173329 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-2)+a(n-3)-floor(a(n-3)/2)-floor(a(n-6)/2)` (program `A173329.P18209558847064970136`, by `A173329.P18209558847064970136.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A173329.P18209558847064970136

`a(n-2)+a(n-3)-floor(a(n-3)/2)-floor(a(n-6)/2)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=2, a(4)=2, a(5)=3`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A173329

/-- `a(n-2)+a(n-3)-floor(a(n-3)/2)-floor(a(n-6)/2)` -/
def P18209558847064970136.Spec : Prop :=
  ∀ n, P18209558847064970136.a n = A173329 n

theorem P18209558847064970136.correct : P18209558847064970136.Spec := by
  intro n
  simp only [A173329]

end A173329

/-! ## A173329.P8895680307799962560

`A265340(A361223(n+1))`
-/

namespace A173329.P8895680307799962560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265340 (A361223 (n + 1)).toNat

end

end A173329.P8895680307799962560

namespace A173329

/-- `A265340(A361223(n+1))` -/
def P8895680307799962560.Spec : Prop :=
  ∀ n, P8895680307799962560.a n = A173329 n

end A173329

/-! ## A173329.P5262770509347554556

`A323665(xor(A000016(n), A278385(n+1)))`
-/

namespace A173329.P5262770509347554556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323665 (Int.xor (A000016 n) (A278385 (n + 1))).toNat

end

end A173329.P5262770509347554556

namespace A173329

/-- `A323665(xor(A000016(n), A278385(n+1)))` -/
def P5262770509347554556.Spec : Prop :=
  ∀ n, P5262770509347554556.a n = A173329 n

end A173329

/-! ## A173329.P8521820952182216246

`A000523(A004690(n)+A000523(n+4))`
-/

namespace A173329.P8521820952182216246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (A004690 n + A000523 (n + 4)).toNat

end

end A173329.P8521820952182216246

namespace A173329

/-- `A000523(A004690(n)+A000523(n+4))` -/
def P8521820952182216246.Spec : Prop :=
  ∀ n, P8521820952182216246.a n = A173329 n

end A173329

/-! ## A173329.P16578581726041069741

`A226046(A144574(n+2))`
-/

namespace A173329.P16578581726041069741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226046 (A144574 (n + 2)).toNat

end

end A173329.P16578581726041069741

namespace A173329

/-- `A226046(A144574(n+2))` -/
def P16578581726041069741.Spec : Prop :=
  ∀ n, P16578581726041069741.a n = A173329 n

end A173329

/-!
# A173330: First of two intermediate sequences for integral solution of A002144(n)=x^2+y^2.

The programs for A173330, there is no canonical definition to state claims against.
-/

/-! ## A173330.P857416948732621505

`A088218(A152680(n+1)/4)%p?[4*n+1]`
-/

namespace A173330.P857416948732621505
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A088218 (SequenceMachineLib.roundAway ((A152680 (n + 1) : ℚ) / 4)).toNat) (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ)

end

end A173330.P857416948732621505

/-! ## A173330.P13413763340054546753

`A088218(eq[1, A001222(4*n+1)])%p?[4*n+1]`
-/

namespace A173330.P13413763340054546753
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (4 * n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A088218 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)) (f3 (SequenceMachineLib.nth (fun j => (f3 j).Prime) n) : ℤ)

end

end A173330.P13413763340054546753

/-! ## A173330.P16331431270283196159

`A088218(eq[2, A000005(4*n+1)])%p?[4*n+1]`
-/

namespace A173330.P16331431270283196159
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (4 * n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A088218 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)) (f3 (SequenceMachineLib.nth (fun j => (f3 j).Prime) n) : ℤ)

end

end A173330.P16331431270283196159

/-! ## A173330.P10825439917564306741

`A088218(lt[n+1, A014963(4*n+1)])%p?[4*n+1]`
-/

namespace A173330.P10825439917564306741
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (4 * n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A088218 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)) (f3 (SequenceMachineLib.nth (fun j => (f3 j).Prime) n) : ℤ)

end

end A173330.P10825439917564306741

/-! ## A173330.P17342224903273623371

`A088218(lt[2*n+1, A006530(4*n+1)])%p?[4*n+1]`
-/

namespace A173330.P17342224903273623371
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (4 * n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A088218 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)) (f3 (SequenceMachineLib.nth (fun j => (f3 j).Prime) n) : ℤ)

end

end A173330.P17342224903273623371

/-! ## A173330.P4563890198245963427

`A088218(eq[4*n, A000010(2*n+2*n+1)])%p?[4*n+1]`
-/

namespace A173330.P4563890198245963427
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (2 * n + (2 * n + 1))

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A088218 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)) (f3 (SequenceMachineLib.nth (fun j => (f3 j).Prime) n) : ℤ)

end

end A173330.P4563890198245963427

/-! ## A173330.P5519344114837299582

`A088218(eq[4*n+2, A000203(2*n+2*n+1)])%p?[4*n+1]`
-/

namespace A173330.P5519344114837299582
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (2 * n + (2 * n + 1))

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A088218 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)) (f3 (SequenceMachineLib.nth (fun j => (f3 j).Prime) n) : ℤ)

end

end A173330.P5519344114837299582

/-! ## A173330.P2269096025219278880

`A088218(A005098(n+1))%A002144(n+1)`
-/

namespace A173330.P2269096025219278880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A088218 (A005098 (n + 1)).toNat) (A002144 (n + 1))

end

end A173330.P2269096025219278880

/-! ## A173330.P4251716927013135144

`A088218(A152680(n+1)/4)%A002144(n+1)`
-/

namespace A173330.P4251716927013135144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A088218 (SequenceMachineLib.roundAway ((A152680 (n + 1) : ℚ) / 4)).toNat) (A002144 (n + 1))

end

end A173330.P4251716927013135144

/-! ## A173330.P15206764067685654330

`A088218(lt[n+1, A014963(4*n+1)])%A002144(n+1)`
-/

namespace A173330.P15206764067685654330
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (4 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A088218 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)) (A002144 (n + 1))

end

end A173330.P15206764067685654330

/-!
# A173332: a(n) = a(n-2) + a(n-3) - floor(a(n-4)/2) - floor(a(n-6)/2).

The programs for A173332, the canonical program `A173332.P3182267999554963114` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A173332 has offset 0).

The definition of A173332 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-2)+a(n-3)-floor(a(n-4)/2)-floor(a(n-6)/2)` (program `A173332.P3182267999554963114`, by `A173332.P3182267999554963114.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A173332.P3182267999554963114

`a(n-2)+a(n-3)-floor(a(n-4)/2)-floor(a(n-6)/2)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=2, a(4)=2, a(5)=3`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A173332

/-- `a(n-2)+a(n-3)-floor(a(n-4)/2)-floor(a(n-6)/2)` -/
def P3182267999554963114.Spec : Prop :=
  ∀ n, P3182267999554963114.a n = A173332 n

theorem P3182267999554963114.correct : P3182267999554963114.Spec := by
  intro n
  simp only [A173332]

end A173332

/-!
# A173333: Triangle read by rows: T(n, k) = n! / k!, 1 <= k <= n.

The programs for A173333, the canonical program `A173333.P16013124754843551855` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A173333 has offset 1).

The definition of A173333 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A173333.P16013124754843551855

`(row(n)+1)!/(col(n)+1)!`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A173333

/-- `(row(n)+1)!/(col(n)+1)!` -/
def P16013124754843551855.Spec : Prop :=
  ∀ n, P16013124754843551855.a n = (A173333 (n + 1) : ℚ)

end A173333

/-! ## A173333.P4380611682970451963

`A094587(comp[∑[n]])`
-/

namespace A173333.P4380611682970451963
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094587 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A173333.P4380611682970451963

namespace A173333

/-- `A094587(comp[∑[n]])` -/
def P4380611682970451963.Spec : Prop :=
  ∀ n, P4380611682970451963.a n = A173333 (n + 1)

end A173333

/-! ## A173333.P11466377720046014824

`A306015(comp[∑[n]])`
-/

namespace A173333.P11466377720046014824
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306015 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A173333.P11466377720046014824

namespace A173333

/-- `A306015(comp[∑[n]])` -/
def P11466377720046014824.Spec : Prop :=
  ∀ n, P11466377720046014824.a n = A173333 (n + 1)

end A173333

/-! ## A173333.P2475281553679387803

`∑[char[∑[n]]]!/A166350(n+1)`
-/

namespace A173333.P2475281553679387803
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / (A166350 (n + 1) : ℚ)

end

end A173333.P2475281553679387803

namespace A173333

/-- `∑[char[∑[n]]]!/A166350(n+1)` -/
def P2475281553679387803.Spec : Prop :=
  ∀ n, P2475281553679387803.a n = (A173333 (n + 1) : ℚ)

end A173333

/-! ## A173333.P13094217487089760355

`A181511(A038722(n+1))`
-/

namespace A173333.P13094217487089760355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181511 (A038722 (n + 1)).toNat

end

end A173333.P13094217487089760355

namespace A173333

/-- `A181511(A038722(n+1))` -/
def P13094217487089760355.Spec : Prop :=
  ∀ n, P13094217487089760355.a n = A173333 (n + 1)

end A173333

/-! ## A173333.P6922773754395319466

`A181511(A061579(n)+1)`
-/

namespace A173333.P6922773754395319466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181511 (A061579 n + 1).toNat

end

end A173333.P6922773754395319466

namespace A173333

/-- `A181511(A061579(n)+1)` -/
def P6922773754395319466.Spec : Prop :=
  ∀ n, P6922773754395319466.a n = A173333 (n + 1)

end A173333

/-! ## A173333.P257535221670975488

`A008279(A099375(n)+n)`
-/

namespace A173333.P257535221670975488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008279 (A099375 n + (n : ℤ)).toNat

end

end A173333.P257535221670975488

namespace A173333

/-- `A008279(A099375(n)+n)` -/
def P257535221670975488.Spec : Prop :=
  ∀ n, P257535221670975488.a n = A173333 (n + 1)

end A173333

/-! ## A173333.P1340889242378422536

`A119502(n)*A135278(n)`
-/

namespace A173333.P1340889242378422536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119502 n * A135278 n

end

end A173333.P1340889242378422536

namespace A173333

/-- `A119502(n)*A135278(n)` -/
def P1340889242378422536.Spec : Prop :=
  ∀ n, P1340889242378422536.a n = A173333 (n + 1)

end A173333

/-! ## A173333.P17140597166416564099

`A074909(n+1)*A119502(n)`
-/

namespace A173333.P17140597166416564099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074909 (n + 1) * A119502 n

end

end A173333.P17140597166416564099

namespace A173333

/-- `A074909(n+1)*A119502(n)` -/
def P17140597166416564099.Spec : Prop :=
  ∀ n, P17140597166416564099.a n = A173333 (n + 1)

end A173333

/-! ## A173333.P15453204449225936301

`A094310(n+1)/A233543(n)`
-/

namespace A173333.P15453204449225936301
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A094310 (n + 1) : ℚ) / (A233543 n : ℚ)

end

end A173333.P15453204449225936301

namespace A173333

/-- `A094310(n+1)/A233543(n)` -/
def P15453204449225936301.Spec : Prop :=
  ∀ n, P15453204449225936301.a n = (A173333 (n + 1) : ℚ)

end A173333

/-! ## A173333.P13245927008956088515

`A010766(n+1)*A356013(n+1)`
-/

namespace A173333.P13245927008956088515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010766 (n + 1) * A356013 (n + 1)

end

end A173333.P13245927008956088515

namespace A173333

/-- `A010766(n+1)*A356013(n+1)` -/
def P13245927008956088515.Spec : Prop :=
  ∀ n, P13245927008956088515.a n = A173333 (n + 1)

end A173333

/-! ## A173333.P5977969618409740719

`A130493(n+1)/A166350(n+1)`
-/

namespace A173333.P5977969618409740719
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A130493 (n + 1) : ℚ) / (A166350 (n + 1) : ℚ)

end

end A173333.P5977969618409740719

namespace A173333

/-- `A130493(n+1)/A166350(n+1)` -/
def P5977969618409740719.Spec : Prop :=
  ∀ n, P5977969618409740719.a n = (A173333 (n + 1) : ℚ)

end A173333

/-! ## A173333.P11676152571863390897

`A094587(n)/A007318(n)*A135278(n)`
-/

namespace A173333.P11676152571863390897
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A094587 n : ℚ) / (A007318 n : ℚ) * (A135278 n : ℚ)

end

end A173333.P11676152571863390897

namespace A173333

/-- `A094587(n)/A007318(n)*A135278(n)` -/
def P11676152571863390897.Spec : Prop :=
  ∀ n, P11676152571863390897.a n = (A173333 (n + 1) : ℚ)

end A173333

/-! ## A173333.P7259228941744194394

`A166350(A004736(n+1)+n)/A166350(n+1)`
-/

namespace A173333.P7259228941744194394
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166350 (A004736 (n + 1) + (n : ℤ)).toNat : ℚ) / (A166350 (n + 1) : ℚ)

end

end A173333.P7259228941744194394

namespace A173333

/-- `A166350(A004736(n+1)+n)/A166350(n+1)` -/
def P7259228941744194394.Spec : Prop :=
  ∀ n, P7259228941744194394.a n = (A173333 (n + 1) : ℚ)

end A173333

/-! ## A173333.P10255523236069794167

`A092582(n+1)/A128227(n)*A002260(n+2)`
-/

namespace A173333.P10255523236069794167
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A092582 (n + 1) : ℚ) / (A128227 n : ℚ) * (A002260 (n + 2) : ℚ)

end

end A173333.P10255523236069794167

namespace A173333

/-- `A092582(n+1)/A128227(n)*A002260(n+2)` -/
def P10255523236069794167.Spec : Prop :=
  ∀ n, P10255523236069794167.a n = (A173333 (n + 1) : ℚ)

end A173333

/-! ## A173333.P5127760115213276900

`A002260(n+1)*A094310(n+1)/A166350(n+1)`
-/

namespace A173333.P5127760115213276900
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002260 (n + 1) * A094310 (n + 1) : ℚ) / (A166350 (n + 1) : ℚ)

end

end A173333.P5127760115213276900

namespace A173333

/-- `A002260(n+1)*A094310(n+1)/A166350(n+1)` -/
def P5127760115213276900.Spec : Prop :=
  ∀ n, P5127760115213276900.a n = (A173333 (n + 1) : ℚ)

end A173333

/-! ## A173333.P9747261875094909350

`A092582(n+1)/A144328(n+2)*A002260(n+2)`
-/

namespace A173333.P9747261875094909350
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A092582 (n + 1) : ℚ) / (A144328 (n + 2) : ℚ) * (A002260 (n + 2) : ℚ)

end

end A173333.P9747261875094909350

namespace A173333

/-- `A092582(n+1)/A144328(n+2)*A002260(n+2)` -/
def P9747261875094909350.Spec : Prop :=
  ∀ n, P9747261875094909350.a n = (A173333 (n + 1) : ℚ)

end A173333

/-! ## A173333.P14943214575340876437

`A000142(A002024(n+1))/A000142(A002260(n+1))`
-/

namespace A173333.P14943214575340876437
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 (A002024 (n + 1)).toNat : ℚ) / (A000142 (A002260 (n + 1)).toNat : ℚ)

end

end A173333.P14943214575340876437

namespace A173333

/-- `A000142(A002024(n+1))/A000142(A002260(n+1))` -/
def P14943214575340876437.Spec : Prop :=
  ∀ n, P14943214575340876437.a n = (A173333 (n + 1) : ℚ)

end A173333

/-! ## A173333.P10718618896839698303

`A051683(n+1)/A001563(A002260(n+1))`
-/

namespace A173333.P10718618896839698303
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051683 (n + 1) : ℚ) / (A001563 (A002260 (n + 1)).toNat : ℚ)

end

end A173333.P10718618896839698303

namespace A173333

/-- `A051683(n+1)/A001563(A002260(n+1))` -/
def P10718618896839698303.Spec : Prop :=
  ∀ n, P10718618896839698303.a n = (A173333 (n + 1) : ℚ)

end A173333

/-! ## A173333.P13788435177995789976

`A152883(n+2)/A288777(n+1)`
-/

namespace A173333.P13788435177995789976
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A152883 (n + 2) : ℚ) / (A288777 (n + 1) : ℚ)

end

end A173333.P13788435177995789976

namespace A173333

/-- `A152883(n+2)/A288777(n+1)` -/
def P13788435177995789976.Spec : Prop :=
  ∀ n, P13788435177995789976.a n = (A173333 (n + 1) : ℚ)

end A173333

/-!
# A173339: Positive integers n for which the number of divisors of n^n is a square.

The programs for A173339, there is no canonical definition to state claims against.
-/

/-! ## A173339.P13722012502416792966

`eq[1, A007913(A062319(n))%(n+1)]`
-/

namespace A173339.P13722012502416792966
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007913 (A062319 n).toNat) (n + 1 : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A173339.P13722012502416792966

/-! ## A173339.P13909927523006932325

`eq[A007913(A062319(n)), A054977(n)]`
-/

namespace A173339.P13909927523006932325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A062319 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A173339.P13909927523006932325

/-! ## A173339.P18340944811524774379

`eq[A007913(A062319(n)), A057427(n)]`
-/

namespace A173339.P18340944811524774379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A062319 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A173339.P18340944811524774379

/-! ## A173339.P18131167821003799019

`eq[A007913(A062319(n)), A178334(n)]`
-/

namespace A173339.P18131167821003799019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A062319 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A173339.P18131167821003799019

/-! ## A173339.P1526667996449963900

`eq[A014963(4*n+2), A007913(A062319(n))]`
-/

namespace A173339.P1526667996449963900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (4 * n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A062319 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A173339.P1526667996449963900

/-!
# A173340: Numbers n for which the factorial of the number of divisors of n is divisible by n.

The programs for A173340, the canonical program `A173340.P17490353339000496261` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A173340 has offset 1).

The definition of A173340 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 755 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A173340.P15538808470604924407

`record[gcd(n+1, A000005(n+1)!)]`
-/

namespace A173340.P15538808470604924407
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (n + 1) (Nat.factorial (A000005 (n + 1)).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A173340.P15538808470604924407

namespace A173340

/-- `record[gcd(n+1, A000005(n+1)!)]` -/
def P15538808470604924407.Spec : Prop :=
  ∀ n, (P15538808470604924407.a n : ℤ) = A173340 (n + 1)

end A173340

/-! ## A173340.P17490353339000496261

`record[gcd(n+1, A130674(n+1))]`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A173340

/-- `record[gcd(n+1, A130674(n+1))]` -/
def P17490353339000496261.Spec : Prop :=
  ∀ n, (P17490353339000496261.a n : ℤ) = A173340 (n + 1)

theorem P17490353339000496261.correct : P17490353339000496261.Spec := by
  intro n
  simp only [A173340, Nat.add_sub_cancel]

end A173340

/-! ## A173340.P13420792025076740553

`record[gcd(A130674(n+1), A131738(n))]`
-/

namespace A173340.P13420792025076740553
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A130674 (n + 1)) (A131738 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A173340.P13420792025076740553

namespace A173340

/-- `record[gcd(A130674(n+1), A131738(n))]` -/
def P13420792025076740553.Spec : Prop :=
  ∀ n, (P13420792025076740553.a n : ℤ) = A173340 (n + 1)

end A173340

/-! ## A173340.P13278664033523517308

`record[gcd(A183063(n+1)!, A008619(n))]`
-/

namespace A173340.P13278664033523517308
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (Nat.factorial (A183063 (n + 1)).toNat : ℤ) (A008619 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A173340.P13278664033523517308

namespace A173340

/-- `record[gcd(A183063(n+1)!, A008619(n))]` -/
def P13278664033523517308.Spec : Prop :=
  ∀ n, (P13278664033523517308.a n : ℤ) = A173340 (n + 1)

end A173340

/-! ## A173340.P6500586971182867320

`record[gcd(A320111(n+1)!, A252463(n+1))]`
-/

namespace A173340.P6500586971182867320
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (Nat.factorial (A320111 (n + 1)).toNat : ℤ) (A252463 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A173340.P6500586971182867320

namespace A173340

/-- `record[gcd(A320111(n+1)!, A252463(n+1))]` -/
def P6500586971182867320.Spec : Prop :=
  ∀ n, (P6500586971182867320.a n : ℤ) = A173340 (n + 1)

end A173340

/-! ## A173340.P16013899262199506445

`record[gcd(A113982(n+1)!, A113981(n+1))]`
-/

namespace A173340.P16013899262199506445
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (Nat.factorial (A113982 (n + 1)).toNat : ℤ) (A113981 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A173340.P16013899262199506445

namespace A173340

/-- `record[gcd(A113982(n+1)!, A113981(n+1))]` -/
def P16013899262199506445.Spec : Prop :=
  ∀ n, (P16013899262199506445.a n : ℤ) = A173340 (n + 1)

end A173340

/-!
# A173342: Numbers n such that n^7 and a cube are between consecutive squares.

The programs for A173342, there is no canonical definition to state claims against.
-/

/-! ## A173342.P12189281874737381572

`A173353(A198832(comp[3*n]))`
-/

namespace A173342.P12189281874737381572
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173353 (A198832 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)).toNat

end

end A173342.P12189281874737381572

/-!
# A173343: a(n+4) = a(n+3) - 2*a(n+2) - a(n+1) - a(n).

The programs for A173343, the canonical program `A173343.P15639870317806623529` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A173343 has offset 0).

The definition of A173343 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 478 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A173343.P1966473680831263242

`ogf((1+x)/(1-x+2x^2+x^3+x^4))`
-/

namespace A173343.P1966473680831263242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1] [1, -1, 2, 1, 1] n

end

end A173343.P1966473680831263242

namespace A173343

/-- `ogf((1+x)/(1-x+2x^2+x^3+x^4))` -/
def P1966473680831263242.Spec : Prop :=
  ∀ n, P1966473680831263242.a n = A173343 n

end A173343

/-! ## A173343.P17989911290958497289

`round(cos(n%6))*A000045(n+2)`
-/

namespace A173343.P17989911290958497289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.cos ((n % 6 : ℕ) : ℝ)) * A000045 (n + 2)

end

end A173343.P17989911290958497289

namespace A173343

/-- `round(cos(n%6))*A000045(n+2)` -/
def P17989911290958497289.Spec : Prop :=
  ∀ n, P17989911290958497289.a n = A173343 n

end A173343

/-! ## A173343.P8498588257998506777

`A306637(n+1)+A173344(n)`
-/

namespace A173343.P8498588257998506777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306637 (n + 1) + A173344 n

end

end A173343.P8498588257998506777

namespace A173343

/-- `A306637(n+1)+A173344(n)` -/
def P8498588257998506777.Spec : Prop :=
  ∀ n, P8498588257998506777.a n = A173343 n

end A173343

/-! ## A173343.P15639870317806623529

`A000045(n+2)*A010892(n)`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A173343

/-- `A000045(n+2)*A010892(n)` -/
def P15639870317806623529.Spec : Prop :=
  ∀ n, P15639870317806623529.a n = A173343 n

theorem P15639870317806623529.correct : P15639870317806623529.Spec := by
  intro n
  simp only [A173343]

end A173343

/-! ## A173343.P1574197227584424360

`A010892(n)*A212804(n+3)`
-/

namespace A173343.P1574197227584424360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010892 n * A212804 (n + 3)

end

end A173343.P1574197227584424360

namespace A173343

/-- `A010892(n)*A212804(n+3)` -/
def P1574197227584424360.Spec : Prop :=
  ∀ n, P1574197227584424360.a n = A173343 n

end A173343

/-! ## A173343.P16604527109929182381

`A000045(n+2)*A128834(n+1)`
-/

namespace A173343.P16604527109929182381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 2) * A128834 (n + 1)

end

end A173343.P16604527109929182381

namespace A173343

/-- `A000045(n+2)*A128834(n+1)` -/
def P16604527109929182381.Spec : Prop :=
  ∀ n, P16604527109929182381.a n = A173343 n

end A173343

/-! ## A173343.P11642207764842256673

`A000045(n+2)*A163806(n+1)`
-/

namespace A173343.P11642207764842256673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 2) * A163806 (n + 1)

end

end A173343.P11642207764842256673

namespace A173343

/-- `A000045(n+2)*A163806(n+1)` -/
def P11642207764842256673.Spec : Prop :=
  ∀ n, P11642207764842256673.a n = A173343 n

end A173343

/-! ## A173343.P15857958818755271271

`A011655(n+1)*A236191(n+2)`
-/

namespace A173343.P15857958818755271271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011655 (n + 1) * A236191 (n + 2)

end

end A173343.P15857958818755271271

namespace A173343

/-- `A011655(n+1)*A236191(n+2)` -/
def P15857958818755271271.Spec : Prop :=
  ∀ n, P15857958818755271271.a n = A173343 n

end A173343

/-! ## A173343.P13323793214018527118

`A000045(n+2)*A014021(2*n)`
-/

namespace A173343.P13323793214018527118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 2) * A014021 (2 * n)

end

end A173343.P13323793214018527118

namespace A173343

/-- `A000045(n+2)*A014021(2*n)` -/
def P13323793214018527118.Spec : Prop :=
  ∀ n, P13323793214018527118.a n = A173343 n

end A173343

/-! ## A173343.P9246655834470238918

`A000045(n+2)*A166446(2*n)`
-/

namespace A173343.P9246655834470238918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 2) * A166446 (2 * n)

end

end A173343.P9246655834470238918

namespace A173343

/-- `A000045(n+2)*A166446(2*n)` -/
def P9246655834470238918.Spec : Prop :=
  ∀ n, P9246655834470238918.a n = A173343 n

end A173343

/-! ## A173343.P10079117682676424547

`A000045(n+2)*A260190(2*n)`
-/

namespace A173343.P10079117682676424547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 2) * A260190 (2 * n)

end

end A173343.P10079117682676424547

namespace A173343

/-- `A000045(n+2)*A260190(2*n)` -/
def P10079117682676424547.Spec : Prop :=
  ∀ n, P10079117682676424547.a n = A173343 n

end A173343

/-! ## A173343.P17563663042136923621

`A000045(n+2)*A260192(2*n)`
-/

namespace A173343.P17563663042136923621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 2) * A260192 (2 * n)

end

end A173343.P17563663042136923621

namespace A173343

/-- `A000045(n+2)*A260192(2*n)` -/
def P17563663042136923621.Spec : Prop :=
  ∀ n, P17563663042136923621.a n = A173343 n

end A173343

/-! ## A173343.P11159185054354036086

`A000045(n+2)*A014027(3*n)`
-/

namespace A173343.P11159185054354036086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 2) * A014027 (3 * n)

end

end A173343.P11159185054354036086

namespace A173343

/-- `A000045(n+2)*A014027(3*n)` -/
def P11159185054354036086.Spec : Prop :=
  ∀ n, P11159185054354036086.a n = A173343 n

end A173343

/-! ## A173343.P12403533919309015944

`A010892(n)*A174619(2*n+3)`
-/

namespace A173343.P12403533919309015944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010892 n * A174619 (2 * n + 3)

end

end A173343.P12403533919309015944

namespace A173343

/-- `A010892(n)*A174619(2*n+3)` -/
def P12403533919309015944.Spec : Prop :=
  ∀ n, P12403533919309015944.a n = A173343 n

end A173343

/-! ## A173343.P16781747866716935358

`A000045(n+2)*A117441(10*n)`
-/

namespace A173343.P16781747866716935358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 2) * A117441 (10 * n)

end

end A173343.P16781747866716935358

namespace A173343

/-- `A000045(n+2)*A117441(10*n)` -/
def P16781747866716935358.Spec : Prop :=
  ∀ n, P16781747866716935358.a n = A173343 n

end A173343

/-! ## A173343.P12729115926553732084

`record[A000045(abs(1-n))]*A010892(n)`
-/

namespace A173343.P12729115926553732084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A010892 n

end

end A173343.P12729115926553732084

namespace A173343

/-- `record[A000045(abs(1-n))]*A010892(n)` -/
def P12729115926553732084.Spec : Prop :=
  ∀ n, P12729115926553732084.a n = A173343 n

end A173343

/-! ## A173343.P15014734200350365242

`(Δ[A077859(n)]-1)*A000045(n+2)`
-/

namespace A173343.P15014734200350365242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077859 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n - 1) * A000045 (n + 2)

end

end A173343.P15014734200350365242

namespace A173343

/-- `(Δ[A077859(n)]-1)*A000045(n+2)` -/
def P15014734200350365242.Spec : Prop :=
  ∀ n, P15014734200350365242.a n = A173343 n

end A173343

/-! ## A173343.P8014078624830157548

`(A000071(n+2)+1)*A128834(n+1)`
-/

namespace A173343.P8014078624830157548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000071 (n + 2) + 1) * A128834 (n + 1)

end

end A173343.P8014078624830157548

namespace A173343

/-- `(A000071(n+2)+1)*A128834(n+1)` -/
def P8014078624830157548.Spec : Prop :=
  ∀ n, P8014078624830157548.a n = A173343 n

end A173343

/-! ## A173343.P16949261555352045108

`A053602(2*n+1)*A163806(n+1)`
-/

namespace A173343.P16949261555352045108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053602 (2 * n + 1) * A163806 (n + 1)

end

end A173343.P16949261555352045108

namespace A173343

/-- `A053602(2*n+1)*A163806(n+1)` -/
def P16949261555352045108.Spec : Prop :=
  ∀ n, P16949261555352045108.a n = A173343 n

end A173343

/-! ## A173343.P12731812985053125793

`A000045(n+2)*∑[A110161(2*n+1)]`
-/

namespace A173343.P12731812985053125793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110161 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 2) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A173343.P12731812985053125793

namespace A173343

/-- `A000045(n+2)*∑[A110161(2*n+1)]` -/
def P12731812985053125793.Spec : Prop :=
  ∀ n, P12731812985053125793.a n = A173343 n

end A173343

/-!
# A173344: a(n+4) = a(n+3) - 2*a(n+2) - a(n+1) - a(n), starting with (0, 1, 0, -2).

The programs for A173344, the canonical program `A173344.P16983812646555922678` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A173344 has offset 0).

The definition of A173344 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 478 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A173344.P10053100894213801209

`ogf((x-x^2)/(1-x+2x^2+x^3+x^4))`
-/

namespace A173344.P10053100894213801209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, -1] [1, -1, 2, 1, 1] n

end

end A173344.P10053100894213801209

namespace A173344

/-- `ogf((x-x^2)/(1-x+2x^2+x^3+x^4))` -/
def P10053100894213801209.Spec : Prop :=
  ∀ n, P10053100894213801209.a n = A173344 n

end A173344

/-! ## A173344.P5353614072221810514

`round(cos(n%6))*A000045(n)`
-/

namespace A173344.P5353614072221810514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.cos ((n % 6 : ℕ) : ℝ)) * A000045 n

end

end A173344.P5353614072221810514

namespace A173344

/-- `round(cos(n%6))*A000045(n)` -/
def P5353614072221810514.Spec : Prop :=
  ∀ n, P5353614072221810514.a n = A173344 n

end A173344

/-! ## A173344.P1636132043908904114

`round(sin((n+1)%6))*Δ[A000045(n+1)]`
-/

namespace A173344.P1636132043908904114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sin (((n + 1) % 6 : ℕ) : ℝ)) * (f1 (n + 1) - f1 n)

end

end A173344.P1636132043908904114

namespace A173344

/-- `round(sin((n+1)%6))*Δ[A000045(n+1)]` -/
def P1636132043908904114.Spec : Prop :=
  ∀ n, P1636132043908904114.a n = A173344 n

end A173344

/-! ## A173344.P8466869454624041627

`round(cos(2*n*ϕ²))*A000045(2*n-n)`
-/

namespace A173344.P8466869454624041627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.cos ((2 * n : ℝ) * Real.goldenRatio ^ 2)) * A000045 (2 * n - n)

end

end A173344.P8466869454624041627

namespace A173344

/-- `round(cos(2*n*ϕ²))*A000045(2*n-n)` -/
def P8466869454624041627.Spec : Prop :=
  ∀ n, P8466869454624041627.a n = A173344 n

end A173344

/-! ## A173344.P16983812646555922678

`A000045(n)*A010892(n)`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A173344

/-- `A000045(n)*A010892(n)` -/
def P16983812646555922678.Spec : Prop :=
  ∀ n, P16983812646555922678.a n = A173344 n

theorem P16983812646555922678.correct : P16983812646555922678.Spec := by
  intro n
  simp only [A173344]

end A173344

/-! ## A173344.P16774793097970901646

`A117441(n)*A333378(n)`
-/

namespace A173344.P16774793097970901646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117441 n * A333378 n

end

end A173344.P16774793097970901646

namespace A173344

/-- `A117441(n)*A333378(n)` -/
def P16774793097970901646.Spec : Prop :=
  ∀ n, P16774793097970901646.a n = A173344 n

end A173344

/-! ## A173344.P7614964371829736117

`A173343(n)-A306637(n+1)`
-/

namespace A173344.P7614964371829736117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173343 n - A306637 (n + 1)

end

end A173344.P7614964371829736117

namespace A173344

/-- `A173343(n)-A306637(n+1)` -/
def P7614964371829736117.Spec : Prop :=
  ∀ n, P7614964371829736117.a n = A173344 n

end A173344

/-! ## A173344.P17342935399852280998

`A000045(n)*A128834(n+1)`
-/

namespace A173344.P17342935399852280998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n * A128834 (n + 1)

end

end A173344.P17342935399852280998

namespace A173344

/-- `A000045(n)*A128834(n+1)` -/
def P17342935399852280998.Spec : Prop :=
  ∀ n, P17342935399852280998.a n = A173344 n

end A173344

/-! ## A173344.P17371831278326395248

`A000045(n)*A163806(n+1)`
-/

namespace A173344.P17371831278326395248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n * A163806 (n + 1)

end

end A173344.P17371831278326395248

namespace A173344

/-- `A000045(n)*A163806(n+1)` -/
def P17371831278326395248.Spec : Prop :=
  ∀ n, P17371831278326395248.a n = A173344 n

end A173344

/-! ## A173344.P838459265200278418

`A010892(n)*A212804(n+1)`
-/

namespace A173344.P838459265200278418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010892 n * A212804 (n + 1)

end

end A173344.P838459265200278418

namespace A173344

/-- `A010892(n)*A212804(n+1)` -/
def P838459265200278418.Spec : Prop :=
  ∀ n, P838459265200278418.a n = A173344 n

end A173344

/-! ## A173344.P3973609906569876442

`(A001611(n)-1)*A010892(n)`
-/

namespace A173344.P3973609906569876442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001611 n - 1) * A010892 n

end

end A173344.P3973609906569876442

namespace A173344

/-- `(A001611(n)-1)*A010892(n)` -/
def P3973609906569876442.Spec : Prop :=
  ∀ n, P3973609906569876442.a n = A173344 n

theorem P3973609906569876442.correct : P3973609906569876442.Spec := by
  intro n
  simp only [A173344, Nat.add_sub_cancel, A173344.P3973609906569876442.a, A173344.P16983812646555922678.a, A000045, A000045.P11838749114346432762.a, A001611, A001611.P16593652898942925329.a, A010892, A010892.P14408744864468695543.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A173344

/-! ## A173344.P1601287042564233576

`(1-A021823(n))*A000045(n)`
-/

namespace A173344.P1601287042564233576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A021823 n) * A000045 n

end

end A173344.P1601287042564233576

namespace A173344

/-- `(1-A021823(n))*A000045(n)` -/
def P1601287042564233576.Spec : Prop :=
  ∀ n, P1601287042564233576.a n = A173344 n

end A173344

/-! ## A173344.P14564874345445382895

`A000045(n)*A014021(2*n)`
-/

namespace A173344.P14564874345445382895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n * A014021 (2 * n)

end

end A173344.P14564874345445382895

namespace A173344

/-- `A000045(n)*A014021(2*n)` -/
def P14564874345445382895.Spec : Prop :=
  ∀ n, P14564874345445382895.a n = A173344 n

end A173344

/-! ## A173344.P7775743021742860757

`A010892(n)*A103609(2*n)`
-/

namespace A173344.P7775743021742860757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010892 n * A103609 (2 * n)

end

end A173344.P7775743021742860757

namespace A173344

/-- `A010892(n)*A103609(2*n)` -/
def P7775743021742860757.Spec : Prop :=
  ∀ n, P7775743021742860757.a n = A173344 n

end A173344

/-! ## A173344.P8498956044726913811

`A000045(n)*A166446(2*n)`
-/

namespace A173344.P8498956044726913811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n * A166446 (2 * n)

end

end A173344.P8498956044726913811

namespace A173344

/-- `A000045(n)*A166446(2*n)` -/
def P8498956044726913811.Spec : Prop :=
  ∀ n, P8498956044726913811.a n = A173344 n

end A173344

/-! ## A173344.P15695318298378576145

`A000045(n)*A260190(2*n)`
-/

namespace A173344.P15695318298378576145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n * A260190 (2 * n)

end

end A173344.P15695318298378576145

namespace A173344

/-- `A000045(n)*A260190(2*n)` -/
def P15695318298378576145.Spec : Prop :=
  ∀ n, P15695318298378576145.a n = A173344 n

end A173344

/-! ## A173344.P2817586556202893287

`A000045(n)*A260192(2*n)`
-/

namespace A173344.P2817586556202893287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n * A260192 (2 * n)

end

end A173344.P2817586556202893287

namespace A173344

/-- `A000045(n)*A260192(2*n)` -/
def P2817586556202893287.Spec : Prop :=
  ∀ n, P2817586556202893287.a n = A173344 n

end A173344

/-! ## A173344.P779336820136884585

`A000045(n)*A014027(3*n)`
-/

namespace A173344.P779336820136884585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n * A014027 (3 * n)

end

end A173344.P779336820136884585

namespace A173344

/-- `A000045(n)*A014027(3*n)` -/
def P779336820136884585.Spec : Prop :=
  ∀ n, P779336820136884585.a n = A173344 n

end A173344

/-! ## A173344.P15943537894677374589

`A000045(n)*A117441(10*n)`
-/

namespace A173344.P15943537894677374589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n * A117441 (10 * n)

end

end A173344.P15943537894677374589

namespace A173344

/-- `A000045(n)*A117441(10*n)` -/
def P15943537894677374589.Spec : Prop :=
  ∀ n, P15943537894677374589.a n = A173344 n

end A173344

/-! ## A173344.P7318911480925147596

`Δ[A000071(n+1)]*A010892(n)`
-/

namespace A173344.P7318911480925147596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A010892 n

end

end A173344.P7318911480925147596

namespace A173344

/-- `Δ[A000071(n+1)]*A010892(n)` -/
def P7318911480925147596.Spec : Prop :=
  ∀ n, P7318911480925147596.a n = A173344 n

end A173344

/-!
# A173345: Number of trailing zeros of the superfactorial of n (A000178).

The programs for A173345, the canonical program `A173345.P13763599530260940977` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A173345 has offset 1).

The definition of A173345 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A173345.P13763599530260940977

`∑[∑[val(n+1, 5)]]`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A173345

/-- `∑[∑[val(n+1, 5)]]` -/
def P13763599530260940977.Spec : Prop :=
  ∀ n, (P13763599530260940977.a n : ℤ) = A173345 (n + 1)

theorem P13763599530260940977.correct : P13763599530260940977.Spec := by
  intro n
  simp only [A173345, Nat.add_sub_cancel]

end A173345

/-! ## A173345.P5522265346266941206

`∑[A027868(n+1)]`
-/

namespace A173345.P5522265346266941206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027868 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173345.P5522265346266941206

namespace A173345

/-- `∑[A027868(n+1)]` -/
def P5522265346266941206.Spec : Prop :=
  ∀ n, P5522265346266941206.a n = A173345 (n + 1)

end A173345

/-! ## A173345.P9250217680227155373

`∑[∑[A112765(n+1)]]`
-/

namespace A173345.P9250217680227155373
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112765 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173345.P9250217680227155373

namespace A173345

/-- `∑[∑[A112765(n+1)]]` -/
def P9250217680227155373.Spec : Prop :=
  ∀ n, P9250217680227155373.a n = A173345 (n + 1)

theorem P9250217680227155373.correct : P9250217680227155373.Spec := by
  intro n
  simp only [A173345, Nat.add_sub_cancel, A173345.P9250217680227155373.f2, A173345.P9250217680227155373.f1, A173345.P9250217680227155373.a, A173345.P13763599530260940977.f2, A173345.P13763599530260940977.f1, A173345.P13763599530260940977.a, A112765, A112765.P4892120039852414895.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A173345

/-! ## A173345.P9327116018394303899

`∑[∑[A055457(n+1)-1]]`
-/

namespace A173345.P9327116018394303899
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055457 (n + 1) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173345.P9327116018394303899

namespace A173345

/-- `∑[∑[A055457(n+1)-1]]` -/
def P9327116018394303899.Spec : Prop :=
  ∀ n, P9327116018394303899.a n = A173345 (n + 1)

theorem P9327116018394303899.correct : P9327116018394303899.Spec := by
  intro n
  simp only [A173345, Nat.add_sub_cancel, A173345.P9327116018394303899.f2, A173345.P9327116018394303899.f1, A173345.P9327116018394303899.a, A173345.P13763599530260940977.f2, A173345.P13763599530260940977.f1, A173345.P13763599530260940977.a, A055457, A055457.P3896145850230682422.a, A112765, A112765.P4892120039852414895.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A173345

/-! ## A173345.P15718274276841366680

`∑[∑[A051628(A000265(n+1))]]`
-/

namespace A173345.P15718274276841366680
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051628 (A000265 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173345.P15718274276841366680

namespace A173345

/-- `∑[∑[A051628(A000265(n+1))]]` -/
def P15718274276841366680.Spec : Prop :=
  ∀ n, P15718274276841366680.a n = A173345 (n + 1)

end A173345

/-! ## A173345.P12892435030461159558

`∑[∑[A007949(A064989(n+1))]]`
-/

namespace A173345.P12892435030461159558
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007949 (A064989 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173345.P12892435030461159558

namespace A173345

/-- `∑[∑[A007949(A064989(n+1))]]` -/
def P12892435030461159558.Spec : Prop :=
  ∀ n, P12892435030461159558.a n = A173345 (n + 1)

end A173345

/-! ## A173345.P10932577093403331666

`∑[A027869(n+1)-A137581(n+1)]`
-/

namespace A173345.P10932577093403331666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027869 (n + 1) - A137581 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173345.P10932577093403331666

namespace A173345

/-- `∑[A027869(n+1)-A137581(n+1)]` -/
def P10932577093403331666.Spec : Prop :=
  ∀ n, P10932577093403331666.a n = A173345 (n + 1)

end A173345

/-! ## A173345.P11154465203176039476

`∑[A191610(n+2)-(n+1)]`
-/

namespace A173345.P11154465203176039476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191610 (n + 2) - (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173345.P11154465203176039476

namespace A173345

/-- `∑[A191610(n+2)-(n+1)]` -/
def P11154465203176039476.Spec : Prop :=
  ∀ n, P11154465203176039476.a n = A173345 (n + 1)

end A173345

/-! ## A173345.P17381771220786165788

`∑[A034886(n+1)-A008906(n+1)]`
-/

namespace A173345.P17381771220786165788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034886 (n + 1) - A008906 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173345.P17381771220786165788

namespace A173345

/-- `∑[A034886(n+1)-A008906(n+1)]` -/
def P17381771220786165788.Spec : Prop :=
  ∀ n, P17381771220786165788.a n = A173345 (n + 1)

end A173345

/-! ## A173345.P10798726762597276606

`∑[∑[A324930(A068822(n+1))]]`
-/

namespace A173345.P10798726762597276606
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324930 (A068822 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173345.P10798726762597276606

namespace A173345

/-- `∑[∑[A324930(A068822(n+1))]]` -/
def P10798726762597276606.Spec : Prop :=
  ∀ n, P10798726762597276606.a n = A173345 (n + 1)

end A173345

/-!
# A173346: Numbers such that the product of numbers of 0's and 1's in the binary representation is equal to the square root of the number.

The programs for A173346, there is no canonical definition to state claims against.
-/

/-! ## A173346.P9791204836716202945

`round(∑[∑[tan(n^3)]])²`
-/

namespace A173346.P9791204836716202945
noncomputable section

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.tan (n ^ 3 : ℝ)

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A173346.P9791204836716202945

/-!
# A173347: Fibonacci numbers with both a prime number of 0's and a prime number of 1's in their binary representations.

The programs for A173347, there is no canonical definition to state claims against.
-/

/-! ## A173347.P17369430460378932274

`A000045(xor(A234285(3*(n+1)), A234287(n+2)))`
-/

namespace A173347.P17369430460378932274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (Int.xor (A234285 (3 * (n + 1))) (A234287 (n + 2))).toNat

end

end A173347.P17369430460378932274

/-!
# A173352: Numbers x such that 0 < |x^5 - y^3| < x^(7/3) for some number y.

The programs for A173352, there is no canonical definition to state claims against.
-/

/-! ## A173352.P17483772397761741933

`A053538(n)*A141100(A037074(n+1))`
-/

namespace A173352.P17483772397761741933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053538 n * A141100 (A037074 (n + 1)).toNat

end

end A173352.P17483772397761741933

/-!
# A173355: Numbers x such that 0 < |x^10 - y^3| < x^(17/3) for some number y.

The programs for A173355, there is no canonical definition to state claims against.
-/

/-! ## A173355.P14464858491574983594

`A230452(A079146(n+1))+1`
-/

namespace A173355.P14464858491574983594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230452 (A079146 (n + 1)).toNat + 1

end

end A173355.P14464858491574983594

/-!
# A173380: Number of n-step self-avoiding walks on the square lattice having no pair of nonconsecutive vertices that are adjacent in the lattice.

The programs for A173380, there is no canonical definition to state claims against.
-/

/-! ## A173380.P862853309157141071

`ceil(cosh(sin(n)))*A182644(n+1)`
-/

namespace A173380.P862853309157141071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.cosh (Real.sin (n : ℝ))⌉ * A182644 (n + 1)

end

end A173380.P862853309157141071

/-! ## A173380.P5280461814307356781

`lcm(A123932(n), A182644(n+1))`
-/

namespace A173380.P5280461814307356781
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A123932 n) (A182644 (n + 1))

end

end A173380.P5280461814307356781

/-! ## A173380.P16089228489736050708

`abs(A182644(n+1)*A280560(n))`
-/

namespace A173380.P16089228489736050708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A182644 (n + 1) * A280560 n|

end

end A173380.P16089228489736050708

/-! ## A173380.P9643487997198939774

`A036452(n+1)*A182644(n+1)`
-/

namespace A173380.P9643487997198939774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036452 (n + 1) * A182644 (n + 1)

end

end A173380.P9643487997198939774

/-!
# A173381: a(n) = b_n(p_(n+1)) where p_n is the n-th prime, b_n(1)=1, b_n(2)=p_n, and for k>=3, b_n(k) is the smallest number larger than b_n(k-1) such that, for all i<k, b_n(k) is relatively prime to b_n(i) iff k is relatively prime to i.

The programs for A173381, there is no canonical definition to state claims against.
-/

/-! ## A173381.P1330242381481874367

`A368278(A364645(n+1))`
-/

namespace A173381.P1330242381481874367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368278 (A364645 (n + 1)).toNat

end

end A173381.P1330242381481874367

/-!
# A173382: Partial sums of A074206.

The programs for A173382, there is no canonical definition to state claims against.
-/

/-! ## A173382.P829796352360864009

`∑[A074206(n)]`
-/

namespace A173382.P829796352360864009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074206 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173382.P829796352360864009

/-! ## A173382.P1254367361868293205

`∑[∑{d}[n, A174725(#)]]`
-/

namespace A173382.P1254367361868293205
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), A174725 d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173382.P1254367361868293205

/-! ## A173382.P8085311553149984283

`∑[A002033(n-a(2%n))]` with `a(0)=0`
-/

namespace A173382.P8085311553149984283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  A002033 ((n : ℤ) - f1 (2 % n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173382.P8085311553149984283

/-! ## A173382.P15639126320822475774

`A002033(n-1)+a(n-1)` with `a(0)=0`
-/

namespace A173382.P15639126320822475774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A002033 (n - 1) + a (n - 1)

end

end A173382.P15639126320822475774

/-! ## A173382.P552253659157862037

`∑[A002033(abs(1-n))%∑[n+1]]`
-/

namespace A173382.P552253659157862037
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002033 |1 - (n : ℤ)|.toNat) ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173382.P552253659157862037

/-! ## A173382.P6815663688240227935

`∑[A002033(n)]-A002033(n)`
-/

namespace A173382.P6815663688240227935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002033 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A002033 n

end

end A173382.P6815663688240227935

/-! ## A173382.P10430219378982306028

`∑[A104725(n)-A160086(n)]`
-/

namespace A173382.P10430219378982306028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104725 n - A160086 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173382.P10430219378982306028

/-! ## A173382.P3814376476070916146

`A025523(n+1)-A002033(n)`
-/

namespace A173382.P3814376476070916146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025523 (n + 1) - A002033 n

end

end A173382.P3814376476070916146

/-! ## A173382.P9391165025267552059

`A025523(n+1)-A074206(n+1)`
-/

namespace A173382.P9391165025267552059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025523 (n + 1) - A074206 (n + 1)

end

end A173382.P9391165025267552059

/-! ## A173382.P10617359169738194310

`A174787(n+1)+A174788(n+1)-A002033(n)`
-/

namespace A173382.P10617359169738194310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174787 (n + 1) + (A174788 (n + 1) - A002033 n)

end

end A173382.P10617359169738194310

/-! ## A173382.P12064457371159688452

`A025523(2*n+1)-A022825(2*n+1)`
-/

namespace A173382.P12064457371159688452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025523 (2 * n + 1) - A022825 (2 * n + 1)

end

end A173382.P12064457371159688452

/-!
# A173383: Partial sums of A000014.

The programs for A173383, there is no canonical definition to state claims against.
-/

/-! ## A173383.P12263639824024098313

`∑[A000014(n)]`
-/

namespace A173383.P12263639824024098313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000014 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173383.P12263639824024098313

/-! ## A173383.P2594830401615268742

`a(n-1)+A000038(n+1)+A000014(n)` with `a(0)=0`
-/

namespace A173383.P2594830401615268742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + (A000038 (n + 1) + A000014 n)

end

end A173383.P2594830401615268742

/-! ## A173383.P5784220494367274379

`∑[A238416(∑[n-2]+5)]`
-/

namespace A173383.P5784220494367274379
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238416 (∑ j ∈ Finset.range (n + 1), f2 j + 5).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173383.P5784220494367274379

/-! ## A173383.P3498988363511208799

`A078898(2*a(n-1))+A000014(n)` with `a(0)=0`
-/

namespace A173383.P3498988363511208799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A078898 (2 * a (n - 1)).toNat + A000014 n

end

end A173383.P3498988363511208799

/-! ## A173383.P2459693491355251793

`A135660(A247630(n)+∑[n+4]-4)`
-/

namespace A173383.P2459693491355251793
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135660 (A247630 n + (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 4)).toNat

end

end A173383.P2459693491355251793

/-!
# A173384: a(n) = 2^(2*n - HammingWeight(n)) * [x^n] ((x-1)^(-1) + (1-x)^(-3/2)).

The programs for A173384, the canonical program `A173384.P18329896187983106844` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A173384 has offset 0).

The definition of A173384 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A173384.P18329896187983106844

`A001803(n)-A046161(n)`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A173384

/-- `A001803(n)-A046161(n)` -/
def P18329896187983106844.Spec : Prop :=
  ∀ n, P18329896187983106844.a n = A173384 n

theorem P18329896187983106844.correct : P18329896187983106844.Spec := by
  intro n
  simp only [A173384]

end A173384

/-! ## A173384.P9822503223569292413

`A173396(n)-A101926(n)`
-/

namespace A173384.P9822503223569292413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173396 n - A101926 n

end

end A173384.P9822503223569292413

namespace A173384

/-- `A173396(n)-A101926(n)` -/
def P9822503223569292413.Spec : Prop :=
  ∀ n, P9822503223569292413.a n = A173384 n

end A173384

/-! ## A173384.P16135941607765265561

`record[A163590(n)-A004731(n)]`
-/

namespace A173384.P16135941607765265561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163590 n - A004731 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A173384.P16135941607765265561

namespace A173384

/-- `record[A163590(n)-A004731(n)]` -/
def P16135941607765265561.Spec : Prop :=
  ∀ n, P16135941607765265561.a n = A173384 n

end A173384

/-! ## A173384.P884266995241055836

`record[A163590(n)]-A046161(n)`
-/

namespace A173384.P884266995241055836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163590 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A046161 n

end

end A173384.P884266995241055836

namespace A173384

/-- `record[A163590(n)]-A046161(n)` -/
def P884266995241055836.Spec : Prop :=
  ∀ n, P884266995241055836.a n = A173384 n

end A173384

/-! ## A173384.P14901271045788041826

`A001803(n)-A004730(2*n)`
-/

namespace A173384.P14901271045788041826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001803 n - A004730 (2 * n)

end

end A173384.P14901271045788041826

namespace A173384

/-- `A001803(n)-A004730(2*n)` -/
def P14901271045788041826.Spec : Prop :=
  ∀ n, P14901271045788041826.a n = A173384 n

end A173384

/-! ## A173384.P9481305786862712730

`A001803(n)-A060818(2*n)`
-/

namespace A173384.P9481305786862712730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001803 n - A060818 (2 * n)

end

end A173384.P9481305786862712730

namespace A173384

/-- `A001803(n)-A060818(2*n)` -/
def P9481305786862712730.Spec : Prop :=
  ∀ n, P9481305786862712730.a n = A173384 n

end A173384

/-! ## A173384.P5625077820208777798

`A173396(n)-2*A046161(n)`
-/

namespace A173384.P5625077820208777798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173396 n - 2 * A046161 n

end

end A173384.P5625077820208777798

namespace A173384

/-- `A173396(n)-2*A046161(n)` -/
def P5625077820208777798.Spec : Prop :=
  ∀ n, P5625077820208777798.a n = A173384 n

theorem P5625077820208777798.correct : P5625077820208777798.Spec := by
  intro n
  simp only [A173384, Nat.add_sub_cancel, A173384.P5625077820208777798.a, A173384.P18329896187983106844.a, A001803, A001803.P12627378217154944539.a, A046161, A046161.P11774724709527425901.a, A173396, A173396.P12524725615118793413.a, A000120, A000120.P2816527436160941581.a, A005187, A005187.P3874015513960485494.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A173384

/-! ## A173384.P7768514564946673513

`A001803(n)-A380909(2*n)`
-/

namespace A173384.P7768514564946673513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001803 n - A380909 (2 * n)

end

end A173384.P7768514564946673513

namespace A173384

/-- `A001803(n)-A380909(2*n)` -/
def P7768514564946673513.Spec : Prop :=
  ∀ n, P7768514564946673513.a n = A173384 n

end A173384

/-! ## A173384.P7215012100462823408

`A001803(n)-A101926(n)/2`
-/

namespace A173384.P7215012100462823408
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001803 n : ℚ) - (A101926 n : ℚ) / 2

end

end A173384.P7215012100462823408

namespace A173384

/-- `A001803(n)-A101926(n)/2` -/
def P7215012100462823408.Spec : Prop :=
  ∀ n, P7215012100462823408.a n = (A173384 n : ℚ)

end A173384

/-! ## A173384.P9364036565980531672

`A001803(n)-2^A005187(n)`
-/

namespace A173384.P9364036565980531672
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001803 n : ℚ) - (2 : ℚ) ^ (A005187 n : ℤ)

end

end A173384.P9364036565980531672

namespace A173384

/-- `A001803(n)-2^A005187(n)` -/
def P9364036565980531672.Spec : Prop :=
  ∀ n, P9364036565980531672.a n = (A173384 n : ℚ)

end A173384

/-! ## A173384.P2665091285648247115

`A001803(n)-A004731(2*n+1)`
-/

namespace A173384.P2665091285648247115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001803 n - A004731 (2 * n + 1)

end

end A173384.P2665091285648247115

namespace A173384

/-- `A001803(n)-A004731(2*n+1)` -/
def P2665091285648247115.Spec : Prop :=
  ∀ n, P2665091285648247115.a n = A173384 n

end A173384

/-! ## A173384.P15672271166405185162

`A004731(2*(n+1))-A046161(n)`
-/

namespace A173384.P15672271166405185162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004731 (2 * (n + 1)) - A046161 n

end

end A173384.P15672271166405185162

namespace A173384

/-- `A004731(2*(n+1))-A046161(n)` -/
def P15672271166405185162.Spec : Prop :=
  ∀ n, P15672271166405185162.a n = A173384 n

end A173384

/-! ## A173384.P1435507151478187497

`A086116(2*(n+1))-A046161(n)`
-/

namespace A173384.P1435507151478187497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086116 (2 * (n + 1)) - A046161 n

end

end A173384.P1435507151478187497

namespace A173384

/-- `A086116(2*(n+1))-A046161(n)` -/
def P1435507151478187497.Spec : Prop :=
  ∀ n, P1435507151478187497.a n = A173384 n

end A173384

/-! ## A173384.P8872132349143676972

`A173396(n)-A036069(2*n+1)`
-/

namespace A173384.P8872132349143676972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173396 n - A036069 (2 * n + 1)

end

end A173384.P8872132349143676972

namespace A173384

/-- `A173396(n)-A036069(2*n+1)` -/
def P8872132349143676972.Spec : Prop :=
  ∀ n, P8872132349143676972.a n = A173384 n

end A173384

/-! ## A173384.P13049694174453086964

`A163590(2*n+1)-A046161(n)`
-/

namespace A173384.P13049694174453086964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163590 (2 * n + 1) - A046161 n

end

end A173384.P13049694174453086964

namespace A173384

/-- `A163590(2*n+1)-A046161(n)` -/
def P13049694174453086964.Spec : Prop :=
  ∀ n, P13049694174453086964.a n = A173384 n

end A173384

/-! ## A173384.P18280963013346987041

`A001803(n)-A240988(2*n+1)`
-/

namespace A173384.P18280963013346987041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001803 n - A240988 (2 * n + 1)

end

end A173384.P18280963013346987041

namespace A173384

/-- `A001803(n)-A240988(2*n+1)` -/
def P18280963013346987041.Spec : Prop :=
  ∀ n, P18280963013346987041.a n = A173384 n

end A173384

/-! ## A173384.P1178817011969278917

`A173396(n)-A086117(2*(n+1))`
-/

namespace A173384.P1178817011969278917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173396 n - A086117 (2 * (n + 1))

end

end A173384.P1178817011969278917

namespace A173384

/-- `A173396(n)-A086117(2*(n+1))` -/
def P1178817011969278917.Spec : Prop :=
  ∀ n, P1178817011969278917.a n = A173384 n

end A173384

/-! ## A173384.P9701167858160508645

`A380909(2*n+1)-A046161(n)`
-/

namespace A173384.P9701167858160508645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380909 (2 * n + 1) - A046161 n

end

end A173384.P9701167858160508645

namespace A173384

/-- `A380909(2*n+1)-A046161(n)` -/
def P9701167858160508645.Spec : Prop :=
  ∀ n, P9701167858160508645.a n = A173384 n

end A173384

/-! ## A173384.P10954442240102908065

`A004731(2*(n+1))-A004730(2*n)`
-/

namespace A173384.P10954442240102908065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004731 (2 * (n + 1)) - A004730 (2 * n)

end

end A173384.P10954442240102908065

namespace A173384

/-- `A004731(2*(n+1))-A004730(2*n)` -/
def P10954442240102908065.Spec : Prop :=
  ∀ n, P10954442240102908065.a n = A173384 n

end A173384

/-! ## A173384.P4775473627520642647

`A163590(2*n+1)-A004730(2*n)`
-/

namespace A173384.P4775473627520642647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163590 (2 * n + 1) - A004730 (2 * n)

end

end A173384.P4775473627520642647

namespace A173384

/-- `A163590(2*n+1)-A004730(2*n)` -/
def P4775473627520642647.Spec : Prop :=
  ∀ n, P4775473627520642647.a n = A173384 n

end A173384

/-!
# A173385: The number of permutations that avoid the pattern 122'1', that is, out of four consecutive elements in a permutation we never have the situation that the first two elements form an ascent while the last two elements form a descent.

The programs for A173385, there is no canonical definition to state claims against.
-/

/-! ## A173385.P5010037576954178778

`A032551(n+1)!-A177484(n)`
-/

namespace A173385.P5010037576954178778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A032551 (n + 1)).toNat : ℤ) - A177484 n

end

end A173385.P5010037576954178778

/-! ## A173385.P15535144428373980286

`A245092(∑{digits}[n, #!])-A177484(n)`
-/

namespace A173385.P15535144428373980286
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245092 ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => Nat.factorial x).sum - A177484 n

end

end A173385.P15535144428373980286

/-! ## A173385.P3204532579839920956

`A028310(A000142(n))-A177484(n)`
-/

namespace A173385.P3204532579839920956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A000142 n).toNat - A177484 n

end

end A173385.P3204532579839920956

/-! ## A173385.P14914563545798428910

`A028310(A062919(n))-A177484(n)`
-/

namespace A173385.P14914563545798428910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A062919 n).toNat - A177484 n

end

end A173385.P14914563545798428910

/-!
# A173386: The absolute values of n-th natural noncomposite number minus n-th number k such that 6*k +- 1 is a twin prime pair.

The programs for A173386, the canonical program `A173386.P16068600266942827119` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A173386 has offset 1).

The definition of A173386 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002822, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A173386.P16068600266942827119

`abs(A008578(n+1)-A002822(n+1))`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A173386

/-- `abs(A008578(n+1)-A002822(n+1))` -/
def P16068600266942827119.Spec : Prop :=
  ∀ n, P16068600266942827119.a n = A173386 (n + 1)

theorem P16068600266942827119.correct : P16068600266942827119.Spec := by
  intro n
  simp only [A173386, Nat.add_sub_cancel]

end A173386

/-! ## A173386.P5324229766988907872

`abs(A002822(n+1)-record[A006530(n+1)])`
-/

namespace A173386.P5324229766988907872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A002822 (n + 1) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)|

end

end A173386.P5324229766988907872

namespace A173386

/-- `abs(A002822(n+1)-record[A006530(n+1)])` -/
def P5324229766988907872.Spec : Prop :=
  ∀ n, P5324229766988907872.a n = A173386 (n + 1)

end A173386

/-! ## A173386.P5714722222400142510

`abs(A002822(n+1)-record[A020639(n+1)])`
-/

namespace A173386.P5714722222400142510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A002822 (n + 1) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)|

end

end A173386.P5714722222400142510

namespace A173386

/-- `abs(A002822(n+1)-record[A020639(n+1)])` -/
def P5714722222400142510.Spec : Prop :=
  ∀ n, P5714722222400142510.a n = A173386 (n + 1)

end A173386

/-! ## A173386.P5866210351714730153

`abs(A008578(n+1)-A014682(A167379(n+1)))`
-/

namespace A173386.P5866210351714730153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008578 (n + 1) - A014682 (A167379 (n + 1)).toNat|

end

end A173386.P5866210351714730153

namespace A173386

/-- `abs(A008578(n+1)-A014682(A167379(n+1)))` -/
def P5866210351714730153.Spec : Prop :=
  ∀ n, P5866210351714730153.a n = A173386 (n + 1)

end A173386

/-! ## A173386.P4957919214337776636

`abs(A002822(n+1)-record[A014963(n+1)])`
-/

namespace A173386.P4957919214337776636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A002822 (n + 1) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)|

end

end A173386.P4957919214337776636

namespace A173386

/-- `abs(A002822(n+1)-record[A014963(n+1)])` -/
def P4957919214337776636.Spec : Prop :=
  ∀ n, P4957919214337776636.a n = A173386 (n + 1)

end A173386

/-! ## A173386.P16276429173890324120

`abs(A008578(n+1)-A098098(A153196(n+1)))`
-/

namespace A173386.P16276429173890324120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008578 (n + 1) - A098098 (A153196 (n + 1)).toNat|

end

end A173386.P16276429173890324120

namespace A173386

/-- `abs(A008578(n+1)-A098098(A153196(n+1)))` -/
def P16276429173890324120.Spec : Prop :=
  ∀ n, P16276429173890324120.a n = A173386 (n + 1)

end A173386

/-! ## A173386.P10828896336026722428

`abs(A008578(n+1)-A008611(A116958(n+1)))`
-/

namespace A173386.P10828896336026722428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008578 (n + 1) - A008611 (A116958 (n + 1)).toNat|

end

end A173386.P10828896336026722428

namespace A173386

/-- `abs(A008578(n+1)-A008611(A116958(n+1)))` -/
def P10828896336026722428.Spec : Prop :=
  ∀ n, P10828896336026722428.a n = A173386 (n + 1)

end A173386

/-!
# A173387: The absolute value of n-th prime number minus n-th number k such that 6*k-+1 is a twin prime pair.

The programs for A173387, the canonical program `A173387.P5209001471711871624` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A173387 has offset 1).

The definition of A173387 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002822, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A173387.P5209001471711871624

`abs(A000040(n+1)-A002822(n+1))`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A173387

/-- `abs(A000040(n+1)-A002822(n+1))` -/
def P5209001471711871624.Spec : Prop :=
  ∀ n, P5209001471711871624.a n = A173387 (n + 1)

theorem P5209001471711871624.correct : P5209001471711871624.Spec := by
  intro n
  simp only [A173387, Nat.add_sub_cancel]

end A173387

/-! ## A173387.P1662988416382798896

`abs(A002822(n+1)-Δ[A007504(n)])`
-/

namespace A173387.P1662988416382798896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A002822 (n + 1) - (f1 (n + 1) - f1 n)|

end

end A173387.P1662988416382798896

namespace A173387

/-- `abs(A002822(n+1)-Δ[A007504(n)])` -/
def P1662988416382798896.Spec : Prop :=
  ∀ n, P1662988416382798896.a n = A173387 (n + 1)

end A173387

/-! ## A173387.P16737270121998866536

`abs(A002822(n+1)-(A006093(n+1)+1))`
-/

namespace A173387.P16737270121998866536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A002822 (n + 1) - (A006093 (n + 1) + 1)|

end

end A173387.P16737270121998866536

namespace A173387

/-- `abs(A002822(n+1)-(A006093(n+1)+1))` -/
def P16737270121998866536.Spec : Prop :=
  ∀ n, P16737270121998866536.a n = A173387 (n + 1)

end A173387

/-! ## A173387.P1891990660781328285

`abs(A002822(n+1)-A008578(n+2))`
-/

namespace A173387.P1891990660781328285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A002822 (n + 1) - A008578 (n + 2)|

end

end A173387.P1891990660781328285

namespace A173387

/-- `abs(A002822(n+1)-A008578(n+2))` -/
def P1891990660781328285.Spec : Prop :=
  ∀ n, P1891990660781328285.a n = A173387 (n + 1)

end A173387

/-! ## A173387.P14237206581220076678

`abs(A002822(n+1)-record[A006530(n+2)])`
-/

namespace A173387.P14237206581220076678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A002822 (n + 1) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)|

end

end A173387.P14237206581220076678

namespace A173387

/-- `abs(A002822(n+1)-record[A006530(n+2)])` -/
def P14237206581220076678.Spec : Prop :=
  ∀ n, P14237206581220076678.a n = A173387 (n + 1)

end A173387

/-! ## A173387.P3302902741613563344

`abs(A002822(n+1)-record[A020639(n+2)])`
-/

namespace A173387.P3302902741613563344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A002822 (n + 1) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)|

end

end A173387.P3302902741613563344

namespace A173387

/-- `abs(A002822(n+1)-record[A020639(n+2)])` -/
def P3302902741613563344.Spec : Prop :=
  ∀ n, P3302902741613563344.a n = A173387 (n + 1)

end A173387

/-! ## A173387.P4812687053108920887

`abs(A002822(n+1)-p?[A004280(n+1)])`
-/

namespace A173387.P4812687053108920887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004280 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A002822 (n + 1) - f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)|

end

end A173387.P4812687053108920887

namespace A173387

/-- `abs(A002822(n+1)-p?[A004280(n+1)])` -/
def P4812687053108920887.Spec : Prop :=
  ∀ n, P4812687053108920887.a n = A173387 (n + 1)

end A173387

/-! ## A173387.P13424961886283775281

`abs(p?[A018252(n+1)-7]-A002822(n+1))`
-/

namespace A173387.P13424961886283775281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1) - 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - A002822 (n + 1)|

end

end A173387.P13424961886283775281

namespace A173387

/-- `abs(p?[A018252(n+1)-7]-A002822(n+1))` -/
def P13424961886283775281.Spec : Prop :=
  ∀ n, P13424961886283775281.a n = A173387 (n + 1)

end A173387

/-! ## A173387.P14151578993910685549

`abs(A002822(n+1)-p?[A007989(n)])`
-/

namespace A173387.P14151578993910685549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007989 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A002822 (n + 1) - f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)|

end

end A173387.P14151578993910685549

namespace A173387

/-- `abs(A002822(n+1)-p?[A007989(n)])` -/
def P14151578993910685549.Spec : Prop :=
  ∀ n, P14151578993910685549.a n = A173387 (n + 1)

end A173387

/-! ## A173387.P15530153255180461476

`abs(A002822(n+1)-record[A051698(n)])`
-/

namespace A173387.P15530153255180461476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051698 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A002822 (n + 1) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)|

end

end A173387.P15530153255180461476

namespace A173387

/-- `abs(A002822(n+1)-record[A051698(n)])` -/
def P15530153255180461476.Spec : Prop :=
  ∀ n, P15530153255180461476.a n = A173387 (n + 1)

end A173387

/-! ## A173387.P12687925478674528086

`abs(A002822(n+1)-p?[A014681(n)])`
-/

namespace A173387.P12687925478674528086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A002822 (n + 1) - f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)|

end

end A173387.P12687925478674528086

namespace A173387

/-- `abs(A002822(n+1)-p?[A014681(n)])` -/
def P12687925478674528086.Spec : Prop :=
  ∀ n, P12687925478674528086.a n = A173387 (n + 1)

end A173387

/-! ## A173387.P4816684772640673329

`abs(A002822(n+1)-p?[A064429(n)])`
-/

namespace A173387.P4816684772640673329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064429 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A002822 (n + 1) - f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)|

end

end A173387.P4816684772640673329

namespace A173387

/-- `abs(A002822(n+1)-p?[A064429(n)])` -/
def P4816684772640673329.Spec : Prop :=
  ∀ n, P4816684772640673329.a n = A173387 (n + 1)

end A173387

/-! ## A173387.P11747496368912970448

`abs(A002822(n+1)-record[A014963(n+2)])`
-/

namespace A173387.P11747496368912970448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A002822 (n + 1) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)|

end

end A173387.P11747496368912970448

namespace A173387

/-- `abs(A002822(n+1)-record[A014963(n+2)])` -/
def P11747496368912970448.Spec : Prop :=
  ∀ n, P11747496368912970448.a n = A173387 (n + 1)

end A173387

/-! ## A173387.P9949350497475070389

`abs(A002822(n+1)-p?[A001057(n)])`
-/

namespace A173387.P9949350497475070389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A002822 (n + 1) - f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)|

end

end A173387.P9949350497475070389

namespace A173387

/-- `abs(A002822(n+1)-p?[A001057(n)])` -/
def P9949350497475070389.Spec : Prop :=
  ∀ n, P9949350497475070389.a n = A173387 (n + 1)

end A173387

/-! ## A173387.P17724616405367478564

`abs(A002822(n+1)-p?[A006370(n)])`
-/

namespace A173387.P17724616405367478564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006370 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A002822 (n + 1) - f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)|

end

end A173387.P17724616405367478564

namespace A173387

/-- `abs(A002822(n+1)-p?[A006370(n)])` -/
def P17724616405367478564.Spec : Prop :=
  ∀ n, P17724616405367478564.a n = A173387 (n + 1)

end A173387

/-! ## A173387.P7805278835817922964

`abs(A002822(n+1)-p?[A057979(n)])`
-/

namespace A173387.P7805278835817922964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A002822 (n + 1) - f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)|

end

end A173387.P7805278835817922964

namespace A173387

/-- `abs(A002822(n+1)-p?[A057979(n)])` -/
def P7805278835817922964.Spec : Prop :=
  ∀ n, P7805278835817922964.a n = A173387 (n + 1)

end A173387

/-! ## A173387.P15559535748286024665

`abs(A006093(n+1)-lt[A135023(n+1), 2])`
-/

namespace A173387.P15559535748286024665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135023 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A006093 (n + 1) - (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n : ℤ)|

end

end A173387.P15559535748286024665

namespace A173387

/-- `abs(A006093(n+1)-lt[A135023(n+1), 2])` -/
def P15559535748286024665.Spec : Prop :=
  ∀ n, P15559535748286024665.a n = A173387 (n + 1)

end A173387

/-!
# A173388: a(n) = a(n - 3) + a(n - 4) if n is even, else a(n - 2) + a(n - 3).

The programs for A173388, the canonical program `A173388.P11415529211012087862` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A173388 has offset 0).

The definition of A173388 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A173388.P11415529211012087862

`a(n-2)+a(n-4)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1, a(4)=2, a(5)=2, a(6)=2, a(7)=4`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A173388

/-- `a(n-2)+a(n-4)` -/
def P11415529211012087862.Spec : Prop :=
  ∀ n, (P11415529211012087862.a n : ℤ) = A173388 n

theorem P11415529211012087862.correct : P11415529211012087862.Spec := by
  intro n
  simp only [A173388]

end A173388

/-! ## A173388.P10201130104770613877

`A006355(A110654(n*A130543(n)))`
-/

namespace A173388.P10201130104770613877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006355 (A110654 ((n : ℤ) * A130543 n).toNat).toNat

end

end A173388.P10201130104770613877

namespace A173388

/-- `A006355(A110654(n*A130543(n)))` -/
def P10201130104770613877.Spec : Prop :=
  ∀ n, P10201130104770613877.a n = A173388 n

end A173388

/-! ## A173388.P4433803890111045068

`A006355(A000217(n)%A060000(A109613(n)))`
-/

namespace A173388.P4433803890111045068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006355 (Int.tmod (A000217 n) (A060000 (A109613 n).toNat)).toNat

end

end A173388.P4433803890111045068

namespace A173388

/-- `A006355(A000217(n)%A060000(A109613(n)))` -/
def P4433803890111045068.Spec : Prop :=
  ∀ n, P4433803890111045068.a n = A173388 n

end A173388

/-! ## A173388.P1844197295435874616

`A006355(A004526(n+1)%A000930(n))`
-/

namespace A173388.P1844197295435874616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006355 (Int.tmod (A004526 (n + 1)) (A000930 n)).toNat

end

end A173388.P1844197295435874616

namespace A173388

/-- `A006355(A004526(n+1)%A000930(n))` -/
def P1844197295435874616.Spec : Prop :=
  ∀ n, P1844197295435874616.a n = A173388 n

end A173388

/-! ## A173388.P17736222610196403033

`A006355(A065033(n)%A000044(n))`
-/

namespace A173388.P17736222610196403033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006355 (Int.tmod (A065033 n) (A000044 n)).toNat

end

end A173388.P17736222610196403033

namespace A173388

/-- `A006355(A065033(n)%A000044(n))` -/
def P17736222610196403033.Spec : Prop :=
  ∀ n, P17736222610196403033.a n = A173388 n

end A173388

/-! ## A173388.P10973286225412070250

`A006355(A110654(n)%A000044(n))`
-/

namespace A173388.P10973286225412070250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006355 (Int.tmod (A110654 n) (A000044 n)).toNat

end

end A173388.P10973286225412070250

namespace A173388

/-- `A006355(A110654(n)%A000044(n))` -/
def P10973286225412070250.Spec : Prop :=
  ∀ n, P10973286225412070250.a n = A173388 n

end A173388

/-! ## A173388.P14963663896067339357

`A006355(ceil(n/2)%A000288(n))`
-/

namespace A173388.P14963663896067339357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006355 (Int.tmod ⌈(n : ℚ) / 2⌉ (A000288 n)).toNat

end

end A173388.P14963663896067339357

namespace A173388

/-- `A006355(ceil(n/2)%A000288(n))` -/
def P14963663896067339357.Spec : Prop :=
  ∀ n, P14963663896067339357.a n = A173388 n

end A173388

/-! ## A173388.P15577806452558657655

`A055389(A123578(∑[A002265(n)]))`
-/

namespace A173388.P15577806452558657655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055389 (A123578 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A173388.P15577806452558657655

namespace A173388

/-- `A055389(A123578(∑[A002265(n)]))` -/
def P15577806452558657655.Spec : Prop :=
  ∀ n, P15577806452558657655.a n = A173388 n

end A173388

/-! ## A173388.P17372240747593588609

`A163733(A004526(A102352(n+1)))`
-/

namespace A173388.P17372240747593588609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163733 (A004526 (A102352 (n + 1)).toNat).toNat

end

end A173388.P17372240747593588609

namespace A173388

/-- `A163733(A004526(A102352(n+1)))` -/
def P17372240747593588609.Spec : Prop :=
  ∀ n, P17372240747593588609.a n = A173388 n

end A173388

/-!
# A173389: A shifted symmetrical triangular sequence:t(n,m)=If[Mod[n, 2] == 0, Binomial[n, m], Binomial[n - 1, m - 1] + If[(n - 3)*(m - 2) >= 1, Binomial[n - 3, m - 2], 0]].

The programs for A173389, there is no canonical definition to state claims against.
-/

/-! ## A173389.P10778286430902807055

`gcd(A001222(A059328(n)²), A119467(n))`
-/

namespace A173389.P10778286430902807055
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001222 (A059328 n ^ 2).toNat) (A119467 n)

end

end A173389.P10778286430902807055

/-! ## A173389.P6837748177053466017

`A028326(n)-A133087(A033265(2^n))`
-/

namespace A173389.P6837748177053466017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028326 n - A133087 (A033265 (2 ^ n)).toNat

end

end A173389.P6837748177053466017

/-! ## A173389.P8109679736134351722

`2*A007318(n)-A133087(A033265(2^n))`
-/

namespace A173389.P8109679736134351722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A007318 n - A133087 (A033265 (2 ^ n)).toNat

end

end A173389.P8109679736134351722

/-! ## A173389.P15940981265648591685

`A053735(A111595(n)²)`
-/

namespace A173389.P15940981265648591685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053735 (A111595 n ^ 2).toNat

end

end A173389.P15940981265648591685

/-! ## A173389.P2522679203770419748

`A053735(A111595(n)^2)`
-/

namespace A173389.P2522679203770419748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053735 (A111595 n ^ 2).toNat

end

end A173389.P2522679203770419748

/-!
# A173390: n-th difference between consecutive natural noncomposite numbers = n-th difference between consecutive prime numbers.

The programs for A173390, there is no canonical definition to state claims against.
-/

/-! ## A173390.P5237896325289465885

`A333216(n)+a(n-1)` with `a(0)=1`
-/

namespace A173390.P5237896325289465885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A333216 n + a (n - 1)

end

end A173390.P5237896325289465885

/-! ## A173390.P8136553393992760897

`A066875(n%(2*a(n-1)))` with `a(0)=1`
-/

namespace A173390.P8136553393992760897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A066875 (Int.tmod (n : ℤ) (2 * a (n - 1))).toNat

end

end A173390.P8136553393992760897

/-! ## A173390.P595729311866395445

`∑[A333216(round(sqrt(n²+1)))]-1`
-/

namespace A173390.P595729311866395445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333216 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A173390.P595729311866395445

/-! ## A173390.P9318049052955158573

`A066875((n-1)%a(n-1)+1)` with `a(0)=1`
-/

namespace A173390.P9318049052955158573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A066875 (Int.tmod ((n : ℤ) - 1) (a (n - 1)) + 1).toNat

end

end A173390.P9318049052955158573

/-! ## A173390.P1047768156834514729

`∪[A016820(n), A066875(n+1)]`
-/

namespace A173390.P1047768156834514729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016820 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066875 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A173390.P1047768156834514729

/-! ## A173390.P12169319097773781873

`∪[A017537(n), A066875(n+1)]`
-/

namespace A173390.P12169319097773781873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017537 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066875 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A173390.P12169319097773781873

/-! ## A173390.P8880037478049619282

`A066875(n+1)-A333216(n+1)`
-/

namespace A173390.P8880037478049619282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066875 (n + 1) - A333216 (n + 1)

end

end A173390.P8880037478049619282

/-! ## A173390.P8085725005689392700

`record[gcd(n+2, A036263(n+1))]`
-/

namespace A173390.P8085725005689392700
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 2 : ℤ) (A036263 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A173390.P8085725005689392700

/-! ## A173390.P1425036858198455931

`A145024(n)+a(n-1)` with `a(0)=1, a(1)=3`
-/

namespace A173390.P1425036858198455931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  A145024 n + a (n - 1)

end

end A173390.P1425036858198455931

/-! ## A173390.P1438904059890413450

`eq[2, A001222(A176099(n+1))]`
-/

namespace A173390.P1438904059890413450
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A176099 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A173390.P1438904059890413450

/-! ## A173390.P1037537472114055026

`record[A263111(A093667(n+1))]`
-/

namespace A173390.P1037537472114055026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263111 (A093667 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A173390.P1037537472114055026

/-!
# A173391: a(n) = 6n + 3^n.

The programs for A173391, the canonical program `A173391.P17992935945244784005` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A173391 has offset 1).

The definition of A173391 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `6*(n+1)+3^(n+1)` (program `A173391.P17992935945244784005`, by `A173391.P17992935945244784005.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A173391.P17992935945244784005

`6*(n+1)+3^(n+1)`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A173391

/-- `6*(n+1)+3^(n+1)` -/
def P17992935945244784005.Spec : Prop :=
  ∀ n, (P17992935945244784005.a n : ℤ) = A173391 (n + 1)

theorem P17992935945244784005.correct : P17992935945244784005.Spec := by
  intro n
  simp only [A173391, Nat.add_sub_cancel]

end A173391

/-! ## A173391.P2141484078774998181

`∑[∑[3*a(n-1)]]` with `a(0)=9, a(1)=3, a(2)=12`
-/

namespace A173391.P2141484078774998181
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [9, 3, 12] fun n f2 =>
  3 * f2 (n - 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173391.P2141484078774998181

namespace A173391

/-- `∑[∑[3*a(n-1)]]` -/
def P2141484078774998181.Spec : Prop :=
  ∀ n, (P2141484078774998181.a n : ℤ) = A173391 (n + 1)

end A173391

/-! ## A173391.P1268372254345649293

`∑[A198635(n)+4]`
-/

namespace A173391.P1268372254345649293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198635 n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173391.P1268372254345649293

namespace A173391

/-- `∑[A198635(n)+4]` -/
def P1268372254345649293.Spec : Prop :=
  ∀ n, P1268372254345649293.a n = A173391 (n + 1)

end A173391

/-! ## A173391.P2483732507081931032

`∑[A110593(n+1)+6]`
-/

namespace A173391.P2483732507081931032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110593 (n + 1) + 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173391.P2483732507081931032

namespace A173391

/-- `∑[A110593(n+1)+6]` -/
def P2483732507081931032.Spec : Prop :=
  ∀ n, P2483732507081931032.a n = A173391 (n + 1)

end A173391

/-! ## A173391.P9787522519907189321

`3*(A381705(n+1)+n)`
-/

namespace A173391.P9787522519907189321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A381705 (n + 1) + (n : ℤ))

end

end A173391.P9787522519907189321

namespace A173391

/-- `3*(A381705(n+1)+n)` -/
def P9787522519907189321.Spec : Prop :=
  ∀ n, P9787522519907189321.a n = A173391 (n + 1)

theorem P9787522519907189321.correct : P9787522519907189321.Spec := by
  intro n
  simp only [A173391, Nat.add_sub_cancel, A173391.P9787522519907189321.a, A173391.P17992935945244784005.a, A381705, A381705.P4111808280753758285.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A173391

/-! ## A173391.P1178910025879566849

`3*(A104743(n)+2+n)`
-/

namespace A173391.P1178910025879566849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A104743 n + 2 + (n : ℤ))

end

end A173391.P1178910025879566849

namespace A173391

/-- `3*(A104743(n)+2+n)` -/
def P1178910025879566849.Spec : Prop :=
  ∀ n, P1178910025879566849.a n = A173391 (n + 1)

theorem P1178910025879566849.correct : P1178910025879566849.Spec := by
  intro n
  simp only [A173391, Nat.add_sub_cancel, A173391.P1178910025879566849.a, A173391.P17992935945244784005.a, A104743, A104743.P17964489936834295293.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A173391

/-! ## A173391.P13498252455212050598

`3*(A176805(n)+1-n)`
-/

namespace A173391.P13498252455212050598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A176805 n + (1 - (n : ℤ)))

end

end A173391.P13498252455212050598

namespace A173391

/-- `3*(A176805(n)+1-n)` -/
def P13498252455212050598.Spec : Prop :=
  ∀ n, P13498252455212050598.a n = A173391 (n + 1)

theorem P13498252455212050598.correct : P13498252455212050598.Spec := by
  intro n
  simp only [A173391, Nat.add_sub_cancel, A173391.P13498252455212050598.a, A173391.P17992935945244784005.a, A176805, A176805.P17224655801162528754.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A173391

/-! ## A173391.P15345423316069840496

`3*(A221905(n)+2-n)`
-/

namespace A173391.P15345423316069840496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A221905 n + (2 - (n : ℤ)))

end

end A173391.P15345423316069840496

namespace A173391

/-- `3*(A221905(n)+2-n)` -/
def P15345423316069840496.Spec : Prop :=
  ∀ n, P15345423316069840496.a n = A173391 (n + 1)

theorem P15345423316069840496.correct : P15345423316069840496.Spec := by
  intro n
  simp only [A173391, Nat.add_sub_cancel, A173391.P15345423316069840496.a, A173391.P17992935945244784005.a, A221905, A221905.P3969717268633884912.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A173391

/-! ## A173391.P1669619377445275128

`∑[A225367(2*n+1)+6]`
-/

namespace A173391.P1669619377445275128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225367 (2 * n + 1) + 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173391.P1669619377445275128

namespace A173391

/-- `∑[A225367(2*n+1)+6]` -/
def P1669619377445275128.Spec : Prop :=
  ∀ n, P1669619377445275128.a n = A173391 (n + 1)

end A173391

/-! ## A173391.P9158306104526410292

`3*(A000244(n)+2*(n+1))`
-/

namespace A173391.P9158306104526410292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A000244 n + (2 * (n + 1) : ℤ))

end

end A173391.P9158306104526410292

namespace A173391

/-- `3*(A000244(n)+2*(n+1))` -/
def P9158306104526410292.Spec : Prop :=
  ∀ n, P9158306104526410292.a n = A173391 (n + 1)

theorem P9158306104526410292.correct : P9158306104526410292.Spec := by
  intro n
  simp only [A173391, Nat.add_sub_cancel, A173391.P9158306104526410292.a, A173391.P17992935945244784005.a, A000244, A000244.P17162167222172810417.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A173391

/-! ## A173391.P17722636698979731624

`3*(Δ[A007051(n)]+2*(n+1))`
-/

namespace A173391.P17722636698979731624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007051 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (f1 (n + 1) - f1 n + (2 * (n + 1) : ℤ))

end

end A173391.P17722636698979731624

namespace A173391

/-- `3*(Δ[A007051(n)]+2*(n+1))` -/
def P17722636698979731624.Spec : Prop :=
  ∀ n, P17722636698979731624.a n = A173391 (n + 1)

end A173391

/-!
# A173392: Product of nonzero remainders of n mod k, for k = 1,2,3,...,n.

The programs for A173392, there is no canonical definition to state claims against.
-/

/-! ## A173392.P5365309492441329582

`∏[A101279(n+1)]*A322401(A028421(n))`
-/

namespace A173392.P5365309492441329582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101279 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) * A322401 (A028421 n).toNat

end

end A173392.P5365309492441329582

/-! ## A173392.P14347572215059849987

`A000010(p?[A000358(n+1)]-A144303(n))`
-/

namespace A173392.P14347572215059849987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000358 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - A144303 n).toNat

end

end A173392.P14347572215059849987

/-! ## A173392.P7095695327930576793

`∏{d}[1-n, A001221(#!)!]`
-/

namespace A173392.P7095695327930576793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, Nat.factorial (A001221 (Nat.factorial d)).toNat

end

end A173392.P7095695327930576793

/-! ## A173392.P8004508069728761241

`∏{e}[∏[A071283(3*n+4)], #]`
-/

namespace A173392.P8004508069728761241
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071283 (3 * n + 4)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A173392.P8004508069728761241

/-! ## A173392.P13991288997834786126

`∏[A357135(a(n-1)+n²)]` with `a(0)=1`
-/

namespace A173392.P13991288997834786126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A357135 (f1 (n - 1) + (n ^ 2 : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A173392.P13991288997834786126

/-!
# A173393: a(n) = 10*n + 12^n.

The programs for A173393, the canonical program `A173393.P6165332343269575780` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A173393 has offset 1).

The definition of A173393 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `10*(n+1)+12^(n+1)` (program `A173393.P6165332343269575780`, by `A173393.P6165332343269575780.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A173393.P6165332343269575780

`10*(n+1)+12^(n+1)`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A173393

/-- `10*(n+1)+12^(n+1)` -/
def P6165332343269575780.Spec : Prop :=
  ∀ n, (P6165332343269575780.a n : ℤ) = A173393 (n + 1)

theorem P6165332343269575780.correct : P6165332343269575780.Spec := by
  intro n
  simp only [A173393, Nat.add_sub_cancel]

end A173393

/-!
# A173394: Positions of powers of 2 in A084680.

The programs for A173394, there is no canonical definition to state claims against.
-/

/-! ## A173394.P12659756589246150667

`record[A004442(n)*A209229(A084680(n+1))]`
-/

namespace A173394.P12659756589246150667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 n * A209229 (A084680 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A173394.P12659756589246150667

/-! ## A173394.P6745132925118920363

`record[A109613(n)*A209229(A084680(n+1))]`
-/

namespace A173394.P6745132925118920363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 n * A209229 (A084680 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A173394.P6745132925118920363

/-! ## A173394.P3094075221309206672

`record[A141310(n)*A209229(A084680(n+1))]`
-/

namespace A173394.P3094075221309206672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141310 n * A209229 (A084680 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A173394.P3094075221309206672

/-! ## A173394.P6707445075181476137

`record[A045572(n+1)/A000265(A002329(n+1))]`
-/

namespace A173394.P6707445075181476137
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A045572 (n + 1) : ℚ) / (A000265 (A002329 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A173394.P6707445075181476137

/-! ## A173394.P3590902537654566222

`record[A132740(n+1)/A000265(A007732(n+1))]`
-/

namespace A173394.P3590902537654566222
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A132740 (n + 1) : ℚ) / (A000265 (A007732 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A173394.P3590902537654566222

/-!
# A173395: a(n) = (A002260(n) + 1) * (A004736(n) + 1).

The programs for A173395, the canonical program `A173395.P11168662136326346855` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A173395 has offset 1).

The definition of A173395 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A173395.P11168662136326346855

`(A002260(n+1)+1)*(A004736(n+1)+1)`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A173395

/-- `(A002260(n+1)+1)*(A004736(n+1)+1)` -/
def P11168662136326346855.Spec : Prop :=
  ∀ n, P11168662136326346855.a n = A173395 (n + 1)

theorem P11168662136326346855.correct : P11168662136326346855.Spec := by
  intro n
  simp only [A173395, Nat.add_sub_cancel]

end A173395

/-! ## A173395.P5111322961535840652

`(col(n)+2)*(row(n)-col(n)+2)`
-/

namespace A173395.P5111322961535840652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.triCol n + 2 : ℤ) * ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) + 2)

end

end A173395.P5111322961535840652

namespace A173395

/-- `(col(n)+2)*(row(n)-col(n)+2)` -/
def P5111322961535840652.Spec : Prop :=
  ∀ n, P5111322961535840652.a n = A173395 (n + 1)

end A173395

/-! ## A173395.P9328712694646141274

`A204250(n+1)+3`
-/

namespace A173395.P9328712694646141274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204250 (n + 1) + 3

end

end A173395.P9328712694646141274

namespace A173395

/-- `A204250(n+1)+3` -/
def P9328712694646141274.Spec : Prop :=
  ∀ n, P9328712694646141274.a n = A173395 (n + 1)

end A173395

/-! ## A173395.P17165713823767509908

`A309555(n)+A131507(n)`
-/

namespace A173395.P17165713823767509908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309555 n + A131507 n

end

end A173395.P17165713823767509908

namespace A173395

/-- `A309555(n)+A131507(n)` -/
def P17165713823767509908.Spec : Prop :=
  ∀ n, P17165713823767509908.a n = A173395 (n + 1)

end A173395

/-! ## A173395.P2619748179575519284

`A350361(n+1)+A059036(n)`
-/

namespace A173395.P2619748179575519284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350361 (n + 1) + A059036 n

end

end A173395.P2619748179575519284

namespace A173395

/-- `A350361(n+1)+A059036(n)` -/
def P2619748179575519284.Spec : Prop :=
  ∀ n, P2619748179575519284.a n = A173395 (n + 1)

end A173395

/-! ## A173395.P16348404242912239709

`A159919(n+1)-A059036(n)`
-/

namespace A173395.P16348404242912239709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159919 (n + 1) - A059036 n

end

end A173395.P16348404242912239709

namespace A173395

/-- `A159919(n+1)-A059036(n)` -/
def P16348404242912239709.Spec : Prop :=
  ∀ n, P16348404242912239709.a n = A173395 (n + 1)

theorem P16348404242912239709.correct : P16348404242912239709.Spec := by
  intro n
  simp only [A173395, Nat.add_sub_cancel, A173395.P16348404242912239709.a, A173395.P11168662136326346855.a, A002260, A002260.P9170571874073898642.a, A004736, A004736.P10337537277358081527.a, A059036, A059036.P14090632459187506294.a, A159919, A159919.P16525752381521222348.a, A000217, A000217.P10269402890581615239.a, A002024, A002024.P11700297927830783882.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A173395

/-! ## A173395.P18401587371982275037

`A133196(n+1)+A003991(n+1)`
-/

namespace A173395.P18401587371982275037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133196 (n + 1) + A003991 (n + 1)

end

end A173395.P18401587371982275037

namespace A173395

/-- `A133196(n+1)+A003991(n+1)` -/
def P18401587371982275037.Spec : Prop :=
  ∀ n, P18401587371982275037.a n = A173395 (n + 1)

end A173395

/-! ## A173395.P930656551711095092

`A003991(n+1)+A003056(n)+3`
-/

namespace A173395.P930656551711095092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003991 (n + 1) + (A003056 n + 3)

end

end A173395.P930656551711095092

namespace A173395

/-- `A003991(n+1)+A003056(n)+3` -/
def P930656551711095092.Spec : Prop :=
  ∀ n, P930656551711095092.a n = A173395 (n + 1)

end A173395

/-! ## A173395.P1096858360112653583

`A004247(n)+2*A003057(n+2)`
-/

namespace A173395.P1096858360112653583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004247 n + 2 * A003057 (n + 2)

end

end A173395.P1096858360112653583

namespace A173395

/-- `A004247(n)+2*A003057(n+2)` -/
def P1096858360112653583.Spec : Prop :=
  ∀ n, P1096858360112653583.a n = A173395 (n + 1)

end A173395

/-! ## A173395.P2788032081397885695

`A003991(n+1)+∑[A073423(n)]+1`
-/

namespace A173395.P2788032081397885695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073423 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003991 (n + 1) + (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A173395.P2788032081397885695

namespace A173395

/-- `A003991(n+1)+∑[A073423(n)]+1` -/
def P2788032081397885695.Spec : Prop :=
  ∀ n, P2788032081397885695.a n = A173395 (n + 1)

end A173395

/-! ## A173395.P4897987401845724561

`A003991(n+1)+∑[A010054(n)]+2`
-/

namespace A173395.P4897987401845724561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003991 (n + 1) + (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A173395.P4897987401845724561

namespace A173395

/-- `A003991(n+1)+∑[A010054(n)]+2` -/
def P4897987401845724561.Spec : Prop :=
  ∀ n, P4897987401845724561.a n = A173395 (n + 1)

end A173395

/-! ## A173395.P8024534959724557560

`A002260(n+1)+A141429(n+1)+1`
-/

namespace A173395.P8024534959724557560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) + (A141429 (n + 1) + 1)

end

end A173395.P8024534959724557560

namespace A173395

/-- `A002260(n+1)+A141429(n+1)+1` -/
def P8024534959724557560.Spec : Prop :=
  ∀ n, P8024534959724557560.a n = A173395 (n + 1)

end A173395

/-! ## A173395.P8357872290869447341

`A002024(n+1)+A003991(n+1)+2`
-/

namespace A173395.P8357872290869447341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (n + 1) + (A003991 (n + 1) + 2)

end

end A173395.P8357872290869447341

namespace A173395

/-- `A002024(n+1)+A003991(n+1)+2` -/
def P8357872290869447341.Spec : Prop :=
  ∀ n, P8357872290869447341.a n = A173395 (n + 1)

end A173395

/-! ## A173395.P16513002483963580413

`A003991(n+1)+A003057(n+2)+1`
-/

namespace A173395.P16513002483963580413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003991 (n + 1) + (A003057 (n + 2) + 1)

end

end A173395.P16513002483963580413

namespace A173395

/-- `A003991(n+1)+A003057(n+2)+1` -/
def P16513002483963580413.Spec : Prop :=
  ∀ n, P16513002483963580413.a n = A173395 (n + 1)

end A173395

/-! ## A173395.P4199991891852979144

`A005843(A003991(n+1)+1)-A004247(n)`
-/

namespace A173395.P4199991891852979144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A003991 (n + 1) + 1).toNat - A004247 n

end

end A173395.P4199991891852979144

namespace A173395

/-- `A005843(A003991(n+1)+1)-A004247(n)` -/
def P4199991891852979144.Spec : Prop :=
  ∀ n, P4199991891852979144.a n = A173395 (n + 1)

end A173395

/-! ## A173395.P7313640532911529524

`(A002260(n+1)+1)*A020725(A004736(n+1))`
-/

namespace A173395.P7313640532911529524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002260 (n + 1) + 1) * A020725 (A004736 (n + 1)).toNat

end

end A173395.P7313640532911529524

namespace A173395

/-- `(A002260(n+1)+1)*A020725(A004736(n+1))` -/
def P7313640532911529524.Spec : Prop :=
  ∀ n, P7313640532911529524.a n = A173395 (n + 1)

end A173395

/-! ## A173395.P2000792425189453996

`A002024(n+1)+A049627(n)+A049615(n)+2`
-/

namespace A173395.P2000792425189453996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (n + 1) + (A049627 n + A049615 n + 2)

end

end A173395.P2000792425189453996

namespace A173395

/-- `A002024(n+1)+A049627(n)+A049615(n)+2` -/
def P2000792425189453996.Spec : Prop :=
  ∀ n, P2000792425189453996.a n = A173395 (n + 1)

end A173395

/-! ## A173395.P17861558821181474596

`A141429(n+1)+A141429(n+1)/A004736(n+1)`
-/

namespace A173395.P17861558821181474596
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A141429 (n + 1) : ℚ) + (A141429 (n + 1) : ℚ) / (A004736 (n + 1) : ℚ)

end

end A173395.P17861558821181474596

namespace A173395

/-- `A141429(n+1)+A141429(n+1)/A004736(n+1)` -/
def P17861558821181474596.Spec : Prop :=
  ∀ n, P17861558821181474596.a n = (A173395 (n + 1) : ℚ)

end A173395

/-! ## A173395.P12874790246193318154

`A203996(n+1)+A203996(n+1)/A003983(n+1)`
-/

namespace A173395.P12874790246193318154
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A203996 (n + 1) : ℚ) + (A203996 (n + 1) : ℚ) / (A003983 (n + 1) : ℚ)

end

end A173395.P12874790246193318154

namespace A173395

/-- `A203996(n+1)+A203996(n+1)/A003983(n+1)` -/
def P12874790246193318154.Spec : Prop :=
  ∀ n, P12874790246193318154.a n = (A173395 (n + 1) : ℚ)

end A173395

/-! ## A173395.P18170666755345797875

`A020725(A002260(n+1))*A020725(A004736(n+1))`
-/

namespace A173395.P18170666755345797875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A002260 (n + 1)).toNat * A020725 (A004736 (n + 1)).toNat

end

end A173395.P18170666755345797875

namespace A173395

/-- `A020725(A002260(n+1))*A020725(A004736(n+1))` -/
def P18170666755345797875.Spec : Prop :=
  ∀ n, P18170666755345797875.a n = A173395 (n + 1)

end A173395

/-!
# A173396: a(n) = A046161(n) + A001803(n).

The programs for A173396, the canonical program `A173396.P12524725615118793413` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A173396 has offset 0).

The definition of A173396 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A173396.P16932061365790968242

`A001803(n)+A046161(n)`
-/

namespace A173396.P16932061365790968242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001803 n + A046161 n

end

end A173396.P16932061365790968242

namespace A173396

/-- `A001803(n)+A046161(n)` -/
def P16932061365790968242.Spec : Prop :=
  ∀ n, P16932061365790968242.a n = A173396 n

theorem P16932061365790968242.correct : P16932061365790968242.Spec := by
  intro n
  simp only [A173396, Nat.add_sub_cancel, A173396.P16932061365790968242.a, A173396.P12524725615118793413.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A173396

/-! ## A173396.P12524725615118793413

`A046161(n)+A001803(n)`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A173396

/-- `A046161(n)+A001803(n)` -/
def P12524725615118793413.Spec : Prop :=
  ∀ n, P12524725615118793413.a n = A173396 n

theorem P12524725615118793413.correct : P12524725615118793413.Spec := by
  intro n
  simp only [A173396]

end A173396

/-! ## A173396.P3668692481570955948

`A101926(n)+A173384(n)`
-/

namespace A173396.P3668692481570955948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101926 n + A173384 n

end

end A173396.P3668692481570955948

namespace A173396

/-- `A101926(n)+A173384(n)` -/
def P3668692481570955948.Spec : Prop :=
  ∀ n, P3668692481570955948.a n = A173396 n

end A173396

/-! ## A173396.P11132135681223378138

`A046161(n)+record[A163590(n)]`
-/

namespace A173396.P11132135681223378138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163590 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046161 n + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A173396.P11132135681223378138

namespace A173396

/-- `A046161(n)+record[A163590(n)]` -/
def P11132135681223378138.Spec : Prop :=
  ∀ n, P11132135681223378138.a n = A173396 n

end A173396

/-! ## A173396.P10134427164083731208

`A004730(2*n)+A001803(n)`
-/

namespace A173396.P10134427164083731208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004730 (2 * n) + A001803 n

end

end A173396.P10134427164083731208

namespace A173396

/-- `A004730(2*n)+A001803(n)` -/
def P10134427164083731208.Spec : Prop :=
  ∀ n, P10134427164083731208.a n = A173396 n

end A173396

/-! ## A173396.P16828992323424821879

`A060818(2*n)+A001803(n)`
-/

namespace A173396.P16828992323424821879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060818 (2 * n) + A001803 n

end

end A173396.P16828992323424821879

namespace A173396

/-- `A060818(2*n)+A001803(n)` -/
def P16828992323424821879.Spec : Prop :=
  ∀ n, P16828992323424821879.a n = A173396 n

end A173396

/-! ## A173396.P12732318964598874543

`A173384(n)+2*A046161(n)`
-/

namespace A173396.P12732318964598874543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173384 n + 2 * A046161 n

end

end A173396.P12732318964598874543

namespace A173396

/-- `A173384(n)+2*A046161(n)` -/
def P12732318964598874543.Spec : Prop :=
  ∀ n, P12732318964598874543.a n = A173396 n

theorem P12732318964598874543.correct : P12732318964598874543.Spec := by
  intro n
  simp only [A173396, Nat.add_sub_cancel, A173396.P12732318964598874543.a, A173396.P12524725615118793413.a, A001803, A001803.P12627378217154944539.a, A046161, A046161.P11774724709527425901.a, A173384, A173384.P18329896187983106844.a, A000120, A000120.P2816527436160941581.a, A005187, A005187.P3874015513960485494.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A173396

/-! ## A173396.P8166579203472227921

`A380909(2*n)+A001803(n)`
-/

namespace A173396.P8166579203472227921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380909 (2 * n) + A001803 n

end

end A173396.P8166579203472227921

namespace A173396

/-- `A380909(2*n)+A001803(n)` -/
def P8166579203472227921.Spec : Prop :=
  ∀ n, P8166579203472227921.a n = A173396 n

end A173396

/-! ## A173396.P6204111133073503051

`A001803(n)+A101926(n)/2`
-/

namespace A173396.P6204111133073503051
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001803 n : ℚ) + (A101926 n : ℚ) / 2

end

end A173396.P6204111133073503051

namespace A173396

/-- `A001803(n)+A101926(n)/2` -/
def P6204111133073503051.Spec : Prop :=
  ∀ n, P6204111133073503051.a n = (A173396 n : ℚ)

end A173396

/-! ## A173396.P13335237152563777287

`A001803(n)+2^A005187(n)`
-/

namespace A173396.P13335237152563777287
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001803 n : ℚ) + (2 : ℚ) ^ (A005187 n : ℤ)

end

end A173396.P13335237152563777287

namespace A173396

/-- `A001803(n)+2^A005187(n)` -/
def P13335237152563777287.Spec : Prop :=
  ∀ n, P13335237152563777287.a n = (A173396 n : ℚ)

end A173396

/-! ## A173396.P14291451143873986318

`A004731(2*n+1)+A001803(n)`
-/

namespace A173396.P14291451143873986318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004731 (2 * n + 1) + A001803 n

end

end A173396.P14291451143873986318

namespace A173396

/-- `A004731(2*n+1)+A001803(n)` -/
def P14291451143873986318.Spec : Prop :=
  ∀ n, P14291451143873986318.a n = A173396 n

end A173396

/-! ## A173396.P8184494552283029848

`A046161(n)+A004731(2*(n+1))`
-/

namespace A173396.P8184494552283029848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046161 n + A004731 (2 * (n + 1))

end

end A173396.P8184494552283029848

namespace A173396

/-- `A046161(n)+A004731(2*(n+1))` -/
def P8184494552283029848.Spec : Prop :=
  ∀ n, P8184494552283029848.a n = A173396 n

end A173396

/-! ## A173396.P6999658972003114451

`A086116(2*(n+1))+A046161(n)`
-/

namespace A173396.P6999658972003114451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086116 (2 * (n + 1)) + A046161 n

end

end A173396.P6999658972003114451

namespace A173396

/-- `A086116(2*(n+1))+A046161(n)` -/
def P6999658972003114451.Spec : Prop :=
  ∀ n, P6999658972003114451.a n = A173396 n

end A173396

/-! ## A173396.P13025496701299462907

`A173384(n)+A036069(2*n+1)`
-/

namespace A173396.P13025496701299462907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173384 n + A036069 (2 * n + 1)

end

end A173396.P13025496701299462907

namespace A173396

/-- `A173384(n)+A036069(2*n+1)` -/
def P13025496701299462907.Spec : Prop :=
  ∀ n, P13025496701299462907.a n = A173396 n

end A173396

/-! ## A173396.P3944940403554937052

`A163590(2*n+1)+A046161(n)`
-/

namespace A173396.P3944940403554937052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163590 (2 * n + 1) + A046161 n

end

end A173396.P3944940403554937052

namespace A173396

/-- `A163590(2*n+1)+A046161(n)` -/
def P3944940403554937052.Spec : Prop :=
  ∀ n, P3944940403554937052.a n = A173396 n

end A173396

/-! ## A173396.P2545029884896906684

`A240988(2*n+1)+A001803(n)`
-/

namespace A173396.P2545029884896906684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240988 (2 * n + 1) + A001803 n

end

end A173396.P2545029884896906684

namespace A173396

/-- `A240988(2*n+1)+A001803(n)` -/
def P2545029884896906684.Spec : Prop :=
  ∀ n, P2545029884896906684.a n = A173396 n

end A173396

/-! ## A173396.P9565797777774929225

`A380909(2*n+1)+A046161(n)`
-/

namespace A173396.P9565797777774929225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380909 (2 * n + 1) + A046161 n

end

end A173396.P9565797777774929225

namespace A173396

/-- `A380909(2*n+1)+A046161(n)` -/
def P9565797777774929225.Spec : Prop :=
  ∀ n, P9565797777774929225.a n = A173396 n

end A173396

/-! ## A173396.P13448667033531677904

`A004731(2*n+1)+record[A163590(n)]`
-/

namespace A173396.P13448667033531677904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163590 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004731 (2 * n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A173396.P13448667033531677904

namespace A173396

/-- `A004731(2*n+1)+record[A163590(n)]` -/
def P13448667033531677904.Spec : Prop :=
  ∀ n, P13448667033531677904.a n = A173396 n

end A173396

/-! ## A173396.P3218604180592827302

`A004731(2*(n+1))+A004730(2*n)`
-/

namespace A173396.P3218604180592827302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004731 (2 * (n + 1)) + A004730 (2 * n)

end

end A173396.P3218604180592827302

namespace A173396

/-- `A004731(2*(n+1))+A004730(2*n)` -/
def P3218604180592827302.Spec : Prop :=
  ∀ n, P3218604180592827302.a n = A173396 n

end A173396

/-! ## A173396.P1590704146371367869

`A163590(2*n+1)+A004730(2*n)`
-/

namespace A173396.P1590704146371367869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163590 (2 * n + 1) + A004730 (2 * n)

end

end A173396.P1590704146371367869

namespace A173396

/-- `A163590(2*n+1)+A004730(2*n)` -/
def P1590704146371367869.Spec : Prop :=
  ∀ n, P1590704146371367869.a n = A173396 n

end A173396

/-!
# A173397: Partial sums of A000019.

The programs for A173397, there is no canonical definition to state claims against.
-/

/-! ## A173397.P4605101306741032879

`∑[A000019(n+1)]`
-/

namespace A173397.P4605101306741032879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000019 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173397.P4605101306741032879

/-! ## A173397.P2055435994907906107

`A000019(Δ[n²]-n)+a(n-1)` with `a(0)=1`
-/

namespace A173397.P2055435994907906107
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000019 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat + a (n - 1)

end

end A173397.P2055435994907906107

/-! ## A173397.P6304326107252256056

`A000027(∑[A000019(Δ[n²]-n)])`
-/

namespace A173397.P6304326107252256056
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000019 ((f2 (n + 1) : ℤ) - (f2 n : ℤ) - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A173397.P6304326107252256056

/-! ## A173397.P18137166135662821167

`A000019(n+1)+floor(a(A023443(n)))` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A173397.P18137166135662821167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000019 (n + 1) + a (A023443 n).toNat

end

end A173397.P18137166135662821167

/-! ## A173397.P7584406225749637855

`∑[A000019(Δ[n²]-n)%A016791(n)]`
-/

namespace A173397.P7584406225749637855
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000019 ((f2 (n + 1) : ℤ) - (f2 n : ℤ) - (n : ℤ)).toNat) (A016791 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173397.P7584406225749637855

/-! ## A173397.P17292314860277413567

`A000027(a(n-1))+A000019(n+1)` with `a(0)=1`
-/

namespace A173397.P17292314860277413567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000027 (a (n - 1)).toNat + A000019 (n + 1)

end

end A173397.P17292314860277413567

/-! ## A173397.P5931009297376454924

`a(n-1)+A000019(n+1)%A001034(n+1)` with `a(0)=1`
-/

namespace A173397.P5931009297376454924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Int.tmod (A000019 (n + 1)) (A001034 (n + 1))

end

end A173397.P5931009297376454924

/-! ## A173397.P14685838638270229601

`A028310(a(n-1))+A000019(n+1)` with `a(0)=1`
-/

namespace A173397.P14685838638270229601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A028310 (a (n - 1)).toNat + A000019 (n + 1)

end

end A173397.P14685838638270229601

/-! ## A173397.P18172864459432088891

`∑[A000019(Δ[n²]-n)]%A078111(n)`
-/

namespace A173397.P18172864459432088891
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000019 ((f2 (n + 1) : ℤ) - (f2 n : ℤ) - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A078111 n)

end

end A173397.P18172864459432088891

/-! ## A173397.P5060954084842886920

`A065033(2*a(n-1))+A000019(n+1)` with `a(0)=1`
-/

namespace A173397.P5060954084842886920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A065033 (2 * a (n - 1)).toNat + A000019 (n + 1)

end

end A173397.P5060954084842886920

/-!
# A173398: (A007318 + A112468)/2.

The programs for A173398, the canonical program `A173398.P6312551355529356769` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A173398 has offset 1).

The definition of A173398 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A173398.P2934449997052305843

`A131054((n+1)²%comp[∑[n]])`
-/

namespace A173398.P2934449997052305843
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131054 ((n + 1) ^ 2 % SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A173398.P2934449997052305843

namespace A173398

/-- `A131054((n+1)²%comp[∑[n]])` -/
def P2934449997052305843.Spec : Prop :=
  ∀ n, P2934449997052305843.a n = A173398 (n + 1)

end A173398

/-! ## A173398.P6210617322911815787

`A279006(n)+A173402(n+1)`
-/

namespace A173398.P6210617322911815787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279006 n + A173402 (n + 1)

end

end A173398.P6210617322911815787

namespace A173398

/-- `A279006(n)+A173402(n+1)` -/
def P6210617322911815787.Spec : Prop :=
  ∀ n, P6210617322911815787.a n = A173398 (n + 1)

end A173398

/-! ## A173398.P12595449420712822668

`A007318(n)-A173402(n+1)`
-/

namespace A173398.P12595449420712822668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n - A173402 (n + 1)

end

end A173398.P12595449420712822668

namespace A173398

/-- `A007318(n)-A173402(n+1)` -/
def P12595449420712822668.Spec : Prop :=
  ∀ n, P12595449420712822668.a n = A173398 (n + 1)

end A173398

/-! ## A173398.P6312551355529356769

`(A279006(n)+A007318(n))/2`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A173398

/-- `(A279006(n)+A007318(n))/2` -/
def P6312551355529356769.Spec : Prop :=
  ∀ n, P6312551355529356769.a n = (A173398 (n + 1) : ℚ)

end A173398

/-! ## A173398.P3161970523183867976

`abs(A108086(n))-A173402(n+1)`
-/

namespace A173398.P3161970523183867976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A108086 n| - A173402 (n + 1)

end

end A173398.P3161970523183867976

namespace A173398

/-- `abs(A108086(n))-A173402(n+1)` -/
def P3161970523183867976.Spec : Prop :=
  ∀ n, P3161970523183867976.a n = A173398 (n + 1)

end A173398

/-! ## A173398.P3179551759252004789

`A014682(A279006(n)+A007318(n))`
-/

namespace A173398.P3179551759252004789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A279006 n + A007318 n).toNat

end

end A173398.P3179551759252004789

namespace A173398

/-- `A014682(A279006(n)+A007318(n))` -/
def P3179551759252004789.Spec : Prop :=
  ∀ n, P3179551759252004789.a n = A173398 (n + 1)

end A173398

/-! ## A173398.P17222057449830816703

`A001281(A279006(n)+A007318(n))`
-/

namespace A173398.P17222057449830816703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A279006 n + A007318 n).toNat

end

end A173398.P17222057449830816703

namespace A173398

/-- `A001281(A279006(n)+A007318(n))` -/
def P17222057449830816703.Spec : Prop :=
  ∀ n, P17222057449830816703.a n = A173398 (n + 1)

end A173398

/-! ## A173398.P9724457740593885733

`A004525(A279006(n)+A007318(n))`
-/

namespace A173398.P9724457740593885733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A279006 n + A007318 n).toNat

end

end A173398.P9724457740593885733

namespace A173398

/-- `A004525(A279006(n)+A007318(n))` -/
def P9724457740593885733.Spec : Prop :=
  ∀ n, P9724457740593885733.a n = A173398 (n + 1)

end A173398

/-! ## A173398.P9944594002030164865

`A004526(A279006(n)+A007318(n))`
-/

namespace A173398.P9944594002030164865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A279006 n + A007318 n).toNat

end

end A173398.P9944594002030164865

namespace A173398

/-- `A004526(A279006(n)+A007318(n))` -/
def P9944594002030164865.Spec : Prop :=
  ∀ n, P9944594002030164865.a n = A173398 (n + 1)

end A173398

/-! ## A173398.P1493959471782849660

`A025480(A279006(n)+A007318(n))`
-/

namespace A173398.P1493959471782849660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A279006 n + A007318 n).toNat

end

end A173398.P1493959471782849660

namespace A173398

/-- `A025480(A279006(n)+A007318(n))` -/
def P1493959471782849660.Spec : Prop :=
  ∀ n, P1493959471782849660.a n = A173398 (n + 1)

end A173398

/-! ## A173398.P5807611253913398713

`A026741(A279006(n)+A007318(n))`
-/

namespace A173398.P5807611253913398713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A279006 n + A007318 n).toNat

end

end A173398.P5807611253913398713

namespace A173398

/-- `A026741(A279006(n)+A007318(n))` -/
def P5807611253913398713.Spec : Prop :=
  ∀ n, P5807611253913398713.a n = A173398 (n + 1)

end A173398

/-! ## A173398.P6806293973893173709

`A110654(A279006(n)+A007318(n))`
-/

namespace A173398.P6806293973893173709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A279006 n + A007318 n).toNat

end

end A173398.P6806293973893173709

namespace A173398

/-- `A110654(A279006(n)+A007318(n))` -/
def P6806293973893173709.Spec : Prop :=
  ∀ n, P6806293973893173709.a n = A173398 (n + 1)

end A173398

/-!
# A173399: Partial sums of A000798.

The programs for A173399, there is no canonical definition to state claims against.
-/

/-! ## A173399.P16630441598546080974

`∑[A000798(n)]`
-/

namespace A173399.P16630441598546080974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000798 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173399.P16630441598546080974

/-! ## A173399.P1769332151021907820

`∑[A245767(∑[n]+n)]`
-/

namespace A173399.P1769332151021907820
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245767 (∑ j ∈ Finset.range (n + 1), f2 j + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173399.P1769332151021907820

/-! ## A173399.P15674671080527251352

`∑[A122836(n)+A122835(n)]`
-/

namespace A173399.P15674671080527251352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122836 n + A122835 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173399.P15674671080527251352

/-! ## A173399.P11529160996822759548

`∑[A326909(n)-A006058(n)]`
-/

namespace A173399.P11529160996822759548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326909 n - A006058 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173399.P11529160996822759548

/-! ## A173399.P16252371328552245303

`∑[A326878(A028310(n))-A006058(n)]`
-/

namespace A173399.P16252371328552245303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326878 (A028310 n).toNat - A006058 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173399.P16252371328552245303

