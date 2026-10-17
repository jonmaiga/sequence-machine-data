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
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C032
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
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
import Seq.Opaque.C025

/-!
# A309500: The minimal number of steps to return to the origin for a self-avoiding walk with step-length n on a 2D plane where at each step the walk must go to an unvisited point with integer coordinates as close as possible to the origin.

The programs for A309500, there is no canonical definition to state claims against.
-/

/-! ## A309500.P5866940447576416790

`A000925((n+1)^4)²`
-/

namespace A309500.P5866940447576416790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000925 ((n + 1) ^ 4) ^ 2

end

end A309500.P5866940447576416790

/-! ## A309500.P5430672011609512565

`A033715((n²+1)²)²`
-/

namespace A309500.P5430672011609512565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033715 ((n ^ 2 + 1) ^ 2) ^ 2

end

end A309500.P5430672011609512565

/-! ## A309500.P16056754389019607021

`A133692((n²+1)²)²`
-/

namespace A309500.P16056754389019607021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133692 ((n ^ 2 + 1) ^ 2) ^ 2

end

end A309500.P16056754389019607021

/-! ## A309500.P6053980253753258330

`A334028(8*n+9)!²`
-/

namespace A309500.P6053980253753258330
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A334028 (8 * n + 9)).toNat ^ 2

end

end A309500.P6053980253753258330

/-! ## A309500.P1222175788003819282

`(gcd(5, A306703(∑[n]))+1)²`
-/

namespace A309500.P1222175788003819282
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Int.gcd 5 (A306703 (∑ j ∈ Finset.range (n + 1), f1 j)) + 1) ^ 2

end

end A309500.P1222175788003819282

/-!
# A309502: Totients congruent to 2 mod 4.

The programs for A309502, the canonical program `A309502.P2115304276531406201` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A309502 has offset 1).

The definition of A309502 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4845 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A309502.P13093590351978689903

`filter[A114871(n+2), A359374(#)]`
-/

namespace A309502.P13093590351978689903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114871 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359374 (f1 j).toNat = 1) n)

end

end A309502.P13093590351978689903

namespace A309502

/-- `filter[A114871(n+2), A359374(#)]` -/
def P13093590351978689903.Spec : Prop :=
  ∀ n, P13093590351978689903.a n = A309502 (n + 1)

end A309502

/-! ## A309502.P2115304276531406201

`filter[A114871(n+2), A359820(#)]`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A309502

/-- `filter[A114871(n+2), A359820(#)]` -/
def P2115304276531406201.Spec : Prop :=
  ∀ n, P2115304276531406201.a n = A309502 (n + 1)

theorem P2115304276531406201.correct : P2115304276531406201.Spec := by
  intro n
  simp only [A309502, Nat.add_sub_cancel]

end A309502

/-! ## A309502.P11438308438645864148

`filter[A302299(n+2), A359374(#)]`
-/

namespace A309502.P11438308438645864148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302299 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359374 (f1 j).toNat = 1) n)

end

end A309502.P11438308438645864148

namespace A309502

/-- `filter[A302299(n+2), A359374(#)]` -/
def P11438308438645864148.Spec : Prop :=
  ∀ n, P11438308438645864148.a n = A309502 (n + 1)

end A309502

/-! ## A309502.P48487509970394295

`filter[A302299(n+2), A359820(#)]`
-/

namespace A309502.P48487509970394295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302299 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359820 (f1 j).toNat = 1) n)

end

end A309502.P48487509970394295

namespace A309502

/-- `filter[A302299(n+2), A359820(#)]` -/
def P48487509970394295.Spec : Prop :=
  ∀ n, P48487509970394295.a n = A309502 (n + 1)

end A309502

/-! ## A309502.P5892510501398598111

`filter[A114871(n+2), A166486(#)]`
-/

namespace A309502.P5892510501398598111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114871 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A166486 (f1 j).toNat = 1) n)

end

end A309502.P5892510501398598111

namespace A309502

/-- `filter[A114871(n+2), A166486(#)]` -/
def P5892510501398598111.Spec : Prop :=
  ∀ n, P5892510501398598111.a n = A309502 (n + 1)

end A309502

/-! ## A309502.P5101548685270061743

`filter[A302299(n+2), A166486(#)]`
-/

namespace A309502.P5101548685270061743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302299 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A166486 (f1 j).toNat = 1) n)

end

end A309502.P5101548685270061743

namespace A309502

/-- `filter[A302299(n+2), A166486(#)]` -/
def P5101548685270061743.Spec : Prop :=
  ∀ n, P5101548685270061743.a n = A309502 (n + 1)

end A309502

/-! ## A309502.P10823218732282950848

`filter[A114871(n+2), A391844(#)]`
-/

namespace A309502.P10823218732282950848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114871 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A391844 (f1 j).toNat = 1) n)

end

end A309502.P10823218732282950848

namespace A309502

/-- `filter[A114871(n+2), A391844(#)]` -/
def P10823218732282950848.Spec : Prop :=
  ∀ n, P10823218732282950848.a n = A309502 (n + 1)

end A309502

/-! ## A309502.P3528658824278974971

`filter[A302299(n+2), A391844(#)]`
-/

namespace A309502.P3528658824278974971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302299 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A391844 (f1 j).toNat = 1) n)

end

end A309502.P3528658824278974971

namespace A309502

/-- `filter[A302299(n+2), A391844(#)]` -/
def P3528658824278974971.Spec : Prop :=
  ∀ n, P3528658824278974971.a n = A309502 (n + 1)

end A309502

/-! ## A309502.P1243186576431768484

`record[lcm(2, A002180(n+2))]`
-/

namespace A309502.P1243186576431768484
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A002180 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A309502.P1243186576431768484

namespace A309502

/-- `record[lcm(2, A002180(n+2))]` -/
def P1243186576431768484.Spec : Prop :=
  ∀ n, (P1243186576431768484.a n : ℤ) = A309502 (n + 1)

end A309502

/-! ## A309502.P14894585603230846050

`filter[A002202(n+2), A166486(#)]`
-/

namespace A309502.P14894585603230846050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002202 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A166486 (f1 j).toNat = 1) n)

end

end A309502.P14894585603230846050

namespace A309502

/-- `filter[A002202(n+2), A166486(#)]` -/
def P14894585603230846050.Spec : Prop :=
  ∀ n, P14894585603230846050.a n = A309502 (n + 1)

end A309502

/-! ## A309502.P14459653979789931984

`filter[A002202(n+2), A359374(#)]`
-/

namespace A309502.P14459653979789931984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002202 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359374 (f1 j).toNat = 1) n)

end

end A309502.P14459653979789931984

namespace A309502

/-- `filter[A002202(n+2), A359374(#)]` -/
def P14459653979789931984.Spec : Prop :=
  ∀ n, P14459653979789931984.a n = A309502 (n + 1)

end A309502

/-! ## A309502.P11272555667687458451

`filter[A002202(n+2), A359820(#)]`
-/

namespace A309502.P11272555667687458451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002202 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359820 (f1 j).toNat = 1) n)

end

end A309502.P11272555667687458451

namespace A309502

/-- `filter[A002202(n+2), A359820(#)]` -/
def P11272555667687458451.Spec : Prop :=
  ∀ n, P11272555667687458451.a n = A309502 (n + 1)

end A309502

/-! ## A309502.P3412141804373054617

`filter[A002202(n+2), A391844(#)]`
-/

namespace A309502.P3412141804373054617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002202 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A391844 (f1 j).toNat = 1) n)

end

end A309502.P3412141804373054617

namespace A309502

/-- `filter[A002202(n+2), A391844(#)]` -/
def P3412141804373054617.Spec : Prop :=
  ∀ n, P3412141804373054617.a n = A309502 (n + 1)

end A309502

/-! ## A309502.P3728740560155670983

`record[2*A000265(A002202(n+1))]`
-/

namespace A309502.P3728740560155670983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000265 (A002202 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A309502.P3728740560155670983

namespace A309502

/-- `record[2*A000265(A002202(n+1))]` -/
def P3728740560155670983.Spec : Prop :=
  ∀ n, P3728740560155670983.a n = A309502 (n + 1)

end A309502

/-! ## A309502.P7730173411242798134

`∩[A002202(n+1), A016825(n)]`
-/

namespace A309502.P7730173411242798134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002202 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016825 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A309502.P7730173411242798134

namespace A309502

/-- `∩[A002202(n+1), A016825(n)]` -/
def P7730173411242798134.Spec : Prop :=
  ∀ n, (P7730173411242798134.a n : ℤ) = A309502 (n + 1)

end A309502

/-! ## A309502.P3000839097827464292

`∩[A114871(n+1), A016825(n)]`
-/

namespace A309502.P3000839097827464292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114871 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016825 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A309502.P3000839097827464292

namespace A309502

/-- `∩[A114871(n+1), A016825(n)]` -/
def P3000839097827464292.Spec : Prop :=
  ∀ n, (P3000839097827464292.a n : ℤ) = A309502 (n + 1)

end A309502

/-! ## A309502.P5566535878871362130

`∩[A002202(n+1), A130824(n)]`
-/

namespace A309502.P5566535878871362130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002202 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130824 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A309502.P5566535878871362130

namespace A309502

/-- `∩[A002202(n+1), A130824(n)]` -/
def P5566535878871362130.Spec : Prop :=
  ∀ n, (P5566535878871362130.a n : ℤ) = A309502 (n + 1)

end A309502

/-! ## A309502.P8424285730004564401

`∩[A114871(n+1), A130824(n)]`
-/

namespace A309502.P8424285730004564401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114871 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130824 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A309502.P8424285730004564401

namespace A309502

/-- `∩[A114871(n+1), A130824(n)]` -/
def P8424285730004564401.Spec : Prop :=
  ∀ n, (P8424285730004564401.a n : ℤ) = A309502 (n + 1)

end A309502

/-! ## A309502.P3160364763166097565

`∩[A302299(n+1), A016825(n)]`
-/

namespace A309502.P3160364763166097565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302299 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016825 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A309502.P3160364763166097565

namespace A309502

/-- `∩[A302299(n+1), A016825(n)]` -/
def P3160364763166097565.Spec : Prop :=
  ∀ n, (P3160364763166097565.a n : ℤ) = A309502 (n + 1)

end A309502

/-! ## A309502.P11500419186549276850

`∩[A302299(n+1), A130824(n)]`
-/

namespace A309502.P11500419186549276850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302299 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130824 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A309502.P11500419186549276850

namespace A309502

/-- `∩[A302299(n+1), A130824(n)]` -/
def P11500419186549276850.Spec : Prop :=
  ∀ n, (P11500419186549276850.a n : ℤ) = A309502 (n + 1)

end A309502

/-!
# A309504: Number of cyclic permutations of length n avoiding the pattern 123.

The programs for A309504, there is no canonical definition to state claims against.
-/

/-! ## A309504.P17500688936882611607

`A023193(A272463(n+1)-A025480(n))`
-/

namespace A309504.P17500688936882611607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023193 (A272463 (n + 1) - A025480 n).toNat

end

end A309504.P17500688936882611607

/-! ## A309504.P13105313149617243337

`A023193(A272463(n+1)-A098983(n))`
-/

namespace A309504.P13105313149617243337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023193 (A272463 (n + 1) - A098983 n).toNat

end

end A309504.P13105313149617243337

/-! ## A309504.P5300599128574505859

`A023193(A148302(n)-A218470(2*(n+1)))`
-/

namespace A309504.P5300599128574505859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023193 (A148302 n - A218470 (2 * (n + 1))).toNat

end

end A309504.P5300599128574505859

/-!
# A309506: Number of cyclic permutations of length n avoiding the pattern 231 (equivalently, 312).

The programs for A309506, there is no canonical definition to state claims against.
-/

/-! ## A309506.P7241687723531169714

`A390626(A274882(n))`
-/

namespace A309506.P7241687723531169714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390626 (A274882 n).toNat

end

end A309506.P7241687723531169714

/-! ## A309506.P10280384128325044414

`A002024(floor(A000166(n)/4)+1)`
-/

namespace A309506.P10280384128325044414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (⌊(A000166 n : ℚ) / 4⌋ + 1).toNat

end

end A309506.P10280384128325044414

/-! ## A309506.P4450312492288884996

`A182210(A297196(n)+A112020(n))`
-/

namespace A309506.P4450312492288884996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182210 (A297196 n + A112020 n).toNat

end

end A309506.P4450312492288884996

/-! ## A309506.P10076078419774345342

`A093313(n+2)+A000194(A216779(n))`
-/

namespace A309506.P10076078419774345342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093313 (n + 2) + A000194 (A216779 n).toNat

end

end A309506.P10076078419774345342

/-!
# A309507: Number of ways the n-th triangular number T(n) = A000217(n) can be written as the difference of two positive triangular numbers.

The programs for A309507, the canonical program `A309507.P1026939547968616405` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A309507 has offset 1).

The definition of A309507 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A063440, A092517, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A309507.P1026939547968616405

`A092517(n+1)-A063440(n+1)-1`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A309507

/-- `A092517(n+1)-A063440(n+1)-1` -/
def P1026939547968616405.Spec : Prop :=
  ∀ n, P1026939547968616405.a n = A309507 (n + 1)

theorem P1026939547968616405.correct : P1026939547968616405.Spec := by
  intro n
  simp only [A309507, Nat.add_sub_cancel]

end A309507

/-! ## A309507.P16014214712602559992

`A001227(n+1)*A001227(n+2)-1`
-/

namespace A309507.P16014214712602559992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (n + 1) * A001227 (n + 2) - 1

end

end A309507.P16014214712602559992

namespace A309507

/-- `A001227(n+1)*A001227(n+2)-1` -/
def P16014214712602559992.Spec : Prop :=
  ∀ n, P16014214712602559992.a n = A309507 (n + 1)

end A309507

/-! ## A309507.P8965996516682325128

`A023443(A001227(n+1)*A001227(n+2))`
-/

namespace A309507.P8965996516682325128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A001227 (n + 1) * A001227 (n + 2)).toNat

end

end A309507.P8965996516682325128

namespace A309507

/-- `A023443(A001227(n+1)*A001227(n+2))` -/
def P8965996516682325128.Spec : Prop :=
  ∀ n, P8965996516682325128.a n = A309507 (n + 1)

end A309507

/-! ## A309507.P8860764434599565701

`∑{d}[∑[n+1], #%2]-1`
-/

namespace A309507.P8860764434599565701
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), d % 2 : ℕ) : ℤ) - 1

end

end A309507.P8860764434599565701

namespace A309507

/-- `∑{d}[∑[n+1], #%2]-1` -/
def P8860764434599565701.Spec : Prop :=
  ∀ n, P8860764434599565701.a n = A309507 (n + 1)

end A309507

/-! ## A309507.P9806077183742167495

`∑{d}[∑[n+1], and(1, #)]-1`
-/

namespace A309507.P9806077183742167495
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), Nat.land 1 d : ℕ) : ℤ) - 1

end

end A309507.P9806077183742167495

namespace A309507

/-- `∑{d}[∑[n+1], and(1, #)]-1` -/
def P9806077183742167495.Spec : Prop :=
  ∀ n, P9806077183742167495.a n = A309507 (n + 1)

end A309507

/-! ## A309507.P15431173527245323522

`A000005((n+1)/(1-and(n, n+2)/(n+2)))-1`
-/

namespace A309507.P15431173527245323522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (1 - (Nat.land n (n + 2) : ℚ) / (n + 2 : ℚ)))).toNat - 1

end

end A309507.P15431173527245323522

namespace A309507

/-- `A000005((n+1)/(1-and(n, n+2)/(n+2)))-1` -/
def P15431173527245323522.Spec : Prop :=
  ∀ n, P15431173527245323522.a n = A309507 (n + 1)

end A309507

/-! ## A309507.P1148263324369780031

`A000005(A069834(n+1))-1`
-/

namespace A309507.P1148263324369780031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A069834 (n + 1)).toNat - 1

end

end A309507.P1148263324369780031

namespace A309507

/-- `A000005(A069834(n+1))-1` -/
def P1148263324369780031.Spec : Prop :=
  ∀ n, P1148263324369780031.a n = A309507 (n + 1)

end A309507

/-! ## A309507.P12784831030023334590

`∏{e}[A000265(∑[n+1]), #+1]-1`
-/

namespace A309507.P12784831030023334590
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1) : ℕ) : ℤ) - 1

end

end A309507.P12784831030023334590

namespace A309507

/-- `∏{e}[A000265(∑[n+1]), #+1]-1` -/
def P12784831030023334590.Spec : Prop :=
  ∀ n, P12784831030023334590.a n = A309507 (n + 1)

end A309507

/-! ## A309507.P15006384020343276198

`A000005(A000265(∑[n+1]))-1`
-/

namespace A309507.P15006384020343276198
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A000265 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat - 1

end

end A309507.P15006384020343276198

namespace A309507

/-- `A000005(A000265(∑[n+1]))-1` -/
def P15006384020343276198.Spec : Prop :=
  ∀ n, P15006384020343276198.a n = A309507 (n + 1)

end A309507

/-! ## A309507.P7012622952840053704

`A325937(A000265(∑[n+1]))`
-/

namespace A309507.P7012622952840053704
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325937 (A000265 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A309507.P7012622952840053704

namespace A309507

/-- `A325937(A000265(∑[n+1]))` -/
def P7012622952840053704.Spec : Prop :=
  ∀ n, P7012622952840053704.a n = A309507 (n + 1)

end A309507

/-! ## A309507.P6129945821761889724

`A000005(A336158(∑[n+1]))-1`
-/

namespace A309507.P6129945821761889724
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A336158 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat - 1

end

end A309507.P6129945821761889724

namespace A309507

/-- `A000005(A336158(∑[n+1]))-1` -/
def P6129945821761889724.Spec : Prop :=
  ∀ n, P6129945821761889724.a n = A309507 (n + 1)

end A309507

/-! ## A309507.P6791914626232524052

`A325937(A000265(n+1)*A000265(n+2))`
-/

namespace A309507.P6791914626232524052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325937 (A000265 (n + 1) * A000265 (n + 2)).toNat

end

end A309507.P6791914626232524052

namespace A309507

/-- `A325937(A000265(n+1)*A000265(n+2))` -/
def P6791914626232524052.Spec : Prop :=
  ∀ n, P6791914626232524052.a n = A309507 (n + 1)

end A309507

/-! ## A309507.P149933283170411365

`A136107(∑[n+1])`
-/

namespace A309507.P149933283170411365
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136107 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A309507.P149933283170411365

namespace A309507

/-- `A136107(∑[n+1])` -/
def P149933283170411365.Spec : Prop :=
  ∀ n, P149933283170411365.a n = A309507 (n + 1)

end A309507

/-! ## A309507.P15938135311447783168

`A326987(A000265((n+1)*(n+2)))`
-/

namespace A309507.P15938135311447783168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326987 (A000265 ((n + 1) * (n + 2))).toNat

end

end A309507.P15938135311447783168

namespace A309507

/-- `A326987(A000265((n+1)*(n+2)))` -/
def P15938135311447783168.Spec : Prop :=
  ∀ n, P15938135311447783168.a n = A309507 (n + 1)

end A309507

/-! ## A309507.P12779084038617444890

`A338117(A000265(n+1)*A000265(n+2))`
-/

namespace A309507.P12779084038617444890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338117 (A000265 (n + 1) * A000265 (n + 2)).toNat

end

end A309507.P12779084038617444890

namespace A309507

/-- `A338117(A000265(n+1)*A000265(n+2))` -/
def P12779084038617444890.Spec : Prop :=
  ∀ n, P12779084038617444890.a n = A309507 (n + 1)

end A309507

/-! ## A309507.P2085205513991693964

`n-A238005(∑[n+1])`
-/

namespace A309507.P2085205513991693964
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A238005 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A309507.P2085205513991693964

namespace A309507

/-- `n-A238005(∑[n+1])` -/
def P2085205513991693964.Spec : Prop :=
  ∀ n, P2085205513991693964.a n = A309507 (n + 1)

end A309507

/-! ## A309507.P9839847615989670961

`A032741(A064989(n+1)*A064989(n+2))`
-/

namespace A309507.P9839847615989670961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (A064989 (n + 1) * A064989 (n + 2)).toNat

end

end A309507.P9839847615989670961

namespace A309507

/-- `A032741(A064989(n+1)*A064989(n+2))` -/
def P9839847615989670961.Spec : Prop :=
  ∀ n, P9839847615989670961.a n = A309507 (n + 1)

end A309507

/-! ## A309507.P15009244312156306332

`A069283(∑[n+1])`
-/

namespace A309507.P15009244312156306332
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069283 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A309507.P15009244312156306332

namespace A309507

/-- `A069283(∑[n+1])` -/
def P15009244312156306332.Spec : Prop :=
  ∀ n, P15009244312156306332.a n = A309507 (n + 1)

end A309507

/-! ## A309507.P11332728149670217400

`A001227(∑[n+1])-1`
-/

namespace A309507.P11332728149670217400
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (∑ j ∈ Finset.range (n + 1), f1 j) - 1

end

end A309507.P11332728149670217400

namespace A309507

/-- `A001227(∑[n+1])-1` -/
def P11332728149670217400.Spec : Prop :=
  ∀ n, P11332728149670217400.a n = A309507 (n + 1)

end A309507

/-! ## A309507.P15932072102298871638

`A054843(∑[n+1])-2`
-/

namespace A309507.P15932072102298871638
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054843 (∑ j ∈ Finset.range (n + 1), f1 j) - 2

end

end A309507.P15932072102298871638

namespace A309507

/-- `A054843(∑[n+1])-2` -/
def P15932072102298871638.Spec : Prop :=
  ∀ n, P15932072102298871638.a n = A309507 (n + 1)

end A309507

/-!
# A309508: Number of cyclic permutations of length n avoiding the pattern 321.

The programs for A309508, there is no canonical definition to state claims against.
-/

/-! ## A309508.P5786013292867997877

`A239605(A250264(n+1))`
-/

namespace A309508.P5786013292867997877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239605 (A250264 (n + 1)).toNat

end

end A309508.P5786013292867997877

/-! ## A309508.P3352155049535767437

`A003104(n^ceil(n/8))-A324088(n+1)`
-/

namespace A309508.P3352155049535767437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003104 (SequenceMachineLib.roundAway ((n : ℚ) ^ (⌈(n : ℚ) / 8⌉ : ℤ))).toNat - A324088 (n + 1)

end

end A309508.P3352155049535767437

/-! ## A309508.P14926655662593162278

`A002202(A337717(n)%A233996(n+1))`
-/

namespace A309508.P14926655662593162278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002202 (Int.tmod (A337717 n) (A233996 (n + 1))).toNat

end

end A309508.P14926655662593162278

/-! ## A309508.P3116469445321374187

`A239605(A051801(n))%A153438(n+3)`
-/

namespace A309508.P3116469445321374187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A239605 (A051801 n).toNat) (A153438 (n + 3))

end

end A309508.P3116469445321374187

/-! ## A309508.P2133375219866312764

`A054404(or(3, A124500(n)))-A324088(n+1)`
-/

namespace A309508.P2133375219866312764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054404 (Int.lor 3 (A124500 n)).toNat - A324088 (n + 1)

end

end A309508.P2133375219866312764

/-!
# A309510: Divisors of 196883.

The programs for A309510, there is no canonical definition to state claims against.
-/

/-! ## A309510.P10576496666653168421

`record[gcd(A000292(n+4), A017533(n))]`
-/

namespace A309510.P10576496666653168421
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000292 (n + 4)) (A017533 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A309510.P10576496666653168421

/-!
# A309511: Number of odd parts in the partitions of n into 3 parts.

The programs for A309511, the canonical program `A309511.P536721311039358920` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A309511 has offset 0).

The definition of A309511 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5673 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A309511.P8350601005491723900

`3*A069905(n)-A309513(n)`
-/

namespace A309511.P8350601005491723900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A069905 n - A309513 n

end

end A309511.P8350601005491723900

namespace A309511

/-- `3*A069905(n)-A309513(n)` -/
def P8350601005491723900.Spec : Prop :=
  ∀ n, P8350601005491723900.a n = A309511 n

end A309511

/-! ## A309511.P17943362579470308047

`A007590(A065033(n))+char[3*(2*n+1)]`
-/

namespace A309511.P17943362579470308047
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * (2 * n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007590 (A065033 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A309511.P17943362579470308047

namespace A309511

/-- `A007590(A065033(n))+char[3*(2*n+1)]` -/
def P17943362579470308047.Spec : Prop :=
  ∀ n, P17943362579470308047.a n = A309511 n

end A309511

/-! ## A309511.P1349765258137384722

`A007590(A110654(n))+char[A016945(n)]`
-/

namespace A309511.P1349765258137384722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016945 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007590 (A110654 n).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A309511.P1349765258137384722

namespace A309511

/-- `A007590(A110654(n))+char[A016945(n)]` -/
def P1349765258137384722.Spec : Prop :=
  ∀ n, P1349765258137384722.a n = A309511 n

end A309511

/-! ## A309511.P536721311039358920

`A007590(A110654(n))+A056827(n)%2`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A309511

/-- `A007590(A110654(n))+A056827(n)%2` -/
def P536721311039358920.Spec : Prop :=
  ∀ n, P536721311039358920.a n = A309511 n

theorem P536721311039358920.correct : P536721311039358920.Spec := by
  intro n
  simp only [A309511]

end A309511

/-! ## A309511.P18353290188991307258

`A007590(A110654(n))+A000035(A283978(n))`
-/

namespace A309511.P18353290188991307258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007590 (A110654 n).toNat + A000035 (A283978 n).toNat

end

end A309511.P18353290188991307258

namespace A309511

/-- `A007590(A110654(n))+A000035(A283978(n))` -/
def P18353290188991307258.Spec : Prop :=
  ∀ n, P18353290188991307258.a n = A309511 n

end A309511

/-! ## A309511.P3563544832635220396

`∑[A131717(n+1)-A123920(A165355(n))]`
-/

namespace A309511.P3563544832635220396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131717 (n + 1) - A123920 (A165355 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A309511.P3563544832635220396

namespace A309511

/-- `∑[A131717(n+1)-A123920(A165355(n))]` -/
def P3563544832635220396.Spec : Prop :=
  ∀ n, P3563544832635220396.a n = A309511 n

end A309511

/-! ## A309511.P10524389400301262287

`A007590(A110654(n))+A000035(A056827(n))`
-/

namespace A309511.P10524389400301262287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007590 (A110654 n).toNat + A000035 (A056827 n).toNat

end

end A309511.P10524389400301262287

namespace A309511

/-- `A007590(A110654(n))+A000035(A056827(n))` -/
def P10524389400301262287.Spec : Prop :=
  ∀ n, P10524389400301262287.a n = A309511 n

end A309511

/-! ## A309511.P15346312140546655938

`A007590(A110654(n))+A327832(A056827(n)+1)-1`
-/

namespace A309511.P15346312140546655938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007590 (A110654 n).toNat + (A327832 (A056827 n + 1).toNat - 1)

end

end A309511.P15346312140546655938

namespace A309511

/-- `A007590(A110654(n))+A327832(A056827(n)+1)-1` -/
def P15346312140546655938.Spec : Prop :=
  ∀ n, P15346312140546655938.a n = A309511 n

end A309511

/-!
# A309512: Sum of the odd parts in the partitions of n into 3 parts.

The programs for A309512, there is no canonical definition to state claims against.
-/

/-! ## A309512.P9916170760281742476

`A309684(n)+A309692(n)+A309688(n)`
-/

namespace A309512.P9916170760281742476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309684 n + (A309692 n + A309688 n)

end

end A309512.P9916170760281742476

/-! ## A309512.P12087857963456680351

`A350042(n)-(A309686(n)+A309694(n)+A309690(n))`
-/

namespace A309512.P12087857963456680351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350042 n - (A309686 n + (A309694 n + A309690 n))

end

end A309512.P12087857963456680351

/-! ## A309512.P4361877363275409294

`n*round(n²/12)-A309515(n)`
-/

namespace A309512.P4361877363275409294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * SequenceMachineLib.roundAway ((n ^ 2 : ℚ) / 12) - A309515 n

end

end A309512.P4361877363275409294

/-! ## A309512.P2745973039806593505

`abs(A309515(n)-A350042(n))`
-/

namespace A309512.P2745973039806593505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A309515 n - A350042 n|

end

end A309512.P2745973039806593505

/-! ## A309512.P9497420125712045497

`abs(n*A014591(n)-n-A309515(n))`
-/

namespace A309512.P9497420125712045497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n : ℤ) * A014591 n - (n : ℤ) - A309515 n|

end

end A309512.P9497420125712045497

/-! ## A309512.P521544506960560058

`abs(A005843(n)*A069905(n)/2-A309515(n))`
-/

namespace A309512.P521544506960560058
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A005843 n * A069905 n : ℚ) / 2 - (A309515 n : ℚ)|

end

end A309512.P521544506960560058

/-! ## A309512.P250122976681142960

`lcm(n, n*A069905(n))-A038608(A309515(n))`
-/

namespace A309512.P250122976681142960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.lcm (n : ℤ) ((n : ℤ) * A069905 n) : ℤ) - A038608 (A309515 n).toNat

end

end A309512.P250122976681142960

/-!
# A309513: Number of even parts in the partitions of n into 3 parts.

The programs for A309513, the canonical program `A309513.P14970399749306751666` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A309513 has offset 0).

The definition of A309513 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A309511, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A309513.P14970399749306751666

`3*A069905(n)-A309511(n)`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A309513

/-- `3*A069905(n)-A309511(n)` -/
def P14970399749306751666.Spec : Prop :=
  ∀ n, P14970399749306751666.a n = A309513 n

theorem P14970399749306751666.correct : P14970399749306751666.Spec := by
  intro n
  simp only [A309513]

end A309513

/-! ## A309513.P15977108577835829814

`floor((A137224(n)-A011655(n))/2)`
-/

namespace A309513.P15977108577835829814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A137224 n - A011655 n : ℚ) / 2⌋

end

end A309513.P15977108577835829814

namespace A309513

/-- `floor((A137224(n)-A011655(n))/2)` -/
def P15977108577835829814.Spec : Prop :=
  ∀ n, P15977108577835829814.a n = A309513 n

end A309513

/-! ## A309513.P7301203386838927276

`A004526(A137224(n)-A011655(n))`
-/

namespace A309513.P7301203386838927276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A137224 n - A011655 n).toNat

end

end A309513.P7301203386838927276

namespace A309513

/-- `A004526(A137224(n)-A011655(n))` -/
def P7301203386838927276.Spec : Prop :=
  ∀ n, P7301203386838927276.a n = A309513 n

end A309513

/-! ## A309513.P13746549785911398044

`A174257(A131805(n)+2)`
-/

namespace A309513.P13746549785911398044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174257 (A131805 n + 2).toNat

end

end A309513.P13746549785911398044

namespace A309513

/-- `A174257(A131805(n)+2)` -/
def P13746549785911398044.Spec : Prop :=
  ∀ n, P13746549785911398044.a n = A309513 n

end A309513

/-! ## A309513.P209452965157109226

`A056827(n)-A008615(A213038(n))`
-/

namespace A309513.P209452965157109226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056827 n - A008615 (A213038 n).toNat

end

end A309513.P209452965157109226

namespace A309513

/-- `A056827(n)-A008615(A213038(n))` -/
def P209452965157109226.Spec : Prop :=
  ∀ n, P209452965157109226.a n = A309513 n

end A309513

/-! ## A309513.P12067034896826948749

`A245842(C(n, 2)+3)`
-/

namespace A309513.P12067034896826948749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245842 (Nat.choose n 2 + 3)

end

end A309513.P12067034896826948749

namespace A309513

/-- `A245842(C(n, 2)+3)` -/
def P12067034896826948749.Spec : Prop :=
  ∀ n, P12067034896826948749.a n = A309513 n

end A309513

/-! ## A309513.P6025479783888131037

`A245842(∑[n-1]+4)`
-/

namespace A309513.P6025479783888131037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245842 (∑ j ∈ Finset.range (n + 1), f1 j + 4).toNat

end

end A309513.P6025479783888131037

namespace A309513

/-- `A245842(∑[n-1]+4)` -/
def P6025479783888131037.Spec : Prop :=
  ∀ n, P6025479783888131037.a n = A309513 n

end A309513

/-!
# A309514: Number of winning Tak paths on an n X n board.

The programs for A309514, there is no canonical definition to state claims against.
-/

/-! ## A309514.P13891920556061785788

`∑[A091073(n)+n]`
-/

namespace A309514.P13891920556061785788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091073 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A309514.P13891920556061785788

/-!
# A309515: Sum of the even parts of the partitions of n into 3 parts.

The programs for A309515, there is no canonical definition to state claims against.
-/

/-! ## A309515.P10894821897178298472

`n*round(n²/12)-A309512(n)`
-/

namespace A309515.P10894821897178298472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * SequenceMachineLib.roundAway ((n ^ 2 : ℚ) / 12) - A309512 n

end

end A309515.P10894821897178298472

/-! ## A309515.P3545142047138602441

`abs(A309512(n)-A350042(n))`
-/

namespace A309515.P3545142047138602441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A309512 n - A350042 n|

end

end A309515.P3545142047138602441

/-! ## A309515.P15834806374455212497

`abs(n*A014591(n)-n-A309512(n))`
-/

namespace A309515.P15834806374455212497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n : ℤ) * A014591 n - (n : ℤ) - A309512 n|

end

end A309515.P15834806374455212497

/-! ## A309515.P6829564300829062167

`A309686(n)+A309694(n)+A309690(n)`
-/

namespace A309515.P6829564300829062167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309686 n + (A309694 n + A309690 n)

end

end A309515.P6829564300829062167

/-! ## A309515.P9084268572770499075

`(A350042(n)-A309512(n))*A054977(n)`
-/

namespace A309515.P9084268572770499075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A350042 n - A309512 n) * A054977 n

end

end A309515.P9084268572770499075

/-! ## A309515.P16031093456102119875

`abs(A005843(n)*A069905(n)/2-A309512(n))`
-/

namespace A309515.P16031093456102119875
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A005843 n * A069905 n : ℚ) / 2 - (A309512 n : ℚ)|

end

end A309515.P16031093456102119875

/-! ## A309515.P9860286788846795079

`(A350042(n)-A309512(n))%(∑[n*(A000040(n+2)-2)]+1)`
-/

namespace A309515.P9860286788846795079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A000040 (n + 2) - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A350042 n - A309512 n) (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A309515.P9860286788846795079

/-! ## A309515.P15525320216353272258

`A350042(n)+A024000(A309512(n)+1)`
-/

namespace A309515.P15525320216353272258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350042 n + A024000 (A309512 n + 1).toNat

end

end A309515.P15525320216353272258

/-! ## A309515.P3492761969930497552

`A038608(n*ceil(or(5, n²)/12)-n-A309512(n))`
-/

namespace A309515.P3492761969930497552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038608 ((n : ℤ) * ⌈(Nat.lor 5 (n ^ 2) : ℚ) / 12⌉ - (n : ℤ) - A309512 n).toNat

end

end A309515.P3492761969930497552

/-! ## A309515.P5552723395490511430

`A038608(A350042(n)-A309512(n))`
-/

namespace A309515.P5552723395490511430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038608 (A350042 n - A309512 n).toNat

end

end A309515.P5552723395490511430

/-!
# A309517: Sum of the odd parts in the partitions of n into 4 parts.

The programs for A309517, there is no canonical definition to state claims against.
-/

/-! ## A309517.P1096609385225418222

`A308775(n)-A309519(n)`
-/

namespace A309517.P1096609385225418222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308775 n - A309519 n

end

end A309517.P1096609385225418222

/-! ## A309517.P9246303001352516282

`n*A288165(3*n)-A309519(n)`
-/

namespace A309517.P9246303001352516282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A288165 (3 * n) - A309519 n

end

end A309517.P9246303001352516282

/-! ## A309517.P11361828503361462742

`n*A029425(A016921(n))-A309519(n)`
-/

namespace A309517.P11361828503361462742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A029425 (A016921 n).toNat - A309519 n

end

end A309517.P11361828503361462742

/-! ## A309517.P16280777695879782255

`n*A029425(A271114(n))-A309519(n)`
-/

namespace A309517.P16280777695879782255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A029425 (A271114 n).toNat - A309519 n

end

end A309517.P16280777695879782255

/-! ## A309517.P4605688395832733089

`n*A029425(A308196(n))-A309519(n)`
-/

namespace A309517.P4605688395832733089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A029425 (A308196 n).toNat - A309519 n

end

end A309517.P4605688395832733089

/-!
# A309519: Sum of the even parts in the partitions of n into 4 parts.

The programs for A309519, there is no canonical definition to state claims against.
-/

/-! ## A309519.P1375853938586770837

`A308775(n)-A309517(n)`
-/

namespace A309519.P1375853938586770837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308775 n - A309517 n

end

end A309519.P1375853938586770837

/-! ## A309519.P7295241504642292111

`n*A288165(3*n)-A309517(n)`
-/

namespace A309519.P7295241504642292111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A288165 (3 * n) - A309517 n

end

end A309519.P7295241504642292111

/-! ## A309519.P2791128088896064370

`n*A029425(A016921(n))-A309517(n)`
-/

namespace A309519.P2791128088896064370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A029425 (A016921 n).toNat - A309517 n

end

end A309519.P2791128088896064370

/-! ## A309519.P10287141427005297259

`n*A029425(A271114(n))-A309517(n)`
-/

namespace A309519.P10287141427005297259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A029425 (A271114 n).toNat - A309517 n

end

end A309519.P10287141427005297259

/-! ## A309519.P8378708079006065440

`n*A029425(A308196(n))-A309517(n)`
-/

namespace A309519.P8378708079006065440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A029425 (A308196 n).toNat - A309517 n

end

end A309519.P8378708079006065440

/-!
# A309520: Primes p for which h1(p)/G(p) has a record value.

The programs for A309520, there is no canonical definition to state claims against.
-/

/-! ## A309520.P13289333521892480298

`p?[∑[A006702(A006702(n+1))+1]+1]`
-/

namespace A309520.P13289333521892480298
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006702 (A006702 (n + 1)).toNat + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A309520.P13289333521892480298

/-!
# A309521: The sequence is always extended by subtracting the n-th digit of the sequence from a(n) if a(n) is prime, else adding it to a(n), starting with a(1) = 4.

The programs for A309521, there is no canonical definition to state claims against.
-/

/-! ## A309521.P9235032595094583003

`A309529(A108322(n+1)+2+n)`
-/

namespace A309521.P9235032595094583003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309529 (A108322 (n + 1) + 2 + (n : ℤ)).toNat

end

end A309521.P9235032595094583003

/-! ## A309521.P12228373538021435286

`A309529(n+2)%A096283(n+1)`
-/

namespace A309521.P12228373538021435286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A309529 (n + 2)) (A096283 (n + 1))

end

end A309521.P12228373538021435286

/-! ## A309521.P6966216952384663072

`abs(A309529(n+2))%A309540(2*n+1)`
-/

namespace A309521.P6966216952384663072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod |A309529 (n + 2)| (A309540 (2 * n + 1))

end

end A309521.P6966216952384663072

/-! ## A309521.P16465169063550555399

`A309529(n+2)+A000007(A016116(n))`
-/

namespace A309521.P16465169063550555399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309529 (n + 2) + A000007 (A016116 n).toNat

end

end A309521.P16465169063550555399

/-! ## A309521.P9899064461356231899

`A054977(A194672(n))*A309529(n+2)`
-/

namespace A309521.P9899064461356231899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 (A194672 n).toNat * A309529 (n + 2)

end

end A309521.P9899064461356231899

/-!
# A309522: Generalized Blasius numbers, square array read by ascending antidiagonals, A(n, k) for n, k >= 0.

The programs for A309522, there is no canonical definition to state claims against.
-/

/-! ## A309522.P3341337054307353427

`A077105(A260883(n+1)+3)`
-/

namespace A309522.P3341337054307353427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077105 (A260883 (n + 1) + 3).toNat

end

end A309522.P3341337054307353427

/-! ## A309522.P17411822679494098758

`A377441(n)^A001006(A080159(n))`
-/

namespace A309522.P17411822679494098758
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A377441 n : ℚ) ^ (A001006 (A080159 n).toNat : ℤ)

end

end A309522.P17411822679494098758

/-! ## A309522.P12673707448282794296

`A377441(n)^A023425(A147746(n))`
-/

namespace A309522.P12673707448282794296
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A377441 n : ℚ) ^ (A023425 (A147746 n).toNat : ℤ)

end

end A309522.P12673707448282794296

/-! ## A309522.P1967266822496865681

`A377441(n)^A000169(A208183(n))`
-/

namespace A309522.P1967266822496865681
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A377441 n : ℚ) ^ (A000169 (A208183 n).toNat : ℤ)

end

end A309522.P1967266822496865681

/-! ## A309522.P2173977576445985727

`A161793(A267998(gcd(n, A184955(n))))`
-/

namespace A309522.P2173977576445985727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161793 (A267998 (Int.gcd (n : ℤ) (A184955 n))).toNat

end

end A309522.P2173977576445985727

/-!
# A309524: Triangle read by rows: T(n,k) is the number of simple connected graphs on n nodes with longest path having k nodes, (1 <= k <= n).

The programs for A309524, there is no canonical definition to state claims against.
-/

/-! ## A309524.P2850552079061920925

`A262689(A238727(n)^A238745(n+1))`
-/

namespace A309524.P2850552079061920925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262689 (SequenceMachineLib.roundAway ((A238727 n : ℚ) ^ (A238745 (n + 1) : ℤ))).toNat

end

end A309524.P2850552079061920925

/-! ## A309524.P2014005248357833267

`A261750(A238727(n)+1)`
-/

namespace A309524.P2014005248357833267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261750 (A238727 n + 1).toNat

end

end A309524.P2014005248357833267

/-! ## A309524.P6487043929677784908

`A238782(2^A238727(n))`
-/

namespace A309524.P6487043929677784908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238782 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A238727 n : ℤ))).toNat

end

end A309524.P6487043929677784908

/-! ## A309524.P12563751777069704074

`A001222(A238727(n)^n+1)`
-/

namespace A309524.P12563751777069704074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A238727 n ^ n + 1).toNat

end

end A309524.P12563751777069704074

/-! ## A309524.P11888731026739702287

`A285189(A238727(n)*A273730(n))`
-/

namespace A309524.P11888731026739702287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285189 (A238727 n * A273730 n).toNat

end

end A309524.P11888731026739702287

/-!
# A309525: a(n) is the greatest divisor of A006190(n) that is coprime to A006190(m) for all positive integers m < n.

The programs for A309525, there is no canonical definition to state claims against.
-/

/-! ## A309525.P6843620746910729670

`lcm(A253807(n+1), A305702(n+1))/A305702(n+1)`
-/

namespace A309525.P6843620746910729670
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A253807 (n + 1)) (A305702 (n + 1)) : ℚ) / (A305702 (n + 1) : ℚ)

end

end A309525.P6843620746910729670

/-! ## A309525.P18038235454052583861

`gcd(A045698(A045675(n)), A253807(n+1))`
-/

namespace A309525.P18038235454052583861
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A045698 (A045675 n).toNat) (A253807 (n + 1))

end

end A309525.P18038235454052583861

/-! ## A309525.P17448363174035982362

`A385212(A253807(n+1))`
-/

namespace A309525.P17448363174035982362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385212 (A253807 (n + 1)).toNat

end

end A309525.P17448363174035982362

/-! ## A309525.P7793005550490078938

`gcd(A028310(A253807(n+1)), A144948(n+2))`
-/

namespace A309525.P7793005550490078938
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A028310 (A253807 (n + 1)).toNat) (A144948 (n + 2))

end

end A309525.P7793005550490078938

/-! ## A309525.P16768239320315690481

`A028310((1-A144948(n+2))*A253807(n+1))`
-/

namespace A309525.P16768239320315690481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 ((1 - A144948 (n + 2)) * A253807 (n + 1)).toNat

end

end A309525.P16768239320315690481

/-!
# A309526: a(n) is the greatest divisor of A001353(n) that is coprime to A001353(m) for all positive integers m < n.

The programs for A309526, there is no canonical definition to state claims against.
-/

/-! ## A309526.P10634138654068000910

`A237517(A306825(n+1))`
-/

namespace A309526.P10634138654068000910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237517 (A306825 (n + 1)).toNat

end

end A309526.P10634138654068000910

/-! ## A309526.P9256997407804200889

`A028310(A306825(n+1)/A000188(n+1))`
-/

namespace A309526.P9256997407804200889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (SequenceMachineLib.roundAway ((A306825 (n + 1) : ℚ) / (A000188 (n + 1) : ℚ))).toNat

end

end A309526.P9256997407804200889

/-! ## A309526.P1550998554439469028

`A306825(n+1)/A046951(A034478(n))`
-/

namespace A309526.P1550998554439469028
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A306825 (n + 1) : ℚ) / (A046951 (A034478 n).toNat : ℚ)

end

end A309526.P1550998554439469028

/-!
# A309528: The number of non-equivalent distinguishing colorings of the cycle on n vertices with at most k colors (k>=1). The cycle graph is defined for n>=3; extended to n=1,2 using the closed form. Square array read by descending antidiagonals: the rows are indexed by n, the number of vertices of the cycle and the columns are indexed by k, the number of permissible colors.

The programs for A309528, there is no canonical definition to state claims against.
-/

/-! ## A309528.P4948207022716119146

`A001281(A074650(n+1)-A284856(n+1))`
-/

namespace A309528.P4948207022716119146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A074650 (n + 1) - A284856 (n + 1)).toNat

end

end A309528.P4948207022716119146

/-! ## A309528.P6293644819250085524

`A004525(A074650(n+1)-A284856(n+1))`
-/

namespace A309528.P6293644819250085524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A074650 (n + 1) - A284856 (n + 1)).toNat

end

end A309528.P6293644819250085524

/-! ## A309528.P16067598021830972405

`A004526(A074650(n+1)-A284856(n+1))`
-/

namespace A309528.P16067598021830972405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A074650 (n + 1) - A284856 (n + 1)).toNat

end

end A309528.P16067598021830972405

/-! ## A309528.P18005116094588343805

`A006370(A074650(n+1)-A284856(n+1))`
-/

namespace A309528.P18005116094588343805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006370 (A074650 (n + 1) - A284856 (n + 1)).toNat

end

end A309528.P18005116094588343805

/-! ## A309528.P10316138456765817729

`A025480(A074650(n+1)-A284856(n+1))`
-/

namespace A309528.P10316138456765817729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A074650 (n + 1) - A284856 (n + 1)).toNat

end

end A309528.P10316138456765817729

/-! ## A309528.P15018840045159642543

`A026741(A074650(n+1)-A284856(n+1))`
-/

namespace A309528.P15018840045159642543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A074650 (n + 1) - A284856 (n + 1)).toNat

end

end A309528.P15018840045159642543

/-! ## A309528.P11722319804957549779

`A029578(A074650(n+1)-A284856(n+1))`
-/

namespace A309528.P11722319804957549779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029578 (A074650 (n + 1) - A284856 (n + 1)).toNat

end

end A309528.P11722319804957549779

/-! ## A309528.P3086239746719426982

`A110654(A074650(n+1)-A284856(n+1))`
-/

namespace A309528.P3086239746719426982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A074650 (n + 1) - A284856 (n + 1)).toNat

end

end A309528.P3086239746719426982

/-!
# A309530: Number of power-of-two-divisors of sum of divisors of sum of divisors of powers of two: a(n) = A001511(A051027(A000079(n))).

The programs for A309530, the canonical program `A309530.P10769901675090293297` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A309530 has offset 0).

The definition of A309530 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051027, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A309530.P10769901675090293297

`A001511(A051027(A000079(n)))`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A309530

/-- `A001511(A051027(A000079(n)))` -/
def P10769901675090293297.Spec : Prop :=
  ∀ n, P10769901675090293297.a n = A309530 n

theorem P10769901675090293297.correct : P10769901675090293297.Spec := by
  intro n
  simp only [A309530]

end A309530

/-! ## A309530.P17545811160584886515

`val(A075708(n+1), 2)+1`
-/

namespace A309530.P17545811160584886515
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A075708 (n + 1)).toNat 2 + 1

end

end A309530.P17545811160584886515

namespace A309530

/-- `val(A075708(n+1), 2)+1` -/
def P17545811160584886515.Spec : Prop :=
  ∀ n, (P17545811160584886515.a n : ℤ) = A309530 n

end A309530

/-! ## A309530.P17767410440671466506

`val(∑[A329890(n+1)], 2)+1`
-/

namespace A309530.P17767410440671466506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329890 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (∑ j ∈ Finset.range (n + 1), f1 j).toNat 2 + 1

end

end A309530.P17767410440671466506

namespace A309530

/-- `val(∑[A329890(n+1)], 2)+1` -/
def P17767410440671466506.Spec : Prop :=
  ∀ n, (P17767410440671466506.a n : ℤ) = A309530 n

end A309530

/-! ## A309530.P14947445262320756562

`log2(gcd(A000302(n), A075708(n+1)))+1`
-/

namespace A309530.P14947445262320756562
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Int.gcd (A000302 n) (A075708 (n + 1)) : ℝ) + 1

end

end A309530.P14947445262320756562

namespace A309530

/-- `log2(gcd(A000302(n), A075708(n+1)))+1` -/
def P14947445262320756562.Spec : Prop :=
  ∀ n, P14947445262320756562.a n = (A309530 n : ℝ)

end A309530

/-! ## A309530.P16496152818628410251

`val(∑{d}[∑[2^n], #], 2)+1`
-/

namespace A309530.P16496152818628410251
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (∑ d ∈ Nat.divisors (f1 n), d) 2 + 1

end

end A309530.P16496152818628410251

namespace A309530

/-- `val(∑{d}[∑[2^n], #], 2)+1` -/
def P16496152818628410251.Spec : Prop :=
  ∀ n, (P16496152818628410251.a n : ℤ) = A309530 n

end A309530

/-!
# A309535: Total number of square parts in all compositions of n.

The programs for A309535, there is no canonical definition to state claims against.
-/

/-! ## A309535.P7126153116293418519

`A132270(A309407(3*n+2)+A052951(n))`
-/

namespace A309535.P7126153116293418519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132270 (A309407 (3 * n + 2) + A052951 n).toNat

end

end A309535.P7126153116293418519

/-! ## A309535.P4538239002855460270

`A194640(∑[A091596(n)])`
-/

namespace A309535.P4538239002855460270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091596 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194640 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A309535.P4538239002855460270

/-! ## A309535.P3440493611193040563

`A008617(A000079(n)*A294674(n+1))`
-/

namespace A309535.P3440493611193040563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008617 (A000079 n * A294674 (n + 1)).toNat

end

end A309535.P3440493611193040563

/-! ## A309535.P1966918783055854534

`A008617(A086066(n)*A294674(n+1))`
-/

namespace A309535.P1966918783055854534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008617 (A086066 n * A294674 (n + 1)).toNat

end

end A309535.P1966918783055854534

/-! ## A309535.P3286316079132829162

`A008617(lcm(A000079(n), A294674(n+1)))`
-/

namespace A309535.P3286316079132829162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008617 (Int.lcm (A000079 n) (A294674 (n + 1)))

end

end A309535.P3286316079132829162

/-!
# A309536: Total number of triangular numbers in all compositions of n.

The programs for A309536, there is no canonical definition to state claims against.
-/

/-! ## A309536.P15552893417870801501

`A091972(A048493(n)+∑[n])`
-/

namespace A309536.P15552893417870801501
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091972 (A048493 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A309536.P15552893417870801501

/-! ## A309536.P9394053427525421017

`A091972(A050760(n+1)+A048493(n))`
-/

namespace A309536.P9394053427525421017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091972 (A050760 (n + 1) + A048493 n).toNat

end

end A309536.P9394053427525421017

/-! ## A309536.P4356555632656420555

`A046155(∑[A047006(n)-1])`
-/

namespace A309536.P4356555632656420555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047006 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046155 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A309536.P4356555632656420555

/-! ## A309536.P15850859396111024178

`A001462(A147748(n))-A005041(n)`
-/

namespace A309536.P15850859396111024178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 (A147748 n).toNat - A005041 n

end

end A309536.P15850859396111024178

/-!
# A309537: Total number of Fibonacci parts in all compositions of n.

The programs for A309537, there is no canonical definition to state claims against.
-/

/-! ## A309537.P8527322961704874137

`A126874(n+5)-A272619(n+1)`
-/

namespace A309537.P8527322961704874137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126874 (n + 5) - A272619 (n + 1)

end

end A309537.P8527322961704874137

/-! ## A309537.P3483364201753850800

`A051164(n)-A020639(A048863(n))`
-/

namespace A309537.P3483364201753850800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051164 n - A020639 (A048863 n).toNat

end

end A309537.P3483364201753850800

/-! ## A309537.P2304175811882995079

`A137256(n)-A020639(A048863(n))`
-/

namespace A309537.P2304175811882995079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137256 n - A020639 (A048863 n).toNat

end

end A309537.P2304175811882995079

/-! ## A309537.P6681432204742772687

`A051164(n)-A020639(A231085(n))`
-/

namespace A309537.P6681432204742772687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051164 n - A020639 (A231085 n).toNat

end

end A309537.P6681432204742772687

/-!
# A309538: Total number of factorial parts in all compositions of n.

The programs for A309538, there is no canonical definition to state claims against.
-/

/-! ## A309538.P7142619859135176115

`round(A004273(A255135(n+1))/12)`
-/

namespace A309538.P7142619859135176115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A004273 (A255135 (n + 1)).toNat : ℚ) / 12)

end

end A309538.P7142619859135176115

/-! ## A309538.P7863370333658591920

`A008998(n)-A043276(A000142(n))`
-/

namespace A309538.P7863370333658591920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008998 n - A043276 (A000142 n).toNat

end

end A309538.P7863370333658591920

/-! ## A309538.P8886454186168456123

`A054404(A001792(n)-A008133(n))`
-/

namespace A309538.P8886454186168456123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054404 (A001792 n - A008133 n).toNat

end

end A309538.P8886454186168456123

/-! ## A309538.P2125278290091778629

`A001462(A001075(n))-A300442(n)`
-/

namespace A309538.P2125278290091778629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 (A001075 n).toNat - A300442 n

end

end A309538.P2125278290091778629

/-!
# A309539: Positive numbers that contain both odd and even digits, with no digit repeated.

The programs for A309539, there is no canonical definition to state claims against.
-/

/-! ## A309539.P487764935793657085

`eq[A107846(n), A321537(A308003(n))]`
-/

namespace A309539.P487764935793657085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107846 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321537 (A308003 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A309539.P487764935793657085

/-! ## A309539.P17807211041183931503

`eq[A107846(n), A321537(A308005(n))]`
-/

namespace A309539.P17807211041183931503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107846 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321537 (A308005 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A309539.P17807211041183931503

/-! ## A309539.P16840425228774061021

`filter[A318700(n+1), A178788(#)]`
-/

namespace A309539.P16840425228774061021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318700 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A178788 (f1 j).toNat = 1) n)

end

end A309539.P16840425228774061021

/-! ## A309539.P8517823881400446810

`eq[A283149(n+1), A374097(n)]`
-/

namespace A309539.P8517823881400446810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283149 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374097 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A309539.P8517823881400446810

/-!
# A309540: a(n) is the smallest positive number not yet in the sequence that contains exactly one even digit and exactly one odd digit from a(n-1), and no digit in a(n) is repeated.

The programs for A309540, there is no canonical definition to state claims against.
-/

/-! ## A309540.P992196548368430213

`filter[A309390(n+1), A178788(#)]`
-/

namespace A309540.P992196548368430213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309390 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A178788 (f1 j).toNat = 1) n)

end

end A309540.P992196548368430213

/-!
# A309545: Sum of the odd parts in the partitions of n into 5 parts.

The programs for A309545, there is no canonical definition to state claims against.
-/

/-! ## A309545.P17121228872399951372

`A308822(n)-A309547(n)`
-/

namespace A309545.P17121228872399951372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308822 n - A309547 n

end

end A309545.P17121228872399951372

/-! ## A309545.P11246942869854332838

`n*A026811(n)-A309547(n)`
-/

namespace A309545.P11246942869854332838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A026811 n - A309547 n

end

end A309545.P11246942869854332838

/-! ## A309545.P9470399860945792166

`n*A288166(4*n)-A309547(n)`
-/

namespace A309545.P9470399860945792166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A288166 (4 * n) - A309547 n

end

end A309545.P9470399860945792166

/-! ## A309545.P7921218843937069217

`n*(A309881(n)+A309879(n))-A309547(n)`
-/

namespace A309545.P7921218843937069217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A309881 n + A309879 n) - A309547 n

end

end A309545.P7921218843937069217

/-! ## A309545.P15879764089903448623

`n*(A001401(n)-A001400(n))-A309547(n)`
-/

namespace A309545.P15879764089903448623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A001401 n - A001400 n) - A309547 n

end

end A309545.P15879764089903448623

/-!
# A309547: Sum of the even parts in the partitions of n into 5 parts.

The programs for A309547, there is no canonical definition to state claims against.
-/

/-! ## A309547.P13388333597812575559

`A308822(n)-A309545(n)`
-/

namespace A309547.P13388333597812575559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308822 n - A309545 n

end

end A309547.P13388333597812575559

/-! ## A309547.P13553052289644107775

`n*A026811(n)-A309545(n)`
-/

namespace A309547.P13553052289644107775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A026811 n - A309545 n

end

end A309547.P13553052289644107775

/-! ## A309547.P17112288883494006982

`n*A288166(4*n)-A309545(n)`
-/

namespace A309547.P17112288883494006982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A288166 (4 * n) - A309545 n

end

end A309547.P17112288883494006982

/-! ## A309547.P16023051931753957248

`n*(A309881(n)+A309879(n))-A309545(n)`
-/

namespace A309547.P16023051931753957248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A309881 n + A309879 n) - A309545 n

end

end A309547.P16023051931753957248

/-! ## A309547.P14706133702531764565

`n*(A001401(n)-A001400(n))-A309545(n)`
-/

namespace A309547.P14706133702531764565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A001401 n - A001400 n) - A309545 n

end

end A309547.P14706133702531764565

/-!
# A309548: Numbers k such that sigma(k)! - 1 is prime, where sigma is A000203.

The programs for A309548, there is no canonical definition to state claims against.
-/

/-! ## A309548.P12063531413692772538

`lt[n+2, A240160(A000203(n+1)+1)]+1`
-/

namespace A309548.P12063531413692772538
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240160 (A000203 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A309548.P12063531413692772538

/-! ## A309548.P10949391713013167524

`eq[1, A083663(A000203(n+1))]+1`
-/

namespace A309548.P10949391713013167524
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083663 (A000203 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A309548.P10949391713013167524

/-! ## A309548.P15538365879057127572

`eq[A083663(n+1), A318045(A267584(n))]`
-/

namespace A309548.P15538365879057127572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083663 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318045 (A267584 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A309548.P15538365879057127572

/-! ## A309548.P17872561090773010725

`eq[A165022(A003963(n+1)), A247044(n+1)]`
-/

namespace A309548.P17872561090773010725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165022 (A003963 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247044 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A309548.P17872561090773010725

/-! ## A309548.P9380338215010523381

`eq[A247044(n+1), A340793(A288003(n+1))]`
-/

namespace A309548.P9380338215010523381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247044 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340793 (A288003 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A309548.P9380338215010523381

/-!
# A309550: Sum of the odd parts in the partitions of n into 6 parts.

The programs for A309550, there is no canonical definition to state claims against.
-/

/-! ## A309550.P504347287203924839

`A308867(n)-A309552(n)`
-/

namespace A309550.P504347287203924839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308867 n - A309552 n

end

end A309550.P504347287203924839

/-! ## A309550.P9828814312753607981

`n*A026812(n)-A309552(n)`
-/

namespace A309550.P9828814312753607981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A026812 n - A309552 n

end

end A309550.P9828814312753607981

/-! ## A309550.P9293236618462969776

`n*(A001402(n)-A001401(n))-A309552(n)`
-/

namespace A309550.P9293236618462969776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A001402 n - A001401 n) - A309552 n

end

end A309550.P9293236618462969776

/-! ## A309550.P4847997096792219978

`n*(A037145(n)-A060025(n))-A309552(n)`
-/

namespace A309550.P4847997096792219978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A037145 n - A060025 n) - A309552 n

end

end A309550.P4847997096792219978

/-! ## A309550.P569082081523498821

`n*(A001402(n)-∑[A008667(n)])-A309552(n)`
-/

namespace A309550.P569082081523498821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008667 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A001402 n - ∑ j ∈ Finset.range (n + 1), f1 j) - A309552 n

end

end A309550.P569082081523498821

/-!
# A309552: Sum of the even parts in the partitions of n into 6 parts.

The programs for A309552, there is no canonical definition to state claims against.
-/

/-! ## A309552.P4834248542002589149

`A308867(n)-A309550(n)`
-/

namespace A309552.P4834248542002589149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308867 n - A309550 n

end

end A309552.P4834248542002589149

/-! ## A309552.P18386310716069439405

`n*A026812(n)-A309550(n)`
-/

namespace A309552.P18386310716069439405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A026812 n - A309550 n

end

end A309552.P18386310716069439405

/-! ## A309552.P15736996125357598566

`n*(A001402(n)-A001401(n))-A309550(n)`
-/

namespace A309552.P15736996125357598566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A001402 n - A001401 n) - A309550 n

end

end A309552.P15736996125357598566

/-! ## A309552.P13787887535310644236

`n*(A037145(n)-A060025(n))-A309550(n)`
-/

namespace A309552.P13787887535310644236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A037145 n - A060025 n) - A309550 n

end

end A309552.P13787887535310644236

/-! ## A309552.P9329043919643864628

`n*(A001402(n)-∑[A008667(n)])-A309550(n)`
-/

namespace A309552.P9329043919643864628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008667 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A001402 n - ∑ j ∈ Finset.range (n + 1), f1 j) - A309550 n

end

end A309552.P9329043919643864628

/-!
# A309554: a(1) = a(6) = 1, a(2) = a(3) = a(8) = 2, a(4) = a(7) = 7, a(5) = 5; a(n) = a(n-a(n-1)) + a(n-a(n-3)) for n > 8.

The programs for A309554, the canonical program `A309554.P17936457194101022786` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A309554 has offset 1).

The definition of A309554 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-a(n-1))+a(n-a(n-3))` (program `A309554.P17936457194101022786`, by `A309554.P17936457194101022786.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A309554.P17936457194101022786

`a(n-a(n-1))+a(n-a(n-3))` with `a(0)=1, a(1)=2, a(2)=2, a(3)=7, a(4)=5, a(5)=1, a(6)=7, a(7)=2`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A309554

/-- `a(n-a(n-1))+a(n-a(n-3))` -/
def P17936457194101022786.Spec : Prop :=
  ∀ n, (P17936457194101022786.a n : ℤ) = A309554 (n + 1)

theorem P17936457194101022786.correct : P17936457194101022786.Spec := by
  intro n
  simp only [A309554, Nat.add_sub_cancel]

end A309554

/-!
# A309555: Triangle read by rows: T(n,k) = 3 + k*(n-k) for n >= 0, 0 <= k <= n.

The programs for A309555, the canonical program `A309555.P8164692491126048069` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A309555 has offset 0).

The definition of A309555 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A309555.P8164692491126048069

`A077028(n)+2`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A309555

/-- `A077028(n)+2` -/
def P8164692491126048069.Spec : Prop :=
  ∀ n, P8164692491126048069.a n = A309555 n

theorem P8164692491126048069.correct : P8164692491126048069.Spec := by
  intro n
  simp only [A309555]

end A309555

/-! ## A309555.P8460664700577421190

`A004247(n)+3`
-/

namespace A309555.P8460664700577421190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004247 n + 3

end

end A309555.P8460664700577421190

namespace A309555

/-- `A004247(n)+3` -/
def P8460664700577421190.Spec : Prop :=
  ∀ n, P8460664700577421190.a n = A309555 n

end A309555

/-! ## A309555.P15249049953672103257

`4-A176270(n)`
-/

namespace A309555.P15249049953672103257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 - A176270 n

end

end A309555.P15249049953672103257

namespace A309555

/-- `4-A176270(n)` -/
def P15249049953672103257.Spec : Prop :=
  ∀ n, P15249049953672103257.a n = A309555 n

end A309555

/-! ## A309555.P6460731861799438761

`sqrt(A082043(n))+2`
-/

namespace A309555.P6460731861799438761
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A082043 n : ℝ) + 2

end

end A309555.P6460731861799438761

namespace A309555

/-- `sqrt(A082043(n))+2` -/
def P6460731861799438761.Spec : Prop :=
  ∀ n, P6460731861799438761.a n = (A309555 n : ℝ)

end A309555

/-! ## A309555.P17881966311462100518

`(A296180(n)+8)/3`
-/

namespace A309555.P17881966311462100518
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A296180 n + 8 : ℚ) / 3

end

end A309555.P17881966311462100518

namespace A309555

/-- `(A296180(n)+8)/3` -/
def P17881966311462100518.Spec : Prop :=
  ∀ n, P17881966311462100518.a n = (A309555 n : ℚ)

end A309555

/-! ## A309555.P12886277273086872075

`(A287326(n)+17)/6`
-/

namespace A309555.P12886277273086872075
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A287326 n + 17 : ℚ) / 6

end

end A309555.P12886277273086872075

namespace A309555

/-- `(A287326(n)+17)/6` -/
def P12886277273086872075.Spec : Prop :=
  ∀ n, P12886277273086872075.a n = (A309555 n : ℚ)

end A309555

/-! ## A309555.P9627582514572504240

`floor(sqrt(A082046(n)))+2`
-/

namespace A309555.P9627582514572504240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A082046 n) + 2

end

end A309555.P9627582514572504240

namespace A309555

/-- `floor(sqrt(A082046(n)))+2` -/
def P9627582514572504240.Spec : Prop :=
  ∀ n, P9627582514572504240.a n = A309555 n

end A309555

/-! ## A309555.P3786038499597581535

`ceil(sqrt(A082039(n)))+2`
-/

namespace A309555.P3786038499597581535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A082039 n : ℝ)⌉ + 2

end

end A309555.P3786038499597581535

namespace A309555

/-- `ceil(sqrt(A082039(n)))+2` -/
def P3786038499597581535.Spec : Prop :=
  ∀ n, P3786038499597581535.a n = A309555 n

end A309555

/-! ## A309555.P7544186959565848960

`(A130154(n+1)+5)/2`
-/

namespace A309555.P7544186959565848960
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A130154 (n + 1) + 5 : ℚ) / 2

end

end A309555.P7544186959565848960

namespace A309555

/-- `(A130154(n+1)+5)/2` -/
def P7544186959565848960.Spec : Prop :=
  ∀ n, P7544186959565848960.a n = (A309555 n : ℚ)

end A309555

/-! ## A309555.P13606018481341008619

`A009056(A077028(n))`
-/

namespace A309555.P13606018481341008619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009056 (A077028 n).toNat

end

end A309555.P13606018481341008619

namespace A309555

/-- `A009056(A077028(n))` -/
def P13606018481341008619.Spec : Prop :=
  ∀ n, P13606018481341008619.a n = A309555 n

end A309555

/-! ## A309555.P8394320778465381055

`A052938(A130154(n+1))`
-/

namespace A309555.P8394320778465381055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052938 (A130154 (n + 1)).toNat

end

end A309555.P8394320778465381055

namespace A309555

/-- `A052938(A130154(n+1))` -/
def P8394320778465381055.Spec : Prop :=
  ∀ n, P8394320778465381055.a n = A309555 n

end A309555

/-! ## A309555.P8038620316831318572

`A008619(A157528(n))+2`
-/

namespace A309555.P8038620316831318572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A157528 n).toNat + 2

end

end A309555.P8038620316831318572

namespace A309555

/-- `A008619(A157528(n))+2` -/
def P8038620316831318572.Spec : Prop :=
  ∀ n, P8038620316831318572.a n = A309555 n

end A309555

/-! ## A309555.P5723598171688583500

`A128139(A056943(n))+2`
-/

namespace A309555.P5723598171688583500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128139 (A056943 n).toNat + 2

end

end A309555.P5723598171688583500

namespace A309555

/-- `A128139(A056943(n))+2` -/
def P5723598171688583500.Spec : Prop :=
  ∀ n, P5723598171688583500.a n = A309555 n

end A309555

/-! ## A309555.P17510241578775675199

`A128139(A083920(n))+2`
-/

namespace A309555.P17510241578775675199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128139 (A083920 n).toNat + 2

end

end A309555.P17510241578775675199

namespace A309555

/-- `A128139(A083920(n))+2` -/
def P17510241578775675199.Spec : Prop :=
  ∀ n, P17510241578775675199.a n = A309555 n

end A309555

/-! ## A309555.P5854610401291363972

`A128139(A271439(n))+2`
-/

namespace A309555.P5854610401291363972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128139 (A271439 n).toNat + 2

end

end A309555.P5854610401291363972

namespace A309555

/-- `A128139(A271439(n))+2` -/
def P5854610401291363972.Spec : Prop :=
  ∀ n, P5854610401291363972.a n = A309555 n

end A309555

/-! ## A309555.P2870195154252978199

`A173395(n+1)-A131507(n)`
-/

namespace A309555.P2870195154252978199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173395 (n + 1) - A131507 n

end

end A309555.P2870195154252978199

namespace A309555

/-- `A173395(n+1)-A131507(n)` -/
def P2870195154252978199.Spec : Prop :=
  ∀ n, P2870195154252978199.a n = A309555 n

end A309555

/-! ## A309555.P16255768510691519353

`A128139(n)+2-A002262(n)`
-/

namespace A309555.P16255768510691519353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128139 n + (2 - A002262 n)

end

end A309555.P16255768510691519353

namespace A309555

/-- `A128139(n)+2-A002262(n)` -/
def P16255768510691519353.Spec : Prop :=
  ∀ n, P16255768510691519353.a n = A309555 n

end A309555

/-! ## A309555.P9511360272119191551

`A003991(n+1)+2-A003056(n)`
-/

namespace A309555.P9511360272119191551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003991 (n + 1) + (2 - A003056 n)

end

end A309555.P9511360272119191551

namespace A309555

/-- `A003991(n+1)+2-A003056(n)` -/
def P9511360272119191551.Spec : Prop :=
  ∀ n, P9511360272119191551.a n = A309555 n

end A309555

/-! ## A309555.P722007855691416007

`A129312(n+1)+2-A059036(n)`
-/

namespace A309555.P722007855691416007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129312 (n + 1) + (2 - A059036 n)

end

end A309555.P722007855691416007

namespace A309555

/-- `A129312(n+1)+2-A059036(n)` -/
def P722007855691416007.Spec : Prop :=
  ∀ n, P722007855691416007.a n = A309555 n

end A309555

/-! ## A309555.P12267912821824204813

`A057145(n+2)+2-A139600(n)`
-/

namespace A309555.P12267912821824204813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057145 (n + 2) + (2 - A139600 n)

end

end A309555.P12267912821824204813

namespace A309555

/-- `A057145(n+2)+2-A139600(n)` -/
def P12267912821824204813.Spec : Prop :=
  ∀ n, P12267912821824204813.a n = A309555 n

end A309555

/-!
# A309557: Number triangle with T(n,k) = 2 + 3*n - 2*k + 2*k*(n-k) for n >= 0, 0 <= k <= n.

The programs for A309557, the canonical program `A309557.P6394933625690260118` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A309557 has offset 0).

The definition of A309557 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A309557.P6394933625690260118

`A128226(n+1)+1`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A309557

/-- `A128226(n+1)+1` -/
def P6394933625690260118.Spec : Prop :=
  ∀ n, P6394933625690260118.a n = A309557 n

theorem P6394933625690260118.correct : P6394933625690260118.Spec := by
  intro n
  simp only [A309557]

end A309557

/-! ## A309557.P12137483768863865364

`A129312(n+1)+A099375(n)`
-/

namespace A309557.P12137483768863865364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129312 (n + 1) + A099375 n

end

end A309557.P12137483768863865364

namespace A309557

/-- `A129312(n+1)+A099375(n)` -/
def P12137483768863865364.Spec : Prop :=
  ∀ n, P12137483768863865364.a n = A309557 n

end A309557

/-! ## A309557.P13757457759857697969

`A099375(n)+A141387(n)+1`
-/

namespace A309557.P13757457759857697969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n + (A141387 n + 1)

end

end A309557.P13757457759857697969

namespace A309557

/-- `A099375(n)+A141387(n)+1` -/
def P13757457759857697969.Spec : Prop :=
  ∀ n, P13757457759857697969.a n = A309557 n

end A309557

/-! ## A309557.P6362787184337271010

`A212012(n+1)+A141387(n)`
-/

namespace A309557.P6362787184337271010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212012 (n + 1) + A141387 n

end

end A309557.P6362787184337271010

namespace A309557

/-- `A212012(n+1)+A141387(n)` -/
def P6362787184337271010.Spec : Prop :=
  ∀ n, P6362787184337271010.a n = A309557 n

end A309557

/-! ## A309557.P4971678772262096174

`A141429(n+1)+A094053(n+1)`
-/

namespace A309557.P4971678772262096174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141429 (n + 1) + A094053 (n + 1)

end

end A309557.P4971678772262096174

namespace A309557

/-- `A141429(n+1)+A094053(n+1)` -/
def P4971678772262096174.Spec : Prop :=
  ∀ n, P4971678772262096174.a n = A309557 n

end A309557

/-! ## A309557.P16224280278148920275

`A131914(n+1)+A130154(n+1)`
-/

namespace A309557.P16224280278148920275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131914 (n + 1) + A130154 (n + 1)

end

end A309557.P16224280278148920275

namespace A309557

/-- `A131914(n+1)+A130154(n+1)` -/
def P16224280278148920275.Spec : Prop :=
  ∀ n, P16224280278148920275.a n = A309557 n

end A309557

/-! ## A309557.P3082202383987139361

`A114327(n)+2*A003991(n+1)`
-/

namespace A309557.P3082202383987139361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114327 n + 2 * A003991 (n + 1)

end

end A309557.P3082202383987139361

namespace A309557

/-- `A114327(n)+2*A003991(n+1)` -/
def P3082202383987139361.Spec : Prop :=
  ∀ n, P3082202383987139361.a n = A309557 n

end A309557

/-! ## A309557.P8247029520528560359

`A141387(n)+2*A004736(n+1)`
-/

namespace A309557.P8247029520528560359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141387 n + 2 * A004736 (n + 1)

end

end A309557.P8247029520528560359

namespace A309557

/-- `A141387(n)+2*A004736(n+1)` -/
def P8247029520528560359.Spec : Prop :=
  ∀ n, P8247029520528560359.a n = A309557 n

end A309557

/-! ## A309557.P10114702932802873212

`A094053(n+1)+A127738(n+1)+1`
-/

namespace A309557.P10114702932802873212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094053 (n + 1) + (A127738 (n + 1) + 1)

end

end A309557.P10114702932802873212

namespace A309557

/-- `A094053(n+1)+A127738(n+1)+1` -/
def P10114702932802873212.Spec : Prop :=
  ∀ n, P10114702932802873212.a n = A309557 n

end A309557

/-! ## A309557.P13840543662150256273

`A003057(n+2)+2*A094053(n+1)`
-/

namespace A309557.P13840543662150256273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003057 (n + 2) + 2 * A094053 (n + 1)

end

end A309557.P13840543662150256273

namespace A309557

/-- `A003057(n+2)+2*A094053(n+1)` -/
def P13840543662150256273.Spec : Prop :=
  ∀ n, P13840543662150256273.a n = A309557 n

end A309557

/-! ## A309557.P3226558607938322269

`A000463(A099375(n))+A002260(n+1)*A099375(n)`
-/

namespace A309557.P3226558607938322269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (A099375 n).toNat + A002260 (n + 1) * A099375 n

end

end A309557.P3226558607938322269

namespace A309557

/-- `A000463(A099375(n))+A002260(n+1)*A099375(n)` -/
def P3226558607938322269.Spec : Prop :=
  ∀ n, P3226558607938322269.a n = A309557 n

end A309557

/-! ## A309557.P16160382994720530744

`A004736(n+1)+A104633(n+1)-A062707(n+1)`
-/

namespace A309557.P16160382994720530744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1) + (A104633 (n + 1) - A062707 (n + 1))

end

end A309557.P16160382994720530744

namespace A309557

/-- `A004736(n+1)+A104633(n+1)-A062707(n+1)` -/
def P16160382994720530744.Spec : Prop :=
  ∀ n, P16160382994720530744.a n = A309557 n

end A309557

/-! ## A309557.P15028774694722777341

`A141429(n+1)+A003991(n+2)-A004736(n+2)`
-/

namespace A309557.P15028774694722777341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141429 (n + 1) + (A003991 (n + 2) - A004736 (n + 2))

end

end A309557.P15028774694722777341

namespace A309557

/-- `A141429(n+1)+A003991(n+2)-A004736(n+2)` -/
def P15028774694722777341.Spec : Prop :=
  ∀ n, P15028774694722777341.a n = A309557 n

end A309557

/-! ## A309557.P555982758914446103

`A020725(A128226(n+1))`
-/

namespace A309557.P555982758914446103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A128226 (n + 1)).toNat

end

end A309557.P555982758914446103

namespace A309557

/-- `A020725(A128226(n+1))` -/
def P555982758914446103.Spec : Prop :=
  ∀ n, P555982758914446103.a n = A309557 n

end A309557

/-! ## A309557.P10859952016519752348

`A141387(comp[∑[n]])+1`
-/

namespace A309557.P10859952016519752348
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141387 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) + 1

end

end A309557.P10859952016519752348

namespace A309557

/-- `A141387(comp[∑[n]])+1` -/
def P10859952016519752348.Spec : Prop :=
  ∀ n, P10859952016519752348.a n = A309557 n

end A309557

/-! ## A309557.P9717428984933010956

`A129312(A080036(n+1))`
-/

namespace A309557.P9717428984933010956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129312 (A080036 (n + 1)).toNat

end

end A309557.P9717428984933010956

namespace A309557

/-- `A129312(A080036(n+1))` -/
def P9717428984933010956.Spec : Prop :=
  ∀ n, P9717428984933010956.a n = A309557 n

end A309557

/-!
# A309559: Triangle read by rows: T(n,k) = 1 + n + k^2/2 - k/2 + k*(n-k), n >= 0, 0 <= k <= n.

The programs for A309559, the canonical program `A309559.P17554986835767981470` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A309559 has offset 0).

The definition of A309559 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A309559.P17554986835767981470

`1+A141418(n+1)`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A309559

/-- `1+A141418(n+1)` -/
def P17554986835767981470.Spec : Prop :=
  ∀ n, P17554986835767981470.a n = A309559 n

theorem P17554986835767981470.correct : P17554986835767981470.Spec := by
  intro n
  simp only [A309559]

end A309559

/-! ## A309559.P2215307117177562851

`A087401(n)+∑[char[∑[n]]]`
-/

namespace A309559.P2215307117177562851
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087401 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A309559.P2215307117177562851

namespace A309559

/-- `A087401(n)+∑[char[∑[n]]]` -/
def P2215307117177562851.Spec : Prop :=
  ∀ n, P2215307117177562851.a n = A309559 n

end A309559

/-! ## A309559.P9271196683585015814

`A303273(n)+∑[char[∑[n+1]]]`
-/

namespace A309559.P9271196683585015814
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303273 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A309559.P9271196683585015814

namespace A309559

/-- `A303273(n)+∑[char[∑[n+1]]]` -/
def P9271196683585015814.Spec : Prop :=
  ∀ n, P9271196683585015814.a n = A309559 n

end A309559

/-! ## A309559.P10776951507255931147

`A003056(n)+A087401(n)+1`
-/

namespace A309559.P10776951507255931147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 n + (A087401 n + 1)

end

end A309559.P10776951507255931147

namespace A309559

/-- `A003056(n)+A087401(n)+1` -/
def P10776951507255931147.Spec : Prop :=
  ∀ n, P10776951507255931147.a n = A309559 n

end A309559

/-! ## A309559.P8067268141678053145

`A070543(n+1)-A059036(n)`
-/

namespace A309559.P8067268141678053145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070543 (n + 1) - A059036 n

end

end A309559.P8067268141678053145

namespace A309559

/-- `A070543(n+1)-A059036(n)` -/
def P8067268141678053145.Spec : Prop :=
  ∀ n, P8067268141678053145.a n = A309559 n

end A309559

/-! ## A309559.P1807135036020401952

`A141419(n+1)-A002262(n)`
-/

namespace A309559.P1807135036020401952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141419 (n + 1) - A002262 n

end

end A309559.P1807135036020401952

namespace A309559

/-- `A141419(n+1)-A002262(n)` -/
def P1807135036020401952.Spec : Prop :=
  ∀ n, P1807135036020401952.a n = A309559 n

end A309559

/-! ## A309559.P10774660805486029214

`A081493(n+1)-A112367(n)`
-/

namespace A309559.P10774660805486029214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081493 (n + 1) - A112367 n

end

end A309559.P10774660805486029214

namespace A309559

/-- `A081493(n+1)-A112367(n)` -/
def P10774660805486029214.Spec : Prop :=
  ∀ n, P10774660805486029214.a n = A309559 n

end A309559

/-! ## A309559.P16387464734929748889

`A193973(n)-A158405(n+1)`
-/

namespace A309559.P16387464734929748889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193973 n - A158405 (n + 1)

end

end A309559.P16387464734929748889

namespace A309559

/-- `A193973(n)-A158405(n+1)` -/
def P16387464734929748889.Spec : Prop :=
  ∀ n, P16387464734929748889.a n = A309559 n

end A309559

/-! ## A309559.P14826275855784003304

`A094053(n+1)+A112367(n)+1`
-/

namespace A309559.P14826275855784003304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094053 (n + 1) + (A112367 n + 1)

end

end A309559.P14826275855784003304

namespace A309559

/-- `A094053(n+1)+A112367(n)+1` -/
def P14826275855784003304.Spec : Prop :=
  ∀ n, P14826275855784003304.a n = A309559 n

end A309559

/-! ## A309559.P6416474748952860857

`A105020(n)+1-A141419(n+1)`
-/

namespace A309559.P6416474748952860857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105020 n + (1 - A141419 (n + 1))

end

end A309559.P6416474748952860857

namespace A309559

/-- `A105020(n)+1-A141419(n+1)` -/
def P6416474748952860857.Spec : Prop :=
  ∀ n, P6416474748952860857.a n = A309559 n

end A309559

/-! ## A309559.P15047502409892312275

`A141419(n+1)+A057944(n)-n`
-/

namespace A309559.P15047502409892312275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141419 (n + 1) + (A057944 n - (n : ℤ))

end

end A309559.P15047502409892312275

namespace A309559

/-- `A141419(n+1)+A057944(n)-n` -/
def P15047502409892312275.Spec : Prop :=
  ∀ n, P15047502409892312275.a n = A309559 n

end A309559

/-! ## A309559.P2791939614394553890

`A141419(n+1)+1-A002260(n+1)`
-/

namespace A309559.P2791939614394553890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141419 (n + 1) + (1 - A002260 (n + 1))

end

end A309559.P2791939614394553890

namespace A309559

/-- `A141419(n+1)+1-A002260(n+1)` -/
def P2791939614394553890.Spec : Prop :=
  ∀ n, P2791939614394553890.a n = A309559 n

end A309559

/-! ## A309559.P11328609176563076731

`A061579(n)+1-C(A004736(n+1), 2)`
-/

namespace A309559.P11328609176563076731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061579 n + (1 - (Nat.choose (A004736 (n + 1)).toNat 2 : ℤ))

end

end A309559.P11328609176563076731

namespace A309559

/-- `A061579(n)+1-C(A004736(n+1), 2)` -/
def P11328609176563076731.Spec : Prop :=
  ∀ n, P11328609176563076731.a n = A309559 n

end A309559

/-! ## A309559.P611072022129534362

`A038722(n+1)-A000217(A025581(n))`
-/

namespace A309559.P611072022129534362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038722 (n + 1) - A000217 (A025581 n).toNat

end

end A309559.P611072022129534362

namespace A309559

/-- `A038722(n+1)-A000217(A025581(n))` -/
def P611072022129534362.Spec : Prop :=
  ∀ n, P611072022129534362.a n = A309559 n

end A309559

/-! ## A309559.P11538607774950586077

`A061579(n)+1-A000217(A025581(n))`
-/

namespace A309559.P11538607774950586077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061579 n + (1 - A000217 (A025581 n).toNat)

end

end A309559.P11538607774950586077

namespace A309559

/-- `A061579(n)+1-A000217(A025581(n))` -/
def P11538607774950586077.Spec : Prop :=
  ∀ n, P11538607774950586077.a n = A309559 n

end A309559

/-! ## A309559.P8829075071318723774

`∑[A023531(n)]+A303273(n)-A023531(n)`
-/

namespace A309559.P8829075071318723774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023531 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (A303273 n - A023531 n)

end

end A309559.P8829075071318723774

namespace A309559

/-- `∑[A023531(n)]+A303273(n)-A023531(n)` -/
def P8829075071318723774.Spec : Prop :=
  ∀ n, P8829075071318723774.a n = A309559 n

end A309559

/-! ## A309559.P2754597649760913576

`A075362(n+1)+1-A000217(A002260(n+1))`
-/

namespace A309559.P2754597649760913576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075362 (n + 1) + (1 - A000217 (A002260 (n + 1)).toNat)

end

end A309559.P2754597649760913576

namespace A309559

/-- `A075362(n+1)+1-A000217(A002260(n+1))` -/
def P2754597649760913576.Spec : Prop :=
  ∀ n, P2754597649760913576.a n = A309559 n

end A309559

/-! ## A309559.P6276283789400063329

`A038722(n+1)-A000217(A004736(n+1)-1)`
-/

namespace A309559.P6276283789400063329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038722 (n + 1) - A000217 (A004736 (n + 1) - 1).toNat

end

end A309559.P6276283789400063329

namespace A309559

/-- `A038722(n+1)-A000217(A004736(n+1)-1)` -/
def P6276283789400063329.Spec : Prop :=
  ∀ n, P6276283789400063329.a n = A309559 n

end A309559

/-! ## A309559.P17882598722765383397

`A081493(n+1)+A303273(n)-A076110(n+1)`
-/

namespace A309559.P17882598722765383397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081493 (n + 1) + (A303273 n - A076110 (n + 1))

end

end A309559.P17882598722765383397

namespace A309559

/-- `A081493(n+1)+A303273(n)-A076110(n+1)` -/
def P17882598722765383397.Spec : Prop :=
  ∀ n, P17882598722765383397.a n = A309559 n

end A309559

/-! ## A309559.P5772614080288514728

`A162610(n+1)+A303273(n)-A081493(n+1)`
-/

namespace A309559.P5772614080288514728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162610 (n + 1) + (A303273 n - A081493 (n + 1))

end

end A309559.P5772614080288514728

namespace A309559

/-- `A162610(n+1)+A303273(n)-A081493(n+1)` -/
def P5772614080288514728.Spec : Prop :=
  ∀ n, P5772614080288514728.a n = A309559 n

end A309559

/-!
# A309560: a(1) = a(2) = 1, a(3) = 2, a(4) = 3, a(5) = 5, a(6) = a(7) = 6, a(8) = 7; a(n) = a(n-a(n-1)) + a(n-a(n-2)) + a(n-a(n-3)) + a(n-a(n-4)) for n > 8.

The programs for A309560, the canonical program `A309560.P4273250678440889020` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A309560 has offset 1).

The definition of A309560 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-a(n-1))+a(n-a(n-2))+a(n-a(n-3))+a(n-a(n-4))` (program `A309560.P4273250678440889020`, by `A309560.P4273250678440889020.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A309560.P4273250678440889020

`a(n-a(n-1))+a(n-a(n-2))+a(n-a(n-3))+a(n-a(n-4))` with `a(0)=1, a(1)=1, a(2)=2, a(3)=3, a(4)=5, a(5)=6, a(6)=6, a(7)=7`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A309560

/-- `a(n-a(n-1))+a(n-a(n-2))+a(n-a(n-3))+a(n-a(n-4))` -/
def P4273250678440889020.Spec : Prop :=
  ∀ n, (P4273250678440889020.a n : ℤ) = A309560 (n + 1)

theorem P4273250678440889020.correct : P4273250678440889020.Spec := by
  intro n
  simp only [A309560, Nat.add_sub_cancel]

end A309560

/-!
# A309561: Total sum of prime parts in all compositions of n.

The programs for A309561, there is no canonical definition to state claims against.
-/

/-! ## A309561.P560817349930661156

`A328090(A301253(n))`
-/

namespace A309561.P560817349930661156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328090 (A301253 n).toNat

end

end A309561.P560817349930661156

/-! ## A309561.P12344836589268108853

`A116939(A052770(n))+∑[∑[n]]-n`
-/

namespace A309561.P12344836589268108853
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116939 (A052770 n).toNat + (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (n : ℤ))

end

end A309561.P12344836589268108853

/-! ## A309561.P10322774223557285795

`A344857(n+1)+A269517(A344857(n+1))`
-/

namespace A309561.P10322774223557285795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344857 (n + 1) + A269517 (A344857 (n + 1)).toNat

end

end A309561.P10322774223557285795

/-!
# A309563: Number of cyclic permutations of length n that avoid the patterns 123 and 231.

The programs for A309563, there is no canonical definition to state claims against.
-/

/-! ## A309563.P13840034226757718179

`A277872(A266591(n)+A172285(n))`
-/

namespace A309563.P13840034226757718179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277872 (A266591 n + A172285 n).toNat

end

end A309563.P13840034226757718179

/-! ## A309563.P4575967534961264219

`A227481(n)*A277872(A172285(n))`
-/

namespace A309563.P4575967534961264219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227481 n * A277872 (A172285 n).toNat

end

end A309563.P4575967534961264219

/-! ## A309563.P5072356218045264333

`A277872(A172285(n)+log2(A277872(n)))`
-/

namespace A309563.P5072356218045264333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277872 (SequenceMachineLib.roundAway ((A172285 n : ℝ) + Real.logb 2 (A277872 n : ℝ))).toNat

end

end A309563.P5072356218045264333

/-! ## A309563.P3036580779457249451

`A277872(A172285(n)-Δ[A277872(n)])`
-/

namespace A309563.P3036580779457249451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277872 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277872 (A172285 n - (f1 (n + 1) - f1 n)).toNat

end

end A309563.P3036580779457249451

/-! ## A309563.P7316451515342023858

`A277872(A172285(n)+A277872(n)-1)`
-/

namespace A309563.P7316451515342023858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277872 (A172285 n + (A277872 n - 1)).toNat

end

end A309563.P7316451515342023858

/-!
# A309567: a(1) = 4, a(2) = 2, a(3) = 5, a(4) = 3, a(5) = 1; a(n) = a(n-a(n-1)) + a(n-a(n-4)) for n > 5.

The programs for A309567, the canonical program `A309567.P17434458110307902554` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A309567 has offset 1).

The definition of A309567 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-a(n-1))+a(n-a(n-4))` (program `A309567.P17434458110307902554`, by `A309567.P17434458110307902554.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A309567.P17434458110307902554

`a(n-a(n-1))+a(n-a(n-4))` with `a(0)=4, a(1)=2, a(2)=5, a(3)=3, a(4)=1`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A309567

/-- `a(n-a(n-1))+a(n-a(n-4))` -/
def P17434458110307902554.Spec : Prop :=
  ∀ n, (P17434458110307902554.a n : ℤ) = A309567 (n + 1)

theorem P17434458110307902554.correct : P17434458110307902554.Spec := by
  intro n
  simp only [A309567, Nat.add_sub_cancel]

end A309567

/-!
# A309568: Bi-unitary k-hyperperfect numbers: numbers m such that m = 1 + k * (bsigma(m) - m - 1) where bsigma(m) is the sum of bi-unitary divisors of m (A188999) and k >= 1 is an integer.

The programs for A309568, there is no canonical definition to state claims against.
-/

/-! ## A309568.P1570989526114751951

`A225150(lt[A225138(n+1), A225152(3*n+1)])`
-/

namespace A309568.P1570989526114751951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225138 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225152 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225150 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A309568.P1570989526114751951

/-! ## A309568.P11298551927946148643

`A225150(lt[A225152(3*(n+1)), A225118(n+2)])`
-/

namespace A309568.P11298551927946148643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225152 (3 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225118 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225150 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A309568.P11298551927946148643

/-! ## A309568.P2465795491048169281

`∩[A048107(n+1), A225150(n+1)]`
-/

namespace A309568.P2465795491048169281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048107 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225150 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A309568.P2465795491048169281

/-! ## A309568.P18434145288081867066

`A225150(lt[A225121(n), A225118(n+2)])`
-/

namespace A309568.P18434145288081867066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225121 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225118 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225150 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A309568.P18434145288081867066

/-!
# A309569: Digits of the 10-adic integer (11/3)^(1/3).

The programs for A309569, there is no canonical definition to state claims against.
-/

/-! ## A309569.P15432109415329637434

`A225401(n)+A225410(n)-A309641(n)`
-/

namespace A309569.P15432109415329637434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225401 n + (A225410 n - A309641 n)

end

end A309569.P15432109415329637434

/-! ## A309569.P8890162431127583987

`A225402(n)+A225411(n)-A309641(n)`
-/

namespace A309569.P8890162431127583987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225402 n + (A225411 n - A309641 n)

end

end A309569.P8890162431127583987

/-! ## A309569.P11250400481636956296

`A225405(n)+A225408(n)-A309641(n)`
-/

namespace A309569.P11250400481636956296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225405 n + (A225408 n - A309641 n)

end

end A309569.P11250400481636956296

/-! ## A309569.P15968801600593953954

`A225406(n)+A225409(n)-A309641(n)`
-/

namespace A309569.P15968801600593953954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225406 n + (A225409 n - A309641 n)

end

end A309569.P15968801600593953954

/-! ## A309569.P14451275191687347859

`A309570(n)+A309640(n)-A309641(n)`
-/

namespace A309569.P14451275191687347859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309570 n + (A309640 n - A309641 n)

end

end A309569.P14451275191687347859

/-! ## A309569.P9918721880462386534

`A309595(n)+A309614(n)-A309641(n)`
-/

namespace A309569.P9918721880462386534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309595 n + (A309614 n - A309641 n)

end

end A309569.P9918721880462386534

/-! ## A309569.P9225018482445905800

`A309609(n)+A309612(n)-A309641(n)`
-/

namespace A309569.P9225018482445905800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309609 n + (A309612 n - A309641 n)

end

end A309569.P9225018482445905800

/-! ## A309569.P7166725167598024840

`A309610(n)+A309611(n)-A309641(n)`
-/

namespace A309569.P7166725167598024840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309610 n + (A309611 n - A309641 n)

end

end A309569.P7166725167598024840

/-! ## A309569.P18071495865666811456

`A309602(n)+A309646(n)-A309641(n)`
-/

namespace A309569.P18071495865666811456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309602 n + (A309646 n - A309641 n)

end

end A309569.P18071495865666811456

/-! ## A309569.P11946184623368029105

`A153042(n+1)+A225412(n)-A309641(n)`
-/

namespace A309569.P11946184623368029105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153042 (n + 1) + (A225412 n - A309641 n)

end

end A309569.P11946184623368029105

/-! ## A309569.P11186466712263021908

`A225404(n+1)+A225407(n)-A309641(n)`
-/

namespace A309569.P11186466712263021908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225404 (n + 1) + (A225407 n - A309641 n)

end

end A309569.P11186466712263021908

/-!
# A309570: Digits of the 10-adic integer (17/3)^(1/3).

The programs for A309570, there is no canonical definition to state claims against.
-/

/-! ## A309570.P1371554175438969525

`A225401(n)+A225410(n)-A309640(n)`
-/

namespace A309570.P1371554175438969525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225401 n + (A225410 n - A309640 n)

end

end A309570.P1371554175438969525

/-! ## A309570.P9043481972420123762

`A225402(n)+A225411(n)-A309640(n)`
-/

namespace A309570.P9043481972420123762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225402 n + (A225411 n - A309640 n)

end

end A309570.P9043481972420123762

/-! ## A309570.P2906772896542972116

`A225405(n)+A225408(n)-A309640(n)`
-/

namespace A309570.P2906772896542972116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225405 n + (A225408 n - A309640 n)

end

end A309570.P2906772896542972116

/-! ## A309570.P10105076890706530798

`A225406(n)+A225409(n)-A309640(n)`
-/

namespace A309570.P10105076890706530798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225406 n + (A225409 n - A309640 n)

end

end A309570.P10105076890706530798

/-! ## A309570.P13334630309648018213

`A153042(n+1)+A225412(n)-A309640(n)`
-/

namespace A309570.P13334630309648018213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153042 (n + 1) + (A225412 n - A309640 n)

end

end A309570.P13334630309648018213

/-! ## A309570.P16056427691468584909

`A225404(n+1)+A225407(n)-A309640(n)`
-/

namespace A309570.P16056427691468584909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225404 (n + 1) + (A225407 n - A309640 n)

end

end A309570.P16056427691468584909

/-!
# A309571: Start with a(1)=1; thereafter the sequence is always extended by adding the n-th digit of the sequence to a(n) if both are of the same parity, otherwise subtracting it.

The programs for A309571, there is no canonical definition to state claims against.
-/

/-! ## A309571.P12495101149376511902

`A210023(n)-A230533(A023430(n))`
-/

namespace A309571.P12495101149376511902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210023 n - A230533 (A023430 n).toNat

end

end A309571.P12495101149376511902

/-! ## A309571.P3209311374131677128

`A210023(A055647(n)%A187829(n+1))`
-/

namespace A309571.P3209311374131677128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210023 (Int.tmod (A055647 n) (A187829 (n + 1))).toNat

end

end A309571.P3209311374131677128

/-!
# A309573: a(n) is the sum of lattice points enumerated by the square number spiral falling on the circumference of circles centered at the origin of radii n.

The programs for A309573, there is no canonical definition to state claims against.
-/

/-! ## A309573.P18132204305291872280

`A277699(A008574(n))%A130154(A001538(n))`
-/

namespace A309573.P18132204305291872280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A277699 (A008574 n).toNat) (A130154 (A001538 n).toNat)

end

end A309573.P18132204305291872280

/-! ## A309573.P6301768853608098949

`A105670(A005897(2*n))-1`
-/

namespace A309573.P6301768853608098949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105670 (A005897 (2 * n)).toNat - 1

end

end A309573.P6301768853608098949

/-! ## A309573.P2088056534220102987

`or((4*n)², A264769(A217993(n)))`
-/

namespace A309573.P2088056534220102987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((4 * n) ^ 2 : ℤ) (A264769 (A217993 n).toNat)

end

end A309573.P2088056534220102987

/-!
# A309574: n-th prime minus its ternary (base 3) reversal.

The programs for A309574, there is no canonical definition to state claims against.
-/

/-! ## A309574.P16638911913298943620

`A055947(A000040(n+1))`
-/

namespace A309574.P16638911913298943620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055947 (A000040 (n + 1)).toNat

end

end A309574.P16638911913298943620

/-! ## A309574.P15810051624866039526

`A055947(A006005(n+1))`
-/

namespace A309574.P15810051624866039526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055947 (A006005 (n + 1)).toNat

end

end A309574.P15810051624866039526

/-! ## A309574.P16073450641727187679

`A055947(A008578(n+2))`
-/

namespace A309574.P16073450641727187679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055947 (A008578 (n + 2)).toNat

end

end A309574.P16073450641727187679

/-! ## A309574.P6623013901651187080

`A055947(A075643(n+2))`
-/

namespace A309574.P6623013901651187080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055947 (A075643 (n + 2)).toNat

end

end A309574.P6623013901651187080

/-! ## A309574.P14783868989316264875

`A055947(A182986(n+2))`
-/

namespace A309574.P14783868989316264875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055947 (A182986 (n + 2)).toNat

end

end A309574.P14783868989316264875

/-! ## A309574.P7944718384056695425

`A055947(record[A006530(n+2)])`
-/

namespace A309574.P7944718384056695425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055947 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A309574.P7944718384056695425

/-! ## A309574.P9848671673843411786

`A055947(record[A020639(n+2)])`
-/

namespace A309574.P9848671673843411786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055947 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A309574.P9848671673843411786

/-! ## A309574.P10856565850759992729

`A055947(record[A014963(n+2)])`
-/

namespace A309574.P10856565850759992729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055947 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A309574.P10856565850759992729

/-! ## A309574.P13877106665657105883

`record[A014963(n+2)]-A030102(A006093(n+1)+1)`
-/

namespace A309574.P13877106665657105883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A030102 (A006093 (n + 1) + 1).toNat

end

end A309574.P13877106665657105883

/-! ## A309574.P9310747696572840489

`A055947(A160656(n+1))`
-/

namespace A309574.P9310747696572840489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055947 (A160656 (n + 1)).toNat

end

end A309574.P9310747696572840489

/-!
# A309576: Table read by rows: T(n, k) is the last k bits of n interpreted as a base-2 representation of a number and converted to decimal, 0 <= k <= A070939(n).

The programs for A309576, there is no canonical definition to state claims against.
-/

/-! ## A309576.P11070717326825851459

`and(A089161((n+1)*Δ[n^3]), A089177(n))`
-/

namespace A309576.P11070717326825851459
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A089161 ((n + 1 : ℤ) * ((f1 (n + 1) : ℤ) - (f1 n : ℤ))).toNat) (A089177 n)

end

end A309576.P11070717326825851459

/-! ## A309576.P10125561975538450466

`A007814(∑[A300955(A000041(n))])`
-/

namespace A309576.P10125561975538450466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300955 (A000041 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A309576.P10125561975538450466

/-! ## A309576.P2096086162504473664

`and(A010874(A057650(n+2)), A036891(n+1))`
-/

namespace A309576.P2096086162504473664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A010874 (A057650 (n + 2)).toNat) (A036891 (n + 1))

end

end A309576.P2096086162504473664

/-! ## A309576.P15804732795344263232

`and(A099390(n+1), A194442(A005843(2*n+1)))`
-/

namespace A309576.P15804732795344263232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A099390 (n + 1)) (A194442 (A005843 (2 * n + 1)).toNat)

end

end A309576.P15804732795344263232

/-! ## A309576.P3911440658289468622

`A259287(A193633(n+1))`
-/

namespace A309576.P3911440658289468622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259287 (A193633 (n + 1)).toNat

end

end A309576.P3911440658289468622

/-!
# A309577: Table read by rows: T(n, k) is n with the first k bits removed from its binary expansion and then converted back to decimal, for 0 <= k <= A070939(n).

The programs for A309577, there is no canonical definition to state claims against.
-/

/-! ## A309577.P11556032973459590754

`and(A001567(A249960(n+1)), A209082(n+1))`
-/

namespace A309577.P11556032973459590754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001567 (A249960 (n + 1)).toNat) (A209082 (n + 1))

end

end A309577.P11556032973459590754

/-! ## A309577.P7715215514379399057

`and(A172471(n+1), A314161(A249576(2*n+1)))`
-/

namespace A309577.P7715215514379399057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A172471 (n + 1)) (A314161 (A249576 (2 * n + 1)).toNat)

end

end A309577.P7715215514379399057

/-! ## A309577.P3577161535917854519

`A134673(comp[A134702(n+1)]+1)`
-/

namespace A309577.P3577161535917854519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134702 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134673 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1)

end

end A309577.P3577161535917854519

/-! ## A309577.P5948533310348914527

`A026820(n+1)*A186114(A264439(n+1))`
-/

namespace A309577.P5948533310348914527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026820 (n + 1) * A186114 (A264439 (n + 1)).toNat

end

end A309577.P5948533310348914527

/-! ## A309577.P585862609862373793

`A265691(n+1)*A265695(A265673(n+1))`
-/

namespace A309577.P585862609862373793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265691 (n + 1) * A265695 (A265673 (n + 1)).toNat

end

end A309577.P585862609862373793

/-!
# A309578: Multiplicative inverse of Fibonacci(prime(n)) modulo Fibonacci(prime(n+1)).

The programs for A309578, there is no canonical definition to state claims against.
-/

/-! ## A309578.P578003717331493573

`A221780(A000079(n))%A046300(3*n+4)`
-/

namespace A309578.P578003717331493573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A221780 (A000079 n).toNat) (A046300 (3 * n + 4))

end

end A309578.P578003717331493573

/-!
# A309579: Maximum principal ratio of a strongly connected digraph on n nodes.

The programs for A309579, there is no canonical definition to state claims against.
-/

/-! ## A309579.P16180748133502466746

`∑[∏[2-char[1]+n]]`
-/

namespace A309579.P16180748133502466746
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ((if ∃ j, f3 j = n then 1 else 0 : ℕ) : ℤ) + (n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A309579.P16180748133502466746

/-! ## A309579.P11001426740603266250

`∑[(n+2)*a(n-1)]+2` with `a(0)=0, a(1)=4`
-/

namespace A309579.P11001426740603266250
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 4] fun n f1 =>
  (n + 2) * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A309579.P11001426740603266250

/-! ## A309579.P3885133501947752596

`∏[n+3-(n+2)/a(n-1)]` with `a(0)=2, a(1)=3`
-/

namespace A309579.P3885133501947752596
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [2, 3] fun n f1 =>
  (n + 3 : ℚ) - (n + 2 : ℚ) / f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A309579.P3885133501947752596

/-! ## A309579.P9548890642294042636

`Δ[(n+2)*(a(n-1)-a(n-2))]` with `a(0)=0, a(1)=2`
-/

namespace A309579.P9548890642294042636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 2] fun n f1 =>
  (n + 2 : ℤ) * (f1 (n - 1) - f1 (n - 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A309579.P9548890642294042636

/-! ## A309579.P8425449964666623534

`2*A056199(n+2)`
-/

namespace A309579.P8425449964666623534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A056199 (n + 2)

end

end A309579.P8425449964666623534

/-! ## A309579.P17957570461291381169

`2*∑[ceil((n+2)!/3)]`
-/

namespace A309579.P17957570461291381169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.factorial (n + 2) : ℚ) / 3⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A309579.P17957570461291381169

/-! ## A309579.P1778516756527884421

`2*∑[round((n+2)!/3)]`
-/

namespace A309579.P1778516756527884421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.factorial (n + 2) : ℚ) / 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A309579.P1778516756527884421

/-! ## A309579.P15694659635420910340

`A007489(n+2)-A056199(n+2)`
-/

namespace A309579.P15694659635420910340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007489 (n + 2) - A056199 (n + 2)

end

end A309579.P15694659635420910340

/-!
# A309580: Primes p with 1 zero in a fundamental period of A000129 mod p.

The programs for A309580, there is no canonical definition to state claims against.
-/

/-! ## A309580.P18103319217043132790

`p?[A309583(n+1)]`
-/

namespace A309580.P18103319217043132790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309583 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A309580.P18103319217043132790

/-! ## A309580.P4592138768616453896

`record[A006530(A309583(n+2))]`
-/

namespace A309580.P4592138768616453896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A309583 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A309580.P4592138768616453896

/-! ## A309580.P9053698361276223962

`record[A020639(A309583(n+3))]`
-/

namespace A309580.P9053698361276223962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A309583 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A309580.P9053698361276223962

/-! ## A309580.P12251056252643416869

`filter[A309583(n+1), A010051(#)]`
-/

namespace A309580.P12251056252643416869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309583 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A309580.P12251056252643416869

/-! ## A309580.P6398769162115192686

`filter[A309583(n+2), A389449(#)]`
-/

namespace A309580.P6398769162115192686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309583 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A389449 (f1 j).toNat = 1) n)

end

end A309580.P6398769162115192686

/-! ## A309580.P8161949142544277891

`∩[A000040(n+1), A309583(n+1)]`
-/

namespace A309580.P8161949142544277891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309583 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A309580.P8161949142544277891

/-! ## A309580.P16250398443191134056

`∩[A038873(n+1), A309583(n+1)]`
-/

namespace A309580.P16250398443191134056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038873 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309583 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A309580.P16250398443191134056

/-! ## A309580.P11483033458187703921

`∩[A045319(n+1), A309583(n+1)]`
-/

namespace A309580.P11483033458187703921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309583 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A309580.P11483033458187703921

/-! ## A309580.P6091129353329640238

`∩[A045323(n+1), A309583(n+1)]`
-/

namespace A309580.P6091129353329640238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045323 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309583 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A309580.P6091129353329640238

/-! ## A309580.P13403027571279782061

`∩[A045344(n+1), A309583(n+1)]`
-/

namespace A309580.P13403027571279782061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309583 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A309580.P13403027571279782061

/-! ## A309580.P11708675699074564328

`∩[A045352(n+1), A309583(n+1)]`
-/

namespace A309580.P11708675699074564328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045352 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309583 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A309580.P11708675699074564328

/-! ## A309580.P12333168710128350871

`∩[A055673(n+1), A309583(n+1)]`
-/

namespace A309580.P12333168710128350871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055673 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309583 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A309580.P12333168710128350871

/-! ## A309580.P5191619339183521458

`∩[A106843(n+1), A309583(n+1)]`
-/

namespace A309580.P5191619339183521458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106843 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309583 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A309580.P5191619339183521458

/-! ## A309580.P12708897282467927971

`∩[A116974(n+1), A309583(n+1)]`
-/

namespace A309580.P12708897282467927971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116974 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309583 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A309580.P12708897282467927971

/-! ## A309580.P13426316981138601771

`∩[A132630(n+1), A309583(n+1)]`
-/

namespace A309580.P13426316981138601771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132630 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309583 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A309580.P13426316981138601771

/-! ## A309580.P11070002100309985129

`∩[A182140(n+1), A309583(n+1)]`
-/

namespace A309580.P11070002100309985129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182140 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309583 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A309580.P11070002100309985129

/-! ## A309580.P5272257755482786946

`∩[A182986(n+1), A309583(n+1)]`
-/

namespace A309580.P5272257755482786946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309583 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A309580.P5272257755482786946

/-! ## A309580.P18092709190948154953

`∩[A189710(n+1), A309583(n+1)]`
-/

namespace A309580.P18092709190948154953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189710 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309583 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A309580.P18092709190948154953

/-! ## A309580.P12984022356125115874

`∩[A270617(n+1), A309583(n+1)]`
-/

namespace A309580.P12984022356125115874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270617 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309583 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A309580.P12984022356125115874

/-! ## A309580.P3241361248449101896

`filter[A309583(n+2), A080339(#)]`
-/

namespace A309580.P3241361248449101896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309583 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080339 (f1 j).toNat = 1) n)

end

end A309580.P3241361248449101896

/-!
# A309581: Primes p with 2 zeros in a fundamental period of A000129 mod p.

The programs for A309581, there is no canonical definition to state claims against.
-/

/-! ## A309581.P12220095407709450493

`p?[A309584(n+1)]`
-/

namespace A309581.P12220095407709450493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309584 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A309581.P12220095407709450493

/-! ## A309581.P10886941988480585256

`record[A020639(A309584(n+3))]`
-/

namespace A309581.P10886941988480585256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A309584 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A309581.P10886941988480585256

/-! ## A309581.P4145243722590917020

`filter[A309584(n+1), A010051(#)]`
-/

namespace A309581.P4145243722590917020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309584 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A309581.P4145243722590917020

/-! ## A309581.P15071105040549158532

`∩[A000040(n+1), A309584(n+1)]`
-/

namespace A309581.P15071105040549158532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309584 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A309581.P15071105040549158532

/-! ## A309581.P15820141501398903991

`∩[A004139(n+1), A309584(n+1)]`
-/

namespace A309581.P15820141501398903991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309584 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A309581.P15820141501398903991

/-! ## A309581.P12658728261176465059

`∩[A006005(n+1), A309584(n+1)]`
-/

namespace A309581.P12658728261176465059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309584 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A309581.P12658728261176465059

/-! ## A309581.P6102451600581229925

`∩[A008578(n+1), A309584(n+1)]`
-/

namespace A309581.P6102451600581229925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309584 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A309581.P6102451600581229925

/-! ## A309581.P8864552191441182858

`∩[A033200(n+1), A309584(n+1)]`
-/

namespace A309581.P8864552191441182858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033200 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309584 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A309581.P8864552191441182858

/-! ## A309581.P11588386117798905243

`∩[A033203(n+1), A309584(n+1)]`
-/

namespace A309581.P11588386117798905243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033203 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309584 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A309581.P11588386117798905243

/-! ## A309581.P13038654076001448213

`∩[A042998(n+1), A309584(n+1)]`
-/

namespace A309581.P13038654076001448213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042998 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309584 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A309581.P13038654076001448213

/-! ## A309581.P9729489553113320738

`∩[A045319(n+1), A309584(n+1)]`
-/

namespace A309581.P9729489553113320738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309584 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A309581.P9729489553113320738

/-! ## A309581.P2570442458458059782

`∩[A045323(n+1), A309584(n+1)]`
-/

namespace A309581.P2570442458458059782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045323 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309584 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A309581.P2570442458458059782

/-! ## A309581.P13448309707012575856

`∩[A045403(n+1), A309584(n+1)]`
-/

namespace A309581.P13448309707012575856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045403 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309584 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A309581.P13448309707012575856

/-! ## A309581.P16390486405103629308

`∩[A045419(n+1), A309584(n+1)]`
-/

namespace A309581.P16390486405103629308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045419 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309584 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A309581.P16390486405103629308

/-! ## A309581.P14239383674508724898

`∩[A046022(n+1), A309584(n+1)]`
-/

namespace A309581.P14239383674508724898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309584 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A309581.P14239383674508724898

/-! ## A309581.P2468888295109046087

`∩[A065091(n+1), A309584(n+1)]`
-/

namespace A309581.P2468888295109046087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309584 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A309581.P2468888295109046087

/-! ## A309581.P2629174759744450001

`∩[A066542(n+1), A309584(n+1)]`
-/

namespace A309581.P2629174759744450001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066542 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309584 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A309581.P2629174759744450001

/-! ## A309581.P14068476411409593328

`∩[A085317(n+1), A309584(n+1)]`
-/

namespace A309581.P14068476411409593328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085317 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309584 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A309581.P14068476411409593328

/-! ## A309581.P18425126021271932300

`∩[A158611(n+1), A309584(n+1)]`
-/

namespace A309581.P18425126021271932300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309584 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A309581.P18425126021271932300

/-! ## A309581.P15542999167621700894

`∩[A174090(n+1), A309584(n+1)]`
-/

namespace A309581.P15542999167621700894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174090 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309584 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A309581.P15542999167621700894

/-!
# A309583: Numbers k with 1 zero in a fundamental period of A000129 mod k.

The programs for A309583, there is no canonical definition to state claims against.
-/

/-! ## A309583.P14470692885739869745

`eq[1, A214027(n+1)]+1`
-/

namespace A309583.P14470692885739869745
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214027 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A309583.P14470692885739869745

/-! ## A309583.P15199617183079952096

`eq[A175181(n+1), A214028(n+1)]+1`
-/

namespace A309583.P15199617183079952096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175181 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214028 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A309583.P15199617183079952096

/-! ## A309583.P8164569230159665362

`record[(n+1)/A214027(n+1)^A000002(n+1)]`
-/

namespace A309583.P8164569230159665362
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A214027 (n + 1) : ℚ) ^ (A000002 (n + 1) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A309583.P8164569230159665362

/-! ## A309583.P11886959213196161263

`record[(n+1)/A214027(n+1)^A006519(n+1)]`
-/

namespace A309583.P11886959213196161263
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A214027 (n + 1) : ℚ) ^ (A006519 (n + 1) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A309583.P11886959213196161263

/-! ## A309583.P14047102509465410980

`record[(n+1)/A214027(n+1)^A101296(n+1)]`
-/

namespace A309583.P14047102509465410980
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A214027 (n + 1) : ℚ) ^ (A101296 (n + 1) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A309583.P14047102509465410980

/-! ## A309583.P10152044221156722401

`record[(n+1)/A214027(n+1)]%A280648(n+1)`
-/

namespace A309583.P10152044221156722401
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A214027 (n + 1) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))) (A280648 (n + 1))

end

end A309583.P10152044221156722401

/-! ## A309583.P12844773612671308597

`eq[n, A028310(n*A214027(A028310(n)))]`
-/

namespace A309583.P12844773612671308597
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 ((n : ℤ) * A214027 (A028310 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A309583.P12844773612671308597

/-! ## A309583.P11009615912431863787

`record[A101296(n+1)/A214027(A101296(n+1))]`
-/

namespace A309583.P11009615912431863787
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A101296 (n + 1) : ℚ) / (A214027 (A101296 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A309583.P11009615912431863787

/-!
# A309584: Numbers k with 2 zeros in a fundamental period of A000129 mod k.

The programs for A309584, there is no canonical definition to state claims against.
-/

/-! ## A309584.P17703873469930110260

`eq[2, A214027(n+1)]+1`
-/

namespace A309584.P17703873469930110260
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214027 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A309584.P17703873469930110260

/-! ## A309584.P13143529248948983991

`eq[2, A214027(A028310(n))]`
-/

namespace A309584.P13143529248948983991
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214027 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A309584.P13143529248948983991

/-! ## A309584.P15563448484335792045

`A153152(eq[2, A214027(n+1)])`
-/

namespace A309584.P15563448484335792045
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214027 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A309584.P15563448484335792045

/-! ## A309584.P5520724124219619182

`eq[2, A214027(A233583(n+1))]`
-/

namespace A309584.P5520724124219619182
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214027 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A309584.P5520724124219619182

/-! ## A309584.P2926740160962065021

`eq[2, A214027(A065033(2*n))]`
-/

namespace A309584.P2926740160962065021
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214027 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A309584.P2926740160962065021

/-! ## A309584.P6142206039449344166

`eq[2, A214027(A123108(2*n))]`
-/

namespace A309584.P6142206039449344166
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214027 (A123108 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A309584.P6142206039449344166

/-! ## A309584.P12134995289422058598

`eq[2, A214027(A137734(n²))]`
-/

namespace A309584.P12134995289422058598
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214027 (A137734 (n ^ 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A309584.P12134995289422058598

/-! ## A309584.P2082249843142452657

`eq[2, A214027(A000196(A002522(n)))]`
-/

namespace A309584.P2082249843142452657
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214027 (A000196 (A002522 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A309584.P2082249843142452657

/-!
# A309585: Numbers k with 4 zeros in a fundamental period of A000129 mod k.

The programs for A309585, there is no canonical definition to state claims against.
-/

/-! ## A309585.P11582237062356699688

`eq[4, A214027(A028310(n))]`
-/

namespace A309585.P11582237062356699688
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214027 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A309585.P11582237062356699688

/-! ## A309585.P15862363178633564877

`eq[4, A214027(A093178(n))]`
-/

namespace A309585.P15862363178633564877
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214027 (A093178 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A309585.P15862363178633564877

/-! ## A309585.P7354051255907595233

`A004442(eq[4, A214027(n+1)])`
-/

namespace A309585.P7354051255907595233
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214027 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A309585.P7354051255907595233

/-! ## A309585.P16610140172548303984

`A004482(eq[4, A214027(n+1)])`
-/

namespace A309585.P16610140172548303984
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214027 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004482 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A309585.P16610140172548303984

/-! ## A309585.P1687362279655830510

`A098180(eq[4, A214027(n+1)])`
-/

namespace A309585.P1687362279655830510
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214027 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098180 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A309585.P1687362279655830510

/-! ## A309585.P8362119220902039096

`A098181(eq[4, A214027(n+1)])`
-/

namespace A309585.P8362119220902039096
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214027 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098181 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A309585.P8362119220902039096

/-! ## A309585.P1446651629388138230

`A109613(eq[4, A214027(n+1)])`
-/

namespace A309585.P1446651629388138230
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214027 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A309585.P1446651629388138230

/-! ## A309585.P14574604203791301295

`A131738(eq[4, A214027(n+1)])`
-/

namespace A309585.P14574604203791301295
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214027 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131738 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A309585.P14574604203791301295

/-! ## A309585.P12067675982353686314

`A141310(eq[4, A214027(n+1)])`
-/

namespace A309585.P12067675982353686314
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214027 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141310 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A309585.P12067675982353686314

/-! ## A309585.P5791710475079332612

`A153152(eq[4, A214027(n+1)])`
-/

namespace A309585.P5791710475079332612
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214027 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A309585.P5791710475079332612

/-!
# A309586: Primes p with 1 zero in a fundamental period of A006190 mod p.

The programs for A309586, there is no canonical definition to state claims against.
-/

/-! ## A309586.P16810069784782739745

`p?[A309591(n+1)]`
-/

namespace A309586.P16810069784782739745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309591 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A309586.P16810069784782739745

/-! ## A309586.P3250210306562617706

`record[A006530(A309591(n+2))]`
-/

namespace A309586.P3250210306562617706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A309591 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A309586.P3250210306562617706

/-! ## A309586.P11627051330861929281

`record[A020639(A309591(n+5))]`
-/

namespace A309586.P11627051330861929281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A309591 (n + 5)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A309586.P11627051330861929281

/-! ## A309586.P7730178447815891428

`filter[A309591(n+1), A010051(#)]`
-/

namespace A309586.P7730178447815891428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309591 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A309586.P7730178447815891428

/-! ## A309586.P10979129609952185274

`∩[A000040(n+1), A309591(n+1)]`
-/

namespace A309586.P10979129609952185274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309591 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A309586.P10979129609952185274

/-! ## A309586.P2655756661325179964

`∩[A045319(n+1), A309591(n+1)]`
-/

namespace A309586.P2655756661325179964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309591 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A309586.P2655756661325179964

/-! ## A309586.P6622172868160661000

`∩[A182140(n+1), A309591(n+1)]`
-/

namespace A309586.P6622172868160661000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182140 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309591 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A309586.P6622172868160661000

/-! ## A309586.P5136434517231983771

`∩[A182986(n+1), A309591(n+1)]`
-/

namespace A309586.P5136434517231983771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309591 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A309586.P5136434517231983771

/-! ## A309586.P16945705104356088463

`filter[A309591(n+2), A080339(#)]`
-/

namespace A309586.P16945705104356088463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309591 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080339 (f1 j).toNat = 1) n)

end

end A309586.P16945705104356088463

/-! ## A309586.P9171658877214641696

`∩[A247142(n+1), A309591(n+1)]`
-/

namespace A309586.P9171658877214641696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247142 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309591 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A309586.P9171658877214641696

/-! ## A309586.P8151981131006471958

`∩[A230606(n+1), A309591(n+1)]`
-/

namespace A309586.P8151981131006471958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230606 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309591 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A309586.P8151981131006471958

/-! ## A309586.P17388051233871678666

`∩[A240960(n+1), A309591(n+1)]`
-/

namespace A309586.P17388051233871678666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240960 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309591 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A309586.P17388051233871678666

/-! ## A309586.P5275578003077416860

`∩[A309591(n+1), A385492(n+1)]`
-/

namespace A309586.P5275578003077416860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309591 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385492 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A309586.P5275578003077416860

/-!
# A309587: Primes p with 2 zeros in a fundamental period of A006190 mod p.

The programs for A309587, there is no canonical definition to state claims against.
-/

/-! ## A309587.P9630286051015170798

`p?[A309592(n+1)]`
-/

namespace A309587.P9630286051015170798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309592 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A309587.P9630286051015170798

/-! ## A309587.P13541836867879803265

`filter[A309592(n+1), A010051(#)]`
-/

namespace A309587.P13541836867879803265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309592 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A309587.P13541836867879803265

/-! ## A309587.P986669537877155882

`∩[A000040(n+1), A309592(n+1)]`
-/

namespace A309587.P986669537877155882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309592 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A309587.P986669537877155882

/-! ## A309587.P7466662516176576717

`∩[A004139(n+1), A309592(n+1)]`
-/

namespace A309587.P7466662516176576717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309592 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A309587.P7466662516176576717

/-! ## A309587.P2824133584087566256

`∩[A006005(n+1), A309592(n+1)]`
-/

namespace A309587.P2824133584087566256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309592 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A309587.P2824133584087566256

/-! ## A309587.P7019111789337534386

`∩[A008578(n+1), A309592(n+1)]`
-/

namespace A309587.P7019111789337534386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309592 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A309587.P7019111789337534386

/-! ## A309587.P12417875330695674172

`∩[A045319(n+1), A309592(n+1)]`
-/

namespace A309587.P12417875330695674172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309592 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A309587.P12417875330695674172

/-! ## A309587.P16571729415652344751

`∩[A045323(n+1), A309592(n+1)]`
-/

namespace A309587.P16571729415652344751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045323 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309592 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A309587.P16571729415652344751

/-! ## A309587.P9913926411065114400

`∩[A045344(n+1), A309592(n+1)]`
-/

namespace A309587.P9913926411065114400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309592 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A309587.P9913926411065114400

/-! ## A309587.P13473615247414758221

`∩[A045419(n+1), A309592(n+1)]`
-/

namespace A309587.P13473615247414758221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045419 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309592 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A309587.P13473615247414758221

/-! ## A309587.P7182999869321080297

`∩[A046022(n+1), A309592(n+1)]`
-/

namespace A309587.P7182999869321080297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309592 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A309587.P7182999869321080297

/-! ## A309587.P10279293023799213894

`∩[A065091(n+1), A309592(n+1)]`
-/

namespace A309587.P10279293023799213894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309592 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A309587.P10279293023799213894

/-! ## A309587.P779292642756909259

`∩[A066050(n+1), A309592(n+1)]`
-/

namespace A309587.P779292642756909259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066050 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309592 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A309587.P779292642756909259

/-! ## A309587.P1930207606895155639

`∩[A067126(n+1), A309592(n+1)]`
-/

namespace A309587.P1930207606895155639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067126 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309592 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A309587.P1930207606895155639

/-! ## A309587.P4105864995934225901

`∩[A116974(n+1), A309592(n+1)]`
-/

namespace A309587.P4105864995934225901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116974 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309592 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A309587.P4105864995934225901

/-! ## A309587.P2458736412472295039

`∩[A140475(n+1), A309592(n+1)]`
-/

namespace A309587.P2458736412472295039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140475 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309592 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A309587.P2458736412472295039

/-! ## A309587.P3016115747159911296

`∩[A158611(n+1), A309592(n+1)]`
-/

namespace A309587.P3016115747159911296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309592 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A309587.P3016115747159911296

/-! ## A309587.P2438775630734842119

`∩[A161346(n+1), A309592(n+1)]`
-/

namespace A309587.P2438775630734842119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161346 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309592 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A309587.P2438775630734842119

/-! ## A309587.P12229787980050887694

`∩[A175787(n+1), A309592(n+1)]`
-/

namespace A309587.P12229787980050887694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175787 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309592 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A309587.P12229787980050887694

/-! ## A309587.P15021584895777972134

`∩[A193339(n+1), A309592(n+1)]`
-/

namespace A309587.P15021584895777972134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193339 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309592 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A309587.P15021584895777972134

/-!
# A309588: Primes p with 4 zeros in a fundamental period of A006190 mod p.

The programs for A309588, there is no canonical definition to state claims against.
-/

/-! ## A309588.P9667441643455980865

`p?[A309593(n+1)]`
-/

namespace A309588.P9667441643455980865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309593 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A309588.P9667441643455980865

/-! ## A309588.P14654459544237978913

`record[A006530(A309593(n+2))]`
-/

namespace A309588.P14654459544237978913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A309593 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A309588.P14654459544237978913

/-! ## A309588.P6101820697640477911

`filter[A309593(n+1), A010051(#)]`
-/

namespace A309588.P6101820697640477911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309593 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A309588.P6101820697640477911

/-! ## A309588.P15832845564150384083

`filter[A309593(n+1), A323152(#)]`
-/

namespace A309588.P15832845564150384083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309593 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323152 (f1 j).toNat = 1) n)

end

end A309588.P15832845564150384083

/-! ## A309588.P15003876613468602206

`filter[A309593(n+1), A323153(#)]`
-/

namespace A309588.P15003876613468602206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309593 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323153 (f1 j).toNat = 1) n)

end

end A309588.P15003876613468602206

/-! ## A309588.P15180057405038113592

`filter[A309593(n+1), A327866(#)]`
-/

namespace A309588.P15180057405038113592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309593 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A327866 (f1 j).toNat = 1) n)

end

end A309588.P15180057405038113592

/-! ## A309588.P997856031605281073

`filter[A309593(n+1), A351957(#)]`
-/

namespace A309588.P997856031605281073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309593 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A351957 (f1 j).toNat = 1) n)

end

end A309588.P997856031605281073

/-! ## A309588.P4704448031022320864

`∩[A002144(n+1), A309593(n+1)]`
-/

namespace A309588.P4704448031022320864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309593 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A309588.P4704448031022320864

/-! ## A309588.P2909948759925109936

`∩[A002313(n+1), A309593(n+1)]`
-/

namespace A309588.P2909948759925109936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002313 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309593 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A309588.P2909948759925109936

/-! ## A309588.P5128649528137154284

`∩[A042998(n+1), A309593(n+1)]`
-/

namespace A309588.P5128649528137154284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042998 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309593 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A309588.P5128649528137154284

/-! ## A309588.P13874675122110834894

`∩[A045352(n+1), A309593(n+1)]`
-/

namespace A309588.P13874675122110834894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045352 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309593 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A309588.P13874675122110834894

/-! ## A309588.P14842459062376561889

`∩[A045403(n+1), A309593(n+1)]`
-/

namespace A309588.P14842459062376561889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045403 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309593 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A309588.P14842459062376561889

/-! ## A309588.P14028171839006828619

`∩[A045442(n+1), A309593(n+1)]`
-/

namespace A309588.P14028171839006828619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045442 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309593 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A309588.P14028171839006828619

/-! ## A309588.P4444568411165321562

`∩[A049092(n+1), A309593(n+1)]`
-/

namespace A309588.P4444568411165321562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049092 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309593 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A309588.P4444568411165321562

/-! ## A309588.P3810262486603470843

`∩[A055025(n+1), A309593(n+1)]`
-/

namespace A309588.P3810262486603470843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055025 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309593 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A309588.P3810262486603470843

/-! ## A309588.P16876976741257489673

`∩[A125018(n+1), A309593(n+1)]`
-/

namespace A309588.P16876976741257489673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125018 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309593 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A309588.P16876976741257489673

/-! ## A309588.P10335771604790156649

`∩[A270617(n+1), A309593(n+1)]`
-/

namespace A309588.P10335771604790156649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270617 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309593 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A309588.P10335771604790156649

/-! ## A309588.P1413082233881920822

`A000040(record[A061395(A309593(n+1))])`
-/

namespace A309588.P1413082233881920822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A309593 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A309588.P1413082233881920822

/-! ## A309588.P12523127268433239836

`∩[A000040(n+1), A309593(n+1)]`
-/

namespace A309588.P12523127268433239836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309593 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A309588.P12523127268433239836

/-! ## A309588.P12317231408364838126

`∩[A006005(n+1), A309593(n+1)]`
-/

namespace A309588.P12317231408364838126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309593 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A309588.P12317231408364838126

/-!
# A309590: Inverse of A309589: 0-based positions in the number subsets {0, ..., 10^k - 1} written in base 10 and sorted lexicographically, for k = 1, 2, ...

The programs for A309590, there is no canonical definition to state claims against.
-/

/-! ## A309590.P6913227054242494634

`A056960(n)%A056960(A272022(2*n+5))`
-/

namespace A309590.P6913227054242494634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A056960 n) (A056960 (A272022 (2 * n + 5)).toNat)

end

end A309590.P6913227054242494634

/-! ## A309590.P7464280128435687699

`A056960(n)%A191449(A323108(n+1))`
-/

namespace A309590.P7464280128435687699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A056960 n) (A191449 (A323108 (n + 1)).toNat)

end

end A309590.P7464280128435687699

/-! ## A309590.P18378939370375547134

`A056960(n)*A267621(A267597(2*(n+1)))`
-/

namespace A309590.P18378939370375547134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056960 n * A267621 (A267597 (2 * (n + 1))).toNat

end

end A309590.P18378939370375547134

/-! ## A309590.P5928738494996912049

`A056960(n)%A036470(A004086(n))`
-/

namespace A309590.P5928738494996912049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A056960 n) (A036470 (A004086 n).toNat)

end

end A309590.P5928738494996912049

/-! ## A309590.P5621677976690961096

`A056960(n)*A168046(A085629(n+1))`
-/

namespace A309590.P5621677976690961096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056960 n * A168046 (A085629 (n + 1)).toNat

end

end A309590.P5621677976690961096

/-!
# A309591: Numbers k with 1 zero in a fundamental period of A006190 mod k.

The programs for A309591, there is no canonical definition to state claims against.
-/

/-! ## A309591.P15580885683579134403

`eq[1, A322906(n+1)]+1`
-/

namespace A309591.P15580885683579134403
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322906 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A309591.P15580885683579134403

/-! ## A309591.P5233640590328099174

`record[n/a(A322906(n))]` with `a(0)=1, a(1)=1`
-/

namespace A309591.P5233640590328099174
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  (n : ℚ) / f1 (A322906 n).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A309591.P5233640590328099174

/-! ## A309591.P6862961217703532784

`eq[0, A004532(A175182(n+1))]+1`
-/

namespace A309591.P6862961217703532784
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004532 (A175182 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A309591.P6862961217703532784

/-! ## A309591.P15846354454288530376

`record[n*A238353(a(A322906(n)))]` with `a(0)=1, a(1)=1`
-/

namespace A309591.P15846354454288530376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  (n : ℤ) * A238353 (f1 (A322906 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A309591.P15846354454288530376

/-! ## A309591.P8846146154877679078

`record[n*A323912(a(A322906(n)))]` with `a(0)=1, a(1)=1`
-/

namespace A309591.P8846146154877679078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  (n : ℤ) * A323912 (f1 (A322906 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A309591.P8846146154877679078

/-! ## A309591.P7570295974992579918

`record[A000027(n+1)/A322906(n+1)]`
-/

namespace A309591.P7570295974992579918
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000027 (n + 1) : ℚ) / (A322906 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A309591.P7570295974992579918

/-! ## A309591.P13372210025389360041

`record[A004151(n+1)/A322906(n+1)]`
-/

namespace A309591.P13372210025389360041
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004151 (n + 1) : ℚ) / (A322906 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A309591.P13372210025389360041

/-! ## A309591.P14821072490791584266

`A060791(record[(n+1)/A322906(n+1)])`
-/

namespace A309591.P14821072490791584266
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A322906 (n + 1) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060791 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A309591.P14821072490791584266

/-! ## A309591.P12629767174764071706

`record[A242603(n+1)/A322906(n+1)]`
-/

namespace A309591.P12629767174764071706
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A242603 (n + 1) : ℚ) / (A322906 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A309591.P12629767174764071706

/-! ## A309591.P13110542439210325961

`record[A008619(2*n)/A322906(n+1)]`
-/

namespace A309591.P13110542439210325961
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008619 (2 * n) : ℚ) / (A322906 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A309591.P13110542439210325961

/-! ## A309591.P3355648639976741285

`record[A008620(3*n)/A322906(n+1)]`
-/

namespace A309591.P3355648639976741285
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008620 (3 * n) : ℚ) / (A322906 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A309591.P3355648639976741285

/-! ## A309591.P2806354800113589859

`record[A005408(n)-n*A322906(n+1)]`
-/

namespace A309591.P2806354800113589859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n - (n : ℤ) * A322906 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A309591.P2806354800113589859

/-! ## A309591.P2373313997006239454

`eq[A175182(n+1), A322907(n+1)]+1`
-/

namespace A309591.P2373313997006239454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175182 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322907 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A309591.P2373313997006239454

/-! ## A309591.P911611014582557415

`record[(2-A322906(n+1))*A060791(n+1)]`
-/

namespace A309591.P911611014582557415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A322906 (n + 1)) * A060791 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A309591.P911611014582557415

/-! ## A309591.P489814233624359452

`record[(n*a(A322906(n)))%A000201(n+1)]` with `a(0)=1, a(1)=1`
-/

namespace A309591.P489814233624359452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  Int.tmod ((n : ℤ) * f1 (A322906 n).toNat) (A000201 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A309591.P489814233624359452

/-! ## A309591.P5309346524917919663

`record[A065033(n)/A322906(A065033(n))]`
-/

namespace A309591.P5309346524917919663
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A065033 n : ℚ) / (A322906 (A065033 n).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A309591.P5309346524917919663

/-! ## A309591.P6919634155481157754

`eq[n, A028310(n*A322906(A028310(n)))]`
-/

namespace A309591.P6919634155481157754
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 ((n : ℤ) * A322906 (A028310 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A309591.P6919634155481157754

/-! ## A309591.P17079629368009841305

`A000463(record[A005408(n)/A322906(n+1)])`
-/

namespace A309591.P17079629368009841305
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005408 n : ℚ) / (A322906 (n + 1) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A309591.P17079629368009841305

/-! ## A309591.P9391366126966589351

`A008611(record[A016789(n)/A322906(n+1)])`
-/

namespace A309591.P9391366126966589351
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016789 n : ℚ) / (A322906 (n + 1) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A309591.P9391366126966589351

/-!
# A309592: Numbers k with 2 zeros in a fundamental period of A006190 mod k.

The programs for A309592, there is no canonical definition to state claims against.
-/

/-! ## A309592.P6819506813803948064

`eq[2, A322906(n+1)]+1`
-/

namespace A309592.P6819506813803948064
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322906 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A309592.P6819506813803948064

/-! ## A309592.P17553870768999815986

`record[n*a(A322906(n))]` with `a(0)=7, a(1)=0, a(2)=1`
-/

namespace A309592.P17553870768999815986
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [7, 0, 1] fun n f1 =>
  n * f1 (A322906 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A309592.P17553870768999815986

/-! ## A309592.P99815709215194708

`eq[2, A322906(A028310(n))]`
-/

namespace A309592.P99815709215194708
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322906 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A309592.P99815709215194708

/-! ## A309592.P3211750360443699126

`A020725(eq[2, A322906(n+1)])`
-/

namespace A309592.P3211750360443699126
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322906 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A309592.P3211750360443699126

/-! ## A309592.P9454364189078363655

`A065475(eq[2, A322906(n+1)])`
-/

namespace A309592.P9454364189078363655
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322906 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A309592.P9454364189078363655

/-! ## A309592.P11302236530869745590

`eq[2, A322906(A065033(2*n))]`
-/

namespace A309592.P11302236530869745590
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322906 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A309592.P11302236530869745590

/-! ## A309592.P10805598224083840241

`eq[2, A322906(A123108(2*n))]`
-/

namespace A309592.P10805598224083840241
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322906 (A123108 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A309592.P10805598224083840241

/-! ## A309592.P14079668601357995860

`eq[n*a(A322906(n)), A005843(n)]` with `a(0)=1, a(1)=1`
-/

namespace A309592.P14079668601357995860
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  n * f1 (A322906 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A309592.P14079668601357995860

/-! ## A309592.P10677471655589946448

`eq[2, A322906(A233583(n+1))]`
-/

namespace A309592.P10677471655589946448
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322906 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A309592.P10677471655589946448

/-!
# A309593: Numbers k with 4 zeros in a fundamental period of A006190 mod k.

The programs for A309593, there is no canonical definition to state claims against.
-/

/-! ## A309593.P1441339189578549625

`record[n*a(A322906(n))/2]` with `a(0)=5, a(1)=1`
-/

namespace A309593.P1441339189578549625
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [5, 1] fun n f1 =>
  (n : ℚ) * f1 (A322906 n).toNat / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A309593.P1441339189578549625

/-! ## A309593.P15214999811812306722

`eq[4, A322906(A028310(n))]`
-/

namespace A309593.P15214999811812306722
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322906 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A309593.P15214999811812306722

/-! ## A309593.P16565475984346001115

`A004482(eq[4, A322906(n+1)])`
-/

namespace A309593.P16565475984346001115
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322906 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004482 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A309593.P16565475984346001115

/-! ## A309593.P10953463910814920513

`A020725(eq[4, A322906(n+1)])`
-/

namespace A309593.P10953463910814920513
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322906 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A309593.P10953463910814920513

/-! ## A309593.P10983069492477768291

`A065475(eq[4, A322906(n+1)])`
-/

namespace A309593.P10983069492477768291
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322906 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A309593.P10983069492477768291

/-! ## A309593.P3445022453874535016

`A098180(eq[4, A322906(n+1)])`
-/

namespace A309593.P3445022453874535016
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322906 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098180 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A309593.P3445022453874535016

/-! ## A309593.P18119171476212232481

`A153152(eq[4, A322906(n+1)])`
-/

namespace A309593.P18119171476212232481
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322906 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A309593.P18119171476212232481

/-! ## A309593.P2679948083940816780

`eq[4, A322906(A233583(n+1))]`
-/

namespace A309593.P2679948083940816780
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322906 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A309593.P2679948083940816780

/-! ## A309593.P14715155351513900172

`record[A004525(n*a(A322906(n)))]` with `a(0)=5, a(1)=1`
-/

namespace A309593.P14715155351513900172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [5, 1] fun n f1 =>
  A004525 ((n : ℤ) * f1 (A322906 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A309593.P14715155351513900172

/-! ## A309593.P10979498020484957183

`record[A032742(n*a(A322906(n)))]` with `a(0)=5, a(1)=1`
-/

namespace A309593.P10979498020484957183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [5, 1] fun n f1 =>
  A032742 ((n : ℤ) * f1 (A322906 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A309593.P10979498020484957183

/-! ## A309593.P9781679959523971670

`record[A065033(n*a(A322906(n)))]` with `a(0)=5, a(1)=1`
-/

namespace A309593.P9781679959523971670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [5, 1] fun n f1 =>
  A065033 ((n : ℤ) * f1 (A322906 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A309593.P9781679959523971670

/-! ## A309593.P1469956894020604222

`record[A110654(n*a(A322906(n)))]` with `a(0)=5, a(1)=1`
-/

namespace A309593.P1469956894020604222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [5, 1] fun n f1 =>
  A110654 ((n : ℤ) * f1 (A322906 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A309593.P1469956894020604222

/-! ## A309593.P3298385165491862624

`record[A004526(n*a(A322906(n)))]` with `a(0)=5, a(1)=1, a(2)=1`
-/

namespace A309593.P3298385165491862624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [5, 1, 1] fun n f1 =>
  A004526 ((n : ℤ) * f1 (A322906 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A309593.P3298385165491862624

/-! ## A309593.P7486032186971845074

`eq[4, A322906(A138153(n+1))]`
-/

namespace A309593.P7486032186971845074
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322906 (A138153 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A309593.P7486032186971845074

/-!
# A309594: Smallest members of prime triples, the sum of which results in a perfect square.

The programs for A309594, there is no canonical definition to state claims against.
-/

/-! ## A309594.P12165593250758781010

`∩[A022005(n+1), A206279(n+1)]`
-/

namespace A309594.P12165593250758781010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206279 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A309594.P12165593250758781010

/-! ## A309594.P7684401043042753884

`∩[A007529(n+1), A206279(n+1)]`
-/

namespace A309594.P7684401043042753884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007529 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206279 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A309594.P7684401043042753884

/-! ## A309594.P17854535676317153151

`∩[A139860(n+1), A206279(n+1)]`
-/

namespace A309594.P17854535676317153151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139860 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206279 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A309594.P17854535676317153151

/-! ## A309594.P1487651321523024434

`∩[A164642(n+1), A206279(n+1)]`
-/

namespace A309594.P1487651321523024434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164642 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206279 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A309594.P1487651321523024434

/-! ## A309594.P15696547828782024267

`p?[A073273(A076305(n+1))-2]`
-/

namespace A309594.P15696547828782024267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073273 (A076305 (n + 1)).toNat - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A309594.P15696547828782024267

/-!
# A309595: Digits of the 10-adic integer (-31/9)^(1/3).

The programs for A309595, there is no canonical definition to state claims against.
-/

/-! ## A309595.P12080661931203920888

`A225401(n)+A225410(n)-A309614(n)`
-/

namespace A309595.P12080661931203920888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225401 n + (A225410 n - A309614 n)

end

end A309595.P12080661931203920888

/-! ## A309595.P16192550306872605541

`A225402(n)+A225411(n)-A309614(n)`
-/

namespace A309595.P16192550306872605541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225402 n + (A225411 n - A309614 n)

end

end A309595.P16192550306872605541

/-! ## A309595.P15349153848893673683

`A225405(n)+A225408(n)-A309614(n)`
-/

namespace A309595.P15349153848893673683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225405 n + (A225408 n - A309614 n)

end

end A309595.P15349153848893673683

/-! ## A309595.P10287895420755033706

`A225406(n)+A225409(n)-A309614(n)`
-/

namespace A309595.P10287895420755033706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225406 n + (A225409 n - A309614 n)

end

end A309595.P10287895420755033706

/-! ## A309595.P11030093236849082367

`A309602(n)+A309646(n)-A309614(n)`
-/

namespace A309595.P11030093236849082367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309602 n + (A309646 n - A309614 n)

end

end A309595.P11030093236849082367

/-! ## A309595.P11668307520898848786

`A225404(n+1)+A225407(n)-A309614(n)`
-/

namespace A309595.P11668307520898848786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225404 (n + 1) + (A225407 n - A309614 n)

end

end A309595.P11668307520898848786

/-!
# A309596: If a(n) is not a term of a(0..n-1), then a(n+1) = a(n) - a(n - a(n)); otherwise a(n+1) is the number of terms equal to a(n) in a(0..n-1). Start with a(0)=0, a(1)=0.

The programs for A309596, there is no canonical definition to state claims against.
-/

/-! ## A309596.P7411865318286488194

`A344234(A296915(n+1))%6`
-/

namespace A309596.P7411865318286488194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A344234 (A296915 (n + 1)).toNat) 6

end

end A309596.P7411865318286488194

/-! ## A309596.P4209086383418026079

`A000009(A325407(3*n+2)%or(1, n))%or(1, n)`
-/

namespace A309596.P4209086383418026079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000009 (Int.tmod (A325407 (3 * n + 2)) (Nat.lor 1 n : ℤ)).toNat) (Nat.lor 1 n : ℤ)

end

end A309596.P4209086383418026079

/-! ## A309596.P14428709235484861696

`A067029(A002061(n)*A355226(n+1))`
-/

namespace A309596.P14428709235484861696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067029 (A002061 n * A355226 (n + 1)).toNat

end

end A309596.P14428709235484861696

/-! ## A309596.P8812118395371994812

`A121373(A014603(n+5))+A011973(n)`
-/

namespace A309596.P8812118395371994812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121373 (A014603 (n + 5)).toNat + A011973 n

end

end A309596.P8812118395371994812

/-! ## A309596.P1126487668027781940

`A001222(A162405(n+1)^A011973(n))`
-/

namespace A309596.P1126487668027781940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((A162405 (n + 1) : ℚ) ^ (A011973 n : ℤ))).toNat

end

end A309596.P1126487668027781940

/-!
# A309598: Number of extended self-orthogonal diagonal Latin squares of order n with the first row in ascending order.

The programs for A309598, there is no canonical definition to state claims against.
-/

/-! ## A309598.P2452743132113281748

`A309599(n+1)/(n+1)!`
-/

namespace A309598.P2452743132113281748
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A309599 (n + 1) : ℚ) / (Nat.factorial (n + 1) : ℚ)

end

end A309598.P2452743132113281748

/-! ## A309598.P11772603908053652479

`A309599(n+1)/Δ[A007489(n)]`
-/

namespace A309598.P11772603908053652479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007489 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A309599 (n + 1) : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A309598.P11772603908053652479

/-! ## A309598.P1226996817771025096

`A309599(n+1)/∏[A005496(n)]`
-/

namespace A309598.P1226996817771025096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005496 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A309599 (n + 1) : ℚ) / ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ)

end

end A309598.P1226996817771025096

/-! ## A309598.P4616266122800453607

`A309599(n+1)/ratio[A000178(n)]`
-/

namespace A309598.P4616266122800453607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000178 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A309599 (n + 1) : ℚ) / ((f1 (n + 1) : ℚ) / (f1 n : ℚ))

end

end A309598.P4616266122800453607

/-! ## A309598.P16141219885393637297

`A309599(n+1)/record[A047920(n)]`
-/

namespace A309598.P16141219885393637297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047920 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A309599 (n + 1) : ℚ) / (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ)

end

end A309598.P16141219885393637297

/-!
# A309599: Number of extended self-orthogonal diagonal Latin squares of order n.

The programs for A309599, there is no canonical definition to state claims against.
-/

/-! ## A309599.P5601890554845542029

`(n+1)!*A309598(n+1)`
-/

namespace A309599.P5601890554845542029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n + 1) : ℤ) * A309598 (n + 1)

end

end A309599.P5601890554845542029

/-! ## A309599.P2597501216365376895

`record[A084938(n)]*A309598(n+1)`
-/

namespace A309599.P2597501216365376895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084938 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A309598 (n + 1)

end

end A309599.P2597501216365376895

/-! ## A309599.P8231816103835158945

`A000142(n+1)*A309598(n+1)`
-/

namespace A309599.P8231816103835158945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 (n + 1) * A309598 (n + 1)

end

end A309599.P8231816103835158945

/-! ## A309599.P372184416594501785

`A309598(n+1)*A319551(n+1)`
-/

namespace A309599.P372184416594501785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309598 (n + 1) * A319551 (n + 1)

end

end A309599.P372184416594501785

/-! ## A309599.P11997703639298343759

`∏[A000027(n+1)]*A309598(n+1)`
-/

namespace A309599.P11997703639298343759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) * A309598 (n + 1)

end

end A309599.P11997703639298343759

