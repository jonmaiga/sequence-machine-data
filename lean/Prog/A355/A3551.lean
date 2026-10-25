import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C034
import Seq.B000.C037
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C004
import Seq.B001.C006
import Seq.B001.C008
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
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
# A355100: E.g.f. A(x) satisfies A(x) = 1 + 2 * x * A(exp(x) - 1).

The programs for A355100, there is no canonical definition to state claims against.
-/

/-! ## A355100.P16143930870996224088

`A085834(A027294(n))`
-/

namespace A355100.P16143930870996224088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085834 (A027294 n).toNat

end

end A355100.P16143930870996224088

/-!
# A355101: E.g.f. A(x) satisfies A(x) = 1 + 3 * x * A(exp(x) - 1).

The programs for A355101, there is no canonical definition to state claims against.
-/

/-! ## A355101.P19697834257095802

`A200381(A378464(n+1))`
-/

namespace A355101.P19697834257095802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200381 (A378464 (n + 1)).toNat

end

end A355101.P19697834257095802

/-!
# A355102: E.g.f. A(x) satisfies A(x) = 1 + 2 * x * A(1 - exp(-x)).

The programs for A355102, there is no canonical definition to state claims against.
-/

/-! ## A355102.P3727434154199138860

`∏{e}[18^n, A015888(#)]`
-/

namespace A355102.P3727434154199138860
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  18 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A015888 (Nat.factorization (f1 n) p)

end

end A355102.P3727434154199138860

/-!
# A355103: E.g.f. A(x) satisfies A(x) = 1 + 3 * x * A(1 - exp(-x)).

The programs for A355103, there is no canonical definition to state claims against.
-/

/-! ## A355103.P17628895712705406741

`A261929(A352901(n+1))`
-/

namespace A355103.P17628895712705406741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261929 (A352901 (n + 1)).toNat

end

end A355103.P17628895712705406741

/-!
# A355104: E.g.f. A(x) satisfies A(x) = 1 + 2 * x * A(log(1+x)).

The programs for A355104, there is no canonical definition to state claims against.
-/

/-! ## A355104.P1514283062126921779

`∏{e}[∑[n+2]^n, 2*#]`
-/

namespace A355104.P1514283062126921779
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), 2 * Nat.factorization (f1 n) p

end

end A355104.P1514283062126921779

/-!
# A355105: E.g.f. A(x) satisfies A(x) = 1 + 3 * x * A(log(1+x)).

The programs for A355105, there is no canonical definition to state claims against.
-/

/-! ## A355105.P5233067097508589138

`A008624(3^n+8^n)`
-/

namespace A355105.P5233067097508589138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008624 (3 ^ n + 8 ^ n)

end

end A355105.P5233067097508589138

/-!
# A355106: E.g.f. A(x) satisfies: A(x) = 1 + 2 * x * A(-log(1-x)).

The programs for A355106, there is no canonical definition to state claims against.
-/

/-! ## A355106.P16844780978636361354

`A000010(A318847(2*n+1)+A316651(n+1))`
-/

namespace A355106.P16844780978636361354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A318847 (2 * n + 1) + A316651 (n + 1)).toNat

end

end A355106.P16844780978636361354

/-!
# A355107: E.g.f. A(x) satisfies: A(x) = 1 + 3 * x * A(-log(1-x)).

The programs for A355107, there is no canonical definition to state claims against.
-/

/-! ## A355107.P1626724316397862662

`A008486(n*A205319(n+1))`
-/

namespace A355107.P1626724316397862662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 ((n : ℤ) * A205319 (n + 1)).toNat

end

end A355107.P1626724316397862662

/-!
# A355108: Maximal number of root ancestral configurations among matching gene trees and species trees with n leaves.

The programs for A355108, there is no canonical definition to state claims against.
-/

/-! ## A355108.P7880258444506099603

`A091980(n+1)-1`
-/

namespace A355108.P7880258444506099603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091980 (n + 1) - 1

end

end A355108.P7880258444506099603

/-! ## A355108.P16070195938435496948

`∑[A168542(n)]-1`
-/

namespace A355108.P16070195938435496948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168542 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A355108.P16070195938435496948

/-! ## A355108.P18282064913870600074

`A168542(char[1]+n)+a(n-1)` with `a(0)=0`
-/

namespace A355108.P18282064913870600074
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A168542 ((if ∃ j, f1 j = n then 1 else 0) + n) + a (n - 1)

end

end A355108.P18282064913870600074

/-! ## A355108.P9418383885930350175

`record[Δ[A091980(A158416(n))]]`
-/

namespace A355108.P9418383885930350175
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091980 (A158416 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A355108.P9418383885930350175

/-! ## A355108.P16592104732313501593

`∑[A057427(n)*A168542(n)]`
-/

namespace A355108.P16592104732313501593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A168542 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A355108.P16592104732313501593

/-!
# A355109: a(n) = 1 + Sum_{k=1..n-1} binomial(n-1,k) * 2^(k-1) * a(k).

The programs for A355109, there is no canonical definition to state claims against.
-/

/-! ## A355109.P12045135629385744909

`A165193(round(sqrt(n²+1)))/ceil(2^(n-1))`
-/

namespace A355109.P12045135629385744909
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A165193 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat : ℚ) / (⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉ : ℚ)

end

end A355109.P12045135629385744909

/-! ## A355109.P6654501578322644233

`A239093(A101338(n))`
-/

namespace A355109.P6654501578322644233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239093 (A101338 n).toNat

end

end A355109.P6654501578322644233

/-!
# A355110: Expansion of e.g.f. 2 / (3 - 2*x - exp(2*x)).

The programs for A355110, there is no canonical definition to state claims against.
-/

/-! ## A355110.P1056124456331041493

`A109234(A233564(n+1)+A049402(n))`
-/

namespace A355110.P1056124456331041493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109234 (A233564 (n + 1) + A049402 n).toNat

end

end A355110.P1056124456331041493

/-!
# A355111: Expansion of e.g.f. 3 / (4 - 3*x - exp(3*x)).

The programs for A355111, there is no canonical definition to state claims against.
-/

/-! ## A355111.P4631341083777605436

`A014132(C(∑[n]+n, n))-(n+1)`
-/

namespace A355111.P4631341083777605436
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014132 (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j + n) n) - (n + 1 : ℤ)

end

end A355111.P4631341083777605436

/-!
# A355112: Expansion of e.g.f. 4 / (5 - 4*x - exp(4*x)).

The programs for A355112, there is no canonical definition to state claims against.
-/

/-! ## A355112.P8271380200823387533

`A341944(4*(n-1)*a(n-1))` with `a(0)=1, a(1)=2`
-/

namespace A355112.P8271380200823387533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A341944 (4 * (((n : ℤ) - 1) * a (n - 1))).toNat

end

end A355112.P8271380200823387533

/-!
# A355113: Expansion of e.g.f. 5 / (6 - 5*x - exp(5*x)).

The programs for A355113, there is no canonical definition to state claims against.
-/

/-! ## A355113.P9330588420145573431

`A310677(n*a(n-1))` with `a(0)=1, a(1)=2`
-/

namespace A355113.P9330588420145573431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A310677 ((n : ℤ) * a (n - 1)).toNat

end

end A355113.P9330588420145573431

/-!
# A355114: Expansion of e.g.f. 6 / (7 - 6*x - exp(6*x)).

The programs for A355114, there is no canonical definition to state claims against.
-/

/-! ## A355114.P14560388050449605960

`A065033(Δ[A107725(n)])`
-/

namespace A355114.P14560388050449605960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107725 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (f1 (n + 1) - f1 n).toNat

end

end A355114.P14560388050449605960

/-!
# A355115: a(n) = index of n^2 in A355159.

The programs for A355115, there is no canonical definition to state claims against.
-/

/-! ## A355115.P2723399542173232977

`lt[1, A000122(A355159(n))]`
-/

namespace A355115.P2723399542173232977
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 (A355159 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A355115.P2723399542173232977

/-! ## A355115.P1209307895482554128

`eq[1, A003285(A355159(n)+1)]`
-/

namespace A355115.P1209307895482554128
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003285 (A355159 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A355115.P1209307895482554128

/-! ## A355115.P9106506359397251242

`lt[A000038(n), A010052(A355159(n))]`
-/

namespace A355115.P9106506359397251242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 (A355159 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A355115.P9106506359397251242

/-! ## A355115.P3183399809088078364

`lt[A010052(2*n), A010052(A355159(n))]`
-/

namespace A355115.P3183399809088078364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 (A355159 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A355115.P3183399809088078364

/-! ## A355115.P2127155291107636819

`∑[A000120(A334308((n+1)^3))]`
-/

namespace A355115.P2127155291107636819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A334308 ((n + 1) ^ 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A355115.P2127155291107636819

/-!
# A355116: a(1) = 1; a(n+1) = Sum_{d|n} 3^(n/d - 1) * a(d).

The programs for A355116, there is no canonical definition to state claims against.
-/

/-! ## A355116.P1022611435861718588

`A215090(A355117(n+1))`
-/

namespace A355116.P1022611435861718588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215090 (A355117 (n + 1)).toNat

end

end A355116.P1022611435861718588

/-! ## A355116.P10663674124367210343

`A185053(A219410(n+1))+A098183(n)`
-/

namespace A355116.P10663674124367210343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185053 (A219410 (n + 1)).toNat + A098183 n

end

end A355116.P10663674124367210343

/-! ## A355116.P7053951485513334606

`A130091(A290890(n)^A319699(n+1))`
-/

namespace A355116.P7053951485513334606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130091 (SequenceMachineLib.roundAway ((A290890 n : ℚ) ^ (A319699 (n + 1) : ℤ))).toNat

end

end A355116.P7053951485513334606

/-!
# A355117: a(1) = 1; a(n+1) = Sum_{d|n} 4^(n/d - 1) * a(d).

The programs for A355117, there is no canonical definition to state claims against.
-/

/-! ## A355117.P7524773280894170504

`or(3, A262293(n+2))-2`
-/

namespace A355117.P7524773280894170504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 3 (A262293 (n + 2)) - 2

end

end A355117.P7524773280894170504

/-! ## A355117.P16441708802788740586

`A162226(Δ[(4-2/n)*a(n-1)])` with `a(0)=1`
-/

namespace A355117.P16441708802788740586
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  (4 - 2 / (n : ℚ)) * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162226 (SequenceMachineLib.roundAway (f1 (n + 1) - f1 n)).toNat

end

end A355117.P16441708802788740586

/-!
# A355118: The number of nonequivalent root ancestral configurations in a recursively defined family of gene trees and species trees with at least n = 9 leaves, in which for n >= 12 leaves, 3-leaf trees are successively added at the root of the tree with n-3 leaves.

The programs for A355118, the canonical program `A355118.P11490181524008332852` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A355118 has offset 9).

The definition of A355118 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A355118.P11490181524008332852

`3*a(n-3)` with `a(0)=23, a(1)=33, a(2)=47`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A355118

/-- `3*a(n-3)` -/
def P11490181524008332852.Spec : Prop :=
  ∀ n, (P11490181524008332852.a n : ℤ) = A355118 (n + 9)

theorem P11490181524008332852.correct : P11490181524008332852.Spec := by
  intro n
  simp only [A355118, Nat.add_sub_cancel]

end A355118

/-! ## A355118.P16865900732772694710

`3^floor(n/3)*(2*(n-3*floor(n/3))²+8*(n-3*floor(n/3))+23)`
-/

namespace A355118.P16865900732772694710
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ (⌊(n : ℚ) / 3⌋ : ℤ) * (2 * ((n : ℤ) - 3 * ⌊(n : ℚ) / 3⌋) ^ 2 + 8 * ((n : ℤ) - 3 * ⌊(n : ℚ) / 3⌋) + 23 : ℚ)

end

end A355118.P16865900732772694710

namespace A355118

/-- `3^floor(n/3)*(2*(n-3*floor(n/3))²+8*(n-3*floor(n/3))+23)` -/
def P16865900732772694710.Spec : Prop :=
  ∀ n, P16865900732772694710.a n = (A355118 (n + 9) : ℚ)

end A355118

/-! ## A355118.P15613335345784557481

`a(n-3)/(1-2/3)` with `a(0)=23, a(1)=33, a(2)=47`
-/

namespace A355118.P15613335345784557481
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [23, 33, 47] fun n a =>
  a (n - 3) / (1 - (2 : ℚ) / 3)

end

end A355118.P15613335345784557481

namespace A355118

/-- `a(n-3)/(1-2/3)` -/
def P15613335345784557481.Spec : Prop :=
  ∀ n, P15613335345784557481.a n = (A355118 (n + 9) : ℚ)

end A355118

/-! ## A355118.P11033323155309615680

`2*A253062(n+7)+1`
-/

namespace A355118.P11033323155309615680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A253062 (n + 7) + 1

end

end A355118.P11033323155309615680

namespace A355118

/-- `2*A253062(n+7)+1` -/
def P11033323155309615680.Spec : Prop :=
  ∀ n, P11033323155309615680.a n = A355118 (n + 9)

end A355118

/-!
# A355119: a(n) is the number of order-n magic triangles composed of the numbers from 1 to n(n+1)/2 in which the sum of the k-th row and the (n-k+1)-st row is the same for all k and all three directions, counted up to rotations and reflections.

The programs for A355119, there is no canonical definition to state claims against.
-/

/-! ## A355119.P8589785218470401866

`A370641(A287291(n))`
-/

namespace A355119.P8589785218470401866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370641 (A287291 n).toNat

end

end A355119.P8589785218470401866

/-!
# A355120: E.g.f. A(x) satisfies A(x) = 1 + log(1+x) * A(2 * log(1+x)).

The programs for A355120, there is no canonical definition to state claims against.
-/

/-! ## A355120.P8330979210443644641

`A007782(or(4, a(n-1)))` with `a(0)=1, a(1)=1, a(2)=3`
-/

namespace A355120.P8330979210443644641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 3] fun n a =>
  A007782 (Int.lor 4 (a (n - 1))).toNat

end

end A355120.P8330979210443644641

/-!
# A355121: E.g.f. A(x) satisfies A(x) = 1 - log(1-x) * A(-2 * log(1-x)).

The programs for A355121, there is no canonical definition to state claims against.
-/

/-! ## A355121.P11778874177317573288

`A313492(A006054(n)^4)`
-/

namespace A355121.P11778874177317573288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313492 (A006054 n ^ 4).toNat

end

end A355121.P11778874177317573288

/-!
# A355122: E.g.f. A(x) satisfies A(x) = 1 + (exp(x) - 1) * A(2 * (exp(x) - 1)).

The programs for A355122, there is no canonical definition to state claims against.
-/

/-! ## A355122.P16040346902330435176

`A239636(2^A011782(n))`
-/

namespace A355122.P16040346902330435176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239636 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A011782 n : ℤ))).toNat

end

end A355122.P16040346902330435176

/-!
# A355123: E.g.f. A(x) satisfies A(x) = 1 + (1 - exp(-x)) * A(2 * (1 - exp(-x))).

The programs for A355123, there is no canonical definition to state claims against.
-/

/-! ## A355123.P4126885345240028478

`A204458(∏[n!])`
-/

namespace A355123.P4126885345240028478
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204458 (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A355123.P4126885345240028478

/-!
# A355124: E.g.f. A(x) satisfies A(x) = 1 + x * A(2 * log(1+x)).

The programs for A355124, there is no canonical definition to state claims against.
-/

/-! ## A355124.P6481955325980826197

`A164530((2*n-1)*a(n-1)-(n-1)*(n-2)*a(n-2))` with `a(0)=1, a(1)=1`
-/

namespace A355124.P6481955325980826197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A164530 (((2 * n : ℤ) - 1) * a (n - 1) - ((n : ℤ) - 1) * (((n : ℤ) - 2) * a (n - 2))).toNat

end

end A355124.P6481955325980826197

/-!
# A355125: Positions of nonzero terms in A354883.

The programs for A355125, there is no canonical definition to state claims against.
-/

/-! ## A355125.P591687237902975736

`ogf((3+2x-2x^3+2x^4+3x^6-3x^7)/(1-2x+x^2))`
-/

namespace A355125.P591687237902975736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, 2, 0, -2, 2, 0, 3, -3] [1, -2, 1] n

end

end A355125.P591687237902975736

/-! ## A355125.P12503609960069810537

`lt[A016339(2*n), 0]`
-/

namespace A355125.P12503609960069810537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016339 (2 * n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A355125.P12503609960069810537

/-! ## A355125.P4509802787944839753

`eq[1, -A016379(2*n)]`
-/

namespace A355125.P4509802787944839753
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A016379 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A355125.P4509802787944839753

/-! ## A355125.P10213069521154337732

`lt[0, A354883(n+1)]+1`
-/

namespace A355125.P10213069521154337732
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354883 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A355125.P10213069521154337732

/-! ## A355125.P12693287868905716385

`A190486(n+1)+∑[char[3*n]]`
-/

namespace A355125.P12693287868905716385
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190486 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A355125.P12693287868905716385

/-!
# A355126: E.g.f. A(x) satisfies: A(x) = 1 + x * A(-2 * log(1-x)).

The programs for A355126, there is no canonical definition to state claims against.
-/

/-! ## A355126.P16673509451063685005

`A325792(n!+n!-1)`
-/

namespace A355126.P16673509451063685005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325792 ((Nat.factorial n : ℤ) + ((Nat.factorial n : ℤ) - 1)).toNat

end

end A355126.P16673509451063685005

/-!
# A355129: a(n) is the number of integer sequences b(0..n) of length n+1, with 0 <= b(k) <= k! and monotonic b(k) <= b(k+1).

The programs for A355129, there is no canonical definition to state claims against.
-/

/-! ## A355129.P15625550472338361812

`A095741(A041957(n+1))`
-/

namespace A355129.P15625550472338361812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095741 (A041957 (n + 1)).toNat

end

end A355129.P15625550472338361812

/-!
# A355130: E.g.f. A(x) satisfies A(x) = 1 + x * A(2 * (1 - exp(-x))).

The programs for A355130, there is no canonical definition to state claims against.
-/

/-! ## A355130.P168209793054506922

`A334268(A336516(n))`
-/

namespace A355130.P168209793054506922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334268 (A336516 n).toNat

end

end A355130.P168209793054506922

/-!
# A355131: E.g.f. A(x) satisfies A(x) = 1 + 2 * (exp(x) - 1) * A(2 * (exp(x) - 1)).

The programs for A355131, there is no canonical definition to state claims against.
-/

/-! ## A355131.P17135945711250423506

`A355128(n+1)/(n+1)`
-/

namespace A355131.P17135945711250423506
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A355128 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A355131.P17135945711250423506

/-!
# A355132: E.g.f. A(x) satisfies A(x) = 1 + 2 * (1 - exp(-x)) * A(2 * (1 - exp(-x))).

The programs for A355132, there is no canonical definition to state claims against.
-/

/-! ## A355132.P18372302940169791616

`A355130(n+1)/(n+1)`
-/

namespace A355132.P18372302940169791616
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A355130 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A355132.P18372302940169791616

/-!
# A355133: E.g.f. A(x) satisfies A(x) = 1 + 2 * log(1+x) * A(2 * log(1+x)).

The programs for A355133, there is no canonical definition to state claims against.
-/

/-! ## A355133.P380509566350809459

`A355124(n+1)/(n+1)`
-/

namespace A355133.P380509566350809459
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A355124 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A355133.P380509566350809459

/-!
# A355134: E.g.f. A(x) satisfies A(x) = 1 - 2 * log(1-x) * A(-2 * log(1-x)).

The programs for A355134, there is no canonical definition to state claims against.
-/

/-! ## A355134.P6937998286079716514

`A355126(n+1)/(n+1)`
-/

namespace A355134.P6937998286079716514
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A355126 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A355134.P6937998286079716514

/-!
# A355135: The indices where A355072(n) = 1.

The programs for A355135, there is no canonical definition to state claims against.
-/

/-! ## A355135.P4997293455930350342

`eq[1, A355072(n)]`
-/

namespace A355135.P4997293455930350342
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355072 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A355135.P4997293455930350342

/-! ## A355135.P16189731919974899545

`lt[A355072(n+1), 2]+1`
-/

namespace A355135.P16189731919974899545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355072 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A355135.P16189731919974899545

/-! ## A355135.P14562287305747033780

`lt[A008348(A355072(n)+2), 1]`
-/

namespace A355135.P14562287305747033780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008348 (A355072 n + 2).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A355135.P14562287305747033780

/-! ## A355135.P13838448281314148451

`lt[A355072(n), atan(A008348(n²))]`
-/

namespace A355135.P13838448281314148451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355072 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.arctan (A008348 (n ^ 2) : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A355135.P13838448281314148451

/-! ## A355135.P5653612493013133020

`lt[A078008(A355072(n)), A279061(n)]`
-/

namespace A355135.P5653612493013133020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078008 (A355072 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279061 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A355135.P5653612493013133020

/-!
# A355137: Indices of primes in the sequence A000296.

The programs for A355137, there is no canonical definition to state claims against.
-/

/-! ## A355137.P1839818959294194413

`A011784(n+2)+Δ[A224809(A276086(n)+7)]`
-/

namespace A355137.P1839818959294194413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224809 (A276086 n + 7).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011784 (n + 2) + (f1 (n + 1) - f1 n)

end

end A355137.P1839818959294194413

/-!
# A355138: The products of consecutive terms in A355061.

The programs for A355138, there is no canonical definition to state claims against.
-/

/-! ## A355138.P1840124184809535280

`A355061(n+1)*A355061(n+2)`
-/

namespace A355138.P1840124184809535280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355061 (n + 1) * A355061 (n + 2)

end

end A355138.P1840124184809535280

/-!
# A355140: n/d(n) rounded to the nearest integer, where d(n) is the number of divisors of n (A000005).

The programs for A355140, the canonical program `A355140.P14893836911162377731` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A355140 has offset 1).

The definition of A355140 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A355140.P14893836911162377731

`round((n+1)/A000005(n+1))`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A355140

/-- `round((n+1)/A000005(n+1))` -/
def P14893836911162377731.Spec : Prop :=
  ∀ n, P14893836911162377731.a n = A355140 (n + 1)

theorem P14893836911162377731.correct : P14893836911162377731.Spec := by
  intro n
  simp only [A355140, Nat.add_sub_cancel]

end A355140

/-! ## A355140.P1485181131064160105

`round((n+1)/∏{e}[n+1, #+1])`
-/

namespace A355140.P1485181131064160105
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℚ))

end

end A355140.P1485181131064160105

namespace A355140

/-- `round((n+1)/∏{e}[n+1, #+1])` -/
def P1485181131064160105.Spec : Prop :=
  ∀ n, P1485181131064160105.a n = A355140 (n + 1)

theorem P1485181131064160105.correct : P1485181131064160105.Spec := by
  intro n
  simp only [A355140, Nat.add_sub_cancel, A355140.P1485181131064160105.f1, A355140.P1485181131064160105.a, A355140.P14893836911162377731.a, A000005, A000005.P16091521709108585461.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A355140

/-! ## A355140.P7655171255208596010

`round((n+1)/∑{d}[n+1, gcd(n, #)])`
-/

namespace A355140.P7655171255208596010
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∑ d ∈ Nat.divisors (f1 n), Nat.gcd n d : ℕ) : ℚ))

end

end A355140.P7655171255208596010

namespace A355140

/-- `round((n+1)/∑{d}[n+1, gcd(n, #)])` -/
def P7655171255208596010.Spec : Prop :=
  ∀ n, P7655171255208596010.a n = A355140 (n + 1)

end A355140

/-! ## A355140.P8829199193893303187

`round((n+1)/∑{d}[n+1, ceil(acot(#))])`
-/

namespace A355140.P8829199193893303187
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∑ d ∈ Nat.divisors (f1 n), ⌈SequenceMachineLib.acot (d : ℝ)⌉ : ℤ) : ℚ))

end

end A355140.P8829199193893303187

namespace A355140

/-- `round((n+1)/∑{d}[n+1, ceil(acot(#))])` -/
def P8829199193893303187.Spec : Prop :=
  ∀ n, P8829199193893303187.a n = A355140 (n + 1)

end A355140

/-! ## A355140.P2940642956974228938

`round((n+1)/∑{d}[n+1, ceil(1/#)])`
-/

namespace A355140.P2940642956974228938
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∑ d ∈ Nat.divisors (f1 n), ⌈1 / (d : ℚ)⌉ : ℤ) : ℚ))

end

end A355140.P2940642956974228938

namespace A355140

/-- `round((n+1)/∑{d}[n+1, ceil(1/#)])` -/
def P2940642956974228938.Spec : Prop :=
  ∀ n, P2940642956974228938.a n = A355140 (n + 1)

end A355140

/-! ## A355140.P14678310707691558410

`round((n+1)/floor(∑{d}[n+1, root(#, n+1)]))`
-/

namespace A355140.P14678310707691558410
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n + 1 : ℚ) / (⌊∑ d ∈ Nat.divisors (f1 n), (d : ℝ) ^ (1 / (n + 1 : ℝ))⌋ : ℚ))

end

end A355140.P14678310707691558410

namespace A355140

/-- `round((n+1)/floor(∑{d}[n+1, root(#, n+1)]))` -/
def P14678310707691558410.Spec : Prop :=
  ∀ n, P14678310707691558410.a n = A355140 (n + 1)

end A355140

/-! ## A355140.P4112601679961234063

`round((n+1)/Δ[A006218(n)])`
-/

namespace A355140.P4112601679961234063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n + 1 : ℚ) / (f1 (n + 1) - f1 n : ℚ))

end

end A355140.P4112601679961234063

namespace A355140

/-- `round((n+1)/Δ[A006218(n)])` -/
def P4112601679961234063.Spec : Prop :=
  ∀ n, P4112601679961234063.a n = A355140 (n + 1)

end A355140

/-! ## A355140.P6253040562825579937

`round((n+1)/abs(Δ[A139432(n)]))`
-/

namespace A355140.P6253040562825579937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139432 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n + 1 : ℚ) / (|f1 (n + 1) - f1 n| : ℚ))

end

end A355140.P6253040562825579937

namespace A355140

/-- `round((n+1)/abs(Δ[A139432(n)]))` -/
def P6253040562825579937.Spec : Prop :=
  ∀ n, P6253040562825579937.a n = A355140 (n + 1)

end A355140

/-! ## A355140.P6422273449582602737

`round((n+1)/(∑{d}[n+1, 1-A000010(#)]+n+1))`
-/

namespace A355140.P6422273449582602737
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∑ d ∈ Nat.divisors (f1 n), (1 - A000010 d) + (n + 1 : ℤ) : ℤ) : ℚ))

end

end A355140.P6422273449582602737

namespace A355140

/-- `round((n+1)/(∑{d}[n+1, 1-A000010(#)]+n+1))` -/
def P6422273449582602737.Spec : Prop :=
  ∀ n, P6422273449582602737.a n = A355140 (n + 1)

end A355140

/-!
# A355141: a(0)=1, a(1)=a(2)=0; for n > 2, a(n) = a(n-1) + s if n is odd, a(n-1) - s if n is even, where s = a(n-1) + a(n-2) + a(n-3).

The programs for A355141, there is no canonical definition to state claims against.
-/

/-! ## A355141.P8048847972677006146

`A001030(n+1)-A115570(A332542(2*(n+3)))`
-/

namespace A355141.P8048847972677006146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001030 (n + 1) - A115570 (A332542 (2 * (n + 3))).toNat

end

end A355141.P8048847972677006146

/-! ## A355141.P9113891922299239196

`A188973(2*(n+2))-A320655(A161703(3*n+1))`
-/

namespace A355141.P9113891922299239196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188973 (2 * (n + 2)) - A320655 (A161703 (3 * n + 1)).toNat

end

end A355141.P9113891922299239196

/-!
# A355143: Product of middle divisors of n, or 0 if there are no middle divisors of n.

The programs for A355143, there is no canonical definition to state claims against.
-/

/-! ## A355143.P14069395096544740685

`and(A274881(n), A331237(A071042(n+2)))`
-/

namespace A355143.P14069395096544740685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A274881 n) (A331237 (A071042 (n + 2)).toNat)

end

end A355143.P14069395096544740685

/-! ## A355143.P16058390565868027503

`A067742(n+1)*A226207(A262568(n+3))`
-/

namespace A355143.P16058390565868027503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067742 (n + 1) * A226207 (A262568 (n + 3)).toNat

end

end A355143.P16058390565868027503

/-! ## A355143.P5385432601934566626

`A305929(A071090(n+1))%A075959(n+3)`
-/

namespace A355143.P5385432601934566626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A305929 (A071090 (n + 1)).toNat) (A075959 (n + 3))

end

end A355143.P5385432601934566626

/-! ## A355143.P14792167631603662794

`lcm(A067742(n+1), A285707(A018405(n+1)))`
-/

namespace A355143.P14792167631603662794
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A067742 (n + 1)) (A285707 (A018405 (n + 1)).toNat)

end

end A355143.P14792167631603662794

/-!
# A355144: Number T(n,k) of partitions of [n] having exactly k blocks of size at least three; triangle T(n,k), n>=0, 0<=k<=floor(n/3), read by rows.

The programs for A355144, there is no canonical definition to state claims against.
-/

/-! ## A355144.P14328099237495125434

`A324935(A091958(n))`
-/

namespace A355144.P14328099237495125434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324935 (A091958 n).toNat

end

end A355144.P14328099237495125434

/-!
# A355145: Triangle read by rows: T(n,k) is the number of primitive subsets of {1,...,n} of cardinality k; n>=0, 0<=k<=ceiling(n/2).

The programs for A355145, there is no canonical definition to state claims against.
-/

/-! ## A355145.P14590377999331736884

`A187489(n%A034190(2*(n+1)))`
-/

namespace A355145.P14590377999331736884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187489 (Int.tmod (n : ℤ) (A034190 (2 * (n + 1)))).toNat

end

end A355145.P14590377999331736884

/-! ## A355145.P79443224748059210

`gcd(A000292(A139054(n+1)), A139051(n+1))`
-/

namespace A355145.P79443224748059210
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000292 (A139054 (n + 1)).toNat) (A139051 (n + 1))

end

end A355145.P79443224748059210

/-! ## A355145.P3188250588417910965

`A365832(lt[A097610(n), A365832(n)])`
-/

namespace A355145.P3188250588417910965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097610 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365832 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365832 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A355145.P3188250588417910965

/-! ## A355145.P1154409055839669708

`A092573(A001045(n))!*A187489(n)`
-/

namespace A355145.P1154409055839669708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A092573 (A001045 n).toNat).toNat : ℤ) * A187489 n

end

end A355145.P1154409055839669708

/-! ## A355145.P14401561183470260804

`A187489(n)+A025466(A279262(n+1))`
-/

namespace A355145.P14401561183470260804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187489 n + A025466 (A279262 (n + 1)).toNat

end

end A355145.P14401561183470260804

/-!
# A355146: Triangle read by rows: T(n,k) is the number of subsets of {1,...,n} of cardinality k in which every pair of elements is coprime; n >= 0, 0 <= k <= A036234(n).

The programs for A355146, there is no canonical definition to state claims against.
-/

/-! ## A355146.P16498859022280303605

`or(A055794(n), A320841(A027437(n)))`
-/

namespace A355146.P16498859022280303605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A055794 n) (A320841 (A027437 n).toNat)

end

end A355146.P16498859022280303605

/-! ## A355146.P13278490792743196335

`A200647(or(A051767(n+1), A086645(n)))`
-/

namespace A355146.P13278490792743196335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200647 (Int.lor (A051767 (n + 1)) (A086645 n)).toNat

end

end A355146.P13278490792743196335

/-!
# A355147: Triangle read by rows: T(n,k) is the number of product-free subsets of {1,...,n} with cardinality k; n >= 0, 0 <= k <= A028391(n).

The programs for A355147, there is no canonical definition to state claims against.
-/

/-! ## A355147.P14034625451959036013

`A307998(n^a(ceil(log2(n))))` with `a(0)=1`
-/

namespace A355147.P14034625451959036013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A307998 (SequenceMachineLib.roundAway ((n : ℚ) ^ (a ⌈Real.logb 2 (n : ℝ)⌉.toNat : ℤ))).toNat

end

end A355147.P14034625451959036013

/-! ## A355147.P13000392969599585847

`gcd(A190134(n+1), A190659(n+1))`
-/

namespace A355147.P13000392969599585847
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A190134 (n + 1)) (A190659 (n + 1))

end

end A355147.P13000392969599585847

/-! ## A355147.P16642538011456696640

`A300119(or(n, A300096(2*n+1)))`
-/

namespace A355147.P16642538011456696640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300119 (Int.lor (n : ℤ) (A300096 (2 * n + 1))).toNat

end

end A355147.P16642538011456696640

/-! ## A355147.P1167953253540581279

`A008284(A214258(n+1)+A131613(n+2))`
-/

namespace A355147.P1167953253540581279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008284 (A214258 (n + 1) + A131613 (n + 2)).toNat

end

end A355147.P1167953253540581279

/-!
# A355148: Numbers that are the concatenation of two palindromes and that have exactly two palindromic factors, all with the same number of decimal digits.

The programs for A355148, there is no canonical definition to state claims against.
-/

/-! ## A355148.P1367524347314032793

`∩[A038687(n+1), A174995(n+1)]`
-/

namespace A355148.P1367524347314032793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038687 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174995 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A355148.P1367524347314032793

/-! ## A355148.P11808501662869793833

`∩[A101594(n+1), A174995(n+1)]`
-/

namespace A355148.P11808501662869793833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101594 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174995 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A355148.P11808501662869793833

/-! ## A355148.P7906630252395075926

`∩[A125290(n+1), A174995(n+1)]`
-/

namespace A355148.P7906630252395075926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125290 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174995 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A355148.P7906630252395075926

/-! ## A355148.P10708138338067452665

`∩[A122426(n+1), A229300(n+1)]`
-/

namespace A355148.P10708138338067452665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122426 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229300 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A355148.P10708138338067452665

/-! ## A355148.P17169953459150583592

`∩[A141322(n+1), A229300(n+1)]`
-/

namespace A355148.P17169953459150583592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141322 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229300 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A355148.P17169953459150583592

/-!
# A355149: Partial sums of A351743.

The programs for A355149, there is no canonical definition to state claims against.
-/

/-! ## A355149.P3995413015255767405

`∑[A351743(n+1)]`
-/

namespace A355149.P3995413015255767405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351743 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A355149.P3995413015255767405

/-! ## A355149.P9970370054943745013

`A351743(n+1)+a(A023443(n))` with `a(0)=1`
-/

namespace A355149.P9970370054943745013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A351743 (n + 1) + a (A023443 n).toNat

end

end A355149.P9970370054943745013

/-!
# A355150: The Hamming weight of A354169, a(n) = A000120(A354169(n)).

The programs for A355150, there is no canonical definition to state claims against.
-/

/-! ## A355150.P1329046960533386865

`A000120(A354169(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A355150.P1329046960533386865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A354169 n).toNat

end

end A355150.P1329046960533386865

/-! ## A355150.P4775055712183789841

`A057427(n)+char[A354798(n+2)]`
-/

namespace A355150.P4775055712183789841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354798 (n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A355150.P4775055712183789841

/-! ## A355150.P11736347249115149383

`char[A354798(n+1)]+1-A000038(n)`
-/

namespace A355150.P11736347249115149383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354798 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) + (1 - A000038 n)

end

end A355150.P11736347249115149383

/-! ## A355150.P3437523511004844122

`char[A354798(n+1)]-A153881(n+1)`
-/

namespace A355150.P3437523511004844122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354798 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) - A153881 (n + 1)

end

end A355150.P3437523511004844122

/-! ## A355150.P12797549579370817693

`∑{e}[A355701(n), #]`
-/

namespace A355150.P12797549579370817693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355701 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A355150.P12797549579370817693

/-! ## A355150.P18304223762613563375

`A001221(A355701(n))`
-/

namespace A355150.P18304223762613563375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A355701 n).toNat

end

end A355150.P18304223762613563375

/-! ## A355150.P13838657926970237996

`dr(A355892(n))`
-/

namespace A355150.P13838657926970237996
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A355892 n)

end

end A355150.P13838657926970237996

/-!
# A355152: G.f. A(x) satisfies: 0 = Sum_{n=-oo..+oo} x^(n^2) * (x^n - (-1)^n*A(x))^(n+1).

The programs for A355152, there is no canonical definition to state claims against.
-/

/-! ## A355152.P7328638801832035186

`A208825(2*(n+1))+A004526(A000045(3*n))`
-/

namespace A355152.P7328638801832035186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208825 (2 * (n + 1)) + A004526 (A000045 (3 * n)).toNat

end

end A355152.P7328638801832035186

/-! ## A355152.P1751626382020688419

`A050296(A219261(n+1))`
-/

namespace A355152.P1751626382020688419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050296 (A219261 (n + 1)).toNat

end

end A355152.P1751626382020688419

/-!
# A355153: G.f. A(x) satisfies: 0 = Sum_{n=-oo..+oo} x^(n*(n+1)/2) * (x^n - (-1)^n*2*A(x))^(n+1).

The programs for A355153, there is no canonical definition to state claims against.
-/

/-! ## A355153.P9055798012697397350

`A104493(a(n-1)+3)` with `a(0)=1, a(1)=2`
-/

namespace A355153.P9055798012697397350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A104493 (a (n - 1) + 3).toNat

end

end A355153.P9055798012697397350

/-!
# A355154: G.f. A(x) satisfies: 1 = Sum_{n=-oo..+oo} (-x)^((n+1)^2) * ((1+x)^n - A(x))^n.

The programs for A355154, there is no canonical definition to state claims against.
-/

/-! ## A355154.P5825777467985664722

`A329244(n)+A002264(A173650(2*(n+1)))`
-/

namespace A355154.P5825777467985664722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329244 n + A002264 (A173650 (2 * (n + 1))).toNat

end

end A355154.P5825777467985664722

/-!
# A355155: G.f. A(x) satisfies: 2 = Sum_{n=-oo..+oo} (-x)^(n*(n+1)/2) * ((1+x)^(n+1) - 2*A(x))^n.

The programs for A355155, there is no canonical definition to state claims against.
-/

/-! ## A355155.P1208774836223001581

`A065033(xor(A026549(n), A027329(n)))`
-/

namespace A355155.P1208774836223001581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (Int.xor (A026549 n) (A027329 n)).toNat

end

end A355155.P1208774836223001581

/-!
# A355156: G.f. A(x) satisfies: 2 = Sum_{n=-oo..+oo} (-x)^(n*(n+1)/2) * ((1+x)^n + 2*A(x))^(n+1).

The programs for A355156, there is no canonical definition to state claims against.
-/

/-! ## A355156.P14329837193297021397

`A261699(A281970(n))+A214954(n)`
-/

namespace A355156.P14329837193297021397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261699 (A281970 n).toNat + A214954 n

end

end A355156.P14329837193297021397

/-!
# A355158: Number of partitions of n that contain more nonprime parts than prime parts.

The programs for A355158, there is no canonical definition to state claims against.
-/

/-! ## A355158.P14445726620888971856

`A355306(n)-A355225(n)`
-/

namespace A355158.P14445726620888971856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355306 n - A355225 n

end

end A355158.P14445726620888971856

/-! ## A355158.P12413044466262297990

`A000041(n)-A155515(n)-A355225(n)`
-/

namespace A355158.P12413044466262297990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A155515 n - A355225 n

end

end A355158.P12413044466262297990

/-!
# A355159: Numbers k such that (fractional part of k^(3/2)) < 1/2.

The programs for A355159, there is no canonical definition to state claims against.
-/

/-! ## A355159.P2838949522517567522

`lt[floor(2*n*sqrt(n))%2, 1]`
-/

namespace A355159.P2838949522517567522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌊(2 * n : ℝ) * Real.sqrt (n : ℝ)⌋ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A355159.P2838949522517567522

/-! ## A355159.P13179832612343118880

`lt[round(sqrt(n^3))²-n^3, 1]`
-/

namespace A355159.P13179832612343118880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (n ^ 3 : ℝ)) ^ 2 - (n ^ 3 : ℤ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A355159.P13179832612343118880

/-! ## A355159.P8652609836413322840

`comp[A355160(n+1)]`
-/

namespace A355159.P8652609836413322840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355160 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A355159.P8652609836413322840

/-! ## A355159.P3475332144521079864

`comp[eq[1, A054848(A000093(n))²]]`
-/

namespace A355159.P3475332144521079864
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054848 (A000093 n).toNat ^ 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A355159.P3475332144521079864

/-! ## A355159.P2156783071581775931

`eq[A054848(A000093(n)), A122840(2*n+1)]`
-/

namespace A355159.P2156783071581775931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054848 (A000093 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122840 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A355159.P2156783071581775931

/-!
# A355160: Numbers k such that (fractional part of k^(3/2)) > 1/2.

The programs for A355160, there is no canonical definition to state claims against.
-/

/-! ## A355160.P9883632557998764434

`lt[0, floor(2*sqrt(n^3))%2]`
-/

namespace A355160.P9883632557998764434
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌊2 * Real.sqrt (n ^ 3 : ℝ)⌋ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A355160.P9883632557998764434

/-! ## A355160.P16655202159075059568

`eq[1, floor(2*n*sqrt(n))%2]`
-/

namespace A355160.P16655202159075059568
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌊(2 * n : ℝ) * Real.sqrt (n : ℝ)⌋ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A355160.P16655202159075059568

/-! ## A355160.P2330243923783017158

`lt[gcd(2, floor(2*sqrt(n^3)))², 2]`
-/

namespace A355160.P2330243923783017158
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 ⌊2 * Real.sqrt (n ^ 3 : ℝ)⌋ ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A355160.P2330243923783017158

/-! ## A355160.P166265428309718519

`lt[0, round(sqrt(n^3))²-n^3]`
-/

namespace A355160.P166265428309718519
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (n ^ 3 : ℝ)) ^ 2 - (n ^ 3 : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A355160.P166265428309718519

/-! ## A355160.P7736171249281534757

`eq[1, round(n^(3/2))-floor(sqrt(n^3))]`
-/

namespace A355160.P7736171249281534757
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n : ℝ) ^ ((3 : ℚ) / 2 : ℝ)) - (Nat.sqrt (n ^ 3) : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A355160.P7736171249281534757

/-! ## A355160.P12545680569938846550

`lt[0, A077119(n+1)]+1`
-/

namespace A355160.P12545680569938846550
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077119 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A355160.P12545680569938846550

/-! ## A355160.P13458629102980023336

`comp[A355159(n)]`
-/

namespace A355160.P13458629102980023336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355159 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A355160.P13458629102980023336

/-! ## A355160.P2284367517489156734

`A054846(A355169(n+1))`
-/

namespace A355160.P2284367517489156734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054846 (A355169 (n + 1)).toNat

end

end A355160.P2284367517489156734

/-!
# A355161: Primes p such that p - prevprime(p) is not a power of 2.

The programs for A355161, there is no canonical definition to state claims against.
-/

/-! ## A355161.P2210575047625177

`A151800(A130796(n+1))`
-/

namespace A355161.P2210575047625177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A130796 (n + 1)).toNat

end

end A355161.P2210575047625177

/-! ## A355161.P9401138995101631249

`A007918(A130796(n+1)+1)`
-/

namespace A355161.P9401138995101631249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 (A130796 (n + 1) + 1).toNat

end

end A355161.P9401138995101631249

/-! ## A355161.P2030531513776675235

`A117366(or(1, A130796(n+1)))`
-/

namespace A355161.P2030531513776675235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117366 (Int.lor 1 (A130796 (n + 1))).toNat

end

end A355161.P2030531513776675235

/-! ## A355161.P2930673234001617648

`A003961(∏{p}[A130796(n+1), #])`
-/

namespace A355161.P2930673234001617648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130796 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A355161.P2930673234001617648

/-! ## A355161.P6422759405782996588

`A045319(lt[1, A100375(n+1)]+1)`
-/

namespace A355161.P6422759405782996588
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100375 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A355161.P6422759405782996588

/-! ## A355161.P6042021796851452553

`A045344(lt[1, A100375(n+1)]+1)`
-/

namespace A355161.P6042021796851452553
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100375 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A355161.P6042021796851452553

/-! ## A355161.P3738221777569516804

`A065091(lt[1, A100375(n+1)]+1)`
-/

namespace A355161.P3738221777569516804
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100375 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A355161.P3738221777569516804

/-! ## A355161.P5880125954681325231

`A000040(lt[1, A100375(n+1)]+2)`
-/

namespace A355161.P5880125954681325231
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100375 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 2)

end

end A355161.P5880125954681325231

/-! ## A355161.P16685855362162548192

`A130796(n+1)+A082509(n+1)`
-/

namespace A355161.P16685855362162548192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130796 (n + 1) + A082509 (n + 1)

end

end A355161.P16685855362162548192

/-!
# A355162: a(n) = exp(-1) * Sum_{k>=0} (4*k + 2)^n / k!.

The programs for A355162, there is no canonical definition to state claims against.
-/

/-! ## A355162.P2372722361907841034

`2^n*A126390(n)`
-/

namespace A355162.P2372722361907841034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A126390 n

end

end A355162.P2372722361907841034

/-! ## A355162.P17566676859911965098

`lcm(Δ[A124311(n)/2], A000079(n))`
-/

namespace A355162.P17566676859911965098
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A124311 n : ℚ) / 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (SequenceMachineLib.roundAway (f1 (n + 1) - f1 n)) (A000079 n)

end

end A355162.P17566676859911965098

/-! ## A355162.P14103784146189908406

`A126390(n)*A338654(A000217(n))`
-/

namespace A355162.P14103784146189908406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126390 n * A338654 (A000217 n).toNat

end

end A355162.P14103784146189908406

/-! ## A355162.P16256541951645210406

`A126390(n)*A329900(A000079(n))`
-/

namespace A355162.P16256541951645210406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126390 n * A329900 (A000079 n).toNat

end

end A355162.P16256541951645210406

/-! ## A355162.P17183474641824521109

`A126390(n)*A222541(A000217(n+1))`
-/

namespace A355162.P17183474641824521109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126390 n * A222541 (A000217 (n + 1)).toNat

end

end A355162.P17183474641824521109

/-!
# A355163: a(n) = exp(-1) * Sum_{k>=0} (4*k + 3)^n / k!.

The programs for A355163, there is no canonical definition to state claims against.
-/

/-! ## A355163.P17523274448960342501

`A000265(A367786(n+1)+A367786(n))`
-/

namespace A355163.P17523274448960342501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A367786 (n + 1) + A367786 n).toNat

end

end A355163.P17523274448960342501

/-!
# A355164: a(n) = exp(-1/3) * Sum_{k>=0} (3*k + 2)^n / (3^k * k!).

The programs for A355164, there is no canonical definition to state claims against.
-/

/-! ## A355164.P9498277472346060500

`A337039(n+1)+A337039(n)`
-/

namespace A355164.P9498277472346060500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337039 (n + 1) + A337039 n

end

end A355164.P9498277472346060500

/-! ## A355164.P14565847155553878804

`A028242(A002893(n))+A016121(n)`
-/

namespace A355164.P14565847155553878804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (A002893 n).toNat + A016121 n

end

end A355164.P14565847155553878804

/-!
# A355165: a(n) = exp(-1/4) * Sum_{k>=0} (4*k + 2)^n / (4^k * k!).

The programs for A355165, there is no canonical definition to state claims against.
-/

/-! ## A355165.P2279701559503639299

`A028310(or(n², A159312(n+1)))`
-/

namespace A355165.P2279701559503639299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (Int.lor (n ^ 2 : ℤ) (A159312 (n + 1))).toNat

end

end A355165.P2279701559503639299

/-!
# A355167: a(n) = exp(-1/4) * Sum_{k>=0} (4*k + 3)^n / (4^k * k!).

The programs for A355167, there is no canonical definition to state claims against.
-/

/-! ## A355167.P2780321356253089054

`A337040(n+1)+A337040(n)`
-/

namespace A355167.P2780321356253089054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337040 (n + 1) + A337040 n

end

end A355167.P2780321356253089054

/-! ## A355167.P1664058145976070713

`A000079(n)*A105072(n+1)`
-/

namespace A355167.P1664058145976070713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n * A105072 (n + 1)

end

end A355167.P1664058145976070713

/-! ## A355167.P2051495116788870384

`Δ[A000051(n)]*A105072(n+1)`
-/

namespace A355167.P2051495116788870384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A105072 (n + 1)

end

end A355167.P2051495116788870384

/-! ## A355167.P11420045894651683591

`Δ[A242475(n)]*A105072(n+1)`
-/

namespace A355167.P11420045894651683591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242475 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A105072 (n + 1)

end

end A355167.P11420045894651683591

/-! ## A355167.P5903870807914390673

`record[A059268(n)]*A105072(n+1)`
-/

namespace A355167.P5903870807914390673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A105072 (n + 1)

end

end A355167.P5903870807914390673

/-!
# A355168: Numerators of best lower approximates h/k to sqrt(k); complement of A355169.

The programs for A355168, there is no canonical definition to state claims against.
-/

/-! ## A355168.P12923444266475344627

`lt[A070923(n), n]`
-/

namespace A355168.P12923444266475344627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070923 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A355168.P12923444266475344627

/-! ## A355168.P17229498072917530118

`A000093(A355159(n+1))`
-/

namespace A355168.P17229498072917530118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000093 (A355159 (n + 1)).toNat

end

end A355168.P17229498072917530118

/-! ## A355168.P18222934172711328098

`∩[A000093(n+1), A002821(n)]`
-/

namespace A355168.P18222934172711328098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000093 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002821 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A355168.P18222934172711328098

/-! ## A355168.P15806595816791477734

`sqrt(∩[A077118(n+1), A065733(n)])`
-/

namespace A355168.P15806595816791477734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077118 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065733 n

open Classical in
def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℝ)

end

end A355168.P15806595816791477734

/-! ## A355168.P2679755417505712828

`A002821(A355159(2*n+1-n))`
-/

namespace A355168.P2679755417505712828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002821 (A355159 (2 * n + 1 - n)).toNat

end

end A355168.P2679755417505712828

/-! ## A355168.P13238208066203011246

`A110654(∩[2*n, A135061(n+1)])`
-/

namespace A355168.P13238208066203011246
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135061 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A355168.P13238208066203011246

/-! ## A355168.P10213757444539339166

`record[A000093(n+1)%A121489(n+1)]`
-/

namespace A355168.P10213757444539339166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000093 (n + 1)) (A121489 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A355168.P10213757444539339166

/-! ## A355168.P11658303940303910931

`∩[A002821(n+1), A077121(n+1)-1]`
-/

namespace A355168.P11658303940303910931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002821 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077121 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A355168.P11658303940303910931

/-! ## A355168.P201651539692564113

`∩[A002821(n), A035936(n)+a(n-1)]` with `a(0)=1`
-/

namespace A355168.P201651539692564113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002821 n

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  A035936 n + f2 (n - 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A355168.P201651539692564113

/-!
# A355169: Numbers h such that (h+1)/k is closer to sqrt(k) than h/k is, where h is the greatest integer j such that j/k < sqrt(k); complement of A355168.

The programs for A355169, there is no canonical definition to state claims against.
-/

/-! ## A355169.P8281349595836066393

`floor(sqrt(A355160(n+1)^3))`
-/

namespace A355169.P8281349595836066393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A355160 (n + 1) ^ 3)

end

end A355169.P8281349595836066393

/-! ## A355169.P16146755777169807290

`A000093(lt[0, floor(2*sqrt(n^3))%2])`
-/

namespace A355169.P16146755777169807290
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌊2 * Real.sqrt (n ^ 3 : ℝ)⌋ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000093 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A355169.P16146755777169807290

/-! ## A355169.P8510425370444587104

`A000093(eq[1, floor(2*n*sqrt(n))%2])`
-/

namespace A355169.P8510425370444587104
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌊(2 * n : ℝ) * Real.sqrt (n : ℝ)⌋ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000093 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A355169.P8510425370444587104

/-! ## A355169.P7360286143193379363

`A000093(lt[0, round(sqrt(n^3))²-n^3])`
-/

namespace A355169.P7360286143193379363
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (n ^ 3 : ℝ)) ^ 2 - (n ^ 3 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000093 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A355169.P7360286143193379363

/-! ## A355169.P5595837602788349224

`A002821(lt[0, round(sqrt(n^3))²-n^3])-1`
-/

namespace A355169.P5595837602788349224
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (n ^ 3 : ℝ)) ^ 2 - (n ^ 3 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002821 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n) - 1

end

end A355169.P5595837602788349224

/-! ## A355169.P16103420658971129363

`A000093(comp[A355159(n)])`
-/

namespace A355169.P16103420658971129363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355159 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000093 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A355169.P16103420658971129363

/-! ## A355169.P11994329524548867259

`A000093(A355160(n+1))`
-/

namespace A355169.P11994329524548867259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000093 (A355160 (n + 1)).toNat

end

end A355169.P11994329524548867259

/-! ## A355169.P12076457387045731155

`A077121(comp[A355159(n)])-1`
-/

namespace A355169.P12076457387045731155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355159 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077121 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n) - 1

end

end A355169.P12076457387045731155

/-! ## A355169.P14102853142372859274

`∩[A000093(n+1), A002821(n)-1]`
-/

namespace A355169.P14102853142372859274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000093 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002821 n - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A355169.P14102853142372859274

/-!
# A355170: The composite numbers in order of appearance in A173395.

The programs for A355170, there is no canonical definition to state claims against.
-/

/-! ## A355170.P8940035889806192677

`filter[A257471(n+1), A066247(#)]`
-/

namespace A355170.P8940035889806192677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257471 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066247 (f1 j).toNat = 1) n)

end

end A355170.P8940035889806192677

/-! ## A355170.P2023590813739678067

`filter[A257471(n+2), A005171(#)]`
-/

namespace A355170.P2023590813739678067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257471 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A355170.P2023590813739678067

/-! ## A355170.P2341099163317298196

`filter[A257471(n+2), A283265(#)]`
-/

namespace A355170.P2341099163317298196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257471 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A283265 (f1 j).toNat = 1) n)

end

end A355170.P2341099163317298196

/-!
# A355171: a(n) = Sum_{k=0..n} binomial(n, k + 1)*k!*(n + 1)!/(k + 2)!.

The programs for A355171, there is no canonical definition to state claims against.
-/

/-! ## A355171.P11409772195125581508

`A103213(n+1)-∑[∑[2^n]]/n!^-1`
-/

namespace A355171.P11409772195125581508
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A103213 (n + 1) : ℚ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / (Nat.factorial n : ℚ) ^ (-1 : ℤ)

end

end A355171.P11409772195125581508

/-! ## A355171.P276758921721150827

`A103213(n+1)-A052650(n)`
-/

namespace A355171.P276758921721150827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103213 (n + 1) - A052650 n

end

end A355171.P276758921721150827

/-! ## A355171.P9785979091711057935

`A103213(n+1)-∑[∑[2^n]]*A000142(n)`
-/

namespace A355171.P9785979091711057935
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103213 (n + 1) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A000142 n

end

end A355171.P9785979091711057935

/-! ## A355171.P8121657381314830783

`A103213(n+1)-A000142(n)*A125128(n+1)`
-/

namespace A355171.P8121657381314830783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103213 (n + 1) - A000142 n * A125128 (n + 1)

end

end A355171.P8121657381314830783

/-! ## A355171.P2697985489415031584

`A103213(n+1)-A000142(n)*A000295(n+2)`
-/

namespace A355171.P2697985489415031584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103213 (n + 1) - A000142 n * A000295 (n + 2)

end

end A355171.P2697985489415031584

/-!
# A355172: The Fuss-Catalan triangle of order 2, read by rows. Related to ternary trees.

The programs for A355172, there is no canonical definition to state claims against.
-/

/-! ## A355172.P17829435613215532064

`A335461(n)+A127322(A335461(n)²)`
-/

namespace A355172.P17829435613215532064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335461 n + A127322 (A335461 n ^ 2).toNat

end

end A355172.P17829435613215532064

/-! ## A355172.P9179746628259469168

`A118759(A256311(n))%A014132(n+1)`
-/

namespace A355172.P9179746628259469168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A118759 (A256311 n).toNat) (A014132 (n + 1))

end

end A355172.P9179746628259469168

/-! ## A355172.P1469475879951984251

`A285189(2*A327027(n))`
-/

namespace A355172.P1469475879951984251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285189 (2 * A327027 n).toNat

end

end A355172.P1469475879951984251

/-! ## A355172.P5777465328706138563

`A077268(3^A226874(n))`
-/

namespace A355172.P5777465328706138563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077268 (SequenceMachineLib.roundAway ((3 : ℚ) ^ (A226874 n : ℤ))).toNat

end

end A355172.P5777465328706138563

/-! ## A355172.P13067242047295719690

`A124759(3^A226874(n))`
-/

namespace A355172.P13067242047295719690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124759 (SequenceMachineLib.roundAway ((3 : ℚ) ^ (A226874 n : ℤ))).toNat

end

end A355172.P13067242047295719690

/-!
# A355173: The Fuss-Catalan triangle of order 1, read by rows. Related to binary trees.

The programs for A355173, the canonical program `A355173.P10850783007037289585` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A355173 has offset 0).

The definition of A355173 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A355173.P10850783007037289585

`A009766(abs(2-n)+2)-A130020(n)`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A355173

/-- `A009766(abs(2-n)+2)-A130020(n)` -/
def P10850783007037289585.Spec : Prop :=
  ∀ n, P10850783007037289585.a n = A355173 n

theorem P10850783007037289585.correct : P10850783007037289585.Spec := by
  intro n
  simp only [A355173]

end A355173

/-! ## A355173.P909519012036885962

`C(2, n+2)+A009766(n)-A130020(n)`
-/

namespace A355173.P909519012036885962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose 2 (n + 2) : ℤ) + (A009766 n - A130020 n)

end

end A355173.P909519012036885962

namespace A355173

/-- `C(2, n+2)+A009766(n)-A130020(n)` -/
def P909519012036885962.Spec : Prop :=
  ∀ n, P909519012036885962.a n = A355173 n

end A355173

/-! ## A355173.P17011332678836442095

`A009766(n)-A059365(A061579(n))`
-/

namespace A355173.P17011332678836442095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009766 n - A059365 (A061579 n).toNat

end

end A355173.P17011332678836442095

namespace A355173

/-- `A009766(n)-A059365(A061579(n))` -/
def P17011332678836442095.Spec : Prop :=
  ∀ n, P17011332678836442095.a n = A355173 n

end A355173

/-! ## A355173.P4902639844571667167

`A009766(n)-A059365(A038722(n+2))`
-/

namespace A355173.P4902639844571667167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009766 n - A059365 (A038722 (n + 2)).toNat

end

end A355173.P4902639844571667167

namespace A355173

/-- `A009766(n)-A059365(A038722(n+2))` -/
def P4902639844571667167.Spec : Prop :=
  ∀ n, P4902639844571667167.a n = A355173 n

end A355173

/-! ## A355173.P504882879175277656

`A130020(comp[∑[n-2]])`
-/

namespace A355173.P504882879175277656
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130020 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A355173.P504882879175277656

namespace A355173

/-- `A130020(comp[∑[n-2]])` -/
def P504882879175277656.Spec : Prop :=
  ∀ n, P504882879175277656.a n = A355173 n

end A355173

/-! ## A355173.P5607028114301152820

`A009766(n)+A008482(A245300(n))`
-/

namespace A355173.P5607028114301152820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009766 n + A008482 (A245300 n).toNat

end

end A355173.P5607028114301152820

namespace A355173

/-- `A009766(n)+A008482(A245300(n))` -/
def P5607028114301152820.Spec : Prop :=
  ∀ n, P5607028114301152820.a n = A355173 n

end A355173

/-! ## A355173.P9144670358806344029

`A080233(A245300(n))-A059365(A061579(n))`
-/

namespace A355173.P9144670358806344029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080233 (A245300 n).toNat - A059365 (A061579 n).toNat

end

end A355173.P9144670358806344029

namespace A355173

/-- `A080233(A245300(n))-A059365(A061579(n))` -/
def P9144670358806344029.Spec : Prop :=
  ∀ n, P9144670358806344029.a n = A355173 n

end A355173

/-! ## A355173.P10209956412861865943

`A290252(A089633(n))+A008482(A245300(n))`
-/

namespace A355173.P10209956412861865943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290252 (A089633 n).toNat + A008482 (A245300 n).toNat

end

end A355173.P10209956412861865943

namespace A355173

/-- `A290252(A089633(n))+A008482(A245300(n))` -/
def P10209956412861865943.Spec : Prop :=
  ∀ n, P10209956412861865943.a n = A355173 n

end A355173

/-!
# A355174: The Fuss-Catalan triangle of order 3, read by rows. Related to quartic trees.

The programs for A355174, there is no canonical definition to state claims against.
-/

/-! ## A355174.P3084139381683315536

`A341856(n)+A303552(A156885(n))`
-/

namespace A355174.P3084139381683315536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341856 n + A303552 (A156885 n).toNat

end

end A355174.P3084139381683315536

/-! ## A355174.P17769007923629644616

`A000788(A355172(n)^A226048(n))`
-/

namespace A355174.P17769007923629644616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000788 (SequenceMachineLib.roundAway ((A355172 n : ℚ) ^ (A226048 n : ℤ))).toNat

end

end A355174.P17769007923629644616

/-! ## A355174.P5466745686157781394

`A333627(A287697(n)%A008590(n+4))`
-/

namespace A355174.P5466745686157781394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333627 (Int.tmod (A287697 n) (A008590 (n + 4))).toNat

end

end A355174.P5466745686157781394

/-!
# A355177: Numbers k such that omega(k^2 - 1) = omega(k) where omega(k) = A001221(k).

The programs for A355177, there is no canonical definition to state claims against.
-/

/-! ## A355177.P11281248826244550327

`eq[A001221(n+2), A082863(n+2)]+2`
-/

namespace A355177.P11281248826244550327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082863 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 2

end

end A355177.P11281248826244550327

/-!
# A355179: Expansion of e.g.f. -LambertW(x^2 * (1 - exp(x)))/2.

The programs for A355179, there is no canonical definition to state claims against.
-/

/-! ## A355179.P7898579779797487122

`A014682(A358013(A193592(2*n²)))`
-/

namespace A355179.P7898579779797487122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A358013 (A193592 (2 * n ^ 2)).toNat).toNat

end

end A355179.P7898579779797487122

/-! ## A355179.P4154500902686063497

`A014682(char[A193592(n)]*A358013(n))`
-/

namespace A355179.P4154500902686063497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A358013 n).toNat

end

end A355179.P4154500902686063497

/-! ## A355179.P6861906979340522330

`A004526(A358013(n))`
-/

namespace A355179.P6861906979340522330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A358013 n).toNat

end

end A355179.P6861906979340522330

/-! ## A355179.P17223359183042311838

`A014682(char[A124530(n)]*A358013(n))`
-/

namespace A355179.P17223359183042311838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124530 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A358013 n).toNat

end

end A355179.P17223359183042311838

/-!
# A355181: Expansion of e.g.f. -LambertW(x^2/2 * (1 - exp(x))).

The programs for A355181, there is no canonical definition to state claims against.
-/

/-! ## A355181.P13195451903044349586

`A353998(A274708(n²))`
-/

namespace A355181.P13195451903044349586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353998 (A274708 (n ^ 2)).toNat

end

end A355181.P13195451903044349586

/-! ## A355181.P952575577916235044

`A014682(lcm(n, A240989(n)))`
-/

namespace A355181.P952575577916235044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (Int.lcm (n : ℤ) (A240989 n))

end

end A355181.P952575577916235044

/-! ## A355181.P1397091497335663190

`A353998(A242534(n+1)+n)`
-/

namespace A355181.P1397091497335663190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353998 (A242534 (n + 1) + (n : ℤ)).toNat

end

end A355181.P1397091497335663190

/-! ## A355181.P9890403000943686421

`A353998(n)-A121373(3^n)`
-/

namespace A355181.P9890403000943686421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353998 n - A121373 (3 ^ n)

end

end A355181.P9890403000943686421

/-! ## A355181.P12667323581034822255

`A353998(n)%A210897(n+1)`
-/

namespace A355181.P12667323581034822255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A353998 n) (A210897 (n + 1))

end

end A355181.P12667323581034822255

/-!
# A355182: a(n) = t(n) - s(n) where s(n) = n*(n-1)/2 is the sum of the first n nonnegative integers and t(n) is the smallest sum of consecutive integers starting from n such that t(n) > s(n).

The programs for A355182, the canonical program `A355182.P7640286436067638090` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A355182 has offset 1).

The definition of A355182 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2929 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A355182.P14014574001033359851

`A175032(comp[round(n*sqrt(2))])`
-/

namespace A355182.P14014574001033359851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n : ℝ) * Real.sqrt (2 : ℝ))

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175032 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A355182.P14014574001033359851

namespace A355182

/-- `A175032(comp[round(n*sqrt(2))])` -/
def P14014574001033359851.Spec : Prop :=
  ∀ n, P14014574001033359851.a n = A355182 (n + 1)

end A355182

/-! ## A355182.P7640286436067638090

`A128549(A063957(n+1))`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A355182

/-- `A128549(A063957(n+1))` -/
def P7640286436067638090.Spec : Prop :=
  ∀ n, P7640286436067638090.a n = A355182 (n + 1)

theorem P7640286436067638090.correct : P7640286436067638090.Spec := by
  intro n
  simp only [A355182, Nat.add_sub_cancel]

end A355182

/-! ## A355182.P13409331219782543807

`A057037(∑[n]+1)`
-/

namespace A355182.P13409331219782543807
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057037 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A355182.P13409331219782543807

namespace A355182

/-- `A057037(∑[n]+1)` -/
def P13409331219782543807.Spec : Prop :=
  ∀ n, P13409331219782543807.a n = A355182 (n + 1)

end A355182

/-! ## A355182.P15670516463034385412

`(A099375(∑[2*n])+1)/2`
-/

namespace A355182.P15670516463034385412
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A099375 (∑ j ∈ Finset.range (n + 1), f1 j) + 1 : ℚ) / 2

end

end A355182.P15670516463034385412

namespace A355182

/-- `(A099375(∑[2*n])+1)/2` -/
def P15670516463034385412.Spec : Prop :=
  ∀ n, P15670516463034385412.a n = (A355182 (n + 1) : ℚ)

end A355182

/-! ## A355182.P8206153364069824110

`A008619(A099375(∑[2*n]))`
-/

namespace A355182.P8206153364069824110
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A099375 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A355182.P8206153364069824110

namespace A355182

/-- `A008619(A099375(∑[2*n]))` -/
def P8206153364069824110.Spec : Prop :=
  ∀ n, P8206153364069824110.a n = A355182 (n + 1)

end A355182

/-! ## A355182.P10582236646493066640

`A134224(∑[2*n])`
-/

namespace A355182.P10582236646493066640
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134224 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A355182.P10582236646493066640

namespace A355182

/-- `A134224(∑[2*n])` -/
def P10582236646493066640.Spec : Prop :=
  ∀ n, P10582236646493066640.a n = A355182 (n + 1)

end A355182

/-! ## A355182.P3810340321872759343

`A004736(∑[2*n]+1)`
-/

namespace A355182.P3810340321872759343
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A355182.P3810340321872759343

namespace A355182

/-- `A004736(∑[2*n]+1)` -/
def P3810340321872759343.Spec : Prop :=
  ∀ n, P3810340321872759343.a n = A355182 (n + 1)

end A355182

/-! ## A355182.P14070742856565042836

`A025581(∑[2*n])+1`
-/

namespace A355182.P14070742856565042836
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (∑ j ∈ Finset.range (n + 1), f1 j) + 1

end

end A355182.P14070742856565042836

namespace A355182

/-- `A025581(∑[2*n])+1` -/
def P14070742856565042836.Spec : Prop :=
  ∀ n, P14070742856565042836.a n = A355182 (n + 1)

end A355182

/-! ## A355182.P2118188973022551226

`A134231(∑[2*n]+1)`
-/

namespace A355182.P2118188973022551226
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134231 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A355182.P2118188973022551226

namespace A355182

/-- `A134231(∑[2*n]+1)` -/
def P2118188973022551226.Spec : Prop :=
  ∀ n, P2118188973022551226.a n = A355182 (n + 1)

end A355182

/-! ## A355182.P5125648204686435918

`sqrt(A055461(∑[2*n]+1))`
-/

namespace A355182.P5125648204686435918
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A055461 (∑ j ∈ Finset.range (n + 1), f1 j + 1) : ℝ)

end

end A355182.P5125648204686435918

namespace A355182

/-- `sqrt(A055461(∑[2*n]+1))` -/
def P5125648204686435918.Spec : Prop :=
  ∀ n, P5125648204686435918.a n = (A355182 (n + 1) : ℝ)

end A355182

/-! ## A355182.P2965682166568658296

`A004396(A104568(n²+n))`
-/

namespace A355182.P2965682166568658296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A104568 (n ^ 2 + n)).toNat

end

end A355182.P2965682166568658296

namespace A355182

/-- `A004396(A104568(n²+n))` -/
def P2965682166568658296.Spec : Prop :=
  ∀ n, P2965682166568658296.a n = A355182 (n + 1)

end A355182

/-!
# A355188: Primes p such that (2^p+p^2)/3 is prime.

The programs for A355188, there is no canonical definition to state claims against.
-/

/-! ## A355188.P13224945891622589405

`p?[A114970(n+1)]`
-/

namespace A355188.P13224945891622589405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114970 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A355188.P13224945891622589405

/-! ## A355188.P10830546994802135865

`p?[record[A114970(A193592(n))]]`
-/

namespace A355188.P10830546994802135865
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114970 (A193592 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A355188.P10830546994802135865

/-! ## A355188.P3767040776620857238

`filter[A114970(n+1), A010051(#)]`
-/

namespace A355188.P3767040776620857238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114970 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A355188.P3767040776620857238

/-! ## A355188.P12439250886291277288

`filter[A114970(n+1), A080339(#)]`
-/

namespace A355188.P12439250886291277288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114970 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080339 (f1 j).toNat = 1) n)

end

end A355188.P12439250886291277288

/-!
# A355189: Factorial splitting: write n! = x*y*z with x <= y <= z and minimal z-x; sequence gives value of x.

The programs for A355189, there is no canonical definition to state claims against.
-/

/-! ## A355189.P10987608323074298637

`A355191(n)-A355192(n)`
-/

namespace A355189.P10987608323074298637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355191 n - A355192 n

end

end A355189.P10987608323074298637

/-! ## A355189.P17230335108269827925

`A118765(A006981(n))`
-/

namespace A355189.P17230335108269827925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118765 (A006981 n).toNat

end

end A355189.P17230335108269827925

/-! ## A355189.P2311228542499242343

`A033676(n!/A355190(n))`
-/

namespace A355189.P2311228542499242343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033676 (SequenceMachineLib.roundAway ((Nat.factorial n : ℚ) / (A355190 n : ℚ))).toNat

end

end A355189.P2311228542499242343

/-! ## A355189.P235115884772417780

`A060775(A000142(n)/A355191(n))`
-/

namespace A355189.P235115884772417780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060775 (SequenceMachineLib.roundAway ((A000142 n : ℚ) / (A355191 n : ℚ))).toNat

end

end A355189.P235115884772417780

/-! ## A355189.P7478108536381798778

`A084824(A103481(n))`
-/

namespace A355189.P7478108536381798778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084824 (A103481 n).toNat

end

end A355189.P7478108536381798778

/-!
# A355190: Factorial splitting: write n! = x*y*z with x <= y <= z and minimal z-x; sequence gives value of y.

The programs for A355190, there is no canonical definition to state claims against.
-/

/-! ## A355190.P11716244614990138003

`4*A322911(a(n-2))-A193739(A322911(n+1))` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A355190.P11716244614990138003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  4 * A322911 (a (n - 2)).toNat - A193739 (A322911 (n + 1)).toNat

end

end A355190.P11716244614990138003

/-! ## A355190.P9761321174298415095

`ceil(root(A369831(n), 3))`
-/

namespace A355190.P9761321174298415095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A369831 n : ℝ) ^ (1 / (3 : ℝ))⌉

end

end A355190.P9761321174298415095

/-! ## A355190.P12747906740153822254

`ceil(root(A369833(n), 3))`
-/

namespace A355190.P12747906740153822254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A369833 n : ℝ) ^ (1 / (3 : ℝ))⌉

end

end A355190.P12747906740153822254

/-! ## A355190.P6050115579942762676

`A083277(A107379(n))`
-/

namespace A355190.P6050115579942762676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083277 (A107379 n).toNat

end

end A355190.P6050115579942762676

/-! ## A355190.P11199848733731871265

`A349898(A005169(n))`
-/

namespace A355190.P11199848733731871265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349898 (A005169 n).toNat

end

end A355190.P11199848733731871265

/-!
# A355191: Factorial splitting: write n! = x*y*z with x <= y <= z and minimal z-x; sequence gives value of z.

The programs for A355191, there is no canonical definition to state claims against.
-/

/-! ## A355191.P14026616564189698919

`A355192(n)+A355189(n)`
-/

namespace A355191.P14026616564189698919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355192 n + A355189 n

end

end A355191.P14026616564189698919

/-! ## A355191.P4725900190302212096

`A365742(A148453(n))`
-/

namespace A355191.P4725900190302212096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365742 (A148453 n).toNat

end

end A355191.P4725900190302212096

/-! ## A355191.P1354310808661550095

`A365742(A148586(n))`
-/

namespace A355191.P1354310808661550095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365742 (A148586 n).toNat

end

end A355191.P1354310808661550095

/-! ## A355191.P15823262608685994060

`A365742(A148599(n))`
-/

namespace A355191.P15823262608685994060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365742 (A148599 n).toNat

end

end A355191.P15823262608685994060

/-! ## A355191.P15620050781825184656

`A365742(A148600(n))`
-/

namespace A355191.P15620050781825184656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365742 (A148600 n).toNat

end

end A355191.P15620050781825184656

/-!
# A355192: Factorial splitting: write n! = x*y*z with x <= y <= z and minimal z-x; sequence gives value of z-x.

The programs for A355192, there is no canonical definition to state claims against.
-/

/-! ## A355192.P4114965553815339379

`A355191(n)-A355189(n)`
-/

namespace A355192.P4114965553815339379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355191 n - A355189 n

end

end A355192.P4114965553815339379

/-! ## A355192.P11553445005749171271

`A355191(n)+A001489(A355189(n)+1)+1`
-/

namespace A355192.P11553445005749171271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355191 n + A001489 (A355189 n + 1).toNat + 1

end

end A355192.P11553445005749171271

/-!
# A355193: Number of partitions of n that contain at least one odd prime as a part.

The programs for A355193, there is no canonical definition to state claims against.
-/

/-! ## A355193.P18205169221621011533

`A000041(n)-A355195(n)`
-/

namespace A355193.P18205169221621011533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A355195 n

end

end A355193.P18205169221621011533

/-! ## A355193.P15678020725879869282

`A213598(n)-A355195(n)`
-/

namespace A355193.P15678020725879869282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213598 n - A355195 n

end

end A355193.P15678020725879869282

/-! ## A355193.P5400000420708961150

`∑[A002865(n)]-A355195(n)`
-/

namespace A355193.P5400000420708961150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A355195 n

end

end A355193.P5400000420708961150

/-! ## A355193.P13086142964973198163

`A000065(n)+1-A355195(n)`
-/

namespace A355193.P13086142964973198163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000065 n + (1 - A355195 n)

end

end A355193.P13086142964973198163

/-! ## A355193.P13389611362274728535

`A139582(n)/2-A355195(n)`
-/

namespace A355193.P13389611362274728535
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A139582 n : ℚ) / 2 - (A355195 n : ℚ)

end

end A355193.P13389611362274728535

/-!
# A355194: The number of evenly tagged partitions: partitions of n elements together with an involution defined on the set of classes which has at most one fixed point, such that a class and its image have the same number of elements.

The programs for A355194, there is no canonical definition to state claims against.
-/

/-! ## A355194.P17463163542158503625

`A004523(A053498(n)+A046935(n))`
-/

namespace A355194.P17463163542158503625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004523 (A053498 n + A046935 n).toNat

end

end A355194.P17463163542158503625

/-! ## A355194.P3753135988115590765

`A325124(A148043(n))`
-/

namespace A355194.P3753135988115590765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325124 (A148043 n).toNat

end

end A355194.P3753135988115590765

/-! ## A355194.P3545758619365411670

`A087011(A352861(n)+3)`
-/

namespace A355194.P3545758619365411670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087011 (A352861 n + 3).toNat

end

end A355194.P3545758619365411670

/-!
# A355195: Number of partitions of n that do not contain odd primes as parts.

The programs for A355195, there is no canonical definition to state claims against.
-/

/-! ## A355195.P16442278718913959458

`A000041(n)-A355193(n)`
-/

namespace A355195.P16442278718913959458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A355193 n

end

end A355195.P16442278718913959458

/-! ## A355195.P11168123827034898634

`A303663(n)-a(n-1)` with `a(0)=1`
-/

namespace A355195.P11168123827034898634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A303663 n - a (n - 1)

end

end A355195.P11168123827034898634

/-! ## A355195.P14397358172894354653

`A002095(n)+a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A355195.P14397358172894354653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A002095 n + a (n - 2)

end

end A355195.P14397358172894354653

/-! ## A355195.P7916328446118661362

`∑[A023895(n)]+a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A355195.P7916328446118661362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023895 n

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j + a (n - 2)

end

end A355195.P7916328446118661362

/-! ## A355195.P10766218608234966931

`∑[A002095(n)-a(A023443(n))]` with `a(0)=1`
-/

namespace A355195.P10766218608234966931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A002095 n - f1 (A023443 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A355195.P10766218608234966931

/-! ## A355195.P13785473747362050194

`∑[A002095(A005843(n)/2)-a(n-1)]` with `a(0)=1`
-/

namespace A355195.P13785473747362050194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A002095 (SequenceMachineLib.roundAway ((A005843 n : ℚ) / 2)).toNat - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A355195.P13785473747362050194

/-!
# A355196: Sum of the largest parts of the partitions of n into exactly 3 prime parts.

The programs for A355196, there is no canonical definition to state claims against.
-/

/-! ## A355196.P7599040402009586358

`A355199(n)-A355197(n)-A355198(n)`
-/

namespace A355196.P7599040402009586358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355199 n - A355197 n - A355198 n

end

end A355196.P7599040402009586358

/-!
# A355197: Sum of the middle parts of the partitions of n into exactly 3 prime parts.

The programs for A355197, there is no canonical definition to state claims against.
-/

/-! ## A355197.P7201315185743979763

`A355199(n)-A355196(n)-A355198(n)`
-/

namespace A355197.P7201315185743979763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355199 n - A355196 n - A355198 n

end

end A355197.P7201315185743979763

/-!
# A355198: Sum of the smallest parts of the partitions of n into exactly 3 prime parts.

The programs for A355198, there is no canonical definition to state claims against.
-/

/-! ## A355198.P13866220382803660727

`A355199(n)-A355196(n)-A355197(n)`
-/

namespace A355198.P13866220382803660727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355199 n - A355196 n - A355197 n

end

end A355198.P13866220382803660727

/-!
# A355199: Sum of all the parts in the partitions of n into exactly 3 prime parts.

The programs for A355199, there is no canonical definition to state claims against.
-/

/-! ## A355199.P18402719009189053367

`A355196(n)+A355197(n)+A355198(n)`
-/

namespace A355199.P18402719009189053367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355196 n + A355197 n + A355198 n

end

end A355199.P18402719009189053367

/-! ## A355199.P11051616044586095851

`n*A068307(C(2, n)+n)`
-/

namespace A355199.P11051616044586095851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A068307 (Nat.choose 2 n + n)

end

end A355199.P11051616044586095851

/-! ## A355199.P15332853869054162056

`n*A068307(round(acot(n)+n))`
-/

namespace A355199.P15332853869054162056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A068307 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat

end

end A355199.P15332853869054162056

/-! ## A355199.P6371596161435747940

`n*A068307(abs(1-n)+1)`
-/

namespace A355199.P6371596161435747940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A068307 (|1 - (n : ℤ)| + 1).toNat

end

end A355199.P6371596161435747940

/-! ## A355199.P18285218411746167448

`A068307(A233583(n+1))*n`
-/

namespace A355199.P18285218411746167448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068307 (A233583 (n + 1)).toNat * (n : ℤ)

end

end A355199.P18285218411746167448

