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
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C040
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C012
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
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
# A390500: a(n) = Sum_{k=0..n} (-1)^k * (3*k+1) * binomial(4*n-k+1,n-k)/(4*n-k+1).

The programs for A390500, there is no canonical definition to state claims against.
-/

/-! ## A390500.P8496269934193358529

`A386848(A241891(n))+A222379(2*n)`
-/

namespace A390500.P8496269934193358529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386848 (A241891 n).toNat + A222379 (2 * n)

end

end A390500.P8496269934193358529

/-!
# A390501: a(n) = floor((4^n - 3^n - n + 2)/2).

The programs for A390501, the canonical program `A390501.P11829287581223766444` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A390501 has offset 1).

The definition of A390501 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor((4^(n+1)-3^(n+1)-(n+1)+2)/2)` (program `A390501.P11829287581223766444`, by `A390501.P11829287581223766444.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A390501.P11829287581223766444

`floor((4^(n+1)-3^(n+1)-(n+1)+2)/2)`

The canonical program, it is in `Seq.B000.C040`.
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

/-! ## A390518.P1831834794992529149

`3*A087063(a(n-1))` with `a(0)=1, a(1)=1`
-/

namespace A390518.P1831834794992529149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  3 * A087063 (a (n - 1)).toNat

end

end A390518.P1831834794992529149

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

The programs for A390519, there is no canonical definition to state claims against.
-/

/-! ## A390519.P5222244177658511595

`A138164(2*n)`
-/

namespace A390519.P5222244177658511595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138164 (2 * n)

end

end A390519.P5222244177658511595

/-! ## A390519.P14432272695700563580

`A191321(4*n)`
-/

namespace A390519.P14432272695700563580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191321 (4 * n)

end

end A390519.P14432272695700563580

/-!
# A390520: a(n) = Sum_{k=0..n} (5*k+1) * binomial(3*n+2*k+1,n-k)/(3*n+2*k+1).

The programs for A390520, there is no canonical definition to state claims against.
-/

/-! ## A390520.P14663297042111110874

`A140199(floor(exp(n)))`
-/

namespace A390520.P14663297042111110874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140199 ⌊Real.exp (n : ℝ)⌋.toNat

end

end A390520.P14663297042111110874

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

/-! ## A390521.P9376075586165193809

`A058977(A000010(n+1))%A345167(2*n+5)`
-/

namespace A390521.P9376075586165193809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A058977 (A000010 (n + 1)).toNat) (A345167 (2 * n + 5))

end

end A390521.P9376075586165193809

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

/-!
# A390524: Array read by ascending antidiagonals: A(n, k) = k * Fibonacci(n).

The programs for A390524, the canonical program `A390524.P3325490279493668610` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A390524 has offset 0).

The definition of A390524 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `col(n)*A000045(row(n)-col(n))` (program `A390524.P3325490279493668610`, by `A390524.P3325490279493668610.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A390524.P3325490279493668610

`col(n)*A000045(row(n)-col(n))`

The canonical program, it is in `Seq.B001.C012`.
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

The programs for A390525, the canonical program `A390525.P327141548468234781` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A390525 has offset 0).

The definition of A390525 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000217(n)*A000045(n)` (program `A390525.P327141548468234781`, by `A390525.P327141548468234781.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A390525.P2190020798145157226

`n*(n+1)/2*A000045(n)`
-/

namespace A390525.P2190020798145157226
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n * (n + 1) : ℚ) / 2 * (A000045 n : ℚ)

end

end A390525.P2190020798145157226

namespace A390525

/-- `n*(n+1)/2*A000045(n)` -/
def P2190020798145157226.Spec : Prop :=
  ∀ n, P2190020798145157226.a n = (A390525 n : ℚ)

theorem P2190020798145157226.correct : P2190020798145157226.Spec := by
  intro n
  simp only [A390525, Nat.add_sub_cancel, A390525.P2190020798145157226.a, A390525.P327141548468234781.a, A000045, A000045.P11838749114346432762.a, A000217, A000217.P10269402890581615239.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A390525

/-! ## A390525.P327141548468234781

`A000217(n)*A000045(n)`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A390525

/-- `A000217(n)*A000045(n)` -/
def P327141548468234781.Spec : Prop :=
  ∀ n, P327141548468234781.a n = A390525 n

theorem P327141548468234781.correct : P327141548468234781.Spec := by
  intro n
  simp only [A390525]

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

The programs for A390527, there is no canonical definition to state claims against.
-/

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

/-! ## A390527.P6347774791893049039

`A224747(2*n+1)+A125187(n)`
-/

namespace A390527.P6347774791893049039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224747 (2 * n + 1) + A125187 n

end

end A390527.P6347774791893049039

/-! ## A390527.P16111599382548850958

`A224747(2*n+1)+A224747(2*n)`
-/

namespace A390527.P16111599382548850958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224747 (2 * n + 1) + A224747 (2 * n)

end

end A390527.P16111599382548850958

/-! ## A390527.P927555996872078941

`A360143(n)+A360143(n)-A390267(n)`
-/

namespace A390527.P927555996872078941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360143 n + (A360143 n - A390267 n)

end

end A390527.P927555996872078941

/-! ## A390527.P586190088385292787

`A274112(4*n)`
-/

namespace A390527.P586190088385292787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274112 (4 * n)

end

end A390527.P586190088385292787

/-!
# A390528: a(n) = Sum_{k=0..n} (5*k+1) * binomial(2*n+3*k+1,n-k)/(2*n+3*k+1).

The programs for A390528, there is no canonical definition to state claims against.
-/

/-! ## A390528.P17584362718545288945

`A394219(A087957(2*n))+A283784(n+3)`
-/

namespace A390528.P17584362718545288945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394219 (A087957 (2 * n)).toNat + A283784 (n + 3)

end

end A390528.P17584362718545288945

/-!
# A390529: Weighted count of equivalence classes of words w of length n+1 over {a, b, c, d, A, *} having exactly n letters, exactly one *, an even number of lowercase a's, and weight (-1)^(A(w)), where A(w) is the number of uppercase letters A.

The programs for A390529, the canonical program `A390529.P5102562868068074245` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A390529 has offset 0).

The definition of A390529 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A390529.P5102562868068074245

`2^n*(1+2^(n+1))-(3^(n+1)+1)/2`

The canonical program, it is in `Seq.B000.C040`.
-/

namespace A390529

/-- `2^n*(1+2^(n+1))-(3^(n+1)+1)/2` -/
def P5102562868068074245.Spec : Prop :=
  ∀ n, P5102562868068074245.a n = (A390529 n : ℚ)

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

The programs for A390532, the canonical program `A390532.P391432938433456668` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A390532 has offset 0).

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

/-! ## A390532.P391432938433456668

`4*a(n-2)-5*a(n-4)+2*a(n-6)` with `a(0)=0, a(1)=1, a(2)=1, a(3)=2, a(4)=2, a(5)=4`

The canonical program, it is in `Seq.B000.C040`.
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

The programs for A390538, the canonical program `A390538.P484711700725292266` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A390538 has offset 1).

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

The canonical program, it is in `Seq.B000.C040`.
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

The programs for A390541, the canonical program `A390541.P3504011345047521333` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A390541 has offset 0).

The definition of A390541 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 123 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A390541.P3504011345047521333

`A045721(n)-a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A390541

/-- `A045721(n)-a(n-1)` -/
def P3504011345047521333.Spec : Prop :=
  ∀ n, P3504011345047521333.a n = A390541 n

theorem P3504011345047521333.correct : P3504011345047521333.Spec := by
  intro n
  simp only [A390541]

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

theorem P11381211771776704244.correct : P11381211771776704244.Spec := by
  intro n
  simp only [A390541, Nat.add_sub_cancel, A390541.P11381211771776704244.a, A390541.P3504011345047521333.a, A045721, A045721.P7274530043682916435.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

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

The programs for A390542, there is no canonical definition to state claims against.
-/

/-! ## A390542.P7575243566225534586

`A054106(C(4*n+2-n, 2)+n)`
-/

namespace A390542.P7575243566225534586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054106 (Nat.choose ((4 * n + 2 : ℤ) - (n : ℤ)).toNat 2 + n)

end

end A390542.P7575243566225534586

/-! ## A390542.P12880357001942690793

`A054106(A051682(n+1))`
-/

namespace A390542.P12880357001942690793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054106 (A051682 (n + 1)).toNat

end

end A390542.P12880357001942690793

/-! ## A390542.P18375702230042389990

`A054106(A062708(n+1))`
-/

namespace A390542.P18375702230042389990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054106 (A062708 (n + 1)).toNat

end

end A390542.P18375702230042389990

/-! ## A390542.P10803121500216407980

`A054106(A060544(n+1)+n)`
-/

namespace A390542.P10803121500216407980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054106 (A060544 (n + 1) + (n : ℤ)).toNat

end

end A390542.P10803121500216407980

/-!
# A390543: a(n) = Sum_{k=0..n} (-1)^k * binomial(3*n-k+1,n-k).

The programs for A390543, there is no canonical definition to state claims against.
-/

/-! ## A390543.P4061584840938735981

`A165817(n+1)-A371813(n+1)`
-/

namespace A390543.P4061584840938735981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165817 (n + 1) - A371813 (n + 1)

end

end A390543.P4061584840938735981

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

/-! ## A390543.P4233547678724039929

`A109244(2*(n+1)²)`
-/

namespace A390543.P4233547678724039929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109244 (2 * (n + 1) ^ 2)

end

end A390543.P4233547678724039929

/-! ## A390543.P9941009717481412414

`A201635(A132209(n+1))`
-/

namespace A390543.P9941009717481412414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201635 (A132209 (n + 1)).toNat

end

end A390543.P9941009717481412414

/-! ## A390543.P13270727804008287537

`A201635(A142463(n+1))`
-/

namespace A390543.P13270727804008287537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201635 (A142463 (n + 1)).toNat

end

end A390543.P13270727804008287537

/-!
# A390544: a(n) = Sum_{k=0..n} (-1)^k * binomial(3*n+2*k+1,n-k).

The programs for A390544, there is no canonical definition to state claims against.
-/

/-! ## A390544.P14674568692116985565

`A121653(A079497(n+1))`
-/

namespace A390544.P14674568692116985565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121653 (A079497 (n + 1)).toNat

end

end A390544.P14674568692116985565

/-!
# A390545: a(n) = Sum_{k=0..n} (-1)^k * binomial(3*n+3*k+1,n-k).

The programs for A390545, there is no canonical definition to state claims against.
-/

/-! ## A390545.P15589885883237513819

`A063953(A377118(n+1))`
-/

namespace A390545.P15589885883237513819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063953 (A377118 (n + 1)).toNat

end

end A390545.P15589885883237513819

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

The programs for A390547, there is no canonical definition to state claims against.
-/

/-! ## A390547.P9332473378494140179

`A109244(A022267(n+1))`
-/

namespace A390547.P9332473378494140179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109244 (A022267 (n + 1)).toNat

end

end A390547.P9332473378494140179

/-! ## A390547.P8473166111317201384

`A395545(A236267(n))`
-/

namespace A390547.P8473166111317201384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395545 (A236267 n).toNat

end

end A390547.P8473166111317201384

/-! ## A390547.P12261661331783032655

`A035317(A194268(n))`
-/

namespace A390547.P12261661331783032655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035317 (A194268 n).toNat

end

end A390547.P12261661331783032655

/-! ## A390547.P8033910942981070372

`A080242(A051870(n+1))`
-/

namespace A390547.P8033910942981070372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080242 (A051870 (n + 1)).toNat

end

end A390547.P8033910942981070372

/-! ## A390547.P14353973410898058843

`A059259(A139272(n+1))`
-/

namespace A390547.P14353973410898058843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059259 (A139272 (n + 1)).toNat

end

end A390547.P14353973410898058843

/-!
# A390548: a(n) = Sum_{k=0..n} (-1)^k * binomial(5*n-k+2,n-k).

The programs for A390548, there is no canonical definition to state claims against.
-/

/-! ## A390548.P12235225459966839374

`A109244(A139273(n+1))`
-/

namespace A390548.P12235225459966839374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109244 (A139273 (n + 1)).toNat

end

end A390548.P12235225459966839374

/-! ## A390548.P12680772224557231874

`A108561(A139272(n+1)+A000217(3*n+2))`
-/

namespace A390548.P12680772224557231874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108561 (A139272 (n + 1) + A000217 (3 * n + 2)).toNat

end

end A390548.P12680772224557231874

/-!
# A390551: a(n) = Sum_{i = 0..n} i*A070939(i).

The programs for A390551, the canonical program `A390551.P17563142815161189481` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A390551 has offset 0).

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

The canonical program, it is in `Seq.B002.C007`.
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

The programs for A390554, the canonical program `A390554.P5277183224943981996` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A390554 has offset 1).

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

The canonical program, it is in `Seq.B012.C000`.
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

The programs for A390555, the canonical program `A390555.P7215730010681652163` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A390555 has offset 1).

The definition of A390555 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A049419, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A390555.P7215730010681652163

`A049419((n+1)²)`

The canonical program, it is in `Seq.B002.C007`.
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

The programs for A390559, the canonical program `A390559.P4001292015129294840` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A390559 has offset 0).

The definition of A390559 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 334 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A390559.P4001292015129294840

`A131577(n)+A004695(n)`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A390559

/-- `A131577(n)+A004695(n)` -/
def P4001292015129294840.Spec : Prop :=
  ∀ n, P4001292015129294840.a n = A390559 n

theorem P4001292015129294840.correct : P4001292015129294840.Spec := by
  intro n
  simp only [A390559]

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

The programs for A390560, the canonical program `A390560.P2938574800519434169` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A390560 has offset 0).

The definition of A390560 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 334 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A390560.P2938574800519434169

`A173173(n)+A011782(n)`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A390560

/-- `A173173(n)+A011782(n)` -/
def P2938574800519434169.Spec : Prop :=
  ∀ n, P2938574800519434169.a n = A390560 n

theorem P2938574800519434169.correct : P2938574800519434169.Spec := by
  intro n
  simp only [A390560]

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

theorem P11246535285776408470.correct : P11246535285776408470.Spec := by
  intro n
  simp only [A390560, Nat.add_sub_cancel, A390560.P11246535285776408470.a, A390560.P2938574800519434169.a, A000045, A000045.P11838749114346432762.a, A011782, A011782.P7461078519819856082.a, A173173, A173173.P8232709522219157443.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

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

The programs for A390561, the canonical program `A390561.P5357792885921023480` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A390561 has offset 0).

The definition of A390561 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 335 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A390561.P5357792885921023480

`A390562(n)-1`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A390561

/-- `A390562(n)-1` -/
def P5357792885921023480.Spec : Prop :=
  ∀ n, P5357792885921023480.a n = A390561 n

theorem P5357792885921023480.correct : P5357792885921023480.Spec := by
  intro n
  simp only [A390561]

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

The programs for A390562, the canonical program `A390562.P11016725646029615047` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A390562 has offset 0).

The definition of A390562 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 335 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

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

theorem P1684249189898440273.correct : P1684249189898440273.Spec := by
  intro n
  simp only [A390562, Nat.add_sub_cancel, A390562.P1684249189898440273.a, A390562.P11016725646029615047.a, A118406, A118406.P14829043614593646063.a, A187331, A187331.P12487754534595879316.a, A390561, A390561.P5357792885921023480.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A390562

/-! ## A390562.P11016725646029615047

`A187331(n)+A118406(n)`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A390562

/-- `A187331(n)+A118406(n)` -/
def P11016725646029615047.Spec : Prop :=
  ∀ n, P11016725646029615047.a n = A390562 n

theorem P11016725646029615047.correct : P11016725646029615047.Spec := by
  intro n
  simp only [A390562]

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

/-! ## A390564.P530136513345324609

`A324695(A358456(n+1))+A029837(3*n+1)`
-/

namespace A390564.P530136513345324609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324695 (A358456 (n + 1)).toNat + A029837 (3 * n + 1)

end

end A390564.P530136513345324609

/-!
# A390565: a(n) = floor(n^2/3 + n^3/2).

The programs for A390565, the canonical program `A390565.P17191714061800070819` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A390565 has offset 0).

The definition of A390565 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(n²/3+n^3/2)` (program `A390565.P17191714061800070819`, by `A390565.P17191714061800070819.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A390565.P17191714061800070819

`floor(n²/3+n^3/2)`

The canonical program, it is in `Seq.B000.C040`.
-/

namespace A390565

/-- `floor(n²/3+n^3/2)` -/
def P17191714061800070819.Spec : Prop :=
  ∀ n, P17191714061800070819.a n = A390565 n

theorem P17191714061800070819.correct : P17191714061800070819.Spec := by
  intro n
  simp only [A390565]

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

The programs for A390566, the canonical program `A390566.P12025773443612493557` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A390566 has offset 0).

The definition of A390566 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A390566.P12025773443612493557

`ceil(n*A045944(n)/6)`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A390566

/-- `ceil(n*A045944(n)/6)` -/
def P12025773443612493557.Spec : Prop :=
  ∀ n, P12025773443612493557.a n = A390566 n

theorem P12025773443612493557.correct : P12025773443612493557.Spec := by
  intro n
  simp only [A390566]

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

/-! ## A390566.P3590848544042846839

`A004524(A053799(n)+A000578(n))`
-/

namespace A390566.P3590848544042846839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A053799 n + A000578 n).toNat

end

end A390566.P3590848544042846839

namespace A390566

/-- `A004524(A053799(n)+A000578(n))` -/
def P3590848544042846839.Spec : Prop :=
  ∀ n, P3590848544042846839.a n = A390566 n

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
# A390570: a(n) = Sum_{k=0..n} (-1)^k * binomial(3*n+k,n-k).

The programs for A390570, there is no canonical definition to state claims against.
-/

/-! ## A390570.P15296237370080385071

`A263017(A154879(3*n)-A154879(n))`
-/

namespace A390570.P15296237370080385071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263017 (A154879 (3 * n) - A154879 n).toNat

end

end A390570.P15296237370080385071

/-!
# A390571: a(n) = Sum_{k=0..n} (-1)^k * binomial(4*n+k,n-k).

The programs for A390571, there is no canonical definition to state claims against.
-/

/-! ## A390571.P11754258294625735053

`A013580(A383464(n))`
-/

namespace A390571.P11754258294625735053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013580 (A383464 n).toNat

end

end A390571.P11754258294625735053

/-!
# A390572: a(n) = Sum_{k=0..n} (-1)^k * binomial(5*n+k,n-k).

The programs for A390572, there is no canonical definition to state claims against.
-/

/-! ## A390572.P9131083819312002791

`A371693(n)+A079690(A001018(n))`
-/

namespace A390572.P9131083819312002791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371693 n + A079690 (A001018 n).toNat

end

end A390572.P9131083819312002791

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

/-! ## A390574.P6790837234142180317

`filter[A320913(n+1), A373481(#)]`
-/

namespace A390574.P6790837234142180317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320913 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373481 (f1 j).toNat = 1) n)

end

end A390574.P6790837234142180317

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

/-! ## A390574.P7900281936088811275

`∩[A320913(n+1), A373482(n+1)]`
-/

namespace A390574.P7900281936088811275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320913 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373482 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A390574.P7900281936088811275

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

/-!
# A390577: Remainder when (prime(n) * prime(n+1)) is divided by n.

The programs for A390577, the canonical program `A390577.P15375437403461670826` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A390577 has offset 1).

The definition of A390577 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A390577.P15375437403461670826

`(A000040(n+1)*A000040(n+2))%(n+1)`

The canonical program, it is in `Seq.B001.C012`.
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

The programs for A390581, the canonical program `A390581.P3602776754298798625` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A390581 has offset 0).

The definition of A390581 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A390581.P3602776754298798625

`4*a(n-1)-10*a(n-3)+4*a(n-5)-a(n-6)` with `a(0)=0, a(1)=3, a(2)=5, a(3)=22, a(4)=60, a(5)=190`

The canonical program, it is in `Seq.B000.C040`.
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

The programs for A390582, the canonical program `A390582.P9712316944901875088` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A390582 has offset 1).

The definition of A390582 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A390582.P9712316944901875088

`A033879(n+1)/A009194(n+1)`

The canonical program, it is in `Seq.B004.C003`.
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

/-! ## A390582.P8161201816760560862

`A017665(n+1)-A243473(n+1)-A243473(n+1)`
-/

namespace A390582.P8161201816760560862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017665 (n + 1) - A243473 (n + 1) - A243473 (n + 1)

end

end A390582.P8161201816760560862

namespace A390582

/-- `A017665(n+1)-A243473(n+1)-A243473(n+1)` -/
def P8161201816760560862.Spec : Prop :=
  ∀ n, P8161201816760560862.a n = A390582 (n + 1)

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

The programs for A390587, the canonical program `A390587.P10651787233076413835` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A390587 has offset 1).

The definition of A390587 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A390587.P10651787233076413835

`A000040(A000720(a(n-1))+a(n-1)-a(n-2)+1)` with `a(0)=2, a(1)=3`

The canonical program, it is in `Seq.B001.C012`.
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

The programs for A390588, there is no canonical definition to state claims against.
-/

/-! ## A390588.P6768289135541264412

`A390543(n+1)-A183160(n+1)`
-/

namespace A390588.P6768289135541264412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390543 (n + 1) - A183160 (n + 1)

end

end A390588.P6768289135541264412

/-! ## A390588.P10683840392904370988

`A158909(2*(n+1)²)`
-/

namespace A390588.P10683840392904370988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158909 (2 * (n + 1) ^ 2)

end

end A390588.P10683840392904370988

/-! ## A390588.P13233978956580808216

`A092879(A056220(n+1))`
-/

namespace A390588.P13233978956580808216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092879 (A056220 (n + 1)).toNat

end

end A390588.P13233978956580808216

/-! ## A390588.P10164053043886835366

`A201635(A090288(n+1))`
-/

namespace A390588.P10164053043886835366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201635 (A090288 (n + 1)).toNat

end

end A390588.P10164053043886835366

/-! ## A390588.P1621797833327451186

`A035317(A081270(n))`
-/

namespace A390588.P1621797833327451186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035317 (A081270 n).toNat

end

end A390588.P1621797833327451186

/-!
# A390589: a(n) = Sum_{k=0..n} (-1)^k * binomial(4*n-k+3,n-k).

The programs for A390589, there is no canonical definition to state claims against.
-/

/-! ## A390589.P8605434666169398618

`A109244(A081267(n+1))`
-/

namespace A390589.P8605434666169398618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109244 (A081267 (n + 1)).toNat

end

end A390589.P8605434666169398618

/-! ## A390589.P13472085782959758229

`A035317(A139272(n+1))`
-/

namespace A390589.P13472085782959758229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035317 (A139272 (n + 1)).toNat

end

end A390589.P13472085782959758229

/-! ## A390589.P4435962257400268460

`A059260(A139275(n+1))`
-/

namespace A390589.P4435962257400268460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059260 (A139275 (n + 1)).toNat

end

end A390589.P4435962257400268460

/-! ## A390589.P14775296618309087309

`A177954(A139273(n+1))`
-/

namespace A390589.P14775296618309087309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177954 (A139273 (n + 1)).toNat

end

end A390589.P14775296618309087309

/-! ## A390589.P17562520123133217775

`A395545(A360416(n+1))`
-/

namespace A390589.P17562520123133217775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395545 (A360416 (n + 1)).toNat

end

end A390589.P17562520123133217775

/-!
# A390590: a(n) = Sum_{k=0..n} (-1)^k * binomial(5*n-k+3,n-k).

The programs for A390590, there is no canonical definition to state claims against.
-/

/-! ## A390590.P10717625130220701379

`A092879(A051682(n+1))`
-/

namespace A390590.P10717625130220701379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092879 (A051682 (n + 1)).toNat

end

end A390590.P10717625130220701379

/-! ## A390590.P16162209977337084495

`A158909(A062708(n+1))`
-/

namespace A390590.P16162209977337084495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158909 (A062708 (n + 1)).toNat

end

end A390590.P16162209977337084495

/-! ## A390590.P3365307437149129579

`A109244(A139275(n+1))`
-/

namespace A390590.P3365307437149129579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109244 (A139275 (n + 1)).toNat

end

end A390590.P3365307437149129579

/-!
# A390591: a(n) = Sum_{k=0..n} (-1)^k * binomial(3*n-k+4,n-k).

The programs for A390591, there is no canonical definition to state claims against.
-/

/-! ## A390591.P7134933344440555394

`A199033(n+1)-A390543(n+1)`
-/

namespace A390591.P7134933344440555394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199033 (n + 1) - A390543 (n + 1)

end

end A390591.P7134933344440555394

/-! ## A390591.P4790887395620516129

`A123521((2*n+1)*(n+2))`
-/

namespace A390591.P4790887395620516129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123521 ((2 * n + 1) * (n + 2))

end

end A390591.P4790887395620516129

/-! ## A390591.P13658572586693086077

`A201635(A268581(n+1))`
-/

namespace A390591.P13658572586693086077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201635 (A268581 (n + 1)).toNat

end

end A390591.P13658572586693086077

/-! ## A390591.P4152027031714680938

`A133113(A006137(n+1))`
-/

namespace A390591.P4152027031714680938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133113 (A006137 (n + 1)).toNat

end

end A390591.P4152027031714680938

/-! ## A390591.P16464607285984548775

`A395545(A022266(n+1))`
-/

namespace A390591.P16464607285984548775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395545 (A022266 (n + 1)).toNat

end

end A390591.P16464607285984548775

/-!
# A390592: a(n) = Sum_{k=0..n} (-1)^k * binomial(4*n-k+4,n-k).

The programs for A390592, there is no canonical definition to state claims against.
-/

/-! ## A390592.P12836010919380812356

`A109244(A064226(n+1))`
-/

namespace A390592.P12836010919380812356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109244 (A064226 (n + 1)).toNat

end

end A390592.P12836010919380812356

/-! ## A390592.P12696643757348327792

`A177993(A139275(n+1))`
-/

namespace A390592.P12696643757348327792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177993 (A139275 (n + 1)).toNat

end

end A390592.P12696643757348327792

/-! ## A390592.P9419739915984675633

`A395545(A383464(n+1))`
-/

namespace A390592.P9419739915984675633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395545 (A383464 (n + 1)).toNat

end

end A390592.P9419739915984675633

/-! ## A390592.P1487997502630647110

`A108561(A139278(n+1))`
-/

namespace A390592.P1487997502630647110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108561 (A139278 (n + 1)).toNat

end

end A390592.P1487997502630647110

/-!
# A390593: a(n) = Sum_{k=0..n} (-1)^k * binomial(5*n-k+4,n-k).

The programs for A390593, there is no canonical definition to state claims against.
-/

/-! ## A390593.P5374573577007736462

`A201635(A139278(n+1))`
-/

namespace A390593.P5374573577007736462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201635 (A139278 (n + 1)).toNat

end

end A390593.P5374573577007736462

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

The programs for A390595, the canonical program `A390595.P13905684079355047265` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A390595 has offset 1).

The definition of A390595 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 578 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A390595.P13905684079355047265

`eq[A070940(3*n+4), A070940(n+1)]+1`

The canonical program, it is in `Seq.B008.C000`.
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

