import SequenceMachineLib
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
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C023
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C041
import Seq.B000.C045
import Seq.B000.C046
import Seq.B000.C048
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C009
import Seq.B001.C012
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
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
import Seq.Opaque.C000
import Seq.Opaque.C001
import Seq.Opaque.C002
import Seq.Opaque.C003
import Seq.Opaque.C004
import Seq.Opaque.C005
import Seq.Opaque.C006
import Seq.Opaque.C007
import Seq.Opaque.C009
import Seq.Opaque.C010
import Seq.Opaque.C011
import Seq.Opaque.C012
import Seq.Opaque.C013
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

/-!
# A260500: Number of (n+2)X(7+2) 0..1 arrays with each 3X3 subblock having clockwise perimeter pattern 00000001 00000011 or 00001011.

The programs for A260500, there is no canonical definition to state claims against.
-/

/-! ## A260500.P4076125102566850670

`A260501(A374008(n+1))`
-/

namespace A260500.P4076125102566850670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260501 (A374008 (n + 1)).toNat

end

end A260500.P4076125102566850670

/-!
# A260502: Log_2 of the numerator of det(M) where M is the n X n matrix with M[i,j] = 1/lcm(i,j).

The programs for A260502, there is no canonical definition to state claims against.
-/

/-! ## A260502.P3976460518191558999

`A007814(A260897(n+1))`
-/

namespace A260502.P3976460518191558999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A260897 (n + 1)).toNat

end

end A260502.P3976460518191558999

/-! ## A260502.P5844193132836958695

`log2(A260897(n+1))`
-/

namespace A260502.P5844193132836958695
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A260897 (n + 1) : ℝ)

end

end A260502.P5844193132836958695

/-! ## A260502.P5909860345565157151

`val(A008364(n+1)*A260897(n+1), 2)`
-/

namespace A260502.P5909860345565157151
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A008364 (n + 1) * A260897 (n + 1)).toNat 2

end

end A260502.P5909860345565157151

/-! ## A260502.P17427226264059242528

`val(A172502(n+1)*A260897(n+1), 2)`
-/

namespace A260502.P17427226264059242528
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A172502 (n + 1) * A260897 (n + 1)).toNat 2

end

end A260502.P17427226264059242528

/-! ## A260502.P3972846042719600409

`val(A125845(n+1)*A260897(n+1), 2)`
-/

namespace A260502.P3972846042719600409
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A125845 (n + 1) * A260897 (n + 1)).toNat 2

end

end A260502.P3972846042719600409

/-! ## A260502.P4829606877820827758

`val(A050265(n+1)*A260897(n+1), 2)`
-/

namespace A260502.P4829606877820827758
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A050265 (n + 1) * A260897 (n + 1)).toNat 2

end

end A260502.P4829606877820827758

/-! ## A260502.P16513998751508325429

`A065334(A260897(2*n+1-n))`
-/

namespace A260502.P16513998751508325429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065334 (A260897 (2 * n + 1 - n)).toNat

end

end A260502.P16513998751508325429

/-! ## A260502.P11757277678752546827

`A000120(A260897(n+1)-1)`
-/

namespace A260502.P11757277678752546827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A260897 (n + 1) - 1).toNat

end

end A260502.P11757277678752546827

/-! ## A260502.P17186488310053747323

`A002487(A260897(n+1)-1)`
-/

namespace A260502.P17186488310053747323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (A260897 (n + 1) - 1).toNat

end

end A260502.P17186488310053747323

/-! ## A260502.P9265150343252302810

`A070824(2*A260897(n+1))`
-/

namespace A260502.P9265150343252302810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070824 (2 * A260897 (n + 1)).toNat

end

end A260502.P9265150343252302810

/-!
# A260503: Coefficients in an asymptotic expansion of sequence A003319.

The programs for A260503, there is no canonical definition to state claims against.
-/

/-! ## A260503.P7370072449018865111

`A101677(A203006(n+1)+A000045(n))`
-/

namespace A260503.P7370072449018865111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101677 (A203006 (n + 1) + A000045 n).toNat

end

end A260503.P7370072449018865111

/-!
# A260504: Number of chains in the poset of all odd-sized subsets of {1,2,...,n} ordered by inclusion.

The programs for A260504, there is no canonical definition to state claims against.
-/

/-! ## A260504.P11546458921947722265

`A260464(n)-A214407(A000217(n))`
-/

namespace A260504.P11546458921947722265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260464 n - A214407 (A000217 n).toNat

end

end A260504.P11546458921947722265

/-! ## A260504.P12553470573748961711

`2*A327034(n)-1-A214407(A000217(n))`
-/

namespace A260504.P12553470573748961711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A327034 n - 1 - A214407 (A000217 n).toNat

end

end A260504.P12553470573748961711

/-! ## A260504.P9263337432395817432

`A014681(2*A327034(n))-A214407(A000217(n))`
-/

namespace A260504.P9263337432395817432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (2 * A327034 n).toNat - A214407 (A000217 n).toNat

end

end A260504.P9263337432395817432

/-! ## A260504.P5871914741404983874

`A023443(2*A327034(n))-A214407(A000217(n))`
-/

namespace A260504.P5871914741404983874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (2 * A327034 n).toNat - A214407 (A000217 n).toNat

end

end A260504.P5871914741404983874

/-!
# A260505: Number of binary words of length n with exactly one occurrence of subword 010 and exactly two occurrences of subword 101.

The programs for A260505, the canonical program `A260505.P6546014326294359317` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A260505 has offset 0).

The definition of A260505 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A260505.P6546014326294359317

`ogf((x^5-4x^6+8x^7-10x^8+7x^9-2x^10)/(1-6x+13x^2-10x^3-6x^4+18x^5-11x^6-6x^7+10x^8-2x^9-3x^10+2x^11+x^12))`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A260505

/-- `ogf((x^5-4x^6+8x^7-10x^8+7x^9-2x^10)/(1-6x+13x^2-10x^3-6x^4+18x^5-11x^6-6x^7+10x^8-2x^9-3x^10+2x^11+x^12))` -/
def P6546014326294359317.Spec : Prop :=
  ∀ n, P6546014326294359317.a n = A260505 n

theorem P6546014326294359317.correct : P6546014326294359317.Spec := by
  intro n
  simp only [A260505]

end A260505

/-! ## A260505.P5092708768089956770

`A116939(A056015(n))`
-/

namespace A260505.P5092708768089956770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116939 (A056015 n).toNat

end

end A260505.P5092708768089956770

namespace A260505

/-- `A116939(A056015(n))` -/
def P5092708768089956770.Spec : Prop :=
  ∀ n, P5092708768089956770.a n = A260505 n

end A260505

/-! ## A260505.P5181012349011560259

`A329324(n+1)+A306605(A329324(n+1))`
-/

namespace A260505.P5181012349011560259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329324 (n + 1) + A306605 (A329324 (n + 1)).toNat

end

end A260505.P5181012349011560259

namespace A260505

/-- `A329324(n+1)+A306605(A329324(n+1))` -/
def P5181012349011560259.Spec : Prop :=
  ∀ n, P5181012349011560259.a n = A260505 n

end A260505

/-! ## A260505.P12328627438122914970

`A113219(A329324(n+1))`
-/

namespace A260505.P12328627438122914970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113219 (A329324 (n + 1)).toNat

end

end A260505.P12328627438122914970

namespace A260505

/-- `A113219(A329324(n+1))` -/
def P12328627438122914970.Spec : Prop :=
  ∀ n, P12328627438122914970.a n = A260505 n

end A260505

/-! ## A260505.P7488960957128344971

`A123576(A352819(n+1))`
-/

namespace A260505.P7488960957128344971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123576 (A352819 (n + 1)).toNat

end

end A260505.P7488960957128344971

namespace A260505

/-- `A123576(A352819(n+1))` -/
def P7488960957128344971.Spec : Prop :=
  ∀ n, P7488960957128344971.a n = A260505 n

end A260505

/-!
# A260506: Number of signed permutations of length n that are sortable to the identity permutation by some sequence of cdr (context-directed reversal) and cds (context-directed swap) moves.

The programs for A260506, there is no canonical definition to state claims against.
-/

/-! ## A260506.P14379829827890277457

`A247063(or(n, A089945(n)))`
-/

namespace A260506.P14379829827890277457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247063 (Int.lor (n : ℤ) (A089945 n)).toNat

end

end A260506.P14379829827890277457

/-!
# A260507: Primes p such that (2^p+1)^(p-1) == 1 (mod p^2).

The programs for A260507, there is no canonical definition to state claims against.
-/

/-! ## A260507.P9584098389427375878

`p?[A127074(comp[∑[n]])]`
-/

namespace A260507.P9584098389427375878
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127074 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A260507.P9584098389427375878

/-!
# A260508: Numbers k such that A000203(k) = k*A001221(k).

The programs for A260508, there is no canonical definition to state claims against.
-/

/-! ## A260508.P2207117810396612637

`A348031(A337409(n+1)+2+n)`
-/

namespace A260508.P2207117810396612637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348031 (A337409 (n + 1) + 2 + (n : ℤ)).toNat

end

end A260508.P2207117810396612637

/-! ## A260508.P12190196937983462038

`A089748(∑[A058696(floor(n!/3^n))])`
-/

namespace A260508.P12190196937983462038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058696 ⌊(Nat.factorial n : ℚ) / (3 ^ n : ℚ)⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089748 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A260508.P12190196937983462038

/-! ## A260508.P14332813125579974078

`∪[A000396(n+1), A076233(A091689(n+1))]`
-/

namespace A260508.P14332813125579974078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000396 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076233 (A091689 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A260508.P14332813125579974078

/-!
# A260509: Number of graphs on labeled vertices {x, y, 1, 2, ..., n}, such that there is a partition of the vertices into V_1 and V_2 with x in V_1, y in V_2, every v in V_1 adjacent to an even number of vertices in V_2, and every v in V_2 adjacent to an even number of vertices in V_1.

The programs for A260509, there is no canonical definition to state claims against.
-/

/-! ## A260509.P17337704300990291121

`A011782(∑[n+1])-(A000079(n)-1)*a(n-1)` with `a(0)=1`
-/

namespace A260509.P17337704300990291121
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A011782 (∑ j ∈ Finset.range (n + 1), f1 j) - (A000079 n - 1) * a (n - 1)

end

end A260509.P17337704300990291121

/-!
# A260510: a(n) = log_2(A259527(n)).

The programs for A260510, there is no canonical definition to state claims against.
-/

/-! ## A260510.P7715534087914878331

`log2(A259527(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A260510.P7715534087914878331
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A259527 (n + 1) : ℝ)

end

end A260510.P7715534087914878331

/-! ## A260510.P11279353708432004781

`A209354(A112881(n+1))`
-/

namespace A260510.P11279353708432004781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209354 (A112881 (n + 1)).toNat

end

end A260510.P11279353708432004781

/-! ## A260510.P8482331777710533233

`A333816(A166256(n+2))`
-/

namespace A260510.P8482331777710533233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333816 (A166256 (n + 2)).toNat

end

end A260510.P8482331777710533233

/-!
# A260511: Number of signed permutations of length n that are sortable to the identity permutation by some sequence of cdr (context-directed reversal) moves.

The programs for A260511, there is no canonical definition to state claims against.
-/

/-! ## A260511.P6977969983354400095

`A286098(∑[A047855(n)])`
-/

namespace A260511.P6977969983354400095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047855 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286098 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A260511.P6977969983354400095

/-!
# A260513: a(n) = (8*n+13*n^3+3*n^5)/24; also the sum of triangular numbers taken in successive groups of increasing size (see Example).

The programs for A260513, the canonical program `A260513.P318657554716321414` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A260513 has offset 1).

The definition of A260513 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A260513.anchor (n : ℕ) : (A260513 (n + 1) : ℚ) = (8 * (n + 1) + 13 * (n + 1) ^ 3 + 3 * (n + 1) ^ 5 : ℚ) / 24` in `Proof.A260.A260513`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A260513.P3999683433489654124

`ogf((1+3x+7x^2+3x^3+x^4)/(1-6x+15x^2-20x^3+15x^4-6x^5+x^6))`
-/

namespace A260513.P3999683433489654124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 3, 7, 3, 1] [1, -6, 15, -20, 15, -6, 1] n

end

end A260513.P3999683433489654124

namespace A260513

/-- `ogf((1+3x+7x^2+3x^3+x^4)/(1-6x+15x^2-20x^3+15x^4-6x^5+x^6))` -/
def P3999683433489654124.Spec : Prop :=
  ∀ n, P3999683433489654124.a n = A260513 (n + 1)

end A260513

/-! ## A260513.P318657554716321414

`(8*(n+1)+13*(n+1)^3+3*(n+1)^5)/24`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A260513

/-- `(8*(n+1)+13*(n+1)^3+3*(n+1)^5)/24` -/
def P318657554716321414.Spec : Prop :=
  ∀ n, P318657554716321414.a n = (A260513 (n + 1) : ℚ)

end A260513

/-! ## A260513.P1271043471702429044

`Δ[C(2+∑[n], 3)]`
-/

namespace A260513.P1271043471702429044
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 + ∑ j ∈ Finset.range (n + 1), f2 j) 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A260513.P1271043471702429044

namespace A260513

/-- `Δ[C(2+∑[n], 3)]` -/
def P1271043471702429044.Spec : Prop :=
  ∀ n, P1271043471702429044.a n = A260513 (n + 1)

end A260513

/-! ## A260513.P1359933556962180655

`A337898(n+1)-∑[n]²`
-/

namespace A260513.P1359933556962180655
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337898 (n + 1) - (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ)

end

end A260513.P1359933556962180655

namespace A260513

/-- `A337898(n+1)-∑[n]²` -/
def P1359933556962180655.Spec : Prop :=
  ∀ n, P1359933556962180655.a n = A260513 (n + 1)

end A260513

/-! ## A260513.P10809094806747026806

`∑[A003215(n)+∑[A063522(n)]]`
-/

namespace A260513.P10809094806747026806
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063522 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003215 n + ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A260513.P10809094806747026806

namespace A260513

/-- `∑[A003215(n)+∑[A063522(n)]]` -/
def P10809094806747026806.Spec : Prop :=
  ∀ n, P10809094806747026806.a n = A260513 (n + 1)

end A260513

/-! ## A260513.P5629249875334468590

`2*A198833(n+1)-A063842(n)`
-/

namespace A260513.P5629249875334468590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A198833 (n + 1) - A063842 n

end

end A260513.P5629249875334468590

namespace A260513

/-- `2*A198833(n+1)-A063842(n)` -/
def P5629249875334468590.Spec : Prop :=
  ∀ n, P5629249875334468590.a n = A260513 (n + 1)

end A260513

/-! ## A260513.P1619838185041207620

`A000578(n+1)+∑[∑[A063522(n)]]`
-/

namespace A260513.P1619838185041207620
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063522 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A260513.P1619838185041207620

namespace A260513

/-- `A000578(n+1)+∑[∑[A063522(n)]]` -/
def P1619838185041207620.Spec : Prop :=
  ∀ n, P1619838185041207620.a n = A260513 (n + 1)

end A260513

/-! ## A260513.P8380025707590356637

`2*A072474(n+1)-A372583(n+1)`
-/

namespace A260513.P8380025707590356637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A072474 (n + 1) - A372583 (n + 1)

end

end A260513.P8380025707590356637

namespace A260513

/-- `2*A072474(n+1)-A372583(n+1)` -/
def P8380025707590356637.Spec : Prop :=
  ∀ n, P8380025707590356637.a n = A260513 (n + 1)

end A260513

/-! ## A260513.P15520401692082492543

`A072474(n+1)+A372583(n+1)-A372751(n+1)`
-/

namespace A260513.P15520401692082492543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072474 (n + 1) + (A372583 (n + 1) - A372751 (n + 1))

end

end A260513.P15520401692082492543

namespace A260513

/-- `A072474(n+1)+A372583(n+1)-A372751(n+1)` -/
def P15520401692082492543.Spec : Prop :=
  ∀ n, P15520401692082492543.a n = A260513 (n + 1)

end A260513

/-! ## A260513.P8710597753607455243

`A060446(n+1)+∑[A002817(n)]`
-/

namespace A260513.P8710597753607455243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002817 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060446 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A260513.P8710597753607455243

namespace A260513

/-- `A060446(n+1)+∑[A002817(n)]` -/
def P8710597753607455243.Spec : Prop :=
  ∀ n, P8710597753607455243.a n = A260513 (n + 1)

end A260513

/-! ## A260513.P3857287773178257952

`A047780(n+1)-A282816(n+1)`
-/

namespace A260513.P3857287773178257952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047780 (n + 1) - A282816 (n + 1)

end

end A260513.P3857287773178257952

namespace A260513

/-- `A047780(n+1)-A282816(n+1)` -/
def P3857287773178257952.Spec : Prop :=
  ∀ n, P3857287773178257952.a n = A260513 (n + 1)

end A260513

/-! ## A260513.P8674938490083004410

`A093566(n+1)+A198833(n+1)-A047780(n)`
-/

namespace A260513.P8674938490083004410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093566 (n + 1) + (A198833 (n + 1) - A047780 n)

end

end A260513.P8674938490083004410

namespace A260513

/-- `A093566(n+1)+A198833(n+1)-A047780(n)` -/
def P8674938490083004410.Spec : Prop :=
  ∀ n, P8674938490083004410.a n = A260513 (n + 1)

end A260513

/-! ## A260513.P18368544825927448981

`A006003(n+1)+A372583(n+1)-A072474(n+1)`
-/

namespace A260513.P18368544825927448981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006003 (n + 1) + (A372583 (n + 1) - A072474 (n + 1))

end

end A260513.P18368544825927448981

namespace A260513

/-- `A006003(n+1)+A372583(n+1)-A072474(n+1)` -/
def P18368544825927448981.Spec : Prop :=
  ∀ n, P18368544825927448981.a n = A260513 (n + 1)

end A260513

/-! ## A260513.P6414975278478627699

`A006003(n+1)+A372751(n+1)-A372583(n+1)`
-/

namespace A260513.P6414975278478627699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006003 (n + 1) + (A372751 (n + 1) - A372583 (n + 1))

end

end A260513.P6414975278478627699

namespace A260513

/-- `A006003(n+1)+A372751(n+1)-A372583(n+1)` -/
def P6414975278478627699.Spec : Prop :=
  ∀ n, P6414975278478627699.a n = A260513 (n + 1)

end A260513

/-! ## A260513.P15891032106564371227

`A198833(n+1)-A000292(∑[n])`
-/

namespace A260513.P15891032106564371227
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198833 (n + 1) - A000292 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A260513.P15891032106564371227

namespace A260513

/-- `A198833(n+1)-A000292(∑[n])` -/
def P15891032106564371227.Spec : Prop :=
  ∀ n, P15891032106564371227.a n = A260513 (n + 1)

end A260513

/-! ## A260513.P14128885747435999346

`Δ[A000292(∑[n])]`
-/

namespace A260513.P14128885747435999346
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A260513.P14128885747435999346

namespace A260513

/-- `Δ[A000292(∑[n])]` -/
def P14128885747435999346.Spec : Prop :=
  ∀ n, P14128885747435999346.a n = A260513 (n + 1)

end A260513

/-! ## A260513.P41809152319310802

`Δ[A126972(∑[n]+1)]`
-/

namespace A260513.P41809152319310802
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126972 (∑ j ∈ Finset.range (n + 1), f2 j + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A260513.P41809152319310802

namespace A260513

/-- `Δ[A126972(∑[n]+1)]` -/
def P41809152319310802.Spec : Prop :=
  ∀ n, P41809152319310802.a n = A260513 (n + 1)

end A260513

/-! ## A260513.P7703201131926225906

`∑[A265382(∑[2*n])]`
-/

namespace A260513.P7703201131926225906
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265382 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A260513.P7703201131926225906

namespace A260513

/-- `∑[A265382(∑[2*n])]` -/
def P7703201131926225906.Spec : Prop :=
  ∀ n, P7703201131926225906.a n = A260513 (n + 1)

end A260513

/-!
# A260515: Expansion of phi(x^2) * chi(x)^4 in powers of x where phi(), chi() are Ramanujan theta functions.

The programs for A260515, there is no canonical definition to state claims against.
-/

/-! ## A260515.P15430592362481097272

`A260514(2*n)`
-/

namespace A260515.P15430592362481097272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260514 (2 * n)

end

end A260515.P15430592362481097272

/-! ## A260515.P7910957639996325083

`record[A260514(and(n, n+1))]`
-/

namespace A260515.P7910957639996325083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260514 (Nat.land n (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A260515.P7910957639996325083

/-! ## A260515.P6211617280860185170

`record[A260514(n)/A000034(n)]`
-/

namespace A260515.P6211617280860185170
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A260514 n : ℚ) / (A000034 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A260515.P6211617280860185170

/-! ## A260515.P15615445750133423399

`record[A260514(n)/A276391(n+1)]`
-/

namespace A260515.P15615445750133423399
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A260514 n : ℚ) / (A276391 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A260515.P15615445750133423399

/-!
# A260516: Expansion of f(x, x^2) * f(x^2, x^10) in powers of x where f(,) is Ramanujan's general theta function.

The programs for A260516, the canonical program `A260516.P12748464856549383251` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A260516 has offset 0).

The definition of A260516 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A260516.P12748464856549383251

`A121444(Δ[n²])`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A260516

/-- `A121444(Δ[n²])` -/
def P12748464856549383251.Spec : Prop :=
  ∀ n, P12748464856549383251.a n = A260516 n

theorem P12748464856549383251.correct : P12748464856549383251.Spec := by
  intro n
  simp only [A260516]

end A260516

/-! ## A260516.P3153326159491768018

`abs(A258832(Δ[n²]))`
-/

namespace A260516.P3153326159491768018
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A258832 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat|

end

end A260516.P3153326159491768018

namespace A260516

/-- `abs(A258832(Δ[n²]))` -/
def P3153326159491768018.Spec : Prop :=
  ∀ n, P3153326159491768018.a n = A260516 n

end A260516

/-! ## A260516.P7739155308599260787

`0-A258832(2*n+1)`
-/

namespace A260516.P7739155308599260787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  0 - A258832 (2 * n + 1)

end

end A260516.P7739155308599260787

namespace A260516

/-- `0-A258832(2*n+1)` -/
def P7739155308599260787.Spec : Prop :=
  ∀ n, P7739155308599260787.a n = A260516 n

end A260516

/-! ## A260516.P11403638334718784541

`gcd(A000038(n), A258832(2*n+1))`
-/

namespace A260516.P11403638334718784541
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A258832 (2 * n + 1))

end

end A260516.P11403638334718784541

namespace A260516

/-- `gcd(A000038(n), A258832(2*n+1))` -/
def P11403638334718784541.Spec : Prop :=
  ∀ n, (P11403638334718784541.a n : ℤ) = A260516 n

end A260516

/-! ## A260516.P613732745361525453

`lcm(A020985(n), A258832(2*n+1))`
-/

namespace A260516.P613732745361525453
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A258832 (2 * n + 1))

end

end A260516.P613732745361525453

namespace A260516

/-- `lcm(A020985(n), A258832(2*n+1))` -/
def P613732745361525453.Spec : Prop :=
  ∀ n, (P613732745361525453.a n : ℤ) = A260516 n

end A260516

/-! ## A260516.P11299528447962131386

`∑{d}[A258832(2*n+1), A000010(#)]`
-/

namespace A260516.P11299528447962131386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258832 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A260516.P11299528447962131386

namespace A260516

/-- `∑{d}[A258832(2*n+1), A000010(#)]` -/
def P11299528447962131386.Spec : Prop :=
  ∀ n, P11299528447962131386.a n = A260516 n

end A260516

/-! ## A260516.P1913780130884743120

`A113407(3*n+2)/2`
-/

namespace A260516.P1913780130884743120
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A113407 (3 * n + 2) : ℚ) / 2

end

end A260516.P1913780130884743120

namespace A260516

/-- `A113407(3*n+2)/2` -/
def P1913780130884743120.Spec : Prop :=
  ∀ n, P1913780130884743120.a n = (A260516 n : ℚ)

end A260516

/-! ## A260516.P14872646327761852610

`A052343(6*n+4)`
-/

namespace A260516.P14872646327761852610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052343 (6 * n + 4)

end

end A260516.P14872646327761852610

namespace A260516

/-- `A052343(6*n+4)` -/
def P14872646327761852610.Spec : Prop :=
  ∀ n, P14872646327761852610.a n = A260516 n

end A260516

/-! ## A260516.P407831636189140521

`A134343(6*n+4)/2`
-/

namespace A260516.P407831636189140521
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A134343 (6 * n + 4) : ℚ) / 2

end

end A260516.P407831636189140521

namespace A260516

/-- `A134343(6*n+4)/2` -/
def P407831636189140521.Spec : Prop :=
  ∀ n, P407831636189140521.a n = (A260516 n : ℚ)

end A260516

/-! ## A260516.P9540889280435901259

`A259660(8*n+4)`
-/

namespace A260516.P9540889280435901259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259660 (8 * n + 4)

end

end A260516.P9540889280435901259

namespace A260516

/-- `A259660(8*n+4)` -/
def P9540889280435901259.Spec : Prop :=
  ∀ n, P9540889280435901259.a n = A260516 n

end A260516

/-! ## A260516.P12949104353340023206

`A000161(A350052(n))`
-/

namespace A260516.P12949104353340023206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000161 (A350052 n).toNat

end

end A260516.P12949104353340023206

namespace A260516

/-- `A000161(A350052(n))` -/
def P12949104353340023206.Spec : Prop :=
  ∀ n, P12949104353340023206.a n = A260516 n

end A260516

/-!
# A260517: Numbers equidistant from twin prime pairs that are also equidistant from numbers equidistant from twin prime pairs.

The programs for A260517, the canonical program `A260517.P15011533160973328771` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A260517 has offset 1).

The definition of A260517 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 310 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A260517.P15011533160973328771

`A074953(A270535(n+1)+1)`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A260517

/-- `A074953(A270535(n+1)+1)` -/
def P15011533160973328771.Spec : Prop :=
  ∀ n, P15011533160973328771.a n = A260517 (n + 1)

theorem P15011533160973328771.correct : P15011533160973328771.Spec := by
  intro n
  simp only [A260517, Nat.add_sub_cancel]

end A260517

/-!
# A260518: Expansion of psi(x)^2 * f(-x^3)^3 / f(-x) in powers of x where psi(), f() are Ramanujan theta functions.

The programs for A260518, the canonical program `A260518.P2775929053660389639` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A260518 has offset 0).

The definition of A260518 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A260518.P2775929053660389639

`A260114(2*n+1)/6`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A260518

/-- `A260114(2*n+1)/6` -/
def P2775929053660389639.Spec : Prop :=
  ∀ n, P2775929053660389639.a n = (A260518 n : ℚ)

end A260518

/-! ## A260518.P7576225750880892834

`A263021(1+3*n)/2`
-/

namespace A260518.P7576225750880892834
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A263021 (1 + 3 * n) : ℚ) / 2

end

end A260518.P7576225750880892834

namespace A260518

/-- `A263021(1+3*n)/2` -/
def P7576225750880892834.Spec : Prop :=
  ∀ n, P7576225750880892834.a n = (A260518 n : ℚ)

end A260518

/-! ## A260518.P4927193677443312845

`A026741(A263021(1+3*n))`
-/

namespace A260518.P4927193677443312845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A263021 (1 + 3 * n)).toNat

end

end A260518.P4927193677443312845

namespace A260518

/-- `A026741(A263021(1+3*n))` -/
def P4927193677443312845.Spec : Prop :=
  ∀ n, P4927193677443312845.a n = A260518 n

end A260518

/-! ## A260518.P17785687155834425004

`A123108(A263021(3*n+1)+1)`
-/

namespace A260518.P17785687155834425004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (A263021 (3 * n + 1) + 1).toNat

end

end A260518.P17785687155834425004

namespace A260518

/-- `A123108(A263021(3*n+1)+1)` -/
def P17785687155834425004.Spec : Prop :=
  ∀ n, P17785687155834425004.a n = A260518 n

end A260518

/-! ## A260518.P16545357493100034233

`A008619(A263021(3*n+1)-1)`
-/

namespace A260518.P16545357493100034233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A263021 (3 * n + 1) - 1).toNat

end

end A260518.P16545357493100034233

namespace A260518

/-- `A008619(A263021(3*n+1)-1)` -/
def P16545357493100034233.Spec : Prop :=
  ∀ n, P16545357493100034233.a n = A260518 n

end A260518

/-! ## A260518.P15342946042610804235

`A236926(A017605(n))/12`
-/

namespace A260518.P15342946042610804235
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A236926 (A017605 n).toNat : ℚ) / 12

end

end A260518.P15342946042610804235

namespace A260518

/-- `A236926(A017605(n))/12` -/
def P15342946042610804235.Spec : Prop :=
  ∀ n, P15342946042610804235.a n = (A260518 n : ℚ)

end A260518

/-!
# A260519: Concatenate the positions of digits 0, 1,..., 9 in the decimal representation of n, using 1 for the rightmost digit etc., and 0 when the digit does not occur.

The programs for A260519, there is no canonical definition to state claims against.
-/

/-! ## A260519.P14118722623536050136

`A100909(A056143(n-A107846(n)))`
-/

namespace A260519.P14118722623536050136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100909 (A056143 ((n : ℤ) - A107846 n).toNat).toNat

end

end A260519.P14118722623536050136

/-! ## A260519.P14369298269547580207

`A260520(n)/A260521(n)*A260522(n)`
-/

namespace A260519.P14369298269547580207
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A260520 n : ℚ) / (A260521 n : ℚ) * (A260522 n : ℚ)

end

end A260519.P14369298269547580207

/-! ## A260519.P11575623027591582168

`A260520(or(A004086(n), A004186(n)))`
-/

namespace A260519.P11575623027591582168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260520 (Int.lor (A004086 n) (A004186 n)).toNat

end

end A260519.P11575623027591582168

/-! ## A260519.P18232134092838818699

`A260520(A033865(n))`
-/

namespace A260519.P18232134092838818699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260520 (A033865 n).toNat

end

end A260519.P18232134092838818699

/-!
# A260520: Concatenate the positions of digits 0, 1, ..., 9 in the decimal representation of n, using 1 for the leftmost digit etc., and 0 when the digit does not occur.

The programs for A260520, there is no canonical definition to state claims against.
-/

/-! ## A260520.P4146875348818626877

`A260519(n)*A260521(n)/A260522(n)`
-/

namespace A260520.P4146875348818626877
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A260519 n * A260521 n : ℚ) / (A260522 n : ℚ)

end

end A260520.P4146875348818626877

/-! ## A260520.P14452449318559979828

`lcm(A260519(A004086(n)), A260527(n))`
-/

namespace A260520.P14452449318559979828
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A260519 (A004086 n).toNat) (A260527 n)

end

end A260520.P14452449318559979828

/-! ## A260520.P13513292092574336111

`lcm(A260519(A345110(n)), A260529(n))`
-/

namespace A260520.P13513292092574336111
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A260519 (A345110 n).toNat) (A260529 n)

end

end A260520.P13513292092574336111

/-! ## A260520.P6074581181506191446

`A260519(n)/A348783(n^A119999(n))*A260521(n)`
-/

namespace A260520.P6074581181506191446
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A260519 n : ℚ) / (A348783 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A119999 n : ℤ))).toNat : ℚ) * (A260521 n : ℚ)

end

end A260520.P6074581181506191446

/-!
# A260521: Concatenate the positions of digits 9, 8,..., 0 in the decimal representation of n, using 1 for the rightmost digit etc., and 0 when the digit does not occur.

The programs for A260521, there is no canonical definition to state claims against.
-/

/-! ## A260521.P3789354731143430762

`A348783(A056142(A107846(n)+n))`
-/

namespace A260521.P3789354731143430762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348783 (A056142 (A107846 n + (n : ℤ)).toNat).toNat

end

end A260521.P3789354731143430762

/-! ## A260521.P9598574860144221858

`A260520(n)/A260519(n)*A260522(n)`
-/

namespace A260521.P9598574860144221858
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A260520 n : ℚ) / (A260519 n : ℚ) * (A260522 n : ℚ)

end

end A260521.P9598574860144221858

/-! ## A260521.P5320412275679244907

`A260522(A004186(n))+A193581(n)`
-/

namespace A260521.P5320412275679244907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260522 (A004186 n).toNat + A193581 n

end

end A260521.P5320412275679244907

/-!
# A260522: Concatenate the positions of digits 9, 8,..., 0 in the decimal representation of n, using 1 for the leftmost digit etc., and 0 when the digit does not occur.

The programs for A260522, there is no canonical definition to state claims against.
-/

/-! ## A260522.P8142282255562060175

`A260519(n)/A260520(n)*A260521(n)`
-/

namespace A260522.P8142282255562060175
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A260519 n : ℚ) / (A260520 n : ℚ) * (A260521 n : ℚ)

end

end A260522.P8142282255562060175

/-! ## A260522.P6957180144602597582

`A260521(A004186(n))-A193581(n)`
-/

namespace A260522.P6957180144602597582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260521 (A004186 n).toNat - A193581 n

end

end A260522.P6957180144602597582

/-! ## A260522.P17583557383659106043

`A260521(A321474(n))-A193581(n)`
-/

namespace A260522.P17583557383659106043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260521 (A321474 n).toNat - A193581 n

end

end A260522.P17583557383659106043

/-! ## A260522.P9537500572703267337

`A348783(n^A119999(n))`
-/

namespace A260522.P9537500572703267337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348783 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A119999 n : ℤ))).toNat

end

end A260522.P9537500572703267337

/-!
# A260523: Numbers n such that (sum of digits of n) + (product of digits of n) is semiprime.

The programs for A260523, the canonical program `A260523.P15202839270934092971` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A260523 has offset 1).

The definition of A260523 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3369 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A260523.P15202839270934092971

`eq[2, ∑{e}[∏{digits}[n, #]+∑{digits}[n, #], #]]`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A260523

/-- `eq[2, ∑{e}[∏{digits}[n, #]+∑{digits}[n, #], #]]` -/
def P15202839270934092971.Spec : Prop :=
  ∀ n, (P15202839270934092971.a n : ℤ) = A260523 (n + 1)

theorem P15202839270934092971.correct : P15202839270934092971.Spec := by
  intro n
  simp only [A260523, Nat.add_sub_cancel]

end A260523

/-! ## A260523.P18093100496601447818

`eq[2, ∑{e}[A061762(n), #]]`
-/

namespace A260523.P18093100496601447818
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061762 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n).natAbs, Nat.factorization (f3 n).natAbs p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A260523.P18093100496601447818

namespace A260523

/-- `eq[2, ∑{e}[A061762(n), #]]` -/
def P18093100496601447818.Spec : Prop :=
  ∀ n, (P18093100496601447818.a n : ℤ) = A260523 (n + 1)

end A260523

/-! ## A260523.P520043055819225283

`eq[2, A105700(A061762(n))]`
-/

namespace A260523.P520043055819225283
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 (A061762 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A260523.P520043055819225283

namespace A260523

/-- `eq[2, A105700(A061762(n))]` -/
def P520043055819225283.Spec : Prop :=
  ∀ n, (P520043055819225283.a n : ℤ) = A260523 (n + 1)

end A260523

/-! ## A260523.P15349150232916255048

`eq[2, A001222(A061762(n+1))]+1`
-/

namespace A260523.P15349150232916255048
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A061762 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A260523.P15349150232916255048

namespace A260523

/-- `eq[2, A001222(A061762(n+1))]+1` -/
def P15349150232916255048.Spec : Prop :=
  ∀ n, (P15349150232916255048.a n : ℤ) = A260523 (n + 1)

end A260523

/-! ## A260523.P7426269109918099634

`eq[2, A226378(A061762(n))%A000124(n+4)]`
-/

namespace A260523.P7426269109918099634
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A226378 (A061762 n).toNat) (A000124 (n + 4))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A260523.P7426269109918099634

namespace A260523

/-- `eq[2, A226378(A061762(n))%A000124(n+4)]` -/
def P7426269109918099634.Spec : Prop :=
  ∀ n, (P7426269109918099634.a n : ℤ) = A260523 (n + 1)

end A260523

/-!
# A260526: Concatenate the positions of digits 0, 1,..., 9 in the decimal representation of n, using 1 for the rightmost digit etc., skip it if a digit does not occur.

The programs for A260526, there is no canonical definition to state claims against.
-/

/-! ## A260526.P14617798065426772264

`A260528(A213217(n))`
-/

namespace A260526.P14617798065426772264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260528 (A213217 n).toNat

end

end A260526.P14617798065426772264

/-! ## A260526.P17646766833537759983

`A213217(A213217(n)+8)`
-/

namespace A260526.P17646766833537759983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213217 (A213217 n + 8).toNat

end

end A260526.P17646766833537759983

/-! ## A260526.P12965616430460191558

`A260529(n)-A056965(A213217(n))`
-/

namespace A260526.P12965616430460191558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260529 n - A056965 (A213217 n).toNat

end

end A260526.P12965616430460191558

/-! ## A260526.P2004612747970396370

`A260529(A260529(n)-A043562(n))`
-/

namespace A260526.P2004612747970396370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260529 (A260529 n - A043562 n).toNat

end

end A260526.P2004612747970396370

/-! ## A260526.P1267728425739369685

`A260528(n)`
-/

namespace A260526.P1267728425739369685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260528 n

end

end A260526.P1267728425739369685

/-!
# A260527: Concatenate the positions of digits 0, 1,..., 9 in the decimal representation of n, using 1 for the leftmost digit etc., skip digits which don't occur.

The programs for A260527, there is no canonical definition to state claims against.
-/

/-! ## A260527.P1759565901765334635

`A260529(n)`
-/

namespace A260527.P1759565901765334635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260529 n

end

end A260527.P1759565901765334635

/-! ## A260527.P300157484577414927

`A213217(A321537(n)+n)`
-/

namespace A260527.P300157484577414927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213217 (A321537 n + (n : ℤ)).toNat

end

end A260527.P300157484577414927

/-!
# A260528: Concatenate the positions of digits 9, 8,..., 0 in the decimal representation of n, using 1 for the leftmost digit etc., skip digits which don't occur.

The programs for A260528, there is no canonical definition to state claims against.
-/

/-! ## A260528.P2636540173804356528

`A260526(n)`
-/

namespace A260528.P2636540173804356528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260526 n

end

end A260528.P2636540173804356528

/-!
# A260529: Concatenate the positions of digits 9, 8,..., 0 in the decimal representation of n, using 1 for the rightmost digit etc., skip it if a digit does not occur.

The programs for A260529, there is no canonical definition to state claims against.
-/

/-! ## A260529.P7988945856596525078

`A014683(A213217(n))`
-/

namespace A260529.P7988945856596525078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014683 (A213217 n).toNat

end

end A260529.P7988945856596525078

/-! ## A260529.P16015467856426624164

`A098181(A213217(n)-1)`
-/

namespace A260529.P16015467856426624164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098181 (A213217 n - 1).toNat

end

end A260529.P16015467856426624164

/-! ## A260529.P1386839859500846506

`A260527(2*A213217(n))`
-/

namespace A260529.P1386839859500846506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260527 (2 * A213217 n).toNat

end

end A260529.P1386839859500846506

/-! ## A260529.P14083914400451318186

`A213217(or(4, A213217(n)))`
-/

namespace A260529.P14083914400451318186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213217 (Int.lor 4 (A213217 n)).toNat

end

end A260529.P14083914400451318186

/-! ## A260529.P6884648857687308568

`A213217(n)+A107846(n)`
-/

namespace A260529.P6884648857687308568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213217 n + A107846 n

end

end A260529.P6884648857687308568

/-! ## A260529.P17706955124382931148

`A398512(n)+A213217(n)`
-/

namespace A260529.P17706955124382931148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398512 n + A213217 n

end

end A260529.P17706955124382931148

/-!
# A260530: Coefficients in asymptotic expansion of sequence A051296.

The programs for A260530, there is no canonical definition to state claims against.
-/

/-! ## A260530.P3566497540788311644

`A280769(n+1)+A014495(n)`
-/

namespace A260530.P3566497540788311644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280769 (n + 1) + A014495 n

end

end A260530.P3566497540788311644

/-! ## A260530.P9430209887306914295

`A326678(A047865(n))+A307441(n)`
-/

namespace A260530.P9430209887306914295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326678 (A047865 n).toNat + A307441 n

end

end A260530.P9430209887306914295

/-!
# A260532: Coefficients in asymptotic expansion of sequence A051295.

The programs for A260532, there is no canonical definition to state claims against.
-/

/-! ## A260532.P1165452582010534102

`Δ[A082459(record[A103694(n)])]`
-/

namespace A260532.P1165452582010534102
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103694 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082459 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A260532.P1165452582010534102

/-! ## A260532.P12591268220495722613

`A193657(n)-A185236(ceil(2^(n-1)))`
-/

namespace A260532.P12591268220495722613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193657 n - A185236 ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉.toNat

end

end A260532.P12591268220495722613

/-!
# A260533: Table of partition coefficients read by rows. The coefficient of a partition p is Product_{j=1..length(p)-1} C(p[j], p[j+1]). Row n lists the coefficients of the partitions of n in the ordering A080577, for n>=1.

The programs for A260533, there is no canonical definition to state claims against.
-/

/-! ## A260533.P11400508091925448545

`A008480(A333485(1+n))`
-/

namespace A260533.P11400508091925448545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008480 (A333485 (1 + n)).toNat

end

end A260533.P11400508091925448545

/-! ## A260533.P1214221019295753210

`A321648(A129129(1+n))`
-/

namespace A260533.P1214221019295753210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321648 (A129129 (1 + n)).toNat

end

end A260533.P1214221019295753210

/-! ## A260533.P9764447514654159846

`A298941(29*A333485(n+1))`
-/

namespace A260533.P9764447514654159846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298941 (29 * A333485 (n + 1)).toNat

end

end A260533.P9764447514654159846

/-! ## A260533.P2712715194099752275

`A309004(A228099(n+1))`
-/

namespace A260533.P2712715194099752275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309004 (A228099 (n + 1)).toNat

end

end A260533.P2712715194099752275

/-! ## A260533.P5736034668544687652

`A331128(A380401(n))`
-/

namespace A260533.P5736034668544687652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331128 (A380401 n).toNat

end

end A260533.P5736034668544687652

/-!
# A260534: Square array read by ascending antidiagonals, T(n,k) = Sum_{j=0..k} n^j*(C(k-j,j) mod 2).

The programs for A260534, there is no canonical definition to state claims against.
-/

/-! ## A260534.P493282240491303299

`A178239(A135381(n))`
-/

namespace A260534.P493282240491303299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178239 (A135381 n).toNat

end

end A260534.P493282240491303299

/-!
# A260536: Number of (n+2)X(n+2) 0..1 arrays with each 3X3 subblock having clockwise perimeter pattern 00000001 00000011 or 00010001.

The programs for A260536, there is no canonical definition to state claims against.
-/

/-! ## A260536.P6164211557095062198

`A260544(∑[4*n]+1)`
-/

namespace A260536.P6164211557095062198
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260544 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A260536.P6164211557095062198

/-! ## A260536.P17122973115147034421

`record[A260544(A330613(n+1))]`
-/

namespace A260536.P17122973115147034421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260544 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A260536.P17122973115147034421

/-! ## A260536.P11007611131912025882

`record[A214505(n)*A260544(n+1)]`
-/

namespace A260536.P11007611131912025882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214505 n * A260544 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A260536.P11007611131912025882

/-! ## A260536.P1095663107064746548

`record[gcd(A114327(n), A260544(n+1))]`
-/

namespace A260536.P1095663107064746548
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A114327 n) (A260544 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A260536.P1095663107064746548

/-!
# A260537: Number of (n+2) X (1+2) 0..1 arrays with each 3 X 3 subblock having clockwise perimeter pattern 00000001 00000011 or 00010001.

The programs for A260537, there is no canonical definition to state claims against.
-/

/-! ## A260537.P16178498283592889693

`A260544(∑[n]+1)`
-/

namespace A260537.P16178498283592889693
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260544 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A260537.P16178498283592889693

/-! ## A260537.P16784521078130838998

`record[A260544(A056536(n+1))]`
-/

namespace A260537.P16784521078130838998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260544 (A056536 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A260537.P16784521078130838998

/-! ## A260537.P8706026326008601964

`record[A260544(A254052(n+1))]`
-/

namespace A260537.P8706026326008601964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260544 (A254052 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A260537.P8706026326008601964

/-! ## A260537.P514931637962443837

`record[A260544(A267104(n+1))]`
-/

namespace A260537.P514931637962443837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260544 (A267104 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A260537.P514931637962443837

/-! ## A260537.P3487579342391534871

`record[A260544(A276954(n+1))]`
-/

namespace A260537.P3487579342391534871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260544 (A276954 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A260537.P3487579342391534871

/-!
# A260538: Number of (n+2) X (2+2) 0..1 arrays with each 3 X 3 subblock having clockwise perimeter pattern 00000001 00000011 or 00010001.

The programs for A260538, there is no canonical definition to state claims against.
-/

/-! ## A260538.P12995429686245622403

`A260544(∑[n+1]+2)`
-/

namespace A260538.P12995429686245622403
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260544 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A260538.P12995429686245622403

/-!
# A260539: Number of (n+2) X (3+2) 0..1 arrays with each 3 X 3 subblock having clockwise perimeter pattern 00000001 00000011 or 00010001.

The programs for A260539, there is no canonical definition to state claims against.
-/

/-! ## A260539.P1049681952831159065

`A260544(∑[n+2]+4)`
-/

namespace A260539.P1049681952831159065
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260544 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A260539.P1049681952831159065

/-!
# A260540: Number of (n+2)X(4+2) 0..1 arrays with each 3X3 subblock having clockwise perimeter pattern 00000001 00000011 or 00010001.

The programs for A260540, there is no canonical definition to state claims against.
-/

/-! ## A260540.P8737225393392214563

`A260544(∑[n+3]+7)`
-/

namespace A260540.P8737225393392214563
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260544 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A260540.P8737225393392214563

/-!
# A260541: Number of (n+2)X(5+2) 0..1 arrays with each 3X3 subblock having clockwise perimeter pattern 00000001 00000011 or 00010001.

The programs for A260541, there is no canonical definition to state claims against.
-/

/-! ## A260541.P18380185645665849147

`A260544(A374005(n+1))`
-/

namespace A260541.P18380185645665849147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260544 (A374005 (n + 1)).toNat

end

end A260541.P18380185645665849147

/-!
# A260542: Number of (n+2)X(6+2) 0..1 arrays with each 3X3 subblock having clockwise perimeter pattern 00000001 00000011 or 00010001.

The programs for A260542, there is no canonical definition to state claims against.
-/

/-! ## A260542.P17068248279454817858

`A260544(A374007(n+1))`
-/

namespace A260542.P17068248279454817858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260544 (A374007 (n + 1)).toNat

end

end A260542.P17068248279454817858

/-!
# A260543: Number of (n+2)X(7+2) 0..1 arrays with each 3X3 subblock having clockwise perimeter pattern 00000001 00000011 or 00010001.

The programs for A260543, there is no canonical definition to state claims against.
-/

/-! ## A260543.P5387242073861502474

`A260544(A374008(n+1))`
-/

namespace A260543.P5387242073861502474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260544 (A374008 (n + 1)).toNat

end

end A260543.P5387242073861502474

/-!
# A260545: Expansion of phi(-x^6)^2 / (chi(x) * phi(-x)^2) in powers of x where phi(), chi() are Ramanujan theta functions.

The programs for A260545, there is no canonical definition to state claims against.
-/

/-! ## A260545.P2077954447980518584

`A001935(3*n)`
-/

namespace A260545.P2077954447980518584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001935 (3 * n)

end

end A260545.P2077954447980518584

/-! ## A260545.P4335622638844682498

`abs(A083365(3*n))`
-/

namespace A260545.P4335622638844682498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A083365 (3 * n)|

end

end A260545.P4335622638844682498

/-! ## A260545.P2551839640377556793

`record[A001935(A014682(n)+1)]`
-/

namespace A260545.P2551839640377556793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001935 (A014682 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A260545.P2551839640377556793

/-! ## A260545.P9195812715225003789

`record[A010892(n)*A083365(n)]`
-/

namespace A260545.P9195812715225003789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010892 n * A083365 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A260545.P9195812715225003789

/-! ## A260545.P14719806319479089427

`record[A001935(n)^A049347(n)]`
-/

namespace A260545.P14719806319479089427
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001935 n : ℚ) ^ (A049347 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A260545.P14719806319479089427

/-! ## A260545.P41691884013153609

`record[A001935(A000217(n)%(n+1)+n+1)]`
-/

namespace A260545.P41691884013153609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001935 (Int.tmod (A000217 n) (n + 1 : ℤ) + (n + 1 : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A260545.P41691884013153609

/-! ## A260545.P3059854557617384717

`record[A001935(and(n, A049347(n+1)))]`
-/

namespace A260545.P3059854557617384717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001935 (Int.land (n : ℤ) (A049347 (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A260545.P3059854557617384717

/-! ## A260545.P17280473787437705089

`record[A001935((A217571(n+1)+1)%(n+1))]`
-/

namespace A260545.P17280473787437705089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001935 (Int.tmod (A217571 (n + 1) + 1) (n + 1 : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A260545.P17280473787437705089

/-! ## A260545.P18436977196313547345

`record[A001935(A007953(n+n)+n)]`
-/

namespace A260545.P18436977196313547345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001935 (A007953 (n + n) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A260545.P18436977196313547345

/-! ## A260545.P1044251387647658839

`gcd(A083365(2*n)*A083365(3*n), A083365(3*n))`
-/

namespace A260545.P1044251387647658839
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A083365 (2 * n) * A083365 (3 * n)) (A083365 (3 * n))

end

end A260545.P1044251387647658839

/-!
# A260546: Expansion of phi(-x^3) * psi(-x^3) / phi(-x)^2 in powers of x where phi(), psi() are Ramanujan theta functions.

The programs for A260546, there is no canonical definition to state claims against.
-/

/-! ## A260546.P56453142827117163

`A001935(3*n+1)`
-/

namespace A260546.P56453142827117163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001935 (3 * n + 1)

end

end A260546.P56453142827117163

/-! ## A260546.P13022017516770377162

`abs(A083365(1+3*n))`
-/

namespace A260546.P13022017516770377162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A083365 (1 + 3 * n)|

end

end A260546.P13022017516770377162

/-! ## A260546.P10249607297181461537

`record[A001935(n²%Δ[n²])]`
-/

namespace A260546.P10249607297181461537
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001935 (Int.tmod (n ^ 2 : ℤ) ((f2 (n + 1) : ℤ) - (f2 n : ℤ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A260546.P10249607297181461537

/-! ## A260546.P5578410141879533504

`record[and((-1)^(n%3), A001935(n))]`
-/

namespace A260546.P5578410141879533504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((-1) ^ (n % 3)) (A001935 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A260546.P5578410141879533504

/-! ## A260546.P5460783442118402388

`record[A001935(A074066(n+1))]`
-/

namespace A260546.P5460783442118402388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001935 (A074066 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A260546.P5460783442118402388

/-! ## A260546.P6806130980543486625

`record[A001935(gcd(n+1, A047228(n+1)))]`
-/

namespace A260546.P6806130980543486625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001935 (Int.gcd (n + 1 : ℤ) (A047228 (n + 1)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A260546.P6806130980543486625

/-! ## A260546.P4947370901543579592

`record[A001935(A004526(n)+A000265(n+1))]`
-/

namespace A260546.P4947370901543579592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001935 (A004526 n + A000265 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A260546.P4947370901543579592

/-! ## A260546.P14421585881142326940

`record[A001935(and(n, A049347(n)))]`
-/

namespace A260546.P14421585881142326940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001935 (Int.land (n : ℤ) (A049347 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A260546.P14421585881142326940

/-! ## A260546.P12238867059657192671

`record[A001935(A373750(n))]`
-/

namespace A260546.P12238867059657192671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001935 (A373750 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A260546.P12238867059657192671

/-! ## A260546.P17664422416519269264

`record[A001935(A007953(n+1+n)+n)]`
-/

namespace A260546.P17664422416519269264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001935 (A007953 (n + 1 + n) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A260546.P17664422416519269264

/-! ## A260546.P4837674959293435198

`abs(A092869(8*n+A008586(n+1)))`
-/

namespace A260546.P4837674959293435198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A092869 ((8 * n : ℤ) + A008586 (n + 1)).toNat|

end

end A260546.P4837674959293435198

/-!
# A260547: Expansion of psi(x^3) * psi(-x^3) * chi(-x) / phi(-x)^2 in powers of x where phi(), psi(), chi() are Ramanujan theta functions.

The programs for A260547, there is no canonical definition to state claims against.
-/

/-! ## A260547.P970678303944975107

`A001935(3*n+2)/2`
-/

namespace A260547.P970678303944975107
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001935 (3 * n + 2) : ℚ) / 2

end

end A260547.P970678303944975107

/-! ## A260547.P8639684318884011268

`A098492(3*n+2)`
-/

namespace A260547.P8639684318884011268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098492 (3 * n + 2)

end

end A260547.P8639684318884011268

/-! ## A260547.P8731658987764839865

`A098491(3*n+2)`
-/

namespace A260547.P8731658987764839865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098491 (3 * n + 2)

end

end A260547.P8731658987764839865

/-! ## A260547.P6978162620464666418

`record[A098491(A014682(n))]`
-/

namespace A260547.P6978162620464666418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098491 (A014682 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A260547.P6978162620464666418

/-!
# A260552: Triangle read by rows giving successive states of cellular automaton generated by "Rule 17" initiated with a single ON (black) cell.

The programs for A260552, the canonical program `A260552.P11753030595582791337` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A260552 has offset 0).

The definition of A260552 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A260552.P11753030595582791337

`A266669(n)*A267001(n)`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A260552

/-- `A266669(n)*A267001(n)` -/
def P11753030595582791337.Spec : Prop :=
  ∀ n, P11753030595582791337.a n = A260552 n

theorem P11753030595582791337.correct : P11753030595582791337.Spec := by
  intro n
  simp only [A260552]

end A260552

/-! ## A260552.P4751709879279075330

`A266669(n)*A267269(n)`
-/

namespace A260552.P4751709879279075330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266669 n * A267269 n

end

end A260552.P4751709879279075330

namespace A260552

/-- `A266669(n)*A267269(n)` -/
def P4751709879279075330.Spec : Prop :=
  ∀ n, P4751709879279075330.a n = A260552 n

end A260552

/-! ## A260552.P4815010946944487737

`A266174(2*n-A053187(n))`
-/

namespace A260552.P4815010946944487737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266174 ((2 * n : ℤ) - A053187 n).toNat

end

end A260552.P4815010946944487737

namespace A260552

/-- `A266174(2*n-A053187(n))` -/
def P4815010946944487737.Spec : Prop :=
  ∀ n, P4815010946944487737.a n = A260552 n

end A260552

/-! ## A260552.P10249838676634560526

`A023532(A004277(n)*A267001(n))`
-/

namespace A260552.P10249838676634560526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023532 (A004277 n * A267001 n).toNat

end

end A260552.P10249838676634560526

namespace A260552

/-- `A023532(A004277(n)*A267001(n))` -/
def P10249838676634560526.Spec : Prop :=
  ∀ n, P10249838676634560526.a n = A260552 n

end A260552

/-! ## A260552.P16247937318599307569

`A267001(n-A106459(2*n+1))`
-/

namespace A260552.P16247937318599307569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267001 ((n : ℤ) - A106459 (2 * n + 1)).toNat

end

end A260552.P16247937318599307569

namespace A260552

/-- `A267001(n-A106459(2*n+1))` -/
def P16247937318599307569.Spec : Prop :=
  ∀ n, P16247937318599307569.a n = A260552 n

end A260552

/-! ## A260552.P15232430781073259046

`and(A267001(n), A293960(2*n))`
-/

namespace A260552.P15232430781073259046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A267001 n) (A293960 (2 * n))

end

end A260552.P15232430781073259046

namespace A260552

/-- `and(A267001(n), A293960(2*n))` -/
def P15232430781073259046.Spec : Prop :=
  ∀ n, P15232430781073259046.a n = A260552 n

end A260552

/-!
# A260553: Primes p such that p = q^2 + 2*r^2 where q and r are also primes.

The programs for A260553, there is no canonical definition to state claims against.
-/

/-! ## A260553.P301063566869817136

`A201613(round(sqrt(n²+1)))%A201623(n+1)`
-/

namespace A260553.P301063566869817136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A201613 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat) (A201623 (n + 1))

end

end A260553.P301063566869817136

/-! ## A260553.P17237702177885399506

`p?[A022171(n)*A123592(n+1)]`
-/

namespace A260553.P17237702177885399506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022171 n * A123592 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A260553.P17237702177885399506

/-! ## A260553.P16462037782476553542

`p?[A123592(n+1)*A158117(n)]`
-/

namespace A260553.P16462037782476553542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123592 (n + 1) * A158117 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A260553.P16462037782476553542

/-! ## A260553.P9358506345087506668

`p?[A123592(n+1)*A203550(n+1)]`
-/

namespace A260553.P9358506345087506668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123592 (n + 1) * A203550 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A260553.P9358506345087506668

/-!
# A260554: Primes p such that p = q^2 + 4*r^2 where q and r are also primes.

The programs for A260554, there is no canonical definition to state claims against.
-/

/-! ## A260554.P3453678435641236993

`A174054(lt[A133385(n), A180001(3*n+2)])`
-/

namespace A260554.P3453678435641236993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133385 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180001 (3 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174054 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A260554.P3453678435641236993

/-! ## A260554.P389559420158277813

`A174054(A029963(n+1)+2)`
-/

namespace A260554.P389559420158277813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174054 (A029963 (n + 1) + 2).toNat

end

end A260554.P389559420158277813

/-! ## A260554.P603456517371610243

`filter[A174054(n+2), A400003(#)]`
-/

namespace A260554.P603456517371610243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174054 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A400003 (f1 j).toNat = 1) n)

end

end A260554.P603456517371610243

/-!
# A260555: Primes p such that p = q^2 + 6*r^2 where q and r are also primes.

The programs for A260555, there is no canonical definition to state claims against.
-/

/-! ## A260555.P14203071880277254035

`p?[A335821(A156376(n))]`
-/

namespace A260555.P14203071880277254035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335821 (A156376 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A260555.P14203071880277254035

/-! ## A260555.P2208426008556592864

`p?[A335821(A255413(n+1))]`
-/

namespace A260555.P2208426008556592864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335821 (A255413 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A260555.P2208426008556592864

/-!
# A260556: Primes p such that p = q^2 + 8*r^2 where q and r are also primes.

The programs for A260556, there is no canonical definition to state claims against.
-/

/-! ## A260556.P4017717283314529189

`A070179(A072190(n+1)%A181556(n))`
-/

namespace A260556.P4017717283314529189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070179 (Int.tmod (A072190 (n + 1)) (A181556 n)).toNat

end

end A260556.P4017717283314529189

/-!
# A260557: Primes p such that p = q^2 + 10*r^2 where q and r are also primes.

The programs for A260557, there is no canonical definition to state claims against.
-/

/-! ## A260557.P7973735586569129211

`p?[A175680(3*(n+1))+1+n]`
-/

namespace A260557.P7973735586569129211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175680 (3 * (n + 1)) + 1 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A260557.P7973735586569129211

/-!
# A260558: Numbers k such that (k^29+1)/(k+1) is prime.

The programs for A260558, there is no canonical definition to state claims against.
-/

/-! ## A260558.P7038958631431114046

`A340604(∪[A260571(n+1), A092097(n)])`
-/

namespace A260558.P7038958631431114046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260571 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092097 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340604 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A260558.P7038958631431114046

/-!
# A260563: Numbers n such that (n^47+1)/(n+1) is prime.

The programs for A260563, there is no canonical definition to state claims against.
-/

/-! ## A260563.P38185648564293957

`A127406(2*a(n-3))` with `a(0)=6, a(1)=7, a(2)=17`
-/

namespace A260563.P38185648564293957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [6, 7, 17] fun n a =>
  A127406 (2 * a (n - 3)).toNat

end

end A260563.P38185648564293957

/-!
# A260564: Numbers n such that (n^53+1)/(n+1) is prime.

The programs for A260564, there is no canonical definition to state claims against.
-/

/-! ## A260564.P10427548652895648538

`A274640(A040159(n+3)+A006012(n+4))`
-/

namespace A260564.P10427548652895648538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274640 (A040159 (n + 3) + A006012 (n + 4)).toNat

end

end A260564.P10427548652895648538

/-!
# A260574: Expansion of phi(x^3) * psi(x^3) / f(x) in powers of x where phi(), psi(), f() are Ramanujan theta functions.

The programs for A260574, there is no canonical definition to state claims against.
-/

/-! ## A260574.P6737069997369709981

`A033999(A000129(n))*A261426(n)`
-/

namespace A260574.P6737069997369709981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A000129 n).toNat * A261426 n

end

end A260574.P6737069997369709981

/-!
# A260575: Number of ways to place 2n rooks on n X n board, 2 rooks in each row and each column, multiple rooks in a cell allowed, and exactly 3 rooks below the main diagonal.

The programs for A260575, there is no canonical definition to state claims against.
-/

/-! ## A260575.P4879209790965972697

`A269742((n+2)²+4)`
-/

namespace A260575.P4879209790965972697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269742 ((n + 2) ^ 2 + 4)

end

end A260575.P4879209790965972697

/-!
# A260577: Numbers n for which d(n+d(n)) < d(n), where d(n) is the number of divisors of n.

The programs for A260577, the canonical program `A260577.P8221833800038063480` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A260577 has offset 1).

The definition of A260577 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A260577.P16230976411659683667

`lt[A286530(1+n), 0]+1`
-/

namespace A260577.P16230976411659683667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286530 (1 + n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A260577.P16230976411659683667

namespace A260577

/-- `lt[A286530(1+n), 0]+1` -/
def P16230976411659683667.Spec : Prop :=
  ∀ n, (P16230976411659683667.a n : ℤ) = A260577 (n + 1)

end A260577

/-! ## A260577.P7864579688972388139

`lt[A286530(A028310(n)), 0]`
-/

namespace A260577.P7864579688972388139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286530 (A028310 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A260577.P7864579688972388139

namespace A260577

/-- `lt[A286530(A028310(n)), 0]` -/
def P7864579688972388139.Spec : Prop :=
  ∀ n, (P7864579688972388139.a n : ℤ) = A260577 (n + 1)

end A260577

/-! ## A260577.P8286437709327261091

`A020725(lt[A286530(n+1), 0])`
-/

namespace A260577.P8286437709327261091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286530 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A260577.P8286437709327261091

namespace A260577

/-- `A020725(lt[A286530(n+1), 0])` -/
def P8286437709327261091.Spec : Prop :=
  ∀ n, P8286437709327261091.a n = A260577 (n + 1)

end A260577

/-! ## A260577.P8915320460807743070

`lt[A286529(n+1), A000005(n+1)]+1`
-/

namespace A260577.P8915320460807743070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286529 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A260577.P8915320460807743070

namespace A260577

/-- `lt[A286529(n+1), A000005(n+1)]+1` -/
def P8915320460807743070.Spec : Prop :=
  ∀ n, (P8915320460807743070.a n : ℤ) = A260577 (n + 1)

end A260577

/-! ## A260577.P1633472642362069339

`lt[A286529(n+1), A334954(n+1)-1]+1`
-/

namespace A260577.P1633472642362069339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286529 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334954 (n + 1) - 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A260577.P1633472642362069339

namespace A260577

/-- `lt[A286529(n+1), A334954(n+1)-1]+1` -/
def P1633472642362069339.Spec : Prop :=
  ∀ n, (P1633472642362069339.a n : ℤ) = A260577 (n + 1)

end A260577

/-! ## A260577.P8221833800038063480

`lt[A032741(A032741(n)+1+n), A032741(n)]`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A260577

/-- `lt[A032741(A032741(n)+1+n), A032741(n)]` -/
def P8221833800038063480.Spec : Prop :=
  ∀ n, (P8221833800038063480.a n : ℤ) = A260577 (n + 1)

theorem P8221833800038063480.correct : P8221833800038063480.Spec := by
  intro n
  simp only [A260577, Nat.add_sub_cancel]

end A260577

/-! ## A260577.P8030124120722613939

`lt[A286530(A233583(n+1)), 0]`
-/

namespace A260577.P8030124120722613939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286530 (A233583 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A260577.P8030124120722613939

namespace A260577

/-- `lt[A286530(A233583(n+1)), 0]` -/
def P8030124120722613939.Spec : Prop :=
  ∀ n, (P8030124120722613939.a n : ℤ) = A260577 (n + 1)

end A260577

/-!
# A260578: Coefficients in asymptotic expansion of sequence A259869.

The programs for A260578, there is no canonical definition to state claims against.
-/

/-! ## A260578.P16868584032391192361

`p?[A180446(n)]-A307140(n+5)`
-/

namespace A260578.P16868584032391192361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180446 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - A307140 (n + 5)

end

end A260578.P16868584032391192361

/-! ## A260578.P3678879348505928643

`p?[A307152(2*n+1)]-A307140(n+5)`
-/

namespace A260578.P3678879348505928643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307152 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - A307140 (n + 5)

end

end A260578.P3678879348505928643

/-!
# A260580: Table read by rows: n-th row contains numbers not occurring earlier, that can be written as (p+q)/2 where p is the n-th odd prime, q <= p.

The programs for A260580, there is no canonical definition to state claims against.
-/

/-! ## A260580.P7480595642155057459

`A065306(1+n)+2`
-/

namespace A260580.P7480595642155057459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065306 (1 + n) + 2

end

end A260580.P7480595642155057459

/-! ## A260580.P660743149649902904

`A009056(A065306(1+n))`
-/

namespace A260580.P660743149649902904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009056 (A065306 (1 + n)).toNat

end

end A260580.P660743149649902904

/-!
# A260581: Numbers n for which d(n+d(n)) > d(n), where d(n) is the number of divisors of n.

The programs for A260581, the canonical program `A260581.P3815776299478991622` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A260581 has offset 1).

The definition of A260581 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A260581.P5355171711021618980

`lt[0, A286530(1+n)]+1`
-/

namespace A260581.P5355171711021618980
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286530 (1 + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A260581.P5355171711021618980

namespace A260581

/-- `lt[0, A286530(1+n)]+1` -/
def P5355171711021618980.Spec : Prop :=
  ∀ n, (P5355171711021618980.a n : ℤ) = A260581 (n + 1)

end A260581

/-! ## A260581.P6954366947256728651

`lt[A000005(n+1), A286529(n+1)]+1`
-/

namespace A260581.P6954366947256728651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286529 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A260581.P6954366947256728651

namespace A260581

/-- `lt[A000005(n+1), A286529(n+1)]+1` -/
def P6954366947256728651.Spec : Prop :=
  ∀ n, (P6954366947256728651.a n : ℤ) = A260581 (n + 1)

end A260581

/-! ## A260581.P11382770041569128399

`lt[A334954(n+1)-1, A286529(n+1)]+1`
-/

namespace A260581.P11382770041569128399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334954 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286529 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A260581.P11382770041569128399

namespace A260581

/-- `lt[A334954(n+1)-1, A286529(n+1)]+1` -/
def P11382770041569128399.Spec : Prop :=
  ∀ n, (P11382770041569128399.a n : ℤ) = A260581 (n + 1)

end A260581

/-! ## A260581.P3237789129348903210

`lt[∑{d}[n+1, A020639(2*#)]/2, A286529(n+1)]+1`
-/

namespace A260581.P3237789129348903210
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f2 n), A020639 (2 * d) : ℤ) : ℚ) / 2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286529 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℚ)) n + 1

end

end A260581.P3237789129348903210

namespace A260581

/-- `lt[∑{d}[n+1, A020639(2*#)]/2, A286529(n+1)]+1` -/
def P3237789129348903210.Spec : Prop :=
  ∀ n, (P3237789129348903210.a n : ℤ) = A260581 (n + 1)

end A260581

/-! ## A260581.P4253307473722305907

`lt[∑{d}[n+1, 1-A000010(#)]+n+1, A286529(n+1)]+1`
-/

namespace A260581.P4253307473722305907
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), (1 - A000010 d) + (n + 1 : ℤ)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286529 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n + 1

end

end A260581.P4253307473722305907

namespace A260581

/-- `lt[∑{d}[n+1, 1-A000010(#)]+n+1, A286529(n+1)]+1` -/
def P4253307473722305907.Spec : Prop :=
  ∀ n, (P4253307473722305907.a n : ℤ) = A260581 (n + 1)

end A260581

/-! ## A260581.P6275827777534499619

`lt[A000007(n), A286530(A028310(n))]`
-/

namespace A260581.P6275827777534499619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286530 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A260581.P6275827777534499619

namespace A260581

/-- `lt[A000007(n), A286530(A028310(n))]` -/
def P6275827777534499619.Spec : Prop :=
  ∀ n, (P6275827777534499619.a n : ℤ) = A260581 (n + 1)

end A260581

/-! ## A260581.P3815776299478991622

`lt[A032741(n), A032741(A032741(n)+1+n)]`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A260581

/-- `lt[A032741(n), A032741(A032741(n)+1+n)]` -/
def P3815776299478991622.Spec : Prop :=
  ∀ n, (P3815776299478991622.a n : ℤ) = A260581 (n + 1)

theorem P3815776299478991622.correct : P3815776299478991622.Spec := by
  intro n
  simp only [A260581, Nat.add_sub_cancel]

end A260581

/-!
# A260582: Number of ways to place 2n rooks on n X n board, 2 rooks in each row and each column, multiple rooks in a cell allowed, and exactly 4 rooks below the main diagonal.

The programs for A260582, there is no canonical definition to state claims against.
-/

/-! ## A260582.P17893081746714714542

`A269742((n+2)²+5)`
-/

namespace A260582.P17893081746714714542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269742 ((n + 2) ^ 2 + 5)

end

end A260582.P17893081746714714542

/-!
# A260583: Number of ways to place 3n rooks on an n X n board, 3 rooks in each row and each column, multiple rooks in an allowed cell, and exactly 4 rooks below the main diagonal.

The programs for A260583, there is no canonical definition to state claims against.
-/

/-! ## A260583.P9551637403859730687

`A269743(∑[3*(n+2)+1]+1)`
-/

namespace A260583.P9551637403859730687
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * (n + 2) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269743 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A260583.P9551637403859730687

/-! ## A260583.P17623717456647923689

`record[A269743(A140229(n+1)+7)]`
-/

namespace A260583.P17623717456647923689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269743 (A140229 (n + 1) + 7).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A260583.P17623717456647923689

/-!
# A260585: Number of ways to place 2n rooks on an n X n board, with 2 rooks in each row and each column, multiple rooks in a cell allowed, and exactly 2 rooks below the main diagonal.

The programs for A260585, there is no canonical definition to state claims against.
-/

/-! ## A260585.P4611846191652051721

`A269742((n+1)²+3)`
-/

namespace A260585.P4611846191652051721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269742 ((n + 1) ^ 2 + 3)

end

end A260585.P4611846191652051721

/-! ## A260585.P10151411376084751819

`A269743(A140229(n+2))`
-/

namespace A260585.P10151411376084751819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269743 (A140229 (n + 2)).toNat

end

end A260585.P10151411376084751819

/-!
# A260586: Concatenated sums of pairs of adjacent digits in the concatenation of the numbers from 1 to n.

The programs for A260586, there is no canonical definition to state claims against.
-/

/-! ## A260586.P1189845607534910099

`A048794(floor(4^n/3)-ceil(sin(n)²))`
-/

namespace A260586.P1189845607534910099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048794 (⌊(4 ^ n : ℚ) / 3⌋ - ⌈Real.sin (n : ℝ) ^ 2⌉).toNat

end

end A260586.P1189845607534910099

/-!
# A260587: Number of distinct prime factors of A173426(n) = concatenation of (1, 2, ..., n, n-1, ..., 1).

The programs for A260587, there is no canonical definition to state claims against.
-/

/-! ## A260587.P4667757724594632389

`A001222(A110759(n+1))-char[17]`
-/

namespace A260587.P4667757724594632389
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  17

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A110759 (n + 1)).toNat - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A260587.P4667757724594632389

/-! ## A260587.P229686111271120271

`A001222(A110759(n+1))`
-/

namespace A260587.P229686111271120271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A110759 (n + 1)).toNat

end

end A260587.P229686111271120271

/-! ## A260587.P1245233103893908332

`A109129(A110759(n+1)%A107633(n+1))`
-/

namespace A260587.P1245233103893908332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109129 (Int.tmod (A110759 (n + 1)) (A107633 (n + 1))).toNat

end

end A260587.P1245233103893908332

/-!
# A260589: Irregular table read by rows: n-th row lists the prime factors of A173426(n), with repetition.

The programs for A260589, there is no canonical definition to state claims against.
-/

/-! ## A260589.P6365981298832358687

`A102380(floor(n/2)+2)`
-/

namespace A260589.P6365981298832358687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102380 (⌊(n : ℚ) / 2⌋ + 2).toNat

end

end A260589.P6365981298832358687

/-! ## A260589.P13885771175383573973

`p?[A102380(A077168(floor(n/2)))]`
-/

namespace A260589.P13885771175383573973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102380 (A077168 ⌊(n : ℚ) / 2⌋.toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A260589.P13885771175383573973

/-!
# A260590: Dropping time of 2*n+1 under the modified Collatz map (A014682).

The programs for A260590, there is no canonical definition to state claims against.
-/

/-! ## A260590.P7506455517264416120

`A126241(2*(n+1)+1)`
-/

namespace A260590.P7506455517264416120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126241 (2 * (n + 1) + 1)

end

end A260590.P7506455517264416120

/-! ## A260590.P5402455262014006721

`A020914(A122458(1+n))`
-/

namespace A260590.P5402455262014006721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020914 (A122458 (1 + n)).toNat

end

end A260590.P5402455262014006721

/-! ## A260590.P9295246998557638377

`A204399(A122458(n+1))`
-/

namespace A260590.P9295246998557638377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204399 (A122458 (n + 1)).toNat

end

end A260590.P9295246998557638377

/-! ## A260590.P5311530371457983303

`A085238(A060445(1+n)+1)`
-/

namespace A260590.P5311530371457983303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085238 (A060445 (1 + n) + 1).toNat

end

end A260590.P5311530371457983303

/-! ## A260590.P10325071474592424319

`A060445(n+1)-A122458(n+1)`
-/

namespace A260590.P10325071474592424319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060445 (n + 1) - A122458 (n + 1)

end

end A260590.P10325071474592424319

/-! ## A260590.P13664338005157917612

`A057363(A074473(2*n+3))`
-/

namespace A260590.P13664338005157917612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057363 (A074473 (2 * n + 3)).toNat

end

end A260590.P13664338005157917612

/-!
# A260591: a(n) is the number of odd numbers k < 2^n such that A260590(k) = n.

The programs for A260591, there is no canonical definition to state claims against.
-/

/-! ## A260591.P4605958893085012315

`A022924(n)*A100982(A020915(n))`
-/

namespace A260591.P4605958893085012315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022924 n * A100982 (A020915 n).toNat

end

end A260591.P4605958893085012315

/-!
# A260592: a(n) = binary odd/even encoding of the iterates in the modified Syracuse algorithm (msa) starting with 2n+1 and continuing up to (but not including) the first iterate less than 2n+1.

The programs for A260592, there is no canonical definition to state claims against.
-/

/-! ## A260592.P6174334331417946006

`A398646(A122458(ceil((n+1)^6/4)))`
-/

namespace A260592.P6174334331417946006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398646 (A122458 ⌈((n + 1) ^ 6 : ℚ) / 4⌉.toNat).toNat

end

end A260592.P6174334331417946006

/-!
# A260593: The values of the modified Syracuse algorithm, msa, in the order in which they appear in A260590.

The programs for A260593, there is no canonical definition to state claims against.
-/

/-! ## A260593.P3518094716877539430

`A260590(A260594(1+n))`
-/

namespace A260593.P3518094716877539430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260590 (A260594 (1 + n)).toNat

end

end A260593.P3518094716877539430

/-! ## A260593.P16643391248761842063

`A126241(A144396(A260594(n+1)))`
-/

namespace A260593.P16643391248761842063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126241 (A144396 (A260594 (n + 1)).toNat).toNat

end

end A260593.P16643391248761842063

/-!
# A260594: a(n) is the least k such that A260590(k) = A260593(n).

The programs for A260594, there is no canonical definition to state claims against.
-/

/-! ## A260594.P4838901113500151511

`eq[A011682(n), A028632(n)]`
-/

namespace A260594.P4838901113500151511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011682 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028632 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A260594.P4838901113500151511

/-! ## A260594.P7753391694273353541

`record[gcd(A304328(n+1), A323242(n+1))]`
-/

namespace A260594.P7753391694273353541
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A304328 (n + 1)) (A323242 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A260594.P7753391694273353541

/-! ## A260594.P13480748303697319598

`eq[A000001(n), A121373(A361950(n))]`
-/

namespace A260594.P13480748303697319598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000001 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121373 (A361950 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A260594.P13480748303697319598

/-!
# A260595: The binary expansion of log(3)/log(2).

The programs for A260595, there is no canonical definition to state claims against.
-/

/-! ## A260595.P12085593662636968787

`C(char[A004716(n+1)]*n, n)`
-/

namespace A260595.P12085593662636968787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004716 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ((if ∃ j, f1 j = (n : ℤ) then 1 else 0) * n) n

end

end A260595.P12085593662636968787

/-! ## A260595.P2663781008308359361

`A000007(n)+char[A004716(n+1)]`
-/

namespace A260595.P2663781008308359361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004716 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A260595.P2663781008308359361

/-! ## A260595.P11883155271216487220

`char[A004716(n+1)]+A000038(n)/2`
-/

namespace A260595.P11883155271216487220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004716 (n + 1)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℚ) + (A000038 n : ℚ) / 2

end

end A260595.P11883155271216487220

/-! ## A260595.P16149044638851485615

`(A001316(n)+char[A004716(n+1)])%2`
-/

namespace A260595.P16149044638851485615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004716 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001316 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)) 2

end

end A260595.P16149044638851485615

/-! ## A260595.P4076196233515949723

`A002264(a(n-1))+char[A004716(n+1)]` with `a(0)=1`
-/

namespace A260595.P4076196233515949723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004716 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A002264 (a (n - 1)).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A260595.P4076196233515949723

/-! ## A260595.P2580768785018763510

`A000035(A005875(n)+char[A004716(n+1)])`
-/

namespace A260595.P2580768785018763510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004716 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A005875 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)).toNat

end

end A260595.P2580768785018763510

/-! ## A260595.P6615789862612342882

`char[A004716(A032742(n+1))%A000124(n)]`
-/

namespace A260595.P6615789862612342882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004716 (A032742 (n + 1)).toNat) (A000124 n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A260595.P6615789862612342882

/-! ## A260595.P12478908383519288340

`A000086(A131883(n+1))+char[A004716(n+1)]`
-/

namespace A260595.P12478908383519288340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004716 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000086 (A131883 (n + 1)).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A260595.P12478908383519288340

/-! ## A260595.P13619959962544917158

`floor(log2(3)*A011782(n+1))%2`
-/

namespace A260595.P13619959962544917158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌊Real.logb 2 (3 : ℝ) * (A011782 (n + 1) : ℝ)⌋ 2

end

end A260595.P13619959962544917158

/-!
# A260596: Array A read by upward antidiagonals in which the entry A(n,k) in row n and column k is defined by A(n,k) = (8 + (3*floor((4*n + 1)/3) - 2)*4^k)/12, n,k >= 1.

The programs for A260596, the canonical program `A260596.P13709540531541385695` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A260596 has offset 1).

The definition of A260596 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A260596.P13709540531541385695

`(8+(3*floor((4*(row(n)-col(n)+1)+1)/3)-2)*4^(col(n)+1))/12`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A260596

/-- `(8+(3*floor((4*(row(n)-col(n)+1)+1)/3)-2)*4^(col(n)+1))/12` -/
def P13709540531541385695.Spec : Prop :=
  ∀ n, P13709540531541385695.a n = (A260596 (n + 1) : ℚ)

end A260596

/-! ## A260596.P3142542725973363247

`A191668(∑[char[∑[n]]]²-n)`
-/

namespace A260596.P3142542725973363247
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191668 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n)

end

end A260596.P3142542725973363247

namespace A260596

/-- `A191668(∑[char[∑[n]]]²-n)` -/
def P3142542725973363247.Spec : Prop :=
  ∀ n, P3142542725973363247.a n = A260596 (n + 1)

end A260596

/-! ## A260596.P18221767247604109925

`(8+(3*A042965(row(n)-col(n)+2)-2)*A000302(col(n)+1))/12`
-/

namespace A260596.P18221767247604109925
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (8 + (3 * A042965 ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) + 2).toNat - 2) * A000302 (SequenceMachineLib.triCol n + 1) : ℚ) / 12

end

end A260596.P18221767247604109925

namespace A260596

/-- `(8+(3*A042965(row(n)-col(n)+2)-2)*A000302(col(n)+1))/12` -/
def P18221767247604109925.Spec : Prop :=
  ∀ n, P18221767247604109925.a n = (A260596 (n + 1) : ℚ)

end A260596

/-!
# A260597: Primes as they occur for the first time as factors of terms of A173426 = concatenation(1,2,...,n,n-1,...,1).

The programs for A260597, there is no canonical definition to state claims against.
-/

/-! ## A260597.P7350119264789178357

`A204845(n+2)`
-/

namespace A260597.P7350119264789178357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204845 (n + 2)

end

end A260597.P7350119264789178357

/-! ## A260597.P14147259823287759679

`p?[A204845(A077168(n))]`
-/

namespace A260597.P14147259823287759679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204845 (A077168 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A260597.P14147259823287759679

/-!
# A260599: Expansion of psi(x^4) / chi(-x)^2 in powers of x where psi(), chi() are Ramanujan theta functions.

The programs for A260599, there is no canonical definition to state claims against.
-/

/-! ## A260599.P17648506436687255090

`A085140(Δ[n²])/2`
-/

namespace A260599.P17648506436687255090
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A085140 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / 2

end

end A260599.P17648506436687255090

/-! ## A260599.P2876103667920178565

`record[A260574(or(2, n))/2]`
-/

namespace A260599.P2876103667920178565
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A260574 (Nat.lor 2 n) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A260599.P2876103667920178565

/-! ## A260599.P208254699141881772

`A260574(4*n+2)/2`
-/

namespace A260599.P208254699141881772
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A260574 (4 * n + 2) : ℚ) / 2

end

end A260599.P208254699141881772

/-! ## A260599.P1562219162644004040

`A067357(4*n+2)/2`
-/

namespace A260599.P1562219162644004040
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A067357 (4 * n + 2) : ℚ) / 2

end

end A260599.P1562219162644004040

/-! ## A260599.P12801508377803045752

`A053254(4*n+2)/2`
-/

namespace A260599.P12801508377803045752
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053254 (4 * n + 2) : ℚ) / 2

end

end A260599.P12801508377803045752

