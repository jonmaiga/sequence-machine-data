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
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C038
import Seq.B000.C047
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C013
import Seq.B002.C000
import Seq.B002.C002
import Seq.B003.C000
import Seq.B003.C002
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
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

/-!
# A200503: Record (maximal) gaps between prime sextuplets (p, p+4, p+6, p+10, p+12, p+16).

The programs for A200503, there is no canonical definition to state claims against.
-/

/-! ## A200503.P1405531778554207454

`A233426(n+1)-A200504(n+1)`
-/

namespace A200503.P1405531778554207454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233426 (n + 1) - A200504 (n + 1)

end

end A200503.P1405531778554207454

/-! ## A200503.P7834433655838959369

`record[Δ[A022008(n+1)]]`
-/

namespace A200503.P7834433655838959369
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022008 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A200503.P7834433655838959369

/-! ## A200503.P17820002460047243326

`record[Δ[A143727(n+1)]]`
-/

namespace A200503.P17820002460047243326
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143727 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A200503.P17820002460047243326

/-! ## A200503.P1812771850620082281

`record[Δ[A271000(A016969(n))]]`
-/

namespace A200503.P1812771850620082281
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271000 (A016969 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A200503.P1812771850620082281

/-! ## A200503.P12070907718745175509

`record[Δ[A022007(A199004(n+1))]]`
-/

namespace A200503.P12070907718745175509
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022007 (A199004 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A200503.P12070907718745175509

/-!
# A200504: Initial primes in prime sextuplets (p, p+4, p+6, p+10, p+12, p+16) preceding the maximal gaps in A200503.

The programs for A200504, there is no canonical definition to state claims against.
-/

/-! ## A200504.P11511995809946067889

`A233426(n+1)-A200503(n+1)`
-/

namespace A200504.P11511995809946067889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233426 (n + 1) - A200503 (n + 1)

end

end A200504.P11511995809946067889

/-! ## A200504.P12967925233451329488

`A233426(n+1)-record[Δ[A022008(n+1)]]`
-/

namespace A200504.P12967925233451329488
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022008 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233426 (n + 1) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A200504.P12967925233451329488

/-! ## A200504.P16741462868084388090

`A233426(n+1)-record[A022008(n+2)-A022008(n+1)]`
-/

namespace A200504.P16741462868084388090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022008 (n + 2) - A022008 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233426 (n + 1) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A200504.P16741462868084388090

/-! ## A200504.P18141966193094681356

`A233426(n+1)-record[Δ[A143727(n+1)]]`
-/

namespace A200504.P18141966193094681356
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143727 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233426 (n + 1) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A200504.P18141966193094681356

/-! ## A200504.P3530082483288820066

`A233426(n+1)-record[Δ[A271000(6*n+1)]]`
-/

namespace A200504.P3530082483288820066
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271000 (6 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233426 (n + 1) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A200504.P3530082483288820066

/-!
# A200509: Least m>0 such that n = 9^x-y^2 (mod m) has no solution, or 0 if no such m exists.

The programs for A200509, there is no canonical definition to state claims against.
-/

/-! ## A200509.P15589245997510931327

`A200519(xor(17, A079097(n)))`
-/

namespace A200509.P15589245997510931327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200519 (Int.xor 17 (A079097 n)).toNat

end

end A200509.P15589245997510931327

/-! ## A200509.P10461104029725921011

`A200519(xor(2*n, A055646(n)))`
-/

namespace A200509.P10461104029725921011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200519 (Int.xor (2 * n : ℤ) (A055646 n)).toNat

end

end A200509.P10461104029725921011

/-! ## A200509.P11563500639767968415

`A200519(xor(n, A055646(n)+n))`
-/

namespace A200509.P11563500639767968415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200519 (Int.xor (n : ℤ) (A055646 n + (n : ℤ))).toNat

end

end A200509.P11563500639767968415

/-! ## A200509.P15245116121702723546

`A200519(xor(n, A005843(A055646(n))))`
-/

namespace A200509.P15245116121702723546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200519 (Int.xor (n : ℤ) (A005843 (A055646 n).toNat)).toNat

end

end A200509.P15245116121702723546

/-!
# A200515: Least m>0 such that n = y^2 - 5^x (mod m) has no solution, or 0 if no such m exists.

The programs for A200515, there is no canonical definition to state claims against.
-/

/-! ## A200515.P10024782273745648894

`A200505(gcd(A043320(n+1), A200512(2*n)))`
-/

namespace A200515.P10024782273745648894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200505 (Int.gcd (A043320 (n + 1)) (A200512 (2 * n)))

end

end A200515.P10024782273745648894

/-! ## A200515.P12959591749020271693

`A200505(and(A043320(n+1), A118830(n+1)))`
-/

namespace A200515.P12959591749020271693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200505 (Int.land (A043320 (n + 1)) (A118830 (n + 1))).toNat

end

end A200515.P12959591749020271693

/-! ## A200515.P8354095495147945831

`A200505(A231566(n+1)%A244363(2*(n+1)))`
-/

namespace A200515.P8354095495147945831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200505 (Int.tmod (A231566 (n + 1)) (A244363 (2 * (n + 1)))).toNat

end

end A200515.P8354095495147945831

/-! ## A200515.P12697881963840683450

`A200505(A187829(n+1))%6`
-/

namespace A200515.P12697881963840683450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A200505 (A187829 (n + 1)).toNat) 6

end

end A200515.P12697881963840683450

/-!
# A200517: Least m>0 such that n = y^2 - 7^x (mod m) has no solution, or 0 if no such m exists.

The programs for A200517, there is no canonical definition to state claims against.
-/

/-! ## A200517.P17190737007925203211

`and(A037165(A052847(n+3)), A200507(n+4))`
-/

namespace A200517.P17190737007925203211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A037165 (A052847 (n + 3)).toNat) (A200507 (n + 4))

end

end A200517.P17190737007925203211

/-! ## A200517.P1851168738566220637

`and(A200507(n+4), A249150(A000290(2*n+3)))`
-/

namespace A200517.P1851168738566220637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A200507 (n + 4)) (A249150 (A000290 (2 * n + 3)).toNat)

end

end A200517.P1851168738566220637

/-!
# A200519: Least m>0 such that n = y^2 - 9^x (mod m) has no solution, or 0 if no such m exists.

The programs for A200519, there is no canonical definition to state claims against.
-/

/-! ## A200519.P8856746406991910170

`A200509(xor(1, A187829(n+1)))`
-/

namespace A200519.P8856746406991910170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200509 (Int.xor 1 (A187829 (n + 1))).toNat

end

end A200519.P8856746406991910170

/-! ## A200519.P5573500332571000613

`A200509(A187829(n+1)-(-1)^n)`
-/

namespace A200519.P5573500332571000613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200509 (A187829 (n + 1) - (-1) ^ n).toNat

end

end A200519.P5573500332571000613

/-!
# A200521: Numbers n such that omega(n)=4 but bigomega(n)>4, i.e., having exactly 4 distinct prime factors, but at least one of these with multiplicity > 1.

The programs for A200521, the canonical program `A200521.P7808327898163543035` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A200521 has offset 1).

The definition of A200521 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3066 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A200521.P3348906734407243281

`filter[A033993(n+1), A355447(#)]`
-/

namespace A200521.P3348906734407243281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033993 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355447 (f1 j).toNat = 1) n)

end

end A200521.P3348906734407243281

namespace A200521

/-- `filter[A033993(n+1), A355447(#)]` -/
def P3348906734407243281.Spec : Prop :=
  ∀ n, P3348906734407243281.a n = A200521 (n + 1)

end A200521

/-! ## A200521.P6971748870964937021

`record[A105570(A033993(n+4))]`
-/

namespace A200521.P6971748870964937021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105570 (A033993 (n + 4)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A200521.P6971748870964937021

namespace A200521

/-- `record[A105570(A033993(n+4))]` -/
def P6971748870964937021.Spec : Prop :=
  ∀ n, P6971748870964937021.a n = A200521 (n + 1)

end A200521

/-! ## A200521.P10529966754114539974

`filter[A033993(n+1), A087049(#)]`
-/

namespace A200521.P10529966754114539974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033993 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A087049 (f1 j).toNat = 1) n)

end

end A200521.P10529966754114539974

namespace A200521

/-- `filter[A033993(n+1), A087049(#)]` -/
def P10529966754114539974.Spec : Prop :=
  ∀ n, P10529966754114539974.a n = A200521 (n + 1)

end A200521

/-! ## A200521.P4573745563235205979

`∩[A033993(n+1), A102562(n+1)]`
-/

namespace A200521.P4573745563235205979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033993 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102562 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A200521.P4573745563235205979

namespace A200521

/-- `∩[A033993(n+1), A102562(n+1)]` -/
def P4573745563235205979.Spec : Prop :=
  ∀ n, (P4573745563235205979.a n : ℤ) = A200521 (n + 1)

end A200521

/-! ## A200521.P7658199303849937254

`∩[A033993(n+1), A046304(n+1)]`
-/

namespace A200521.P7658199303849937254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033993 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046304 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A200521.P7658199303849937254

namespace A200521

/-- `∩[A033993(n+1), A046304(n+1)]` -/
def P7658199303849937254.Spec : Prop :=
  ∀ n, (P7658199303849937254.a n : ℤ) = A200521 (n + 1)

end A200521

/-! ## A200521.P3571395411549228859

`filter[A036116(n+1), A355447(#)]`
-/

namespace A200521.P3571395411549228859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036116 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355447 (f1 j).toNat = 1) n)

end

end A200521.P3571395411549228859

namespace A200521

/-- `filter[A036116(n+1), A355447(#)]` -/
def P3571395411549228859.Spec : Prop :=
  ∀ n, P3571395411549228859.a n = A200521 (n + 1)

end A200521

/-! ## A200521.P12014854946483681390

`filter[A036116(n+1), A389905(#)]`
-/

namespace A200521.P12014854946483681390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036116 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A389905 (f1 j).toNat = 1) n)

end

end A200521.P12014854946483681390

namespace A200521

/-- `filter[A036116(n+1), A389905(#)]` -/
def P12014854946483681390.Spec : Prop :=
  ∀ n, P12014854946483681390.a n = A200521 (n + 1)

end A200521

/-! ## A200521.P7808327898163543035

`∩[A036116(n+1), A102562(n+1)]`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A200521

/-- `∩[A036116(n+1), A102562(n+1)]` -/
def P7808327898163543035.Spec : Prop :=
  ∀ n, (P7808327898163543035.a n : ℤ) = A200521 (n + 1)

theorem P7808327898163543035.correct : P7808327898163543035.Spec := by
  intro n
  simp only [A200521, Nat.add_sub_cancel]

end A200521

/-! ## A200521.P18279976757133884977

`∩[A033993(n+1), A392288(n+1)]`
-/

namespace A200521.P18279976757133884977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033993 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392288 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A200521.P18279976757133884977

namespace A200521

/-- `∩[A033993(n+1), A392288(n+1)]` -/
def P18279976757133884977.Spec : Prop :=
  ∀ n, (P18279976757133884977.a n : ℤ) = A200521 (n + 1)

end A200521

/-! ## A200521.P4230945464892245315

`∩[A033993(n+1), A375055(n+1)]`
-/

namespace A200521.P4230945464892245315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033993 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375055 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A200521.P4230945464892245315

namespace A200521

/-- `∩[A033993(n+1), A375055(n+1)]` -/
def P4230945464892245315.Spec : Prop :=
  ∀ n, (P4230945464892245315.a n : ℤ) = A200521 (n + 1)

end A200521

/-! ## A200521.P5244649523426111002

`∩[A036116(n+1), A375055(n+1)]`
-/

namespace A200521.P5244649523426111002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036116 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375055 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A200521.P5244649523426111002

namespace A200521

/-- `∩[A036116(n+1), A375055(n+1)]` -/
def P5244649523426111002.Spec : Prop :=
  ∀ n, (P5244649523426111002.a n : ℤ) = A200521 (n + 1)

end A200521

/-! ## A200521.P10256309713076831546

`∩[A033993(n+1), A379336(n+1)]`
-/

namespace A200521.P10256309713076831546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033993 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379336 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A200521.P10256309713076831546

namespace A200521

/-- `∩[A033993(n+1), A379336(n+1)]` -/
def P10256309713076831546.Spec : Prop :=
  ∀ n, (P10256309713076831546.a n : ℤ) = A200521 (n + 1)

end A200521

/-! ## A200521.P15334565694676886817

`∩[A036116(n+1), A379336(n+1)]`
-/

namespace A200521.P15334565694676886817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036116 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379336 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A200521.P15334565694676886817

namespace A200521

/-- `∩[A036116(n+1), A379336(n+1)]` -/
def P15334565694676886817.Spec : Prop :=
  ∀ n, (P15334565694676886817.a n : ℤ) = A200521 (n + 1)

end A200521

/-! ## A200521.P6244919495134431374

`A065475(eq[4, A158210(n+1)])`
-/

namespace A200521.P6244919495134431374
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158210 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A200521.P6244919495134431374

namespace A200521

/-- `A065475(eq[4, A158210(n+1)])` -/
def P6244919495134431374.Spec : Prop :=
  ∀ n, P6244919495134431374.a n = A200521 (n + 1)

end A200521

/-! ## A200521.P17841429371904265352

`filter[A033993(n+1), A107078(#)]`
-/

namespace A200521.P17841429371904265352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033993 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A107078 (f1 j).toNat = 1) n)

end

end A200521.P17841429371904265352

namespace A200521

/-- `filter[A033993(n+1), A107078(#)]` -/
def P17841429371904265352.Spec : Prop :=
  ∀ n, P17841429371904265352.a n = A200521 (n + 1)

end A200521

/-!
# A200524: Least m>0 such that n = 4^x-y^2 (mod m) has no solution, or 0 if no such m exists.

The programs for A200524, there is no canonical definition to state claims against.
-/

/-! ## A200524.P8022569323432205812

`and(31, A200514(2*n²+n))`
-/

namespace A200524.P8022569323432205812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 31 (A200514 (2 * n ^ 2 + n))

end

end A200524.P8022569323432205812

/-! ## A200524.P14307004185563702383

`A200514(A014105(n))%32`
-/

namespace A200524.P14307004185563702383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A200514 (A014105 n).toNat) 32

end

end A200524.P14307004185563702383

/-! ## A200524.P11890892005376604335

`A200514(A000217(2*n))%32`
-/

namespace A200524.P11890892005376604335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A200514 (A000217 (2 * n)).toNat) 32

end

end A200524.P11890892005376604335

/-! ## A200524.P17214823215631115389

`A200514(n*A325401(2*n+1))`
-/

namespace A200524.P17214823215631115389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200514 ((n : ℤ) * A325401 (2 * n + 1)).toNat

end

end A200524.P17214823215631115389

/-! ## A200524.P12171256434345423429

`lcm(A098554(n), A200514(A014105(n)))`
-/

namespace A200524.P12171256434345423429
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A098554 n) (A200514 (A014105 n).toNat)

end

end A200524.P12171256434345423429

/-!
# A200527: Number of n X n 0..2 arrays with every row and column running average nondecreasing rightwards and downwards.

The programs for A200527, there is no canonical definition to state claims against.
-/

/-! ## A200527.P8943910687591340649

`A200534(∑[4*n]+1)`
-/

namespace A200527.P8943910687591340649
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200534 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A200527.P8943910687591340649

/-! ## A200527.P14292740931118442226

`A200534(A001844(n))+char[27]`
-/

namespace A200527.P14292740931118442226
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  27

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200534 (A001844 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A200527.P14292740931118442226

/-! ## A200527.P8229932401052984125

`record[A003982(n)*A200534(n+1)]`
-/

namespace A200527.P8229932401052984125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A200534 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A200527.P8229932401052984125

/-! ## A200527.P9473861793215985635

`record[gcd(A003987(n), A200534(n+1))]`
-/

namespace A200527.P9473861793215985635
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003987 n) (A200534 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A200527.P9473861793215985635

/-! ## A200527.P12811593707661350188

`A007318(∑[n])*A200534(A001844(n))`
-/

namespace A200527.P12811593707661350188
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A200534 (A001844 n).toNat

end

end A200527.P12811593707661350188

/-!
# A200528: Number of n X 2 0..2 arrays with every row and column running average nondecreasing rightwards and downwards.

The programs for A200528, the canonical program `A200528.P16628330415132597984` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A200528 has offset 1).

The definition of A200528 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 321 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A200528.P15707119027561359993

`A201189(n+1)+A201149(n+1)`
-/

namespace A200528.P15707119027561359993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201189 (n + 1) + A201149 (n + 1)

end

end A200528.P15707119027561359993

namespace A200528

/-- `A201189(n+1)+A201149(n+1)` -/
def P15707119027561359993.Spec : Prop :=
  ∀ n, P15707119027561359993.a n = A200528 (n + 1)

end A200528

/-! ## A200528.P16628330415132597984

`ogf((6-22x+13x^2+31x^3-38x^4-x^5+25x^6-11x^7-4x^8+4x^9)/(1-7x+16x^2-6x^3-27x^4+33x^5+3x^6-24x^7+11x^8+4x^9-4x^10))`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A200528

/-- `ogf((6-22x+13x^2+31x^3-38x^4-x^5+25x^6-11x^7-4x^8+4x^9)/(1-7x+16x^2-6x^3-27x^4+33x^5+3x^6-24x^7+11x^8+4x^9-4x^10))` -/
def P16628330415132597984.Spec : Prop :=
  ∀ n, P16628330415132597984.a n = A200528 (n + 1)

theorem P16628330415132597984.correct : P16628330415132597984.Spec := by
  intro n
  simp only [A200528, Nat.add_sub_cancel]

end A200528

/-! ## A200528.P2963598417223076359

`A200534(∑[n+1]+2)`
-/

namespace A200528.P2963598417223076359
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200534 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A200528.P2963598417223076359

namespace A200528

/-- `A200534(∑[n+1]+2)` -/
def P2963598417223076359.Spec : Prop :=
  ∀ n, P2963598417223076359.a n = A200528 (n + 1)

end A200528

/-! ## A200528.P9753071604156210906

`or(char[2], A200534(A133263(n+1)))`
-/

namespace A200528.P9753071604156210906
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A200534 (A133263 (n + 1)).toNat)

end

end A200528.P9753071604156210906

namespace A200528

/-- `or(char[2], A200534(A133263(n+1)))` -/
def P9753071604156210906.Spec : Prop :=
  ∀ n, P9753071604156210906.a n = A200528 (n + 1)

end A200528

/-! ## A200528.P4420922970330921378

`A200534(A133263(n+1))+A000007(n+1)`
-/

namespace A200528.P4420922970330921378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200534 (A133263 (n + 1)).toNat + A000007 (n + 1)

end

end A200528.P4420922970330921378

namespace A200528

/-- `A200534(A133263(n+1))+A000007(n+1)` -/
def P4420922970330921378.Spec : Prop :=
  ∀ n, P4420922970330921378.a n = A200528 (n + 1)

end A200528

/-!
# A200529: Number of nX3 0..2 arrays with every row and column running average nondecreasing rightwards and downwards.

The programs for A200529, there is no canonical definition to state claims against.
-/

/-! ## A200529.P10973592772492547063

`A201190(n+1)+A201150(n+1)`
-/

namespace A200529.P10973592772492547063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201190 (n + 1) + A201150 (n + 1)

end

end A200529.P10973592772492547063

/-! ## A200529.P3088284498807853721

`A200534(∑[n+2]+4)`
-/

namespace A200529.P3088284498807853721
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200534 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A200529.P3088284498807853721

/-! ## A200529.P17103371006939892132

`A200534(A167614(n+1))+A185284(n)`
-/

namespace A200529.P17103371006939892132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200534 (A167614 (n + 1)).toNat + A185284 n

end

end A200529.P17103371006939892132

/-! ## A200529.P3103261426896343837

`A015082(n)*A200534(A167614(n+1))`
-/

namespace A200529.P3103261426896343837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015082 n * A200534 (A167614 (n + 1)).toNat

end

end A200529.P3103261426896343837

/-! ## A200529.P4277244897372466838

`A016182(n)*A200534(A167614(n+1))`
-/

namespace A200529.P4277244897372466838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016182 n * A200534 (A167614 (n + 1)).toNat

end

end A200529.P4277244897372466838

/-!
# A200530: Number of nX4 0..2 arrays with every row and column running average nondecreasing rightwards and downwards.

The programs for A200530, there is no canonical definition to state claims against.
-/

/-! ## A200530.P13533059160520875627

`A201191(n+1)+A201151(n+1)`
-/

namespace A200530.P13533059160520875627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201191 (n + 1) + A201151 (n + 1)

end

end A200530.P13533059160520875627

/-! ## A200530.P16063223258676949621

`A200534(A141214(n)+7)`
-/

namespace A200530.P16063223258676949621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200534 (A141214 n + 7).toNat

end

end A200530.P16063223258676949621

/-! ## A200530.P17197305380886677744

`A200534(A052905(n)+9)`
-/

namespace A200530.P17197305380886677744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200534 (A052905 n + 9).toNat

end

end A200530.P17197305380886677744

/-! ## A200530.P13889444003801857879

`A200534(A055999(n)+10)`
-/

namespace A200530.P13889444003801857879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200534 (A055999 n + 10).toNat

end

end A200530.P13889444003801857879

/-! ## A200530.P212052724303337488

`A200534(A167614(n+2)+1)`
-/

namespace A200530.P212052724303337488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200534 (A167614 (n + 2) + 1).toNat

end

end A200530.P212052724303337488

/-!
# A200531: Number of n X 5 0..2 arrays with every row and column running average nondecreasing rightwards and downwards.

The programs for A200531, there is no canonical definition to state claims against.
-/

/-! ## A200531.P8604718454837649602

`A201192(n+1)+A201152(n+1)`
-/

namespace A200531.P8604718454837649602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201192 (n + 1) + A201152 (n + 1)

end

end A200531.P8604718454837649602

/-! ## A200531.P15480992819825323639

`A200534(A167499(n+3))`
-/

namespace A200531.P15480992819825323639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200534 (A167499 (n + 3)).toNat

end

end A200531.P15480992819825323639

/-! ## A200531.P6192273062917676895

`A200534(A155212(n)+13)`
-/

namespace A200531.P6192273062917676895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200534 (A155212 n + 13).toNat

end

end A200531.P6192273062917676895

/-! ## A200531.P13067907656312366182

`A200534(eq[7, A066657(n)])`
-/

namespace A200531.P13067907656312366182
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200534 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A200531.P13067907656312366182

/-! ## A200531.P13649040120127884830

`A200534(A000217(n+4)+5)`
-/

namespace A200531.P13649040120127884830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200534 (A000217 (n + 4) + 5).toNat

end

end A200531.P13649040120127884830

/-!
# A200532: Number of nX6 0..2 arrays with every row and column running average nondecreasing rightwards and downwards.

The programs for A200532, there is no canonical definition to state claims against.
-/

/-! ## A200532.P17155429038939034221

`A201193(n+1)+A201153(n+1)`
-/

namespace A200532.P17155429038939034221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201193 (n + 1) + A201153 (n + 1)

end

end A200532.P17155429038939034221

/-! ## A200532.P17326781962212674037

`A200534(∑[n+5]+16)`
-/

namespace A200532.P17326781962212674037
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200534 (∑ j ∈ Finset.range (n + 1), f1 j + 16)

end

end A200532.P17326781962212674037

/-! ## A200532.P173269425781393403

`A200534(A052905(n+3))%A289348(n+2)`
-/

namespace A200532.P173269425781393403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A200534 (A052905 (n + 3)).toNat) (A289348 (n + 2))

end

end A200532.P173269425781393403

/-!
# A200533: Number of nX7 0..2 arrays with every row and column running average nondecreasing rightwards and downwards.

The programs for A200533, there is no canonical definition to state claims against.
-/

/-! ## A200533.P1737121813342126669

`A200534(eq[11, A066657(n)])`
-/

namespace A200533.P1737121813342126669
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200534 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A200533.P1737121813342126669

/-! ## A200533.P17737227841032705472

`A200534(A027379(n+4)+10)`
-/

namespace A200533.P17737227841032705472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200534 (A027379 (n + 4) + 10).toNat

end

end A200533.P17737227841032705472

/-! ## A200533.P6970846776323369875

`A200534(eq[8, A131818(n+1)])`
-/

namespace A200533.P6970846776323369875
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200534 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A200533.P6970846776323369875

/-! ## A200533.P3265746689106856517

`A200534(A374008(n+1))`
-/

namespace A200533.P3265746689106856517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200534 (A374008 (n + 1)).toNat

end

end A200533.P3265746689106856517

/-! ## A200533.P14403259641364305217

`A200534(eq[4, A219347(n)])`
-/

namespace A200533.P14403259641364305217
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200534 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A200533.P14403259641364305217

/-!
# A200534: T(n,k)=Number of nXk 0..2 arrays with every row and column running average nondecreasing rightwards and downwards.

The programs for A200534, there is no canonical definition to state claims against.
-/

/-! ## A200534.P3523770928252432286

`A201195(n+1)+A201155(n+1)`
-/

namespace A200534.P3523770928252432286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201195 (n + 1) + A201155 (n + 1)

end

end A200534.P3523770928252432286

/-! ## A200534.P17858827478343784018

`A120951(A201155(n+1))`
-/

namespace A200534.P17858827478343784018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120951 (A201155 (n + 1)).toNat

end

end A200534.P17858827478343784018

/-! ## A200534.P15795270893804272761

`A201155(n+1)+A064990(A189389(n))`
-/

namespace A200534.P15795270893804272761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201155 (n + 1) + A064990 (A189389 n).toNat

end

end A200534.P15795270893804272761

/-! ## A200534.P14579635994088857475

`A201155(n+1)+A185274(A086645(n))`
-/

namespace A200534.P14579635994088857475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201155 (n + 1) + A185274 (A086645 n).toNat

end

end A200534.P14579635994088857475

/-! ## A200534.P8131266670359791342

`A248395(A184974(n))+A201155(n+1)`
-/

namespace A200534.P8131266670359791342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248395 (A184974 n).toNat + A201155 (n + 1)

end

end A200534.P8131266670359791342

/-!
# A200535: G.f. satisfies: A(x) = exp( Sum_{n>=1} [Sum_{k=0..2*n} C(2*n,k)^2 * x^k] / A(x)^n * x^n/n ).

The programs for A200535, the canonical program `A200535.P13205965819074131952` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A200535 has offset 0).

The definition of A200535 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A200535.P13205965819074131952

`ogf((1+2x^2+x^3+x^4+2x^5+x^7)/(1-x-x^2+x^3))`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A200535

/-- `ogf((1+2x^2+x^3+x^4+2x^5+x^7)/(1-x-x^2+x^3))` -/
def P13205965819074131952.Spec : Prop :=
  ∀ n, P13205965819074131952.a n = A200535 n

theorem P13205965819074131952.correct : P13205965819074131952.Spec := by
  intro n
  simp only [A200535]

end A200535

/-!
# A200536: Triangle, read by rows of 2*n+1 terms, where row n lists the coefficients in (1+3*x+2*x^2)^n.

The programs for A200536, there is no canonical definition to state claims against.
-/

/-! ## A200536.P7355769351884065373

`A064861(A161983(n))`
-/

namespace A200536.P7355769351884065373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064861 (A161983 n).toNat

end

end A200536.P7355769351884065373

/-! ## A200536.P12963379718761044947

`A064861(A116942(2*n))`
-/

namespace A200536.P12963379718761044947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064861 (A116942 (2 * n)).toNat

end

end A200536.P12963379718761044947

/-! ## A200536.P2313914424032419554

`A064861(A007606(n+1)-1)`
-/

namespace A200536.P2313914424032419554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064861 (A007606 (n + 1) - 1).toNat

end

end A200536.P2313914424032419554

/-! ## A200536.P12206129728622587077

`A064861(2*n-A196199(n))`
-/

namespace A200536.P12206129728622587077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064861 ((2 * n : ℤ) - A196199 n).toNat

end

end A200536.P12206129728622587077

/-! ## A200536.P10775372312408653827

`A064861(n-A196199(n)+n)`
-/

namespace A200536.P10775372312408653827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064861 ((n : ℤ) - A196199 n + (n : ℤ)).toNat

end

end A200536.P10775372312408653827

/-! ## A200536.P8812815508917489412

`A064861(n-(A196199(n)-n))`
-/

namespace A200536.P8812815508917489412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064861 ((n : ℤ) - (A196199 n - (n : ℤ))).toNat

end

end A200536.P8812815508917489412

/-! ## A200536.P15439330104521398806

`A064861(eq[1, A000034(A003056(n))])`
-/

namespace A200536.P15439330104521398806
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A003056 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064861 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A200536.P15439330104521398806

/-! ## A200536.P7425349596583675133

`A064861(lt[A169653(n+1), 0])`
-/

namespace A200536.P7425349596583675133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169653 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064861 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A200536.P7425349596583675133

/-!
# A200537: G.f. satisfies: A(x) = exp( Sum_{n>=1} [Sum_{k=0..2*n} A200536(n,k)^2 * x^k] / A(x)^n * x^n/n ), where A200536(n,k) is the coefficient of x^k in (1+3*x+2*x^2)^n.

The programs for A200537, the canonical program `A200537.P6507943179642657920` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A200537 has offset 0).

The definition of A200537 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A200537.P6507943179642657920

`ogf((1+x+5x^2+9x^3+8x^4+24x^5+20x^6+16x^7+16x^8)/(1-4x^2+4x^4))`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A200537

/-- `ogf((1+x+5x^2+9x^3+8x^4+24x^5+20x^6+16x^7+16x^8)/(1-4x^2+4x^4))` -/
def P6507943179642657920.Spec : Prop :=
  ∀ n, P6507943179642657920.a n = A200537 n

theorem P6507943179642657920.correct : P6507943179642657920.Spec := by
  intro n
  simp only [A200537]

end A200537

/-!
# A200538: Product of Jacobsthal and Motzkin numbers: a(n) = A001045(n+1)*A001006(n).

The programs for A200538, the canonical program `A200538.P6567491309627245380` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A200538 has offset 0).

The definition of A200538 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A200538.P6567491309627245380

`A001045(n+1)*A001006(n)`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A200538

/-- `A001045(n+1)*A001006(n)` -/
def P6567491309627245380.Spec : Prop :=
  ∀ n, P6567491309627245380.a n = A200538 n

theorem P6567491309627245380.correct : P6567491309627245380.Spec := by
  intro n
  simp only [A200538]

end A200538

/-! ## A200538.P84914750673099689

`∑{#}[floor(n/2), C(n-#, #)*2^#*A001006(n)]`
-/

namespace A200538.P84914750673099689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1).toNat, (Nat.choose ((n : ℤ) - (k : ℤ)).toNat k * 2 ^ k : ℤ) * A001006 n

end

end A200538.P84914750673099689

namespace A200538

/-- `∑{#}[floor(n/2), C(n-#, #)*2^#*A001006(n)]` -/
def P84914750673099689.Spec : Prop :=
  ∀ n, P84914750673099689.a n = A200538 n

end A200538

/-! ## A200538.P1553289848645807397

`∑[A078008(n)]*A001006(n)`
-/

namespace A200538.P1553289848645807397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078008 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A001006 n

end

end A200538.P1553289848645807397

namespace A200538

/-- `∑[A078008(n)]*A001006(n)` -/
def P1553289848645807397.Spec : Prop :=
  ∀ n, P1553289848645807397.a n = A200538 n

end A200538

/-! ## A200538.P9225553543369442688

`Δ[A000975(n)]*A001006(n)`
-/

namespace A200538.P9225553543369442688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000975 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A001006 n

end

end A200538.P9225553543369442688

namespace A200538

/-- `Δ[A000975(n)]*A001006(n)` -/
def P9225553543369442688.Spec : Prop :=
  ∀ n, P9225553543369442688.a n = A200538 n

end A200538

/-! ## A200538.P11132226736006258497

`Δ[A097332(n)]*A001045(n+1)`
-/

namespace A200538.P11132226736006258497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097332 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A001045 (n + 1)

end

end A200538.P11132226736006258497

namespace A200538

/-- `Δ[A097332(n)]*A001045(n+1)` -/
def P11132226736006258497.Spec : Prop :=
  ∀ n, P11132226736006258497.a n = A200538 n

end A200538

/-! ## A200538.P3522719305789055070

`A001006(n)*A073370(A000217(n))`
-/

namespace A200538.P3522719305789055070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001006 n * A073370 (A000217 n).toNat

end

end A200538.P3522719305789055070

namespace A200538

/-- `A001006(n)*A073370(A000217(n))` -/
def P3522719305789055070.Spec : Prop :=
  ∀ n, P3522719305789055070.a n = A200538 n

end A200538

/-! ## A200538.P7151518265787422228

`A001006(n)/A000108(n)*A200375(n)`
-/

namespace A200538.P7151518265787422228
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001006 n : ℚ) / (A000108 n : ℚ) * (A200375 n : ℚ)

end

end A200538.P7151518265787422228

namespace A200538

/-- `A001006(n)/A000108(n)*A200375(n)` -/
def P7151518265787422228.Spec : Prop :=
  ∀ n, P7151518265787422228.a n = (A200538 n : ℚ)

end A200538

/-!
# A200539: Product of Fibonacci and Motzkin numbers: a(n) = A000045(n+1)*A001006(n).

The programs for A200539, the canonical program `A200539.P3878912618294695387` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A200539 has offset 0).

The definition of A200539 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A200539.P3878912618294695387

`A000045(n+1)*A001006(n)`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A200539

/-- `A000045(n+1)*A001006(n)` -/
def P3878912618294695387.Spec : Prop :=
  ∀ n, P3878912618294695387.a n = A200539 n

theorem P3878912618294695387.correct : P3878912618294695387.Spec := by
  intro n
  simp only [A200539]

end A200539

/-! ## A200539.P5491147985313256768

`A001006(n)*A212804(n+2)`
-/

namespace A200539.P5491147985313256768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001006 n * A212804 (n + 2)

end

end A200539.P5491147985313256768

namespace A200539

/-- `A001006(n)*A212804(n+2)` -/
def P5491147985313256768.Spec : Prop :=
  ∀ n, P5491147985313256768.a n = A200539 n

end A200539

/-! ## A200539.P1783342816665566979

`A000045(n+1)*Δ[A097332(n)]`
-/

namespace A200539.P1783342816665566979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097332 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) * (f1 (n + 1) - f1 n)

end

end A200539.P1783342816665566979

namespace A200539

/-- `A000045(n+1)*Δ[A097332(n)]` -/
def P1783342816665566979.Spec : Prop :=
  ∀ n, P1783342816665566979.a n = A200539 n

end A200539

/-! ## A200539.P4462013303139412396

`(A005043(n+1)+A005043(n))*A000045(n+1)`
-/

namespace A200539.P4462013303139412396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A005043 (n + 1) + A005043 n) * A000045 (n + 1)

end

end A200539.P4462013303139412396

namespace A200539

/-- `(A005043(n+1)+A005043(n))*A000045(n+1)` -/
def P4462013303139412396.Spec : Prop :=
  ∀ n, P4462013303139412396.a n = A200539 n

end A200539

/-! ## A200539.P9734751195340915672

`A000045(n+1)*A064189(∑[n])`
-/

namespace A200539.P9734751195340915672
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) * A064189 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A200539.P9734751195340915672

namespace A200539

/-- `A000045(n+1)*A064189(∑[n])` -/
def P9734751195340915672.Spec : Prop :=
  ∀ n, P9734751195340915672.a n = A200539 n

end A200539

/-! ## A200539.P4474953555955854340

`A000045(n+1)*A064645(∑[n])`
-/

namespace A200539.P4474953555955854340
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) * A064645 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A200539.P4474953555955854340

namespace A200539

/-- `A000045(n+1)*A064645(∑[n])` -/
def P4474953555955854340.Spec : Prop :=
  ∀ n, P4474953555955854340.a n = A200539 n

end A200539

/-! ## A200539.P13640781886271945376

`A098614(n)/A098616(n)*A200540(n)`
-/

namespace A200539.P13640781886271945376
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A098614 n : ℚ) / (A098616 n : ℚ) * (A200540 n : ℚ)

end

end A200539.P13640781886271945376

namespace A200539

/-- `A098614(n)/A098616(n)*A200540(n)` -/
def P13640781886271945376.Spec : Prop :=
  ∀ n, P13640781886271945376.a n = (A200539 n : ℚ)

end A200539

/-! ## A200539.P185111352661859720

`A000045(n+1)*A258709(∑[n])`
-/

namespace A200539.P185111352661859720
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) * A258709 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A200539.P185111352661859720

namespace A200539

/-- `A000045(n+1)*A258709(∑[n])` -/
def P185111352661859720.Spec : Prop :=
  ∀ n, P185111352661859720.a n = A200539 n

end A200539

/-!
# A200540: Product of Pell and Motzkin numbers: a(n) = A000129(n+1)*A001006(n).

The programs for A200540, the canonical program `A200540.P5517971388681877837` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A200540 has offset 0).

The definition of A200540 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A200540.P5517971388681877837

`A000129(n+1)*A001006(n)`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A200540

/-- `A000129(n+1)*A001006(n)` -/
def P5517971388681877837.Spec : Prop :=
  ∀ n, P5517971388681877837.a n = A200540 n

theorem P5517971388681877837.correct : P5517971388681877837.Spec := by
  intro n
  simp only [A200540]

end A200540

/-! ## A200540.P8428010158459660819

`abs(A001006(n)*A077985(n))`
-/

namespace A200540.P8428010158459660819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A001006 n * A077985 n|

end

end A200540.P8428010158459660819

namespace A200540

/-- `abs(A001006(n)*A077985(n))` -/
def P8428010158459660819.Spec : Prop :=
  ∀ n, P8428010158459660819.a n = A200540 n

end A200540

/-! ## A200540.P2465305651045074955

`∑[A001333(n)]*A001006(n)`
-/

namespace A200540.P2465305651045074955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001333 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A001006 n

end

end A200540.P2465305651045074955

namespace A200540

/-- `∑[A001333(n)]*A001006(n)` -/
def P2465305651045074955.Spec : Prop :=
  ∀ n, P2465305651045074955.a n = A200540 n

end A200540

/-! ## A200540.P14398218949168928278

`record[A176981(n)*A292440(n)]`
-/

namespace A200540.P14398218949168928278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176981 n * A292440 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A200540.P14398218949168928278

namespace A200540

/-- `record[A176981(n)*A292440(n)]` -/
def P14398218949168928278.Spec : Prop :=
  ∀ n, P14398218949168928278.a n = A200540 n

end A200540

/-! ## A200540.P3694959380679495010

`A001006(n)*A215928(n+1)`
-/

namespace A200540.P3694959380679495010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001006 n * A215928 (n + 1)

end

end A200540.P3694959380679495010

namespace A200540

/-- `A001006(n)*A215928(n+1)` -/
def P3694959380679495010.Spec : Prop :=
  ∀ n, P3694959380679495010.a n = A200540 n

end A200540

/-! ## A200540.P14053214929773681462

`abs(A176981(n+2))*A001006(n)`
-/

namespace A200540.P14053214929773681462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A176981 (n + 2)| * A001006 n

end

end A200540.P14053214929773681462

namespace A200540

/-- `abs(A176981(n+2))*A001006(n)` -/
def P14053214929773681462.Spec : Prop :=
  ∀ n, P14053214929773681462.a n = A200540 n

end A200540

/-! ## A200540.P1027800584754371221

`(A024537(n+1)-A024537(n))*A001006(n)`
-/

namespace A200540.P1027800584754371221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A024537 (n + 1) - A024537 n) * A001006 n

end

end A200540.P1027800584754371221

namespace A200540

/-- `(A024537(n+1)-A024537(n))*A001006(n)` -/
def P1027800584754371221.Spec : Prop :=
  ∀ n, P1027800584754371221.a n = A200540 n

end A200540

/-! ## A200540.P17568158397757179432

`A098616(n)/A098614(n)*A200539(n)`
-/

namespace A200540.P17568158397757179432
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A098616 n : ℚ) / (A098614 n : ℚ) * (A200539 n : ℚ)

end

end A200540.P17568158397757179432

namespace A200540

/-- `A098616(n)/A098614(n)*A200539(n)` -/
def P17568158397757179432.Spec : Prop :=
  ∀ n, P17568158397757179432.a n = (A200540 n : ℚ)

end A200540

/-!
# A200541: Product of Fibonacci and tribonacci numbers: a(n) = A000045(n+1)*A000073(n+2).

The programs for A200541, the canonical program `A200541.P7698192799478556186` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A200541 has offset 0).

The definition of A200541 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000045(n+1)*A000073(n+2)` (program `A200541.P7698192799478556186`, by `A200541.P7698192799478556186.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A200541.P7026686630149697433

`ogf((1-x^2-x^3)/(1-x-4x^2-5x^3-2x^4+x^5-x^6))`
-/

namespace A200541.P7026686630149697433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, -1, -1] [1, -1, -4, -5, -2, 1, -1] n

end

end A200541.P7026686630149697433

namespace A200541

/-- `ogf((1-x^2-x^3)/(1-x-4x^2-5x^3-2x^4+x^5-x^6))` -/
def P7026686630149697433.Spec : Prop :=
  ∀ n, P7026686630149697433.a n = A200541 n

end A200541

/-! ## A200541.P7698192799478556186

`A000045(n+1)*A000073(n+2)`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A200541

/-- `A000045(n+1)*A000073(n+2)` -/
def P7698192799478556186.Spec : Prop :=
  ∀ n, P7698192799478556186.a n = A200541 n

theorem P7698192799478556186.correct : P7698192799478556186.Spec := by
  intro n
  simp only [A200541]

end A200541

/-! ## A200541.P4232816035531042052

`∑[A212804(n)]*A000073(n+2)`
-/

namespace A200541.P4232816035531042052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A000073 (n + 2)

end

end A200541.P4232816035531042052

namespace A200541

/-- `∑[A212804(n)]*A000073(n+2)` -/
def P4232816035531042052.Spec : Prop :=
  ∀ n, P4232816035531042052.a n = A200541 n

end A200541

/-! ## A200541.P16043099889026334839

`A000073(n+2)*A212804(n+2)`
-/

namespace A200541.P16043099889026334839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000073 (n + 2) * A212804 (n + 2)

end

end A200541.P16043099889026334839

namespace A200541

/-- `A000073(n+2)*A212804(n+2)` -/
def P16043099889026334839.Spec : Prop :=
  ∀ n, P16043099889026334839.a n = A200541 n

end A200541

/-! ## A200541.P9485604041303695509

`A000045(n+1)*∑[A001590(n+1)]`
-/

namespace A200541.P9485604041303695509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001590 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A200541.P9485604041303695509

namespace A200541

/-- `A000045(n+1)*∑[A001590(n+1)]` -/
def P9485604041303695509.Spec : Prop :=
  ∀ n, P9485604041303695509.a n = A200541 n

end A200541

/-! ## A200541.P14281275136606580962

`Δ[A000071(n+2)]*A000073(n+2)`
-/

namespace A200541.P14281275136606580962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A000073 (n + 2)

end

end A200541.P14281275136606580962

namespace A200541

/-- `Δ[A000071(n+2)]*A000073(n+2)` -/
def P14281275136606580962.Spec : Prop :=
  ∀ n, P14281275136606580962.a n = A200541 n

end A200541

/-! ## A200541.P11125329688208626366

`A000045(n+1)*A213816(2*n+1)`
-/

namespace A200541.P11125329688208626366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) * A213816 (2 * n + 1)

end

end A200541.P11125329688208626366

namespace A200541

/-- `A000045(n+1)*A213816(2*n+1)` -/
def P11125329688208626366.Spec : Prop :=
  ∀ n, P11125329688208626366.a n = A200541 n

end A200541

/-! ## A200541.P7058240161726745503

`A000073(n+2)*A123231(2*n+1)`
-/

namespace A200541.P7058240161726745503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000073 (n + 2) * A123231 (2 * n + 1)

end

end A200541.P7058240161726745503

namespace A200541

/-- `A000073(n+2)*A123231(2*n+1)` -/
def P7058240161726745503.Spec : Prop :=
  ∀ n, P7058240161726745503.a n = A200541 n

end A200541

/-! ## A200541.P4637543897073493582

`A000045(n+1)*Δ[A000213(n+2)/2]`
-/

namespace A200541.P4637543897073493582
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000213 (n + 2) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000045 (n + 1) : ℚ) * (f1 (n + 1) - f1 n)

end

end A200541.P4637543897073493582

namespace A200541

/-- `A000045(n+1)*Δ[A000213(n+2)/2]` -/
def P4637543897073493582.Spec : Prop :=
  ∀ n, P4637543897073493582.a n = (A200541 n : ℚ)

end A200541

/-! ## A200541.P2594417893771045829

`A212804(n+2)*A213816(A005408(n))`
-/

namespace A200541.P2594417893771045829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 (n + 2) * A213816 (A005408 n).toNat

end

end A200541.P2594417893771045829

namespace A200541

/-- `A212804(n+2)*A213816(A005408(n))` -/
def P2594417893771045829.Spec : Prop :=
  ∀ n, P2594417893771045829.a n = A200541 n

end A200541

/-! ## A200541.P16546600678464863809

`A000073(n+2)*A103609(A005408(n+1))`
-/

namespace A200541.P16546600678464863809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000073 (n + 2) * A103609 (A005408 (n + 1)).toNat

end

end A200541.P16546600678464863809

namespace A200541

/-- `A000073(n+2)*A103609(A005408(n+1))` -/
def P16546600678464863809.Spec : Prop :=
  ∀ n, P16546600678464863809.a n = A200541 n

end A200541

/-! ## A200541.P1747870553564623984

`A000073(n+2)*A103609(A014601(n+1))`
-/

namespace A200541.P1747870553564623984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000073 (n + 2) * A103609 (A014601 (n + 1)).toNat

end

end A200541.P1747870553564623984

namespace A200541

/-- `A000073(n+2)*A103609(A014601(n+1))` -/
def P1747870553564623984.Spec : Prop :=
  ∀ n, P1747870553564623984.a n = A200541 n

end A200541

/-! ## A200541.P12704050106515111452

`(A000100(n)+A000045(n+1))*A000045(n+1)`
-/

namespace A200541.P12704050106515111452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000100 n + A000045 (n + 1)) * A000045 (n + 1)

end

end A200541.P12704050106515111452

namespace A200541

/-- `(A000100(n)+A000045(n+1))*A000045(n+1)` -/
def P12704050106515111452.Spec : Prop :=
  ∀ n, P12704050106515111452.a n = A200541 n

end A200541

/-! ## A200541.P5484786410800292242

`(A081172(n+1)+A001590(n))*A000045(n+1)`
-/

namespace A200541.P5484786410800292242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A081172 (n + 1) + A001590 n) * A000045 (n + 1)

end

end A200541.P5484786410800292242

namespace A200541

/-- `(A081172(n+1)+A001590(n))*A000045(n+1)` -/
def P5484786410800292242.Spec : Prop :=
  ∀ n, P5484786410800292242.a n = A200541 n

end A200541

/-! ## A200541.P16250986585231689895

`(A008937(n+1)-A008937(n))*A000045(n+1)`
-/

namespace A200541.P16250986585231689895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A008937 (n + 1) - A008937 n) * A000045 (n + 1)

end

end A200541.P16250986585231689895

namespace A200541

/-- `(A008937(n+1)-A008937(n))*A000045(n+1)` -/
def P16250986585231689895.Spec : Prop :=
  ∀ n, P16250986585231689895.a n = A200541 n

end A200541

/-! ## A200541.P16999736107093261223

`(A020992(n+1)-A001590(n+1))*A000045(n+1)`
-/

namespace A200541.P16999736107093261223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A020992 (n + 1) - A001590 (n + 1)) * A000045 (n + 1)

end

end A200541.P16999736107093261223

namespace A200541

/-- `(A020992(n+1)-A001590(n+1))*A000045(n+1)` -/
def P16999736107093261223.Spec : Prop :=
  ∀ n, P16999736107093261223.a n = A200541 n

end A200541

/-! ## A200541.P3031083232787459675

`A000045(n+1)/A000213(n)*A200543(n)`
-/

namespace A200541.P3031083232787459675
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000045 (n + 1) : ℚ) / (A000213 n : ℚ) * (A200543 n : ℚ)

end

end A200541.P3031083232787459675

namespace A200541

/-- `A000045(n+1)/A000213(n)*A200543(n)` -/
def P3031083232787459675.Spec : Prop :=
  ∀ n, P3031083232787459675.a n = (A200541 n : ℚ)

end A200541

/-!
# A200542: E.g.f. A(x) satisfies differential equation A'''(x)=A(x)+1/2*A(x)^2, A(0)=0, A'(0)=1, A''(0)=1, A'''(0)=1.

The programs for A200542, there is no canonical definition to state claims against.
-/

/-! ## A200542.P16674509464663733469

`A003602(2*A351660(n))`
-/

namespace A200542.P16674509464663733469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (2 * A351660 n).toNat

end

end A200542.P16674509464663733469

/-! ## A200542.P17686734765854969417

`A008621(2*A351660(n))`
-/

namespace A200542.P17686734765854969417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (2 * A351660 n).toNat

end

end A200542.P17686734765854969417

/-! ## A200542.P17259213385640756891

`A008624(2*A351660(n))`
-/

namespace A200542.P17259213385640756891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008624 (2 * A351660 n).toNat

end

end A200542.P17259213385640756891

/-! ## A200542.P3900502655253433010

`A026922(2*A351660(n))`
-/

namespace A200542.P3900502655253433010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026922 (2 * A351660 n).toNat

end

end A200542.P3900502655253433010

/-! ## A200542.P10420013998492152315

`A097992(3*A351660(n))`
-/

namespace A200542.P10420013998492152315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097992 (3 * A351660 n).toNat

end

end A200542.P10420013998492152315

/-!
# A200543: Product of tribonacci numbers: a(n) = A000073(n+2)*A000213(n).

The programs for A200543, the canonical program `A200543.P8602703479413101474` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A200543 has offset 0).

The definition of A200543 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000073(n+2)*A000213(n)` (program `A200543.P8602703479413101474`, by `A200543.P8602703479413101474.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A200543.P11543823314899858882

`ogf((1-x-3x^2-x^3)/(1-2x-3x^2-6x^3+x^4+x^6))`
-/

namespace A200543.P11543823314899858882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1, -3, -1] [1, -2, -3, -6, 1, 0, 1] n

end

end A200543.P11543823314899858882

namespace A200543

/-- `ogf((1-x-3x^2-x^3)/(1-2x-3x^2-6x^3+x^4+x^6))` -/
def P11543823314899858882.Spec : Prop :=
  ∀ n, P11543823314899858882.a n = A200543 n

end A200543

/-! ## A200543.P8602703479413101474

`A000073(n+2)*A000213(n)`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A200543

/-- `A000073(n+2)*A000213(n)` -/
def P8602703479413101474.Spec : Prop :=
  ∀ n, P8602703479413101474.a n = A200543 n

theorem P8602703479413101474.correct : P8602703479413101474.Spec := by
  intro n
  simp only [A200543]

end A200543

/-! ## A200543.P14462709646164149251

`Δ[A008937(n)]*A000213(n)`
-/

namespace A200543.P14462709646164149251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008937 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A000213 n

end

end A200543.P14462709646164149251

namespace A200543

/-- `Δ[A008937(n)]*A000213(n)` -/
def P14462709646164149251.Spec : Prop :=
  ∀ n, P14462709646164149251.a n = A200543 n

end A200543

/-! ## A200543.P16854793330478943390

`(A089068(n)+1)*A000213(n)`
-/

namespace A200543.P16854793330478943390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A089068 n + 1) * A000213 n

end

end A200543.P16854793330478943390

namespace A200543

/-- `(A089068(n)+1)*A000213(n)` -/
def P16854793330478943390.Spec : Prop :=
  ∀ n, P16854793330478943390.a n = A200543 n

end A200543

/-! ## A200543.P4733082439304831560

`∑[A001590(n+1)]*A000213(n)`
-/

namespace A200543.P4733082439304831560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001590 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A000213 n

end

end A200543.P4733082439304831560

namespace A200543

/-- `∑[A001590(n+1)]*A000213(n)` -/
def P4733082439304831560.Spec : Prop :=
  ∀ n, P4733082439304831560.a n = A200543 n

end A200543

/-! ## A200543.P14717911639359674989

`Δ[A192804(n+2)]*A000213(n)`
-/

namespace A200543.P14717911639359674989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192804 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A000213 n

end

end A200543.P14717911639359674989

namespace A200543

/-- `Δ[A192804(n+2)]*A000213(n)` -/
def P14717911639359674989.Spec : Prop :=
  ∀ n, P14717911639359674989.a n = A200543 n

end A200543

/-! ## A200543.P8291888340740103195

`A000213(n)*A213816(2*n+1)`
-/

namespace A200543.P8291888340740103195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000213 n * A213816 (2 * n + 1)

end

end A200543.P8291888340740103195

namespace A200543

/-- `A000213(n)*A213816(2*n+1)` -/
def P8291888340740103195.Spec : Prop :=
  ∀ n, P8291888340740103195.a n = A200543 n

end A200543

/-! ## A200543.P7173509457399406973

`Δ[(A000213(n+2)-1)/2]*A000213(n)`
-/

namespace A200543.P7173509457399406973
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000213 (n + 2) - 1 : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * (A000213 n : ℚ)

end

end A200543.P7173509457399406973

namespace A200543

/-- `Δ[(A000213(n+2)-1)/2]*A000213(n)` -/
def P7173509457399406973.Spec : Prop :=
  ∀ n, P7173509457399406973.a n = (A200543 n : ℚ)

end A200543

/-! ## A200543.P218150053667612521

`(A214727(n)-A001590(n))*A000213(n)`
-/

namespace A200543.P218150053667612521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A214727 n - A001590 n) * A000213 n

end

end A200543.P218150053667612521

namespace A200543

/-- `(A214727(n)-A001590(n))*A000213(n)` -/
def P218150053667612521.Spec : Prop :=
  ∀ n, P218150053667612521.a n = A200543 n

end A200543

/-! ## A200543.P12754880455629006618

`(A000213(n)+sqrt(A085697(n)))*A000213(n)`
-/

namespace A200543.P12754880455629006618
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((A000213 n : ℝ) + Real.sqrt (A085697 n : ℝ)) * (A000213 n : ℝ)

end

end A200543.P12754880455629006618

namespace A200543

/-- `(A000213(n)+sqrt(A085697(n)))*A000213(n)` -/
def P12754880455629006618.Spec : Prop :=
  ∀ n, P12754880455629006618.a n = (A200543 n : ℝ)

end A200543

/-! ## A200543.P4153663797777705272

`Δ[A027115(n)-A027129(n)]*A000213(n)`
-/

namespace A200543.P4153663797777705272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027115 n - A027129 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A000213 n

end

end A200543.P4153663797777705272

namespace A200543

/-- `Δ[A027115(n)-A027129(n)]*A000213(n)` -/
def P4153663797777705272.Spec : Prop :=
  ∀ n, P4153663797777705272.a n = A200543 n

end A200543

/-! ## A200543.P4172799612430126794

`(A081172(n+1)+A001590(n))*A000213(n)`
-/

namespace A200543.P4172799612430126794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A081172 (n + 1) + A001590 n) * A000213 n

end

end A200543.P4172799612430126794

namespace A200543

/-- `(A081172(n+1)+A001590(n))*A000213(n)` -/
def P4172799612430126794.Spec : Prop :=
  ∀ n, P4172799612430126794.a n = A200543 n

end A200543

/-! ## A200543.P13215898795697557389

`(A008937(n+1)-A008937(n))*A000213(n)`
-/

namespace A200543.P13215898795697557389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A008937 (n + 1) - A008937 n) * A000213 n

end

end A200543.P13215898795697557389

namespace A200543

/-- `(A008937(n+1)-A008937(n))*A000213(n)` -/
def P13215898795697557389.Spec : Prop :=
  ∀ n, P13215898795697557389.a n = A200543 n

end A200543

/-! ## A200543.P8955146974673140161

`(A100683(n+1)-A000213(n))*A000213(n)`
-/

namespace A200543.P8955146974673140161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A100683 (n + 1) - A000213 n) * A000213 n

end

end A200543.P8955146974673140161

namespace A200543

/-- `(A100683(n+1)-A000213(n))*A000213(n)` -/
def P8955146974673140161.Spec : Prop :=
  ∀ n, P8955146974673140161.a n = A200543 n

end A200543

/-! ## A200543.P3108552128834003629

`(A020992(n+1)-A001590(n+1))*A000213(n)`
-/

namespace A200543.P3108552128834003629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A020992 (n + 1) - A001590 (n + 1)) * A000213 n

end

end A200543.P3108552128834003629

namespace A200543

/-- `(A020992(n+1)-A001590(n+1))*A000213(n)` -/
def P3108552128834003629.Spec : Prop :=
  ∀ n, P3108552128834003629.a n = A200543 n

end A200543

/-! ## A200543.P13177606978215456662

`(A214727(n+1)-A000213(n+1))*A000213(n)`
-/

namespace A200543.P13177606978215456662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A214727 (n + 1) - A000213 (n + 1)) * A000213 n

end

end A200543.P13177606978215456662

namespace A200543

/-- `(A214727(n+1)-A000213(n+1))*A000213(n)` -/
def P13177606978215456662.Spec : Prop :=
  ∀ n, P13177606978215456662.a n = A200543 n

end A200543

/-! ## A200543.P14720002033452326815

`(A214829(n+1)-A214828(n+1))*A000213(n)`
-/

namespace A200543.P14720002033452326815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A214829 (n + 1) - A214828 (n + 1)) * A000213 n

end

end A200543.P14720002033452326815

namespace A200543

/-- `(A214829(n+1)-A214828(n+1))*A000213(n)` -/
def P14720002033452326815.Spec : Prop :=
  ∀ n, P14720002033452326815.a n = A200543 n

end A200543

/-! ## A200543.P9956682539787352401

`(A100683(n+1)-A213816(2*n+1))*A213816(2*n+1)`
-/

namespace A200543.P9956682539787352401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A100683 (n + 1) - A213816 (2 * n + 1)) * A213816 (2 * n + 1)

end

end A200543.P9956682539787352401

namespace A200543

/-- `(A100683(n+1)-A213816(2*n+1))*A213816(2*n+1)` -/
def P9956682539787352401.Spec : Prop :=
  ∀ n, P9956682539787352401.a n = A200543 n

end A200543

/-! ## A200543.P14625784133277905452

`sqrt(A085697(n+2))*A000213(n)`
-/

namespace A200543.P14625784133277905452
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A085697 (n + 2) : ℝ) * (A000213 n : ℝ)

end

end A200543.P14625784133277905452

namespace A200543

/-- `sqrt(A085697(n+2))*A000213(n)` -/
def P14625784133277905452.Spec : Prop :=
  ∀ n, P14625784133277905452.a n = (A200543 n : ℝ)

end A200543

/-! ## A200543.P7393725442761554845

`A000213(n)*A106522(∑[n])`
-/

namespace A200543.P7393725442761554845
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000213 n * A106522 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A200543.P7393725442761554845

namespace A200543

/-- `A000213(n)*A106522(∑[n])` -/
def P7393725442761554845.Spec : Prop :=
  ∀ n, P7393725442761554845.a n = A200543 n

end A200543

/-!
# A200544: Number of distinct bags of distinct sequences of 1s and 2s such that the sum of all terms is n.

The programs for A200544, there is no canonical definition to state claims against.
-/

/-! ## A200544.P12269400818044357133

`A337009((n+1)²+n²)`
-/

namespace A200544.P12269400818044357133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337009 ((n + 1) ^ 2 + n ^ 2)

end

end A200544.P12269400818044357133

/-! ## A200544.P1780870934431682963

`A364914(n)+A000045(A032559(n+1))`
-/

namespace A200544.P1780870934431682963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364914 n + A000045 (A032559 (n + 1)).toNat

end

end A200544.P1780870934431682963

/-! ## A200544.P2642231243619518690

`A348473(n+1)-∑[A001221(A047850(n))]`
-/

namespace A200544.P2642231243619518690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A047850 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348473 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A200544.P2642231243619518690

/-! ## A200544.P14594331569611589780

`A000079(n)-A083914(A074323(3*(n+1)))`
-/

namespace A200544.P14594331569611589780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n - A083914 (A074323 (3 * (n + 1))).toNat

end

end A200544.P14594331569611589780

/-!
# A200545: Triangle T(n,k), read by rows, given by (1,0,2,1,3,2,4,3,5,4,6,5,7,6,8,7,9,8,...) DELTA (0,1,0,1,0,1,0,1,0,1,0,1,0,1,...) where DELTA is the operator defined in A084938.

The programs for A200545, there is no canonical definition to state claims against.
-/

/-! ## A200545.P16304298003650886809

`∑{d}[A301422(n+1), A301376(A301357(#))]`
-/

namespace A200545.P16304298003650886809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301422 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A301376 (A301357 d).toNat

end

end A200545.P16304298003650886809

/-! ## A200545.P9376696226644238535

`A119026(A165253(n)²)`
-/

namespace A200545.P9376696226644238535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119026 (A165253 n ^ 2).toNat

end

end A200545.P9376696226644238535

/-! ## A200545.P4208658571869543750

`A119026(2*A102365(n))`
-/

namespace A200545.P4208658571869543750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119026 (2 * A102365 n).toNat

end

end A200545.P4208658571869543750

/-! ## A200545.P1562904731169191211

`A053828(A239145(n)^4)`
-/

namespace A200545.P1562904731169191211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053828 (A239145 n ^ 4).toNat

end

end A200545.P1562904731169191211

/-! ## A200545.P10132366141224103089

`A053828(A239145(n)²²)`
-/

namespace A200545.P10132366141224103089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053828 ((A239145 n ^ 2) ^ 2).toNat

end

end A200545.P10132366141224103089

/-!
# A200546: Number of -1..1 arrays x(0..n+1) of n+2 elements with zero sum and nonzero second differences.

The programs for A200546, there is no canonical definition to state claims against.
-/

/-! ## A200546.P6924219683872722384

`A200553(∑[n+1])`
-/

namespace A200546.P6924219683872722384
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200553 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A200546.P6924219683872722384

/-! ## A200546.P16246479058162211549

`lcm(2, A200553(A000217(n+1)))`
-/

namespace A200546.P16246479058162211549
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A200553 (A000217 (n + 1)).toNat)

end

end A200546.P16246479058162211549

/-! ## A200546.P8485256227026094478

`record[A023531(n)*A200553(n+1)]`
-/

namespace A200546.P8485256227026094478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023531 n * A200553 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A200546.P8485256227026094478

/-! ## A200546.P9364279288461158142

`record[root(A200553(n+1), A135278(n))]`
-/

namespace A200546.P9364279288461158142
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A200553 (n + 1) : ℝ) ^ (1 / (A135278 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A200546.P9364279288461158142

/-! ## A200546.P18400827655563265688

`record[gcd(A025581(n), A200553(n+1))]`
-/

namespace A200546.P18400827655563265688
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A025581 n) (A200553 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A200546.P18400827655563265688

/-!
# A200547: Number of -2..2 arrays x(0..n+1) of n+2 elements with zero sum and nonzero second differences.

The programs for A200547, there is no canonical definition to state claims against.
-/

/-! ## A200547.P7253416832681649681

`A200553(∑[n+2])`
-/

namespace A200547.P7253416832681649681
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200553 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A200547.P7253416832681649681

/-! ## A200547.P4806036539003233771

`record[A200553(A000096(A328399(n)))]`
-/

namespace A200547.P4806036539003233771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200553 (A000096 (A328399 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A200547.P4806036539003233771

/-! ## A200547.P11681260731097865187

`record[A200553(A000096(A331742(n)))]`
-/

namespace A200547.P11681260731097865187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200553 (A000096 (A331742 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A200547.P11681260731097865187

/-! ## A200547.P13010517759518916634

`record[A200553(A000096(A002260(n+1)))]`
-/

namespace A200547.P13010517759518916634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200553 (A000096 (A002260 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A200547.P13010517759518916634

/-! ## A200547.P3833119937086067224

`record[A200553(A000096(A003963(n+1)))]`
-/

namespace A200547.P3833119937086067224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200553 (A000096 (A003963 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A200547.P3833119937086067224

/-!
# A200548: Number of -3..3 arrays x(0..n+1) of n+2 elements with zero sum and nonzero second differences.

The programs for A200548, there is no canonical definition to state claims against.
-/

/-! ## A200548.P11611708507372025319

`A200553(∑[n+3]+1)`
-/

namespace A200548.P11611708507372025319
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200553 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A200548.P11611708507372025319

/-! ## A200548.P4936748216191426117

`lcm(2, A200553(Δ[A008778(n)]))`
-/

namespace A200548.P4936748216191426117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A200553 (f1 (n + 1) - f1 n).toNat)

end

end A200548.P4936748216191426117

/-! ## A200548.P643246986797109336

`A200553(Δ[A008778(n)])+A127391(2*n)`
-/

namespace A200548.P643246986797109336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200553 (f1 (n + 1) - f1 n).toNat + A127391 (2 * n)

end

end A200548.P643246986797109336

/-! ## A200548.P16049249999013355781

`A005408(n)%2*A200553(Δ[A008778(n)])`
-/

namespace A200548.P16049249999013355781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005408 n) 2 * A200553 (f1 (n + 1) - f1 n).toNat

end

end A200548.P16049249999013355781

/-!
# A200549: Number of -4..4 arrays x(0..n+1) of n+2 elements with zero sum and nonzero second differences.

The programs for A200549, there is no canonical definition to state claims against.
-/

/-! ## A200549.P7229737370692976587

`A200553(A027379(n+2))`
-/

namespace A200549.P7229737370692976587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200553 (A027379 (n + 2)).toNat

end

end A200549.P7229737370692976587

/-! ## A200549.P5021774800676683196

`A200553(A055998(n+2))`
-/

namespace A200549.P5021774800676683196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200553 (A055998 (n + 2)).toNat

end

end A200549.P5021774800676683196

/-! ## A200549.P15807425903819395956

`A200553(eq[2, A054123(n)])`
-/

namespace A200549.P15807425903819395956
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054123 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200553 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A200549.P15807425903819395956

/-! ## A200549.P8978966392068685762

`A200553(Δ[A034857(n+1)])`
-/

namespace A200549.P8978966392068685762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034857 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200553 (f1 (n + 1) - f1 n).toNat

end

end A200549.P8978966392068685762

/-! ## A200549.P12536310557922715212

`A200553(A052905(n+1)+2)`
-/

namespace A200549.P12536310557922715212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200553 (A052905 (n + 1) + 2).toNat

end

end A200549.P12536310557922715212

/-!
# A200550: Number of -5..5 arrays x(0..n+1) of n+2 elements with zero sum and nonzero second differences.

The programs for A200550, there is no canonical definition to state claims against.
-/

/-! ## A200550.P6903294233593256958

`A200553(Δ[A264443(n)])`
-/

namespace A200550.P6903294233593256958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200553 (f1 (n + 1) - f1 n).toNat

end

end A200550.P6903294233593256958

/-! ## A200550.P2907911079767347078

`A200553(A046691(n+3))`
-/

namespace A200550.P2907911079767347078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200553 (A046691 (n + 3)).toNat

end

end A200550.P2907911079767347078

/-! ## A200550.P13004228447838845935

`A200553(eq[4, A193592(n)])`
-/

namespace A200550.P13004228447838845935
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200553 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A200550.P13004228447838845935

/-! ## A200550.P14367875417129036724

`A200553(Δ[A023545(n+1)])`
-/

namespace A200550.P14367875417129036724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200553 (f1 (n + 1) - f1 n).toNat

end

end A200550.P14367875417129036724

/-! ## A200550.P8951104968128439072

`A200553(eq[8, A057728(n+1)])`
-/

namespace A200550.P8951104968128439072
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057728 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200553 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A200550.P8951104968128439072

/-!
# A200551: Number of -6..6 arrays x(0..n+1) of n+2 elements with zero sum and nonzero second differences.

The programs for A200551, there is no canonical definition to state claims against.
-/

/-! ## A200551.P5374070336458210617

`A200553(A052905(n+3))`
-/

namespace A200551.P5374070336458210617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200553 (A052905 (n + 3)).toNat

end

end A200551.P5374070336458210617

/-! ## A200551.P18274806841807399179

`A200553(eq[3, A219347(n)])`
-/

namespace A200551.P18274806841807399179
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200553 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A200551.P18274806841807399179

/-! ## A200551.P4952828914153184596

`A200553(eq[5, A193592(n)])`
-/

namespace A200551.P4952828914153184596
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200553 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A200551.P4952828914153184596

/-! ## A200551.P11958268128429601116

`A200553(eq[7, A049286(n+1)])`
-/

namespace A200551.P11958268128429601116
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049286 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200553 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A200551.P11958268128429601116

/-! ## A200551.P7583471463522168483

`A200553(eq[16, A057728(n+1)])`
-/

namespace A200551.P7583471463522168483
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057728 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200553 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A200551.P7583471463522168483

/-!
# A200552: Number of -7..7 arrays x(0..n+1) of n+2 elements with zero sum and nonzero second differences.

The programs for A200552, there is no canonical definition to state claims against.
-/

/-! ## A200552.P5089877466224385729

`A200553(A055999(n+4))`
-/

namespace A200552.P5089877466224385729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200553 (A055999 (n + 4)).toNat

end

end A200552.P5089877466224385729

/-! ## A200552.P14561707847720518209

`A200553(eq[4, A219347(n)])`
-/

namespace A200552.P14561707847720518209
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200553 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A200552.P14561707847720518209

/-! ## A200552.P326849211909146775

`A200553(eq[6, A193592(n)])`
-/

namespace A200552.P326849211909146775
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200553 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A200552.P326849211909146775

/-! ## A200552.P308418231462329314

`A200553(eq[32, A057728(n+1)])`
-/

namespace A200552.P308418231462329314
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  32

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057728 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200553 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A200552.P308418231462329314

/-! ## A200552.P4988373893362022950

`A200553(A155212(n+4)-(n+6))`
-/

namespace A200552.P4988373893362022950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200553 (A155212 (n + 4) - (n + 6 : ℤ)).toNat

end

end A200552.P4988373893362022950

/-!
# A200554: Number of -n..n arrays x(0..3) of 4 elements with zero sum and nonzero second differences.

The programs for A200554, the canonical program `A200554.P6885460092334089881` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A200554 has offset 1).

The definition of A200554 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A200554.P6885460092334089881

`ogf((14+48x+62x^2+94x^3+48x^4+18x^5+4x^6)/(1-2x+x^2-2x^3+4x^4-2x^5+x^6-2x^7+x^8))`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A200554

/-- `ogf((14+48x+62x^2+94x^3+48x^4+18x^5+4x^6)/(1-2x+x^2-2x^3+4x^4-2x^5+x^6-2x^7+x^8))` -/
def P6885460092334089881.Spec : Prop :=
  ∀ n, P6885460092334089881.a n = A200554 (n + 1)

theorem P6885460092334089881.correct : P6885460092334089881.Spec := by
  intro n
  simp only [A200554, Nat.add_sub_cancel]

end A200554

/-! ## A200554.P1847931838633077939

`A200553(∑[n+1]+2)`
-/

namespace A200554.P1847931838633077939
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200553 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A200554.P1847931838633077939

namespace A200554

/-- `A200553(∑[n+1]+2)` -/
def P1847931838633077939.Spec : Prop :=
  ∀ n, P1847931838633077939.a n = A200554 (n + 1)

end A200554

/-! ## A200554.P9701290062273173134

`lcm(2, A200553(A000096(n)+3))`
-/

namespace A200554.P9701290062273173134
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A200553 (A000096 n + 3).toNat)

end

end A200554.P9701290062273173134

namespace A200554

/-- `lcm(2, A200553(A000096(n)+3))` -/
def P9701290062273173134.Spec : Prop :=
  ∀ n, (P9701290062273173134.a n : ℤ) = A200554 (n + 1)

end A200554

/-! ## A200554.P6178131501757603459

`A007318(C(n+4, 2))*A200553(A000096(n)+3)`
-/

namespace A200554.P6178131501757603459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose (n + 4) 2) * A200553 (A000096 n + 3).toNat

end

end A200554.P6178131501757603459

namespace A200554

/-- `A007318(C(n+4, 2))*A200553(A000096(n)+3)` -/
def P6178131501757603459.Spec : Prop :=
  ∀ n, P6178131501757603459.a n = A200554 (n + 1)

end A200554

/-! ## A200554.P17255404961230442142

`-(A008683(A007918(n))*A200553(A000096(n)+3))`
-/

namespace A200554.P17255404961230442142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(A008683 (A007918 n).toNat * A200553 (A000096 n + 3).toNat)

end

end A200554.P17255404961230442142

namespace A200554

/-- `-(A008683(A007918(n))*A200553(A000096(n)+3))` -/
def P17255404961230442142.Spec : Prop :=
  ∀ n, P17255404961230442142.a n = A200554 (n + 1)

end A200554

/-!
# A200555: Number of -n..n arrays x(0..4) of 5 elements with zero sum and nonzero second differences.

The programs for A200555, there is no canonical definition to state claims against.
-/

/-! ## A200555.P9795684939954020020

`A200553(∑[n+2]+4)`
-/

namespace A200555.P9795684939954020020
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200553 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A200555.P9795684939954020020

/-! ## A200555.P14133507321085765863

`lcm(2, A200553(A046691(n)+7))`
-/

namespace A200555.P14133507321085765863
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A200553 (A046691 n + 7).toNat)

end

end A200555.P14133507321085765863

/-! ## A200555.P7716173223290067335

`A264668(n)+A200553(A167614(n+1))`
-/

namespace A200555.P7716173223290067335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264668 n + A200553 (A167614 (n + 1)).toNat

end

end A200555.P7716173223290067335

/-! ## A200555.P12449305854071751266

`A000034(2*n)*A200553(A167614(n+1))`
-/

namespace A200555.P12449305854071751266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (2 * n) * A200553 (A167614 (n + 1)).toNat

end

end A200555.P12449305854071751266

/-! ## A200555.P17519493348252476095

`A200553(A167614(n+1))%A200556(n+1)`
-/

namespace A200555.P17519493348252476095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A200553 (A167614 (n + 1)).toNat) (A200556 (n + 1))

end

end A200555.P17519493348252476095

/-!
# A200556: Number of -n..n arrays x(0..5) of 6 elements with zero sum and nonzero second differences.

The programs for A200556, there is no canonical definition to state claims against.
-/

/-! ## A200556.P8712691769850269978

`A200553(A052905(n)+9)`
-/

namespace A200556.P8712691769850269978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200553 (A052905 n + 9).toNat

end

end A200556.P8712691769850269978

/-! ## A200556.P9216952425412541717

`A200553(A055999(n)+10)`
-/

namespace A200556.P9216952425412541717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200553 (A055999 n + 10).toNat

end

end A200556.P9216952425412541717

/-! ## A200556.P495681823564970585

`A200553(Δ[A005586(n)]+5)`
-/

namespace A200556.P495681823564970585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005586 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200553 (f1 (n + 1) - f1 n + 5).toNat

end

end A200556.P495681823564970585

/-! ## A200556.P10588028426647602279

`A200553(A167614(n+2)+1)`
-/

namespace A200556.P10588028426647602279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200553 (A167614 (n + 2) + 1).toNat

end

end A200556.P10588028426647602279

/-! ## A200556.P12965825601273550938

`A200553(A166136(n+2)-2)`
-/

namespace A200556.P12965825601273550938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200553 (A166136 (n + 2) - 2).toNat

end

end A200556.P12965825601273550938

/-!
# A200557: Number of -n..n arrays x(0..6) of 7 elements with zero sum and nonzero second differences.

The programs for A200557, there is no canonical definition to state claims against.
-/

/-! ## A200557.P4046094562702503014

`A200553(A167499(n+3))`
-/

namespace A200557.P4046094562702503014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200553 (A167499 (n + 3)).toNat

end

end A200557.P4046094562702503014

/-! ## A200557.P15764716125936096408

`A200553(A056000(n)+15)`
-/

namespace A200557.P15764716125936096408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200553 (A056000 n + 15).toNat

end

end A200557.P15764716125936096408

/-! ## A200557.P13835138898497061851

`A200553(A000096(n+3)+6)`
-/

namespace A200557.P13835138898497061851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200553 (A000096 (n + 3) + 6).toNat

end

end A200557.P13835138898497061851

/-! ## A200557.P3175663349422309996

`A200553(A000217(n+4)+5)`
-/

namespace A200557.P3175663349422309996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200553 (A000217 (n + 4) + 5).toNat

end

end A200557.P3175663349422309996

/-! ## A200557.P5646245981067311063

`A200553(A027379(n+2)+8)`
-/

namespace A200557.P5646245981067311063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200553 (A027379 (n + 2) + 8).toNat

end

end A200557.P5646245981067311063

/-!
# A200558: Number of -n..n arrays x(0..7) of 8 elements with zero sum and nonzero second differences.

The programs for A200558, there is no canonical definition to state claims against.
-/

/-! ## A200558.P3726174778015454593

`A200553(A166136(n+4))`
-/

namespace A200558.P3726174778015454593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200553 (A166136 (n + 4)).toNat

end

end A200558.P3726174778015454593

/-! ## A200558.P6908474790111120051

`A200553(A167499(n+4)+1)`
-/

namespace A200558.P6908474790111120051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200553 (A167499 (n + 4) + 1).toNat

end

end A200558.P6908474790111120051

/-! ## A200558.P16111159189000496049

`A200553(A000096(n+4)+7)`
-/

namespace A200558.P16111159189000496049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200553 (A000096 (n + 4) + 7).toNat

end

end A200558.P16111159189000496049

/-! ## A200558.P3906635916908404007

`A200553(eq[7, A131818(n+1)])`
-/

namespace A200558.P3906635916908404007
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200553 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A200558.P3906635916908404007

/-! ## A200558.P6801359268829957641

`A200553(A000124(n+6)-(n+1))`
-/

namespace A200558.P6801359268829957641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200553 (A000124 (n + 6) - (n + 1 : ℤ)).toNat

end

end A200558.P6801359268829957641

/-!
# A200559: Number of -n..n arrays x(0..8) of 9 elements with zero sum and nonzero second differences.

The programs for A200559, there is no canonical definition to state claims against.
-/

/-! ## A200559.P11504158265494728284

`A200553(A167487(n+5))`
-/

namespace A200559.P11504158265494728284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200553 (A167487 (n + 5)).toNat

end

end A200559.P11504158265494728284

/-! ## A200559.P15944657239008457204

`A200553(eq[11, A066657(n)])`
-/

namespace A200559.P15944657239008457204
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200553 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A200559.P15944657239008457204

/-! ## A200559.P1397112343515697121

`A200553(eq[8, A131818(n+1)])`
-/

namespace A200559.P1397112343515697121
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200553 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A200559.P1397112343515697121

/-! ## A200559.P16893269952560125198

`A200553(A134869(n+7)-(n+1))`
-/

namespace A200559.P16893269952560125198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200553 (A134869 (n + 7) - (n + 1 : ℤ)).toNat

end

end A200559.P16893269952560125198

/-! ## A200559.P9041210025837884006

`A200553(A155212(n+4)-2*n)`
-/

namespace A200559.P9041210025837884006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200553 (A155212 (n + 4) - (2 * n : ℤ)).toNat

end

end A200559.P9041210025837884006

/-!
# A200560: E.g.f.: arcsin(x) o x/(1-x) o sin(x), a composition of functions involving sin(x) and its inverse.

The programs for A200560, there is no canonical definition to state claims against.
-/

/-! ## A200560.P385657164846211690

`A318005(n+1)/2^n`
-/

namespace A200560.P385657164846211690
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A318005 (n + 1) : ℚ) / (2 ^ n : ℚ)

end

end A200560.P385657164846211690

/-! ## A200560.P4505682647563913779

`ceil(A318005(n+1)/A000079(n))`
-/

namespace A200560.P4505682647563913779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A318005 (n + 1) : ℚ) / (A000079 n : ℚ)⌉

end

end A200560.P4505682647563913779

/-! ## A200560.P2689937714081438825

`A318005(n+1)/A079858(n)*A001586(n)`
-/

namespace A200560.P2689937714081438825
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A318005 (n + 1) : ℚ) / (A079858 n : ℚ) * (A001586 n : ℚ)

end

end A200560.P2689937714081438825

/-! ## A200560.P13624342425952609152

`A008683(4*(n+1))+A318005(n+1)/A000079(n)`
-/

namespace A200560.P13624342425952609152
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008683 (4 * (n + 1)) : ℚ) + (A318005 (n + 1) : ℚ) / (A000079 n : ℚ)

end

end A200560.P13624342425952609152

/-! ## A200560.P11277798135170678185

`A341629(A055999(n+4)+1)+A318005(n+1)/A000079(n)`
-/

namespace A200560.P11277798135170678185
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A341629 (A055999 (n + 4) + 1).toNat : ℚ) + (A318005 (n + 1) : ℚ) / (A000079 n : ℚ)

end

end A200560.P11277798135170678185

/-!
# A200561: Expansion of -2*x / ( (2*x-1)*(4*x^2+3*x+1) ).

The programs for A200561, the canonical program `A200561.P6073350093184036459` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A200561 has offset 1).

The definition of A200561 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(2/(1+x-2x^2-8x^3))` (program `A200561.P6073350093184036459`, by `A200561.P6073350093184036459.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A200561.P6073350093184036459

`ogf(2/(1+x-2x^2-8x^3))`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A200561

/-- `ogf(2/(1+x-2x^2-8x^3))` -/
def P6073350093184036459.Spec : Prop :=
  ∀ n, P6073350093184036459.a n = A200561 (n + 1)

theorem P6073350093184036459.correct : P6073350093184036459.Spec := by
  intro n
  simp only [A200561, Nat.add_sub_cancel]

end A200561

/-! ## A200561.P12219288887740089838

`2*A200562(n)`
-/

namespace A200561.P12219288887740089838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A200562 n

end

end A200561.P12219288887740089838

namespace A200561

/-- `2*A200562(n)` -/
def P12219288887740089838.Spec : Prop :=
  ∀ n, P12219288887740089838.a n = A200561 (n + 1)

end A200561

/-! ## A200561.P3486169397587743329

`Δ[(A167433(n)/2)²]`
-/

namespace A200561.P3486169397587743329
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A167433 n : ℚ) / 2) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A200561.P3486169397587743329

namespace A200561

/-- `Δ[(A167433(n)/2)²]` -/
def P3486169397587743329.Spec : Prop :=
  ∀ n, P3486169397587743329.a n = (A200561 (n + 1) : ℚ)

end A200561

/-! ## A200561.P8755155948124098883

`Δ[(A169998(n+1)/2)²]`
-/

namespace A200561.P8755155948124098883
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A169998 (n + 1) : ℚ) / 2) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A200561.P8755155948124098883

namespace A200561

/-- `Δ[(A169998(n+1)/2)²]` -/
def P8755155948124098883.Spec : Prop :=
  ∀ n, P8755155948124098883.a n = (A200561 (n + 1) : ℚ)

end A200561

/-! ## A200561.P14359499203231527205

`Δ[(A001607(n+3)/2)²]`
-/

namespace A200561.P14359499203231527205
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A001607 (n + 3) : ℚ) / 2) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A200561.P14359499203231527205

namespace A200561

/-- `Δ[(A001607(n+3)/2)²]` -/
def P14359499203231527205.Spec : Prop :=
  ∀ n, P14359499203231527205.a n = (A200561 (n + 1) : ℚ)

end A200561

/-! ## A200561.P7802331386205880100

`Δ[(A107920(n+3)/2)²]`
-/

namespace A200561.P7802331386205880100
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A107920 (n + 3) : ℚ) / 2) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A200561.P7802331386205880100

namespace A200561

/-- `Δ[(A107920(n+3)/2)²]` -/
def P7802331386205880100.Spec : Prop :=
  ∀ n, P7802331386205880100.a n = (A200561 (n + 1) : ℚ)

end A200561

/-! ## A200561.P17690770698609296088

`Δ[A077876(n)²-A077876(n)]`
-/

namespace A200561.P17690770698609296088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077876 n ^ 2 - A077876 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A200561.P17690770698609296088

namespace A200561

/-- `Δ[A077876(n)²-A077876(n)]` -/
def P17690770698609296088.Spec : Prop :=
  ∀ n, P17690770698609296088.a n = A200561 (n + 1)

end A200561

/-! ## A200561.P4352864413448413920

`A078020(2*n)+A078020(n)²`
-/

namespace A200561.P4352864413448413920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078020 (2 * n) + A078020 n ^ 2

end

end A200561.P4352864413448413920

namespace A200561

/-- `A078020(2*n)+A078020(n)²` -/
def P4352864413448413920.Spec : Prop :=
  ∀ n, P4352864413448413920.a n = A200561 (n + 1)

end A200561

/-! ## A200561.P5835725461704291043

`A110512(2*n)+A110512(n)²`
-/

namespace A200561.P5835725461704291043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110512 (2 * n) + A110512 n ^ 2

end

end A200561.P5835725461704291043

namespace A200561

/-- `A110512(2*n)+A110512(n)²` -/
def P5835725461704291043.Spec : Prop :=
  ∀ n, P5835725461704291043.a n = A200561 (n + 1)

end A200561

/-! ## A200561.P7343904699209548418

`A001607(n+1)*A110512(n+3)`
-/

namespace A200561.P7343904699209548418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001607 (n + 1) * A110512 (n + 3)

end

end A200561.P7343904699209548418

namespace A200561

/-- `A001607(n+1)*A110512(n+3)` -/
def P7343904699209548418.Spec : Prop :=
  ∀ n, P7343904699209548418.a n = A200561 (n + 1)

end A200561

/-! ## A200561.P12749646790174912452

`2*A169998(n)*A001607(n+1)`
-/

namespace A200561.P12749646790174912452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A169998 n * A001607 (n + 1)

end

end A200561.P12749646790174912452

namespace A200561

/-- `2*A169998(n)*A001607(n+1)` -/
def P12749646790174912452.Spec : Prop :=
  ∀ n, P12749646790174912452.a n = A200561 (n + 1)

end A200561

/-! ## A200561.P12845171085699419422

`∑[A078050(n+1)²-A000079(n+1)]`
-/

namespace A200561.P12845171085699419422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078050 (n + 1) ^ 2 - A000079 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A200561.P12845171085699419422

namespace A200561

/-- `∑[A078050(n+1)²-A000079(n+1)]` -/
def P12845171085699419422.Spec : Prop :=
  ∀ n, P12845171085699419422.a n = A200561 (n + 1)

end A200561

/-! ## A200561.P4033671289474862209

`(A169998(n+1)+A169998(n))*A169998(n)`
-/

namespace A200561.P4033671289474862209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A169998 (n + 1) + A169998 n) * A169998 n

end

end A200561.P4033671289474862209

namespace A200561

/-- `(A169998(n+1)+A169998(n))*A169998(n)` -/
def P4033671289474862209.Spec : Prop :=
  ∀ n, P4033671289474862209.a n = A200561 (n + 1)

end A200561

/-! ## A200561.P506185601261326624

`(A107920(n+1)+A002249(n+1))*A107920(n+1)`
-/

namespace A200561.P506185601261326624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A107920 (n + 1) + A002249 (n + 1)) * A107920 (n + 1)

end

end A200561.P506185601261326624

namespace A200561

/-- `(A107920(n+1)+A002249(n+1))*A107920(n+1)` -/
def P506185601261326624.Spec : Prop :=
  ∀ n, P506185601261326624.a n = A200561 (n + 1)

end A200561

/-!
# A200562: Expansion of 1 / ((1 - 2*x) * (1 + 3*x + 4*x^2)) in powers of x.

The programs for A200562, the canonical program `A200562.P18288036256161506366` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A200562 has offset 0).

The definition of A200562 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1+x-2x^2-8x^3))` (program `A200562.P18288036256161506366`, by `A200562.P18288036256161506366.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A200562.P18288036256161506366

`ogf(1/(1+x-2x^2-8x^3))`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A200562

/-- `ogf(1/(1+x-2x^2-8x^3))` -/
def P18288036256161506366.Spec : Prop :=
  ∀ n, P18288036256161506366.a n = A200562 n

theorem P18288036256161506366.correct : P18288036256161506366.Spec := by
  intro n
  simp only [A200562]

end A200562

/-! ## A200562.P7016874393703999627

`A001607(n+1)*A169998(n)`
-/

namespace A200562.P7016874393703999627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001607 (n + 1) * A169998 n

end

end A200562.P7016874393703999627

namespace A200562

/-- `A001607(n+1)*A169998(n)` -/
def P7016874393703999627.Spec : Prop :=
  ∀ n, P7016874393703999627.a n = A200562 n

end A200562

/-! ## A200562.P3201827764441783904

`A107920(n+1)*A107920(n+2)`
-/

namespace A200562.P3201827764441783904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107920 (n + 1) * A107920 (n + 2)

end

end A200562.P3201827764441783904

namespace A200562

/-- `A107920(n+1)*A107920(n+2)` -/
def P3201827764441783904.Spec : Prop :=
  ∀ n, P3201827764441783904.a n = A200562 n

end A200562

/-! ## A200562.P9006869120850580377

`(A110512(n)+A001607(n))*A001607(n+1)`
-/

namespace A200562.P9006869120850580377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A110512 n + A001607 n) * A001607 (n + 1)

end

end A200562.P9006869120850580377

namespace A200562

/-- `(A110512(n)+A001607(n))*A001607(n+1)` -/
def P9006869120850580377.Spec : Prop :=
  ∀ n, P9006869120850580377.a n = A200562 n

end A200562

/-! ## A200562.P14330609376697099316

`A078020(n)²-A001607(n)²`
-/

namespace A200562.P14330609376697099316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078020 n ^ 2 - A001607 n ^ 2

end

end A200562.P14330609376697099316

namespace A200562

/-- `A078020(n)²-A001607(n)²` -/
def P14330609376697099316.Spec : Prop :=
  ∀ n, P14330609376697099316.a n = A200562 n

end A200562

/-! ## A200562.P18428661214884132766

`A110512(n)²-A001607(n)²`
-/

namespace A200562.P18428661214884132766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110512 n ^ 2 - A001607 n ^ 2

end

end A200562.P18428661214884132766

namespace A200562

/-- `A110512(n)²-A001607(n)²` -/
def P18428661214884132766.Spec : Prop :=
  ∀ n, P18428661214884132766.a n = A200562 n

end A200562

/-! ## A200562.P3938721195694586090

`A078020(n)²-A107920(n)²`
-/

namespace A200562.P3938721195694586090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078020 n ^ 2 - A107920 n ^ 2

end

end A200562.P3938721195694586090

namespace A200562

/-- `A078020(n)²-A107920(n)²` -/
def P3938721195694586090.Spec : Prop :=
  ∀ n, P3938721195694586090.a n = A200562 n

end A200562

/-! ## A200562.P5588688839917333985

`A110512(n)²-A107920(n)²`
-/

namespace A200562.P5588688839917333985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110512 n ^ 2 - A107920 n ^ 2

end

end A200562.P5588688839917333985

namespace A200562

/-- `A110512(n)²-A107920(n)²` -/
def P5588688839917333985.Spec : Prop :=
  ∀ n, P5588688839917333985.a n = A200562 n

end A200562

/-! ## A200562.P3693392686716470645

`Δ[A107920(n)]²-A001607(n)²`
-/

namespace A200562.P3693392686716470645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107920 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2 - A001607 n ^ 2

end

end A200562.P3693392686716470645

namespace A200562

/-- `Δ[A107920(n)]²-A001607(n)²` -/
def P3693392686716470645.Spec : Prop :=
  ∀ n, P3693392686716470645.a n = A200562 n

end A200562

/-! ## A200562.P15710144893499568742

`A078020(n)²-Δ[A105578(n)]²`
-/

namespace A200562.P15710144893499568742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105578 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078020 n ^ 2 - (f1 (n + 1) - f1 n) ^ 2

end

end A200562.P15710144893499568742

namespace A200562

/-- `A078020(n)²-Δ[A105578(n)]²` -/
def P15710144893499568742.Spec : Prop :=
  ∀ n, P15710144893499568742.a n = A200562 n

end A200562

/-! ## A200562.P10642878084624823826

`A078020(2*n)+A001607(n)²`
-/

namespace A200562.P10642878084624823826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078020 (2 * n) + A001607 n ^ 2

end

end A200562.P10642878084624823826

namespace A200562

/-- `A078020(2*n)+A001607(n)²` -/
def P10642878084624823826.Spec : Prop :=
  ∀ n, P10642878084624823826.a n = A200562 n

end A200562

/-! ## A200562.P16670623122547841992

`A110512(2*n)+A001607(n)²`
-/

namespace A200562.P16670623122547841992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110512 (2 * n) + A001607 n ^ 2

end

end A200562.P16670623122547841992

namespace A200562

/-- `A110512(2*n)+A001607(n)²` -/
def P16670623122547841992.Spec : Prop :=
  ∀ n, P16670623122547841992.a n = A200562 n

end A200562

/-! ## A200562.P17963170964759366259

`A078020(2*n)+A107920(n)²`
-/

namespace A200562.P17963170964759366259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078020 (2 * n) + A107920 n ^ 2

end

end A200562.P17963170964759366259

namespace A200562

/-- `A078020(2*n)+A107920(n)²` -/
def P17963170964759366259.Spec : Prop :=
  ∀ n, P17963170964759366259.a n = A200562 n

end A200562

/-! ## A200562.P3629126757359890157

`A110512(2*n)+A107920(n)²`
-/

namespace A200562.P3629126757359890157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110512 (2 * n) + A107920 n ^ 2

end

end A200562.P3629126757359890157

namespace A200562

/-- `A110512(2*n)+A107920(n)²` -/
def P3629126757359890157.Spec : Prop :=
  ∀ n, P3629126757359890157.a n = A200562 n

end A200562

/-! ## A200562.P2745127948537532758

`A000079(n)+A107920(n)*A167433(n)`
-/

namespace A200562.P2745127948537532758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n + A107920 n * A167433 n

end

end A200562.P2745127948537532758

namespace A200562

/-- `A000079(n)+A107920(n)*A167433(n)` -/
def P2745127948537532758.Spec : Prop :=
  ∀ n, P2745127948537532758.a n = A200562 n

end A200562

/-! ## A200562.P6176817197341949624

`A087168(n)+A078020(n+1)*A078020(n)`
-/

namespace A200562.P6176817197341949624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087168 n + A078020 (n + 1) * A078020 n

end

end A200562.P6176817197341949624

namespace A200562

/-- `A087168(n)+A078020(n+1)*A078020(n)` -/
def P6176817197341949624.Spec : Prop :=
  ∀ n, P6176817197341949624.a n = A200562 n

end A200562

/-! ## A200562.P2119863694085472948

`A200561(n+1)/2`
-/

namespace A200562.P2119863694085472948
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A200561 (n + 1) : ℚ) / 2

end

end A200562.P2119863694085472948

namespace A200562

/-- `A200561(n+1)/2` -/
def P2119863694085472948.Spec : Prop :=
  ∀ n, P2119863694085472948.a n = (A200562 n : ℚ)

end A200562

/-!
# A200563: Expansion of -2*x*(1+4*x) / ((2*x-1)*(4*x^2+3*x+1)).

The programs for A200563, the canonical program `A200563.P16349248479606887366` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A200563 has offset 1).

The definition of A200563 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((2+8x)/(1+x-2x^2-8x^3))` (program `A200563.P16349248479606887366`, by `A200563.P16349248479606887366.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A200563.P16349248479606887366

`ogf((2+8x)/(1+x-2x^2-8x^3))`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A200563

/-- `ogf((2+8x)/(1+x-2x^2-8x^3))` -/
def P16349248479606887366.Spec : Prop :=
  ∀ n, P16349248479606887366.a n = A200563 (n + 1)

theorem P16349248479606887366.correct : P16349248479606887366.Spec := by
  intro n
  simp only [A200563, Nat.add_sub_cancel]

end A200563

/-! ## A200563.P12269536516070508962

`∑[A200562(n+2)-A200562(n)]`
-/

namespace A200563.P12269536516070508962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200562 (n + 2) - A200562 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A200563.P12269536516070508962

namespace A200563

/-- `∑[A200562(n+2)-A200562(n)]` -/
def P12269536516070508962.Spec : Prop :=
  ∀ n, P12269536516070508962.a n = A200563 (n + 1)

end A200563

/-! ## A200563.P16070115489991376361

`∑[A078020(n)]*A078020(n+4)`
-/

namespace A200563.P16070115489991376361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078020 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A078020 (n + 4)

end

end A200563.P16070115489991376361

namespace A200563

/-- `∑[A078020(n)]*A078020(n+4)` -/
def P16070115489991376361.Spec : Prop :=
  ∀ n, P16070115489991376361.a n = A200563 (n + 1)

end A200563

/-! ## A200563.P14597751216780898996

`A200562(n+1)+A200562(n+2)`
-/

namespace A200563.P14597751216780898996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200562 (n + 1) + A200562 (n + 2)

end

end A200563.P14597751216780898996

namespace A200563

/-- `A200562(n+1)+A200562(n+2)` -/
def P14597751216780898996.Spec : Prop :=
  ∀ n, P14597751216780898996.a n = A200563 (n + 1)

end A200563

/-! ## A200563.P13942435099568728533

`A001607(n+1)*A110512(n+4)`
-/

namespace A200563.P13942435099568728533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001607 (n + 1) * A110512 (n + 4)

end

end A200563.P13942435099568728533

namespace A200563

/-- `A001607(n+1)*A110512(n+4)` -/
def P13942435099568728533.Spec : Prop :=
  ∀ n, P13942435099568728533.a n = A200563 (n + 1)

end A200563

/-! ## A200563.P16391936375074480412

`A078020(n+2)*A107920(n+3)`
-/

namespace A200563.P16391936375074480412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078020 (n + 2) * A107920 (n + 3)

end

end A200563.P16391936375074480412

namespace A200563

/-- `A078020(n+2)*A107920(n+3)` -/
def P16391936375074480412.Spec : Prop :=
  ∀ n, P16391936375074480412.a n = A200563 (n + 1)

end A200563

/-! ## A200563.P13620792861782197532

`Δ[A107920(n+4)]*A107920(n+1)`
-/

namespace A200563.P13620792861782197532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107920 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A107920 (n + 1)

end

end A200563.P13620792861782197532

namespace A200563

/-- `Δ[A107920(n+4)]*A107920(n+1)` -/
def P13620792861782197532.Spec : Prop :=
  ∀ n, P13620792861782197532.a n = A200563 (n + 1)

end A200563

/-! ## A200563.P17401746806199287638

`2*A001607(n+1)*A169998(n+1)`
-/

namespace A200563.P17401746806199287638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A001607 (n + 1) * A169998 (n + 1))

end

end A200563.P17401746806199287638

namespace A200563

/-- `2*A001607(n+1)*A169998(n+1)` -/
def P17401746806199287638.Spec : Prop :=
  ∀ n, P17401746806199287638.a n = A200563 (n + 1)

end A200563

/-! ## A200563.P3119407589635097997

`(A169998(n+1)+A169998(n))*A169998(n+1)`
-/

namespace A200563.P3119407589635097997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A169998 (n + 1) + A169998 n) * A169998 (n + 1)

end

end A200563.P3119407589635097997

namespace A200563

/-- `(A169998(n+1)+A169998(n))*A169998(n+1)` -/
def P3119407589635097997.Spec : Prop :=
  ∀ n, P3119407589635097997.a n = A200563 (n + 1)

end A200563

/-!
# A200564: a(n) = (2^(n^2)+2^((n^2+n)/2))/2.

The programs for A200564, the canonical program `A200564.P9641994384436209628` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A200564 has offset 0).

The definition of A200564 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A200564.P9641994384436209628

`(2^n²+2^((n²+n)/2))/2`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A200564

/-- `(2^n²+2^((n²+n)/2))/2` -/
def P9641994384436209628.Spec : Prop :=
  ∀ n, P9641994384436209628.a n = (A200564 n : ℝ)

end A200564

/-! ## A200564.P3859996247203009792

`A011782(∑[n])+A131577(n²)`
-/

namespace A200564.P3859996247203009792
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (∑ j ∈ Finset.range (n + 1), f1 j) + A131577 (n ^ 2)

end

end A200564.P3859996247203009792

namespace A200564

/-- `A011782(∑[n])+A131577(n²)` -/
def P3859996247203009792.Spec : Prop :=
  ∀ n, P3859996247203009792.a n = A200564 n

end A200564

/-! ## A200564.P804793606486795747

`A011782(∑[n])+A131577(n)^(n+1)`
-/

namespace A200564.P804793606486795747
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (∑ j ∈ Finset.range (n + 1), f1 j) + A131577 n ^ (n + 1)

end

end A200564.P804793606486795747

namespace A200564

/-- `A011782(∑[n])+A131577(n)^(n+1)` -/
def P804793606486795747.Spec : Prop :=
  ∀ n, P804793606486795747.a n = A200564 n

end A200564

/-! ## A200564.P13935274697333652806

`A000079(n)*A005418(A002061(n))`
-/

namespace A200564.P13935274697333652806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n * A005418 (A002061 n).toNat

end

end A200564.P13935274697333652806

namespace A200564

/-- `A000079(n)*A005418(A002061(n))` -/
def P13935274697333652806.Spec : Prop :=
  ∀ n, P13935274697333652806.a n = A200564 n

end A200564

/-! ## A200564.P9944749161420126342

`A000079(n)*A007582(A161680(n))`
-/

namespace A200564.P9944749161420126342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n * A007582 (A161680 n).toNat

end

end A200564.P9944749161420126342

namespace A200564

/-- `A000079(n)*A007582(A161680(n))` -/
def P9944749161420126342.Spec : Prop :=
  ∀ n, P9944749161420126342.a n = A200564 n

end A200564

/-!
# A200566: Integers n such that for all i > n the largest prime factor of product(i+k, {k,0,8}) exceeds the largest prime factor of product(n+k, {k,0,8}).

The programs for A200566, there is no canonical definition to state claims against.
-/

/-! ## A200566.P10172225288004402790

`A088967(A077168(n))`
-/

namespace A200566.P10172225288004402790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088967 (A077168 n).toNat

end

end A200566.P10172225288004402790

/-! ## A200566.P13056473494135478225

`A200567(A043319(n+1))+1`
-/

namespace A200566.P13056473494135478225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200567 (A043319 (n + 1)).toNat + 1

end

end A200566.P13056473494135478225

/-! ## A200566.P16355710597456193659

`A200567(A044916(n+1))+1`
-/

namespace A200566.P16355710597456193659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200567 (A044916 (n + 1)).toNat + 1

end

end A200566.P16355710597456193659

/-! ## A200566.P16751294532508625215

`A163466(A045319(n+4))-9`
-/

namespace A200566.P16751294532508625215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163466 (A045319 (n + 4)).toNat - 9

end

end A200566.P16751294532508625215

/-! ## A200566.P3507088212502458894

`A095202(A199407(n+1))`
-/

namespace A200566.P3507088212502458894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095202 (A199407 (n + 1)).toNat

end

end A200566.P3507088212502458894

/-!
# A200567: Integers n such that for all i > n the largest prime factor of product(i+k, {k,0,9}) exceeds the largest prime factor of product(n+k, {k,0,9}).

The programs for A200567, there is no canonical definition to state claims against.
-/

/-! ## A200567.P6915068395727536064

`eq[A051953(n+10), A262079(n+4)]`
-/

namespace A200567.P6915068395727536064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051953 (n + 10)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262079 (n + 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A200567.P6915068395727536064

/-! ## A200567.P16345039595176566900

`eq[A262079(n+4)², A013632(n+9)]`
-/

namespace A200567.P16345039595176566900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262079 (n + 4) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013632 (n + 9)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A200567.P16345039595176566900

/-! ## A200567.P9927332312592890614

`eq[A262079(n+4)², A001222(n+10)]`
-/

namespace A200567.P9927332312592890614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262079 (n + 4) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 10)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A200567.P9927332312592890614

/-! ## A200567.P7689658042779513999

`eq[A262079(n+4)², A010051(n+10)]`
-/

namespace A200567.P7689658042779513999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262079 (n + 4) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 10)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A200567.P7689658042779513999

/-! ## A200567.P9851723710254812229

`eq[A262079(n+4)², A342001(n+10)]`
-/

namespace A200567.P9851723710254812229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262079 (n + 4) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342001 (n + 10)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A200567.P9851723710254812229

/-!
# A200568: Integers n such that for all i > n the largest prime factor of product(i+k, {k,0,10}) exceeds the largest prime factor of product(n+k, {k,0,10}).

The programs for A200568, there is no canonical definition to state claims against.
-/

/-! ## A200568.P11310857398751703306

`A081556(A200567(n+2))`
-/

namespace A200568.P11310857398751703306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081556 (A200567 (n + 2)).toNat

end

end A200568.P11310857398751703306

/-! ## A200568.P17508662316866506804

`A175542(A200567(n+2)-1)`
-/

namespace A200568.P17508662316866506804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175542 (A200567 (n + 2) - 1).toNat

end

end A200568.P17508662316866506804

/-! ## A200568.P18037156151461819224

`∑[A118759(Δ[A200567(n+1)])]`
-/

namespace A200568.P18037156151461819224
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200567 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A200568.P18037156151461819224

/-! ## A200568.P5040380865012959161

`∑[A130446(Δ[A200567(n+1)])]`
-/

namespace A200568.P5040380865012959161
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200567 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130446 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A200568.P5040380865012959161

/-! ## A200568.P8040725070249138327

`∑[A216455(Δ[A200567(n+1)])]`
-/

namespace A200568.P8040725070249138327
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200567 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216455 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A200568.P8040725070249138327

/-!
# A200569: Integers n such that for all i > n the largest prime factor of product(i+k, {k,0,11}) exceeds the largest prime factor of product(n+k, {k,0,11}).

The programs for A200569, there is no canonical definition to state claims against.
-/

/-! ## A200569.P15911014796051320616

`A200568(A077168(n))-1`
-/

namespace A200569.P15911014796051320616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200568 (A077168 n).toNat - 1

end

end A200569.P15911014796051320616

/-! ## A200569.P14403544870840601833

`A180969(C(A200568(n+1), 2))`
-/

namespace A200569.P14403544870840601833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180969 (Nat.choose (A200568 (n + 1)).toNat 2)

end

end A200569.P14403544870840601833

/-! ## A200569.P18307896488304499583

`A213500(C(A200568(n+1), 2))`
-/

namespace A200569.P18307896488304499583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213500 (Nat.choose (A200568 (n + 1)).toNat 2)

end

end A200569.P18307896488304499583

/-! ## A200569.P7023568069618874043

`(A200568(n+1)-1)%A200568(3*n+4)`
-/

namespace A200569.P7023568069618874043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A200568 (n + 1) - 1) (A200568 (3 * n + 4))

end

end A200569.P7023568069618874043

/-! ## A200569.P1602485953954672630

`A200568(n+1)-gcd(7, A200570(3*(n+1)))`
-/

namespace A200569.P1602485953954672630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200568 (n + 1) - (Int.gcd 7 (A200570 (3 * (n + 1))) : ℤ)

end

end A200569.P1602485953954672630

/-!
# A200570: Integers n such that for all i > n the largest prime factor of product(i+k, {k,0,12}) exceeds the largest prime factor of product(n+k, {k,0,12}).

The programs for A200570, there is no canonical definition to state claims against.
-/

/-! ## A200570.P12086145765106288088

`∑[Δ[A200569(n+1)]%A225114(n+9)]`
-/

namespace A200570.P12086145765106288088
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200569 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f2 (n + 1) - f2 n) (A225114 (n + 9))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A200570.P12086145765106288088

/-! ## A200570.P15783313669734321558

`A200569(n+2)-A001055(A024770(2*n+1))`
-/

namespace A200570.P15783313669734321558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200569 (n + 2) - A001055 (A024770 (2 * n + 1)).toNat

end

end A200570.P15783313669734321558

/-! ## A200570.P959142914225658446

`A200569(n+2)+A049347(A001248(n+5))`
-/

namespace A200570.P959142914225658446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200569 (n + 2) + A049347 (A001248 (n + 5)).toNat

end

end A200570.P959142914225658446

/-! ## A200570.P7036130633547893580

`A081556(A200569(n+2))`
-/

namespace A200570.P7036130633547893580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081556 (A200569 (n + 2)).toNat

end

end A200570.P7036130633547893580

/-! ## A200570.P10782894759337132735

`A175542(A200569(n+2)-1)`
-/

namespace A200570.P10782894759337132735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175542 (A200569 (n + 2) - 1).toNat

end

end A200570.P10782894759337132735

/-!
# A200571: Number of n X n 0..2 arrays with no average of any element and its horizontal and vertical neighbors equal to one.

The programs for A200571, there is no canonical definition to state claims against.
-/

/-! ## A200571.P7966681996124505463

`A200579(∑[4*n]+1)`
-/

namespace A200571.P7966681996124505463
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200579 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A200571.P7966681996124505463

/-!
# A200572: Number of n X 1 0..2 arrays with no average of any element and its horizontal and vertical neighbors equal to one.

The programs for A200572, the canonical program `A200572.P2747269227778304202` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A200572 has offset 1).

The definition of A200572 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 275 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A200572.P7212244032138425054

`ogf((2+2x-4x^2-6x^3-2x^4)/(1-2x-x^2-x^3+3x^4+2x^5))`
-/

namespace A200572.P7212244032138425054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 2, -4, -6, -2] [1, -2, -1, -1, 3, 2] n

end

end A200572.P7212244032138425054

namespace A200572

/-- `ogf((2+2x-4x^2-6x^3-2x^4)/(1-2x-x^2-x^3+3x^4+2x^5))` -/
def P7212244032138425054.Spec : Prop :=
  ∀ n, P7212244032138425054.a n = A200572 (n + 1)

end A200572

/-! ## A200572.P2747269227778304202

`2*a(n-1)+a(n-2)+a(n-3)-3*a(n-4)-2*a(n-5)` with `a(0)=2, a(1)=6, a(2)=10, a(3)=22, a(4)=52`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A200572

/-- `2*a(n-1)+a(n-2)+a(n-3)-3*a(n-4)-2*a(n-5)` -/
def P2747269227778304202.Spec : Prop :=
  ∀ n, P2747269227778304202.a n = A200572 (n + 1)

theorem P2747269227778304202.correct : P2747269227778304202.Spec := by
  intro n
  simp only [A200572, Nat.add_sub_cancel]

end A200572

/-! ## A200572.P13679501787598236601

`A200579(∑[n]+1)`
-/

namespace A200572.P13679501787598236601
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200579 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A200572.P13679501787598236601

namespace A200572

/-- `A200579(∑[n]+1)` -/
def P13679501787598236601.Spec : Prop :=
  ∀ n, P13679501787598236601.a n = A200572 (n + 1)

end A200572

/-! ## A200572.P6256919735605635211

`lcm(2, A200579(-xor(-1, ∑[n])))`
-/

namespace A200572.P6256919735605635211
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A200579 (-Int.xor (-1) ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat)

end

end A200572.P6256919735605635211

namespace A200572

/-- `lcm(2, A200579(-xor(-1, ∑[n])))` -/
def P6256919735605635211.Spec : Prop :=
  ∀ n, (P6256919735605635211.a n : ℤ) = A200572 (n + 1)

end A200572

/-! ## A200572.P15294099957771146184

`lcm(2, A200579(A000124(n)))`
-/

namespace A200572.P15294099957771146184
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A200579 (A000124 n).toNat)

end

end A200572.P15294099957771146184

namespace A200572

/-- `lcm(2, A200579(A000124(n)))` -/
def P15294099957771146184.Spec : Prop :=
  ∀ n, (P15294099957771146184.a n : ℤ) = A200572 (n + 1)

end A200572

/-!
# A200573: Number of n X 2 0..2 arrays with no average of any element and its horizontal and vertical neighbors equal to one.

The programs for A200573, there is no canonical definition to state claims against.
-/

/-! ## A200573.P7427338847356730276

`A200579(∑[n+1]+2)`
-/

namespace A200573.P7427338847356730276
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200579 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A200573.P7427338847356730276

/-! ## A200573.P13562129762149423629

`record[root(A200579(n+3), A127898(n))]`
-/

namespace A200573.P13562129762149423629
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A200579 (n + 3) : ℝ) ^ (1 / (A127898 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A200573.P13562129762149423629

/-! ## A200573.P3554719739407316319

`record[A200579(abs(A201163(n)))]`
-/

namespace A200573.P3554719739407316319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200579 |A201163 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A200573.P3554719739407316319

/-! ## A200573.P14734341411602347072

`record[A200579(Δ[A003453(n+5)])]`
-/

namespace A200573.P14734341411602347072
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003453 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200579 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A200573.P14734341411602347072

/-! ## A200573.P3364098176802953854

`record[A200579(n+2)%A127898(n+3)]`
-/

namespace A200573.P3364098176802953854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A200579 (n + 2)) (A127898 (n + 3))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A200573.P3364098176802953854

/-!
# A200574: Number of nX3 0..2 arrays with no average of any element and its horizontal and vertical neighbors equal to one.

The programs for A200574, there is no canonical definition to state claims against.
-/

/-! ## A200574.P10612256839441265097

`A200579(∑[n+2]+4)`
-/

namespace A200574.P10612256839441265097
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200579 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A200574.P10612256839441265097

/-! ## A200574.P17419456242950998292

`lcm(2, A200579(A167614(n+1)))`
-/

namespace A200574.P17419456242950998292
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A200579 (A167614 (n + 1)).toNat)

end

end A200574.P17419456242950998292

/-! ## A200574.P10843030225167423687

`xor(char[11], A200579(A055998(n)+6))`
-/

namespace A200574.P10843030225167423687
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A200579 (A055998 n + 6).toNat)

end

end A200574.P10843030225167423687

/-! ## A200574.P4043730120084120271

`A200579(A167614(n+1))+A025438(n)`
-/

namespace A200574.P4043730120084120271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200579 (A167614 (n + 1)).toNat + A025438 n

end

end A200574.P4043730120084120271

/-! ## A200574.P6642769192614586605

`A200579(A167614(n+1))+A025442(n)`
-/

namespace A200574.P6642769192614586605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200579 (A167614 (n + 1)).toNat + A025442 n

end

end A200574.P6642769192614586605

/-!
# A200575: Number of nX4 0..2 arrays with no average of any element and its horizontal and vertical neighbors equal to one.

The programs for A200575, there is no canonical definition to state claims against.
-/

/-! ## A200575.P14314431899026492095

`A200579(∑[n+3]+7)`
-/

namespace A200575.P14314431899026492095
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200579 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A200575.P14314431899026492095

/-! ## A200575.P11462227248790101566

`lcm(2, A200579(A374004(n+1)))`
-/

namespace A200575.P11462227248790101566
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A200579 (A374004 (n + 1)).toNat)

end

end A200575.P11462227248790101566

/-! ## A200575.P9901560791698773663

`A200579(A374004(n+1))*A355588(n)`
-/

namespace A200575.P9901560791698773663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200579 (A374004 (n + 1)).toNat * A355588 n

end

end A200575.P9901560791698773663

/-! ## A200575.P7035542652976483902

`A200579(A374004(n+1))*A262079(n+1)`
-/

namespace A200575.P7035542652976483902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200579 (A374004 (n + 1)).toNat * A262079 (n + 1)

end

end A200575.P7035542652976483902

/-! ## A200575.P16521984253624030284

`A200579(A052905(n)+9)*A262079(n+1)`
-/

namespace A200575.P16521984253624030284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200579 (A052905 n + 9).toNat * A262079 (n + 1)

end

end A200575.P16521984253624030284

/-!
# A200576: Number of nX5 0..2 arrays with no average of any element and its horizontal and vertical neighbors equal to one.

The programs for A200576, there is no canonical definition to state claims against.
-/

/-! ## A200576.P13168092259467063754

`A200579(A374005(n+1))`
-/

namespace A200576.P13168092259467063754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200579 (A374005 (n + 1)).toNat

end

end A200576.P13168092259467063754

/-! ## A200576.P12463791849603336566

`A200579(A167499(n+3))`
-/

namespace A200576.P12463791849603336566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200579 (A167499 (n + 3)).toNat

end

end A200576.P12463791849603336566

/-! ## A200576.P12488582585021172431

`A200579(A155212(n)+13)`
-/

namespace A200576.P12488582585021172431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200579 (A155212 n + 13).toNat

end

end A200576.P12488582585021172431

/-! ## A200576.P14276258666260715276

`A200579(eq[7, A066657(n)])`
-/

namespace A200576.P14276258666260715276
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200579 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A200576.P14276258666260715276

/-! ## A200576.P4742330227767456610

`A200579(A141214(n+1)+8)`
-/

namespace A200576.P4742330227767456610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200579 (A141214 (n + 1) + 8).toNat

end

end A200576.P4742330227767456610

/-!
# A200577: Number of nX6 0..2 arrays with no average of any element and its horizontal and vertical neighbors equal to one.

The programs for A200577, there is no canonical definition to state claims against.
-/

/-! ## A200577.P11514459979069968703

`A200579(A374007(n+1))`
-/

namespace A200577.P11514459979069968703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200579 (A374007 (n + 1)).toNat

end

end A200577.P11514459979069968703

/-! ## A200577.P2517875551322816942

`A200579(A166136(n+4))`
-/

namespace A200577.P2517875551322816942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200579 (A166136 (n + 4)).toNat

end

end A200577.P2517875551322816942

/-! ## A200577.P8029929316049694873

`A200579(A167499(n+4)+1)`
-/

namespace A200577.P8029929316049694873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200579 (A167499 (n + 4) + 1).toNat

end

end A200577.P8029929316049694873

/-! ## A200577.P11650033449087047440

`A200579(A167614(n+4)+3)`
-/

namespace A200577.P11650033449087047440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200579 (A167614 (n + 4) + 3).toNat

end

end A200577.P11650033449087047440

/-!
# A200578: Number of nX7 0..2 arrays with no average of any element and its horizontal and vertical neighbors equal to one.

The programs for A200578, there is no canonical definition to state claims against.
-/

/-! ## A200578.P4608041235038027948

`A200579(A374008(n+1))`
-/

namespace A200578.P4608041235038027948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200579 (A374008 (n + 1)).toNat

end

end A200578.P4608041235038027948

/-!
# A200580: Sum of dimension exponents of supercharacter of unipotent upper triangular matrices.

The programs for A200580, there is no canonical definition to state claims against.
-/

/-! ## A200580.P8513967779189692248

`A200660(n+2)-A092923(n+3)`
-/

namespace A200580.P8513967779189692248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200660 (n + 2) - A092923 (n + 3)

end

end A200580.P8513967779189692248

/-! ## A200580.P7291600487113444595

`A200660(n+2)-(A177257(n+3)-A177257(n+2))`
-/

namespace A200580.P7291600487113444595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200660 (n + 2) - (A177257 (n + 3) - A177257 (n + 2))

end

end A200580.P7291600487113444595

/-! ## A200580.P4232292012270122675

`A200660(A020639(6*C(n+6, 6))+n)%A092923(n+3)`
-/

namespace A200580.P4232292012270122675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A200660 (A020639 (6 * Nat.choose (n + 6) 6) + (n : ℤ)).toNat) (A092923 (n + 3))

end

end A200580.P4232292012270122675

/-! ## A200580.P7218123536957557165

`A200660(A020639(n!)+n)%A092923(n+3)`
-/

namespace A200580.P7218123536957557165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A200660 (A020639 (Nat.factorial n) + (n : ℤ)).toNat) (A092923 (n + 3))

end

end A200580.P7218123536957557165

/-!
# A200583: Table read by rows, n >= 1, 1 <= k <= card(divisors(n)), T(n,k) meanders of length n and central angle of 360/d degrees, d the k-th divisor of n.

The programs for A200583, there is no canonical definition to state claims against.
-/

/-! ## A200583.P10116545640118650967

`gcd(A195015(A001787(n)), A358377(n+1))`
-/

namespace A200583.P10116545640118650967
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A195015 (A001787 n).toNat) (A358377 (n + 1))

end

end A200583.P10116545640118650967

/-! ## A200583.P1811097503178564086

`A009195(A020598(n+1)*A358377(n+1))`
-/

namespace A200583.P1811097503178564086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009195 (A020598 (n + 1) * A358377 (n + 1)).toNat

end

end A200583.P1811097503178564086

/-! ## A200583.P5479914105388126840

`A009195(A034302(n+1)*A358377(n+1))`
-/

namespace A200583.P5479914105388126840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009195 (A034302 (n + 1) * A358377 (n + 1)).toNat

end

end A200583.P5479914105388126840

