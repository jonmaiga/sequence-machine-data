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
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C035
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
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C011
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B002.C007
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
import Seq.B007.C000
import Seq.B008.C000
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A100001: Number of self-dual combinatorial configurations of type (n_3).

The programs for A100001, there is no canonical definition to state claims against.
-/

/-! ## A100001.P14527884606060408930

`A098852(A279344(n))+A098702(n+1)`
-/

namespace A100001.P14527884606060408930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098852 (A279344 n).toNat + A098702 (n + 1)

end

end A100001.P14527884606060408930

/-! ## A100001.P18079426150212107750

`A098702(n+1)+A001403(A214501(n+1))`
-/

namespace A100001.P18079426150212107750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098702 (n + 1) + A001403 (A214501 (n + 1)).toNat

end

end A100001.P18079426150212107750

/-! ## A100001.P10187387065717563183

`A098702(n+1)+A065744(n)^A131537(n+1)`
-/

namespace A100001.P10187387065717563183
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A098702 (n + 1) : ℚ) + (A065744 n : ℚ) ^ (A131537 (n + 1) : ℤ)

end

end A100001.P10187387065717563183

/-! ## A100001.P13825118243567880998

`A098702(n+1)+A010060(A052762(n))`
-/

namespace A100001.P13825118243567880998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098702 (n + 1) + A010060 (A052762 n).toNat

end

end A100001.P13825118243567880998

/-! ## A100001.P5004451303955927779

`A185213(n)+A098702(A044915(n+1))`
-/

namespace A100001.P5004451303955927779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185213 n + A098702 (A044915 (n + 1)).toNat

end

end A100001.P5004451303955927779

/-!
# A100002: Start with a sequence of 1's, then replace every other 1 with a 2; then replace every third of the remaining 1's with a 3 and every third of the remaining 2's with a 3; then replace every fourth remaining 1, 2 or 3 with a 4; and so on. The limiting sequence is shown here.

The programs for A100002, there is no canonical definition to state claims against.
-/

/-! ## A100002.P11074467130828057141

`A025907(2*n+1)+A004738(A187829(n+1))`
-/

namespace A100002.P11074467130828057141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025907 (2 * n + 1) + A004738 (A187829 (n + 1)).toNat

end

end A100002.P11074467130828057141

/-! ## A100002.P1768109807095918622

`A025907(A187829(n+1)+n)+A004738(n+1)`
-/

namespace A100002.P1768109807095918622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025907 (A187829 (n + 1) + (n : ℤ)).toNat + A004738 (n + 1)

end

end A100002.P1768109807095918622

/-! ## A100002.P13345804599096374905

`A238966(A167227(3*n+2)+1)`
-/

namespace A100002.P13345804599096374905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238966 (A167227 (3 * n + 2) + 1).toNat

end

end A100002.P13345804599096374905

/-! ## A100002.P3963604885127301808

`A358134(lt[A358156(2*n+1), A358153(n+1)])`
-/

namespace A100002.P3963604885127301808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358156 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358153 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358134 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A100002.P3963604885127301808

/-! ## A100002.P3267906541145522099

`A126306(A345717(3*(n+1))+A293815(3*n+1))`
-/

namespace A100002.P3267906541145522099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126306 (A345717 (3 * (n + 1)) + A293815 (3 * n + 1)).toNat

end

end A100002.P3267906541145522099

/-!
# A100003: Prime numbers p such that the concatenation of all odd primes up through p in decreasing order is prime.

The programs for A100003, there is no canonical definition to state claims against.
-/

/-! ## A100003.P7658624369085986417

`A000040(A099073(n+1))`
-/

namespace A100003.P7658624369085986417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A099073 (n + 1)).toNat

end

end A100003.P7658624369085986417

/-!
# A100004: Theta series of Barnes-Wall lattice in 128 dimensions.

The programs for A100004, there is no canonical definition to state claims against.
-/

/-! ## A100004.P17500210530572042343

`A103936(n)*A348986(A103968(n+1))`
-/

namespace A100004.P17500210530572042343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103936 n * A348986 (A103968 (n + 1)).toNat

end

end A100004.P17500210530572042343

/-!
# A100005: Bisection of A001414.

The programs for A100005, the canonical program `A100005.P15980108924789768817` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A100005 has offset 1).

The definition of A100005 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A100005.P15980108924789768817

`∑{p}[2*n+1, #*val(2*n+1, #)]`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A100005

/-- `∑{p}[2*n+1, #*val(2*n+1, #)]` -/
def P15980108924789768817.Spec : Prop :=
  ∀ n, (P15980108924789768817.a n : ℤ) = A100005 (n + 1)

theorem P15980108924789768817.correct : P15980108924789768817.Spec := by
  intro n
  simp only [A100005, Nat.add_sub_cancel]

end A100005

/-! ## A100005.P4156787547446721091

`A001414(Δ[n²])`
-/

namespace A100005.P4156787547446721091
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A100005.P4156787547446721091

namespace A100005

/-- `A001414(Δ[n²])` -/
def P4156787547446721091.Spec : Prop :=
  ∀ n, P4156787547446721091.a n = A100005 (n + 1)

end A100005

/-! ## A100005.P13930413210878007541

`A001414(4*n+2)-2`
-/

namespace A100005.P13930413210878007541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (4 * n + 2) - 2

end

end A100005.P13930413210878007541

namespace A100005

/-- `A001414(4*n+2)-2` -/
def P13930413210878007541.Spec : Prop :=
  ∀ n, P13930413210878007541.a n = A100005 (n + 1)

end A100005

/-! ## A100005.P5493142566559372615

`and(-1, A001414(2*n+1))`
-/

namespace A100005.P5493142566559372615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A001414 (2 * n + 1))

end

end A100005.P5493142566559372615

namespace A100005

/-- `and(-1, A001414(2*n+1))` -/
def P5493142566559372615.Spec : Prop :=
  ∀ n, P5493142566559372615.a n = A100005 (n + 1)

end A100005

/-! ## A100005.P12907118725007585282

`A014682(2*A001414(2*n+1))`
-/

namespace A100005.P12907118725007585282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (2 * A001414 (2 * n + 1)).toNat

end

end A100005.P12907118725007585282

namespace A100005

/-- `A014682(2*A001414(2*n+1))` -/
def P12907118725007585282.Spec : Prop :=
  ∀ n, P12907118725007585282.a n = A100005 (n + 1)

end A100005

/-! ## A100005.P16124187443433992186

`A001414(2*n+1)/A033999(n)²`
-/

namespace A100005.P16124187443433992186
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001414 (2 * n + 1) : ℚ) / (A033999 n ^ 2 : ℚ)

end

end A100005.P16124187443433992186

namespace A100005

/-- `A001414(2*n+1)/A033999(n)²` -/
def P16124187443433992186.Spec : Prop :=
  ∀ n, P16124187443433992186.a n = (A100005 (n + 1) : ℚ)

end A100005

/-! ## A100005.P15874029619261827828

`A280292(2*n+1)+A008472(2*n+1)`
-/

namespace A100005.P15874029619261827828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280292 (2 * n + 1) + A008472 (2 * n + 1)

end

end A100005.P15874029619261827828

namespace A100005

/-- `A280292(2*n+1)+A008472(2*n+1)` -/
def P15874029619261827828.Spec : Prop :=
  ∀ n, P15874029619261827828.a n = A100005 (n + 1)

theorem P15874029619261827828.correct : P15874029619261827828.Spec := by
  intro n
  simp only [A100005, Nat.add_sub_cancel, A100005.P15874029619261827828.a, A100005.P15980108924789768817.f1, A100005.P15980108924789768817.a, A008472, A008472.P6567490011312877583.f1, A008472.P6567490011312877583.a, A280292, A280292.P17147228295463227534.a, A001414, A001414.P8293929508439252105.f1, A001414.P8293929508439252105.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A100005

/-! ## A100005.P1119384194700376673

`A008475(2*n+1)-A078771(2*n+1)`
-/

namespace A100005.P1119384194700376673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008475 (2 * n + 1) - A078771 (2 * n + 1)

end

end A100005.P1119384194700376673

namespace A100005

/-- `A008475(2*n+1)-A078771(2*n+1)` -/
def P1119384194700376673.Spec : Prop :=
  ∀ n, P1119384194700376673.a n = A100005 (n + 1)

end A100005

/-! ## A100005.P13490996581242727215

`A082299(2*n+1)*A082343(2*n+1)`
-/

namespace A100005.P13490996581242727215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082299 (2 * n + 1) * A082343 (2 * n + 1)

end

end A100005.P13490996581242727215

namespace A100005

/-- `A082299(2*n+1)*A082343(2*n+1)` -/
def P13490996581242727215.Spec : Prop :=
  ∀ n, P13490996581242727215.a n = A100005 (n + 1)

end A100005

/-! ## A100005.P2296867167405079203

`A366840(Δ[n²])`
-/

namespace A100005.P2296867167405079203
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366840 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A100005.P2296867167405079203

namespace A100005

/-- `A366840(Δ[n²])` -/
def P2296867167405079203.Spec : Prop :=
  ∀ n, P2296867167405079203.a n = A100005 (n + 1)

end A100005

/-! ## A100005.P1177364263095066339

`sqrt(A074373(Δ[n²]))`
-/

namespace A100005.P1177364263095066339
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A074373 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℝ)

end

end A100005.P1177364263095066339

namespace A100005

/-- `sqrt(A074373(Δ[n²]))` -/
def P1177364263095066339.Spec : Prop :=
  ∀ n, P1177364263095066339.a n = (A100005 (n + 1) : ℝ)

end A100005

/-! ## A100005.P13126283236962630325

`A036288(Δ[n²])-1`
-/

namespace A100005.P13126283236962630325
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036288 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - 1

end

end A100005.P13126283236962630325

namespace A100005

/-- `A036288(Δ[n²])-1` -/
def P13126283236962630325.Spec : Prop :=
  ∀ n, P13126283236962630325.a n = A100005 (n + 1)

end A100005

/-! ## A100005.P8614561129682601373

`A100006(Δ[n²])-2`
-/

namespace A100005.P8614561129682601373
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100006 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - 2

end

end A100005.P8614561129682601373

namespace A100005

/-- `A100006(Δ[n²])-2` -/
def P8614561129682601373.Spec : Prop :=
  ∀ n, P8614561129682601373.a n = A100005 (n + 1)

end A100005

/-! ## A100005.P15924023833259368165

`∑{d}[2*n+1, A120007(#)]`
-/

namespace A100005.P15924023833259368165
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A120007 d

end

end A100005.P15924023833259368165

namespace A100005

/-- `∑{d}[2*n+1, A120007(#)]` -/
def P15924023833259368165.Spec : Prop :=
  ∀ n, P15924023833259368165.a n = A100005 (n + 1)

end A100005

/-! ## A100005.P13557562175935918834

`A075254(2*n+1)-Δ[n²]`
-/

namespace A100005.P13557562175935918834
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075254 (2 * n + 1) - ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A100005.P13557562175935918834

namespace A100005

/-- `A075254(2*n+1)-Δ[n²]` -/
def P13557562175935918834.Spec : Prop :=
  ∀ n, P13557562175935918834.a n = A100005 (n + 1)

theorem P13557562175935918834.correct : P13557562175935918834.Spec := by
  intro n
  simp only [A100005, Nat.add_sub_cancel, A100005.P13557562175935918834.f1, A100005.P13557562175935918834.a, A100005.P15980108924789768817.f1, A100005.P15980108924789768817.a, A075254, A075254.P6422447875050144596.a, A001414, A001414.P8293929508439252105.f1, A001414.P8293929508439252105.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A100005

/-! ## A100005.P4414491197163824001

`Δ[n²]-A075255(2*n+1)`
-/

namespace A100005.P4414491197163824001
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - A075255 (2 * n + 1)

end

end A100005.P4414491197163824001

namespace A100005

/-- `Δ[n²]-A075255(2*n+1)` -/
def P4414491197163824001.Spec : Prop :=
  ∀ n, P4414491197163824001.a n = A100005 (n + 1)

theorem P4414491197163824001.correct : P4414491197163824001.Spec := by
  intro n
  simp only [A100005, Nat.add_sub_cancel, A100005.P4414491197163824001.f1, A100005.P4414491197163824001.a, A100005.P15980108924789768817.f1, A100005.P15980108924789768817.a, A075255, A075255.P12137973761347593222.a, A001414, A001414.P8293929508439252105.f1, A001414.P8293929508439252105.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A100005

/-! ## A100005.P5054667020577565342

`A023443(A036288(2*n+1))`
-/

namespace A100005.P5054667020577565342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A036288 (2 * n + 1)).toNat

end

end A100005.P5054667020577565342

namespace A100005

/-- `A023443(A036288(2*n+1))` -/
def P5054667020577565342.Spec : Prop :=
  ∀ n, P5054667020577565342.a n = A100005 (n + 1)

end A100005

/-! ## A100005.P7960227571931046855

`A023444(A100006(2*n+1))`
-/

namespace A100005.P7960227571931046855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A100006 (2 * n + 1)).toNat

end

end A100005.P7960227571931046855

namespace A100005

/-- `A023444(A100006(2*n+1))` -/
def P7960227571931046855.Spec : Prop :=
  ∀ n, P7960227571931046855.a n = A100005 (n + 1)

end A100005

/-! ## A100005.P15048980473048544122

`A181894(A354547(2*n+1))`
-/

namespace A100005.P15048980473048544122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181894 (A354547 (2 * n + 1)).toNat

end

end A100005.P15048980473048544122

namespace A100005

/-- `A181894(A354547(2*n+1))` -/
def P15048980473048544122.Spec : Prop :=
  ∀ n, P15048980473048544122.a n = A100005 (n + 1)

end A100005

/-! ## A100005.P8542863388286826092

`A057428(n+1)+A036288(2*n+1)`
-/

namespace A100005.P8542863388286826092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (n + 1) + A036288 (2 * n + 1)

end

end A100005.P8542863388286826092

namespace A100005

/-- `A057428(n+1)+A036288(2*n+1)` -/
def P8542863388286826092.Spec : Prop :=
  ∀ n, P8542863388286826092.a n = A100005 (n + 1)

theorem P8542863388286826092.correct : P8542863388286826092.Spec := by
  intro n
  simp only [A100005, Nat.add_sub_cancel, A100005.P8542863388286826092.a, A100005.P15980108924789768817.f1, A100005.P15980108924789768817.a, A036288, A036288.P5869837535348566754.f1, A036288.P5869837535348566754.a, A057428, A057428.P2999489532230392221.a, A057427, A057427.P3058147525557661423.a, A000007, A000007.P6599383543502402472.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A100005

/-!
# A100006: Integer log of 2n: sum of primes dividing 2n (with repetition).

The programs for A100006, the canonical program `A100006.P10301543697715186993` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A100006 has offset 1).

The definition of A100006 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A100006.P10301543697715186993

`∑{p}[n+1, #*val(n+1, #)]+2`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A100006

/-- `∑{p}[n+1, #*val(n+1, #)]+2` -/
def P10301543697715186993.Spec : Prop :=
  ∀ n, (P10301543697715186993.a n : ℤ) = A100006 (n + 1)

theorem P10301543697715186993.correct : P10301543697715186993.Spec := by
  intro n
  simp only [A100006, Nat.add_sub_cancel]

end A100006

/-! ## A100006.P1128547639591596185

`∑{p}[n+1, #]+a(floor(n/∏{p}[n+1, #]))` with `a(0)=2`
-/

namespace A100006.P1128547639591596185
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  ∑ p ∈ Nat.primeFactors (f1 n), p + a ⌊(n : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ)⌋.toNat

end

end A100006.P1128547639591596185

namespace A100006

/-- `∑{p}[n+1, #]+a(floor(n/∏{p}[n+1, #]))` -/
def P1128547639591596185.Spec : Prop :=
  ∀ n, (P1128547639591596185.a n : ℤ) = A100006 (n + 1)

end A100006

/-! ## A100006.P14134050352023362908

`∑{p}[n+1, #]+a((n+1)/∏{p}[n+1, #]-1)` with `a(0)=2`
-/

namespace A100006.P14134050352023362908
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  ∑ p ∈ Nat.primeFactors (f1 n), p + a (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ) - 1)).toNat

end

end A100006.P14134050352023362908

namespace A100006

/-- `∑{p}[n+1, #]+a((n+1)/∏{p}[n+1, #]-1)` -/
def P14134050352023362908.Spec : Prop :=
  ∀ n, (P14134050352023362908.a n : ℤ) = A100006 (n + 1)

end A100006

/-! ## A100006.P9396134637542608806

`Δ[A025281(n)]+2`
-/

namespace A100006.P9396134637542608806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025281 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 2

end

end A100006.P9396134637542608806

namespace A100006

/-- `Δ[A025281(n)]+2` -/
def P9396134637542608806.Spec : Prop :=
  ∀ n, P9396134637542608806.a n = A100006 (n + 1)

end A100006

/-! ## A100006.P12751721330204729457

`A036288(n+1)+1`
-/

namespace A100006.P12751721330204729457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036288 (n + 1) + 1

end

end A100006.P12751721330204729457

namespace A100006

/-- `A036288(n+1)+1` -/
def P12751721330204729457.Spec : Prop :=
  ∀ n, P12751721330204729457.a n = A100006 (n + 1)

theorem P12751721330204729457.correct : P12751721330204729457.Spec := by
  intro n
  simp only [A100006, Nat.add_sub_cancel, A100006.P12751721330204729457.a, A100006.P10301543697715186993.f1, A100006.P10301543697715186993.a, A036288, A036288.P5869837535348566754.f1, A036288.P5869837535348566754.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A100006

/-! ## A100006.P10104472136336720061

`2+A001414(n+1)`
-/

namespace A100006.P10104472136336720061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 + A001414 (n + 1)

end

end A100006.P10104472136336720061

namespace A100006

/-- `2+A001414(n+1)` -/
def P10104472136336720061.Spec : Prop :=
  ∀ n, P10104472136336720061.a n = A100006 (n + 1)

theorem P10104472136336720061.correct : P10104472136336720061.Spec := by
  intro n
  simp only [A100006, Nat.add_sub_cancel, A100006.P10104472136336720061.a, A100006.P10301543697715186993.f1, A100006.P10301543697715186993.a, A001414, A001414.P8293929508439252105.f1, A001414.P8293929508439252105.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A100006

/-! ## A100006.P1315649759271631507

`sqrt(A074373(n+1))+2`
-/

namespace A100006.P1315649759271631507
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A074373 (n + 1) : ℝ) + 2

end

end A100006.P1315649759271631507

namespace A100006

/-- `sqrt(A074373(n+1))+2` -/
def P1315649759271631507.Spec : Prop :=
  ∀ n, P1315649759271631507.a n = (A100006 (n + 1) : ℝ)

end A100006

/-! ## A100006.P8762712227159561515

`A075254(n+1)+1-n`
-/

namespace A100006.P8762712227159561515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075254 (n + 1) + (1 - (n : ℤ))

end

end A100006.P8762712227159561515

namespace A100006

/-- `A075254(n+1)+1-n` -/
def P8762712227159561515.Spec : Prop :=
  ∀ n, P8762712227159561515.a n = A100006 (n + 1)

theorem P8762712227159561515.correct : P8762712227159561515.Spec := by
  intro n
  simp only [A100006, Nat.add_sub_cancel, A100006.P8762712227159561515.a, A100006.P10301543697715186993.f1, A100006.P10301543697715186993.a, A075254, A075254.P6422447875050144596.a, A001414, A001414.P8293929508439252105.f1, A001414.P8293929508439252105.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A100006

/-! ## A100006.P9911742532062380447

`3-A075255(n+1)+n`
-/

namespace A100006.P9911742532062380447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - A075255 (n + 1) + (n : ℤ)

end

end A100006.P9911742532062380447

namespace A100006

/-- `3-A075255(n+1)+n` -/
def P9911742532062380447.Spec : Prop :=
  ∀ n, P9911742532062380447.a n = A100006 (n + 1)

theorem P9911742532062380447.correct : P9911742532062380447.Spec := by
  intro n
  simp only [A100006, Nat.add_sub_cancel, A100006.P9911742532062380447.a, A100006.P10301543697715186993.f1, A100006.P10301543697715186993.a, A075255, A075255.P12137973761347593222.a, A001414, A001414.P8293929508439252105.f1, A001414.P8293929508439252105.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A100006

/-! ## A100006.P10573878619567640604

`a(n-1)-A090340(n)` with `a(0)=2`
-/

namespace A100006.P10573878619567640604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  a (n - 1) - A090340 n

end

end A100006.P10573878619567640604

namespace A100006

/-- `a(n-1)-A090340(n)` -/
def P10573878619567640604.Spec : Prop :=
  ∀ n, P10573878619567640604.a n = A100006 (n + 1)

theorem P10573878619567640604.correct : P10573878619567640604.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A100006, Nat.add_sub_cancel, A100006.P10573878619567640604.a, A100006.P10301543697715186993.f1, A100006.P10301543697715186993.a, A090340, A090340.P10386058790835216760.a, A001414, A001414.P8293929508439252105.f1, A001414.P8293929508439252105.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf)
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A100006, Nat.add_sub_cancel, A100006.P10573878619567640604.a, A100006.P10301543697715186993.f1, A100006.P10301543697715186993.a, A090340, A090340.P10386058790835216760.a, A001414, A001414.P8293929508439252105.f1, A001414.P8293929508439252105.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith | ((try field_simp); ring_nf)

end A100006

/-! ## A100006.P11000958446572832412

`A001414(A004277(n+1))`
-/

namespace A100006.P11000958446572832412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (A004277 (n + 1)).toNat

end

end A100006.P11000958446572832412

namespace A100006

/-- `A001414(A004277(n+1))` -/
def P11000958446572832412.Spec : Prop :=
  ∀ n, P11000958446572832412.a n = A100006 (n + 1)

end A100006

/-! ## A100006.P9999811119615088971

`A001414(A005843(n+1))`
-/

namespace A100006.P9999811119615088971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (A005843 (n + 1)).toNat

end

end A100006.P9999811119615088971

namespace A100006

/-- `A001414(A005843(n+1))` -/
def P9999811119615088971.Spec : Prop :=
  ∀ n, P9999811119615088971.a n = A100006 (n + 1)

end A100006

/-! ## A100006.P2889963541157943481

`A020725(A036288(n+1))`
-/

namespace A100006.P2889963541157943481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A036288 (n + 1)).toNat

end

end A100006.P2889963541157943481

namespace A100006

/-- `A020725(A036288(n+1))` -/
def P2889963541157943481.Spec : Prop :=
  ∀ n, P2889963541157943481.a n = A100006 (n + 1)

end A100006

/-! ## A100006.P14964177798185002633

`A001414(A016825(n)-2*n)`
-/

namespace A100006.P14964177798185002633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (A016825 n - (2 * n : ℤ)).toNat

end

end A100006.P14964177798185002633

namespace A100006

/-- `A001414(A016825(n)-2*n)` -/
def P14964177798185002633.Spec : Prop :=
  ∀ n, P14964177798185002633.a n = A100006 (n + 1)

end A100006

/-! ## A100006.P17587938818333561151

`A275314(n+1)+A073093(n+1)`
-/

namespace A100006.P17587938818333561151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275314 (n + 1) + A073093 (n + 1)

end

end A100006.P17587938818333561151

namespace A100006

/-- `A275314(n+1)+A073093(n+1)` -/
def P17587938818333561151.Spec : Prop :=
  ∀ n, P17587938818333561151.a n = A100006 (n + 1)

end A100006

/-! ## A100006.P16071260092536200896

`A366840(n+1)+A366839(n+1)`
-/

namespace A100006.P16071260092536200896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366840 (n + 1) + A366839 (n + 1)

end

end A100006.P16071260092536200896

namespace A100006

/-- `A366840(n+1)+A366839(n+1)` -/
def P16071260092536200896.Spec : Prop :=
  ∀ n, P16071260092536200896.a n = A100006 (n + 1)

theorem P16071260092536200896.correct : P16071260092536200896.Spec := by
  intro n
  simp only [A100006, Nat.add_sub_cancel, A100006.P16071260092536200896.a, A100006.P10301543697715186993.f1, A100006.P10301543697715186993.a, A366839, A366839.P8593895561095689137.a, A366840, A366840.P17137846369514752914.a, A001511, A001511.P17146462531039486101.a, A006519, A006519.P10435570611646570274.a, A171977, A171977.P14092944863121073856.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A100006

/-! ## A100006.P6908886472994289688

`A008472(n+1)+A280292(n+1)+2`
-/

namespace A100006.P6908886472994289688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (n + 1) + (A280292 (n + 1) + 2)

end

end A100006.P6908886472994289688

namespace A100006

/-- `A008472(n+1)+A280292(n+1)+2` -/
def P6908886472994289688.Spec : Prop :=
  ∀ n, P6908886472994289688.a n = A100006 (n + 1)

theorem P6908886472994289688.correct : P6908886472994289688.Spec := by
  intro n
  simp only [A100006, Nat.add_sub_cancel, A100006.P6908886472994289688.a, A100006.P10301543697715186993.f1, A100006.P10301543697715186993.a, A008472, A008472.P6567490011312877583.f1, A008472.P6567490011312877583.a, A280292, A280292.P17147228295463227534.a, A001414, A001414.P8293929508439252105.f1, A001414.P8293929508439252105.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A100006

/-! ## A100006.P2781234724910198438

`A001414(Δ[2*∑[n]])`
-/

namespace A100006.P2781234724910198438
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A100006.P2781234724910198438

namespace A100006

/-- `A001414(Δ[2*∑[n]])` -/
def P2781234724910198438.Spec : Prop :=
  ∀ n, P2781234724910198438.a n = A100006 (n + 1)

end A100006

/-! ## A100006.P12162169179826278312

`A275314(2*(n+1))+A001222(n+1)`
-/

namespace A100006.P12162169179826278312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275314 (2 * (n + 1)) + A001222 (n + 1)

end

end A100006.P12162169179826278312

namespace A100006

/-- `A275314(2*(n+1))+A001222(n+1)` -/
def P12162169179826278312.Spec : Prop :=
  ∀ n, P12162169179826278312.a n = A100006 (n + 1)

end A100006

/-!
# A100007: Number of unitary divisors of 2n-1 (d such that d divides 2n-1, GCD(d,(2n-1)/d)=1). Bisection of A034444.

The programs for A100007, the canonical program `A100007.P3347003901490045030` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A100007 has offset 1).

The definition of A100007 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A068068, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A100007.P17343715693326975069

`2^A001221(2*n+1)`
-/

namespace A100007.P17343715693326975069
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A001221 (2 * n + 1) : ℤ)

end

end A100007.P17343715693326975069

namespace A100007

/-- `2^A001221(2*n+1)` -/
def P17343715693326975069.Spec : Prop :=
  ∀ n, P17343715693326975069.a n = (A100007 (n + 1) : ℚ)

end A100007

/-! ## A100007.P14372566891152224996

`A034444(2*n+1)`
-/

namespace A100007.P14372566891152224996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034444 (2 * n + 1)

end

end A100007.P14372566891152224996

namespace A100007

/-- `A034444(2*n+1)` -/
def P14372566891152224996.Spec : Prop :=
  ∀ n, P14372566891152224996.a n = A100007 (n + 1)

end A100007

/-! ## A100007.P3347003901490045030

`A068068(2*n+1)`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A100007

/-- `A068068(2*n+1)` -/
def P3347003901490045030.Spec : Prop :=
  ∀ n, P3347003901490045030.a n = A100007 (n + 1)

theorem P3347003901490045030.correct : P3347003901490045030.Spec := by
  intro n
  simp only [A100007, Nat.add_sub_cancel]

end A100007

/-! ## A100007.P13390545259306081163

`∏{p}[2*n+1, ceil(root(2, #))]`
-/

namespace A100007.P13390545259306081163
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), ⌈(2 : ℝ) ^ (1 / (p : ℝ))⌉

end

end A100007.P13390545259306081163

namespace A100007

/-- `∏{p}[2*n+1, ceil(root(2, #))]` -/
def P13390545259306081163.Spec : Prop :=
  ∀ n, P13390545259306081163.a n = A100007 (n + 1)

end A100007

/-! ## A100007.P15479542528877308024

`∏{e}[2*n+1, ceil(root(2, #))]`
-/

namespace A100007.P15479542528877308024
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), ⌈(2 : ℝ) ^ (1 / (Nat.factorization (f1 n) p : ℝ))⌉

end

end A100007.P15479542528877308024

namespace A100007

/-- `∏{e}[2*n+1, ceil(root(2, #))]` -/
def P15479542528877308024.Spec : Prop :=
  ∀ n, P15479542528877308024.a n = A100007 (n + 1)

end A100007

/-! ## A100007.P4173059067937469974

`2^∑{p}[2*n+1, #%2]`
-/

namespace A100007.P4173059067937469974
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ (∑ p ∈ Nat.primeFactors (f1 n), p % 2)

end

end A100007.P4173059067937469974

namespace A100007

/-- `2^∑{p}[2*n+1, #%2]` -/
def P4173059067937469974.Spec : Prop :=
  ∀ n, (P4173059067937469974.a n : ℤ) = A100007 (n + 1)

end A100007

/-! ## A100007.P7277971841584148927

`2^∑{p}[2*n+1, and(1, #)]`
-/

namespace A100007.P7277971841584148927
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ (∑ p ∈ Nat.primeFactors (f1 n), Nat.land 1 p)

end

end A100007.P7277971841584148927

namespace A100007

/-- `2^∑{p}[2*n+1, and(1, #)]` -/
def P7277971841584148927.Spec : Prop :=
  ∀ n, (P7277971841584148927.a n : ℤ) = A100007 (n + 1)

end A100007

/-! ## A100007.P8812889635784732187

`abs(∏{p}[2*n+1, -2%#])`
-/

namespace A100007.P8812889635784732187
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∏ p ∈ Nat.primeFactors (f1 n), Int.tmod (-2) (p : ℤ)|

end

end A100007.P8812889635784732187

namespace A100007

/-- `abs(∏{p}[2*n+1, -2%#])` -/
def P8812889635784732187.Spec : Prop :=
  ∀ n, P8812889635784732187.a n = A100007 (n + 1)

end A100007

/-! ## A100007.P17794661638961299902

`sqrt(∏{p}[2*n+1, 4%#²])`
-/

namespace A100007.P17794661638961299902
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((∏ p ∈ Nat.primeFactors (f1 n), 4 % p ^ 2 : ℕ) : ℝ)

end

end A100007.P17794661638961299902

namespace A100007

/-- `sqrt(∏{p}[2*n+1, 4%#²])` -/
def P17794661638961299902.Spec : Prop :=
  ∀ n, P17794661638961299902.a n = (A100007 (n + 1) : ℝ)

end A100007

/-! ## A100007.P2285005347427619621

`2^∑{e}[∏{p}[2*n+1, #], #]`
-/

namespace A100007.P2285005347427619621
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)

end

end A100007.P2285005347427619621

namespace A100007

/-- `2^∑{e}[∏{p}[2*n+1, #], #]` -/
def P2285005347427619621.Spec : Prop :=
  ∀ n, (P2285005347427619621.a n : ℤ) = A100007 (n + 1)

end A100007

/-! ## A100007.P8157215451559246641

`2^∑{p}[2*n+1, ceil(1/#)]`
-/

namespace A100007.P8157215451559246641
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (∑ p ∈ Nat.primeFactors (f1 n), ⌈1 / (p : ℚ)⌉ : ℤ)

end

end A100007.P8157215451559246641

namespace A100007

/-- `2^∑{p}[2*n+1, ceil(1/#)]` -/
def P8157215451559246641.Spec : Prop :=
  ∀ n, P8157215451559246641.a n = (A100007 (n + 1) : ℚ)

end A100007

/-! ## A100007.P6333417549903510125

`2^∑{e}[2*n+1, ceil(1/#)]`
-/

namespace A100007.P6333417549903510125
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (∑ p ∈ Nat.primeFactors (f1 n), ⌈1 / (Nat.factorization (f1 n) p : ℚ)⌉ : ℤ)

end

end A100007.P6333417549903510125

namespace A100007

/-- `2^∑{e}[2*n+1, ceil(1/#)]` -/
def P6333417549903510125.Spec : Prop :=
  ∀ n, P6333417549903510125.a n = (A100007 (n + 1) : ℚ)

end A100007

/-! ## A100007.P9420962702890405336

`floor(∏{e}[2*n+1, #/(n+1)+2])`
-/

namespace A100007.P9420962702890405336
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∏ p ∈ Nat.primeFactors (f1 n), ((Nat.factorization (f1 n) p : ℚ) / (n + 1 : ℚ) + 2)⌋

end

end A100007.P9420962702890405336

namespace A100007

/-- `floor(∏{e}[2*n+1, #/(n+1)+2])` -/
def P9420962702890405336.Spec : Prop :=
  ∀ n, P9420962702890405336.a n = A100007 (n + 1)

end A100007

/-! ## A100007.P16420837176067772946

`ceil(∏{e}[2*n+1, 2-#/(n+1)])`
-/

namespace A100007.P16420837176067772946
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∏ p ∈ Nat.primeFactors (f1 n), (2 - (Nat.factorization (f1 n) p : ℚ) / (n + 1 : ℚ))⌉

end

end A100007.P16420837176067772946

namespace A100007

/-- `ceil(∏{e}[2*n+1, 2-#/(n+1)])` -/
def P16420837176067772946.Spec : Prop :=
  ∀ n, P16420837176067772946.a n = A100007 (n + 1)

end A100007

/-! ## A100007.P12765392283063129859

`A306652(Δ[n²])`
-/

namespace A100007.P12765392283063129859
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306652 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A100007.P12765392283063129859

namespace A100007

/-- `A306652(Δ[n²])` -/
def P12765392283063129859.Spec : Prop :=
  ∀ n, P12765392283063129859.a n = A100007 (n + 1)

end A100007

/-! ## A100007.P13499020039859039840

`A317528(Δ[n²])`
-/

namespace A100007.P13499020039859039840
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317528 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A100007.P13499020039859039840

namespace A100007

/-- `A317528(Δ[n²])` -/
def P13499020039859039840.Spec : Prop :=
  ∀ n, P13499020039859039840.a n = A100007 (n + 1)

end A100007

/-! ## A100007.P16712330334817885895

`2^A092523(n+1)`
-/

namespace A100007.P16712330334817885895
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A092523 (n + 1) : ℤ)

end

end A100007.P16712330334817885895

namespace A100007

/-- `2^A092523(n+1)` -/
def P16712330334817885895.Spec : Prop :=
  ∀ n, P16712330334817885895.a n = (A100007 (n + 1) : ℚ)

end A100007

/-! ## A100007.P1550417109284971153

`abs(A317528(2*n+1))`
-/

namespace A100007.P1550417109284971153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A317528 (2 * n + 1)|

end

end A100007.P1550417109284971153

namespace A100007

/-- `abs(A317528(2*n+1))` -/
def P1550417109284971153.Spec : Prop :=
  ∀ n, P1550417109284971153.a n = A100007 (n + 1)

end A100007

/-! ## A100007.P3574349943829954757

`A060594(2*n+1)`
-/

namespace A100007.P3574349943829954757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060594 (2 * n + 1)

end

end A100007.P3574349943829954757

namespace A100007

/-- `A060594(2*n+1)` -/
def P3574349943829954757.Spec : Prop :=
  ∀ n, P3574349943829954757.a n = A100007 (n + 1)

end A100007

/-!
# A100008: Number of unitary divisors of 2n.

The programs for A100008, the canonical program `A100008.P11065605102889167328` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A100008 has offset 1).

The definition of A100008 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A068068, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A100008.P11065605102889167328

`2*A068068(n+1)`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A100008

/-- `2*A068068(n+1)` -/
def P11065605102889167328.Spec : Prop :=
  ∀ n, P11065605102889167328.a n = A100008 (n + 1)

theorem P11065605102889167328.correct : P11065605102889167328.Spec := by
  intro n
  simp only [A100008, Nat.add_sub_cancel]

end A100008

/-! ## A100008.P10105216769735363457

`2^A001221(2*(n+1))`
-/

namespace A100008.P10105216769735363457
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A001221 (2 * (n + 1)) : ℤ)

end

end A100008.P10105216769735363457

namespace A100008

/-- `2^A001221(2*(n+1))` -/
def P10105216769735363457.Spec : Prop :=
  ∀ n, P10105216769735363457.a n = (A100008 (n + 1) : ℚ)

end A100008

/-! ## A100008.P8279803819624932867

`∏{p}[2*(n+1), 2%#²]`
-/

namespace A100008.P8279803819624932867
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), 2 % p ^ 2

end

end A100008.P8279803819624932867

namespace A100008

/-- `∏{p}[2*(n+1), 2%#²]` -/
def P8279803819624932867.Spec : Prop :=
  ∀ n, (P8279803819624932867.a n : ℤ) = A100008 (n + 1)

end A100008

/-! ## A100008.P13063231477777454986

`A346773(2*(n+1))`
-/

namespace A100008.P13063231477777454986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346773 (2 * (n + 1))

end

end A100008.P13063231477777454986

namespace A100008

/-- `A346773(2*(n+1))` -/
def P13063231477777454986.Spec : Prop :=
  ∀ n, P13063231477777454986.a n = A100008 (n + 1)

end A100008

/-! ## A100008.P8024798492314363509

`2^A099812(n+1)`
-/

namespace A100008.P8024798492314363509
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A099812 (n + 1) : ℤ)

end

end A100008.P8024798492314363509

namespace A100008

/-- `2^A099812(n+1)` -/
def P8024798492314363509.Spec : Prop :=
  ∀ n, P8024798492314363509.a n = (A100008 (n + 1) : ℚ)

end A100008

/-! ## A100008.P15606321284903902742

`A054844(∏{p}[n+1, #])`
-/

namespace A100008.P15606321284903902742
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054844 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A100008.P15606321284903902742

namespace A100008

/-- `A054844(∏{p}[n+1, #])` -/
def P15606321284903902742.Spec : Prop :=
  ∀ n, P15606321284903902742.a n = A100008 (n + 1)

end A100008

/-! ## A100008.P16666594655282174073

`2*A206824(2*(n+1))`
-/

namespace A100008.P16666594655282174073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A206824 (2 * (n + 1))

end

end A100008.P16666594655282174073

namespace A100008

/-- `2*A206824(2*(n+1))` -/
def P16666594655282174073.Spec : Prop :=
  ∀ n, P16666594655282174073.a n = A100008 (n + 1)

end A100008

/-! ## A100008.P3865474535764879133

`2^(A005087(n+1)+1)`
-/

namespace A100008.P3865474535764879133
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A005087 (n + 1) + 1 : ℤ)

end

end A100008.P3865474535764879133

namespace A100008

/-- `2^(A005087(n+1)+1)` -/
def P3865474535764879133.Spec : Prop :=
  ∀ n, P3865474535764879133.a n = (A100008 (n + 1) : ℚ)

end A100008

/-! ## A100008.P12293913000726220811

`A000005(∏{p}[2*(n+1), #])`
-/

namespace A100008.P12293913000726220811
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A100008.P12293913000726220811

namespace A100008

/-- `A000005(∏{p}[2*(n+1), #])` -/
def P12293913000726220811.Spec : Prop :=
  ∀ n, P12293913000726220811.a n = A100008 (n + 1)

end A100008

/-! ## A100008.P1075247262495851331

`∑{d}[2*(n+1), A008683(#)²]`
-/

namespace A100008.P1075247262495851331
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d ^ 2

end

end A100008.P1075247262495851331

namespace A100008

/-- `∑{d}[2*(n+1), A008683(#)²]` -/
def P1075247262495851331.Spec : Prop :=
  ∀ n, P1075247262495851331.a n = A100008 (n + 1)

end A100008

/-! ## A100008.P11999115919025351000

`root(2, 1/A001221(2*n+2))`
-/

namespace A100008.P11999115919025351000
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (2 : ℝ) ^ (1 / (1 / (A001221 (2 * n + 2) : ℚ) : ℝ))

end

end A100008.P11999115919025351000

namespace A100008

/-- `root(2, 1/A001221(2*n+2))` -/
def P11999115919025351000.Spec : Prop :=
  ∀ n, P11999115919025351000.a n = (A100008 (n + 1) : ℝ)

end A100008

/-! ## A100008.P3963964464783186357

`4^(A001221(n+2+n)/2)`
-/

namespace A100008.P3963964464783186357
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (4 : ℝ) ^ ((A001221 (n + 2 + n) : ℚ) / 2 : ℝ)

end

end A100008.P3963964464783186357

namespace A100008

/-- `4^(A001221(n+2+n)/2)` -/
def P3963964464783186357.Spec : Prop :=
  ∀ n, P3963964464783186357.a n = (A100008 (n + 1) : ℝ)

end A100008

/-! ## A100008.P11266392623510318021

`∏{p}[2*(n+1), A001221(#)+1]`
-/

namespace A100008.P11266392623510318021
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (A001221 p + 1)

end

end A100008.P11266392623510318021

namespace A100008

/-- `∏{p}[2*(n+1), A001221(#)+1]` -/
def P11266392623510318021.Spec : Prop :=
  ∀ n, P11266392623510318021.a n = A100008 (n + 1)

end A100008

/-! ## A100008.P2185922474709657997

`∏{p}[2*(n+1), A001222(#)+1]`
-/

namespace A100008.P2185922474709657997
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (A001222 p + 1)

end

end A100008.P2185922474709657997

namespace A100008

/-- `∏{p}[2*(n+1), A001222(#)+1]` -/
def P2185922474709657997.Spec : Prop :=
  ∀ n, P2185922474709657997.a n = A100008 (n + 1)

end A100008

/-! ## A100008.P4937273206174067424

`2*∏{p}[n+1, A020639(#-1)]`
-/

namespace A100008.P4937273206174067424
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∏ p ∈ Nat.primeFactors (f1 n), A020639 (p - 1))

end

end A100008.P4937273206174067424

namespace A100008

/-- `2*∏{p}[n+1, A020639(#-1)]` -/
def P4937273206174067424.Spec : Prop :=
  ∀ n, P4937273206174067424.a n = A100008 (n + 1)

end A100008

/-! ## A100008.P16161013478274952327

`∏{p}[2*(n+1), A020639(2*#)]`
-/

namespace A100008.P16161013478274952327
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A020639 (2 * p)

end

end A100008.P16161013478274952327

namespace A100008

/-- `∏{p}[2*(n+1), A020639(2*#)]` -/
def P16161013478274952327.Spec : Prop :=
  ∀ n, P16161013478274952327.a n = A100008 (n + 1)

end A100008

/-! ## A100008.P8139102791889336537

`∏{e}[2*(n+1), A020639(4*#)]`
-/

namespace A100008.P8139102791889336537
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A020639 (4 * Nat.factorization (f1 n) p)

end

end A100008.P8139102791889336537

namespace A100008

/-- `∏{e}[2*(n+1), A020639(4*#)]` -/
def P8139102791889336537.Spec : Prop :=
  ∀ n, P8139102791889336537.a n = A100008 (n + 1)

end A100008

/-! ## A100008.P15434186272007281884

`2^A001222(∏{p}[n+2+n, #])`
-/

namespace A100008.P15434186272007281884
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2 + n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A001222 (∏ p ∈ Nat.primeFactors (f1 n), p) : ℤ)

end

end A100008.P15434186272007281884

namespace A100008

/-- `2^A001222(∏{p}[n+2+n, #])` -/
def P15434186272007281884.Spec : Prop :=
  ∀ n, P15434186272007281884.a n = (A100008 (n + 1) : ℚ)

end A100008

/-! ## A100008.P12553201305583284387

`2^(A001221(n+1)+(n+1)%2)`
-/

namespace A100008.P12553201305583284387
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A001221 (n + 1) + (((n + 1) % 2 : ℕ) : ℤ) : ℤ)

end

end A100008.P12553201305583284387

namespace A100008

/-- `2^(A001221(n+1)+(n+1)%2)` -/
def P12553201305583284387.Spec : Prop :=
  ∀ n, P12553201305583284387.a n = (A100008 (n + 1) : ℚ)

end A100008

/-! ## A100008.P674753082870163711

`A054844(A007947(n+1))`
-/

namespace A100008.P674753082870163711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054844 (A007947 (n + 1)).toNat

end

end A100008.P674753082870163711

namespace A100008

/-- `A054844(A007947(n+1))` -/
def P674753082870163711.Spec : Prop :=
  ∀ n, P674753082870163711.a n = A100008 (n + 1)

end A100008

/-!
# A100009: 

The programs for A100009, there is no canonical definition to state claims against.
-/

/-! ## A100009.P9724717446234518423

`C(a(n-1)+3, 4)` with `a(0)=2`
-/

namespace A100009.P9724717446234518423
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  Nat.choose (a (n - 1) + 3) 4

end

end A100009.P9724717446234518423

/-!
# A100016: a(0) = 1; a(n+1) = a(n) * (next prime larger than a(n)).

The programs for A100016, there is no canonical definition to state claims against.
-/

/-! ## A100016.P13484627947195041691

`floor(ratio[A082993(n+1)])`
-/

namespace A100016.P13484627947195041691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082993 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (n + 1) : ℚ) / (f1 n : ℚ)⌋

end

end A100016.P13484627947195041691

/-! ## A100016.P10968188704665196880

`floor(A082993(n+2)/A082993(n+1))`
-/

namespace A100016.P10968188704665196880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A082993 (n + 2) : ℚ) / (A082993 (n + 1) : ℚ)⌋

end

end A100016.P10968188704665196880

/-!
# A100019: a(n) = n^4 + n^3 + n^2.

The programs for A100019, the canonical program `A100019.P10475415265072854522` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A100019 has offset 0).

The definition of A100019 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n^4+n^3+n²` (program `A100019.P10475415265072854522`, by `A100019.P10475415265072854522.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A100019.P10475415265072854522

`n^4+n^3+n²`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A100019

/-- `n^4+n^3+n²` -/
def P10475415265072854522.Spec : Prop :=
  ∀ n, (P10475415265072854522.a n : ℤ) = A100019 n

theorem P10475415265072854522.correct : P10475415265072854522.Spec := by
  intro n
  simp only [A100019]

end A100019

/-! ## A100019.P15128792434845628678

`n*floor(n/Δ[atan(n)])`
-/

namespace A100019.P15128792434845628678
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.arctan (n : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ⌊(n : ℝ) / (f1 (n + 1) - f1 n)⌋

end

end A100019.P15128792434845628678

namespace A100019

/-- `n*floor(n/Δ[atan(n)])` -/
def P15128792434845628678.Spec : Prop :=
  ∀ n, P15128792434845628678.a n = A100019 n

end A100019

/-! ## A100019.P2173310338400279050

`lcm(n²+1+n, n²)`
-/

namespace A100019.P2173310338400279050
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm (n ^ 2 + 1 + n) (n ^ 2)

end

end A100019.P2173310338400279050

namespace A100019

/-- `lcm(n²+1+n, n²)` -/
def P2173310338400279050.Spec : Prop :=
  ∀ n, (P2173310338400279050.a n : ℤ) = A100019 n

end A100019

/-! ## A100019.P9081467999287462837

`n*A027444(n)`
-/

namespace A100019.P9081467999287462837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A027444 n

end

end A100019.P9081467999287462837

namespace A100019

/-- `n*A027444(n)` -/
def P9081467999287462837.Spec : Prop :=
  ∀ n, P9081467999287462837.a n = A100019 n

theorem P9081467999287462837.correct : P9081467999287462837.Spec := by
  intro n
  simp only [A100019, Nat.add_sub_cancel, A100019.P9081467999287462837.a, A100019.P10475415265072854522.a, A027444, A027444.P13486811862535796769.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A100019

/-! ## A100019.P4526639732018523653

`n*(A053698(n)-1)`
-/

namespace A100019.P4526639732018523653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A053698 n - 1)

end

end A100019.P4526639732018523653

namespace A100019

/-- `n*(A053698(n)-1)` -/
def P4526639732018523653.Spec : Prop :=
  ∀ n, P4526639732018523653.a n = A100019 n

theorem P4526639732018523653.correct : P4526639732018523653.Spec := by
  intro n
  simp only [A100019, Nat.add_sub_cancel, A100019.P4526639732018523653.a, A100019.P10475415265072854522.a, A053698, A053698.P17380684271159484773.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A100019

/-! ## A100019.P17769470902726176381

`n*(A011379(n)+n)`
-/

namespace A100019.P17769470902726176381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A011379 n + (n : ℤ))

end

end A100019.P17769470902726176381

namespace A100019

/-- `n*(A011379(n)+n)` -/
def P17769470902726176381.Spec : Prop :=
  ∀ n, P17769470902726176381.a n = A100019 n

theorem P17769470902726176381.correct : P17769470902726176381.Spec := by
  intro n
  simp only [A100019, Nat.add_sub_cancel, A100019.P17769470902726176381.a, A100019.P10475415265072854522.a, A011379, A011379.P13170028565952122956.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A100019

/-! ## A100019.P5120606528858213670

`n²*∑[A004277(n)]`
-/

namespace A100019.P5120606528858213670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A100019.P5120606528858213670

namespace A100019

/-- `n²*∑[A004277(n)]` -/
def P5120606528858213670.Spec : Prop :=
  ∀ n, P5120606528858213670.a n = A100019 n

end A100019

/-! ## A100019.P17110234482973036834

`A002061(n+1)*n²`
-/

namespace A100019.P17110234482973036834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002061 (n + 1) * (n ^ 2 : ℤ)

end

end A100019.P17110234482973036834

namespace A100019

/-- `A002061(n+1)*n²` -/
def P17110234482973036834.Spec : Prop :=
  ∀ n, P17110234482973036834.a n = A100019 n

theorem P17110234482973036834.correct : P17110234482973036834.Spec := by
  intro n
  simp only [A100019, Nat.add_sub_cancel, A100019.P17110234482973036834.a, A100019.P10475415265072854522.a, A002061, A002061.P13016590216674735232.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A100019

/-! ## A100019.P15789559148591171469

`n*(A188947(n+1)-2)`
-/

namespace A100019.P15789559148591171469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A188947 (n + 1) - 2)

end

end A100019.P15789559148591171469

namespace A100019

/-- `n*(A188947(n+1)-2)` -/
def P15789559148591171469.Spec : Prop :=
  ∀ n, P15789559148591171469.a n = A100019 n

theorem P15789559148591171469.correct : P15789559148591171469.Spec := by
  intro n
  simp only [A100019, Nat.add_sub_cancel, A100019.P15789559148591171469.a, A100019.P10475415265072854522.a, A188947, A188947.P13044450238604799921.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A100019

/-! ## A100019.P16171012292208334071

`n*(A100705(n)-(n+1))`
-/

namespace A100019.P16171012292208334071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A100705 n - (n + 1 : ℤ))

end

end A100019.P16171012292208334071

namespace A100019

/-- `n*(A100705(n)-(n+1))` -/
def P16171012292208334071.Spec : Prop :=
  ∀ n, P16171012292208334071.a n = A100019 n

theorem P16171012292208334071.correct : P16171012292208334071.Spec := by
  intro n
  simp only [A100019, Nat.add_sub_cancel, A100019.P16171012292208334071.a, A100019.P10475415265072854522.a, A100705, A100705.P6779774238995480043.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A100019

/-! ## A100019.P4086802163085487055

`A069779(n)%A165563(n)`
-/

namespace A100019.P4086802163085487055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A069779 n) (A165563 n)

end

end A100019.P4086802163085487055

namespace A100019

/-- `A069779(n)%A165563(n)` -/
def P4086802163085487055.Spec : Prop :=
  ∀ n, P4086802163085487055.a n = A100019 n

end A100019

/-! ## A100019.P9031375587585739761

`A060883(n)%A128091(n+1)`
-/

namespace A100019.P9031375587585739761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A060883 n) (A128091 (n + 1))

end

end A100019.P9031375587585739761

namespace A100019

/-- `A060883(n)%A128091(n+1)` -/
def P9031375587585739761.Spec : Prop :=
  ∀ n, P9031375587585739761.a n = A100019 n

end A100019

/-! ## A100019.P9066528869233996823

`A022522(n)%A237516(n+1)`
-/

namespace A100019.P9066528869233996823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A022522 n) (A237516 (n + 1))

end

end A100019.P9066528869233996823

namespace A100019

/-- `A022522(n)%A237516(n+1)` -/
def P9066528869233996823.Spec : Prop :=
  ∀ n, P9066528869233996823.a n = A100019 n

end A100019

/-! ## A100019.P6612868664575088590

`n²*Δ[A006527(n)]`
-/

namespace A100019.P6612868664575088590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006527 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) * (f1 (n + 1) - f1 n)

end

end A100019.P6612868664575088590

namespace A100019

/-- `n²*Δ[A006527(n)]` -/
def P6612868664575088590.Spec : Prop :=
  ∀ n, P6612868664575088590.a n = A100019 n

end A100019

/-! ## A100019.P3718721466767367225

`n²*A008811(2*n+1)`
-/

namespace A100019.P3718721466767367225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) * A008811 (2 * n + 1)

end

end A100019.P3718721466767367225

namespace A100019

/-- `n²*A008811(2*n+1)` -/
def P3718721466767367225.Spec : Prop :=
  ∀ n, P3718721466767367225.a n = A100019 n

end A100019

/-! ## A100019.P6425279758511106714

`n²*A033638(2*n+1)`
-/

namespace A100019.P6425279758511106714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) * A033638 (2 * n + 1)

end

end A100019.P6425279758511106714

namespace A100019

/-- `n²*A033638(2*n+1)` -/
def P6425279758511106714.Spec : Prop :=
  ∀ n, P6425279758511106714.a n = A100019 n

end A100019

/-! ## A100019.P5973016761982188959

`n²*A033465(∑[n])`
-/

namespace A100019.P5973016761982188959
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) * A033465 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A100019.P5973016761982188959

namespace A100019

/-- `n²*A033465(∑[n])` -/
def P5973016761982188959.Spec : Prop :=
  ∀ n, P5973016761982188959.a n = A100019 n

end A100019

/-! ## A100019.P7682478570559751304

`n²*A222405(∑[n])`
-/

namespace A100019.P7682478570559751304
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) * A222405 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A100019.P7682478570559751304

namespace A100019

/-- `n²*A222405(∑[n])` -/
def P7682478570559751304.Spec : Prop :=
  ∀ n, P7682478570559751304.a n = A100019 n

end A100019

/-!
# A100020: a(n) = smallest prime p such that x^2-n has roots in the p-adic integers.

The programs for A100020, there is no canonical definition to state claims against.
-/

/-! ## A100020.P17068792819191604625

`A306220(A037449(37*(n+1)))`
-/

namespace A100020.P17068792819191604625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306220 (A037449 (37 * (n + 1))).toNat

end

end A100020.P17068792819191604625

/-!
# A100021: a(n) = 3*prime(n) - prime(n+1) - 3.

The programs for A100021, the canonical program `A100021.P10486759654254201555` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A100021 has offset 1).

The definition of A100021 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*A000040(n+1)-A000040(n+2)-3` (program `A100021.P10486759654254201555`, by `A100021.P10486759654254201555.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A100021.P10840842949691680391

`A098764(n+1)-3`
-/

namespace A100021.P10840842949691680391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098764 (n + 1) - 3

end

end A100021.P10840842949691680391

namespace A100021

/-- `A098764(n+1)-3` -/
def P10840842949691680391.Spec : Prop :=
  ∀ n, P10840842949691680391.a n = A100021 (n + 1)

theorem P10840842949691680391.correct : P10840842949691680391.Spec := by
  intro n
  simp only [A100021, Nat.add_sub_cancel, A100021.P10840842949691680391.a, A100021.P10486759654254201555.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A098764, A098764.P1450263935949736531.a, A062234, A062234.P8592873382335253705.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A100021

/-! ## A100021.P10486759654254201555

`3*A000040(n+1)-A000040(n+2)-3`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A100021

/-- `3*A000040(n+1)-A000040(n+2)-3` -/
def P10486759654254201555.Spec : Prop :=
  ∀ n, P10486759654254201555.a n = A100021 (n + 1)

theorem P10486759654254201555.correct : P10486759654254201555.Spec := by
  intro n
  simp only [A100021, Nat.add_sub_cancel]

end A100021

/-! ## A100021.P17337605711733601632

`A086801(n+1)+A062234(n+1)`
-/

namespace A100021.P17337605711733601632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086801 (n + 1) + A062234 (n + 1)

end

end A100021.P17337605711733601632

namespace A100021

/-- `A086801(n+1)+A062234(n+1)` -/
def P17337605711733601632.Spec : Prop :=
  ∀ n, P17337605711733601632.a n = A100021 (n + 1)

theorem P17337605711733601632.correct : P17337605711733601632.Spec := by
  intro n
  simp only [A100021, Nat.add_sub_cancel, A100021.P17337605711733601632.a, A100021.P10486759654254201555.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A062234, A062234.P8592873382335253705.a, A086801, A086801.P17699144881820784956.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A100021

/-! ## A100021.P9286775979399692491

`A154115(n+1)+A107471(n+1)`
-/

namespace A100021.P9286775979399692491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154115 (n + 1) + A107471 (n + 1)

end

end A100021.P9286775979399692491

namespace A100021

/-- `A154115(n+1)+A107471(n+1)` -/
def P9286775979399692491.Spec : Prop :=
  ∀ n, P9286775979399692491.a n = A100021 (n + 1)

theorem P9286775979399692491.correct : P9286775979399692491.Spec := by
  intro n
  simp only [A100021, Nat.add_sub_cancel, A100021.P9286775979399692491.a, A100021.P10486759654254201555.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A107471, A107471.P13513587101651290245.a, A154115, A154115.P220062109648616098.a, A086801, A086801.P17699144881820784956.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A100021

/-! ## A100021.P2161410110485905999

`A131426(n+1)-A001223(n+1)`
-/

namespace A100021.P2161410110485905999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131426 (n + 1) - A001223 (n + 1)

end

end A100021.P2161410110485905999

namespace A100021

/-- `A131426(n+1)-A001223(n+1)` -/
def P2161410110485905999.Spec : Prop :=
  ∀ n, P2161410110485905999.a n = A100021 (n + 1)

theorem P2161410110485905999.correct : P2161410110485905999.Spec := by
  intro n
  simp only [A100021, Nat.add_sub_cancel, A100021.P2161410110485905999.a, A100021.P10486759654254201555.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001223, A001223.P5034056745985311719.a, A131426, A131426.P1992533446428371945.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A100021

/-! ## A100021.P8922450470485924474

`A140777(n+1)-A046933(n+1)`
-/

namespace A100021.P8922450470485924474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140777 (n + 1) - A046933 (n + 1)

end

end A100021.P8922450470485924474

namespace A100021

/-- `A140777(n+1)-A046933(n+1)` -/
def P8922450470485924474.Spec : Prop :=
  ∀ n, P8922450470485924474.a n = A100021 (n + 1)

theorem P8922450470485924474.correct : P8922450470485924474.Spec := by
  intro n
  simp only [A100021, Nat.add_sub_cancel, A100021.P8922450470485924474.a, A100021.P10486759654254201555.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A046933, A046933.P9479947770746769512.a, A140777, A140777.P12433789027448162273.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A100021

/-! ## A100021.P11714615683651262685

`A001748(n+1)-A298252(n+1)`
-/

namespace A100021.P11714615683651262685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001748 (n + 1) - A298252 (n + 1)

end

end A100021.P11714615683651262685

namespace A100021

/-- `A001748(n+1)-A298252(n+1)` -/
def P11714615683651262685.Spec : Prop :=
  ∀ n, P11714615683651262685.a n = A100021 (n + 1)

theorem P11714615683651262685.correct : P11714615683651262685.Spec := by
  intro n
  simp only [A100021, Nat.add_sub_cancel, A100021.P11714615683651262685.a, A100021.P10486759654254201555.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001748, A001748.P16019639290970068825.a, A298252, A298252.P859259455876682479.a, A113935, A113935.P8490065931569907193.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A100021

/-! ## A100021.P17225790016379449768

`A001748(n+1)-(A048974(n+1)+1)`
-/

namespace A100021.P17225790016379449768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001748 (n + 1) - (A048974 (n + 1) + 1)

end

end A100021.P17225790016379449768

namespace A100021

/-- `A001748(n+1)-(A048974(n+1)+1)` -/
def P17225790016379449768.Spec : Prop :=
  ∀ n, P17225790016379449768.a n = A100021 (n + 1)

theorem P17225790016379449768.correct : P17225790016379449768.Spec := by
  intro n
  simp only [A100021, Nat.add_sub_cancel, A100021.P17225790016379449768.a, A100021.P10486759654254201555.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001748, A001748.P16019639290970068825.a, A048974, A048974.P12620924037349992420.a, A065091, A065091.P6971844946592549357.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A100021

/-! ## A100021.P14732892514315526686

`A040976(n+1)+A062234(n+1)-1`
-/

namespace A100021.P14732892514315526686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040976 (n + 1) + (A062234 (n + 1) - 1)

end

end A100021.P14732892514315526686

namespace A100021

/-- `A040976(n+1)+A062234(n+1)-1` -/
def P14732892514315526686.Spec : Prop :=
  ∀ n, P14732892514315526686.a n = A100021 (n + 1)

theorem P14732892514315526686.correct : P14732892514315526686.Spec := by
  intro n
  simp only [A100021, Nat.add_sub_cancel, A100021.P14732892514315526686.a, A100021.P10486759654254201555.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A040976, A040976.P11599754272797435513.a, A062234, A062234.P8592873382335253705.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A100021

/-! ## A100021.P1757245882434964331

`A006093(n+1)+A062234(n+1)-2`
-/

namespace A100021.P1757245882434964331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1) + (A062234 (n + 1) - 2)

end

end A100021.P1757245882434964331

namespace A100021

/-- `A006093(n+1)+A062234(n+1)-2` -/
def P1757245882434964331.Spec : Prop :=
  ∀ n, P1757245882434964331.a n = A100021 (n + 1)

theorem P1757245882434964331.correct : P1757245882434964331.Spec := by
  intro n
  simp only [A100021, Nat.add_sub_cancel, A100021.P1757245882434964331.a, A100021.P10486759654254201555.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A006093, A006093.P2906174024863549003.a, A062234, A062234.P8592873382335253705.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A100021

/-! ## A100021.P11672930055359966077

`2*A040976(n+1)-A046933(n+1)`
-/

namespace A100021.P11672930055359966077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A040976 (n + 1) - A046933 (n + 1)

end

end A100021.P11672930055359966077

namespace A100021

/-- `2*A040976(n+1)-A046933(n+1)` -/
def P11672930055359966077.Spec : Prop :=
  ∀ n, P11672930055359966077.a n = A100021 (n + 1)

theorem P11672930055359966077.correct : P11672930055359966077.Spec := by
  intro n
  simp only [A100021, Nat.add_sub_cancel, A100021.P11672930055359966077.a, A100021.P10486759654254201555.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A040976, A040976.P11599754272797435513.a, A046933, A046933.P9479947770746769512.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A100021

/-! ## A100021.P11598903465161972448

`A001748(n+1)-2*A098090(n+1)`
-/

namespace A100021.P11598903465161972448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001748 (n + 1) - 2 * A098090 (n + 1)

end

end A100021.P11598903465161972448

namespace A100021

/-- `A001748(n+1)-2*A098090(n+1)` -/
def P11598903465161972448.Spec : Prop :=
  ∀ n, P11598903465161972448.a n = A100021 (n + 1)

end A100021

/-! ## A100021.P11963316943185793524

`A001749(n+1)%A001043(n+1)-3`
-/

namespace A100021.P11963316943185793524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001749 (n + 1)) (A001043 (n + 1)) - 3

end

end A100021.P11963316943185793524

namespace A100021

/-- `A001749(n+1)%A001043(n+1)-3` -/
def P11963316943185793524.Spec : Prop :=
  ∀ n, P11963316943185793524.a n = A100021 (n + 1)

end A100021

/-! ## A100021.P12953551713890048849

`A006093(n+1)+A040976(n+1)-A001223(n+1)`
-/

namespace A100021.P12953551713890048849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1) + (A040976 (n + 1) - A001223 (n + 1))

end

end A100021.P12953551713890048849

namespace A100021

/-- `A006093(n+1)+A040976(n+1)-A001223(n+1)` -/
def P12953551713890048849.Spec : Prop :=
  ∀ n, P12953551713890048849.a n = A100021 (n + 1)

theorem P12953551713890048849.correct : P12953551713890048849.Spec := by
  intro n
  simp only [A100021, Nat.add_sub_cancel, A100021.P12953551713890048849.a, A100021.P10486759654254201555.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001223, A001223.P5034056745985311719.a, A006093, A006093.P2906174024863549003.a, A040976, A040976.P11599754272797435513.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A100021

/-! ## A100021.P12545525195244497936

`A000040(n+1)+A086801(n+1)-A001223(n+1)`
-/

namespace A100021.P12545525195244497936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + (A086801 (n + 1) - A001223 (n + 1))

end

end A100021.P12545525195244497936

namespace A100021

/-- `A000040(n+1)+A086801(n+1)-A001223(n+1)` -/
def P12545525195244497936.Spec : Prop :=
  ∀ n, P12545525195244497936.a n = A100021 (n + 1)

theorem P12545525195244497936.correct : P12545525195244497936.Spec := by
  intro n
  simp only [A100021, Nat.add_sub_cancel, A100021.P12545525195244497936.a, A100021.P10486759654254201555.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001223, A001223.P5034056745985311719.a, A086801, A086801.P17699144881820784956.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A100021

/-! ## A100021.P16689178580576929190

`A001748(n+1)+A086801(n+1)-A001043(n+1)`
-/

namespace A100021.P16689178580576929190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001748 (n + 1) + (A086801 (n + 1) - A001043 (n + 1))

end

end A100021.P16689178580576929190

namespace A100021

/-- `A001748(n+1)+A086801(n+1)-A001043(n+1)` -/
def P16689178580576929190.Spec : Prop :=
  ∀ n, P16689178580576929190.a n = A100021 (n + 1)

theorem P16689178580576929190.correct : P16689178580576929190.Spec := by
  intro n
  simp only [A100021, Nat.add_sub_cancel, A100021.P16689178580576929190.a, A100021.P10486759654254201555.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001043, A001043.P18269783162673735460.a, A001748, A001748.P16019639290970068825.a, A086801, A086801.P17699144881820784956.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A100021

/-! ## A100021.P7018228630332288181

`A037168(n+1)-Δ[A014688(n+1)]`
-/

namespace A100021.P7018228630332288181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014688 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037168 (n + 1) - (f1 (n + 1) - f1 n)

end

end A100021.P7018228630332288181

namespace A100021

/-- `A037168(n+1)-Δ[A014688(n+1)]` -/
def P7018228630332288181.Spec : Prop :=
  ∀ n, P7018228630332288181.a n = A100021 (n + 1)

end A100021

/-! ## A100021.P1688431808670355790

`A131426(n+1)-Δ[A000040(n+1)]`
-/

namespace A100021.P1688431808670355790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131426 (n + 1) - (f1 (n + 1) - f1 n)

end

end A100021.P1688431808670355790

namespace A100021

/-- `A131426(n+1)-Δ[A000040(n+1)]` -/
def P1688431808670355790.Spec : Prop :=
  ∀ n, P1688431808670355790.a n = A100021 (n + 1)

theorem P1688431808670355790.correct : P1688431808670355790.Spec := by
  intro n
  simp only [A100021, Nat.add_sub_cancel, A100021.P1688431808670355790.f1, A100021.P1688431808670355790.a, A100021.P10486759654254201555.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A131426, A131426.P1992533446428371945.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A100021

/-! ## A100021.P4613076971930809287

`A131426(n+1)-Δ[A006093(n+1)]`
-/

namespace A100021.P4613076971930809287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131426 (n + 1) - (f1 (n + 1) - f1 n)

end

end A100021.P4613076971930809287

namespace A100021

/-- `A131426(n+1)-Δ[A006093(n+1)]` -/
def P4613076971930809287.Spec : Prop :=
  ∀ n, P4613076971930809287.a n = A100021 (n + 1)

theorem P4613076971930809287.correct : P4613076971930809287.Spec := by
  intro n
  simp only [A100021, Nat.add_sub_cancel, A100021.P4613076971930809287.f1, A100021.P4613076971930809287.a, A100021.P10486759654254201555.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A006093, A006093.P2906174024863549003.a, A131426, A131426.P1992533446428371945.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A100021

/-! ## A100021.P8136100487133308654

`A131426(n+1)-Δ[A008864(n+1)]`
-/

namespace A100021.P8136100487133308654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131426 (n + 1) - (f1 (n + 1) - f1 n)

end

end A100021.P8136100487133308654

namespace A100021

/-- `A131426(n+1)-Δ[A008864(n+1)]` -/
def P8136100487133308654.Spec : Prop :=
  ∀ n, P8136100487133308654.a n = A100021 (n + 1)

theorem P8136100487133308654.correct : P8136100487133308654.Spec := by
  intro n
  simp only [A100021, Nat.add_sub_cancel, A100021.P8136100487133308654.f1, A100021.P8136100487133308654.a, A100021.P10486759654254201555.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A008864, A008864.P9177617808325052279.a, A131426, A131426.P1992533446428371945.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A100021

/-!
# A100022: Number of digits in A090162(n).

The programs for A100022, there is no canonical definition to state claims against.
-/

/-! ## A100022.P17203941667588727501

`∑[A004526(2^n+7^n-1)+(-1)^∑{e}[n+1, #]]`
-/

namespace A100022.P17203941667588727501
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 ((2 ^ n : ℤ) + ((7 ^ n : ℤ) - 1)).toNat + (-1) ^ (∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A100022.P17203941667588727501

/-!
# A100023: Molien series for complete weight enumerators of Hermitian self-dual codes over the Galois ring GR(4,2) that contain the all-ones vector.

The programs for A100023, there is no canonical definition to state claims against.
-/

/-! ## A100023.P17304033524445855968

`A345163(n)+A057165(A321283(2*n))`
-/

namespace A100023.P17304033524445855968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345163 n + A057165 (A321283 (2 * n)).toNat

end

end A100023.P17304033524445855968

/-!
# A100024: Molien series for complete weight enumerators of trace-additive Hermitian self-dual codes over the Galois ring GR(4,2).

The programs for A100024, there is no canonical definition to state claims against.
-/

/-! ## A100024.P1883467892692334825

`A054503(A002281(n))+A054493(n)`
-/

namespace A100024.P1883467892692334825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054503 (A002281 n).toNat + A054493 n

end

end A100024.P1883467892692334825

/-!
# A100025: Molien series for complete weight enumerators of trace-additive Hermitian self-dual codes over the Galois ring GR(4,2) that contain the all-ones vector.

The programs for A100025, there is no canonical definition to state claims against.
-/

/-! ## A100025.P114883722888629925

`A100949(A149719(n+2)+1)`
-/

namespace A100025.P114883722888629925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100949 (A149719 (n + 2) + 1).toNat

end

end A100025.P114883722888629925

/-!
# A100027: Smallest (2n+1)-digit palindromic prime of the form 10...0M0...01 (thus M is a palindrome with <= 2n-1 digits).

The programs for A100027, there is no canonical definition to state claims against.
-/

/-! ## A100027.P5097014482926225913

`A028989(n+2)`
-/

namespace A100027.P5097014482926225913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028989 (n + 2)

end

end A100027.P5097014482926225913

/-! ## A100027.P15184256213782529167

`record[A056732(n+3)]`
-/

namespace A100027.P15184256213782529167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056732 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A100027.P15184256213782529167

/-! ## A100027.P12322678365712335892

`A056732(2*n+3)`
-/

namespace A100027.P12322678365712335892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056732 (2 * n + 3)

end

end A100027.P12322678365712335892

/-! ## A100027.P16978617975693292616

`A078790(A008574(n)+3)`
-/

namespace A100027.P16978617975693292616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078790 (A008574 n + 3).toNat

end

end A100027.P16978617975693292616

/-! ## A100027.P11483585323989360223

`∏{e}[A020707(n), A028989(#)]`
-/

namespace A100027.P11483585323989360223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020707 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A028989 (Nat.factorization (f1 n).natAbs p)

end

end A100027.P11483585323989360223

/-!
# A100028: Values of n for which the decimal number 10...030...01 is an n-digit prime.

The programs for A100028, there is no canonical definition to state claims against.
-/

/-! ## A100028.P17060741771259014764

`2*A171376(n+2)+1`
-/

namespace A100028.P17060741771259014764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A171376 (n + 2) + 1

end

end A100028.P17060741771259014764

/-! ## A100028.P1104773668305250981

`A000041(C(2, n+2))+A171376(n+2)+A171376(n+2)`
-/

namespace A100028.P1104773668305250981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose 2 (n + 2)) + (A171376 (n + 2) + A171376 (n + 2))

end

end A100028.P1104773668305250981

/-! ## A100028.P675973133914302871

`A171376(n+2)+A171376(n+2)+A000041(gcd(n, n+1))`
-/

namespace A100028.P675973133914302871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171376 (n + 2) + (A171376 (n + 2) + A000041 (Nat.gcd n (n + 1)))

end

end A100028.P675973133914302871

/-! ## A100028.P17584311210097130947

`A065338(A002144(n+1))+A171376(n+2)+A171376(n+2)`
-/

namespace A100028.P17584311210097130947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065338 (A002144 (n + 1)).toNat + (A171376 (n + 2) + A171376 (n + 2))

end

end A100028.P17584311210097130947

/-! ## A100028.P11436835619311030347

`A078572(A044347(n+1))+A171376(n+2)+A171376(n+2)`
-/

namespace A100028.P11436835619311030347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078572 (A044347 (n + 1)).toNat + (A171376 (n + 2) + A171376 (n + 2))

end

end A100028.P11436835619311030347

/-!
# A100029: Bisection of A008472.

The programs for A100029, the canonical program `A100029.P3344876230183862405` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A100029 has offset 1).

The definition of A100029 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A100029.P3344876230183862405

`∑{p}[Δ[n²], #]`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A100029

/-- `∑{p}[Δ[n²], #]` -/
def P3344876230183862405.Spec : Prop :=
  ∀ n, (P3344876230183862405.a n : ℤ) = A100029 (n + 1)

theorem P3344876230183862405.correct : P3344876230183862405.Spec := by
  intro n
  simp only [A100029, Nat.add_sub_cancel]

end A100029

/-! ## A100029.P11317462504655438076

`∑{p}[4*n+2, #]-2`
-/

namespace A100029.P11317462504655438076
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℤ) - 2

end

end A100029.P11317462504655438076

namespace A100029

/-- `∑{p}[4*n+2, #]-2` -/
def P11317462504655438076.Spec : Prop :=
  ∀ n, P11317462504655438076.a n = A100029 (n + 1)

end A100029

/-! ## A100029.P5054339925426930734

`or(char[1], ∑{p}[2*n+1, #])`
-/

namespace A100029.P5054339925426930734
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor (if ∃ j, f1 j = n then 1 else 0) (∑ p ∈ Nat.primeFactors (f2 n), p)

end

end A100029.P5054339925426930734

namespace A100029

/-- `or(char[1], ∑{p}[2*n+1, #])` -/
def P5054339925426930734.Spec : Prop :=
  ∀ n, (P5054339925426930734.a n : ℤ) = A100029 (n + 1)

end A100029

/-! ## A100029.P8462146271876998048

`2*∑{p}[2*n+1, #/2]`
-/

namespace A100029.P8462146271876998048
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * (∑ p ∈ Nat.primeFactors (f1 n), (p : ℚ) / 2)

end

end A100029.P8462146271876998048

namespace A100029

/-- `2*∑{p}[2*n+1, #/2]` -/
def P8462146271876998048.Spec : Prop :=
  ∀ n, P8462146271876998048.a n = (A100029 (n + 1) : ℚ)

end A100029

/-! ## A100029.P806277103852225784

`-∑{p}[2*n+1, or(1, -#)]`
-/

namespace A100029.P806277103852225784
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∑ p ∈ Nat.primeFactors (f1 n), Int.lor 1 (-(p : ℤ)))

end

end A100029.P806277103852225784

namespace A100029

/-- `-∑{p}[2*n+1, or(1, -#)]` -/
def P806277103852225784.Spec : Prop :=
  ∀ n, P806277103852225784.a n = A100029 (n + 1)

end A100029

/-! ## A100029.P4455598112897969455

`-∑{p}[2*n+1, xor(#, -2)]`
-/

namespace A100029.P4455598112897969455
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∑ p ∈ Nat.primeFactors (f1 n), Int.xor (p : ℤ) (-2))

end

end A100029.P4455598112897969455

namespace A100029

/-- `-∑{p}[2*n+1, xor(#, -2)]` -/
def P4455598112897969455.Spec : Prop :=
  ∀ n, P4455598112897969455.a n = A100029 (n + 1)

end A100029

/-! ## A100029.P12261785391825278929

`∑{p}[2*n+1, #]%(n+1)²`
-/

namespace A100029.P12261785391825278929
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ p ∈ Nat.primeFactors (f1 n), p) % (n + 1) ^ 2

end

end A100029.P12261785391825278929

namespace A100029

/-- `∑{p}[2*n+1, #]%(n+1)²` -/
def P12261785391825278929.Spec : Prop :=
  ∀ n, (P12261785391825278929.a n : ℤ) = A100029 (n + 1)

end A100029

/-! ## A100029.P297311086741307738

`lcm((-1)^n, ∑{p}[2*n+1, #])`
-/

namespace A100029.P297311086741307738
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) ((∑ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℤ)

end

end A100029.P297311086741307738

namespace A100029

/-- `lcm((-1)^n, ∑{p}[2*n+1, #])` -/
def P297311086741307738.Spec : Prop :=
  ∀ n, (P297311086741307738.a n : ℤ) = A100029 (n + 1)

end A100029

/-! ## A100029.P4965902505601280815

`∑{p}[2*n+1, #]^and(1, n)!`
-/

namespace A100029.P4965902505601280815
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ p ∈ Nat.primeFactors (f1 n), p) ^ Nat.factorial (Nat.land 1 n)

end

end A100029.P4965902505601280815

namespace A100029

/-- `∑{p}[2*n+1, #]^and(1, n)!` -/
def P4965902505601280815.Spec : Prop :=
  ∀ n, (P4965902505601280815.a n : ℤ) = A100029 (n + 1)

end A100029

/-! ## A100029.P10635636256781293180

`A008472(Δ[n²])`
-/

namespace A100029.P10635636256781293180
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A100029.P10635636256781293180

namespace A100029

/-- `A008472(Δ[n²])` -/
def P10635636256781293180.Spec : Prop :=
  ∀ n, P10635636256781293180.a n = A100029 (n + 1)

end A100029

/-! ## A100029.P8573224344707514460

`A008475(∏{p}[Δ[n²], #])`
-/

namespace A100029.P8573224344707514460
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008475 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A100029.P8573224344707514460

namespace A100029

/-- `A008475(∏{p}[Δ[n²], #])` -/
def P8573224344707514460.Spec : Prop :=
  ∀ n, P8573224344707514460.a n = A100029 (n + 1)

end A100029

/-! ## A100029.P7536862509836748033

`A001414(∏{p}[2*n+1, #])`
-/

namespace A100029.P7536862509836748033
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A100029.P7536862509836748033

namespace A100029

/-- `A001414(∏{p}[2*n+1, #])` -/
def P7536862509836748033.Spec : Prop :=
  ∀ n, P7536862509836748033.a n = A100029 (n + 1)

end A100029

/-! ## A100029.P13388232732962168772

`-∑{p}[2*n+1, #*A008683(#)]`
-/

namespace A100029.P13388232732962168772
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∑ p ∈ Nat.primeFactors (f1 n), (p : ℤ) * A008683 p)

end

end A100029.P13388232732962168772

namespace A100029

/-- `-∑{p}[2*n+1, #*A008683(#)]` -/
def P13388232732962168772.Spec : Prop :=
  ∀ n, P13388232732962168772.a n = A100029 (n + 1)

end A100029

/-! ## A100029.P15064065123749430847

`A001414(A099984(n+1))`
-/

namespace A100029.P15064065123749430847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (A099984 (n + 1)).toNat

end

end A100029.P15064065123749430847

namespace A100029

/-- `A001414(A099984(n+1))` -/
def P15064065123749430847.Spec : Prop :=
  ∀ n, P15064065123749430847.a n = A100029 (n + 1)

end A100029

/-! ## A100029.P4073311651856422229

`A008472(A017113(n))-2`
-/

namespace A100029.P4073311651856422229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (A017113 n).toNat - 2

end

end A100029.P4073311651856422229

namespace A100029

/-- `A008472(A017113(n))-2` -/
def P4073311651856422229.Spec : Prop :=
  ∀ n, P4073311651856422229.a n = A100029 (n + 1)

end A100029

/-! ## A100029.P18149835422790753268

`A001414(A007947(2*n+1))`
-/

namespace A100029.P18149835422790753268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (A007947 (2 * n + 1)).toNat

end

end A100029.P18149835422790753268

namespace A100029

/-- `A001414(A007947(2*n+1))` -/
def P18149835422790753268.Spec : Prop :=
  ∀ n, P18149835422790753268.a n = A100029 (n + 1)

end A100029

/-! ## A100029.P8987664586600917026

`A000203(2*n+1)-A023890(2*n+1)`
-/

namespace A100029.P8987664586600917026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (2 * n + 1) - A023890 (2 * n + 1)

end

end A100029.P8987664586600917026

namespace A100029

/-- `A000203(2*n+1)-A023890(2*n+1)` -/
def P8987664586600917026.Spec : Prop :=
  ∀ n, P8987664586600917026.a n = A100029 (n + 1)

end A100029

/-! ## A100029.P11404211442601747024

`A099636(2*n+1)*A340678(2*n+1)`
-/

namespace A100029.P11404211442601747024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099636 (2 * n + 1) * A340678 (2 * n + 1)

end

end A100029.P11404211442601747024

namespace A100029

/-- `A099636(2*n+1)*A340678(2*n+1)` -/
def P11404211442601747024.Spec : Prop :=
  ∀ n, P11404211442601747024.a n = A100029 (n + 1)

end A100029

/-!
# A100030: Bisection of A008472.

The programs for A100030, the canonical program `A100030.P16552758078332263723` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A100030 has offset 1).

The definition of A100030 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A100030.P16552758078332263723

`∑{p}[2*(n+1), #]`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A100030

/-- `∑{p}[2*(n+1), #]` -/
def P16552758078332263723.Spec : Prop :=
  ∀ n, (P16552758078332263723.a n : ℤ) = A100030 (n + 1)

theorem P16552758078332263723.correct : P16552758078332263723.Spec := by
  intro n
  simp only [A100030, Nat.add_sub_cancel]

end A100030

/-! ## A100030.P1465662547947401926

`A005069(n+1)+2`
-/

namespace A100030.P1465662547947401926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005069 (n + 1) + 2

end

end A100030.P1465662547947401926

namespace A100030

/-- `A005069(n+1)+2` -/
def P1465662547947401926.Spec : Prop :=
  ∀ n, P1465662547947401926.a n = A100030 (n + 1)

end A100030

/-! ## A100030.P6414517290528228590

`A008472(2*(n+1))`
-/

namespace A100030.P6414517290528228590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (2 * (n + 1))

end

end A100030.P6414517290528228590

namespace A100030

/-- `A008472(2*(n+1))` -/
def P6414517290528228590.Spec : Prop :=
  ∀ n, P6414517290528228590.a n = A100030 (n + 1)

end A100030

/-! ## A100030.P17999935705106631926

`∑{p}[A000265(n+1), #]+2`
-/

namespace A100030.P17999935705106631926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p + 2

end

end A100030.P17999935705106631926

namespace A100030

/-- `∑{p}[A000265(n+1), #]+2` -/
def P17999935705106631926.Spec : Prop :=
  ∀ n, (P17999935705106631926.a n : ℤ) = A100030 (n + 1)

end A100030

/-! ## A100030.P7827485540625707524

`A001414(lcm(2, ∏{p}[n+1, #]))`
-/

namespace A100030.P7827485540625707524
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (Nat.lcm 2 (∏ p ∈ Nat.primeFactors (f1 n), p))

end

end A100030.P7827485540625707524

namespace A100030

/-- `A001414(lcm(2, ∏{p}[n+1, #]))` -/
def P7827485540625707524.Spec : Prop :=
  ∀ n, P7827485540625707524.a n = A100030 (n + 1)

end A100030

/-! ## A100030.P11351270911296235887

`∑{p}[n+1, xor(1, A000010(#))]+2`
-/

namespace A100030.P11351270911296235887
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), Int.xor 1 (A000010 p) + 2

end

end A100030.P11351270911296235887

namespace A100030

/-- `∑{p}[n+1, xor(1, A000010(#))]+2` -/
def P11351270911296235887.Spec : Prop :=
  ∀ n, P11351270911296235887.a n = A100030 (n + 1)

end A100030

/-! ## A100030.P9842736541074751135

`A008472((n+1)/and(n+1, -(n+1)))+2`
-/

namespace A100030.P9842736541074751135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (Int.land (n + 1 : ℤ) (-(n + 1 : ℤ)) : ℚ))).toNat + 2

end

end A100030.P9842736541074751135

namespace A100030

/-- `A008472((n+1)/and(n+1, -(n+1)))+2` -/
def P9842736541074751135.Spec : Prop :=
  ∀ n, P9842736541074751135.a n = A100030 (n + 1)

end A100030

/-! ## A100030.P6799555910977032846

`A001414(A099985(n+1))`
-/

namespace A100030.P6799555910977032846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (A099985 (n + 1)).toNat

end

end A100030.P6799555910977032846

namespace A100030

/-- `A001414(A099985(n+1))` -/
def P6799555910977032846.Spec : Prop :=
  ∀ n, P6799555910977032846.a n = A100030 (n + 1)

end A100030

/-! ## A100030.P17902644031298569309

`A008472(A000265(n+1))+2`
-/

namespace A100030.P17902644031298569309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (A000265 (n + 1)).toNat + 2

end

end A100030.P17902644031298569309

namespace A100030

/-- `A008472(A000265(n+1))+2` -/
def P17902644031298569309.Spec : Prop :=
  ∀ n, P17902644031298569309.a n = A100030 (n + 1)

end A100030

/-! ## A100030.P8589768716647273334

`A001414(A204455(n+1))+2`
-/

namespace A100030.P8589768716647273334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (A204455 (n + 1)).toNat + 2

end

end A100030.P8589768716647273334

namespace A100030

/-- `A001414(A204455(n+1))+2` -/
def P8589768716647273334.Spec : Prop :=
  ∀ n, P8589768716647273334.a n = A100030 (n + 1)

end A100030

/-! ## A100030.P1466849595735634073

`A001414(A007947(2*(n+1)))`
-/

namespace A100030.P1466849595735634073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (A007947 (2 * (n + 1))).toNat

end

end A100030.P1466849595735634073

namespace A100030

/-- `A001414(A007947(2*(n+1)))` -/
def P1466849595735634073.Spec : Prop :=
  ∀ n, P1466849595735634073.a n = A100030 (n + 1)

end A100030

/-! ## A100030.P11924805893837055023

`A008475(A007947(2*n+2))`
-/

namespace A100030.P11924805893837055023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008475 (A007947 (2 * n + 2)).toNat

end

end A100030.P11924805893837055023

namespace A100030

/-- `A008475(A007947(2*n+2))` -/
def P11924805893837055023.Spec : Prop :=
  ∀ n, P11924805893837055023.a n = A100030 (n + 1)

end A100030

/-! ## A100030.P3710432519313717171

`A001414(lcm(2, A007947(n+1)))`
-/

namespace A100030.P3710432519313717171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (Int.lcm 2 (A007947 (n + 1)))

end

end A100030.P3710432519313717171

namespace A100030

/-- `A001414(lcm(2, A007947(n+1)))` -/
def P3710432519313717171.Spec : Prop :=
  ∀ n, P3710432519313717171.a n = A100030 (n + 1)

end A100030

/-! ## A100030.P5163180605781166677

`A074372(n+1)+A033999(n)`
-/

namespace A100030.P5163180605781166677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074372 (n + 1) + A033999 n

end

end A100030.P5163180605781166677

namespace A100030

/-- `A074372(n+1)+A033999(n)` -/
def P5163180605781166677.Spec : Prop :=
  ∀ n, P5163180605781166677.a n = A100030 (n + 1)

end A100030

/-! ## A100030.P10118219655871682113

`A114285(n)+A075653(n+1)`
-/

namespace A100030.P10118219655871682113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114285 n + A075653 (n + 1)

end

end A100030.P10118219655871682113

namespace A100030

/-- `A114285(n)+A075653(n+1)` -/
def P10118219655871682113.Spec : Prop :=
  ∀ n, P10118219655871682113.a n = A100030 (n + 1)

end A100030

/-! ## A100030.P4247317627780227506

`A344931(n+1)+A344908(2*(n+1))`
-/

namespace A100030.P4247317627780227506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344931 (n + 1) + A344908 (2 * (n + 1))

end

end A100030.P4247317627780227506

namespace A100030

/-- `A344931(n+1)+A344908(2*(n+1))` -/
def P4247317627780227506.Spec : Prop :=
  ∀ n, P4247317627780227506.a n = A100030 (n + 1)

end A100030

/-! ## A100030.P14280669924374492790

`A000203(2*(n+1))-A023890(2*(n+1))`
-/

namespace A100030.P14280669924374492790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (2 * (n + 1)) - A023890 (2 * (n + 1))

end

end A100030.P14280669924374492790

namespace A100030

/-- `A000203(2*(n+1))-A023890(2*(n+1))` -/
def P14280669924374492790.Spec : Prop :=
  ∀ n, P14280669924374492790.a n = A100030 (n + 1)

end A100030

/-! ## A100030.P11874676772176224751

`A010673(n+1)+A008472(n+1)`
-/

namespace A100030.P11874676772176224751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010673 (n + 1) + A008472 (n + 1)

end

end A100030.P11874676772176224751

namespace A100030

/-- `A010673(n+1)+A008472(n+1)` -/
def P11874676772176224751.Spec : Prop :=
  ∀ n, P11874676772176224751.a n = A100030 (n + 1)

end A100030

/-! ## A100030.P4822475410370897768

`A099636(2*(n+1))*A340678(2*(n+1))`
-/

namespace A100030.P4822475410370897768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099636 (2 * (n + 1)) * A340678 (2 * (n + 1))

end

end A100030.P4822475410370897768

namespace A100030

/-- `A099636(2*(n+1))*A340678(2*(n+1))` -/
def P4822475410370897768.Spec : Prop :=
  ∀ n, P4822475410370897768.a n = A100030 (n + 1)

end A100030

/-! ## A100030.P13962308856956329521

`sqrt(A235323(2*(n+1)))`
-/

namespace A100030.P13962308856956329521
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A235323 (2 * (n + 1)) : ℝ)

end

end A100030.P13962308856956329521

namespace A100030

/-- `sqrt(A235323(2*(n+1)))` -/
def P13962308856956329521.Spec : Prop :=
  ∀ n, P13962308856956329521.a n = (A100030 (n + 1) : ℝ)

end A100030

/-!
# A100031: Bisection of A005384.

The programs for A100031, the canonical program `A100031.P6992441292231894961` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A100031 has offset 1).

The definition of A100031 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A100031.P6992441292231894961

`A005384(Δ[n²])`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A100031

/-- `A005384(Δ[n²])` -/
def P6992441292231894961.Spec : Prop :=
  ∀ n, P6992441292231894961.a n = A100031 (n + 1)

theorem P6992441292231894961.correct : P6992441292231894961.Spec := by
  intro n
  simp only [A100031, Nat.add_sub_cancel]

end A100031

/-! ## A100031.P11083674469176040199

`record[A005384(n^(n%2))]`
-/

namespace A100031.P11083674469176040199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005384 (n ^ (n % 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A100031.P11083674469176040199

namespace A100031

/-- `record[A005384(n^(n%2))]` -/
def P11083674469176040199.Spec : Prop :=
  ∀ n, P11083674469176040199.a n = A100031 (n + 1)

end A100031

/-! ## A100031.P9776316285871367269

`record[A005384(n^and(1, n))]`
-/

namespace A100031.P9776316285871367269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005384 (n ^ Nat.land 1 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A100031.P9776316285871367269

namespace A100031

/-- `record[A005384(n^and(1, n))]` -/
def P9776316285871367269.Spec : Prop :=
  ∀ n, P9776316285871367269.a n = A100031 (n + 1)

end A100031

/-! ## A100031.P357234143693536047

`or(char[1], A005384(2*n+1))`
-/

namespace A100031.P357234143693536047
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A005384 (2 * n + 1))

end

end A100031.P357234143693536047

namespace A100031

/-- `or(char[1], A005384(2*n+1))` -/
def P357234143693536047.Spec : Prop :=
  ∀ n, P357234143693536047.a n = A100031 (n + 1)

end A100031

/-! ## A100031.P6752439517587993686

`record[(-1)^n*A005384(n+1)]`
-/

namespace A100031.P6752439517587993686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A005384 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A100031.P6752439517587993686

namespace A100031

/-- `record[(-1)^n*A005384(n+1)]` -/
def P6752439517587993686.Spec : Prop :=
  ∀ n, P6752439517587993686.a n = A100031 (n + 1)

end A100031

/-! ## A100031.P5212954094293442868

`record[A005384((n+1)/2^val(n+1, 2))]`
-/

namespace A100031.P5212954094293442868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005384 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A100031.P5212954094293442868

namespace A100031

/-- `record[A005384((n+1)/2^val(n+1, 2))]` -/
def P5212954094293442868.Spec : Prop :=
  ∀ n, P5212954094293442868.a n = A100031 (n + 1)

end A100031

/-! ## A100031.P14778272416376122758

`record[A005384((n+1)/and(n+1, -(n+1)))]`
-/

namespace A100031.P14778272416376122758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005384 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (Int.land (n + 1 : ℤ) (-(n + 1 : ℤ)) : ℚ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A100031.P14778272416376122758

namespace A100031

/-- `record[A005384((n+1)/and(n+1, -(n+1)))]` -/
def P14778272416376122758.Spec : Prop :=
  ∀ n, P14778272416376122758.a n = A100031 (n + 1)

end A100031

/-! ## A100031.P9561353006032597222

`record[A005384(A000265(n+1))]`
-/

namespace A100031.P9561353006032597222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005384 (A000265 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A100031.P9561353006032597222

namespace A100031

/-- `record[A005384(A000265(n+1))]` -/
def P9561353006032597222.Spec : Prop :=
  ∀ n, P9561353006032597222.a n = A100031 (n + 1)

end A100031

/-! ## A100031.P9772969217308420278

`A005384(2*n+1)%A016885(n)²`
-/

namespace A100031.P9772969217308420278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005384 (2 * n + 1)) (A016885 n ^ 2)

end

end A100031.P9772969217308420278

namespace A100031

/-- `A005384(2*n+1)%A016885(n)²` -/
def P9772969217308420278.Spec : Prop :=
  ∀ n, P9772969217308420278.a n = A100031 (n + 1)

end A100031

/-! ## A100031.P6173022664249200108

`A005384(2*n+1)+A000038(n+1)`
-/

namespace A100031.P6173022664249200108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005384 (2 * n + 1) + A000038 (n + 1)

end

end A100031.P6173022664249200108

namespace A100031

/-- `A005384(2*n+1)+A000038(n+1)` -/
def P6173022664249200108.Spec : Prop :=
  ∀ n, P6173022664249200108.a n = A100031 (n + 1)

end A100031

/-! ## A100031.P5145240852966838638

`A355451(2*n+1)+A005384(2*n+1)`
-/

namespace A100031.P5145240852966838638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355451 (2 * n + 1) + A005384 (2 * n + 1)

end

end A100031.P5145240852966838638

namespace A100031

/-- `A355451(2*n+1)+A005384(2*n+1)` -/
def P5145240852966838638.Spec : Prop :=
  ∀ n, P5145240852966838638.a n = A100031 (n + 1)

end A100031

/-! ## A100031.P8196836181898288772

`A005384(2*n+1)+A000007(n+1)`
-/

namespace A100031.P8196836181898288772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005384 (2 * n + 1) + A000007 (n + 1)

end

end A100031.P8196836181898288772

namespace A100031

/-- `A005384(2*n+1)+A000007(n+1)` -/
def P8196836181898288772.Spec : Prop :=
  ∀ n, P8196836181898288772.a n = A100031 (n + 1)

end A100031

/-! ## A100031.P16289409085061778476

`record[A005384(n+1)*A033999(n)]`
-/

namespace A100031.P16289409085061778476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005384 (n + 1) * A033999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A100031.P16289409085061778476

namespace A100031

/-- `record[A005384(n+1)*A033999(n)]` -/
def P16289409085061778476.Spec : Prop :=
  ∀ n, P16289409085061778476.a n = A100031 (n + 1)

end A100031

/-! ## A100031.P10172511742658296586

`A005384(2*n+1)*A033999(2*n)`
-/

namespace A100031.P10172511742658296586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005384 (2 * n + 1) * A033999 (2 * n)

end

end A100031.P10172511742658296586

namespace A100031

/-- `A005384(2*n+1)*A033999(2*n)` -/
def P10172511742658296586.Spec : Prop :=
  ∀ n, P10172511742658296586.a n = A100031 (n + 1)

end A100031

/-! ## A100031.P2530634957954039949

`A176045(Δ[n²])-1`
-/

namespace A100031.P2530634957954039949
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176045 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - 1

end

end A100031.P2530634957954039949

namespace A100031

/-- `A176045(Δ[n²])-1` -/
def P2530634957954039949.Spec : Prop :=
  ∀ n, P2530634957954039949.a n = A100031 (n + 1)

theorem P2530634957954039949.correct : P2530634957954039949.Spec := by
  intro n
  simp only [A100031, Nat.add_sub_cancel, A100031.P2530634957954039949.f1, A100031.P2530634957954039949.a, A100031.P6992441292231894961.f1, A100031.P6992441292231894961.a, A005384, A005384.P4537023799186511760.f1, A005384.P4537023799186511760.a, A176045, A176045.P10228396740254184789.a, A348511, A348511.P16032306020572469586.f1, A348511.P16032306020572469586.f2, A348511.P16032306020572469586.a, A246277, A246277.P3450750564944014413.a, A348717, A348717.P703712104273003584.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A100031

/-! ## A100031.P6457638630205757521

`A077065(Δ[n²])/2`
-/

namespace A100031.P6457638630205757521
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A077065 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / 2

end

end A100031.P6457638630205757521

namespace A100031

/-- `A077065(Δ[n²])/2` -/
def P6457638630205757521.Spec : Prop :=
  ∀ n, P6457638630205757521.a n = (A100031 (n + 1) : ℚ)

theorem P6457638630205757521.correct : P6457638630205757521.Spec := by
  intro n
  simp only [A100031, Nat.add_sub_cancel, A100031.P6457638630205757521.f1, A100031.P6457638630205757521.a, A100031.P6992441292231894961.f1, A100031.P6992441292231894961.a, A005384, A005384.P4537023799186511760.f1, A005384.P4537023799186511760.a, A077065, A077065.P3431251406781570749.a, A005385, A005385.P12850744102754472242.a, A348511, A348511.P16032306020572469586.f1, A348511.P16032306020572469586.f2, A348511.P16032306020572469586.a, A246277, A246277.P3450750564944014413.a, A348717, A348717.P703712104273003584.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A100031

/-! ## A100031.P13770768023409275567

`floor(A005385(2*n+1)/2)`
-/

namespace A100031.P13770768023409275567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A005385 (2 * n + 1) : ℚ) / 2⌋

end

end A100031.P13770768023409275567

namespace A100031

/-- `floor(A005385(2*n+1)/2)` -/
def P13770768023409275567.Spec : Prop :=
  ∀ n, P13770768023409275567.a n = A100031 (n + 1)

end A100031

/-! ## A100031.P5009956400543002945

`record[A005384(A026741(n+1))]`
-/

namespace A100031.P5009956400543002945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005384 (A026741 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A100031.P5009956400543002945

namespace A100031

/-- `record[A005384(A026741(n+1))]` -/
def P5009956400543002945.Spec : Prop :=
  ∀ n, P5009956400543002945.a n = A100031 (n + 1)

end A100031

/-! ## A100031.P5305340563368723

`A077065(2*n+1)-A005384(2*n+1)`
-/

namespace A100031.P5305340563368723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077065 (2 * n + 1) - A005384 (2 * n + 1)

end

end A100031.P5305340563368723

namespace A100031

/-- `A077065(2*n+1)-A005384(2*n+1)` -/
def P5305340563368723.Spec : Prop :=
  ∀ n, P5305340563368723.a n = A100031 (n + 1)

end A100031

/-!
# A100032: Bisection of A005384.

The programs for A100032, the canonical program `A100032.P7057831006258244853` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A100032 has offset 1).

The definition of A100032 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A100032.P7057831006258244853

`A005384(2*(n+1))`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A100032

/-- `A005384(2*(n+1))` -/
def P7057831006258244853.Spec : Prop :=
  ∀ n, P7057831006258244853.a n = A100032 (n + 1)

theorem P7057831006258244853.correct : P7057831006258244853.Spec := by
  intro n
  simp only [A100032, Nat.add_sub_cancel]

end A100032

/-! ## A100032.P5629766041721481531

`record[A005384(xor(1, n)+1)]`
-/

namespace A100032.P5629766041721481531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005384 (Nat.xor 1 n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A100032.P5629766041721481531

namespace A100032

/-- `record[A005384(xor(1, n)+1)]` -/
def P5629766041721481531.Spec : Prop :=
  ∀ n, P5629766041721481531.a n = A100032 (n + 1)

end A100032

/-! ## A100032.P4788789018325870043

`or(1, A005384(n+2+n))`
-/

namespace A100032.P4788789018325870043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A005384 (n + 2 + n))

end

end A100032.P4788789018325870043

namespace A100032

/-- `or(1, A005384(n+2+n))` -/
def P4788789018325870043.Spec : Prop :=
  ∀ n, P4788789018325870043.a n = A100032 (n + 1)

end A100032

/-! ## A100032.P10904866829728629014

`record[A005384(A000265(n+1)+1)]`
-/

namespace A100032.P10904866829728629014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005384 (A000265 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A100032.P10904866829728629014

namespace A100032

/-- `record[A005384(A000265(n+1)+1)]` -/
def P10904866829728629014.Spec : Prop :=
  ∀ n, P10904866829728629014.a n = A100032 (n + 1)

end A100032

/-! ## A100032.P15040205310661675115

`A005384(A005843(n+1))%A059763(n+1)`
-/

namespace A100032.P15040205310661675115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005384 (A005843 (n + 1)).toNat) (A059763 (n + 1))

end

end A100032.P15040205310661675115

namespace A100032

/-- `A005384(A005843(n+1))%A059763(n+1)` -/
def P15040205310661675115.Spec : Prop :=
  ∀ n, P15040205310661675115.a n = A100032 (n + 1)

end A100032

/-! ## A100032.P1553773923736435961

`record[A005384(n+2)/A033999(n)]`
-/

namespace A100032.P1553773923736435961
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005384 (n + 2) : ℚ) / (A033999 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A100032.P1553773923736435961

namespace A100032

/-- `record[A005384(n+2)/A033999(n)]` -/
def P1553773923736435961.Spec : Prop :=
  ∀ n, P1553773923736435961.a n = (A100032 (n + 1) : ℚ)

end A100032

/-! ## A100032.P13173694160168909901

`A176045(2*(n+1))-1`
-/

namespace A100032.P13173694160168909901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176045 (2 * (n + 1)) - 1

end

end A100032.P13173694160168909901

namespace A100032

/-- `A176045(2*(n+1))-1` -/
def P13173694160168909901.Spec : Prop :=
  ∀ n, P13173694160168909901.a n = A100032 (n + 1)

theorem P13173694160168909901.correct : P13173694160168909901.Spec := by
  intro n
  simp only [A100032, Nat.add_sub_cancel, A100032.P13173694160168909901.a, A100032.P7057831006258244853.a, A005384, A005384.P4537023799186511760.f1, A005384.P4537023799186511760.a, A176045, A176045.P10228396740254184789.a, A348511, A348511.P16032306020572469586.f1, A348511.P16032306020572469586.f2, A348511.P16032306020572469586.a, A246277, A246277.P3450750564944014413.a, A348717, A348717.P703712104273003584.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A100032

/-! ## A100032.P6274997787866266994

`A077065(2*(n+1))/2`
-/

namespace A100032.P6274997787866266994
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A077065 (2 * (n + 1)) : ℚ) / 2

end

end A100032.P6274997787866266994

namespace A100032

/-- `A077065(2*(n+1))/2` -/
def P6274997787866266994.Spec : Prop :=
  ∀ n, P6274997787866266994.a n = (A100032 (n + 1) : ℚ)

theorem P6274997787866266994.correct : P6274997787866266994.Spec := by
  intro n
  simp only [A100032, Nat.add_sub_cancel, A100032.P6274997787866266994.a, A100032.P7057831006258244853.a, A005384, A005384.P4537023799186511760.f1, A005384.P4537023799186511760.a, A077065, A077065.P3431251406781570749.a, A005385, A005385.P12850744102754472242.a, A348511, A348511.P16032306020572469586.f1, A348511.P16032306020572469586.f2, A348511.P16032306020572469586.a, A246277, A246277.P3450750564944014413.a, A348717, A348717.P703712104273003584.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A100032

/-! ## A100032.P13984612957058014570

`floor(A005385(2*(n+1))/2)`
-/

namespace A100032.P13984612957058014570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A005385 (2 * (n + 1)) : ℚ) / 2⌋

end

end A100032.P13984612957058014570

namespace A100032

/-- `floor(A005385(2*(n+1))/2)` -/
def P13984612957058014570.Spec : Prop :=
  ∀ n, P13984612957058014570.a n = A100032 (n + 1)

end A100032

/-! ## A100032.P3563104878843743180

`2*A124485(2*n+1)-1`
-/

namespace A100032.P3563104878843743180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A124485 (2 * n + 1) - 1

end

end A100032.P3563104878843743180

namespace A100032

/-- `2*A124485(2*n+1)-1` -/
def P3563104878843743180.Spec : Prop :=
  ∀ n, P3563104878843743180.a n = A100032 (n + 1)

end A100032

/-! ## A100032.P2840561400485324939

`record[A005384(A026741(n+1)+1)]`
-/

namespace A100032.P2840561400485324939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005384 (A026741 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A100032.P2840561400485324939

namespace A100032

/-- `record[A005384(A026741(n+1)+1)]` -/
def P2840561400485324939.Spec : Prop :=
  ∀ n, P2840561400485324939.a n = A100032 (n + 1)

end A100032

/-! ## A100032.P995054427559271320

`(A057428(n+1)+A005385(2*(n+1)))/2`
-/

namespace A100032.P995054427559271320
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A057428 (n + 1) + A005385 (2 * (n + 1)) : ℚ) / 2

end

end A100032.P995054427559271320

namespace A100032

/-- `(A057428(n+1)+A005385(2*(n+1)))/2` -/
def P995054427559271320.Spec : Prop :=
  ∀ n, P995054427559271320.a n = (A100032 (n + 1) : ℚ)

theorem P995054427559271320.correct : P995054427559271320.Spec := by
  intro n
  simp only [A100032, Nat.add_sub_cancel, A100032.P995054427559271320.a, A100032.P7057831006258244853.a, A005384, A005384.P4537023799186511760.f1, A005384.P4537023799186511760.a, A005385, A005385.P12850744102754472242.a, A057428, A057428.P2999489532230392221.a, A057427, A057427.P3058147525557661423.a, A348511, A348511.P16032306020572469586.f1, A348511.P16032306020572469586.f2, A348511.P16032306020572469586.a, A000007, A000007.P6599383543502402472.a, A246277, A246277.P3450750564944014413.a, A348717, A348717.P703712104273003584.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A100032

/-! ## A100032.P1881637329496217525

`A066819(2*(n+1))-A066819(2*n+1)`
-/

namespace A100032.P1881637329496217525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066819 (2 * (n + 1)) - A066819 (2 * n + 1)

end

end A100032.P1881637329496217525

namespace A100032

/-- `A066819(2*(n+1))-A066819(2*n+1)` -/
def P1881637329496217525.Spec : Prop :=
  ∀ n, P1881637329496217525.a n = A100032 (n + 1)

end A100032

/-! ## A100032.P11574372082650537029

`A175666(2*(n+1))-A005385(2*(n+1))`
-/

namespace A100032.P11574372082650537029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175666 (2 * (n + 1)) - A005385 (2 * (n + 1))

end

end A100032.P11574372082650537029

namespace A100032

/-- `A175666(2*(n+1))-A005385(2*(n+1))` -/
def P11574372082650537029.Spec : Prop :=
  ∀ n, P11574372082650537029.a n = A100032 (n + 1)

theorem P11574372082650537029.correct : P11574372082650537029.Spec := by
  intro n
  simp only [A100032, Nat.add_sub_cancel, A100032.P11574372082650537029.a, A100032.P7057831006258244853.a, A005384, A005384.P4537023799186511760.f1, A005384.P4537023799186511760.a, A005385, A005385.P12850744102754472242.a, A175666, A175666.P11802829545752177848.a, A348511, A348511.P16032306020572469586.f1, A348511.P16032306020572469586.f2, A348511.P16032306020572469586.a, A246277, A246277.P3450750564944014413.a, A348717, A348717.P703712104273003584.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A100032

/-! ## A100032.P6135517252294972126

`(A005385(2*n+2)-A054977(n+1))/2`
-/

namespace A100032.P6135517252294972126
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005385 (2 * n + 2) - A054977 (n + 1) : ℚ) / 2

end

end A100032.P6135517252294972126

namespace A100032

/-- `(A005385(2*n+2)-A054977(n+1))/2` -/
def P6135517252294972126.Spec : Prop :=
  ∀ n, P6135517252294972126.a n = (A100032 (n + 1) : ℚ)

end A100032

/-! ## A100032.P12710809455426705180

`A156592(2*(n+1))/A005385(2*(n+1))`
-/

namespace A100032.P12710809455426705180
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A156592 (2 * (n + 1)) : ℚ) / (A005385 (2 * (n + 1)) : ℚ)

end

end A100032.P12710809455426705180

namespace A100032

/-- `A156592(2*(n+1))/A005385(2*(n+1))` -/
def P12710809455426705180.Spec : Prop :=
  ∀ n, P12710809455426705180.a n = (A100032 (n + 1) : ℚ)

end A100032

/-! ## A100032.P7759410906473980561

`(A077068(2*(n+1))-A232342(2*(n+1)))/2`
-/

namespace A100032.P7759410906473980561
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A077068 (2 * (n + 1)) - A232342 (2 * (n + 1)) : ℚ) / 2

end

end A100032.P7759410906473980561

namespace A100032

/-- `(A077068(2*(n+1))-A232342(2*(n+1)))/2` -/
def P7759410906473980561.Spec : Prop :=
  ∀ n, P7759410906473980561.a n = (A100032 (n + 1) : ℚ)

theorem P7759410906473980561.correct : P7759410906473980561.Spec := by
  intro n
  simp only [A100032, Nat.add_sub_cancel, A100032.P7759410906473980561.a, A100032.P7057831006258244853.a, A005384, A005384.P4537023799186511760.f1, A005384.P4537023799186511760.a, A077068, A077068.P14869786235870196485.a, A232342, A232342.P12753495415627519153.a, A005383, A005383.P14491179252099632441.a, A077065, A077065.P3431251406781570749.a, A348511, A348511.P16032306020572469586.f1, A348511.P16032306020572469586.f2, A348511.P16032306020572469586.a, A005382, A005382.P6052769528681184091.f1, A005382.P6052769528681184091.f2, A005382.P6052769528681184091.a, A005385, A005385.P12850744102754472242.a, A246277, A246277.P3450750564944014413.a, A232667, A232667.P15325416728092359477.f1, A232667.P15325416728092359477.f2, A232667.P15325416728092359477.a, A234999, A234999.P3604876205550161988.f1, A234999.P3604876205550161988.a, A348717, A348717.P703712104273003584.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A100032

/-! ## A100032.P10583076634773651303

`p?[A005384(n+1)^and(1, n)]`
-/

namespace A100032.P10583076634773651303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005384 (n + 1) ^ Nat.land 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A100032.P10583076634773651303

namespace A100032

/-- `p?[A005384(n+1)^and(1, n)]` -/
def P10583076634773651303.Spec : Prop :=
  ∀ n, P10583076634773651303.a n = A100032 (n + 1)

end A100032

/-!
# A100033: Bisection of A001700.

The programs for A100033, the canonical program `A100033.P3961227300071630067` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A100033 has offset 0).

The definition of A100033 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A100033.P6578883741666883935

`2*(4*n+1)*(4*n+3)/((n+1)*(2*n+1))*a(n-1)` with `a(0)=3`
-/

namespace A100033.P6578883741666883935
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [3] fun n a =>
  (2 * (4 * n + 1) * (4 * n + 3) : ℚ) / ((n + 1) * (2 * n + 1) : ℚ) * a (n - 1)

end

end A100033.P6578883741666883935

namespace A100033

/-- `2*(4*n+1)*(4*n+3)/((n+1)*(2*n+1))*a(n-1)` -/
def P6578883741666883935.Spec : Prop :=
  ∀ n, P6578883741666883935.a n = (A100033 n : ℚ)

end A100033

/-! ## A100033.P3961227300071630067

`C(4*n+3, 2*n+2)`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A100033

/-- `C(4*n+3, 2*n+2)` -/
def P3961227300071630067.Spec : Prop :=
  ∀ n, (P3961227300071630067.a n : ℤ) = A100033 n

theorem P3961227300071630067.correct : P3961227300071630067.Spec := by
  intro n
  simp only [A100033]

end A100033

/-! ## A100033.P15305628751150096890

`record[-∏[2/(n+2)-4]]`
-/

namespace A100033.P15305628751150096890
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (n + 2 : ℚ) - 4

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  -(∏ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A100033.P15305628751150096890

namespace A100033

/-- `record[-∏[2/(n+2)-4]]` -/
def P15305628751150096890.Spec : Prop :=
  ∀ n, P15305628751150096890.a n = (A100033 n : ℚ)

end A100033

/-! ## A100033.P9834355918042492278

`A259557(n+1)`
-/

namespace A100033.P9834355918042492278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259557 (n + 1)

end

end A100033.P9834355918042492278

namespace A100033

/-- `A259557(n+1)` -/
def P9834355918042492278.Spec : Prop :=
  ∀ n, P9834355918042492278.a n = A100033 n

end A100033

/-! ## A100033.P1364304060324292890

`A001700(Δ[n²])`
-/

namespace A100033.P1364304060324292890
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001700 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A100033.P1364304060324292890

namespace A100033

/-- `A001700(Δ[n²])` -/
def P1364304060324292890.Spec : Prop :=
  ∀ n, P1364304060324292890.a n = A100033 n

end A100033

/-! ## A100033.P12708830507850546034

`A193632(∑[n+2])`
-/

namespace A100033.P12708830507850546034
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193632 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A100033.P12708830507850546034

namespace A100033

/-- `A193632(∑[n+2])` -/
def P12708830507850546034.Spec : Prop :=
  ∀ n, P12708830507850546034.a n = A100033 n

end A100033

/-! ## A100033.P17503172879802416625

`Δ[A106269(2*n)]`
-/

namespace A100033.P17503172879802416625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106269 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A100033.P17503172879802416625

namespace A100033

/-- `Δ[A106269(2*n)]` -/
def P17503172879802416625.Spec : Prop :=
  ∀ n, P17503172879802416625.a n = A100033 n

end A100033

/-! ## A100033.P14583493466986015550

`A001405(record[xor(3, n)])`
-/

namespace A100033.P14583493466986015550
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A100033.P14583493466986015550

namespace A100033

/-- `A001405(record[xor(3, n)])` -/
def P14583493466986015550.Spec : Prop :=
  ∀ n, P14583493466986015550.a n = A100033 n

end A100033

/-! ## A100033.P10382611727901587273

`A088218(2*(n+1))`
-/

namespace A100033.P10382611727901587273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088218 (2 * (n + 1))

end

end A100033.P10382611727901587273

namespace A100033

/-- `A088218(2*(n+1))` -/
def P10382611727901587273.Spec : Prop :=
  ∀ n, P10382611727901587273.a n = A100033 n

end A100033

/-! ## A100033.P851136023271142558

`A110556(2*(n+1))`
-/

namespace A100033.P851136023271142558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110556 (2 * (n + 1))

end

end A100033.P851136023271142558

namespace A100033

/-- `A110556(2*(n+1))` -/
def P851136023271142558.Spec : Prop :=
  ∀ n, P851136023271142558.a n = A100033 n

end A100033

/-!
# A100034: Bisection of A000081 (even part).

The programs for A100034, there is no canonical definition to state claims against.
-/

/-! ## A100034.P13233334116297990826

`A000081(2*n)`
-/

namespace A100034.P13233334116297990826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000081 (2 * n)

end

end A100034.P13233334116297990826

/-! ## A100034.P16772581160958156068

`record[A000081(n)/(-1)^n]`
-/

namespace A100034.P16772581160958156068
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000081 n : ℚ) / ((-1) ^ n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A100034.P16772581160958156068

/-! ## A100034.P1060064406912807687

`record[A000081(floor(n/(n%2+1)))]`
-/

namespace A100034.P1060064406912807687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000081 ⌊(n : ℚ) / ((n % 2 + 1 : ℕ) : ℚ)⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A100034.P1060064406912807687

/-! ## A100034.P6009224150161824706

`record[A000081(A014681(n))]`
-/

namespace A100034.P6009224150161824706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000081 (A014681 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A100034.P6009224150161824706

/-! ## A100034.P10221665423073408031

`record[A000081(A029578(n))]`
-/

namespace A100034.P10221665423073408031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000081 (A029578 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A100034.P10221665423073408031

/-! ## A100034.P11522966488656833337

`record[A000081(A083220(n))]`
-/

namespace A100034.P11522966488656833337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000081 (A083220 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A100034.P11522966488656833337

/-! ## A100034.P15119355755588792947

`record[A000081(A110090(n))]`
-/

namespace A100034.P15119355755588792947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000081 (A110090 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A100034.P15119355755588792947

/-! ## A100034.P18258898534489303376

`record[A000081(A131508(n))]`
-/

namespace A100034.P18258898534489303376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000081 (A131508 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A100034.P18258898534489303376

/-! ## A100034.P8977644885365066078

`record[A000081(A028897(n)+n)]`
-/

namespace A100034.P8977644885365066078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000081 (A028897 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A100034.P8977644885365066078

/-! ## A100034.P4565711531342438829

`record[A000081(A081594(n)+n)]`
-/

namespace A100034.P4565711531342438829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000081 (A081594 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A100034.P4565711531342438829

/-! ## A100034.P8444272398123225789

`record[A000081(lcm(n, A056594(n)))]`
-/

namespace A100034.P8444272398123225789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000081 (Int.lcm (n : ℤ) (A056594 n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A100034.P8444272398123225789

/-! ## A100034.P10525154694770962326

`A222380(2*n)+A222379(2*n)`
-/

namespace A100034.P10525154694770962326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222380 (2 * n) + A222379 (2 * n)

end

end A100034.P10525154694770962326

/-! ## A100034.P16079498806654311416

`A211192(2*n)+2*A222379(2*n)`
-/

namespace A100034.P16079498806654311416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211192 (2 * n) + 2 * A222379 (2 * n)

end

end A100034.P16079498806654311416

/-! ## A100034.P14509437012384271780

`record[A000081(A004275(A264749(n)))]`
-/

namespace A100034.P14509437012384271780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000081 (A004275 (A264749 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A100034.P14509437012384271780

/-! ## A100034.P13681163595422603146

`record[A000081(A075167(n+1)+A049084(n+1))]`
-/

namespace A100034.P13681163595422603146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000081 (A075167 (n + 1) + A049084 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A100034.P13681163595422603146

/-! ## A100034.P10947871065413766011

`A095341(2*n+1)/Δ[n²]`
-/

namespace A100034.P10947871065413766011
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A095341 (2 * n + 1) : ℚ) / ((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℚ)

end

end A100034.P10947871065413766011

/-! ## A100034.P10747176811165027412

`A213674(2*n)-A213683(2*n)`
-/

namespace A100034.P10747176811165027412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213674 (2 * n) - A213683 (2 * n)

end

end A100034.P10747176811165027412

/-!
# A100036: a(n) = smallest m such that A100035(m) = n.

The programs for A100036, there is no canonical definition to state claims against.
-/

/-! ## A100036.P1977807672605418271

`∑[a(n-2)+4%a(n-2)]` with `a(0)=1, a(1)=1, a(2)=1, a(3)=2, a(4)=2, a(5)=5`
-/

namespace A100036.P1977807672605418271
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 1, 2, 2, 5] fun n f1 =>
  f1 (n - 2) + 4 % f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A100036.P1977807672605418271

/-! ## A100036.P12582098243751008618

`∑[2*a(n-2)-a(n-4)]` with `a(0)=1, a(1)=1, a(2)=1, a(3)=2, a(4)=2, a(5)=5, a(6)=2, a(7)=9`
-/

namespace A100036.P12582098243751008618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1, 2, 2, 5, 2, 9] fun n f1 =>
  2 * f1 (n - 2) - f1 (n - 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A100036.P12582098243751008618

/-! ## A100036.P17192481835518696259

`∑[A266662(floor(n-atan(n)))]`
-/

namespace A100036.P17192481835518696259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266662 ⌊(n : ℝ) - Real.arctan (n : ℝ)⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A100036.P17192481835518696259

/-! ## A100036.P3676105453511847008

`∑[A266662(n-ceil(atan(n)))]`
-/

namespace A100036.P3676105453511847008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266662 ((n : ℤ) - ⌈Real.arctan (n : ℝ)⌉).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A100036.P3676105453511847008

/-! ## A100036.P9559713944345807019

`∑[A266662(round(acot(n)+n)-2)]`
-/

namespace A100036.P9559713944345807019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266662 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ)) - 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A100036.P9559713944345807019

/-! ## A100036.P12416951763399182827

`∑[A266662(comp[2*n+3]-n)]`
-/

namespace A100036.P12416951763399182827
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 3

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266662 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n - n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A100036.P12416951763399182827

/-! ## A100036.P14655455563830565313

`A266662(n-2)+a(n-1)` with `a(0)=1, a(1)=2`
-/

namespace A100036.P14655455563830565313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A266662 (n - 2) + a (n - 1)

end

end A100036.P14655455563830565313

/-! ## A100036.P1242419608698355817

`A216249(A266594(n))-n`
-/

namespace A100036.P1242419608698355817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216249 (A266594 n).toNat - (n : ℤ)

end

end A100036.P1242419608698355817

/-! ## A100036.P3193833929326051361

`A267262(n+1)-A004275(n)`
-/

namespace A100036.P3193833929326051361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267262 (n + 1) - A004275 n

end

end A100036.P3193833929326051361

/-! ## A100036.P10383865615127806889

`A122797(A267049(n+1)-n)`
-/

namespace A100036.P10383865615127806889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122797 (A267049 (n + 1) - (n : ℤ)).toNat

end

end A100036.P10383865615127806889

/-!
# A100037: Positions of occurrences of the natural numbers as a second subsequence in A100035.

The programs for A100037, there is no canonical definition to state claims against.
-/

/-! ## A100037.P5071374259060632923

`∑[4*n+1]+3`
-/

namespace A100037.P5071374259060632923
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 3

end

end A100037.P5071374259060632923

/-! ## A100037.P3324152936027922669

`∑[a(n-1)+4]` with `a(0)=4, a(1)=5`
-/

namespace A100037.P3324152936027922669
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [4, 5] fun n f1 =>
  f1 (n - 1) + 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A100037.P3324152936027922669

/-! ## A100037.P1598112247087728539

`∑[record[abs(xor(3, -n))+1]]`
-/

namespace A100037.P1598112247087728539
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor 3 (-(n : ℤ))| + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A100037.P1598112247087728539

/-! ## A100037.P5032477542809659394

`∑[or(4*n, ceil(acot(n))²)]`
-/

namespace A100037.P5032477542809659394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (4 * n : ℤ) (⌈SequenceMachineLib.acot (n : ℝ)⌉ ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A100037.P5032477542809659394

/-! ## A100037.P8314572890169468685

`∑[xor(4*n, ceil(acot(n))²)]`
-/

namespace A100037.P8314572890169468685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (4 * n : ℤ) (⌈SequenceMachineLib.acot (n : ℝ)⌉ ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A100037.P8314572890169468685

/-!
# A100038: Positions of occurrences of the natural numbers as third subsequence in A100035.

The programs for A100038, there is no canonical definition to state claims against.
-/

/-! ## A100038.P15131769393266154259

`∑[4*n+5]+6`
-/

namespace A100038.P15131769393266154259
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n + 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 6

end

end A100038.P15131769393266154259

/-! ## A100038.P139802411113303173

`∑[a(n-1)+4]` with `a(0)=11, a(1)=9`
-/

namespace A100038.P139802411113303173
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [11, 9] fun n f1 =>
  f1 (n - 1) + 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A100038.P139802411113303173

/-! ## A100038.P5137145842736441773

`∑[xor(2, record[lcm(2, n)+9])]`
-/

namespace A100038.P5137145842736441773
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 n + 9

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 2 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A100038.P5137145842736441773

/-! ## A100038.P8907460841742776208

`∑[4-floor(-a(n-1))]` with `a(0)=11, a(1)=9`

`floor` is left out, it is the identity on integers.
-/

namespace A100038.P8907460841742776208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [11, 9] fun n f1 =>
  4 - (-f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A100038.P8907460841742776208

/-! ## A100038.P6169671600947146913

`abs(4*n+a(n-1)+5)` with `a(0)=11`
-/

namespace A100038.P6169671600947146913
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [11] fun n a =>
  4 * n + (a (n - 1) + 5)

end

end A100038.P6169671600947146913

/-!
# A100039: Positions of occurrences of the natural numbers as fourth subsequence in A100035.

The programs for A100039, there is no canonical definition to state claims against.
-/

/-! ## A100039.P16159962256395392053

`∑[4*n+9]+13`
-/

namespace A100039.P16159962256395392053
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n + 9

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 13

end

end A100039.P16159962256395392053

/-! ## A100039.P9944712864347793676

`∑[a(n-1)+4]` with `a(0)=22, a(1)=13`
-/

namespace A100039.P9944712864347793676
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [22, 13] fun n f1 =>
  f1 (n - 1) + 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A100039.P9944712864347793676

/-! ## A100039.P12469685829052569240

`∑[4-floor(-a(n-1))]` with `a(0)=22, a(1)=13`

`floor` is left out, it is the identity on integers.
-/

namespace A100039.P12469685829052569240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [22, 13] fun n f1 =>
  4 - (-f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A100039.P12469685829052569240

/-! ## A100039.P11733130529972691821

`floor(n-∑[a(n-1)-4])` with `a(0)=-22, a(1)=-12`

`floor` is left out, it is the identity on integers.
-/

namespace A100039.P11733130529972691821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [-22, -12] fun n f1 =>
  f1 (n - 1) - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A100039.P11733130529972691821

/-! ## A100039.P3853307730750768516

`record[4*n+a(n-1)+1]` with `a(0)=22, a(1)=13`
-/

namespace A100039.P3853307730750768516
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [22, 13] fun n f1 =>
  4 * n + (f1 (n - 1) + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A100039.P3853307730750768516

/-!
# A100040: a(n) = 2*n^2 + n - 5.

The programs for A100040, the canonical program `A100040.P576159871325661819` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A100040 has offset 0).

The definition of A100040 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*n²+n-5` (program `A100040.P576159871325661819`, by `A100040.P576159871325661819.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A100040.P576159871325661819

`2*n²+n-5`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A100040

/-- `2*n²+n-5` -/
def P576159871325661819.Spec : Prop :=
  ∀ n, P576159871325661819.a n = A100040 n

theorem P576159871325661819.correct : P576159871325661819.Spec := by
  intro n
  simp only [A100040]

end A100040

/-! ## A100040.P13044084955121677858

`∑[a(n-1)+4]` with `a(0)=-5, a(1)=3`
-/

namespace A100040.P13044084955121677858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [-5, 3] fun n f1 =>
  f1 (n - 1) + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A100040.P13044084955121677858

namespace A100040

/-- `∑[a(n-1)+4]` -/
def P13044084955121677858.Spec : Prop :=
  ∀ n, P13044084955121677858.a n = A100040 n

end A100040

/-! ## A100040.P14490368106674672164

`xor(4-C(2*n+1, 2), -1)`
-/

namespace A100040.P14490368106674672164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (4 - (Nat.choose (2 * n + 1) 2 : ℤ)) (-1)

end

end A100040.P14490368106674672164

namespace A100040

/-- `xor(4-C(2*n+1, 2), -1)` -/
def P14490368106674672164.Spec : Prop :=
  ∀ n, P14490368106674672164.a n = A100040 n

end A100040

/-! ## A100040.P6578734420986831689

`xor(4-n*(2*n+1), -1)`
-/

namespace A100040.P6578734420986831689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (4 - (n * (2 * n + 1) : ℤ)) (-1)

end

end A100040.P6578734420986831689

namespace A100040

/-- `xor(4-n*(2*n+1), -1)` -/
def P6578734420986831689.Spec : Prop :=
  ∀ n, P6578734420986831689.a n = A100040 n

end A100040

/-! ## A100040.P16800649380958486697

`(lcm(2*n+1, 2*n)-10)/2`
-/

namespace A100040.P16800649380958486697
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Nat.lcm (2 * n + 1) (2 * n) : ℤ) - 10 : ℚ) / 2

end

end A100040.P16800649380958486697

namespace A100040

/-- `(lcm(2*n+1, 2*n)-10)/2` -/
def P16800649380958486697.Spec : Prop :=
  ∀ n, P16800649380958486697.a n = (A100040 n : ℚ)

end A100040

/-! ## A100040.P17954417986353494889

`floor(n-3-∑[a(n-1)-4])` with `a(0)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A100040.P17954417986353494889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  f1 (n - 1) - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 3 - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A100040.P17954417986353494889

namespace A100040

/-- `floor(n-3-∑[a(n-1)-4])` -/
def P17954417986353494889.Spec : Prop :=
  ∀ n, P17954417986353494889.a n = A100040 n

end A100040

/-! ## A100040.P17749465399688158581

`Δ[(2*n+1)*(n-2)+a(n-1)-2]` with `a(0)=0`
-/

namespace A100040.P17749465399688158581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  (2 * n + 1 : ℤ) * ((n : ℤ) - 2) + (f1 (n - 1) - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A100040.P17749465399688158581

namespace A100040

/-- `Δ[(2*n+1)*(n-2)+a(n-1)-2]` -/
def P17749465399688158581.Spec : Prop :=
  ∀ n, P17749465399688158581.a n = A100040 n

end A100040

/-! ## A100040.P6236962124782965026

`∑[Δ[A046092(abs(1-n))]-1]`
-/

namespace A100040.P6236962124782965026
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046092 |1 - (n : ℤ)|.toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A100040.P6236962124782965026

namespace A100040

/-- `∑[Δ[A046092(abs(1-n))]-1]` -/
def P6236962124782965026.Spec : Prop :=
  ∀ n, P6236962124782965026.a n = A100040 n

end A100040

/-! ## A100040.P15891243459039632361

`∑[(n-1)*A016969(n)+n]/(n+1)`
-/

namespace A100040.P15891243459039632361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) * A016969 n + (n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (n + 1 : ℚ)

end

end A100040.P15891243459039632361

namespace A100040

/-- `∑[(n-1)*A016969(n)+n]/(n+1)` -/
def P15891243459039632361.Spec : Prop :=
  ∀ n, P15891243459039632361.a n = (A100040 n : ℚ)

end A100040

/-! ## A100040.P4378062527556086183

`∑[4*n-gcd(5, A000040(n+3))]`
-/

namespace A100040.P4378062527556086183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * n : ℤ) - (Int.gcd 5 (A000040 (n + 3)) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A100040.P4378062527556086183

namespace A100040

/-- `∑[4*n-gcd(5, A000040(n+3))]` -/
def P4378062527556086183.Spec : Prop :=
  ∀ n, P4378062527556086183.a n = A100040 n

end A100040

/-! ## A100040.P4619515740050607706

`(8*A000217(n+1)-A008592(n+2)+2)/2`
-/

namespace A100040.P4619515740050607706
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (8 * A000217 (n + 1) - A008592 (n + 2) + 2 : ℚ) / 2

end

end A100040.P4619515740050607706

namespace A100040

/-- `(8*A000217(n+1)-A008592(n+2)+2)/2` -/
def P4619515740050607706.Spec : Prop :=
  ∀ n, P4619515740050607706.a n = (A100040 n : ℚ)

theorem P4619515740050607706.correct : P4619515740050607706.Spec := by
  intro n
  simp only [A100040, Nat.add_sub_cancel, A100040.P4619515740050607706.a, A100040.P576159871325661819.a, A000217, A000217.P10269402890581615239.a, A008592, A008592.P4981059802862696142.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A100040

/-! ## A100040.P4126247232807535668

`Δ[A005900(n)-A046691(n+3)]`
-/

namespace A100040.P4126247232807535668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005900 n - A046691 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A100040.P4126247232807535668

namespace A100040

/-- `Δ[A005900(n)-A046691(n+3)]` -/
def P4126247232807535668.Spec : Prop :=
  ∀ n, P4126247232807535668.a n = A100040 n

end A100040

/-! ## A100040.P3615668603666643751

`Δ[A005900(n)-(A000096(n+4)+7)]`
-/

namespace A100040.P3615668603666643751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005900 n - (A000096 (n + 4) + 7)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A100040.P3615668603666643751

namespace A100040

/-- `Δ[A005900(n)-(A000096(n+4)+7)]` -/
def P3615668603666643751.Spec : Prop :=
  ∀ n, P3615668603666643751.a n = A100040 n

end A100040

/-! ## A100040.P872855294269800283

`∑[record[A157142(n+1)-2]]`
-/

namespace A100040.P872855294269800283
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157142 (n + 1) - 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A100040.P872855294269800283

namespace A100040

/-- `∑[record[A157142(n+1)-2]]` -/
def P872855294269800283.Spec : Prop :=
  ∀ n, P872855294269800283.a n = A100040 n

end A100040

/-! ## A100040.P14307993367058098156

`record[A129194(n+1)+n-A167614(n+1)]`
-/

namespace A100040.P14307993367058098156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129194 (n + 1) + (n : ℤ) - A167614 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A100040.P14307993367058098156

namespace A100040

/-- `record[A129194(n+1)+n-A167614(n+1)]` -/
def P14307993367058098156.Spec : Prop :=
  ∀ n, P14307993367058098156.a n = A100040 n

end A100040

/-! ## A100040.P2288688506538687690

`(A028347(2*n+3)-A017329(n+1))/2`
-/

namespace A100040.P2288688506538687690
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028347 (2 * n + 3) - A017329 (n + 1) : ℚ) / 2

end

end A100040.P2288688506538687690

namespace A100040

/-- `(A028347(2*n+3)-A017329(n+1))/2` -/
def P2288688506538687690.Spec : Prop :=
  ∀ n, P2288688506538687690.a n = (A100040 n : ℚ)

theorem P2288688506538687690.correct : P2288688506538687690.Spec := by
  intro n
  simp only [A100040, Nat.add_sub_cancel, A100040.P2288688506538687690.a, A100040.P576159871325661819.a, A017329, A017329.P13641332030280969901.a, A028347, A028347.P8641798902418417454.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A100040

/-! ## A100040.P10725041665726614900

`Δ[A209008(2*n+1)-Δ[A209008(2*(n+1))]]`
-/

namespace A100040.P10725041665726614900
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209008 (2 * (n + 1))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209008 (2 * n + 1) - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A100040.P10725041665726614900

namespace A100040

/-- `Δ[A209008(2*n+1)-Δ[A209008(2*(n+1))]]` -/
def P10725041665726614900.Spec : Prop :=
  ∀ n, P10725041665726614900.a n = A100040 n

end A100040

/-!
# A100041: a(n) = 2*n^2 + n - 7.

The programs for A100041, the canonical program `A100041.P81806741470320488` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A100041 has offset 0).

The definition of A100041 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*n²+n-7` (program `A100041.P81806741470320488`, by `A100041.P81806741470320488.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A100041.P81806741470320488

`2*n²+n-7`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A100041

/-- `2*n²+n-7` -/
def P81806741470320488.Spec : Prop :=
  ∀ n, P81806741470320488.a n = A100041 n

theorem P81806741470320488.correct : P81806741470320488.Spec := by
  intro n
  simp only [A100041]

end A100041

/-! ## A100041.P11438827263146067142

`record[C(xor(1, n), 2)-7]`
-/

namespace A100041.P11438827263146067142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (Nat.xor 1 n) 2 : ℤ) - 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A100041.P11438827263146067142

namespace A100041

/-- `record[C(xor(1, n), 2)-7]` -/
def P11438827263146067142.Spec : Prop :=
  ∀ n, P11438827263146067142.a n = A100041 n

end A100041

/-! ## A100041.P1784782230840447429

`∑[a(n-1)+4]` with `a(0)=-7, a(1)=3`
-/

namespace A100041.P1784782230840447429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [-7, 3] fun n f1 =>
  f1 (n - 1) + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A100041.P1784782230840447429

namespace A100041

/-- `∑[a(n-1)+4]` -/
def P1784782230840447429.Spec : Prop :=
  ∀ n, P1784782230840447429.a n = A100041 n

end A100041

/-! ## A100041.P10067975680013678815

`record[C(lcm(16, n)/16, 2)-7]`
-/

namespace A100041.P10067975680013678815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (SequenceMachineLib.roundAway ((Nat.lcm 16 n : ℚ) / 16)).toNat 2 : ℤ) - 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A100041.P10067975680013678815

namespace A100041

/-- `record[C(lcm(16, n)/16, 2)-7]` -/
def P10067975680013678815.Spec : Prop :=
  ∀ n, P10067975680013678815.a n = A100041 n

end A100041

/-! ## A100041.P8722719712663374004

`xor((n+2)*(3-2*n), -1)`
-/

namespace A100041.P8722719712663374004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((n + 2 : ℤ) * (3 - (2 * n : ℤ))) (-1)

end

end A100041.P8722719712663374004

namespace A100041

/-- `xor((n+2)*(3-2*n), -1)` -/
def P8722719712663374004.Spec : Prop :=
  ∀ n, P8722719712663374004.a n = A100041 n

end A100041

/-! ## A100041.P16341374643870262091

`floor(n-5-∑[a(n-1)-4])` with `a(0)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A100041.P16341374643870262091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  f1 (n - 1) - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 5 - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A100041.P16341374643870262091

namespace A100041

/-- `floor(n-5-∑[a(n-1)-4])` -/
def P16341374643870262091.Spec : Prop :=
  ∀ n, P16341374643870262091.a n = A100041 n

end A100041

/-! ## A100041.P10801444216118173651

`(A054569(n+1)-15)/2`
-/

namespace A100041.P10801444216118173651
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054569 (n + 1) - 15 : ℚ) / 2

end

end A100041.P10801444216118173651

namespace A100041

/-- `(A054569(n+1)-15)/2` -/
def P10801444216118173651.Spec : Prop :=
  ∀ n, P10801444216118173651.a n = (A100041 n : ℚ)

theorem P10801444216118173651.correct : P10801444216118173651.Spec := by
  intro n
  simp only [A100041, Nat.add_sub_cancel, A100041.P10801444216118173651.a, A100041.P81806741470320488.a, A054569, A054569.P15731719506517451756.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A100041

/-! ## A100041.P7052390304521213847

`floor(A058331(n)+cot(3)+n)`
-/

namespace A100041.P7052390304521213847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A058331 n : ℝ) + (Real.cot (3 : ℝ) + (n : ℝ))⌋

end

end A100041.P7052390304521213847

namespace A100041

/-- `floor(A058331(n)+cot(3)+n)` -/
def P7052390304521213847.Spec : Prop :=
  ∀ n, P7052390304521213847.a n = A100041 n

end A100041

/-! ## A100041.P11501916381490077118

`∑[A033581(n)-7]/(n+1)`
-/

namespace A100041.P11501916381490077118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033581 n - 7

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (n + 1 : ℚ)

end

end A100041.P11501916381490077118

namespace A100041

/-- `∑[A033581(n)-7]/(n+1)` -/
def P11501916381490077118.Spec : Prop :=
  ∀ n, P11501916381490077118.a n = (A100041 n : ℚ)

end A100041

/-! ## A100041.P14275612700379564242

`(A084849(n)-8)%A201877(n+1)`
-/

namespace A100041.P14275612700379564242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A084849 n - 8) (A201877 (n + 1))

end

end A100041.P14275612700379564242

namespace A100041

/-- `(A084849(n)-8)%A201877(n+1)` -/
def P14275612700379564242.Spec : Prop :=
  ∀ n, P14275612700379564242.a n = A100041 n

end A100041

/-! ## A100041.P17272322757207414230

`Δ[∑[C(2*n, 2)]-n*(n+7)]`
-/

namespace A100041.P17272322757207414230
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * n) 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - (n * (n + 7) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A100041.P17272322757207414230

namespace A100041

/-- `Δ[∑[C(2*n, 2)]-n*(n+7)]` -/
def P17272322757207414230.Spec : Prop :=
  ∀ n, P17272322757207414230.a n = A100041 n

end A100041

/-! ## A100041.P11603022684481734981

`Δ[A006331(n)-A140673(n)]`
-/

namespace A100041.P11603022684481734981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006331 n - A140673 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A100041.P11603022684481734981

namespace A100041

/-- `Δ[A006331(n)-A140673(n)]` -/
def P11603022684481734981.Spec : Prop :=
  ∀ n, P11603022684481734981.a n = A100041 n

end A100041

/-! ## A100041.P17390265021669916594

`Δ[A005900(n)-A000217(n+7)]`
-/

namespace A100041.P17390265021669916594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005900 n - A000217 (n + 7)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A100041.P17390265021669916594

namespace A100041

/-- `Δ[A005900(n)-A000217(n+7)]` -/
def P17390265021669916594.Spec : Prop :=
  ∀ n, P17390265021669916594.a n = A100041 n

end A100041

/-! ## A100041.P13750728081865809497

`Δ[A174723(n+1)-A084849(n+2)]`
-/

namespace A100041.P13750728081865809497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174723 (n + 1) - A084849 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A100041.P13750728081865809497

namespace A100041

/-- `Δ[A174723(n+1)-A084849(n+2)]` -/
def P13750728081865809497.Spec : Prop :=
  ∀ n, P13750728081865809497.a n = A100041 n

end A100041

/-! ## A100041.P14142767340195987616

`Δ[A005900(n)-A000124(n+7)]`
-/

namespace A100041.P14142767340195987616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005900 n - A000124 (n + 7)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A100041.P14142767340195987616

namespace A100041

/-- `Δ[A005900(n)-A000124(n+7)]` -/
def P14142767340195987616.Spec : Prop :=
  ∀ n, P14142767340195987616.a n = A100041 n

end A100041

/-! ## A100041.P17472289269704147666

`record[(∑[n]+1)*char[2*n]-8]`
-/

namespace A100041.P17472289269704147666
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f2 j + 1) * (if ∃ j, f3 j = n then 1 else 0) : ℕ) : ℤ) - 8

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A100041.P17472289269704147666

namespace A100041

/-- `record[(∑[n]+1)*char[2*n]-8]` -/
def P17472289269704147666.Spec : Prop :=
  ∀ n, P17472289269704147666.a n = A100041 n

end A100041

/-!
# A100042: a(n) = prime(n)*2^prime(n).

The programs for A100042, the canonical program `A100042.P11235407234197316096` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A100042 has offset 1).

The definition of A100042 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A100042.P11235407234197316096

`A000040(n+1)*2^A000040(n+1)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A100042

/-- `A000040(n+1)*2^A000040(n+1)` -/
def P11235407234197316096.Spec : Prop :=
  ∀ n, P11235407234197316096.a n = (A100042 (n + 1) : ℚ)

end A100042

/-! ## A100042.P14467120207954046668

`record[∑{p}[n+2, #*2^#]]`
-/

namespace A100042.P14467120207954046668
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), p * 2 ^ p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A100042.P14467120207954046668

namespace A100042

/-- `record[∑{p}[n+2, #*2^#]]` -/
def P14467120207954046668.Spec : Prop :=
  ∀ n, (P14467120207954046668.a n : ℤ) = A100042 (n + 1)

end A100042

/-! ## A100042.P5088084780130653655

`A099051(n+1)+1`
-/

namespace A100042.P5088084780130653655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099051 (n + 1) + 1

end

end A100042.P5088084780130653655

namespace A100042

/-- `A099051(n+1)+1` -/
def P5088084780130653655.Spec : Prop :=
  ∀ n, P5088084780130653655.a n = A100042 (n + 1)

end A100042

/-! ## A100042.P8265448764730001258

`A098773(n+1)-1`
-/

namespace A100042.P8265448764730001258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098773 (n + 1) - 1

end

end A100042.P8265448764730001258

namespace A100042

/-- `A098773(n+1)-1` -/
def P8265448764730001258.Spec : Prop :=
  ∀ n, P8265448764730001258.a n = A100042 (n + 1)

end A100042

/-! ## A100042.P1298675718293466307

`2*A299795(n+1)`
-/

namespace A100042.P1298675718293466307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A299795 (n + 1)

end

end A100042.P1298675718293466307

namespace A100042

/-- `2*A299795(n+1)` -/
def P1298675718293466307.Spec : Prop :=
  ∀ n, P1298675718293466307.a n = A100042 (n + 1)

end A100042

/-! ## A100042.P10184526834366345318

`∑{p}[A000040(n+1), #*2^#]`
-/

namespace A100042.P10184526834366345318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p * 2 ^ p

end

end A100042.P10184526834366345318

namespace A100042

/-- `∑{p}[A000040(n+1), #*2^#]` -/
def P10184526834366345318.Spec : Prop :=
  ∀ n, (P10184526834366345318.a n : ℤ) = A100042 (n + 1)

end A100042

/-! ## A100042.P10330645793295962124

`record[(n+2)*2^A006530(n+2)]`
-/

namespace A100042.P10330645793295962124
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) * (2 : ℚ) ^ (A006530 (n + 2) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A100042.P10330645793295962124

namespace A100042

/-- `record[(n+2)*2^A006530(n+2)]` -/
def P10330645793295962124.Spec : Prop :=
  ∀ n, P10330645793295962124.a n = (A100042 (n + 1) : ℚ)

end A100042

/-! ## A100042.P15744537795978324780

`record[(n+2)*2^A020639(n+2)]`
-/

namespace A100042.P15744537795978324780
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) * (2 : ℚ) ^ (A020639 (n + 2) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A100042.P15744537795978324780

namespace A100042

/-- `record[(n+2)*2^A020639(n+2)]` -/
def P15744537795978324780.Spec : Prop :=
  ∀ n, P15744537795978324780.a n = (A100042 (n + 1) : ℚ)

end A100042

/-! ## A100042.P5412037518153446546

`A036289(A000040(n+1))`
-/

namespace A100042.P5412037518153446546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036289 (A000040 (n + 1)).toNat

end

end A100042.P5412037518153446546

namespace A100042

/-- `A036289(A000040(n+1))` -/
def P5412037518153446546.Spec : Prop :=
  ∀ n, P5412037518153446546.a n = A100042 (n + 1)

end A100042

/-! ## A100042.P6244239821490750686

`A002064(A008578(n+2))-1`
-/

namespace A100042.P6244239821490750686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002064 (A008578 (n + 2)).toNat - 1

end

end A100042.P6244239821490750686

namespace A100042

/-- `A002064(A008578(n+2))-1` -/
def P6244239821490750686.Spec : Prop :=
  ∀ n, P6244239821490750686.a n = A100042 (n + 1)

end A100042

/-!
# A100043: a(n) = (3*n-1)!.

The programs for A100043, the canonical program `A100043.P8925342547488593121` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A100043 has offset 1).

The definition of A100043 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(3*(n+1)-1)!` (program `A100043.P8925342547488593121`, by `A100043.P8925342547488593121.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A100043.P8925342547488593121

`(3*(n+1)-1)!`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A100043

/-- `(3*(n+1)-1)!` -/
def P8925342547488593121.Spec : Prop :=
  ∀ n, (P8925342547488593121.a n : ℤ) = A100043 (n + 1)

theorem P8925342547488593121.correct : P8925342547488593121.Spec := by
  intro n
  simp only [A100043, Nat.add_sub_cancel]

end A100043

/-! ## A100043.P9991294943488260283

`lcm(2, (Δ[n²]+n+1)!)`
-/

namespace A100043.P9991294943488260283
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 (Nat.factorial ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + (n + 1 : ℤ)).toNat)

end

end A100043.P9991294943488260283

namespace A100043

/-- `lcm(2, (Δ[n²]+n+1)!)` -/
def P9991294943488260283.Spec : Prop :=
  ∀ n, (P9991294943488260283.a n : ℤ) = A100043 (n + 1)

end A100043

/-! ## A100043.P18202607416880178013

`record[(n+2+dr(n)+n)!]`
-/

namespace A100043.P18202607416880178013
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (n + 2 + (SequenceMachineLib.digitalRoot (n : ℤ) + n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A100043.P18202607416880178013

namespace A100043

/-- `record[(n+2+dr(n)+n)!]` -/
def P18202607416880178013.Spec : Prop :=
  ∀ n, (P18202607416880178013.a n : ℤ) = A100043 (n + 1)

end A100043

/-! ## A100043.P14733591455184826671

`record[(gcd(3, n+2)+n+1)!]`
-/

namespace A100043.P14733591455184826671
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (Nat.gcd 3 (n + 2) + (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A100043.P14733591455184826671

namespace A100043

/-- `record[(gcd(3, n+2)+n+1)!]` -/
def P14733591455184826671.Spec : Prop :=
  ∀ n, (P14733591455184826671.a n : ℤ) = A100043 (n + 1)

end A100043

/-! ## A100043.P11972104165266900588

`record[((n²-1)%Δ[n²]+2)!]`
-/

namespace A100043.P11972104165266900588
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (Int.tmod ((n ^ 2 : ℤ) - 1) ((f2 (n + 1) : ℤ) - (f2 n : ℤ)) + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A100043.P11972104165266900588

namespace A100043

/-- `record[((n²-1)%Δ[n²]+2)!]` -/
def P11972104165266900588.Spec : Prop :=
  ∀ n, (P11972104165266900588.a n : ℤ) = A100043 (n + 1)

end A100043

/-!
# A100047: A Chebyshev transform of the Fibonacci numbers.

The programs for A100047, the canonical program `A100047.P7143918780081357517` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A100047 has offset 0).

The definition of A100047 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A100047.P7143918780081357517

`a(n-1)-a(n-2)+a(n-3)-a(n-4)` with `a(0)=0, a(1)=1, a(2)=1, a(3)=-1`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A100047

/-- `a(n-1)-a(n-2)+a(n-3)-a(n-4)` -/
def P7143918780081357517.Spec : Prop :=
  ∀ n, P7143918780081357517.a n = A100047 n

theorem P7143918780081357517.correct : P7143918780081357517.Spec := by
  intro n
  simp only [A100047]

end A100047

/-!
# A100048: A Chebyshev transform of the Pell numbers.

The programs for A100048, the canonical program `A100048.P13956110710116001576` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A100048 has offset 0).

The definition of A100048 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A100048.P13956110710116001576

`2*a(n-1)-a(n-2)+2*a(n-3)-a(n-4)` with `a(0)=0, a(1)=1, a(2)=2, a(3)=2`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A100048

/-- `2*a(n-1)-a(n-2)+2*a(n-3)-a(n-4)` -/
def P13956110710116001576.Spec : Prop :=
  ∀ n, P13956110710116001576.a n = A100048 n

theorem P13956110710116001576.correct : P13956110710116001576.Spec := by
  intro n
  simp only [A100048]

end A100048

/-! ## A100048.P3920389614748225663

`ogf((x-x^3)/(1-2x+x^2-2x^3+x^4))`
-/

namespace A100048.P3920389614748225663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 0, -1] [1, -2, 1, -2, 1] n

end

end A100048.P3920389614748225663

namespace A100048

/-- `ogf((x-x^3)/(1-2x+x^2-2x^3+x^4))` -/
def P3920389614748225663.Spec : Prop :=
  ∀ n, P3920389614748225663.a n = A100048 n

end A100048

/-! ## A100048.P8256723448021565786

`A045626(n)-A027674(n)`
-/

namespace A100048.P8256723448021565786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045626 n - A027674 n

end

end A100048.P8256723448021565786

namespace A100048

/-- `A045626(n)-A027674(n)` -/
def P8256723448021565786.Spec : Prop :=
  ∀ n, P8256723448021565786.a n = A100048 n

end A100048

/-! ## A100048.P11728707680336768974

`A112575(n)-A112575(A289207(n))`
-/

namespace A100048.P11728707680336768974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112575 n - A112575 (A289207 n).toNat

end

end A100048.P11728707680336768974

namespace A100048

/-- `A112575(n)-A112575(A289207(n))` -/
def P11728707680336768974.Spec : Prop :=
  ∀ n, P11728707680336768974.a n = A100048 n

end A100048

/-! ## A100048.P15931710307739191450

`A183324(n+1)-A118870(n)`
-/

namespace A100048.P15931710307739191450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183324 (n + 1) - A118870 n

end

end A100048.P15931710307739191450

namespace A100048

/-- `A183324(n+1)-A118870(n)` -/
def P15931710307739191450.Spec : Prop :=
  ∀ n, P15931710307739191450.a n = A100048 n

end A100048

/-! ## A100048.P17365568954979114912

`A288380(n)-(A118870(n)+1)`
-/

namespace A100048.P17365568954979114912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288380 n - (A118870 n + 1)

end

end A100048.P17365568954979114912

namespace A100048

/-- `A288380(n)-(A118870(n)+1)` -/
def P17365568954979114912.Spec : Prop :=
  ∀ n, P17365568954979114912.a n = A100048 n

end A100048

/-! ## A100048.P2476554325990636520

`A183324(1-(n-2*n))%A118870(n)`
-/

namespace A100048.P2476554325990636520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A183324 (1 - ((n : ℤ) - (2 * n : ℤ))).toNat) (A118870 n)

end

end A100048.P2476554325990636520

namespace A100048

/-- `A183324(1-(n-2*n))%A118870(n)` -/
def P2476554325990636520.Spec : Prop :=
  ∀ n, P2476554325990636520.a n = A100048 n

end A100048

/-! ## A100048.P10969247761314692511

`A112575(n)+A367400(n)-A118870(n)`
-/

namespace A100048.P10969247761314692511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112575 n + (A367400 n - A118870 n)

end

end A100048.P10969247761314692511

namespace A100048

/-- `A112575(n)+A367400(n)-A118870(n)` -/
def P10969247761314692511.Spec : Prop :=
  ∀ n, P10969247761314692511.a n = A100048 n

end A100048

/-! ## A100048.P10503924817856602774

`A033305(n+1)+record[A033305(n)]-A118870(n)`
-/

namespace A100048.P10503924817856602774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033305 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033305 (n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A118870 n

end

end A100048.P10503924817856602774

namespace A100048

/-- `A033305(n+1)+record[A033305(n)]-A118870(n)` -/
def P10503924817856602774.Spec : Prop :=
  ∀ n, P10503924817856602774.a n = A100048 n

end A100048

/-! ## A100048.P15517074555268752667

`A033305(n+1)+A033305(n+2)-A118870(n)`
-/

namespace A100048.P15517074555268752667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033305 (n + 1) + A033305 (n + 2) - A118870 n

end

end A100048.P15517074555268752667

namespace A100048

/-- `A033305(n+1)+A033305(n+2)-A118870(n)` -/
def P15517074555268752667.Spec : Prop :=
  ∀ n, P15517074555268752667.a n = A100048 n

end A100048

/-! ## A100048.P11732147382026534762

`Δ[A112575(n+2)]-A118870(n)`
-/

namespace A100048.P11732147382026534762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112575 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A118870 n

end

end A100048.P11732147382026534762

namespace A100048

/-- `Δ[A112575(n+2)]-A118870(n)` -/
def P11732147382026534762.Spec : Prop :=
  ∀ n, P11732147382026534762.a n = A100048 n

end A100048

/-!
# A100050: A Chebyshev transform of n.

The programs for A100050, the canonical program `A100050.P9619698012909193927` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A100050 has offset 0).

The definition of A100050 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A100050.P9619698012909193927

`2*a(n-1)-3*a(n-2)+2*a(n-3)-a(n-4)` with `a(0)=0, a(1)=1, a(2)=2, a(3)=0`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A100050

/-- `2*a(n-1)-3*a(n-2)+2*a(n-3)-a(n-4)` -/
def P9619698012909193927.Spec : Prop :=
  ∀ n, P9619698012909193927.a n = A100050 n

theorem P9619698012909193927.correct : P9619698012909193927.Spec := by
  intro n
  simp only [A100050]

end A100050

/-! ## A100050.P12794161904365640934

`n*round(sin(n%6))`
-/

namespace A100050.P12794161904365640934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * SequenceMachineLib.roundAway (Real.sin ((n % 6 : ℕ) : ℝ))

end

end A100050.P12794161904365640934

namespace A100050

/-- `n*round(sin(n%6))` -/
def P12794161904365640934.Spec : Prop :=
  ∀ n, P12794161904365640934.a n = A100050 n

end A100050

/-! ## A100050.P9459900906847381518

`n*round(cos((1-n)%6))`
-/

namespace A100050.P9459900906847381518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * SequenceMachineLib.roundAway (Real.cos (Int.tmod (1 - (n : ℤ)) 6 : ℝ))

end

end A100050.P9459900906847381518

namespace A100050

/-- `n*round(cos((1-n)%6))` -/
def P9459900906847381518.Spec : Prop :=
  ∀ n, P9459900906847381518.a n = A100050 n

end A100050

/-! ## A100050.P14664720473664523507

`n*(∑[ogf(1/(1-x+x^2))]-1)`
-/

namespace A100050.P14664720473664523507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -1, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A100050.P14664720473664523507

namespace A100050

/-- `n*(∑[ogf(1/(1-x+x^2))]-1)` -/
def P14664720473664523507.Spec : Prop :=
  ∀ n, P14664720473664523507.a n = A100050 n

end A100050

/-! ## A100050.P5299391345512122403

`ogf((x-x^3)/(1-2x+3x^2-2x^3+x^4))`
-/

namespace A100050.P5299391345512122403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 0, -1] [1, -2, 3, -2, 1] n

end

end A100050.P5299391345512122403

namespace A100050

/-- `ogf((x-x^3)/(1-2x+3x^2-2x^3+x^4))` -/
def P5299391345512122403.Spec : Prop :=
  ∀ n, P5299391345512122403.a n = A100050 n

end A100050

/-! ## A100050.P2123479779097768504

`n*((gcd(n, ∑[n])+1)%3-1)`
-/

namespace A100050.P2123479779097768504
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ((((Nat.gcd n (∑ j ∈ Finset.range (n + 1), f1 j) + 1) % 3 : ℕ) : ℤ) - 1)

end

end A100050.P2123479779097768504

namespace A100050

/-- `n*((gcd(n, ∑[n])+1)%3-1)` -/
def P2123479779097768504.Spec : Prop :=
  ∀ n, P2123479779097768504.a n = A100050 n

end A100050

/-! ## A100050.P12967273664511975080

`n*∑[a(n-1)-a(n-2)]` with `a(0)=0, a(1)=1, a(2)=0`
-/

namespace A100050.P12967273664511975080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 0] fun n f1 =>
  f1 (n - 1) - f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A100050.P12967273664511975080

namespace A100050

/-- `n*∑[a(n-1)-a(n-2)]` -/
def P12967273664511975080.Spec : Prop :=
  ∀ n, P12967273664511975080.a n = A100050 n

end A100050

/-! ## A100050.P17317244952749944544

`n*(1-∑{e}[4-a(n-3), #])` with `a(0)=1, a(1)=0, a(2)=0, a(3)=2`
-/

namespace A100050.P17317244952749944544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0, 2] fun n f1 =>
  4 - f1 (n - 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (1 - ((∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p : ℕ) : ℤ))

end

end A100050.P17317244952749944544

namespace A100050

/-- `n*(1-∑{e}[4-a(n-3), #])` -/
def P17317244952749944544.Spec : Prop :=
  ∀ n, P17317244952749944544.a n = A100050 n

end A100050

/-! ## A100050.P15880508000502683103

`n*(a(n-1)-2*a(n-2))%3` with `a(0)=0, a(1)=1`
-/

namespace A100050.P15880508000502683103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  (n : ℤ) * Int.tmod (a (n - 1) - 2 * a (n - 2)) 3

end

end A100050.P15880508000502683103

namespace A100050

/-- `n*(a(n-1)-2*a(n-2))%3` -/
def P15880508000502683103.Spec : Prop :=
  ∀ n, P15880508000502683103.a n = A100050 n

end A100050

/-! ## A100050.P2242018281299086831

`n*A128834(n)`
-/

namespace A100050.P2242018281299086831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A128834 n

end

end A100050.P2242018281299086831

namespace A100050

/-- `n*A128834(n)` -/
def P2242018281299086831.Spec : Prop :=
  ∀ n, P2242018281299086831.a n = A100050 n

end A100050

/-! ## A100050.P4834951839171001299

`n*A163806(n)`
-/

namespace A100050.P4834951839171001299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A163806 n

end

end A100050.P4834951839171001299

namespace A100050

/-- `n*A163806(n)` -/
def P4834951839171001299.Spec : Prop :=
  ∀ n, P4834951839171001299.a n = A100050 n

end A100050

/-! ## A100050.P13261761866274236005

`n*(A164965(n)-1)`
-/

namespace A100050.P13261761866274236005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A164965 n - 1)

end

end A100050.P13261761866274236005

namespace A100050

/-- `n*(A164965(n)-1)` -/
def P13261761866274236005.Spec : Prop :=
  ∀ n, P13261761866274236005.a n = A100050 n

end A100050

/-! ## A100050.P8692369874461146983

`n/2*A184334(n)`
-/

namespace A100050.P8692369874461146983
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 2 * (A184334 n : ℚ)

end

end A100050.P8692369874461146983

namespace A100050

/-- `n/2*A184334(n)` -/
def P8692369874461146983.Spec : Prop :=
  ∀ n, P8692369874461146983.a n = (A100050 n : ℚ)

end A100050

/-! ## A100050.P1863949805821944672

`n/3*A084103(n)`
-/

namespace A100050.P1863949805821944672
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 3 * (A084103 n : ℚ)

end

end A100050.P1863949805821944672

namespace A100050

/-- `n/3*A084103(n)` -/
def P1863949805821944672.Spec : Prop :=
  ∀ n, P1863949805821944672.a n = (A100050 n : ℚ)

end A100050

/-! ## A100050.P1233075598567182413

`n*round(sin(A010875(n)))`
-/

namespace A100050.P1233075598567182413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * SequenceMachineLib.roundAway (Real.sin (A010875 n : ℝ))

end

end A100050.P1233075598567182413

namespace A100050

/-- `n*round(sin(A010875(n)))` -/
def P1233075598567182413.Spec : Prop :=
  ∀ n, P1233075598567182413.a n = A100050 n

end A100050

/-! ## A100050.P3612151738664259446

`n*(∑[A010892(n)]-1)`
-/

namespace A100050.P3612151738664259446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010892 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A100050.P3612151738664259446

namespace A100050

/-- `n*(∑[A010892(n)]-1)` -/
def P3612151738664259446.Spec : Prop :=
  ∀ n, P3612151738664259446.a n = A100050 n

end A100050

/-! ## A100050.P4318200945499992779

`n/2*∑[A257076(n)]`
-/

namespace A100050.P4318200945499992779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257076 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 2 * ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ)

end

end A100050.P4318200945499992779

namespace A100050

/-- `n/2*∑[A257076(n)]` -/
def P4318200945499992779.Spec : Prop :=
  ∀ n, P4318200945499992779.a n = (A100050 n : ℚ)

end A100050

/-! ## A100050.P10324251779997369862

`n*(n-∑[A021823(n)])`
-/

namespace A100050.P10324251779997369862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021823 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ((n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A100050.P10324251779997369862

namespace A100050

/-- `n*(n-∑[A021823(n)])` -/
def P10324251779997369862.Spec : Prop :=
  ∀ n, P10324251779997369862.a n = A100050 n

end A100050

/-! ## A100050.P5606686011765331117

`gcd(n, ∑[n])*A186809(n)`
-/

namespace A100050.P5606686011765331117
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd n (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ) * A186809 n

end

end A100050.P5606686011765331117

namespace A100050

/-- `gcd(n, ∑[n])*A186809(n)` -/
def P5606686011765331117.Spec : Prop :=
  ∀ n, P5606686011765331117.a n = A100050 n

end A100050

/-! ## A100050.P3901689486450034069

`n*(1-A030118(n)+n)`
-/

namespace A100050.P3901689486450034069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (1 - A030118 n + (n : ℤ))

end

end A100050.P3901689486450034069

namespace A100050

/-- `n*(1-A030118(n)+n)` -/
def P3901689486450034069.Spec : Prop :=
  ∀ n, P3901689486450034069.a n = A100050 n

end A100050

/-!
# A100051: A Chebyshev transform of 1,1,1,...

The programs for A100051, the canonical program `A100051.P4999783186224815608` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A100051 has offset 0).

The definition of A100051 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A100051.P4999783186224815608

`a(n-1)-a(n-2)` with `a(0)=1, a(1)=1, a(2)=-1`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A100051

/-- `a(n-1)-a(n-2)` -/
def P4999783186224815608.Spec : Prop :=
  ∀ n, P4999783186224815608.a n = A100051 n

theorem P4999783186224815608.correct : P4999783186224815608.Spec := by
  intro n
  simp only [A100051]

end A100051

/-!
# A100052: A Chebyshev transform of the odd numbers.

The programs for A100052, the canonical program `A100052.P5948352671181927295` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A100052 has offset 0).

The definition of A100052 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A100052.P5948352671181927295

`2*a(n-1)-3*a(n-2)+2*a(n-3)-a(n-4)` with `a(0)=1, a(1)=3, a(2)=3, a(3)=-2, a(4)=-9`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A100052

/-- `2*a(n-1)-3*a(n-2)+2*a(n-3)-a(n-4)` -/
def P5948352671181927295.Spec : Prop :=
  ∀ n, P5948352671181927295.a n = A100052 n

theorem P5948352671181927295.correct : P5948352671181927295.Spec := by
  intro n
  simp only [A100052]

end A100052

/-! ## A100052.P16641517073481192361

`A228936(round(2*n/3))`
-/

namespace A100052.P16641517073481192361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228936 (SequenceMachineLib.roundAway (2 * ((n : ℚ) / 3))).toNat

end

end A100052.P16641517073481192361

namespace A100052

/-- `A228936(round(2*n/3))` -/
def P16641517073481192361.Spec : Prop :=
  ∀ n, P16641517073481192361.a n = A100052 n

end A100052

/-! ## A100052.P3985356851701643968

`A100051(n)+2*A100050(n)`
-/

namespace A100052.P3985356851701643968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100051 n + 2 * A100050 n

end

end A100052.P3985356851701643968

namespace A100052

/-- `A100051(n)+2*A100050(n)` -/
def P3985356851701643968.Spec : Prop :=
  ∀ n, P3985356851701643968.a n = A100052 n

end A100052

/-! ## A100052.P900210902580916162

`∑[A004280(n+1)*A010892(n)]`
-/

namespace A100052.P900210902580916162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004280 (n + 1) * A010892 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A100052.P900210902580916162

namespace A100052

/-- `∑[A004280(n+1)*A010892(n)]` -/
def P900210902580916162.Spec : Prop :=
  ∀ n, P900210902580916162.a n = A100052 n

end A100052

/-! ## A100052.P13964111915702334686

`∑[(A004275(n)+1)*A010892(n)]`
-/

namespace A100052.P13964111915702334686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A004275 n + 1) * A010892 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A100052.P13964111915702334686

namespace A100052

/-- `∑[(A004275(n)+1)*A010892(n)]` -/
def P13964111915702334686.Spec : Prop :=
  ∀ n, P13964111915702334686.a n = A100052 n

end A100052

/-! ## A100052.P5951683328762266762

`A228936(A004396(n))%A002046(n+1)`
-/

namespace A100052.P5951683328762266762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A228936 (A004396 n).toNat) (A002046 (n + 1))

end

end A100052.P5951683328762266762

namespace A100052

/-- `A228936(A004396(n))%A002046(n+1)` -/
def P5951683328762266762.Spec : Prop :=
  ∀ n, P5951683328762266762.a n = A100052 n

end A100052

/-! ## A100052.P12786124079586017816

`A228936(A004396(n))+A209229(2*n+3)`
-/

namespace A100052.P12786124079586017816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228936 (A004396 n).toNat + A209229 (2 * n + 3)

end

end A100052.P12786124079586017816

namespace A100052

/-- `A228936(A004396(n))+A209229(2*n+3)` -/
def P12786124079586017816.Spec : Prop :=
  ∀ n, P12786124079586017816.a n = A100052 n

end A100052

/-! ## A100052.P153900287991673807

`∑[record[A029579(n)]*A010892(n)]`
-/

namespace A100052.P153900287991673807
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029579 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) * A010892 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A100052.P153900287991673807

namespace A100052

/-- `∑[record[A029579(n)]*A010892(n)]` -/
def P153900287991673807.Spec : Prop :=
  ∀ n, P153900287991673807.a n = A100052 n

end A100052

/-! ## A100052.P18293209673922009789

`xor(A100050(2*n), A100051(n))`
-/

namespace A100052.P18293209673922009789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A100050 (2 * n)) (A100051 n)

end

end A100052.P18293209673922009789

namespace A100052

/-- `xor(A100050(2*n), A100051(n))` -/
def P18293209673922009789.Spec : Prop :=
  ∀ n, P18293209673922009789.a n = A100052 n

end A100052

/-! ## A100052.P4838804286520351234

`A098106(n)/A011782(n)`
-/

namespace A100052.P4838804286520351234
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A098106 n : ℚ) / (A011782 n : ℚ)

end

end A100052.P4838804286520351234

namespace A100052

/-- `A098106(n)/A011782(n)` -/
def P4838804286520351234.Spec : Prop :=
  ∀ n, P4838804286520351234.a n = (A100052 n : ℚ)

end A100052

/-!
# A100053: Maximum run of white (or OFF) cells in generation n of the Rule 30 elementary cellular automaton.

The programs for A100053, there is no canonical definition to state claims against.
-/

/-! ## A100053.P17999798619136240718

`A001222(A082766(n+1)*A146431(n+1))`
-/

namespace A100053.P17999798619136240718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A082766 (n + 1) * A146431 (n + 1)).toNat

end

end A100053.P17999798619136240718

/-! ## A100053.P8491495387594248395

`A007895(A073711(3*n+1)*A325535(n))`
-/

namespace A100053.P8491495387594248395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007895 (A073711 (3 * n + 1) * A325535 n).toNat

end

end A100053.P8491495387594248395

/-! ## A100053.P6683226260257211184

`A001222(lcm(A082766(n+1), A146431(n+1)))`
-/

namespace A100053.P6683226260257211184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.lcm (A082766 (n + 1)) (A146431 (n + 1)))

end

end A100053.P6683226260257211184

/-!
# A100054: Records in A100053.

The programs for A100054, there is no canonical definition to state claims against.
-/

/-! ## A100054.P6395426899456823162

`record[A100053(n)]`
-/

namespace A100054.P6395426899456823162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100053 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A100054.P6395426899456823162

/-! ## A100054.P14367321075344932935

`A100053(A100055(n))`
-/

namespace A100054.P14367321075344932935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100053 (A100055 n).toNat

end

end A100054.P14367321075344932935

/-! ## A100054.P13912707955118120171

`lt[A192182(3*n), A192183(n)²]`
-/

namespace A100054.P13912707955118120171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192182 (3 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192183 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A100054.P13912707955118120171

/-! ## A100054.P6413782042328177839

`lt[A070452(A002375(2*n+3)), A083946(2*n+1)²-n]`
-/

namespace A100054.P6413782042328177839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070452 (A002375 (2 * n + 3)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083946 (2 * n + 1) ^ 2 - (n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A100054.P6413782042328177839

/-!
# A100056: Sum of absolute differences of p(n) defined in A054065.

The programs for A100056, there is no canonical definition to state claims against.
-/

/-! ## A100056.P10278416908776552198

`∑[A246104(n)-A130312(A130312(n+2))]`
-/

namespace A100056.P10278416908776552198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246104 n - A130312 (A130312 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A100056.P10278416908776552198

/-! ## A100056.P8154332826212058631

`A001967(A130473(n+2))-A246104(n+1)`
-/

namespace A100056.P8154332826212058631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001967 (A130473 (n + 2)).toNat - A246104 (n + 1)

end

end A100056.P8154332826212058631

/-! ## A100056.P17802350965635719668

`A100057(n+2)-A130312(A130312(n+2))`
-/

namespace A100056.P17802350965635719668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100057 (n + 2) - A130312 (A130312 (n + 2)).toNat

end

end A100056.P17802350965635719668

/-! ## A100056.P10025065541813980854

`∑[2*A130312(n+1)]-A130312(A130312(n+2))`
-/

namespace A100056.P10025065541813980854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A130312 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A130312 (A130312 (n + 2)).toNat

end

end A100056.P10025065541813980854

/-! ## A100056.P14051944026946454594

`A001967(A130473(n+1))-A130312(A130312(n+2))`
-/

namespace A100056.P14051944026946454594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001967 (A130473 (n + 1)).toNat - A130312 (A130312 (n + 2)).toNat

end

end A100056.P14051944026946454594

/-! ## A100056.P10328251698016330835

`∑[A055389(A072649(n+1))]-A130312(A130312(n+2))`
-/

namespace A100056.P10328251698016330835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055389 (A072649 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A130312 (A130312 (n + 2)).toNat

end

end A100056.P10328251698016330835

/-!
# A100057: Sum of absolute differences of p(n) defined in A054065, oriented around a clock.

The programs for A100057, there is no canonical definition to state claims against.
-/

/-! ## A100057.P17385508884613322859

`∑[2*A130312(n+1)]`
-/

namespace A100057.P17385508884613322859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A130312 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A100057.P17385508884613322859

/-! ## A100057.P8343400627985600664

`∑[2*(A183544(n+1)-n)]`
-/

namespace A100057.P8343400627985600664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A183544 (n + 1) - (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A100057.P8343400627985600664

/-! ## A100057.P11471529240308425815

`∑[2*A000045(floor(log((n+1)²))+1)]`
-/

namespace A100057.P11471529240308425815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000045 (⌊Real.log ((n + 1) ^ 2 : ℝ)⌋ + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A100057.P11471529240308425815

/-! ## A100057.P17281449697963587167

`2*(∑[A000045(ceil(log((n+1)²)))]+1)`
-/

namespace A100057.P17281449697963587167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 ⌈Real.log ((n + 1) ^ 2 : ℝ)⌉.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A100057.P17281449697963587167

/-! ## A100057.P15160414344634743032

`A001967(A130473(n+1))`
-/

namespace A100057.P15160414344634743032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001967 (A130473 (n + 1)).toNat

end

end A100057.P15160414344634743032

/-! ## A100057.P8599237478650610438

`∑[A055389(A072649(n+1))]`
-/

namespace A100057.P8599237478650610438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055389 (A072649 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A100057.P8599237478650610438

/-! ## A100057.P6723911518226622464

`A004277(∑[A130312(n+1)])`
-/

namespace A100057.P6723911518226622464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130312 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A100057.P6723911518226622464

/-! ## A100057.P17994554824520343829

`2*∑[A000045(∑[char[∑[A000045(n)]]])]`
-/

namespace A100057.P17994554824520343829
noncomputable section

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A100057.P17994554824520343829

/-! ## A100057.P6420631588203068571

`∑[2*A000045(∑[A010056(n+1)])%(n+2)]`
-/

namespace A100057.P6420631588203068571
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010056 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * Int.tmod (A000045 (∑ j ∈ Finset.range (n + 1), f2 j).toNat) (n + 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A100057.P6420631588203068571

/-!
# A100058: Expansion of 1 / (1 - 3x - x^2 + 2x^3).

The programs for A100058, the canonical program `A100058.P8347065271442415847` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A100058 has offset 0).

The definition of A100058 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-3x-x^2+2x^3))` (program `A100058.P8347065271442415847`, by `A100058.P8347065271442415847.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A100058.P8347065271442415847

`ogf(1/(1-3x-x^2+2x^3))`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A100058

/-- `ogf(1/(1-3x-x^2+2x^3))` -/
def P8347065271442415847.Spec : Prop :=
  ∀ n, P8347065271442415847.a n = A100058 n

theorem P8347065271442415847.correct : P8347065271442415847.Spec := by
  intro n
  simp only [A100058]

end A100058

/-! ## A100058.P9569428002438376338

`3*a(n-1)+a(n-2)-2*a(n-3)` with `a(0)=1, a(1)=3, a(2)=10`
-/

namespace A100058.P9569428002438376338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 10] fun n a =>
  3 * a (n - 1) + a (n - 2) - 2 * a (n - 3)

end

end A100058.P9569428002438376338

namespace A100058

/-- `3*a(n-1)+a(n-2)-2*a(n-3)` -/
def P9569428002438376338.Spec : Prop :=
  ∀ n, P9569428002438376338.a n = A100058 n

end A100058

/-! ## A100058.P17384025177899013066

`∑[A052911(n)]`
-/

namespace A100058.P17384025177899013066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052911 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A100058.P17384025177899013066

namespace A100058

/-- `∑[A052911(n)]` -/
def P17384025177899013066.Spec : Prop :=
  ∀ n, P17384025177899013066.a n = A100058 n

end A100058

/-! ## A100058.P10678703337708369900

`A052939(n)+a(n-2)` with `a(0)=1, a(1)=3`
-/

namespace A100058.P10678703337708369900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  A052939 n + a (n - 2)

end

end A100058.P10678703337708369900

namespace A100058

/-- `A052939(n)+a(n-2)` -/
def P10678703337708369900.Spec : Prop :=
  ∀ n, P10678703337708369900.a n = A100058 n

end A100058

/-! ## A100058.P3856445931675914767

`∑[A100059(n)+a(n-1)]` with `a(0)=1`
-/

namespace A100058.P3856445931675914767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A100059 n + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A100058.P3856445931675914767

namespace A100058

/-- `∑[A100059(n)+a(n-1)]` -/
def P3856445931675914767.Spec : Prop :=
  ∀ n, P3856445931675914767.a n = A100058 n

end A100058

/-! ## A100058.P1366962750861077314

`A052550(n)+2*a(n-1)` with `a(0)=1`
-/

namespace A100058.P1366962750861077314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A052550 n + 2 * a (n - 1)

end

end A100058.P1366962750861077314

namespace A100058

/-- `A052550(n)+2*a(n-1)` -/
def P1366962750861077314.Spec : Prop :=
  ∀ n, P1366962750861077314.a n = A100058 n

end A100058

/-! ## A100058.P8741314582246921191

`2*A052911(n)-A052550(n)`
-/

namespace A100058.P8741314582246921191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A052911 n - A052550 n

end

end A100058.P8741314582246921191

namespace A100058

/-- `2*A052911(n)-A052550(n)` -/
def P8741314582246921191.Spec : Prop :=
  ∀ n, P8741314582246921191.a n = A100058 n

end A100058

/-! ## A100058.P9973611604350176746

`Δ[A052939(n)]-A052939(n)`
-/

namespace A100058.P9973611604350176746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052939 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A052939 n

end

end A100058.P9973611604350176746

namespace A100058

/-- `Δ[A052939(n)]-A052939(n)` -/
def P9973611604350176746.Spec : Prop :=
  ∀ n, P9973611604350176746.a n = A100058 n

end A100058

/-! ## A100058.P13143105832605971158

`A019481(n)-3*A052939(n)`
-/

namespace A100058.P13143105832605971158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019481 n - 3 * A052939 n

end

end A100058.P13143105832605971158

namespace A100058

/-- `A019481(n)-3*A052939(n)` -/
def P13143105832605971158.Spec : Prop :=
  ∀ n, P13143105832605971158.a n = A100058 n

end A100058

/-! ## A100058.P10947439905076258616

`A052911(n+1)-A052550(n+1)`
-/

namespace A100058.P10947439905076258616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052911 (n + 1) - A052550 (n + 1)

end

end A100058.P10947439905076258616

namespace A100058

/-- `A052911(n+1)-A052550(n+1)` -/
def P10947439905076258616.Spec : Prop :=
  ∀ n, P10947439905076258616.a n = A100058 n

end A100058

/-! ## A100058.P7730653504588970731

`A100059(n+2)-A052550(n+2)`
-/

namespace A100058.P7730653504588970731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100059 (n + 2) - A052550 (n + 2)

end

end A100058.P7730653504588970731

namespace A100058

/-- `A100059(n+2)-A052550(n+2)` -/
def P7730653504588970731.Spec : Prop :=
  ∀ n, P7730653504588970731.a n = A100058 n

end A100058

/-! ## A100058.P16606114670321164197

`A052939(n+1)-2*A052939(n)`
-/

namespace A100058.P16606114670321164197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052939 (n + 1) - 2 * A052939 n

end

end A100058.P16606114670321164197

namespace A100058

/-- `A052939(n+1)-2*A052939(n)` -/
def P16606114670321164197.Spec : Prop :=
  ∀ n, P16606114670321164197.a n = A100058 n

end A100058

/-! ## A100058.P12903413574315224644

`A100059(n+2)-(A052939(n+1)+A052911(n))`
-/

namespace A100058.P12903413574315224644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100059 (n + 2) - (A052939 (n + 1) + A052911 n)

end

end A100058.P12903413574315224644

namespace A100058

/-- `A100059(n+2)-(A052939(n+1)+A052911(n))` -/
def P12903413574315224644.Spec : Prop :=
  ∀ n, P12903413574315224644.a n = A100058 n

end A100058

/-!
# A100059: First differences of A052911.

The programs for A100059, the canonical program `A100059.P1717465946971346680` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A100059 has offset 1).

The definition of A100059 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A100059.P1717465946971346680

`3*a(n-1)+a(n-2)-2*a(n-3)` with `a(0)=1, a(1)=5, a(2)=14`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A100059

/-- `3*a(n-1)+a(n-2)-2*a(n-3)` -/
def P1717465946971346680.Spec : Prop :=
  ∀ n, P1717465946971346680.a n = A100059 (n + 1)

theorem P1717465946971346680.correct : P1717465946971346680.Spec := by
  intro n
  simp only [A100059, Nat.add_sub_cancel]

end A100059

/-! ## A100059.P7783946058979610903

`ogf((1+2x-2x^2)/(1-3x-x^2+2x^3))`
-/

namespace A100059.P7783946058979610903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2, -2] [1, -3, -1, 2] n

end

end A100059.P7783946058979610903

namespace A100059

/-- `ogf((1+2x-2x^2)/(1-3x-x^2+2x^3))` -/
def P7783946058979610903.Spec : Prop :=
  ∀ n, P7783946058979610903.a n = A100059 (n + 1)

end A100059

/-! ## A100059.P15028240604310043287

`A052911(n)+Δ[A052550(n)]`
-/

namespace A100059.P15028240604310043287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052550 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052911 n + (f1 (n + 1) - f1 n)

end

end A100059.P15028240604310043287

namespace A100059

/-- `A052911(n)+Δ[A052550(n)]` -/
def P15028240604310043287.Spec : Prop :=
  ∀ n, P15028240604310043287.a n = A100059 (n + 1)

end A100059

/-! ## A100059.P5540273441002702061

`2*A052939(n)-A052550(n)`
-/

namespace A100059.P5540273441002702061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A052939 n - A052550 n

end

end A100059.P5540273441002702061

namespace A100059

/-- `2*A052939(n)-A052550(n)` -/
def P5540273441002702061.Spec : Prop :=
  ∀ n, P5540273441002702061.a n = A100059 (n + 1)

end A100059

/-! ## A100059.P12193631765963899311

`Δ[A052911(n)]`
-/

namespace A100059.P12193631765963899311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052911 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A100059.P12193631765963899311

namespace A100059

/-- `Δ[A052911(n)]` -/
def P12193631765963899311.Spec : Prop :=
  ∀ n, P12193631765963899311.a n = A100059 (n + 1)

end A100059

/-! ## A100059.P5221194043484453211

`A052911(n+1)-A052911(n)`
-/

namespace A100059.P5221194043484453211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052911 (n + 1) - A052911 n

end

end A100059.P5221194043484453211

namespace A100059

/-- `A052911(n+1)-A052911(n)` -/
def P5221194043484453211.Spec : Prop :=
  ∀ n, P5221194043484453211.a n = A100059 (n + 1)

end A100059

/-! ## A100059.P12689980410283347116

`record[A052911(A152271(n))]-A052911(n)`
-/

namespace A100059.P12689980410283347116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052911 (A152271 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A052911 n

end

end A100059.P12689980410283347116

namespace A100059

/-- `record[A052911(A152271(n))]-A052911(n)` -/
def P12689980410283347116.Spec : Prop :=
  ∀ n, P12689980410283347116.a n = A100059 (n + 1)

end A100059

/-!
# A100060: a(n)=1 if the n-th second difference of the imaginary parts of the nontrivial zeros of the Riemann zeta function is positive, otherwise a(n)=0.

The programs for A100060, there is no canonical definition to state claims against.
-/

/-! ## A100060.P5640479028518893193

`A224697(∑[n])-A288640(n+1)`
-/

namespace A100060.P5640479028518893193
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224697 (∑ j ∈ Finset.range (n + 1), f1 j) - A288640 (n + 1)

end

end A100060.P5640479028518893193

/-! ## A100060.P5811621558385780271

`gcd(2, A105731(2*(n+2)))-A288640(n+1)`
-/

namespace A100060.P5811621558385780271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 2 (A105731 (2 * (n + 2))) : ℤ) - A288640 (n + 1)

end

end A100060.P5811621558385780271

/-! ## A100060.P14339080236998768357

`A054977(A060444(n))-A288640(n+1)`
-/

namespace A100060.P14339080236998768357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 (A060444 n).toNat - A288640 (n + 1)

end

end A100060.P14339080236998768357

/-! ## A100060.P11268312028857175611

`A089723(A165883(n))-A288640(n+1)`
-/

namespace A100060.P11268312028857175611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089723 (A165883 n).toNat - A288640 (n + 1)

end

end A100060.P11268312028857175611

/-! ## A100060.P7401417817179071725

`A250068(A016116(n))-A288640(n+1)`
-/

namespace A100060.P7401417817179071725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250068 (A016116 n).toNat - A288640 (n + 1)

end

end A100060.P7401417817179071725

/-!
# A100062: Denominator of the probability that an integer n occurs in the cumulative sums of the decimal digits of a random real number between 0 and 1.

The programs for A100062, the canonical program `A100062.P15754738640146403582` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A100062 has offset 1).

The definition of A100062 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A100062.P15754738640146403582

`9^(n+1)`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A100062

/-- `9^(n+1)` -/
def P15754738640146403582.Spec : Prop :=
  ∀ n, (P15754738640146403582.a n : ℤ) = A100062 (n + 1)

theorem P15754738640146403582.correct : P15754738640146403582.Spec := by
  intro n
  simp only [A100062, Nat.add_sub_cancel]

end A100062

/-!
# A100065: E.g.f. A(x) satisfies: Sum_{k=0..n} (A(x)^n)_k/k! = [exp(n)] (integer floor of e^n) for all n>=0, where (A(x)^n)_k/k! is the coefficient of x^k in A(x)^n.

The programs for A100065, there is no canonical definition to state claims against.
-/

/-! ## A100065.P7788554352999099484

`or(A120952(n), A124769(A006003(n)))`
-/

namespace A100065.P7788554352999099484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A120952 n) (A124769 (A006003 n).toNat)

end

end A100065.P7788554352999099484

/-! ## A100065.P16512244177218714396

`or(A120952(n), A135010(A125793(n)))`
-/

namespace A100065.P16512244177218714396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A120952 n) (A135010 (A125793 n).toNat)

end

end A100065.P16512244177218714396

/-!
# A100066: Expansion of x/((1-x)*sqrt(1-4*x^2)).

The programs for A100066, the canonical program `A100066.P11903303257243455061` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A100066 has offset 0).

The definition of A100066 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 339 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A100066.P7417080745644275163

`∑[A126869(abs(1-n))]`
-/

namespace A100066.P7417080745644275163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126869 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A100066.P7417080745644275163

namespace A100066

/-- `∑[A126869(abs(1-n))]` -/
def P7417080745644275163.Spec : Prop :=
  ∀ n, P7417080745644275163.a n = A100066 n

end A100066

/-! ## A100066.P11903303257243455061

`∑[∑[n%2]*A097331(n)]`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A100066

/-- `∑[∑[n%2]*A097331(n)]` -/
def P11903303257243455061.Spec : Prop :=
  ∀ n, P11903303257243455061.a n = A100066 n

theorem P11903303257243455061.correct : P11903303257243455061.Spec := by
  intro n
  simp only [A100066]

end A100066

/-! ## A100066.P14975317062047458630

`A126869(n-1)+a(n-1)` with `a(0)=0`
-/

namespace A100066.P14975317062047458630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A126869 (n - 1) + a (n - 1)

end

end A100066.P14975317062047458630

namespace A100066

/-- `A126869(n-1)+a(n-1)` -/
def P14975317062047458630.Spec : Prop :=
  ∀ n, P14975317062047458630.a n = A100066 n

end A100066

/-! ## A100066.P10399448924792439600

`A078478(A213222(n+3))`
-/

namespace A100066.P10399448924792439600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078478 (A213222 (n + 3)).toNat

end

end A100066.P10399448924792439600

namespace A100066

/-- `A078478(A213222(n+3))` -/
def P10399448924792439600.Spec : Prop :=
  ∀ n, P10399448924792439600.a n = A100066 n

end A100066

/-! ## A100066.P16082098838443775037

`∑[A004526(n+1)*A097331(n)]`
-/

namespace A100066.P16082098838443775037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (n + 1) * A097331 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A100066.P16082098838443775037

namespace A100066

/-- `∑[A004526(n+1)*A097331(n)]` -/
def P16082098838443775037.Spec : Prop :=
  ∀ n, P16082098838443775037.a n = A100066 n

end A100066

/-! ## A100066.P11788889570802870445

`∑[A097331(n)*A302043(n+1)]`
-/

namespace A100066.P11788889570802870445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097331 n * A302043 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A100066.P11788889570802870445

namespace A100066

/-- `∑[A097331(n)*A302043(n+1)]` -/
def P11788889570802870445.Spec : Prop :=
  ∀ n, P11788889570802870445.a n = A100066 n

end A100066

/-! ## A100066.P4991406590184333799

`∑[(n-A004526(n))*A097331(n)]`
-/

namespace A100066.P4991406590184333799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - A004526 n) * A097331 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A100066.P4991406590184333799

namespace A100066

/-- `∑[(n-A004526(n))*A097331(n)]` -/
def P4991406590184333799.Spec : Prop :=
  ∀ n, P4991406590184333799.a n = A100066 n

end A100066

/-! ## A100066.P1154992556960669068

`∑[(A007494(n)-n)*A097331(n)]`
-/

namespace A100066.P1154992556960669068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A007494 n - (n : ℤ)) * A097331 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A100066.P1154992556960669068

namespace A100066

/-- `∑[(A007494(n)-n)*A097331(n)]` -/
def P1154992556960669068.Spec : Prop :=
  ∀ n, P1154992556960669068.a n = A100066 n

end A100066

/-! ## A100066.P5086536944920916505

`∑[A052928(n+1)/2*A097331(n)]`
-/

namespace A100066.P5086536944920916505
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052928 (n + 1) : ℚ) / 2 * (A097331 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A100066.P5086536944920916505

namespace A100066

/-- `∑[A052928(n+1)/2*A097331(n)]` -/
def P5086536944920916505.Spec : Prop :=
  ∀ n, P5086536944920916505.a n = (A100066 n : ℚ)

end A100066

/-! ## A100066.P1716764256506655686

`∑[∑[A339110(a(n-1))]*A097331(n)]` with `a(0)=0`
-/

namespace A100066.P1716764256506655686
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f2 =>
  A339110 (f2 (n - 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) * A097331 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A100066.P1716764256506655686

namespace A100066

/-- `∑[∑[A339110(a(n-1))]*A097331(n)]` -/
def P1716764256506655686.Spec : Prop :=
  ∀ n, P1716764256506655686.a n = A100066 n

end A100066

/-! ## A100066.P12907264164366599635

`∑[A126869(n)]-A126869(n)`
-/

namespace A100066.P12907264164366599635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126869 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A126869 n

end

end A100066.P12907264164366599635

namespace A100066

/-- `∑[A126869(n)]-A126869(n)` -/
def P12907264164366599635.Spec : Prop :=
  ∀ n, P12907264164366599635.a n = A100066 n

end A100066

/-! ## A100066.P3856667315147201054

`2*A100071(n)-∑[A100071(n)]`
-/

namespace A100066.P3856667315147201054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100071 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A100071 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A100066.P3856667315147201054

namespace A100066

/-- `2*A100071(n)-∑[A100071(n)]` -/
def P3856667315147201054.Spec : Prop :=
  ∀ n, P3856667315147201054.a n = A100066 n

end A100066

/-! ## A100066.P12048033447172169854

`A006134(n)-A129368(n)`
-/

namespace A100066.P12048033447172169854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006134 n - A129368 n

end

end A100066.P12048033447172169854

namespace A100066

/-- `A006134(n)-A129368(n)` -/
def P12048033447172169854.Spec : Prop :=
  ∀ n, P12048033447172169854.a n = A100066 n

end A100066

/-! ## A100066.P5133440544668677014

`∑[A097805(A176889(n+1))]`
-/

namespace A100066.P5133440544668677014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097805 (A176889 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A100066.P5133440544668677014

namespace A100066

/-- `∑[A097805(A176889(n+1))]` -/
def P5133440544668677014.Spec : Prop :=
  ∀ n, P5133440544668677014.a n = A100066 n

end A100066

/-! ## A100066.P13241468194527449212

`∑[A097805(A093005(n+1))]`
-/

namespace A100066.P13241468194527449212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097805 (A093005 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A100066.P13241468194527449212

namespace A100066

/-- `∑[A097805(A093005(n+1))]` -/
def P13241468194527449212.Spec : Prop :=
  ∀ n, P13241468194527449212.a n = A100066 n

end A100066

/-!
# A100067: a(n) = Sum_{k=0..floor(n/2)} binomial(n,k)*2^(n-2*k).

The programs for A100067, there is no canonical definition to state claims against.
-/

/-! ## A100067.P10911449893289943013

`A100099(n)+A100098(n)`
-/

namespace A100067.P10911449893289943013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100099 n + A100098 n

end

end A100067.P10911449893289943013

/-! ## A100067.P13304223128240722681

`A100099(n)+abs(A127361(n))`
-/

namespace A100067.P13304223128240722681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100099 n + |A127361 n|

end

end A100067.P13304223128240722681

/-! ## A100067.P10603461381499722519

`A126869(n)+2*A100099(n)`
-/

namespace A100067.P10603461381499722519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126869 n + 2 * A100099 n

end

end A100067.P10603461381499722519

/-! ## A100067.P1342495875024455340

`2*A100098(n)-A126869(n)`
-/

namespace A100067.P1342495875024455340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A100098 n - A126869 n

end

end A100067.P1342495875024455340

/-! ## A100067.P17287000310912300994

`abs(2*A127361(n)-A126869(n))`
-/

namespace A100067.P17287000310912300994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 * A127361 n - A126869 n|

end

end A100067.P17287000310912300994

/-! ## A100067.P14543445144788391874

`A127358(n)-A100099(n)`
-/

namespace A100067.P14543445144788391874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127358 n - A100099 n

end

end A100067.P14543445144788391874

/-! ## A100067.P14193301411462566141

`(A127358(n)+A100098(n))/2`
-/

namespace A100067.P14193301411462566141
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127358 n + A100098 n : ℚ) / 2

end

end A100067.P14193301411462566141

/-!
# A100068: a(n) = Sum_{k=0..floor(n/2)} binomial(n,k)*3^(n-2*k).

The programs for A100068, there is no canonical definition to state claims against.
-/

/-! ## A100068.P2764805066044278729

`(A133443(n)+A127359(n))/2`
-/

namespace A100068.P2764805066044278729
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A133443 n + A127359 n : ℚ) / 2

end

end A100068.P2764805066044278729

/-! ## A100068.P9290580818422067936

`A004526(A133443(n)+A127359(n))`
-/

namespace A100068.P9290580818422067936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A133443 n + A127359 n).toNat

end

end A100068.P9290580818422067936

/-! ## A100068.P11646545861992924077

`A078898(A133443(n)+A127359(n))`
-/

namespace A100068.P11646545861992924077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (A133443 n + A127359 n).toNat

end

end A100068.P11646545861992924077

/-! ## A100068.P2297946080230602114

`A110654(A133443(n)+A127359(n))`
-/

namespace A100068.P2297946080230602114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A133443 n + A127359 n).toNat

end

end A100068.P2297946080230602114

/-!
# A100069: a(n) = Sum_{k=0..floor(n/2)} binomial(n,k)*4^(n-2*k).

The programs for A100069, there is no canonical definition to state claims against.
-/

/-! ## A100069.P15745189475741642062

`A233795(A096647(n))+A017958(n)`
-/

namespace A100069.P15745189475741642062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233795 (A096647 n).toNat + A017958 n

end

end A100069.P15745189475741642062

/-! ## A100069.P8714981093849070559

`A025442(A215912(n+1))+A017958(n)`
-/

namespace A100069.P8714981093849070559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025442 (A215912 (n + 1)).toNat + A017958 n

end

end A100069.P8714981093849070559

/-!
# A100070: Number of forests with two components in the complete bipartite graph K_{n,n}.

The programs for A100070, there is no canonical definition to state claims against.
-/

/-! ## A100070.P14134156609592848591

`((n+3)²-3)*(n+2)^(2*n)`
-/

namespace A100070.P14134156609592848591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((n + 3) ^ 2 : ℤ) - 3) * ((n + 2) ^ (2 * n) : ℤ)

end

end A100070.P14134156609592848591

/-!
# A100071: a(n) = n * binomial(n-1, floor((n-1)/2)) = n * max_{i=0..n} binomial(n-1, i).

The programs for A100071, the canonical program `A100071.P108043524234924627` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A100071 has offset 0).

The definition of A100071 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A100071.P108043524234924627

`4*a(n-2)+2*a(n-1)/(n-1)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A100071

/-- `4*a(n-2)+2*a(n-1)/(n-1)` -/
def P108043524234924627.Spec : Prop :=
  ∀ n, P108043524234924627.a n = (A100071 n : ℚ)

end A100071

/-! ## A100071.P10665491721939642449

`a(n-1)*n/floor(n/2)` with `a(0)=0, a(1)=1`
-/

namespace A100071.P10665491721939642449
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 1) * (n : ℚ) / (⌊(n : ℚ) / 2⌋ : ℚ)

end

end A100071.P10665491721939642449

namespace A100071

/-- `a(n-1)*n/floor(n/2)` -/
def P10665491721939642449.Spec : Prop :=
  ∀ n, P10665491721939642449.a n = (A100071 n : ℚ)

end A100071

/-! ## A100071.P1660830160400905641

`n*A210736(n)`
-/

namespace A100071.P1660830160400905641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A210736 n

end

end A100071.P1660830160400905641

namespace A100071

/-- `n*A210736(n)` -/
def P1660830160400905641.Spec : Prop :=
  ∀ n, P1660830160400905641.a n = A100071 n

end A100071

/-! ## A100071.P8250303519297155335

`n/2*A063886(n)`
-/

namespace A100071.P8250303519297155335
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 2 * (A063886 n : ℚ)

end

end A100071.P8250303519297155335

namespace A100071

/-- `n/2*A063886(n)` -/
def P8250303519297155335.Spec : Prop :=
  ∀ n, P8250303519297155335.a n = (A100071 n : ℚ)

end A100071

/-! ## A100071.P8396180016226964810

`n*A001405(abs(1-n))`
-/

namespace A100071.P8396180016226964810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A001405 |1 - (n : ℤ)|.toNat

end

end A100071.P8396180016226964810

namespace A100071

/-- `n*A001405(abs(1-n))` -/
def P8396180016226964810.Spec : Prop :=
  ∀ n, P8396180016226964810.a n = A100071 n

end A100071

/-! ## A100071.P3586862323246861784

`n/2*A182027(n+1)`
-/

namespace A100071.P3586862323246861784
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 2 * (A182027 (n + 1) : ℚ)

end

end A100071.P3586862323246861784

namespace A100071

/-- `n/2*A182027(n+1)` -/
def P3586862323246861784.Spec : Prop :=
  ∀ n, P3586862323246861784.a n = (A100071 n : ℚ)

end A100071

/-! ## A100071.P6567206972720570333

`A189911(n)-A001405(n)`
-/

namespace A100071.P6567206972720570333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189911 n - A001405 n

end

end A100071.P6567206972720570333

namespace A100071

/-- `A189911(n)-A001405(n)` -/
def P6567206972720570333.Spec : Prop :=
  ∀ n, P6567206972720570333.a n = A100071 n

end A100071

/-! ## A100071.P15396706056067500969

`A014314(n)-A294175(n)`
-/

namespace A100071.P15396706056067500969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014314 n - A294175 n

end

end A100071.P15396706056067500969

namespace A100071

/-- `A014314(n)-A294175(n)` -/
def P15396706056067500969.Spec : Prop :=
  ∀ n, P15396706056067500969.a n = A100071 n

end A100071

/-! ## A100071.P9331047524071434215

`A323988(n)-A027306(n)`
-/

namespace A100071.P9331047524071434215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323988 n - A027306 n

end

end A100071.P9331047524071434215

namespace A100071

/-- `A323988(n)-A027306(n)` -/
def P9331047524071434215.Spec : Prop :=
  ∀ n, P9331047524071434215.a n = A100071 n

end A100071

/-! ## A100071.P15756766286558358040

`A008619(n)*A037952(n)`
-/

namespace A100071.P15756766286558358040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n * A037952 n

end

end A100071.P15756766286558358040

namespace A100071

/-- `A008619(n)*A037952(n)` -/
def P15756766286558358040.Spec : Prop :=
  ∀ n, P15756766286558358040.a n = A100071 n

end A100071

/-! ## A100071.P8382552258597628987

`A001405(n)*A110654(n)`
-/

namespace A100071.P8382552258597628987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 n * A110654 n

end

end A100071.P8382552258597628987

namespace A100071

/-- `A001405(n)*A110654(n)` -/
def P8382552258597628987.Spec : Prop :=
  ∀ n, P8382552258597628987.a n = A100071 n

end A100071

/-! ## A100071.P9090672729383857738

`A026741(n)*A128014(n)`
-/

namespace A100071.P9090672729383857738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 n * A128014 n

end

end A100071.P9090672729383857738

namespace A100071

/-- `A026741(n)*A128014(n)` -/
def P9090672729383857738.Spec : Prop :=
  ∀ n, P9090672729383857738.a n = A100071 n

end A100071

/-! ## A100071.P12507063100981575286

`A126930(n)*A130472(n)`
-/

namespace A100071.P12507063100981575286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126930 n * A130472 n

end

end A100071.P12507063100981575286

namespace A100071

/-- `A126930(n)*A130472(n)` -/
def P12507063100981575286.Spec : Prop :=
  ∀ n, P12507063100981575286.a n = A100071 n

end A100071

/-! ## A100071.P15061443443912564215

`A152271(n)*A212303(n)`
-/

namespace A100071.P15061443443912564215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152271 n * A212303 n

end

end A100071.P15061443443912564215

namespace A100071

/-- `A152271(n)*A212303(n)` -/
def P15061443443912564215.Spec : Prop :=
  ∀ n, P15061443443912564215.a n = A100071 n

end A100071

/-! ## A100071.P16083810160634554966

`A241543(n)*A385083(n)`
-/

namespace A100071.P16083810160634554966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241543 n * A385083 n

end

end A100071.P16083810160634554966

namespace A100071

/-- `A241543(n)*A385083(n)` -/
def P16083810160634554966.Spec : Prop :=
  ∀ n, P16083810160634554966.a n = A100071 n

end A100071

/-! ## A100071.P3288835671314998228

`lcm(A037952(n), A056040(n))`
-/

namespace A100071.P3288835671314998228
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A037952 n) (A056040 n)

end

end A100071.P3288835671314998228

namespace A100071

/-- `lcm(A037952(n), A056040(n))` -/
def P3288835671314998228.Spec : Prop :=
  ∀ n, (P3288835671314998228.a n : ℤ) = A100071 n

end A100071

/-! ## A100071.P438751597705023493

`lcm(A128014(n), A212303(n))`
-/

namespace A100071.P438751597705023493
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A128014 n) (A212303 n)

end

end A100071.P438751597705023493

namespace A100071

/-- `lcm(A128014(n), A212303(n))` -/
def P438751597705023493.Spec : Prop :=
  ∀ n, (P438751597705023493.a n : ℤ) = A100071 n

end A100071

/-! ## A100071.P11867142487537185978

`A107373(n+1)+A058622(n)`
-/

namespace A100071.P11867142487537185978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107373 (n + 1) + A058622 n

end

end A100071.P11867142487537185978

namespace A100071

/-- `A107373(n+1)+A058622(n)` -/
def P11867142487537185978.Spec : Prop :=
  ∀ n, P11867142487537185978.a n = A100071 n

end A100071

/-! ## A100071.P11384727479273688223

`A001405(n)*A004526(n+1)`
-/

namespace A100071.P11384727479273688223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 n * A004526 (n + 1)

end

end A100071.P11384727479273688223

namespace A100071

/-- `A001405(n)*A004526(n+1)` -/
def P11384727479273688223.Spec : Prop :=
  ∀ n, P11384727479273688223.a n = A100071 n

end A100071

/-! ## A100071.P2008815119310366379

`lcm(A001405(n), A274707(n+1))`
-/

namespace A100071.P2008815119310366379
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A001405 n) (A274707 (n + 1))

end

end A100071.P2008815119310366379

namespace A100071

/-- `lcm(A001405(n), A274707(n+1))` -/
def P2008815119310366379.Spec : Prop :=
  ∀ n, (P2008815119310366379.a n : ℤ) = A100071 n

end A100071

/-!
# A100073: Number of representations of n as the difference of two positive squares.

The programs for A100073, the canonical program `A100073.P14220404356122435277` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A100073 has offset 1).

The definition of A100073 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A100073.P3140171952843332618

`floor(A112329(n+1)/2)`
-/

namespace A100073.P3140171952843332618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A112329 (n + 1) : ℚ) / 2⌋

end

end A100073.P3140171952843332618

namespace A100073

/-- `floor(A112329(n+1)/2)` -/
def P3140171952843332618.Spec : Prop :=
  ∀ n, P3140171952843332618.a n = A100073 (n + 1)

end A100073

/-! ## A100073.P4315934907174875220

`floor(A094572(n+1)/4)`
-/

namespace A100073.P4315934907174875220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A094572 (n + 1) : ℚ) / 4⌋

end

end A100073.P4315934907174875220

namespace A100073

/-- `floor(A094572(n+1)/4)` -/
def P4315934907174875220.Spec : Prop :=
  ∀ n, P4315934907174875220.a n = A100073 (n + 1)

end A100073

/-! ## A100073.P9647661468054358414

`∑{d}[n+1, (#+n)%2]-A038548(n+1)`
-/

namespace A100073.P9647661468054358414
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), (d + n) % 2 : ℕ) : ℤ) - A038548 (n + 1)

end

end A100073.P9647661468054358414

namespace A100073

/-- `∑{d}[n+1, (#+n)%2]-A038548(n+1)` -/
def P9647661468054358414.Spec : Prop :=
  ∀ n, P9647661468054358414.a n = A100073 (n + 1)

end A100073

/-! ## A100073.P12043454368555770993

`A002265(A094572(n+1))`
-/

namespace A100073.P12043454368555770993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A094572 (n + 1)).toNat

end

end A100073.P12043454368555770993

namespace A100073

/-- `A002265(A094572(n+1))` -/
def P12043454368555770993.Spec : Prop :=
  ∀ n, P12043454368555770993.a n = A100073 (n + 1)

end A100073

/-! ## A100073.P13234974325711875042

`A004526(A112329(n+1))`
-/

namespace A100073.P13234974325711875042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A112329 (n + 1)).toNat

end

end A100073.P13234974325711875042

namespace A100073

/-- `A004526(A112329(n+1))` -/
def P13234974325711875042.Spec : Prop :=
  ∀ n, P13234974325711875042.a n = A100073 (n + 1)

end A100073

/-! ## A100073.P16310823067606394954

`A004526(abs(A048272(n+1)))`
-/

namespace A100073.P16310823067606394954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 |A048272 (n + 1)|.toNat

end

end A100073.P16310823067606394954

namespace A100073

/-- `A004526(abs(A048272(n+1)))` -/
def P16310823067606394954.Spec : Prop :=
  ∀ n, P16310823067606394954.a n = A100073 (n + 1)

end A100073

/-! ## A100073.P7185079848106973596

`A338117(n+1)-A072670(n)`
-/

namespace A100073.P7185079848106973596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338117 (n + 1) - A072670 n

end

end A100073.P7185079848106973596

namespace A100073

/-- `A338117(n+1)-A072670(n)` -/
def P7185079848106973596.Spec : Prop :=
  ∀ n, P7185079848106973596.a n = A100073 (n + 1)

end A100073

/-! ## A100073.P1606292412714516592

`A004526(abs(1-A325939(n+1)))`
-/

namespace A100073.P1606292412714516592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 |1 - A325939 (n + 1)|.toNat

end

end A100073.P1606292412714516592

namespace A100073

/-- `A004526(abs(1-A325939(n+1)))` -/
def P1606292412714516592.Spec : Prop :=
  ∀ n, P1606292412714516592.a n = A100073 (n + 1)

end A100073

/-! ## A100073.P5791836273068138364

`A110655(A094572(n+1)+1)-1`
-/

namespace A100073.P5791836273068138364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110655 (A094572 (n + 1) + 1).toNat - 1

end

end A100073.P5791836273068138364

namespace A100073

/-- `A110655(A094572(n+1)+1)-1` -/
def P5791836273068138364.Spec : Prop :=
  ∀ n, P5791836273068138364.a n = A100073 (n + 1)

end A100073

/-! ## A100073.P8941434946344634208

`A131728(A094572(n+1)+2)-1`
-/

namespace A100073.P8941434946344634208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131728 (A094572 (n + 1) + 2).toNat - 1

end

end A100073.P8941434946344634208

namespace A100073

/-- `A131728(A094572(n+1)+2)-1` -/
def P8941434946344634208.Spec : Prop :=
  ∀ n, P8941434946344634208.a n = A100073 (n + 1)

end A100073

/-! ## A100073.P13690209630465796659

`A112329(n+1)-A034178(n+1)`
-/

namespace A100073.P13690209630465796659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112329 (n + 1) - A034178 (n + 1)

end

end A100073.P13690209630465796659

namespace A100073

/-- `A112329(n+1)-A034178(n+1)` -/
def P13690209630465796659.Spec : Prop :=
  ∀ n, P13690209630465796659.a n = A100073 (n + 1)

end A100073

/-! ## A100073.P2387086770475886115

`A066955(n+1)-A290870(n+1)`
-/

namespace A100073.P2387086770475886115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066955 (n + 1) - A290870 (n + 1)

end

end A100073.P2387086770475886115

namespace A100073

/-- `A066955(n+1)-A290870(n+1)` -/
def P2387086770475886115.Spec : Prop :=
  ∀ n, P2387086770475886115.a n = A100073 (n + 1)

end A100073

/-! ## A100073.P4173881497706697479

`A320111(n+1)-A038548(n+1)`
-/

namespace A100073.P4173881497706697479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320111 (n + 1) - A038548 (n + 1)

end

end A100073.P4173881497706697479

namespace A100073

/-- `A320111(n+1)-A038548(n+1)` -/
def P4173881497706697479.Spec : Prop :=
  ∀ n, P4173881497706697479.a n = A100073 (n + 1)

end A100073

/-! ## A100073.P2172813857193893516

`A057555(A048272(n+1)²+1)-1`
-/

namespace A100073.P2172813857193893516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057555 (A048272 (n + 1) ^ 2 + 1).toNat - 1

end

end A100073.P2172813857193893516

namespace A100073

/-- `A057555(A048272(n+1)²+1)-1` -/
def P2172813857193893516.Spec : Prop :=
  ∀ n, P2172813857193893516.a n = A100073 (n + 1)

end A100073

/-! ## A100073.P1150380158966183941

`(A056924(n+1)-A348952(n+1))/2`
-/

namespace A100073.P1150380158966183941
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056924 (n + 1) - A348952 (n + 1) : ℚ) / 2

end

end A100073.P1150380158966183941

namespace A100073

/-- `(A056924(n+1)-A348952(n+1))/2` -/
def P1150380158966183941.Spec : Prop :=
  ∀ n, P1150380158966183941.a n = (A100073 (n + 1) : ℚ)

end A100073

/-! ## A100073.P17535488548277802879

`floor(A320111(n+1)-A000005(n+1)/2)`
-/

namespace A100073.P17535488548277802879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A320111 (n + 1) : ℚ) - (A000005 (n + 1) : ℚ) / 2⌋

end

end A100073.P17535488548277802879

namespace A100073

/-- `floor(A320111(n+1)-A000005(n+1)/2)` -/
def P17535488548277802879.Spec : Prop :=
  ∀ n, P17535488548277802879.a n = A100073 (n + 1)

end A100073

/-! ## A100073.P14220404356122435277

`ceil(A320111(n+1)-A334954(n+1)/2)`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A100073

/-- `ceil(A320111(n+1)-A334954(n+1)/2)` -/
def P14220404356122435277.Spec : Prop :=
  ∀ n, P14220404356122435277.a n = A100073 (n + 1)

theorem P14220404356122435277.correct : P14220404356122435277.Spec := by
  intro n
  simp only [A100073, Nat.add_sub_cancel]

end A100073

/-! ## A100073.P16929683407980338686

`∑{d}[n+1, A008836(#)*A115878((n+1)/#)]`
-/

namespace A100073.P16929683407980338686
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008836 d * A115878 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A100073.P16929683407980338686

namespace A100073

/-- `∑{d}[n+1, A008836(#)*A115878((n+1)/#)]` -/
def P16929683407980338686.Spec : Prop :=
  ∀ n, P16929683407980338686.a n = A100073 (n + 1)

end A100073

/-! ## A100073.P6359807604756774061

`A320111(n+1)-round(A000005(or(n, n%2)+1)/2)`
-/

namespace A100073.P6359807604756774061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320111 (n + 1) - SequenceMachineLib.roundAway ((A000005 (Nat.lor n (n % 2) + 1) : ℚ) / 2)

end

end A100073.P6359807604756774061

namespace A100073

/-- `A320111(n+1)-round(A000005(or(n, n%2)+1)/2)` -/
def P6359807604756774061.Spec : Prop :=
  ∀ n, P6359807604756774061.a n = A100073 (n + 1)

end A100073

/-! ## A100073.P3223596724969525887

`A034178(n+1)-A000035(A000005(n+1))`
-/

namespace A100073.P3223596724969525887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034178 (n + 1) - A000035 (A000005 (n + 1)).toNat

end

end A100073.P3223596724969525887

namespace A100073

/-- `A034178(n+1)-A000035(A000005(n+1))` -/
def P3223596724969525887.Spec : Prop :=
  ∀ n, P3223596724969525887.a n = A100073 (n + 1)

end A100073

/-!
# A100081: Position of first occurrence of n in the fractional part of sqrt(2), starting with n=0.

The programs for A100081, there is no canonical definition to state claims against.
-/

/-! ## A100081.P9829772986908297303

`abs(2-A229199(n))+1`
-/

namespace A100081.P9829772986908297303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - A229199 n| + 1

end

end A100081.P9829772986908297303

/-! ## A100081.P2725053745476379933

`lcm(2-A229199(n), A010126(gcd(n, n+1)))+1`
-/

namespace A100081.P2725053745476379933
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (2 - A229199 n) (A010126 (Nat.gcd n (n + 1))) + 1

end

end A100081.P2725053745476379933

/-! ## A100081.P14656342910697125097

`A229199(n)+A134824(A229199(n))`
-/

namespace A100081.P14656342910697125097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229199 n + A134824 (A229199 n).toNat

end

end A100081.P14656342910697125097

/-! ## A100081.P14959765448138459893

`A229199(n)+A087960(A000051(n))`
-/

namespace A100081.P14959765448138459893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229199 n + A087960 (A000051 n).toNat

end

end A100081.P14959765448138459893

/-! ## A100081.P17793364468794987097

`A229199(n)-A056594(A155559(n))`
-/

namespace A100081.P17793364468794987097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229199 n - A056594 (A155559 n).toNat

end

end A100081.P17793364468794987097

/-!
# A100083: Numbers n such that n divides Sum_{m=1..n} (m+1)!.

The programs for A100083, there is no canonical definition to state claims against.
-/

/-! ## A100083.P13096954886399698307

`lt[A226570(n+1), 1]+1`
-/

namespace A100083.P13096954886399698307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226570 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A100083.P13096954886399698307

/-!
# A100086: Decimal expansion of unique positive solution to y^y = (y-1)^(y+1).

The programs for A100086, there is no canonical definition to state claims against.
-/

/-! ## A100086.P16490225794811401375

`A144211(abs(1-n)+1)`
-/

namespace A100086.P16490225794811401375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144211 ((|1 - (n : ℤ)| + 1).toNat + 1)

end

end A100086.P16490225794811401375

/-! ## A100086.P17915994244440499026

`A144211(n)+C(2, n+2)`
-/

namespace A100086.P17915994244440499026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144211 (n + 1) + (Nat.choose 2 (n + 2) : ℤ)

end

end A100086.P17915994244440499026

/-!
# A100087: Expansion of x/(sqrt(1-4*x^2) + x - 1).

The programs for A100087, there is no canonical definition to state claims against.
-/

/-! ## A100087.P5470319047532923482

`A036453(n+1)*A126075(A161680(n))`
-/

namespace A100087.P5470319047532923482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036453 (n + 1) * A126075 (A161680 n).toNat

end

end A100087.P5470319047532923482

/-! ## A100087.P1144055325049998707

`(char[A052938(n)]+1)*A126075(A161680(n))`
-/

namespace A100087.P1144055325049998707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052938 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((if ∃ j, f1 j = (n : ℤ) then 1 else 0) + 1 : ℕ) : ℤ) * A126075 (A161680 n).toNat

end

end A100087.P1144055325049998707

/-! ## A100087.P13408841582669755840

`A000032(C(2, n+2))*A126075(A161680(n))`
-/

namespace A100087.P13408841582669755840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (Nat.choose 2 (n + 2)) * A126075 (A161680 n).toNat

end

end A100087.P13408841582669755840

/-! ## A100087.P8094979261359387094

`A020639(A062570(n+1))*A126075(A161680(n))`
-/

namespace A100087.P8094979261359387094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A062570 (n + 1)).toNat * A126075 (A161680 n).toNat

end

end A100087.P8094979261359387094

/-! ## A100087.P4933732852093392355

`A020639(A247451(n+1))*A126075(A161680(n))`
-/

namespace A100087.P4933732852093392355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A247451 (n + 1)).toNat * A126075 (A161680 n).toNat

end

end A100087.P4933732852093392355

/-! ## A100087.P4286213253539449552

`A020639(A163989(n+1))*A126075(A161680(n))`
-/

namespace A100087.P4286213253539449552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A163989 (n + 1)).toNat * A126075 (A161680 n).toNat

end

end A100087.P4286213253539449552

/-!
# A100088: Expansion of (1-x^2)/((1-2*x)*(1+x^2)).

The programs for A100088, the canonical program `A100088.P16898438507576814989` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A100088 has offset 0).

The definition of A100088 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-x^2)/(1-2x+x^2-2x^3))` (program `A100088.P16898438507576814989`, by `A100088.P16898438507576814989.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A100088.P16898438507576814989

`ogf((1-x^2)/(1-2x+x^2-2x^3))`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A100088

/-- `ogf((1-x^2)/(1-2x+x^2-2x^3))` -/
def P16898438507576814989.Spec : Prop :=
  ∀ n, P16898438507576814989.a n = A100088 n

theorem P16898438507576814989.correct : P16898438507576814989.Spec := by
  intro n
  simp only [A100088]

end A100088

/-! ## A100088.P2623259485786799644

`2*a(n-1)-a(n-2)+2*a(n-3)` with `a(0)=1, a(1)=2, a(2)=2`
-/

namespace A100088.P2623259485786799644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 2] fun n a =>
  2 * a (n - 1) - a (n - 2) + 2 * a (n - 3)

end

end A100088.P2623259485786799644

namespace A100088

/-- `2*a(n-1)-a(n-2)+2*a(n-3)` -/
def P2623259485786799644.Spec : Prop :=
  ∀ n, P2623259485786799644.a n = A100088 n

end A100088

/-! ## A100088.P4618984483444043861

`(3*2^n+2*cos(π*n/2)+4*sin(π*n/2))/5`
-/

namespace A100088.P4618984483444043861
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((3 * 2 ^ n : ℝ) + 2 * Real.cos (Real.pi * (n : ℝ) / 2) + 4 * Real.sin (Real.pi * (n : ℝ) / 2)) / 5

end

end A100088.P4618984483444043861

namespace A100088

/-- `(3*2^n+2*cos(π*n/2)+4*sin(π*n/2))/5` -/
def P4618984483444043861.Spec : Prop :=
  ∀ n, P4618984483444043861.a n = (A100088 n : ℝ)

end A100088

/-! ## A100088.P11349092684699870067

`2*(∑[(-1)^∑[n]]+a(n-1))` with `a(0)=1`
-/

namespace A100088.P11349092684699870067
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j + a (n - 1))

end

end A100088.P11349092684699870067

namespace A100088

/-- `2*(∑[(-1)^∑[n]]+a(n-1))` -/
def P11349092684699870067.Spec : Prop :=
  ∀ n, P11349092684699870067.a n = A100088 n

end A100088

/-! ## A100088.P9722641985382281064

`3*2^(n-2)-a(n-2)` with `a(0)=1, a(1)=2`
-/

namespace A100088.P9722641985382281064
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 2] fun n a =>
  3 * (2 : ℚ) ^ ((n : ℤ) - 2 : ℤ) - a (n - 2)

end

end A100088.P9722641985382281064

namespace A100088

/-- `3*2^(n-2)-a(n-2)` -/
def P9722641985382281064.Spec : Prop :=
  ∀ n, P9722641985382281064.a n = (A100088 n : ℚ)

end A100088

/-! ## A100088.P8867426369642618705

`A176742(n)+2*a(n-1)` with `a(0)=1`
-/

namespace A100088.P8867426369642618705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A176742 n + 2 * a (n - 1)

end

end A100088.P8867426369642618705

namespace A100088

/-- `A176742(n)+2*a(n-1)` -/
def P8867426369642618705.Spec : Prop :=
  ∀ n, P8867426369642618705.a n = A100088 n

end A100088

/-! ## A100088.P18285606797169909294

`A139763(n)-A181586(n)`
-/

namespace A100088.P18285606797169909294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139763 n - A181586 n

end

end A100088.P18285606797169909294

namespace A100088

/-- `A139763(n)-A181586(n)` -/
def P18285606797169909294.Spec : Prop :=
  ∀ n, P18285606797169909294.a n = A100088 n

end A100088

/-! ## A100088.P14271773803103433228

`A101455(n)+A016029(n+1)`
-/

namespace A100088.P14271773803103433228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101455 n + A016029 (n + 1)

end

end A100088.P14271773803103433228

namespace A100088

/-- `A101455(n)+A016029(n+1)` -/
def P14271773803103433228.Spec : Prop :=
  ∀ n, P14271773803103433228.a n = A100088 n

end A100088

/-! ## A100088.P3023014606254504056

`A139814(n)-A161204(n+1)`
-/

namespace A100088.P3023014606254504056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139814 n - A161204 (n + 1)

end

end A100088.P3023014606254504056

namespace A100088

/-- `A139814(n)-A161204(n+1)` -/
def P3023014606254504056.Spec : Prop :=
  ∀ n, P3023014606254504056.a n = A100088 n

end A100088

/-! ## A100088.P10362990752424404857

`A118406(n+2)-A118406(n)`
-/

namespace A100088.P10362990752424404857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118406 (n + 2) - A118406 n

end

end A100088.P10362990752424404857

namespace A100088

/-- `A118406(n+2)-A118406(n)` -/
def P10362990752424404857.Spec : Prop :=
  ∀ n, P10362990752424404857.a n = A100088 n

end A100088

/-! ## A100088.P14288794299864753581

`A139800(n+3)+A139800(n)`
-/

namespace A100088.P14288794299864753581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139800 (n + 3) + A139800 n

end

end A100088.P14288794299864753581

namespace A100088

/-- `A139800(n+3)+A139800(n)` -/
def P14288794299864753581.Spec : Prop :=
  ∀ n, P14288794299864753581.a n = A100088 n

end A100088

/-! ## A100088.P5405780919308639274

`A007910(n)+A007910(n)-A000079(n)`
-/

namespace A100088.P5405780919308639274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007910 n + (A007910 n - A000079 n)

end

end A100088.P5405780919308639274

namespace A100088

/-- `A007910(n)+A007910(n)-A000079(n)` -/
def P5405780919308639274.Spec : Prop :=
  ∀ n, P5405780919308639274.a n = A100088 n

end A100088

/-! ## A100088.P13447202457274045034

`A181586(n+1)+A181586(n)+A007909(n)`
-/

namespace A100088.P13447202457274045034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181586 (n + 1) + (A181586 n + A007909 n)

end

end A100088.P13447202457274045034

namespace A100088

/-- `A181586(n+1)+A181586(n)+A007909(n)` -/
def P13447202457274045034.Spec : Prop :=
  ∀ n, P13447202457274045034.a n = A100088 n

end A100088

/-! ## A100088.P11793964690634850577

`A007909(n)+A007910(n)-A016029(n+1)`
-/

namespace A100088.P11793964690634850577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007909 n + (A007910 n - A016029 (n + 1))

end

end A100088.P11793964690634850577

namespace A100088

/-- `A007909(n)+A007910(n)-A016029(n+1)` -/
def P11793964690634850577.Spec : Prop :=
  ∀ n, P11793964690634850577.a n = A100088 n

end A100088

/-! ## A100088.P811843574390678975

`A007910(n)+A190569(n)-A007679(n+1)`
-/

namespace A100088.P811843574390678975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007910 n + (A190569 n - A007679 (n + 1))

end

end A100088.P811843574390678975

namespace A100088

/-- `A007910(n)+A190569(n)-A007679(n+1)` -/
def P811843574390678975.Spec : Prop :=
  ∀ n, P811843574390678975.a n = A100088 n

end A100088

/-! ## A100088.P7881978457602919088

`A181586(n+1)+A181586(n+1)+A078008(n)`
-/

namespace A100088.P7881978457602919088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181586 (n + 1) + (A181586 (n + 1) + A078008 n)

end

end A100088.P7881978457602919088

namespace A100088

/-- `A181586(n+1)+A181586(n+1)+A078008(n)` -/
def P7881978457602919088.Spec : Prop :=
  ∀ n, P7881978457602919088.a n = A100088 n

end A100088

/-! ## A100088.P8301613965330048855

`Δ[2*a(n-1)-and(2, n-1)]` with `a(0)=1`
-/

namespace A100088.P8301613965330048855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  2 * f1 (n - 1) - Int.land 2 ((n : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A100088.P8301613965330048855

namespace A100088

/-- `Δ[2*a(n-1)-and(2, n-1)]` -/
def P8301613965330048855.Spec : Prop :=
  ∀ n, P8301613965330048855.a n = A100088 n

end A100088

/-! ## A100088.P6725283792989020000

`A283642(n)-A139814(n)`
-/

namespace A100088.P6725283792989020000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283642 n - A139814 n

end

end A100088.P6725283792989020000

namespace A100088

/-- `A283642(n)-A139814(n)` -/
def P6725283792989020000.Spec : Prop :=
  ∀ n, P6725283792989020000.a n = A100088 n

end A100088

/-! ## A100088.P2998689059749691567

`A007679(n+2)-A135541(n)`
-/

namespace A100088.P2998689059749691567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007679 (n + 2) - A135541 n

end

end A100088.P2998689059749691567

namespace A100088

/-- `A007679(n+2)-A135541(n)` -/
def P2998689059749691567.Spec : Prop :=
  ∀ n, P2998689059749691567.a n = A100088 n

end A100088

/-! ## A100088.P4364083023222687249

`2*A007910(n)-A000079(n)`
-/

namespace A100088.P4364083023222687249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A007910 n - A000079 n

end

end A100088.P4364083023222687249

namespace A100088

/-- `2*A007910(n)-A000079(n)` -/
def P4364083023222687249.Spec : Prop :=
  ∀ n, P4364083023222687249.a n = A100088 n

end A100088

/-!
# A100089: a(n) = (3*n+1)!.

The programs for A100089, the canonical program `A100089.P17051160851446934327` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A100089 has offset 0).

The definition of A100089 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(3*n+1)!` (program `A100089.P17051160851446934327`, by `A100089.P17051160851446934327.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A100089.P17051160851446934327

`(3*n+1)!`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A100089

/-- `(3*n+1)!` -/
def P17051160851446934327.Spec : Prop :=
  ∀ n, (P17051160851446934327.a n : ℤ) = A100089 n

theorem P17051160851446934327.correct : P17051160851446934327.Spec := by
  intro n
  simp only [A100089]

end A100089

/-! ## A100089.P1025850757926881141

`record[(gcd(3, n+2)+n)!]`
-/

namespace A100089.P1025850757926881141
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (Nat.gcd 3 (n + 2) + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A100089.P1025850757926881141

namespace A100089

/-- `record[(gcd(3, n+2)+n)!]` -/
def P1025850757926881141.Spec : Prop :=
  ∀ n, (P1025850757926881141.a n : ℤ) = A100089 n

end A100089

/-! ## A100089.P3428625270128591969

`record[Δ[n*ceil(n/2)]!]`
-/

namespace A100089.P3428625270128591969
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ⌈(n : ℚ) / 2⌉

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A100089.P3428625270128591969

namespace A100089

/-- `record[Δ[n*ceil(n/2)]!]` -/
def P3428625270128591969.Spec : Prop :=
  ∀ n, (P3428625270128591969.a n : ℤ) = A100089 n

end A100089

/-! ## A100089.P1165413938142338041

`abs(1-(Δ[n²]+n)!)+1`
-/

namespace A100089.P1165413938142338041
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (Nat.factorial ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + (n : ℤ)).toNat : ℤ)| + 1

end

end A100089.P1165413938142338041

namespace A100089

/-- `abs(1-(Δ[n²]+n)!)+1` -/
def P1165413938142338041.Spec : Prop :=
  ∀ n, P1165413938142338041.a n = A100089 n

end A100089

/-! ## A100089.P453638926068011126

`lcm(n+1, (n+1+n+n)!)`
-/

namespace A100089.P453638926068011126
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm (n + 1) (Nat.factorial (n + 1 + n + n))

end

end A100089.P453638926068011126

namespace A100089

/-- `lcm(n+1, (n+1+n+n)!)` -/
def P453638926068011126.Spec : Prop :=
  ∀ n, (P453638926068011126.a n : ℤ) = A100089 n

end A100089

/-!
# A100091: Arithmetic mean of the first n primes and a minimal number greater than prime(n) such that an integer results.

The programs for A100091, there is no canonical definition to state claims against.
-/

/-! ## A100091.P4890899480183209280

`ceil((A072055(n+1)+A007504(n))/(n+2))`
-/

namespace A100091.P4890899480183209280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A072055 (n + 1) + A007504 n : ℚ) / (n + 2 : ℚ)⌉

end

end A100091.P4890899480183209280

/-! ## A100091.P4163374172212592525

`A320848(n+2)+A164886(A010754(n))`
-/

namespace A100091.P4163374172212592525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320848 (n + 2) + A164886 (A010754 n).toNat

end

end A100091.P4163374172212592525

/-! ## A100091.P2821168798417759350

`A143824(A368887(n+1)+A080430(n+2))`
-/

namespace A100091.P2821168798417759350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143824 (A368887 (n + 1) + A080430 (n + 2)).toNat

end

end A100091.P2821168798417759350

/-!
# A100092: Number of n-celled polyominoes with minimum perimeter.

The programs for A100092, there is no canonical definition to state claims against.
-/

/-! ## A100092.P16688374825335558569

`A308300(∑[A083479(n)]+C(2, n+2))`
-/

namespace A100092.P16688374825335558569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083479 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308300 (∑ j ∈ Finset.range (n + 1), f1 j + (Nat.choose 2 (n + 2) : ℤ)).toNat

end

end A100092.P16688374825335558569

/-! ## A100092.P13486647728769583941

`A342243(A000124(n)-A083479(n))`
-/

namespace A100092.P13486647728769583941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342243 (A000124 n - A083479 n).toNat

end

end A100092.P13486647728769583941

/-! ## A100092.P3352597254096695686

`A342243(A000124(n)-(n+1-A000267((n-1)%(n+1))))`
-/

namespace A100092.P3352597254096695686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342243 (A000124 n - ((n + 1 : ℤ) - A000267 (Int.tmod ((n : ℤ) - 1) (n + 1 : ℤ)).toNat)).toNat

end

end A100092.P3352597254096695686

/-! ## A100092.P4134805871421214612

`A342243(A000124(n)-(n+1-A000267(floor(n²/(n+1)))))`
-/

namespace A100092.P4134805871421214612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342243 (A000124 n - ((n + 1 : ℤ) - A000267 ⌊(n ^ 2 : ℚ) / (n + 1 : ℚ)⌋.toNat)).toNat

end

end A100092.P4134805871421214612

/-!
# A100093: a(n) = A100092(n^2+1).

The programs for A100093, there is no canonical definition to state claims against.
-/

/-! ## A100093.P7149210470046322118

`A100092(n²+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A100093.P7149210470046322118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100092 (n ^ 2 + 1)

end

end A100093.P7149210470046322118

/-! ## A100093.P9799621461978765255

`A100092(A002522(n))+char[18]`
-/

namespace A100093.P9799621461978765255
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  18

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100092 (A002522 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A100093.P9799621461978765255

/-! ## A100093.P10011405216432301461

`A100092(A002522(n))*A139551(n)`
-/

namespace A100093.P10011405216432301461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100092 (A002522 n).toNat * A139551 n

end

end A100093.P10011405216432301461

/-! ## A100093.P17757682945991451884

`A100092(A002522(n))^A081753(n)`
-/

namespace A100093.P17757682945991451884
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A100092 (A002522 n).toNat : ℚ) ^ (A081753 n : ℤ)

end

end A100093.P17757682945991451884

/-! ## A100093.P17816469377312172813

`gcd(A025466(n), A100092(A002522(n)))`
-/

namespace A100093.P17816469377312172813
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A025466 n) (A100092 (A002522 n).toNat)

end

end A100093.P17816469377312172813

/-!
# A100094: a(n) = A100092(n^2+n+1).

The programs for A100094, there is no canonical definition to state claims against.
-/

/-! ## A100094.P3547824577920970384

`A100092(n²+n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A100094.P3547824577920970384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100092 (n ^ 2 + n + 1)

end

end A100094.P3547824577920970384

/-! ## A100094.P1207284460859177569

`record[A100092(∑[A005131(n)])]`
-/

namespace A100094.P1207284460859177569
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005131 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100092 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A100094.P1207284460859177569

/-! ## A100094.P17397464091568777422

`record[A100092(∑[A028242(n)])]`
-/

namespace A100094.P17397464091568777422
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100092 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A100094.P17397464091568777422

/-! ## A100094.P16392914616399271769

`record[A100092(∑[A093178(n)])]`
-/

namespace A100094.P16392914616399271769
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093178 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100092 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A100094.P16392914616399271769

/-!
# A100095: An inverse Chebyshev transform of the Fibonacci numbers.

The programs for A100095, there is no canonical definition to state claims against.
-/

/-! ## A100095.P15131241796405216127

`A098615(n)-A126869(n)`
-/

namespace A100095.P15131241796405216127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098615 n - A126869 n

end

end A100095.P15131241796405216127

/-! ## A100095.P1996727176954990318

`A098615(n)-Δ[A100066(n)]`
-/

namespace A100095.P1996727176954990318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100066 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098615 n - (f1 (n + 1) - f1 n)

end

end A100095.P1996727176954990318

/-! ## A100095.P11091191167823942994

`A098615(n)+A126869(n)*A321804(∑{e}[n, #])`
-/

namespace A100095.P11091191167823942994
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098615 n + A126869 n * A321804 (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)

end

end A100095.P11091191167823942994

/-! ## A100095.P6723389881965499131

`A098615(n)-A108044(∑[n])`
-/

namespace A100095.P6723389881965499131
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098615 n - A108044 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A100095.P6723389881965499131

/-! ## A100095.P15729832610794725252

`A098615(n)-A116389(∑[n])`
-/

namespace A100095.P15729832610794725252
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098615 n - A116389 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A100095.P15729832610794725252

/-!
# A100097: An inverse Chebyshev transform of the Pell numbers.

The programs for A100097, there is no canonical definition to state claims against.
-/

/-! ## A100097.P7788981290676378918

`A305561(n)-abs(A193382(2*n))`
-/

namespace A100097.P7788981290676378918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305561 n - |A193382 (2 * n)|

end

end A100097.P7788981290676378918

/-! ## A100097.P9371351384769025538

`(A098617(n)-A126869(n))/2`
-/

namespace A100097.P9371351384769025538
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A098617 n - A126869 n : ℚ) / 2

end

end A100097.P9371351384769025538

/-! ## A100097.P12242612868292427145

`A305561(n)-A004525(A126869(n))`
-/

namespace A100097.P12242612868292427145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305561 n - A004525 (A126869 n).toNat

end

end A100097.P12242612868292427145

/-! ## A100097.P1166894295172854273

`A004525(A098617(n)-A126869(n))`
-/

namespace A100097.P1166894295172854273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A098617 n - A126869 n).toNat

end

end A100097.P1166894295172854273

/-! ## A100097.P3218920740057236989

`A004526(A098617(n)-A126869(n))`
-/

namespace A100097.P3218920740057236989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A098617 n - A126869 n).toNat

end

end A100097.P3218920740057236989

/-!
# A100098: An inverse Chebyshev transform of (1-x)/(1-2x).

The programs for A100098, there is no canonical definition to state claims against.
-/

/-! ## A100098.P15120307028825142980

`A126869(n)+A100099(n)`
-/

namespace A100098.P15120307028825142980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126869 n + A100099 n

end

end A100098.P15120307028825142980

/-! ## A100098.P2387123720152016982

`abs(A127361(n))`
-/

namespace A100098.P2387123720152016982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A127361 n|

end

end A100098.P2387123720152016982

/-! ## A100098.P13167919242148714459

`A100067(n)-A100099(n)`
-/

namespace A100098.P13167919242148714459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100067 n - A100099 n

end

end A100098.P13167919242148714459

/-! ## A100098.P10200593503338157178

`A033999(n)*A127361(n)`
-/

namespace A100098.P10200593503338157178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A127361 n

end

end A100098.P10200593503338157178

/-! ## A100098.P12833212346189875464

`gcd(A000038(n), A127361(n))`
-/

namespace A100098.P12833212346189875464
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A127361 n)

end

end A100098.P12833212346189875464

/-! ## A100098.P4270175517578526359

`lcm(A006466(n), A127361(n))`
-/

namespace A100098.P4270175517578526359
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A006466 n) (A127361 n)

end

end A100098.P4270175517578526359

/-! ## A100098.P9069461445493609317

`2*A100067(n)-A127358(n)`
-/

namespace A100098.P9069461445493609317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A100067 n - A127358 n

end

end A100098.P9069461445493609317

/-! ## A100098.P2089886536956159674

`A127358(n)-2*A100099(n)`
-/

namespace A100098.P2089886536956159674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127358 n - 2 * A100099 n

end

end A100098.P2089886536956159674

/-! ## A100098.P9754684358257508151

`(A026641(n)-A188289(n))*A127361(n)`
-/

namespace A100098.P9754684358257508151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A026641 n - A188289 n) * A127361 n

end

end A100098.P9754684358257508151

/-!
# A100099: An inverse Chebyshev transform of x/(1-2x).

The programs for A100099, there is no canonical definition to state claims against.
-/

/-! ## A100099.P15340271273340184667

`A100098(n)-A126869(n)`
-/

namespace A100099.P15340271273340184667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100098 n - A126869 n

end

end A100099.P15340271273340184667

/-! ## A100099.P8729325544937959895

`A100067(n)-A100098(n)`
-/

namespace A100099.P8729325544937959895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100067 n - A100098 n

end

end A100099.P8729325544937959895

/-! ## A100099.P1467749651193785362

`abs(A126869(n)-A127361(n))`
-/

namespace A100099.P1467749651193785362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A126869 n - A127361 n|

end

end A100099.P1467749651193785362

/-! ## A100099.P604721484313419296

`A127358(n)-A100067(n)`
-/

namespace A100099.P604721484313419296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127358 n - A100067 n

end

end A100099.P604721484313419296

/-! ## A100099.P4471110733496760816

`(A127358(n)-A100098(n))/2`
-/

namespace A100099.P4471110733496760816
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127358 n - A100098 n : ℚ) / 2

end

end A100099.P4471110733496760816

/-! ## A100099.P702990435867173276

`(A127358(n)-A126869(n))/3`
-/

namespace A100099.P702990435867173276
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127358 n - A126869 n : ℚ) / 3

end

end A100099.P702990435867173276

