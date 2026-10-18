import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
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
import Seq.B000.C014
import Seq.B000.C016
import Seq.B000.C019
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B006.C002
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B008.C001
import Seq.B009.C000
import Seq.B009.C001
import Seq.B010.C000
import Seq.B011.C000
import Seq.B011.C001
import Seq.B012.C000
import Seq.B013.C000
import Seq.B014.C000
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
import Seq.Opaque.C013
import Seq.Opaque.C014
import Seq.Opaque.C015
import Seq.Opaque.C017
import Seq.Opaque.C018
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023
import Seq.Opaque.C024
import Seq.Opaque.C025

/-!
# A390200: a(n) is the number of n-celled polyplets (polyominoes connected at edges or corners) in the {4,5} tessellation of the hyperbolic plane.

The programs for A390200, there is no canonical definition to state claims against.
-/

/-! ## A390200.P6213642296769905643

`A033270(A051489(n)+2)`
-/

namespace A390200.P6213642296769905643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033270 (A051489 n + 2).toNat

end

end A390200.P6213642296769905643

/-!
# A390201: a(n) is the number of polyedges with n edges in the {4,5} tessellation of the hyperbolic plane.

The programs for A390201, there is no canonical definition to state claims against.
-/

/-! ## A390201.P1200316758857309041

`A347656(2^(n+1)-2)`
-/

namespace A390201.P1200316758857309041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347656 (2 ^ (n + 1) - 2)

end

end A390201.P1200316758857309041

/-!
# A390202: Let PG(n) be the graph with one node for each free n-celled polyomino in the {4,5} tessellation of the hyperbolic plane, and edges between nodes corresponding to polyominoes that can be obtained from each other by moving one cell, where the intermediate polyform (the set of cells remaining when the cell to be moved is detached) is not required to be a connected polyomino. a(n) is the number of edges in PG(n).

The programs for A390202, there is no canonical definition to state claims against.
-/

/-! ## A390202.P4163976771904131693

`A025429(A030192(n)-A134065(n))`
-/

namespace A390202.P4163976771904131693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025429 (A030192 n - A134065 n).toNat

end

end A390202.P4163976771904131693

/-! ## A390202.P8424699653034557022

`A003415(A001147(n))%A304374(n+3)`
-/

namespace A390202.P8424699653034557022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003415 (A001147 n).toNat) (A304374 (n + 3))

end

end A390202.P8424699653034557022

/-!
# A390205: Let PG(n) be the graph with one node for each free n-celled polycube, and edges between nodes corresponding to polycubes that can be obtained from each other by moving one cell, where the intermediate polyform (the set of cells remaining when the cell to be moved is detached) is not required to be a connected polycube. a(n) is the number of edges in PG(n).

The programs for A390205, there is no canonical definition to state claims against.
-/

/-! ## A390205.P7057295379143798902

`A278213(n^n+2)`
-/

namespace A390205.P7057295379143798902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278213 (n ^ n + 2)

end

end A390205.P7057295379143798902

/-!
# A390206: Let PG(n) be the graph with one node for each free n-celled polycube, and edges between nodes corresponding to polycubes that can be obtained from each other by moving one cell, where the intermediate polyform (the set of cells remaining when the cell to be moved is detached) is required to be a connected polycube. a(n) is the number of edges in PG(n).

The programs for A390206, there is no canonical definition to state claims against.
-/

/-! ## A390206.P4533400637179537444

`A049820(A383373(n)+A052265(n))`
-/

namespace A390206.P4533400637179537444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049820 (A383373 n + A052265 n).toNat

end

end A390206.P4533400637179537444

/-! ## A390206.P5755248323116470252

`A049820(A383373(n)+A079216(n))`
-/

namespace A390206.P5755248323116470252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049820 (A383373 n + A079216 n).toNat

end

end A390206.P5755248323116470252

/-!
# A390208: Number of integer partitions of n with parts colored by {0, 1, 2} such that the sum of colors is congruent to 1 (mod 3).

The programs for A390208, there is no canonical definition to state claims against.
-/

/-! ## A390208.P11644011088891710599

`A389343(n)-A035377(n)`
-/

namespace A390208.P11644011088891710599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389343 n - A035377 n

end

end A390208.P11644011088891710599

/-! ## A390208.P2364092896380210039

`A189631(A000716(n))%A002863(2*n+3)`
-/

namespace A390208.P2364092896380210039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A189631 (A000716 n).toNat) (A002863 (2 * n + 3))

end

end A390208.P2364092896380210039

/-! ## A390208.P11447562145403460971

`A334273(A370636(n))`
-/

namespace A390208.P11447562145403460971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334273 (A370636 n).toNat

end

end A390208.P11447562145403460971

/-!
# A390209: The number of domino stacks with n dominos.

The programs for A390209, there is no canonical definition to state claims against.
-/

/-! ## A390209.P8913447457606443250

`∑[A347459(3^n)]`
-/

namespace A390209.P8913447457606443250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347459 (3 ^ n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A390209.P8913447457606443250

/-! ## A390209.P14823053188109032972

`∑[A339846(4^n)]`
-/

namespace A390209.P14823053188109032972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339846 (4 ^ n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A390209.P14823053188109032972

/-! ## A390209.P8766169899904842710

`∑[A347439(4^n)]`
-/

namespace A390209.P8766169899904842710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347439 (4 ^ n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A390209.P8766169899904842710

/-! ## A390209.P14770903689027391355

`∑[A027187(2*n)^A287377(n)]`
-/

namespace A390209.P14770903689027391355
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027187 (2 * n) : ℚ) ^ (A287377 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A390209.P14770903689027391355

/-! ## A390209.P1010965930756488625

`∑[A236913(n)%A128335(n+5)]`
-/

namespace A390209.P1010965930756488625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A236913 n) (A128335 (n + 5))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A390209.P1010965930756488625

/-!
# A390211: Canonical coin systems; numbers k where the positions of 1-bits in the binary expansion of k give the coin denominations of a canonical coin system.

The programs for A390211, there is no canonical definition to state claims against.
-/

/-! ## A390211.P1481588287847901088

`record[A375125(n)+1+n]`
-/

namespace A390211.P1481588287847901088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375125 n + 1 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A390211.P1481588287847901088

/-! ## A390211.P6917146534935272999

`A005408(eq[n, A375125(n)])`
-/

namespace A390211.P6917146534935272999
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375125 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A390211.P6917146534935272999

/-! ## A390211.P426014601636650004

`2*lt[A306098(n), A358836(A375125(n))]+1`
-/

namespace A390211.P426014601636650004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306098 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358836 (A375125 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A390211.P426014601636650004

/-! ## A390211.P14678481010333332372

`eq[A124760(n), A361522(n)]`
-/

namespace A390211.P14678481010333332372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124760 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361522 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A390211.P14678481010333332372

/-! ## A390211.P805906105749940599

`∩[A004736(A084849(n)), A114994(n)]`
-/

namespace A390211.P805906105749940599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (A084849 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114994 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A390211.P805906105749940599

/-!
# A390213: Number of divisors d of n such that d^(n/d) == d (mod (n/d)).

The programs for A390213, there is no canonical definition to state claims against.
-/

/-! ## A390213.P14590592182489905882

`A000120(A342087(n+1)+A297174(n+1))`
-/

namespace A390213.P14590592182489905882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A342087 (n + 1) + A297174 (n + 1)).toNat

end

end A390213.P14590592182489905882

/-! ## A390213.P4965464382354839839

`A294901(n+1)+A115572(A085430(3*(n+1)))`
-/

namespace A390213.P4965464382354839839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294901 (n + 1) + A115572 (A085430 (3 * (n + 1))).toNat

end

end A390213.P4965464382354839839

/-! ## A390213.P16242676289349506189

`A002376(A297842(n+1))`
-/

namespace A390213.P16242676289349506189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002376 (A297842 (n + 1)).toNat

end

end A390213.P16242676289349506189

/-! ## A390213.P16321791551508947234

`A277314(A000005((n+1)²²))`
-/

namespace A390213.P16321791551508947234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277314 (A000005 (((n + 1) ^ 2) ^ 2)).toNat

end

end A390213.P16321791551508947234

/-! ## A390213.P7794902613877847629

`A070939(∏{e}[n+1, 2*#+1])%A127821(2*n+3)`
-/

namespace A390213.P7794902613877847629
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A070939 (∏ p ∈ Nat.primeFactors (f1 n), (2 * Nat.factorization (f1 n) p + 1))) (A127821 (2 * n + 3))

end

end A390213.P7794902613877847629

/-!
# A390214: E.g.f. A(x) satisfies A(x) = exp(x/(1+x^2) * A(x)).

The programs for A390214, there is no canonical definition to state claims against.
-/

/-! ## A390214.P16111464190837001688

`A351594(A008011(n))`
-/

namespace A390214.P16111464190837001688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351594 (A008011 n).toNat

end

end A390214.P16111464190837001688

/-! ## A390214.P10348011989404151392

`A333235(A384892(n)²)`
-/

namespace A390214.P10348011989404151392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333235 (A384892 n ^ 2).toNat

end

end A390214.P10348011989404151392

/-!
# A390217: Number of partitions of n with parts colored by {0, 1, 2, 3} such that the sum of colors is congruent to 0 (mod 4).

The programs for A390217, there is no canonical definition to state claims against.
-/

/-! ## A390217.P8455752383253323019

`A394988(A323936(n+1))`
-/

namespace A390217.P8455752383253323019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394988 (A323936 (n + 1)).toNat

end

end A390217.P8455752383253323019

/-! ## A390217.P2332368140100027972

`A357640(2*n)-A024317(A000302(n))`
-/

namespace A390217.P2332368140100027972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357640 (2 * n) - A024317 (A000302 n).toNat

end

end A390217.P2332368140100027972

/-!
# A390218: a(n) = Sum_{k=0..floor(4*n/7)} binomial(k+1,4*n-7*k).

The programs for A390218, the canonical program `A390218.P2053282025020217213` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A390218 has offset 0).

The definition of A390218 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A390218.P2053282025020217213

`4*a(n-2)-6*a(n-4)+4*a(n-6)+a(n-7)-a(n-8)` with `a(0)=1, a(1)=0, a(2)=2, a(3)=0, a(4)=3, a(5)=0, a(6)=4, a(7)=1`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A390218

/-- `4*a(n-2)-6*a(n-4)+4*a(n-6)+a(n-7)-a(n-8)` -/
def P2053282025020217213.Spec : Prop :=
  ∀ n, P2053282025020217213.a n = A390218 n

theorem P2053282025020217213.correct : P2053282025020217213.Spec := by
  intro n
  simp only [A390218]

end A390218

/-! ## A390218.P10758905281993032732

`A390662(2*n)`
-/

namespace A390218.P10758905281993032732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390662 (2 * n)

end

end A390218.P10758905281993032732

namespace A390218

/-- `A390662(2*n)` -/
def P10758905281993032732.Spec : Prop :=
  ∀ n, P10758905281993032732.a n = A390218 n

end A390218

/-! ## A390218.P11853926371272240375

`A017857(A004767(n+1))`
-/

namespace A390218.P11853926371272240375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017857 (A004767 (n + 1)).toNat

end

end A390218.P11853926371272240375

namespace A390218

/-- `A017857(A004767(n+1))` -/
def P11853926371272240375.Spec : Prop :=
  ∀ n, P11853926371272240375.a n = A390218 n

end A390218

/-! ## A390218.P16704997308842921440

`A127842(A124354(n+4))`
-/

namespace A390218.P16704997308842921440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127842 (A124354 (n + 4)).toNat

end

end A390218.P16704997308842921440

namespace A390218

/-- `A127842(A124354(n+4))` -/
def P16704997308842921440.Spec : Prop :=
  ∀ n, P16704997308842921440.a n = A390218 n

end A390218

/-!
# A390219: a(n) = Sum_{k=0..floor(4*n/7)} binomial(k+2,4*n-7*k).

The programs for A390219, the canonical program `A390219.P16232009699612608432` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A390219 has offset 0).

The definition of A390219 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A390219.P16232009699612608432

`4*a(n-2)-6*a(n-4)+4*a(n-6)+a(n-7)-a(n-8)` with `a(0)=1, a(1)=0, a(2)=3, a(3)=0, a(4)=6, a(5)=0, a(6)=10, a(7)=1`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A390219

/-- `4*a(n-2)-6*a(n-4)+4*a(n-6)+a(n-7)-a(n-8)` -/
def P16232009699612608432.Spec : Prop :=
  ∀ n, P16232009699612608432.a n = A390219 n

theorem P16232009699612608432.correct : P16232009699612608432.Spec := by
  intro n
  simp only [A390219]

end A390219

/-! ## A390219.P2546398919374687315

`A017857(A308607(n+4))`
-/

namespace A390219.P2546398919374687315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017857 (A308607 (n + 4)).toNat

end

end A390219.P2546398919374687315

namespace A390219

/-- `A017857(A308607(n+4))` -/
def P2546398919374687315.Spec : Prop :=
  ∀ n, P2546398919374687315.a n = A390219 n

end A390219

/-!
# A390220: a(n) = Sum_{k=0..floor(n/2)} binomial(k,4*n-8*k).

The programs for A390220, the canonical program `A390220.P5764728923880570764` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A390220 has offset 0).

The definition of A390220 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A390220.P5764728923880570764

`4*a(n-2)-6*a(n-4)+4*a(n-6)-a(n-8)+a(n-9)` with `a(0)=1, a(1)=0, a(2)=1, a(3)=0, a(4)=1, a(5)=0, a(6)=1, a(7)=0, a(8)=1`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A390220

/-- `4*a(n-2)-6*a(n-4)+4*a(n-6)-a(n-8)+a(n-9)` -/
def P5764728923880570764.Spec : Prop :=
  ∀ n, P5764728923880570764.a n = A390220 n

theorem P5764728923880570764.correct : P5764728923880570764.Spec := by
  intro n
  simp only [A390220]

end A390220

/-! ## A390220.P14512896863367737019

`A017867(4*n)`
-/

namespace A390220.P14512896863367737019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017867 (4 * n)

end

end A390220.P14512896863367737019

namespace A390220

/-- `A017867(4*n)` -/
def P14512896863367737019.Spec : Prop :=
  ∀ n, P14512896863367737019.a n = A390220 n

end A390220

/-! ## A390220.P9685322185261406558

`A127843(A073760(n+2))`
-/

namespace A390220.P9685322185261406558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127843 (A073760 (n + 2)).toNat

end

end A390220.P9685322185261406558

namespace A390220

/-- `A127843(A073760(n+2))` -/
def P9685322185261406558.Spec : Prop :=
  ∀ n, P9685322185261406558.a n = A390220 n

end A390220

/-! ## A390220.P14757227711269067421

`A123731(A392356(n))`
-/

namespace A390220.P14757227711269067421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123731 (A392356 n).toNat

end

end A390220.P14757227711269067421

namespace A390220

/-- `A123731(A392356(n))` -/
def P14757227711269067421.Spec : Prop :=
  ∀ n, P14757227711269067421.a n = A390220 n

end A390220

/-! ## A390220.P4226199439880245135

`A330101(A250115(n+1)^A363795(n+1))`
-/

namespace A390220.P4226199439880245135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330101 (SequenceMachineLib.roundAway ((A250115 (n + 1) : ℚ) ^ (A363795 (n + 1) : ℤ))).toNat

end

end A390220.P4226199439880245135

namespace A390220

/-- `A330101(A250115(n+1)^A363795(n+1))` -/
def P4226199439880245135.Spec : Prop :=
  ∀ n, P4226199439880245135.a n = A390220 n

end A390220

/-!
# A390221: a(n) = Sum_{k=0..floor(n/2)} binomial(k+1,4*n-8*k+1).

The programs for A390221, the canonical program `A390221.P16754101557240132849` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A390221 has offset 0).

The definition of A390221 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A390221.P16754101557240132849

`4*a(n-2)-6*a(n-4)+4*a(n-6)-a(n-8)+a(n-9)` with `a(0)=1, a(1)=0, a(2)=2, a(3)=0, a(4)=3, a(5)=0, a(6)=4, a(7)=0, a(8)=5`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A390221

/-- `4*a(n-2)-6*a(n-4)+4*a(n-6)-a(n-8)+a(n-9)` -/
def P16754101557240132849.Spec : Prop :=
  ∀ n, P16754101557240132849.a n = A390221 n

theorem P16754101557240132849.correct : P16754101557240132849.Spec := by
  intro n
  simp only [A390221]

end A390221

/-! ## A390221.P1480402061642712363

`A392491(2*n)`
-/

namespace A390221.P1480402061642712363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392491 (2 * n)

end

end A390221.P1480402061642712363

namespace A390221

/-- `A392491(2*n)` -/
def P1480402061642712363.Spec : Prop :=
  ∀ n, P1480402061642712363.a n = A390221 n

end A390221

/-! ## A390221.P8946018589588110799

`A017867(A004766(n+2))`
-/

namespace A390221.P8946018589588110799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017867 (A004766 (n + 2)).toNat

end

end A390221.P8946018589588110799

namespace A390221

/-- `A017867(A004766(n+2))` -/
def P8946018589588110799.Spec : Prop :=
  ∀ n, P8946018589588110799.a n = A390221 n

end A390221

/-!
# A390222: a(n) = Sum_{k=0..floor(n/2)} binomial(k+2,4*n-8*k+2).

The programs for A390222, the canonical program `A390222.P5468076584509733247` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A390222 has offset 0).

The definition of A390222 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A390222.P5468076584509733247

`4*a(n-2)-6*a(n-4)+4*a(n-6)-a(n-8)+a(n-9)` with `a(0)=1, a(1)=0, a(2)=3, a(3)=0, a(4)=6, a(5)=0, a(6)=10, a(7)=0, a(8)=15`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A390222

/-- `4*a(n-2)-6*a(n-4)+4*a(n-6)-a(n-8)+a(n-9)` -/
def P5468076584509733247.Spec : Prop :=
  ∀ n, P5468076584509733247.a n = A390222 n

theorem P5468076584509733247.correct : P5468076584509733247.Spec := by
  intro n
  simp only [A390222]

end A390222

/-! ## A390222.P6056772256185951238

`A017867(A308607(n+5))`
-/

namespace A390222.P6056772256185951238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017867 (A308607 (n + 5)).toNat

end

end A390222.P6056772256185951238

namespace A390222

/-- `A017867(A308607(n+5))` -/
def P6056772256185951238.Spec : Prop :=
  ∀ n, P6056772256185951238.a n = A390222 n

end A390222

/-!
# A390223: Numbers k such that for the k-th almost-equilateral Heronian triangle (triangle with consecutive integer sides and integer area), perimeter - inradius is a prime or semiprime.

The programs for A390223, there is no canonical definition to state claims against.
-/

/-! ## A390223.P5533873883761783673

`A183110(A065455(n))`
-/

namespace A390223.P5533873883761783673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183110 (A065455 n).toNat

end

end A390223.P5533873883761783673

/-! ## A390223.P8157375193440266727

`A357409(A170877(n))`
-/

namespace A390223.P8157375193440266727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357409 (A170877 n).toNat

end

end A390223.P8157375193440266727

/-! ## A390223.P11819913432146931749

`A357409(A076972(n+1))`
-/

namespace A390223.P11819913432146931749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357409 (A076972 (n + 1)).toNat

end

end A390223.P11819913432146931749

/-! ## A390223.P11627955731023732100

`A373811(A120118(n+1))`
-/

namespace A390223.P11627955731023732100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373811 (A120118 (n + 1)).toNat

end

end A390223.P11627955731023732100

/-! ## A390223.P292797537194643483

`A325342(n+2)+A022300(A000045(2*n+1))`
-/

namespace A390223.P292797537194643483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325342 (n + 2) + A022300 (A000045 (2 * n + 1)).toNat

end

end A390223.P292797537194643483

/-!
# A390225: Positive numbers whose base-3, base-5, and base-7 expansions have the same digit sum.

The programs for A390225, the canonical program `A390225.P7477734311538200322` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A390225 has offset 1).

The definition of A390225 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 934 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A390225.P7477734311538200322

`∩[A037310(n+1), A037312(n+1)]`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A390225

/-- `∩[A037310(n+1), A037312(n+1)]` -/
def P7477734311538200322.Spec : Prop :=
  ∀ n, (P7477734311538200322.a n : ℤ) = A390225 (n + 1)

theorem P7477734311538200322.correct : P7477734311538200322.Spec := by
  intro n
  simp only [A390225, Nat.add_sub_cancel]

end A390225

/-! ## A390225.P2688038155880417278

`∩[A037310(n+1), A037323(n+1)]`
-/

namespace A390225.P2688038155880417278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037310 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037323 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A390225.P2688038155880417278

namespace A390225

/-- `∩[A037310(n+1), A037323(n+1)]` -/
def P2688038155880417278.Spec : Prop :=
  ∀ n, (P2688038155880417278.a n : ℤ) = A390225 (n + 1)

end A390225

/-! ## A390225.P8189253501530805101

`∩[A037312(n+1), A037323(n+1)]`
-/

namespace A390225.P8189253501530805101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037312 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037323 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A390225.P8189253501530805101

namespace A390225

/-- `∩[A037312(n+1), A037323(n+1)]` -/
def P8189253501530805101.Spec : Prop :=
  ∀ n, (P8189253501530805101.a n : ℤ) = A390225 (n + 1)

end A390225

/-!
# A390227: a(n) = A392686(n)/2.

The programs for A390227, there is no canonical definition to state claims against.
-/

/-! ## A390227.P5576806502484183984

`A392686(n)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A390227.P5576806502484183984
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A392686 n : ℚ) / 2

end

end A390227.P5576806502484183984

/-!
# A390229: a(n) is the least positive integer k with exactly n distinct prime factors such that, for every prime power p^e in the canonical prime factorization of k, (p + e) divides k.

The programs for A390229, there is no canonical definition to state claims against.
-/

/-! ## A390229.P17082226700562372758

`A340816(A141739(n))`
-/

namespace A390229.P17082226700562372758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340816 (A141739 n).toNat

end

end A390229.P17082226700562372758

/-! ## A390229.P4564653698324823052

`A000120(A001692(n))*A002110(n)`
-/

namespace A390229.P4564653698324823052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A001692 n).toNat * A002110 n

end

end A390229.P4564653698324823052

/-! ## A390229.P18103653695921472623

`A000005(A002315(n))*A002110(n)`
-/

namespace A390229.P18103653695921472623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A002315 n).toNat * A002110 n

end

end A390229.P18103653695921472623

/-!
# A390230: Norms of primitive Pythagorean quadruples (PPQs) derived from primitive Pythagorean triangles (PPTs) ordered within a Berggren ternary tree of PPTs.

The programs for A390230, there is no canonical definition to state claims against.
-/

/-! ## A390230.P10433803046874818860

`A321770(n+1)+A321782(n+1)*A321783(n+1)`
-/

namespace A390230.P10433803046874818860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321770 (n + 1) + A321782 (n + 1) * A321783 (n + 1)

end

end A390230.P10433803046874818860

/-! ## A390230.P10080679789880329944

`A321770(n+1)+A322170(n+1)/A321768(n+1)`
-/

namespace A390230.P10080679789880329944
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A321770 (n + 1) : ℚ) + (A322170 (n + 1) : ℚ) / (A321768 (n + 1) : ℚ)

end

end A390230.P10080679789880329944

/-! ## A390230.P8550440715772377681

`A321784(n+1)²-A246277(A321769(n+1))`
-/

namespace A390230.P8550440715772377681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321784 (n + 1) ^ 2 - A246277 (A321769 (n + 1)).toNat

end

end A390230.P8550440715772377681

/-!
# A390232: a(n) = (2*n)! * [x^(2*n)] (f(x)^2 + f(-x)^2)/2 and f(x) = 1/(cos(x) + sqrt(3) * sin(x)).

The programs for A390232, there is no canonical definition to state claims against.
-/

/-! ## A390232.P3151384098428739008

`A395233(∑[n+3])`
-/

namespace A390232.P3151384098428739008
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395233 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A390232.P3151384098428739008

/-! ## A390232.P1099370306970448841

`∑[A001019(n)]*A000182(n+1)`
-/

namespace A390232.P1099370306970448841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001019 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A000182 (n + 1)

end

end A390232.P1099370306970448841

/-! ## A390232.P13875649136296345601

`A000111(2*n+1)*A033113(2*n+1)`
-/

namespace A390232.P13875649136296345601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000111 (2 * n + 1) * A033113 (2 * n + 1)

end

end A390232.P13875649136296345601

/-! ## A390232.P10635100072627107217

`C(A029858(n+1)+2, 2)*A000182(n+1)`
-/

namespace A390232.P10635100072627107217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (A029858 (n + 1) + 2).toNat 2 : ℤ) * A000182 (n + 1)

end

end A390232.P10635100072627107217

/-!
# A390233: Numbers k such that A178854(k) = A178854(k+1).

The programs for A390233, there is no canonical definition to state claims against.
-/

/-! ## A390233.P6564719767137097489

`eq[0, Δ[A178854(n)]]`
-/

namespace A390233.P6564719767137097489
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178854 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A390233.P6564719767137097489

/-! ## A390233.P608526561111575437

`lt[Δ[A178854(n)], A001045(n)]`
-/

namespace A390233.P608526561111575437
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178854 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n

end

end A390233.P608526561111575437

/-! ## A390233.P5584598764082861568

`lt[Δ[A178854(n)], A007953(n)]`
-/

namespace A390233.P5584598764082861568
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178854 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n

end

end A390233.P5584598764082861568

/-! ## A390233.P17637395662794494856

`lt[Δ[A178854(n)], A036117(n)]`
-/

namespace A390233.P17637395662794494856
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178854 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036117 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n

end

end A390233.P17637395662794494856

/-! ## A390233.P5236753180712905423

`lt[Δ[A178854(n)], A049988(n)]`
-/

namespace A390233.P5236753180712905423
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178854 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049988 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n

end

end A390233.P5236753180712905423

/-! ## A390233.P74985721239424805

`lt[Δ[A178854(n)], A133280(n)]`
-/

namespace A390233.P74985721239424805
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178854 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133280 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n

end

end A390233.P74985721239424805

/-! ## A390233.P8919970533919529793

`lt[Δ[A178854(n)], A001065(n+1)]`
-/

namespace A390233.P8919970533919529793
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178854 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n

end

end A390233.P8919970533919529793

/-! ## A390233.P15791998488403542182

`lt[Δ[A178854(n)], A119314(n+1)]`
-/

namespace A390233.P15791998488403542182
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178854 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119314 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n

end

end A390233.P15791998488403542182

/-! ## A390233.P7500563125131860837

`lt[Δ[A178854(n)], A384049(n+1)]`
-/

namespace A390233.P7500563125131860837
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178854 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384049 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n

end

end A390233.P7500563125131860837

/-! ## A390233.P17188421301390951959

`lt[Δ[A178854(n)], A338623(3*(n+1))]`
-/

namespace A390233.P17188421301390951959
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178854 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338623 (3 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n

end

end A390233.P17188421301390951959

/-!
# A390237: Expansion of g/(1 - x*g^2)^2, where g = 1+x*g^4 is the g.f. of A002293.

The programs for A390237, there is no canonical definition to state claims against.
-/

/-! ## A390237.P6102053471292311334

`A052253(A264938(n+1))`
-/

namespace A390237.P6102053471292311334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052253 (A264938 (n + 1)).toNat

end

end A390237.P6102053471292311334

/-!
# A390238: a(n) = Sum_{k=0..n} binomial(3*n+k+2,n-k).

The programs for A390238, there is no canonical definition to state claims against.
-/

/-! ## A390238.P13344707159061493215

`A099577(4*n)`
-/

namespace A390238.P13344707159061493215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099577 (4 * n)

end

end A390238.P13344707159061493215

/-! ## A390238.P3884251497108169097

`A010754(4*n+2)`
-/

namespace A390238.P3884251497108169097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010754 (4 * n + 2)

end

end A390238.P3884251497108169097

/-! ## A390238.P7970175017142692900

`A010755(4*n+2)`
-/

namespace A390238.P7970175017142692900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010755 (4 * n + 2)

end

end A390238.P7970175017142692900

/-! ## A390238.P18334894844642753682

`A038736(n+1)-A390337(n+1)`
-/

namespace A390238.P18334894844642753682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038736 (n + 1) - A390337 (n + 1)

end

end A390238.P18334894844642753682

/-! ## A390238.P8566394071440652

`A038730(2*(n+1)²)`
-/

namespace A390238.P8566394071440652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038730 (2 * (n + 1) ^ 2)

end

end A390238.P8566394071440652

/-!
# A390239: a(n) = Sum_{k=0..n} binomial(3*n-2*k+2,n-k).

The programs for A390239, there is no canonical definition to state claims against.
-/

/-! ## A390239.P3329075687148010854

`A013580(A081270(n))`
-/

namespace A390239.P3329075687148010854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013580 (A081270 n).toNat

end

end A390239.P3329075687148010854

/-! ## A390239.P16574275136062404958

`A013580(A022267(n+1))`
-/

namespace A390239.P16574275136062404958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013580 (A022267 (n + 1)).toNat

end

end A390239.P16574275136062404958

/-! ## A390239.P9664832083453408618

`A231147(A147296(n+1))`
-/

namespace A390239.P9664832083453408618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231147 (A147296 (n + 1)).toNat

end

end A390239.P9664832083453408618

/-!
# A390240: a(n) is the least prime p not already listed such that m + A005117(A390138(n) + 1) is divisible by p^2 for certain m (as defined in the comments) with exactly n nonunitary prime factors.

The programs for A390240, there is no canonical definition to state claims against.
-/

/-! ## A390240.P11516090450773198665

`p?[A122311(A122311(n))]`
-/

namespace A390240.P11516090450773198665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122311 (A122311 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A390240.P11516090450773198665

/-! ## A390240.P14833573924881845687

`p?[A122312(A122312(n))]`
-/

namespace A390240.P14833573924881845687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122312 (A122312 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A390240.P14833573924881845687

/-! ## A390240.P1805067175292548559

`p?[A122349(A122349(n))]`
-/

namespace A390240.P1805067175292548559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122349 (A122349 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A390240.P1805067175292548559

/-! ## A390240.P9803081010039202115

`p?[A122350(A122350(n))]`
-/

namespace A390240.P9803081010039202115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122350 (A122350 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A390240.P9803081010039202115

/-! ## A390240.P3635034298110739223

`p?[A127380(A127380(n))]`
-/

namespace A390240.P3635034298110739223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127380 (A127380 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A390240.P3635034298110739223

/-!
# A390241: a(n) = A005117(A390138(n) + 1).

The programs for A390241, there is no canonical definition to state claims against.
-/

/-! ## A390241.P7669861670126955725

`A005117(A390138(n)+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A390241.P7669861670126955725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (A390138 n + 1).toNat

end

end A390241.P7669861670126955725

/-! ## A390241.P5785938188902429925

`A144338(A390138(n))`
-/

namespace A390241.P5785938188902429925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144338 (A390138 n).toNat

end

end A390241.P5785938188902429925

/-!
# A390246: a(n) is the least integer k such that there exist n distinct integers b_1, ..., b_n with n < b_i < n+k and b_i is divisible by i for 1 <= i <= n.

The programs for A390246, there is no canonical definition to state claims against.
-/

/-! ## A390246.P8590335092162371758

`A219787(n+1)-n`
-/

namespace A390246.P8590335092162371758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219787 (n + 1) - (n : ℤ)

end

end A390246.P8590335092162371758

/-!
# A390247: Number of monotone simple Venn diagrams with n curves.

The programs for A390247, there is no canonical definition to state claims against.
-/

/-! ## A390247.P10557712549123927910

`A217302(A226375(n+1))`
-/

namespace A390247.P10557712549123927910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217302 (A226375 (n + 1)).toNat

end

end A390247.P10557712549123927910

/-!
# A390249: Numbers k that are the hypotenuse of at least one primitive Pythagorean triangle whose perimeter + inradius and perimeter - inradius are both prime.

The programs for A390249, there is no canonical definition to state claims against.
-/

/-! ## A390249.P2647475857529409289

`∩[A336340(n+1), A339955(n+1)]`
-/

namespace A390249.P2647475857529409289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336340 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339955 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A390249.P2647475857529409289

/-!
# A390250: Numbers m>1 such that e_1 * (p_1 - 1) = ... = e_s * (p_s - 1), where p_1^e_1 * ... * p_s^e_s is the prime factorization of m.

The programs for A390250, there is no canonical definition to state claims against.
-/

/-! ## A390250.P150182080282470723

`lt[A119444(n+1), A034684(n+1)]+1`
-/

namespace A390250.P150182080282470723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119444 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034684 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A390250.P150182080282470723

/-! ## A390250.P16304437080320143341

`lt[A237799(n+1), A028233((n+1)²)]+1`
-/

namespace A390250.P16304437080320143341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237799 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028233 ((n + 1) ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A390250.P16304437080320143341

/-! ## A390250.P13556076162742764774

`lt[A318585(n+4), A028233(A028310(n))]`
-/

namespace A390250.P13556076162742764774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318585 (n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028233 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A390250.P13556076162742764774

/-! ## A390250.P14203712355406494287

`A353833((A326680(n)+1)*(n+2))`
-/

namespace A390250.P14203712355406494287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353833 ((A326680 n + 1) * (n + 2 : ℤ)).toNat

end

end A390250.P14203712355406494287

/-! ## A390250.P608551104614566812

`A353833(n+2)%A005555(3*(n+1))`
-/

namespace A390250.P608551104614566812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A353833 (n + 2)) (A005555 (3 * (n + 1)))

end

end A390250.P608551104614566812

/-!
# A390251: Numbers k such that sigma(k) = psi(k) + omega(k)^2.

The programs for A390251, the canonical program `A390251.P1811341755956368526` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A390251 has offset 1).

The definition of A390251 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 107 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A390251.P1811341755956368526

`filter[A286228(n+1), A373585(#)]`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A390251

/-- `filter[A286228(n+1), A373585(#)]` -/
def P1811341755956368526.Spec : Prop :=
  ∀ n, P1811341755956368526.a n = A390251 (n + 1)

theorem P1811341755956368526.correct : P1811341755956368526.Spec := by
  intro n
  simp only [A390251, Nat.add_sub_cancel]

end A390251

/-! ## A390251.P7637696382449535324

`filter[A286228(n+1), A374107(#)]`
-/

namespace A390251.P7637696382449535324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286228 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374107 (f1 j).toNat = 1) n)

end

end A390251.P7637696382449535324

namespace A390251

/-- `filter[A286228(n+1), A374107(#)]` -/
def P7637696382449535324.Spec : Prop :=
  ∀ n, P7637696382449535324.a n = A390251 (n + 1)

end A390251

/-! ## A390251.P7172972554309219020

`filter[A286228(n+1), A374113(#)]`
-/

namespace A390251.P7172972554309219020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286228 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374113 (f1 j).toNat = 1) n)

end

end A390251.P7172972554309219020

namespace A390251

/-- `filter[A286228(n+1), A374113(#)]` -/
def P7172972554309219020.Spec : Prop :=
  ∀ n, P7172972554309219020.a n = A390251 (n + 1)

end A390251

/-! ## A390251.P12945219107942127575

`filter[A286228(n+1), A145377(#)]`
-/

namespace A390251.P12945219107942127575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286228 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A145377 (f1 j).toNat = 1) n)

end

end A390251.P12945219107942127575

namespace A390251

/-- `filter[A286228(n+1), A145377(#)]` -/
def P12945219107942127575.Spec : Prop :=
  ∀ n, P12945219107942127575.a n = A390251 (n + 1)

end A390251

/-! ## A390251.P5059572034608424288

`∩[A286228(n+1), A374114(n+1)]`
-/

namespace A390251.P5059572034608424288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286228 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374114 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A390251.P5059572034608424288

namespace A390251

/-- `∩[A286228(n+1), A374114(n+1)]` -/
def P5059572034608424288.Spec : Prop :=
  ∀ n, (P5059572034608424288.a n : ℤ) = A390251 (n + 1)

end A390251

/-! ## A390251.P8925092145620527493

`∩[A286228(n+1), A374108(n+1)]`
-/

namespace A390251.P8925092145620527493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286228 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374108 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A390251.P8925092145620527493

namespace A390251

/-- `∩[A286228(n+1), A374108(n+1)]` -/
def P8925092145620527493.Spec : Prop :=
  ∀ n, (P8925092145620527493.a n : ℤ) = A390251 (n + 1)

end A390251

/-! ## A390251.P11456344229222999647

`∩[A286228(n+1), A373586(n+1)]`
-/

namespace A390251.P11456344229222999647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286228 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373586 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A390251.P11456344229222999647

namespace A390251

/-- `∩[A286228(n+1), A373586(n+1)]` -/
def P11456344229222999647.Spec : Prop :=
  ∀ n, (P11456344229222999647.a n : ℤ) = A390251 (n + 1)

end A390251

/-!
# A390253: Numbers k such that sigma(k) = psi(k) + omega(k)^5.

The programs for A390253, there is no canonical definition to state claims against.
-/

/-! ## A390253.P269280958135937004

`record[A001255(n)%A213364(3*n+4)]`
-/

namespace A390253.P269280958135937004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001255 n) (A213364 (3 * n + 4))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A390253.P269280958135937004

/-!
# A390254: a(0) = 2, thereafter a(n+1) is the nearest integer to 4*a(n)/3.

The programs for A390254, the canonical program `A390254.P15560212173112391131` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A390254 has offset 0).

The definition of A390254 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A390254.P15560212173112391131

`A087192(n+1)+1`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A390254

/-- `A087192(n+1)+1` -/
def P15560212173112391131.Spec : Prop :=
  ∀ n, P15560212173112391131.a n = A390254 n

theorem P15560212173112391131.correct : P15560212173112391131.Spec := by
  intro n
  simp only [A390254]

end A390254

/-! ## A390254.P12802998848143526053

`round(4/3*a(n-1))` with `a(0)=2`
-/

namespace A390254.P12802998848143526053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  SequenceMachineLib.roundAway ((4 : ℚ) / 3 * (a (n - 1) : ℚ))

end

end A390254.P12802998848143526053

namespace A390254

/-- `round(4/3*a(n-1))` -/
def P12802998848143526053.Spec : Prop :=
  ∀ n, P12802998848143526053.a n = A390254 n

end A390254

/-! ## A390254.P9197510567841300009

`round(a(n-1)+a(n-1)/3)` with `a(0)=2`
-/

namespace A390254.P9197510567841300009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  SequenceMachineLib.roundAway ((a (n - 1) : ℚ) + (a (n - 1) : ℚ) / 3)

end

end A390254.P9197510567841300009

namespace A390254

/-- `round(a(n-1)+a(n-1)/3)` -/
def P9197510567841300009.Spec : Prop :=
  ∀ n, P9197510567841300009.a n = A390254 n

end A390254

/-! ## A390254.P16117546977800846491

`1-floor((1-a(n-1))*4/3)` with `a(0)=2`
-/

namespace A390254.P16117546977800846491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  1 - ⌊(1 - a (n - 1) : ℚ) * ((4 : ℚ) / 3)⌋

end

end A390254.P16117546977800846491

namespace A390254

/-- `1-floor((1-a(n-1))*4/3)` -/
def P16117546977800846491.Spec : Prop :=
  ∀ n, P16117546977800846491.a n = A390254 n

end A390254

/-! ## A390254.P5300409209376603523

`floor(a(n-1)+(a(n-1)+1)/3)` with `a(0)=2`
-/

namespace A390254.P5300409209376603523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  ⌊(a (n - 1) : ℚ) + (a (n - 1) + 1 : ℚ) / 3⌋

end

end A390254.P5300409209376603523

namespace A390254

/-- `floor(a(n-1)+(a(n-1)+1)/3)` -/
def P5300409209376603523.Spec : Prop :=
  ∀ n, P5300409209376603523.a n = A390254 n

end A390254

/-! ## A390254.P6320772960981418122

`a(n-1)-floor((1-a(n-1))/3)` with `a(0)=2`
-/

namespace A390254.P6320772960981418122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  a (n - 1) - ⌊(1 - a (n - 1) : ℚ) / 3⌋

end

end A390254.P6320772960981418122

namespace A390254

/-- `a(n-1)-floor((1-a(n-1))/3)` -/
def P6320772960981418122.Spec : Prop :=
  ∀ n, P6320772960981418122.a n = A390254 n

end A390254

/-! ## A390254.P9417057912603497622

`A100585(n+1)-1`
-/

namespace A390254.P9417057912603497622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100585 (n + 1) - 1

end

end A390254.P9417057912603497622

namespace A390254

/-- `A100585(n+1)-1` -/
def P9417057912603497622.Spec : Prop :=
  ∀ n, P9417057912603497622.a n = A390254 n

end A390254

/-! ## A390254.P16459802579644814475

`∑[A072493(n+1)]+1`
-/

namespace A390254.P16459802579644814475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072493 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A390254.P16459802579644814475

namespace A390254

/-- `∑[A072493(n+1)]+1` -/
def P16459802579644814475.Spec : Prop :=
  ∀ n, P16459802579644814475.a n = A390254 n

end A390254

/-! ## A390254.P5408800958043682047

`floor((4*a(n-1)+1)/3)` with `a(0)=2`
-/

namespace A390254.P5408800958043682047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  ⌊(4 * a (n - 1) + 1 : ℚ) / 3⌋

end

end A390254.P5408800958043682047

namespace A390254

/-- `floor((4*a(n-1)+1)/3)` -/
def P5408800958043682047.Spec : Prop :=
  ∀ n, P5408800958043682047.a n = A390254 n

end A390254

/-! ## A390254.P1150459478215754952

`A367882(∑[n])+2`
-/

namespace A390254.P1150459478215754952
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367882 (∑ j ∈ Finset.range (n + 1), f1 j) + 2

end

end A390254.P1150459478215754952

namespace A390254

/-- `A367882(∑[n])+2` -/
def P1150459478215754952.Spec : Prop :=
  ∀ n, P1150459478215754952.a n = A390254 n

end A390254

/-!
# A390255: Expansion of e.g.f. x*(1 + x/2)*sinh(x).

The programs for A390255, the canonical program `A390255.P7810669235587212114` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A390255 has offset 0).

The definition of A390255 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A390255.P7810669235587212114

`lcm(n, floor(n/2))`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A390255

/-- `lcm(n, floor(n/2))` -/
def P7810669235587212114.Spec : Prop :=
  ∀ n, (P7810669235587212114.a n : ℤ) = A390255 n

theorem P7810669235587212114.correct : P7810669235587212114.Spec := by
  intro n
  simp only [A390255]

end A390255

/-! ## A390255.P8220570148324469363

`C(n, n%2+1)`
-/

namespace A390255.P8220570148324469363
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n (n % 2 + 1)

end

end A390255.P8220570148324469363

namespace A390255

/-- `C(n, n%2+1)` -/
def P8220570148324469363.Spec : Prop :=
  ∀ n, (P8220570148324469363.a n : ℤ) = A390255 n

end A390255

/-! ## A390255.P997833543228226380

`C(n, gcd(2, n+1))`
-/

namespace A390255.P997833543228226380
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n (Nat.gcd 2 (n + 1))

end

end A390255.P997833543228226380

namespace A390255

/-- `C(n, gcd(2, n+1))` -/
def P997833543228226380.Spec : Prop :=
  ∀ n, (P997833543228226380.a n : ℤ) = A390255 n

end A390255

/-! ## A390255.P6681667902645147715

`C(n, and(1, n)+1)`
-/

namespace A390255.P6681667902645147715
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n (Nat.land 1 n + 1)

end

end A390255.P6681667902645147715

namespace A390255

/-- `C(n, and(1, n)+1)` -/
def P6681667902645147715.Spec : Prop :=
  ∀ n, (P6681667902645147715.a n : ℤ) = A390255 n

end A390255

/-! ## A390255.P7009458722960985018

`C(n, 2^and(1, n))`
-/

namespace A390255.P7009458722960985018
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n (2 ^ Nat.land 1 n)

end

end A390255.P7009458722960985018

namespace A390255

/-- `C(n, 2^and(1, n))` -/
def P7009458722960985018.Spec : Prop :=
  ∀ n, (P7009458722960985018.a n : ℤ) = A390255 n

end A390255

/-! ## A390255.P15012601193564794208

`C(n, C(2, and(1, n)))`
-/

namespace A390255.P15012601193564794208
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n (Nat.choose 2 (Nat.land 1 n))

end

end A390255.P15012601193564794208

namespace A390255

/-- `C(n, C(2, and(1, n)))` -/
def P15012601193564794208.Spec : Prop :=
  ∀ n, (P15012601193564794208.a n : ℤ) = A390255 n

end A390255

/-! ## A390255.P10113341917032172796

`C(n, or(n, -2)+3)`
-/

namespace A390255.P10113341917032172796
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n (Int.lor (n : ℤ) (-2) + 3).toNat

end

end A390255.P10113341917032172796

namespace A390255

/-- `C(n, or(n, -2)+3)` -/
def P10113341917032172796.Spec : Prop :=
  ∀ n, (P10113341917032172796.a n : ℤ) = A390255 n

end A390255

/-! ## A390255.P18015421279904837502

`C(n, ((2*n)%4)!)`
-/

namespace A390255.P18015421279904837502
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n (Nat.factorial (2 * n % 4))

end

end A390255.P18015421279904837502

namespace A390255

/-- `C(n, ((2*n)%4)!)` -/
def P18015421279904837502.Spec : Prop :=
  ∀ n, (P18015421279904837502.a n : ℤ) = A390255 n

end A390255

/-! ## A390255.P17478259643804459360

`C(n, C(2, n²%2))`
-/

namespace A390255.P17478259643804459360
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n (Nat.choose 2 (n ^ 2 % 2))

end

end A390255.P17478259643804459360

namespace A390255

/-- `C(n, C(2, n²%2))` -/
def P17478259643804459360.Spec : Prop :=
  ∀ n, (P17478259643804459360.a n : ℤ) = A390255 n

end A390255

/-! ## A390255.P16279418240885837357

`C(n, 2-char[2*n])`
-/

namespace A390255.P16279418240885837357
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n (2 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)).toNat

end

end A390255.P16279418240885837357

namespace A390255

/-- `C(n, 2-char[2*n])` -/
def P16279418240885837357.Spec : Prop :=
  ∀ n, (P16279418240885837357.a n : ℤ) = A390255 n

end A390255

/-! ## A390255.P7381155142486869075

`lcm(2*n, and(n, -2))/2`
-/

namespace A390255.P7381155142486869075
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (2 * n : ℤ) (Int.land (n : ℤ) (-2)) : ℚ) / 2

end

end A390255.P7381155142486869075

namespace A390255

/-- `lcm(2*n, and(n, -2))/2` -/
def P7381155142486869075.Spec : Prop :=
  ∀ n, P7381155142486869075.a n = (A390255 n : ℚ)

end A390255

/-! ## A390255.P4936899162097782805

`n*gcd(1-n, floor(n/2))`
-/

namespace A390255.P4936899162097782805
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Int.gcd (1 - (n : ℤ)) ⌊(n : ℚ) / 2⌋

end

end A390255.P4936899162097782805

namespace A390255

/-- `n*gcd(1-n, floor(n/2))` -/
def P4936899162097782805.Spec : Prop :=
  ∀ n, (P4936899162097782805.a n : ℤ) = A390255 n

end A390255

/-! ## A390255.P83621819052082924

`n*floor(∑[n]/(a(n-1)+3))` with `a(0)=0`
-/

namespace A390255.P83621819052082924
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (n : ℤ) * ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / (a (n - 1) + 3 : ℚ)⌋

end

end A390255.P83621819052082924

namespace A390255

/-- `n*floor(∑[n]/(a(n-1)+3))` -/
def P83621819052082924.Spec : Prop :=
  ∀ n, P83621819052082924.a n = A390255 n

end A390255

/-! ## A390255.P5916952266658610834

`gcd(n*a(n-1), n*(1-a(n-2)))` with `a(0)=0, a(1)=0`
-/

namespace A390255.P5916952266658610834
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 0] fun n a =>
  Int.gcd (n * a (n - 1) : ℤ) ((n : ℤ) * (1 - (a (n - 2) : ℤ)))

end

end A390255.P5916952266658610834

namespace A390255

/-- `gcd(n*a(n-1), n*(1-a(n-2)))` -/
def P5916952266658610834.Spec : Prop :=
  ∀ n, (P5916952266658610834.a n : ℤ) = A390255 n

end A390255

/-! ## A390255.P14043110654443922627

`n*A057979(n)`
-/

namespace A390255.P14043110654443922627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A057979 n

end

end A390255.P14043110654443922627

namespace A390255

/-- `n*A057979(n)` -/
def P14043110654443922627.Spec : Prop :=
  ∀ n, P14043110654443922627.a n = A390255 n

end A390255

/-! ## A390255.P10280454692045635522

`∑[n]-A385083(n)`
-/

namespace A390255.P10280454692045635522
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A385083 n

end

end A390255.P10280454692045635522

namespace A390255

/-- `∑[n]-A385083(n)` -/
def P10280454692045635522.Spec : Prop :=
  ∀ n, P10280454692045635522.a n = A390255 n

end A390255

/-! ## A390255.P8268826266660801170

`A037270(n)%A084263(n)`
-/

namespace A390255.P8268826266660801170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A037270 n) (A084263 n)

end

end A390255.P8268826266660801170

namespace A390255

/-- `A037270(n)%A084263(n)` -/
def P8268826266660801170.Spec : Prop :=
  ∀ n, P8268826266660801170.a n = A390255 n

end A390255

/-! ## A390255.P5493720941564488864

`A065599(n)%A084263(n)`
-/

namespace A390255.P5493720941564488864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A065599 n) (A084263 n)

end

end A390255.P5493720941564488864

namespace A390255

/-- `A065599(n)%A084263(n)` -/
def P5493720941564488864.Spec : Prop :=
  ∀ n, P5493720941564488864.a n = A390255 n

end A390255

/-! ## A390255.P17815979844941616132

`A186636(n)%A084263(n)`
-/

namespace A390255.P17815979844941616132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A186636 n) (A084263 n)

end

end A390255.P17815979844941616132

namespace A390255

/-- `A186636(n)%A084263(n)` -/
def P17815979844941616132.Spec : Prop :=
  ∀ n, P17815979844941616132.a n = A390255 n

end A390255

/-! ## A390255.P15988263153519328897

`A004188(n)%A392334(n)`
-/

namespace A390255.P15988263153519328897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004188 n) (A392334 n)

end

end A390255.P15988263153519328897

namespace A390255

/-- `A004188(n)%A392334(n)` -/
def P15988263153519328897.Spec : Prop :=
  ∀ n, P15988263153519328897.a n = A390255 n

end A390255

/-!
# A390256: Minimum size of maximum clique or independent set of a graph on n vertices.

The programs for A390256, there is no canonical definition to state claims against.
-/

/-! ## A390256.P6075565360687168497

`ceil(log(comp[7*n]))`
-/

namespace A390256.P6075565360687168497
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.log (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℝ)⌉

end

end A390256.P6075565360687168497

/-! ## A390256.P10458838434944423723

`round(sinh(atan(sqrt(2*n))²))`
-/

namespace A390256.P10458838434944423723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sinh (Real.arctan (Real.sqrt (2 * n : ℝ)) ^ 2))

end

end A390256.P10458838434944423723

/-! ## A390256.P7543869405168153861

`round(∑[acot(round(n-acot(n)))])`
-/

namespace A390256.P7543869405168153861
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.acot (SequenceMachineLib.roundAway ((n : ℝ) - SequenceMachineLib.acot (n : ℝ)) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A390256.P7543869405168153861

/-! ## A390256.P10106856822616883942

`floor((4*4*n)^acot(4))`
-/

namespace A390256.P10106856822616883942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(4 * (4 * n) : ℝ) ^ (SequenceMachineLib.acot (4 : ℝ))⌋

end

end A390256.P10106856822616883942

/-! ## A390256.P1410586492211364098

`a(floor(n/3))+1` with `a(0)=0, a(1)=1, a(2)=2`
-/

namespace A390256.P1410586492211364098
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 2] fun n a =>
  a ⌊(n : ℚ) / 3⌋.toNat + 1

end

end A390256.P1410586492211364098

/-!
# A390258: Multiplicative sequence a(n) with a(p^e) = p^(e-1) * (e + 1) * (p * (2 + e) - e) / 2 for prime p and e > 0.

The programs for A390258, the canonical program `A390258.P5353601345552815747` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A390258 has offset 1).

The definition of A390258 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A390258.P12723723796200204794

`∑{d}[n+1, #*A018804((n+1)/#)]`
-/

namespace A390258.P12723723796200204794
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A018804 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A390258.P12723723796200204794

namespace A390258

/-- `∑{d}[n+1, #*A018804((n+1)/#)]` -/
def P12723723796200204794.Spec : Prop :=
  ∀ n, P12723723796200204794.a n = A390258 (n + 1)

end A390258

/-! ## A390258.P12226648289155320462

`∑{d}[n+1, A000203(#)*A029935((n+1)/#)]`
-/

namespace A390258.P12226648289155320462
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000203 d * A029935 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A390258.P12226648289155320462

namespace A390258

/-- `∑{d}[n+1, A000203(#)*A029935((n+1)/#)]` -/
def P12226648289155320462.Spec : Prop :=
  ∀ n, P12226648289155320462.a n = A390258 (n + 1)

end A390258

/-! ## A390258.P18078143102426556018

`∑{d}[n+1, A000010(#)*A038040((n+1)/#)]`
-/

namespace A390258.P18078143102426556018
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 d * A038040 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A390258.P18078143102426556018

namespace A390258

/-- `∑{d}[n+1, A000010(#)*A038040((n+1)/#)]` -/
def P18078143102426556018.Spec : Prop :=
  ∀ n, P18078143102426556018.a n = A390258 (n + 1)

end A390258

/-! ## A390258.P2239670342572117761

`∑{d}[n+1, A007432(#)*A034761((n+1)/#)]`
-/

namespace A390258.P2239670342572117761
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007432 d * A034761 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A390258.P2239670342572117761

namespace A390258

/-- `∑{d}[n+1, A007432(#)*A034761((n+1)/#)]` -/
def P2239670342572117761.Spec : Prop :=
  ∀ n, P2239670342572117761.a n = A390258 (n + 1)

end A390258

/-! ## A390258.P14084066464154889588

`∑{d}[n+1, A008683(#)*A034718((n+1)/#)]`
-/

namespace A390258.P14084066464154889588
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A034718 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A390258.P14084066464154889588

namespace A390258

/-- `∑{d}[n+1, A008683(#)*A034718((n+1)/#)]` -/
def P14084066464154889588.Spec : Prop :=
  ∀ n, P14084066464154889588.a n = A390258 (n + 1)

end A390258

/-! ## A390258.P13212521918347738566

`∑{d}[n+1, A007429(#)*A143275((n+1)/#)]`
-/

namespace A390258.P13212521918347738566
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007429 d * A143275 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A390258.P13212521918347738566

namespace A390258

/-- `∑{d}[n+1, A007429(#)*A143275((n+1)/#)]` -/
def P13212521918347738566.Spec : Prop :=
  ∀ n, P13212521918347738566.a n = A390258 (n + 1)

end A390258

/-! ## A390258.P5353601345552815747

`∑{d}[n+1, A007427(#)*A174466((n+1)/#)]`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A390258

/-- `∑{d}[n+1, A007427(#)*A174466((n+1)/#)]` -/
def P5353601345552815747.Spec : Prop :=
  ∀ n, P5353601345552815747.a n = A390258 (n + 1)

theorem P5353601345552815747.correct : P5353601345552815747.Spec := by
  intro n
  simp only [A390258, Nat.add_sub_cancel]

end A390258

/-! ## A390258.P15507544058261293510

`∑{d}[n+1, A000005(#)*A344683((n+1)/#)]`
-/

namespace A390258.P15507544058261293510
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000005 d * A344683 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A390258.P15507544058261293510

namespace A390258

/-- `∑{d}[n+1, A000005(#)*A344683((n+1)/#)]` -/
def P15507544058261293510.Spec : Prop :=
  ∀ n, P15507544058261293510.a n = A390258 (n + 1)

end A390258

/-! ## A390258.P10025545248061658130

`∑{d}[n+1, A091512(#)*A255655((n+1)/#)]`
-/

namespace A390258.P10025545248061658130
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A091512 d * A255655 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A390258.P10025545248061658130

namespace A390258

/-- `∑{d}[n+1, A091512(#)*A255655((n+1)/#)]` -/
def P10025545248061658130.Spec : Prop :=
  ∀ n, P10025545248061658130.a n = A390258 (n + 1)

end A390258

/-! ## A390258.P5444723754218368465

`∑{d}[n+1, A023900(#)*A349692((n+1)/#)]`
-/

namespace A390258.P5444723754218368465
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A023900 d * A349692 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A390258.P5444723754218368465

namespace A390258

/-- `∑{d}[n+1, A023900(#)*A349692((n+1)/#)]` -/
def P5444723754218368465.Spec : Prop :=
  ∀ n, P5444723754218368465.a n = A390258 (n + 1)

end A390258

/-! ## A390258.P7629959979789097899

`∑{d}[n+1, A074722(#)*A327251((n+1)/#)]`
-/

namespace A390258.P7629959979789097899
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A074722 d * A327251 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A390258.P7629959979789097899

namespace A390258

/-- `∑{d}[n+1, A074722(#)*A327251((n+1)/#)]` -/
def P7629959979789097899.Spec : Prop :=
  ∀ n, P7629959979789097899.a n = A390258 (n + 1)

end A390258

/-! ## A390258.P14978087715203246705

`∑{d}[n+1, A162728(#)*A245579((n+1)/#)]`
-/

namespace A390258.P14978087715203246705
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A162728 d * A245579 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A390258.P14978087715203246705

namespace A390258

/-- `∑{d}[n+1, A162728(#)*A245579((n+1)/#)]` -/
def P14978087715203246705.Spec : Prop :=
  ∀ n, P14978087715203246705.a n = A390258 (n + 1)

end A390258

/-! ## A390258.P6684800715926312736

`∑{d}[n+1, A158522(#)*A360430((n+1)/#)]`
-/

namespace A390258.P6684800715926312736
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A158522 d * A360430 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A390258.P6684800715926312736

namespace A390258

/-- `∑{d}[n+1, A158522(#)*A360430((n+1)/#)]` -/
def P6684800715926312736.Spec : Prop :=
  ∀ n, P6684800715926312736.a n = A390258 (n + 1)

end A390258

/-! ## A390258.P14174909418060715063

`∑{d}[n+1, A206369(#)*A322577((n+1)/#)]`
-/

namespace A390258.P14174909418060715063
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A206369 d * A322577 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A390258.P14174909418060715063

namespace A390258

/-- `∑{d}[n+1, A206369(#)*A322577((n+1)/#)]` -/
def P14174909418060715063.Spec : Prop :=
  ∀ n, P14174909418060715063.a n = A390258 (n + 1)

end A390258

/-!
# A390259: Expansion of Sum_{k>=1} (-1)^(k+1)*x^(k^3)/(1-x^(k^3)).

The programs for A390259, the canonical program `A390259.P10734854539263460431` is in `Seq.B011.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A390259 has offset 1).

The definition of A390259 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A061704, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A390259.P10734854539263460431

`2*A061704(8*(n+1))-3*A061704(n+1)`

The canonical program, it is in `Seq.B011.C001`.
-/

namespace A390259

/-- `2*A061704(8*(n+1))-3*A061704(n+1)` -/
def P10734854539263460431.Spec : Prop :=
  ∀ n, P10734854539263460431.a n = A390259 (n + 1)

theorem P10734854539263460431.correct : P10734854539263460431.Spec := by
  intro n
  simp only [A390259, Nat.add_sub_cancel]

end A390259

/-! ## A390259.P814431819707942279

`A186659((n+1)/∏{p}[n+1, gcd(n+1, #²)])%3`
-/

namespace A390259.P814431819707942279
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A186659 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), Nat.gcd (n + 1) (p ^ 2) : ℕ) : ℚ))).toNat) 3

end

end A390259.P814431819707942279

namespace A390259

/-- `A186659((n+1)/∏{p}[n+1, gcd(n+1, #²)])%3` -/
def P814431819707942279.Spec : Prop :=
  ∀ n, P814431819707942279.a n = A390259 (n + 1)

end A390259

/-! ## A390259.P8119714594747683414

`A035183(A037291(n+1))`
-/

namespace A390259.P8119714594747683414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035183 (A037291 (n + 1)).toNat

end

end A390259.P8119714594747683414

namespace A390259

/-- `A035183(A037291(n+1))` -/
def P8119714594747683414.Spec : Prop :=
  ∀ n, P8119714594747683414.a n = A390259 (n + 1)

end A390259

/-! ## A390259.P2672763346564586338

`A002325(A127707(n+1))`
-/

namespace A390259.P2672763346564586338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002325 (A127707 (n + 1)).toNat

end

end A390259.P2672763346564586338

namespace A390259

/-- `A002325(A127707(n+1))` -/
def P2672763346564586338.Spec : Prop :=
  ∀ n, P2672763346564586338.a n = A390259 (n + 1)

end A390259

/-! ## A390259.P15372029133292581317

`A354911(A366904(n+1))`
-/

namespace A390259.P15372029133292581317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354911 (A366904 (n + 1)).toNat

end

end A390259.P15372029133292581317

namespace A390259

/-- `A354911(A366904(n+1))` -/
def P15372029133292581317.Spec : Prop :=
  ∀ n, P15372029133292581317.a n = A390259 (n + 1)

end A390259

/-! ## A390259.P8285508944537853941

`A287150(4*A113061(n+1))`
-/

namespace A390259.P8285508944537853941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287150 (4 * A113061 (n + 1)).toNat

end

end A390259.P8285508944537853941

namespace A390259

/-- `A287150(4*A113061(n+1))` -/
def P8285508944537853941.Spec : Prop :=
  ∀ n, P8285508944537853941.a n = A390259 (n + 1)

end A390259

/-! ## A390259.P1298511452642275495

`A035171(9*A127707(n+1))`
-/

namespace A390259.P1298511452642275495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035171 (9 * A127707 (n + 1)).toNat

end

end A390259.P1298511452642275495

namespace A390259

/-- `A035171(9*A127707(n+1))` -/
def P1298511452642275495.Spec : Prop :=
  ∀ n, P1298511452642275495.a n = A390259 (n + 1)

end A390259

/-! ## A390259.P2287876550749838994

`A270929(A008834(n+1))%4`
-/

namespace A390259.P2287876550749838994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A270929 (A008834 (n + 1)).toNat) 4

end

end A390259.P2287876550749838994

namespace A390259

/-- `A270929(A008834(n+1))%4` -/
def P2287876550749838994.Spec : Prop :=
  ∀ n, P2287876550749838994.a n = A390259 (n + 1)

end A390259

/-! ## A390259.P9877376488662962925

`A122286(A008965((n+1)/∏{p}[n+1, gcd(n+1, #²)]))`
-/

namespace A390259.P9877376488662962925
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122286 (A008965 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), Nat.gcd (n + 1) (p ^ 2) : ℕ) : ℚ))).toNat).toNat

end

end A390259.P9877376488662962925

namespace A390259

/-- `A122286(A008965((n+1)/∏{p}[n+1, gcd(n+1, #²)]))` -/
def P9877376488662962925.Spec : Prop :=
  ∀ n, P9877376488662962925.a n = A390259 (n + 1)

end A390259

/-! ## A390259.P5160719641700050122

`and(A061704(n+1), A374150(n))`
-/

namespace A390259.P5160719641700050122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A061704 (n + 1)) (A374150 n)

end

end A390259.P5160719641700050122

namespace A390259

/-- `and(A061704(n+1), A374150(n))` -/
def P5160719641700050122.Spec : Prop :=
  ∀ n, P5160719641700050122.a n = A390259 (n + 1)

end A390259

/-!
# A390260: Expansion of Sum_{k>=1} (-1)^(k+1)*x^(k^4)/(1-x^(k^4)).

The programs for A390260, the canonical program `A390260.P12756077447559123677` is in `Seq.B006.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A390260 has offset 1).

The definition of A390260 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A063775, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A390260.P12756077447559123677

`2*A063775(16*(n+1))-3*A063775(n+1)`

The canonical program, it is in `Seq.B006.C002`.
-/

namespace A390260

/-- `2*A063775(16*(n+1))-3*A063775(n+1)` -/
def P12756077447559123677.Spec : Prop :=
  ∀ n, P12756077447559123677.a n = A390260 (n + 1)

theorem P12756077447559123677.correct : P12756077447559123677.Spec := by
  intro n
  simp only [A390260, Nat.add_sub_cancel]

end A390260

/-! ## A390260.P7574556208809072427

`A344299(A000188(n+1))`
-/

namespace A390260.P7574556208809072427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344299 (A000188 (n + 1)).toNat

end

end A390260.P7574556208809072427

namespace A390260

/-- `A344299(A000188(n+1))` -/
def P7574556208809072427.Spec : Prop :=
  ∀ n, P7574556208809072427.a n = A390260 (n + 1)

end A390260

/-! ## A390260.P8693828345589748281

`2-C(2, A358553(A008835(n+1)))`
-/

namespace A390260.P8693828345589748281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (Nat.choose 2 (A358553 (A008835 (n + 1)).toNat).toNat : ℤ)

end

end A390260.P8693828345589748281

namespace A390260

/-- `2-C(2, A358553(A008835(n+1)))` -/
def P8693828345589748281.Spec : Prop :=
  ∀ n, P8693828345589748281.a n = A390260 (n + 1)

end A390260

/-! ## A390260.P2915875556906906421

`and(A036550(n), A063775(n+1))`
-/

namespace A390260.P2915875556906906421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A036550 n) (A063775 (n + 1))

end

end A390260.P2915875556906906421

namespace A390260

/-- `and(A036550(n), A063775(n+1))` -/
def P2915875556906906421.Spec : Prop :=
  ∀ n, P2915875556906906421.a n = A390260 (n + 1)

end A390260

/-! ## A390260.P5322448210270082929

`and(A081123(A051903(n+1)), A323555(n+1))`
-/

namespace A390260.P5322448210270082929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A081123 (A051903 (n + 1)).toNat) (A323555 (n + 1))

end

end A390260.P5322448210270082929

namespace A390260

/-- `and(A081123(A051903(n+1)), A323555(n+1))` -/
def P5322448210270082929.Spec : Prop :=
  ∀ n, P5322448210270082929.a n = A390260 (n + 1)

end A390260

/-!
# A390261: Numbers k such that both k and k+1 are in A036763.

The programs for A390261, there is no canonical definition to state claims against.
-/

/-! ## A390261.P11951146886338797078

`∩[A036763(n+1)-1, A036763(n+1)]`
-/

namespace A390261.P11951146886338797078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036763 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036763 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A390261.P11951146886338797078

/-!
# A390262: Multiplicative sequence a(n) with a(p^e) = ((p + 1)^2 * p^(e-1) - 2) * p^(e-1) for prime p and e > 0.

The programs for A390262, the canonical program `A390262.P9624603092470050995` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A390262 has offset 1).

The definition of A390262 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A390262.P9624603092470050995

`∑{d}[n+1, #*A140697((n+1)/#)]`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A390262

/-- `∑{d}[n+1, #*A140697((n+1)/#)]` -/
def P9624603092470050995.Spec : Prop :=
  ∀ n, P9624603092470050995.a n = A390262 (n + 1)

theorem P9624603092470050995.correct : P9624603092470050995.Spec := by
  intro n
  simp only [A390262, Nat.add_sub_cancel]

end A390262

/-! ## A390262.P15310216877384820275

`∑{d}[n+1, A000010(#)*A000082((n+1)/#)]`
-/

namespace A390262.P15310216877384820275
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 d * A000082 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A390262.P15310216877384820275

namespace A390262

/-- `∑{d}[n+1, A000010(#)*A000082((n+1)/#)]` -/
def P15310216877384820275.Spec : Prop :=
  ∀ n, P15310216877384820275.a n = A390262 (n + 1)

end A390262

/-! ## A390262.P1148718209313577138

`∑{d}[n+1, A029935(#)*A034676((n+1)/#)]`
-/

namespace A390262.P1148718209313577138
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A029935 d * A034676 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A390262.P1148718209313577138

namespace A390262

/-- `∑{d}[n+1, A029935(#)*A034676((n+1)/#)]` -/
def P1148718209313577138.Spec : Prop :=
  ∀ n, P1148718209313577138.a n = A390262 (n + 1)

end A390262

/-! ## A390262.P6023670214933758187

`∑{d}[n+1, A007428(#)*A065018((n+1)/#)]`
-/

namespace A390262.P6023670214933758187
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007428 d * A065018 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A390262.P6023670214933758187

namespace A390262

/-- `∑{d}[n+1, A007428(#)*A065018((n+1)/#)]` -/
def P6023670214933758187.Spec : Prop :=
  ∀ n, P6023670214933758187.a n = A390262 (n + 1)

end A390262

/-! ## A390262.P8498465033414603121

`∑{d}[n+1, A007427(#)*A072861((n+1)/#)]`
-/

namespace A390262.P8498465033414603121
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007427 d * A072861 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A390262.P8498465033414603121

namespace A390262

/-- `∑{d}[n+1, A007427(#)*A072861((n+1)/#)]` -/
def P8498465033414603121.Spec : Prop :=
  ∀ n, P8498465033414603121.a n = A390262 (n + 1)

end A390262

/-! ## A390262.P7374819700933303859

`∑{d}[n+1, A018804(#)*A254520((n+1)/#)]`
-/

namespace A390262.P7374819700933303859
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A018804 d * A254520 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A390262.P7374819700933303859

namespace A390262

/-- `∑{d}[n+1, A018804(#)*A254520((n+1)/#)]` -/
def P7374819700933303859.Spec : Prop :=
  ∀ n, P7374819700933303859.a n = A390262 (n + 1)

end A390262

/-! ## A390262.P5731605688448806586

`∑{d}[n+1, A048250(#)*A341772((n+1)/#)]`
-/

namespace A390262.P5731605688448806586
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A048250 d * A341772 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A390262.P5731605688448806586

namespace A390262

/-- `∑{d}[n+1, A048250(#)*A341772((n+1)/#)]` -/
def P5731605688448806586.Spec : Prop :=
  ∀ n, P5731605688448806586.a n = A390262 (n + 1)

end A390262

/-! ## A390262.P8131910758044771830

`∑{d}[n+1, A321322(#)*A357938((n+1)/#)]`
-/

namespace A390262.P8131910758044771830
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A321322 d * A357938 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A390262.P8131910758044771830

namespace A390262

/-- `∑{d}[n+1, A321322(#)*A357938((n+1)/#)]` -/
def P8131910758044771830.Spec : Prop :=
  ∀ n, P8131910758044771830.a n = A390262 (n + 1)

end A390262

/-!
# A390266: a(n) = Sum_{k=0..n} binomial(2*n+k+1,n-k).

The programs for A390266, there is no canonical definition to state claims against.
-/

/-! ## A390266.P17926381838374824043

`A026678(2*n)`
-/

namespace A390266.P17926381838374824043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026678 (2 * n)

end

end A390266.P17926381838374824043

/-! ## A390266.P6627840261068384986

`A026743(2*n)`
-/

namespace A390266.P6627840261068384986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026743 (2 * n)

end

end A390266.P6627840261068384986

/-! ## A390266.P6496271770610161990

`A026847(Δ[n²])`
-/

namespace A390266.P6496271770610161990
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026847 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A390266.P6496271770610161990

/-! ## A390266.P16849861836975044473

`A010752(3*n+1)`
-/

namespace A390266.P16849861836975044473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010752 (3 * n + 1)

end

end A390266.P16849861836975044473

/-! ## A390266.P3104237294175937910

`A010753(3*n+1)`
-/

namespace A390266.P3104237294175937910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010753 (3 * n + 1)

end

end A390266.P3104237294175937910

/-! ## A390266.P11586587757660382785

`A108080(n)+A054441(n)`
-/

namespace A390266.P11586587757660382785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108080 n + A054441 n

end

end A390266.P11586587757660382785

/-! ## A390266.P17864400494142771296

`A026726(n+1)-A001700(n)`
-/

namespace A390266.P17864400494142771296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026726 (n + 1) - A001700 n

end

end A390266.P17864400494142771296

/-! ## A390266.P6095859774507742174

`A026726(n+1)-A088218(n+1)`
-/

namespace A390266.P6095859774507742174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026726 (n + 1) - A088218 (n + 1)

end

end A390266.P6095859774507742174

/-! ## A390266.P5939223000168797771

`A026726(n+1)-A001405(2*n+1)`
-/

namespace A390266.P5939223000168797771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026726 (n + 1) - A001405 (2 * n + 1)

end

end A390266.P5939223000168797771

/-! ## A390266.P1046073634093038109

`A026726(n+1)-A057977(2*n+1)`
-/

namespace A390266.P1046073634093038109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026726 (n + 1) - A057977 (2 * n + 1)

end

end A390266.P1046073634093038109

/-! ## A390266.P12110611111306040893

`A026726(n+1)+A024718(n)-A024718(n+1)`
-/

namespace A390266.P12110611111306040893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026726 (n + 1) + (A024718 n - A024718 (n + 1))

end

end A390266.P12110611111306040893

/-! ## A390266.P15430778598057871761

`A026743(Δ[n²])/2`
-/

namespace A390266.P15430778598057871761
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026743 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / 2

end

end A390266.P15430778598057871761

/-! ## A390266.P10664513497011011669

`A026732(2*n+1)-A026733(2*n+1)`
-/

namespace A390266.P10664513497011011669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026732 (2 * n + 1) - A026733 (2 * n + 1)

end

end A390266.P10664513497011011669

/-!
# A390267: a(n) = Sum_{k=0..n} binomial(2*n+2*k+1,n-k).

The programs for A390267, there is no canonical definition to state claims against.
-/

/-! ## A390267.P13859125834576123731

`A034888(∑[∑[A126473(n)]])`
-/

namespace A390267.P13859125834576123731
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126473 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034888 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A390267.P13859125834576123731

/-! ## A390267.P17545116875628621305

`A246277(2*A187077(n+1))`
-/

namespace A390267.P17545116875628621305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246277 (2 * A187077 (n + 1)).toNat

end

end A390267.P17545116875628621305

/-!
# A390268: a(n) = Sum_{k=0..n} binomial(2*n+3*k+1,n-k).

The programs for A390268, there is no canonical definition to state claims against.
-/

/-! ## A390268.P560693065807677614

`A165033(A081655(n))+A007318(n)`
-/

namespace A390268.P560693065807677614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165033 (A081655 n).toNat + A007318 n

end

end A390268.P560693065807677614

/-!
# A390271: E.g.f. A(x) satisfies A(x) = exp( x / (1+x^3) * A(x)^2 ).

The programs for A390271, there is no canonical definition to state claims against.
-/

/-! ## A390271.P1225321438330939377

`A000027(A389174(n))`
-/

namespace A390271.P1225321438330939377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A389174 n).toNat

end

end A390271.P1225321438330939377

/-! ## A390271.P17847683649391295695

`A389174(n)+A188257(A084609(n))`
-/

namespace A390271.P17847683649391295695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389174 n + A188257 (A084609 n).toNat

end

end A390271.P17847683649391295695

/-! ## A390271.P4909160799176935903

`A389174(n)+A332671(A000079(n))`
-/

namespace A390271.P4909160799176935903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389174 n + A332671 (A000079 n).toNat

end

end A390271.P4909160799176935903

/-!
# A390272: E.g.f. A(x) satisfies A(x) = exp( x / (1+x^3)^2 * A(x)^2 ).

The programs for A390272, there is no canonical definition to state claims against.
-/

/-! ## A390272.P16876095118495281785

`A048720(3*n)+A042963(A023997(n))`
-/

namespace A390272.P16876095118495281785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048720 (3 * n) + A042963 (A023997 n).toNat

end

end A390272.P16876095118495281785

/-!
# A390273: Total sum of the heights of the trees associated with all heapable permutations of length n.

The programs for A390273, there is no canonical definition to state claims against.
-/

/-! ## A390273.P349007117642474781

`A364728(A149923(n))`
-/

namespace A390273.P349007117642474781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364728 (A149923 n).toNat

end

end A390273.P349007117642474781

/-! ## A390273.P15992049345769557199

`A225600(A029962(n+1))+A001764(n)`
-/

namespace A390273.P15992049345769557199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225600 (A029962 (n + 1)).toNat + A001764 n

end

end A390273.P15992049345769557199

/-!
# A390276: a(n) = (-1)^n*Stirling1(2*n, n)*CatalanNumber(n).

The programs for A390276, there is no canonical definition to state claims against.
-/

/-! ## A390276.P6787046283391767139

`A187646(n)*A000108(n)`
-/

namespace A390276.P6787046283391767139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187646 n * A000108 n

end

end A390276.P6787046283391767139

/-! ## A390276.P11041747223714103193

`A390726(n)/n!`
-/

namespace A390276.P11041747223714103193
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A390726 n : ℚ) / (Nat.factorial n : ℚ)

end

end A390276.P11041747223714103193

/-! ## A390276.P12506553911958189806

`A000108(n)*A132393(A046092(n))`
-/

namespace A390276.P12506553911958189806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n * A132393 (A046092 n).toNat

end

end A390276.P12506553911958189806

/-! ## A390276.P15264518708251538854

`A390723(∑[4*n])`
-/

namespace A390276.P15264518708251538854
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390723 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A390276.P15264518708251538854

/-! ## A390276.P763272125369263759

`A390726(n)/A000142(n)`
-/

namespace A390276.P763272125369263759
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A390726 n : ℚ) / (A000142 n : ℚ)

end

end A390276.P763272125369263759

/-!
# A390277: a(n) = Stirling2(2*n, n)*CatalanNumber(n).

The programs for A390277, there is no canonical definition to state claims against.
-/

/-! ## A390277.P8298929856633889392

`A007820(n)*A000108(n)`
-/

namespace A390277.P8298929856633889392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007820 n * A000108 n

end

end A390277.P8298929856633889392

/-! ## A390277.P1534696570098887085

`A390727(n)/n!`
-/

namespace A390277.P1534696570098887085
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A390727 n : ℚ) / (Nat.factorial n : ℚ)

end

end A390277.P1534696570098887085

/-! ## A390277.P14923898223664821445

`A390724(∑[4*n])`
-/

namespace A390277.P14923898223664821445
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390724 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A390277.P14923898223664821445

/-! ## A390277.P16264538602745726305

`A124103(n)/(n+1)`
-/

namespace A390277.P16264538602745726305
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A124103 n : ℚ) / (n + 1 : ℚ)

end

end A390277.P16264538602745726305

/-! ## A390277.P17228780905552213977

`A288312(n)/A000142(n+1)`
-/

namespace A390277.P17228780905552213977
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A288312 n : ℚ) / (A000142 (n + 1) : ℚ)

end

end A390277.P17228780905552213977

/-!
# A390278: All positive numbers except those that are the product of an even number of distinct primes (including 1).

The programs for A390278, there is no canonical definition to state claims against.
-/

/-! ## A390278.P17092139438226557098

`lt[∏{p}[n, -#], n]`
-/

namespace A390278.P17092139438226557098
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), (-(p : ℤ))

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n

end

end A390278.P17092139438226557098

/-! ## A390278.P12796917684175337835

`lt[1/∏{e}[n, -#], 1]`
-/

namespace A390278.P12796917684175337835
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / ((∏ p ∈ Nat.primeFactors (f2 n), (-(Nat.factorization (f2 n) p : ℤ)) : ℤ) : ℚ)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℚ)) n

end

end A390278.P12796917684175337835

/-! ## A390278.P1430992586337085718

`lt[∏{e}[n, #-(n+1)], n²]`
-/

namespace A390278.P1430992586337085718
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), ((Nat.factorization (f2 n) p : ℤ) - (n + 1 : ℤ))

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n

end

end A390278.P1430992586337085718

/-! ## A390278.P12449812408600440369

`A246716(n+2)`
-/

namespace A390278.P12449812408600440369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246716 (n + 2)

end

end A390278.P12449812408600440369

/-! ## A390278.P14156814330134797705

`comp[A055615(n+1)]`
-/

namespace A390278.P14156814330134797705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055615 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A390278.P14156814330134797705

/-! ## A390278.P266625155532458033

`∪[A362618(n+1), A017113(n)]`
-/

namespace A390278.P266625155532458033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362618 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017113 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A390278.P266625155532458033

/-! ## A390278.P4441319741411363677

`∪[A374473(n+1), A034023(n)]`
-/

namespace A390278.P4441319741411363677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374473 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034023 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A390278.P4441319741411363677

/-! ## A390278.P2340959213305782011

`∪[A374473(n+1), A034024(n)]`
-/

namespace A390278.P2340959213305782011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374473 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034024 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A390278.P2340959213305782011

/-! ## A390278.P6210218945810017393

`∪[A374473(n+1), A034038(n)]`
-/

namespace A390278.P6210218945810017393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374473 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034038 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A390278.P6210218945810017393

/-! ## A390278.P5801896115566160052

`∪[A362618(n+1), A281813(n)]`
-/

namespace A390278.P5801896115566160052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362618 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281813 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A390278.P5801896115566160052

/-!
# A390280: Expansion of g/(1 - x^2*g), where g = 1+x*g^4 is the g.f. of A002293.

The programs for A390280, there is no canonical definition to state claims against.
-/

/-! ## A390280.P6527718997866880268

`A331904(A007841(n))+A193116(n)`
-/

namespace A390280.P6527718997866880268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331904 (A007841 n).toNat + A193116 n

end

end A390280.P6527718997866880268

/-! ## A390280.P14234020645396659735

`A357152(n)+A001221(A357174(n))`
-/

namespace A390280.P14234020645396659735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357152 n + A001221 (A357174 n).toNat

end

end A390280.P14234020645396659735

/-!
# A390289: Cubefree numbers that are not prime powers.

The programs for A390289, the canonical program `A390289.P3249589091214432495` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A390289 has offset 1).

The definition of A390289 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8106 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A390289.P4734125482613170411

`filter[A024619(n+1), A212793(#)]`
-/

namespace A390289.P4734125482613170411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024619 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A212793 (f1 j).toNat = 1) n)

end

end A390289.P4734125482613170411

namespace A390289

/-- `filter[A024619(n+1), A212793(#)]` -/
def P4734125482613170411.Spec : Prop :=
  ∀ n, P4734125482613170411.a n = A390289 (n + 1)

end A390289

/-! ## A390289.P6666270755971729516

`filter[A361102(n+2), A212793(#)]`
-/

namespace A390289.P6666270755971729516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361102 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A212793 (f1 j).toNat = 1) n)

end

end A390289.P6666270755971729516

namespace A390289

/-- `filter[A361102(n+2), A212793(#)]` -/
def P6666270755971729516.Spec : Prop :=
  ∀ n, P6666270755971729516.a n = A390289 (n + 1)

end A390289

/-! ## A390289.P3249589091214432495

`∩[A004709(n+1), A024619(n+1)]`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A390289

/-- `∩[A004709(n+1), A024619(n+1)]` -/
def P3249589091214432495.Spec : Prop :=
  ∀ n, (P3249589091214432495.a n : ℤ) = A390289 (n + 1)

theorem P3249589091214432495.correct : P3249589091214432495.Spec := by
  intro n
  simp only [A390289, Nat.add_sub_cancel]

end A390289

/-! ## A390289.P12096988970566426014

`∩[A024619(n+1), A377880(n+1)]`
-/

namespace A390289.P12096988970566426014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024619 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377880 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A390289.P12096988970566426014

namespace A390289

/-- `∩[A024619(n+1), A377880(n+1)]` -/
def P12096988970566426014.Spec : Prop :=
  ∀ n, (P12096988970566426014.a n : ℤ) = A390289 (n + 1)

end A390289

/-! ## A390289.P6534704264998345286

`filter[A139118(n+2), A212793(#)]`
-/

namespace A390289.P6534704264998345286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139118 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A212793 (f1 j).toNat = 1) n)

end

end A390289.P6534704264998345286

namespace A390289

/-- `filter[A139118(n+2), A212793(#)]` -/
def P6534704264998345286.Spec : Prop :=
  ∀ n, P6534704264998345286.a n = A390289 (n + 1)

end A390289

/-! ## A390289.P2085789791483963699

`filter[A268388(n+1), A212793(#)]`
-/

namespace A390289.P2085789791483963699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268388 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A212793 (f1 j).toNat = 1) n)

end

end A390289.P2085789791483963699

namespace A390289

/-- `filter[A268388(n+1), A212793(#)]` -/
def P2085789791483963699.Spec : Prop :=
  ∀ n, P2085789791483963699.a n = A390289 (n + 1)

end A390289

/-! ## A390289.P5132962503903419417

`∩[A004709(n+1), A268388(n+1)]`
-/

namespace A390289.P5132962503903419417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004709 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268388 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A390289.P5132962503903419417

namespace A390289

/-- `∩[A004709(n+1), A268388(n+1)]` -/
def P5132962503903419417.Spec : Prop :=
  ∀ n, (P5132962503903419417.a n : ℤ) = A390289 (n + 1)

end A390289

/-! ## A390289.P2296013768218492367

`filter[A080257(n+1), A212793(#)]`
-/

namespace A390289.P2296013768218492367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080257 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A212793 (f1 j).toNat = 1) n)

end

end A390289.P2296013768218492367

namespace A390289

/-- `filter[A080257(n+1), A212793(#)]` -/
def P2296013768218492367.Spec : Prop :=
  ∀ n, P2296013768218492367.a n = A390289 (n + 1)

end A390289

/-! ## A390289.P16263810289395106574

`∩[A004709(n+1), A080257(n+1)]`
-/

namespace A390289.P16263810289395106574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004709 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080257 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A390289.P16263810289395106574

namespace A390289

/-- `∩[A004709(n+1), A080257(n+1)]` -/
def P16263810289395106574.Spec : Prop :=
  ∀ n, (P16263810289395106574.a n : ℤ) = A390289 (n + 1)

end A390289

/-! ## A390289.P3889952822890505656

`∩[A085971(n+1), A377880(n+1)]`
-/

namespace A390289.P3889952822890505656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085971 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377880 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A390289.P3889952822890505656

namespace A390289

/-- `∩[A085971(n+1), A377880(n+1)]` -/
def P3889952822890505656.Spec : Prop :=
  ∀ n, (P3889952822890505656.a n : ℤ) = A390289 (n + 1)

end A390289

/-! ## A390289.P17843248852501399259

`filter[A004709(n+1), A143731(#)]`
-/

namespace A390289.P17843248852501399259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004709 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A143731 (f1 j).toNat = 1) n)

end

end A390289.P17843248852501399259

namespace A390289

/-- `filter[A004709(n+1), A143731(#)]` -/
def P17843248852501399259.Spec : Prop :=
  ∀ n, P17843248852501399259.a n = A390289 (n + 1)

end A390289

/-! ## A390289.P9312070312325791637

`filter[A377880(n+1), A143731(#)]`
-/

namespace A390289.P9312070312325791637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377880 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A143731 (f1 j).toNat = 1) n)

end

end A390289.P9312070312325791637

namespace A390289

/-- `filter[A377880(n+1), A143731(#)]` -/
def P9312070312325791637.Spec : Prop :=
  ∀ n, P9312070312325791637.a n = A390289 (n + 1)

end A390289

/-! ## A390289.P3009428100869527961

`filter[A348718(n+1), A212793(#)]`
-/

namespace A390289.P3009428100869527961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348718 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A212793 (f1 j).toNat = 1) n)

end

end A390289.P3009428100869527961

namespace A390289

/-- `filter[A348718(n+1), A212793(#)]` -/
def P3009428100869527961.Spec : Prop :=
  ∀ n, P3009428100869527961.a n = A390289 (n + 1)

end A390289

/-! ## A390289.P10391432967245925361

`∩[A004709(n+1), A348718(n+1)]`
-/

namespace A390289.P10391432967245925361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004709 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348718 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A390289.P10391432967245925361

namespace A390289

/-- `∩[A004709(n+1), A348718(n+1)]` -/
def P10391432967245925361.Spec : Prop :=
  ∀ n, (P10391432967245925361.a n : ℤ) = A390289 (n + 1)

end A390289

/-!
# A390290: Powers k^m, m > 1, such that k is in A303946 and are products of primorials.

The programs for A390290, there is no canonical definition to state claims against.
-/

/-! ## A390290.P7422657162914327120

`∪[A389260(n+1), A389397(n+1)]`
-/

namespace A390290.P7422657162914327120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389260 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389397 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A390290.P7422657162914327120

/-! ## A390290.P3405514323003906570

`∩[A368681(n+1), A389312(n+1)]`
-/

namespace A390290.P3405514323003906570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368681 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389312 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A390290.P3405514323003906570

/-! ## A390290.P9436899829983767701

`∩[A368682(n+1), A389312(n+1)]`
-/

namespace A390290.P9436899829983767701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368682 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389312 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A390290.P9436899829983767701

/-! ## A390290.P2347256157580861602

`∩[A364930(n+1), A389312(n+1)]`
-/

namespace A390290.P2347256157580861602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364930 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389312 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A390290.P2347256157580861602

/-! ## A390290.P6026126359620966424

`∩[A181800(n+1), A389312(n+1)]`
-/

namespace A390290.P6026126359620966424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181800 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389312 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A390290.P6026126359620966424

/-! ## A390290.P15570350188748869575

`∩[A363280(n+1), A389312(n+1)]`
-/

namespace A390290.P15570350188748869575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363280 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389312 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A390290.P15570350188748869575

/-! ## A390290.P2354726325104778042

`∩[A364710(n+1), A389312(n+1)]`
-/

namespace A390290.P2354726325104778042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364710 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389312 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A390290.P2354726325104778042

/-! ## A390290.P18412407691196593523

`∩[A025487(n+1), A389312(n+1)]`
-/

namespace A390290.P18412407691196593523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025487 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389312 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A390290.P18412407691196593523

/-! ## A390290.P11306489067092897320

`∩[A025487(n+1), A389864(n+1)]`
-/

namespace A390290.P11306489067092897320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025487 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389864 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A390290.P11306489067092897320

/-! ## A390290.P15053366145217939644

`∩[A181800(n+1), A389864(n+1)]`
-/

namespace A390290.P15053366145217939644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181800 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389864 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A390290.P15053366145217939644

/-! ## A390290.P7923352731391472360

`∩[A363280(n+1), A389864(n+1)]`
-/

namespace A390290.P7923352731391472360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363280 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389864 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A390290.P7923352731391472360

/-! ## A390290.P10049732746402778249

`∩[A364710(n+1), A389864(n+1)]`
-/

namespace A390290.P10049732746402778249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364710 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389864 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A390290.P10049732746402778249

/-! ## A390290.P6405576677175750935

`∩[A364930(n+1), A389864(n+1)]`
-/

namespace A390290.P6405576677175750935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364930 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389864 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A390290.P6405576677175750935

/-! ## A390290.P9214703621389770330

`∩[A368681(n+1), A389864(n+1)]`
-/

namespace A390290.P9214703621389770330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368681 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389864 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A390290.P9214703621389770330

/-! ## A390290.P9715211048852074046

`∩[A368682(n+1), A389864(n+1)]`
-/

namespace A390290.P9715211048852074046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368682 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389864 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A390290.P9715211048852074046

/-!
# A390291: Number of "iterative" minimally rigid n X n adjacency matrices of sphere packings in R^3.

The programs for A390291, there is no canonical definition to state claims against.
-/

/-! ## A390291.P15921308180248838455

`A174423(∑[A063265(n)])`
-/

namespace A390291.P15921308180248838455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063265 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174423 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A390291.P15921308180248838455

/-! ## A390291.P5572887932166164949

`A174423(A073526(n+1))`
-/

namespace A390291.P5572887932166164949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174423 (A073526 (n + 1)).toNat

end

end A390291.P5572887932166164949

/-! ## A390291.P13272287840941436316

`A174423(A239090(n+1))`
-/

namespace A390291.P13272287840941436316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174423 (A239090 (n + 1)).toNat

end

end A390291.P13272287840941436316

/-! ## A390291.P8291251341297977228

`A174423(A063265(n)+n)`
-/

namespace A390291.P8291251341297977228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174423 (A063265 n + (n : ℤ)).toNat

end

end A390291.P8291251341297977228

/-! ## A390291.P11228429173698365784

`A174423(∑[A186006(n+1)])`
-/

namespace A390291.P11228429173698365784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186006 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174423 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A390291.P11228429173698365784

/-!
# A390292: Number of "non-iterative" minimally rigid n X n adjacency matrices of sphere packings in R^3.

The programs for A390292, there is no canonical definition to state claims against.
-/

/-! ## A390292.P15266867249884260417

`A173715(n+1)-A390291(n+1)`
-/

namespace A390292.P15266867249884260417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173715 (n + 1) - A390291 (n + 1)

end

end A390292.P15266867249884260417

/-! ## A390292.P7509732289847261988

`A327029(A240077(A240076(n+1)))`
-/

namespace A390292.P7509732289847261988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327029 (A240077 (A240076 (n + 1)).toNat).toNat

end

end A390292.P7509732289847261988

/-! ## A390292.P10355537343443353876

`A026815(A238279(n)+comp[A344619(n+1)])`
-/

namespace A390292.P10355537343443353876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344619 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026815 (A238279 n + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)).toNat

end

end A390292.P10355537343443353876

/-!
# A390293: Positions of records in A196047.

The programs for A390293, there is no canonical definition to state claims against.
-/

/-! ## A390293.P9829275713035199225

`eq[A185283(n), A341151(n)]`
-/

namespace A390293.P9829275713035199225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185283 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341151 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A390293.P9829275713035199225

/-!
# A390294: Numbers k with a prime factor other than 2 or 5 such that digsum(k) = digsum(repeating period of 1/k).

The programs for A390294, there is no canonical definition to state claims against.
-/

/-! ## A390294.P17475212627382944058

`record[A001177(2*(n+1))/A115579(n+1)]`
-/

namespace A390294.P17475212627382944058
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001177 (2 * (n + 1)) : ℚ) / (A115579 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A390294.P17475212627382944058

/-! ## A390294.P12930359687450261647

`filter[A018293(n+1), A011747(#)]`
-/

namespace A390294.P12930359687450261647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018293 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A011747 (f1 j).toNat = 1) n)

end

end A390294.P12930359687450261647

/-! ## A390294.P5539395361600522167

`filter[A018293(n+1), A020987(#)]`
-/

namespace A390294.P5539395361600522167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018293 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A020987 (f1 j).toNat = 1) n)

end

end A390294.P5539395361600522167

/-! ## A390294.P9323473270221813232

`filter[A018293(n+1), A038189(#)]`
-/

namespace A390294.P9323473270221813232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018293 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A038189 (f1 j).toNat = 1) n)

end

end A390294.P9323473270221813232

/-!
# A390295: Average k of twin prime pairs such that gcd(d^2 - 4, k) = 1 for only one divisor d of k.

The programs for A390295, there is no canonical definition to state claims against.
-/

/-! ## A390295.P8666210885337283493

`∩[A003401(n+1), A375197(n+1)]`
-/

namespace A390295.P8666210885337283493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003401 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375197 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A390295.P8666210885337283493

/-! ## A390295.P12061916280762487518

`∩[A003401(n+1), A384530(n+1)]`
-/

namespace A390295.P12061916280762487518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003401 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384530 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A390295.P12061916280762487518

/-! ## A390295.P6306745456733954773

`∩[A003401(n+1), A393795(n+1)]`
-/

namespace A390295.P6306745456733954773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003401 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393795 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A390295.P6306745456733954773

/-! ## A390295.P7280484252283091071

`∩[A023758(n+1), A375197(n+1)]`
-/

namespace A390295.P7280484252283091071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023758 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375197 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A390295.P7280484252283091071

/-! ## A390295.P16349362017692579863

`∩[A023758(n+1), A384530(n+1)]`
-/

namespace A390295.P16349362017692579863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023758 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384530 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A390295.P16349362017692579863

/-!
# A390298: Expansion of g/(1 - x^3*g), where g = 1+x*g^4 is the g.f. of A002293.

The programs for A390298, there is no canonical definition to state claims against.
-/

/-! ## A390298.P4050280078131695162

`A104414(A000166(n))+A002293(n)`
-/

namespace A390298.P4050280078131695162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104414 (A000166 n).toNat + A002293 n

end

end A390298.P4050280078131695162

/-! ## A390298.P15841337680835116628

`A261585(A112936(n)+A110706(n))`
-/

namespace A390298.P15841337680835116628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261585 (A112936 n + A110706 n).toNat

end

end A390298.P15841337680835116628

/-!
# A390299: Number of positive z <= n such that z^2 - 9^g is relatively prime to n (for any particular positive integer g).

The programs for A390299, the canonical program `A390299.P12960639858912194523` is in `Seq.B008.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A390299 has offset 1).

The definition of A390299 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A390299.P4751859419815564239

`A002472(n+1)*A100063(n+1)`
-/

namespace A390299.P4751859419815564239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002472 (n + 1) * A100063 (n + 1)

end

end A390299.P4751859419815564239

namespace A390299

/-- `A002472(n+1)*A100063(n+1)` -/
def P4751859419815564239.Spec : Prop :=
  ∀ n, P4751859419815564239.a n = A390299 (n + 1)

end A390299

/-! ## A390299.P12960639858912194523

`A002472(n+1)*A177702(n)`

The canonical program, it is in `Seq.B008.C001`.
-/

namespace A390299

/-- `A002472(n+1)*A177702(n)` -/
def P12960639858912194523.Spec : Prop :=
  ∀ n, P12960639858912194523.a n = A390299 (n + 1)

theorem P12960639858912194523.correct : P12960639858912194523.Spec := by
  intro n
  simp only [A390299, Nat.add_sub_cancel]

end A390299

/-! ## A390299.P12849071693787020353

`A004526(A002472(3*(n+1))+A002472(n+1))`
-/

namespace A390299.P12849071693787020353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A002472 (3 * (n + 1)) + A002472 (n + 1)).toNat

end

end A390299.P12849071693787020353

namespace A390299

/-- `A004526(A002472(3*(n+1))+A002472(n+1))` -/
def P12849071693787020353.Spec : Prop :=
  ∀ n, P12849071693787020353.a n = A390299 (n + 1)

end A390299

/-! ## A390299.P4145745750845150452

`A162350(A318838(n+1))`
-/

namespace A390299.P4145745750845150452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162350 (A318838 (n + 1)).toNat

end

end A390299.P4145745750845150452

namespace A390299

/-- `A162350(A318838(n+1))` -/
def P4145745750845150452.Spec : Prop :=
  ∀ n, P4145745750845150452.a n = A390299 (n + 1)

end A390299

/-! ## A390299.P16385620443299086089

`A000010(n+1)-A010060(A015938(n+1))`
-/

namespace A390299.P16385620443299086089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) - A010060 (A015938 (n + 1)).toNat

end

end A390299.P16385620443299086089

namespace A390299

/-- `A000010(n+1)-A010060(A015938(n+1))` -/
def P16385620443299086089.Spec : Prop :=
  ∀ n, P16385620443299086089.a n = A390299 (n + 1)

end A390299

