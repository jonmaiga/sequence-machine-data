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
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C038
import Seq.B000.C043
import Seq.B000.C045
import Seq.B000.C047
import Seq.B000.C048
import Seq.B000.C049
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
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C007
import Seq.B002.C008
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C005
import Seq.B004.C000
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B009.C000
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A390500: a(n) = Sum_{k=0..n} (-1)^k * (3*k+1) * binomial(4*n-k+1,n-k)/(4*n-k+1).

The programs for A390500, the canonical program `A390500.P2690763661996857251` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A390500 has offset 0).

The definition of A390500 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A390500.P2690763661996857251

`∑{#}[n, (-1)^#*(3*#+1)*C(4*n-#+1, n-#)/(4*n-#+1)]`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A390500

/-- `∑{#}[n, (-1)^#*(3*#+1)*C(4*n-#+1, n-#)/(4*n-#+1)]` -/
def P2690763661996857251.Spec : Prop :=
  ∀ n, P2690763661996857251.a n = (A390500 n : ℚ)

end A390500

/-! ## A390500.P8496269934193358529

`A386848(A241891(n))+A222379(2*n)`
-/

namespace A390500.P8496269934193358529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386848 (A241891 n).toNat + A222379 (2 * n)

end

end A390500.P8496269934193358529

namespace A390500

/-- `A386848(A241891(n))+A222379(2*n)` -/
def P8496269934193358529.Spec : Prop :=
  ∀ n, P8496269934193358529.a n = A390500 n

end A390500

/-!
# A390501: a(n) = floor((4^n - 3^n - n + 2)/2).

The programs for A390501, the canonical program `A390501.P11829287581223766444` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A390501 has offset 1).

The definition of A390501 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor((4^(n+1)-3^(n+1)-(n+1)+2)/2)` (program `A390501.P11829287581223766444`, by `A390501.P11829287581223766444.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A390501.P602156828736820051

`ogf((1-5x+12x^2-8x^3-6x^4)/(1-8x+18x^2-4x^3-19x^4+12x^5))`
-/

namespace A390501.P602156828736820051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -5, 12, -8, -6] [1, -8, 18, -4, -19, 12] n

end

end A390501.P602156828736820051

namespace A390501

/-- `ogf((1-5x+12x^2-8x^3-6x^4)/(1-8x+18x^2-4x^3-19x^4+12x^5))` -/
def P602156828736820051.Spec : Prop :=
  ∀ n, P602156828736820051.a n = A390501 (n + 1)

end A390501

/-! ## A390501.P11829287581223766444

`floor((4^(n+1)-3^(n+1)-(n+1)+2)/2)`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A390501

/-- `floor((4^(n+1)-3^(n+1)-(n+1)+2)/2)` -/
def P11829287581223766444.Spec : Prop :=
  ∀ n, P11829287581223766444.a n = A390501 (n + 1)

theorem P11829287581223766444.correct : P11829287581223766444.Spec := by
  intro n
  simp only [A390501, Nat.add_sub_cancel]

end A390501

/-! ## A390501.P18240785796849532156

`A084174(n)+A036239(n+1)`
-/

namespace A390501.P18240785796849532156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084174 n + A036239 (n + 1)

end

end A390501.P18240785796849532156

namespace A390501

/-- `A084174(n)+A036239(n+1)` -/
def P18240785796849532156.Spec : Prop :=
  ∀ n, P18240785796849532156.a n = A390501 (n + 1)

end A390501

/-!
# A390505: a(n) = AN-run sequence of the n-th 01-word, where all 01-words are lexicographically ordered as in A076478; see Comments.

The programs for A390505, there is no canonical definition to state claims against.
-/

/-! ## A390505.P11481958998219583424

`A007088(eq[A025876(n+2), A359902(3*(n+1))])`
-/

namespace A390505.P11481958998219583424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025876 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359902 (3 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A390505.P11481958998219583424

/-!
# A390506: a(n) = length of A390505(n).

The programs for A390506, there is no canonical definition to state claims against.
-/

/-! ## A390506.P16197807244836924703

`floor(log2(A390508(n+1)))`
-/

namespace A390506.P16197807244836924703
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A390508 (n + 1)).toNat

end

end A390506.P16197807244836924703

/-! ## A390506.P16432068815486398691

`A070939(floor(A390508(n+1)/2))`
-/

namespace A390506.P16432068815486398691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 ⌊(A390508 (n + 1) : ℚ) / 2⌋.toNat

end

end A390506.P16432068815486398691

/-! ## A390506.P6446051061397394874

`A000523(A390508(n+1))`
-/

namespace A390506.P6446051061397394874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (A390508 (n + 1)).toNat

end

end A390506.P6446051061397394874

/-!
# A390507: a(n) = number of 1's in A390505(n).

The programs for A390507, there is no canonical definition to state claims against.
-/

/-! ## A390507.P10471149486656878109

`A048881(A390508(n+1))`
-/

namespace A390507.P10471149486656878109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048881 (A390508 (n + 1)).toNat

end

end A390507.P10471149486656878109

/-! ## A390507.P3760630018532164265

`A358550(A374997(n+1)+A334704(n+1))`
-/

namespace A390507.P3760630018532164265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358550 (A374997 (n + 1) + A334704 (n + 1)).toNat

end

end A390507.P3760630018532164265

/-! ## A390507.P9049481515187024791

`A358550(A374998(n+1)+A334704(n+1))`
-/

namespace A390507.P9049481515187024791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358550 (A374998 (n + 1) + A334704 (n + 1)).toNat

end

end A390507.P9049481515187024791

/-!
# A390511: a(n) = prime(A391807(n)).

The programs for A390511, there is no canonical definition to state claims against.
-/

/-! ## A390511.P9082471421541761613

`A000040(A391807(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A390511.P9082471421541761613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A391807 (n + 1)).toNat

end

end A390511.P9082471421541761613

/-! ## A390511.P13369333262720355109

`A008578(A391807(n+1)+1)`
-/

namespace A390511.P13369333262720355109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A391807 (n + 1) + 1).toNat

end

end A390511.P13369333262720355109

/-!
# A390513: Rectangular array, (U(n,k)), read by descending antidiagonals. Let S be the sequence of all 01 words in lexicographic order. Then U(n,k) is the position in A390512 of the index of the word 0^(k-1)w(n), where w(n) is the n-th word in S that is 0 or has first letter 1.

The programs for A390513, there is no canonical definition to state claims against.
-/

/-! ## A390513.P12650053647743537779

`A153151(A345254(n+1))`
-/

namespace A390513.P12650053647743537779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153151 (A345254 (n + 1)).toNat

end

end A390513.P12650053647743537779

/-!
# A390514: Triangle read by rows: T(n,k) is the number of points missed by the longest non-intersecting loop starting at (0,0) on the n X k torus consisting of steps up and to the right, 1 <= k <= n.

The programs for A390514, there is no canonical definition to state claims against.
-/

/-! ## A390514.P1911847790823827784

`A075362(n+1)-A306779(n+1)`
-/

namespace A390514.P1911847790823827784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075362 (n + 1) - A306779 (n + 1)

end

end A390514.P1911847790823827784

/-! ## A390514.P6469765513987245138

`A031653(n+1)%A111604(n+1)`
-/

namespace A390514.P6469765513987245138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A031653 (n + 1)) (A111604 (n + 1))

end

end A390514.P6469765513987245138

/-! ## A390514.P8924004734634656188

`A363373(n)%A097847(n+1)`
-/

namespace A390514.P8924004734634656188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A363373 n) (A097847 (n + 1))

end

end A390514.P8924004734634656188

/-! ## A390514.P11880464370187663378

`A001221(A144917(n+1)^A186230(n+1))`
-/

namespace A390514.P11880464370187663378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (SequenceMachineLib.roundAway ((A144917 (n + 1) : ℚ) ^ (A186230 (n + 1) : ℤ))).toNat

end

end A390514.P11880464370187663378

/-! ## A390514.P16044640556478660792

`A001221(A326623(n+1)^A186230(n+1))`
-/

namespace A390514.P16044640556478660792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (SequenceMachineLib.roundAway ((A326623 (n + 1) : ℚ) ^ (A186230 (n + 1) : ℤ))).toNat

end

end A390514.P16044640556478660792

/-!
# A390515: Number of free polyforms made of T-pipes connected end-to-end (not perpendicular).

The programs for A390515, there is no canonical definition to state claims against.
-/

/-! ## A390515.P17353240750121975980

`lcm(A000285(n), A013602(A002110(n)))`
-/

namespace A390515.P17353240750121975980
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000285 n) (A013602 (A002110 n).toNat)

end

end A390515.P17353240750121975980

/-!
# A390516: a(n) is the number of occurrences of n^2 in A390375.

The programs for A390516, there is no canonical definition to state claims against.
-/

/-! ## A390516.P3670128388710575129

`A333381(∑[A124767(n)*A275892(2*n+5)])`
-/

namespace A390516.P3670128388710575129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124767 n * A275892 (2 * n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333381 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A390516.P3670128388710575129

/-!
# A390517: a(n) = Sum_{k=0..floor(n/3)} (-1)^k * (4*k+1) * binomial(3*n-5*k+1,n-3*k)/(3*n-5*k+1).

The programs for A390517, there is no canonical definition to state claims against.
-/

/-! ## A390517.P17305470263701682916

`A001462(A038142(comp[2*(n+1)]+1))`
-/

namespace A390517.P17305470263701682916
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 (A038142 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1)).toNat

end

end A390517.P17305470263701682916

/-! ## A390517.P5509901926939200305

`A011782(n)+A002372(A135750(n))`
-/

namespace A390517.P5509901926939200305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n + A002372 (A135750 n).toNat

end

end A390517.P5509901926939200305

/-!
# A390518: a(n) = Sum_{k=0..floor(n/4)} (-1)^k * (5*k+1) * binomial(3*n-7*k+1,n-4*k)/(3*n-7*k+1).

The programs for A390518, there is no canonical definition to state claims against.
-/

/-! ## A390518.P5099611997803470669

`3*A361233(a(n-1))` with `a(0)=1, a(1)=1`
-/

namespace A390518.P5099611997803470669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  3 * A361233 (a (n - 1)).toNat

end

end A390518.P5099611997803470669

/-! ## A390518.P15004758767435095631

`A214701(A001764(n))`
-/

namespace A390518.P15004758767435095631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214701 (A001764 n).toNat

end

end A390518.P15004758767435095631

/-!
# A390519: a(n) = Sum_{k=0..n} (4*k+1) * binomial(3*n+k+1,n-k)/(3*n+k+1).

The programs for A390519, the canonical program `A390519.P18323353594682062509` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A390519 has offset 0).

The definition of A390519 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A390519.P18323353594682062509

`∑{#}[n, (4*#+1)*C(3*n+#+1, n-#)/(3*n+#+1)]`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A390519

/-- `∑{#}[n, (4*#+1)*C(3*n+#+1, n-#)/(3*n+#+1)]` -/
def P18323353594682062509.Spec : Prop :=
  ∀ n, P18323353594682062509.a n = (A390519 n : ℚ)

end A390519

/-! ## A390519.P5222244177658511595

`A138164(2*n)`
-/

namespace A390519.P5222244177658511595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138164 (2 * n)

end

end A390519.P5222244177658511595

namespace A390519

/-- `A138164(2*n)` -/
def P5222244177658511595.Spec : Prop :=
  ∀ n, P5222244177658511595.a n = A390519 n

end A390519

/-! ## A390519.P14432272695700563580

`A191321(4*n)`
-/

namespace A390519.P14432272695700563580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191321 (4 * n)

end

end A390519.P14432272695700563580

namespace A390519

/-- `A191321(4*n)` -/
def P14432272695700563580.Spec : Prop :=
  ∀ n, P14432272695700563580.a n = A390519 n

end A390519

/-!
# A390520: a(n) = Sum_{k=0..n} (5*k+1) * binomial(3*n+2*k+1,n-k)/(3*n+2*k+1).

The programs for A390520, the canonical program `A390520.P17295142435797317077` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A390520 has offset 0).

The definition of A390520 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A390520.P17295142435797317077

`∑{#}[n, (5*#+1)*C(3*n+2*#+1, n-#)/(3*n+2*#+1)]`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A390520

/-- `∑{#}[n, (5*#+1)*C(3*n+2*#+1, n-#)/(3*n+2*#+1)]` -/
def P17295142435797317077.Spec : Prop :=
  ∀ n, P17295142435797317077.a n = (A390520 n : ℚ)

end A390520

/-!
# A390521: a(n) = limiting prime of the recurrence x(k) = 1 + (phi(x(k-1)) + phi(x(k-2))) / 2 started at x(0) = x(1) = n.

The programs for A390521, there is no canonical definition to state claims against.
-/

/-! ## A390521.P14567937085153022061

`A058977(A000010(n+1)%A353847(2*(n+1)))`
-/

namespace A390521.P14567937085153022061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058977 (Int.tmod (A000010 (n + 1)) (A353847 (2 * (n + 1)))).toNat

end

end A390521.P14567937085153022061

/-! ## A390521.P1437239491884876788

`A058977(A000010(n+1)%A036744(n+1))`
-/

namespace A390521.P1437239491884876788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058977 (Int.tmod (A000010 (n + 1)) (A036744 (n + 1))).toNat

end

end A390521.P1437239491884876788

/-! ## A390521.P17631610946895146685

`∏{p}[A000010(n+1)+1, #]%A331908(n+1)`
-/

namespace A390521.P17631610946895146685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((∏ p ∈ Nat.primeFactors (f1 n).natAbs, p : ℕ) : ℤ) (A331908 (n + 1))

end

end A390521.P17631610946895146685

/-! ## A390521.P16285658551299414698

`A008472(((n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]+1)%A283559(3*n+5))`
-/

namespace A390521.P16285658551299414698
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (Int.tmod (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1) : ℤ) : ℚ) + 1)) (A283559 (3 * n + 5))).toNat

end

end A390521.P16285658551299414698

/-! ## A390521.P4152402314756629529

`A071187(A066781(n+1))`
-/

namespace A390521.P4152402314756629529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071187 (A066781 (n + 1)).toNat

end

end A390521.P4152402314756629529

/-!
# A390524: Array read by ascending antidiagonals: A(n, k) = k * Fibonacci(n).

The programs for A390524, the canonical program `A390524.P3325490279493668610` is in `Seq.B001.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A390524 has offset 0).

The definition of A390524 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `col(n)*A000045(row(n)-col(n))` (program `A390524.P3325490279493668610`, by `A390524.P3325490279493668610.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A390524.P3325490279493668610

`col(n)*A000045(row(n)-col(n))`

The canonical program, it is in `Seq.B001.C014`.
-/

namespace A390524

/-- `col(n)*A000045(row(n)-col(n))` -/
def P3325490279493668610.Spec : Prop :=
  ∀ n, P3325490279493668610.a n = A390524 n

theorem P3325490279493668610.correct : P3325490279493668610.Spec := by
  intro n
  simp only [A390524]

end A390524

/-! ## A390524.P6174133227094776359

`A000045(A025581(n))*A002262(n)`
-/

namespace A390524.P6174133227094776359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A025581 n).toNat * A002262 n

end

end A390524.P6174133227094776359

namespace A390524

/-- `A000045(A025581(n))*A002262(n)` -/
def P6174133227094776359.Spec : Prop :=
  ∀ n, P6174133227094776359.a n = A390524 n

end A390524

/-! ## A390524.P9180101705106604801

`val(A055237(n), 5)*A000045(A025581(n))`
-/

namespace A390524.P9180101705106604801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (A055237 n).toNat 5 : ℤ) * A000045 (A025581 n).toNat

end

end A390524.P9180101705106604801

namespace A390524

/-- `val(A055237(n), 5)*A000045(A025581(n))` -/
def P9180101705106604801.Spec : Prop :=
  ∀ n, P9180101705106604801.a n = A390524 n

end A390524

/-! ## A390524.P954504912815008419

`A186437(A327001(n+1))`
-/

namespace A390524.P954504912815008419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186437 (A327001 (n + 1)).toNat

end

end A390524.P954504912815008419

namespace A390524

/-- `A186437(A327001(n+1))` -/
def P954504912815008419.Spec : Prop :=
  ∀ n, P954504912815008419.a n = A390524 n

end A390524

/-! ## A390524.P11024736087096944541

`A191400(A123354(n))`
-/

namespace A390524.P11024736087096944541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191400 (A123354 n).toNat

end

end A390524.P11024736087096944541

namespace A390524

/-- `A191400(A123354(n))` -/
def P11024736087096944541.Spec : Prop :=
  ∀ n, P11024736087096944541.a n = A390524 n

end A390524

/-!
# A390525: a(n) = A000217(n)*A000045(n).

The programs for A390525, the canonical program `A390525.P327141548468234781` is in `Seq.B001.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A390525 has offset 0).

The definition of A390525 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000217(n)*A000045(n)` (program `A390525.P327141548468234781`, by `A390525.P327141548468234781.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A390525.P7883156917132393975

`∑{#}[n, #*A000045(n)]`
-/

namespace A390525.P7883156917132393975
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (k : ℤ) * A000045 n

end

end A390525.P7883156917132393975

namespace A390525

/-- `∑{#}[n, #*A000045(n)]` -/
def P7883156917132393975.Spec : Prop :=
  ∀ n, P7883156917132393975.a n = A390525 n

end A390525

/-! ## A390525.P327141548468234781

`A000217(n)*A000045(n)`

The canonical program, it is in `Seq.B001.C014`.
-/

namespace A390525

/-- `A000217(n)*A000045(n)` -/
def P327141548468234781.Spec : Prop :=
  ∀ n, P327141548468234781.a n = A390525 n

theorem P327141548468234781.correct : P327141548468234781.Spec := by
  intro n
  simp only [A390525]

end A390525

/-! ## A390525.P4937114886200556700

`ogf((x+3x^3-x^4)/(1-3x+5x^3-3x^5-x^6))`
-/

namespace A390525.P4937114886200556700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 0, 3, -1] [1, -3, 0, 5, 0, -3, -1] n

end

end A390525.P4937114886200556700

namespace A390525

/-- `ogf((x+3x^3-x^4)/(1-3x+5x^3-3x^5-x^6))` -/
def P4937114886200556700.Spec : Prop :=
  ∀ n, P4937114886200556700.a n = A390525 n

end A390525

/-! ## A390525.P18115080539351951200

`3*a(n-1)-5*a(n-3)+3*a(n-5)+a(n-6)` with `a(0)=0, a(1)=1, a(2)=3, a(3)=12, a(4)=30, a(5)=75`
-/

namespace A390525.P18115080539351951200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 3, 12, 30, 75] fun n a =>
  3 * a (n - 1) - 5 * a (n - 3) + 3 * a (n - 5) + a (n - 6)

end

end A390525.P18115080539351951200

namespace A390525

/-- `3*a(n-1)-5*a(n-3)+3*a(n-5)+a(n-6)` -/
def P18115080539351951200.Spec : Prop :=
  ∀ n, P18115080539351951200.a n = A390525 n

end A390525

/-! ## A390525.P17036020391898505238

`∑[a(n-1)+a(n-2)]*∑[n]` with `a(0)=0, a(1)=1, a(2)=0`
-/

namespace A390525.P17036020391898505238
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 0] fun n f1 =>
  f1 (n - 1) + f1 (n - 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A390525.P17036020391898505238

namespace A390525

/-- `∑[a(n-1)+a(n-2)]*∑[n]` -/
def P17036020391898505238.Spec : Prop :=
  ∀ n, (P17036020391898505238.a n : ℤ) = A390525 n

end A390525

/-! ## A390525.P14970655056102547489

`∑[n]*A000045(n)`
-/

namespace A390525.P14970655056102547489
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A000045 n

end

end A390525.P14970655056102547489

namespace A390525

/-- `∑[n]*A000045(n)` -/
def P14970655056102547489.Spec : Prop :=
  ∀ n, P14970655056102547489.a n = A390525 n

end A390525

/-! ## A390525.P766632397423297373

`n/2*A099920(n)`
-/

namespace A390525.P766632397423297373
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 2 * (A099920 n : ℚ)

end

end A390525.P766632397423297373

namespace A390525

/-- `n/2*A099920(n)` -/
def P766632397423297373.Spec : Prop :=
  ∀ n, P766632397423297373.a n = (A390525 n : ℚ)

theorem P766632397423297373.correct : P766632397423297373.Spec := by
  intro n
  simp only [A390525, Nat.add_sub_cancel, A390525.P766632397423297373.a, A390525.P327141548468234781.a, A000045, A000045.P11838749114346432762.a, A000217, A000217.P10269402890581615239.a, A099920, A099920.P14828643535484264746.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A390525

/-! ## A390525.P3836515843523389285

`∑[n]*A212804(n+1)`
-/

namespace A390525.P3836515843523389285
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A212804 (n + 1)

end

end A390525.P3836515843523389285

namespace A390525

/-- `∑[n]*A212804(n+1)` -/
def P3836515843523389285.Spec : Prop :=
  ∀ n, P3836515843523389285.a n = A390525 n

end A390525

/-! ## A390525.P6637246525086515398

`∑[n]*A324969(n+1)`
-/

namespace A390525.P6637246525086515398
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A324969 (n + 1)

end

end A390525.P6637246525086515398

namespace A390525

/-- `∑[n]*A324969(n+1)` -/
def P6637246525086515398.Spec : Prop :=
  ∀ n, P6637246525086515398.a n = A390525 n

end A390525

/-! ## A390525.P11651387608849167073

`(n+1)/2*A045925(n)`
-/

namespace A390525.P11651387608849167073
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / 2 * (A045925 n : ℚ)

end

end A390525.P11651387608849167073

namespace A390525

/-- `(n+1)/2*A045925(n)` -/
def P11651387608849167073.Spec : Prop :=
  ∀ n, P11651387608849167073.a n = (A390525 n : ℚ)

theorem P11651387608849167073.correct : P11651387608849167073.Spec := by
  intro n
  simp only [A390525, Nat.add_sub_cancel, A390525.P11651387608849167073.a, A390525.P327141548468234781.a, A000045, A000045.P11838749114346432762.a, A000217, A000217.P10269402890581615239.a, A045925, A045925.P2609971174242523106.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A390525

/-! ## A390525.P13026566639038613068

`A086926(n)+A045925(n)`
-/

namespace A390525.P13026566639038613068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086926 n + A045925 n

end

end A390525.P13026566639038613068

namespace A390525

/-- `A086926(n)+A045925(n)` -/
def P13026566639038613068.Spec : Prop :=
  ∀ n, P13026566639038613068.a n = A390525 n

end A390525

/-! ## A390525.P6184618611450026069

`A000045(n)*A000217(n)`
-/

namespace A390525.P6184618611450026069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n * A000217 n

end

end A390525.P6184618611450026069

namespace A390525

/-- `A000045(n)*A000217(n)` -/
def P6184618611450026069.Spec : Prop :=
  ∀ n, P6184618611450026069.a n = A390525 n

theorem P6184618611450026069.correct : P6184618611450026069.Spec := by
  intro n
  simp only [A390525, Nat.add_sub_cancel, A390525.P6184618611450026069.a, A390525.P327141548468234781.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A390525

/-! ## A390525.P4510825501343573363

`A000045(n)*A161680(n+1)`
-/

namespace A390525.P4510825501343573363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n * A161680 (n + 1)

end

end A390525.P4510825501343573363

namespace A390525

/-- `A000045(n)*A161680(n+1)` -/
def P4510825501343573363.Spec : Prop :=
  ∀ n, P4510825501343573363.a n = A390525 n

theorem P4510825501343573363.correct : P4510825501343573363.Spec := by
  intro n
  simp only [A390525, Nat.add_sub_cancel, A390525.P4510825501343573363.a, A390525.P327141548468234781.a, A000045, A000045.P11838749114346432762.a, A000217, A000217.P10269402890581615239.a, A161680, A161680.P17206074215489759881.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A390525

/-! ## A390525.P2328029373459733821

`A000045(n)*A179865(n+1)`
-/

namespace A390525.P2328029373459733821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n * A179865 (n + 1)

end

end A390525.P2328029373459733821

namespace A390525

/-- `A000045(n)*A179865(n+1)` -/
def P2328029373459733821.Spec : Prop :=
  ∀ n, P2328029373459733821.a n = A390525 n

end A390525

/-! ## A390525.P13750337113351705214

`A000045(n)*A160791(2*n)`
-/

namespace A390525.P13750337113351705214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n * A160791 (2 * n)

end

end A390525.P13750337113351705214

namespace A390525

/-- `A000045(n)*A160791(2*n)` -/
def P13750337113351705214.Spec : Prop :=
  ∀ n, P13750337113351705214.a n = A390525 n

end A390525

/-! ## A390525.P9053523838844299187

`A000045(n)*A000124(n)-A000045(n)`
-/

namespace A390525.P9053523838844299187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n * A000124 n - A000045 n

end

end A390525.P9053523838844299187

namespace A390525

/-- `A000045(n)*A000124(n)-A000045(n)` -/
def P9053523838844299187.Spec : Prop :=
  ∀ n, P9053523838844299187.a n = A390525 n

end A390525

/-! ## A390525.P8290024153982080270

`A000217(n)*A001611(n)-A000217(n)`
-/

namespace A390525.P8290024153982080270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n * A001611 n - A000217 n

end

end A390525.P8290024153982080270

namespace A390525

/-- `A000217(n)*A001611(n)-A000217(n)` -/
def P8290024153982080270.Spec : Prop :=
  ∀ n, P8290024153982080270.a n = A390525 n

theorem P8290024153982080270.correct : P8290024153982080270.Spec := by
  intro n
  simp only [A390525, Nat.add_sub_cancel, A390525.P8290024153982080270.a, A390525.P327141548468234781.a, A000045, A000045.P11838749114346432762.a, A000217, A000217.P10269402890581615239.a, A001611, A001611.P16593652898942925329.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A390525

/-! ## A390525.P1916381062133356990

`A000045(n)-A000045(n)*A080956(n+1)`
-/

namespace A390525.P1916381062133356990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n - A000045 n * A080956 (n + 1)

end

end A390525.P1916381062133356990

namespace A390525

/-- `A000045(n)-A000045(n)*A080956(n+1)` -/
def P1916381062133356990.Spec : Prop :=
  ∀ n, P1916381062133356990.a n = A390525 n

theorem P1916381062133356990.correct : P1916381062133356990.Spec := by
  intro n
  simp only [A390525, Nat.add_sub_cancel, A390525.P1916381062133356990.a, A390525.P327141548468234781.a, A000045, A000045.P11838749114346432762.a, A000217, A000217.P10269402890581615239.a, A080956, A080956.P12689175688767201437.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A390525

/-! ## A390525.P4630669737916407747

`A000045(n)*A152947(n+2)-A000045(n)`
-/

namespace A390525.P4630669737916407747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n * A152947 (n + 2) - A000045 n

end

end A390525.P4630669737916407747

namespace A390525

/-- `A000045(n)*A152947(n+2)-A000045(n)` -/
def P4630669737916407747.Spec : Prop :=
  ∀ n, P4630669737916407747.a n = A390525 n

theorem P4630669737916407747.correct : P4630669737916407747.Spec := by
  intro n
  simp only [A390525, Nat.add_sub_cancel, A390525.P4630669737916407747.a, A390525.P327141548468234781.a, A000045, A000045.P11838749114346432762.a, A000217, A000217.P10269402890581615239.a, A152947, A152947.P16367813442806996368.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A390525

/-! ## A390525.P6542875384038429174

`(A000071(n+2)-A000071(n+1))*A000217(n)`
-/

namespace A390525.P6542875384038429174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000071 (n + 2) - A000071 (n + 1)) * A000217 n

end

end A390525.P6542875384038429174

namespace A390525

/-- `(A000071(n+2)-A000071(n+1))*A000217(n)` -/
def P6542875384038429174.Spec : Prop :=
  ∀ n, P6542875384038429174.a n = A390525 n

end A390525

/-!
# A390526: Norms of irreducible elements of Z[sqrt(10)].

The programs for A390526, there is no canonical definition to state claims against.
-/

/-! ## A390526.P13618577081550863511

`filter[A242664(n+2), A101040(#)]`
-/

namespace A390526.P13618577081550863511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242664 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A101040 (f1 j).toNat = 1) n)

end

end A390526.P13618577081550863511

/-! ## A390526.P2140340839085814113

`filter[A242664(n+3), A353799(#)]`
-/

namespace A390526.P2140340839085814113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242664 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353799 (f1 j).toNat = 1) n)

end

end A390526.P2140340839085814113

/-! ## A390526.P12123185569690952388

`∩[A084384(n+1), A242664(n+1)]`
-/

namespace A390526.P12123185569690952388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084384 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242664 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A390526.P12123185569690952388

/-! ## A390526.P14952045538468070981

`∩[A119675(n+1), A242664(n+1)]`
-/

namespace A390526.P14952045538468070981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119675 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242664 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A390526.P14952045538468070981

/-!
# A390527: a(n) = Sum_{k=0..n} (4*k+1) * binomial(2*n+2*k+1,n-k)/(2*n+2*k+1).

The programs for A390527, the canonical program `A390527.P2594141474114129464` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A390527 has offset 0).

The definition of A390527 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A390527.P2594141474114129464

`∑{#}[n, (4*#+1)*C(2*n+2*#+1, n-#)/(2*n+2*#+1)]`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A390527

/-- `∑{#}[n, (4*#+1)*C(2*n+2*#+1, n-#)/(2*n+2*#+1)]` -/
def P2594141474114129464.Spec : Prop :=
  ∀ n, P2594141474114129464.a n = (A390527 n : ℚ)

end A390527

/-! ## A390527.P586190088385292787

`A274112(4*n)`
-/

namespace A390527.P586190088385292787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274112 (4 * n)

end

end A390527.P586190088385292787

namespace A390527

/-- `A274112(4*n)` -/
def P586190088385292787.Spec : Prop :=
  ∀ n, P586190088385292787.a n = A390527 n

end A390527

/-! ## A390527.P2045256184797348309

`A274115(Δ[n²])`
-/

namespace A390527.P2045256184797348309
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274115 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A390527.P2045256184797348309

namespace A390527

/-- `A274115(Δ[n²])` -/
def P2045256184797348309.Spec : Prop :=
  ∀ n, P2045256184797348309.a n = A390527 n

end A390527

/-! ## A390527.P6347774791893049039

`A224747(2*n+1)+A125187(n)`
-/

namespace A390527.P6347774791893049039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224747 (2 * n + 1) + A125187 n

end

end A390527.P6347774791893049039

namespace A390527

/-- `A224747(2*n+1)+A125187(n)` -/
def P6347774791893049039.Spec : Prop :=
  ∀ n, P6347774791893049039.a n = A390527 n

end A390527

/-! ## A390527.P16111599382548850958

`A224747(2*n+1)+A224747(2*n)`
-/

namespace A390527.P16111599382548850958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224747 (2 * n + 1) + A224747 (2 * n)

end

end A390527.P16111599382548850958

namespace A390527

/-- `A224747(2*n+1)+A224747(2*n)` -/
def P16111599382548850958.Spec : Prop :=
  ∀ n, P16111599382548850958.a n = A390527 n

end A390527

/-! ## A390527.P927555996872078941

`A360143(n)+A360143(n)-A390267(n)`
-/

namespace A390527.P927555996872078941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360143 n + (A360143 n - A390267 n)

end

end A390527.P927555996872078941

namespace A390527

/-- `A360143(n)+A360143(n)-A390267(n)` -/
def P927555996872078941.Spec : Prop :=
  ∀ n, P927555996872078941.a n = A390527 n

end A390527

/-!
# A390528: a(n) = Sum_{k=0..n} (5*k+1) * binomial(2*n+3*k+1,n-k)/(2*n+3*k+1).

The programs for A390528, the canonical program `A390528.P2918262179521547621` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A390528 has offset 0).

The definition of A390528 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A390528.P2918262179521547621

`∑{#}[n, (5*#+1)*C(2*n+3*#+1, n-#)/(2*n+3*#+1)]`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A390528

/-- `∑{#}[n, (5*#+1)*C(2*n+3*#+1, n-#)/(2*n+3*#+1)]` -/
def P2918262179521547621.Spec : Prop :=
  ∀ n, P2918262179521547621.a n = (A390528 n : ℚ)

end A390528

/-! ## A390528.P17584362718545288945

`A394219(A087957(2*n))+A283784(n+3)`
-/

namespace A390528.P17584362718545288945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394219 (A087957 (2 * n)).toNat + A283784 (n + 3)

end

end A390528.P17584362718545288945

namespace A390528

/-- `A394219(A087957(2*n))+A283784(n+3)` -/
def P17584362718545288945.Spec : Prop :=
  ∀ n, P17584362718545288945.a n = A390528 n

end A390528

/-!
# A390529: Weighted count of equivalence classes of words w of length n+1 over {a, b, c, d, A, *} having exactly n letters, exactly one *, an even number of lowercase a's, and weight (-1)^(A(w)), where A(w) is the number of uppercase letters A.

The programs for A390529, the canonical program `A390529.P5102562868068074245` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A390529 has offset 0).

The definition of A390529 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A390529.P5102562868068074245

`2^n*(1+2^(n+1))-(3^(n+1)+1)/2`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A390529

/-- `2^n*(1+2^(n+1))-(3^(n+1)+1)/2` -/
def P5102562868068074245.Spec : Prop :=
  ∀ n, P5102562868068074245.a n = (A390529 n : ℚ)

end A390529

/-! ## A390529.P4856335645180459990

`ogf((1-5x+7x^2)/(1-10x+35x^2-50x^3+24x^4))`
-/

namespace A390529.P4856335645180459990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -5, 7] [1, -10, 35, -50, 24] n

end

end A390529.P4856335645180459990

namespace A390529

/-- `ogf((1-5x+7x^2)/(1-10x+35x^2-50x^3+24x^4))` -/
def P4856335645180459990.Spec : Prop :=
  ∀ n, P4856335645180459990.a n = A390529 n

end A390529

/-! ## A390529.P17294441646684523038

`∑[A083330(n)]`
-/

namespace A390529.P17294441646684523038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083330 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A390529.P17294441646684523038

namespace A390529

/-- `∑[A083330(n)]` -/
def P17294441646684523038.Spec : Prop :=
  ∀ n, P17294441646684523038.a n = A390529 n

end A390529

/-! ## A390529.P16825575640641544738

`A053154(n+1)`
-/

namespace A390529.P16825575640641544738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053154 (n + 1)

end

end A390529.P16825575640641544738

namespace A390529

/-- `A053154(n+1)` -/
def P16825575640641544738.Spec : Prop :=
  ∀ n, P16825575640641544738.a n = A390529 n

end A390529

/-! ## A390529.P337723650974051895

`record[A053154(abs(1-n))]`
-/

namespace A390529.P337723650974051895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053154 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A390529.P337723650974051895

namespace A390529

/-- `record[A053154(abs(1-n))]` -/
def P337723650974051895.Spec : Prop :=
  ∀ n, P337723650974051895.a n = A390529 n

end A390529

/-! ## A390529.P6075299066713350314

`(A083324(n+1)-1)/2`
-/

namespace A390529.P6075299066713350314
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A083324 (n + 1) - 1 : ℚ) / 2

end

end A390529.P6075299066713350314

namespace A390529

/-- `(A083324(n+1)-1)/2` -/
def P6075299066713350314.Spec : Prop :=
  ∀ n, P6075299066713350314.a n = (A390529 n : ℚ)

end A390529

/-! ## A390529.P5824458858701690247

`xor(A053152(n+1), A083420(n))`
-/

namespace A390529.P5824458858701690247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A053152 (n + 1)) (A083420 n)

end

end A390529.P5824458858701690247

namespace A390529

/-- `xor(A053152(n+1), A083420(n))` -/
def P5824458858701690247.Spec : Prop :=
  ∀ n, P5824458858701690247.a n = A390529 n

end A390529

/-!
# A390532: Sequences A001477 and A000079 interlaced.

The programs for A390532, the canonical program `A390532.P391432938433456668` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A390532 has offset 0).

The definition of A390532 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A390532.P9330799763923851783

`n/2+(2^((n-1)/2)-n/2)*n%2`
-/

namespace A390532.P9330799763923851783
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((n : ℚ) / 2 : ℝ) + ((2 : ℝ) ^ (((n : ℤ) - 1 : ℚ) / 2 : ℝ) - ((n : ℚ) / 2 : ℝ)) * ((n % 2 : ℕ) : ℝ)

end

end A390532.P9330799763923851783

namespace A390532

/-- `n/2+(2^((n-1)/2)-n/2)*n%2` -/
def P9330799763923851783.Spec : Prop :=
  ∀ n, P9330799763923851783.a n = (A390532 n : ℝ)

end A390532

/-! ## A390532.P15774199164942504890

`ogf((x+x^2-2x^3-2x^4+x^5)/(1-4x^2+5x^4-2x^6))`
-/

namespace A390532.P15774199164942504890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 1, -2, -2, 1] [1, 0, -4, 0, 5, 0, -2] n

end

end A390532.P15774199164942504890

namespace A390532

/-- `ogf((x+x^2-2x^3-2x^4+x^5)/(1-4x^2+5x^4-2x^6))` -/
def P15774199164942504890.Spec : Prop :=
  ∀ n, P15774199164942504890.a n = A390532 n

end A390532

/-! ## A390532.P391432938433456668

`4*a(n-2)-5*a(n-4)+2*a(n-6)` with `a(0)=0, a(1)=1, a(2)=1, a(3)=2, a(4)=2, a(5)=4`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A390532

/-- `4*a(n-2)-5*a(n-4)+2*a(n-6)` -/
def P391432938433456668.Spec : Prop :=
  ∀ n, P391432938433456668.a n = A390532 n

theorem P391432938433456668.correct : P391432938433456668.Spec := by
  intro n
  simp only [A390532]

end A390532

/-! ## A390532.P11166513777341242930

`A138219(n)/2`
-/

namespace A390532.P11166513777341242930
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138219 n : ℚ) / 2

end

end A390532.P11166513777341242930

namespace A390532

/-- `A138219(n)/2` -/
def P11166513777341242930.Spec : Prop :=
  ∀ n, P11166513777341242930.a n = (A390532 n : ℚ)

end A390532

/-! ## A390532.P11390639816470833059

`a(n-2)+gcd((n+1)%2, a(n-2))` with `a(0)=0, a(1)=1`
-/

namespace A390532.P11390639816470833059
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 2) + Nat.gcd ((n + 1) % 2) (a (n - 2))

end

end A390532.P11390639816470833059

namespace A390532

/-- `a(n-2)+gcd((n+1)%2, a(n-2))` -/
def P11390639816470833059.Spec : Prop :=
  ∀ n, (P11390639816470833059.a n : ℤ) = A390532 n

end A390532

/-! ## A390532.P8225602492841187586

`A242971(n)-A059841(n)`
-/

namespace A390532.P8225602492841187586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242971 n - A059841 n

end

end A390532.P8225602492841187586

namespace A390532

/-- `A242971(n)-A059841(n)` -/
def P8225602492841187586.Spec : Prop :=
  ∀ n, P8225602492841187586.a n = A390532 n

end A390532

/-! ## A390532.P9716190518491924340

`A132344(n)%A097110(n)`
-/

namespace A390532.P9716190518491924340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A132344 n) (A097110 n)

end

end A390532.P9716190518491924340

namespace A390532

/-- `A132344(n)%A097110(n)` -/
def P9716190518491924340.Spec : Prop :=
  ∀ n, P9716190518491924340.a n = A390532 n

end A390532

/-! ## A390532.P8033561022179981780

`A242971(n)-A198631(A006519(n+1))`
-/

namespace A390532.P8033561022179981780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242971 n - A198631 (A006519 (n + 1)).toNat

end

end A390532.P8033561022179981780

namespace A390532

/-- `A242971(n)-A198631(A006519(n+1))` -/
def P8033561022179981780.Spec : Prop :=
  ∀ n, P8033561022179981780.a n = A390532 n

end A390532

/-!
# A390534: Index of first occurrence of n in A390514.

The programs for A390534, there is no canonical definition to state claims against.
-/

/-! ## A390534.P2457856330922002634

`A072657(n)+A054346(A054333(n))`
-/

namespace A390534.P2457856330922002634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072657 n + A054346 (A054333 n).toNat

end

end A390534.P2457856330922002634

/-!
# A390538: Numbers that do not exceed the square of their squarefree kernel.

The programs for A390538, the canonical program `A390538.P484711700725292266` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A390538 has offset 1).

The definition of A390538 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9723 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A390538.P15883875972546182251

`comp[A059172(n+1)-1]+1`
-/

namespace A390538.P15883875972546182251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059172 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A390538.P15883875972546182251

namespace A390538

/-- `comp[A059172(n+1)-1]+1` -/
def P15883875972546182251.Spec : Prop :=
  ∀ n, (P15883875972546182251.a n : ℤ) = A390538 (n + 1)

end A390538

/-! ## A390538.P484711700725292266

`lt[n, ∏{p}[n+1, #²]]+1`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A390538

/-- `lt[n, ∏{p}[n+1, #²]]+1` -/
def P484711700725292266.Spec : Prop :=
  ∀ n, (P484711700725292266.a n : ℤ) = A390538 (n + 1)

theorem P484711700725292266.correct : P484711700725292266.Spec := by
  intro n
  simp only [A390538, Nat.add_sub_cancel]

end A390538

/-! ## A390538.P15670630251579037732

`lt[(1-n)², ∏{p}[n, #^4]]`
-/

namespace A390538.P15670630251579037732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (n : ℤ)) ^ 2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n), p ^ 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A390538.P15670630251579037732

namespace A390538

/-- `lt[(1-n)², ∏{p}[n, #^4]]` -/
def P15670630251579037732.Spec : Prop :=
  ∀ n, (P15670630251579037732.a n : ℤ) = A390538 (n + 1)

end A390538

/-! ## A390538.P580344065020843773

`lt[((n-1)/∏{p}[n, #])², n]`
-/

namespace A390538.P580344065020843773
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((n : ℤ) - 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ)) ^ 2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℚ)) n

end

end A390538.P580344065020843773

namespace A390538

/-- `lt[((n-1)/∏{p}[n, #])², n]` -/
def P580344065020843773.Spec : Prop :=
  ∀ n, (P580344065020843773.a n : ℤ) = A390538 (n + 1)

end A390538

/-! ## A390538.P568381728978687186

`lt[(n-1)², ∏{p}[n, #²]²]`
-/

namespace A390538.P568381728978687186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) ^ 2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∏ p ∈ Nat.primeFactors (f3 n), p ^ 2) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A390538.P568381728978687186

namespace A390538

/-- `lt[(n-1)², ∏{p}[n, #²]²]` -/
def P568381728978687186.Spec : Prop :=
  ∀ n, (P568381728978687186.a n : ℤ) = A390538 (n + 1)

end A390538

/-!
# A390539: Achilles numbers that are not cubefull.

The programs for A390539, there is no canonical definition to state claims against.
-/

/-! ## A390539.P8511709619330053560

`∪[A375073(n+1), A392907(n+1)]`
-/

namespace A390539.P8511709619330053560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375073 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392907 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A390539.P8511709619330053560

/-! ## A390539.P18238720300533356539

`∩[A052486(n+1), A389558(n+1)]`
-/

namespace A390539.P18238720300533356539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052486 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389558 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A390539.P18238720300533356539

/-! ## A390539.P9840164229761801213

`∩[A102834(n+1), A389558(n+1)]`
-/

namespace A390539.P9840164229761801213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102834 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389558 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A390539.P9840164229761801213

/-! ## A390539.P7809884853807740451

`∩[A389558(n+1), A389959(n+1)]`
-/

namespace A390539.P7809884853807740451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389558 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389959 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A390539.P7809884853807740451

/-! ## A390539.P1155926902278921265

`∩[A052486(n+1), A387256(n+1)]`
-/

namespace A390539.P1155926902278921265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052486 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387256 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A390539.P1155926902278921265

/-! ## A390539.P13576748653263235527

`∩[A102834(n+1), A387256(n+1)]`
-/

namespace A390539.P13576748653263235527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102834 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387256 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A390539.P13576748653263235527

/-! ## A390539.P13311558460641941025

`∩[A387256(n+1), A389959(n+1)]`
-/

namespace A390539.P13311558460641941025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387256 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389959 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A390539.P13311558460641941025

/-! ## A390539.P15391501623568826783

`∩[A052486(n+1), A325240(n+1)]`
-/

namespace A390539.P15391501623568826783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052486 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325240 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A390539.P15391501623568826783

/-! ## A390539.P17301804798335517877

`∩[A102834(n+1), A325240(n+1)]`
-/

namespace A390539.P17301804798335517877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102834 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325240 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A390539.P17301804798335517877

/-! ## A390539.P15511397184142752922

`∩[A325240(n+1), A389959(n+1)]`
-/

namespace A390539.P15511397184142752922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325240 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389959 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A390539.P15511397184142752922

/-! ## A390539.P948267729059373928

`∩[A069236(n+1), A325240(n+1)]`
-/

namespace A390539.P948267729059373928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069236 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325240 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A390539.P948267729059373928

/-! ## A390539.P17550266219457879422

`∩[A069236(n+1), A387256(n+1)]`
-/

namespace A390539.P17550266219457879422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069236 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387256 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A390539.P17550266219457879422

/-! ## A390539.P6547662715250782433

`∩[A069236(n+1), A389558(n+1)]`
-/

namespace A390539.P6547662715250782433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069236 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389558 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A390539.P6547662715250782433

/-! ## A390539.P313238835306003964

`∩[A325240(n+1), A389753(n+1)]`
-/

namespace A390539.P313238835306003964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325240 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389753 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A390539.P313238835306003964

/-! ## A390539.P11459615388112626878

`∩[A387256(n+1), A389753(n+1)]`
-/

namespace A390539.P11459615388112626878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387256 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389753 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A390539.P11459615388112626878

/-! ## A390539.P9685260381149150119

`∩[A389558(n+1), A389753(n+1)]`
-/

namespace A390539.P9685260381149150119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389558 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389753 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A390539.P9685260381149150119

/-! ## A390539.P15144399858084527849

`∩[A325240(n+1), A388306(n+1)]`
-/

namespace A390539.P15144399858084527849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325240 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388306 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A390539.P15144399858084527849

/-! ## A390539.P1417168219421188160

`∩[A387256(n+1), A388306(n+1)]`
-/

namespace A390539.P1417168219421188160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387256 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388306 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A390539.P1417168219421188160

/-! ## A390539.P2287470872328192575

`∩[A388306(n+1), A389558(n+1)]`
-/

namespace A390539.P2287470872328192575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388306 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389558 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A390539.P2287470872328192575

/-! ## A390539.P3492012171065858190

`∩[A325240(n+1), A380168(n+1)]`
-/

namespace A390539.P3492012171065858190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325240 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380168 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A390539.P3492012171065858190

/-!
# A390540: Cubefull powers of squarefree numbers.

The programs for A390540, there is no canonical definition to state claims against.
-/

/-! ## A390540.P3835883904161808385

`∪[A246549(n+1), A388304(n+1)]`
-/

namespace A390540.P3835883904161808385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246549 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388304 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A390540.P3835883904161808385

/-! ## A390540.P203335727358781572

`∩[A036966(n+1), A072777(n+1)]`
-/

namespace A390540.P203335727358781572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036966 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072777 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A390540.P203335727358781572

/-! ## A390540.P6066355661083545361

`∩[A072777(n+1), A076467(n+1)]`
-/

namespace A390540.P6066355661083545361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072777 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076467 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A390540.P6066355661083545361

/-! ## A390540.P16396672195985023650

`∩[A072777(n+1), A349306(n+1)]`
-/

namespace A390540.P16396672195985023650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072777 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349306 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A390540.P16396672195985023650

/-! ## A390540.P7116167213749824643

`∩[A072777(n+1), A320966(n+1)]`
-/

namespace A390540.P7116167213749824643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072777 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320966 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A390540.P7116167213749824643

/-! ## A390540.P15063987356220337253

`∩[A076292(n+1), A320966(n+1)]`
-/

namespace A390540.P15063987356220337253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076292 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320966 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A390540.P15063987356220337253

/-! ## A390540.P7460253957447552799

`∩[A072777(n+1), A354561(n+1)]`
-/

namespace A390540.P7460253957447552799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072777 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354561 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A390540.P7460253957447552799

/-! ## A390540.P7385570787115747912

`∩[A076292(n+1), A354561(n+1)]`
-/

namespace A390540.P7385570787115747912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076292 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354561 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A390540.P7385570787115747912

/-! ## A390540.P8130261241358079229

`∩[A059172(n+1), A072777(n+1)]`
-/

namespace A390540.P8130261241358079229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059172 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072777 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A390540.P8130261241358079229

/-! ## A390540.P12799434172662904617

`∩[A059172(n+1), A076292(n+1)]`
-/

namespace A390540.P12799434172662904617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059172 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076292 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A390540.P12799434172662904617

/-!
# A390541: a(n) = Sum_{k=0..n} (-1)^(n-k) * binomial(3*k+1,k).

The programs for A390541, the canonical program `A390541.P13629483670581937413` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A390541 has offset 0).

The definition of A390541 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A390541.P13629483670581937413

`∑{#}[n, (-1)^(n-#)*C(3*#+1, #)]`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A390541

/-- `∑{#}[n, (-1)^(n-#)*C(3*#+1, #)]` -/
def P13629483670581937413.Spec : Prop :=
  ∀ n, P13629483670581937413.a n = (A390541 n : ℚ)

end A390541

/-! ## A390541.P3504011345047521333

`A045721(n)-a(n-1)` with `a(0)=1`
-/

namespace A390541.P3504011345047521333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A045721 n - a (n - 1)

end

end A390541.P3504011345047521333

namespace A390541

/-- `A045721(n)-a(n-1)` -/
def P3504011345047521333.Spec : Prop :=
  ∀ n, P3504011345047521333.a n = A390541 n

end A390541

/-! ## A390541.P11381211771776704244

`C(2*n+1+n, n)-a(n-1)` with `a(0)=1`
-/

namespace A390541.P11381211771776704244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (Nat.choose (2 * n + 1 + n) n : ℤ) - a (n - 1)

end

end A390541.P11381211771776704244

namespace A390541

/-- `C(2*n+1+n, n)-a(n-1)` -/
def P11381211771776704244.Spec : Prop :=
  ∀ n, P11381211771776704244.a n = A390541 n

end A390541

/-! ## A390541.P10949372879221234825

`record[A100400(n+1)]-a(n-1)` with `a(0)=1`
-/

namespace A390541.P10949372879221234825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100400 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - a (n - 1)

end

end A390541.P10949372879221234825

namespace A390541

/-- `record[A100400(n+1)]-a(n-1)` -/
def P10949372879221234825.Spec : Prop :=
  ∀ n, P10949372879221234825.a n = A390541 n

end A390541

/-!
# A390542: a(n) = Sum_{k=0..n} (-1)^(n-k) * binomial(n+2*k+1,k).

The programs for A390542, the canonical program `A390542.P17150677611682475609` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A390542 has offset 0).

The definition of A390542 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A390542.P17150677611682475609

`∑{#}[n, (-1)^(n-#)*C(n+2*#+1, #)]`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A390542

/-- `∑{#}[n, (-1)^(n-#)*C(n+2*#+1, #)]` -/
def P17150677611682475609.Spec : Prop :=
  ∀ n, P17150677611682475609.a n = (A390542 n : ℚ)

end A390542

/-! ## A390542.P7575243566225534586

`A054106(C(4*n+2-n, 2)+n)`
-/

namespace A390542.P7575243566225534586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054106 (Nat.choose ((4 * n + 2 : ℤ) - (n : ℤ)).toNat 2 + n)

end

end A390542.P7575243566225534586

namespace A390542

/-- `A054106(C(4*n+2-n, 2)+n)` -/
def P7575243566225534586.Spec : Prop :=
  ∀ n, P7575243566225534586.a n = A390542 n

end A390542

/-! ## A390542.P12880357001942690793

`A054106(A051682(n+1))`
-/

namespace A390542.P12880357001942690793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054106 (A051682 (n + 1)).toNat

end

end A390542.P12880357001942690793

namespace A390542

/-- `A054106(A051682(n+1))` -/
def P12880357001942690793.Spec : Prop :=
  ∀ n, P12880357001942690793.a n = A390542 n

end A390542

/-! ## A390542.P18375702230042389990

`A054106(A062708(n+1))`
-/

namespace A390542.P18375702230042389990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054106 (A062708 (n + 1)).toNat

end

end A390542.P18375702230042389990

namespace A390542

/-- `A054106(A062708(n+1))` -/
def P18375702230042389990.Spec : Prop :=
  ∀ n, P18375702230042389990.a n = A390542 n

end A390542

/-! ## A390542.P10803121500216407980

`A054106(A060544(n+1)+n)`
-/

namespace A390542.P10803121500216407980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054106 (A060544 (n + 1) + (n : ℤ)).toNat

end

end A390542.P10803121500216407980

namespace A390542

/-- `A054106(A060544(n+1)+n)` -/
def P10803121500216407980.Spec : Prop :=
  ∀ n, P10803121500216407980.a n = A390542 n

end A390542

/-!
# A390543: a(n) = Sum_{k=0..n} (-1)^k * binomial(3*n-k+1,n-k).

The programs for A390543, the canonical program `A390543.P3075550854475415653` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A390543 has offset 0).

The definition of A390543 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n, (-1)^#*C(3*n-#+1, n-#)]` (program `A390543.P3075550854475415653`, by `A390543.P3075550854475415653.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A390543.P18262565186624992105

`∑{#}[n, (-2)^#*C(3*n+2, n-#)]`
-/

namespace A390543.P18262565186624992105
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (-2) ^ k * (Nat.choose (3 * n + 2) ((n : ℤ) - (k : ℤ)).toNat : ℤ)

end

end A390543.P18262565186624992105

namespace A390543

/-- `∑{#}[n, (-2)^#*C(3*n+2, n-#)]` -/
def P18262565186624992105.Spec : Prop :=
  ∀ n, P18262565186624992105.a n = A390543 n

end A390543

/-! ## A390543.P13102230840931885763

`∑{#}[floor(n/2), C(3*n-2*#, n-2*#)]`
-/

namespace A390543.P13102230840931885763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 2⌋

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1).toNat, Nat.choose ((3 * n : ℤ) - (2 * k : ℤ)).toNat ((n : ℤ) - (2 * k : ℤ)).toNat

end

end A390543.P13102230840931885763

namespace A390543

/-- `∑{#}[floor(n/2), C(3*n-2*#, n-2*#)]` -/
def P13102230840931885763.Spec : Prop :=
  ∀ n, (P13102230840931885763.a n : ℤ) = A390543 n

end A390543

/-! ## A390543.P3075550854475415653

`∑{#}[n, (-1)^#*C(3*n-#+1, n-#)]`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A390543

/-- `∑{#}[n, (-1)^#*C(3*n-#+1, n-#)]` -/
def P3075550854475415653.Spec : Prop :=
  ∀ n, P3075550854475415653.a n = A390543 n

theorem P3075550854475415653.correct : P3075550854475415653.Spec := by
  intro n
  simp only [A390543]

end A390543

/-! ## A390543.P4061584840938735981

`A165817(n+1)-A371813(n+1)`
-/

namespace A390543.P4061584840938735981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165817 (n + 1) - A371813 (n + 1)

end

end A390543.P4061584840938735981

namespace A390543

/-- `A165817(n+1)-A371813(n+1)` -/
def P4061584840938735981.Spec : Prop :=
  ∀ n, P4061584840938735981.a n = A390543 n

end A390543

/-! ## A390543.P17033711315939230196

`A092879(∑[4*n])`
-/

namespace A390543.P17033711315939230196
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092879 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A390543.P17033711315939230196

namespace A390543

/-- `A092879(∑[4*n])` -/
def P17033711315939230196.Spec : Prop :=
  ∀ n, P17033711315939230196.a n = A390543 n

end A390543

/-! ## A390543.P9980249892859064626

`A158909(∑[4*n])`
-/

namespace A390543.P9980249892859064626
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158909 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A390543.P9980249892859064626

namespace A390543

/-- `A158909(∑[4*n])` -/
def P9980249892859064626.Spec : Prop :=
  ∀ n, P9980249892859064626.a n = A390543 n

end A390543

/-! ## A390543.P4233547678724039929

`A109244(2*(n+1)²)`
-/

namespace A390543.P4233547678724039929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109244 (2 * (n + 1) ^ 2)

end

end A390543.P4233547678724039929

namespace A390543

/-- `A109244(2*(n+1)²)` -/
def P4233547678724039929.Spec : Prop :=
  ∀ n, P4233547678724039929.a n = A390543 n

end A390543

/-! ## A390543.P9941009717481412414

`A201635(A132209(n+1))`
-/

namespace A390543.P9941009717481412414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201635 (A132209 (n + 1)).toNat

end

end A390543.P9941009717481412414

namespace A390543

/-- `A201635(A132209(n+1))` -/
def P9941009717481412414.Spec : Prop :=
  ∀ n, P9941009717481412414.a n = A390543 n

end A390543

/-! ## A390543.P13270727804008287537

`A201635(A142463(n+1))`
-/

namespace A390543.P13270727804008287537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201635 (A142463 (n + 1)).toNat

end

end A390543.P13270727804008287537

namespace A390543

/-- `A201635(A142463(n+1))` -/
def P13270727804008287537.Spec : Prop :=
  ∀ n, P13270727804008287537.a n = A390543 n

end A390543

/-!
# A390544: a(n) = Sum_{k=0..n} (-1)^k * binomial(3*n+2*k+1,n-k).

The programs for A390544, the canonical program `A390544.P6515677853241476764` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A390544 has offset 0).

The definition of A390544 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n, (-1)^#*C(3*n+2*#+1, n-#)]` (program `A390544.P6515677853241476764`, by `A390544.P6515677853241476764.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A390544.P6515677853241476764

`∑{#}[n, (-1)^#*C(3*n+2*#+1, n-#)]`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A390544

/-- `∑{#}[n, (-1)^#*C(3*n+2*#+1, n-#)]` -/
def P6515677853241476764.Spec : Prop :=
  ∀ n, P6515677853241476764.a n = A390544 n

theorem P6515677853241476764.correct : P6515677853241476764.Spec := by
  intro n
  simp only [A390544]

end A390544

/-!
# A390545: a(n) = Sum_{k=0..n} (-1)^k * binomial(3*n+3*k+1,n-k).

The programs for A390545, the canonical program `A390545.P14037121177430266608` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A390545 has offset 0).

The definition of A390545 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n, (-1)^#*C(3*n+3*#+1, n-#)]` (program `A390545.P14037121177430266608`, by `A390545.P14037121177430266608.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A390545.P14037121177430266608

`∑{#}[n, (-1)^#*C(3*n+3*#+1, n-#)]`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A390545

/-- `∑{#}[n, (-1)^#*C(3*n+3*#+1, n-#)]` -/
def P14037121177430266608.Spec : Prop :=
  ∀ n, P14037121177430266608.a n = A390545 n

theorem P14037121177430266608.correct : P14037121177430266608.Spec := by
  intro n
  simp only [A390545]

end A390545

/-!
# A390546: Triangle read by rows: T(n,k) = number of heapable permutations of length n that contain the max element on position k (positions starting from 0).

The programs for A390546, there is no canonical definition to state claims against.
-/

/-! ## A390546.P11821557154264453741

`A008281(lt[A000045(n+1), A248391(n+1)])`
-/

namespace A390546.P11821557154264453741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248391 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008281 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A390546.P11821557154264453741

/-! ## A390546.P11606253432189562149

`ceil(A185081(n)/A007978(A022323(n+2)))`
-/

namespace A390546.P11606253432189562149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A185081 n : ℚ) / (A007978 (A022323 (n + 2)).toNat : ℚ)⌉

end

end A390546.P11606253432189562149

/-! ## A390546.P16053767960027282559

`A353816(A088361(3*n+2))+A008281(n)`
-/

namespace A390546.P16053767960027282559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353816 (A088361 (3 * n + 2)).toNat + A008281 n

end

end A390546.P16053767960027282559

/-! ## A390546.P14714551997303740966

`A097867(A257740(n))`
-/

namespace A390546.P14714551997303740966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097867 (A257740 n).toNat

end

end A390546.P14714551997303740966

/-! ## A390546.P17639076356531475028

`A097867(A261781(n))`
-/

namespace A390546.P17639076356531475028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097867 (A261781 n).toNat

end

end A390546.P17639076356531475028

/-!
# A390547: a(n) = Sum_{k=0..n} (-1)^k * binomial(4*n-k+2,n-k).

The programs for A390547, the canonical program `A390547.P3159854374113451899` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A390547 has offset 0).

The definition of A390547 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n, (-1)^#*C(4*n-#+2, n-#)]` (program `A390547.P3159854374113451899`, by `A390547.P3159854374113451899.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A390547.P5364725964651806413

`∑{#}[n, (-2)^#*C(4*n+3, n-#)]`
-/

namespace A390547.P5364725964651806413
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (-2) ^ k * (Nat.choose (4 * n + 3) ((n : ℤ) - (k : ℤ)).toNat : ℤ)

end

end A390547.P5364725964651806413

namespace A390547

/-- `∑{#}[n, (-2)^#*C(4*n+3, n-#)]` -/
def P5364725964651806413.Spec : Prop :=
  ∀ n, P5364725964651806413.a n = A390547 n

end A390547

/-! ## A390547.P3159854374113451899

`∑{#}[n, (-1)^#*C(4*n-#+2, n-#)]`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A390547

/-- `∑{#}[n, (-1)^#*C(4*n-#+2, n-#)]` -/
def P3159854374113451899.Spec : Prop :=
  ∀ n, P3159854374113451899.a n = A390547 n

theorem P3159854374113451899.correct : P3159854374113451899.Spec := by
  intro n
  simp only [A390547]

end A390547

/-! ## A390547.P18116617504640693503

`∑{#}[floor(n/2), C(4*n-2*#+1, n-2*#)]`
-/

namespace A390547.P18116617504640693503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 2⌋

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1).toNat, Nat.choose ((4 * n : ℤ) - (2 * k : ℤ) + 1).toNat ((n : ℤ) - (2 * k : ℤ)).toNat

end

end A390547.P18116617504640693503

namespace A390547

/-- `∑{#}[floor(n/2), C(4*n-2*#+1, n-2*#)]` -/
def P18116617504640693503.Spec : Prop :=
  ∀ n, (P18116617504640693503.a n : ℤ) = A390547 n

end A390547

/-! ## A390547.P9332473378494140179

`A109244(A022267(n+1))`
-/

namespace A390547.P9332473378494140179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109244 (A022267 (n + 1)).toNat

end

end A390547.P9332473378494140179

namespace A390547

/-- `A109244(A022267(n+1))` -/
def P9332473378494140179.Spec : Prop :=
  ∀ n, P9332473378494140179.a n = A390547 n

end A390547

/-! ## A390547.P8473166111317201384

`A395545(A236267(n))`
-/

namespace A390547.P8473166111317201384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395545 (A236267 n).toNat

end

end A390547.P8473166111317201384

namespace A390547

/-- `A395545(A236267(n))` -/
def P8473166111317201384.Spec : Prop :=
  ∀ n, P8473166111317201384.a n = A390547 n

end A390547

/-!
# A390548: a(n) = Sum_{k=0..n} (-1)^k * binomial(5*n-k+2,n-k).

The programs for A390548, the canonical program `A390548.P9742616081271204726` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A390548 has offset 0).

The definition of A390548 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n, (-1)^#*C(5*n-#+2, n-#)]` (program `A390548.P9742616081271204726`, by `A390548.P9742616081271204726.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A390548.P7533565487632750986

`∑{#}[n, (-2)^#*C(5*n+3, n-#)]`
-/

namespace A390548.P7533565487632750986
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (-2) ^ k * (Nat.choose (5 * n + 3) ((n : ℤ) - (k : ℤ)).toNat : ℤ)

end

end A390548.P7533565487632750986

namespace A390548

/-- `∑{#}[n, (-2)^#*C(5*n+3, n-#)]` -/
def P7533565487632750986.Spec : Prop :=
  ∀ n, P7533565487632750986.a n = A390548 n

end A390548

/-! ## A390548.P9742616081271204726

`∑{#}[n, (-1)^#*C(5*n-#+2, n-#)]`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A390548

/-- `∑{#}[n, (-1)^#*C(5*n-#+2, n-#)]` -/
def P9742616081271204726.Spec : Prop :=
  ∀ n, P9742616081271204726.a n = A390548 n

theorem P9742616081271204726.correct : P9742616081271204726.Spec := by
  intro n
  simp only [A390548]

end A390548

/-! ## A390548.P2807366571681456780

`∑{#}[floor(n/2), C(5*n-2*#+1, n-2*#)]`
-/

namespace A390548.P2807366571681456780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 2⌋

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1).toNat, Nat.choose ((5 * n : ℤ) - (2 * k : ℤ) + 1).toNat ((n : ℤ) - (2 * k : ℤ)).toNat

end

end A390548.P2807366571681456780

namespace A390548

/-- `∑{#}[floor(n/2), C(5*n-2*#+1, n-2*#)]` -/
def P2807366571681456780.Spec : Prop :=
  ∀ n, (P2807366571681456780.a n : ℤ) = A390548 n

end A390548

/-! ## A390548.P12235225459966839374

`A109244(A139273(n+1))`
-/

namespace A390548.P12235225459966839374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109244 (A139273 (n + 1)).toNat

end

end A390548.P12235225459966839374

namespace A390548

/-- `A109244(A139273(n+1))` -/
def P12235225459966839374.Spec : Prop :=
  ∀ n, P12235225459966839374.a n = A390548 n

end A390548

/-! ## A390548.P12680772224557231874

`A108561(A139272(n+1)+A000217(3*n+2))`
-/

namespace A390548.P12680772224557231874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108561 (A139272 (n + 1) + A000217 (3 * n + 2)).toNat

end

end A390548.P12680772224557231874

namespace A390548

/-- `A108561(A139272(n+1)+A000217(3*n+2))` -/
def P12680772224557231874.Spec : Prop :=
  ∀ n, P12680772224557231874.a n = A390548 n

end A390548

/-!
# A390551: a(n) = Sum_{i = 0..n} i*A070939(i).

The programs for A390551, the canonical program `A390551.P17563142815161189481` is in `Seq.B002.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A390551 has offset 0).

The definition of A390551 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A390551.P8400021941794103437

`∑[n*ceil(log2(n+1))]`
-/

namespace A390551.P8400021941794103437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ⌈Real.logb 2 (n + 1 : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A390551.P8400021941794103437

namespace A390551

/-- `∑[n*ceil(log2(n+1))]` -/
def P8400021941794103437.Spec : Prop :=
  ∀ n, P8400021941794103437.a n = A390551 n

end A390551

/-! ## A390551.P15954907085126284489

`∑[2*n*A070939(n)]/2`
-/

namespace A390551.P15954907085126284489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) * A070939 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2

end

end A390551.P15954907085126284489

namespace A390551

/-- `∑[2*n*A070939(n)]/2` -/
def P15954907085126284489.Spec : Prop :=
  ∀ n, P15954907085126284489.a n = (A390551 n : ℚ)

end A390551

/-! ## A390551.P17563142815161189481

`∑[A380230(n)]*A158388(n)`

The canonical program, it is in `Seq.B002.C008`.
-/

namespace A390551

/-- `∑[A380230(n)]*A158388(n)` -/
def P17563142815161189481.Spec : Prop :=
  ∀ n, P17563142815161189481.a n = A390551 n

theorem P17563142815161189481.correct : P17563142815161189481.Spec := by
  intro n
  simp only [A390551]

end A390551

/-! ## A390551.P14903530812430876057

`∑[A028310(3*n)*A029837(n+1)]/3`
-/

namespace A390551.P14903530812430876057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (3 * n) * A029837 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 3

end

end A390551.P14903530812430876057

namespace A390551

/-- `∑[A028310(3*n)*A029837(n+1)]/3` -/
def P14903530812430876057.Spec : Prop :=
  ∀ n, P14903530812430876057.a n = (A390551 n : ℚ)

end A390551

/-! ## A390551.P2722072055870595549

`A025480(∑[2*n*A070939(n)])`
-/

namespace A390551.P2722072055870595549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) * A070939 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A390551.P2722072055870595549

namespace A390551

/-- `A025480(∑[2*n*A070939(n)])` -/
def P2722072055870595549.Spec : Prop :=
  ∀ n, P2722072055870595549.a n = A390551 n

end A390551

/-!
# A390554: a(n) is the sum of the bi-unitary divisors of n^2.

The programs for A390554, the canonical program `A390554.P5277183224943981996` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A390554 has offset 1).

The definition of A390554 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034448, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A390554.P639468247037572701

`A188999((n+1)²)`
-/

namespace A390554.P639468247037572701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188999 ((n + 1) ^ 2)

end

end A390554.P639468247037572701

namespace A390554

/-- `A188999((n+1)²)` -/
def P639468247037572701.Spec : Prop :=
  ∀ n, P639468247037572701.a n = A390554 (n + 1)

end A390554

/-! ## A390554.P5277183224943981996

`A000203((n+1)/A007947(n+1))*A034448((n+1)*A007947(n+1))`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A390554

/-- `A000203((n+1)/A007947(n+1))*A034448((n+1)*A007947(n+1))` -/
def P5277183224943981996.Spec : Prop :=
  ∀ n, P5277183224943981996.a n = A390554 (n + 1)

theorem P5277183224943981996.correct : P5277183224943981996.Spec := by
  intro n
  simp only [A390554, Nat.add_sub_cancel]

end A390554

/-! ## A390554.P13289811006559902734

`∑{d}[n+1, A001001(#)*A390954((n+1)/#)]`
-/

namespace A390554.P13289811006559902734
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001001 d * A390954 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A390554.P13289811006559902734

namespace A390554

/-- `∑{d}[n+1, A001001(#)*A390954((n+1)/#)]` -/
def P13289811006559902734.Spec : Prop :=
  ∀ n, P13289811006559902734.a n = A390554 (n + 1)

end A390554

/-! ## A390554.P13902744035690090587

`A331970((n+1)²)+(n+1)²`
-/

namespace A390554.P13902744035690090587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331970 ((n + 1) ^ 2) + ((n + 1) ^ 2 : ℤ)

end

end A390554.P13902744035690090587

namespace A390554

/-- `A331970((n+1)²)+(n+1)²` -/
def P13902744035690090587.Spec : Prop :=
  ∀ n, P13902744035690090587.a n = A390554 (n + 1)

end A390554

/-! ## A390554.P14774800540809155550

`A188999(A000290(n+1))%A299278(2*n+2)`
-/

namespace A390554.P14774800540809155550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A188999 (A000290 (n + 1)).toNat) (A299278 (2 * n + 2))

end

end A390554.P14774800540809155550

namespace A390554

/-- `A188999(A000290(n+1))%A299278(2*n+2)` -/
def P14774800540809155550.Spec : Prop :=
  ∀ n, P14774800540809155550.a n = A390554 (n + 1)

end A390554

/-! ## A390554.P1890529443920653222

`A188999(A000290(n+1))%A046837(n+1)`
-/

namespace A390554.P1890529443920653222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A188999 (A000290 (n + 1)).toNat) (A046837 (n + 1))

end

end A390554.P1890529443920653222

namespace A390554

/-- `A188999(A000290(n+1))%A046837(n+1)` -/
def P1890529443920653222.Spec : Prop :=
  ∀ n, P1890529443920653222.a n = A390554 (n + 1)

end A390554

/-!
# A390555: The number of exponential divisors of n^2.

The programs for A390555, the canonical program `A390555.P7215730010681652163` is in `Seq.B002.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A390555 has offset 1).

The definition of A390555 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A049419, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A390555.P7215730010681652163

`A049419((n+1)²)`

The canonical program, it is in `Seq.B002.C008`.
-/

namespace A390555

/-- `A049419((n+1)²)` -/
def P7215730010681652163.Spec : Prop :=
  ∀ n, P7215730010681652163.a n = A390555 (n + 1)

theorem P7215730010681652163.correct : P7215730010681652163.Spec := by
  intro n
  simp only [A390555, Nat.add_sub_cancel]

end A390555

/-! ## A390555.P11327072982713698783

`∏{e}[n+1, A099777(#)]`
-/

namespace A390555.P11327072982713698783
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A099777 (Nat.factorization (f1 n) p)

end

end A390555.P11327072982713698783

namespace A390555

/-- `∏{e}[n+1, A099777(#)]` -/
def P11327072982713698783.Spec : Prop :=
  ∀ n, P11327072982713698783.a n = A390555 (n + 1)

end A390555

/-! ## A390555.P2707341806638537419

`∏{e}[(n+1)², A000005(#)]`
-/

namespace A390555.P2707341806638537419
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A000005 (Nat.factorization (f1 n) p)

end

end A390555.P2707341806638537419

namespace A390555

/-- `∏{e}[(n+1)², A000005(#)]` -/
def P2707341806638537419.Spec : Prop :=
  ∀ n, P2707341806638537419.a n = A390555 (n + 1)

end A390555

/-! ## A390555.P17646847840929459503

`∏{e}[(n+1)², A179941(#)]`
-/

namespace A390555.P17646847840929459503
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A179941 (Nat.factorization (f1 n) p)

end

end A390555.P17646847840929459503

namespace A390555

/-- `∏{e}[(n+1)², A179941(#)]` -/
def P17646847840929459503.Spec : Prop :=
  ∀ n, P17646847840929459503.a n = A390555 (n + 1)

end A390555

/-! ## A390555.P15618089572782765220

`A400138(A114213(A001316(n))+n)`
-/

namespace A390555.P15618089572782765220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A400138 (A114213 (A001316 n).toNat + (n : ℤ)).toNat

end

end A390555.P15618089572782765220

namespace A390555

/-- `A400138(A114213(A001316(n))+n)` -/
def P15618089572782765220.Spec : Prop :=
  ∀ n, P15618089572782765220.a n = A390555 (n + 1)

end A390555

/-! ## A390555.P971521840259382895

`and(A086827(n+1), A400138(n+1))`
-/

namespace A390555.P971521840259382895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A086827 (n + 1)) (A400138 (n + 1))

end

end A390555.P971521840259382895

namespace A390555

/-- `and(A086827(n+1), A400138(n+1))` -/
def P971521840259382895.Spec : Prop :=
  ∀ n, P971521840259382895.a n = A390555 (n + 1)

end A390555

/-! ## A390555.P10239642820882003101

`A379028(A350390((n+1)²))`
-/

namespace A390555.P10239642820882003101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379028 (A350390 ((n + 1) ^ 2)).toNat

end

end A390555.P10239642820882003101

namespace A390555

/-- `A379028(A350390((n+1)²))` -/
def P10239642820882003101.Spec : Prop :=
  ∀ n, P10239642820882003101.a n = A390555 (n + 1)

end A390555

/-! ## A390555.P11370259760376925262

`A046100(A046100(A049419((n+1)*(n+1))))`
-/

namespace A390555.P11370259760376925262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046100 (A046100 (A049419 ((n + 1) * (n + 1))).toNat).toNat

end

end A390555.P11370259760376925262

namespace A390555

/-- `A046100(A046100(A049419((n+1)*(n+1))))` -/
def P11370259760376925262.Spec : Prop :=
  ∀ n, P11370259760376925262.a n = A390555 (n + 1)

end A390555

/-! ## A390555.P3208257689168344544

`A379028(A390371(A350390((n+1)*(n+1))))`
-/

namespace A390555.P3208257689168344544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379028 (A390371 (A350390 ((n + 1) * (n + 1))).toNat).toNat

end

end A390555.P3208257689168344544

namespace A390555

/-- `A379028(A390371(A350390((n+1)*(n+1))))` -/
def P3208257689168344544.Spec : Prop :=
  ∀ n, P3208257689168344544.a n = A390555 (n + 1)

end A390555

/-!
# A390556: The sum of the exponential divisors of n^2.

The programs for A390556, there is no canonical definition to state claims against.
-/

/-! ## A390556.P6114082783347327483

`A051377((n+1)²)`
-/

namespace A390556.P6114082783347327483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051377 ((n + 1) ^ 2)

end

end A390556.P6114082783347327483

/-! ## A390556.P10251799620368758826

`A126164((n+1)²)+(n+1)²`
-/

namespace A390556.P10251799620368758826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126164 ((n + 1) ^ 2) + ((n + 1) ^ 2 : ℤ)

end

end A390556.P10251799620368758826

/-! ## A390556.P7804672339402344326

`A051377(A000290(n+1))*A158388(n+1)`
-/

namespace A390556.P7804672339402344326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051377 (A000290 (n + 1)).toNat * A158388 (n + 1)

end

end A390556.P7804672339402344326

/-!
# A390557: Numbers whose square is a bi-unitary abundant number.

The programs for A390557, there is no canonical definition to state claims against.
-/

/-! ## A390557.P14301266083645554720

`∩[A048166(n+1), A125006(n+1)]`
-/

namespace A390557.P14301266083645554720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048166 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125006 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A390557.P14301266083645554720

/-! ## A390557.P12925294824313275090

`∩[A378878(n+1), A393024(n+1)]`
-/

namespace A390557.P12925294824313275090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378878 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393024 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A390557.P12925294824313275090

/-!
# A390559: Lower (1/2)-midsequence of (2^n) and F(n), where F = A000045 (Fibonacci numbers); see Comments.

The programs for A390559, the canonical program `A390559.P13488038190295984930` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A390559 has offset 0).

The definition of A390559 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A390559.P13488038190295984930

`ogf((x-x^2-3x^4+x^5+x^6)/(1-3x+x^2+x^3+3x^4-x^5-2x^6))`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A390559

/-- `ogf((x-x^2-3x^4+x^5+x^6)/(1-3x+x^2+x^3+3x^4-x^5-2x^6))` -/
def P13488038190295984930.Spec : Prop :=
  ∀ n, P13488038190295984930.a n = A390559 n

theorem P13488038190295984930.correct : P13488038190295984930.Spec := by
  intro n
  simp only [A390559]

end A390559

/-! ## A390559.P4001292015129294840

`A131577(n)+A004695(n)`
-/

namespace A390559.P4001292015129294840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 n + A004695 n

end

end A390559.P4001292015129294840

namespace A390559

/-- `A131577(n)+A004695(n)` -/
def P4001292015129294840.Spec : Prop :=
  ∀ n, P4001292015129294840.a n = A390559 n

end A390559

/-! ## A390559.P2362132833811201675

`A390560(n)-A267208(n)`
-/

namespace A390559.P2362132833811201675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390560 n - A267208 n

end

end A390559.P2362132833811201675

namespace A390559

/-- `A390560(n)-A267208(n)` -/
def P2362132833811201675.Spec : Prop :=
  ∀ n, P2362132833811201675.a n = A390559 n

end A390559

/-! ## A390559.P10760414489286571726

`A117591(n)-A390560(n)`
-/

namespace A390559.P10760414489286571726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117591 n - A390560 n

end

end A390559.P10760414489286571726

namespace A390559

/-- `A117591(n)-A390560(n)` -/
def P10760414489286571726.Spec : Prop :=
  ∀ n, P10760414489286571726.a n = A390559 n

end A390559

/-! ## A390559.P16953334754304887516

`A004695(n)+Δ[A011782(n)]`
-/

namespace A390559.P16953334754304887516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004695 n + (f1 (n + 1) - f1 n)

end

end A390559.P16953334754304887516

namespace A390559

/-- `A004695(n)+Δ[A011782(n)]` -/
def P16953334754304887516.Spec : Prop :=
  ∀ n, P16953334754304887516.a n = A390559 n

end A390559

/-! ## A390559.P15734023106878706814

`A000045(n)+A000079(n)-A390560(n)`
-/

namespace A390559.P15734023106878706814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n + (A000079 n - A390560 n)

end

end A390559.P15734023106878706814

namespace A390559

/-- `A000045(n)+A000079(n)-A390560(n)` -/
def P15734023106878706814.Spec : Prop :=
  ∀ n, P15734023106878706814.a n = A390559 n

end A390559

/-!
# A390560: Upper (1/2)-midsequence of (2^n) and F(n), where F = A000045 (Fibonacci numbers); see Comments.

The programs for A390560, the canonical program `A390560.P3262957955042582020` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A390560 has offset 0).

The definition of A390560 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A390560.P3262957955042582020

`ogf((1-x-2x^2-x^3+3x^4+2x^5-x^6)/(1-3x+x^2+x^3+3x^4-x^5-2x^6))`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A390560

/-- `ogf((1-x-2x^2-x^3+3x^4+2x^5-x^6)/(1-3x+x^2+x^3+3x^4-x^5-2x^6))` -/
def P3262957955042582020.Spec : Prop :=
  ∀ n, P3262957955042582020.a n = A390560 n

theorem P3262957955042582020.correct : P3262957955042582020.Spec := by
  intro n
  simp only [A390560]

end A390560

/-! ## A390560.P2938574800519434169

`A173173(n)+A011782(n)`
-/

namespace A390560.P2938574800519434169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173173 n + A011782 n

end

end A390560.P2938574800519434169

namespace A390560

/-- `A173173(n)+A011782(n)` -/
def P2938574800519434169.Spec : Prop :=
  ∀ n, P2938574800519434169.a n = A390560 n

end A390560

/-! ## A390560.P7957309151773005846

`A390559(n)+A267208(n)`
-/

namespace A390560.P7957309151773005846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390559 n + A267208 n

end

end A390560.P7957309151773005846

namespace A390560

/-- `A390559(n)+A267208(n)` -/
def P7957309151773005846.Spec : Prop :=
  ∀ n, P7957309151773005846.a n = A390560 n

end A390560

/-! ## A390560.P11246535285776408470

`A011782(n)+ceil(A000045(n)/2)`
-/

namespace A390560.P11246535285776408470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n + ⌈(A000045 n : ℚ) / 2⌉

end

end A390560.P11246535285776408470

namespace A390560

/-- `A011782(n)+ceil(A000045(n)/2)` -/
def P11246535285776408470.Spec : Prop :=
  ∀ n, P11246535285776408470.a n = A390560 n

end A390560

/-! ## A390560.P14005050479179451566

`A117591(n)-A390559(n)`
-/

namespace A390560.P14005050479179451566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117591 n - A390559 n

end

end A390560.P14005050479179451566

namespace A390560

/-- `A117591(n)-A390559(n)` -/
def P14005050479179451566.Spec : Prop :=
  ∀ n, P14005050479179451566.a n = A390560 n

end A390560

/-! ## A390560.P11203996857041394930

`A000045(n)+A000079(n)-A390559(n)`
-/

namespace A390560.P11203996857041394930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n + (A000079 n - A390559 n)

end

end A390560.P11203996857041394930

namespace A390560

/-- `A000045(n)+A000079(n)-A390559(n)` -/
def P11203996857041394930.Spec : Prop :=
  ∀ n, P11203996857041394930.a n = A390560 n

end A390560

/-!
# A390561: Lower (1/5,1/2) midsequence of (2^n) and (5*n); see Comments.

The programs for A390561, the canonical program `A390561.P14577017584596399777` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A390561 has offset 0).

The definition of A390561 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A390561.P14577017584596399777

`ogf((2x-3x^2+x^3-5x^4)/(1-4x+6x^2-6x^3+5x^4-2x^5))`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A390561

/-- `ogf((2x-3x^2+x^3-5x^4)/(1-4x+6x^2-6x^3+5x^4-2x^5))` -/
def P14577017584596399777.Spec : Prop :=
  ∀ n, P14577017584596399777.a n = A390561 n

theorem P14577017584596399777.correct : P14577017584596399777.Spec := by
  intro n
  simp only [A390561]

end A390561

/-! ## A390561.P5357792885921023480

`A390562(n)-1`
-/

namespace A390561.P5357792885921023480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390562 n - 1

end

end A390561.P5357792885921023480

namespace A390561

/-- `A390562(n)-1` -/
def P5357792885921023480.Spec : Prop :=
  ∀ n, P5357792885921023480.a n = A390561 n

end A390561

/-! ## A390561.P9707799014632518571

`A390598(A390556(3*n+2))+A390562(n)`
-/

namespace A390561.P9707799014632518571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390598 (A390556 (3 * n + 2)).toNat + A390562 n

end

end A390561.P9707799014632518571

namespace A390561

/-- `A390598(A390556(3*n+2))+A390562(n)` -/
def P9707799014632518571.Spec : Prop :=
  ∀ n, P9707799014632518571.a n = A390561 n

end A390561

/-! ## A390561.P465615432678301150

`A390598(A226640(n+1))+A390562(n)`
-/

namespace A390561.P465615432678301150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390598 (A226640 (n + 1)).toNat + A390562 n

end

end A390561.P465615432678301150

namespace A390561

/-- `A390598(A226640(n+1))+A390562(n)` -/
def P465615432678301150.Spec : Prop :=
  ∀ n, P465615432678301150.a n = A390561 n

end A390561

/-! ## A390561.P4843384173743202793

`A023443(A390562(n))`
-/

namespace A390561.P4843384173743202793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A390562 n).toNat

end

end A390561.P4843384173743202793

namespace A390561

/-- `A023443(A390562(n))` -/
def P4843384173743202793.Spec : Prop :=
  ∀ n, P4843384173743202793.a n = A390561 n

end A390561

/-!
# A390562: Upper (1/5,1/2) midsequence of (2^n) and (5*n); see Comments.

The programs for A390562, the canonical program `A390562.P3418181458753356945` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A390562 has offset 0).

The definition of A390562 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A390562.P3418181458753356945

`ogf((1-x-2x^3-3x^4)/(1-4x+6x^2-6x^3+5x^4-2x^5))`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A390562

/-- `ogf((1-x-2x^3-3x^4)/(1-4x+6x^2-6x^3+5x^4-2x^5))` -/
def P3418181458753356945.Spec : Prop :=
  ∀ n, P3418181458753356945.a n = A390562 n

theorem P3418181458753356945.correct : P3418181458753356945.Spec := by
  intro n
  simp only [A390562]

end A390562

/-! ## A390562.P1684249189898440273

`A390561(n)+1`
-/

namespace A390562.P1684249189898440273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390561 n + 1

end

end A390562.P1684249189898440273

namespace A390562

/-- `A390561(n)+1` -/
def P1684249189898440273.Spec : Prop :=
  ∀ n, P1684249189898440273.a n = A390562 n

end A390562

/-! ## A390562.P11016725646029615047

`A187331(n)+A118406(n)`
-/

namespace A390562.P11016725646029615047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187331 n + A118406 n

end

end A390562.P11016725646029615047

namespace A390562

/-- `A187331(n)+A118406(n)` -/
def P11016725646029615047.Spec : Prop :=
  ∀ n, P11016725646029615047.a n = A390562 n

end A390562

/-!
# A390563: Lower (1/5,1/2) midsequence of (3^n) and (5*n); see Comments.

The programs for A390563, there is no canonical definition to state claims against.
-/

/-! ## A390563.P7750124318404246344

`A390564(n)-1`
-/

namespace A390563.P7750124318404246344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390564 n - 1

end

end A390563.P7750124318404246344

/-! ## A390563.P9833813004919420266

`A390598(A390556(3*n+2))+A390564(n)`
-/

namespace A390563.P9833813004919420266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390598 (A390556 (3 * n + 2)).toNat + A390564 n

end

end A390563.P9833813004919420266

/-! ## A390563.P16042332411994724326

`A023443(A390564(n))`
-/

namespace A390563.P16042332411994724326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A390564 n).toNat

end

end A390563.P16042332411994724326

/-!
# A390564: Upper (1/5,1/2) midsequence of (3^n) and (5*n); see Comments.

The programs for A390564, there is no canonical definition to state claims against.
-/

/-! ## A390564.P494091443103823826

`A390563(n)+1`
-/

namespace A390564.P494091443103823826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390563 n + 1

end

end A390564.P494091443103823826

/-! ## A390564.P9875612062946274881

`A358127(n+2)+A071841(A050914(n))`
-/

namespace A390564.P9875612062946274881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358127 (n + 2) + A071841 (A050914 n).toNat

end

end A390564.P9875612062946274881

/-!
# A390565: a(n) = floor(n^2/3 + n^3/2).

The programs for A390565, the canonical program `A390565.P17191714061800070819` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A390565 has offset 0).

The definition of A390565 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(n²/3+n^3/2)` (program `A390565.P17191714061800070819`, by `A390565.P17191714061800070819.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A390565.P17191714061800070819

`floor(n²/3+n^3/2)`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A390565

/-- `floor(n²/3+n^3/2)` -/
def P17191714061800070819.Spec : Prop :=
  ∀ n, P17191714061800070819.a n = A390565 n

theorem P17191714061800070819.correct : P17191714061800070819.Spec := by
  intro n
  simp only [A390565]

end A390565

/-! ## A390565.P5890392150994810189

`ogf((5x^2+6x^3+5x^4+x^5+x^6)/(1-2x+x^3+x^4-2x^6+x^7))`
-/

namespace A390565.P5890392150994810189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 5, 6, 5, 1, 1] [1, -2, 0, 1, 1, 0, -2, 1] n

end

end A390565.P5890392150994810189

namespace A390565

/-- `ogf((5x^2+6x^3+5x^4+x^5+x^6)/(1-2x+x^3+x^4-2x^6+x^7))` -/
def P5890392150994810189.Spec : Prop :=
  ∀ n, P5890392150994810189.a n = A390565 n

end A390565

/-! ## A390565.P5617041101202316392

`2*a(n-1)-a(n-3)-a(n-4)+2*a(n-6)-a(n-7)` with `a(0)=0, a(1)=0, a(2)=5, a(3)=16, a(4)=37, a(5)=70, a(6)=120`
-/

namespace A390565.P5617041101202316392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 5, 16, 37, 70, 120] fun n a =>
  2 * a (n - 1) - a (n - 3) - a (n - 4) + 2 * a (n - 6) - a (n - 7)

end

end A390565.P5617041101202316392

namespace A390565

/-- `2*a(n-1)-a(n-3)-a(n-4)+2*a(n-6)-a(n-7)` -/
def P5617041101202316392.Spec : Prop :=
  ∀ n, P5617041101202316392.a n = A390565 n

end A390565

/-! ## A390565.P737275241313453868

`A036487(n)+A000212(n)`
-/

namespace A390565.P737275241313453868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036487 n + A000212 n

end

end A390565.P737275241313453868

namespace A390565

/-- `A036487(n)+A000212(n)` -/
def P737275241313453868.Spec : Prop :=
  ∀ n, P737275241313453868.a n = A390565 n

end A390565

/-! ## A390565.P9376391844022618851

`A390566(n)-A097325(n)`
-/

namespace A390565.P9376391844022618851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390566 n - A097325 n

end

end A390565.P9376391844022618851

namespace A390565

/-- `A390566(n)-A097325(n)` -/
def P9376391844022618851.Spec : Prop :=
  ∀ n, P9376391844022618851.a n = A390565 n

end A390565

/-! ## A390565.P14634782411643712108

`A036487(n)+A002264(n²)`
-/

namespace A390565.P14634782411643712108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036487 n + A002264 (n ^ 2)

end

end A390565.P14634782411643712108

namespace A390565

/-- `A036487(n)+A002264(n²)` -/
def P14634782411643712108.Spec : Prop :=
  ∀ n, P14634782411643712108.a n = A390565 n

end A390565

/-!
# A390566: Upper (1/3,1/2) midsequence of (n^2) and (n^3); see Comments.

The programs for A390566, the canonical program `A390566.P17232026005215162007` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A390566 has offset 0).

The definition of A390566 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A390566.P17232026005215162007

`ogf((x+3x^2+2x^3+4x^4+2x^5+4x^6+2x^7)/(1-3x+3x^2-x^3-x^6+3x^7-3x^8+x^9))`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A390566

/-- `ogf((x+3x^2+2x^3+4x^4+2x^5+4x^6+2x^7)/(1-3x+3x^2-x^3-x^6+3x^7-3x^8+x^9))` -/
def P17232026005215162007.Spec : Prop :=
  ∀ n, P17232026005215162007.a n = A390566 n

theorem P17232026005215162007.correct : P17232026005215162007.Spec := by
  intro n
  simp only [A390566]

end A390566

/-! ## A390566.P12025773443612493557

`ceil(n*A045944(n)/6)`
-/

namespace A390566.P12025773443612493557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((n : ℤ) * A045944 n : ℚ) / 6⌉

end

end A390566.P12025773443612493557

namespace A390566

/-- `ceil(n*A045944(n)/6)` -/
def P12025773443612493557.Spec : Prop :=
  ∀ n, P12025773443612493557.a n = A390566 n

end A390566

/-! ## A390566.P1705967293038553936

`A390565(n)+A097325(n)`
-/

namespace A390566.P1705967293038553936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390565 n + A097325 n

end

end A390566.P1705967293038553936

namespace A390566

/-- `A390565(n)+A097325(n)` -/
def P1705967293038553936.Spec : Prop :=
  ∀ n, P1705967293038553936.a n = A390566 n

end A390566

/-! ## A390566.P3431981278602602482

`A011934(n)-A033438(n)`
-/

namespace A390566.P3431981278602602482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011934 n - A033438 n

end

end A390566.P3431981278602602482

namespace A390566

/-- `A011934(n)-A033438(n)` -/
def P3431981278602602482.Spec : Prop :=
  ∀ n, P3431981278602602482.a n = A390566 n

end A390566

/-! ## A390566.P1411444152370418077

`A002411(n)-A056827(n)`
-/

namespace A390566.P1411444152370418077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002411 n - A056827 n

end

end A390566.P1411444152370418077

namespace A390566

/-- `A002411(n)-A056827(n)` -/
def P1411444152370418077.Spec : Prop :=
  ∀ n, P1411444152370418077.a n = A390566 n

end A390566

/-!
# A390567: Number of integer compositions of n with all distinct first sums.

The programs for A390567, there is no canonical definition to state claims against.
-/

/-! ## A390567.P2933088192082517355

`A100617(A026150(n))`
-/

namespace A390567.P2933088192082517355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100617 (A026150 n).toNat

end

end A390567.P2933088192082517355

/-! ## A390567.P11569017951471187754

`A227568(A000501(n))`
-/

namespace A390567.P11569017951471187754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227568 (A000501 n).toNat

end

end A390567.P11569017951471187754

/-! ## A390567.P11361557556754513816

`A227568(A002459(n))`
-/

namespace A390567.P11361557556754513816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227568 (A002459 n).toNat

end

end A390567.P11361557556754513816

/-! ## A390567.P4694348656727987368

`A135664(A229912(n+1))`
-/

namespace A390567.P4694348656727987368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135664 (A229912 (n + 1)).toNat

end

end A390567.P4694348656727987368

/-!
# A390569: Odd Heinz numbers of multisets that are not the first sums of any nonempty multiset.

The programs for A390569, there is no canonical definition to state claims against.
-/

/-! ## A390569.P8263660118919159298

`∩[2*n+1, A390445(n+1)]`
-/

namespace A390569.P8263660118919159298
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390445 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A390569.P8263660118919159298

/-! ## A390569.P7328745708596300462

`filter[A390445(n+1), A000035(#)]`
-/

namespace A390569.P7328745708596300462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390445 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n)

end

end A390569.P7328745708596300462

/-! ## A390569.P6654023344407053157

`filter[A390445(n+1), A266070(#)]`
-/

namespace A390569.P6654023344407053157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390445 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A266070 (f1 j).toNat = 1) n)

end

end A390569.P6654023344407053157

/-! ## A390569.P6619929804327210014

`filter[A390445(n+2), A266611(#)]`
-/

namespace A390569.P6619929804327210014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390445 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A266611 (f1 j).toNat = 1) n)

end

end A390569.P6619929804327210014

/-! ## A390569.P11056562790015229594

`filter[A390445(n+2), A266719(#)]`
-/

namespace A390569.P11056562790015229594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390445 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A266719 (f1 j).toNat = 1) n)

end

end A390569.P11056562790015229594

/-! ## A390569.P15832644590808488592

`filter[A390445(n+2), A296066(#)]`
-/

namespace A390569.P15832644590808488592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390445 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A296066 (f1 j).toNat = 1) n)

end

end A390569.P15832644590808488592

/-! ## A390569.P3866243476195778426

`filter[A390445(n+3), A266246(#)]`
-/

namespace A390569.P3866243476195778426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390445 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A266246 (f1 j).toNat = 1) n)

end

end A390569.P3866243476195778426

/-!
# A390570: a(n) = Sum_{k=0..n} (-1)^k * binomial(3*n+k,n-k).

The programs for A390570, the canonical program `A390570.P1277446935478662867` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A390570 has offset 0).

The definition of A390570 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n, (-1)^#*C(3*n+#, n-#)]` (program `A390570.P1277446935478662867`, by `A390570.P1277446935478662867.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A390570.P1277446935478662867

`∑{#}[n, (-1)^#*C(3*n+#, n-#)]`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A390570

/-- `∑{#}[n, (-1)^#*C(3*n+#, n-#)]` -/
def P1277446935478662867.Spec : Prop :=
  ∀ n, P1277446935478662867.a n = A390570 n

theorem P1277446935478662867.correct : P1277446935478662867.Spec := by
  intro n
  simp only [A390570]

end A390570

/-! ## A390570.P15296237370080385071

`A263017(A154879(3*n)-A154879(n))`
-/

namespace A390570.P15296237370080385071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263017 (A154879 (3 * n) - A154879 n).toNat

end

end A390570.P15296237370080385071

namespace A390570

/-- `A263017(A154879(3*n)-A154879(n))` -/
def P15296237370080385071.Spec : Prop :=
  ∀ n, P15296237370080385071.a n = A390570 n

end A390570

/-!
# A390571: a(n) = Sum_{k=0..n} (-1)^k * binomial(4*n+k,n-k).

The programs for A390571, the canonical program `A390571.P9490136235419656198` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A390571 has offset 0).

The definition of A390571 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n, (-1)^#*C(4*n+#, n-#)]` (program `A390571.P9490136235419656198`, by `A390571.P9490136235419656198.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A390571.P9490136235419656198

`∑{#}[n, (-1)^#*C(4*n+#, n-#)]`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A390571

/-- `∑{#}[n, (-1)^#*C(4*n+#, n-#)]` -/
def P9490136235419656198.Spec : Prop :=
  ∀ n, P9490136235419656198.a n = A390571 n

theorem P9490136235419656198.correct : P9490136235419656198.Spec := by
  intro n
  simp only [A390571]

end A390571

/-! ## A390571.P11754258294625735053

`A013580(A383464(n))`
-/

namespace A390571.P11754258294625735053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013580 (A383464 n).toNat

end

end A390571.P11754258294625735053

namespace A390571

/-- `A013580(A383464(n))` -/
def P11754258294625735053.Spec : Prop :=
  ∀ n, P11754258294625735053.a n = A390571 n

end A390571

/-!
# A390572: a(n) = Sum_{k=0..n} (-1)^k * binomial(5*n+k,n-k).

The programs for A390572, the canonical program `A390572.P13633836141906714451` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A390572 has offset 0).

The definition of A390572 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n, (-1)^#*C(5*n+#, n-#)]` (program `A390572.P13633836141906714451`, by `A390572.P13633836141906714451.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A390572.P13633836141906714451

`∑{#}[n, (-1)^#*C(5*n+#, n-#)]`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A390572

/-- `∑{#}[n, (-1)^#*C(5*n+#, n-#)]` -/
def P13633836141906714451.Spec : Prop :=
  ∀ n, P13633836141906714451.a n = A390572 n

theorem P13633836141906714451.correct : P13633836141906714451.Spec := by
  intro n
  simp only [A390572]

end A390572

/-!
# A390573: Expansion of e.g.f. 2/(2 - x^2*sinh(x)).

The programs for A390573, there is no canonical definition to state claims against.
-/

/-! ## A390573.P18150644587901310735

`lcm(A001817(A000522(n)), A215681(n))`
-/

namespace A390573.P18150644587901310735
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A001817 (A000522 n).toNat) (A215681 n)

end

end A390573.P18150644587901310735

/-! ## A390573.P7004889859265708300

`lcm(A215585(n), A357181(A238441(n)))`
-/

namespace A390573.P7004889859265708300
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A215585 n) (A357181 (A238441 n).toNat)

end

end A390573.P7004889859265708300

/-! ## A390573.P6918613727012243922

`lcm(A215587(n), A355735(A355747(n)))`
-/

namespace A390573.P6918613727012243922
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A215587 n) (A355735 (A355747 n).toNat)

end

end A390573.P6918613727012243922

/-!
# A390574: Numbers for which the square of its largest prime factor equals the sum of the squares of its other prime factors.

The programs for A390574, there is no canonical definition to state claims against.
-/

/-! ## A390574.P9365419175750910366

`∪[A001248(n+1), A391874(n+1)]`
-/

namespace A390574.P9365419175750910366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001248 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391874 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A390574.P9365419175750910366

/-! ## A390574.P17834979068773156548

`∩[A320913(n+1), A337103(n+1)]`
-/

namespace A390574.P17834979068773156548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320913 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337103 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A390574.P17834979068773156548

/-! ## A390574.P16736111444427704082

`∩[A076083(n+2), A337534(n+1)]`
-/

namespace A390574.P16736111444427704082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076083 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337534 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A390574.P16736111444427704082

/-! ## A390574.P15231397316962351573

`filter[A349931(n+1), A065043(#)]`
-/

namespace A390574.P15231397316962351573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349931 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A065043 (f1 j).toNat = 1) n)

end

end A390574.P15231397316962351573

/-!
# A390577: Remainder when (prime(n) * prime(n+1)) is divided by n.

The programs for A390577, the canonical program `A390577.P15375437403461670826` is in `Seq.B001.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A390577 has offset 1).

The definition of A390577 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A390577.P15375437403461670826

`(A000040(n+1)*A000040(n+2))%(n+1)`

The canonical program, it is in `Seq.B001.C014`.
-/

namespace A390577

/-- `(A000040(n+1)*A000040(n+2))%(n+1)` -/
def P15375437403461670826.Spec : Prop :=
  ∀ n, P15375437403461670826.a n = A390577 (n + 1)

theorem P15375437403461670826.correct : P15375437403461670826.Spec := by
  intro n
  simp only [A390577, Nat.add_sub_cancel]

end A390577

/-! ## A390577.P17731929608806426848

`A006094(n+1)%(n+1)`
-/

namespace A390577.P17731929608806426848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006094 (n + 1)) (n + 1 : ℤ)

end

end A390577.P17731929608806426848

namespace A390577

/-- `A006094(n+1)%(n+1)` -/
def P17731929608806426848.Spec : Prop :=
  ∀ n, P17731929608806426848.a n = A390577 (n + 1)

end A390577

/-! ## A390577.P808509797266060463

`record[A116570(n)]%(n+1)`
-/

namespace A390577.P808509797266060463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116570 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (n + 1 : ℤ)

end

end A390577.P808509797266060463

namespace A390577

/-- `record[A116570(n)]%(n+1)` -/
def P808509797266060463.Spec : Prop :=
  ∀ n, P808509797266060463.a n = A390577 (n + 1)

end A390577

/-! ## A390577.P8009366716318280430

`A116570(2*n)%(n+1)`
-/

namespace A390577.P8009366716318280430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A116570 (2 * n)) (n + 1 : ℤ)

end

end A390577.P8009366716318280430

namespace A390577

/-- `A116570(2*n)%(n+1)` -/
def P8009366716318280430.Spec : Prop :=
  ∀ n, P8009366716318280430.a n = A390577 (n + 1)

end A390577

/-! ## A390577.P16866353012486822001

`A033476(2*n+1)%(n+1)`
-/

namespace A390577.P16866353012486822001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A033476 (2 * n + 1)) (n + 1 : ℤ)

end

end A390577.P16866353012486822001

namespace A390577

/-- `A033476(2*n+1)%(n+1)` -/
def P16866353012486822001.Spec : Prop :=
  ∀ n, P16866353012486822001.a n = A390577 (n + 1)

end A390577

/-! ## A390577.P14943664534609788250

`A333747(2*n+1)%(n+1)`
-/

namespace A390577.P14943664534609788250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A333747 (2 * n + 1)) (n + 1 : ℤ)

end

end A390577.P14943664534609788250

namespace A390577

/-- `A333747(2*n+1)%(n+1)` -/
def P14943664534609788250.Spec : Prop :=
  ∀ n, P14943664534609788250.a n = A390577 (n + 1)

end A390577

/-!
# A390581: Antidiagonal sums of the array A389800.

The programs for A390581, the canonical program `A390581.P3602776754298798625` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A390581 has offset 0).

The definition of A390581 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A390581.P9714300352286181079

`ogf((3x-7x^2+2x^3+2x^4)/(1-4x+10x^3-4x^5+x^6))`
-/

namespace A390581.P9714300352286181079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 3, -7, 2, 2] [1, -4, 0, 10, 0, -4, 1] n

end

end A390581.P9714300352286181079

namespace A390581

/-- `ogf((3x-7x^2+2x^3+2x^4)/(1-4x+10x^3-4x^5+x^6))` -/
def P9714300352286181079.Spec : Prop :=
  ∀ n, P9714300352286181079.a n = A390581 n

end A390581

/-! ## A390581.P3602776754298798625

`4*a(n-1)-10*a(n-3)+4*a(n-5)-a(n-6)` with `a(0)=0, a(1)=3, a(2)=5, a(3)=22, a(4)=60, a(5)=190`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A390581

/-- `4*a(n-1)-10*a(n-3)+4*a(n-5)-a(n-6)` -/
def P3602776754298798625.Spec : Prop :=
  ∀ n, P3602776754298798625.a n = A390581 n

theorem P3602776754298798625.correct : P3602776754298798625.Spec := by
  intro n
  simp only [A390581]

end A390581

/-! ## A390581.P16151932840550079580

`A169630(n)+A059929(n)`
-/

namespace A390581.P16151932840550079580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169630 n + A059929 n

end

end A390581.P16151932840550079580

namespace A390581

/-- `A169630(n)+A059929(n)` -/
def P16151932840550079580.Spec : Prop :=
  ∀ n, P16151932840550079580.a n = A390581 n

end A390581

/-! ## A390581.P8792316175624491341

`A000045(n)*A094588(n+1)`
-/

namespace A390581.P8792316175624491341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n * A094588 (n + 1)

end

end A390581.P8792316175624491341

namespace A390581

/-- `A000045(n)*A094588(n+1)` -/
def P8792316175624491341.Spec : Prop :=
  ∀ n, P8792316175624491341.a n = A390581 n

end A390581

/-! ## A390581.P2624536908433327895

`(A131913(n)-A001629(n))*A000045(n)`
-/

namespace A390581.P2624536908433327895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A131913 n - A001629 n) * A000045 n

end

end A390581.P2624536908433327895

namespace A390581

/-- `(A131913(n)-A001629(n))*A000045(n)` -/
def P2624536908433327895.Spec : Prop :=
  ∀ n, P2624536908433327895.a n = A390581 n

end A390581

/-! ## A390581.P6475660719018377755

`(A007502(n+1)+A000045(n))*A000045(n)`
-/

namespace A390581.P6475660719018377755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A007502 (n + 1) + A000045 n) * A000045 n

end

end A390581.P6475660719018377755

namespace A390581

/-- `(A007502(n+1)+A000045(n))*A000045(n)` -/
def P6475660719018377755.Spec : Prop :=
  ∀ n, P6475660719018377755.a n = A390581 n

end A390581

/-! ## A390581.P4094538999696086250

`(A029907(n+1)+A010049(n))*A000045(n)`
-/

namespace A390581.P4094538999696086250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A029907 (n + 1) + A010049 n) * A000045 n

end

end A390581.P4094538999696086250

namespace A390581

/-- `(A029907(n+1)+A010049(n))*A000045(n)` -/
def P4094538999696086250.Spec : Prop :=
  ∀ n, P4094538999696086250.a n = A390581 n

end A390581

/-! ## A390581.P3223346035675897807

`(A099920(n)+A000045(n+1))*A000045(n)`
-/

namespace A390581.P3223346035675897807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A099920 n + A000045 (n + 1)) * A000045 n

end

end A390581.P3223346035675897807

namespace A390581

/-- `(A099920(n)+A000045(n+1))*A000045(n)` -/
def P3223346035675897807.Spec : Prop :=
  ∀ n, P3223346035675897807.a n = A390581 n

end A390581

/-! ## A390581.P16323377794589830810

`(A023607(n+1)-A023607(n))*A000045(n)`
-/

namespace A390581.P16323377794589830810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A023607 (n + 1) - A023607 n) * A000045 n

end

end A390581.P16323377794589830810

namespace A390581

/-- `(A023607(n+1)-A023607(n))*A000045(n)` -/
def P16323377794589830810.Spec : Prop :=
  ∀ n, P16323377794589830810.a n = A390581 n

end A390581

/-! ## A390581.P10508846027342724446

`(A022098(n)-A022097(n))*A094588(n+1)`
-/

namespace A390581.P10508846027342724446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A022098 n - A022097 n) * A094588 (n + 1)

end

end A390581.P10508846027342724446

namespace A390581

/-- `(A022098(n)-A022097(n))*A094588(n+1)` -/
def P10508846027342724446.Spec : Prop :=
  ∀ n, P10508846027342724446.a n = A390581 n

end A390581

/-! ## A390581.P8602237775037065713

`(A023607(n)-A178521(n))*A094588(n+1)`
-/

namespace A390581.P8602237775037065713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A023607 n - A178521 n) * A094588 (n + 1)

end

end A390581.P8602237775037065713

namespace A390581

/-- `(A023607(n)-A178521(n))*A094588(n+1)` -/
def P8602237775037065713.Spec : Prop :=
  ∀ n, P8602237775037065713.a n = A390581 n

end A390581

/-! ## A390581.P2965993497416396268

`(A045925(n+1)-A264147(n))*A000045(n)`
-/

namespace A390581.P2965993497416396268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A045925 (n + 1) - A264147 n) * A000045 n

end

end A390581.P2965993497416396268

namespace A390581

/-- `(A045925(n+1)-A264147(n))*A000045(n)` -/
def P2965993497416396268.Spec : Prop :=
  ∀ n, P2965993497416396268.a n = A390581 n

end A390581

/-! ## A390581.P8400210852408803602

`(A136376(n+1)-A178521(n))*A000045(n)`
-/

namespace A390581.P8400210852408803602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A136376 (n + 1) - A178521 n) * A000045 n

end

end A390581.P8400210852408803602

namespace A390581

/-- `(A136376(n+1)-A178521(n))*A000045(n)` -/
def P8400210852408803602.Spec : Prop :=
  ∀ n, P8400210852408803602.a n = A390581 n

end A390581

/-! ## A390581.P5525601992838849768

`(A354044(n)-A023607(n))*A094588(n+1)`
-/

namespace A390581.P5525601992838849768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A354044 n - A023607 n) * A094588 (n + 1)

end

end A390581.P5525601992838849768

namespace A390581

/-- `(A354044(n)-A023607(n))*A094588(n+1)` -/
def P5525601992838849768.Spec : Prop :=
  ∀ n, P5525601992838849768.a n = A390581 n

end A390581

/-! ## A390581.P13368937168133200750

`(A136391(n+2)-A000045(n))*A000045(n)`
-/

namespace A390581.P13368937168133200750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A136391 (n + 2) - A000045 n) * A000045 n

end

end A390581.P13368937168133200750

namespace A390581

/-- `(A136391(n+2)-A000045(n))*A000045(n)` -/
def P13368937168133200750.Spec : Prop :=
  ∀ n, P13368937168133200750.a n = A390581 n

end A390581

/-! ## A390581.P5362833737262974507

`A059840(n+2)+A169630(n)-A059840(n+1)`
-/

namespace A390581.P5362833737262974507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059840 (n + 2) + (A169630 n - A059840 (n + 1))

end

end A390581.P5362833737262974507

namespace A390581

/-- `A059840(n+2)+A169630(n)-A059840(n+1)` -/
def P5362833737262974507.Spec : Prop :=
  ∀ n, P5362833737262974507.a n = A390581 n

end A390581

/-! ## A390581.P1016245900313722795

`(A354044(n+1)-A045925(n+1))*A000045(n)`
-/

namespace A390581.P1016245900313722795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A354044 (n + 1) - A045925 (n + 1)) * A000045 n

end

end A390581.P1016245900313722795

namespace A390581

/-- `(A354044(n+1)-A045925(n+1))*A000045(n)` -/
def P1016245900313722795.Spec : Prop :=
  ∀ n, P1016245900313722795.a n = A390581 n

end A390581

/-! ## A390581.P16195049972635667262

`(A212804(n)+A006490(n+2))*A212804(n+1)`
-/

namespace A390581.P16195049972635667262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A212804 n + A006490 (n + 2)) * A212804 (n + 1)

end

end A390581.P16195049972635667262

namespace A390581

/-- `(A212804(n)+A006490(n+2))*A212804(n+1)` -/
def P16195049972635667262.Spec : Prop :=
  ∀ n, P16195049972635667262.a n = A390581 n

end A390581

/-! ## A390581.P16680828717812217369

`(A094588(n+1)-A007502(n+1))*A094588(n+1)`
-/

namespace A390581.P16680828717812217369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A094588 (n + 1) - A007502 (n + 1)) * A094588 (n + 1)

end

end A390581.P16680828717812217369

namespace A390581

/-- `(A094588(n+1)-A007502(n+1))*A094588(n+1)` -/
def P16680828717812217369.Spec : Prop :=
  ∀ n, P16680828717812217369.a n = A390581 n

end A390581

/-! ## A390581.P15595352069311028653

`A238420(n+1)-A292465(n)`
-/

namespace A390581.P15595352069311028653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238420 (n + 1) - A292465 n

end

end A390581.P15595352069311028653

namespace A390581

/-- `A238420(n+1)-A292465(n)` -/
def P15595352069311028653.Spec : Prop :=
  ∀ n, P15595352069311028653.a n = A390581 n

end A390581

/-!
# A390582: a(n) = (2*n - sigma(n))/gcd(n, sigma(n)).

The programs for A390582, the canonical program `A390582.P9712316944901875088` is in `Seq.B002.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A390582 has offset 1).

The definition of A390582 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A390582.P9712316944901875088

`A033879(n+1)/A009194(n+1)`

The canonical program, it is in `Seq.B002.C008`.
-/

namespace A390582

/-- `A033879(n+1)/A009194(n+1)` -/
def P9712316944901875088.Spec : Prop :=
  ∀ n, P9712316944901875088.a n = (A390582 (n + 1) : ℚ)

end A390582

/-! ## A390582.P1934437318191873696

`(2*(n+1)-A000203(n+1))/gcd(n+1, A000203(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A390582.P1934437318191873696
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 * (n + 1) : ℤ) - A000203 (n + 1) : ℚ) / (Int.gcd (n + 1 : ℤ) (A000203 (n + 1)) : ℚ)

end

end A390582.P1934437318191873696

namespace A390582

/-- `(2*(n+1)-A000203(n+1))/gcd(n+1, A000203(n+1))` -/
def P1934437318191873696.Spec : Prop :=
  ∀ n, P1934437318191873696.a n = (A390582 (n + 1) : ℚ)

end A390582

/-! ## A390582.P15364145048664735968

`A017666(n+1)-A243473(n+1)`
-/

namespace A390582.P15364145048664735968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017666 (n + 1) - A243473 (n + 1)

end

end A390582.P15364145048664735968

namespace A390582

/-- `A017666(n+1)-A243473(n+1)` -/
def P15364145048664735968.Spec : Prop :=
  ∀ n, P15364145048664735968.a n = A390582 (n + 1)

end A390582

/-! ## A390582.P13514411001308542518

`A388283(n+1)-A017666(n+1)`
-/

namespace A390582.P13514411001308542518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388283 (n + 1) - A017666 (n + 1)

end

end A390582.P13514411001308542518

namespace A390582

/-- `A388283(n+1)-A017666(n+1)` -/
def P13514411001308542518.Spec : Prop :=
  ∀ n, P13514411001308542518.a n = A390582 (n + 1)

end A390582

/-! ## A390582.P18419378328537090847

`A017666(n+1)+A017666(n+1)-A017665(n+1)`
-/

namespace A390582.P18419378328537090847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017666 (n + 1) + (A017666 (n + 1) - A017665 (n + 1))

end

end A390582.P18419378328537090847

namespace A390582

/-- `A017666(n+1)+A017666(n+1)-A017665(n+1)` -/
def P18419378328537090847.Spec : Prop :=
  ∀ n, P18419378328537090847.a n = A390582 (n + 1)

end A390582

/-! ## A390582.P8894070880855519130

`A017665(n+1)-(A243473(n+1)+A243473(n+1))`
-/

namespace A390582.P8894070880855519130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017665 (n + 1) - (A243473 (n + 1) + A243473 (n + 1))

end

end A390582.P8894070880855519130

namespace A390582

/-- `A017665(n+1)-(A243473(n+1)+A243473(n+1))` -/
def P8894070880855519130.Spec : Prop :=
  ∀ n, P8894070880855519130.a n = A390582 (n + 1)

end A390582

/-! ## A390582.P16120571730965916222

`A033885(n+1)/A009194(n+1)-A017666(n+1)`
-/

namespace A390582.P16120571730965916222
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033885 (n + 1) : ℚ) / (A009194 (n + 1) : ℚ) - (A017666 (n + 1) : ℚ)

end

end A390582.P16120571730965916222

namespace A390582

/-- `A033885(n+1)/A009194(n+1)-A017666(n+1)` -/
def P16120571730965916222.Spec : Prop :=
  ∀ n, P16120571730965916222.a n = (A390582 (n + 1) : ℚ)

end A390582

/-! ## A390582.P17043242322036942550

`(A326128(n+1)-A326127(n+1))/A009194(n+1)`
-/

namespace A390582.P17043242322036942550
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A326128 (n + 1) - A326127 (n + 1) : ℚ) / (A009194 (n + 1) : ℚ)

end

end A390582.P17043242322036942550

namespace A390582

/-- `(A326128(n+1)-A326127(n+1))/A009194(n+1)` -/
def P17043242322036942550.Spec : Prop :=
  ∀ n, P17043242322036942550.a n = (A390582 (n + 1) : ℚ)

end A390582

/-!
# A390587: Primes generated by skipping a(n-1) - a(n-2) primes after a(n-1), starting with primes a(1)=2, a(2)=3.

The programs for A390587, the canonical program `A390587.P10651787233076413835` is in `Seq.B001.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A390587 has offset 1).

The definition of A390587 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A390587.P10651787233076413835

`A000040(A000720(a(n-1))+a(n-1)-a(n-2)+1)` with `a(0)=2, a(1)=3`

The canonical program, it is in `Seq.B001.C014`.
-/

namespace A390587

/-- `A000040(A000720(a(n-1))+a(n-1)-a(n-2)+1)` -/
def P10651787233076413835.Spec : Prop :=
  ∀ n, P10651787233076413835.a n = A390587 (n + 1)

theorem P10651787233076413835.correct : P10651787233076413835.Spec := by
  intro n
  simp only [A390587, Nat.add_sub_cancel]

end A390587

/-! ## A390587.P4629778436154502834

`A008578(a(n-1)+n)` with `a(0)=2`
-/

namespace A390587.P4629778436154502834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A008578 (a (n - 1) + (n : ℤ)).toNat

end

end A390587.P4629778436154502834

namespace A390587

/-- `A008578(a(n-1)+n)` -/
def P4629778436154502834.Spec : Prop :=
  ∀ n, P4629778436154502834.a n = A390587 (n + 1)

end A390587

/-! ## A390587.P705621351611263138

`A182986(a(n-1)+n)` with `a(0)=2`
-/

namespace A390587.P705621351611263138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A182986 (a (n - 1) + (n : ℤ)).toNat

end

end A390587.P705621351611263138

namespace A390587

/-- `A182986(a(n-1)+n)` -/
def P705621351611263138.Spec : Prop :=
  ∀ n, P705621351611263138.a n = A390587 (n + 1)

end A390587

/-! ## A390587.P10738547019000191770

`A394660(a(n-1)+n)` with `a(0)=2`
-/

namespace A390587.P10738547019000191770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A394660 (a (n - 1) + (n : ℤ)).toNat

end

end A390587.P10738547019000191770

namespace A390587

/-- `A394660(a(n-1)+n)` -/
def P10738547019000191770.Spec : Prop :=
  ∀ n, P10738547019000191770.a n = A390587 (n + 1)

end A390587

/-!
# A390588: a(n) = Sum_{k=0..n} (-1)^k * binomial(3*n-k+3,n-k).

The programs for A390588, the canonical program `A390588.P4324983457239979060` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A390588 has offset 0).

The definition of A390588 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n, (-1)^#*C(3*n-#+3, n-#)]` (program `A390588.P4324983457239979060`, by `A390588.P4324983457239979060.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A390588.P4324983457239979060

`∑{#}[n, (-1)^#*C(3*n-#+3, n-#)]`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A390588

/-- `∑{#}[n, (-1)^#*C(3*n-#+3, n-#)]` -/
def P4324983457239979060.Spec : Prop :=
  ∀ n, P4324983457239979060.a n = A390588 n

theorem P4324983457239979060.correct : P4324983457239979060.Spec := by
  intro n
  simp only [A390588]

end A390588

/-! ## A390588.P7213824869674497006

`∑{#}[floor(n/2), C(3*n-2*#+2, n-2*#)]`
-/

namespace A390588.P7213824869674497006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 2⌋

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1).toNat, Nat.choose ((3 * n : ℤ) - (2 * k : ℤ) + 2).toNat ((n : ℤ) - (2 * k : ℤ)).toNat

end

end A390588.P7213824869674497006

namespace A390588

/-- `∑{#}[floor(n/2), C(3*n-2*#+2, n-2*#)]` -/
def P7213824869674497006.Spec : Prop :=
  ∀ n, (P7213824869674497006.a n : ℤ) = A390588 n

end A390588

/-! ## A390588.P6768289135541264412

`A390543(n+1)-A183160(n+1)`
-/

namespace A390588.P6768289135541264412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390543 (n + 1) - A183160 (n + 1)

end

end A390588.P6768289135541264412

namespace A390588

/-- `A390543(n+1)-A183160(n+1)` -/
def P6768289135541264412.Spec : Prop :=
  ∀ n, P6768289135541264412.a n = A390588 n

end A390588

/-! ## A390588.P10683840392904370988

`A158909(2*(n+1)²)`
-/

namespace A390588.P10683840392904370988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158909 (2 * (n + 1) ^ 2)

end

end A390588.P10683840392904370988

namespace A390588

/-- `A158909(2*(n+1)²)` -/
def P10683840392904370988.Spec : Prop :=
  ∀ n, P10683840392904370988.a n = A390588 n

end A390588

/-! ## A390588.P13233978956580808216

`A092879(A056220(n+1))`
-/

namespace A390588.P13233978956580808216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092879 (A056220 (n + 1)).toNat

end

end A390588.P13233978956580808216

namespace A390588

/-- `A092879(A056220(n+1))` -/
def P13233978956580808216.Spec : Prop :=
  ∀ n, P13233978956580808216.a n = A390588 n

end A390588

/-!
# A390589: a(n) = Sum_{k=0..n} (-1)^k * binomial(4*n-k+3,n-k).

The programs for A390589, the canonical program `A390589.P8594629750415222590` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A390589 has offset 0).

The definition of A390589 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n, (-1)^#*C(4*n-#+3, n-#)]` (program `A390589.P8594629750415222590`, by `A390589.P8594629750415222590.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A390589.P8594629750415222590

`∑{#}[n, (-1)^#*C(4*n-#+3, n-#)]`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A390589

/-- `∑{#}[n, (-1)^#*C(4*n-#+3, n-#)]` -/
def P8594629750415222590.Spec : Prop :=
  ∀ n, P8594629750415222590.a n = A390589 n

theorem P8594629750415222590.correct : P8594629750415222590.Spec := by
  intro n
  simp only [A390589]

end A390589

/-! ## A390589.P4939581405728863279

`∑{#}[floor(n/2), C(4*n-2*#+2, n-2*#)]`
-/

namespace A390589.P4939581405728863279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 2⌋

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1).toNat, Nat.choose ((4 * n : ℤ) - (2 * k : ℤ) + 2).toNat ((n : ℤ) - (2 * k : ℤ)).toNat

end

end A390589.P4939581405728863279

namespace A390589

/-- `∑{#}[floor(n/2), C(4*n-2*#+2, n-2*#)]` -/
def P4939581405728863279.Spec : Prop :=
  ∀ n, (P4939581405728863279.a n : ℤ) = A390589 n

end A390589

/-! ## A390589.P8605434666169398618

`A109244(A081267(n+1))`
-/

namespace A390589.P8605434666169398618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109244 (A081267 (n + 1)).toNat

end

end A390589.P8605434666169398618

namespace A390589

/-- `A109244(A081267(n+1))` -/
def P8605434666169398618.Spec : Prop :=
  ∀ n, P8605434666169398618.a n = A390589 n

end A390589

/-! ## A390589.P13472085782959758229

`A035317(A139272(n+1))`
-/

namespace A390589.P13472085782959758229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035317 (A139272 (n + 1)).toNat

end

end A390589.P13472085782959758229

namespace A390589

/-- `A035317(A139272(n+1))` -/
def P13472085782959758229.Spec : Prop :=
  ∀ n, P13472085782959758229.a n = A390589 n

end A390589

/-! ## A390589.P4435962257400268460

`A059260(A139275(n+1))`
-/

namespace A390589.P4435962257400268460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059260 (A139275 (n + 1)).toNat

end

end A390589.P4435962257400268460

namespace A390589

/-- `A059260(A139275(n+1))` -/
def P4435962257400268460.Spec : Prop :=
  ∀ n, P4435962257400268460.a n = A390589 n

end A390589

/-!
# A390590: a(n) = Sum_{k=0..n} (-1)^k * binomial(5*n-k+3,n-k).

The programs for A390590, the canonical program `A390590.P1353423079041411087` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A390590 has offset 0).

The definition of A390590 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n, (-1)^#*C(5*n-#+3, n-#)]` (program `A390590.P1353423079041411087`, by `A390590.P1353423079041411087.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A390590.P1353423079041411087

`∑{#}[n, (-1)^#*C(5*n-#+3, n-#)]`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A390590

/-- `∑{#}[n, (-1)^#*C(5*n-#+3, n-#)]` -/
def P1353423079041411087.Spec : Prop :=
  ∀ n, P1353423079041411087.a n = A390590 n

theorem P1353423079041411087.correct : P1353423079041411087.Spec := by
  intro n
  simp only [A390590]

end A390590

/-! ## A390590.P5037997634369071933

`∑{#}[floor(n/2), C(5*n-2*#+2, n-2*#)]`
-/

namespace A390590.P5037997634369071933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 2⌋

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1).toNat, Nat.choose ((5 * n : ℤ) - (2 * k : ℤ) + 2).toNat ((n : ℤ) - (2 * k : ℤ)).toNat

end

end A390590.P5037997634369071933

namespace A390590

/-- `∑{#}[floor(n/2), C(5*n-2*#+2, n-2*#)]` -/
def P5037997634369071933.Spec : Prop :=
  ∀ n, (P5037997634369071933.a n : ℤ) = A390590 n

end A390590

/-! ## A390590.P10717625130220701379

`A092879(A051682(n+1))`
-/

namespace A390590.P10717625130220701379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092879 (A051682 (n + 1)).toNat

end

end A390590.P10717625130220701379

namespace A390590

/-- `A092879(A051682(n+1))` -/
def P10717625130220701379.Spec : Prop :=
  ∀ n, P10717625130220701379.a n = A390590 n

end A390590

/-! ## A390590.P16162209977337084495

`A158909(A062708(n+1))`
-/

namespace A390590.P16162209977337084495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158909 (A062708 (n + 1)).toNat

end

end A390590.P16162209977337084495

namespace A390590

/-- `A158909(A062708(n+1))` -/
def P16162209977337084495.Spec : Prop :=
  ∀ n, P16162209977337084495.a n = A390590 n

end A390590

/-! ## A390590.P3365307437149129579

`A109244(A139275(n+1))`
-/

namespace A390590.P3365307437149129579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109244 (A139275 (n + 1)).toNat

end

end A390590.P3365307437149129579

namespace A390590

/-- `A109244(A139275(n+1))` -/
def P3365307437149129579.Spec : Prop :=
  ∀ n, P3365307437149129579.a n = A390590 n

end A390590

/-!
# A390591: a(n) = Sum_{k=0..n} (-1)^k * binomial(3*n-k+4,n-k).

The programs for A390591, the canonical program `A390591.P9068354773686285042` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A390591 has offset 0).

The definition of A390591 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n, (-1)^#*C(3*n-#+4, n-#)]` (program `A390591.P9068354773686285042`, by `A390591.P9068354773686285042.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A390591.P9068354773686285042

`∑{#}[n, (-1)^#*C(3*n-#+4, n-#)]`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A390591

/-- `∑{#}[n, (-1)^#*C(3*n-#+4, n-#)]` -/
def P9068354773686285042.Spec : Prop :=
  ∀ n, P9068354773686285042.a n = A390591 n

theorem P9068354773686285042.correct : P9068354773686285042.Spec := by
  intro n
  simp only [A390591]

end A390591

/-! ## A390591.P16792905480256672623

`∑{#}[floor(n/2), C(3*n-2*#+3, n-2*#)]`
-/

namespace A390591.P16792905480256672623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 2⌋

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1).toNat, Nat.choose ((3 * n : ℤ) - (2 * k : ℤ) + 3).toNat ((n : ℤ) - (2 * k : ℤ)).toNat

end

end A390591.P16792905480256672623

namespace A390591

/-- `∑{#}[floor(n/2), C(3*n-2*#+3, n-2*#)]` -/
def P16792905480256672623.Spec : Prop :=
  ∀ n, (P16792905480256672623.a n : ℤ) = A390591 n

end A390591

/-! ## A390591.P7134933344440555394

`A199033(n+1)-A390543(n+1)`
-/

namespace A390591.P7134933344440555394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199033 (n + 1) - A390543 (n + 1)

end

end A390591.P7134933344440555394

namespace A390591

/-- `A199033(n+1)-A390543(n+1)` -/
def P7134933344440555394.Spec : Prop :=
  ∀ n, P7134933344440555394.a n = A390591 n

end A390591

/-! ## A390591.P4790887395620516129

`A123521((2*n+1)*(n+2))`
-/

namespace A390591.P4790887395620516129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123521 ((2 * n + 1) * (n + 2))

end

end A390591.P4790887395620516129

namespace A390591

/-- `A123521((2*n+1)*(n+2))` -/
def P4790887395620516129.Spec : Prop :=
  ∀ n, P4790887395620516129.a n = A390591 n

end A390591

/-! ## A390591.P13658572586693086077

`A201635(A268581(n+1))`
-/

namespace A390591.P13658572586693086077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201635 (A268581 (n + 1)).toNat

end

end A390591.P13658572586693086077

namespace A390591

/-- `A201635(A268581(n+1))` -/
def P13658572586693086077.Spec : Prop :=
  ∀ n, P13658572586693086077.a n = A390591 n

end A390591

/-!
# A390592: a(n) = Sum_{k=0..n} (-1)^k * binomial(4*n-k+4,n-k).

The programs for A390592, the canonical program `A390592.P6771176206985550611` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A390592 has offset 0).

The definition of A390592 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n, (-1)^#*C(4*n-#+4, n-#)]` (program `A390592.P6771176206985550611`, by `A390592.P6771176206985550611.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A390592.P6771176206985550611

`∑{#}[n, (-1)^#*C(4*n-#+4, n-#)]`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A390592

/-- `∑{#}[n, (-1)^#*C(4*n-#+4, n-#)]` -/
def P6771176206985550611.Spec : Prop :=
  ∀ n, P6771176206985550611.a n = A390592 n

theorem P6771176206985550611.correct : P6771176206985550611.Spec := by
  intro n
  simp only [A390592]

end A390592

/-! ## A390592.P1642761807925865760

`∑{#}[floor(n/2), C(4*n-2*#+3, n-2*#)]`
-/

namespace A390592.P1642761807925865760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 2⌋

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1).toNat, Nat.choose ((4 * n : ℤ) - (2 * k : ℤ) + 3).toNat ((n : ℤ) - (2 * k : ℤ)).toNat

end

end A390592.P1642761807925865760

namespace A390592

/-- `∑{#}[floor(n/2), C(4*n-2*#+3, n-2*#)]` -/
def P1642761807925865760.Spec : Prop :=
  ∀ n, (P1642761807925865760.a n : ℤ) = A390592 n

end A390592

/-! ## A390592.P12836010919380812356

`A109244(A064226(n+1))`
-/

namespace A390592.P12836010919380812356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109244 (A064226 (n + 1)).toNat

end

end A390592.P12836010919380812356

namespace A390592

/-- `A109244(A064226(n+1))` -/
def P12836010919380812356.Spec : Prop :=
  ∀ n, P12836010919380812356.a n = A390592 n

end A390592

/-! ## A390592.P12696643757348327792

`A177993(A139275(n+1))`
-/

namespace A390592.P12696643757348327792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177993 (A139275 (n + 1)).toNat

end

end A390592.P12696643757348327792

namespace A390592

/-- `A177993(A139275(n+1))` -/
def P12696643757348327792.Spec : Prop :=
  ∀ n, P12696643757348327792.a n = A390592 n

end A390592

/-! ## A390592.P9419739915984675633

`A395545(A383464(n+1))`
-/

namespace A390592.P9419739915984675633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395545 (A383464 (n + 1)).toNat

end

end A390592.P9419739915984675633

namespace A390592

/-- `A395545(A383464(n+1))` -/
def P9419739915984675633.Spec : Prop :=
  ∀ n, P9419739915984675633.a n = A390592 n

end A390592

/-!
# A390593: a(n) = Sum_{k=0..n} (-1)^k * binomial(5*n-k+4,n-k).

The programs for A390593, the canonical program `A390593.P337184617533369706` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A390593 has offset 0).

The definition of A390593 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n, (-1)^#*C(5*n-#+4, n-#)]` (program `A390593.P337184617533369706`, by `A390593.P337184617533369706.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A390593.P17581712094212264195

`∑{#}[floor(n/2), C(5*n-2*#+3, n-2*#)]`
-/

namespace A390593.P17581712094212264195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 2⌋

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1).toNat, Nat.choose ((5 * n : ℤ) - (2 * k : ℤ) + 3).toNat ((n : ℤ) - (2 * k : ℤ)).toNat

end

end A390593.P17581712094212264195

namespace A390593

/-- `∑{#}[floor(n/2), C(5*n-2*#+3, n-2*#)]` -/
def P17581712094212264195.Spec : Prop :=
  ∀ n, (P17581712094212264195.a n : ℤ) = A390593 n

end A390593

/-! ## A390593.P3171530589708279102

`∑{#}[n, (-2)^#*C(5*n+5, n-#)]`
-/

namespace A390593.P3171530589708279102
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (-2) ^ k * (Nat.choose (5 * n + 5) ((n : ℤ) - (k : ℤ)).toNat : ℤ)

end

end A390593.P3171530589708279102

namespace A390593

/-- `∑{#}[n, (-2)^#*C(5*n+5, n-#)]` -/
def P3171530589708279102.Spec : Prop :=
  ∀ n, P3171530589708279102.a n = A390593 n

end A390593

/-! ## A390593.P337184617533369706

`∑{#}[n, (-1)^#*C(5*n-#+4, n-#)]`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A390593

/-- `∑{#}[n, (-1)^#*C(5*n-#+4, n-#)]` -/
def P337184617533369706.Spec : Prop :=
  ∀ n, P337184617533369706.a n = A390593 n

theorem P337184617533369706.correct : P337184617533369706.Spec := by
  intro n
  simp only [A390593]

end A390593

/-! ## A390593.P5374573577007736462

`A201635(A139278(n+1))`
-/

namespace A390593.P5374573577007736462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201635 (A139278 (n + 1)).toNat

end

end A390593.P5374573577007736462

namespace A390593

/-- `A201635(A139278(n+1))` -/
def P5374573577007736462.Spec : Prop :=
  ∀ n, P5374573577007736462.a n = A390593 n

end A390593

/-!
# A390594: Primes of the form (prime(k-1)*prime(k+1)) mod prime(k).

The programs for A390594, there is no canonical definition to state claims against.
-/

/-! ## A390594.P12609727396410832806

`∩[A248560(n+1), A322184(n+1)]`
-/

namespace A390594.P12609727396410832806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248560 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322184 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A390594.P12609727396410832806

/-! ## A390594.P17881234518933701137

`A139637(A162358(n+2))`
-/

namespace A390594.P17881234518933701137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139637 (A162358 (n + 2)).toNat

end

end A390594.P17881234518933701137

/-! ## A390594.P521255882968207133

`A126148(A351870(n)+2)`
-/

namespace A390594.P521255882968207133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126148 (A351870 n + 2).toNat

end

end A390594.P521255882968207133

/-! ## A390594.P4856548279860338654

`∩[A126148(n+1), A136443(n+1)]`
-/

namespace A390594.P4856548279860338654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126148 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136443 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A390594.P4856548279860338654

/-! ## A390594.P1618525644934836253

`∩[A126148(n+1), A138884(n+1)]`
-/

namespace A390594.P1618525644934836253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126148 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138884 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A390594.P1618525644934836253

/-!
# A390595: Numbers k such that the binary length of k is the same as the binary length of 3*k+1 reduced by the largest possible power of two.

The programs for A390595, the canonical program `A390595.P13905684079355047265` is in `Seq.B002.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A390595 has offset 1).

The definition of A390595 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 578 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A390595.P13905684079355047265

`eq[A070940(3*n+4), A070940(n+1)]+1`

The canonical program, it is in `Seq.B002.C008`.
-/

namespace A390595

/-- `eq[A070940(3*n+4), A070940(n+1)]+1` -/
def P13905684079355047265.Spec : Prop :=
  ∀ n, (P13905684079355047265.a n : ℤ) = A390595 (n + 1)

theorem P13905684079355047265.correct : P13905684079355047265.Spec := by
  intro n
  simp only [A390595, Nat.add_sub_cancel]

end A390595

/-! ## A390595.P14559675438240981955

`A003602(eq[A000523(n+1), A070940(3*n+5)])`
-/

namespace A390595.P14559675438240981955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070940 (3 * n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A390595.P14559675438240981955

namespace A390595

/-- `A003602(eq[A000523(n+1), A070940(3*n+5)])` -/
def P14559675438240981955.Spec : Prop :=
  ∀ n, P14559675438240981955.a n = A390595 (n + 1)

end A390595

/-! ## A390595.P12260835948583240552

`A003602(eq[A070940(3*n+5), A070940(n+1)])`
-/

namespace A390595.P12260835948583240552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070940 (3 * n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070940 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A390595.P12260835948583240552

namespace A390595

/-- `A003602(eq[A070940(3*n+5), A070940(n+1)])` -/
def P12260835948583240552.Spec : Prop :=
  ∀ n, P12260835948583240552.a n = A390595 (n + 1)

end A390595

