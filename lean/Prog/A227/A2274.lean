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
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C036
import Seq.B000.C038
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
import Seq.B001.C011
import Seq.B001.C013
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
import Seq.B003.C003
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B007.C000
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
# A227402: Number of unimodal functions f:[n]->[n^2].

The programs for A227402, there is no canonical definition to state claims against.
-/

/-! ## A227402.P9545993196010429376

`A226031(∑[4*n])`
-/

namespace A227402.P9545993196010429376
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226031 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A227402.P9545993196010429376

/-! ## A227402.P563183764193420422

`or(A000007(n), A226031(A106232(n+1)))`
-/

namespace A227402.P563183764193420422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A226031 (A106232 (n + 1)).toNat)

end

end A227402.P563183764193420422

/-! ## A227402.P14748880739865842112

`A226031(A106232(n+1))+A000007(n+1)`
-/

namespace A227402.P14748880739865842112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226031 (A106232 (n + 1)).toNat + A000007 (n + 1)

end

end A227402.P14748880739865842112

/-! ## A227402.P12848446075527656936

`A007318((-1)^n+1)*A226031(A106232(n+1))`
-/

namespace A227402.P12848446075527656936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 ((-1) ^ n + 1).toNat * A226031 (A106232 (n + 1)).toNat

end

end A227402.P12848446075527656936

/-! ## A227402.P14778128079473440063

`A001222(A158709(n+1))*A226031(A106232(n+1))`
-/

namespace A227402.P14778128079473440063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A158709 (n + 1)).toNat * A226031 (A106232 (n + 1)).toNat

end

end A227402.P14778128079473440063

/-!
# A227404: Total number of inversions in all permutations of order n consisting of a single cycle.

The programs for A227404, there is no canonical definition to state claims against.
-/

/-! ## A227404.P12996959434139010316

`floor((n!+4*n*a(n-1))/4)` with `a(0)=0, a(1)=0, a(2)=1`
-/

namespace A227404.P12996959434139010316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 1] fun n a =>
  ⌊((Nat.factorial n : ℤ) + (4 * n : ℤ) * a (n - 1) : ℚ) / 4⌋

end

end A227404.P12996959434139010316

/-! ## A227404.P17643322424178998121

`A008615(A066114(n)-n!)`
-/

namespace A227404.P17643322424178998121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (A066114 n - (Nat.factorial n : ℤ)).toNat

end

end A227404.P17643322424178998121

/-! ## A227404.P3212363993680048123

`A057367(A331616(n)+A239002(n))`
-/

namespace A227404.P3212363993680048123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057367 (A331616 n + A239002 n).toNat

end

end A227404.P3212363993680048123

/-!
# A227406: Number of unimodal functions f:[n]->[2^n].

The programs for A227406, there is no canonical definition to state claims against.
-/

/-! ## A227406.P5206715892603578974

`A071922(eq[1, A073345(n)])`
-/

namespace A227406.P5206715892603578974
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073345 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071922 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A227406.P5206715892603578974

/-! ## A227406.P10446017574468228700

`A071921(eq[A025581(n), A059268(n)])`
-/

namespace A227406.P10446017574468228700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071921 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A227406.P10446017574468228700

/-! ## A227406.P10700073391076151132

`A071922(eq[A004736(n+1), A059268(n)])`
-/

namespace A227406.P10700073391076151132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071922 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A227406.P10700073391076151132

/-!
# A227408: Set of all n, where n = r(s(n)) = s(r(n)), given that r(n) = n+bitcount(n), s(n) = n-bitcount(n), and bitcount(n) is the count of binary 1's in n.

The programs for A227408, the canonical program `A227408.P7610701793903841046` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A227408 has offset 1).

The definition of A227408 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2623 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A227408.P7610701793903841046

`∩[A352776(n+1), A352785(n+1)]`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A227408

/-- `∩[A352776(n+1), A352785(n+1)]` -/
def P7610701793903841046.Spec : Prop :=
  ∀ n, (P7610701793903841046.a n : ℤ) = A227408 (n + 1)

theorem P7610701793903841046.correct : P7610701793903841046.Spec := by
  intro n
  simp only [A227408, Nat.add_sub_cancel]

end A227408

/-! ## A227408.P8105168059832716819

`∩[eq[0, A229745(n)], A352785(n+1)]`
-/

namespace A227408.P8105168059832716819
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229745 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352785 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f4 j = (x : ℤ)) n

end

end A227408.P8105168059832716819

namespace A227408

/-- `∩[eq[0, A229745(n)], A352785(n+1)]` -/
def P8105168059832716819.Spec : Prop :=
  ∀ n, (P8105168059832716819.a n : ℤ) = A227408 (n + 1)

end A227408

/-!
# A227409: 

The programs for A227409, there is no canonical definition to state claims against.
-/

/-! ## A227409.P5460513887226815389

`p?[A227407(A093178(n))+n]`
-/

namespace A227409.P5460513887226815389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227407 (A093178 n).toNat + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A227409.P5460513887226815389

/-! ## A227409.P8203043709395707810

`p?[or((20/2)²²+(20/2)²+n, A019429(7*n+1))]`
-/

namespace A227409.P8203043709395707810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (SequenceMachineLib.roundAway ((((20 : ℚ) / 2) ^ 2) ^ 2 + (((20 : ℚ) / 2) ^ 2 + (n : ℚ)))) (A019429 (7 * n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A227409.P8203043709395707810

/-!
# A227411: Palindromic prime numbers representing a date in "condensed European notation" DDMMYY.

The programs for A227411, there is no canonical definition to state claims against.
-/

/-! ## A227411.P18086173455020269220

`p?[A056525(A252480(n+1)+1)]`
-/

namespace A227411.P18086173455020269220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056525 (A252480 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A227411.P18086173455020269220

/-! ## A227411.P1690180049535455398

`A273049(A131835(n+4)+3)`
-/

namespace A227411.P1690180049535455398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273049 (A131835 (n + 4) + 3).toNat

end

end A227411.P1690180049535455398

/-! ## A227411.P11064358291885419004

`A273049(A004880(n+1)+15)`
-/

namespace A227411.P11064358291885419004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273049 (A004880 (n + 1) + 15).toNat

end

end A227411.P11064358291885419004

/-! ## A227411.P1028049171509578002

`A273049(A032551(n+1)+15)`
-/

namespace A227411.P1028049171509578002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273049 (A032551 (n + 1) + 15).toNat

end

end A227411.P1028049171509578002

/-!
# A227412: Primes of the form k^3 + (k+1)^3 + 2.

The programs for A227412, there is no canonical definition to state claims against.
-/

/-! ## A227412.P1242202058775458024

`p?[n*ceil((n/2)²)-floor(atan(2-n²))]`
-/

namespace A227412.P1242202058775458024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ⌈((n : ℚ) / 2) ^ 2⌉ - ⌊Real.arctan (2 - (n ^ 2 : ℤ) : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A227412.P1242202058775458024

/-! ## A227412.P13316205083913277109

`p?[A005898(n+1)+2]`
-/

namespace A227412.P13316205083913277109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005898 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A227412.P13316205083913277109

/-! ## A227412.P8576250633039987205

`p?[A213389(n+2)+2]`
-/

namespace A227412.P8576250633039987205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213389 (n + 2) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A227412.P8576250633039987205

/-! ## A227412.P17356857164704988492

`p?[A246695(2*(n+1))+2]`
-/

namespace A227412.P17356857164704988492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246695 (2 * (n + 1)) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A227412.P17356857164704988492

/-! ## A227412.P7885503517474290823

`p?[A005996(n+1)+n+4]`
-/

namespace A227412.P7885503517474290823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005996 (n + 1) + (n + 4 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A227412.P7885503517474290823

/-!
# A227413: a(1)=1, a(2n)=nthprime(a(n)), a(2n+1)=nthcomposite(a(n)), where nthprime = A000040, nthcomposite = A002808.

The programs for A227413, there is no canonical definition to state claims against.
-/

/-! ## A227413.P7432467993454783363

`A246378(A054429(n+1))`
-/

namespace A227413.P7432467993454783363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246378 (A054429 (n + 1)).toNat

end

end A227413.P7432467993454783363

/-! ## A227413.P3762647511667073693

`A246378(∑[A099892(n+1)]-n)`
-/

namespace A227413.P3762647511667073693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099892 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246378 (∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)).toNat

end

end A227413.P3762647511667073693

/-! ## A227413.P15961771772199316486

`A246378(A004756(n+1)-(2*n+3))`
-/

namespace A227413.P15961771772199316486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246378 (A004756 (n + 1) - (2 * n + 3 : ℤ)).toNat

end

end A227413.P15961771772199316486

/-! ## A227413.P16939776645546463399

`A246378(3*A000079(floor(log2(n+1)))-2-n)`
-/

namespace A227413.P16939776645546463399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246378 (3 * A000079 (Nat.log 2 (n + 1)) - 2 - (n : ℤ)).toNat

end

end A227413.P16939776645546463399

/-! ## A227413.P374542569792089906

`A246378(A243343(A243346(n+1)))`
-/

namespace A227413.P374542569792089906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246378 (A243343 (A243346 (n + 1)).toNat).toNat

end

end A227413.P374542569792089906

/-! ## A227413.P11797149420851022812

`A246378(A053644(n+1)+A035327(n+1))`
-/

namespace A227413.P11797149420851022812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246378 (A053644 (n + 1) + A035327 (n + 1)).toNat

end

end A227413.P11797149420851022812

/-! ## A227413.P1554450871624364596

`A246378(A004756(n+1)%A144396(n+1))`
-/

namespace A227413.P1554450871624364596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246378 (Int.tmod (A004756 (n + 1)) (A144396 (n + 1))).toNat

end

end A227413.P1554450871624364596

/-! ## A227413.P4499287162286250451

`A349573(A246364(n+1))+A246364(n+1)`
-/

namespace A227413.P4499287162286250451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349573 (A246364 (n + 1)).toNat + A246364 (n + 1)

end

end A227413.P4499287162286250451

/-! ## A227413.P10936962811173923806

`A048673(A246364(n+1))`
-/

namespace A227413.P10936962811173923806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048673 (A246364 (n + 1)).toNat

end

end A227413.P10936962811173923806

/-! ## A227413.P4962032993849540959

`A003602(A003961(A246364(A003602(2*n+1))))`
-/

namespace A227413.P4962032993849540959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (A003961 (A246364 (A003602 (2 * n + 1)).toNat).toNat).toNat

end

end A227413.P4962032993849540959

/-! ## A227413.P5242486698674834012

`A246378(A135141(A246378(n+1)))`
-/

namespace A227413.P5242486698674834012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246378 (A135141 (A246378 (n + 1)).toNat).toNat

end

end A227413.P5242486698674834012

/-! ## A227413.P4336643779639574724

`A246380(A246375(A243071(A005940(n+2))))`
-/

namespace A227413.P4336643779639574724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246380 (A246375 (A243071 (A005940 (n + 2)).toNat).toNat).toNat

end

end A227413.P4336643779639574724

/-!
# A227414: Number of ordered n-tuples of subsets of {1,2,...,n} which satisfy the conditions in Hall's Marriage Problem.

The programs for A227414, there is no canonical definition to state claims against.
-/

/-! ## A227414.P6770703671556272010

`A002416(n)-A088672(n)`
-/

namespace A227414.P6770703671556272010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002416 n - A088672 n

end

end A227414.P6770703671556272010

/-! ## A227414.P15015052760597624677

`A000079(n²)-A088672(n)`
-/

namespace A227414.P15015052760597624677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (n ^ 2) - A088672 n

end

end A227414.P15015052760597624677

/-!
# A227415: a(n) = (n+1)!! mod n!!.

The programs for A227415, the canonical program `A227415.P14879808172907926100` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A227415 has offset 0).

The definition of A227415 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A227415.P14879808172907926100

`A006882(n+1)%A006882(n)`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A227415

/-- `A006882(n+1)%A006882(n)` -/
def P14879808172907926100.Spec : Prop :=
  ∀ n, P14879808172907926100.a n = A227415 n

theorem P14879808172907926100.correct : P14879808172907926100.Spec := by
  intro n
  simp only [A227415]

end A227415

/-! ## A227415.P15776540425176152285

`Δ[A006882(n)]%A006882(n)`
-/

namespace A227415.P15776540425176152285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006882 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A006882 n)

end

end A227415.P15776540425176152285

namespace A227415

/-- `Δ[A006882(n)]%A006882(n)` -/
def P15776540425176152285.Spec : Prop :=
  ∀ n, P15776540425176152285.a n = A227415 n

end A227415

/-! ## A227415.P5089951530474174971

`Δ[A128882(n)]%(A128882(n)+1)`
-/

namespace A227415.P5089951530474174971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128882 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A128882 n + 1)

end

end A227415.P5089951530474174971

namespace A227415

/-- `Δ[A128882(n)]%(A128882(n)+1)` -/
def P5089951530474174971.Spec : Prop :=
  ∀ n, P5089951530474174971.a n = A227415 n

end A227415

/-! ## A227415.P1510350002798950433

`record[A006882(A022290(n))]%A006882(n)`
-/

namespace A227415.P1510350002798950433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006882 (A022290 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A006882 n)

end

end A227415.P1510350002798950433

namespace A227415

/-- `record[A006882(A022290(n))]%A006882(n)` -/
def P1510350002798950433.Spec : Prop :=
  ∀ n, P1510350002798950433.a n = A227415 n

end A227415

/-! ## A227415.P5848715934706300150

`A076051(n+1)%∏[n/a(n-1)]` with `a(0)=1`
-/

namespace A227415.P5848715934706300150
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  (n : ℚ) / f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A076051 (n + 1)) (SequenceMachineLib.roundAway (∏ j ∈ Finset.range (n + 1), f1 j))

end

end A227415.P5848715934706300150

namespace A227415

/-- `A076051(n+1)%∏[n/a(n-1)]` -/
def P5848715934706300150.Spec : Prop :=
  ∀ n, P5848715934706300150.a n = A227415 n

end A227415

/-! ## A227415.P8835384876755561258

`A076051(n+1)%(A128882(n)+1)`
-/

namespace A227415.P8835384876755561258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A076051 (n + 1)) (A128882 n + 1)

end

end A227415.P8835384876755561258

namespace A227415

/-- `A076051(n+1)%(A128882(n)+1)` -/
def P8835384876755561258.Spec : Prop :=
  ∀ n, P8835384876755561258.a n = A227415 n

end A227415

/-! ## A227415.P12786435704544332522

`A060696(n+2)%(A087299(n)/A016116(n))`
-/

namespace A227415.P12786435704544332522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A060696 (n + 2)) (SequenceMachineLib.roundAway ((A087299 n : ℚ) / (A016116 n : ℚ)))

end

end A227415.P12786435704544332522

namespace A227415

/-- `A060696(n+2)%(A087299(n)/A016116(n))` -/
def P12786435704544332522.Spec : Prop :=
  ∀ n, P12786435704544332522.a n = A227415 n

end A227415

/-! ## A227415.P11701658512973775857

`A076051(n+1)%A248809(A161680(n))`
-/

namespace A227415.P11701658512973775857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A076051 (n + 1)) (A248809 (A161680 n).toNat)

end

end A227415.P11701658512973775857

namespace A227415

/-- `A076051(n+1)%A248809(A161680(n))` -/
def P11701658512973775857.Spec : Prop :=
  ∀ n, P11701658512973775857.a n = A227415 n

end A227415

/-! ## A227415.P955989937348194644

`A248809(∑[n])%A006882(n)`
-/

namespace A227415.P955989937348194644
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A248809 (∑ j ∈ Finset.range (n + 1), f1 j)) (A006882 n)

end

end A227415.P955989937348194644

namespace A227415

/-- `A248809(∑[n])%A006882(n)` -/
def P955989937348194644.Spec : Prop :=
  ∀ n, P955989937348194644.a n = A227415 n

end A227415

/-! ## A227415.P3707136804670171439

`A230698(∑[n+1])%A230698(∑[n])`
-/

namespace A227415.P3707136804670171439
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A230698 (∑ j ∈ Finset.range (n + 1), f1 j)) (A230698 (∑ j ∈ Finset.range (n + 1), f2 j))

end

end A227415.P3707136804670171439

namespace A227415

/-- `A230698(∑[n+1])%A230698(∑[n])` -/
def P3707136804670171439.Spec : Prop :=
  ∀ n, P3707136804670171439.a n = A227415 n

end A227415

/-!
# A227417: Integer triples a(3n-2) = n, a(3n-1) = n+4, and a(3n) = n+7.

The programs for A227417, the canonical program `A227417.P10633238537183176901` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A227417 has offset 1).

The definition of A227417 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A227417.P10633238537183176901

`a(n-3)+1` with `a(0)=1, a(1)=5, a(2)=8`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A227417

/-- `a(n-3)+1` -/
def P10633238537183176901.Spec : Prop :=
  ∀ n, (P10633238537183176901.a n : ℤ) = A227417 (n + 1)

theorem P10633238537183176901.correct : P10633238537183176901.Spec := by
  intro n
  simp only [A227417, Nat.add_sub_cancel]

end A227417

/-! ## A227417.P1512748133798019469

`∑[floor(a(n-3))]` with `a(0)=1, a(1)=4, a(2)=3, a(3)=-6`

`floor` is left out, it is the identity on integers.
-/

namespace A227417.P1512748133798019469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 4, 3, -6] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A227417.P1512748133798019469

namespace A227417

/-- `∑[floor(a(n-3))]` -/
def P1512748133798019469.Spec : Prop :=
  ∀ n, P1512748133798019469.a n = A227417 (n + 1)

end A227417

/-! ## A227417.P17195785378686041654

`1-floor(-a(n-3))` with `a(0)=1, a(1)=5, a(2)=8`

`floor` is left out, it is the identity on integers.
-/

namespace A227417.P17195785378686041654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 5, 8] fun n a =>
  1 - (-a (n - 3))

end

end A227417.P17195785378686041654

namespace A227417

/-- `1-floor(-a(n-3))` -/
def P17195785378686041654.Spec : Prop :=
  ∀ n, P17195785378686041654.a n = A227417 (n + 1)

end A227417

/-! ## A227417.P11818072975940969466

`1-round(-a(n-3))` with `a(0)=1, a(1)=5, a(2)=8`

`round` is left out, it is the identity on integers.
-/

namespace A227417.P11818072975940969466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 5, 8] fun n a =>
  1 - (-a (n - 3))

end

end A227417.P11818072975940969466

namespace A227417

/-- `1-round(-a(n-3))` -/
def P11818072975940969466.Spec : Prop :=
  ∀ n, P11818072975940969466.a n = A227417 (n + 1)

end A227417

/-! ## A227417.P4017453118552772203

`ceil(dr(3*n+1)+n/3)`
-/

namespace A227417.P4017453118552772203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(SequenceMachineLib.digitalRoot (3 * n + 1 : ℤ) : ℚ) + (n : ℚ) / 3⌉

end

end A227417.P4017453118552772203

namespace A227417

/-- `ceil(dr(3*n+1)+n/3)` -/
def P4017453118552772203.Spec : Prop :=
  ∀ n, P4017453118552772203.a n = A227417 (n + 1)

end A227417

/-! ## A227417.P17993167674922060837

`4/2-(1-a(n-3))` with `a(0)=1, a(1)=5, a(2)=8`
-/

namespace A227417.P17993167674922060837
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 5, 8] fun n a =>
  (4 : ℚ) / 2 - (1 - a (n - 3))

end

end A227417.P17993167674922060837

namespace A227417

/-- `4/2-(1-a(n-3))` -/
def P17993167674922060837.Spec : Prop :=
  ∀ n, P17993167674922060837.a n = (A227417 (n + 1) : ℚ)

end A227417

/-! ## A227417.P4271229038688823604

`∑[1-a(n-1)-a(n-2)]` with `a(0)=1, a(1)=4, a(2)=3`
-/

namespace A227417.P4271229038688823604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 4, 3] fun n f1 =>
  1 - f1 (n - 1) - f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A227417.P4271229038688823604

namespace A227417

/-- `∑[1-a(n-1)-a(n-2)]` -/
def P4271229038688823604.Spec : Prop :=
  ∀ n, P4271229038688823604.a n = A227417 (n + 1)

end A227417

/-! ## A227417.P10377769628592942056

`A070403(2*n)+A002264(n+2)`
-/

namespace A227417.P10377769628592942056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070403 (2 * n) + A002264 (n + 2)

end

end A227417.P10377769628592942056

namespace A227417

/-- `A070403(2*n)+A002264(n+2)` -/
def P10377769628592942056.Spec : Prop :=
  ∀ n, P10377769628592942056.a n = A227417 (n + 1)

end A227417

/-! ## A227417.P17106174975081356923

`A153130(2*n)+A002264(n+2)`
-/

namespace A227417.P17106174975081356923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153130 (2 * n) + A002264 (n + 2)

end

end A227417.P17106174975081356923

namespace A227417

/-- `A153130(2*n)+A002264(n+2)` -/
def P17106174975081356923.Spec : Prop :=
  ∀ n, P17106174975081356923.a n = A227417 (n + 1)

end A227417

/-! ## A227417.P17941264681846921967

`A029898(2*n+1)+A002264(n+2)`
-/

namespace A227417.P17941264681846921967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029898 (2 * n + 1) + A002264 (n + 2)

end

end A227417.P17941264681846921967

namespace A227417

/-- `A029898(2*n+1)+A002264(n+2)` -/
def P17941264681846921967.Spec : Prop :=
  ∀ n, P17941264681846921967.a n = A227417 (n + 1)

end A227417

/-! ## A227417.P12809924493031170172

`A297464(A236348(n+1))-3*n`
-/

namespace A227417.P12809924493031170172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297464 (A236348 (n + 1)).toNat - (3 * n : ℤ)

end

end A227417.P12809924493031170172

namespace A227417

/-- `A297464(A236348(n+1))-3*n` -/
def P12809924493031170172.Spec : Prop :=
  ∀ n, P12809924493031170172.a n = A227417 (n + 1)

end A227417

/-!
# A227419: Least k such that the sum of the semiprime divisors equals n times the sum of the prime divisors, or 0 if no such k exists.

The programs for A227419, there is no canonical definition to state claims against.
-/

/-! ## A227419.P6148768596347809889

`A019565(n+1)*A156271(A120862(n+1))`
-/

namespace A227419.P6148768596347809889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019565 (n + 1) * A156271 (A120862 (n + 1)).toNat

end

end A227419.P6148768596347809889

/-!
# A227420: Primes p such that p - pi(p) is also prime.

The programs for A227420, there is no canonical definition to state claims against.
-/

/-! ## A227420.P16215387296215617093

`A064270(n+1)+A064269(n+1)`
-/

namespace A227420.P16215387296215617093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064270 (n + 1) + A064269 (n + 1)

end

end A227420.P16215387296215617093

/-! ## A227420.P3152812790651146342

`p?[A141437(n+2)+1]`
-/

namespace A227420.P3152812790651146342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141437 (n + 2) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A227420.P3152812790651146342

/-! ## A227420.P1554670370010834471

`p?[A078782(n+1)+1]`
-/

namespace A227420.P1554670370010834471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078782 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A227420.P1554670370010834471

/-! ## A227420.P17132196853828742266

`p?[A022449(n+2)-1]`
-/

namespace A227420.P17132196853828742266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022449 (n + 2) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A227420.P17132196853828742266

/-! ## A227420.P12275055154131366467

`∪[A101324(n+1), A237641(n+1)]`
-/

namespace A227420.P12275055154131366467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101324 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237641 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A227420.P12275055154131366467

/-! ## A227420.P3324993385514408532

`∪[A101324(n+1), A247845(n+1)]`
-/

namespace A227420.P3324993385514408532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101324 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247845 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A227420.P3324993385514408532

/-! ## A227420.P7749529044255352671

`∪[A101324(n+1), A318752(n+1)]`
-/

namespace A227420.P7749529044255352671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101324 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318752 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A227420.P7749529044255352671

/-! ## A227420.P17856647757633272586

`A000040(A064269(n+1))`
-/

namespace A227420.P17856647757633272586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A064269 (n + 1)).toNat

end

end A227420.P17856647757633272586

/-! ## A227420.P9935654091803757248

`A008578(A064269(n+1)+1)`
-/

namespace A227420.P9935654091803757248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A064269 (n + 1) + 1).toNat

end

end A227420.P9935654091803757248

/-! ## A227420.P15355708473159534905

`∩[A000040(n+2), A141437(n+2)+1]`
-/

namespace A227420.P15355708473159534905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141437 (n + 2) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A227420.P15355708473159534905

/-! ## A227420.P6863300472016883816

`record[A006530(A078782(n+1)+1)]`
-/

namespace A227420.P6863300472016883816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A078782 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A227420.P6863300472016883816

/-! ## A227420.P15987095360868285455

`record[A020639(A078782(n+1)+1)]`
-/

namespace A227420.P15987095360868285455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A078782 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A227420.P15987095360868285455

/-! ## A227420.P11308889134561569571

`A002808(A064270(n+1))-1`
-/

namespace A227420.P11308889134561569571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (A064270 (n + 1)).toNat - 1

end

end A227420.P11308889134561569571

/-! ## A227420.P7081086898934405987

`p?[A002808(A006093(n+1))+1]`
-/

namespace A227420.P7081086898934405987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (A006093 (n + 1)).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A227420.P7081086898934405987

/-! ## A227420.P15469598544690922616

`p?[A018252(A000040(n+1))+1]`
-/

namespace A227420.P15469598544690922616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (A000040 (n + 1)).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A227420.P15469598544690922616

/-! ## A227420.P11850183545921711718

`A018252(p?[A014689(n+1)])+1`
-/

namespace A227420.P11850183545921711718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014689 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat + 1

end

end A227420.P11850183545921711718

/-! ## A227420.P17064927253262427478

`p?[A141468(A008864(n+1))+1]`
-/

namespace A227420.P17064927253262427478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (A008864 (n + 1)).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A227420.P17064927253262427478

/-! ## A227420.P1817042546462203629

`p?[A018252(A008578(n+2))+1]`
-/

namespace A227420.P1817042546462203629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (A008578 (n + 2)).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A227420.P1817042546462203629

/-! ## A227420.P18341259700671750386

`p?[A018252(sqrt(A001248(n+1)))+1]`
-/

namespace A227420.P18341259700671750386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (SequenceMachineLib.roundAway (Real.sqrt (A001248 (n + 1) : ℝ))).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A227420.P18341259700671750386

/-! ## A227420.P7561030600588348764

`p?[A018252(p?[A000430(n+1)])+1]`
-/

namespace A227420.P7561030600588348764
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000430 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A227420.P7561030600588348764

/-!
# A227426: Number of partitions into distinct parts without three consecutive parts.

The programs for A227426, there is no canonical definition to state claims against.
-/

/-! ## A227426.P2520985777785163394

`A227344(∑[n]+floor(acot(n)))`
-/

namespace A227426.P2520985777785163394
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227344 (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + ⌊SequenceMachineLib.acot (n : ℝ)⌋).toNat

end

end A227426.P2520985777785163394

/-! ## A227426.P7593560789776605191

`A227344(or(floor(acot(n)), ∑[n]))`
-/

namespace A227426.P7593560789776605191
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227344 (Int.lor ⌊SequenceMachineLib.acot (n : ℝ)⌋ ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A227426.P7593560789776605191

/-! ## A227426.P6602914846397212910

`A227344(xor(floor(acot(n)), ∑[n]))`
-/

namespace A227426.P6602914846397212910
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227344 (Int.xor ⌊SequenceMachineLib.acot (n : ℝ)⌋ ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A227426.P6602914846397212910

/-! ## A227426.P15792479685633247350

`A227344(∑[n-char[1]]+1)`
-/

namespace A227426.P15792479685633247350
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227344 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat

end

end A227426.P15792479685633247350

/-! ## A227426.P9217442890950989993

`or(char[1], A227344(A179865(n+1)))`
-/

namespace A227426.P9217442890950989993
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A227344 (A179865 (n + 1)).toNat)

end

end A227426.P9217442890950989993

/-! ## A227426.P7837441513066846122

`A227344(A179865(n+1))%A108732(n)`
-/

namespace A227426.P7837441513066846122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A227344 (A179865 (n + 1)).toNat) (A108732 n)

end

end A227426.P7837441513066846122

/-! ## A227426.P579326748228919536

`and(A126646(n), A227344(A179865(n+1)))`
-/

namespace A227426.P579326748228919536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A126646 n) (A227344 (A179865 (n + 1)).toNat)

end

end A227426.P579326748228919536

/-! ## A227426.P7609378180708815801

`A227344(A179865(n+1))^A057428(n)²`
-/

namespace A227426.P7609378180708815801
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A227344 (A179865 (n + 1)).toNat : ℚ) ^ (A057428 n ^ 2 : ℤ)

end

end A227426.P7609378180708815801

/-! ## A227426.P14095780389705285786

`A007318(C(2, n))*A227344(A179865(n+1))`
-/

namespace A227426.P14095780389705285786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A227344 (A179865 (n + 1)).toNat

end

end A227426.P14095780389705285786

/-! ## A227426.P13547992717191310235

`A227344(A179865(n+1))^A014963(∑[n+1])`
-/

namespace A227426.P13547992717191310235
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A227344 (A179865 (n + 1)).toNat : ℚ) ^ (A014963 (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ)

end

end A227426.P13547992717191310235

/-! ## A227426.P13885094657038888551

`A014963(12*(n+1))*A227344(A179865(n+1))`
-/

namespace A227426.P13885094657038888551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (12 * (n + 1)) * A227344 (A179865 (n + 1)).toNat

end

end A227426.P13885094657038888551

/-! ## A227426.P2376745458716453358

`A227344(A179865(n+1))+A008683(8*n+12)`
-/

namespace A227426.P2376745458716453358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227344 (A179865 (n + 1)).toNat + A008683 (8 * n + 12)

end

end A227426.P2376745458716453358

/-! ## A227426.P11345002121006585498

`A000041(C(2, n+2))*A227344(A179865(n+1))`
-/

namespace A227426.P11345002121006585498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose 2 (n + 2)) * A227344 (A179865 (n + 1)).toNat

end

end A227426.P11345002121006585498

/-! ## A227426.P2139631456554106942

`A227344(A179865(n+1))^(A000040(n+1)%2)`
-/

namespace A227426.P2139631456554106942
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A227344 (A179865 (n + 1)).toNat : ℚ) ^ (Int.tmod (A000040 (n + 1)) 2 : ℤ)

end

end A227426.P2139631456554106942

/-! ## A227426.P6995617824243507307

`A007318(and(1, 1-n))*A227344(A179865(n+1))`
-/

namespace A227426.P6995617824243507307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Int.land 1 (1 - (n : ℤ))).toNat * A227344 (A179865 (n + 1)).toNat

end

end A227426.P6995617824243507307

/-! ## A227426.P16595797086323532537

`A007318(gcd(n, n+1))*A227344(A179865(n+1))`
-/

namespace A227426.P16595797086323532537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.gcd n (n + 1)) * A227344 (A179865 (n + 1)).toNat

end

end A227426.P16595797086323532537

/-! ## A227426.P8039978377192693055

`A001222(A007918(n))*A227344(A179865(n+1))`
-/

namespace A227426.P8039978377192693055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A007918 n).toNat * A227344 (A179865 (n + 1)).toNat

end

end A227426.P8039978377192693055

/-!
# A227427: Numbers k such that Sum_{i=1..k} i^sigma(i) == 0 (mod k).

The programs for A227427, there is no canonical definition to state claims against.
-/

/-! ## A227427.P11526014157798310055

`∑[A379843(A078006(n))]`
-/

namespace A227427.P11526014157798310055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379843 (A078006 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A227427.P11526014157798310055

/-!
# A227428: Number of twos in row n of triangle A083093.

The programs for A227428, the canonical program `A227428.P16365958953958314226` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A227428 has offset 0).

The definition of A227428 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006047, A206424, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A227428.P16365958953958314226

`A006047(n)-A206424(n)`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A227428

/-- `A006047(n)-A206424(n)` -/
def P16365958953958314226.Spec : Prop :=
  ∀ n, P16365958953958314226.a n = A227428 n

theorem P16365958953958314226.correct : P16365958953958314226.Spec := by
  intro n
  simp only [A227428]

end A227428

/-! ## A227428.P2026988094214198038

`n+1-A062296(n)-A206424(n)`
-/

namespace A227428.P2026988094214198038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A062296 n - A206424 n

end

end A227428.P2026988094214198038

namespace A227428

/-- `n+1-A062296(n)-A206424(n)` -/
def P2026988094214198038.Spec : Prop :=
  ∀ n, P2026988094214198038.a n = A227428 n

theorem P2026988094214198038.correct : P2026988094214198038.Spec := by
  intro n
  simp only [A227428, Nat.add_sub_cancel, A227428.P2026988094214198038.a, A227428.P16365958953958314226.a, A006047, A006047.P4068788115409844993.a, A062296, A062296.P12059922108062415392.a, A206424, A206424.P17237868033879064005.a, A109168, A109168.P7922441834976635510.a, A140472, A140472.P15813874920454231005.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A227428

/-! ## A227428.P13394336379366537369

`A206424(n)*(3^A081603(n)-1)/(3^A081603(n)+1)`
-/

namespace A227428.P13394336379366537369
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A206424 n : ℚ) * ((3 : ℚ) ^ (A081603 n : ℤ) - 1) / ((3 : ℚ) ^ (A081603 n : ℤ) + 1)

end

end A227428.P13394336379366537369

namespace A227428

/-- `A206424(n)*(3^A081603(n)-1)/(3^A081603(n)+1)` -/
def P13394336379366537369.Spec : Prop :=
  ∀ n, P13394336379366537369.a n = (A227428 n : ℚ)

end A227428

/-! ## A227428.P15192681281532381847

`A104594(A006047(n))`
-/

namespace A227428.P15192681281532381847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104594 (A006047 n).toNat

end

end A227428.P15192681281532381847

namespace A227428

/-- `A104594(A006047(n))` -/
def P15192681281532381847.Spec : Prop :=
  ∀ n, P15192681281532381847.a n = A227428 n

end A227428

/-! ## A227428.P14681312427052839694

`A051638(n)-A006047(n)`
-/

namespace A227428.P14681312427052839694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051638 n - A006047 n

end

end A227428.P14681312427052839694

namespace A227428

/-- `A051638(n)-A006047(n)` -/
def P14681312427052839694.Spec : Prop :=
  ∀ n, P14681312427052839694.a n = A227428 n

end A227428

/-! ## A227428.P6277633476491805473

`A206424(n)-A120880(n)`
-/

namespace A227428.P6277633476491805473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206424 n - A120880 n

end

end A227428.P6277633476491805473

namespace A227428

/-- `A206424(n)-A120880(n)` -/
def P6277633476491805473.Spec : Prop :=
  ∀ n, P6277633476491805473.a n = A227428 n

end A227428

/-! ## A227428.P9376855797324513451

`(A006047(n)-A120880(n))/2`
-/

namespace A227428.P9376855797324513451
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006047 n - A120880 n : ℚ) / 2

end

end A227428.P9376855797324513451

namespace A227428

/-- `(A006047(n)-A120880(n))/2` -/
def P9376855797324513451.Spec : Prop :=
  ∀ n, P9376855797324513451.a n = (A227428 n : ℚ)

end A227428

/-! ## A227428.P8604462606433891676

`(A006047(n)-A006047(A244042(n)))/2`
-/

namespace A227428.P8604462606433891676
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006047 n - A006047 (A244042 n).toNat : ℚ) / 2

end

end A227428.P8604462606433891676

namespace A227428

/-- `(A006047(n)-A006047(A244042(n)))/2` -/
def P8604462606433891676.Spec : Prop :=
  ∀ n, P8604462606433891676.a n = (A227428 n : ℚ)

end A227428

/-! ## A227428.P12431640702197748186

`∑{d}[A006047(n), A026741(#)]-A006047(n)`
-/

namespace A227428.P12431640702197748186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006047 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A026741 d - A006047 n

end

end A227428.P12431640702197748186

namespace A227428

/-- `∑{d}[A006047(n), A026741(#)]-A006047(n)` -/
def P12431640702197748186.Spec : Prop :=
  ∀ n, P12431640702197748186.a n = A227428 n

end A227428

/-! ## A227428.P15590715901546572990

`A206424(n)-A110914(2*n)`
-/

namespace A227428.P15590715901546572990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206424 n - A110914 (2 * n)

end

end A227428.P15590715901546572990

namespace A227428

/-- `A206424(n)-A110914(2*n)` -/
def P15590715901546572990.Spec : Prop :=
  ∀ n, P15590715901546572990.a n = A227428 n

end A227428

/-!
# A227430: Expansion of x^2*(1-x)^3/((1-2*x)*(1-x+x^2)*(1-3*x+3x^2)).

The programs for A227430, the canonical program `A227430.P17273937547975428656` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A227430 has offset 0).

The definition of A227430 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((x^2-3x^3+3x^4-x^5)/(1-6x+15x^2-20x^3+15x^4-6x^5))` (program `A227430.P17273937547975428656`, by `A227430.P17273937547975428656.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A227430.P17273937547975428656

`ogf((x^2-3x^3+3x^4-x^5)/(1-6x+15x^2-20x^3+15x^4-6x^5))`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A227430

/-- `ogf((x^2-3x^3+3x^4-x^5)/(1-6x+15x^2-20x^3+15x^4-6x^5))` -/
def P17273937547975428656.Spec : Prop :=
  ∀ n, P17273937547975428656.a n = A227430 n

theorem P17273937547975428656.correct : P17273937547975428656.Spec := by
  intro n
  simp only [A227430]

end A227430

/-! ## A227430.P15795725364141181426

`A113405(n+1)+A113405(n)-A290993(n)`
-/

namespace A227430.P15795725364141181426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113405 (n + 1) + (A113405 n - A290993 n)

end

end A227430.P15795725364141181426

namespace A227430

/-- `A113405(n+1)+A113405(n)-A290993(n)` -/
def P15795725364141181426.Spec : Prop :=
  ∀ n, P15795725364141181426.a n = A227430 n

end A227430

/-! ## A227430.P6213290213724652736

`A024495(n)-A290993(n)`
-/

namespace A227430.P6213290213724652736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024495 n - A290993 n

end

end A227430.P6213290213724652736

namespace A227430

/-- `A024495(n)-A290993(n)` -/
def P6213290213724652736.Spec : Prop :=
  ∀ n, P6213290213724652736.a n = A227430 n

end A227430

/-! ## A227430.P13778997256746426076

`Δ[A306847(n)-A057681(n)]`
-/

namespace A227430.P13778997256746426076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306847 n - A057681 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A227430.P13778997256746426076

namespace A227430

/-- `Δ[A306847(n)-A057681(n)]` -/
def P13778997256746426076.Spec : Prop :=
  ∀ n, P13778997256746426076.a n = A227430 n

end A227430

/-! ## A227430.P6256248290259494015

`A129339(n+1)-A119336(n)`
-/

namespace A227430.P6256248290259494015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129339 (n + 1) - A119336 n

end

end A227430.P6256248290259494015

namespace A227430

/-- `A129339(n+1)-A119336(n)` -/
def P6256248290259494015.Spec : Prop :=
  ∀ n, P6256248290259494015.a n = A227430 n

end A227430

/-! ## A227430.P8380229656986863100

`A024493(n+1)-(A290993(n)+A024493(n))`
-/

namespace A227430.P8380229656986863100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024493 (n + 1) - (A290993 n + A024493 n)

end

end A227430.P8380229656986863100

namespace A227430

/-- `A024493(n+1)-(A290993(n)+A024493(n))` -/
def P8380229656986863100.Spec : Prop :=
  ∀ n, P8380229656986863100.a n = A227430 n

end A227430

/-! ## A227430.P7709433195389000029

`Δ[Δ[A290993(n+1)-A290993(n)]]`
-/

namespace A227430.P7709433195389000029
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290993 (n + 1) - A290993 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A227430.P7709433195389000029

namespace A227430

/-- `Δ[Δ[A290993(n+1)-A290993(n)]]` -/
def P7709433195389000029.Spec : Prop :=
  ∀ n, P7709433195389000029.a n = A227430 n

end A227430

/-!
# A227431: Fibonacci differences triangle, T(n,k), k<=n, where column k holds the k-th difference of A000045, read by rows.

The programs for A227431, there is no canonical definition to state claims against.
-/

/-! ## A227431.P2112671275681946332

`A159864(comp[∑[n-1]])`
-/

namespace A227431.P2112671275681946332
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159864 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A227431.P2112671275681946332

/-! ## A227431.P10729486188580791525

`A159864(comp[∑[n]])+A159864(n)`
-/

namespace A227431.P10729486188580791525
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159864 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) + A159864 n

end

end A227431.P10729486188580791525

/-! ## A227431.P2254463004254584426

`A159864(A007401(n+1))-A000007(n+1)`
-/

namespace A227431.P2254463004254584426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159864 (A007401 (n + 1)).toNat - A000007 (n + 1)

end

end A227431.P2254463004254584426

/-! ## A227431.P8654758620106783061

`A159864(A007401(n+1))/A007318(C(3, n))`
-/

namespace A227431.P8654758620106783061
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A159864 (A007401 (n + 1)).toNat : ℚ) / (A007318 (Nat.choose 3 n) : ℚ)

end

end A227431.P8654758620106783061

/-! ## A227431.P10606270070131077999

`A159864(A007401(n+1))+n*A000007(n)`
-/

namespace A227431.P10606270070131077999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159864 (A007401 (n + 1)).toNat + (n : ℤ) * A000007 n

end

end A227431.P10606270070131077999

/-! ## A227431.P17270227453815518599

`A159864(A007401(n+1))^A007318(C(2, n²))`
-/

namespace A227431.P17270227453815518599
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A159864 (A007401 (n + 1)).toNat : ℚ) ^ (A007318 (Nat.choose 2 (n ^ 2)) : ℤ)

end

end A227431.P17270227453815518599

/-! ## A227431.P6567409716921121119

`A007318(∑[n])*A159864(A007401(n+1))`
-/

namespace A227431.P6567409716921121119
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A159864 (A007401 (n + 1)).toNat

end

end A227431.P6567409716921121119

/-! ## A227431.P6193051519260783628

`A159864(A007401(n+1))/A007318(∑[n+1])`
-/

namespace A227431.P6193051519260783628
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A159864 (A007401 (n + 1)).toNat : ℚ) / (A007318 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ)

end

end A227431.P6193051519260783628

/-! ## A227431.P8362831506764669802

`A159864(A007401(n+1))^A014963(∑[n+1])`
-/

namespace A227431.P8362831506764669802
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A159864 (A007401 (n + 1)).toNat : ℚ) ^ (A014963 (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ)

end

end A227431.P8362831506764669802

/-! ## A227431.P7529932342978538031

`A014963(∑[n+92])*A159864(A007401(n+1))`
-/

namespace A227431.P7529932342978538031
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 92

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (∑ j ∈ Finset.range (n + 1), f1 j) * A159864 (A007401 (n + 1)).toNat

end

end A227431.P7529932342978538031

/-!
# A227432: Difference between 10^n and the first prime of gap 4 > 10^n.

The programs for A227432, there is no canonical definition to state claims against.
-/

/-! ## A227432.P1620666928718749488

`A240167(n+2)%A000351(n+1)`
-/

namespace A227432.P1620666928718749488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A240167 (n + 2)) (A000351 (n + 1))

end

end A227432.P1620666928718749488

/-! ## A227432.P2508513463700313300

`A240167(n+2)-A017936(2*n+3)`
-/

namespace A227432.P2508513463700313300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240167 (n + 2) - A017936 (2 * n + 3)

end

end A227432.P2508513463700313300

/-! ## A227432.P13699099993948377457

`A240167(n+2)-A048365(3*(n+1))`
-/

namespace A227432.P13699099993948377457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240167 (n + 2) - A048365 (3 * (n + 1))

end

end A227432.P13699099993948377457

/-!
# A227433: Number of pairs of 2 X 2 matrices over Z/nZ that do not commute.

The programs for A227433, there is no canonical definition to state claims against.
-/

/-! ## A227433.P9232935406004807120

`(n+1)^8-A227479(n+1)`
-/

namespace A227433.P9232935406004807120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 8 : ℤ) - A227479 (n + 1)

end

end A227433.P9232935406004807120

/-!
# A227435: Difference between 10^n and the first prime of gap 6 > 10^n.

The programs for A227435, there is no canonical definition to state claims against.
-/

/-! ## A227435.P3291296240466974283

`A228454(A109640(3*n+1)+1)+1`
-/

namespace A227435.P3291296240466974283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228454 (A109640 (3 * n + 1) + 1).toNat + 1

end

end A227435.P3291296240466974283

/-!
# A227436: Triangle T(n, k) of the number of n X n binary matrices with k = 0..n^2 1's and no more than three 1's in the corners of any square sub-block.

The programs for A227436, there is no canonical definition to state claims against.
-/

/-! ## A227436.P12651575961892030281

`A217285(A062399(n+1))-char[6]`
-/

namespace A227436.P12651575961892030281
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217285 (A062399 (n + 1)).toNat - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A227436.P12651575961892030281

/-! ## A227436.P9732543236403144098

`A217285(A087051(n)+1)-char[6]`
-/

namespace A227436.P9732543236403144098
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217285 (A087051 n + 1).toNat - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A227436.P9732543236403144098

/-! ## A227436.P1927132905879390400

`A279445(n+1)-A014059(A019492(n))`
-/

namespace A227436.P1927132905879390400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279445 (n + 1) - A014059 (A019492 n).toNat

end

end A227436.P1927132905879390400

/-! ## A227436.P10029115823060522818

`A279445(n+1)-A014059(A019493(n))`
-/

namespace A227436.P10029115823060522818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279445 (n + 1) - A014059 (A019493 n).toNat

end

end A227436.P10029115823060522818

/-! ## A227436.P18408686799297440354

`A279445(n+1)-A332671(A000032(n))`
-/

namespace A227436.P18408686799297440354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279445 (n + 1) - A332671 (A000032 n).toNat

end

end A227436.P18408686799297440354

/-!
# A227437: Longest checkmate in king and 3 knights versus king endgame on an n X n chessboard.

The programs for A227437, there is no canonical definition to state claims against.
-/

/-! ## A227437.P7178029071991070580

`A269176(2*n+5)+A269166(A053704(3*(n+1)))`
-/

namespace A227437.P7178029071991070580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269176 (2 * n + 5) + A269166 (A053704 (3 * (n + 1))).toNat

end

end A227437.P7178029071991070580

/-!
# A227438: Number of n X 2 0,1 arrays indicating 2 X 2 subblocks of some larger (n+1) X 3 binary array having two adjacent 1's and two adjacent 0's.

The programs for A227438, the canonical program `A227438.P13783250998875797984` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A227438 has offset 1).

The definition of A227438 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A227438.P983773766315065406

`ogf((4+6x^2)/(1-4x+2x^2-6x^3))`
-/

namespace A227438.P983773766315065406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4, 0, 6] [1, -4, 2, -6] n

end

end A227438.P983773766315065406

namespace A227438

/-- `ogf((4+6x^2)/(1-4x+2x^2-6x^3))` -/
def P983773766315065406.Spec : Prop :=
  ∀ n, P983773766315065406.a n = A227438 (n + 1)

end A227438

/-! ## A227438.P13783250998875797984

`4*a(n-1)-2*a(n-2)+6*a(n-3)` with `a(0)=4, a(1)=16, a(2)=62`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A227438

/-- `4*a(n-1)-2*a(n-2)+6*a(n-3)` -/
def P13783250998875797984.Spec : Prop :=
  ∀ n, P13783250998875797984.a n = A227438 (n + 1)

theorem P13783250998875797984.correct : P13783250998875797984.Spec := by
  intro n
  simp only [A227438, Nat.add_sub_cancel]

end A227438

/-! ## A227438.P1467134999380646104

`A227442(∑[n+1]+2)`
-/

namespace A227438.P1467134999380646104
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227442 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A227438.P1467134999380646104

namespace A227438

/-- `A227442(∑[n+1]+2)` -/
def P1467134999380646104.Spec : Prop :=
  ∀ n, P1467134999380646104.a n = A227438 (n + 1)

end A227438

/-! ## A227438.P8252326265357618234

`record[gcd(A025581(n), A227442(n+3))]`
-/

namespace A227438.P8252326265357618234
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A025581 n) (A227442 (n + 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A227438.P8252326265357618234

namespace A227438

/-- `record[gcd(A025581(n), A227442(n+3))]` -/
def P8252326265357618234.Spec : Prop :=
  ∀ n, (P8252326265357618234.a n : ℤ) = A227438 (n + 1)

end A227438

/-! ## A227438.P2247552975405918509

`A336107(A336096(n+1))+A227442(A000217(n+1)+2)`
-/

namespace A227438.P2247552975405918509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336107 (A336096 (n + 1)).toNat + A227442 (A000217 (n + 1) + 2).toNat

end

end A227438.P2247552975405918509

namespace A227438

/-- `A336107(A336096(n+1))+A227442(A000217(n+1)+2)` -/
def P2247552975405918509.Spec : Prop :=
  ∀ n, P2247552975405918509.a n = A227438 (n + 1)

end A227438

/-!
# A227439: Number of n X 3 0,1 arrays indicating 2 X 2 subblocks of some larger (n+1) X 4 binary array having two adjacent 1's and two adjacent 0's.

The programs for A227439, there is no canonical definition to state claims against.
-/

/-! ## A227439.P12997757542712972520

`A227442(∑[n+2]+4)`
-/

namespace A227439.P12997757542712972520
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227442 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A227439.P12997757542712972520

/-! ## A227439.P14551679515712785941

`record[A227442(n+4)/A143498(n+3)]`
-/

namespace A227439.P14551679515712785941
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A227442 (n + 4) : ℚ) / (A143498 (n + 3) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A227439.P14551679515712785941

/-! ## A227439.P14463614066967017499

`A227442(A167614(n+1))+A084904(n)`
-/

namespace A227439.P14463614066967017499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227442 (A167614 (n + 1)).toNat + A084904 n

end

end A227439.P14463614066967017499

/-! ## A227439.P4762989581801502602

`A227442(A167614(n+1))+A178798(n)`
-/

namespace A227439.P4762989581801502602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227442 (A167614 (n + 1)).toNat + A178798 n

end

end A227439.P4762989581801502602

/-! ## A227439.P8002851475523007205

`A227442(A167614(n+1))+A180472(n)`
-/

namespace A227439.P8002851475523007205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227442 (A167614 (n + 1)).toNat + A180472 n

end

end A227439.P8002851475523007205

/-!
# A227440: Number of n X 4 0,1 arrays indicating 2 X 2 subblocks of some larger (n+1) X 5 binary array having two adjacent 1's and two adjacent 0's.

The programs for A227440, there is no canonical definition to state claims against.
-/

/-! ## A227440.P9892871203205628467

`A227442(∑[n+3]+7)`
-/

namespace A227440.P9892871203205628467
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227442 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A227440.P9892871203205628467

/-! ## A227440.P655836864342752264

`lcm(A225372(n+1), A227442(A000217(n+4)-3))`
-/

namespace A227440.P655836864342752264
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A225372 (n + 1)) (A227442 (A000217 (n + 4) - 3).toNat)

end

end A227440.P655836864342752264

/-! ## A227440.P13786301989520465880

`A336107(A336096(n+1))+A227442(A052905(n+1)+2)`
-/

namespace A227440.P13786301989520465880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336107 (A336096 (n + 1)).toNat + A227442 (A052905 (n + 1) + 2).toNat

end

end A227440.P13786301989520465880

/-!
# A227441: Number of n X 5 0,1 arrays indicating 2 X 2 subblocks of some larger (n+1) X 6 binary array having two adjacent 1's and two adjacent 0's.

The programs for A227441, there is no canonical definition to state claims against.
-/

/-! ## A227441.P12859277056945321145

`A227442(A374005(n+1))`
-/

namespace A227441.P12859277056945321145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227442 (A374005 (n + 1)).toNat

end

end A227441.P12859277056945321145

/-! ## A227441.P6380408075879310324

`A227442(A167499(n+3))`
-/

namespace A227441.P6380408075879310324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227442 (A167499 (n + 3)).toNat

end

end A227441.P6380408075879310324

/-! ## A227441.P9639895639671755216

`A227442(A155212(n)+13)`
-/

namespace A227441.P9639895639671755216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227442 (A155212 n + 13).toNat

end

end A227441.P9639895639671755216

/-! ## A227441.P3702512178032855884

`A227442(A056000(n)+15)`
-/

namespace A227441.P3702512178032855884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227442 (A056000 n + 15).toNat

end

end A227441.P3702512178032855884

/-! ## A227441.P10536034065748595597

`A227442(eq[7, A066657(n)])`
-/

namespace A227441.P10536034065748595597
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227442 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A227441.P10536034065748595597

/-!
# A227442: T(n,k) = Number of n X k 0,1 arrays indicating 2 X 2 subblocks of some larger (n+1) X (k+1) binary array having two adjacent 1's and two adjacent 0's.

The programs for A227442, there is no canonical definition to state claims against.
-/

/-! ## A227442.P3149973620815465667

`A319080(A118185(n))+A283415(n+1)`
-/

namespace A227442.P3149973620815465667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319080 (A118185 n).toNat + A283415 (n + 1)

end

end A227442.P3149973620815465667

/-! ## A227442.P54104604574162318

`A181217(n+1)-A051769(A174376(n))`
-/

namespace A227442.P54104604574162318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181217 (n + 1) - A051769 (A174376 n).toNat

end

end A227442.P54104604574162318

/-! ## A227442.P5861090342524680024

`A188910(n+1)-A051769(A174376(n))`
-/

namespace A227442.P5861090342524680024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188910 (n + 1) - A051769 (A174376 n).toNat

end

end A227442.P5861090342524680024

/-! ## A227442.P16833375638574738155

`A189111(n+1)-A051769(A174376(n))`
-/

namespace A227442.P16833375638574738155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189111 (n + 1) - A051769 (A174376 n).toNat

end

end A227442.P16833375638574738155

/-! ## A227442.P6115414548796662421

`A227594(n+1)-A051769(A174376(n))`
-/

namespace A227442.P6115414548796662421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227594 (n + 1) - A051769 (A174376 n).toNat

end

end A227442.P6115414548796662421

/-!
# A227443: Numbers k such that k and k+1 have the same binary XOR of divisors.

The programs for A227443, there is no canonical definition to state claims against.
-/

/-! ## A227443.P10152151931669694899

`eq[A178910(n+1), A178910(n+2)]+1`
-/

namespace A227443.P10152151931669694899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178910 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178910 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A227443.P10152151931669694899

/-!
# A227445: Numbers n such that 7*3^(2*n)+5*3^n+1 is prime.

The programs for A227445, there is no canonical definition to state claims against.
-/

/-! ## A227445.P3470722796050176759

`record[A022328(A026724(n))]`
-/

namespace A227445.P3470722796050176759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022328 (A026724 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A227445.P3470722796050176759

/-! ## A227445.P13916375046154478768

`eq[2, A196067(A196063(2*n+3))]`
-/

namespace A227445.P13916375046154478768
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196067 (A196063 (2 * n + 3)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A227445.P13916375046154478768

/-! ## A227445.P3604455514715421387

`lt[A037027(2*(n+2)), sqrt(A125193(n+1))]`
-/

namespace A227445.P3604455514715421387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037027 (2 * (n + 2))

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A125193 (n + 1) : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A227445.P3604455514715421387

/-! ## A227445.P1854507508096774549

`lt[A125177(2*(n+2)), sqrt(A125193(n+1))]`
-/

namespace A227445.P1854507508096774549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125177 (2 * (n + 2))

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A125193 (n + 1) : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A227445.P1854507508096774549

/-! ## A227445.P6403306865411673988

`eq[A238414(n+2)!, A238408(2*n+3)]`
-/

namespace A227445.P6403306865411673988
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A238414 (n + 2)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238408 (2 * n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A227445.P6403306865411673988

/-!
# A227446: Numbers k such that 7*2^(2*k) - 5*2^k + 1 is prime.

The programs for A227446, there is no canonical definition to state claims against.
-/

/-! ## A227446.P10021734807577191190

`A128876(A128882(n))%A221988(n)`
-/

namespace A227446.P10021734807577191190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A128876 (A128882 n).toNat) (A221988 n)

end

end A227446.P10021734807577191190

/-! ## A227446.P6943275476896926960

`A045917(A342395(n+1)+A122200(2*n))`
-/

namespace A227446.P6943275476896926960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045917 (A342395 (n + 1) + A122200 (2 * n)).toNat

end

end A227446.P6943275476896926960

/-!
# A227450: Triangular array read by rows. T(n,k) = A008277(n,k)*2^k; n >= 1, 1 <= k <= n.

The programs for A227450, the canonical program `A227450.P2779662721077541935` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A227450 has offset 1).

The definition of A227450 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3592 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A227450.P2779662721077541935

`(col(n)+1)*T(n-1,k)+2*T(n-1,k-1)` with `a(0)=2`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A227450

/-- `(col(n)+1)*T(n-1,k)+2*T(n-1,k-1)` -/
def P2779662721077541935.Spec : Prop :=
  ∀ n, (P2779662721077541935.a n : ℤ) = A227450 (n + 1)

theorem P2779662721077541935.correct : P2779662721077541935.Spec := by
  intro n
  simp only [A227450, Nat.add_sub_cancel]

end A227450

/-! ## A227450.P10280862551228641790

`2*A008277(n+1)*A059268(n)`
-/

namespace A227450.P10280862551228641790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A008277 (n + 1) * A059268 n)

end

end A227450.P10280862551228641790

namespace A227450

/-- `2*A008277(n+1)*A059268(n)` -/
def P10280862551228641790.Spec : Prop :=
  ∀ n, P10280862551228641790.a n = A227450 (n + 1)

end A227450

/-! ## A227450.P16737660246127025818

`A000079(A002260(n+1))*A008277(n+1)`
-/

namespace A227450.P16737660246127025818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A002260 (n + 1)).toNat * A008277 (n + 1)

end

end A227450.P16737660246127025818

namespace A227450

/-- `A000079(A002260(n+1))*A008277(n+1)` -/
def P16737660246127025818.Spec : Prop :=
  ∀ n, P16737660246127025818.a n = A227450 (n + 1)

end A227450

/-! ## A227450.P3471995465146860848

`A008277(n+1)*A181821(A037126(n+1))`
-/

namespace A227450.P3471995465146860848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008277 (n + 1) * A181821 (A037126 (n + 1)).toNat

end

end A227450.P3471995465146860848

namespace A227450

/-- `A008277(n+1)*A181821(A037126(n+1))` -/
def P3471995465146860848.Spec : Prop :=
  ∀ n, P3471995465146860848.a n = A227450 (n + 1)

end A227450

/-! ## A227450.P8216612907899741117

`A008277(n+1)*A060546(A158405(n+1))`
-/

namespace A227450.P8216612907899741117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008277 (n + 1) * A060546 (A158405 (n + 1)).toNat

end

end A227450.P8216612907899741117

namespace A227450

/-- `A008277(n+1)*A060546(A158405(n+1))` -/
def P8216612907899741117.Spec : Prop :=
  ∀ n, P8216612907899741117.a n = A227450 (n + 1)

end A227450

/-! ## A227450.P785425627679506588

`2*A008278(A038722(n+1))*A059268(n)`
-/

namespace A227450.P785425627679506588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A008278 (A038722 (n + 1)).toNat * A059268 n)

end

end A227450.P785425627679506588

namespace A227450

/-- `2*A008278(A038722(n+1))*A059268(n)` -/
def P785425627679506588.Spec : Prop :=
  ∀ n, P785425627679506588.a n = A227450 (n + 1)

end A227450

/-! ## A227450.P10257746625332500572

`A001316(A099627(n))*A008277(n+1)`
-/

namespace A227450.P10257746625332500572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 (A099627 n).toNat * A008277 (n + 1)

end

end A227450.P10257746625332500572

namespace A227450

/-- `A001316(A099627(n))*A008277(n+1)` -/
def P10257746625332500572.Spec : Prop :=
  ∀ n, P10257746625332500572.a n = A227450 (n + 1)

end A227450

/-! ## A227450.P5379856371027500226

`A008277(n+1)*A267584(A059268(n))`
-/

namespace A227450.P5379856371027500226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008277 (n + 1) * A267584 (A059268 n).toNat

end

end A227450.P5379856371027500226

namespace A227450

/-- `A008277(n+1)*A267584(A059268(n))` -/
def P5379856371027500226.Spec : Prop :=
  ∀ n, P5379856371027500226.a n = A227450 (n + 1)

end A227450

/-!
# A227451: Number whose binary expansion encodes via runlengths the partition that is at the top of the main trunk of Bulgarian solitaire game tree drawn for the deck with n(n+1)/2 cards.

The programs for A227451, the canonical program `A227451.P5262284647651897098` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A227451 has offset 0).

The definition of A227451 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A227451.P5262284647651897098

`4*a(n-1)+a(n-2)-4*a(n-3)` with `a(0)=0, a(1)=1, a(2)=5, a(3)=18, a(4)=77`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A227451

/-- `4*a(n-1)+a(n-2)-4*a(n-3)` -/
def P5262284647651897098.Spec : Prop :=
  ∀ n, P5262284647651897098.a n = A227451 n

theorem P5262284647651897098.correct : P5262284647651897098.Spec := by
  intro n
  simp only [A227451]

end A227451

/-! ## A227451.P8675858407443223075

`ogf((x+x^2-3x^3+4x^4)/(1-4x-x^2+4x^3))`
-/

namespace A227451.P8675858407443223075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 1, -3, 4] [1, -4, -1, 4] n

end

end A227451.P8675858407443223075

namespace A227451

/-- `ogf((x+x^2-3x^3+4x^4)/(1-4x-x^2+4x^3))` -/
def P8675858407443223075.Spec : Prop :=
  ∀ n, P8675858407443223075.a n = A227451 n

end A227451

/-! ## A227451.P18168609399103659385

`record[xor(a(n-1), A051049(n))]` with `a(0)=0, a(1)=1`
-/

namespace A227451.P18168609399103659385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  Int.xor (f1 (n - 1)) (A051049 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A227451.P18168609399103659385

namespace A227451

/-- `record[xor(a(n-1), A051049(n))]` -/
def P18168609399103659385.Spec : Prop :=
  ∀ n, P18168609399103659385.a n = A227451 n

end A227451

/-! ## A227451.P2574949535465088993

`A227452(A007290(n)+n)`
-/

namespace A227451.P2574949535465088993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227452 (A007290 n + (n : ℤ)).toNat

end

end A227451.P2574949535465088993

namespace A227451

/-- `A227452(A007290(n)+n)` -/
def P2574949535465088993.Spec : Prop :=
  ∀ n, P2574949535465088993.a n = A227451 n

end A227451

/-! ## A227451.P743598855364935245

`A227452(A086514(n+1)-1)`
-/

namespace A227451.P743598855364935245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227452 (A086514 (n + 1) - 1).toNat

end

end A227451.P743598855364935245

namespace A227451

/-- `A227452(A086514(n+1)-1)` -/
def P743598855364935245.Spec : Prop :=
  ∀ n, P743598855364935245.a n = A227451 n

end A227451

/-!
# A227453: Numbers k such that the distance to the largest square less than k is a multiple of 4.

The programs for A227453, the canonical program `A227453.P812764055664269610` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A227453 has offset 1).

The definition of A227453 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A227453.P13841969436117284587

`A079896(2*(n+1))`
-/

namespace A227453.P13841969436117284587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079896 (2 * (n + 1))

end

end A227453.P13841969436117284587

namespace A227453

/-- `A079896(2*(n+1))` -/
def P13841969436117284587.Spec : Prop :=
  ∀ n, P13841969436117284587.a n = A227453 (n + 1)

end A227453

/-! ## A227453.P812764055664269610

`lt[A118111(n), 1]+1`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A227453

/-- `lt[A118111(n), 1]+1` -/
def P812764055664269610.Spec : Prop :=
  ∀ n, (P812764055664269610.a n : ℤ) = A227453 (n + 1)

theorem P812764055664269610.correct : P812764055664269610.Spec := by
  intro n
  simp only [A227453, Nat.add_sub_cancel]

end A227453

/-! ## A227453.P193134993242379244

`lt[0, Δ[A071030(n)]]+1`
-/

namespace A227453.P193134993242379244
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071030 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A227453.P193134993242379244

namespace A227453

/-- `lt[0, Δ[A071030(n)]]+1` -/
def P193134993242379244.Spec : Prop :=
  ∀ n, (P193134993242379244.a n : ℤ) = A227453 (n + 1)

end A227453

/-! ## A227453.P11688907424273444571

`A042948(A078633(n+1))`
-/

namespace A227453.P11688907424273444571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042948 (A078633 (n + 1)).toNat

end

end A227453.P11688907424273444571

namespace A227453

/-- `A042948(A078633(n+1))` -/
def P11688907424273444571.Spec : Prop :=
  ∀ n, P11688907424273444571.a n = A227453 (n + 1)

end A227453

/-! ## A227453.P3726998325862966887

`lt[2, A020639(A329708(n))]`
-/

namespace A227453.P3726998325862966887
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A329708 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A227453.P3726998325862966887

namespace A227453

/-- `lt[2, A020639(A329708(n))]` -/
def P3726998325862966887.Spec : Prop :=
  ∀ n, (P3726998325862966887.a n : ℤ) = A227453 (n + 1)

end A227453

/-! ## A227453.P2306362783393502545

`eq[A010873(n), A267034(n)]`
-/

namespace A227453.P2306362783393502545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010873 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267034 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A227453.P2306362783393502545

namespace A227453

/-- `eq[A010873(n), A267034(n)]` -/
def P2306362783393502545.Spec : Prop :=
  ∀ n, (P2306362783393502545.a n : ℤ) = A227453 (n + 1)

end A227453

/-! ## A227453.P8144562822109800072

`eq[A091086(n), A267034(n)]`
-/

namespace A227453.P8144562822109800072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091086 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267034 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A227453.P8144562822109800072

namespace A227453

/-- `eq[A091086(n), A267034(n)]` -/
def P8144562822109800072.Spec : Prop :=
  ∀ n, (P8144562822109800072.a n : ℤ) = A227453 (n + 1)

end A227453

/-! ## A227453.P14143270750345218333

`eq[A130659(n), A267034(n)]`
-/

namespace A227453.P14143270750345218333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130659 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267034 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A227453.P14143270750345218333

namespace A227453

/-- `eq[A130659(n), A267034(n)]` -/
def P14143270750345218333.Spec : Prop :=
  ∀ n, (P14143270750345218333.a n : ℤ) = A227453 (n + 1)

end A227453

/-! ## A227453.P373199689462285850

`A100832(A183572(2*(n+1)))`
-/

namespace A227453.P373199689462285850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100832 (A183572 (2 * (n + 1))).toNat

end

end A227453.P373199689462285850

namespace A227453

/-- `A100832(A183572(2*(n+1)))` -/
def P373199689462285850.Spec : Prop :=
  ∀ n, P373199689462285850.a n = A227453 (n + 1)

end A227453

/-! ## A227453.P3107648610176805668

`filter[A079896(n+1), A071028(#)]`
-/

namespace A227453.P3107648610176805668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079896 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A071028 (f1 j).toNat = 1) n)

end

end A227453.P3107648610176805668

namespace A227453

/-- `filter[A079896(n+1), A071028(#)]` -/
def P3107648610176805668.Spec : Prop :=
  ∀ n, P3107648610176805668.a n = A227453 (n + 1)

end A227453

/-! ## A227453.P13775471818024092504

`filter[A079896(n+1), A071030(#)]`
-/

namespace A227453.P13775471818024092504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079896 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A071030 (f1 j).toNat = 1) n)

end

end A227453.P13775471818024092504

namespace A227453

/-- `filter[A079896(n+1), A071030(#)]` -/
def P13775471818024092504.Spec : Prop :=
  ∀ n, P13775471818024092504.a n = A227453 (n + 1)

end A227453

/-! ## A227453.P15419669412650497611

`filter[A079896(n+1), A071040(#)]`
-/

namespace A227453.P15419669412650497611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079896 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A071040 (f1 j).toNat = 1) n)

end

end A227453.P15419669412650497611

namespace A227453

/-- `filter[A079896(n+1), A071040(#)]` -/
def P15419669412650497611.Spec : Prop :=
  ∀ n, P15419669412650497611.a n = A227453 (n + 1)

end A227453

/-! ## A227453.P2052640224710808934

`filter[A079896(n+1), A071041(#)]`
-/

namespace A227453.P2052640224710808934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079896 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A071041 (f1 j).toNat = 1) n)

end

end A227453.P2052640224710808934

namespace A227453

/-- `filter[A079896(n+1), A071041(#)]` -/
def P2052640224710808934.Spec : Prop :=
  ∀ n, P2052640224710808934.a n = A227453 (n + 1)

end A227453

/-! ## A227453.P4856178288627963660

`filter[A118011(n+1), A133872(#)]`
-/

namespace A227453.P4856178288627963660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118011 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A133872 (f1 j).toNat = 1) n)

end

end A227453.P4856178288627963660

namespace A227453

/-- `filter[A118011(n+1), A133872(#)]` -/
def P4856178288627963660.Spec : Prop :=
  ∀ n, P4856178288627963660.a n = A227453 (n + 1)

end A227453

/-! ## A227453.P13650656139681085410

`eq[A172254(n+1), A397085(n)]`
-/

namespace A227453.P13650656139681085410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172254 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397085 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A227453.P13650656139681085410

namespace A227453

/-- `eq[A172254(n+1), A397085(n)]` -/
def P13650656139681085410.Spec : Prop :=
  ∀ n, (P13650656139681085410.a n : ℤ) = A227453 (n + 1)

end A227453

/-! ## A227453.P16170993627852651597

`∩[A118011(n+1), A042948(n)]`
-/

namespace A227453.P16170993627852651597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118011 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042948 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A227453.P16170993627852651597

namespace A227453

/-- `∩[A118011(n+1), A042948(n)]` -/
def P16170993627852651597.Spec : Prop :=
  ∀ n, (P16170993627852651597.a n : ℤ) = A227453 (n + 1)

end A227453

/-! ## A227453.P16567552090536698673

`∩[A079896(n+1), A133280(n)]`
-/

namespace A227453.P16567552090536698673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079896 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133280 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A227453.P16567552090536698673

namespace A227453

/-- `∩[A079896(n+1), A133280(n)]` -/
def P16567552090536698673.Spec : Prop :=
  ∀ n, (P16567552090536698673.a n : ℤ) = A227453 (n + 1)

end A227453

/-! ## A227453.P6509897754267312403

`record[A079896(A000265(n+1)+1)]`
-/

namespace A227453.P6509897754267312403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079896 (A000265 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A227453.P6509897754267312403

namespace A227453

/-- `record[A079896(A000265(n+1)+1)]` -/
def P6509897754267312403.Spec : Prop :=
  ∀ n, P6509897754267312403.a n = A227453 (n + 1)

end A227453

/-! ## A227453.P2592067151942230476

`(A000267(n)+2)²-A152204(n)`
-/

namespace A227453.P2592067151942230476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000267 n + 2) ^ 2 - A152204 n

end

end A227453.P2592067151942230476

namespace A227453

/-- `(A000267(n)+2)²-A152204(n)` -/
def P2592067151942230476.Spec : Prop :=
  ∀ n, P2592067151942230476.a n = A227453 (n + 1)

end A227453

/-! ## A227453.P6083516939181486515

`comp[A000027(n+1)*A118111(n)]`
-/

namespace A227453.P6083516939181486515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (n + 1) * A118111 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A227453.P6083516939181486515

namespace A227453

/-- `comp[A000027(n+1)*A118111(n)]` -/
def P6083516939181486515.Spec : Prop :=
  ∀ n, (P6083516939181486515.a n : ℤ) = A227453 (n + 1)

end A227453

/-!
# A227454: Expansion of q * (f(q^9) / f(q))^3 in powers of q where f() is a Ramanujan theta function.

The programs for A227454, there is no canonical definition to state claims against.
-/

/-! ## A227454.P12304049427324486841

`(-1)^n*A121589(n+1)`
-/

namespace A227454.P12304049427324486841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A121589 (n + 1)

end

end A227454.P12304049427324486841

/-! ## A227454.P15955565403377906582

`A121589(n+1)*A321129(A016777(n))`
-/

namespace A227454.P15955565403377906582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121589 (n + 1) * A321129 (A016777 n).toNat

end

end A227454.P15955565403377906582

/-! ## A227454.P11375089162538734742

`A121589(n+1)*A153881(A006519(n+1))`
-/

namespace A227454.P11375089162538734742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121589 (n + 1) * A153881 (A006519 (n + 1)).toNat

end

end A227454.P11375089162538734742

/-! ## A227454.P4889426534754248431

`A121589(n+1)*A343785(A007310(n+1))`
-/

namespace A227454.P4889426534754248431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121589 (n + 1) * A343785 (A007310 (n + 1)).toNat

end

end A227454.P4889426534754248431

/-! ## A227454.P3298209810048265771

`A121592(n+1)/A057079(n)`
-/

namespace A227454.P3298209810048265771
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A121592 (n + 1) : ℚ) / (A057079 n : ℚ)

end

end A227454.P3298209810048265771

/-! ## A227454.P1006927696920972206

`A121589(n+1)/A006077(n)*A291898(n)`
-/

namespace A227454.P1006927696920972206
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A121589 (n + 1) : ℚ) / (A006077 n : ℚ) * (A291898 n : ℚ)

end

end A227454.P1006927696920972206

/-!
# A227455: Sequence defined recursively: 1 is in the sequence, and k > 1 is in the sequence iff for some prime divisor p of k, p-1 is not in the sequence.

The programs for A227455, there is no canonical definition to state claims against.
-/

/-! ## A227455.P12373909549623378318

`record[xor(A095190(n+2), A095201(n+2))]`
-/

namespace A227455.P12373909549623378318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A095190 (n + 2)) (A095201 (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A227455.P12373909549623378318

/-! ## A227455.P2235651600222750349

`lt[A248519(n), A248614(A248514(n+1))]`
-/

namespace A227455.P2235651600222750349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248519 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248614 (A248514 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A227455.P2235651600222750349

/-! ## A227455.P5399427302462151577

`lt[A350682(n+1), A344616(A188747(n+1))]`
-/

namespace A227455.P5399427302462151577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350682 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344616 (A188747 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A227455.P5399427302462151577

/-! ## A227455.P204212105299022250

`eq[A070965(n+1), A341591(A191667(n+1))]`
-/

namespace A227455.P204212105299022250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070965 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341591 (A191667 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A227455.P204212105299022250

/-! ## A227455.P6222831121115369223

`lt[A036577(A057339(3*n+1)), A036577(n+1)]`
-/

namespace A227455.P6222831121115369223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036577 (A057339 (3 * n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036577 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A227455.P6222831121115369223

/-!
# A227457: E.g.f. equals the series reversion of x - x*log(1+x).

The programs for A227457, there is no canonical definition to state claims against.
-/

/-! ## A227457.P11227494228995569437

`(n+1)*A198860(n)`
-/

namespace A227457.P11227494228995569437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A198860 n

end

end A227457.P11227494228995569437

/-! ## A227457.P13344845513300066768

`A198860(n)*A238690(A000079(n))`
-/

namespace A227457.P13344845513300066768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198860 n * A238690 (A000079 n).toNat

end

end A227457.P13344845513300066768

/-! ## A227457.P14307734334816192861

`A198860(n)*A334467(A001844(n))`
-/

namespace A227457.P14307734334816192861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198860 n * A334467 (A001844 n).toNat

end

end A227457.P14307734334816192861

/-!
# A227458: E.g.f. equals the series reversion of x - x*arcsin(x).

The programs for A227458, there is no canonical definition to state claims against.
-/

/-! ## A227458.P17538239547040221918

`A173219(n)+A083912(A001449(n))`
-/

namespace A227458.P17538239547040221918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173219 n + A083912 (A001449 n).toNat

end

end A227458.P17538239547040221918

/-! ## A227458.P10318811895513793562

`A173219(n)+A161840(A035512(n))`
-/

namespace A227458.P10318811895513793562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173219 n + A161840 (A035512 n).toNat

end

end A227458.P10318811895513793562

/-!
# A227460: E.g.f. equals the series reversion of x - x*arctan(x).

The programs for A227460, there is no canonical definition to state claims against.
-/

/-! ## A227460.P7101217387221393027

`A307089(n)*A382499(A360832(n))`
-/

namespace A227460.P7101217387221393027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307089 n * A382499 (A360832 n).toNat

end

end A227460.P7101217387221393027

/-! ## A227460.P10689188700344257004

`A143134(n+1)+A025437(A151773(n))`
-/

namespace A227460.P10689188700344257004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143134 (n + 1) + A025437 (A151773 n).toNat

end

end A227460.P10689188700344257004

/-!
# A227461: E.g.f. equals the series reversion of x - x*arctanh(x).

The programs for A227461, there is no canonical definition to state claims against.
-/

/-! ## A227461.P268629656313759417

`A143136(n+1)+A025437(A151773(n))`
-/

namespace A227461.P268629656313759417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143136 (n + 1) + A025437 (A151773 n).toNat

end

end A227461.P268629656313759417

/-! ## A227461.P840478397657598194

`A318921(A136633(n))+A214224(n+1)`
-/

namespace A227461.P840478397657598194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318921 (A136633 n).toNat + A214224 (n + 1)

end

end A227461.P840478397657598194

/-!
# A227462: E.g.f. equals the series reversion of x - x^2*exp(x^2).

The programs for A227462, there is no canonical definition to state claims against.
-/

/-! ## A227462.P14702369352663970134

`(n+1)*A370927(n)`
-/

namespace A227462.P14702369352663970134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A370927 n

end

end A227462.P14702369352663970134

/-!
# A227463: E.g.f. equals the series reversion of arcsinh(x) / exp(x).

The programs for A227463, there is no canonical definition to state claims against.
-/

/-! ## A227463.P7270182679561545700

`A293022(n+1)/(n+1)`
-/

namespace A227463.P7270182679561545700
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A293022 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A227463.P7270182679561545700

/-! ## A227463.P2355532316057835141

`(n+1)^A008683(A020483(n))*A293022(n+1)`
-/

namespace A227463.P2355532316057835141
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (A008683 (A020483 n).toNat : ℤ) * (A293022 (n + 1) : ℚ)

end

end A227463.P2355532316057835141

/-! ## A227463.P15542561443474571685

`(n+1)^A008683(A054806(n+1))*A293022(n+1)`
-/

namespace A227463.P15542561443474571685
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (A008683 (A054806 (n + 1)).toNat : ℤ) * (A293022 (n + 1) : ℚ)

end

end A227463.P15542561443474571685

/-! ## A227463.P17837546520255547460

`(n+1)^A008683(A144226(n+1))*A293022(n+1)`
-/

namespace A227463.P17837546520255547460
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (A008683 (A144226 (n + 1)).toNat : ℤ) * (A293022 (n + 1) : ℚ)

end

end A227463.P17837546520255547460

/-! ## A227463.P16912394196017244056

`(n+1)^A008683(A020481(n+2))*A293022(n+1)`
-/

namespace A227463.P16912394196017244056
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (A008683 (A020481 (n + 2)).toNat : ℤ) * (A293022 (n + 1) : ℚ)

end

end A227463.P16912394196017244056

/-!
# A227464: E.g.f. equals the series reversion of sin(x) / exp(x).

The programs for A227464, there is no canonical definition to state claims against.
-/

/-! ## A227464.P9631432789355580248

`A293191(n+1)/(n+1)`
-/

namespace A227464.P9631432789355580248
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A293191 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A227464.P9631432789355580248

/-! ## A227464.P15104413843115189410

`sqrt(A000079(n))*sqrt(A301616(n))`
-/

namespace A227464.P15104413843115189410
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A000079 n : ℝ) * Real.sqrt (A301616 n : ℝ)

end

end A227464.P15104413843115189410

/-! ## A227464.P4243590476681163441

`sqrt(A000079(n)*A301616(n))`
-/

namespace A227464.P4243590476681163441
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A000079 n * A301616 n : ℝ)

end

end A227464.P4243590476681163441

/-!
# A227465: E.g.f. equals the series reversion of arctan(x) / exp(x).

The programs for A227465, there is no canonical definition to state claims against.
-/

/-! ## A227465.P9492926930013828184

`A293020(n+1)/(n+1)`
-/

namespace A227465.P9492926930013828184
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A293020 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A227465.P9492926930013828184

/-!
# A227466: E.g.f. equals the series reversion of tanh(x) / exp(x).

The programs for A227466, there is no canonical definition to state claims against.
-/

/-! ## A227466.P15908759929303117966

`A293193(n+1)/(n+1)`
-/

namespace A227466.P15908759929303117966
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A293193 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A227466.P15908759929303117966

/-!
# A227467: E.g.f.: exp( Sum_{n>=1} (1+x)^(n^2) * x^n/n ).

The programs for A227467, there is no canonical definition to state claims against.
-/

/-! ## A227467.P7695188064142851757

`A000010(∑[∑{d}[A210996(n), #]])`
-/

namespace A227467.P7695188064142851757
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210996 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n).natAbs, d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A227467.P7695188064142851757

/-! ## A227467.P4158412338718227382

`A000010(∑[∑{d}[A000105(2*n), #]])`
-/

namespace A227467.P4158412338718227382
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000105 (2 * n)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n).natAbs, d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A227467.P4158412338718227382

/-!
# A227469: a(n) = binomial((n+1)^2, n) * (2*n+1) / (n+1)^2 for n>=0.

The programs for A227469, the canonical program `A227469.P154277225980608478` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A227469 has offset 0).

The definition of A227469 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A227469.P154277225980608478

`(2*n+1)*A143669(n)`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A227469

/-- `(2*n+1)*A143669(n)` -/
def P154277225980608478.Spec : Prop :=
  ∀ n, P154277225980608478.a n = A227469 n

theorem P154277225980608478.correct : P154277225980608478.Spec := by
  intro n
  simp only [A227469]

end A227469

/-! ## A227469.P15808466512797185936

`C((n+1)², n)*(2*n+1)/(n+1)²`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A227469.P15808466512797185936
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose ((n + 1) ^ 2) n * (2 * n + 1) : ℚ) / ((n + 1) ^ 2 : ℚ)

end

end A227469.P15808466512797185936

namespace A227469

/-- `C((n+1)², n)*(2*n+1)/(n+1)²` -/
def P15808466512797185936.Spec : Prop :=
  ∀ n, P15808466512797185936.a n = (A227469 n : ℚ)

end A227469

/-! ## A227469.P715488350550444575

`(2*n+1)*A070780(n)/(n+1)²`
-/

namespace A227469.P715488350550444575
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℚ) * ((A070780 n : ℚ) / ((n + 1) ^ 2 : ℚ))

end

end A227469.P715488350550444575

namespace A227469

/-- `(2*n+1)*A070780(n)/(n+1)²` -/
def P715488350550444575.Spec : Prop :=
  ∀ n, P715488350550444575.a n = (A227469 n : ℚ)

end A227469

/-! ## A227469.P17468838809373513013

`abs(C((n+1)², n)/(n+1)²*A157142(n))`
-/

namespace A227469.P17468838809373513013
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(Nat.choose ((n + 1) ^ 2) n : ℚ) / ((n + 1) ^ 2 : ℚ) * (A157142 n : ℚ)|

end

end A227469.P17468838809373513013

namespace A227469

/-- `abs(C((n+1)², n)/(n+1)²*A157142(n))` -/
def P17468838809373513013.Spec : Prop :=
  ∀ n, P17468838809373513013.a n = (A227469 n : ℚ)

end A227469

/-! ## A227469.P14044293683288237187

`(2*n+1)*C(∑[2*n+1], n)/∑[2*n+1]`
-/

namespace A227469.P14044293683288237187
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 * n + 1) * Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) n : ℚ) / ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℚ)

end

end A227469.P14044293683288237187

namespace A227469

/-- `(2*n+1)*C(∑[2*n+1], n)/∑[2*n+1]` -/
def P14044293683288237187.Spec : Prop :=
  ∀ n, P14044293683288237187.a n = (A227469 n : ℚ)

end A227469

/-!
# A227470: Least k such that n divides sigma(n*k).

The programs for A227470, there is no canonical definition to state claims against.
-/

/-! ## A227470.P16614335226881298892

`A272349(n+1)/(n+1)`
-/

namespace A227470.P16614335226881298892
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A272349 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A227470.P16614335226881298892

/-!
# A227471: Position of first 0 in the binary representation of prime(n), starting the count of positions at 1 for the least significant bit.

The programs for A227471, the canonical program `A227471.P1173354223507232729` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A227471 has offset 1).

The definition of A227471 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A227471.P1173354223507232729

`1+A023512(n+1)`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A227471

/-- `1+A023512(n+1)` -/
def P1173354223507232729.Spec : Prop :=
  ∀ n, P1173354223507232729.a n = A227471 (n + 1)

theorem P1173354223507232729.correct : P1173354223507232729.Spec := by
  intro n
  simp only [A227471, Nat.add_sub_cancel]

end A227471

/-! ## A227471.P14158610925513186500

`val(A089241(n+1), 2)`
-/

namespace A227471.P14158610925513186500
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A089241 (n + 1)).toNat 2

end

end A227471.P14158610925513186500

namespace A227471

/-- `val(A089241(n+1), 2)` -/
def P14158610925513186500.Spec : Prop :=
  ∀ n, (P14158610925513186500.a n : ℤ) = A227471 (n + 1)

end A227471

/-! ## A227471.P5904337332955529507

`log2(A068504(n+1))+1`
-/

namespace A227471.P5904337332955529507
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A068504 (n + 1) : ℝ) + 1

end

end A227471.P5904337332955529507

namespace A227471

/-- `log2(A068504(n+1))+1` -/
def P5904337332955529507.Spec : Prop :=
  ∀ n, P5904337332955529507.a n = (A227471 (n + 1) : ℝ)

end A227471

/-! ## A227471.P16804029088652026276

`val(A008864(n+1), 2)+1`
-/

namespace A227471.P16804029088652026276
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A008864 (n + 1)).toNat 2 + 1

end

end A227471.P16804029088652026276

namespace A227471

/-- `val(A008864(n+1), 2)+1` -/
def P16804029088652026276.Spec : Prop :=
  ∀ n, (P16804029088652026276.a n : ℤ) = A227471 (n + 1)

end A227471

/-! ## A227471.P4219110653741080940

`val(A028815(n+1), 2)+1`
-/

namespace A227471.P4219110653741080940
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A028815 (n + 1)).toNat 2 + 1

end

end A227471.P4219110653741080940

namespace A227471

/-- `val(A028815(n+1), 2)+1` -/
def P4219110653741080940.Spec : Prop :=
  ∀ n, (P4219110653741080940.a n : ℤ) = A227471 (n + 1)

end A227471

/-! ## A227471.P15077624019851304721

`val(A055670(n+1), 2)+1`
-/

namespace A227471.P15077624019851304721
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A055670 (n + 1)).toNat 2 + 1

end

end A227471.P15077624019851304721

namespace A227471

/-- `val(A055670(n+1), 2)+1` -/
def P15077624019851304721.Spec : Prop :=
  ∀ n, (P15077624019851304721.a n : ℤ) = A227471 (n + 1)

end A227471

/-! ## A227471.P1910169979839027195

`val(A072055(n+1)+1, 2)`
-/

namespace A227471.P1910169979839027195
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A072055 (n + 1) + 1).toNat 2

end

end A227471.P1910169979839027195

namespace A227471

/-- `val(A072055(n+1)+1, 2)` -/
def P1910169979839027195.Spec : Prop :=
  ∀ n, (P1910169979839027195.a n : ℤ) = A227471 (n + 1)

end A227471

/-! ## A227471.P14756841989632913029

`val(A131993(n+1), 2)+1`
-/

namespace A227471.P14756841989632913029
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A131993 (n + 1)).toNat 2 + 1

end

end A227471.P14756841989632913029

namespace A227471

/-- `val(A131993(n+1), 2)+1` -/
def P14756841989632913029.Spec : Prop :=
  ∀ n, (P14756841989632913029.a n : ℤ) = A227471 (n + 1)

end A227471

/-! ## A227471.P4119113702153490139

`val(A247159(n+1), 2)+1`
-/

namespace A227471.P4119113702153490139
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A247159 (n + 1)).toNat 2 + 1

end

end A227471.P4119113702153490139

namespace A227471

/-- `val(A247159(n+1), 2)+1` -/
def P4119113702153490139.Spec : Prop :=
  ∀ n, (P4119113702153490139.a n : ℤ) = A227471 (n + 1)

end A227471

/-! ## A227471.P8495055040840998034

`val(A100484(n+1)+2, 2)`
-/

namespace A227471.P8495055040840998034
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A100484 (n + 1) + 2).toNat 2

end

end A227471.P8495055040840998034

namespace A227471

/-- `val(A100484(n+1)+2, 2)` -/
def P8495055040840998034.Spec : Prop :=
  ∀ n, (P8495055040840998034.a n : ℤ) = A227471 (n + 1)

end A227471

/-! ## A227471.P15594312712138573814

`val(A240068(n+1), 2)-2`
-/

namespace A227471.P15594312712138573814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (A240068 (n + 1)).toNat 2 : ℤ) - 2

end

end A227471.P15594312712138573814

namespace A227471

/-- `val(A240068(n+1), 2)-2` -/
def P15594312712138573814.Spec : Prop :=
  ∀ n, P15594312712138573814.a n = A227471 (n + 1)

end A227471

/-! ## A227471.P4435992938573749652

`val(A000040(n+1)+1, 2)+1`
-/

namespace A227471.P4435992938573749652
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A000040 (n + 1) + 1).toNat 2 + 1

end

end A227471.P4435992938573749652

namespace A227471

/-- `val(A000040(n+1)+1, 2)+1` -/
def P4435992938573749652.Spec : Prop :=
  ∀ n, (P4435992938573749652.a n : ℤ) = A227471 (n + 1)

end A227471

/-! ## A227471.P14055480305726169692

`A005496(A023512(n+1))`
-/

namespace A227471.P14055480305726169692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005496 (A023512 (n + 1)).toNat

end

end A227471.P14055480305726169692

namespace A227471

/-- `A005496(A023512(n+1))` -/
def P14055480305726169692.Spec : Prop :=
  ∀ n, P14055480305726169692.a n = A227471 (n + 1)

end A227471

/-! ## A227471.P14750681977463138846

`A000005(A068504(n+1))`
-/

namespace A227471.P14750681977463138846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A068504 (n + 1)).toNat

end

end A227471.P14750681977463138846

namespace A227471

/-- `A000005(A068504(n+1))` -/
def P14750681977463138846.Spec : Prop :=
  ∀ n, P14750681977463138846.a n = A227471 (n + 1)

end A227471

/-! ## A227471.P5594745739505525295

`A001222(2*A068504(n+1))`
-/

namespace A227471.P5594745739505525295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (2 * A068504 (n + 1)).toNat

end

end A227471.P5594745739505525295

namespace A227471

/-- `A001222(2*A068504(n+1))` -/
def P5594745739505525295.Spec : Prop :=
  ∀ n, P5594745739505525295.a n = A227471 (n + 1)

end A227471

/-! ## A227471.P9710574791890073678

`A001222(A068504(n+1)+A068504(n+1))`
-/

namespace A227471.P9710574791890073678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A068504 (n + 1) + A068504 (n + 1)).toNat

end

end A227471.P9710574791890073678

namespace A227471

/-- `A001222(A068504(n+1)+A068504(n+1))` -/
def P9710574791890073678.Spec : Prop :=
  ∀ n, P9710574791890073678.a n = A227471 (n + 1)

end A227471

/-! ## A227471.P7113277170848156551

`A000005(A008864(n+1)/A057024(n+1))`
-/

namespace A227471.P7113277170848156551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((A008864 (n + 1) : ℚ) / (A057024 (n + 1) : ℚ))).toNat

end

end A227471.P7113277170848156551

namespace A227471

/-- `A000005(A008864(n+1)/A057024(n+1))` -/
def P7113277170848156551.Spec : Prop :=
  ∀ n, P7113277170848156551.a n = A227471 (n + 1)

end A227471

/-! ## A227471.P3182450052466612448

`val(A001747(n+2)+2, 2)`
-/

namespace A227471.P3182450052466612448
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A001747 (n + 2) + 2).toNat 2

end

end A227471.P3182450052466612448

namespace A227471

/-- `val(A001747(n+2)+2, 2)` -/
def P3182450052466612448.Spec : Prop :=
  ∀ n, (P3182450052466612448.a n : ℤ) = A227471 (n + 1)

end A227471

/-! ## A227471.P6829708155090572350

`val(record[A000010(n+1)+2], 2)+1`
-/

namespace A227471.P6829708155090572350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat 2 + 1

end

end A227471.P6829708155090572350

namespace A227471

/-- `val(record[A000010(n+1)+2], 2)+1` -/
def P6829708155090572350.Spec : Prop :=
  ∀ n, (P6829708155090572350.a n : ℤ) = A227471 (n + 1)

end A227471

/-! ## A227471.P12248951021058899107

`val(record[A006530(n+2)+1], 2)+1`
-/

namespace A227471.P12248951021058899107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat 2 + 1

end

end A227471.P12248951021058899107

namespace A227471

/-- `val(record[A006530(n+2)+1], 2)+1` -/
def P12248951021058899107.Spec : Prop :=
  ∀ n, (P12248951021058899107.a n : ℤ) = A227471 (n + 1)

end A227471

/-!
# A227474: Denominator/27 of hypergeom([n+1/2,1],[n+3],-3).

The programs for A227474, there is no canonical definition to state claims against.
-/

/-! ## A227474.P11565641652951816793

`lcm(8, A000168(n))/8`
-/

namespace A227474.P11565641652951816793
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 8 (A000168 n) : ℚ) / 8

end

end A227474.P11565641652951816793

/-! ## A227474.P904229592286339521

`3^(n-1)*A161200(n+2)`
-/

namespace A227474.P904229592286339521
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (A161200 (n + 2) : ℚ)

end

end A227474.P904229592286339521

/-! ## A227474.P2330976635548008333

`gcd(∏[A124647(n)], A000168(n))`
-/

namespace A227474.P2330976635548008333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124647 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (∏ j ∈ Finset.range (n + 1), f1 j) (A000168 n)

end

end A227474.P2330976635548008333

/-! ## A227474.P6290494890860880114

`A000168(n)/A048896(n+1)`
-/

namespace A227474.P6290494890860880114
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000168 n : ℚ) / (A048896 (n + 1) : ℚ)

end

end A227474.P6290494890860880114

/-! ## A227474.P16442443099168081989

`A000168(n)/gcd(8, A316598(n+1))`
-/

namespace A227474.P16442443099168081989
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000168 n : ℚ) / (Int.gcd 8 (A316598 (n + 1)) : ℚ)

end

end A227474.P16442443099168081989

/-!
# A227475: Cubes which are sum of three consecutive primes.

The programs for A227475, there is no canonical definition to state claims against.
-/

/-! ## A227475.P7993116837077549705

`A076306(n+1)^3`
-/

namespace A227475.P7993116837077549705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076306 (n + 1) ^ 3

end

end A227475.P7993116837077549705

/-! ## A227475.P14078177649858906065

`or(1, A076306(Δ[n²]-n)^3)`
-/

namespace A227475.P14078177649858906065
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A076306 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat ^ 3)

end

end A227475.P14078177649858906065

/-! ## A227475.P17023154677881353968

`record[A076306(A328399(n))^3]`
-/

namespace A227475.P17023154677881353968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076306 (A328399 n).toNat ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A227475.P17023154677881353968

/-! ## A227475.P4228147865959184062

`A076306(2*n-n+1)²*A076306(n+1)`
-/

namespace A227475.P4228147865959184062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076306 ((2 * n : ℤ) - (n : ℤ) + 1).toNat ^ 2 * A076306 (n + 1)

end

end A227475.P4228147865959184062

/-! ## A227475.P10782408303916500593

`A076306(n+1)²*record[A076306(A328399(n))]`
-/

namespace A227475.P10782408303916500593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076306 (A328399 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076306 (n + 1) ^ 2 * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A227475.P10782408303916500593

/-! ## A227475.P2270184060834535895

`A076306(n+1)²*A076306(n+1)/A001222(A198273(n+1))`
-/

namespace A227475.P2270184060834535895
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A076306 (n + 1) ^ 2 * A076306 (n + 1) : ℚ) / (A001222 (A198273 (n + 1)).toNat : ℚ)

end

end A227475.P2270184060834535895

/-! ## A227475.P16949324165786840008

`A000578(A076306(n+1))`
-/

namespace A227475.P16949324165786840008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (A076306 (n + 1)).toNat

end

end A227475.P16949324165786840008

/-! ## A227475.P8360834310773993213

`A184628(or(1, A076306(n+1)))`
-/

namespace A227475.P8360834310773993213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184628 (Int.lor 1 (A076306 (n + 1))).toNat

end

end A227475.P8360834310773993213

/-! ## A227475.P11950344340322074772

`A184628(A076306(n+1)+(2*n)%2)`
-/

namespace A227475.P11950344340322074772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184628 (A076306 (n + 1) + ((2 * n % 2 : ℕ) : ℤ)).toNat

end

end A227475.P11950344340322074772

/-! ## A227475.P8591213941594221753

`A184628(A076306(A000027(n+1)))`
-/

namespace A227475.P8591213941594221753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184628 (A076306 (A000027 (n + 1)).toNat).toNat

end

end A227475.P8591213941594221753

/-! ## A227475.P8879338085986527845

`A184628(A076306(n+1)%A020233(n+1))`
-/

namespace A227475.P8879338085986527845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184628 (Int.tmod (A076306 (n + 1)) (A020233 (n + 1))).toNat

end

end A227475.P8879338085986527845

/-!
# A227476: Numbers whose sum of semiprime divisors (A076290) is a positive square.

The programs for A227476, there is no canonical definition to state claims against.
-/

/-! ## A227476.P4066945305454372806

`eq[A017877(A286852(n)), A066882(n)]`
-/

namespace A227476.P4066945305454372806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017877 (A286852 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066882 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A227476.P4066945305454372806

/-!
# A227477: Exponent of the group of Lipschitz quaternions in a reduced system modulo n.

The programs for A227477, there is no canonical definition to state claims against.
-/

/-! ## A227477.P11205833381272540366

`lcm(n+1, A005066(n+1)-1)`
-/

namespace A227477.P11205833381272540366
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n + 1 : ℤ) (A005066 (n + 1) - 1)

end

end A227477.P11205833381272540366

/-! ## A227477.P5754121163515472943

`lcm(n%10+1, A327568((n+1)/2^val(n+1, 2)))`
-/

namespace A227477.P5754121163515472943
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((n % 10 + 1 : ℕ) : ℤ) (A327568 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ))).toNat)

end

end A227477.P5754121163515472943

/-! ## A227477.P17486903923542744007

`gcd(A099894(n), A327568(n+1))`
-/

namespace A227477.P17486903923542744007
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A099894 n) (A327568 (n + 1))

end

end A227477.P17486903923542744007

/-! ## A227477.P7237047393140564106

`A009262(n+1)*A206787(n+1)`
-/

namespace A227477.P7237047393140564106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009262 (n + 1) * A206787 (n + 1)

end

end A227477.P7237047393140564106

/-! ## A227477.P17485717674079186176

`A127699(n+1)*A206787(n+1)`
-/

namespace A227477.P17485717674079186176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127699 (n + 1) * A206787 (n + 1)

end

end A227477.P17485717674079186176

/-!
# A227479: Number of pairs of 2 X 2 matrices over Z/nZ that commute.

The programs for A227479, there is no canonical definition to state claims against.
-/

/-! ## A227479.P5809676766365686849

`(n+1)^8-A227433(n+1)`
-/

namespace A227479.P5809676766365686849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 8 : ℤ) - A227433 (n + 1)

end

end A227479.P5809676766365686849

/-! ## A227479.P10318873483622227316

`(n+1)^3*A368743(n+1)`
-/

namespace A227479.P10318873483622227316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 3 : ℤ) * A368743 (n + 1)

end

end A227479.P10318873483622227316

/-! ## A227479.P16949616407261561454

`∑{d}[n+1, A059378(#)*A084220((n+1)/#)]`
-/

namespace A227479.P16949616407261561454
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A059378 d * A084220 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A227479.P16949616407261561454

/-! ## A227479.P3069159081548850504

`∑{d}[n+1, A069091(#)*A372950((n+1)/#)]`
-/

namespace A227479.P3069159081548850504
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A069091 d * A372950 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A227479.P3069159081548850504

/-!
# A227480: Triangular numbers of the form p^2 - 1 where p is a prime.

The programs for A227480, there is no canonical definition to state claims against.
-/

/-! ## A227480.P17168010719043904976

`A078699(n+1)²-1`
-/

namespace A227480.P17168010719043904976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078699 (n + 1) ^ 2 - 1

end

end A227480.P17168010719043904976

/-! ## A227480.P12039110512699299274

`A225115(comp[A006451(n)])`
-/

namespace A227480.P12039110512699299274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006451 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225115 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A227480.P12039110512699299274

/-!
# A227481: Number of squares in row n of the triangle in A069011.

The programs for A227481, there is no canonical definition to state claims against.
-/

/-! ## A227481.P694830547026626354

`∑{d}[n, A024360(#)]+1`
-/

namespace A227481.P694830547026626354
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A024360 d + 1

end

end A227481.P694830547026626354

/-! ## A227481.P4461127474632218356

`A056137(A028310(n))+1`
-/

namespace A227481.P4461127474632218356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056137 (A028310 n).toNat + 1

end

end A227481.P4461127474632218356

/-! ## A227481.P17198866954624628328

`A056137(A065033(2*n))+1`
-/

namespace A227481.P17198866954624628328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056137 (A065033 (2 * n)).toNat + 1

end

end A227481.P17198866954624628328

/-! ## A227481.P17892712489753906905

`A056137(A000007(n)+n)+1`
-/

namespace A227481.P17892712489753906905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056137 (A000007 n + (n : ℤ)).toNat + 1

end

end A227481.P17892712489753906905

/-! ## A227481.P8270951152115739133

`1-(A025459(A025459(n))-∑{d}[n, A024360(#)])`
-/

namespace A227481.P8270951152115739133
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A025459 (A025459 n).toNat - ∑ d ∈ Nat.divisors (f1 n), A024360 d)

end

end A227481.P8270951152115739133

/-!
# A227499: Number of the Lipschitz quaternions in a reduced system modulo n.

The programs for A227499, the canonical program `A227499.P775430752148590656` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A227499 has offset 1).

The definition of A227499 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A227499.P775430752148590656

`(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]*A208895(n+1)`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A227499

/-- `(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]*A208895(n+1)` -/
def P775430752148590656.Spec : Prop :=
  ∀ n, P775430752148590656.a n = (A227499 (n + 1) : ℚ)

end A227499

/-! ## A227499.P13326229344918954203

`Δ[A002088(n)]*A208895(n+1)`
-/

namespace A227499.P13326229344918954203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A208895 (n + 1)

end

end A227499.P13326229344918954203

namespace A227499

/-- `Δ[A002088(n)]*A208895(n+1)` -/
def P13326229344918954203.Spec : Prop :=
  ∀ n, P13326229344918954203.a n = A227499 (n + 1)

end A227499

/-! ## A227499.P13258632866162790090

`Δ[A005728(n)]*A208895(n+1)`
-/

namespace A227499.P13258632866162790090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A208895 (n + 1)

end

end A227499.P13258632866162790090

namespace A227499

/-- `Δ[A005728(n)]*A208895(n+1)` -/
def P13258632866162790090.Spec : Prop :=
  ∀ n, P13258632866162790090.a n = A227499 (n + 1)

end A227499

/-! ## A227499.P6447437298302036054

`A000010(n+1)*A208895(n+1)`
-/

namespace A227499.P6447437298302036054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) * A208895 (n + 1)

end

end A227499.P6447437298302036054

namespace A227499

/-- `A000010(n+1)*A208895(n+1)` -/
def P6447437298302036054.Spec : Prop :=
  ∀ n, P6447437298302036054.a n = A227499 (n + 1)

end A227499

/-! ## A227499.P2967486387724918992

`A239613(n+1)/∏{e}[n+1, #+1]`
-/

namespace A227499.P2967486387724918992
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A239613 (n + 1) : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℚ)

end

end A227499.P2967486387724918992

namespace A227499

/-- `A239613(n+1)/∏{e}[n+1, #+1]` -/
def P2967486387724918992.Spec : Prop :=
  ∀ n, P2967486387724918992.a n = (A227499 (n + 1) : ℚ)

end A227499

/-! ## A227499.P12993012148188401601

`A239613(n+1)/Δ[A054519(n)]`
-/

namespace A227499.P12993012148188401601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054519 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A239613 (n + 1) : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A227499.P12993012148188401601

namespace A227499

/-- `A239613(n+1)/Δ[A054519(n)]` -/
def P12993012148188401601.Spec : Prop :=
  ∀ n, P12993012148188401601.a n = (A227499 (n + 1) : ℚ)

end A227499

/-! ## A227499.P16961928661783024421

`A239613(n+1)/A000005(n+1)`
-/

namespace A227499.P16961928661783024421
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A239613 (n + 1) : ℚ) / (A000005 (n + 1) : ℚ)

end

end A227499.P16961928661783024421

namespace A227499

/-- `A239613(n+1)/A000005(n+1)` -/
def P16961928661783024421.Spec : Prop :=
  ∀ n, P16961928661783024421.a n = (A227499 (n + 1) : ℚ)

end A227499

