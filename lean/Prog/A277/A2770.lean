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
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C032
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C012
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
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
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
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A277002: Numerators of an asymptotic series for the Gamma function (odd power series).

The programs for A277002, there is no canonical definition to state claims against.
-/

/-! ## A277002.P1600319829141917472

`-((-1)^n*A282898(n+1))`
-/

namespace A277002.P1600319829141917472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -((-1) ^ n * A282898 (n + 1))

end

end A277002.P1600319829141917472

/-! ## A277002.P3609145487046879253

`A033999(n+1)*A282898(n+1)`
-/

namespace A277002.P3609145487046879253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (n + 1) * A282898 (n + 1)

end

end A277002.P3609145487046879253

/-! ## A277002.P2420085107970280645

`-A344917(A014261(n+1))`
-/

namespace A277002.P2420085107970280645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A344917 (A014261 (n + 1)).toNat

end

end A277002.P2420085107970280645

/-! ## A277002.P12392725989797879545

`A230403(A002064(n))-A344917(2*n+1)`
-/

namespace A277002.P12392725989797879545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230403 (A002064 n).toNat - A344917 (2 * n + 1)

end

end A277002.P12392725989797879545

/-! ## A277002.P1596633251370037571

`A160498(A110286(n))-A344917(2*n+1)`
-/

namespace A277002.P1596633251370037571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160498 (A110286 n).toNat - A344917 (2 * n + 1)

end

end A277002.P1596633251370037571

/-!
# A277003: Denominators of an asymptotic series for the Gamma function (odd power series).

The programs for A277003, there is no canonical definition to state claims against.
-/

/-! ## A277003.P16697068967485691300

`A114721(n+1)/2`
-/

namespace A277003.P16697068967485691300
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A114721 (n + 1) : ℚ) / 2

end

end A277003.P16697068967485691300

/-! ## A277003.P5874878802616701950

`24*A282899(n+1)`
-/

namespace A277003.P5874878802616701950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  24 * A282899 (n + 1)

end

end A277003.P5874878802616701950

/-! ## A277003.P16329114957768364812

`floor(A114721(A348553(n))/2)`
-/

namespace A277003.P16329114957768364812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A114721 (A348553 n).toNat : ℚ) / 2⌋

end

end A277003.P16329114957768364812

/-! ## A277003.P15690061685475843893

`A114721(A348553(n))/2*A007318(∑[n])`
-/

namespace A277003.P15690061685475843893
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A114721 (A348553 n).toNat : ℚ) / 2 * (A007318 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ)

end

end A277003.P15690061685475843893

/-! ## A277003.P4032716346197669223

`(A114721(A348553(n))/2)^A007318(C(2*n, 2))`
-/

namespace A277003.P4032716346197669223
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A114721 (A348553 n).toNat : ℚ) / 2) ^ (A007318 (Nat.choose (2 * n) 2) : ℤ)

end

end A277003.P4032716346197669223

/-!
# A277005: Least prime greater than n-th compositorial.

The programs for A277005, there is no canonical definition to state claims against.
-/

/-! ## A277005.P16170593374179598245

`A151800(A036691(n))`
-/

namespace A277005.P16170593374179598245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A036691 n).toNat

end

end A277005.P16170593374179598245

/-! ## A277005.P8579365568907493018

`A151800(∏[lt[∑{p}[n, #], n]])`
-/

namespace A277005.P8579365568907493018
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n), p

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f4 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A277005.P8579365568907493018

/-!
# A277006: a(n) = A005940(1+A003714(n)); permutation of squarefree numbers.

The programs for A277006, the canonical program `A277006.P8287458563155925466` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A277006 has offset 0).

The definition of A277006 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003714, A005940, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A277006.P8287458563155925466

`A005940(1+A003714(n))`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A277006

/-- `A005940(1+A003714(n))` -/
def P8287458563155925466.Spec : Prop :=
  ∀ n, P8287458563155925466.a n = A277006 n

theorem P8287458563155925466.correct : P8287458563155925466.Spec := by
  intro n
  simp only [A277006]

end A277006

/-! ## A277006.P16857140380459359213

`A019565(A048679(n))`
-/

namespace A277006.P16857140380459359213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019565 (A048679 n).toNat

end

end A277006.P16857140380459359213

namespace A277006

/-- `A019565(A048679(n))` -/
def P16857140380459359213.Spec : Prop :=
  ∀ n, P16857140380459359213.a n = A277006 n

end A277006

/-! ## A277006.P3010472567446120600

`A005940(record[xor(n, 2*n)/3]+1)`
-/

namespace A277006.P3010472567446120600
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.xor n (2 * n) : ℚ) / 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005940 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1)).toNat

end

end A277006.P3010472567446120600

namespace A277006

/-- `A005940(record[xor(n, 2*n)/3]+1)` -/
def P3010472567446120600.Spec : Prop :=
  ∀ n, P3010472567446120600.a n = A277006 n

end A277006

/-! ## A277006.P5777525640564045702

`A005940(A022340(n)/2+1)`
-/

namespace A277006.P5777525640564045702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005940 (SequenceMachineLib.roundAway ((A022340 n : ℚ) / 2 + 1)).toNat

end

end A277006.P5777525640564045702

namespace A277006

/-- `A005940(A022340(n)/2+1)` -/
def P5777525640564045702.Spec : Prop :=
  ∀ n, P5777525640564045702.a n = A277006 n

end A277006

/-! ## A277006.P4756306657803223260

`A019565(A087808(A003714(n)))`
-/

namespace A277006.P4756306657803223260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019565 (A087808 (A003714 n).toNat).toNat

end

end A277006.P4756306657803223260

namespace A277006

/-- `A019565(A087808(A003714(n)))` -/
def P4756306657803223260.Spec : Prop :=
  ∀ n, P4756306657803223260.a n = A277006 n

end A277006

/-! ## A277006.P7587777857100168958

`A302033(A227351(n))`
-/

namespace A277006.P7587777857100168958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302033 (A227351 n).toNat

end

end A277006.P7587777857100168958

namespace A277006

/-- `A302033(A227351(n))` -/
def P7587777857100168958.Spec : Prop :=
  ∀ n, P7587777857100168958.a n = A277006 n

end A277006

/-! ## A277006.P15042236384587819710

`A005117(A277196(n))`
-/

namespace A277006.P15042236384587819710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (A277196 n).toNat

end

end A277006.P15042236384587819710

namespace A277006

/-- `A005117(A277196(n))` -/
def P15042236384587819710.Spec : Prop :=
  ∀ n, P15042236384587819710.a n = A277006 n

end A277006

/-! ## A277006.P8719775103611766723

`filter[A366260(n), A008966(#)]`
-/

namespace A277006.P8719775103611766723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366260 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A277006.P8719775103611766723

namespace A277006

/-- `filter[A366260(n), A008966(#)]` -/
def P8719775103611766723.Spec : Prop :=
  ∀ n, P8719775103611766723.a n = A277006 n

end A277006

/-! ## A277006.P4429879524959041005

`filter[A005940(n+1), A008966(#)]`
-/

namespace A277006.P4429879524959041005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005940 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A277006.P4429879524959041005

namespace A277006

/-- `filter[A005940(n+1), A008966(#)]` -/
def P4429879524959041005.Spec : Prop :=
  ∀ n, P4429879524959041005.a n = A277006 n

end A277006

/-! ## A277006.P15366874305020665965

`A241916(A277332(n))`
-/

namespace A277006.P15366874305020665965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241916 (A277332 n).toNat

end

end A277006.P15366874305020665965

namespace A277006

/-- `A241916(A277332(n))` -/
def P15366874305020665965.Spec : Prop :=
  ∀ n, P15366874305020665965.a n = A277006 n

end A277006

/-!
# A277007: Number of maximal runs of 1-bits (in binary expansion of n) such that the length of run > 1 + the total number of zeros anywhere right of that run.

The programs for A277007, there is no canonical definition to state claims against.
-/

/-! ## A277007.P1868741462145988570

`A129251(5*A005940(n+1))`
-/

namespace A277007.P1868741462145988570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129251 (5 * A005940 (n + 1)).toNat

end

end A277007.P1868741462145988570

/-!
# A277008: Numbers k such that in the binary expansion of k no run of 1-bits is longer than 1 + the total number of 0-bits anywhere to the right of that run.

The programs for A277008, there is no canonical definition to state claims against.
-/

/-! ## A277008.P16681790195266618887

`comp[A277009(n+1)]`
-/

namespace A277008.P16681790195266618887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277009 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A277008.P16681790195266618887

/-! ## A277008.P12424188953973856558

`eq[0, A277007(n)]`
-/

namespace A277008.P12424188953973856558
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A277008.P12424188953973856558

/-! ## A277008.P9197093373464028057

`lt[A277007(n), A010051(A065091(n+1))]`
-/

namespace A277008.P9197093373464028057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A065091 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A277008.P9197093373464028057

/-! ## A277008.P16478018207280012623

`lt[A277007(n), A107286(A107286(n+1))]`
-/

namespace A277008.P16478018207280012623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107286 (A107286 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A277008.P16478018207280012623

/-! ## A277008.P7010393371270731246

`lt[A277007(n), A010051(A002144(n+1))]`
-/

namespace A277008.P7010393371270731246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A002144 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A277008.P7010393371270731246

/-! ## A277008.P11840961612923244644

`lt[A277007(n), A010051(A038872(n+1))]`
-/

namespace A277008.P11840961612923244644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A038872 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A277008.P11840961612923244644

/-! ## A277008.P11436957541278227178

`lt[A277007(n), A072994(A000040(n+1))]`
-/

namespace A277008.P11436957541278227178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072994 (A000040 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A277008.P11436957541278227178

/-!
# A277009: Numbers not in range of A277012: numbers such that at least one run of 1-bits in their binary expansion is longer than 1 + the total number of 0-bits anywhere right of that run.

The programs for A277009, there is no canonical definition to state claims against.
-/

/-! ## A277009.P10070472801396792813

`comp[A277008(n)]`
-/

namespace A277009.P10070472801396792813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277008 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A277009.P10070472801396792813

/-! ## A277009.P7867203061528911807

`lt[0, A277007(n)]`
-/

namespace A277009.P7867203061528911807
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A277009.P7867203061528911807

/-! ## A277009.P8412982834368717398

`eq[0, A277007(a(A277007(n)))]` with `a(0)=3`
-/

namespace A277009.P8412982834368717398
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f2 =>
  A277007 (f2 (A277007 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A277009.P8412982834368717398

/-! ## A277009.P5446209890025700322

`eq[0, A000038(n)^A277007(n)]`
-/

namespace A277009.P5446209890025700322
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000038 n : ℚ) ^ (A277007 n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n

end

end A277009.P5446209890025700322

/-! ## A277009.P3329032810394535926

`eq[1, gcd(A277007(n), A295609(n))]`
-/

namespace A277009.P3329032810394535926
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A277007 n) (A295609 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A277009.P3329032810394535926

/-! ## A277009.P4361467285056577305

`eq[2, A020639(A000010(n^A277007(n)))]`
-/

namespace A277009.P4361467285056577305
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A000010 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A277007 n : ℤ))).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A277009.P4361467285056577305

/-!
# A277010: a(n) = A156552(A005117(n)); permutation of Fibbinary numbers.

The programs for A277010, the canonical program `A277010.P12455459145895029986` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A277010 has offset 1).

The definition of A277010 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005117, A156552, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A277010.P12455459145895029986

`A156552(A005117(n+1))`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A277010

/-- `A156552(A005117(n+1))` -/
def P12455459145895029986.Spec : Prop :=
  ∀ n, P12455459145895029986.a n = A277010 (n + 1)

theorem P12455459145895029986.correct : P12455459145895029986.Spec := by
  intro n
  simp only [A277010, Nat.add_sub_cancel]

end A277010

/-! ## A277010.P8751436446298323987

`A156552(record[∏{p}[n, #]])`
-/

namespace A277010.P8751436446298323987
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156552 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A277010.P8751436446298323987

namespace A277010

/-- `A156552(record[∏{p}[n, #]])` -/
def P8751436446298323987.Spec : Prop :=
  ∀ n, P8751436446298323987.a n = A277010 (n + 1)

end A277010

/-! ## A277010.P16433784742555777186

`A156552(record[A007913(n+1)])`
-/

namespace A277010.P16433784742555777186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156552 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A277010.P16433784742555777186

namespace A277010

/-- `A156552(record[A007913(n+1)])` -/
def P16433784742555777186.Spec : Prop :=
  ∀ n, P16433784742555777186.a n = A277010 (n + 1)

end A277010

/-! ## A277010.P8285519963232749149

`A156552(record[A007947(n+1)])`
-/

namespace A277010.P8285519963232749149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156552 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A277010.P8285519963232749149

namespace A277010

/-- `A156552(record[A007947(n+1)])` -/
def P8285519963232749149.Spec : Prop :=
  ∀ n, P8285519963232749149.a n = A277010 (n + 1)

end A277010

/-! ## A277010.P1084973863440927220

`A156552(record[A019554(n+1)])`
-/

namespace A277010.P1084973863440927220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019554 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156552 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A277010.P1084973863440927220

namespace A277010

/-- `A156552(record[A019554(n+1)])` -/
def P1084973863440927220.Spec : Prop :=
  ∀ n, P1084973863440927220.a n = A277010 (n + 1)

end A277010

/-! ## A277010.P13663799927926014748

`A156552(record[A325314(n+1)])`
-/

namespace A277010.P13663799927926014748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325314 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156552 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A277010.P13663799927926014748

namespace A277010

/-- `A156552(record[A325314(n+1)])` -/
def P13663799927926014748.Spec : Prop :=
  ∀ n, P13663799927926014748.a n = A277010 (n + 1)

end A277010

/-! ## A277010.P5073706513840122079

`∑{d}[A005117(n+1), A297112(#)]`
-/

namespace A277010.P5073706513840122079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A297112 d

end

end A277010.P5073706513840122079

namespace A277010

/-- `∑{d}[A005117(n+1), A297112(#)]` -/
def P5073706513840122079.Spec : Prop :=
  ∀ n, P5073706513840122079.a n = A277010 (n + 1)

end A277010

/-! ## A277010.P10701020548015793722

`A156552(record[A206778(n+1)])`
-/

namespace A277010.P10701020548015793722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206778 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156552 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A277010.P10701020548015793722

namespace A277010

/-- `A156552(record[A206778(n+1)])` -/
def P10701020548015793722.Spec : Prop :=
  ∀ n, P10701020548015793722.a n = A277010 (n + 1)

end A277010

/-!
# A277011: Left inverse of A277012.

The programs for A277011, there is no canonical definition to state claims against.
-/

/-! ## A277011.P11509307039248087113

`A276075(A005940(1+n))`
-/

namespace A277011.P11509307039248087113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276075 (A005940 (1 + n)).toNat

end

end A277011.P11509307039248087113

/-! ## A277011.P1817739295574512979

`∑{d}[A005940(n+1), A276082(A297108(#))]`
-/

namespace A277011.P1817739295574512979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005940 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A276082 (A297108 d).toNat

end

end A277011.P1817739295574512979

/-! ## A277011.P13866192552263670174

`∑{e}[A278236(A276083(n)), #!]`
-/

namespace A277011.P13866192552263670174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278236 (A276083 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorial (Nat.factorization (f1 n).natAbs p)

end

end A277011.P13866192552263670174

/-! ## A277011.P11251159527318492314

`∑{e}[A331188(A253563(2*n)), #!]`
-/

namespace A277011.P11251159527318492314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331188 (A253563 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorial (Nat.factorization (f1 n).natAbs p)

end

end A277011.P11251159527318492314

/-! ## A277011.P18250444987024517736

`∑{e}[A086141(n+1), #!]`
-/

namespace A277011.P18250444987024517736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086141 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorial (Nat.factorization (f1 n).natAbs p)

end

end A277011.P18250444987024517736

/-! ## A277011.P3963435948901276951

`∑{e}[A086141(n+1), A000142(#)]`
-/

namespace A277011.P3963435948901276951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086141 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A000142 (Nat.factorization (f1 n).natAbs p)

end

end A277011.P3963435948901276951

/-!
# A277012: Factorial base representation of n is rewritten as a base-2 number with each nonzero digit k replaced by a run of k 1's (followed by one extra zero if not the rightmost run of 1's) and with each 0 kept as 0.

The programs for A277012, there is no canonical definition to state claims against.
-/

/-! ## A277012.P18260115615005733822

`A156552(A276076(n))`
-/

namespace A277012.P18260115615005733822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156552 (A276076 n).toNat

end

end A277012.P18260115615005733822

/-! ## A277012.P4578154359761536394

`A277022(A351576(n))`
-/

namespace A277012.P4578154359761536394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277022 (A351576 n).toNat

end

end A277012.P4578154359761536394

/-! ## A277012.P14829990819327461997

`A305493(A007623(n))`
-/

namespace A277012.P14829990819327461997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305493 (A007623 n).toNat

end

end A277012.P14829990819327461997

/-! ## A277012.P9619940863461142597

`A277022(A328770(n+1))/A134193(A030291(n+1))`
-/

namespace A277012.P9619940863461142597
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A277022 (A328770 (n + 1)).toNat : ℚ) / (A134193 (A030291 (n + 1)).toNat : ℚ)

end

end A277012.P9619940863461142597

/-! ## A277012.P8285575404838720555

`A277022(A328770(n+1))/A000034(A212848(n))`
-/

namespace A277012.P8285575404838720555
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A277022 (A328770 (n + 1)).toNat : ℚ) / (A000034 (A212848 n).toNat : ℚ)

end

end A277012.P8285575404838720555

/-! ## A277012.P2083634055951225991

`A277022(A328770(n+1))/A178815(n+1)`
-/

namespace A277012.P2083634055951225991
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A277022 (A328770 (n + 1)).toNat : ℚ) / (A178815 (n + 1) : ℚ)

end

end A277012.P2083634055951225991

/-! ## A277012.P11371450404579147800

`A277022(A328770(n+1))/A074823(A074822(n+1))`
-/

namespace A277012.P11371450404579147800
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A277022 (A328770 (n + 1)).toNat : ℚ) / (A074823 (A074822 (n + 1)).toNat : ℚ)

end

end A277012.P11371450404579147800

/-! ## A277012.P11630773736287225057

`A277022(A328770(n+1))/A014963(A329562(n))`
-/

namespace A277012.P11630773736287225057
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A277022 (A328770 (n + 1)).toNat : ℚ) / (A014963 (A329562 n).toNat : ℚ)

end

end A277012.P11630773736287225057

/-!
# A277013: a(n) = number of irreducible polynomial factors (counted with multiplicity) in the n-th Stern polynomial B(n,t).

The programs for A277013, there is no canonical definition to state claims against.
-/

/-! ## A277013.P17849812115546814988

`A277322(A260443(n+1))`
-/

namespace A277013.P17849812115546814988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277322 (A260443 (n + 1)).toNat

end

end A277013.P17849812115546814988

/-! ## A277013.P10183803812867617193

`∑{e}[A284011(n+1), #]`
-/

namespace A277013.P10183803812867617193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284011 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A277013.P10183803812867617193

/-! ## A277013.P4073463129447416006

`A001222(A284011(n+1))`
-/

namespace A277013.P4073463129447416006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A284011 (n + 1)).toNat

end

end A277013.P4073463129447416006

/-! ## A277013.P17259811248795286367

`A391238(n+1)+A391237(n+1)`
-/

namespace A277013.P17259811248795286367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391238 (n + 1) + A391237 (n + 1)

end

end A277013.P17259811248795286367

/-! ## A277013.P17006079457765536630

`sqrt(A277027(n+1))`
-/

namespace A277013.P17006079457765536630
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A277027 (n + 1) : ℝ)

end

end A277013.P17006079457765536630

/-! ## A277013.P3849301635902850733

`A000194(xor(2, A277027(n+1)+2))`
-/

namespace A277013.P3849301635902850733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (Int.xor 2 (A277027 (n + 1) + 2)).toNat

end

end A277013.P3849301635902850733

/-! ## A277013.P12701990023927847867

`A000196(A277027(n+1)%(n+3))`
-/

namespace A277013.P12701990023927847867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (Int.tmod (A277027 (n + 1)) (n + 3 : ℤ)).toNat

end

end A277013.P12701990023927847867

/-! ## A277013.P6298174518475183123

`A000196(A288710(n+1)+A277027(n+1))`
-/

namespace A277013.P6298174518475183123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A288710 (n + 1) + A277027 (n + 1)).toNat

end

end A277013.P6298174518475183123

/-! ## A277013.P16750208732669729218

`A277027(n+1)/A000196(A277027(n+1)+1)`
-/

namespace A277013.P16750208732669729218
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A277027 (n + 1) : ℚ) / (A000196 (A277027 (n + 1) + 1).toNat : ℚ)

end

end A277013.P16750208732669729218

/-! ## A277013.P598278395285996013

`A000196(A277027(2*(n+1))-1)`
-/

namespace A277013.P598278395285996013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A277027 (2 * (n + 1)) - 1).toNat

end

end A277013.P598278395285996013

/-!
# A277014: Positions of squares in A276573.

The programs for A277014, there is no canonical definition to state claims against.
-/

/-! ## A277014.P17695666413574660629

`A260732(A277015(n))`
-/

namespace A277014.P17695666413574660629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260732 (A277015 n).toNat

end

end A277014.P17695666413574660629

/-! ## A277014.P14235899189644684591

`A260732(sqrt(A277016(n)))`
-/

namespace A277014.P14235899189644684591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260732 (SequenceMachineLib.roundAway (Real.sqrt (A277016 n : ℝ))).toNat

end

end A277014.P14235899189644684591

/-! ## A277014.P5806102433618120099

`A260732(eq[0, A277024(n)])`
-/

namespace A277014.P5806102433618120099
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277024 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260732 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A277014.P5806102433618120099

/-! ## A277014.P11041779346623884519

`A260732(lt[A277024(n), 1])`
-/

namespace A277014.P11041779346623884519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277024 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260732 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A277014.P11041779346623884519

/-! ## A277014.P6103926135971841284

`A260732(eq[0, and(6, A277023(n))])`
-/

namespace A277014.P6103926135971841284
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 6 (A277023 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260732 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A277014.P6103926135971841284

/-! ## A277014.P13458138917200375535

`record[or(-A277024(n), A260732(n))]`
-/

namespace A277014.P13458138917200375535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (-A277024 n) (A260732 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A277014.P13458138917200375535

/-! ## A277014.P9706046805045221453

`A260732(record[n-A277023(n)*A277024(n)])`
-/

namespace A277014.P9706046805045221453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A277023 n * A277024 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260732 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A277014.P9706046805045221453

/-! ## A277014.P6423731239855762620

`record[A260732(n)-A277024(n)^A000267(n)]`
-/

namespace A277014.P6423731239855762620
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A260732 n : ℚ) - (A277024 n : ℚ) ^ (A000267 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A277014.P6423731239855762620

/-!
# A277015: Numbers whose squares are present in A276573 (the infinite trunk of least squares beanstalk).

The programs for A277015, there is no canonical definition to state claims against.
-/

/-! ## A277015.P17286075144336416162

`A000196(A277016(n))`
-/

namespace A277015.P17286075144336416162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A277016 n).toNat

end

end A277015.P17286075144336416162

/-! ## A277015.P12515920424027150614

`A000196(A276573(A277014(n)))`
-/

namespace A277015.P12515920424027150614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A276573 (A277014 n).toNat).toNat

end

end A277015.P12515920424027150614

/-! ## A277015.P5546895782769249015

`eq[0, A277024(n)]`
-/

namespace A277015.P5546895782769249015
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277024 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A277015.P5546895782769249015

/-! ## A277015.P10054963571735734242

`eq[0, and(6, A277023(n))]`
-/

namespace A277015.P10054963571735734242
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 6 (A277023 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A277015.P10054963571735734242

/-! ## A277015.P8859961037525159895

`lt[A277024(n), A001468(n)]`
-/

namespace A277015.P8859961037525159895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277024 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001468 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A277015.P8859961037525159895

/-! ## A277015.P5951420241584394119

`lt[A277024(n), abs(A033999(n))]`
-/

namespace A277015.P5951420241584394119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277024 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A033999 n|

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A277015.P5951420241584394119

/-! ## A277015.P4376977904856060833

`eq[n², A277023(A216972(n))]`
-/

namespace A277015.P4376977904856060833
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277023 (A216972 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A277015.P4376977904856060833

/-! ## A277015.P3055972546358642123

`eq[n², A277023(A283971(n))]`
-/

namespace A277015.P3055972546358642123
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277023 (A283971 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A277015.P3055972546358642123

/-! ## A277015.P3637844378281407734

`eq[sqrt(A277023(n)), A283971(n)]`
-/

namespace A277015.P3637844378281407734
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A277023 n : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283971 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℝ)) n

end

end A277015.P3637844378281407734

/-! ## A277015.P1462794800800616026

`eq[0, A000290(n)-A277023(n)]`
-/

namespace A277015.P1462794800800616026
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 n - A277023 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A277015.P1462794800800616026

/-! ## A277015.P829109108547976868

`eq[A277023(n)%4, A000035(n)]`
-/

namespace A277015.P829109108547976868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A277023 n) 4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A277015.P829109108547976868

/-! ## A277015.P16996551610237978232

`eq[0, A000045(A277023(n)-n²)]`
-/

namespace A277015.P16996551610237978232
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A277023 n - (n ^ 2 : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A277015.P16996551610237978232

/-! ## A277015.P10506855689848152896

`eq[1, A000041(A277023(n)-n²)]`
-/

namespace A277015.P10506855689848152896
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (A277023 n - (n ^ 2 : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A277015.P10506855689848152896

/-! ## A277015.P6511972999119970847

`lt[A277024(n), acot(A018252(n+2))]`
-/

namespace A277015.P6511972999119970847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277024 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.acot (A018252 (n + 2) : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A277015.P6511972999119970847

/-! ## A277015.P14761454126090735608

`record[n-A000267(n)*A277024(n)]`
-/

namespace A277015.P14761454126090735608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A000267 n * A277024 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A277015.P14761454126090735608

/-! ## A277015.P1772019410347488801

`record[n-A000290(n)*A277024(n)]`
-/

namespace A277015.P1772019410347488801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A000290 n * A277024 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A277015.P1772019410347488801

/-! ## A277015.P17765805163084866534

`record[n-A260732(n)*A277024(n)]`
-/

namespace A277015.P17765805163084866534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A260732 n * A277024 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A277015.P17765805163084866534

/-! ## A277015.P11953187235702378376

`record[n-A277023(n)*A277024(n)]`
-/

namespace A277015.P11953187235702378376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A277023 n * A277024 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A277015.P11953187235702378376

/-! ## A277015.P11518997020842992875

`lt[A277024(n), 4/A005117(n+1)]`
-/

namespace A277015.P11518997020842992875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277024 n

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  4 / (A005117 (n + 1) : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n

end

end A277015.P11518997020842992875

/-! ## A277015.P3786010842369191259

`record[n-A117656(n+1)*A277024(n)]`
-/

namespace A277015.P3786010842369191259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A117656 (n + 1) * A277024 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A277015.P3786010842369191259

/-!
# A277016: Squares present in A276573 (the infinite trunk of least squares beanstalk).

The programs for A277016, there is no canonical definition to state claims against.
-/

/-! ## A277016.P7730758096174166483

`A276573(A277014(n))`
-/

namespace A277016.P7730758096174166483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276573 (A277014 n).toNat

end

end A277016.P7730758096174166483

/-! ## A277016.P7814586108994514820

`A277015(n)²`
-/

namespace A277016.P7814586108994514820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277015 n ^ 2

end

end A277016.P7814586108994514820

/-! ## A277016.P14540445497467450745

`eq[0, A277024(n)]²`
-/

namespace A277016.P14540445497467450745
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277024 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n ^ 2

end

end A277016.P14540445497467450745

/-! ## A277016.P13644152878461919332

`∩[n², A277023(n)]`
-/

namespace A277016.P13644152878461919332
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277023 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A277016.P13644152878461919332

/-! ## A277016.P11908958463752284694

`A277015(xor(1, xor(1, n)))^2`
-/

namespace A277016.P11908958463752284694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277015 (Nat.xor 1 (Nat.xor 1 n)) ^ 2

end

end A277016.P11908958463752284694

/-! ## A277016.P7213068312383499566

`A002620(2*A277015(n))`
-/

namespace A277016.P7213068312383499566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (2 * A277015 n).toNat

end

end A277016.P7213068312383499566

/-! ## A277016.P18159919269766692848

`A000290(eq[0, A277024(n)])`
-/

namespace A277016.P18159919269766692848
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277024 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A277016.P18159919269766692848

/-! ## A277016.P17775204158571977158

`A277023(lt[A277024(n), 1])`
-/

namespace A277016.P17775204158571977158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277024 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277023 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A277016.P17775204158571977158

/-! ## A277016.P10551184726788151763

`∩[A277023(n), A000290(n)]`
-/

namespace A277016.P10551184726788151763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277023 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A277016.P10551184726788151763

/-! ## A277016.P12517768465610265515

`∩[A277023(n), A188915(n)]`
-/

namespace A277016.P12517768465610265515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277023 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188915 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A277016.P12517768465610265515

/-!
# A277017: Number of maximal runs of 1-bits (in binary expansion of n) such that the length of run >= A000040(1 + the total number of zeros to the right of that run).

The programs for A277017, there is no canonical definition to state claims against.
-/

/-! ## A277017.P9471867424899222383

`A129251(A005940(1+n))`
-/

namespace A277017.P9471867424899222383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129251 (A005940 (1 + n)).toNat

end

end A277017.P9471867424899222383

/-! ## A277017.P764114536580862371

`A001221(A327939(A005940(n+1)))`
-/

namespace A277017.P764114536580862371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A327939 (A005940 (n + 1)).toNat).toNat

end

end A277017.P764114536580862371

/-! ## A277017.P11658472772360057787

`A001221(A327939(A332815(n)))`
-/

namespace A277017.P11658472772360057787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A327939 (A332815 n).toNat).toNat

end

end A277017.P11658472772360057787

/-! ## A277017.P1776208784820282033

`∑{p}[A327939(A332815(n)), A001222(#)]`
-/

namespace A277017.P1776208784820282033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327939 (A332815 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A001222 p

end

end A277017.P1776208784820282033

/-! ## A277017.P2683860656525349253

`∑{p}[A327939(A332815(n)), A005131(#)]`
-/

namespace A277017.P2683860656525349253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327939 (A332815 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A005131 p

end

end A277017.P2683860656525349253

/-! ## A277017.P411726619970224296

`∑{p}[A327939(A332815(n)), A051707(#)]`
-/

namespace A277017.P411726619970224296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327939 (A332815 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A051707 p

end

end A277017.P411726619970224296

/-! ## A277017.P15801457519376536093

`∑{p}[A327939(A332815(n)), A327939(#)]`
-/

namespace A277017.P15801457519376536093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327939 (A332815 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A327939 p

end

end A277017.P15801457519376536093

/-! ## A277017.P11903810532773785009

`A129251(A332815(n))`
-/

namespace A277017.P11903810532773785009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129251 (A332815 n).toNat

end

end A277017.P11903810532773785009

/-! ## A277017.P9906744152324523366

`(1-A126010(n))*A277007(n)`
-/

namespace A277017.P9906744152324523366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A126010 n) * A277007 n

end

end A277017.P9906744152324523366

/-! ## A277017.P18001424104794168768

`and(A004396(A245608(n+1)), A277007(n))`
-/

namespace A277017.P18001424104794168768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A004396 (A245608 (n + 1)).toNat) (A277007 n)

end

end A277017.P18001424104794168768

/-! ## A277017.P14496202502707985145

`A277007(n)%(A108216(n)+1)`
-/

namespace A277017.P14496202502707985145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A277007 n) (A108216 n + 1)

end

end A277017.P14496202502707985145

/-! ## A277017.P4567504011667218382

`and(A047351(A002522(n)), A277007(n))`
-/

namespace A277017.P4567504011667218382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A047351 (A002522 n).toNat) (A277007 n)

end

end A277017.P4567504011667218382

/-!
# A277018: Numbers n for which A277017(n) = 0; range of A277022 sorted into ascending order.

The programs for A277018, there is no canonical definition to state claims against.
-/

/-! ## A277018.P2561197348460510895

`comp[A277019(n+1)]`
-/

namespace A277018.P2561197348460510895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277019 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A277018.P2561197348460510895

/-! ## A277018.P5894853691305053892

`eq[0, A277017(n)]`
-/

namespace A277018.P5894853691305053892
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277017 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A277018.P5894853691305053892

/-! ## A277018.P5480578077486481507

`lt[A277017(A028310(n)), 1]`
-/

namespace A277018.P5480578077486481507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277017 (A028310 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A277018.P5480578077486481507

/-! ## A277018.P6737092190097059574

`lt[A277017(A065033(2*n)), 1]`
-/

namespace A277018.P6737092190097059574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277017 (A065033 (2 * n)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A277018.P6737092190097059574

/-! ## A277018.P3929095136362042716

`lt[A277017(n), A289079(A006530(n+1))]`
-/

namespace A277018.P3929095136362042716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277017 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289079 (A006530 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A277018.P3929095136362042716

/-! ## A277018.P7362959639788499733

`lt[A277017(n), A154629(A151569(2*n+3))]`
-/

namespace A277018.P7362959639788499733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277017 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154629 (A151569 (2 * n + 3)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A277018.P7362959639788499733

/-! ## A277018.P4428953245948284907

`eq[0, A342023(A005940(n+1))]`
-/

namespace A277018.P4428953245948284907
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342023 (A005940 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A277018.P4428953245948284907

/-! ## A277018.P13073101763769056819

`record[A228087(n)]%A072857(n+1)`
-/

namespace A277018.P13073101763769056819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228087 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A072857 (n + 1))

end

end A277018.P13073101763769056819

/-! ## A277018.P2418113506955288236

`lt[A277017(n), A214075(A000217(n))]`
-/

namespace A277018.P2418113506955288236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277017 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214075 (A000217 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A277018.P2418113506955288236

/-!
# A277019: Numbers not in range of A277022.

The programs for A277019, there is no canonical definition to state claims against.
-/

/-! ## A277019.P7855295099187245482

`comp[A277018(n)]`
-/

namespace A277019.P7855295099187245482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277018 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A277019.P7855295099187245482

/-! ## A277019.P12357491984609651703

`lt[0, A277017(n)]`
-/

namespace A277019.P12357491984609651703
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277017 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A277019.P12357491984609651703

/-! ## A277019.P16848973360291277583

`eq[0, A277017(a(A277017(n)))]` with `a(0)=3`
-/

namespace A277019.P16848973360291277583
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f2 =>
  A277017 (f2 (A277017 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A277019.P16848973360291277583

/-! ## A277019.P5477074521942341012

`eq[1, gcd(A151800(n), A277017(n))]`
-/

namespace A277019.P5477074521942341012
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A151800 n) (A277017 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A277019.P5477074521942341012

/-! ## A277019.P6046618033522261072

`eq[1, A043545(A039956(n+1)*A277017(n))]`
-/

namespace A277019.P6046618033522261072
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043545 (A039956 (n + 1) * A277017 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A277019.P6046618033522261072

/-! ## A277019.P11947495195041294607

`eq[0, A256750(A005940(n+1))]`
-/

namespace A277019.P11947495195041294607
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256750 (A005940 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A277019.P11947495195041294607

/-! ## A277019.P141401200743578215

`eq[0, A256750(A332815(n))]`
-/

namespace A277019.P141401200743578215
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256750 (A332815 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A277019.P141401200743578215

/-!
# A277020: Unary-binary representation of Stern polynomials: a(n) = A156552(A260443(n)).

The programs for A277020, there is no canonical definition to state claims against.
-/

/-! ## A277020.P14242360775953843813

`A156552(A260443(n))`
-/

namespace A277020.P14242360775953843813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156552 (A260443 n).toNat

end

end A277020.P14242360775953843813

/-! ## A277020.P12226445113860172248

`∑{d}[A260443(n), A297112(#)]`
-/

namespace A277020.P12226445113860172248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A297112 d

end

end A277020.P12226445113860172248

/-! ## A277020.P9281507133080203625

`A156552(A277330(n)*A283989(n))`
-/

namespace A277020.P9281507133080203625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156552 (A277330 n * A283989 n).toNat

end

end A277020.P9281507133080203625

/-! ## A277020.P14642671582758422520

`A156552(A284553(n)*A284554(n))`
-/

namespace A277020.P14642671582758422520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156552 (A284553 n * A284554 n).toNat

end

end A277020.P14642671582758422520

/-! ## A277020.P5460890101026025361

`A156552(lcm(A284553(n), A284554(n)))`
-/

namespace A277020.P5460890101026025361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156552 (Int.lcm (A284553 n) (A284554 n))

end

end A277020.P5460890101026025361

/-!
# A277021: Left inverse of A277022.

The programs for A277021, there is no canonical definition to state claims against.
-/

/-! ## A277021.P15047041159570184147

`A276085(A005940(1+n))`
-/

namespace A277021.P15047041159570184147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276085 (A005940 (1 + n)).toNat

end

end A277021.P15047041159570184147

/-! ## A277021.P9859406313105351920

`A276085(A340364(n+1))+A276085(A340365(n+1))`
-/

namespace A277021.P9859406313105351920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276085 (A340364 (n + 1)).toNat + A276085 (A340365 (n + 1)).toNat

end

end A277021.P9859406313105351920

/-! ## A277021.P15517527565409755424

`A276085(A337375(n)*A337376(n))`
-/

namespace A277021.P15517527565409755424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276085 (A337375 n * A337376 n).toNat

end

end A277021.P15517527565409755424

/-! ## A277021.P11875779236954994486

`A276085(A340362(n+1)+A324106(n+1))`
-/

namespace A277021.P11875779236954994486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276085 (A340362 (n + 1) + A324106 (n + 1)).toNat

end

end A277021.P11875779236954994486

/-! ## A277021.P4048095306364689814

`A276085(A324641(n+1)-A324640(n+1))`
-/

namespace A277021.P4048095306364689814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276085 (A324641 (n + 1) - A324640 (n + 1)).toNat

end

end A277021.P4048095306364689814

/-! ## A277021.P9573791012989095504

`A276085(A340364(n+1)*A340365(n+1))`
-/

namespace A277021.P9573791012989095504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276085 (A340364 (n + 1) * A340365 (n + 1)).toNat

end

end A277021.P9573791012989095504

/-!
# A277022: Primorial base representation of n is rewritten as a base-2 number with each nonzero digit k replaced by a run of k 1's (followed by one extra zero if not the rightmost run of 1's) and with each 0 kept as 0.

The programs for A277022, there is no canonical definition to state claims against.
-/

/-! ## A277022.P4563799681416946197

`A305493(A049345(n))`
-/

namespace A277022.P4563799681416946197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305493 (A049345 n).toNat

end

end A277022.P4563799681416946197

/-!
# A277023: a(n) = A276573(A260732(n)); For n >= 1, a(n) = the next larger term right after each (n^2)-1 in the infinite trunk of least squares beanstalk.

The programs for A277023, there is no canonical definition to state claims against.
-/

/-! ## A277023.P1422486669526670424

`A276573(A260732(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A277023.P1422486669526670424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276573 (A260732 n).toNat

end

end A277023.P1422486669526670424

/-! ## A277023.P16709481255144235020

`A277024(n)+n²`
-/

namespace A277023.P16709481255144235020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277024 n + (n ^ 2 : ℤ)

end

end A277023.P16709481255144235020

/-! ## A277023.P5318497319224344418

`A000290(n)+A277024(n)%4`
-/

namespace A277023.P5318497319224344418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 n + Int.tmod (A277024 n) 4

end

end A277023.P5318497319224344418

/-! ## A277023.P15888995451978976141

`A002378(n)+A277024(n)-n`
-/

namespace A277023.P15888995451978976141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 n + (A277024 n - (n : ℤ))

end

end A277023.P15888995451978976141

/-! ## A277023.P14796257584673648383

`∑[A005843(n)]+A277024(n)-n`
-/

namespace A277023.P14796257584673648383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (A277024 n - (n : ℤ))

end

end A277023.P14796257584673648383

/-! ## A277023.P1196045962802670643

`A002061(n+1)+A277024(n)-(n+1)`
-/

namespace A277023.P1196045962802670643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002061 (n + 1) + (A277024 n - (n + 1 : ℤ))

end

end A277023.P1196045962802670643

/-! ## A277023.P2436140581548319706

`n²-(A000035(52*n)-A277024(n))`
-/

namespace A277023.P2436140581548319706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - (A000035 (52 * n) - A277024 n)

end

end A277023.P2436140581548319706

/-! ## A277023.P15626257967845183057

`A278517(A260732(n))+A277024(n)`
-/

namespace A277023.P15626257967845183057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278517 (A260732 n).toNat + A277024 n

end

end A277023.P15626257967845183057

/-! ## A277023.P2998015796705482402

`A276574(record[A276572(n)])`
-/

namespace A277023.P2998015796705482402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276572 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276574 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A277023.P2998015796705482402

/-! ## A277023.P651345884500834573

`A276574(A260733(n+1))`
-/

namespace A277023.P651345884500834573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276574 (A260733 (n + 1)).toNat

end

end A277023.P651345884500834573

/-! ## A277023.P8806823227946596964

`A276574(A260732(n+1)-1)`
-/

namespace A277023.P8806823227946596964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276574 (A260732 (n + 1) - 1).toNat

end

end A277023.P8806823227946596964

/-! ## A277023.P14060885501074139514

`A276573(A276572(A260733(A276581(A261222(n+1)))))`
-/

namespace A277023.P14060885501074139514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276573 (A276572 (A260733 (A276581 (A261222 (n + 1)).toNat).toNat).toNat).toNat

end

end A277023.P14060885501074139514

/-! ## A277023.P702489285483072966

`A276573(A276572(A260733(A276572(A276572(n+1)))))`
-/

namespace A277023.P702489285483072966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276573 (A276572 (A260733 (A276572 (A276572 (n + 1)).toNat).toNat).toNat).toNat

end

end A277023.P702489285483072966

/-! ## A277023.P814939026095954721

`A276574(lt[0, Δ[A276574(n)]])`
-/

namespace A277023.P814939026095954721
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276574 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276574 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A277023.P814939026095954721

/-! ## A277023.P1710897153358150362

`A276574(lt[A276574(n), A276574(n+1)])`
-/

namespace A277023.P1710897153358150362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276574 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276574 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276574 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A277023.P1710897153358150362

/-! ## A277023.P8241801361723825357

`A000290(n)-(A277024(A277015(n))-A277024(n))`
-/

namespace A277023.P8241801361723825357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 n - (A277024 (A277015 n).toNat - A277024 n)

end

end A277023.P8241801361723825357

/-! ## A277023.P1893785274369531820

`A276573(A260731(n²))`
-/

namespace A277023.P1893785274369531820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276573 (A260731 (n ^ 2)).toNat

end

end A277023.P1893785274369531820

/-! ## A277023.P8139112079660042677

`A276574(A276572(A260731(n*n)))`
-/

namespace A277023.P8139112079660042677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276574 (A276572 (A260731 (n * n)).toNat).toNat

end

end A277023.P8139112079660042677

/-! ## A277023.P10698754186460471058

`A278521(A260731(n²))+A000290(n)`
-/

namespace A277023.P10698754186460471058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278521 (A260731 (n ^ 2)).toNat + A000290 n

end

end A277023.P10698754186460471058

/-! ## A277023.P7524684526055790073

`A276574(A260731(n*(n+2)))`
-/

namespace A277023.P7524684526055790073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276574 (A260731 (n * (n + 2))).toNat

end

end A277023.P7524684526055790073

/-!
# A277024: a(n) = A277023(n) - n^2.

The programs for A277024, there is no canonical definition to state claims against.
-/

/-! ## A277024.P2683282103606949912

`A277023(n)-n²`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A277024.P2683282103606949912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277023 n - (n ^ 2 : ℤ)

end

end A277024.P2683282103606949912

/-! ## A277024.P15071422880041719532

`abs(A000290(n)-A277023(n))`
-/

namespace A277024.P15071422880041719532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000290 n - A277023 n|

end

end A277024.P15071422880041719532

/-! ## A277024.P17085733269598844372

`A277023(n)+1-A002522(n)`
-/

namespace A277024.P17085733269598844372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277023 n + 1 - A002522 n

end

end A277024.P17085733269598844372

/-! ## A277024.P9592534880769833012

`A002828(A277023(n)-n*n)`
-/

namespace A277024.P9592534880769833012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002828 (A277023 n - (n * n : ℤ)).toNat

end

end A277024.P9592534880769833012

/-! ## A277024.P1472343996043370309

`A055646(A277023(n)-n*n)`
-/

namespace A277024.P1472343996043370309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055646 (A277023 n - (n * n : ℤ)).toNat

end

end A277024.P1472343996043370309

/-! ## A277024.P11467150773398628393

`(A277023(n)+A110397(n+2))%4`
-/

namespace A277024.P11467150773398628393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A277023 n + A110397 (n + 2)) 4

end

end A277024.P11467150773398628393

/-! ## A277024.P9030565262091329072

`A055401(A277023(n)-A000290(n))`
-/

namespace A277024.P9030565262091329072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055401 (A277023 n - A000290 n).toNat

end

end A277024.P9030565262091329072

/-! ## A277024.P11398848957427153235

`∑{d}[A000290(n)-A277023(n), A000045(#)]`
-/

namespace A277024.P11398848957427153235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 n - A277023 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000045 d

end

end A277024.P11398848957427153235

/-! ## A277024.P12632785567735621919

`A262678(A277023(n))`
-/

namespace A277024.P12632785567735621919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262678 (A277023 n).toNat

end

end A277024.P12632785567735621919

/-! ## A277024.P13088529898675914460

`A278521(A260732(n))`
-/

namespace A277024.P13088529898675914460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278521 (A260732 n).toNat

end

end A277024.P13088529898675914460

/-! ## A277024.P17690530981736581794

`A276574(record[A276572(n)])-n²`
-/

namespace A277024.P17690530981736581794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276572 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276574 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat - (n ^ 2 : ℤ)

end

end A277024.P17690530981736581794

/-! ## A277024.P12298470487249235251

`A276574(A260733(n+1))-n²`
-/

namespace A277024.P12298470487249235251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276574 (A260733 (n + 1)).toNat - (n ^ 2 : ℤ)

end

end A277024.P12298470487249235251

/-! ## A277024.P569440061639930302

`A276573(A260732(n))-A000290(n)`
-/

namespace A277024.P569440061639930302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276573 (A260732 n).toNat - A000290 n

end

end A277024.P569440061639930302

/-! ## A277024.P9294278020165940138

`A002260(A277023(n)-∑[n-2])-1`
-/

namespace A277024.P9294278020165940138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A277023 n - ∑ j ∈ Finset.range (n + 1), f1 j).toNat - 1

end

end A277024.P9294278020165940138

/-! ## A277024.P15014704221272005602

`A278521(A260731(n²))`
-/

namespace A277024.P15014704221272005602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278521 (A260731 (n ^ 2)).toNat

end

end A277024.P15014704221272005602

/-! ## A277024.P4514233747666798824

`A053186(n²)+A053186(A277023(n))`
-/

namespace A277024.P4514233747666798824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053186 (n ^ 2) + A053186 (A277023 n).toNat

end

end A277024.P4514233747666798824

/-! ## A277024.P8173157411499103075

`A053186(2*A277023(n)-A277023(n))`
-/

namespace A277024.P8173157411499103075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053186 (2 * A277023 n - A277023 n).toNat

end

end A277024.P8173157411499103075

/-! ## A277024.P13990582685998207212

`A053186(A277023(n)+A053186(n))-A053186(n)`
-/

namespace A277024.P13990582685998207212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053186 (A277023 n + A053186 n).toNat - A053186 n

end

end A277024.P13990582685998207212

/-!
# A277025: n for which A277023(4n) is square, thus A277024(4n) is zero.

The programs for A277025, there is no canonical definition to state claims against.
-/

/-! ## A277025.P13352647832407741758

`record[A174571(A277015(n))]`
-/

namespace A277025.P13352647832407741758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174571 (A277015 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A277025.P13352647832407741758

/-! ## A277025.P1328875203330010580

`record[A025480(A277015(floor(n/2)))]/2`
-/

namespace A277025.P1328875203330010580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A277015 ⌊(n : ℚ) / 2⌋.toNat).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / 2

end

end A277025.P1328875203330010580

/-! ## A277025.P10483604220779453033

`A001281(record[A025480(A277015(n))])`
-/

namespace A277025.P10483604220779453033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A277015 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A277025.P10483604220779453033

/-! ## A277025.P4705596838546226263

`A004525(record[A025480(A277015(n))])`
-/

namespace A277025.P4705596838546226263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A277015 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A277025.P4705596838546226263

/-! ## A277025.P9475437629262879597

`A025480(record[A025480(A277015(n))])`
-/

namespace A277025.P9475437629262879597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A277015 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A277025.P9475437629262879597

/-! ## A277025.P13066791674468836612

`A004526(record[A110514(A277015(n))])`
-/

namespace A277025.P13066791674468836612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110514 (A277015 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A277025.P13066791674468836612

/-! ## A277025.P3039091296081013407

`A028242(record[A110514(A277015(n))])`
-/

namespace A277025.P3039091296081013407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110514 (A277015 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A277025.P3039091296081013407

/-! ## A277025.P8408259492117319659

`A078898(record[A078898(A277015(n))])`
-/

namespace A277025.P8408259492117319659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (A277015 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A277025.P8408259492117319659

/-! ## A277025.P14902340938106172587

`eq[0, A277024(4*n)]`
-/

namespace A277025.P14902340938106172587
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277024 (4 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A277025.P14902340938106172587

/-! ## A277025.P12370707722047946319

`lt[A277024(2*n), 1]/2`
-/

namespace A277025.P12370707722047946319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277024 (2 * n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n : ℚ) / 2

end

end A277025.P12370707722047946319

/-! ## A277025.P1621892697585275558

`eq[0, A277024(n+n)]/2`
-/

namespace A277025.P1621892697585275558
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277024 (n + n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℚ) / 2

end

end A277025.P1621892697585275558

/-! ## A277025.P1712969632118903361

`record[gcd(A000217(n), A277023(2*n))]`
-/

namespace A277025.P1712969632118903361
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000217 n) (A277023 (2 * n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A277025.P1712969632118903361

/-! ## A277025.P3804907846711519273

`comp[A277026(n+1)]`
-/

namespace A277025.P3804907846711519273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277026 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A277025.P3804907846711519273

/-!
# A277026: n for which A277023(4n) is not a square, thus A277024(4n) is nonzero.

The programs for A277026, there is no canonical definition to state claims against.
-/

/-! ## A277026.P13243289886402934944

`comp[A277025(n)]`
-/

namespace A277026.P13243289886402934944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277025 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A277026.P13243289886402934944

/-! ## A277026.P10169892640149532664

`lt[0, A277024(4*n)]`
-/

namespace A277026.P10169892640149532664
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277024 (4 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A277026.P10169892640149532664

/-! ## A277026.P7880189417673468403

`eq[2, A277024(2*2*n)]`
-/

namespace A277026.P7880189417673468403
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277024 (2 * (2 * n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A277026.P7880189417673468403

/-! ## A277026.P1943737120794288640

`lt[1, and(2, A277023(4*n))]`
-/

namespace A277026.P1943737120794288640
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 2 (A277023 (4 * n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A277026.P1943737120794288640

/-! ## A277026.P18050801779354954794

`comp[A174571(gcd(n, A277023(n)))]`
-/

namespace A277026.P18050801779354954794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174571 (Int.gcd (n : ℤ) (A277023 n))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A277026.P18050801779354954794

/-!
# A277027: a(n) = A277013(n)^2.

The programs for A277027, there is no canonical definition to state claims against.
-/

/-! ## A277027.P1576024363327578631

`A277013(n+1)²`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A277027.P1576024363327578631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277013 (n + 1) ^ 2

end

end A277027.P1576024363327578631

/-! ## A277027.P11837826305569091997

`∑{e}[A284011(n+1), #]²`
-/

namespace A277027.P11837826305569091997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284011 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p) ^ 2

end

end A277027.P11837826305569091997

/-! ## A277027.P3244010193773070432

`A001222(A284011(n+1))²`
-/

namespace A277027.P3244010193773070432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A284011 (n + 1)).toNat ^ 2

end

end A277027.P3244010193773070432

/-! ## A277027.P7401978842481831173

`A000290(A277013(2*(n+1))-1)`
-/

namespace A277027.P7401978842481831173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (A277013 (2 * (n + 1)) - 1).toNat

end

end A277027.P7401978842481831173

/-! ## A277027.P12779847795924866246

`A277013(2^A277013(n+1))^2`
-/

namespace A277027.P12779847795924866246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277013 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A277013 (n + 1) : ℤ))).toNat ^ 2

end

end A277027.P12779847795924866246

/-! ## A277027.P9517232538725309090

`A277013(char[1]+1+n)*A277013(n+1)`
-/

namespace A277027.P9517232538725309090
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277013 ((if ∃ j, f1 j = n then 1 else 0) + 1 + n) * A277013 (n + 1)

end

end A277027.P9517232538725309090

/-! ## A277027.P749387467660308200

`(A277013(n+1)+A000007(n))*A277013(n+1)`
-/

namespace A277027.P749387467660308200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A277013 (n + 1) + A000007 n) * A277013 (n + 1)

end

end A277027.P749387467660308200

/-! ## A277027.P13228194756166579315

`(A391238(n+1)+A391237(n+1))*A277013(n+1)`
-/

namespace A277027.P13228194756166579315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A391238 (n + 1) + A391237 (n + 1)) * A277013 (n + 1)

end

end A277027.P13228194756166579315

/-! ## A277027.P12108829160114749494

`and(A045535(n), A305822(n+1))²`
-/

namespace A277027.P12108829160114749494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A045535 n) (A305822 (n + 1)) ^ 2

end

end A277027.P12108829160114749494

/-! ## A277027.P1613769756223605096

`and(A141311(n+1), A305822(n+1))²`
-/

namespace A277027.P1613769756223605096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A141311 (n + 1)) (A305822 (n + 1)) ^ 2

end

end A277027.P1613769756223605096

/-!
# A277028: Numbers that are never pandigital for any base b > 1.

The programs for A277028, there is no canonical definition to state claims against.
-/

/-! ## A277028.P17421045995515228099

`2^∑[(n-3)*a(n-2)+1]-1` with `a(0)=0, a(1)=1`
-/

namespace A277028.P17421045995515228099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  ((n : ℤ) - 3) * f1 (n - 2) + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (∑ j ∈ Finset.range (n + 1), f1 j : ℤ) - 1

end

end A277028.P17421045995515228099

/-! ## A277028.P4534271328293204896

`2^A058519(n)-1`
-/

namespace A277028.P4534271328293204896
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A058519 n : ℤ) - 1

end

end A277028.P4534271328293204896

/-! ## A277028.P15991248861680796510

`2^∑[A344432(n)]-1`
-/

namespace A277028.P15991248861680796510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344432 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (∑ j ∈ Finset.range (n + 1), f1 j : ℤ) - 1

end

end A277028.P15991248861680796510

/-!
# A277029: Convolution of A000203 and A000009.

The programs for A277029, there is no canonical definition to state claims against.
-/

/-! ## A277029.P16845102865002612391

`∑[record[A102564(A037027(n))]]`
-/

namespace A277029.P16845102865002612391
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102564 (A037027 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A277029.P16845102865002612391

/-! ## A277029.P11822945097605698030

`∑[record[A102564(A155161(n))]]`
-/

namespace A277029.P11822945097605698030
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102564 (A155161 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A277029.P11822945097605698030

/-! ## A277029.P13689123230812714671

`A000194(n²*A005513(n+6))`
-/

namespace A277029.P13689123230812714671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 ((n ^ 2 : ℤ) * A005513 (n + 6)).toNat

end

end A277029.P13689123230812714671

/-! ## A277029.P5262040554449009480

`A155902(A347542(n+6))-A033676(n+1)`
-/

namespace A277029.P5262040554449009480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155902 (A347542 (n + 6)).toNat - A033676 (n + 1)

end

end A277029.P5262040554449009480

/-!
# A277030: Smallest m such that b^phi(n) == b^m (mod n) for every integer b, where phi(n) = A000010(n).

The programs for A277030, there is no canonical definition to state claims against.
-/

/-! ## A277030.P7527757166054536823

`lcm(A000189(n+1), A002322(n+1))%A091183(n)`
-/

namespace A277030.P7527757166054536823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.lcm (A000189 (n + 1)) (A002322 (n + 1)) : ℤ) (A091183 n)

end

end A277030.P7527757166054536823

/-! ## A277030.P16907349902176568120

`A002322(A027642(A011773(n+1)))%A000961(n+1)`
-/

namespace A277030.P16907349902176568120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002322 (A027642 (A011773 (n + 1)).toNat).toNat) (A000961 (n + 1))

end

end A277030.P16907349902176568120

/-! ## A277030.P5190203420062020434

`A002322(A027760(A011773(n+1)))%A002174(n+1)`
-/

namespace A277030.P5190203420062020434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002322 (A027760 (A011773 (n + 1)).toNat).toNat) (A002174 (n + 1))

end

end A277030.P5190203420062020434

/-! ## A277030.P10812126828784521012

`A002322(n+1)*A363486(A006093(n+1))`
-/

namespace A277030.P10812126828784521012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002322 (n + 1) * A363486 (A006093 (n + 1)).toNat

end

end A277030.P10812126828784521012

/-! ## A277030.P7519978128249849270

`A000010(A122425(n+1))%A119666(n+1)`
-/

namespace A277030.P7519978128249849270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000010 (A122425 (n + 1)).toNat) (A119666 (n + 1))

end

end A277030.P7519978128249849270

/-!
# A277031: Number T(n,k) of permutations of [n] where the minimal cyclic distance between elements of the same cycle equals k (k=n for the identity permutation in S_n); triangle T(n,k), n>=0, 0<=k<=n, read by rows.

The programs for A277031, there is no canonical definition to state claims against.
-/

/-! ## A277031.P16776825516961360108

`A033093(2^A238123(n))`
-/

namespace A277031.P16776825516961360108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033093 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A238123 n : ℤ))).toNat

end

end A277031.P16776825516961360108

/-! ## A277031.P14460265928934894910

`xor(1, A241450(A271424(n)))`
-/

namespace A277031.P14460265928934894910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A241450 (A271424 n).toNat)

end

end A277031.P14460265928934894910

/-! ## A277031.P11017378873798126374

`∑{d}[A271424(n), A238003(#)]`
-/

namespace A277031.P11017378873798126374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271424 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A238003 d

end

end A277031.P11017378873798126374

/-! ## A277031.P15886928667248156296

`A000196(A083725(A238123(n)))`
-/

namespace A277031.P15886928667248156296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A083725 (A238123 n).toNat).toNat

end

end A277031.P15886928667248156296

/-! ## A277031.P17245489095602624677

`∑{d}[A271424(n), A006530(A290383(#))]`
-/

namespace A277031.P17245489095602624677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271424 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A006530 (A290383 d).toNat

end

end A277031.P17245489095602624677

/-!
# A277032: Number of permutations of [n] such that the minimal cyclic distance between elements of the same cycle equals one, a(1)=1 by convention.

The programs for A277032, there is no canonical definition to state claims against.
-/

/-! ## A277032.P7852394588124246753

`abs(record[Δ[A277031(n)]])`
-/

namespace A277032.P7852394588124246753
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277031 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)|

end

end A277032.P7852394588124246753

/-! ## A277032.P12089639643200874265

`A277031(∑[n+1]+1)`
-/

namespace A277032.P12089639643200874265
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277031 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A277032.P12089639643200874265

/-! ## A277032.P15028722815110775272

`record[A277031(n+1)]+floor(acot(n))`
-/

namespace A277032.P15028722815110775272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277031 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + ⌊SequenceMachineLib.acot (n : ℝ)⌋

end

end A277032.P15028722815110775272

/-! ## A277032.P3061454232843303148

`A277031(A000124(n+1))+char[12]`
-/

namespace A277032.P3061454232843303148
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277031 (A000124 (n + 1)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A277032.P3061454232843303148

/-! ## A277032.P9736588681233552516

`A000007(n)+record[A277031(n+1)]`
-/

namespace A277032.P9736588681233552516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277031 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A277032.P9736588681233552516

/-!
# A277033: G.f. A(x) satisfies: A(x - A(-x)^2) = x + A(x)^2.

The programs for A277033, there is no canonical definition to state claims against.
-/

/-! ## A277033.P9540340348670326528

`A309196(A001850(n))-A362208(2*n+3)`
-/

namespace A277033.P9540340348670326528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309196 (A001850 n).toNat - A362208 (2 * n + 3)

end

end A277033.P9540340348670326528

/-! ## A277033.P8250919176237800384

`n*(A107921(a(n-1))+1)` with `a(0)=1`
-/

namespace A277033.P8250919176237800384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n : ℤ) * (A107921 (a (n - 1)).toNat + 1)

end

end A277033.P8250919176237800384

/-!
# A277034: G.f. A(x) satisfies: A(x - A(x)^2) = x + A(-x)^2.

The programs for A277034, there is no canonical definition to state claims against.
-/

/-! ## A277034.P9223002332031085529

`A330949(a(n-1))+1` with `a(0)=1, a(1)=2, a(2)=4`
-/

namespace A277034.P9223002332031085529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 4] fun n a =>
  A330949 (a (n - 1)).toNat + 1

end

end A277034.P9223002332031085529

/-!
# A277036: G.f.: Sum_{n>=0} exp(-n * 2^n * x) * [ Sum_{k>=1} k^n * 2^(n*k) * x^k / k! ]^n.

The programs for A277036, there is no canonical definition to state claims against.
-/

/-! ## A277036.P17329157952902167530

`A222599(Δ[∏[A001519(n)]])`
-/

namespace A277036.P17329157952902167530
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001519 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222599 (f1 (n + 1) - f1 n).toNat

end

end A277036.P17329157952902167530

/-!
# A277037: G.f.: exp( Sum_{n>=1} [Sum_{k>=1} k^n * 2^(n*k) * x^k]^n / n ), a power series in x with integer coefficients.

The programs for A277037, there is no canonical definition to state claims against.
-/

/-! ## A277037.P15681602461296270879

`(n+1)*A335413(A363309(n))`
-/

namespace A277037.P15681602461296270879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A335413 (A363309 n).toNat

end

end A277037.P15681602461296270879

/-!
# A277038: G.f. A(x) satisfies: Series_Reversion( A(x)/(1+x)^2 ) = A(x)/(1-x)^2.

The programs for A277038, there is no canonical definition to state claims against.
-/

/-! ## A277038.P18110628380245134748

`A021009(n)*A110654(A084872(n))`
-/

namespace A277038.P18110628380245134748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021009 n * A110654 (A084872 n).toNat

end

end A277038.P18110628380245134748

/-!
# A277040: Limit of the coefficient of x^(3^m + n) in B(x)^(n+1) as m grows, where B(x) = Sum_{k>=0} x^(3^k).

The programs for A277040, there is no canonical definition to state claims against.
-/

/-! ## A277040.P15705196774115319473

`(n+1)*A277041(n)`
-/

namespace A277040.P15705196774115319473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A277041 n

end

end A277040.P15705196774115319473

/-! ## A277040.P3382805868325518205

`A277041(n)*A291769(n)`
-/

namespace A277040.P3382805868325518205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277041 n * A291769 n

end

end A277040.P3382805868325518205

/-! ## A277040.P14441057236367603803

`A277041(n)*A348553(n)`
-/

namespace A277040.P14441057236367603803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277041 n * A348553 n

end

end A277040.P14441057236367603803

/-! ## A277040.P12787933696199857939

`A277041(A028310(n))/cot(atan(n+1))`
-/

namespace A277040.P12787933696199857939
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A277041 (A028310 n).toNat : ℝ) / Real.cot (Real.arctan (n + 1 : ℝ))

end

end A277040.P12787933696199857939

/-! ## A277040.P12369078907011781328

`A144690(n)*A277041(n)/A144691(n)`
-/

namespace A277040.P12369078907011781328
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A144690 n * A277041 n : ℚ) / (A144691 n : ℚ)

end

end A277040.P12369078907011781328

/-!
# A277041: Limit of the coefficient of x^(3^m + n) in B(x)^(n+1)/(n+1) as m grows, where B(x) = Sum_{k>=0} x^(3^k).

The programs for A277041, there is no canonical definition to state claims against.
-/

/-! ## A277041.P4184189629968771814

`A277040(n)/(n+1)`
-/

namespace A277041.P4184189629968771814
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A277040 n : ℚ) / (n + 1 : ℚ)

end

end A277041.P4184189629968771814

/-! ## A277041.P4251750774033361970

`floor(A277040(n)/A291769(n))`
-/

namespace A277041.P4251750774033361970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A277040 n : ℚ) / (A291769 n : ℚ)⌋

end

end A277041.P4251750774033361970

/-! ## A277041.P7465327726731980593

`floor(A277040(n)/A348553(n))`
-/

namespace A277041.P7465327726731980593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A277040 n : ℚ) / (A348553 n : ℚ)⌋

end

end A277041.P7465327726731980593

/-! ## A277041.P15673436268321262451

`A144691(n)/A144690(n)*A277040(n)`
-/

namespace A277041.P15673436268321262451
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A144691 n : ℚ) / (A144690 n : ℚ) * (A277040 n : ℚ)

end

end A277041.P15673436268321262451

/-! ## A277041.P16400231328162306635

`A277040(n)/A348553(n)*A007318(∑[n])`
-/

namespace A277041.P16400231328162306635
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A277040 n : ℚ) / (A348553 n : ℚ) * (A007318 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ)

end

end A277041.P16400231328162306635

/-!
# A277044: Number of 2 X 2 matrices with entries in {0,1,...,n} and even determinant with no entry repeated.

The programs for A277044, there is no canonical definition to state claims against.
-/

/-! ## A277044.P709616047727210000

`A259825(A006023(n))`
-/

namespace A277044.P709616047727210000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259825 (A006023 n).toNat

end

end A277044.P709616047727210000

/-! ## A277044.P2187721803504356979

`A259825(A187826(n)+1)`
-/

namespace A277044.P2187721803504356979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259825 (A187826 n + 1).toNat

end

end A277044.P2187721803504356979

/-!
# A277046: Triangle read by rows: T(n,k) = 2^n - n + k - 1 for n >= 1, with 1 <= k <= 2n-1.

The programs for A277046, the canonical program `A277046.P5305586577436346867` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A277046 has offset 1).

The definition of A277046 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A277046.P6156248242193610090

`A324172(∑[char[n²]])+n+1`
-/

namespace A277046.P6156248242193610090
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324172 (∑ j ∈ Finset.range (n + 1), f1 j) + (n + 1 : ℤ)

end

end A277046.P6156248242193610090

namespace A277046

/-- `A324172(∑[char[n²]])+n+1` -/
def P6156248242193610090.Spec : Prop :=
  ∀ n, P6156248242193610090.a n = A277046 (n + 1)

end A277046

/-! ## A277046.P5305586577436346867

`A196199(n)+A052551(A000267(n))`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A277046

/-- `A196199(n)+A052551(A000267(n))` -/
def P5305586577436346867.Spec : Prop :=
  ∀ n, P5305586577436346867.a n = A277046 (n + 1)

theorem P5305586577436346867.correct : P5305586577436346867.Spec := by
  intro n
  simp only [A277046, Nat.add_sub_cancel]

end A277046

/-! ## A277046.P62793552867452412

`A196199(n)+A126646(A000196(n))`
-/

namespace A277046.P62793552867452412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196199 n + A126646 (A000196 n).toNat

end

end A277046.P62793552867452412

namespace A277046

/-- `A196199(n)+A126646(A000196(n))` -/
def P62793552867452412.Spec : Prop :=
  ∀ n, P62793552867452412.a n = A277046 (n + 1)

end A277046

/-! ## A277046.P4598268958722090619

`A196199(n)+A000225(A003059(n+1))`
-/

namespace A277046.P4598268958722090619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196199 n + A000225 (A003059 (n + 1)).toNat

end

end A277046.P4598268958722090619

namespace A277046

/-- `A196199(n)+A000225(A003059(n+1))` -/
def P4598268958722090619.Spec : Prop :=
  ∀ n, P4598268958722090619.a n = A277046 (n + 1)

end A277046

/-! ## A277046.P16909827540009933871

`A071797(n+1)+A000295(A003059(n+1))`
-/

namespace A277046.P16909827540009933871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071797 (n + 1) + A000295 (A003059 (n + 1)).toNat

end

end A277046.P16909827540009933871

namespace A277046

/-- `A071797(n+1)+A000295(A003059(n+1))` -/
def P16909827540009933871.Spec : Prop :=
  ∀ n, P16909827540009933871.a n = A277046 (n + 1)

end A277046

/-! ## A277046.P11429990553892835866

`lt[A053646(n+1), A000523(A000523(n+1)+n+1)]`
-/

namespace A277046.P11429990553892835866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053646 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (A000523 (n + 1) + (n : ℤ) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A277046.P11429990553892835866

namespace A277046

/-- `lt[A053646(n+1), A000523(A000523(n+1)+n+1)]` -/
def P11429990553892835866.Spec : Prop :=
  ∀ n, (P11429990553892835866.a n : ℤ) = A277046 (n + 1)

end A277046

/-!
# A277047: Number obtained by concatenating the cubes of the digits of prime(n).

The programs for A277047, there is no canonical definition to state claims against.
-/

/-! ## A277047.P11708033592392160624

`A048390(A000040(n+1))`
-/

namespace A277047.P11708033592392160624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048390 (A000040 (n + 1)).toNat

end

end A277047.P11708033592392160624

/-! ## A277047.P5227524836371216134

`A048390(p?[xor(1, n)+1])`
-/

namespace A277047.P5227524836371216134
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048390 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A277047.P5227524836371216134

/-! ## A277047.P9684382553519294553

`A048390(p?[gcd(n²+n, ∏{p}[n+1, #²])])`
-/

namespace A277047.P9684382553519294553
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (n ^ 2 + n) (∏ p ∈ Nat.primeFactors (f2 n), p ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048390 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A277047.P9684382553519294553

/-! ## A277047.P9473510232307381175

`A048390(Δ[A007504(n)])`
-/

namespace A277047.P9473510232307381175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048390 (f1 (n + 1) - f1 n).toNat

end

end A277047.P9473510232307381175

/-!
# A277048: Primes p such that the multiplicative order of 3 modulo p is prime.

The programs for A277048, there is no canonical definition to state claims against.
-/

/-! ## A277048.P10215451454455046197

`p?[A001222(A053446(n+1))*A001651(n+1)]`
-/

namespace A277048.P10215451454455046197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A053446 (n + 1)).toNat * A001651 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A277048.P10215451454455046197

/-! ## A277048.P14000136166712150945

`p?[(n+1)*A001222(A007734(n+1))]`
-/

namespace A277048.P14000136166712150945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A001222 (A007734 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A277048.P14000136166712150945

/-! ## A277048.P8440054513560527092

`p?[A001222(A007734(n+1))*A165998(n)]`
-/

namespace A277048.P8440054513560527092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A007734 (n + 1)).toNat * A165998 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A277048.P8440054513560527092

/-! ## A277048.P6634018142965795050

`eq[A006530(n+1)-n, A001222(A007734(n+1))]+1`
-/

namespace A277048.P6634018142965795050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1) - (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A007734 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A277048.P6634018142965795050

/-! ## A277048.P8543602385681786527

`record[A034699(A005385(n+1)*A262369(n+1))]`
-/

namespace A277048.P8543602385681786527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034699 (A005385 (n + 1) * A262369 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A277048.P8543602385681786527

/-!
# A277049: Primes p such that the multiplicative order of 5 modulo p is prime.

The programs for A277049, there is no canonical definition to state claims against.
-/

/-! ## A277049.P6262911651868294919

`p?[A001222(A053448(n+1))*A047201(n+1)]`
-/

namespace A277049.P6262911651868294919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A053448 (n + 1)).toNat * A047201 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A277049.P6262911651868294919

/-! ## A277049.P607333220420644991

`∩[A000040(3*n+2), A340788(n+1)-1]`
-/

namespace A277049.P607333220420644991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (3 * n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340788 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A277049.P607333220420644991

/-!
# A277050: a(n) = floor(2*n/sqrt(Pi)).

The programs for A277050, the canonical program `A277050.P7783106267192411047` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A277050 has offset 0).

The definition of A277050 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(2*n/sqrt(π))` (program `A277050.P7783106267192411047`, by `A277050.P7783106267192411047.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A277050.P7783106267192411047

`floor(2*n/sqrt(π))`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A277050

/-- `floor(2*n/sqrt(π))` -/
def P7783106267192411047.Spec : Prop :=
  ∀ n, P7783106267192411047.a n = A277050 n

theorem P7783106267192411047.correct : P7783106267192411047.Spec := by
  intro n
  simp only [A277050]

end A277050

/-! ## A277050.P3600236218529951032

`comp[A277052(n+1)]`
-/

namespace A277050.P3600236218529951032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277052 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A277050.P3600236218529951032

namespace A277050

/-- `comp[A277052(n+1)]` -/
def P3600236218529951032.Spec : Prop :=
  ∀ n, (P3600236218529951032.a n : ℤ) = A277050 n

end A277050

/-! ## A277050.P17367028777034308446

`A054899(A088725(n+1))+n`
-/

namespace A277050.P17367028777034308446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054899 (A088725 (n + 1)).toNat + (n : ℤ)

end

end A277050.P17367028777034308446

namespace A277050

/-- `A054899(A088725(n+1))+n` -/
def P17367028777034308446.Spec : Prop :=
  ∀ n, P17367028777034308446.a n = A277050 n

end A277050

/-! ## A277050.P2988590522497224771

`A338719(A058331(n))-1`
-/

namespace A277050.P2988590522497224771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338719 (A058331 n).toNat - 1

end

end A277050.P2988590522497224771

namespace A277050

/-- `A338719(A058331(n))-1` -/
def P2988590522497224771.Spec : Prop :=
  ∀ n, P2988590522497224771.a n = A277050 n

end A277050

/-! ## A277050.P9412665613884730294

`comp[9*(n+1)-∑{e}[A000142(n)+1, #]]%A329996(n+1)`
-/

namespace A277050.P9412665613884730294
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (9 * (n + 1) : ℤ) - ((∑ p ∈ Nat.primeFactors (f2 n).natAbs, Nat.factorization (f2 n).natAbs p : ℕ) : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) (A329996 (n + 1))

end

end A277050.P9412665613884730294

namespace A277050

/-- `comp[9*(n+1)-∑{e}[A000142(n)+1, #]]%A329996(n+1)` -/
def P9412665613884730294.Spec : Prop :=
  ∀ n, P9412665613884730294.a n = A277050 n

end A277050

/-! ## A277050.P5429717136354251404

`comp[∑[A340220(A183624(n+1))]]`
-/

namespace A277050.P5429717136354251404
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340220 (A183624 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A277050.P5429717136354251404

namespace A277050

/-- `comp[∑[A340220(A183624(n+1))]]` -/
def P5429717136354251404.Spec : Prop :=
  ∀ n, (P5429717136354251404.a n : ℤ) = A277050 n

end A277050

/-!
# A277051: a(n) = floor(n/(1-3/Pi)).

The programs for A277051, the canonical program `A277051.P12249315306989138700` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A277051 has offset 1).

The definition of A277051 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor((n+1)/(1-3/π))` (program `A277051.P12249315306989138700`, by `A277051.P12249315306989138700.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A277051.P12249315306989138700

`floor((n+1)/(1-3/π))`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A277051

/-- `floor((n+1)/(1-3/π))` -/
def P12249315306989138700.Spec : Prop :=
  ∀ n, P12249315306989138700.a n = A277051 (n + 1)

theorem P12249315306989138700.correct : P12249315306989138700.Spec := by
  intro n
  simp only [A277051, Nat.add_sub_cancel]

end A277051

/-! ## A277051.P5255203469675760629

`comp[floor(4*n/3*atan(1))]`
-/

namespace A277051.P5255203469675760629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((4 * n : ℚ) / 3 : ℝ) * Real.arctan (1 : ℝ)⌋

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A277051.P5255203469675760629

namespace A277051

/-- `comp[floor(4*n/3*atan(1))]` -/
def P5255203469675760629.Spec : Prop :=
  ∀ n, (P5255203469675760629.a n : ℤ) = A277051 (n + 1)

end A277051

/-! ## A277051.P16245998691672624505

`A186544(3*(n+1))-A000027(2*(n+1))`
-/

namespace A277051.P16245998691672624505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186544 (3 * (n + 1)) - A000027 (2 * (n + 1))

end

end A277051.P16245998691672624505

namespace A277051

/-- `A186544(3*(n+1))-A000027(2*(n+1))` -/
def P16245998691672624505.Spec : Prop :=
  ∀ n, P16245998691672624505.a n = A277051 (n + 1)

end A277051

/-! ## A277051.P4039078688121349868

`lt[cot(3*(n+1)), cot(3)]`
-/

namespace A277051.P4039078688121349868
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cot (3 * (n + 1) : ℝ)

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cot (3 : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A277051.P4039078688121349868

namespace A277051

/-- `lt[cot(3*(n+1)), cot(3)]` -/
def P4039078688121349868.Spec : Prop :=
  ∀ n, (P4039078688121349868.a n : ℤ) = A277051 (n + 1)

end A277051

/-! ## A277051.P11111902744141700458

`A186544(3*(n+1))-A056239(A000040(2*(n+1)))`
-/

namespace A277051.P11111902744141700458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186544 (3 * (n + 1)) - A056239 (A000040 (2 * (n + 1))).toNat

end

end A277051.P11111902744141700458

namespace A277051

/-- `A186544(3*(n+1))-A056239(A000040(2*(n+1)))` -/
def P11111902744141700458.Spec : Prop :=
  ∀ n, P11111902744141700458.a n = A277051 (n + 1)

end A277051

/-! ## A277051.P9160095581091758731

`comp[A274399(n)]`
-/

namespace A277051.P9160095581091758731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274399 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A277051.P9160095581091758731

namespace A277051

/-- `comp[A274399(n)]` -/
def P9160095581091758731.Spec : Prop :=
  ∀ n, (P9160095581091758731.a n : ℤ) = A277051 (n + 1)

end A277051

/-! ## A277051.P1024065292724178802

`A248186(A008574(8*(n+1)))+1`
-/

namespace A277051.P1024065292724178802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248186 (A008574 (8 * (n + 1))).toNat + 1

end

end A277051.P1024065292724178802

namespace A277051

/-- `A248186(A008574(8*(n+1)))+1` -/
def P1024065292724178802.Spec : Prop :=
  ∀ n, P1024065292724178802.a n = A277051 (n + 1)

end A277051

/-!
# A277052: a(n) = n+floor(n/(2/sqrt(Pi)-1)).

The programs for A277052, the canonical program `A277052.P10949982595123030671` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A277052 has offset 1).

The definition of A277052 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n+1+floor((n+1)/(2/sqrt(π)-1))` (program `A277052.P10949982595123030671`, by `A277052.P10949982595123030671.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A277052.P10949982595123030671

`n+1+floor((n+1)/(2/sqrt(π)-1))`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A277052

/-- `n+1+floor((n+1)/(2/sqrt(π)-1))` -/
def P10949982595123030671.Spec : Prop :=
  ∀ n, P10949982595123030671.a n = A277052 (n + 1)

theorem P10949982595123030671.correct : P10949982595123030671.Spec := by
  intro n
  simp only [A277052, Nat.add_sub_cancel]

end A277052

/-! ## A277052.P15279643719985612402

`floor((n+1)/(1-sqrt(atan(1))))`
-/

namespace A277052.P15279643719985612402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) / (1 - Real.sqrt (Real.arctan (1 : ℝ)))⌋

end

end A277052.P15279643719985612402

namespace A277052

/-- `floor((n+1)/(1-sqrt(atan(1))))` -/
def P15279643719985612402.Spec : Prop :=
  ∀ n, P15279643719985612402.a n = A277052 (n + 1)

end A277052

/-! ## A277052.P16184976959868513390

`floor((n+1)/(1-sqrt(acot(1))))`
-/

namespace A277052.P16184976959868513390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) / (1 - Real.sqrt (SequenceMachineLib.acot (1 : ℝ)))⌋

end

end A277052.P16184976959868513390

namespace A277052

/-- `floor((n+1)/(1-sqrt(acot(1))))` -/
def P16184976959868513390.Spec : Prop :=
  ∀ n, P16184976959868513390.a n = A277052 (n + 1)

end A277052

/-! ## A277052.P8425301354327098597

`comp[A277050(n)]`
-/

namespace A277052.P8425301354327098597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277050 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A277052.P8425301354327098597

namespace A277052

/-- `comp[A277050(n)]` -/
def P8425301354327098597.Spec : Prop :=
  ∀ n, (P8425301354327098597.a n : ℤ) = A277052 (n + 1)

end A277052

/-! ## A277052.P2460299701874227447

`A059543(8*(n+1))%(A126285(n)*A199112(n))`
-/

namespace A277052.P2460299701874227447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A059543 (8 * (n + 1))) (A126285 n * A199112 n)

end

end A277052.P2460299701874227447

namespace A277052

/-- `A059543(8*(n+1))%(A126285(n)*A199112(n))` -/
def P2460299701874227447.Spec : Prop :=
  ∀ n, P2460299701874227447.a n = A277052 (n + 1)

end A277052

/-! ## A277052.P17943383829533319727

`lcm(A059543(8*(n+1)), A087960(n²))`
-/

namespace A277052.P17943383829533319727
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A059543 (8 * (n + 1))) (A087960 (n ^ 2))

end

end A277052.P17943383829533319727

namespace A277052

/-- `lcm(A059543(8*(n+1)), A087960(n²))` -/
def P17943383829533319727.Spec : Prop :=
  ∀ n, (P17943383829533319727.a n : ℤ) = A277052 (n + 1)

end A277052

/-!
# A277054: Least k such that n-th repunit times k is a pandigital.

The programs for A277054, there is no canonical definition to state claims against.
-/

/-! ## A277054.P1217719351127921840

`A277055(A265363(n)+29)`
-/

namespace A277054.P1217719351127921840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277055 (A265363 n + 29).toNat

end

end A277054.P1217719351127921840

/-!
# A277056: Least k such that any sufficiently long repunit multiplied by k is a pandigital number in numerical base n.

The programs for A277056, there is no canonical definition to state claims against.
-/

/-! ## A277056.P11533570681869106544

`A277055(A215366(n)+A178653(n+1))`
-/

namespace A277056.P11533570681869106544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277055 (A215366 n + A178653 (n + 1)).toNat

end

end A277056.P11533570681869106544

/-! ## A277056.P16935576887856680649

`A277055(A201649(n+1)+n-1)`
-/

namespace A277056.P16935576887856680649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277055 (A201649 (n + 1) + ((n : ℤ) - 1)).toNat

end

end A277056.P16935576887856680649

/-!
# A277057: Least k such that n-th repunit times k contains all digits from 1 to 9.

The programs for A277057, there is no canonical definition to state claims against.
-/

/-! ## A277057.P4619948891888839500

`A277058(A072658(n)+26)`
-/

namespace A277057.P4619948891888839500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277058 (A072658 n + 26).toNat

end

end A277057.P4619948891888839500

/-!
# A277058: Irregular array by rows: A(n,m) is the least number which gives a number containing all nonzero digits when multiplied by m-th repunit for base n; each row is truncated when reaches its stationary point.

The programs for A277058, there is no canonical definition to state claims against.
-/

/-! ## A277058.P13697444006358926369

`A194831((n+1)^A175851(n+3))`
-/

namespace A277058.P13697444006358926369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194831 (SequenceMachineLib.roundAway ((n + 1 : ℚ) ^ (A175851 (n + 3) : ℤ))).toNat

end

end A277058.P13697444006358926369

/-!
# A277059: Least k such that any sufficiently long repunit multiplied by k contains all nonzero digits in base n.

The programs for A277059, there is no canonical definition to state claims against.
-/

/-! ## A277059.P14515343500758604170

`A277058(Δ[A002623(n)])`
-/

namespace A277059.P14515343500758604170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002623 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277058 (f1 (n + 1) - f1 n).toNat

end

end A277059.P14515343500758604170

/-! ## A277059.P8158522338455438407

`A277058(A025699(n+1))`
-/

namespace A277059.P8158522338455438407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277058 (A025699 (n + 1)).toNat

end

end A277059.P8158522338455438407

/-! ## A277059.P11603851924193623277

`A277058(A075354(n+2))`
-/

namespace A277059.P11603851924193623277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277058 (A075354 (n + 2)).toNat

end

end A277059.P11603851924193623277

/-! ## A277059.P2951410615895634591

`A277058(A086378(n+2))`
-/

namespace A277059.P2951410615895634591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277058 (A086378 (n + 2)).toNat

end

end A277059.P2951410615895634591

/-! ## A277059.P6622567685747752718

`A277058(A087811(n+2))`
-/

namespace A277059.P6622567685747752718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277058 (A087811 (n + 2)).toNat

end

end A277059.P6622567685747752718

/-!
# A277060: a(n) = (1/2) * Sum_{k=0..n} (binomial(n,k) * binomial(n+k,k+1))^2 for n >= 0.

The programs for A277060, there is no canonical definition to state claims against.
-/

/-! ## A277060.P7649701689869281949

`n²*A074635(n)/2`
-/

namespace A277060.P7649701689869281949
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n ^ 2 : ℤ) * A074635 n : ℚ) / 2

end

end A277060.P7649701689869281949

/-! ## A277060.P12423715483947829390

`A074635(n)/2*A000290(n)`
-/

namespace A277060.P12423715483947829390
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A074635 n : ℚ) / 2 * (A000290 n : ℚ)

end

end A277060.P12423715483947829390

/-!
# A277061: Numbers with multiplicative digital root > 0.

The programs for A277061, there is no canonical definition to state claims against.
-/

/-! ## A277061.P768265492924465147

`lt[0, A031347(n)]`
-/

namespace A277061.P768265492924465147
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031347 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A277061.P768265492924465147

/-! ## A277061.P15228906006571028092

`comp[A034048(n+1)]`
-/

namespace A277061.P15228906006571028092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034048 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A277061.P15228906006571028092

/-! ## A277061.P14765177909814404679

`lt[0, A087471(n+1)]+1`
-/

namespace A277061.P14765177909814404679
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087471 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A277061.P14765177909814404679

/-! ## A277061.P10314411270864468549

`eq[A031347(n), A051802(n)]`
-/

namespace A277061.P10314411270864468549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031347 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051802 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A277061.P10314411270864468549

/-! ## A277061.P9848564952619462702

`comp[record[A034048(A020986(n))]]`
-/

namespace A277061.P9848564952619462702
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034048 (A020986 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A277061.P9848564952619462702

/-! ## A277061.P17194716661445723685

`comp[record[A034048(A128227(n))]]`
-/

namespace A277061.P17194716661445723685
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034048 (A128227 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A277061.P17194716661445723685

/-! ## A277061.P14463903444224999470

`comp[record[A034048(A137734(n))]]`
-/

namespace A277061.P14463903444224999470
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034048 (A137734 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A277061.P14463903444224999470

/-! ## A277061.P3654795507281008348

`comp[record[A034048(A141256(n))]]`
-/

namespace A277061.P3654795507281008348
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034048 (A141256 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A277061.P3654795507281008348

/-! ## A277061.P13569272554242853222

`eq[1, gcd(A000040(n+1), A031347(n))]`
-/

namespace A277061.P13569272554242853222
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000040 (n + 1)) (A031347 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A277061.P13569272554242853222

/-! ## A277061.P11673753837016523

`∪[A090274(n+1), A299690(n+1)]`
-/

namespace A277061.P11673753837016523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090274 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299690 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A277061.P11673753837016523

/-!
# A277062: Number of primes <= n-th Lucas number.

The programs for A277062, the canonical program `A277062.P11518591224059598292` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A277062 has offset 0).

The definition of A277062 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A277062.P11518591224059598292

`A000720(A000032(n))`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A277062

/-- `A000720(A000032(n))` -/
def P11518591224059598292.Spec : Prop :=
  ∀ n, P11518591224059598292.a n = A277062 n

theorem P11518591224059598292.correct : P11518591224059598292.Spec := by
  intro n
  simp only [A277062]

end A277062

/-! ## A277062.P9259510642072646122

`A000720(abs(floor((-ϕ)^n)+1))`
-/

namespace A277062.P9259510642072646122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 |⌊(-Real.goldenRatio) ^ n⌋ + 1|.toNat

end

end A277062.P9259510642072646122

namespace A277062

/-- `A000720(abs(floor((-ϕ)^n)+1))` -/
def P9259510642072646122.Spec : Prop :=
  ∀ n, P9259510642072646122.a n = A277062 n

end A277062

/-! ## A277062.P15827500744460696354

`and(-1, A000720(A001612(n)-1))`
-/

namespace A277062.P15827500744460696354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A000720 (A001612 n - 1).toNat)

end

end A277062.P15827500744460696354

namespace A277062

/-- `and(-1, A000720(A001612(n)-1))` -/
def P15827500744460696354.Spec : Prop :=
  ∀ n, P15827500744460696354.a n = A277062 n

end A277062

/-! ## A277062.P6456451924185094334

`and(-1, A000720(A329723(n+2)))`
-/

namespace A277062.P6456451924185094334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A000720 (A329723 (n + 2)).toNat)

end

end A277062.P6456451924185094334

namespace A277062

/-- `and(-1, A000720(A329723(n+2)))` -/
def P6456451924185094334.Spec : Prop :=
  ∀ n, P6456451924185094334.a n = A277062 n

end A277062

/-! ## A277062.P13861212314487269521

`and(-1, A000720(A302126(Δ[n²])))`
-/

namespace A277062.P13861212314487269521
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A000720 (A302126 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat).toNat)

end

end A277062.P13861212314487269521

namespace A277062

/-- `and(-1, A000720(A302126(Δ[n²])))` -/
def P13861212314487269521.Spec : Prop :=
  ∀ n, P13861212314487269521.a n = A277062 n

end A277062

/-!
# A277063: Number of primes <= n-th Bell number.

The programs for A277063, there is no canonical definition to state claims against.
-/

/-! ## A277063.P838524327148390855

`A000720(A000110(n))`
-/

namespace A277063.P838524327148390855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A000110 n).toNat

end

end A277063.P838524327148390855

/-! ## A277063.P428079137331286849

`A000720(A164863(n))`
-/

namespace A277063.P428079137331286849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A164863 n).toNat

end

end A277063.P428079137331286849

/-! ## A277063.P14681782646824912545

`A000720(A164864(n))`
-/

namespace A277063.P14681782646824912545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A164864 n).toNat

end

end A277063.P14681782646824912545

/-! ## A277063.P7684930003971242948

`A000720(A192126(n))`
-/

namespace A277063.P7684930003971242948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A192126 n).toNat

end

end A277063.P7684930003971242948

/-! ## A277063.P1021490454955708567

`A000720(A192127(n))`
-/

namespace A277063.P1021490454955708567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A192127 n).toNat

end

end A277063.P1021490454955708567

/-!
# A277065: Sum of cubes of the digits of all divisors of n.

The programs for A277065, the canonical program `A277065.P11363507706313107840` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A277065 has offset 1).

The definition of A277065 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A277065.P11363507706313107840

`∑{d}[n+1, A055012(#)]`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A277065

/-- `∑{d}[n+1, A055012(#)]` -/
def P11363507706313107840.Spec : Prop :=
  ∀ n, P11363507706313107840.a n = A277065 (n + 1)

theorem P11363507706313107840.correct : P11363507706313107840.Spec := by
  intro n
  simp only [A277065, Nat.add_sub_cancel]

end A277065

/-! ## A277065.P16201768112732933536

`∑{digits}[A243361(n+1), #^3]`
-/

namespace A277065.P16201768112732933536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243361 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x ^ 3).sum

end

end A277065.P16201768112732933536

namespace A277065

/-- `∑{digits}[A243361(n+1), #^3]` -/
def P16201768112732933536.Spec : Prop :=
  ∀ n, (P16201768112732933536.a n : ℤ) = A277065 (n + 1)

end A277065

/-! ## A277065.P17669982776381034839

`∑{digits}[A243360(n+1), #^3]`
-/

namespace A277065.P17669982776381034839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243360 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x ^ 3).sum

end

end A277065.P17669982776381034839

namespace A277065

/-- `∑{digits}[A243360(n+1), #^3]` -/
def P17669982776381034839.Spec : Prop :=
  ∀ n, (P17669982776381034839.a n : ℤ) = A277065 (n + 1)

end A277065

/-! ## A277065.P11924734731435463401

`∑{digits}[A037278(n+1), #*#²]`
-/

namespace A277065.P11924734731435463401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037278 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x * x ^ 2).sum

end

end A277065.P11924734731435463401

namespace A277065

/-- `∑{digits}[A037278(n+1), #*#²]` -/
def P11924734731435463401.Spec : Prop :=
  ∀ n, (P11924734731435463401.a n : ℤ) = A277065 (n + 1)

end A277065

/-! ## A277065.P14555743025731217838

`∑{digits}[A176558(n+1), #*#²]`
-/

namespace A277065.P14555743025731217838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176558 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x * x ^ 2).sum

end

end A277065.P14555743025731217838

namespace A277065

/-- `∑{digits}[A176558(n+1), #*#²]` -/
def P14555743025731217838.Spec : Prop :=
  ∀ n, (P14555743025731217838.a n : ℤ) = A277065 (n + 1)

end A277065

/-!
# A277068: a(n) = gcd(s1, s2), where s1 is the sum of the odd numbers and s2 is the sum of the even numbers in the Collatz (3x+1)trajectory of n.

The programs for A277068, there is no canonical definition to state claims against.
-/

/-! ## A277068.P10245532437319442949

`gcd(A033493(n+1), A213909(n+1))`
-/

namespace A277068.P10245532437319442949
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A033493 (n + 1)) (A213909 (n + 1))

end

end A277068.P10245532437319442949

/-! ## A277068.P3549883146163743030

`gcd(A049074(n+1), A213916(n+1))`
-/

namespace A277068.P3549883146163743030
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A049074 (n + 1)) (A213916 (n + 1))

end

end A277068.P3549883146163743030

/-! ## A277068.P6518341077279848717

`gcd(lcm(2, A213909(n+1)), A213917(n+1))`
-/

namespace A277068.P6518341077279848717
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (Int.lcm 2 (A213909 (n + 1)) : ℤ) (A213917 (n + 1))

end

end A277068.P6518341077279848717

/-! ## A277068.P15635538186907945015

`gcd(A213916(n+1), A270814(A103517(n)))`
-/

namespace A277068.P15635538186907945015
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A213916 (n + 1)) (A270814 (A103517 n).toNat)

end

end A277068.P15635538186907945015

/-! ## A277068.P15050426801235887317

`gcd(A213916(2*(n+1)), A270814(2*(n+1)))`
-/

namespace A277068.P15050426801235887317
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A213916 (2 * (n + 1))) (A270814 (2 * (n + 1)))

end

end A277068.P15050426801235887317

/-! ## A277068.P16301313019137377703

`gcd(A033493(n+1), A213916(A103517(n)))`
-/

namespace A277068.P16301313019137377703
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A033493 (n + 1)) (A213916 (A103517 n).toNat)

end

end A277068.P16301313019137377703

/-! ## A277068.P5603050135536465874

`gcd(A000027(A213916(n+1)), A213917(n+1))`
-/

namespace A277068.P5603050135536465874
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000027 (A213916 (n + 1)).toNat) (A213917 (n + 1))

end

end A277068.P5603050135536465874

/-!
# A277070: Row length of A276380(n).

The programs for A277070, there is no canonical definition to state claims against.
-/

/-! ## A277070.P7108639559446610594

`A055642(∑{p}[n+1, A305878(#)])`
-/

namespace A277070.P7108639559446610594
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (∑ p ∈ Nat.primeFactors (f1 n), A305878 p).toNat

end

end A277070.P7108639559446610594

/-! ## A277070.P13119581472346241581

`∑{digits}[A001222(A122111(n+1)), A081604(#)]`
-/

namespace A277070.P13119581472346241581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A122111 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A081604 x).sum

end

end A277070.P13119581472346241581

/-! ## A277070.P7217580612579388887

`gcd(A251738(n+2)!, A237442(A275121(n+1)))`
-/

namespace A277070.P7217580612579388887
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (Nat.factorial (A251738 (n + 2)).toNat : ℤ) (A237442 (A275121 (n + 1)).toNat)

end

end A277070.P7217580612579388887

/-! ## A277070.P14129375379107914216

`A237442(A275121(n+1)+val(A322394(n+1), 2))`
-/

namespace A277070.P14129375379107914216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237442 (A275121 (n + 1) + (SequenceMachineLib.valuation (A322394 (n + 1)).toNat 2 : ℤ)).toNat

end

end A277070.P14129375379107914216

/-! ## A277070.P512813136096069657

`A108336(A108337(n))*A237442(A275121(n+1))`
-/

namespace A277070.P512813136096069657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108336 (A108337 n).toNat * A237442 (A275121 (n + 1)).toNat

end

end A277070.P512813136096069657

/-! ## A277070.P4352389762390117875

`A237442(A275121(n+1))+A036987(A069540(n+1))`
-/

namespace A277070.P4352389762390117875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237442 (A275121 (n + 1)).toNat + A036987 (A069540 (n + 1)).toNat

end

end A277070.P4352389762390117875

/-! ## A277070.P5503372941977612349

`A010180(A330122(n+1))*A237442(A275121(n+1))`
-/

namespace A277070.P5503372941977612349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010180 (A330122 (n + 1)).toNat * A237442 (A275121 (n + 1)).toNat

end

end A277070.P5503372941977612349

/-! ## A277070.P8190464858109647282

`A237442(A275121(n+1)%A272709(n+1))`
-/

namespace A277070.P8190464858109647282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237442 (Int.tmod (A275121 (n + 1)) (A272709 (n + 1))).toNat

end

end A277070.P8190464858109647282

/-!
# A277071: Numbers n for which A277070(n) does not equal A237442(n).

The programs for A277071, there is no canonical definition to state claims against.
-/

/-! ## A277071.P15380704860321386379

`lt[A237442(n+1), A277070(n+1)]+1`
-/

namespace A277071.P15380704860321386379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237442 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277070 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A277071.P15380704860321386379

/-!
# A277072: Number of n-node labeled graphs with one endpoint.

The programs for A277072, there is no canonical definition to state claims against.
-/

/-! ## A277072.P9245961624543624908

`A327369(∑[n+1]+1)`
-/

namespace A277072.P9245961624543624908
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327369 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A277072.P9245961624543624908

/-! ## A277072.P1906327450470993417

`lcm(n, A327369(A134869(n+1)))`
-/

namespace A277072.P1906327450470993417
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) (A327369 (A134869 (n + 1)).toNat)

end

end A277072.P1906327450470993417

/-! ## A277072.P13980376914262680995

`A327369(A134869(n+1))-A000007(n)`
-/

namespace A277072.P13980376914262680995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327369 (A134869 (n + 1)).toNat - A000007 n

end

end A277072.P13980376914262680995

/-! ## A277072.P18287851516627077092

`A178334(n)*A327369(A134869(n+1))`
-/

namespace A277072.P18287851516627077092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 n * A327369 (A134869 (n + 1)).toNat

end

end A277072.P18287851516627077092

/-! ## A277072.P5151239651865055858

`A178489(n)*A327369(A134869(n+1))`
-/

namespace A277072.P5151239651865055858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178489 n * A327369 (A134869 (n + 1)).toNat

end

end A277072.P5151239651865055858

/-!
# A277073: Number of n-node labeled graphs with two endpoints.

The programs for A277073, there is no canonical definition to state claims against.
-/

/-! ## A277073.P16980734711390571057

`A327369(∑[char[1]+1+n]+1)`
-/

namespace A277073.P16980734711390571057
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = n then 1 else 0) + 1 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327369 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A277073.P16980734711390571057

/-! ## A277073.P15397963007117214976

`record[A010054(n)*A327369(n+2)]`
-/

namespace A277073.P15397963007117214976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A327369 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A277073.P15397963007117214976

/-!
# A277074: Number of n-node labeled graphs with three endpoints.

The programs for A277074, there is no canonical definition to state claims against.
-/

/-! ## A277074.P766774864467958859

`A163342(A182881(n))/3`
-/

namespace A277074.P766774864467958859
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A163342 (A182881 n).toNat : ℚ) / 3

end

end A277074.P766774864467958859

/-! ## A277074.P2608199292150680236

`A285326(A121413(n)-A000312(n))`
-/

namespace A277074.P2608199292150680236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285326 (A121413 n - A000312 n).toNat

end

end A277074.P2608199292150680236

/-!
# A277075: Numbers n for which A276711(n) = 1.

The programs for A277075, there is no canonical definition to state claims against.
-/

/-! ## A277075.P7446361243305488145

`eq[1, A276711(n+1)]+1`
-/

namespace A277075.P7446361243305488145
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276711 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A277075.P7446361243305488145

/-! ## A277075.P15579723145246836324

`eq[1, A276711(A028310(n))]`
-/

namespace A277075.P15579723145246836324
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276711 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A277075.P15579723145246836324

/-! ## A277075.P13445463096793430262

`eq[1, A276711(A153151(n+1))]`
-/

namespace A277075.P13445463096793430262
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276711 (A153151 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A277075.P13445463096793430262

/-! ## A277075.P8020622659558902529

`eq[1, A276711(A000007(n)+n)]`
-/

namespace A277075.P8020622659558902529
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276711 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A277075.P8020622659558902529

/-! ## A277075.P7772811810922545413

`eq[1, A276711(A008619(A004273(n)))]`
-/

namespace A277075.P7772811810922545413
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276711 (A008619 (A004273 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A277075.P7772811810922545413

/-!
# A277076: Expansion of f(-x)^8 * Q(x) in powers of x where f() is a Ramanujan theta function and Q() is a Ramanujan Lambert series.

The programs for A277076, there is no canonical definition to state claims against.
-/

/-! ## A277076.P9425373006300831230

`A000739(A028896(n))/A000739(n)`
-/

namespace A277076.P9425373006300831230
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000739 (A028896 n).toNat : ℚ) / (A000739 n : ℚ)

end

end A277076.P9425373006300831230

/-! ## A277076.P5428869373544458542

`A000739(A128422(3*(n+1)))/A000739(n)`
-/

namespace A277076.P5428869373544458542
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000739 (A128422 (3 * (n + 1))).toNat : ℚ) / (A000739 n : ℚ)

end

end A277076.P5428869373544458542

/-!
# A277078: Triangular array similar to A255935 but with 0's and 2's swapped in the trailing diagonal. The columns alternate in signs.

The programs for A277078, the canonical program `A277078.P923418389823604188` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A277078 has offset 0).

The definition of A277078 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9870 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A277078.P1531311547179929015

`A130595(∑[2*n]%comp[∑[n]])+char[∑[n-1]]`
-/

namespace A277078.P1531311547179929015
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f5 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130595 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n) + ((if ∃ j, f4 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A277078.P1531311547179929015

namespace A277078

/-- `A130595(∑[2*n]%comp[∑[n]])+char[∑[n-1]]` -/
def P1531311547179929015.Spec : Prop :=
  ∀ n, P1531311547179929015.a n = A277078 n

end A277078

/-! ## A277078.P4242463557231352163

`A130595(A061579(n))+char[∑[n-1]]`
-/

namespace A277078.P4242463557231352163
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130595 (A061579 n).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A277078.P4242463557231352163

namespace A277078

/-- `A130595(A061579(n))+char[∑[n-1]]` -/
def P4242463557231352163.Spec : Prop :=
  ∀ n, P4242463557231352163.a n = A277078 n

end A277078

/-! ## A277078.P13257382844766957059

`A130595(A114327(n)+n)+char[∑[n-1]]`
-/

namespace A277078.P13257382844766957059
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130595 (A114327 n + (n : ℤ)).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A277078.P13257382844766957059

namespace A277078

/-- `A130595(A114327(n)+n)+char[∑[n-1]]` -/
def P13257382844766957059.Spec : Prop :=
  ∀ n, P13257382844766957059.a n = A277078 n

end A277078

/-! ## A277078.P14326540616511684196

`Δ[A131507(n)]-A140575(A061579(n))`
-/

namespace A277078.P14326540616511684196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131507 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A140575 (A061579 n).toNat

end

end A277078.P14326540616511684196

namespace A277078

/-- `Δ[A131507(n)]-A140575(A061579(n))` -/
def P14326540616511684196.Spec : Prop :=
  ∀ n, P14326540616511684196.a n = A277078 n

end A277078

/-! ## A277078.P923418389823604188

`A130595(∑[A198954(n)-1])+A130321(n)%2`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A277078

/-- `A130595(∑[A198954(n)-1])+A130321(n)%2` -/
def P923418389823604188.Spec : Prop :=
  ∀ n, P923418389823604188.a n = A277078 n

theorem P923418389823604188.correct : P923418389823604188.Spec := by
  intro n
  simp only [A277078]

end A277078

/-! ## A277078.P11505674154387083432

`A130595(A038722(n+2))+Δ[A002024(n+1)]`
-/

namespace A277078.P11505674154387083432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130595 (A038722 (n + 2)).toNat + (f1 (n + 1) - f1 n)

end

end A277078.P11505674154387083432

namespace A277078

/-- `A130595(A038722(n+2))+Δ[A002024(n+1)]` -/
def P11505674154387083432.Spec : Prop :=
  ∀ n, P11505674154387083432.a n = A277078 n

end A277078

/-! ## A277078.P8661074558793792003

`A115139(A056537(n+1))+A023531(n)`
-/

namespace A277078.P8661074558793792003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115139 (A056537 (n + 1)).toNat + A023531 n

end

end A277078.P8661074558793792003

namespace A277078

/-- `A115139(A056537(n+1))+A023531(n)` -/
def P8661074558793792003.Spec : Prop :=
  ∀ n, P8661074558793792003.a n = A277078 n

end A277078

/-! ## A277078.P7398352544399814993

`char[∑[n-1]]+A021009(n)/A094587(n)`
-/

namespace A277078.P7398352544399814993
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℚ) + (A021009 n : ℚ) / (A094587 n : ℚ)

end

end A277078.P7398352544399814993

namespace A277078

/-- `char[∑[n-1]]+A021009(n)/A094587(n)` -/
def P7398352544399814993.Spec : Prop :=
  ∀ n, P7398352544399814993.a n = (A277078 n : ℚ)

end A277078

/-! ## A277078.P8678706132342305766

`A357255(n+1)%A140414(n+1)`
-/

namespace A277078.P8678706132342305766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A357255 (n + 1)) (A140414 (n + 1))

end

end A277078.P8678706132342305766

namespace A277078

/-- `A357255(n+1)%A140414(n+1)` -/
def P8678706132342305766.Spec : Prop :=
  ∀ n, P8678706132342305766.a n = A277078 n

end A277078

/-!
# A277080: Irregular triangle read by rows: T(n,k) = number of size k subsets of S_n that remain unchanged by reverse.

The programs for A277080, there is no canonical definition to state claims against.
-/

/-! ## A277080.P452827182765931395

`A178245(A105291(n))`
-/

namespace A277080.P452827182765931395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178245 (A105291 n).toNat

end

end A277080.P452827182765931395

/-! ## A277080.P5747311006648471733

`A094098(A277081(n))`
-/

namespace A277080.P5747311006648471733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094098 (A277081 n).toNat

end

end A277080.P5747311006648471733

/-! ## A277080.P15757458988122224165

`A161123(A105291(n)+4)`
-/

namespace A277080.P15757458988122224165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161123 (A105291 n + 4).toNat

end

end A277080.P15757458988122224165

/-! ## A277080.P4630480434630955792

`A221171(3*A105291(n))`
-/

namespace A277080.P4630480434630955792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221171 (3 * A105291 n).toNat

end

end A277080.P4630480434630955792

/-! ## A277080.P9019183607882407329

`val(A000105(A105291(n)+1)+1, 2)`
-/

namespace A277080.P9019183607882407329
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A000105 (A105291 n + 1).toNat + 1).toNat 2

end

end A277080.P9019183607882407329

/-!
# A277081: Irregular triangle read by rows: T(n,k) = number of size k subsets of S_n that remain unchanged under the operation of replacing a permutation with its inverse.

The programs for A277081, there is no canonical definition to state claims against.
-/

/-! ## A277081.P10894571274448629511

`A308590(A105291(n))`
-/

namespace A277081.P10894571274448629511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308590 (A105291 n).toNat

end

end A277081.P10894571274448629511

/-! ## A277081.P922931001563594250

`A184164(A277086(n))-A277085(n)`
-/

namespace A277081.P922931001563594250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184164 (A277086 n).toNat - A277085 n

end

end A277081.P922931001563594250

/-! ## A277081.P324569803954746552

`A127321(A084546(n+1)^A127321(n))`
-/

namespace A277081.P324569803954746552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127321 (SequenceMachineLib.roundAway ((A084546 (n + 1) : ℚ) ^ (A127321 n : ℤ))).toNat

end

end A277081.P324569803954746552

/-! ## A277081.P7778556420353631475

`A184164(A277086(n))-A339601(A277083(n))`
-/

namespace A277081.P7778556420353631475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184164 (A277086 n).toNat - A339601 (A277083 n).toNat

end

end A277081.P7778556420353631475

/-!
# A277082: Generalized 15-gonal (or pentadecagonal) numbers: n*(13*n - 11)/2, n = 0,+1,-1,+2,-2,+3,-3, ...

The programs for A277082, the canonical program `A277082.P6292742049226918344` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A277082 has offset 0).

The definition of A277082 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A277082.P6677627901955749166

`(26*n²+26*n+9*(-1)^n*(2*n+1)-9)/16`
-/

namespace A277082.P6677627901955749166
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((26 * n ^ 2 + 26 * n : ℤ) + 9 * (-1) ^ n * (2 * n + 1 : ℤ) - 9 : ℚ) / 16

end

end A277082.P6677627901955749166

namespace A277082

/-- `(26*n²+26*n+9*(-1)^n*(2*n+1)-9)/16` -/
def P6677627901955749166.Spec : Prop :=
  ∀ n, P6677627901955749166.a n = (A277082 n : ℚ)

theorem P6677627901955749166.correct : P6677627901955749166.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 | 4 =>
      simp [A277082, Nat.add_sub_cancel, A277082.P6677627901955749166.a, A277082.P6292742049226918344.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 5 =>
      have h1 := ih (m + 4) (by omega)
      have h2 := ih (m + 3) (by omega)
      have h3 := ih (m + 2) (by omega)
      have h4 := ih (m + 1) (by omega)
      have h5 := ih m (by omega)
      simp only [A277082, Nat.add_sub_cancel, A277082.P6677627901955749166.a, A277082.P6292742049226918344.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 h5 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 5 - 1 = m + 4 by omega, show m + 5 - 2 = m + 3 by omega, show m + 5 - 3 = m + 2 by omega, show m + 5 - 4 = m + 1 by omega, show m + 5 - 5 = m by omega, show m + 4 < m + 5 by omega, show m + 3 < m + 5 by omega, show m + 2 < m + 5 by omega, show m + 1 < m + 5 by omega, show m < m + 5 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 h5 ⊢
      rw [← h1, ← h2, ← h3, ← h4, ← h5]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A277082

/-! ## A277082.P6292742049226918344

`a(n-1)+2*a(n-2)-2*a(n-3)-a(n-4)+a(n-5)` with `a(0)=0, a(1)=1, a(2)=12, a(3)=15, a(4)=37`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A277082

/-- `a(n-1)+2*a(n-2)-2*a(n-3)-a(n-4)+a(n-5)` -/
def P6292742049226918344.Spec : Prop :=
  ∀ n, P6292742049226918344.a n = A277082 n

theorem P6292742049226918344.correct : P6292742049226918344.Spec := by
  intro n
  simp only [A277082]

end A277082

/-! ## A277082.P1620623673761807150

`comp[3*n]²-1-∑[n*ratio[gcd(2, n)]]`
-/

namespace A277082.P1620623673761807150
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 n

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) * ((f3 (n + 1) : ℚ) / (f3 n : ℚ))

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n ^ 2 : ℤ) - 1 : ℚ) - ∑ j ∈ Finset.range (n + 1), f2 j

end

end A277082.P1620623673761807150

namespace A277082

/-- `comp[3*n]²-1-∑[n*ratio[gcd(2, n)]]` -/
def P1620623673761807150.Spec : Prop :=
  ∀ n, P1620623673761807150.a n = (A277082 n : ℚ)

end A277082

/-! ## A277082.P322441382880199642

`∑[2*a(n-2)-a(n-4)]` with `a(0)=0, a(1)=1, a(2)=11, a(3)=3`
-/

namespace A277082.P322441382880199642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 11, 3] fun n f1 =>
  2 * f1 (n - 2) - f1 (n - 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A277082.P322441382880199642

namespace A277082

/-- `∑[2*a(n-2)-a(n-4)]` -/
def P322441382880199642.Spec : Prop :=
  ∀ n, P322441382880199642.a n = A277082 n

end A277082

/-! ## A277082.P8928163655011882948

`∑[A317311(n)]`
-/

namespace A277082.P8928163655011882948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317311 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A277082.P8928163655011882948

namespace A277082

/-- `∑[A317311(n)]` -/
def P8928163655011882948.Spec : Prop :=
  ∀ n, P8928163655011882948.a n = A277082 n

end A277082

/-! ## A277082.P6040415708042588591

`∑[(A317320(n)+n)/2]`
-/

namespace A277082.P6040415708042588591
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A317320 n + (n : ℤ) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A277082.P6040415708042588591

namespace A277082

/-- `∑[(A317320(n)+n)/2]` -/
def P6040415708042588591.Spec : Prop :=
  ∀ n, P6040415708042588591.a n = (A277082 n : ℚ)

end A277082

/-! ## A277082.P9679775931034467694

`A195045(n)-a(n-1)` with `a(0)=0`
-/

namespace A277082.P9679775931034467694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A195045 n - a (n - 1)

end

end A277082.P9679775931034467694

namespace A277082

/-- `A195045(n)-a(n-1)` -/
def P9679775931034467694.Spec : Prop :=
  ∀ n, P9679775931034467694.a n = A277082 n

end A277082

/-! ## A277082.P3996254710894578206

`∑[3*n*gcd(2, n)-A064680(n)]`
-/

namespace A277082.P3996254710894578206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n * Nat.gcd 2 n : ℤ) - A064680 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A277082.P3996254710894578206

namespace A277082

/-- `∑[3*n*gcd(2, n)-A064680(n)]` -/
def P3996254710894578206.Spec : Prop :=
  ∀ n, P3996254710894578206.a n = A277082 n

end A277082

/-! ## A277082.P12718667876937678388

`A195313(n)+A110660(n)`
-/

namespace A277082.P12718667876937678388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195313 n + A110660 n

end

end A277082.P12718667876937678388

namespace A277082

/-- `A195313(n)+A110660(n)` -/
def P12718667876937678388.Spec : Prop :=
  ∀ n, P12718667876937678388.a n = A277082 n

end A277082

/-! ## A277082.P12852006487673147586

`A303305(n)-A110660(n)`
-/

namespace A277082.P12852006487673147586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303305 n - A110660 n

end

end A277082.P12852006487673147586

namespace A277082

/-- `A303305(n)-A110660(n)` -/
def P12852006487673147586.Spec : Prop :=
  ∀ n, P12852006487673147586.a n = A277082 n

end A277082

/-! ## A277082.P14852631741354721085

`A273368(n)-A057570(n+1)`
-/

namespace A277082.P14852631741354721085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273368 n - A057570 (n + 1)

end

end A277082.P14852631741354721085

namespace A277082

/-- `A273368(n)-A057570(n+1)` -/
def P14852631741354721085.Spec : Prop :=
  ∀ n, P14852631741354721085.a n = A277082 n

end A277082

/-! ## A277082.P16814411049192594039

`A014493(n+1)-A319390(n)`
-/

namespace A277082.P16814411049192594039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014493 (n + 1) - A319390 n

end

end A277082.P16814411049192594039

namespace A277082

/-- `A014493(n+1)-A319390(n)` -/
def P16814411049192594039.Spec : Prop :=
  ∀ n, P16814411049192594039.a n = A277082 n

end A277082

/-! ## A277082.P14878456934257716932

`A195160(n)+2*A110660(n)`
-/

namespace A277082.P14878456934257716932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195160 n + 2 * A110660 n

end

end A277082.P14878456934257716932

namespace A277082

/-- `A195160(n)+2*A110660(n)` -/
def P14878456934257716932.Spec : Prop :=
  ∀ n, P14878456934257716932.a n = A277082 n

end A277082

/-! ## A277082.P12927656749511725257

`2*A074377(n)-A001318(n)`
-/

namespace A277082.P12927656749511725257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A074377 n - A001318 n

end

end A277082.P12927656749511725257

namespace A277082

/-- `2*A074377(n)-A001318(n)` -/
def P12927656749511725257.Spec : Prop :=
  ∀ n, P12927656749511725257.a n = A277082 n

end A277082

/-! ## A277082.P5311338640139400661

`2*A195160(n)-A085787(n)`
-/

namespace A277082.P5311338640139400661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A195160 n - A085787 n

end

end A277082.P5311338640139400661

namespace A277082

/-- `2*A195160(n)-A085787(n)` -/
def P5311338640139400661.Spec : Prop :=
  ∀ n, P5311338640139400661.a n = A277082 n

end A277082

/-! ## A277082.P16383973233193761211

`A195818(n)+A110660(n)/2`
-/

namespace A277082.P16383973233193761211
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A195818 n : ℚ) + (A110660 n : ℚ) / 2

end

end A277082.P16383973233193761211

namespace A277082

/-- `A195818(n)+A110660(n)/2` -/
def P16383973233193761211.Spec : Prop :=
  ∀ n, P16383973233193761211.a n = (A277082 n : ℚ)

end A277082

/-! ## A277082.P2926941227945847760

`2*A195162(n)-A118277(n)`
-/

namespace A277082.P2926941227945847760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A195162 n - A118277 n

end

end A277082.P2926941227945847760

namespace A277082

/-- `2*A195162(n)-A118277(n)` -/
def P2926941227945847760.Spec : Prop :=
  ∀ n, P2926941227945847760.a n = A277082 n

end A277082

/-! ## A277082.P10130983456212495233

`2*A195818(n)-A195313(n)`
-/

namespace A277082.P10130983456212495233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A195818 n - A195313 n

end

end A277082.P10130983456212495233

namespace A277082

/-- `2*A195818(n)-A195313(n)` -/
def P10130983456212495233.Spec : Prop :=
  ∀ n, P10130983456212495233.a n = A277082 n

end A277082

/-! ## A277082.P45795560261545158

`A057780(n+1)-A057569(n+1)`
-/

namespace A277082.P45795560261545158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057780 (n + 1) - A057569 (n + 1)

end

end A277082.P45795560261545158

namespace A277082

/-- `A057780(n+1)-A057569(n+1)` -/
def P45795560261545158.Spec : Prop :=
  ∀ n, P45795560261545158.a n = A277082 n

end A277082

/-! ## A277082.P8499792256680547689

`A085787(n)+A195313(n)-A001318(n)`
-/

namespace A277082.P8499792256680547689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085787 n + (A195313 n - A001318 n)

end

end A277082.P8499792256680547689

namespace A277082

/-- `A085787(n)+A195313(n)-A001318(n)` -/
def P8499792256680547689.Spec : Prop :=
  ∀ n, P8499792256680547689.a n = A277082 n

end A277082

/-!
# A277084: Pisot sequence L(4,14).

The programs for A277084, the canonical program `A277084.P4873811759989049577` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A277084 has offset 0).

The definition of A277084 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A277084.P4873811759989049577

`ceil(a(n-1)²/a(n-2))` with `a(0)=4, a(1)=14`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A277084

/-- `ceil(a(n-1)²/a(n-2))` -/
def P4873811759989049577.Spec : Prop :=
  ∀ n, P4873811759989049577.a n = A277084 n

theorem P4873811759989049577.correct : P4873811759989049577.Spec := by
  intro n
  simp only [A277084]

end A277084

/-! ## A277084.P1992099554543783728

`floor((a(n-1)²-1)/a(n-2))+1` with `a(0)=4, a(1)=14`
-/

namespace A277084.P1992099554543783728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4, 14] fun n a =>
  ⌊(a (n - 1) ^ 2 - 1 : ℚ) / (a (n - 2) : ℚ)⌋ + 1

end

end A277084.P1992099554543783728

namespace A277084

/-- `floor((a(n-1)²-1)/a(n-2))+1` -/
def P1992099554543783728.Spec : Prop :=
  ∀ n, P1992099554543783728.a n = A277084 n

end A277084

/-!
# A277085: Irregular triangle read by rows: T(n,k) = number of size k subsets of S_n that remain unchanged by a rotation of 90 degrees.

The programs for A277085, there is no canonical definition to state claims against.
-/

/-! ## A277085.P5223288488271968966

`and(A054990(A277083(n)), A277081(n))`
-/

namespace A277085.P5223288488271968966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A054990 (A277083 n).toNat) (A277081 n)

end

end A277085.P5223288488271968966

/-! ## A277085.P4621769571555033607

`A339601(and(A149585(n), A277081(n)))`
-/

namespace A277085.P4621769571555033607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339601 (Int.land (A149585 n) (A277081 n)).toNat

end

end A277085.P4621769571555033607

/-! ## A277085.P3503239906079859536

`A339601(A277083(n))`
-/

namespace A277085.P3503239906079859536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339601 (A277083 n).toNat

end

end A277085.P3503239906079859536

/-! ## A277085.P4229867731880176589

`A093997(A000010(n^a(n-1)))` with `a(0)=1`
-/

namespace A277085.P4229867731880176589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A093997 (A000010 (SequenceMachineLib.roundAway ((n : ℚ) ^ (a (n - 1) : ℤ))).toNat).toNat

end

end A277085.P4229867731880176589

/-! ## A277085.P1786051967187723890

`A230001(A117356(n))`
-/

namespace A277085.P1786051967187723890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230001 (A117356 n).toNat

end

end A277085.P1786051967187723890

/-!
# A277087: a(0) = 1, a(n) = (denominator of the Bernoulli number B_{2n})/3, for n>=1.

The programs for A277087, the canonical program `A277087.P5148910457035852056` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A277087 has offset 0).

The definition of A277087 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5041 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A277087.P6109419068412476414

`ceil(A002445(n)/3)`
-/

namespace A277087.P6109419068412476414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A002445 n : ℚ) / 3⌉

end

end A277087.P6109419068412476414

namespace A277087

/-- `ceil(A002445(n)/3)` -/
def P6109419068412476414.Spec : Prop :=
  ∀ n, P6109419068412476414.a n = A277087 n

end A277087

/-! ## A277087.P17031347755731356936

`A002445(n)/A122553(n)`
-/

namespace A277087.P17031347755731356936
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002445 n : ℚ) / (A122553 n : ℚ)

end

end A277087.P17031347755731356936

namespace A277087

/-- `A002445(n)/A122553(n)` -/
def P17031347755731356936.Spec : Prop :=
  ∀ n, P17031347755731356936.a n = (A277087 n : ℚ)

end A277087

/-! ## A277087.P12232287892484992743

`A002445(n)/3%∑[A027760(n+1)]`
-/

namespace A277087.P12232287892484992743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027760 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002445 n : ℚ) / (Int.tmod 3 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ)

end

end A277087.P12232287892484992743

namespace A277087

/-- `A002445(n)/3%∑[A027760(n+1)]` -/
def P12232287892484992743.Spec : Prop :=
  ∀ n, P12232287892484992743.a n = (A277087 n : ℚ)

end A277087

/-! ## A277087.P4878412520068203106

`1/3*A002445(n)/A002445(and(1, a(n-1)))` with `a(0)=1, a(1)=2`
-/

namespace A277087.P4878412520068203106
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 2] fun n a =>
  (1 : ℚ) / 3 * ((A002445 n : ℚ) / (A002445 (Int.land 1 (SequenceMachineLib.roundAway (a (n - 1)))).toNat : ℚ))

end

end A277087.P4878412520068203106

namespace A277087

/-- `1/3*A002445(n)/A002445(and(1, a(n-1)))` -/
def P4878412520068203106.Spec : Prop :=
  ∀ n, P4878412520068203106.a n = (A277087 n : ℚ)

end A277087

/-! ## A277087.P4148297076746690359

`A002445(n)/A074816(A074816(n+1))`
-/

namespace A277087.P4148297076746690359
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002445 n : ℚ) / (A074816 (A074816 (n + 1)).toNat : ℚ)

end

end A277087.P4148297076746690359

namespace A277087

/-- `A002445(n)/A074816(A074816(n+1))` -/
def P4148297076746690359.Spec : Prop :=
  ∀ n, P4148297076746690359.a n = (A277087 n : ℚ)

end A277087

/-! ## A277087.P10328972591150531708

`ceil(A106458(2*n)/3)`
-/

namespace A277087.P10328972591150531708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A106458 (2 * n) : ℚ) / 3⌉

end

end A277087.P10328972591150531708

namespace A277087

/-- `ceil(A106458(2*n)/3)` -/
def P10328972591150531708.Spec : Prop :=
  ∀ n, P10328972591150531708.a n = A277087 n

end A277087

/-! ## A277087.P5148910457035852056

`ceil(A141056(2*n)/3)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A277087

/-- `ceil(A141056(2*n)/3)` -/
def P5148910457035852056.Spec : Prop :=
  ∀ n, P5148910457035852056.a n = A277087 n

theorem P5148910457035852056.correct : P5148910457035852056.Spec := by
  intro n
  simp only [A277087]

end A277087

/-! ## A277087.P3338573365424102867

`round(A141056(2*n)/A157532(n+1))`
-/

namespace A277087.P3338573365424102867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A141056 (2 * n) : ℚ) / (A157532 (n + 1) : ℚ))

end

end A277087.P3338573365424102867

namespace A277087

/-- `round(A141056(2*n)/A157532(n+1))` -/
def P3338573365424102867.Spec : Prop :=
  ∀ n, P3338573365424102867.a n = A277087 n

end A277087

/-! ## A277087.P10449887359771516536

`round(A141056(2*n)/3+1-A057427(n))`
-/

namespace A277087.P10449887359771516536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A141056 (2 * n) : ℚ) / 3 + 1 - (A057427 n : ℚ))

end

end A277087.P10449887359771516536

namespace A277087

/-- `round(A141056(2*n)/3+1-A057427(n))` -/
def P10449887359771516536.Spec : Prop :=
  ∀ n, P10449887359771516536.a n = A277087 n

end A277087

/-! ## A277087.P4616923982095401151

`ceil(A027642(2*n)/3)`
-/

namespace A277087.P4616923982095401151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A027642 (2 * n) : ℚ) / 3⌉

end

end A277087.P4616923982095401151

namespace A277087

/-- `ceil(A027642(2*n)/3)` -/
def P4616923982095401151.Spec : Prop :=
  ∀ n, P4616923982095401151.a n = A277087 n

end A277087

/-! ## A277087.P1894033265220156791

`ceil(A176591(2*n)/3)`
-/

namespace A277087.P1894033265220156791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A176591 (2 * n) : ℚ) / 3⌉

end

end A277087.P1894033265220156791

namespace A277087

/-- `ceil(A176591(2*n)/3)` -/
def P1894033265220156791.Spec : Prop :=
  ∀ n, P1894033265220156791.a n = A277087 n

end A277087

/-! ## A277087.P10697387747463890648

`A176591(2*n)/A158799(2*n)`
-/

namespace A277087.P10697387747463890648
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A176591 (2 * n) : ℚ) / (A158799 (2 * n) : ℚ)

end

end A277087.P10697387747463890648

namespace A277087

/-- `A176591(2*n)/A158799(2*n)` -/
def P10697387747463890648.Spec : Prop :=
  ∀ n, P10697387747463890648.a n = (A277087 n : ℚ)

end A277087

/-! ## A277087.P17281489676732507831

`A027642(2*n)/A153284(2*n+1)`
-/

namespace A277087.P17281489676732507831
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027642 (2 * n) : ℚ) / (A153284 (2 * n + 1) : ℚ)

end

end A277087.P17281489676732507831

namespace A277087

/-- `A027642(2*n)/A153284(2*n+1)` -/
def P17281489676732507831.Spec : Prop :=
  ∀ n, P17281489676732507831.a n = (A277087 n : ℚ)

end A277087

/-! ## A277087.P7049116561520037167

`A027642(2*n)/A111742(A027642(2*n+1))`
-/

namespace A277087.P7049116561520037167
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027642 (2 * n) : ℚ) / (A111742 (A027642 (2 * n + 1)).toNat : ℚ)

end

end A277087.P7049116561520037167

namespace A277087

/-- `A027642(2*n)/A111742(A027642(2*n+1))` -/
def P7049116561520037167.Spec : Prop :=
  ∀ n, P7049116561520037167.a n = (A277087 n : ℚ)

end A277087

/-! ## A277087.P3064346680697031007

`A051717(A171781(n+1))/3`
-/

namespace A277087.P3064346680697031007
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051717 (A171781 (n + 1)).toNat : ℚ) / 3

end

end A277087.P3064346680697031007

namespace A277087

/-- `A051717(A171781(n+1))/3` -/
def P3064346680697031007.Spec : Prop :=
  ∀ n, P3064346680697031007.a n = (A277087 n : ℚ)

end A277087

/-! ## A277087.P9927246817268767455

`A106458(2*n)/(A107279(2*n)+1)`
-/

namespace A277087.P9927246817268767455
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A106458 (2 * n) : ℚ) / (A107279 (2 * n) + 1 : ℚ)

end

end A277087.P9927246817268767455

namespace A277087

/-- `A106458(2*n)/(A107279(2*n)+1)` -/
def P9927246817268767455.Spec : Prop :=
  ∀ n, P9927246817268767455.a n = (A277087 n : ℚ)

end A277087

/-! ## A277087.P8971794991712653591

`ceil(A051717(2*n+1)/3)`
-/

namespace A277087.P8971794991712653591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A051717 (2 * n + 1) : ℚ) / 3⌉

end

end A277087.P8971794991712653591

namespace A277087

/-- `ceil(A051717(2*n+1)/3)` -/
def P8971794991712653591.Spec : Prop :=
  ∀ n, P8971794991712653591.a n = A277087 n

end A277087

/-! ## A277087.P4627217812682826250

`ceil(A176289(2*n)/3)`
-/

namespace A277087.P4627217812682826250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A176289 (2 * n) : ℚ) / 3⌉

end

end A277087.P4627217812682826250

namespace A277087

/-- `ceil(A176289(2*n)/3)` -/
def P4627217812682826250.Spec : Prop :=
  ∀ n, P4627217812682826250.a n = A277087 n

end A277087

/-! ## A277087.P3240222093508203963

`A176289(2*n)/(2-A134824(n+1))`
-/

namespace A277087.P3240222093508203963
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A176289 (2 * n) : ℚ) / (2 - A134824 (n + 1) : ℚ)

end

end A277087.P3240222093508203963

namespace A277087

/-- `A176289(2*n)/(2-A134824(n+1))` -/
def P3240222093508203963.Spec : Prop :=
  ∀ n, P3240222093508203963.a n = (A277087 n : ℚ)

end A277087

/-!
# A277088: Pisot sequences L(5,12), S(5,12).

The programs for A277088, the canonical program `A277088.P5791212512412154247` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A277088 has offset 0).

The definition of A277088 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A277088.P5791212512412154247

`ceil(a(n-1)²/a(n-2))` with `a(0)=5, a(1)=12`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A277088

/-- `ceil(a(n-1)²/a(n-2))` -/
def P5791212512412154247.Spec : Prop :=
  ∀ n, P5791212512412154247.a n = A277088 n

theorem P5791212512412154247.correct : P5791212512412154247.Spec := by
  intro n
  simp only [A277088]

end A277088

/-! ## A277088.P3782833194389943003

`floor(a(n-1)²/a(n-2))+1` with `a(0)=5, a(1)=12`
-/

namespace A277088.P3782833194389943003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5, 12] fun n a =>
  ⌊(a (n - 1) ^ 2 : ℚ) / (a (n - 2) : ℚ)⌋ + 1

end

end A277088.P3782833194389943003

namespace A277088

/-- `floor(a(n-1)²/a(n-2))+1` -/
def P3782833194389943003.Spec : Prop :=
  ∀ n, P3782833194389943003.a n = A277088 n

end A277088

/-! ## A277088.P12974925480859449165

`ceil(a(n-1)*a(n-1)/a(n-2))` with `a(0)=5, a(1)=12`
-/

namespace A277088.P12974925480859449165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5, 12] fun n a =>
  ⌈(a (n - 1) * a (n - 1) : ℚ) / (a (n - 2) : ℚ)⌉

end

end A277088.P12974925480859449165

namespace A277088

/-- `ceil(a(n-1)*a(n-1)/a(n-2))` -/
def P12974925480859449165.Spec : Prop :=
  ∀ n, P12974925480859449165.a n = A277088 n

theorem P12974925480859449165.correct : P12974925480859449165.Spec := by
  intro n
  simp only [A277088, Nat.add_sub_cancel, A277088.P12974925480859449165.a, A277088.P5791212512412154247.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A277088

/-! ## A277088.P9509451020213405676

`A310496(a(n-1))/2` with `a(0)=5`
-/

namespace A277088.P9509451020213405676
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [5] fun n a =>
  (A310496 (SequenceMachineLib.roundAway (a (n - 1))).toNat : ℚ) / 2

end

end A277088.P9509451020213405676

namespace A277088

/-- `A310496(a(n-1))/2` -/
def P9509451020213405676.Spec : Prop :=
  ∀ n, P9509451020213405676.a n = (A277088 n : ℚ)

end A277088

/-!
# A277089: Pisot sequences L(6,15), S(6,15).

The programs for A277089, there is no canonical definition to state claims against.
-/

/-! ## A277089.P14161120309691553263

`A249117(a(n-1))+a(n-1)` with `a(0)=6`
-/

namespace A277089.P14161120309691553263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [6] fun n a =>
  A249117 (a (n - 1)).toNat + a (n - 1)

end

end A277089.P14161120309691553263

/-! ## A277089.P9256592873220584820

`A020725(floor((a(n-1)²+1)/a(n-2)))` with `a(0)=6, a(1)=15`
-/

namespace A277089.P9256592873220584820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [6, 15] fun n a =>
  A020725 ⌊(a (n - 1) ^ 2 + 1 : ℚ) / (a (n - 2) : ℚ)⌋.toNat

end

end A277089.P9256592873220584820

/-! ## A277089.P13683404609351800735

`A057353(A184118(a(n-1)))` with `a(0)=6`
-/

namespace A277089.P13683404609351800735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [6] fun n a =>
  A057353 (A184118 (a (n - 1)).toNat).toNat

end

end A277089.P13683404609351800735

/-!
# A277090: Expansion of Product_{k>=0} 1/(1 - x^(8*k+1)).

The programs for A277090, there is no canonical definition to state claims against.
-/

/-! ## A277090.P17548574192115231446

`A116371(lt[A345913(n+1), A056964(n)])`
-/

namespace A277090.P17548574192115231446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345913 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056964 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116371 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A277090.P17548574192115231446

/-! ## A277090.P3266492255660732078

`A116371(eq[A010894(n+4), A010894(n)])`
-/

namespace A277090.P3266492255660732078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010894 (n + 4 + 21)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010894 (n + 21)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116371 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A277090.P3266492255660732078

/-! ## A277090.P10344782794729274193

`A116371(lt[A048941(n+1), A268204(n+1)])`
-/

namespace A277090.P10344782794729274193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048941 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268204 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116371 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A277090.P10344782794729274193

/-! ## A277090.P16524597624112003458

`∑[A294137((A127843(n+1)²+1)²)]`
-/

namespace A277090.P16524597624112003458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294137 ((A127843 (n + 1) ^ 2 + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A277090.P16524597624112003458

/-! ## A277090.P15061467712790450042

`∑[A067659(A127843(n+1)^A065330(n+1))]`
-/

namespace A277090.P15061467712790450042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067659 (SequenceMachineLib.roundAway ((A127843 (n + 1) : ℚ) ^ (A065330 (n + 1) : ℤ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A277090.P15061467712790450042

/-!
# A277091: a(n) = ((1 + sqrt(15))^n - (1 - sqrt(15))^n)/sqrt(15).

The programs for A277091, the canonical program `A277091.P15286472454636285972` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A277091 has offset 0).

The definition of A277091 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A277091.P15286472454636285972

`2*a(n-1)+14*a(n-2)` with `a(0)=0, a(1)=2`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A277091

/-- `2*a(n-1)+14*a(n-2)` -/
def P15286472454636285972.Spec : Prop :=
  ∀ n, (P15286472454636285972.a n : ℤ) = A277091 n

theorem P15286472454636285972.correct : P15286472454636285972.Spec := by
  intro n
  simp only [A277091]

end A277091

/-! ## A277091.P510569910795225643

`ogf(2x/(1-2x-14x^2))`
-/

namespace A277091.P510569910795225643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 2] [1, -2, -14] n

end

end A277091.P510569910795225643

namespace A277091

/-- `ogf(2x/(1-2x-14x^2))` -/
def P510569910795225643.Spec : Prop :=
  ∀ n, P510569910795225643.a n = A277091 n

end A277091

/-! ## A277091.P10477050960929812703

`((1+sqrt(15))^n-(1-sqrt(15))^n)/sqrt(15)`
-/

namespace A277091.P10477050960929812703
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((1 + Real.sqrt (15 : ℝ)) ^ n - (1 - Real.sqrt (15 : ℝ)) ^ n) / Real.sqrt (15 : ℝ)

end

end A277091.P10477050960929812703

namespace A277091

/-- `((1+sqrt(15))^n-(1-sqrt(15))^n)/sqrt(15)` -/
def P10477050960929812703.Spec : Prop :=
  ∀ n, P10477050960929812703.a n = (A277091 n : ℝ)

theorem P10477050960929812703.correct : P10477050960929812703.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A277091, Nat.add_sub_cancel, A277091.P10477050960929812703.a, A277091.P15286472454636285972.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A277091, Nat.add_sub_cancel, A277091.P10477050960929812703.a, A277091.P15286472454636285972.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A277091

/-! ## A277091.P8005576557102595244

`A005843(a(n-1)+7*a(n-2))` with `a(0)=0, a(1)=2`
-/

namespace A277091.P8005576557102595244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2] fun n a =>
  A005843 (a (n - 1) + 7 * a (n - 2)).toNat

end

end A277091.P8005576557102595244

namespace A277091

/-- `A005843(a(n-1)+7*a(n-2))` -/
def P8005576557102595244.Spec : Prop :=
  ∀ n, P8005576557102595244.a n = A277091 n

end A277091

/-!
# A277093: Numbers k such that sin(k) > 0 and sin(k+2) > 0.

The programs for A277093, the canonical program `A277093.P3863544537346536205` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A277093 has offset 1).

The definition of A277093 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9084 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A277093.P3863544537346536205

`lt[sin(1), sin(n+1)]`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A277093

/-- `lt[sin(1), sin(n+1)]` -/
def P3863544537346536205.Spec : Prop :=
  ∀ n, (P3863544537346536205.a n : ℤ) = A277093 (n + 1)

theorem P3863544537346536205.correct : P3863544537346536205.Spec := by
  intro n
  simp only [A277093, Nat.add_sub_cancel]

end A277093

/-! ## A277093.P823637372946864662

`lt[sin(1), sin(n)]-1`
-/

namespace A277093.P823637372946864662
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sin (1 : ℝ)

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sin (n : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j < f2 j) n : ℤ) - 1

end

end A277093.P823637372946864662

namespace A277093

/-- `lt[sin(1), sin(n)]-1` -/
def P823637372946864662.Spec : Prop :=
  ∀ n, P823637372946864662.a n = A277093 (n + 1)

end A277093

/-! ## A277093.P6191033506734711913

`eq[0, floor(sin(1)/sin(n+1))]`
-/

namespace A277093.P6191033506734711913
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sin (1 : ℝ) / Real.sin (n + 1 : ℝ)⌋

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A277093.P6191033506734711913

namespace A277093

/-- `eq[0, floor(sin(1)/sin(n+1))]` -/
def P6191033506734711913.Spec : Prop :=
  ∀ n, (P6191033506734711913.a n : ℤ) = A277093 (n + 1)

end A277093

/-! ## A277093.P13545188077781663284

`∩[A070752(n+1)-2, A070752(n+1)]`
-/

namespace A277093.P13545188077781663284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070752 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070752 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A277093.P13545188077781663284

namespace A277093

/-- `∩[A070752(n+1)-2, A070752(n+1)]` -/
def P13545188077781663284.Spec : Prop :=
  ∀ n, (P13545188077781663284.a n : ℤ) = A277093 (n + 1)

end A277093

/-! ## A277093.P9364067732440204126

`lt[tan(1), tan(∑[n+1]/(n+1))]`
-/

namespace A277093.P9364067732440204126
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.tan (1 : ℝ)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.tan (((∑ j ∈ Finset.range (n + 1), f3 j : ℕ) : ℚ) / (n + 1 : ℚ) : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A277093.P9364067732440204126

namespace A277093

/-- `lt[tan(1), tan(∑[n+1]/(n+1))]` -/
def P9364067732440204126.Spec : Prop :=
  ∀ n, (P9364067732440204126.a n : ℤ) = A277093 (n + 1)

end A277093

/-! ## A277093.P396095754428014344

`∩[A070752(n+1), A289207(A277094(n+1))]`
-/

namespace A277093.P396095754428014344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070752 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 (A277094 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A277093.P396095754428014344

namespace A277093

/-- `∩[A070752(n+1), A289207(A277094(n+1))]` -/
def P396095754428014344.Spec : Prop :=
  ∀ n, (P396095754428014344.a n : ℤ) = A277093 (n + 1)

end A277093

/-! ## A277093.P5774587791235816586

`A289207(∩[A070752(n+1)+2, A070752(n+1)])`
-/

namespace A277093.P5774587791235816586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070752 (n + 1) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070752 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A277093.P5774587791235816586

namespace A277093

/-- `A289207(∩[A070752(n+1)+2, A070752(n+1)])` -/
def P5774587791235816586.Spec : Prop :=
  ∀ n, P5774587791235816586.a n = A277093 (n + 1)

end A277093

/-! ## A277093.P328695961666817530

`∩[A327422(n+1), A246389(n)-1]`
-/

namespace A277093.P328695961666817530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327422 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246389 n - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A277093.P328695961666817530

namespace A277093

/-- `∩[A327422(n+1), A246389(n)-1]` -/
def P328695961666817530.Spec : Prop :=
  ∀ n, (P328695961666817530.a n : ℤ) = A277093 (n + 1)

end A277093

/-! ## A277093.P12310801089839902034

`∩[A246389(n+1)-1, A246389(n+1)]`
-/

namespace A277093.P12310801089839902034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246389 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246389 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A277093.P12310801089839902034

namespace A277093

/-- `∩[A246389(n+1)-1, A246389(n+1)]` -/
def P12310801089839902034.Spec : Prop :=
  ∀ n, (P12310801089839902034.a n : ℤ) = A277093 (n + 1)

end A277093

/-! ## A277093.P6481236847933614261

`A246389(A063460(n+1)%A087642(n+3))`
-/

namespace A277093.P6481236847933614261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246389 (Int.tmod (A063460 (n + 1)) (A087642 (n + 3))).toNat

end

end A277093.P6481236847933614261

namespace A277093

/-- `A246389(A063460(n+1)%A087642(n+3))` -/
def P6481236847933614261.Spec : Prop :=
  ∀ n, P6481236847933614261.a n = A277093 (n + 1)

end A277093

/-!
# A277094: Numbers k such that sin(k) > 0 and sin(k+2) < 0.

The programs for A277094, the canonical program `A277094.P17994480033795369155` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A277094 has offset 1).

The definition of A277094 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A277094.P1660663659604150156

`lt[cos(1), -cos(n+1)]`
-/

namespace A277094.P1660663659604150156
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cos (1 : ℝ)

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  -Real.cos (n + 1 : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A277094.P1660663659604150156

namespace A277094

/-- `lt[cos(1), -cos(n+1)]` -/
def P1660663659604150156.Spec : Prop :=
  ∀ n, (P1660663659604150156.a n : ℤ) = A277094 (n + 1)

end A277094

/-! ## A277094.P16821497952355115637

`lt[sin(n+2), floor(sin(n))]`
-/

namespace A277094.P16821497952355115637
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sin (n + 2 : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sin (n : ℝ)⌋

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n

end

end A277094.P16821497952355115637

namespace A277094

/-- `lt[sin(n+2), floor(sin(n))]` -/
def P16821497952355115637.Spec : Prop :=
  ∀ n, (P16821497952355115637.a n : ℤ) = A277094 (n + 1)

end A277094

/-! ## A277094.P12249146515541440253

`lt[ceil(sin(n+2)), sin(n)]`
-/

namespace A277094.P12249146515541440253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sin (n + 2 : ℝ)⌉

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sin (n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A277094.P12249146515541440253

namespace A277094

/-- `lt[ceil(sin(n+2)), sin(n)]` -/
def P12249146515541440253.Spec : Prop :=
  ∀ n, (P12249146515541440253.a n : ℤ) = A277094 (n + 1)

end A277094

/-! ## A277094.P10804695876693648585

`lt[cos(1)+cos(n+1), 0]`
-/

namespace A277094.P10804695876693648585
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cos (1 : ℝ) + Real.cos (n + 1 : ℝ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n

end

end A277094.P10804695876693648585

namespace A277094

/-- `lt[cos(1)+cos(n+1), 0]` -/
def P10804695876693648585.Spec : Prop :=
  ∀ n, (P10804695876693648585.a n : ℤ) = A277094 (n + 1)

end A277094

/-! ## A277094.P17994480033795369155

`A063459(or(1, n))+n`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A277094

/-- `A063459(or(1, n))+n` -/
def P17994480033795369155.Spec : Prop :=
  ∀ n, P17994480033795369155.a n = A277094 (n + 1)

theorem P17994480033795369155.correct : P17994480033795369155.Spec := by
  intro n
  simp only [A277094, Nat.add_sub_cancel]

end A277094

/-! ## A277094.P4893578595446566997

`∪[A246388(n)-1, A246388(n)]`
-/

namespace A277094.P4893578595446566997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246388 n - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246388 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A277094.P4893578595446566997

namespace A277094

/-- `∪[A246388(n)-1, A246388(n)]` -/
def P4893578595446566997.Spec : Prop :=
  ∀ n, (P4893578595446566997.a n : ℤ) = A277094 (n + 1)

end A277094

/-! ## A277094.P13507591637487416998

`A022844(A109613(n))+n-A109613(n)`
-/

namespace A277094.P13507591637487416998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022844 (A109613 n).toNat + ((n : ℤ) - A109613 n)

end

end A277094.P13507591637487416998

namespace A277094

/-- `A022844(A109613(n))+n-A109613(n)` -/
def P13507591637487416998.Spec : Prop :=
  ∀ n, P13507591637487416998.a n = A277094 (n + 1)

end A277094

/-! ## A277094.P736587167625698762

`∪[A022844(2*n+1)-1, A022844(2*n+1)]`
-/

namespace A277094.P736587167625698762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022844 (2 * n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022844 (2 * n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A277094.P736587167625698762

namespace A277094

/-- `∪[A022844(2*n+1)-1, A022844(2*n+1)]` -/
def P736587167625698762.Spec : Prop :=
  ∀ n, (P736587167625698762.a n : ℤ) = A277094 (n + 1)

end A277094

/-! ## A277094.P2993428824403858431

`A063459(A004525(2*n+1))+n`
-/

namespace A277094.P2993428824403858431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063459 (A004525 (2 * n + 1)).toNat + (n : ℤ)

end

end A277094.P2993428824403858431

namespace A277094

/-- `A063459(A004525(2*n+1))+n` -/
def P2993428824403858431.Spec : Prop :=
  ∀ n, P2993428824403858431.a n = A277094 (n + 1)

end A277094

/-! ## A277094.P7245706830306963892

`∩[A070751(n+1)-2, A332484(n+1)]`
-/

namespace A277094.P7245706830306963892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070751 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332484 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A277094.P7245706830306963892

namespace A277094

/-- `∩[A070751(n+1)-2, A332484(n+1)]` -/
def P7245706830306963892.Spec : Prop :=
  ∀ n, (P7245706830306963892.a n : ℤ) = A277094 (n + 1)

end A277094

/-! ## A277094.P10680076520682050555

`∩[A070752(n+1), A332486(n+1)-2]`
-/

namespace A277094.P10680076520682050555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070752 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332486 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A277094.P10680076520682050555

namespace A277094

/-- `∩[A070752(n+1), A332486(n+1)-2]` -/
def P10680076520682050555.Spec : Prop :=
  ∀ n, (P10680076520682050555.a n : ℤ) = A277094 (n + 1)

end A277094

/-! ## A277094.P8373728089186965293

`lt[∑[sin(2*n)], sin(n)]`
-/

namespace A277094.P8373728089186965293
noncomputable section

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sin (2 * n : ℝ)

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f3 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sin (n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n

end

end A277094.P8373728089186965293

namespace A277094

/-- `lt[∑[sin(2*n)], sin(n)]` -/
def P8373728089186965293.Spec : Prop :=
  ∀ n, (P8373728089186965293.a n : ℤ) = A277094 (n + 1)

end A277094

/-! ## A277094.P4755423301003961516

`lt[sin(n+2), A000493(n)]`
-/

namespace A277094.P4755423301003961516
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sin (n + 2 : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000493 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n

end

end A277094.P4755423301003961516

namespace A277094

/-- `lt[sin(n+2), A000493(n)]` -/
def P4755423301003961516.Spec : Prop :=
  ∀ n, (P4755423301003961516.a n : ℤ) = A277094 (n + 1)

end A277094

/-!
# A277095: Numbers k such that sin(k) < 0 and sin(k+2) > 0.

The programs for A277095, the canonical program `A277095.P9124153353783104984` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A277095 has offset 1).

The definition of A277095 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A277095.P9124153353783104984

`lt[cos(1), cos(n+1)]`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A277095

/-- `lt[cos(1), cos(n+1)]` -/
def P9124153353783104984.Spec : Prop :=
  ∀ n, (P9124153353783104984.a n : ℤ) = A277095 (n + 1)

theorem P9124153353783104984.correct : P9124153353783104984.Spec := by
  intro n
  simp only [A277095, Nat.add_sub_cancel]

end A277095

/-! ## A277095.P12459408867515464277

`comp[2*floor(sin(n))+n]`
-/

namespace A277095.P12459408867515464277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ⌊Real.sin (n : ℝ)⌋ + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A277095.P12459408867515464277

namespace A277095

/-- `comp[2*floor(sin(n))+n]` -/
def P12459408867515464277.Spec : Prop :=
  ∀ n, (P12459408867515464277.a n : ℤ) = A277095 (n + 1)

end A277095

/-! ## A277095.P9309381576585262428

`comp[n-lcm(2, floor(sin(n)))]`
-/

namespace A277095.P9309381576585262428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (Int.lcm 2 ⌊Real.sin (n : ℝ)⌋ : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A277095.P9309381576585262428

namespace A277095

/-- `comp[n-lcm(2, floor(sin(n)))]` -/
def P9309381576585262428.Spec : Prop :=
  ∀ n, (P9309381576585262428.a n : ℤ) = A277095 (n + 1)

end A277095

/-! ## A277095.P16184709569090712905

`lt[sin(n), floor(sin(n+2))]`
-/

namespace A277095.P16184709569090712905
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sin (n : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sin (n + 2 : ℝ)⌋

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n

end

end A277095.P16184709569090712905

namespace A277095

/-- `lt[sin(n), floor(sin(n+2))]` -/
def P16184709569090712905.Spec : Prop :=
  ∀ n, (P16184709569090712905.a n : ℤ) = A277095 (n + 1)

end A277095

/-! ## A277095.P9983359504618609483

`∩[A070752(n+1)-2, A332487(n+1)]`
-/

namespace A277095.P9983359504618609483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070752 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332487 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A277095.P9983359504618609483

namespace A277095

/-- `∩[A070752(n+1)-2, A332487(n+1)]` -/
def P9983359504618609483.Spec : Prop :=
  ∀ n, (P9983359504618609483.a n : ℤ) = A277095 (n + 1)

end A277095

/-! ## A277095.P4647914299883317813

`∩[A070751(n+1), A332485(n+1)-2]`
-/

namespace A277095.P4647914299883317813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070751 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332485 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A277095.P4647914299883317813

namespace A277095

/-- `∩[A070751(n+1), A332485(n+1)-2]` -/
def P4647914299883317813.Spec : Prop :=
  ∀ n, (P4647914299883317813.a n : ℤ) = A277095 (n + 1)

end A277095

/-! ## A277095.P2667035204262211582

`lt[1, sin(n+1)/∑[sin(n+1)]]`
-/

namespace A277095.P2667035204262211582
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sin (n + 1 : ℝ)

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sin (n + 1 : ℝ) / (∑ j ∈ Finset.range (n + 1), f3 j)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A277095.P2667035204262211582

namespace A277095

/-- `lt[1, sin(n+1)/∑[sin(n+1)]]` -/
def P2667035204262211582.Spec : Prop :=
  ∀ n, (P2667035204262211582.a n : ℤ) = A277095 (n + 1)

end A277095

/-! ## A277095.P16760907944313829776

`lt[cot(1), cot(∑[n+1]/(n+1))]`
-/

namespace A277095.P16760907944313829776
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cot (1 : ℝ)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cot (((∑ j ∈ Finset.range (n + 1), f3 j : ℕ) : ℚ) / (n + 1 : ℚ) : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A277095.P16760907944313829776

namespace A277095

/-- `lt[cot(1), cot(∑[n+1]/(n+1))]` -/
def P16760907944313829776.Spec : Prop :=
  ∀ n, (P16760907944313829776.a n : ℤ) = A277095 (n + 1)

end A277095

/-! ## A277095.P2311194863688673320

`ceil(log2(A041720(n)))`
-/

namespace A277095.P2311194863688673320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (A041720 n : ℝ)⌉

end

end A277095.P2311194863688673320

namespace A277095

/-- `ceil(log2(A041720(n)))` -/
def P2311194863688673320.Spec : Prop :=
  ∀ n, P2311194863688673320.a n = A277095 (n + 1)

end A277095

/-! ## A277095.P14297790721880647127

`∩[A070751(n+1), A369273(n+1)]`
-/

namespace A277095.P14297790721880647127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070751 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369273 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A277095.P14297790721880647127

namespace A277095

/-- `∩[A070751(n+1), A369273(n+1)]` -/
def P14297790721880647127.Spec : Prop :=
  ∀ n, (P14297790721880647127.a n : ℤ) = A277095 (n + 1)

end A277095

/-!
# A277096: Numbers k such that sin(k) < 0 and sin(k+2) < 0.

The programs for A277096, the canonical program `A277096.P17027947746212281597` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A277096 has offset 1).

The definition of A277096 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9085 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A277096.P17027947746212281597

`lt[sin(1), sin(-(n+1))]`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A277096

/-- `lt[sin(1), sin(-(n+1))]` -/
def P17027947746212281597.Spec : Prop :=
  ∀ n, (P17027947746212281597.a n : ℤ) = A277096 (n + 1)

theorem P17027947746212281597.correct : P17027947746212281597.Spec := by
  intro n
  simp only [A277096, Nat.add_sub_cancel]

end A277096

/-! ## A277096.P4469422884893653600

`eq[0, ceil(sin(1)/sin(n+1))]`
-/

namespace A277096.P4469422884893653600
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sin (1 : ℝ) / Real.sin (n + 1 : ℝ)⌉

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A277096.P4469422884893653600

namespace A277096

/-- `eq[0, ceil(sin(1)/sin(n+1))]` -/
def P4469422884893653600.Spec : Prop :=
  ∀ n, (P4469422884893653600.a n : ℤ) = A277096 (n + 1)

end A277096

/-! ## A277096.P2962603954277221336

`∩[A246390(n)-1, A246390(n)]`
-/

namespace A277096.P2962603954277221336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246390 n - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246390 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A277096.P2962603954277221336

namespace A277096

/-- `∩[A246390(n)-1, A246390(n)]` -/
def P2962603954277221336.Spec : Prop :=
  ∀ n, (P2962603954277221336.a n : ℤ) = A277096 (n + 1)

end A277096

/-! ## A277096.P14892872616402689418

`A246390(eq[n, n*Δ[A246390(n)]])`
-/

namespace A277096.P14892872616402689418
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246390 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (f3 (n + 1) - f3 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246390 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A277096.P14892872616402689418

namespace A277096

/-- `A246390(eq[n, n*Δ[A246390(n)]])` -/
def P14892872616402689418.Spec : Prop :=
  ∀ n, P14892872616402689418.a n = A277096 (n + 1)

end A277096

/-! ## A277096.P16572744745858527682

`A246390(eq[n, n/Δ[A246390(n)]])`
-/

namespace A277096.P16572744745858527682
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246390 n

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (f3 (n + 1) - f3 n : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246390 (SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n)

end

end A277096.P16572744745858527682

namespace A277096

/-- `A246390(eq[n, n/Δ[A246390(n)]])` -/
def P16572744745858527682.Spec : Prop :=
  ∀ n, P16572744745858527682.a n = A277096 (n + 1)

end A277096

/-! ## A277096.P12144705852770135465

`∩[A070751(n+1)-2, A070751(n+1)]`
-/

namespace A277096.P12144705852770135465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070751 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070751 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A277096.P12144705852770135465

namespace A277096

/-- `∩[A070751(n+1)-2, A070751(n+1)]` -/
def P12144705852770135465.Spec : Prop :=
  ∀ n, (P12144705852770135465.a n : ℤ) = A277096 (n + 1)

end A277096

/-!
# A277097: a(n) = 5 - (prime(n) mod 10).

The programs for A277097, the canonical program `A277097.P9767810022556960971` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A277097 has offset 1).

The definition of A277097 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `5-A000040(n+1)%10` (program `A277097.P9767810022556960971`, by `A277097.P9767810022556960971.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A277097.P13283059158650942872

`5-A007652(n+1)`
-/

namespace A277097.P13283059158650942872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 - A007652 (n + 1)

end

end A277097.P13283059158650942872

namespace A277097

/-- `5-A007652(n+1)` -/
def P13283059158650942872.Spec : Prop :=
  ∀ n, P13283059158650942872.a n = A277097 (n + 1)

end A277097

/-! ## A277097.P9767810022556960971

`5-A000040(n+1)%10`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A277097

/-- `5-A000040(n+1)%10` -/
def P9767810022556960971.Spec : Prop :=
  ∀ n, P9767810022556960971.a n = A277097 (n + 1)

theorem P9767810022556960971.correct : P9767810022556960971.Spec := by
  intro n
  simp only [A277097, Nat.add_sub_cancel]

end A277097

/-! ## A277097.P718455372681662521

`A072003(n+1)-5`
-/

namespace A277097.P718455372681662521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072003 (n + 1) - 5

end

end A277097.P718455372681662521

namespace A277097

/-- `A072003(n+1)-5` -/
def P718455372681662521.Spec : Prop :=
  ∀ n, P718455372681662521.a n = A277097 (n + 1)

theorem P718455372681662521.correct : P718455372681662521.Spec := by
  intro n
  simp only [A277097, Nat.add_sub_cancel, A277097.P718455372681662521.a, A277097.P9767810022556960971.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A072003, A072003.P2879452219977842173.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A277097

/-! ## A277097.P4865036389246898028

`-A006093(n+1)%10+4`
-/

namespace A277097.P4865036389246898028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (-A006093 (n + 1)) 10 + 4

end

end A277097.P4865036389246898028

namespace A277097

/-- `-A006093(n+1)%10+4` -/
def P4865036389246898028.Spec : Prop :=
  ∀ n, P4865036389246898028.a n = A277097 (n + 1)

end A277097

/-! ## A277097.P4446854974428890275

`5-sqrt(A001248(n+1))%10`
-/

namespace A277097.P4446854974428890275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 - Int.tmod (SequenceMachineLib.roundAway (Real.sqrt (A001248 (n + 1) : ℝ))) 10

end

end A277097.P4446854974428890275

namespace A277097

/-- `5-sqrt(A001248(n+1))%10` -/
def P4446854974428890275.Spec : Prop :=
  ∀ n, P4446854974428890275.a n = A277097 (n + 1)

end A277097

/-! ## A277097.P13215368035924897907

`A175222(n+1)-A268185(n+1)`
-/

namespace A277097.P13215368035924897907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175222 (n + 1) - A268185 (n + 1)

end

end A277097.P13215368035924897907

namespace A277097

/-- `A175222(n+1)-A268185(n+1)` -/
def P13215368035924897907.Spec : Prop :=
  ∀ n, P13215368035924897907.a n = A277097 (n + 1)

end A277097

/-! ## A277097.P13172511170511784726

`4-record[A000010(n+1)]%10`
-/

namespace A277097.P13172511170511784726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 - Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) 10

end

end A277097.P13172511170511784726

namespace A277097

/-- `4-record[A000010(n+1)]%10` -/
def P13172511170511784726.Spec : Prop :=
  ∀ n, P13172511170511784726.a n = A277097 (n + 1)

end A277097

/-! ## A277097.P14445195199419750082

`5-record[A006530(n+2)]%10`
-/

namespace A277097.P14445195199419750082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 - Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) 10

end

end A277097.P14445195199419750082

namespace A277097

/-- `5-record[A006530(n+2)]%10` -/
def P14445195199419750082.Spec : Prop :=
  ∀ n, P14445195199419750082.a n = A277097 (n + 1)

end A277097

/-! ## A277097.P16782876644262972342

`5-record[A020639(n+2)]%10`
-/

namespace A277097.P16782876644262972342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 - Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) 10

end

end A277097.P16782876644262972342

namespace A277097

/-- `5-record[A020639(n+2)]%10` -/
def P16782876644262972342.Spec : Prop :=
  ∀ n, P16782876644262972342.a n = A277097 (n + 1)

end A277097

/-! ## A277097.P9084114888016129525

`4-eq[1, A001222(n+1)]%10`
-/

namespace A277097.P9084114888016129525
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 - ((SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n % 10 : ℕ) : ℤ)

end

end A277097.P9084114888016129525

namespace A277097

/-- `4-eq[1, A001222(n+1)]%10` -/
def P9084114888016129525.Spec : Prop :=
  ∀ n, P9084114888016129525.a n = A277097 (n + 1)

end A277097

/-! ## A277097.P11403317694880626245

`5-A228355(A068670(n))`
-/

namespace A277097.P11403317694880626245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 - A228355 (A068670 n).toNat

end

end A277097.P11403317694880626245

namespace A277097

/-- `5-A228355(A068670(n))` -/
def P11403317694880626245.Spec : Prop :=
  ∀ n, P11403317694880626245.a n = A277097 (n + 1)

end A277097

/-! ## A277097.P388512212663303883

`5-record[A014963(n+2)]%10`
-/

namespace A277097.P388512212663303883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 - Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) 10

end

end A277097.P388512212663303883

namespace A277097

/-- `5-record[A014963(n+2)]%10` -/
def P388512212663303883.Spec : Prop :=
  ∀ n, P388512212663303883.a n = A277097 (n + 1)

end A277097

/-! ## A277097.P15079030954041191481

`5-A010879(A000040(n+1))`
-/

namespace A277097.P15079030954041191481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 - A010879 (A000040 (n + 1)).toNat

end

end A277097.P15079030954041191481

namespace A277097

/-- `5-A010879(A000040(n+1))` -/
def P15079030954041191481.Spec : Prop :=
  ∀ n, P15079030954041191481.a n = A277097 (n + 1)

end A277097

/-! ## A277097.P15456937202055218040

`5-A010879(record[A014963(n+2)])`
-/

namespace A277097.P15456937202055218040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 - A010879 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A277097.P15456937202055218040

namespace A277097

/-- `5-A010879(record[A014963(n+2)])` -/
def P15456937202055218040.Spec : Prop :=
  ∀ n, P15456937202055218040.a n = A277097 (n + 1)

end A277097

/-! ## A277097.P12995719666276102618

`A251984(record[A006530(n+2)])-5`
-/

namespace A277097.P12995719666276102618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251984 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat - 5

end

end A277097.P12995719666276102618

namespace A277097

/-- `A251984(record[A006530(n+2)])-5` -/
def P12995719666276102618.Spec : Prop :=
  ∀ n, P12995719666276102618.a n = A277097 (n + 1)

end A277097

/-! ## A277097.P211502537676855394

`A251984(record[A014963(n+2)])-5`
-/

namespace A277097.P211502537676855394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251984 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat - 5

end

end A277097.P211502537676855394

namespace A277097

/-- `A251984(record[A014963(n+2)])-5` -/
def P211502537676855394.Spec : Prop :=
  ∀ n, P211502537676855394.a n = A277097 (n + 1)

end A277097

/-! ## A277097.P12910167245955104339

`5-A010879(eq[n, A000010(n+1)]+1)`
-/

namespace A277097.P12910167245955104339
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 - A010879 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A277097.P12910167245955104339

namespace A277097

/-- `5-A010879(eq[n, A000010(n+1)]+1)` -/
def P12910167245955104339.Spec : Prop :=
  ∀ n, P12910167245955104339.a n = A277097 (n + 1)

end A277097

/-! ## A277097.P3870557350631601503

`A251984(eq[n, A000010(n+1)]+1)-5`
-/

namespace A277097.P3870557350631601503
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251984 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1) - 5

end

end A277097.P3870557350631601503

namespace A277097

/-- `A251984(eq[n, A000010(n+1)]+1)-5` -/
def P3870557350631601503.Spec : Prop :=
  ∀ n, P3870557350631601503.a n = A277097 (n + 1)

end A277097

/-!
# A277098: Finitary primes. Primes of finitary index.

The programs for A277098, there is no canonical definition to state claims against.
-/

/-! ## A277098.P18277976342642586322

`A000040(A276625(n+1))`
-/

namespace A277098.P18277976342642586322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A276625 (n + 1)).toNat

end

end A277098.P18277976342642586322

/-! ## A277098.P1250437431479985194

`A000040(record[A348066(n+1)])`
-/

namespace A277098.P1250437431479985194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348066 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A277098.P1250437431479985194

/-! ## A277098.P14650483973442402729

`A006093(record[A348066(n+1)])+1`
-/

namespace A277098.P14650483973442402729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348066 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat + 1

end

end A277098.P14650483973442402729

/-! ## A277098.P8327928378977917517

`A182986(record[A348066(n+1)+1])`
-/

namespace A277098.P8327928378977917517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348066 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A277098.P8327928378977917517

/-! ## A277098.P10307232446729242460

`A008864(record[A348066(n+1)])-1`
-/

namespace A277098.P10307232446729242460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348066 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat - 1

end

end A277098.P10307232446729242460

/-! ## A277098.P16199318274059656564

`A040976(record[A348066(n+1)])+2`
-/

namespace A277098.P16199318274059656564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348066 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040976 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat + 2

end

end A277098.P16199318274059656564

/-! ## A277098.P12883088887053082528

`A000040(eq[1, A206497(n+1)]+1)`
-/

namespace A277098.P12883088887053082528
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206497 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A277098.P12883088887053082528

/-! ## A277098.P16558059969006142525

`A000040(eq[1, A333267(n+1)]+1)`
-/

namespace A277098.P16558059969006142525
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333267 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A277098.P16558059969006142525

/-! ## A277098.P13749326832821708911

`record[A000040(n+1)/A206497(n+1)]`
-/

namespace A277098.P13749326832821708911
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000040 (n + 1) : ℚ) / (A206497 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A277098.P13749326832821708911

/-! ## A277098.P5314922406678674503

`record[A000040(n+1)/A333267(n+1)]`
-/

namespace A277098.P5314922406678674503
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000040 (n + 1) : ℚ) / (A333267 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A277098.P5314922406678674503

/-! ## A277098.P5667276503178594223

`A000040(eq[n+1, A348066(n+1)]+1)`
-/

namespace A277098.P5667276503178594223
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348066 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A277098.P5667276503178594223

/-! ## A277098.P118373627944199911

`p?[record[A348066(n+2)]]`
-/

namespace A277098.P118373627944199911
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348066 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A277098.P118373627944199911

/-! ## A277098.P17316621044615430612

`record[A348066(A006530(n+2))]`
-/

namespace A277098.P17316621044615430612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348066 (A006530 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A277098.P17316621044615430612

/-! ## A277098.P4903287031818513677

`record[A348066(A014963(n+2))]`
-/

namespace A277098.P4903287031818513677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348066 (A014963 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A277098.P4903287031818513677

/-! ## A277098.P4768241170300369721

`record[A348066(A020639(n+2))]`
-/

namespace A277098.P4768241170300369721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348066 (A020639 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A277098.P4768241170300369721

/-! ## A277098.P1949426251827294437

`record[A348066(A182986(n+2))]`
-/

namespace A277098.P1949426251827294437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348066 (A182986 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A277098.P1949426251827294437

/-!
# A277099: Number of partitions of n containing no part i of multiplicity i+1.

The programs for A277099, there is no canonical definition to state claims against.
-/

/-! ## A277099.P17910887987296035905

`A276433(lt[A276434(n), A276433(n)²])`
-/

namespace A277099.P17910887987296035905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276434 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276433 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276433 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A277099.P17910887987296035905

/-! ## A277099.P17568807562100626567

`A276433(lt[A109700(3*n+1), A276433(n)])`
-/

namespace A277099.P17568807562100626567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109700 (3 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276433 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276433 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A277099.P17568807562100626567

/-! ## A277099.P928338535263843726

`A367212(n)+A124760(A367212(3*n+1))`
-/

namespace A277099.P928338535263843726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367212 n + A124760 (A367212 (3 * n + 1)).toNat

end

end A277099.P928338535263843726

/-! ## A277099.P16015901697993707622

`A038548(A003418(n+1)/A038548(n+2))`
-/

namespace A277099.P16015901697993707622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038548 (SequenceMachineLib.roundAway ((A003418 (n + 1) : ℚ) / (A038548 (n + 2) : ℚ))).toNat

end

end A277099.P16015901697993707622

