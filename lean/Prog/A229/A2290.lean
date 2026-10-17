import SequenceMachineLib
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
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
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
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
import Seq.B008.C001
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
import Seq.Opaque.C025

/-!
# A229000: Total sum of the 10th powers of lengths of ascending runs in all permutations of [n].

The programs for A229000, there is no canonical definition to state claims against.
-/

/-! ## A229000.P16857814479059751976

`A229001(eq[10, A025581(n)])`
-/

namespace A229000.P16857814479059751976
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229001 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A229000.P16857814479059751976

/-! ## A229000.P5330751768413040555

`A229001(eq[11, A193739(n)])`
-/

namespace A229000.P5330751768413040555
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229001 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A229000.P5330751768413040555

/-! ## A229000.P2608169745551719985

`A229001(eq[21, A099375(n)])`
-/

namespace A229000.P2608169745551719985
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  21

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229001 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A229000.P2608169745551719985

/-! ## A229000.P13179922353823712294

`A229001(A056000(n+7)-1)`
-/

namespace A229000.P13179922353823712294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229001 (A056000 (n + 7) - 1).toNat

end

end A229000.P13179922353823712294

/-! ## A229000.P1431398071082157171

`A229001(eq[11, A004736(n+1)])`
-/

namespace A229000.P1431398071082157171
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229001 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A229000.P1431398071082157171

/-!
# A229001: Total sum A(n,k) of the k-th powers of lengths of ascending runs in all permutations of [n]; square array A(n,k), n>=0, k>=0, read by antidiagonals.

The programs for A229001, there is no canonical definition to state claims against.
-/

/-! ## A229001.P11516718503676450493

`A105564(A130746(n+1))`
-/

namespace A229001.P11516718503676450493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105564 (A130746 (n + 1)).toNat

end

end A229001.P11516718503676450493

/-! ## A229001.P17294604436844961300

`A009191(A082582(n))*A213191(n)`
-/

namespace A229001.P17294604436844961300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009191 (A082582 n).toNat * A213191 n

end

end A229001.P17294604436844961300

/-! ## A229001.P15173776285313796113

`A194823(A000051(n))*A213191(n)`
-/

namespace A229001.P15173776285313796113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194823 (A000051 n).toNat * A213191 n

end

end A229001.P15173776285313796113

/-! ## A229001.P6938970011180837551

`A048766(A002262(n)^A152850(n))`
-/

namespace A229001.P6938970011180837551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (SequenceMachineLib.roundAway ((A002262 n : ℚ) ^ (A152850 n : ℤ))).toNat

end

end A229001.P6938970011180837551

/-! ## A229001.P6702102724236441441

`A048766(A163351(n)^A152850(n))`
-/

namespace A229001.P6702102724236441441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (SequenceMachineLib.roundAway ((A163351 n : ℚ) ^ (A152850 n : ℤ))).toNat

end

end A229001.P6702102724236441441

/-!
# A229002: Total sum of the n-th powers of lengths of ascending runs in all permutations of [n].

The programs for A229002, there is no canonical definition to state claims against.
-/

/-! ## A229002.P5619972772059971404

`A229001(∑[4*n])`
-/

namespace A229002.P5619972772059971404
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229001 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A229002.P5619972772059971404

/-! ## A229002.P12888462911599178707

`record[A229001(∑[A071045(n)])]`
-/

namespace A229002.P12888462911599178707
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071045 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229001 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A229002.P12888462911599178707

/-! ## A229002.P1423098647759741865

`record[A229001(n*A003982(n))]`
-/

namespace A229002.P1423098647759741865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229001 ((n : ℤ) * A003982 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A229002.P1423098647759741865

/-! ## A229002.P9545222295352002167

`record[A229001(n*A008619(n))]`
-/

namespace A229002.P9545222295352002167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229001 ((n : ℤ) * A008619 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A229002.P9545222295352002167

/-! ## A229002.P11223357331272931648

`record[A229001(A005843(A115880(n+1)))]`
-/

namespace A229002.P11223357331272931648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229001 (A005843 (A115880 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A229002.P11223357331272931648

/-!
# A229003: Total sum of cubed lengths of ascending runs in all permutations of [n].

The programs for A229003, there is no canonical definition to state claims against.
-/

/-! ## A229003.P17614207867920848564

`A229001(∑[n+3]+n+3)`
-/

namespace A229003.P17614207867920848564
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229001 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 3))

end

end A229003.P17614207867920848564

/-! ## A229003.P7334474113780246513

`record[A229001(abs(A046691(n)))]`
-/

namespace A229003.P7334474113780246513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229001 |A046691 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A229003.P7334474113780246513

/-! ## A229003.P52114236567233749

`record[A229001(n)/A039810(n+4)]`
-/

namespace A229003.P52114236567233749
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A229001 n : ℚ) / (A039810 (n + 4) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A229003.P52114236567233749

/-! ## A229003.P17253269221057329705

`record[A229001(A046691(n)%A160375(n+1))]`
-/

namespace A229003.P17253269221057329705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229001 (Int.tmod (A046691 n) (A160375 (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A229003.P17253269221057329705

/-! ## A229003.P118663524749348082

`record[A229001(n)/A202006(n+5)]`
-/

namespace A229003.P118663524749348082
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A229001 n : ℚ) / (A202006 (n + 5) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A229003.P118663524749348082

/-!
# A229004: Indices of Bell numbers divisible by 3.

The programs for A229004, the canonical program `A229004.P350857080435210606` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A229004 has offset 1).

The definition of A229004 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A229004.P350857080435210606

`a(n-1)+a(n-4)-a(n-5)` with `a(0)=4, a(1)=8, a(2)=9, a(3)=11, a(4)=17`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A229004

/-- `a(n-1)+a(n-4)-a(n-5)` -/
def P350857080435210606.Spec : Prop :=
  ∀ n, P350857080435210606.a n = A229004 (n + 1)

theorem P350857080435210606.correct : P350857080435210606.Spec := by
  intro n
  simp only [A229004, Nat.add_sub_cancel]

end A229004

/-! ## A229004.P15798164944129421637

`a(n-4)+13` with `a(0)=4, a(1)=8, a(2)=9, a(3)=11`
-/

namespace A229004.P15798164944129421637
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [4, 8, 9, 11] fun n a =>
  a (n - 4) + 13

end

end A229004.P15798164944129421637

namespace A229004

/-- `a(n-4)+13` -/
def P15798164944129421637.Spec : Prop :=
  ∀ n, (P15798164944129421637.a n : ℤ) = A229004 (n + 1)

end A229004

/-! ## A229004.P16702184535622663010

`∑[floor(a(n-4))]` with `a(0)=4, a(1)=4, a(2)=1, a(3)=2, a(4)=6`

`floor` is left out, it is the identity on integers.
-/

namespace A229004.P16702184535622663010
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [4, 4, 1, 2, 6] fun n f1 =>
  f1 (n - 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A229004.P16702184535622663010

namespace A229004

/-- `∑[floor(a(n-4))]` -/
def P16702184535622663010.Spec : Prop :=
  ∀ n, (P16702184535622663010.a n : ℤ) = A229004 (n + 1)

end A229004

/-! ## A229004.P17954127934326190173

`∑[a(n-4)%7]` with `a(0)=4, a(1)=4, a(2)=1, a(3)=2, a(4)=6`
-/

namespace A229004.P17954127934326190173
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [4, 4, 1, 2, 6] fun n f1 =>
  f1 (n - 4) % 7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A229004.P17954127934326190173

namespace A229004

/-- `∑[a(n-4)%7]` -/
def P17954127934326190173.Spec : Prop :=
  ∀ n, (P17954127934326190173.a n : ℤ) = A229004 (n + 1)

end A229004

/-! ## A229004.P6660959176701679731

`or(2, n)+A056991(n+2)-2`
-/

namespace A229004.P6660959176701679731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 2 n : ℤ) + (A056991 (n + 2) - 2)

end

end A229004.P6660959176701679731

namespace A229004

/-- `or(2, n)+A056991(n+2)-2` -/
def P6660959176701679731.Spec : Prop :=
  ∀ n, P6660959176701679731.a n = A229004 (n + 1)

end A229004

/-! ## A229004.P7017026837337537168

`A047338(n+1)+∑[(n+2)%4]+1`
-/

namespace A229004.P7017026837337537168
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 2) % 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047338 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j + 1 : ℕ) : ℤ)

end

end A229004.P7017026837337537168

namespace A229004

/-- `A047338(n+1)+∑[(n+2)%4]+1` -/
def P7017026837337537168.Spec : Prop :=
  ∀ n, P7017026837337537168.a n = A229004 (n + 1)

end A229004

/-! ## A229004.P16940197696244876953

`∑[A064538(and(3, n-A002445(n)))]`
-/

namespace A229004.P16940197696244876953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064538 (Int.land 3 ((n : ℤ) - A002445 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A229004.P16940197696244876953

namespace A229004

/-- `∑[A064538(and(3, n-A002445(n)))]` -/
def P16940197696244876953.Spec : Prop :=
  ∀ n, P16940197696244876953.a n = A229004 (n + 1)

end A229004

/-! ## A229004.P12467425873218644971

`∑[A064538(and(3, n-A144845(n)))]`
-/

namespace A229004.P12467425873218644971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064538 (Int.land 3 ((n : ℤ) - A144845 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A229004.P12467425873218644971

namespace A229004

/-- `∑[A064538(and(3, n-A144845(n)))]` -/
def P12467425873218644971.Spec : Prop :=
  ∀ n, P12467425873218644971.a n = A229004 (n + 1)

end A229004

/-! ## A229004.P17543844343971917172

`A000202(A047582(n+1))`
-/

namespace A229004.P17543844343971917172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000202 (A047582 (n + 1)).toNat

end

end A229004.P17543844343971917172

namespace A229004

/-- `A000202(A047582(n+1))` -/
def P17543844343971917172.Spec : Prop :=
  ∀ n, P17543844343971917172.a n = A229004 (n + 1)

end A229004

/-! ## A229004.P5660991909773782742

`eq[n, A146093(n)+n]`
-/

namespace A229004.P5660991909773782742
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146093 n + (n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A229004.P5660991909773782742

namespace A229004

/-- `eq[n, A146093(n)+n]` -/
def P5660991909773782742.Spec : Prop :=
  ∀ n, (P5660991909773782742.a n : ℤ) = A229004 (n + 1)

end A229004

/-! ## A229004.P11516882578506772941

`eq[A146093(n), A185012(n)]`
-/

namespace A229004.P11516882578506772941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146093 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185012 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A229004.P11516882578506772941

namespace A229004

/-- `eq[A146093(n), A185012(n)]` -/
def P11516882578506772941.Spec : Prop :=
  ∀ n, (P11516882578506772941.a n : ℤ) = A229004 (n + 1)

end A229004

/-! ## A229004.P7860718671265157607

`eq[A146093(n), A185013(n)]`
-/

namespace A229004.P7860718671265157607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146093 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185013 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A229004.P7860718671265157607

namespace A229004

/-- `eq[A146093(n), A185013(n)]` -/
def P7860718671265157607.Spec : Prop :=
  ∀ n, (P7860718671265157607.a n : ℤ) = A229004 (n + 1)

end A229004

/-! ## A229004.P13799069351287009614

`eq[A146093(n), A185016(n)]`
-/

namespace A229004.P13799069351287009614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146093 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185016 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A229004.P13799069351287009614

namespace A229004

/-- `eq[A146093(n), A185016(n)]` -/
def P13799069351287009614.Spec : Prop :=
  ∀ n, (P13799069351287009614.a n : ℤ) = A229004 (n + 1)

end A229004

/-! ## A229004.P8560236168693309380

`eq[A053204(n)-A146093(n), A053204(n)]`
-/

namespace A229004.P8560236168693309380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053204 n - A146093 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053204 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A229004.P8560236168693309380

namespace A229004

/-- `eq[A053204(n)-A146093(n), A053204(n)]` -/
def P8560236168693309380.Spec : Prop :=
  ∀ n, (P8560236168693309380.a n : ℤ) = A229004 (n + 1)

end A229004

/-! ## A229004.P8945007416664105126

`eq[A319410(n)-A146093(n), A319410(n)]`
-/

namespace A229004.P8945007416664105126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319410 n - A146093 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319410 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A229004.P8945007416664105126

namespace A229004

/-- `eq[A319410(n)-A146093(n), A319410(n)]` -/
def P8945007416664105126.Spec : Prop :=
  ∀ n, (P8945007416664105126.a n : ℤ) = A229004 (n + 1)

end A229004

/-! ## A229004.P8918001781396578498

`eq[A146093(n), A319410(n*A146093(n))]`
-/

namespace A229004.P8918001781396578498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146093 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319410 ((n : ℤ) * A146093 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A229004.P8918001781396578498

namespace A229004

/-- `eq[A146093(n), A319410(n*A146093(n))]` -/
def P8918001781396578498.Spec : Prop :=
  ∀ n, (P8918001781396578498.a n : ℤ) = A229004 (n + 1)

end A229004

/-! ## A229004.P12296382357324656185

`eq[A053204(n*A146093(n)), A146093(n)]`
-/

namespace A229004.P12296382357324656185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053204 ((n : ℤ) * A146093 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146093 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A229004.P12296382357324656185

namespace A229004

/-- `eq[A053204(n*A146093(n)), A146093(n)]` -/
def P12296382357324656185.Spec : Prop :=
  ∀ n, (P12296382357324656185.a n : ℤ) = A229004 (n + 1)

end A229004

/-! ## A229004.P11139390510018535533

`eq[A119655(n)-A146093(n), A119655(n)]`
-/

namespace A229004.P11139390510018535533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119655 n - A146093 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119655 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A229004.P11139390510018535533

namespace A229004

/-- `eq[A119655(n)-A146093(n), A119655(n)]` -/
def P11139390510018535533.Spec : Prop :=
  ∀ n, (P11139390510018535533.a n : ℤ) = A229004 (n + 1)

end A229004

/-! ## A229004.P5726694257959395728

`eq[A119655(n*A146093(n)), A146093(n)]`
-/

namespace A229004.P5726694257959395728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119655 ((n : ℤ) * A146093 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146093 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A229004.P5726694257959395728

namespace A229004

/-- `eq[A119655(n*A146093(n)), A146093(n)]` -/
def P5726694257959395728.Spec : Prop :=
  ∀ n, (P5726694257959395728.a n : ℤ) = A229004 (n + 1)

end A229004

/-!
# A229006: Number of arrays of median of three adjacent elements of some length n+2 0..2 array, with no adjacent equal elements in the latter.

The programs for A229006, there is no canonical definition to state claims against.
-/

/-! ## A229006.P7891172168940865541

`A229012(∑[n+2])`
-/

namespace A229006.P7891172168940865541
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229012 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A229006.P7891172168940865541

/-! ## A229006.P1078937350091627283

`or(1, A229012(A000096(n+1)))`
-/

namespace A229006.P1078937350091627283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A229012 (A000096 (n + 1)).toNat)

end

end A229006.P1078937350091627283

/-! ## A229006.P8212256561450850349

`char[A004442(n)]*A229012(A000096(n+1))`
-/

namespace A229006.P8212256561450850349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A229012 (A000096 (n + 1)).toNat

end

end A229006.P8212256561450850349

/-! ## A229006.P1788586108286475184

`A007318(A000096(n))*A229012(A000096(n+1))`
-/

namespace A229006.P1788586108286475184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A000096 n).toNat * A229012 (A000096 (n + 1)).toNat

end

end A229006.P1788586108286475184

/-!
# A229007: Number of arrays of median of three adjacent elements of some length n+2 0..3 array, with no adjacent equal elements in the latter.

The programs for A229007, there is no canonical definition to state claims against.
-/

/-! ## A229007.P7936913209270242478

`A229012(∑[n+3]+1)`
-/

namespace A229007.P7936913209270242478
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229012 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A229007.P7936913209270242478

/-! ## A229007.P13567379746343812538

`char[A057163(n)]*A229012(A034856(n+2))`
-/

namespace A229007.P13567379746343812538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057163 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A229012 (A034856 (n + 2)).toNat

end

end A229007.P13567379746343812538

/-! ## A229007.P277212595101459982

`A229012(Δ[A008778(n)])%A229008(n+1)`
-/

namespace A229007.P277212595101459982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A229012 (f1 (n + 1) - f1 n).toNat) (A229008 (n + 1))

end

end A229007.P277212595101459982

/-! ## A229007.P8613972632588805748

`A229012(A034856(n+2))%A229008(n+1)`
-/

namespace A229007.P8613972632588805748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A229012 (A034856 (n + 2)).toNat) (A229008 (n + 1))

end

end A229007.P8613972632588805748

/-! ## A229007.P9647406644398751904

`A001222(A068951(n+1))*A229012(A034856(n+2))`
-/

namespace A229007.P9647406644398751904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A068951 (n + 1)).toNat * A229012 (A034856 (n + 2)).toNat

end

end A229007.P9647406644398751904

/-!
# A229008: Number of arrays of median of three adjacent elements of some length n+2 0..4 array, with no adjacent equal elements in the latter.

The programs for A229008, there is no canonical definition to state claims against.
-/

/-! ## A229008.P11849257111193831920

`A229012(A055998(n+2))`
-/

namespace A229008.P11849257111193831920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229012 (A055998 (n + 2)).toNat

end

end A229008.P11849257111193831920

/-! ## A229008.P18264288587094922379

`A229012(A155212(n)+5)`
-/

namespace A229008.P18264288587094922379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229012 (A155212 n + 5).toNat

end

end A229008.P18264288587094922379

/-! ## A229008.P2673146535357365855

`A229012(A052905(n+1)+2)`
-/

namespace A229008.P2673146535357365855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229012 (A052905 (n + 1) + 2).toNat

end

end A229008.P2673146535357365855

/-! ## A229008.P5605166051167525036

`A229012(A000096(n+3)-2)`
-/

namespace A229008.P5605166051167525036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229012 (A000096 (n + 3) - 2).toNat

end

end A229008.P5605166051167525036

/-!
# A229009: Number of arrays of median of three adjacent elements of some length n+2 0..5 array, with no adjacent equal elements in the latter.

The programs for A229009, there is no canonical definition to state claims against.
-/

/-! ## A229009.P1188488859939857370

`A229012(Δ[A264443(n)])`
-/

namespace A229009.P1188488859939857370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229012 (f1 (n + 1) - f1 n).toNat

end

end A229009.P1188488859939857370

/-! ## A229009.P2643417539203027194

`A229012(A046691(n+3))`
-/

namespace A229009.P2643417539203027194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229012 (A046691 (n + 3)).toNat

end

end A229009.P2643417539203027194

/-! ## A229009.P10290615888332972882

`A229012(Δ[A023545(n+1)])`
-/

namespace A229009.P10290615888332972882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229012 (f1 (n + 1) - f1 n).toNat

end

end A229009.P10290615888332972882

/-! ## A229009.P17548829788305653252

`A229012(A000096(n+4)-3)`
-/

namespace A229009.P17548829788305653252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229012 (A000096 (n + 4) - 3).toNat

end

end A229009.P17548829788305653252

/-! ## A229009.P3279105211570610987

`A229012(A000217(n+4)+n+1)`
-/

namespace A229009.P3279105211570610987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229012 (A000217 (n + 4) + (n + 1 : ℤ)).toNat

end

end A229009.P3279105211570610987

/-!
# A229010: Number of arrays of median of three adjacent elements of some length n+2 0..6 array, with no adjacent equal elements in the latter.

The programs for A229010, there is no canonical definition to state claims against.
-/

/-! ## A229010.P15298374797380115459

`A229012(A052905(n+3))`
-/

namespace A229010.P15298374797380115459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229012 (A052905 (n + 3)).toNat

end

end A229010.P15298374797380115459

/-! ## A229010.P6835477703563335619

`A229012(Δ[A264443(n+1)]-1)`
-/

namespace A229010.P6835477703563335619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229012 (f1 (n + 1) - f1 n - 1).toNat

end

end A229010.P6835477703563335619

/-! ## A229010.P1338828048954242303

`A229012(Δ[A023545(n+2)]-1)`
-/

namespace A229010.P1338828048954242303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229012 (f1 (n + 1) - f1 n - 1).toNat

end

end A229010.P1338828048954242303

/-! ## A229010.P4609377812466308259

`record[A229012(A052905(A008611(n)))]`
-/

namespace A229010.P4609377812466308259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229012 (A052905 (A008611 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A229010.P4609377812466308259

/-! ## A229010.P18348081247844852668

`record[A229012(A052905(A008619(n)))]`
-/

namespace A229010.P18348081247844852668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229012 (A052905 (A008619 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A229010.P18348081247844852668

/-!
# A229011: Number of arrays of median of three adjacent elements of some length n+2 0..7 array, with no adjacent equal elements in the latter.

The programs for A229011, there is no canonical definition to state claims against.
-/

/-! ## A229011.P9226290082347998944

`A229012(A055999(n+4))`
-/

namespace A229011.P9226290082347998944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229012 (A055999 (n + 4)).toNat

end

end A229011.P9226290082347998944

/-! ## A229011.P18375293157338783271

`A229012(A000096(n+6)-5)`
-/

namespace A229011.P18375293157338783271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229012 (A000096 (n + 6) - 5).toNat

end

end A229011.P18375293157338783271

/-! ## A229011.P7221510201914052730

`A229012(A000217(n+7)-6)`
-/

namespace A229011.P7221510201914052730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229012 (A000217 (n + 7) - 6).toNat

end

end A229011.P7221510201914052730

/-! ## A229011.P6777494708524895648

`A229012(A000124(n+7)-7)`
-/

namespace A229011.P6777494708524895648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229012 (A000124 (n + 7) - 7).toNat

end

end A229011.P6777494708524895648

/-! ## A229011.P14450905317161275751

`A229012(2*(n+1)+A000124(n+5)+4)`
-/

namespace A229011.P14450905317161275751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229012 ((2 * (n + 1) : ℤ) + (A000124 (n + 5) + 4)).toNat

end

end A229011.P14450905317161275751

/-!
# A229012: T(n,k) = number of arrays of median of three adjacent elements of some length n+2 0..k array, with no adjacent equal elements in the latter.

The programs for A229012, there is no canonical definition to state claims against.
-/

/-! ## A229012.P11570157428276778044

`A118759(A051128(n+1)+A047969(n))`
-/

namespace A229012.P11570157428276778044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (A051128 (n + 1) + A047969 n).toNat

end

end A229012.P11570157428276778044

/-! ## A229012.P8861474012756337611

`A321993(A119258(n)+A051128(n+1))`
-/

namespace A229012.P8861474012756337611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321993 (A119258 n + A051128 (n + 1)).toNat

end

end A229012.P8861474012756337611

/-! ## A229012.P3195871208894869450

`(A051128(n+1)+A047969(n))*A025442(A000005(2^n))!`
-/

namespace A229012.P3195871208894869450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A051128 (n + 1) + A047969 n) * (Nat.factorial (A025442 (A000005 (2 ^ n)).toNat).toNat : ℤ)

end

end A229012.P3195871208894869450

/-! ## A229012.P18262893412103867247

`A051128(n+1)+A001221(A072828(n+1))*A047969(n)`
-/

namespace A229012.P18262893412103867247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051128 (n + 1) + A001221 (A072828 (n + 1)).toNat * A047969 n

end

end A229012.P18262893412103867247

/-!
# A229013: Number of arrays of median of three adjacent elements of some length-5 0..n array, with no adjacent equal elements in the latter.

The programs for A229013, the canonical program `A229013.P7092790782816413644` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A229013 has offset 1).

The definition of A229013 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A229013.P7092790782816413644

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=2, a(1)=15, a(2)=46, a(3)=101`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A229013

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` -/
def P7092790782816413644.Spec : Prop :=
  ∀ n, P7092790782816413644.a n = A229013 (n + 1)

theorem P7092790782816413644.correct : P7092790782816413644.Spec := by
  intro n
  simp only [A229013, Nat.add_sub_cancel]

end A229013

/-! ## A229013.P14030391387298666303

`n*((n+3)²-3)+2`
-/

namespace A229013.P14030391387298666303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (((n + 3) ^ 2 : ℤ) - 3) + 2

end

end A229013.P14030391387298666303

namespace A229013

/-- `n*((n+3)²-3)+2` -/
def P14030391387298666303.Spec : Prop :=
  ∀ n, P14030391387298666303.a n = A229013 (n + 1)

end A229013

/-! ## A229013.P15798959544382148615

`∑[record[7*n-(n-a(n-1))]]` with `a(0)=2, a(1)=1`
-/

namespace A229013.P15798959544382148615
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2, 1] fun n f2 =>
  (7 * n : ℤ) - ((n : ℤ) - f2 (n - 1))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A229013.P15798959544382148615

namespace A229013

/-- `∑[record[7*n-(n-a(n-1))]]` -/
def P15798959544382148615.Spec : Prop :=
  ∀ n, P15798959544382148615.a n = A229013 (n + 1)

end A229013

/-! ## A229013.P9760766190981442155

`∑[A008458(n)+Δ[n^3]]`
-/

namespace A229013.P9760766190981442155
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + ((f2 (n + 1) : ℤ) - (f2 n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A229013.P9760766190981442155

namespace A229013

/-- `∑[A008458(n)+Δ[n^3]]` -/
def P9760766190981442155.Spec : Prop :=
  ∀ n, P9760766190981442155.a n = A229013 (n + 1)

end A229013

/-! ## A229013.P11534872337735082617

`abs(2*n-A212836(n+1))`
-/

namespace A229013.P11534872337735082617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(2 * n : ℤ) - A212836 (n + 1)|

end

end A229013.P11534872337735082617

namespace A229013

/-- `abs(2*n-A212836(n+1))` -/
def P11534872337735082617.Spec : Prop :=
  ∀ n, P11534872337735082617.a n = A229013 (n + 1)

end A229013

/-! ## A229013.P7182256731091534973

`abs(abs(A058794(n)-2*n)-n)`
-/

namespace A229013.P7182256731091534973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(|A058794 n - (2 * n : ℤ)| - (n : ℤ))|

end

end A229013.P7182256731091534973

namespace A229013

/-- `abs(abs(A058794(n)-2*n)-n)` -/
def P7182256731091534973.Spec : Prop :=
  ∀ n, P7182256731091534973.a n = A229013 (n + 1)

end A229013

/-! ## A229013.P11704490019026732774

`abs(Δ[2*A000217(n)²]-n^3)`
-/

namespace A229013.P11704490019026732774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000217 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n - (n ^ 3 : ℤ)|

end

end A229013.P11704490019026732774

namespace A229013

/-- `abs(Δ[2*A000217(n)²]-n^3)` -/
def P11704490019026732774.Spec : Prop :=
  ∀ n, P11704490019026732774.a n = A229013 (n + 1)

end A229013

/-! ## A229013.P13687520391643792363

`abs((n+1)*(A054000(n+1)+2)-n^3)`
-/

namespace A229013.P13687520391643792363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n + 1 : ℤ) * (A054000 (n + 1) + 2) - (n ^ 3 : ℤ)|

end

end A229013.P13687520391643792363

namespace A229013

/-- `abs((n+1)*(A054000(n+1)+2)-n^3)` -/
def P13687520391643792363.Spec : Prop :=
  ∀ n, P13687520391643792363.a n = A229013 (n + 1)

end A229013

/-! ## A229013.P11043276514276257984

`abs(abs((n+4)*A005563(n)-(n-1))-(n-1))`
-/

namespace A229013.P11043276514276257984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(|(n + 4 : ℤ) * A005563 n - ((n : ℤ) - 1)| - ((n : ℤ) - 1))|

end

end A229013.P11043276514276257984

namespace A229013

/-- `abs(abs((n+4)*A005563(n)-(n-1))-(n-1))` -/
def P11043276514276257984.Spec : Prop :=
  ∀ n, P11043276514276257984.a n = A229013 (n + 1)

end A229013

/-! ## A229013.P2953034554144564169

`xor(A090197(n), A176040(n))`
-/

namespace A229013.P2953034554144564169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A090197 n) (A176040 n)

end

end A229013.P2953034554144564169

namespace A229013

/-- `xor(A090197(n), A176040(n))` -/
def P2953034554144564169.Spec : Prop :=
  ∀ n, P2953034554144564169.a n = A229013 (n + 1)

end A229013

/-! ## A229013.P15763005349363105404

`Δ[A000578(n)+A000217(n)²]`
-/

namespace A229013.P15763005349363105404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 n + A000217 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A229013.P15763005349363105404

namespace A229013

/-- `Δ[A000578(n)+A000217(n)²]` -/
def P15763005349363105404.Spec : Prop :=
  ∀ n, P15763005349363105404.a n = A229013 (n + 1)

end A229013

/-! ## A229013.P16998887304745292512

`(A090197(n)+1)%A024394(n+1)`
-/

namespace A229013.P16998887304745292512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A090197 n + 1) (A024394 (n + 1))

end

end A229013.P16998887304745292512

namespace A229013

/-- `(A090197(n)+1)%A024394(n+1)` -/
def P16998887304745292512.Spec : Prop :=
  ∀ n, P16998887304745292512.a n = A229013 (n + 1)

end A229013

/-! ## A229013.P10196631896159888520

`Δ[A000537(n)+n^3]`
-/

namespace A229013.P10196631896159888520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000537 n + (n ^ 3 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A229013.P10196631896159888520

namespace A229013

/-- `Δ[A000537(n)+n^3]` -/
def P10196631896159888520.Spec : Prop :=
  ∀ n, P10196631896159888520.a n = A229013 (n + 1)

end A229013

/-! ## A229013.P12265998045516027561

`Δ[A000578(n)+A000537(n)]`
-/

namespace A229013.P12265998045516027561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 n + A000537 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A229013.P12265998045516027561

namespace A229013

/-- `Δ[A000578(n)+A000537(n)]` -/
def P12265998045516027561.Spec : Prop :=
  ∀ n, P12265998045516027561.a n = A229013 (n + 1)

end A229013

/-! ## A229013.P4658904039440765472

`Δ[A188667(n+1)-n²]`
-/

namespace A229013.P4658904039440765472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188667 (n + 1) - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A229013.P4658904039440765472

namespace A229013

/-- `Δ[A188667(n+1)-n²]` -/
def P4658904039440765472.Spec : Prop :=
  ∀ n, P4658904039440765472.a n = A229013 (n + 1)

end A229013

/-! ## A229013.P16789173827121559081

`∑[A008486(2*n)+∑[A008486(2*n)]]`
-/

namespace A229013.P16789173827121559081
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (2 * n) + ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A229013.P16789173827121559081

namespace A229013

/-- `∑[A008486(2*n)+∑[A008486(2*n)]]` -/
def P16789173827121559081.Spec : Prop :=
  ∀ n, P16789173827121559081.a n = A229013 (n + 1)

end A229013

/-! ## A229013.P5676154970129285987

`Δ[A034828(2*n)+∑[A034828(2*n)]]`
-/

namespace A229013.P5676154970129285987
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034828 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034828 (2 * n) + ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A229013.P5676154970129285987

namespace A229013

/-- `Δ[A034828(2*n)+∑[A034828(2*n)]]` -/
def P5676154970129285987.Spec : Prop :=
  ∀ n, P5676154970129285987.a n = A229013 (n + 1)

end A229013

/-! ## A229013.P10531248153196079901

`∑[A004277(3*n)+A003215(n)]`
-/

namespace A229013.P10531248153196079901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (3 * n) + A003215 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A229013.P10531248153196079901

namespace A229013

/-- `∑[A004277(3*n)+A003215(n)]` -/
def P10531248153196079901.Spec : Prop :=
  ∀ n, P10531248153196079901.a n = A229013 (n + 1)

end A229013

/-! ## A229013.P5287234661250663185

`(A128789(n+1)-A128789(n))/A000079(n)`
-/

namespace A229013.P5287234661250663185
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A128789 (n + 1) - A128789 n : ℚ) / (A000079 n : ℚ)

end

end A229013.P5287234661250663185

namespace A229013

/-- `(A128789(n+1)-A128789(n))/A000079(n)` -/
def P5287234661250663185.Spec : Prop :=
  ∀ n, P5287234661250663185.a n = (A229013 (n + 1) : ℚ)

end A229013

/-! ## A229013.P12315571610387963672

`∑[A271114(∑[n]+n)]`
-/

namespace A229013.P12315571610387963672
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271114 (∑ j ∈ Finset.range (n + 1), f2 j + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A229013.P12315571610387963672

namespace A229013

/-- `∑[A271114(∑[n]+n)]` -/
def P12315571610387963672.Spec : Prop :=
  ∀ n, P12315571610387963672.a n = A229013 (n + 1)

end A229013

/-!
# A229014: Number of arrays of median of three adjacent elements of some length 6 0..n array, with no adjacent equal elements in the latter.

The programs for A229014, the canonical program `A229014.P9431559441285741673` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A229014 has offset 1).

The definition of A229014 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A229014.P9431559441285741673

`5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` with `a(0)=2, a(1)=31, a(2)=130, a(3)=359, a(4)=794`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A229014

/-- `5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` -/
def P9431559441285741673.Spec : Prop :=
  ∀ n, P9431559441285741673.a n = A229014 (n + 1)

theorem P9431559441285741673.correct : P9431559441285741673.Spec := by
  intro n
  simp only [A229014, Nat.add_sub_cancel]

end A229014

/-! ## A229014.P5114243330169978088

`A024215(n+1)+A213843(n+1)+n`
-/

namespace A229014.P5114243330169978088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024215 (n + 1) + (A213843 (n + 1) + (n : ℤ))

end

end A229014.P5114243330169978088

namespace A229014

/-- `A024215(n+1)+A213843(n+1)+n` -/
def P5114243330169978088.Spec : Prop :=
  ∀ n, P5114243330169978088.a n = A229014 (n + 1)

end A229014

/-! ## A229014.P17814361764911115149

`A059100(n)+4*(A000096(n)+n*A008778(n))`
-/

namespace A229014.P17814361764911115149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059100 n + 4 * (A000096 n + (n : ℤ) * A008778 n)

end

end A229014.P17814361764911115149

namespace A229014

/-- `A059100(n)+4*(A000096(n)+n*A008778(n))` -/
def P17814361764911115149.Spec : Prop :=
  ∀ n, P17814361764911115149.a n = A229014 (n + 1)

end A229014

/-! ## A229014.P6771874389503450978

`A100157(n+1)+A000096(n)+∑[A100157(n+1)]`
-/

namespace A229014.P6771874389503450978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100157 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100157 (n + 1) + (A000096 n + ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A229014.P6771874389503450978

namespace A229014

/-- `A100157(n+1)+A000096(n)+∑[A100157(n+1)]` -/
def P6771874389503450978.Spec : Prop :=
  ∀ n, P6771874389503450978.a n = A229014 (n + 1)

end A229014

/-! ## A229014.P16852968327837461168

`∑[A168547(n+2)]-A014634(n+1)`
-/

namespace A229014.P16852968327837461168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168547 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A014634 (n + 1)

end

end A229014.P16852968327837461168

namespace A229014

/-- `∑[A168547(n+2)]-A014634(n+1)` -/
def P16852968327837461168.Spec : Prop :=
  ∀ n, P16852968327837461168.a n = A229014 (n + 1)

end A229014

/-! ## A229014.P2873138789167527820

`A252870(2*(n+1))+A052905(n)`
-/

namespace A229014.P2873138789167527820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252870 (2 * (n + 1)) + A052905 n

end

end A229014.P2873138789167527820

namespace A229014

/-- `A252870(2*(n+1))+A052905(n)` -/
def P2873138789167527820.Spec : Prop :=
  ∀ n, P2873138789167527820.a n = A229014 (n + 1)

end A229014

/-! ## A229014.P9204869545041298712

`A332698(n)+A005582(2*n+1)`
-/

namespace A229014.P9204869545041298712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332698 n + A005582 (2 * n + 1)

end

end A229014.P9204869545041298712

namespace A229014

/-- `A332698(n)+A005582(2*n+1)` -/
def P9204869545041298712.Spec : Prop :=
  ∀ n, P9204869545041298712.a n = A229014 (n + 1)

end A229014

/-!
# A229015: Number of arrays of median of three adjacent elements of some length 7 0..n array, with no adjacent equal elements in the latter.

The programs for A229015, there is no canonical definition to state claims against.
-/

/-! ## A229015.P16916642852498458513

`A229012(A167499(n+3))`
-/

namespace A229015.P16916642852498458513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229012 (A167499 (n + 3)).toNat

end

end A229015.P16916642852498458513

/-! ## A229015.P5007325703496523943

`A229012(A000124(n+4)+4)`
-/

namespace A229015.P5007325703496523943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229012 (A000124 (n + 4) + 4).toNat

end

end A229015.P5007325703496523943

/-! ## A229015.P13364715785771533646

`A229012(A000217(n+4)+5)`
-/

namespace A229015.P13364715785771533646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229012 (A000217 (n + 4) + 5).toNat

end

end A229015.P13364715785771533646

/-! ## A229015.P2030336553662124087

`A229012(A055998(n+2)+8)`
-/

namespace A229015.P2030336553662124087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229012 (A055998 (n + 2) + 8).toNat

end

end A229015.P2030336553662124087

/-! ## A229015.P3393971344015405389

`A229012(A161680(n+5)+5)`
-/

namespace A229015.P3393971344015405389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229012 (A161680 (n + 5) + 5).toNat

end

end A229015.P3393971344015405389

/-!
# A229016: Number of arrays of median of three adjacent elements of some length 8 0..n array, with no adjacent equal elements in the latter.

The programs for A229016, there is no canonical definition to state claims against.
-/

/-! ## A229016.P15122850493779468486

`A229012(A166136(n+4))`
-/

namespace A229016.P15122850493779468486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229012 (A166136 (n + 4)).toNat

end

end A229016.P15122850493779468486

/-! ## A229016.P5852057468989934367

`A229012(A000124(n+5)+5)`
-/

namespace A229016.P5852057468989934367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229012 (A000124 (n + 5) + 5).toNat

end

end A229016.P5852057468989934367

/-! ## A229016.P8714273732953800462

`A229012(A000096(n+4)+7)`
-/

namespace A229016.P8714273732953800462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229012 (A000096 (n + 4) + 7).toNat

end

end A229016.P8714273732953800462

/-! ## A229016.P17708248624995148694

`A229012(A000217(n+5)+6)`
-/

namespace A229016.P17708248624995148694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229012 (A000217 (n + 5) + 6).toNat

end

end A229016.P17708248624995148694

/-! ## A229016.P10873168943351836230

`A229012(A161680(n+6)+6)`
-/

namespace A229016.P10873168943351836230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229012 (A161680 (n + 6) + 6).toNat

end

end A229016.P10873168943351836230

/-!
# A229017: Number of arrays of median of three adjacent elements of some length 9 0..n array, with no adjacent equal elements in the latter.

The programs for A229017, there is no canonical definition to state claims against.
-/

/-! ## A229017.P11493837863421691677

`A229012(A166136(n+5)+1)`
-/

namespace A229017.P11493837863421691677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229012 (A166136 (n + 5) + 1).toNat

end

end A229017.P11493837863421691677

/-! ## A229017.P15035325470588344922

`A229012(A000096(n+5)+8)`
-/

namespace A229017.P15035325470588344922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229012 (A000096 (n + 5) + 8).toNat

end

end A229017.P15035325470588344922

/-! ## A229017.P3643415903523405787

`A229012(A000217(n+6)+7)`
-/

namespace A229017.P3643415903523405787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229012 (A000217 (n + 6) + 7).toNat

end

end A229017.P3643415903523405787

/-! ## A229017.P5858513253938116312

`A229012(A161680(n+7)+7)`
-/

namespace A229017.P5858513253938116312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229012 (A161680 (n + 7) + 7).toNat

end

end A229017.P5858513253938116312

/-! ## A229017.P18406318477649226627

`A229012(A056000(n+2)+17)`
-/

namespace A229017.P18406318477649226627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229012 (A056000 (n + 2) + 17).toNat

end

end A229017.P18406318477649226627

/-!
# A229019: Minimal position at which the sequence defined in the same way as A159559 but with initial term prime(n) merges with A159559; a(n)=0 if there is no such position.

The programs for A229019, there is no canonical definition to state claims against.
-/

/-! ## A229019.P11240834705000351796

`A276676(A124253(n+2))`
-/

namespace A229019.P11240834705000351796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276676 (A124253 (n + 2)).toNat

end

end A229019.P11240834705000351796

/-! ## A229019.P10125481512462561032

`A006530(record[A276651(n+2)*A276676(n+2)])`
-/

namespace A229019.P10125481512462561032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276651 (n + 2) * A276676 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A229019.P10125481512462561032

/-! ## A229019.P3233091022061600460

`A276676(A211024(n)+2)`
-/

namespace A229019.P3233091022061600460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276676 (A211024 n + 2).toNat

end

end A229019.P3233091022061600460

/-! ## A229019.P14666372650348185374

`A276676(A272866(n)+A008578(n+1))`
-/

namespace A229019.P14666372650348185374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276676 (A272866 n + A008578 (n + 1)).toNat

end

end A229019.P14666372650348185374

/-! ## A229019.P11100977671823672593

`A276676(A005185(n+1)*A270652(n+1))`
-/

namespace A229019.P11100977671823672593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276676 (A005185 (n + 1) * A270652 (n + 1)).toNat

end

end A229019.P11100977671823672593

/-!
# A229021: Record values in A226657.

The programs for A229021, there is no canonical definition to state claims against.
-/

/-! ## A229021.P4479576198088346315

`record[A226657(n+1)]`
-/

namespace A229021.P4479576198088346315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226657 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A229021.P4479576198088346315

/-! ## A229021.P2885685572644910715

`A226657(A229028(n+1))`
-/

namespace A229021.P2885685572644910715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226657 (A229028 (n + 1)).toNat

end

end A229021.P2885685572644910715

/-! ## A229021.P13681657011782897123

`record[A226657(A008619(n))]-char[18]`
-/

namespace A229021.P13681657011782897123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226657 (A008619 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  18

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

end

end A229021.P13681657011782897123

/-! ## A229021.P2404817019259919645

`record[A226657(A008619(n))-A000035(n)]`
-/

namespace A229021.P2404817019259919645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226657 (A008619 n).toNat - A000035 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A229021.P2404817019259919645

/-! ## A229021.P170411582149708688

`record[A226657(A008619(n))%(A016970(n)^3)]`
-/

namespace A229021.P170411582149708688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A226657 (A008619 n).toNat) (A016970 n ^ 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A229021.P170411582149708688

/-!
# A229022: a(n) = sopf(n) + n/rad(n).

The programs for A229022, the canonical program `A229022.P3469744477585422242` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A229022 has offset 1).

The definition of A229022 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A229022.P11129396897009902944

`∑{p}[n+1, #]+(n+1)/∏{p}[n+1, #]`
-/

namespace A229022.P11129396897009902944
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) + (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ)

end

end A229022.P11129396897009902944

namespace A229022

/-- `∑{p}[n+1, #]+(n+1)/∏{p}[n+1, #]` -/
def P11129396897009902944.Spec : Prop :=
  ∀ n, P11129396897009902944.a n = (A229022 (n + 1) : ℚ)

end A229022

/-! ## A229022.P13837500573243874338

`A003557(n+1)+∑{p}[n+1, #]`
-/

namespace A229022.P13837500573243874338
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (n + 1) + ((∑ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℤ)

end

end A229022.P13837500573243874338

namespace A229022

/-- `A003557(n+1)+∑{p}[n+1, #]` -/
def P13837500573243874338.Spec : Prop :=
  ∀ n, P13837500573243874338.a n = A229022 (n + 1)

end A229022

/-! ## A229022.P18352583453941788642

`A008475(∏{p}[n+1, #])+(n+1)/∏{p}[n+1, #]`
-/

namespace A229022.P18352583453941788642
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008475 (∏ p ∈ Nat.primeFactors (f1 n), p) : ℚ) + (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ)

end

end A229022.P18352583453941788642

namespace A229022

/-- `A008475(∏{p}[n+1, #])+(n+1)/∏{p}[n+1, #]` -/
def P18352583453941788642.Spec : Prop :=
  ∀ n, P18352583453941788642.a n = (A229022 (n + 1) : ℚ)

end A229022

/-! ## A229022.P12114559868558673573

`A008472(n+1)+A003557(n+1)`
-/

namespace A229022.P12114559868558673573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (n + 1) + A003557 (n + 1)

end

end A229022.P12114559868558673573

namespace A229022

/-- `A008472(n+1)+A003557(n+1)` -/
def P12114559868558673573.Spec : Prop :=
  ∀ n, P12114559868558673573.a n = A229022 (n + 1)

end A229022

/-! ## A229022.P7659115617280836774

`A336551(n+1)+A074372(n+1)`
-/

namespace A229022.P7659115617280836774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336551 (n + 1) + A074372 (n + 1)

end

end A229022.P7659115617280836774

namespace A229022

/-- `A336551(n+1)+A074372(n+1)` -/
def P7659115617280836774.Spec : Prop :=
  ∀ n, P7659115617280836774.a n = A229022 (n + 1)

end A229022

/-! ## A229022.P3469744477585422242

`A075653(n+1)-A010848(n+1)`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A229022

/-- `A075653(n+1)-A010848(n+1)` -/
def P3469744477585422242.Spec : Prop :=
  ∀ n, P3469744477585422242.a n = A229022 (n + 1)

theorem P3469744477585422242.correct : P3469744477585422242.Spec := by
  intro n
  simp only [A229022, Nat.add_sub_cancel]

end A229022

/-! ## A229022.P10307486512135903147

`A003557(n+1)+A001414(A007947(n+1))`
-/

namespace A229022.P10307486512135903147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (n + 1) + A001414 (A007947 (n + 1)).toNat

end

end A229022.P10307486512135903147

namespace A229022

/-- `A003557(n+1)+A001414(A007947(n+1))` -/
def P10307486512135903147.Spec : Prop :=
  ∀ n, P10307486512135903147.a n = A229022 (n + 1)

end A229022

/-! ## A229022.P7632489077130355441

`A001414(n+1)+A003557(n+1)-A280292(n+1)`
-/

namespace A229022.P7632489077130355441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (n + 1) + (A003557 (n + 1) - A280292 (n + 1))

end

end A229022.P7632489077130355441

namespace A229022

/-- `A001414(n+1)+A003557(n+1)-A280292(n+1)` -/
def P7632489077130355441.Spec : Prop :=
  ∀ n, P7632489077130355441.a n = A229022 (n + 1)

end A229022

/-! ## A229022.P8909556771123224527

`A008472(n+1)+A000010(n+1)/A173557(n+1)`
-/

namespace A229022.P8909556771123224527
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008472 (n + 1) : ℚ) + (A000010 (n + 1) : ℚ) / (A173557 (n + 1) : ℚ)

end

end A229022.P8909556771123224527

namespace A229022

/-- `A008472(n+1)+A000010(n+1)/A173557(n+1)` -/
def P8909556771123224527.Spec : Prop :=
  ∀ n, P8909556771123224527.a n = (A229022 (n + 1) : ℚ)

end A229022

/-! ## A229022.P5126359964483070443

`A008472(n+1)+A001615(n+1)/A001615(A007947(n+1))`
-/

namespace A229022.P5126359964483070443
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008472 (n + 1) : ℚ) + (A001615 (n + 1) : ℚ) / (A001615 (A007947 (n + 1)).toNat : ℚ)

end

end A229022.P5126359964483070443

namespace A229022

/-- `A008472(n+1)+A001615(n+1)/A001615(A007947(n+1))` -/
def P5126359964483070443.Spec : Prop :=
  ∀ n, P5126359964483070443.a n = (A229022 (n + 1) : ℚ)

end A229022

/-! ## A229022.P18245704859571206987

`A003557(n+1)+A008475(A007947(n+1))%A075254(n+1)`
-/

namespace A229022.P18245704859571206987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (n + 1) + Int.tmod (A008475 (A007947 (n + 1)).toNat) (A075254 (n + 1))

end

end A229022.P18245704859571206987

namespace A229022

/-- `A003557(n+1)+A008475(A007947(n+1))%A075254(n+1)` -/
def P18245704859571206987.Spec : Prop :=
  ∀ n, P18245704859571206987.a n = A229022 (n + 1)

end A229022

/-! ## A229022.P4803959452321530761

`A280292(A007947(n+1)²)+A003557(n+1)`
-/

namespace A229022.P4803959452321530761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280292 (A007947 (n + 1) ^ 2).toNat + A003557 (n + 1)

end

end A229022.P4803959452321530761

namespace A229022

/-- `A280292(A007947(n+1)²)+A003557(n+1)` -/
def P4803959452321530761.Spec : Prop :=
  ∀ n, P4803959452321530761.a n = A229022 (n + 1)

end A229022

/-!
# A229025: Expansion of 1/((1-2x)(1-4x)(1-5x)(1-7x)(1-8x)).

The programs for A229025, the canonical program `A229025.P15258114464244423388` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A229025 has offset 0).

The definition of A229025 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 109 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A229025.P15258114464244423388

`A028115(n)+2*a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A229025

/-- `A028115(n)+2*a(n-1)` -/
def P15258114464244423388.Spec : Prop :=
  ∀ n, P15258114464244423388.a n = A229025 n

theorem P15258114464244423388.correct : P15258114464244423388.Spec := by
  intro n
  simp only [A229025]

end A229025

/-! ## A229025.P13958550232757466842

`A025959(n)+8*a(n-1)` with `a(0)=1`
-/

namespace A229025.P13958550232757466842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A025959 n + 8 * a (n - 1)

end

end A229025.P13958550232757466842

namespace A229025

/-- `A025959(n)+8*a(n-1)` -/
def P13958550232757466842.Spec : Prop :=
  ∀ n, P13958550232757466842.a n = A229025 n

end A229025

/-! ## A229025.P9019620156231325912

`2*A025992(n)-A025959(n)`
-/

namespace A229025.P9019620156231325912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A025992 n - A025959 n

end

end A229025.P9019620156231325912

namespace A229025

/-- `2*A025992(n)-A025959(n)` -/
def P9019620156231325912.Spec : Prop :=
  ∀ n, P9019620156231325912.a n = A229025 n

end A229025

/-! ## A229025.P4157724077925088674

`A025960(n+1)-A025959(n+1)`
-/

namespace A229025.P4157724077925088674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025960 (n + 1) - A025959 (n + 1)

end

end A229025.P4157724077925088674

namespace A229025

/-- `A025960(n+1)-A025959(n+1)` -/
def P4157724077925088674.Spec : Prop :=
  ∀ n, P4157724077925088674.a n = A229025 n

end A229025

/-! ## A229025.P6559104326335163397

`A025992(n+1)-A025971(n+1)`
-/

namespace A229025.P6559104326335163397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025992 (n + 1) - A025971 (n + 1)

end

end A229025.P6559104326335163397

namespace A229025

/-- `A025992(n+1)-A025971(n+1)` -/
def P6559104326335163397.Spec : Prop :=
  ∀ n, P6559104326335163397.a n = A229025 n

end A229025

/-!
# A229026: Expansion of 1/((1-x)*((1-5*x)^2)*(1-8*x)).

The programs for A229026, the canonical program `A229026.P10794618305353110900` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A229026 has offset 0).

The definition of A229026 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 110 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A229026.P10794618305353110900

`∑[8*a(n-1)+(n+1)*5^n]` with `a(0)=1`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A229026

/-- `∑[8*a(n-1)+(n+1)*5^n]` -/
def P10794618305353110900.Spec : Prop :=
  ∀ n, (P10794618305353110900.a n : ℤ) = A229026 n

theorem P10794618305353110900.correct : P10794618305353110900.Spec := by
  intro n
  simp only [A229026]

end A229026

/-! ## A229026.P14808003609736997683

`A016233(n)+5*a(n-1)` with `a(0)=1`
-/

namespace A229026.P14808003609736997683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A016233 n + 5 * a (n - 1)

end

end A229026.P14808003609736997683

namespace A229026

/-- `A016233(n)+5*a(n-1)` -/
def P14808003609736997683.Spec : Prop :=
  ∀ n, P14808003609736997683.a n = A229026 n

end A229026

/-! ## A229026.P2476084397287814255

`∑[A016162(n)+5*a(n-1)]` with `a(0)=1`
-/

namespace A229026.P2476084397287814255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A016162 n + 5 * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A229026.P2476084397287814255

namespace A229026

/-- `∑[A016162(n)+5*a(n-1)]` -/
def P2476084397287814255.Spec : Prop :=
  ∀ n, P2476084397287814255.a n = A229026 n

end A229026

/-!
# A229027: Numbers k such that k/rad(k) equals the greatest prime dividing k.

The programs for A229027, there is no canonical definition to state claims against.
-/

/-! ## A229027.P13072893204581151482

`∪[A001248(n+1), A390096(n+1)]`
-/

namespace A229027.P13072893204581151482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001248 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390096 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A229027.P13072893204581151482

/-! ## A229027.P11571786267023108206

`filter[A070003(n+1), A359471(#)]`
-/

namespace A229027.P11571786267023108206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070003 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359471 (f1 j).toNat = 1) n)

end

end A229027.P11571786267023108206

/-! ## A229027.P16869253503730310104

`filter[A070003(n+1), A359474(#)]`
-/

namespace A229027.P16869253503730310104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070003 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359474 (f1 j).toNat = 1) n)

end

end A229027.P16869253503730310104

/-! ## A229027.P3825815418483393616

`filter[A195212(n+1), A359471(#)]`
-/

namespace A229027.P3825815418483393616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195212 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359471 (f1 j).toNat = 1) n)

end

end A229027.P3825815418483393616

/-! ## A229027.P13266944858754108540

`filter[A195212(n+1), A359474(#)]`
-/

namespace A229027.P13266944858754108540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195212 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359474 (f1 j).toNat = 1) n)

end

end A229027.P13266944858754108540

/-! ## A229027.P9662282754256412511

`filter[A354869(n+1), A359474(#)]`
-/

namespace A229027.P9662282754256412511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354869 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359474 (f1 j).toNat = 1) n)

end

end A229027.P9662282754256412511

/-! ## A229027.P2233779738703947153

`filter[A368780(n+1), A359466(#)]`
-/

namespace A229027.P2233779738703947153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368780 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359466 (f1 j).toNat = 1) n)

end

end A229027.P2233779738703947153

/-! ## A229027.P10343392117676922164

`filter[A368780(n+1), A359471(#)]`
-/

namespace A229027.P10343392117676922164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368780 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359471 (f1 j).toNat = 1) n)

end

end A229027.P10343392117676922164

/-! ## A229027.P9138260971852789673

`filter[A368780(n+1), A359474(#)]`
-/

namespace A229027.P9138260971852789673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368780 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359474 (f1 j).toNat = 1) n)

end

end A229027.P9138260971852789673

/-! ## A229027.P1406068697715869953

`filter[A354869(n+2), A359471(#)]`
-/

namespace A229027.P1406068697715869953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354869 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359471 (f1 j).toNat = 1) n)

end

end A229027.P1406068697715869953

/-! ## A229027.P5428779705061110878

`record[A007947(n+4)*A057108(n+4)]`
-/

namespace A229027.P5428779705061110878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 4) * A057108 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A229027.P5428779705061110878

/-! ## A229027.P7504674719943969893

`filter[A060687(n+1), A319988(#)]`
-/

namespace A229027.P7504674719943969893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060687 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A319988 (f1 j).toNat = 1) n)

end

end A229027.P7504674719943969893

/-! ## A229027.P15675240683181034535

`filter[A060687(n+1), A354868(#)]`
-/

namespace A229027.P15675240683181034535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060687 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354868 (f1 j).toNat = 1) n)

end

end A229027.P15675240683181034535

/-! ## A229027.P504068136367747561

`∩[A060687(n+1), A070003(n+1)]`
-/

namespace A229027.P504068136367747561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060687 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070003 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A229027.P504068136367747561

/-! ## A229027.P15340270372805769059

`∩[A060687(n+1), A195212(n+1)]`
-/

namespace A229027.P15340270372805769059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060687 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195212 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A229027.P15340270372805769059

/-! ## A229027.P6872439416258972543

`∩[A060687(n+1), A368780(n+1)]`
-/

namespace A229027.P6872439416258972543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060687 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368780 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A229027.P6872439416258972543

/-! ## A229027.P7967749430367174279

`∩[A368780(n+1), A386796(n+1)]`
-/

namespace A229027.P7967749430367174279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368780 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386796 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A229027.P7967749430367174279

/-! ## A229027.P5917895819580874013

`∩[A368780(n+1), A377562(n+1)]`
-/

namespace A229027.P5917895819580874013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368780 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377562 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A229027.P5917895819580874013

/-! ## A229027.P15100370837209016456

`∩[A368780(n+1), A381311(n+1)]`
-/

namespace A229027.P15100370837209016456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368780 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381311 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A229027.P15100370837209016456

/-! ## A229027.P5782927178631950126

`∩[A060687(n+1), A354869(n+1)]`
-/

namespace A229027.P5782927178631950126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060687 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354869 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A229027.P5782927178631950126

/-!
# A229030: Smallest of the first six consecutive primes that comprise three sets of primes with difference 2*n.

The programs for A229030, there is no canonical definition to state claims against.
-/

/-! ## A229030.P11714964274042190457

`A229033(comp[a(and(n, n-1))+1])` with `a(0)=7, a(1)=0`
-/

namespace A229030.P11714964274042190457
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [7, 0] fun n f1 =>
  f1 (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat + 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229033 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A229030.P11714964274042190457

/-! ## A229030.P16905738271097886419

`A000027(A229033(n+1))`
-/

namespace A229030.P16905738271097886419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A229033 (n + 1)).toNat

end

end A229030.P16905738271097886419

/-!
# A229032: Triangle T(n,k), 0 <= k <= n, read by rows, defined by T(n,k) = 4^k * C(n+1,2*k+1).

The programs for A229032, the canonical program `A229032.P11564253743554821141` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A229032 has offset 0).

The definition of A229032 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A229032.P15401254986740752325

`(2^(n-C(∑[char[∑[n]]], 2)))²*C(∑[char[∑[n]]], 2*(n-C(∑[char[∑[n]]], 2))+1)`
-/

namespace A229032.P15401254986740752325
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f6 j

open Classical in
def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f5 j = n then 1 else 0

def f9 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f8 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f9 j

open Classical in
def f7 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f8 j = n then 1 else 0

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 : ℚ) ^ ((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ) : ℤ)) ^ 2 * (Nat.choose (∑ j ∈ Finset.range (n + 1), f4 j) (2 * ((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f7 j) 2 : ℤ)) + 1).toNat : ℚ)

end

end A229032.P15401254986740752325

namespace A229032

/-- `(2^(n-C(∑[char[∑[n]]], 2)))²*C(∑[char[∑[n]]], 2*(n-C(∑[char[∑[n]]], 2))+1)` -/
def P15401254986740752325.Spec : Prop :=
  ∀ n, P15401254986740752325.a n = (A229032 n : ℚ)

end A229032

/-! ## A229032.P11417343786269660780

`(2^(n-C(∑[char[∑[n]]], 2)))²*A202064(n)`
-/

namespace A229032.P11417343786269660780
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 : ℚ) ^ ((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ) : ℤ)) ^ 2 * (A202064 n : ℚ)

end

end A229032.P11417343786269660780

namespace A229032

/-- `(2^(n-C(∑[char[∑[n]]], 2)))²*A202064(n)` -/
def P11417343786269660780.Spec : Prop :=
  ∀ n, P11417343786269660780.a n = (A229032 n : ℚ)

end A229032

/-! ## A229032.P16719007548966872773

`A152716(n)*A202064(n)`
-/

namespace A229032.P16719007548966872773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152716 n * A202064 n

end

end A229032.P16719007548966872773

namespace A229032

/-- `A152716(n)*A202064(n)` -/
def P16719007548966872773.Spec : Prop :=
  ∀ n, P16719007548966872773.a n = A229032 n

end A229032

/-! ## A229032.P11564253743554821141

`A059268(n)²*A202064(n)`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A229032

/-- `A059268(n)²*A202064(n)` -/
def P11564253743554821141.Spec : Prop :=
  ∀ n, P11564253743554821141.a n = A229032 n

theorem P11564253743554821141.correct : P11564253743554821141.Spec := by
  intro n
  simp only [A229032]

end A229032

/-! ## A229032.P1304752327086123801

`A144464(n)²*A202064(n)`
-/

namespace A229032.P1304752327086123801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144464 n ^ 2 * A202064 n

end

end A229032.P1304752327086123801

namespace A229032

/-- `A144464(n)²*A202064(n)` -/
def P1304752327086123801.Spec : Prop :=
  ∀ n, P1304752327086123801.a n = A229032 n

end A229032

/-! ## A229032.P2901735362036934502

`A145111(n)²*A202064(n)`
-/

namespace A229032.P2901735362036934502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145111 n ^ 2 * A202064 n

end

end A229032.P2901735362036934502

namespace A229032

/-- `A145111(n)²*A202064(n)` -/
def P2901735362036934502.Spec : Prop :=
  ∀ n, P2901735362036934502.a n = A229032 n

end A229032

/-! ## A229032.P567517576878964220

`A216274(n)²*A202064(n)`
-/

namespace A229032.P567517576878964220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216274 n ^ 2 * A202064 n

end

end A229032.P567517576878964220

namespace A229032

/-- `A216274(n)²*A202064(n)` -/
def P567517576878964220.Spec : Prop :=
  ∀ n, P567517576878964220.a n = A229032 n

end A229032

/-! ## A229032.P7719610092247731797

`A000302(A002262(n))*A202064(n)`
-/

namespace A229032.P7719610092247731797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000302 (A002262 n).toNat * A202064 n

end

end A229032.P7719610092247731797

namespace A229032

/-- `A000302(A002262(n))*A202064(n)` -/
def P7719610092247731797.Spec : Prop :=
  ∀ n, P7719610092247731797.a n = A229032 n

end A229032

/-! ## A229032.P13533965584431785642

`A119900(A061579(n))*A152716(n)`
-/

namespace A229032.P13533965584431785642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119900 (A061579 n).toNat * A152716 n

end

end A229032.P13533965584431785642

namespace A229032

/-- `A119900(A061579(n))*A152716(n)` -/
def P13533965584431785642.Spec : Prop :=
  ∀ n, P13533965584431785642.a n = A229032 n

end A229032

/-! ## A229032.P11490452513373170578

`A233308(n)²*A202064(n)`
-/

namespace A229032.P11490452513373170578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233308 n ^ 2 * A202064 n

end

end A229032.P11490452513373170578

namespace A229032

/-- `A233308(n)²*A202064(n)` -/
def P11490452513373170578.Spec : Prop :=
  ∀ n, P11490452513373170578.a n = A229032 n

end A229032

/-!
# A229033: Record values in A229030.

The programs for A229033, there is no canonical definition to state claims against.
-/

/-! ## A229033.P1094975092136476651

`record[A229030(n+1)]`
-/

namespace A229033.P1094975092136476651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229030 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A229033.P1094975092136476651

/-! ## A229033.P12384121336216992363

`A229030(A229034(n+1))`
-/

namespace A229033.P12384121336216992363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229030 (A229034 (n + 1)).toNat

end

end A229033.P12384121336216992363

/-! ## A229033.P8057393926055399977

`record[or(1, A229030(A008620(n)))]`
-/

namespace A229033.P8057393926055399977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A229030 (A008620 n).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A229033.P8057393926055399977

/-! ## A229033.P7754546466129870500

`record[A229030(A008620(n))-A055672(n)]`
-/

namespace A229033.P7754546466129870500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229030 (A008620 n).toNat - A055672 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A229033.P7754546466129870500

/-! ## A229033.P11944576025794817900

`record[A033999(n)*A229030(A008620(n))]`
-/

namespace A229033.P11944576025794817900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A229030 (A008620 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A229033.P11944576025794817900

/-!
# A229035: Partial sums of A082233 (read sequentially meandering).

The programs for A229035, the canonical program `A229035.P11532377418008714060` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A229035 has offset 1).

The definition of A229035 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A229035.P11532377418008714060

`∑[A082233(n)]`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A229035

/-- `∑[A082233(n)]` -/
def P11532377418008714060.Spec : Prop :=
  ∀ n, P11532377418008714060.a n = A229035 (n + 1)

theorem P11532377418008714060.correct : P11532377418008714060.Spec := by
  intro n
  simp only [A229035, Nat.add_sub_cancel]

end A229035

/-! ## A229035.P14814665183798590858

`A082233(2*n-n)+a(n-1)` with `a(0)=1`
-/

namespace A229035.P14814665183798590858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A082233 (2 * n - n) + a (n - 1)

end

end A229035.P14814665183798590858

namespace A229035

/-- `A082233(2*n-n)+a(n-1)` -/
def P14814665183798590858.Spec : Prop :=
  ∀ n, P14814665183798590858.a n = A229035 (n + 1)

end A229035

/-! ## A229035.P5134124045361008096

`∑[A094727(A056023(n+1))]`
-/

namespace A229035.P5134124045361008096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094727 (A056023 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A229035.P5134124045361008096

namespace A229035

/-- `∑[A094727(A056023(n+1))]` -/
def P5134124045361008096.Spec : Prop :=
  ∀ n, P5134124045361008096.a n = A229035 (n + 1)

end A229035

/-! ## A229035.P13819362053052973970

`∑[A114751(A038722(n+1))]`
-/

namespace A229035.P13819362053052973970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114751 (A038722 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A229035.P13819362053052973970

namespace A229035

/-- `∑[A114751(A038722(n+1))]` -/
def P13819362053052973970.Spec : Prop :=
  ∀ n, P13819362053052973970.a n = A229035 (n + 1)

end A229035

/-! ## A229035.P14053433400798923158

`∑[A114751(A061579(n)+1)]`
-/

namespace A229035.P14053433400798923158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114751 (A061579 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A229035.P14053433400798923158

namespace A229035

/-- `∑[A114751(A061579(n)+1)]` -/
def P14053433400798923158.Spec : Prop :=
  ∀ n, P14053433400798923158.a n = A229035 (n + 1)

end A229035

/-! ## A229035.P6216155796161947275

`∑[A128076(A056011(n+1))]`
-/

namespace A229035.P6216155796161947275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128076 (A056011 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A229035.P6216155796161947275

namespace A229035

/-- `∑[A128076(A056011(n+1))]` -/
def P6216155796161947275.Spec : Prop :=
  ∀ n, P6216155796161947275.a n = A229035 (n + 1)

end A229035

/-! ## A229035.P3536478961703507466

`a(n-1)+A082233(n)%A000032(n+8)` with `a(0)=1`
-/

namespace A229035.P3536478961703507466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Int.tmod (A082233 n) (A000032 (n + 8))

end

end A229035.P3536478961703507466

namespace A229035

/-- `a(n-1)+A082233(n)%A000032(n+8)` -/
def P3536478961703507466.Spec : Prop :=
  ∀ n, P3536478961703507466.a n = A229035 (n + 1)

end A229035

/-! ## A229035.P1231362387357302694

`∑[round(sqrt(2*n+1))-(1-A092542(n+1))]`
-/

namespace A229035.P1231362387357302694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (2 * n + 1 : ℝ)) - (1 - A092542 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A229035.P1231362387357302694

namespace A229035

/-- `∑[round(sqrt(2*n+1))-(1-A092542(n+1))]` -/
def P1231362387357302694.Spec : Prop :=
  ∀ n, P1231362387357302694.a n = A229035 (n + 1)

end A229035

/-! ## A229035.P13254218732270408245

`∑[A319572(n)+∑[char[∑[n]]]]`
-/

namespace A229035.P13254218732270408245
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319572 n + ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A229035.P13254218732270408245

namespace A229035

/-- `∑[A319572(n)+∑[char[∑[n]]]]` -/
def P13254218732270408245.Spec : Prop :=
  ∀ n, P13254218732270408245.a n = A229035 (n + 1)

end A229035

/-! ## A229035.P17214681292377014803

`∑[∑[2*char[∑[n]]]-1-A319573(n)]`
-/

namespace A229035.P17214681292377014803
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (if ∃ j, f3 j = n then 1 else 0)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - 1 - A319573 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A229035.P17214681292377014803

namespace A229035

/-- `∑[∑[2*char[∑[n]]]-1-A319573(n)]` -/
def P17214681292377014803.Spec : Prop :=
  ∀ n, P17214681292377014803.a n = A229035 (n + 1)

end A229035

/-!
# A229036: G.f.: Sum_{n>=0} (3*n-1)^n * x^n / (1 + (3*n-1)*x)^n.

The programs for A229036, there is no canonical definition to state claims against.
-/

/-! ## A229036.P936289054509319787

`A225472(eq[1, A154921(n+1)])`
-/

namespace A229036.P936289054509319787
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154921 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225472 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A229036.P936289054509319787

/-! ## A229036.P1080010257123270592

`A225472(lt[A225476(n+2), 2])`
-/

namespace A229036.P1080010257123270592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225476 (n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225472 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A229036.P1080010257123270592

/-! ## A229036.P8599508694569975079

`record[gcd(A002262(n+2), A225472(n))]`
-/

namespace A229036.P8599508694569975079
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 (n + 2)) (A225472 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A229036.P8599508694569975079

/-! ## A229036.P12148556913484831812

`A225472(A057428(n)+A000096(n))`
-/

namespace A229036.P12148556913484831812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225472 (A057428 n + A000096 n).toNat

end

end A229036.P12148556913484831812

/-! ## A229036.P4854307337001523086

`A225472(A000096(n)-A057427(n))`
-/

namespace A229036.P4854307337001523086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225472 (A000096 n - A057427 n).toNat

end

end A229036.P4854307337001523086

/-! ## A229036.P13171363521839430993

`A225472(A000096(n)-A178334(n))`
-/

namespace A229036.P13171363521839430993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225472 (A000096 n - A178334 n).toNat

end

end A229036.P13171363521839430993

/-! ## A229036.P4961519653622026363

`A225472(A000096(n)-A178489(n))`
-/

namespace A229036.P4961519653622026363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225472 (A000096 n - A178489 n).toNat

end

end A229036.P4961519653622026363

/-! ## A229036.P971309673612405150

`A225472(A000096(n)-A057428(n)²)`
-/

namespace A229036.P971309673612405150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225472 (A000096 n - A057428 n ^ 2).toNat

end

end A229036.P971309673612405150

/-!
# A229037: The "forest fire": sequence of positive integers where each is chosen to be as small as possible subject to the condition that no three terms a(j), a(j+k), a(j+2k) (for any j and k) form an arithmetic progression.

The programs for A229037, there is no canonical definition to state claims against.
-/

/-! ## A229037.P5761556041169414520

`A248625(n)+1`
-/

namespace A229037.P5761556041169414520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248625 n + 1

end

end A229037.P5761556041169414520

/-! ## A229037.P16237700813925210646

`A348553(A248625(n))`
-/

namespace A229037.P16237700813925210646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348553 (A248625 n).toNat

end

end A229037.P16237700813925210646

/-! ## A229037.P3153841081183102180

`A260056(A248625(n)²)`
-/

namespace A229037.P3153841081183102180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260056 (A248625 n ^ 2).toNat

end

end A229037.P3153841081183102180

/-! ## A229037.P2377009583827873130

`A008619(2*A248625(n))`
-/

namespace A229037.P2377009583827873130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (2 * A248625 n).toNat

end

end A229037.P2377009583827873130

/-! ## A229037.P14602555650345549880

`A028242(2*A248625(n))`
-/

namespace A229037.P14602555650345549880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (2 * A248625 n).toNat

end

end A229037.P14602555650345549880

/-! ## A229037.P6268764540574697913

`A052938(2*A248625(n))`
-/

namespace A229037.P6268764540574697913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052938 (2 * A248625 n).toNat

end

end A229037.P6268764540574697913

/-! ## A229037.P16684527504972948381

`A008611(3*A248625(n))`
-/

namespace A229037.P16684527504972948381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (3 * A248625 n).toNat

end

end A229037.P16684527504972948381

/-! ## A229037.P4984725396315832514

`A008620(3*A248625(n))`
-/

namespace A229037.P4984725396315832514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (3 * A248625 n).toNat

end

end A229037.P4984725396315832514

/-! ## A229037.P17933481671255980614

`A008621(4*A248625(n))`
-/

namespace A229037.P17933481671255980614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (4 * A248625 n).toNat

end

end A229037.P17933481671255980614

/-! ## A229037.P15078519975170459852

`A008612(6*A248625(n))`
-/

namespace A229037.P15078519975170459852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008612 (6 * A248625 n).toNat

end

end A229037.P15078519975170459852

/-!
# A229038: Number of undirected circular permutations (i_1, ..., i_n) of 1, ..., n such that all the n sums i_1^2+i_2^2, ..., i_{n-1}^2+i_n^2, i_n^2+i_1^2 are among those integers m with the Jacobi symbol (m/(2*n+1)) equal to 1.

The programs for A229038, there is no canonical definition to state claims against.
-/

/-! ## A229038.P15929199472477014942

`floor(A242114(A215723(n+1)+1)/2)`
-/

namespace A229038.P15929199472477014942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A242114 (A215723 (n + 1) + 1).toNat : ℚ) / 2⌋

end

end A229038.P15929199472477014942

/-! ## A229038.P5308280335014627249

`A229310(A091206(n+1))%A144493(n+4)`
-/

namespace A229038.P5308280335014627249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A229310 (A091206 (n + 1)).toNat) (A144493 (n + 4))

end

end A229038.P5308280335014627249

/-! ## A229038.P11829914834567611911

`and(A014963(A007187(n+2)), A069099(n+1))`
-/

namespace A229038.P11829914834567611911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A014963 (A007187 (n + 2)).toNat) (A069099 (n + 1))

end

end A229038.P11829914834567611911

/-! ## A229038.P10033112748711435928

`A257751(n+1)%A237591(A014217(2*(n+1)))`
-/

namespace A229038.P10033112748711435928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A257751 (n + 1)) (A237591 (A014217 (2 * (n + 1))).toNat)

end

end A229038.P10033112748711435928

/-!
# A229039: G.f.: Sum_{n>=0} (n+2)^n * x^n / (1 + (n+2)*x)^n.

The programs for A229039, there is no canonical definition to state claims against.
-/

/-! ## A229039.P1293116597287136063

`(n/(n+4)+n)*a(n-1)` with `a(0)=1, a(1)=3`
-/

namespace A229039.P1293116597287136063
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 3] fun n a =>
  ((n : ℚ) / (n + 4 : ℚ) + (n : ℚ)) * a (n - 1)

end

end A229039.P1293116597287136063

/-! ## A229039.P13118600159152168499

`A052849(n)+A001710(n+1)`
-/

namespace A229039.P13118600159152168499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052849 n + A001710 (n + 1)

end

end A229039.P13118600159152168499

/-! ## A229039.P5046889398111323942

`A000142(abs(1-n))*A027379(n)`
-/

namespace A229039.P5046889398111323942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 |1 - (n : ℤ)|.toNat * A027379 n

end

end A229039.P5046889398111323942

/-! ## A229039.P8923265628020230591

`A052849(n)+A008279(A027379(n))`
-/

namespace A229039.P8923265628020230591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052849 n + A008279 (A027379 n).toNat

end

end A229039.P8923265628020230591

/-! ## A229039.P15242919485683017825

`A027379(n)*A081123(A004273(n))`
-/

namespace A229039.P15242919485683017825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027379 n * A081123 (A004273 n).toNat

end

end A229039.P15242919485683017825

/-! ## A229039.P9643149657893076636

`A027379(n)*A098361(A000124(n))`
-/

namespace A229039.P9643149657893076636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027379 n * A098361 (A000124 n).toNat

end

end A229039.P9643149657893076636

/-! ## A229039.P15783745131924287914

`(A134227(n+1)-n)*A098361(A000124(n))`
-/

namespace A229039.P15783745131924287914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A134227 (n + 1) - (n : ℤ)) * A098361 (A000124 n).toNat

end

end A229039.P15783745131924287914

/-! ## A229039.P5029114845194808839

`A027379(n)*A308497(A027379(n)-n)`
-/

namespace A229039.P5029114845194808839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027379 n * A308497 (A027379 n - (n : ℤ)).toNat

end

end A229039.P5029114845194808839

/-!
# A229040: Fibonacci numbers in which parity of the decimal digits alternates.

The programs for A229040, there is no canonical definition to state claims against.
-/

/-! ## A229040.P10730415068884556968

`eq[n, A035514(A228722(n))]`
-/

namespace A229040.P10730415068884556968
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035514 (A228722 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A229040.P10730415068884556968

/-! ## A229040.P10431224507025741890

`eq[n, A035514(A228723(n))]`
-/

namespace A229040.P10431224507025741890
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035514 (A228723 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A229040.P10431224507025741890

/-! ## A229040.P14703667328898584401

`eq[A035515(n), A228722(n)]`
-/

namespace A229040.P14703667328898584401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035515 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228722 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A229040.P14703667328898584401

/-! ## A229040.P11735439429420277577

`eq[A035515(n), A228723(n)]`
-/

namespace A229040.P11735439429420277577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035515 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228723 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A229040.P11735439429420277577

/-! ## A229040.P10080716019924678436

`eq[A228723(n), A273156(n)]`
-/

namespace A229040.P10080716019924678436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228723 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273156 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A229040.P10080716019924678436

/-!
# A229042: Series reversion of (sqrt(1+4*x) - 1)/2 - x^2.

The programs for A229042, there is no canonical definition to state claims against.
-/

/-! ## A229042.P3943900929691510992

`∑[A054846(A339843(n)²)]`
-/

namespace A229042.P3943900929691510992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054846 (A339843 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A229042.P3943900929691510992

/-! ## A229042.P3486912857945196918

`A220658(∑[∑[A183160(n)]])`
-/

namespace A229042.P3486912857945196918
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183160 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220658 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A229042.P3486912857945196918

/-!
# A229043: Series reversion of (sqrt(1+4*x) - 1)/2 - x^3.

The programs for A229043, there is no canonical definition to state claims against.
-/

/-! ## A229043.P1706682944579561820

`A247833(A190865(n+1))`
-/

namespace A229043.P1706682944579561820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247833 (A190865 (n + 1)).toNat

end

end A229043.P1706682944579561820

/-! ## A229043.P12274201116491476407

`A247833(A275427(n+1))`
-/

namespace A229043.P12274201116491476407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247833 (A275427 (n + 1)).toNat

end

end A229043.P12274201116491476407

/-! ## A229043.P14041647318962023794

`A358062(A176148(n))`
-/

namespace A229043.P14041647318962023794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358062 (A176148 n).toNat

end

end A229043.P14041647318962023794

/-!
# A229045: O.g.f.: Sum_{n>=0} x^n * Product_{k=1..n} (n*k + x) / (1 + n*k*x).

The programs for A229045, there is no canonical definition to state claims against.
-/

/-! ## A229045.P7118195544687172022

`A113415(∏[A009865(n)])`
-/

namespace A229045.P7118195544687172022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113415 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A229045.P7118195544687172022

/-!
# A229046: G.f.: Sum_{n>=0} n! * x^n * (1+x)^n / Product_{k=1..n} (1 + k*x).

The programs for A229046, there is no canonical definition to state claims against.
-/

/-! ## A229046.P6690785758039874880

`A105795(n+1)+A105795(n)`
-/

namespace A229046.P6690785758039874880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105795 (n + 1) + A105795 n

end

end A229046.P6690785758039874880

/-! ## A229046.P1176176879289024637

`A327802(A000142(n))+A000085(n)`
-/

namespace A229046.P1176176879289024637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327802 (A000142 n).toNat + A000085 n

end

end A229046.P1176176879289024637

/-! ## A229046.P6052158432354560351

`A024417(A186021(n)-A181120(n))`
-/

namespace A229046.P6052158432354560351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024417 (A186021 n - A181120 n).toNat

end

end A229046.P6052158432354560351

/-! ## A229046.P14039137140889063686

`A294107(A307398(n)+A000720(3*n+4))`
-/

namespace A229046.P14039137140889063686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294107 (A307398 n + A000720 (3 * n + 4)).toNat

end

end A229046.P14039137140889063686

/-!
# A229048: Number of different chromatic polynomials of a simple graph with n nodes.

The programs for A229048, there is no canonical definition to state claims against.
-/

/-! ## A229048.P3579752547780784680

`∑[A245883(n+1)]`
-/

namespace A229048.P3579752547780784680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245883 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A229048.P3579752547780784680

/-! ## A229048.P13683948689784434679

`A245883(n+1)+a(A023443(n))` with `a(0)=1`
-/

namespace A229048.P13683948689784434679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A245883 (n + 1) + a (A023443 n).toNat

end

end A229048.P13683948689784434679

/-! ## A229048.P3372770194844527242

`∑[A263270(∑[A184947(n)])]`
-/

namespace A229048.P3372770194844527242
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184947 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263270 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A229048.P3372770194844527242

/-!
# A229049: G.f.: Sum_{n >= 0} (6*n)!/n!^6 * x^n / (1-x)^(6*n+1).

The programs for A229049, there is no canonical definition to state claims against.
-/

/-! ## A229049.P13300725172158094501

`A229142(eq[6, A025581(n)])`
-/

namespace A229049.P13300725172158094501
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229142 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A229049.P13300725172158094501

/-!
# A229052: a(n) = Sum_{k=0..n} binomial(n^2-n*k, n*k-k^2) * binomial(n*k, k^2).

The programs for A229052, there is no canonical definition to state claims against.
-/

/-! ## A229052.P17341725633283895292

`A047422(∑[∏[A207653(n)]])`
-/

namespace A229052.P17341725633283895292
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207653 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047422 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A229052.P17341725633283895292

/-!
# A229053: Number of standard Young tableaux of n cells and height <= 11.

The programs for A229053, there is no canonical definition to state claims against.
-/

/-! ## A229053.P2221817012870588732

`A163533(A014417(n))+A000085(n)`
-/

namespace A229053.P2221817012870588732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163533 (A014417 n).toNat + A000085 n

end

end A229053.P2221817012870588732

/-! ## A229053.P6946439869889672643

`A178798(A224791(n))+A000085(n)`
-/

namespace A229053.P6946439869889672643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178798 (A224791 n).toNat + A000085 n

end

end A229053.P6946439869889672643

/-! ## A229053.P16500396063423050983

`A000027(A000085(n)-A036601(n))`
-/

namespace A229053.P16500396063423050983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A000085 n - A036601 n).toNat

end

end A229053.P16500396063423050983

/-! ## A229053.P3386786166529079906

`A000085(n)-A010060(A052762(n))`
-/

namespace A229053.P3386786166529079906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000085 n - A010060 (A052762 n).toNat

end

end A229053.P3386786166529079906

/-! ## A229053.P16445025258201028320

`A000027(A000085(n)-A086078(n))`
-/

namespace A229053.P16445025258201028320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A000085 n - A086078 n).toNat

end

end A229053.P16445025258201028320

/-!
# A229054: Autosequence preceding -A226158(n).

The programs for A229054, there is no canonical definition to state claims against.
-/

/-! ## A229054.P3438029035378249556

`∑[-A226158(floor(n-atan(n)))]`
-/

namespace A229054.P3438029035378249556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A226158 ⌊(n : ℝ) - Real.arctan (n : ℝ)⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A229054.P3438029035378249556

/-! ## A229054.P11685760572760554309

`∑[-A226158(floor(n*abs(1-n)/(n+1)))]`
-/

namespace A229054.P11685760572760554309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A226158 ⌊(n : ℚ) * ((|1 - (n : ℤ)| : ℚ) / (n + 1 : ℚ))⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A229054.P11685760572760554309

/-! ## A229054.P12440912637996596223

`-∑[A226158(A289207(n))]`
-/

namespace A229054.P12440912637996596223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226158 (A289207 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∑ j ∈ Finset.range (n + 1), f1 j)

end

end A229054.P12440912637996596223

/-! ## A229054.P6622197449201745192

`∑[A185246(n)-A226158(A289207(n))]`
-/

namespace A229054.P6622197449201745192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185246 n - A226158 (A289207 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A229054.P6622197449201745192

/-! ## A229054.P2785343647630417398

`∑[A057428(n)*A226158(A289207(n))]`
-/

namespace A229054.P2785343647630417398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n * A226158 (A289207 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A229054.P2785343647630417398

/-!
# A229055: Positions of the incrementally largest terms in the continued fraction expansion of zeta(3).

The programs for A229055, there is no canonical definition to state claims against.
-/

/-! ## A229055.P12652036558136804408

`A033167(n+1)-1`
-/

namespace A229055.P12652036558136804408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033167 (n + 1) - 1

end

end A229055.P12652036558136804408

/-! ## A229055.P4900939950161539251

`record[A033167(A193592(n))-1]`
-/

namespace A229055.P4900939950161539251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033167 (A193592 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A229055.P4900939950161539251

/-! ## A229055.P13900121350000166222

`A057428(n+1)+A033167(n+1)`
-/

namespace A229055.P13900121350000166222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (n + 1) + A033167 (n + 1)

end

end A229055.P13900121350000166222

/-! ## A229055.P15608128862561504589

`A321804(∑{digits}[n, #])+A033167(n+1)`
-/

namespace A229055.P15608128862561504589
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321804 ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum + A033167 (n + 1)

end

end A229055.P15608128862561504589

/-!
# A229057: First occurrences of n in the continued fraction of zeta(3).

The programs for A229057, there is no canonical definition to state claims against.
-/

/-! ## A229057.P3764731075559196821

`A033165(n+1)-1`
-/

namespace A229057.P3764731075559196821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033165 (n + 1) - 1

end

end A229057.P3764731075559196821

/-! ## A229057.P10535697685736161772

`A023443(A033165(n+1))`
-/

namespace A229057.P10535697685736161772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A033165 (n + 1)).toNat

end

end A229057.P10535697685736161772

/-! ## A229057.P15163825515911248957

`A023444(A033165(n+1)+1)`
-/

namespace A229057.P15163825515911248957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A033165 (n + 1) + 1).toNat

end

end A229057.P15163825515911248957

/-! ## A229057.P18405718219939736294

`A023446(A033165(n+1)+3)`
-/

namespace A229057.P18405718219939736294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023446 (A033165 (n + 1) + 3).toNat

end

end A229057.P18405718219939736294

/-! ## A229057.P9367167709380586759

`A057428(n+1)+A033165(n+1)`
-/

namespace A229057.P9367167709380586759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (n + 1) + A033165 (n + 1)

end

end A229057.P9367167709380586759

/-! ## A229057.P12335281767784027969

`A134824(n+2)+A033165(n+1)`
-/

namespace A229057.P12335281767784027969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134824 (n + 2) + A033165 (n + 1)

end

end A229057.P12335281767784027969

/-! ## A229057.P15432709628335795341

`A153881(n+2)+A033165(n+1)`
-/

namespace A229057.P15432709628335795341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153881 (n + 2) + A033165 (n + 1)

end

end A229057.P15432709628335795341

/-! ## A229057.P14222611730826511502

`A260196(n+2)+A033165(n+1)`
-/

namespace A229057.P14222611730826511502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260196 (n + 2) + A033165 (n + 1)

end

end A229057.P14222611730826511502

/-! ## A229057.P1952065321089647398

`A165326(4*n+10)+A033165(n+1)`
-/

namespace A229057.P1952065321089647398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165326 (4 * n + 10) + A033165 (n + 1)

end

end A229057.P1952065321089647398

/-!
# A229058: Primes p where the digital sum of p^2 is equal to 25.

The programs for A229058, the canonical program `A229058.P11987760245482579737` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A229058 has offset 1).

The definition of A229058 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 111 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A229058.P14784035329962214761

`∩[A061806(n+1), A076503(n+1)]`
-/

namespace A229058.P14784035329962214761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061806 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076503 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A229058.P14784035329962214761

namespace A229058

/-- `∩[A061806(n+1), A076503(n+1)]` -/
def P14784035329962214761.Spec : Prop :=
  ∀ n, (P14784035329962214761.a n : ℤ) = A229058 (n + 1)

end A229058

/-! ## A229058.P11987760245482579737

`p?[eq[25, A004159(n)]]`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A229058

/-- `p?[eq[25, A004159(n)]]` -/
def P11987760245482579737.Spec : Prop :=
  ∀ n, (P11987760245482579737.a n : ℤ) = A229058 (n + 1)

theorem P11987760245482579737.correct : P11987760245482579737.Spec := by
  intro n
  simp only [A229058, Nat.add_sub_cancel]

end A229058

/-! ## A229058.P4265069404939024424

`eq[A001248(A226602(n)), A004159(n)]`
-/

namespace A229058.P4265069404939024424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001248 (A226602 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004159 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A229058.P4265069404939024424

namespace A229058

/-- `eq[A001248(A226602(n)), A004159(n)]` -/
def P4265069404939024424.Spec : Prop :=
  ∀ n, (P4265069404939024424.a n : ℤ) = A229058 (n + 1)

end A229058

/-!
# A229059: Smallest of 13 consecutive primes whose sum is a prime.

The programs for A229059, there is no canonical definition to state claims against.
-/

/-! ## A229059.P1881075033351458769

`p?[xor(A010882(2*n), A111339(2*(n+1)))]`
-/

namespace A229059.P1881075033351458769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A010882 (2 * n)) (A111339 (2 * (n + 1)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A229059.P1881075033351458769

/-! ## A229059.P6872603339728184677

`A089296(A091572(n+1))`
-/

namespace A229059.P6872603339728184677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089296 (A091572 (n + 1)).toNat

end

end A229059.P6872603339728184677

/-! ## A229059.P11008345580489309748

`A089296(A189523(n+2))`
-/

namespace A229059.P11008345580489309748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089296 (A189523 (n + 2)).toNat

end

end A229059.P11008345580489309748

/-! ## A229059.P2909352462374407606

`p?[A229973(2*n+5)+A229945(3*n+2)]`
-/

namespace A229059.P2909352462374407606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229973 (2 * n + 5) + A229945 (3 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A229059.P2909352462374407606

/-!
# A229060: Smallest of 13 consecutive primes whose sum is not a prime.

The programs for A229060, there is no canonical definition to state claims against.
-/

/-! ## A229060.P10595469445490255566

`eq[A175126(n), A184348(A051176(2*n+1))]`
-/

namespace A229060.P10595469445490255566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175126 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184348 (A051176 (2 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A229060.P10595469445490255566

/-! ## A229060.P13677927202338101531

`A000040(lt[A355203(n+1), A239663(n+1)])`
-/

namespace A229060.P13677927202338101531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355203 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239663 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A229060.P13677927202338101531

/-! ## A229060.P11556180434430978060

`A000040(lt[A162246(3*n), A375927(n+1)])`
-/

namespace A229060.P11556180434430978060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162246 (3 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375927 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A229060.P11556180434430978060

/-! ## A229060.P5987059980855549844

`A000040(lt[A298261(n), A383708(n)])`
-/

namespace A229060.P5987059980855549844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298261 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383708 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A229060.P5987059980855549844

/-! ## A229060.P17955124911335950673

`A000040(lt[A245795(n), A146290(n+1)])`
-/

namespace A229060.P17955124911335950673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245795 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146290 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A229060.P17955124911335950673

/-!
# A229061: The (n+1)-th term of the n-th differences of the prime sequence.

The programs for A229061, there is no canonical definition to state claims against.
-/

/-! ## A229061.P7793650666472807488

`A095195(∑[4*n]+1)`
-/

namespace A229061.P7793650666472807488
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095195 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A229061.P7793650666472807488

/-! ## A229061.P11687118975899684780

`or(A000038(n), A095195(A001844(n)))`
-/

namespace A229061.P11687118975899684780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000038 n) (A095195 (A001844 n).toNat)

end

end A229061.P11687118975899684780

/-! ## A229061.P10524339212607110667

`A112316(n)!*A095195(A001844(n))`
-/

namespace A229061.P10524339212607110667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A112316 n).toNat : ℤ) * A095195 (A001844 n).toNat

end

end A229061.P10524339212607110667

/-! ## A229061.P6351778341156663301

`A131364(n)!*A095195(A001844(n))`
-/

namespace A229061.P6351778341156663301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A131364 n).toNat : ℤ) * A095195 (A001844 n).toNat

end

end A229061.P6351778341156663301

/-! ## A229061.P9617524086175022384

`A095195(A001844(n))+A000038(n+1)`
-/

namespace A229061.P9617524086175022384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095195 (A001844 n).toNat + A000038 (n + 1)

end

end A229061.P9617524086175022384

/-! ## A229061.P17601098795791005344

`A095195(A001844(n))%A332860(n+1)`
-/

namespace A229061.P17601098795791005344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A095195 (A001844 n).toNat) (A332860 (n + 1))

end

end A229061.P17601098795791005344

/-! ## A229061.P269368573256998228

`A046926(2*(n+1))!*A095195(A001844(n))`
-/

namespace A229061.P269368573256998228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A046926 (2 * (n + 1))).toNat : ℤ) * A095195 (A001844 n).toNat

end

end A229061.P269368573256998228

/-! ## A229061.P646527007423771737

`A014963(A000217(n+10))*A095195(A001844(n))`
-/

namespace A229061.P646527007423771737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A000217 (n + 10)).toNat * A095195 (A001844 n).toNat

end

end A229061.P646527007423771737

/-!
# A229062: 1 if n is representable as sum of two nonnegative squares, otherwise 0.

The programs for A229062, the canonical program `A229062.P3765704353507649483` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A229062 has offset 0).

The definition of A229062 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A229062.P3765704353507649483

`char[A069011(n)]`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A229062

/-- `char[A069011(n)]` -/
def P3765704353507649483.Spec : Prop :=
  ∀ n, (P3765704353507649483.a n : ℤ) = A229062 n

theorem P3765704353507649483.correct : P3765704353507649483.Spec := by
  intro n
  simp only [A229062]

end A229062

/-! ## A229062.P9137946820040054466

`char[A163531(n)]`
-/

namespace A229062.P9137946820040054466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163531 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A229062.P9137946820040054466

namespace A229062

/-- `char[A163531(n)]` -/
def P9137946820040054466.Spec : Prop :=
  ∀ n, (P9137946820040054466.a n : ℤ) = A229062 n

end A229062

/-! ## A229062.P4504372062659609365

`char[A163547(n)]`
-/

namespace A229062.P4504372062659609365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163547 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A229062.P4504372062659609365

namespace A229062

/-- `char[A163547(n)]` -/
def P4504372062659609365.Spec : Prop :=
  ∀ n, (P4504372062659609365.a n : ℤ) = A229062 n

end A229062

/-! ## A229062.P3256845928283508651

`char[A373710(n)]`
-/

namespace A229062.P3256845928283508651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373710 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A229062.P3256845928283508651

namespace A229062

/-- `char[A373710(n)]` -/
def P3256845928283508651.Spec : Prop :=
  ∀ n, (P3256845928283508651.a n : ℤ) = A229062 n

end A229062

/-! ## A229062.P6610480425700966214

`round(atan(A000161(n)))`
-/

namespace A229062.P6610480425700966214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.arctan (A000161 n : ℝ))

end

end A229062.P6610480425700966214

namespace A229062

/-- `round(atan(A000161(n)))` -/
def P6610480425700966214.Spec : Prop :=
  ∀ n, P6610480425700966214.a n = A229062 n

end A229062

/-! ## A229062.P10622137776517636103

`log2(gcd(2, A260728(n)))`
-/

namespace A229062.P10622137776517636103
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Int.gcd 2 (A260728 n) : ℝ)

end

end A229062.P10622137776517636103

namespace A229062

/-- `log2(gcd(2, A260728(n)))` -/
def P10622137776517636103.Spec : Prop :=
  ∀ n, P10622137776517636103.a n = (A229062 n : ℝ)

end A229062

/-! ## A229062.P239891844716501077

`ceil(A000925(n)/12)`
-/

namespace A229062.P239891844716501077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A000925 n : ℚ) / 12⌉

end

end A229062.P239891844716501077

namespace A229062

/-- `ceil(A000925(n)/12)` -/
def P239891844716501077.Spec : Prop :=
  ∀ n, P239891844716501077.a n = A229062 n

end A229062

/-! ## A229062.P12883410671106660580

`char[A001481(n+1)]`
-/

namespace A229062.P12883410671106660580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001481 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A229062.P12883410671106660580

namespace A229062

/-- `char[A001481(n+1)]` -/
def P12883410671106660580.Spec : Prop :=
  ∀ n, (P12883410671106660580.a n : ℤ) = A229062 n

end A229062

/-! ## A229062.P11856718886436025324

`char[eq[0, A070176(n)]]`
-/

namespace A229062.P11856718886436025324
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070176 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A229062.P11856718886436025324

namespace A229062

/-- `char[eq[0, A070176(n)]]` -/
def P11856718886436025324.Spec : Prop :=
  ∀ n, (P11856718886436025324.a n : ℤ) = A229062 n

end A229062

/-! ## A229062.P17781396839846621715

`char[comp[A022544(n+1)]]`
-/

namespace A229062.P17781396839846621715
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022544 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A229062.P17781396839846621715

namespace A229062

/-- `char[comp[A022544(n+1)]]` -/
def P17781396839846621715.Spec : Prop :=
  ∀ n, (P17781396839846621715.a n : ℤ) = A229062 n

end A229062

/-! ## A229062.P12539642207525291428

`1-floor(acot(A004018(n)))`
-/

namespace A229062.P12539642207525291428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ⌊SequenceMachineLib.acot (A004018 n : ℝ)⌋

end

end A229062.P12539642207525291428

namespace A229062

/-- `1-floor(acot(A004018(n)))` -/
def P12539642207525291428.Spec : Prop :=
  ∀ n, P12539642207525291428.a n = A229062 n

end A229062

/-! ## A229062.P8251290331770066129

`round(2/(A002828(n)+2))`
-/

namespace A229062.P8251290331770066129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (2 / (A002828 n + 2 : ℚ))

end

end A229062.P8251290331770066129

namespace A229062

/-- `round(2/(A002828(n)+2))` -/
def P8251290331770066129.Spec : Prop :=
  ∀ n, P8251290331770066129.a n = A229062 n

end A229062

/-! ## A229062.P12769086114191177634

`char[A166687(n+1)-1]`
-/

namespace A229062.P12769086114191177634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166687 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A229062.P12769086114191177634

namespace A229062

/-- `char[A166687(n+1)-1]` -/
def P12769086114191177634.Spec : Prop :=
  ∀ n, (P12769086114191177634.a n : ℤ) = A229062 n

end A229062

/-! ## A229062.P11296008530601209857

`A057427(A000925(n))`
-/

namespace A229062.P11296008530601209857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A000925 n).toNat

end

end A229062.P11296008530601209857

namespace A229062

/-- `A057427(A000925(n))` -/
def P11296008530601209857.Spec : Prop :=
  ∀ n, P11296008530601209857.a n = A229062 n

end A229062

/-! ## A229062.P4185134521593832911

`A057427(A004018(n))`
-/

namespace A229062.P4185134521593832911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A004018 n).toNat

end

end A229062.P4185134521593832911

namespace A229062

/-- `A057427(A004018(n))` -/
def P4185134521593832911.Spec : Prop :=
  ∀ n, P4185134521593832911.a n = A229062 n

end A229062

/-! ## A229062.P12242684860003710951

`A000007(A064874(n))`
-/

namespace A229062.P12242684860003710951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A064874 n).toNat

end

end A229062.P12242684860003710951

namespace A229062

/-- `A000007(A064874(n))` -/
def P12242684860003710951.Spec : Prop :=
  ∀ n, P12242684860003710951.a n = A229062 n

end A229062

/-! ## A229062.P10153839099045041985

`A000007(A070176(n))`
-/

namespace A229062.P10153839099045041985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A070176 n).toNat

end

end A229062.P10153839099045041985

namespace A229062

/-- `A000007(A070176(n))` -/
def P10153839099045041985.Spec : Prop :=
  ∀ n, P10153839099045041985.a n = A229062 n

end A229062

/-! ## A229062.P17406027794002279965

`A010052(A262678(n))`
-/

namespace A229062.P17406027794002279965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 (A262678 n).toNat

end

end A229062.P17406027794002279965

namespace A229062

/-- `A010052(A262678(n))` -/
def P17406027794002279965.Spec : Prop :=
  ∀ n, P17406027794002279965.a n = A229062 n

end A229062

/-! ## A229062.P2457084085516555143

`A002828(A000925(n)²)`
-/

namespace A229062.P2457084085516555143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002828 (A000925 n ^ 2).toNat

end

end A229062.P2457084085516555143

namespace A229062

/-- `A002828(A000925(n)²)` -/
def P2457084085516555143.Spec : Prop :=
  ∀ n, P2457084085516555143.a n = A229062 n

end A229062

/-! ## A229062.P9607605064160229555

`A002828(A004018(n)²)`
-/

namespace A229062.P9607605064160229555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002828 (A004018 n ^ 2).toNat

end

end A229062.P9607605064160229555

namespace A229062

/-- `A002828(A004018(n)²)` -/
def P9607605064160229555.Spec : Prop :=
  ∀ n, P9607605064160229555.a n = A229062 n

end A229062

/-!
# A229063: Volume of the Johnson square pyramid (rounded down) with all the edge lengths equal to n.

The programs for A229063, the canonical program `A229063.P1740680241374049437` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A229063 has offset 1).

The definition of A229063 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 220 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A229063.P1740680241374049437

`floor(A066023(n+1)/sqrt(18))`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A229063

/-- `floor(A066023(n+1)/sqrt(18))` -/
def P1740680241374049437.Spec : Prop :=
  ∀ n, P1740680241374049437.a n = A229063 (n + 1)

theorem P1740680241374049437.correct : P1740680241374049437.Spec := by
  intro n
  simp only [A229063, Nat.add_sub_cancel]

end A229063

/-! ## A229063.P11434060379331271976

`A227221(n+1)-A000027((n+1)^3)`
-/

namespace A229063.P11434060379331271976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227221 (n + 1) - A000027 ((n + 1) ^ 3)

end

end A229063.P11434060379331271976

namespace A229063

/-- `A227221(n+1)-A000027((n+1)^3)` -/
def P11434060379331271976.Spec : Prop :=
  ∀ n, P11434060379331271976.a n = A229063 (n + 1)

end A229063

/-! ## A229063.P3782932413224705518

`A000027(A227221(n+1))-∑[A003215(n)]`
-/

namespace A229063.P3782932413224705518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003215 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A227221 (n + 1)).toNat - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A229063.P3782932413224705518

namespace A229063

/-- `A000027(A227221(n+1))-∑[A003215(n)]` -/
def P3782932413224705518.Spec : Prop :=
  ∀ n, P3782932413224705518.a n = A229063 (n + 1)

end A229063

/-! ## A229063.P9507751438464538750

`A000027(A227221(n+1))-Δ[A000537(n)]`
-/

namespace A229063.P9507751438464538750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000537 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A227221 (n + 1)).toNat - (f1 (n + 1) - f1 n)

end

end A229063.P9507751438464538750

namespace A229063

/-- `A000027(A227221(n+1))-Δ[A000537(n)]` -/
def P9507751438464538750.Spec : Prop :=
  ∀ n, P9507751438464538750.a n = A229063 (n + 1)

end A229063

/-! ## A229063.P15124253326570838917

`A000027(A227221(n+1))-A000578(A000027(n+1))`
-/

namespace A229063.P15124253326570838917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A227221 (n + 1)).toNat - A000578 (A000027 (n + 1)).toNat

end

end A229063.P15124253326570838917

namespace A229063

/-- `A000027(A227221(n+1))-A000578(A000027(n+1))` -/
def P15124253326570838917.Spec : Prop :=
  ∀ n, P15124253326570838917.a n = A229063 (n + 1)

end A229063

/-!
# A229064: Lesser of Fermi-Dirac twin primes: both a(n)(>=5) and a(n)+2 are in A050376.

The programs for A229064, the canonical program `A229064.P12986880071610748840` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A229064 has offset 1).

The definition of A229064 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1291 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A229064.P1423394425398916341

`∩[A050376(n+1)-2, A050376(n+4)]`
-/

namespace A229064.P1423394425398916341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050376 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050376 (n + 4)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A229064.P1423394425398916341

namespace A229064

/-- `∩[A050376(n+1)-2, A050376(n+4)]` -/
def P1423394425398916341.Spec : Prop :=
  ∀ n, (P1423394425398916341.a n : ℤ) = A229064 (n + 1)

end A229064

/-! ## A229064.P8557907409753088916

`A050376(eq[2, A050376(n+1)-A084400(n+1)])`
-/

namespace A229064.P8557907409753088916
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050376 (n + 1) - A084400 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050376 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A229064.P8557907409753088916

namespace A229064

/-- `A050376(eq[2, A050376(n+1)-A084400(n+1)])` -/
def P8557907409753088916.Spec : Prop :=
  ∀ n, P8557907409753088916.a n = A229064 (n + 1)

end A229064

/-! ## A229064.P3293006467084383307

`A050376(eq[2, A050376(n+2)-A050376(n+1)]+1)`
-/

namespace A229064.P3293006467084383307
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050376 (n + 2) - A050376 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050376 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A229064.P3293006467084383307

namespace A229064

/-- `A050376(eq[2, A050376(n+2)-A050376(n+1)]+1)` -/
def P3293006467084383307.Spec : Prop :=
  ∀ n, P3293006467084383307.a n = A229064 (n + 1)

end A229064

/-! ## A229064.P12986880071610748840

`A084400(eq[2, A084400(n+2)-A084400(n+1)]+1)`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A229064

/-- `A084400(eq[2, A084400(n+2)-A084400(n+1)]+1)` -/
def P12986880071610748840.Spec : Prop :=
  ∀ n, P12986880071610748840.a n = A229064 (n + 1)

theorem P12986880071610748840.correct : P12986880071610748840.Spec := by
  intro n
  simp only [A229064, Nat.add_sub_cancel]

end A229064

/-! ## A229064.P4152043418942168895

`A050376(eq[2, A050376(n+2)%A050376(n+1)]+1)`
-/

namespace A229064.P4152043418942168895
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A050376 (n + 2)) (A050376 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050376 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A229064.P4152043418942168895

namespace A229064

/-- `A050376(eq[2, A050376(n+2)%A050376(n+1)]+1)` -/
def P4152043418942168895.Spec : Prop :=
  ∀ n, P4152043418942168895.a n = A229064 (n + 1)

end A229064

/-! ## A229064.P8670771549818764781

`eq[n, A300840(n+2)]`
-/

namespace A229064.P8670771549818764781
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300840 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A229064.P8670771549818764781

namespace A229064

/-- `eq[n, A300840(n+2)]` -/
def P8670771549818764781.Spec : Prop :=
  ∀ n, (P8670771549818764781.a n : ℤ) = A229064 (n + 1)

end A229064

/-! ## A229064.P8317694688640457872

`filter[A282843(n+3), A302777(#)]`
-/

namespace A229064.P8317694688640457872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282843 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A302777 (f1 j).toNat = 1) n)

end

end A229064.P8317694688640457872

namespace A229064

/-- `filter[A282843(n+3), A302777(#)]` -/
def P8317694688640457872.Spec : Prop :=
  ∀ n, P8317694688640457872.a n = A229064 (n + 1)

end A229064

/-!
# A229065: Numbers of the form 2^(p-1)+3, where p is prime.

The programs for A229065, there is no canonical definition to state claims against.
-/

/-! ## A229065.P11459375206743396501

`A278741(n+1)+2`
-/

namespace A229065.P11459375206743396501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278741 (n + 1) + 2

end

end A229065.P11459375206743396501

/-! ## A229065.P10110138406995560933

`A061286(n+1)+3`
-/

namespace A229065.P10110138406995560933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061286 (n + 1) + 3

end

end A229065.P10110138406995560933

/-! ## A229065.P16418646815925187000

`A098102(n+1)+4`
-/

namespace A229065.P16418646815925187000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098102 (n + 1) + 4

end

end A229065.P16418646815925187000

/-! ## A229065.P16025989571168451291

`record[A243305(n+1)+2]`
-/

namespace A229065.P16025989571168451291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243305 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A229065.P16025989571168451291

/-! ## A229065.P10201836400395458703

`record[A066781(n+1)+3]`
-/

namespace A229065.P10201836400395458703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066781 (n + 1) + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A229065.P10201836400395458703

/-! ## A229065.P4275054981976002035

`record[A100371(n+1)+4]`
-/

namespace A229065.P4275054981976002035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100371 (n + 1) + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A229065.P4275054981976002035

/-! ## A229065.P16744000756186992082

`(A241677(n+1)+1)/2`
-/

namespace A229065.P16744000756186992082
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A241677 (n + 1) + 1 : ℚ) / 2

end

end A229065.P16744000756186992082

/-! ## A229065.P1481924670878760914

`2*A135620(n+1)+3`
-/

namespace A229065.P1481924670878760914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A135620 (n + 1) + 3

end

end A229065.P1481924670878760914

/-! ## A229065.P10746782557489340921

`(A241679(n+1)-1)/2`
-/

namespace A229065.P10746782557489340921
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A241679 (n + 1) - 1 : ℚ) / 2

end

end A229065.P10746782557489340921

/-! ## A229065.P7868987201848779384

`A034785(n+1)/2+3`
-/

namespace A229065.P7868987201848779384
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034785 (n + 1) : ℚ) / 2 + 3

end

end A229065.P7868987201848779384

/-!
# A229067: Sum of n-th prime and next perfect square.

The programs for A229067, the canonical program `A229067.P4043255727745089421` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A229067 has offset 1).

The definition of A229067 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A145445, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A229067.P4043255727745089421

`A000040(n+1)+A145445(n+1)`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A229067

/-- `A000040(n+1)+A145445(n+1)` -/
def P4043255727745089421.Spec : Prop :=
  ∀ n, P4043255727745089421.a n = A229067 (n + 1)

theorem P4043255727745089421.correct : P4043255727745089421.Spec := by
  intro n
  simp only [A229067, Nat.add_sub_cancel]

end A229067

/-! ## A229067.P12914019411439297586

`Δ[A007504(n)]+A104103(n+1)²`
-/

namespace A229067.P12914019411439297586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + A104103 (n + 1) ^ 2

end

end A229067.P12914019411439297586

namespace A229067

/-- `Δ[A007504(n)]+A104103(n+1)²` -/
def P12914019411439297586.Spec : Prop :=
  ∀ n, P12914019411439297586.a n = A229067 (n + 1)

end A229067

/-! ## A229067.P15153711382135736829

`A000040(n+1)+A104103(n+1)²`
-/

namespace A229067.P15153711382135736829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + A104103 (n + 1) ^ 2

end

end A229067.P15153711382135736829

namespace A229067

/-- `A000040(n+1)+A104103(n+1)²` -/
def P15153711382135736829.Spec : Prop :=
  ∀ n, P15153711382135736829.a n = A229067 (n + 1)

end A229067

/-! ## A229067.P7781772279410037851

`sqrt(A001248(n+1))+A104103(n+1)²`
-/

namespace A229067.P7781772279410037851
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A001248 (n + 1) : ℝ) + (A104103 (n + 1) ^ 2 : ℝ)

end

end A229067.P7781772279410037851

namespace A229067

/-- `sqrt(A001248(n+1))+A104103(n+1)²` -/
def P7781772279410037851.Spec : Prop :=
  ∀ n, P7781772279410037851.a n = (A229067 (n + 1) : ℝ)

end A229067

/-! ## A229067.P1368879794845776035

`∑[A054541(n+1)]+A104103(n+1)²`
-/

namespace A229067.P1368879794845776035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + A104103 (n + 1) ^ 2

end

end A229067.P1368879794845776035

namespace A229067

/-- `∑[A054541(n+1)]+A104103(n+1)²` -/
def P1368879794845776035.Spec : Prop :=
  ∀ n, P1368879794845776035.a n = A229067 (n + 1)

end A229067

/-! ## A229067.P13051114125399355927

`A000040(n+1)+(A000006(n+1)+1)²`
-/

namespace A229067.P13051114125399355927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + (A000006 (n + 1) + 1) ^ 2

end

end A229067.P13051114125399355927

namespace A229067

/-- `A000040(n+1)+(A000006(n+1)+1)²` -/
def P13051114125399355927.Spec : Prop :=
  ∀ n, P13051114125399355927.a n = A229067 (n + 1)

end A229067

/-! ## A229067.P15340214044640089326

`A008864(n+1)+A104103(n+1)²-1`
-/

namespace A229067.P15340214044640089326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (n + 1) + (A104103 (n + 1) ^ 2 - 1)

end

end A229067.P15340214044640089326

namespace A229067

/-- `A008864(n+1)+A104103(n+1)²-1` -/
def P15340214044640089326.Spec : Prop :=
  ∀ n, P15340214044640089326.a n = A229067 (n + 1)

end A229067

/-! ## A229067.P3532429712720141494

`A000040(n+1)+A229497(n+1)/A000040(n+1)`
-/

namespace A229067.P3532429712720141494
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000040 (n + 1) : ℚ) + (A229497 (n + 1) : ℚ) / (A000040 (n + 1) : ℚ)

end

end A229067.P3532429712720141494

namespace A229067

/-- `A000040(n+1)+A229497(n+1)/A000040(n+1)` -/
def P3532429712720141494.Spec : Prop :=
  ∀ n, P3532429712720141494.a n = (A229067 (n + 1) : ℚ)

end A229067

/-! ## A229067.P12195483410450523921

`A145445(n+1)+A229497(n+1)/A145445(n+1)`
-/

namespace A229067.P12195483410450523921
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A145445 (n + 1) : ℚ) + (A229497 (n + 1) : ℚ) / (A145445 (n + 1) : ℚ)

end

end A229067.P12195483410450523921

namespace A229067

/-- `A145445(n+1)+A229497(n+1)/A145445(n+1)` -/
def P12195483410450523921.Spec : Prop :=
  ∀ n, P12195483410450523921.a n = (A229067 (n + 1) : ℚ)

end A229067

/-! ## A229067.P11392281058017166918

`A008578(n+2)+A104103(n+1)²`
-/

namespace A229067.P11392281058017166918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 2) + A104103 (n + 1) ^ 2

end

end A229067.P11392281058017166918

namespace A229067

/-- `A008578(n+2)+A104103(n+1)²` -/
def P11392281058017166918.Spec : Prop :=
  ∀ n, P11392281058017166918.a n = A229067 (n + 1)

end A229067

/-! ## A229067.P12914206770130261166

`A008578(n+2)+(floor(sqrt(A006093(n+1)))+1)²`
-/

namespace A229067.P12914206770130261166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 2) + (Int.sqrt (A006093 (n + 1)) + 1) ^ 2

end

end A229067.P12914206770130261166

namespace A229067

/-- `A008578(n+2)+(floor(sqrt(A006093(n+1)))+1)²` -/
def P12914206770130261166.Spec : Prop :=
  ∀ n, P12914206770130261166.a n = A229067 (n + 1)

end A229067

/-! ## A229067.P9585139520800979712

`A165776(p?[comp[n²]])`
-/

namespace A229067.P9585139520800979712
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165776 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A229067.P9585139520800979712

namespace A229067

/-- `A165776(p?[comp[n²]])` -/
def P9585139520800979712.Spec : Prop :=
  ∀ n, P9585139520800979712.a n = A229067 (n + 1)

end A229067

/-! ## A229067.P688202554207400400

`A165776(record[A006530(n+2)])`
-/

namespace A229067.P688202554207400400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165776 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A229067.P688202554207400400

namespace A229067

/-- `A165776(record[A006530(n+2)])` -/
def P688202554207400400.Spec : Prop :=
  ∀ n, P688202554207400400.a n = A229067 (n + 1)

end A229067

/-! ## A229067.P138396292215086883

`A165776(record[A014963(n+2)])`
-/

namespace A229067.P138396292215086883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165776 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A229067.P138396292215086883

namespace A229067

/-- `A165776(record[A014963(n+2)])` -/
def P138396292215086883.Spec : Prop :=
  ∀ n, P138396292215086883.a n = A229067 (n + 1)

end A229067

/-! ## A229067.P7077723142552968333

`A165776(record[A020639(n+2)])`
-/

namespace A229067.P7077723142552968333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165776 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A229067.P7077723142552968333

namespace A229067

/-- `A165776(record[A020639(n+2)])` -/
def P7077723142552968333.Spec : Prop :=
  ∀ n, P7077723142552968333.a n = A229067 (n + 1)

end A229067

/-! ## A229067.P16035896825533221618

`A048761(A000040(n+1)+1)+A000040(n+1)`
-/

namespace A229067.P16035896825533221618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048761 (A000040 (n + 1) + 1).toNat + A000040 (n + 1)

end

end A229067.P16035896825533221618

namespace A229067

/-- `A048761(A000040(n+1)+1)+A000040(n+1)` -/
def P16035896825533221618.Spec : Prop :=
  ∀ n, P16035896825533221618.a n = A229067 (n + 1)

end A229067

/-! ## A229067.P2252814469942611573

`A000040(n+1)+A000196(A145826(n+1))²`
-/

namespace A229067.P2252814469942611573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + A000196 (A145826 (n + 1)).toNat ^ 2

end

end A229067.P2252814469942611573

namespace A229067

/-- `A000040(n+1)+A000196(A145826(n+1))²` -/
def P2252814469942611573.Spec : Prop :=
  ∀ n, P2252814469942611573.a n = A229067 (n + 1)

end A229067

/-! ## A229067.P8702508629079645468

`A106044(n+1)+A100484(n+1)`
-/

namespace A229067.P8702508629079645468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106044 (n + 1) + A100484 (n + 1)

end

end A229067.P8702508629079645468

namespace A229067

/-- `A106044(n+1)+A100484(n+1)` -/
def P8702508629079645468.Spec : Prop :=
  ∀ n, P8702508629079645468.a n = A229067 (n + 1)

end A229067

/-! ## A229067.P3593834272695498800

`A106044(n+1)+2*A000040(n+1)`
-/

namespace A229067.P3593834272695498800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106044 (n + 1) + 2 * A000040 (n + 1)

end

end A229067.P3593834272695498800

namespace A229067

/-- `A106044(n+1)+2*A000040(n+1)` -/
def P3593834272695498800.Spec : Prop :=
  ∀ n, P3593834272695498800.a n = A229067 (n + 1)

end A229067

/-! ## A229067.P1949257004942935220

`2*A145445(n+1)-A106044(n+1)`
-/

namespace A229067.P1949257004942935220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A145445 (n + 1) - A106044 (n + 1)

end

end A229067.P1949257004942935220

namespace A229067

/-- `2*A145445(n+1)-A106044(n+1)` -/
def P1949257004942935220.Spec : Prop :=
  ∀ n, P1949257004942935220.a n = A229067 (n + 1)

end A229067

/-!
# A229068: Number of standard Young tableaux of n cells and height <= 12.

The programs for A229068, there is no canonical definition to state claims against.
-/

/-! ## A229068.P12391402528835184116

`A000085(n)-A007968(A014382(n))`
-/

namespace A229068.P12391402528835184116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000085 n - A007968 (A014382 n).toNat

end

end A229068.P12391402528835184116

/-! ## A229068.P795616292075604901

`A000085(n)-A086016(A000225(n))`
-/

namespace A229068.P795616292075604901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000085 n - A086016 (A000225 n).toNat

end

end A229068.P795616292075604901

/-! ## A229068.P3717969222920403900

`A000085(n)-A098841(A077168(n))`
-/

namespace A229068.P3717969222920403900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000085 n - A098841 (A077168 n).toNat

end

end A229068.P3717969222920403900

/-! ## A229068.P11724352490078202609

`A000085(n)-A179391(A000041(n))`
-/

namespace A229068.P11724352490078202609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000085 n - A179391 (A000041 n).toNat

end

end A229068.P11724352490078202609

/-! ## A229068.P1700168148743300359

`A000085(n)-A165877(A033483(n))`
-/

namespace A229068.P1700168148743300359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000085 n - A165877 (A033483 n).toNat

end

end A229068.P1700168148743300359

/-!
# A229070: Smallest missing number in first 10^n digits after the decimal point in expansion of Euler's constant (or Euler-Mascheroni constant) gamma.

The programs for A229070, there is no canonical definition to state claims against.
-/

/-! ## A229070.P4052016896919066591

`xor(∑{digits}[n, 10^#], A050873(A061179(n)))`
-/

namespace A229070.P4052016896919066591
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => 10 ^ x).sum : ℕ) : ℤ) (A050873 (A061179 n).toNat)

end

end A229070.P4052016896919066591

/-!
# A229072: Lexicographically earliest sequence of distinct natural numbers such that, for any number n in the sequence, the positions of the 1's in the binary representation of n are in the sequence, whereas the positions of the 0's are not.

The programs for A229072, there is no canonical definition to state claims against.
-/

/-! ## A229072.P4612018787563525803

`A341335(∑{d}[record[and(-3, 2^n)], #])`
-/

namespace A229072.P4612018787563525803
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-3) (2 ^ n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341335 (∑ d ∈ Nat.divisors (f1 n).natAbs, d)

end

end A229072.P4612018787563525803

/-! ## A229072.P13146066880306941609

`A341335(A126646(comp[C(n+3, 3)²]))`
-/

namespace A229072.P13146066880306941609
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 3) 3 ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341335 (A126646 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)).toNat

end

end A229072.P13146066880306941609

/-! ## A229072.P15719834908279742601

`A341335(A000203(record[and(-3, 2^n)]))`
-/

namespace A229072.P15719834908279742601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-3) (2 ^ n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341335 (A000203 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat).toNat

end

end A229072.P15719834908279742601

/-! ## A229072.P5938349605915855422

`A341335(A005187(record[and(-3, 2^n)]))`
-/

namespace A229072.P5938349605915855422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-3) (2 ^ n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341335 (A005187 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat).toNat

end

end A229072.P5938349605915855422

/-! ## A229072.P4229158827399258169

`A341335(A006068(record[and(-3, 2^n)]))`
-/

namespace A229072.P4229158827399258169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-3) (2 ^ n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341335 (A006068 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat).toNat

end

end A229072.P4229158827399258169

/-!
# A229075: Primes of the form p^2 + q^2 + 21, where p and q are consecutive primes.

The programs for A229075, there is no canonical definition to state claims against.
-/

/-! ## A229075.P13606913162945245700

`p?[A069484(n+1)+21]`
-/

namespace A229075.P13606913162945245700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069484 (n + 1) + 21

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A229075.P13606913162945245700

/-! ## A229075.P3264287282101435200

`p?[A048851(n+2)+21]`
-/

namespace A229075.P3264287282101435200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048851 (n + 2) + 21

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A229075.P3264287282101435200

/-! ## A229075.P14814212262889218696

`p?[2*A075892(n+2)+21]`
-/

namespace A229075.P14814212262889218696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A075892 (n + 2) + 21

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A229075.P14814212262889218696

/-! ## A229075.P6629187575730598138

`p?[A001248(n+2)+A001248(n+1)+21]`
-/

namespace A229075.P6629187575730598138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001248 (n + 2) + (A001248 (n + 1) + 21)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A229075.P6629187575730598138

/-! ## A229075.P13070740415791617429

`p?[A241851(A008578(n+1))+A001248(n+1)]`
-/

namespace A229075.P13070740415791617429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241851 (A008578 (n + 1)).toNat + A001248 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A229075.P13070740415791617429

/-!
# A229078: Number of ascending runs in {1,...,n}^n.

The programs for A229078, there is no canonical definition to state claims against.
-/

/-! ## A229078.P14067569441107040681

`((n-1)*∑[n+1]+1)*A000272(n)`
-/

namespace A229078.P14067569441107040681
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((n : ℤ) - 1) * ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + 1) * A000272 n

end

end A229078.P14067569441107040681

/-! ## A229078.P16104545671983099432

`A229079(∑[4*n])`
-/

namespace A229078.P16104545671983099432
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229079 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A229078.P16104545671983099432

/-! ## A229078.P17402006441624829528

`record[A229079(n*A003982(n))]`
-/

namespace A229078.P17402006441624829528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229079 ((n : ℤ) * A003982 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A229078.P17402006441624829528

/-! ## A229078.P3635469939751356372

`record[A229079(gcd(n, A061579(n)))]`
-/

namespace A229078.P3635469939751356372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229079 (Int.gcd (n : ℤ) (A061579 n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A229078.P3635469939751356372

/-! ## A229078.P2426046306116872251

`record[A229079(A182456(n))]`
-/

namespace A229078.P2426046306116872251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229079 (A182456 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A229078.P2426046306116872251

/-!
# A229079: Number A(n,k) of ascending runs in {1,...,k}^n; square array A(n,k), n>=0, k>=0, read by antidiagonals.

The programs for A229079, there is no canonical definition to state claims against.
-/

/-! ## A229079.P5595915120875236148

`A144074(n)%A000010(A013619(n))`
-/

namespace A229079.P5595915120875236148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A144074 n) (A000010 (A013619 n).toNat)

end

end A229079.P5595915120875236148

/-! ## A229079.P15901471102034224837

`A101164(A185284(2*n+3)+n)`
-/

namespace A229079.P15901471102034224837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101164 (A185284 (2 * n + 3) + (n : ℤ)).toNat

end

end A229079.P15901471102034224837

/-! ## A229079.P1031038287302743831

`A101164(n%A304716(3*n+2))`
-/

namespace A229079.P1031038287302743831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101164 (Int.tmod (n : ℤ) (A304716 (3 * n + 2))).toNat

end

end A229079.P1031038287302743831

/-! ## A229079.P14354097552289763433

`A101164(n)^A264615((n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1])`
-/

namespace A229079.P14354097552289763433
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A101164 n : ℚ) ^ (A264615 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1) : ℤ) : ℚ))).toNat : ℤ)

end

end A229079.P14354097552289763433

/-! ## A229079.P15003124800235934816

`A114202(n)-A306210(A100861(n))`
-/

namespace A229079.P15003124800235934816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114202 n - A306210 (A100861 n).toNat

end

end A229079.P15003124800235934816

/-!
# A229080: Primes of the form T(k) + S(k) + 1 where T(k) is the k-th triangular number and S(k) is the k-th square number.

The programs for A229080, there is no canonical definition to state claims against.
-/

/-! ## A229080.P10403463234116588851

`A104249(A229469(n+1))`
-/

namespace A229080.P10403463234116588851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104249 (A229469 (n + 1)).toNat

end

end A229080.P10403463234116588851

/-! ## A229080.P13069531259178696489

`A005449(A229469(n+1))+abs(A162285(n))`
-/

namespace A229080.P13069531259178696489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005449 (A229469 (n + 1)).toNat + |A162285 n|

end

end A229080.P13069531259178696489

/-! ## A229080.P17725057268344367565

`A005449(A229469(n+1))+dr(A087960(n))`
-/

namespace A229080.P17725057268344367565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005449 (A229469 (n + 1)).toNat + (SequenceMachineLib.digitalRoot (A087960 n) : ℤ)

end

end A229080.P17725057268344367565

/-! ## A229080.P115926903576813226

`A005449(A229469(n+1))+A007318(C(2, n+1))`
-/

namespace A229080.P115926903576813226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005449 (A229469 (n + 1)).toNat + A007318 (Nat.choose 2 (n + 1))

end

end A229080.P115926903576813226

/-! ## A229080.P13092580454042040843

`A005449(A229469(n+1))+A000041(C(2, n+2))`
-/

namespace A229080.P13092580454042040843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005449 (A229469 (n + 1)).toNat + A000041 (Nat.choose 2 (n + 2))

end

end A229080.P13092580454042040843

/-! ## A229080.P16442588128989360650

`A039963(A058281(n))+A005449(A229469(n+1))`
-/

namespace A229080.P16442588128989360650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039963 (A058281 n).toNat + A005449 (A229469 (n + 1)).toNat

end

end A229080.P16442588128989360650

/-! ## A229080.P13758153327057949526

`A005449(A229469(n+1))+A001222(A295609(n))`
-/

namespace A229080.P13758153327057949526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005449 (A229469 (n + 1)).toNat + A001222 (A295609 n).toNat

end

end A229080.P13758153327057949526

/-! ## A229080.P11933291241099941457

`A058281(A000096(n))+A005449(A229469(n+1))`
-/

namespace A229080.P11933291241099941457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058281 (A000096 n).toNat + A005449 (A229469 (n + 1)).toNat

end

end A229080.P11933291241099941457

/-! ## A229080.P8145661124975337834

`p?[∑[abs(1-3*n)]]`
-/

namespace A229080.P8145661124975337834
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (3 * n : ℤ)|

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A229080.P8145661124975337834

/-! ## A229080.P3746976953992879383

`or(1, p?[2*n²-(C(n, 2)-1)])`
-/

namespace A229080.P3746976953992879383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n ^ 2 : ℤ) - ((Nat.choose n 2 : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A229080.P3746976953992879383

/-! ## A229080.P3713539651109619428

`or(1, p?[C(n, 2)+n²+n+1])`
-/

namespace A229080.P3713539651109619428
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2 + n ^ 2 + n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A229080.P3713539651109619428

/-! ## A229080.P14308491199220780845

`∏{p}[p?[2*n²-(C(n, 2)-1)], #]`
-/

namespace A229080.P14308491199220780845
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n ^ 2 : ℤ) - ((Nat.choose n 2 : ℤ) - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A229080.P14308491199220780845

/-! ## A229080.P4902860365967794739

`∏{p}[p?[C(n, 2)+n²+n+1], #]`
-/

namespace A229080.P4902860365967794739
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2 + n ^ 2 + n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), p

end

end A229080.P4902860365967794739

/-! ## A229080.P14049224828928769794

`or(1, p?[3*C(n+1, 2)+1-n])`
-/

namespace A229080.P14049224828928769794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * Nat.choose (n + 1) 2 + 1 : ℤ) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A229080.P14049224828928769794

/-! ## A229080.P1959089386760478761

`or(1, p?[2*n+3*C(n, 2)+1])`
-/

namespace A229080.P1959089386760478761
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + (3 * Nat.choose n 2 + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A229080.P1959089386760478761

/-! ## A229080.P13647785269756816598

`or(1, p?[A104249(n)])`
-/

namespace A229080.P13647785269756816598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104249 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A229080.P13647785269756816598

/-! ## A229080.P4335352245020884119

`A104249(eq[1, ∑{e}[A104249(n), #]])`
-/

namespace A229080.P4335352245020884119
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104249 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n).natAbs, Nat.factorization (f3 n).natAbs p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104249 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A229080.P4335352245020884119

/-!
# A229081: Numbers n such that there exists a square m^2 with 3n^2 - n <= m^2 <= 3n^2 + n.

The programs for A229081, the canonical program `A229081.P3807567821886474592` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A229081 has offset 1).

The definition of A229081 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3333 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A229081.P3807567821886474592

`record[gcd(n+1, A022847(A022847(n+1)))]`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A229081

/-- `record[gcd(n+1, A022847(A022847(n+1)))]` -/
def P3807567821886474592.Spec : Prop :=
  ∀ n, (P3807567821886474592.a n : ℤ) = A229081 (n + 1)

theorem P3807567821886474592.correct : P3807567821886474592.Spec := by
  intro n
  simp only [A229081, Nat.add_sub_cancel]

end A229081

/-! ## A229081.P17925585732393843197

`record[A135997(A022847(n+1))]`
-/

namespace A229081.P17925585732393843197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135997 (A022847 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A229081.P17925585732393843197

namespace A229081

/-- `record[A135997(A022847(n+1))]` -/
def P17925585732393843197.Spec : Prop :=
  ∀ n, P17925585732393843197.a n = A229081 (n + 1)

end A229081

/-! ## A229081.P13712372238056606487

`record[A135997(A184638(n+1)+1)]`
-/

namespace A229081.P13712372238056606487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135997 (A184638 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A229081.P13712372238056606487

namespace A229081

/-- `record[A135997(A184638(n+1)+1)]` -/
def P13712372238056606487.Spec : Prop :=
  ∀ n, P13712372238056606487.a n = A229081 (n + 1)

end A229081

/-! ## A229081.P8981527708088706922

`record[A117910(A184638(n+1)-1)]`
-/

namespace A229081.P8981527708088706922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117910 (A184638 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A229081.P8981527708088706922

namespace A229081

/-- `record[A117910(A184638(n+1)-1)]` -/
def P8981527708088706922.Spec : Prop :=
  ∀ n, P8981527708088706922.a n = A229081 (n + 1)

end A229081

/-! ## A229081.P10076356675794474678

`record[A078898(A004273(A184638(n+1)))]`
-/

namespace A229081.P10076356675794474678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (A004273 (A184638 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A229081.P10076356675794474678

namespace A229081

/-- `record[A078898(A004273(A184638(n+1)))]` -/
def P10076356675794474678.Spec : Prop :=
  ∀ n, P10076356675794474678.a n = A229081 (n + 1)

end A229081

/-!
# A229083: Numbers k such that the distance between the k-th triangular number and the nearest square is at most 1.

The programs for A229083, there is no canonical definition to state claims against.
-/

/-! ## A229083.P16411647026377576986

`∑[A097564(A047227(n+1))]`
-/

namespace A229083.P16411647026377576986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097564 (A047227 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A229083.P16411647026377576986

/-! ## A229083.P3636898317371805658

`∑[A097564(A106249(3*n))]`
-/

namespace A229083.P3636898317371805658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097564 (A106249 (3 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A229083.P3636898317371805658

/-! ## A229083.P15650068804539398701

`∑[A097564(A047246(n+1)+1)]`
-/

namespace A229083.P15650068804539398701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097564 (A047246 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A229083.P15650068804539398701

/-! ## A229083.P11856226497455213151

`a(n-1)+A097564(A047227(n+1))+A000007(n)` with `a(0)=1`
-/

namespace A229083.P11856226497455213151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A097564 (A047227 (n + 1)).toNat + A000007 n)

end

end A229083.P11856226497455213151

/-! ## A229083.P14960045386269659576

`eq[A229118(n+1)², A229118(n+1)]+1`
-/

namespace A229083.P14960045386269659576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229118 (n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229118 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A229083.P14960045386269659576

/-!
# A229084: Lexicographically earliest sequence of distinct positive integers written in base 2 such that the concatenation of the terms equals the concatenation of the positive integers, and no term appears in its natural position.

The programs for A229084, there is no canonical definition to state claims against.
-/

/-! ## A229084.P7975233223300180077

`A007088(A229085(n+1))`
-/

namespace A229084.P7975233223300180077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A229085 (n + 1)).toNat

end

end A229084.P7975233223300180077

/-! ## A229084.P16617306806578817054

`A229085(2*n+1-n)+A228071(A229085(n+1))`
-/

namespace A229084.P16617306806578817054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229085 (2 * n + 1 - n) + A228071 (A229085 (n + 1)).toNat

end

end A229084.P16617306806578817054

/-! ## A229084.P4749103014179102238

`A185544(2*A229085(n+1))`
-/

namespace A229084.P4749103014179102238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A229085 (n + 1)).toNat

end

end A229084.P4749103014179102238

/-! ## A229084.P15053273489608206453

`A007089(A005836(A229085(n+1)+1))`
-/

namespace A229084.P15053273489608206453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 (A005836 (A229085 (n + 1) + 1).toNat).toNat

end

end A229084.P15053273489608206453

/-!
# A229086: Numbers k such that the concatenation of the divisors of k written in base 2 is a palindromic number.

The programs for A229086, the canonical program `A229086.P178086772296195941` is in `Seq.B008.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A229086 has offset 1).

The definition of A229086 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 130 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A229086.P14660280356067915444

`A161387((n-1)/A001222(or(2, a(n-1)))+1)` with `a(0)=1`
-/

namespace A229086.P14660280356067915444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A161387 (SequenceMachineLib.roundAway (((n : ℤ) - 1 : ℚ) / (A001222 (Int.lor 2 (a (n - 1))).toNat : ℚ) + 1)).toNat

end

end A229086.P14660280356067915444

namespace A229086

/-- `A161387((n-1)/A001222(or(2, a(n-1)))+1)` -/
def P14660280356067915444.Spec : Prop :=
  ∀ n, P14660280356067915444.a n = A229086 (n + 1)

end A229086

/-! ## A229086.P15462659755480443049

`record[A006530(2*A006995(n+1)+1)]`
-/

namespace A229086.P15462659755480443049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (2 * A006995 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A229086.P15462659755480443049

namespace A229086

/-- `record[A006530(2*A006995(n+1)+1)]` -/
def P15462659755480443049.Spec : Prop :=
  ∀ n, P15462659755480443049.a n = A229086 (n + 1)

end A229086

/-! ## A229086.P5547055578360210261

`record[A020639(2*A006995(n+1)+1)]`
-/

namespace A229086.P5547055578360210261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (2 * A006995 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A229086.P5547055578360210261

namespace A229086

/-- `record[A020639(2*A006995(n+1)+1)]` -/
def P5547055578360210261.Spec : Prop :=
  ∀ n, P5547055578360210261.a n = A229086 (n + 1)

end A229086

/-! ## A229086.P9757812890765899384

`A020639(p?[A281379(n+1)+1]-C(2, n+2))`
-/

namespace A229086.P9757812890765899384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281379 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - (Nat.choose 2 (n + 2) : ℤ)).toNat

end

end A229086.P9757812890765899384

namespace A229086

/-- `A020639(p?[A281379(n+1)+1]-C(2, n+2))` -/
def P9757812890765899384.Spec : Prop :=
  ∀ n, P9757812890765899384.a n = A229086 (n + 1)

end A229086

/-! ## A229086.P178086772296195941

`A006530(p?[A281379(n+1)+1]-A000007(n))`

The canonical program, it is in `Seq.B008.C001`.
-/

namespace A229086

/-- `A006530(p?[A281379(n+1)+1]-A000007(n))` -/
def P178086772296195941.Spec : Prop :=
  ∀ n, P178086772296195941.a n = A229086 (n + 1)

theorem P178086772296195941.correct : P178086772296195941.Spec := by
  intro n
  simp only [A229086, Nat.add_sub_cancel]

end A229086

/-! ## A229086.P11704961900712297297

`A020639(p?[A281379(n+1)+1]-A000007(n))`
-/

namespace A229086.P11704961900712297297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281379 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - A000007 n).toNat

end

end A229086.P11704961900712297297

namespace A229086

/-- `A020639(p?[A281379(n+1)+1]-A000007(n))` -/
def P11704961900712297297.Spec : Prop :=
  ∀ n, P11704961900712297297.a n = A229086 (n + 1)

end A229086

/-! ## A229086.P16766532787213557640

`record[A020639(A006995(n+1)+A006995(n+1)+1)]`
-/

namespace A229086.P16766532787213557640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A006995 (n + 1) + (A006995 (n + 1) + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A229086.P16766532787213557640

namespace A229086

/-- `record[A020639(A006995(n+1)+A006995(n+1)+1)]` -/
def P16766532787213557640.Spec : Prop :=
  ∀ n, P16766532787213557640.a n = A229086 (n + 1)

end A229086

/-! ## A229086.P15400098146614974994

`A014963(a(n-1)+23)*p?[A281379(n+1)+1]` with `a(0)=1`
-/

namespace A229086.P15400098146614974994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281379 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A014963 (a (n - 1) + 23).toNat * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A229086.P15400098146614974994

namespace A229086

/-- `A014963(a(n-1)+23)*p?[A281379(n+1)+1]` -/
def P15400098146614974994.Spec : Prop :=
  ∀ n, P15400098146614974994.a n = A229086 (n + 1)

end A229086

/-! ## A229086.P9908953706708150218

`record[A014963(2*A006995(n+1)+1)]`
-/

namespace A229086.P9908953706708150218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (2 * A006995 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A229086.P9908953706708150218

namespace A229086

/-- `record[A014963(2*A006995(n+1)+1)]` -/
def P9908953706708150218.Spec : Prop :=
  ∀ n, P9908953706708150218.a n = A229086 (n + 1)

end A229086

/-! ## A229086.P15392606130424551705

`record[A014963(2*lt[A303534(n), 1]+1)]`
-/

namespace A229086.P15392606130424551705
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303534 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (2 * SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A229086.P15392606130424551705

namespace A229086

/-- `record[A014963(2*lt[A303534(n), 1]+1)]` -/
def P15392606130424551705.Spec : Prop :=
  ∀ n, P15392606130424551705.a n = A229086 (n + 1)

end A229086

/-!
# A229087: a(n) = sigma(n) mod n - antisigma(n) mod n, where sigma(n) = A000203(n) = sum of divisor of n, antisigma(n) = A024816(n) = sum of non-divisors of n.

The programs for A229087, the canonical program `A229087.P10345629012060209210` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A229087 has offset 1).

The definition of A229087 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A054024, A229110, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A229087.P10345629012060209210

`A054024(n+1)-A229110(n+1)`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A229087

/-- `A054024(n+1)-A229110(n+1)` -/
def P10345629012060209210.Spec : Prop :=
  ∀ n, P10345629012060209210.a n = A229087 (n + 1)

theorem P10345629012060209210.correct : P10345629012060209210.Spec := by
  intro n
  simp only [A229087, Nat.add_sub_cancel]

end A229087

/-! ## A229087.P8710602963884323659

`A054024(n+1)-A024816(n+1)%(n+1)`
-/

namespace A229087.P8710602963884323659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054024 (n + 1) - Int.tmod (A024816 (n + 1)) (n + 1 : ℤ)

end

end A229087.P8710602963884323659

namespace A229087

/-- `A054024(n+1)-A024816(n+1)%(n+1)` -/
def P8710602963884323659.Spec : Prop :=
  ∀ n, P8710602963884323659.a n = A229087 (n + 1)

end A229087

/-! ## A229087.P18374981354852514232

`A000203(n+1)%(n+1)-A229110(n+1)`
-/

namespace A229087.P18374981354852514232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000203 (n + 1)) (n + 1 : ℤ) - A229110 (n + 1)

end

end A229087.P18374981354852514232

namespace A229087

/-- `A000203(n+1)%(n+1)-A229110(n+1)` -/
def P18374981354852514232.Spec : Prop :=
  ∀ n, P18374981354852514232.a n = A229087 (n + 1)

end A229087

/-! ## A229087.P18432898883182592099

`A152211(n+1)%(n+1)-A229110(n+1)`
-/

namespace A229087.P18432898883182592099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A152211 (n + 1)) (n + 1 : ℤ) - A229110 (n + 1)

end

end A229087.P18432898883182592099

namespace A229087

/-- `A152211(n+1)%(n+1)-A229110(n+1)` -/
def P18432898883182592099.Spec : Prop :=
  ∀ n, P18432898883182592099.a n = A229087 (n + 1)

end A229087

/-! ## A229087.P8448329646817677264

`A155085(n+1)%(n+1)-A229110(n+1)`
-/

namespace A229087.P8448329646817677264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A155085 (n + 1)) (n + 1 : ℤ) - A229110 (n + 1)

end

end A229087.P8448329646817677264

namespace A229087

/-- `A155085(n+1)%(n+1)-A229110(n+1)` -/
def P8448329646817677264.Spec : Prop :=
  ∀ n, P8448329646817677264.a n = A229087 (n + 1)

end A229087

/-! ## A229087.P7009828528960358330

`(A064987(n+1)/(n+1))%(n+1)-A229110(n+1)`
-/

namespace A229087.P7009828528960358330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A064987 (n + 1) : ℚ) / (n + 1 : ℚ))) (n + 1 : ℤ) - A229110 (n + 1)

end

end A229087.P7009828528960358330

namespace A229087

/-- `(A064987(n+1)/(n+1))%(n+1)-A229110(n+1)` -/
def P7009828528960358330.Spec : Prop :=
  ∀ n, P7009828528960358330.a n = A229087 (n + 1)

end A229087

/-! ## A229087.P10507936098586571092

`A009194(n+1)*A272008(n+1)-A229110(n+1)`
-/

namespace A229087.P10507936098586571092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009194 (n + 1) * A272008 (n + 1) - A229110 (n + 1)

end

end A229087.P10507936098586571092

namespace A229087

/-- `A009194(n+1)*A272008(n+1)-A229110(n+1)` -/
def P10507936098586571092.Spec : Prop :=
  ∀ n, P10507936098586571092.a n = A229087 (n + 1)

end A229087

/-! ## A229087.P10063622523128337080

`(A000217(n+1)-A024816(n+1))%(n+1)-A229110(n+1)`
-/

namespace A229087.P10063622523128337080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000217 (n + 1) - A024816 (n + 1)) (n + 1 : ℤ) - A229110 (n + 1)

end

end A229087.P10063622523128337080

namespace A229087

/-- `(A000217(n+1)-A024816(n+1))%(n+1)-A229110(n+1)` -/
def P10063622523128337080.Spec : Prop :=
  ∀ n, P10063622523128337080.a n = A229087 (n + 1)

end A229087

/-! ## A229087.P14247007100149092577

`A001065(n+1)%A016724(n)-A229110(n+1)`
-/

namespace A229087.P14247007100149092577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001065 (n + 1)) (A016724 n) - A229110 (n + 1)

end

end A229087.P14247007100149092577

namespace A229087

/-- `A001065(n+1)%A016724(n)-A229110(n+1)` -/
def P14247007100149092577.Spec : Prop :=
  ∀ n, P14247007100149092577.a n = A229087 (n + 1)

end A229087

/-!
# A229088: Numbers k such that sigma(k) mod k = antisigma(k) mod k, where sigma(k) = A000203(k) = sum of divisors of k, antisigma(k) = A024816(k) = sum of non-divisors of k.

The programs for A229088, there is no canonical definition to state claims against.
-/

/-! ## A229088.P11616253722596249123

`filter[A227303(n+1), A194661(#)]`
-/

namespace A229088.P11616253722596249123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227303 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A194661 (f1 j).toNat = 1) n)

end

end A229088.P11616253722596249123

/-! ## A229088.P11985698507400983857

`∪[A218404(n+2), A063647(A028948(2*(n+1)))]`
-/

namespace A229088.P11985698507400983857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218404 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063647 (A028948 (2 * (n + 1))).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A229088.P11985698507400983857

/-!
# A229089: Numbers n such that sigma(n) mod n < antisigma(n) mod n, where sigma(n) = A000203(n) = sum of divisor of n, antisigma(n) = A024816(n) = sum of non-divisors of n.

The programs for A229089, the canonical program `A229089.P7074531385501001204` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A229089 has offset 1).

The definition of A229089 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7170 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A229089.P7074531385501001204

`lt[A229087(n+1), 0]+1`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A229089

/-- `lt[A229087(n+1), 0]+1` -/
def P7074531385501001204.Spec : Prop :=
  ∀ n, (P7074531385501001204.a n : ℤ) = A229089 (n + 1)

theorem P7074531385501001204.correct : P7074531385501001204.Spec := by
  intro n
  simp only [A229089, Nat.add_sub_cancel]

end A229089

/-! ## A229089.P14480026277678732589

`A020725(lt[A229087(n+1), 0])`
-/

namespace A229089.P14480026277678732589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229087 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A229089.P14480026277678732589

namespace A229089

/-- `A020725(lt[A229087(n+1), 0])` -/
def P14480026277678732589.Spec : Prop :=
  ∀ n, P14480026277678732589.a n = A229089 (n + 1)

end A229089

/-! ## A229089.P11252773460256100413

`lt[A054024(n+1), A229110(n+1)]+1`
-/

namespace A229089.P11252773460256100413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054024 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229110 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A229089.P11252773460256100413

namespace A229089

/-- `lt[A054024(n+1), A229110(n+1)]+1` -/
def P11252773460256100413.Spec : Prop :=
  ∀ n, (P11252773460256100413.a n : ℤ) = A229089 (n + 1)

end A229089

/-! ## A229089.P12242208158565293870

`A020725(lt[∑{d}[n+1, #]%(n+1), A229110(n+1)])`
-/

namespace A229089.P12242208158565293870
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ d ∈ Nat.divisors (f2 n), d) % (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229110 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f3 j) n)

end

end A229089.P12242208158565293870

namespace A229089

/-- `A020725(lt[∑{d}[n+1, #]%(n+1), A229110(n+1)])` -/
def P12242208158565293870.Spec : Prop :=
  ∀ n, P12242208158565293870.a n = A229089 (n + 1)

end A229089

/-! ## A229089.P4373766879902505837

`A020725(lt[A054024(n+1), A229110(n+1)])`
-/

namespace A229089.P4373766879902505837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054024 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229110 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A229089.P4373766879902505837

namespace A229089

/-- `A020725(lt[A054024(n+1), A229110(n+1)])` -/
def P4373766879902505837.Spec : Prop :=
  ∀ n, P4373766879902505837.a n = A229089 (n + 1)

end A229089

/-! ## A229089.P1812418549392843267

`A020725(lt[A000203(n+1)%(n+1), A229110(n+1)])`
-/

namespace A229089.P1812418549392843267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000203 (n + 1)) (n + 1 : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229110 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A229089.P1812418549392843267

namespace A229089

/-- `A020725(lt[A000203(n+1)%(n+1), A229110(n+1)])` -/
def P1812418549392843267.Spec : Prop :=
  ∀ n, P1812418549392843267.a n = A229089 (n + 1)

end A229089

/-! ## A229089.P7625488597455186757

`A020725(lt[A152211(n+1)%(n+1), A229110(n+1)])`
-/

namespace A229089.P7625488597455186757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A152211 (n + 1)) (n + 1 : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229110 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A229089.P7625488597455186757

namespace A229089

/-- `A020725(lt[A152211(n+1)%(n+1), A229110(n+1)])` -/
def P7625488597455186757.Spec : Prop :=
  ∀ n, P7625488597455186757.a n = A229089 (n + 1)

end A229089

/-! ## A229089.P6073749150435007354

`A020725(lt[A173455(n+1)%(n+1), A229110(n+1)])`
-/

namespace A229089.P6073749150435007354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A173455 (n + 1)) (n + 1 : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229110 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A229089.P6073749150435007354

namespace A229089

/-- `A020725(lt[A173455(n+1)%(n+1), A229110(n+1)])` -/
def P6073749150435007354.Spec : Prop :=
  ∀ n, P6073749150435007354.a n = A229089 (n + 1)

end A229089

/-! ## A229089.P1388390736985219583

`A020725(lt[A224880(n+1)%(n+1), A229110(n+1)])`
-/

namespace A229089.P1388390736985219583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A224880 (n + 1)) (n + 1 : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229110 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A229089.P1388390736985219583

namespace A229089

/-- `A020725(lt[A224880(n+1)%(n+1), A229110(n+1)])` -/
def P1388390736985219583.Spec : Prop :=
  ∀ n, P1388390736985219583.a n = A229089 (n + 1)

end A229089

/-! ## A229089.P14793385329048475069

`A020725(lt[A326065(2*(n+1))%(n+1), A229110(n+1)])`
-/

namespace A229089.P14793385329048475069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A326065 (2 * (n + 1))) (n + 1 : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229110 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A229089.P14793385329048475069

namespace A229089

/-- `A020725(lt[A326065(2*(n+1))%(n+1), A229110(n+1)])` -/
def P14793385329048475069.Spec : Prop :=
  ∀ n, P14793385329048475069.a n = A229089 (n + 1)

end A229089

/-! ## A229089.P6519001611050655004

`lt[A229087(A233583(n+1)), 0]`
-/

namespace A229089.P6519001611050655004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229087 (A233583 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A229089.P6519001611050655004

namespace A229089

/-- `lt[A229087(A233583(n+1)), 0]` -/
def P6519001611050655004.Spec : Prop :=
  ∀ n, (P6519001611050655004.a n : ℤ) = A229089 (n + 1)

end A229089

/-!
# A229090: Numbers n such that sigma(n) mod n > antisigma(n) mod n, where sigma(n) = A000203(n) = sum of divisors of n, antisigma(n) = A024816(n) = sum of non-divisors of n.

The programs for A229090, the canonical program `A229090.P2897396179284103415` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A229090 has offset 1).

The definition of A229090 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2824 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A229090.P2897396179284103415

`lt[0, A229087(n+1)]+1`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A229090

/-- `lt[0, A229087(n+1)]+1` -/
def P2897396179284103415.Spec : Prop :=
  ∀ n, (P2897396179284103415.a n : ℤ) = A229090 (n + 1)

theorem P2897396179284103415.correct : P2897396179284103415.Spec := by
  intro n
  simp only [A229090, Nat.add_sub_cancel]

end A229090

/-! ## A229090.P15893163948437232602

`A020725(lt[0, A229087(n+1)])`
-/

namespace A229090.P15893163948437232602
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229087 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A229090.P15893163948437232602

namespace A229090

/-- `A020725(lt[0, A229087(n+1)])` -/
def P15893163948437232602.Spec : Prop :=
  ∀ n, P15893163948437232602.a n = A229090 (n + 1)

end A229090

/-! ## A229090.P8932526248603791084

`lt[A229110(n+1), A054024(n+1)]+1`
-/

namespace A229090.P8932526248603791084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229110 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054024 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A229090.P8932526248603791084

namespace A229090

/-- `lt[A229110(n+1), A054024(n+1)]+1` -/
def P8932526248603791084.Spec : Prop :=
  ∀ n, (P8932526248603791084.a n : ℤ) = A229090 (n + 1)

end A229090

/-! ## A229090.P12712736153260040496

`A020725(lt[A229110(n+1), A054024(n+1)])`
-/

namespace A229090.P12712736153260040496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229110 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054024 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A229090.P12712736153260040496

namespace A229090

/-- `A020725(lt[A229110(n+1), A054024(n+1)])` -/
def P12712736153260040496.Spec : Prop :=
  ∀ n, P12712736153260040496.a n = A229090 (n + 1)

end A229090

/-! ## A229090.P6975808601350337964

`A020725(lt[A229110(n+1), A000203(n+1)%(n+1)])`
-/

namespace A229090.P6975808601350337964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229110 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000203 (n + 1)) (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A229090.P6975808601350337964

namespace A229090

/-- `A020725(lt[A229110(n+1), A000203(n+1)%(n+1)])` -/
def P6975808601350337964.Spec : Prop :=
  ∀ n, P6975808601350337964.a n = A229090 (n + 1)

end A229090

/-! ## A229090.P17637683968289267445

`A020725(lt[A229110(n+1), A152211(n+1)%(n+1)])`
-/

namespace A229090.P17637683968289267445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229110 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A152211 (n + 1)) (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A229090.P17637683968289267445

namespace A229090

/-- `A020725(lt[A229110(n+1), A152211(n+1)%(n+1)])` -/
def P17637683968289267445.Spec : Prop :=
  ∀ n, P17637683968289267445.a n = A229090 (n + 1)

end A229090

/-! ## A229090.P13825800930041041506

`A020725(lt[A229110(n+1), A173455(n+1)%(n+1)])`
-/

namespace A229090.P13825800930041041506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229110 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A173455 (n + 1)) (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A229090.P13825800930041041506

namespace A229090

/-- `A020725(lt[A229110(n+1), A173455(n+1)%(n+1)])` -/
def P13825800930041041506.Spec : Prop :=
  ∀ n, P13825800930041041506.a n = A229090 (n + 1)

end A229090

/-! ## A229090.P7056361167387819126

`A020725(lt[A229110(n+1), A224880(n+1)%(n+1)])`
-/

namespace A229090.P7056361167387819126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229110 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A224880 (n + 1)) (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A229090.P7056361167387819126

namespace A229090

/-- `A020725(lt[A229110(n+1), A224880(n+1)%(n+1)])` -/
def P7056361167387819126.Spec : Prop :=
  ∀ n, P7056361167387819126.a n = A229090 (n + 1)

end A229090

/-! ## A229090.P12222364649416355792

`A020725(lt[0, A054024(n+1)-A024816(n+1)%(n+1)])`
-/

namespace A229090.P12222364649416355792
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054024 (n + 1) - Int.tmod (A024816 (n + 1)) (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A229090.P12222364649416355792

namespace A229090

/-- `A020725(lt[0, A054024(n+1)-A024816(n+1)%(n+1)])` -/
def P12222364649416355792.Spec : Prop :=
  ∀ n, P12222364649416355792.a n = A229090 (n + 1)

end A229090

/-!
# A229091: a(n) = ((-1)^n*(2^n-1) + Sum_{k>=1} (k^n*(k^2+k-1)/(k+2)!))/exp(1).

The programs for A229091, there is no canonical definition to state claims against.
-/

/-! ## A229091.P11710143689138159541

`A126617(n+3)+Δ[A126617(n+1)]`
-/

namespace A229091.P11710143689138159541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126617 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126617 (n + 3) + (f1 (n + 1) - f1 n)

end

end A229091.P11710143689138159541

/-! ## A229091.P7581782157527614809

`A133825(A002360(n))-1`
-/

namespace A229091.P7581782157527614809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133825 (A002360 n).toNat - 1

end

end A229091.P7581782157527614809

/-!
# A229093: The clubs patterns appearing in n X n coins.

The programs for A229093, the canonical program `A229093.P15594280202347650405` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A229093 has offset 0).

The definition of A229093 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A229093.P15594280202347650405

`ceil(floor(n²²/3)/((n+1)²+3))`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A229093

/-- `ceil(floor(n²²/3)/((n+1)²+3))` -/
def P15594280202347650405.Spec : Prop :=
  ∀ n, P15594280202347650405.a n = A229093 n

theorem P15594280202347650405.correct : P15594280202347650405.Spec := by
  intro n
  simp only [A229093]

end A229093

/-! ## A229093.P15383303668148657770

`∑[A004523(char[1]+n)]-A274616(n)`
-/

namespace A229093.P15383303668148657770
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004523 ((if ∃ j, f2 j = n then 1 else 0) + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A274616 n

end

end A229093.P15383303668148657770

namespace A229093

/-- `∑[A004523(char[1]+n)]-A274616(n)` -/
def P15383303668148657770.Spec : Prop :=
  ∀ n, P15383303668148657770.a n = A229093 n

end A229093

/-! ## A229093.P1740573823391854837

`char[4]+A097921(n+1)-(n+1)`
-/

namespace A229093.P1740573823391854837
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + (A097921 (n + 1) - (n + 1 : ℤ))

end

end A229093.P1740573823391854837

namespace A229093

/-- `char[4]+A097921(n+1)-(n+1)` -/
def P1740573823391854837.Spec : Prop :=
  ∀ n, P1740573823391854837.a n = A229093 n

end A229093

/-! ## A229093.P6783747279864394370

`∑[A110654(A107750(n))]-A274616(n)`
-/

namespace A229093.P6783747279864394370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A107750 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A274616 n

end

end A229093.P6783747279864394370

namespace A229093

/-- `∑[A110654(A107750(n))]-A274616(n)` -/
def P6783747279864394370.Spec : Prop :=
  ∀ n, P6783747279864394370.a n = A229093 n

end A229093

/-! ## A229093.P16391675211922218811

`A274616(A238531(n))-A065033(A274616(n))`
-/

namespace A229093.P16391675211922218811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274616 (A238531 n).toNat - A065033 (A274616 n).toNat

end

end A229093.P16391675211922218811

namespace A229093

/-- `A274616(A238531(n))-A065033(A274616(n))` -/
def P16391675211922218811.Spec : Prop :=
  ∀ n, P16391675211922218811.a n = A229093 n

end A229093

/-! ## A229093.P2193156546092851755

`A274616(A089071(n+1))-A065033(A274616(n))`
-/

namespace A229093.P2193156546092851755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274616 (A089071 (n + 1)).toNat - A065033 (A274616 n).toNat

end

end A229093.P2193156546092851755

namespace A229093

/-- `A274616(A089071(n+1))-A065033(A274616(n))` -/
def P2193156546092851755.Spec : Prop :=
  ∀ n, P2193156546092851755.a n = A229093 n

end A229093

/-! ## A229093.P3106887736263274566

`A025480(A053799(n)-2*A274616(n))`
-/

namespace A229093.P3106887736263274566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A053799 n - 2 * A274616 n).toNat

end

end A229093.P3106887736263274566

namespace A229093

/-- `A025480(A053799(n)-2*A274616(n))` -/
def P3106887736263274566.Spec : Prop :=
  ∀ n, P3106887736263274566.a n = A229093 n

end A229093

/-! ## A229093.P15785705918535888654

`A025480(A053799(n)-A274616(n)-A274616(n))`
-/

namespace A229093.P15785705918535888654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A053799 n - A274616 n - A274616 n).toNat

end

end A229093.P15785705918535888654

namespace A229093

/-- `A025480(A053799(n)-A274616(n)-A274616(n))` -/
def P15785705918535888654.Spec : Prop :=
  ∀ n, P15785705918535888654.a n = A229093 n

end A229093

/-! ## A229093.P16946484466568776861

`A025480(A053799(n))-A274616(n)`
-/

namespace A229093.P16946484466568776861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A053799 n).toNat - A274616 n

end

end A229093.P16946484466568776861

namespace A229093

/-- `A025480(A053799(n))-A274616(n)` -/
def P16946484466568776861.Spec : Prop :=
  ∀ n, P16946484466568776861.a n = A229093 n

end A229093

/-! ## A229093.P16653256254844192297

`A008615(A005893(n))-A274616(n)`
-/

namespace A229093.P16653256254844192297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (A005893 n).toNat - A274616 n

end

end A229093.P16653256254844192297

namespace A229093

/-- `A008615(A005893(n))-A274616(n)` -/
def P16653256254844192297.Spec : Prop :=
  ∀ n, P16653256254844192297.a n = A229093 n

end A229093

/-!
# A229096: Triangle read by rows, whose row sums using Euler numbers are the unsigned even-indexed Bernoulli numbers (numerators).

The programs for A229096, there is no canonical definition to state claims against.
-/

/-! ## A229096.P688761166765556000

`A102582(A173424(n))`
-/

namespace A229096.P688761166765556000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102582 (A173424 n).toNat

end

end A229096.P688761166765556000

/-! ## A229096.P4251101708800765149

`A121289(A362582(n))`
-/

namespace A229096.P4251101708800765149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121289 (A362582 n).toNat

end

end A229096.P4251101708800765149

/-! ## A229096.P12239772358218138991

`A120868(A098361(n)²)`
-/

namespace A229096.P12239772358218138991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120868 (A098361 n ^ 2).toNat

end

end A229096.P12239772358218138991

/-! ## A229096.P13404041981381090945

`A325399(A098361(n)²)`
-/

namespace A229096.P13404041981381090945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325399 (A098361 n ^ 2).toNat

end

end A229096.P13404041981381090945

/-! ## A229096.P1001632263843984189

`A355647(A098361(n)²)`
-/

namespace A229096.P1001632263843984189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355647 (A098361 n ^ 2).toNat

end

end A229096.P1001632263843984189

/-!
# A229099: Decimal expansion of 1 - 6/Pi^2.

The programs for A229099, there is no canonical definition to state claims against.
-/

/-! ## A229099.P14953250038199375397

`9-A059956(n)`
-/

namespace A229099.P14953250038199375397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A059956 n

end

end A229099.P14953250038199375397

