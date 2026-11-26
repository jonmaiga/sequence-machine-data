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
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C034
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C043
import Seq.B000.C044
import Seq.B000.C045
import Seq.B000.C048
import Seq.B000.C049
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C012
import Seq.B001.C013
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B004.C004
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B007.C000
import Seq.B007.C001
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
import Seq.Opaque.C017
import Seq.Opaque.C018
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C024
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A255600: Number of connected planar regular graphs on 2n vertices with girth at least 4.

The programs for A255600, there is no canonical definition to state claims against.
-/

/-! ## A255600.P10809508926955189131

`A000110(n)-A141100(A148728(n))`
-/

namespace A255600.P10809508926955189131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000110 n - A141100 (A148728 n).toNat

end

end A255600.P10809508926955189131

/-! ## A255600.P11955343341376092669

`A192126(n)-A141100(A148728(n))`
-/

namespace A255600.P11955343341376092669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192126 n - A141100 (A148728 n).toNat

end

end A255600.P11955343341376092669

/-! ## A255600.P13480253339070854989

`A192127(n)-A141100(A148728(n))`
-/

namespace A255600.P13480253339070854989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192127 n - A141100 (A148728 n).toNat

end

end A255600.P13480253339070854989

/-! ## A255600.P9939720685118567680

`A287256(n)-A141100(A148728(n))`
-/

namespace A255600.P9939720685118567680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287256 n - A141100 (A148728 n).toNat

end

end A255600.P9939720685118567680

/-!
# A255601: Partial sums of A253089.

The programs for A255601, there is no canonical definition to state claims against.
-/

/-! ## A255601.P14150079767273697054

`∑[A253089(n)]`
-/

namespace A255601.P14150079767273697054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253089 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A255601.P14150079767273697054

/-! ## A255601.P14464669624342889543

`A253089(lcm(n, char[2]+1))+a(n-1)` with `a(0)=1`
-/

namespace A255601.P14464669624342889543
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A253089 (Nat.lcm n ((if ∃ j, f1 j = n then 1 else 0) + 1)) + a (n - 1)

end

end A255601.P14464669624342889543

/-! ## A255601.P7345797494225417545

`A253089(n/gcd(n, n+1))+a(n-1)` with `a(0)=1`
-/

namespace A255601.P7345797494225417545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A253089 (SequenceMachineLib.roundAway ((n : ℚ) / (Nat.gcd n (n + 1) : ℚ))).toNat + a (n - 1)

end

end A255601.P7345797494225417545

/-! ## A255601.P400929807766337460

`A253089(n*C(gcd(6, 2^n), 2))+a(n-1)` with `a(0)=1`
-/

namespace A255601.P400929807766337460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A253089 (n * Nat.choose (Nat.gcd 6 (2 ^ n)) 2) + a (n - 1)

end

end A255601.P400929807766337460

/-! ## A255601.P17055326912468109596

`A253089(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A255601.P17055326912468109596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A253089 n + a (A023443 n).toNat

end

end A255601.P17055326912468109596

/-! ## A255601.P3272245377296220428

`A000027(A253089(n)+a(n-1))` with `a(0)=1`
-/

namespace A255601.P3272245377296220428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000027 (A253089 n + a (n - 1)).toNat

end

end A255601.P3272245377296220428

/-! ## A255601.P13698075739152187042

`A253089(n)+a(n-A057427(n))` with `a(0)=1`
-/

namespace A255601.P13698075739152187042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A253089 n + a ((n : ℤ) - A057427 n).toNat

end

end A255601.P13698075739152187042

/-! ## A255601.P2364966327867627194

`A253089(n)+a(n-A178334(n))` with `a(0)=1`
-/

namespace A255601.P2364966327867627194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A253089 n + a ((n : ℤ) - A178334 n).toNat

end

end A255601.P2364966327867627194

/-! ## A255601.P3031424359529973699

`A253089(A000007(n)+n)+a(n-1)` with `a(0)=1`
-/

namespace A255601.P3031424359529973699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A253089 (A000007 n + (n : ℤ)).toNat + a (n - 1)

end

end A255601.P3031424359529973699

/-! ## A255601.P17809445250952251757

`A253089(n%A000040(n))+a(n-1)` with `a(0)=1`
-/

namespace A255601.P17809445250952251757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A253089 (Int.tmod (n : ℤ) (A000040 n)).toNat + a (n - 1)

end

end A255601.P17809445250952251757

/-!
# A255602: Numbers k which are odd and squarefree and have the property that k is either a prime number or for every prime p dividing k, p+1 is not divisible by any of the other prime factors of k.

The programs for A255602, the canonical program `A255602.P3848670249569834518` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A255602 has offset 1).

The definition of A255602 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8671 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A255602.P4962469632232450114

`filter[A056911(n+1), A325964(#)]`
-/

namespace A255602.P4962469632232450114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056911 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A325964 (f1 j).toNat = 1) n)

end

end A255602.P4962469632232450114

namespace A255602

/-- `filter[A056911(n+1), A325964(#)]` -/
def P4962469632232450114.Spec : Prop :=
  ∀ n, P4962469632232450114.a n = A255602 (n + 1)

end A255602

/-! ## A255602.P3848670249569834518

`filter[A014567(n+1), A323239(#)]`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A255602

/-- `filter[A014567(n+1), A323239(#)]` -/
def P3848670249569834518.Spec : Prop :=
  ∀ n, P3848670249569834518.a n = A255602 (n + 1)

theorem P3848670249569834518.correct : P3848670249569834518.Spec := by
  intro n
  simp only [A255602, Nat.add_sub_cancel]

end A255602

/-! ## A255602.P18227565269232921248

`∩[A014567(n+1), A056911(n+1)]`
-/

namespace A255602.P18227565269232921248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014567 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056911 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A255602.P18227565269232921248

namespace A255602

/-- `∩[A014567(n+1), A056911(n+1)]` -/
def P18227565269232921248.Spec : Prop :=
  ∀ n, (P18227565269232921248.a n : ℤ) = A255602 (n + 1)

end A255602

/-! ## A255602.P2635815994802655282

`filter[A250094(n+1), A323239(#)]`
-/

namespace A255602.P2635815994802655282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250094 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323239 (f1 j).toNat = 1) n)

end

end A255602.P2635815994802655282

namespace A255602

/-- `filter[A250094(n+1), A323239(#)]` -/
def P2635815994802655282.Spec : Prop :=
  ∀ n, P2635815994802655282.a n = A255602 (n + 1)

end A255602

/-! ## A255602.P5369019451301348671

`∩[A056911(n+1), A250094(n+1)]`
-/

namespace A255602.P5369019451301348671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056911 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250094 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A255602.P5369019451301348671

namespace A255602

/-- `∩[A056911(n+1), A250094(n+1)]` -/
def P5369019451301348671.Spec : Prop :=
  ∀ n, (P5369019451301348671.a n : ℤ) = A255602 (n + 1)

end A255602

/-! ## A255602.P66146330374229173

`record[A332881(or(1, n))]`
-/

namespace A255602.P66146330374229173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332881 (Nat.lor 1 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A255602.P66146330374229173

namespace A255602

/-- `record[A332881(or(1, n))]` -/
def P66146330374229173.Spec : Prop :=
  ∀ n, P66146330374229173.a n = A255602 (n + 1)

end A255602

/-! ## A255602.P15078342309999174564

`record[A349630(or(1, n))]`
-/

namespace A255602.P15078342309999174564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349630 (Nat.lor 1 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A255602.P15078342309999174564

namespace A255602

/-- `record[A349630(or(1, n))]` -/
def P15078342309999174564.Spec : Prop :=
  ∀ n, P15078342309999174564.a n = A255602 (n + 1)

end A255602

/-! ## A255602.P9590555182061700181

`record[A332881(2*n+1)]`
-/

namespace A255602.P9590555182061700181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332881 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A255602.P9590555182061700181

namespace A255602

/-- `record[A332881(2*n+1)]` -/
def P9590555182061700181.Spec : Prop :=
  ∀ n, P9590555182061700181.a n = A255602 (n + 1)

end A255602

/-! ## A255602.P5043258652860871748

`record[A349630(2*n+1)]`
-/

namespace A255602.P5043258652860871748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349630 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A255602.P5043258652860871748

namespace A255602

/-- `record[A349630(2*n+1)]` -/
def P5043258652860871748.Spec : Prop :=
  ∀ n, P5043258652860871748.a n = A255602 (n + 1)

end A255602

/-! ## A255602.P12864124999332806881

`record[∏{p}[A332883(2*n+1), #]]`
-/

namespace A255602.P12864124999332806881
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332883 (2 * n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A255602.P12864124999332806881

namespace A255602

/-- `record[∏{p}[A332883(2*n+1), #]]` -/
def P12864124999332806881.Spec : Prop :=
  ∀ n, (P12864124999332806881.a n : ℤ) = A255602 (n + 1)

end A255602

/-! ## A255602.P10250455399936264950

`record[A322966(1+2*n)]`
-/

namespace A255602.P10250455399936264950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322966 (1 + 2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A255602.P10250455399936264950

namespace A255602

/-- `record[A322966(1+2*n)]` -/
def P10250455399936264950.Spec : Prop :=
  ∀ n, P10250455399936264950.a n = A255602 (n + 1)

end A255602

/-! ## A255602.P5642571876462938295

`filter[2*n+1, A306695(#)]`
-/

namespace A255602.P5642571876462938295
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A306695 (f1 j) = 1) n)

end

end A255602.P5642571876462938295

namespace A255602

/-- `filter[2*n+1, A306695(#)]` -/
def P5642571876462938295.Spec : Prop :=
  ∀ n, (P5642571876462938295.a n : ℤ) = A255602 (n + 1)

end A255602

/-! ## A255602.P17306746032452589161

`record[∏{p}[A017666(2*n+1), #]]`
-/

namespace A255602.P17306746032452589161
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017666 (2 * n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A255602.P17306746032452589161

namespace A255602

/-- `record[∏{p}[A017666(2*n+1), #]]` -/
def P17306746032452589161.Spec : Prop :=
  ∀ n, (P17306746032452589161.a n : ℤ) = A255602 (n + 1)

end A255602

/-! ## A255602.P10021585114798140374

`eq[(n+1)%2, A306695(n+1)]+1`
-/

namespace A255602.P10021585114798140374
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) % 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306695 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A255602.P10021585114798140374

namespace A255602

/-- `eq[(n+1)%2, A306695(n+1)]+1` -/
def P10021585114798140374.Spec : Prop :=
  ∀ n, (P10021585114798140374.a n : ℤ) = A255602 (n + 1)

end A255602

/-! ## A255602.P1744089256994733346

`record[A017666(A007913(2*n+1))]`
-/

namespace A255602.P1744089256994733346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017666 (A007913 (2 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A255602.P1744089256994733346

namespace A255602

/-- `record[A017666(A007913(2*n+1))]` -/
def P1744089256994733346.Spec : Prop :=
  ∀ n, P1744089256994733346.a n = A255602 (n + 1)

end A255602

/-! ## A255602.P10031500255037006552

`record[A017666(A007947(2*n+1))]`
-/

namespace A255602.P10031500255037006552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017666 (A007947 (2 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A255602.P10031500255037006552

namespace A255602

/-- `record[A017666(A007947(2*n+1))]` -/
def P10031500255037006552.Spec : Prop :=
  ∀ n, P10031500255037006552.a n = A255602 (n + 1)

end A255602

/-! ## A255602.P16116237964014775918

`record[A017666(A015052(2*n+1))]`
-/

namespace A255602.P16116237964014775918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017666 (A015052 (2 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A255602.P16116237964014775918

namespace A255602

/-- `record[A017666(A015052(2*n+1))]` -/
def P16116237964014775918.Spec : Prop :=
  ∀ n, P16116237964014775918.a n = A255602 (n + 1)

end A255602

/-! ## A255602.P2208118622899296823

`record[A017666(A015053(2*n+1))]`
-/

namespace A255602.P2208118622899296823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017666 (A015053 (2 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A255602.P2208118622899296823

namespace A255602

/-- `record[A017666(A015053(2*n+1))]` -/
def P2208118622899296823.Spec : Prop :=
  ∀ n, P2208118622899296823.a n = A255602 (n + 1)

end A255602

/-! ## A255602.P9890671669721164945

`filter[A003968(2*n+1), A325964(#)]`
-/

namespace A255602.P9890671669721164945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003968 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A325964 (f1 j).toNat = 1) n)

end

end A255602.P9890671669721164945

namespace A255602

/-- `filter[A003968(2*n+1), A325964(#)]` -/
def P9890671669721164945.Spec : Prop :=
  ∀ n, P9890671669721164945.a n = A255602 (n + 1)

end A255602

/-!
# A255603: Partial sums of A253090.

The programs for A255603, there is no canonical definition to state claims against.
-/

/-! ## A255603.P18345084954615419377

`∑[A253090(n)]`
-/

namespace A255603.P18345084954615419377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253090 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A255603.P18345084954615419377

/-! ## A255603.P9358718781568613144

`A253090(root(n^3, 3))+a(n-1)` with `a(0)=1`
-/

namespace A255603.P9358718781568613144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A253090 (SequenceMachineLib.roundAway ((n ^ 3 : ℝ) ^ (1 / (3 : ℝ)))).toNat + a (n - 1)

end

end A255603.P9358718781568613144

/-! ## A255603.P18004425545014203875

`A000027(A253090(n)+a(n-1))` with `a(0)=1`
-/

namespace A255603.P18004425545014203875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000027 (A253090 n + a (n - 1)).toNat

end

end A255603.P18004425545014203875

/-! ## A255603.P8861008726261551192

`A000007(n)+A253090(n)+a(n-1)` with `a(0)=1`
-/

namespace A255603.P8861008726261551192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000007 n + (A253090 n + a (n - 1))

end

end A255603.P8861008726261551192

/-! ## A255603.P6057297831333342037

`A253090(n)+a(n-1)-A000038(n)` with `a(0)=1`
-/

namespace A255603.P6057297831333342037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A253090 n + a (n - 1) - A000038 n

end

end A255603.P6057297831333342037

/-! ## A255603.P2643442827680885152

`A253090(n)+a(n-1)*a(A057427(n)-1)` with `a(0)=1`
-/

namespace A255603.P2643442827680885152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A253090 n + a (n - 1) * a (A057427 n - 1).toNat

end

end A255603.P2643442827680885152

/-!
# A255605: Integer part of the area of a pentagon with side length n.

The programs for A255605, the canonical program `A255605.P13061843479836476788` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A255605 has offset 1).

The definition of A255605 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A255605.P13061843479836476788

`floor(5*(n+1)²/(4*tan(π/5)))`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A255605

/-- `floor(5*(n+1)²/(4*tan(π/5)))` -/
def P13061843479836476788.Spec : Prop :=
  ∀ n, P13061843479836476788.a n = A255605 (n + 1)

theorem P13061843479836476788.correct : P13061843479836476788.Spec := by
  intro n
  simp only [A255605, Nat.add_sub_cancel]

end A255605

/-! ## A255605.P10427349984947363223

`A342696(A071397(n+1))`
-/

namespace A255605.P10427349984947363223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342696 (A071397 (n + 1)).toNat

end

end A255605.P10427349984947363223

namespace A255605

/-- `A342696(A071397(n+1))` -/
def P10427349984947363223.Spec : Prop :=
  ∀ n, P10427349984947363223.a n = A255605 (n + 1)

end A255605

/-!
# A255606: Integer part of the area of a hexagon with side length n.

The programs for A255606, the canonical program `A255606.P14772499040504815505` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A255606 has offset 1).

The definition of A255606 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A255606.P14772499040504815505

`floor(6*(n+1)²/(4*tan(π/6)))`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A255606

/-- `floor(6*(n+1)²/(4*tan(π/6)))` -/
def P14772499040504815505.Spec : Prop :=
  ∀ n, P14772499040504815505.a n = A255606 (n + 1)

theorem P14772499040504815505.correct : P14772499040504815505.Spec := by
  intro n
  simp only [A255606, Nat.add_sub_cancel]

end A255606

/-! ## A255606.P4648797716965850382

`floor((3*(n+1))²/sqrt(12))`
-/

namespace A255606.P4648797716965850382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((3 * (n + 1)) ^ 2 : ℝ) / Real.sqrt (12 : ℝ)⌋

end

end A255606.P4648797716965850382

namespace A255606

/-- `floor((3*(n+1))²/sqrt(12))` -/
def P4648797716965850382.Spec : Prop :=
  ∀ n, P4648797716965850382.a n = A255606 (n + 1)

end A255606

/-! ## A255606.P18228801323505802379

`A171970(3*(1+n)²)`
-/

namespace A255606.P18228801323505802379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171970 (3 * (1 + n) ^ 2)

end

end A255606.P18228801323505802379

namespace A255606

/-- `A171970(3*(1+n)²)` -/
def P18228801323505802379.Spec : Prop :=
  ∀ n, P18228801323505802379.a n = A255606 (n + 1)

end A255606

/-! ## A255606.P17772505897948420311

`A172475(3*(n+1)²)`
-/

namespace A255606.P17772505897948420311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172475 (3 * (n + 1) ^ 2)

end

end A255606.P17772505897948420311

namespace A255606

/-- `A172475(3*(n+1)²)` -/
def P17772505897948420311.Spec : Prop :=
  ∀ n, P17772505897948420311.a n = A255606 (n + 1)

end A255606

/-! ## A255606.P16987209897345107723

`A308358(A033581(n+1))`
-/

namespace A255606.P16987209897345107723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308358 (A033581 (n + 1)).toNat

end

end A255606.P16987209897345107723

namespace A255606

/-- `A308358(A033581(n+1))` -/
def P16987209897345107723.Spec : Prop :=
  ∀ n, P16987209897345107723.a n = A255606 (n + 1)

end A255606

/-!
# A255607: Numbers n such that both 4*n+1 and 6*n+1 are primes.

The programs for A255607, the canonical program `A255607.P13320469364282797644` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A255607 has offset 1).

The definition of A255607 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A130800, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A255607.P13320469364282797644

`A130800(n+1)/2`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A255607

/-- `A130800(n+1)/2` -/
def P13320469364282797644.Spec : Prop :=
  ∀ n, P13320469364282797644.a n = (A255607 (n + 1) : ℚ)

end A255607

/-! ## A255607.P13749884346742369461

`floor(A104163(n+1)/6)`
-/

namespace A255607.P13749884346742369461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A104163 (n + 1) : ℚ) / 6⌋

end

end A255607.P13749884346742369461

namespace A255607

/-- `floor(A104163(n+1)/6)` -/
def P13749884346742369461.Spec : Prop :=
  ∀ n, P13749884346742369461.a n = A255607 (n + 1)

end A255607

/-! ## A255607.P3432757365075791090

`floor(A158708(n+2)/4)`
-/

namespace A255607.P3432757365075791090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A158708 (n + 2) : ℚ) / 4⌋

end

end A255607.P3432757365075791090

namespace A255607

/-- `floor(A158708(n+2)/4)` -/
def P3432757365075791090.Spec : Prop :=
  ∀ n, P3432757365075791090.a n = A255607 (n + 1)

end A255607

/-! ## A255607.P2139984536212284833

`(A104163(n+1)-A158708(n+2))/2`
-/

namespace A255607.P2139984536212284833
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A104163 (n + 1) - A158708 (n + 2) : ℚ) / 2

end

end A255607.P2139984536212284833

namespace A255607

/-- `(A104163(n+1)-A158708(n+2))/2` -/
def P2139984536212284833.Spec : Prop :=
  ∀ n, P2139984536212284833.a n = (A255607 (n + 1) : ℚ)

end A255607

/-! ## A255607.P17571133383677403320

`A014682(A130800(1+n))`
-/

namespace A255607.P17571133383677403320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A130800 (1 + n)).toNat

end

end A255607.P17571133383677403320

namespace A255607

/-- `A014682(A130800(1+n))` -/
def P17571133383677403320.Spec : Prop :=
  ∀ n, P17571133383677403320.a n = A255607 (n + 1)

end A255607

/-! ## A255607.P6609444217880363619

`∩[A005098(n+1), A024899(n+1)]`
-/

namespace A255607.P6609444217880363619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005098 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024899 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A255607.P6609444217880363619

namespace A255607

/-- `∩[A005098(n+1), A024899(n+1)]` -/
def P6609444217880363619.Spec : Prop :=
  ∀ n, (P6609444217880363619.a n : ℤ) = A255607 (n + 1)

end A255607

/-! ## A255607.P8636847918945353953

`∩[A005097(n+1), A024892(n+1)]/2`
-/

namespace A255607.P8636847918945353953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005097 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024892 (n + 1)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 2

end

end A255607.P8636847918945353953

namespace A255607

/-- `∩[A005097(n+1), A024892(n+1)]/2` -/
def P8636847918945353953.Spec : Prop :=
  ∀ n, P8636847918945353953.a n = (A255607 (n + 1) : ℚ)

end A255607

/-! ## A255607.P15170335627077641119

`∩[A024892(n+1), A102781(n+1)]/2`
-/

namespace A255607.P15170335627077641119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024892 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102781 (n + 1)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 2

end

end A255607.P15170335627077641119

namespace A255607

/-- `∩[A024892(n+1), A102781(n+1)]/2` -/
def P15170335627077641119.Spec : Prop :=
  ∀ n, P15170335627077641119.a n = (A255607 (n + 1) : ℚ)

end A255607

/-! ## A255607.P14576416210282891228

`eq[2, A121561(4*n+1)*A305973(3*n+1)]`
-/

namespace A255607.P14576416210282891228
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121561 (4 * n + 1) * A305973 (3 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A255607.P14576416210282891228

namespace A255607

/-- `eq[2, A121561(4*n+1)*A305973(3*n+1)]` -/
def P14576416210282891228.Spec : Prop :=
  ∀ n, (P14576416210282891228.a n : ℤ) = A255607 (n + 1)

end A255607

/-! ## A255607.P9660495436535090936

`∩[A024892(n+1), A079111(n+1)]/2`
-/

namespace A255607.P9660495436535090936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024892 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079111 (n + 1)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 2

end

end A255607.P9660495436535090936

namespace A255607

/-- `∩[A024892(n+1), A079111(n+1)]/2` -/
def P9660495436535090936.Spec : Prop :=
  ∀ n, P9660495436535090936.a n = (A255607 (n + 1) : ℚ)

end A255607

/-! ## A255607.P7118045986141898176

`eq[2, A101264(2*n)+A101264(3*n)]`
-/

namespace A255607.P7118045986141898176
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101264 (2 * n) + A101264 (3 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A255607.P7118045986141898176

namespace A255607

/-- `eq[2, A101264(2*n)+A101264(3*n)]` -/
def P7118045986141898176.Spec : Prop :=
  ∀ n, (P7118045986141898176.a n : ℤ) = A255607 (n + 1)

end A255607

/-! ## A255607.P14219760401339337032

`A328399(A130800(n+1)-2)`
-/

namespace A255607.P14219760401339337032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328399 (A130800 (n + 1) - 2).toNat

end

end A255607.P14219760401339337032

namespace A255607

/-- `A328399(A130800(n+1)-2)` -/
def P14219760401339337032.Spec : Prop :=
  ∀ n, P14219760401339337032.a n = A255607 (n + 1)

end A255607

/-! ## A255607.P12501292458430971789

`eq[2, A121561(4*n+1)*A278223(3*n+1)]`
-/

namespace A255607.P12501292458430971789
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121561 (4 * n + 1) * A278223 (3 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A255607.P12501292458430971789

namespace A255607

/-- `eq[2, A121561(4*n+1)*A278223(3*n+1)]` -/
def P12501292458430971789.Spec : Prop :=
  ∀ n, (P12501292458430971789.a n : ℤ) = A255607 (n + 1)

end A255607

/-! ## A255607.P2474720660245348359

`filter[A005098(n+1), A167021(#)]`
-/

namespace A255607.P2474720660245348359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005098 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A167021 (f1 j).toNat = 1) n)

end

end A255607.P2474720660245348359

namespace A255607

/-- `filter[A005098(n+1), A167021(#)]` -/
def P2474720660245348359.Spec : Prop :=
  ∀ n, P2474720660245348359.a n = A255607 (n + 1)

end A255607

/-! ## A255607.P17771320452806859202

`eq[A072815(n), A340101(2*n)]`
-/

namespace A255607.P17771320452806859202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072815 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340101 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A255607.P17771320452806859202

namespace A255607

/-- `eq[A072815(n), A340101(2*n)]` -/
def P17771320452806859202.Spec : Prop :=
  ∀ n, (P17771320452806859202.a n : ℤ) = A255607 (n + 1)

end A255607

/-! ## A255607.P18442161673240359022

`eq[A072815(n), A352063(2*n)]`
-/

namespace A255607.P18442161673240359022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072815 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352063 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A255607.P18442161673240359022

namespace A255607

/-- `eq[A072815(n), A352063(2*n)]` -/
def P18442161673240359022.Spec : Prop :=
  ∀ n, (P18442161673240359022.a n : ℤ) = A255607 (n + 1)

end A255607

/-! ## A255607.P13028112077746036535

`A001281(A130800(n+1))`
-/

namespace A255607.P13028112077746036535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A130800 (n + 1)).toNat

end

end A255607.P13028112077746036535

namespace A255607

/-- `A001281(A130800(n+1))` -/
def P13028112077746036535.Spec : Prop :=
  ∀ n, P13028112077746036535.a n = A255607 (n + 1)

end A255607

/-! ## A255607.P8984313310192847243

`A003602(A130800(n+1)-1)`
-/

namespace A255607.P8984313310192847243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (A130800 (n + 1) - 1).toNat

end

end A255607.P8984313310192847243

namespace A255607

/-- `A003602(A130800(n+1)-1)` -/
def P8984313310192847243.Spec : Prop :=
  ∀ n, P8984313310192847243.a n = A255607 (n + 1)

end A255607

/-! ## A255607.P4472777325016196157

`A220466(A130800(n+1)-1)`
-/

namespace A255607.P4472777325016196157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220466 (A130800 (n + 1) - 1).toNat

end

end A255607.P4472777325016196157

namespace A255607

/-- `A220466(A130800(n+1)-1)` -/
def P4472777325016196157.Spec : Prop :=
  ∀ n, P4472777325016196157.a n = A255607 (n + 1)

end A255607

/-! ## A255607.P9628377943357953519

`A002265(A158708(n+2))`
-/

namespace A255607.P9628377943357953519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A158708 (n + 2)).toNat

end

end A255607.P9628377943357953519

namespace A255607

/-- `A002265(A158708(n+2))` -/
def P9628377943357953519.Spec : Prop :=
  ∀ n, P9628377943357953519.a n = A255607 (n + 1)

end A255607

/-!
# A255609: a(1)=2; a(n) = the smallest prime p such that a(n)-a(n-1) is semiprime (A001358).

The programs for A255609, there is no canonical definition to state claims against.
-/

/-! ## A255609.P6454259516292683404

`A289750(n%a(n-1)+2)` with `a(0)=2`
-/

namespace A255609.P6454259516292683404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A289750 (Int.tmod (n : ℤ) (a (n - 1)) + 2).toNat

end

end A255609.P6454259516292683404

/-! ## A255609.P5719444144309444797

`p?[A289750(n+1)-C(n, n²)]`
-/

namespace A255609.P5719444144309444797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289750 (n + 1) - (Nat.choose n (n ^ 2) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A255609.P5719444144309444797

/-! ## A255609.P7244908121967521720

`A001221(a(n-1))*A289750(n+2)` with `a(0)=2`
-/

namespace A255609.P7244908121967521720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A001221 (a (n - 1)).toNat * A289750 (n + 2)

end

end A255609.P7244908121967521720

/-! ## A255609.P11727042090609127532

`A001222(a(n-1))*A289750(n+2)` with `a(0)=2`
-/

namespace A255609.P11727042090609127532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A001222 (a (n - 1)).toNat * A289750 (n + 2)

end

end A255609.P11727042090609127532

/-! ## A255609.P14987859506154451834

`A006530(A289750(n+2)+floor(acot(n)))`
-/

namespace A255609.P14987859506154451834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A289750 (n + 2) + ⌊SequenceMachineLib.acot (n : ℝ)⌋).toNat

end

end A255609.P14987859506154451834

/-! ## A255609.P12363826616999905161

`A020639(A289750(n+2)+floor(acot(n)))`
-/

namespace A255609.P12363826616999905161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A289750 (n + 2) + ⌊SequenceMachineLib.acot (n : ℝ)⌋).toNat

end

end A255609.P12363826616999905161

/-!
# A255610: G.f.: Product_{k>=1} 1/(1-x^k)^(3*k).

The programs for A255610, there is no canonical definition to state claims against.
-/

/-! ## A255610.P7953212281779961615

`A255961(∑[n+4]+2)`
-/

namespace A255610.P7953212281779961615
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255961 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A255610.P7953212281779961615

/-! ## A255610.P7682056387707148732

`record[A255961(abs(A046691(n)))]`
-/

namespace A255610.P7682056387707148732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255961 |A046691 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A255610.P7682056387707148732

/-! ## A255610.P8386627268847825214

`record[A255961(A027379(n)-1)]`
-/

namespace A255610.P8386627268847825214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255961 (A027379 n - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A255610.P8386627268847825214

/-! ## A255610.P11272013022205848583

`record[A255961(A003215(n)%A000124(n))]`
-/

namespace A255610.P11272013022205848583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255961 (Int.tmod (A003215 n) (A000124 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A255610.P11272013022205848583

/-!
# A255611: G.f.: Product_{k>=1} 1/(1-x^k)^(4*k).

The programs for A255611, there is no canonical definition to state claims against.
-/

/-! ## A255611.P17843862573997376651

`∑{#}[n, A161870(#)*A161870(n-#)]`
-/

namespace A255611.P17843862573997376651
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A161870 k * A161870 (n - k)

end

end A255611.P17843862573997376651

/-! ## A255611.P18014522386026844024

`A255961(∑[n+5]+5)`
-/

namespace A255611.P18014522386026844024
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255961 (∑ j ∈ Finset.range (n + 1), f1 j + 5)

end

end A255611.P18014522386026844024

/-! ## A255611.P6435949753180329924

`record[A255961(A052905(n))]`
-/

namespace A255611.P6435949753180329924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255961 (A052905 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A255611.P6435949753180329924

/-! ## A255611.P4548150638670102212

`record[A255961(A055999(n)+1)]`
-/

namespace A255611.P4548150638670102212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255961 (A055999 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A255611.P4548150638670102212

/-! ## A255611.P9124162647685661157

`record[A255961(abs(A046691(n))-1)]`
-/

namespace A255611.P9124162647685661157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255961 (|A046691 n| - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A255611.P9124162647685661157

/-! ## A255611.P6218429117831875703

`record[A255961(record[A069981(n)]+n)]`
-/

namespace A255611.P6218429117831875703
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069981 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255961 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A255611.P6218429117831875703

/-! ## A255611.P16409727586864307089

`record[A255961(A046691(n+1)-1)]`
-/

namespace A255611.P16409727586864307089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255961 (A046691 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A255611.P16409727586864307089

/-! ## A255611.P5092610229598000870

`record[A255961(A027379(n+1)-2)]`
-/

namespace A255611.P5092610229598000870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255961 (A027379 (n + 1) - 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A255611.P5092610229598000870

/-! ## A255611.P2498395574792597267

`record[A255961(A055998(n+1)-2)]`
-/

namespace A255611.P2498395574792597267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255961 (A055998 (n + 1) - 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A255611.P2498395574792597267

/-! ## A255611.P15230677212259298687

`record[A255961(A034856(n+2)-3)]`
-/

namespace A255611.P15230677212259298687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255961 (A034856 (n + 2) - 3).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A255611.P15230677212259298687

/-! ## A255611.P9318843869242184807

`record[A255961(A051936(n+4)-n)]`
-/

namespace A255611.P9318843869242184807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255961 (A051936 (n + 4) - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A255611.P9318843869242184807

/-!
# A255612: G.f.: Product_{k>=1} 1/(1-x^k)^(5*k).

The programs for A255612, there is no canonical definition to state claims against.
-/

/-! ## A255612.P1088236054230544187

`record[A255961(∑[n+3]-3)]`
-/

namespace A255612.P1088236054230544187
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255961 (∑ j ∈ Finset.range (n + 1), f2 j - 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A255612.P1088236054230544187

/-! ## A255612.P10328871906747725174

`A255961((n+4)²-∑[n+1])`
-/

namespace A255612.P10328871906747725174
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255961 ((n + 4) ^ 2 - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A255612.P10328871906747725174

/-!
# A255613: G.f.: Product_{k>=1} 1/(1-x^k)^(6*k).

The programs for A255613, there is no canonical definition to state claims against.
-/

/-! ## A255613.P10912350286513307955

`∑{#}[n, A255610(#)*A255610(n-#)]`
-/

namespace A255613.P10912350286513307955
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A255610 k * A255610 (n - k)

end

end A255613.P10912350286513307955

/-! ## A255613.P9962313397055642775

`A255961(A155212(n+3)+1)`
-/

namespace A255613.P9962313397055642775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255961 (A155212 (n + 3) + 1).toNat

end

end A255613.P9962313397055642775

/-!
# A255614: G.f.: Product_{k>=1} 1/(1-x^k)^(7*k).

The programs for A255614, there is no canonical definition to state claims against.
-/

/-! ## A255614.P6385575621911262223

`A255961(A055998(n+6)-5)`
-/

namespace A255614.P6385575621911262223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255961 (A055998 (n + 6) - 5).toNat

end

end A255614.P6385575621911262223

/-!
# A255615: a(n) is the number of even A098550 terms less than 2*prime(n) but occurring after 2*prime(n).

The programs for A255615, there is no canonical definition to state claims against.
-/

/-! ## A255615.P15194881001396409851

`p?[A014681(n)]-A254669(n+1)`
-/

namespace A255615.P15194881001396409851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - A254669 (n + 1)

end

end A255615.P15194881001396409851

/-! ## A255615.P17790976535296988028

`A000040(1+n)-A254669(n+1)`
-/

namespace A255615.P17790976535296988028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (1 + n) - A254669 (n + 1)

end

end A255615.P17790976535296988028

/-! ## A255615.P16693267454993160315

`A000040(n+1)%A254669(n+1)`
-/

namespace A255615.P16693267454993160315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 1)) (A254669 (n + 1))

end

end A255615.P16693267454993160315

/-! ## A255615.P11900430372271338732

`p?[A121216(n+1)]-A254669(n+1)`
-/

namespace A255615.P11900430372271338732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121216 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - A254669 (n + 1)

end

end A255615.P11900430372271338732

/-! ## A255615.P16816458493577843833

`p?[A210882(n+1)]-A254669(n+1)`
-/

namespace A255615.P16816458493577843833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210882 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - A254669 (n + 1)

end

end A255615.P16816458493577843833

/-! ## A255615.P5511909088938462229

`p?[(n+1)*A001221(n+1)]-A254669(n+1)`
-/

namespace A255615.P5511909088938462229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A001221 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - A254669 (n + 1)

end

end A255615.P5511909088938462229

/-! ## A255615.P12379273352054867713

`p?[A064413(n+1)]-A254669(n+1)`
-/

namespace A255615.P12379273352054867713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064413 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - A254669 (n + 1)

end

end A255615.P12379273352054867713

/-! ## A255615.P1070457978954068125

`p?[A098550(n+1)]-A254669(n+1)`
-/

namespace A255615.P1070457978954068125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098550 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - A254669 (n + 1)

end

end A255615.P1070457978954068125

/-! ## A255615.P10739632544714275894

`p?[A247942(n+1)]-A254669(n+1)`
-/

namespace A255615.P10739632544714275894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247942 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - A254669 (n + 1)

end

end A255615.P10739632544714275894

/-! ## A255615.P5935432457938174359

`p?[A090705(n+1)]-A254669(n+1)`
-/

namespace A255615.P5935432457938174359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090705 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - A254669 (n + 1)

end

end A255615.P5935432457938174359

/-!
# A255616: Table read by antidiagonals, T(n,k) = floor(sqrt(k^n)), n >= 0, k >=1.

The programs for A255616, the canonical program `A255616.P9739089766294942687` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A255616 has offset 0).

The definition of A255616 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(sqrt((row(n)-col(n)+1)^col(n)))` (program `A255616.P9739089766294942687`, by `A255616.P9739089766294942687.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A255616.P9739089766294942687

`floor(sqrt((row(n)-col(n)+1)^col(n)))`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A255616

/-- `floor(sqrt((row(n)-col(n)+1)^col(n)))` -/
def P9739089766294942687.Spec : Prop :=
  ∀ n, P9739089766294942687.a n = A255616 n

theorem P9739089766294942687.correct : P9739089766294942687.Spec := by
  intro n
  simp only [A255616]

end A255616

/-! ## A255616.P5041881220753698554

`floor(sqrt(A009999(n)))`
-/

namespace A255616.P5041881220753698554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A009999 n)

end

end A255616.P5041881220753698554

namespace A255616

/-- `floor(sqrt(A009999(n)))` -/
def P5041881220753698554.Spec : Prop :=
  ∀ n, P5041881220753698554.a n = A255616 n

end A255616

/-! ## A255616.P16527433093533226849

`floor(sqrt(A004736(n+1)^col(n)))`
-/

namespace A255616.P16527433093533226849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A004736 (n + 1) ^ SequenceMachineLib.triCol n)

end

end A255616.P16527433093533226849

namespace A255616

/-- `floor(sqrt(A004736(n+1)^col(n)))` -/
def P16527433093533226849.Spec : Prop :=
  ∀ n, P16527433093533226849.a n = A255616 n

end A255616

/-! ## A255616.P6089257241692335362

`floor(root(A009999(n), A040000(n)))`
-/

namespace A255616.P6089257241692335362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A009999 n : ℝ) ^ (1 / (A040000 n : ℝ))⌋

end

end A255616.P6089257241692335362

namespace A255616

/-- `floor(root(A009999(n), A040000(n)))` -/
def P6089257241692335362.Spec : Prop :=
  ∀ n, P6089257241692335362.a n = A255616 n

end A255616

/-! ## A255616.P7308713723073608556

`floor(sqrt(A004736(n+1)^A002262(n)))`
-/

namespace A255616.P7308713723073608556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt ((A004736 (n + 1) : ℚ) ^ (A002262 n : ℤ) : ℝ)⌋

end

end A255616.P7308713723073608556

namespace A255616

/-- `floor(sqrt(A004736(n+1)^A002262(n)))` -/
def P7308713723073608556.Spec : Prop :=
  ∀ n, P7308713723073608556.a n = A255616 n

end A255616

/-! ## A255616.P17764776429813862509

`floor(sqrt(A004736(n+1)^A191532(n)))`
-/

namespace A255616.P17764776429813862509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt ((A004736 (n + 1) : ℚ) ^ (A191532 n : ℤ) : ℝ)⌋

end

end A255616.P17764776429813862509

namespace A255616

/-- `floor(sqrt(A004736(n+1)^A191532(n)))` -/
def P17764776429813862509.Spec : Prop :=
  ∀ n, P17764776429813862509.a n = A255616 n

end A255616

/-! ## A255616.P14300456563969124963

`floor(sqrt(A051128(n+1)/A004736(n+1)))`
-/

namespace A255616.P14300456563969124963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt ((A051128 (n + 1) : ℚ) / (A004736 (n + 1) : ℚ) : ℝ)⌋

end

end A255616.P14300456563969124963

namespace A255616

/-- `floor(sqrt(A051128(n+1)/A004736(n+1)))` -/
def P14300456563969124963.Spec : Prop :=
  ∀ n, P14300456563969124963.a n = A255616 n

end A255616

/-! ## A255616.P684435307150266221

`floor(sqrt(A095887(n+1)/A095891(n+1)))`
-/

namespace A255616.P684435307150266221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt ((A095887 (n + 1) : ℚ) / (A095891 (n + 1) : ℚ) : ℝ)⌋

end

end A255616.P684435307150266221

namespace A255616

/-- `floor(sqrt(A095887(n+1)/A095891(n+1)))` -/
def P684435307150266221.Spec : Prop :=
  ∀ n, P684435307150266221.a n = A255616 n

end A255616

/-! ## A255616.P17497430899282147905

`A000196(A009999(n))`
-/

namespace A255616.P17497430899282147905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A009999 n).toNat

end

end A255616.P17497430899282147905

namespace A255616

/-- `A000196(A009999(n))` -/
def P17497430899282147905.Spec : Prop :=
  ∀ n, P17497430899282147905.a n = A255616 n

end A255616

/-!
# A255617: a(n) is the smallest even term in A098550 less than 2*prime(n) but occurring after 2*prime(n); a(n)=0 if no such term exists.

The programs for A255617, there is no canonical definition to state claims against.
-/

/-! ## A255617.P6075990546748242982

`A233207(and(A030019(n), A194368(n+1)))`
-/

namespace A255617.P6075990546748242982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233207 (Int.land (A030019 n) (A194368 (n + 1))).toNat

end

end A255617.P6075990546748242982

/-!
# A255618: Number of length n+4 0..2 arrays with at most two downsteps in every 4 consecutive neighbor pairs.

The programs for A255618, there is no canonical definition to state claims against.
-/

/-! ## A255618.P374653474401828402

`A255622(3+∑[4+n])`
-/

namespace A255618.P374653474401828402
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255622 (3 + ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A255618.P374653474401828402

/-!
# A255619: Number of length n+5 0..2 arrays with at most two downsteps in every 5 consecutive neighbor pairs.

The programs for A255619, there is no canonical definition to state claims against.
-/

/-! ## A255619.P16413087930771310959

`A255622(∑[n+5]+6)`
-/

namespace A255619.P16413087930771310959
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255622 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A255619.P16413087930771310959

/-!
# A255620: Number of length n+6 0..2 arrays with at most two downsteps in every 6 consecutive neighbor pairs.

The programs for A255620, there is no canonical definition to state claims against.
-/

/-! ## A255620.P6384053363372776510

`A255622((n+4)²-∑[n+1]+1)`
-/

namespace A255620.P6384053363372776510
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255622 (((n + 4) ^ 2 : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + 1).toNat

end

end A255620.P6384053363372776510

/-!
# A255621: Number of length n+7 0..2 arrays with at most two downsteps in every 7 consecutive neighbor pairs.

The programs for A255621, there is no canonical definition to state claims against.
-/

/-! ## A255621.P10294965846837015247

`A255622(A055999(n+4))`
-/

namespace A255621.P10294965846837015247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255622 (A055999 (n + 4)).toNat

end

end A255621.P10294965846837015247

/-!
# A255622: T(n,k)=Number of length n+k 0..2 arrays with at most two downsteps in every k consecutive neighbor pairs.

The programs for A255622, there is no canonical definition to state claims against.
-/

/-! ## A255622.P8592629301095246414

`A209511(A316883(n+1))%(4*A109814(A203656(n+1)))`
-/

namespace A255622.P8592629301095246414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A209511 (A316883 (n + 1)).toNat) (4 * A109814 (A203656 (n + 1)).toNat)

end

end A255622.P8592629301095246414

/-!
# A255623: Number of length n+1 0..2 arrays with at most two downsteps in every n consecutive neighbor pairs.

The programs for A255623, there is no canonical definition to state claims against.
-/

/-! ## A255623.P8871900410593344766

`A255622(∑[n]+1)`
-/

namespace A255623.P8871900410593344766
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255622 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A255623.P8871900410593344766

/-!
# A255624: Number of length n+2 0..2 arrays with at most two downsteps in every n consecutive neighbor pairs.

The programs for A255624, there is no canonical definition to state claims against.
-/

/-! ## A255624.P8486527202582944095

`A255622(∑[n+1]+2)`
-/

namespace A255624.P8486527202582944095
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255622 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A255624.P8486527202582944095

/-! ## A255624.P1179690400301026335

`record[A255622(A255546(n+1)+1)]`
-/

namespace A255624.P1179690400301026335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255622 (A255546 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A255624.P1179690400301026335

/-!
# A255625: Number of length n+3 0..2 arrays with at most two downsteps in every n consecutive neighbor pairs.

The programs for A255625, there is no canonical definition to state claims against.
-/

/-! ## A255625.P9145986100406371162

`A255622(∑[n+2]+4)`
-/

namespace A255625.P9145986100406371162
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255622 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A255625.P9145986100406371162

/-!
# A255626: Number of length n+4 0..2 arrays with at most two downsteps in every n consecutive neighbor pairs.

The programs for A255626, there is no canonical definition to state claims against.
-/

/-! ## A255626.P10024531228714869535

`A255622(∑[n+3]+7)`
-/

namespace A255626.P10024531228714869535
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255622 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A255626.P10024531228714869535

/-!
# A255627: Number of length n+5 0..2 arrays with at most two downsteps in every n consecutive neighbor pairs.

The programs for A255627, there is no canonical definition to state claims against.
-/

/-! ## A255627.P6093526839118098751

`A255622(∑[n+4]+11)`
-/

namespace A255627.P6093526839118098751
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255622 (∑ j ∈ Finset.range (n + 1), f1 j + 11)

end

end A255627.P6093526839118098751

/-!
# A255628: Number of length n+6 0..2 arrays with at most two downsteps in every n consecutive neighbor pairs.

The programs for A255628, there is no canonical definition to state claims against.
-/

/-! ## A255628.P17878663690498729821

`A255622(A167499(n+4)+1)`
-/

namespace A255628.P17878663690498729821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255622 (A167499 (n + 4) + 1).toNat

end

end A255628.P17878663690498729821

/-!
# A255629: Number of length n+7 0..2 arrays with at most two downsteps in every n consecutive neighbor pairs.

The programs for A255629, there is no canonical definition to state claims against.
-/

/-! ## A255629.P13702665854897414267

`A255622(A056119(n)+28)`
-/

namespace A255629.P13702665854897414267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255622 (A056119 n + 28).toNat

end

end A255629.P13702665854897414267

/-!
# A255630: Number of n-length ternary words avoiding runs of zeros of length 1 (mod 3).

The programs for A255630, the canonical program `A255630.P8199913126517320119` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A255630 has offset 0).

The definition of A255630 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A255630.P9581832497392947891

`ogf((1+x^2)/(1-2x-3x^3))`
-/

namespace A255630.P9581832497392947891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, 1] [1, -2, 0, -3] n

end

end A255630.P9581832497392947891

namespace A255630

/-- `ogf((1+x^2)/(1-2x-3x^3))` -/
def P9581832497392947891.Spec : Prop :=
  ∀ n, P9581832497392947891.a n = A255630 n

end A255630

/-! ## A255630.P8199913126517320119

`2*a(n-1)+3*a(n-3)` with `a(0)=1, a(1)=2, a(2)=5`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A255630

/-- `2*a(n-1)+3*a(n-3)` -/
def P8199913126517320119.Spec : Prop :=
  ∀ n, (P8199913126517320119.a n : ℤ) = A255630 n

theorem P8199913126517320119.correct : P8199913126517320119.Spec := by
  intro n
  simp only [A255630]

end A255630

/-! ## A255630.P17761398052819521564

`(A099525(n+1)+A099525(n))/3`
-/

namespace A255630.P17761398052819521564
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A099525 (n + 1) + A099525 n : ℚ) / 3

end

end A255630.P17761398052819521564

namespace A255630

/-- `(A099525(n+1)+A099525(n))/3` -/
def P17761398052819521564.Spec : Prop :=
  ∀ n, P17761398052819521564.a n = (A255630 n : ℚ)

end A255630

/-! ## A255630.P7310297045463220032

`A289438(A099525(n+1)+A099525(n))`
-/

namespace A255630.P7310297045463220032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289438 (A099525 (n + 1) + A099525 n).toNat

end

end A255630.P7310297045463220032

namespace A255630

/-- `A289438(A099525(n+1)+A099525(n))` -/
def P7310297045463220032.Spec : Prop :=
  ∀ n, P7310297045463220032.a n = A255630 n

end A255630

/-! ## A255630.P14805644308760339527

`A002264(A099525(n+1)+A099525(n)+1)`
-/

namespace A255630.P14805644308760339527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A099525 (n + 1) + (A099525 n + 1)).toNat

end

end A255630.P14805644308760339527

namespace A255630

/-- `A002264(A099525(n+1)+A099525(n)+1)` -/
def P14805644308760339527.Spec : Prop :=
  ∀ n, P14805644308760339527.a n = A255630 n

end A255630

/-!
# A255631: Number of n-length words on {0,1,2,3} avoiding runs of zeros of length 1 (mod 3).

The programs for A255631, the canonical program `A255631.P13711285449746520027` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A255631 has offset 0).

The definition of A255631 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A255631.P10950110351834578226

`ogf((1+x^2)/(1-3x-4x^3))`
-/

namespace A255631.P10950110351834578226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, 1] [1, -3, 0, -4] n

end

end A255631.P10950110351834578226

namespace A255631

/-- `ogf((1+x^2)/(1-3x-4x^3))` -/
def P10950110351834578226.Spec : Prop :=
  ∀ n, P10950110351834578226.a n = A255631 n

end A255631

/-! ## A255631.P13711285449746520027

`3*a(n-1)+4*a(n-3)` with `a(0)=1, a(1)=3, a(2)=10`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A255631

/-- `3*a(n-1)+4*a(n-3)` -/
def P13711285449746520027.Spec : Prop :=
  ∀ n, (P13711285449746520027.a n : ℤ) = A255631 n

theorem P13711285449746520027.correct : P13711285449746520027.Spec := by
  intro n
  simp only [A255631]

end A255631

/-!
# A255632: Number of n-length words on {0,1,2,3,4} avoiding runs of zeros of length 1 (mod 3).

The programs for A255632, the canonical program `A255632.P10648241346714690253` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A255632 has offset 0).

The definition of A255632 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A255632.P16321773548353692524

`ogf((1+x^2)/(1-4x-5x^3))`
-/

namespace A255632.P16321773548353692524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, 1] [1, -4, 0, -5] n

end

end A255632.P16321773548353692524

namespace A255632

/-- `ogf((1+x^2)/(1-4x-5x^3))` -/
def P16321773548353692524.Spec : Prop :=
  ∀ n, P16321773548353692524.a n = A255632 n

end A255632

/-! ## A255632.P10648241346714690253

`4*a(n-1)+5*a(n-3)` with `a(0)=1, a(1)=4, a(2)=17`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A255632

/-- `4*a(n-1)+5*a(n-3)` -/
def P10648241346714690253.Spec : Prop :=
  ∀ n, (P10648241346714690253.a n : ℤ) = A255632 n

theorem P10648241346714690253.correct : P10648241346714690253.Spec := by
  intro n
  simp only [A255632]

end A255632

/-!
# A255633: Number of n-length words on {0,1,2,3,4,5} avoiding runs of zeros of length 1 (mod 3).

The programs for A255633, the canonical program `A255633.P17769772010555411697` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A255633 has offset 0).

The definition of A255633 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A255633.P13468935099533827516

`ogf((1+x^2)/(1-5x-6x^3))`
-/

namespace A255633.P13468935099533827516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, 1] [1, -5, 0, -6] n

end

end A255633.P13468935099533827516

namespace A255633

/-- `ogf((1+x^2)/(1-5x-6x^3))` -/
def P13468935099533827516.Spec : Prop :=
  ∀ n, P13468935099533827516.a n = A255633 n

end A255633

/-! ## A255633.P17769772010555411697

`5*a(n-1)+6*a(n-3)` with `a(0)=1, a(1)=5, a(2)=26`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A255633

/-- `5*a(n-1)+6*a(n-3)` -/
def P17769772010555411697.Spec : Prop :=
  ∀ n, (P17769772010555411697.a n : ℤ) = A255633 n

theorem P17769772010555411697.correct : P17769772010555411697.Spec := by
  intro n
  simp only [A255633]

end A255633

/-!
# A255634: Numbers n such that 1 + 16n^2 is prime.

The programs for A255634, there is no canonical definition to state claims against.
-/

/-! ## A255634.P2162169892124658222

`record[A001912(n+1)/A020639(A001912(n+1))]`
-/

namespace A255634.P2162169892124658222
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001912 (n + 1) : ℚ) / (A020639 (A001912 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A255634.P2162169892124658222

/-! ## A255634.P15337626745482426241

`∩[A001912(n+1), A005843(n)]/2`
-/

namespace A255634.P15337626745482426241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001912 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 2

end

end A255634.P15337626745482426241

/-! ## A255634.P2496371682945483012

`eq[0, A366193(2*n)]`
-/

namespace A255634.P2496371682945483012
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366193 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A255634.P2496371682945483012

/-! ## A255634.P1839942311078355233

`record[A032742(A001912(n+1))]`
-/

namespace A255634.P1839942311078355233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A001912 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A255634.P1839942311078355233

/-! ## A255634.P9209176751069919072

`A133419(∩[2*n, A001912(n+1)])`
-/

namespace A255634.P9209176751069919072
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001912 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133419 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A255634.P9209176751069919072

/-! ## A255634.P884519658916024377

`lt[A008706(n+1), A256970(2*(n+1))]+1`
-/

namespace A255634.P884519658916024377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008706 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256970 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A255634.P884519658916024377

/-! ## A255634.P11372793765926764614

`lt[A017449(n+1), A256970(2*(n+1))]+1`
-/

namespace A255634.P11372793765926764614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017449 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256970 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A255634.P11372793765926764614

/-! ## A255634.P1347512455289562629

`lt[A178339(n+2), A256970(2*(n+1))]+1`
-/

namespace A255634.P1347512455289562629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178339 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256970 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A255634.P1347512455289562629

/-! ## A255634.P9258568434729460926

`lt[A017461(2*n), A256970(2*(n+1))]+1`
-/

namespace A255634.P9258568434729460926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017461 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256970 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A255634.P9258568434729460926

/-! ## A255634.P9620080493973580075

`eq[1, A053000(4*n)]`
-/

namespace A255634.P9620080493973580075
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053000 (4 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A255634.P9620080493973580075

/-! ## A255634.P14745761631497108984

`eq[1, A193330(4*n)]`
-/

namespace A255634.P14745761631497108984
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193330 (4 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A255634.P14745761631497108984

/-! ## A255634.P15269882081288872494

`eq[2, A193432(4*n)]`
-/

namespace A255634.P15269882081288872494
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193432 (4 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A255634.P15269882081288872494

/-! ## A255634.P17528085055894796810

`eq[2, A278162(4*n)]`
-/

namespace A255634.P17528085055894796810
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278162 (4 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A255634.P17528085055894796810

/-! ## A255634.P5773655648935295530

`eq[8, A333167(A008574(n))]`
-/

namespace A255634.P5773655648935295530
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333167 (A008574 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A255634.P5773655648935295530

/-! ## A255634.P8264000934570378424

`record[A054576(A005574(n+1))]`
-/

namespace A255634.P8264000934570378424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054576 (A005574 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A255634.P8264000934570378424

/-! ## A255634.P9749818670752683660

`record[A054576(A090693(n+1)-1)]`
-/

namespace A255634.P9749818670752683660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054576 (A090693 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A255634.P9749818670752683660

/-! ## A255634.P14119207605253218133

`eq[A062157(n+1), A284376(2*n)]/2`
-/

namespace A255634.P14119207605253218133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284376 (2 * n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j = f2 j) n : ℚ) / 2

end

end A255634.P14119207605253218133

/-! ## A255634.P13497181433534340113

`lt[A004277(n), A247339(A004277(2*n))]`
-/

namespace A255634.P13497181433534340113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247339 (A004277 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A255634.P13497181433534340113

/-! ## A255634.P11968883572843390474

`lt[A002522(n+1), A089120(A004277(2*n))]`
-/

namespace A255634.P11968883572843390474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002522 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089120 (A004277 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A255634.P11968883572843390474

/-! ## A255634.P6573255794090824977

`lt[A005574(n+2), A089120(A004277(2*n))]`
-/

namespace A255634.P6573255794090824977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005574 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089120 (A004277 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A255634.P6573255794090824977

/-!
# A255635: Numbers n such that 1+16n^2, 1+16(n+1)^2 and 1+16(n+2)^2 are prime.

The programs for A255635, there is no canonical definition to state claims against.
-/

/-! ## A255635.P10838720811369656861

`A193584(A037385(n+2))`
-/

namespace A255635.P10838720811369656861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193584 (A037385 (n + 2)).toNat

end

end A255635.P10838720811369656861

/-!
# A255636: Number A(n,k) of n-node rooted trees with a forbidden limb of length k; square array A(n,k), n>=1, k>=1, read by antidiagonals.

The programs for A255636, there is no canonical definition to state claims against.
-/

/-! ## A255636.P17697935804732219235

`A300705(A061579(n))`
-/

namespace A255636.P17697935804732219235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300705 (A061579 n).toNat

end

end A255636.P17697935804732219235

/-! ## A255636.P4922375690247291752

`A351522(A262163(n)²)`
-/

namespace A255636.P4922375690247291752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351522 (A262163 n ^ 2).toNat

end

end A255636.P4922375690247291752

/-! ## A255636.P7395053139787308663

`A322452(A013618(n))`
-/

namespace A255636.P7395053139787308663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322452 (A013618 n).toNat

end

end A255636.P7395053139787308663

/-! ## A255636.P5912199578835613391

`A115722(A395141(n))`
-/

namespace A255636.P5912199578835613391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115722 (A395141 n).toNat

end

end A255636.P5912199578835613391

/-! ## A255636.P15312134997634173284

`A333632(A392379(n))`
-/

namespace A255636.P15312134997634173284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333632 (A392379 n).toNat

end

end A255636.P15312134997634173284

/-!
# A255637: Number of n-node rooted trees with a forbidden limb of length 7.

The programs for A255637, there is no canonical definition to state claims against.
-/

/-! ## A255637.P3485448060511989175

`A255636(A055999(n+4))`
-/

namespace A255637.P3485448060511989175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255636 (A055999 (n + 4)).toNat

end

end A255637.P3485448060511989175

/-! ## A255637.P10493785007824250123

`A318800(A077168(n))`
-/

namespace A255637.P10493785007824250123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318800 (A077168 n).toNat

end

end A255637.P10493785007824250123

/-! ## A255637.P16510933579972484966

`A318853(A044916(n+1))`
-/

namespace A255637.P16510933579972484966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318853 (A044916 (n + 1)).toNat

end

end A255637.P16510933579972484966

/-! ## A255637.P3157074997503066226

`A318800(n+1)`
-/

namespace A255637.P3157074997503066226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318800 (n + 1)

end

end A255637.P3157074997503066226

/-! ## A255637.P15363048278362519186

`filter[A318800(n), A145568(#)]`
-/

namespace A255637.P15363048278362519186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318800 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A145568 (f1 j).toNat = 1) n)

end

end A255637.P15363048278362519186

/-!
# A255638: Number of n-node rooted trees with a forbidden limb of length 8.

The programs for A255638, there is no canonical definition to state claims against.
-/

/-! ## A255638.P17263231716748306224

`A255636(A046691(n+6)-3)`
-/

namespace A255638.P17263231716748306224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255636 (A046691 (n + 6) - 3).toNat

end

end A255638.P17263231716748306224

/-! ## A255638.P7800971148853889100

`A318801(A043320(n+1))`
-/

namespace A255638.P7800971148853889100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318801 (A043320 (n + 1)).toNat

end

end A255638.P7800971148853889100

/-! ## A255638.P16673385311411788509

`filter[A318801(n), A368916(#)]`
-/

namespace A255638.P16673385311411788509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318801 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A368916 (f1 j).toNat = 1) n)

end

end A255638.P16673385311411788509

/-! ## A255638.P9657246895623606295

`filter[A318854(n), A368916(#)]`
-/

namespace A255638.P9657246895623606295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318854 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A368916 (f1 j).toNat = 1) n)

end

end A255638.P9657246895623606295

/-! ## A255638.P9110467218739695201

`A318801(A077168(n))`
-/

namespace A255638.P9110467218739695201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318801 (A077168 n).toNat

end

end A255638.P9110467218739695201

/-!
# A255639: Number of n-node rooted trees with a forbidden limb of length 9.

The programs for A255639, there is no canonical definition to state claims against.
-/

/-! ## A255639.P14318178258652507089

`A255636(A155212(n+5))`
-/

namespace A255639.P14318178258652507089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255636 (A155212 (n + 5)).toNat

end

end A255639.P14318178258652507089

/-! ## A255639.P3152071940194522110

`A318802(A043320(n+1))`
-/

namespace A255639.P3152071940194522110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318802 (A043320 (n + 1)).toNat

end

end A255639.P3152071940194522110

/-! ## A255639.P7372931002907043868

`filter[A318802(n), A368916(#)]`
-/

namespace A255639.P7372931002907043868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318802 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A368916 (f1 j).toNat = 1) n)

end

end A255639.P7372931002907043868

/-! ## A255639.P13956894386754457367

`filter[A318855(n), A368916(#)]`
-/

namespace A255639.P13956894386754457367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318855 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A368916 (f1 j).toNat = 1) n)

end

end A255639.P13956894386754457367

/-! ## A255639.P5952611329527712523

`A318802(A077168(n))`
-/

namespace A255639.P5952611329527712523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318802 (A077168 n).toNat

end

end A255639.P5952611329527712523

/-!
# A255640: Number of n-node rooted trees with a forbidden limb of length 10.

The programs for A255640, there is no canonical definition to state claims against.
-/

/-! ## A255640.P13685301002514471157

`A255636(A046691(n+8)-5)`
-/

namespace A255640.P13685301002514471157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255636 (A046691 (n + 8) - 5).toNat

end

end A255640.P13685301002514471157

/-! ## A255640.P3571168680360616975

`A318803(A043320(n+1))`
-/

namespace A255640.P3571168680360616975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318803 (A043320 (n + 1)).toNat

end

end A255640.P3571168680360616975

/-! ## A255640.P4979216923407653981

`A318803(A077168(n))`
-/

namespace A255640.P4979216923407653981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318803 (A077168 n).toNat

end

end A255640.P4979216923407653981

/-! ## A255640.P12290198805801468133

`A318856(A044916(n+1))`
-/

namespace A255640.P12290198805801468133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318856 (A044916 (n + 1)).toNat

end

end A255640.P12290198805801468133

/-! ## A255640.P6514363460949267637

`filter[A318803(n), A368916(#)]`
-/

namespace A255640.P6514363460949267637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318803 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A368916 (f1 j).toNat = 1) n)

end

end A255640.P6514363460949267637

/-!
# A255641: Smallest number requiring n 1's to build using +, * and -.

The programs for A255641, there is no canonical definition to state claims against.
-/

/-! ## A255641.P11496404002676920995

`fp[A091333(n+1)]+1`
-/

namespace A255641.P11496404002676920995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091333 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (n : ℤ) < f1 j) 0 + 1

end

end A255641.P11496404002676920995

/-! ## A255641.P11235106021894205413

`∪[A048183(n), A354423(n)]`
-/

namespace A255641.P11235106021894205413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048183 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354423 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A255641.P11235106021894205413

/-! ## A255641.P5164034356134031820

`A038107(A058348(3*n))+A005520(n+1)`
-/

namespace A255641.P5164034356134031820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038107 (A058348 (3 * n)).toNat + A005520 (n + 1)

end

end A255641.P5164034356134031820

/-!
# A255642: a(n) = n*((n mod 3)*(n mod 5)-((n mod 3)+(n mod 5))).

The programs for A255642, the canonical program `A255642.P576563021112015091` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A255642 has offset 0).

The definition of A255642 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(n%3*n%5-(n%3+n%5))` (program `A255642.P576563021112015091`, by `A255642.P576563021112015091.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A255642.P576563021112015091

`n*(n%3*n%5-(n%3+n%5))`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A255642

/-- `n*(n%3*n%5-(n%3+n%5))` -/
def P576563021112015091.Spec : Prop :=
  ∀ n, P576563021112015091.a n = A255642 n

theorem P576563021112015091.correct : P576563021112015091.Spec := by
  intro n
  simp only [A255642]

end A255642

/-!
# A255644: Difference between sums of quadratic residues and non-residues modulo n (residues are not necessarily coprime to n).

The programs for A255644, there is no canonical definition to state claims against.
-/

/-! ## A255644.P8064087299864651679

`∑[n]-2*A165898(n+1)`
-/

namespace A255644.P8064087299864651679
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 2 * A165898 (n + 1)

end

end A255644.P8064087299864651679

/-! ## A255644.P15891055471352101518

`2*A165909(1+n)-∑[n]`
-/

namespace A255644.P15891055471352101518
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A165909 (1 + n) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A255644.P15891055471352101518

/-! ## A255644.P893837191996661714

`∑[n]-A005843(A165898(n+1))`
-/

namespace A255644.P893837191996661714
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A005843 (A165898 (n + 1)).toNat

end

end A255644.P893837191996661714

/-! ## A255644.P7876256874301875513

`A005843(A165909(n+1))-∑[n]`
-/

namespace A255644.P7876256874301875513
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A165909 (n + 1)).toNat - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A255644.P7876256874301875513

/-! ## A255644.P8620544995328551804

`A165909(n+1)-A165898(n+1)`
-/

namespace A255644.P8620544995328551804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165909 (n + 1) - A165898 (n + 1)

end

end A255644.P8620544995328551804

/-! ## A255644.P17203284823345042863

`A000124(n)-A005408(A165898(n+1))`
-/

namespace A255644.P17203284823345042863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 n - A005408 (A165898 (n + 1)).toNat

end

end A255644.P17203284823345042863

/-! ## A255644.P18122078299784234616

`A005408(A165909(n+1))-A000124(n)`
-/

namespace A255644.P18122078299784234616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A165909 (n + 1)).toNat - A000124 n

end

end A255644.P18122078299784234616

/-!
# A255645: Partial sums of A134660.

The programs for A255645, the canonical program `A255645.P7683674713413729439` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A255645 has offset 0).

The definition of A255645 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A255645.P7683674713413729439

`∑[A134660(n)]`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A255645

/-- `∑[A134660(n)]` -/
def P7683674713413729439.Spec : Prop :=
  ∀ n, P7683674713413729439.a n = A255645 n

theorem P7683674713413729439.correct : P7683674713413729439.Spec := by
  intro n
  simp only [A255645]

end A255645

/-! ## A255645.P14516444597311126163

`∑[A001316(3*n)]`
-/

namespace A255645.P14516444597311126163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A255645.P14516444597311126163

namespace A255645

/-- `∑[A001316(3*n)]` -/
def P14516444597311126163.Spec : Prop :=
  ∀ n, P14516444597311126163.a n = A255645 n

end A255645

/-! ## A255645.P15680394175955304560

`∑[A060632(6*n)]`
-/

namespace A255645.P15680394175955304560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060632 (6 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A255645.P15680394175955304560

namespace A255645

/-- `∑[A060632(6*n)]` -/
def P15680394175955304560.Spec : Prop :=
  ∀ n, P15680394175955304560.a n = A255645 n

end A255645

/-! ## A255645.P11172425225018952516

`∑[2^A036555(n)]`
-/

namespace A255645.P11172425225018952516
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A036555 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A255645.P11172425225018952516

namespace A255645

/-- `∑[2^A036555(n)]` -/
def P11172425225018952516.Spec : Prop :=
  ∀ n, P11172425225018952516.a n = (A255645 n : ℚ)

end A255645

/-! ## A255645.P11404302360070747557

`∑[A000079(A036555(n))]`
-/

namespace A255645.P11404302360070747557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A036555 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A255645.P11404302360070747557

namespace A255645

/-- `∑[A000079(A036555(n))]` -/
def P11404302360070747557.Spec : Prop :=
  ∀ n, P11404302360070747557.a n = A255645 n

end A255645

/-! ## A255645.P11007783763751981015

`∑[2^A240883(2*n)]`
-/

namespace A255645.P11007783763751981015
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A240883 (2 * n) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A255645.P11007783763751981015

namespace A255645

/-- `∑[2^A240883(2*n)]` -/
def P11007783763751981015.Spec : Prop :=
  ∀ n, P11007783763751981015.a n = (A255645 n : ℚ)

end A255645

/-! ## A255645.P3050548631208620250

`∑[A351864(2*n)]`
-/

namespace A255645.P3050548631208620250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351864 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A255645.P3050548631208620250

namespace A255645

/-- `∑[A351864(2*n)]` -/
def P3050548631208620250.Spec : Prop :=
  ∀ n, P3050548631208620250.a n = A255645 n

end A255645

/-! ## A255645.P5400453104912257635

`∑[sqrt(A102376(3*n))]`
-/

namespace A255645.P5400453104912257635
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A102376 (3 * n) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A255645.P5400453104912257635

namespace A255645

/-- `∑[sqrt(A102376(3*n))]` -/
def P5400453104912257635.Spec : Prop :=
  ∀ n, P5400453104912257635.a n = (A255645 n : ℝ)

end A255645

/-! ## A255645.P6247197766041889816

`∑[A038573(3*n)+1]`
-/

namespace A255645.P6247197766041889816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038573 (3 * n) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A255645.P6247197766041889816

namespace A255645

/-- `∑[A038573(3*n)+1]` -/
def P6247197766041889816.Spec : Prop :=
  ∀ n, P6247197766041889816.a n = A255645 n

end A255645

/-! ## A255645.P888815799228812231

`∑[2^A000120(3*n)]`
-/

namespace A255645.P888815799228812231
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A000120 (3 * n) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A255645.P888815799228812231

namespace A255645

/-- `∑[2^A000120(3*n)]` -/
def P888815799228812231.Spec : Prop :=
  ∀ n, P888815799228812231.a n = (A255645 n : ℚ)

end A255645

/-! ## A255645.P15689918056769444104

`∑[A000079(A000120(3*n))]`
-/

namespace A255645.P15689918056769444104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A000120 (3 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A255645.P15689918056769444104

namespace A255645

/-- `∑[A000079(A000120(3*n))]` -/
def P15689918056769444104.Spec : Prop :=
  ∀ n, P15689918056769444104.a n = A255645 n

end A255645

/-! ## A255645.P16573675110246925501

`∑[2^A001222(A071044(3*n))]`
-/

namespace A255645.P16573675110246925501
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A001222 (A071044 (3 * n)).toNat : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A255645.P16573675110246925501

namespace A255645

/-- `∑[2^A001222(A071044(3*n))]` -/
def P16573675110246925501.Spec : Prop :=
  ∀ n, P16573675110246925501.a n = (A255645 n : ℚ)

end A255645

/-! ## A255645.P9040636142560987137

`∑[2^A001222(A278222(3*n))]`
-/

namespace A255645.P9040636142560987137
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A001222 (A278222 (3 * n)).toNat : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A255645.P9040636142560987137

namespace A255645

/-- `∑[2^A001222(A278222(3*n))]` -/
def P9040636142560987137.Spec : Prop :=
  ∀ n, P9040636142560987137.a n = (A255645 n : ℚ)

end A255645

/-! ## A255645.P1036950818245600106

`∑[A048896(6*n)]`
-/

namespace A255645.P1036950818245600106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048896 (6 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A255645.P1036950818245600106

namespace A255645

/-- `∑[A048896(6*n)]` -/
def P1036950818245600106.Spec : Prop :=
  ∀ n, P1036950818245600106.a n = A255645 n

end A255645

/-! ## A255645.P2090599066991324614

`∑[A071044(6*n)]`
-/

namespace A255645.P2090599066991324614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071044 (6 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A255645.P2090599066991324614

namespace A255645

/-- `∑[A071044(6*n)]` -/
def P2090599066991324614.Spec : Prop :=
  ∀ n, P2090599066991324614.a n = A255645 n

end A255645

/-!
# A255646: Odd triprimes modulo 10.

The programs for A255646, the canonical program `A255646.P745117695051061459` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A255646 has offset 1).

The definition of A255646 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A255646.P745117695051061459

`A046316(1+n)%10`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A255646

/-- `A046316(1+n)%10` -/
def P745117695051061459.Spec : Prop :=
  ∀ n, P745117695051061459.a n = A255646 (n + 1)

theorem P745117695051061459.correct : P745117695051061459.Spec := by
  intro n
  simp only [A255646, Nat.add_sub_cancel]

end A255646

/-! ## A255646.P7664724973591071500

`A141518(eq[3, A091304(n+1)])`
-/

namespace A255646.P7664724973591071500
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091304 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141518 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A255646.P7664724973591071500

namespace A255646

/-- `A141518(eq[3, A091304(n+1)])` -/
def P7664724973591071500.Spec : Prop :=
  ∀ n, P7664724973591071500.a n = A255646 (n + 1)

end A255646

/-! ## A255646.P2932978046425005864

`A010879(A046316(1+n))`
-/

namespace A255646.P2932978046425005864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 (A046316 (1 + n)).toNat

end

end A255646.P2932978046425005864

namespace A255646

/-- `A010879(A046316(1+n))` -/
def P2932978046425005864.Spec : Prop :=
  ∀ n, P2932978046425005864.a n = A255646 (n + 1)

end A255646

/-! ## A255646.P16863664283147078178

`A065881(A046316(n+1)-10)`
-/

namespace A255646.P16863664283147078178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065881 (A046316 (n + 1) - 10).toNat

end

end A255646.P16863664283147078178

namespace A255646

/-- `A065881(A046316(n+1)-10)` -/
def P16863664283147078178.Spec : Prop :=
  ∀ n, P16863664283147078178.a n = A255646 (n + 1)

end A255646

/-! ## A255646.P13301556406374658793

`A106576(2*A046316(n+1))`
-/

namespace A255646.P13301556406374658793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106576 (2 * A046316 (n + 1)).toNat

end

end A255646.P13301556406374658793

namespace A255646

/-- `A106576(2*A046316(n+1))` -/
def P13301556406374658793.Spec : Prop :=
  ∀ n, P13301556406374658793.a n = A255646 (n + 1)

end A255646

/-! ## A255646.P1058456529532506829

`record[A117818(A046317(n+1))]%10`
-/

namespace A255646.P1058456529532506829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117818 (A046317 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) 10

end

end A255646.P1058456529532506829

namespace A255646

/-- `record[A117818(A046317(n+1))]%10` -/
def P1058456529532506829.Spec : Prop :=
  ∀ n, P1058456529532506829.a n = A255646 (n + 1)

end A255646

/-!
# A255647: Expansion of (phi(q) * phi(q^22) + phi(q^2) * phi(q^11)) / 2 in powers of q where phi() is a Ramanujan theta function.

The programs for A255647, there is no canonical definition to state claims against.
-/

/-! ## A255647.P2971713827149972015

`A035168(abs(1-n)+1)`
-/

namespace A255647.P2971713827149972015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035168 (|1 - (n : ℤ)| + 1).toNat

end

end A255647.P2971713827149972015

/-! ## A255647.P6920878837247194769

`a(2%n)*A035168(n)` with `a(0)=1`
-/

namespace A255647.P6920878837247194769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (2 % n) * A035168 n

end

end A255647.P6920878837247194769

/-! ## A255647.P7315291968794567124

`A035168(n)/a(1-A000035(n))` with `a(0)=1`
-/

namespace A255647.P7315291968794567124
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (A035168 n : ℚ) / a (1 - A000035 n).toNat

end

end A255647.P7315291968794567124

/-! ## A255647.P11439801283769173619

`A035168(n)/a(1-A010054(n))` with `a(0)=1`
-/

namespace A255647.P11439801283769173619
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (A035168 n : ℚ) / a (1 - A010054 n).toNat

end

end A255647.P11439801283769173619

/-! ## A255647.P12919919636461400147

`A035168(n)/a(1-A232991(n))` with `a(0)=1, a(1)=1`
-/

namespace A255647.P12919919636461400147
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1] fun n a =>
  (A035168 n : ℚ) / a (1 - A232991 n).toNat

end

end A255647.P12919919636461400147

/-! ## A255647.P7863636035273219874

`A035168(n)+1-a(A005893(n)%2)` with `a(0)=1`
-/

namespace A255647.P7863636035273219874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A035168 n + 1 - a (Int.tmod (A005893 n) 2).toNat

end

end A255647.P7863636035273219874

/-! ## A255647.P14489780725750420533

`A007318(a(A001221(n)))*A035168(n)` with `a(0)=1`
-/

namespace A255647.P14489780725750420533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A007318 (a (A001221 n).toNat).toNat * A035168 n

end

end A255647.P14489780725750420533

/-! ## A255647.P3126138952728683036

`A035168(n)+T(3-A056106(3*n), col(n)-2)` with `a(0)=1`
-/

namespace A255647.P3126138952728683036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A035168 n + SequenceMachineLib.triAt a (3 - A056106 (3 * n)) ((SequenceMachineLib.triCol n : ℤ) - 2)

end

end A255647.P3126138952728683036

/-!
# A255648: Expansion of (a(q) + a(q^2) + a(q^3) + a(q^6) - 4) / 6 in powers of q where a() is a cubic AGM theta function.

The programs for A255648, the canonical program `A255648.P13091869698875437008` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A255648 has offset 1).

The definition of A255648 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A255648.P13091869698875437008

`abs(A112848(1+n))`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A255648

/-- `abs(A112848(1+n))` -/
def P13091869698875437008.Spec : Prop :=
  ∀ n, P13091869698875437008.a n = A255648 (n + 1)

theorem P13091869698875437008.correct : P13091869698875437008.Spec := by
  intro n
  simp only [A255648, Nat.add_sub_cancel]

end A255648

/-! ## A255648.P7701628712721746431

`A113063(A000265(1+n))`
-/

namespace A255648.P7701628712721746431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113063 (A000265 (1 + n)).toNat

end

end A255648.P7701628712721746431

namespace A255648

/-- `A113063(A000265(1+n))` -/
def P7701628712721746431.Spec : Prop :=
  ∀ n, P7701628712721746431.a n = A255648 (n + 1)

end A255648

/-! ## A255648.P18259112073558262335

`A035178(n+1)*A177702(n)`
-/

namespace A255648.P18259112073558262335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035178 (n + 1) * A177702 n

end

end A255648.P18259112073558262335

namespace A255648

/-- `A035178(n+1)*A177702(n)` -/
def P18259112073558262335.Spec : Prop :=
  ∀ n, P18259112073558262335.a n = A255648 (n + 1)

end A255648

/-! ## A255648.P2494056824748137620

`gcd(A000038(n), A112848(n+1))`
-/

namespace A255648.P2494056824748137620
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A112848 (n + 1))

end

end A255648.P2494056824748137620

namespace A255648

/-- `gcd(A000038(n), A112848(n+1))` -/
def P2494056824748137620.Spec : Prop :=
  ∀ n, (P2494056824748137620.a n : ℤ) = A255648 (n + 1)

end A255648

/-! ## A255648.P2208246334959675514

`lcm(A014709(n), A112848(n+1))`
-/

namespace A255648.P2208246334959675514
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A014709 n) (A112848 (n + 1))

end

end A255648.P2208246334959675514

namespace A255648

/-- `lcm(A014709(n), A112848(n+1))` -/
def P2208246334959675514.Spec : Prop :=
  ∀ n, (P2208246334959675514.a n : ℤ) = A255648 (n + 1)

end A255648

/-! ## A255648.P15172116942738104930

`(2-A010892(n)²)*A035178(n+1)`
-/

namespace A255648.P15172116942738104930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A010892 n ^ 2) * A035178 (n + 1)

end

end A255648.P15172116942738104930

namespace A255648

/-- `(2-A010892(n)²)*A035178(n+1)` -/
def P15172116942738104930.Spec : Prop :=
  ∀ n, P15172116942738104930.a n = A255648 (n + 1)

end A255648

/-! ## A255648.P15764201189909255690

`(2-A099544(n+1))*A035178(n+1)`
-/

namespace A255648.P15764201189909255690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A099544 (n + 1)) * A035178 (n + 1)

end

end A255648.P15764201189909255690

namespace A255648

/-- `(2-A099544(n+1))*A035178(n+1)` -/
def P15764201189909255690.Spec : Prop :=
  ∀ n, P15764201189909255690.a n = A255648 (n + 1)

end A255648

/-! ## A255648.P665370845523481035

`∑{d}[n+1, A019590(#)*A113063((n+1)/#)]`
-/

namespace A255648.P665370845523481035
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A019590 d * A113063 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A255648.P665370845523481035

namespace A255648

/-- `∑{d}[n+1, A019590(#)*A113063((n+1)/#)]` -/
def P665370845523481035.Spec : Prop :=
  ∀ n, P665370845523481035.a n = A255648 (n + 1)

end A255648

/-! ## A255648.P15551779997238839382

`∑{d}[n+1, A035178(#)*A154272((n+1)/#)]`
-/

namespace A255648.P15551779997238839382
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A035178 d * A154272 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A255648.P15551779997238839382

namespace A255648

/-- `∑{d}[n+1, A035178(#)*A154272((n+1)/#)]` -/
def P15551779997238839382.Spec : Prop :=
  ∀ n, P15551779997238839382.a n = A255648 (n + 1)

end A255648

/-! ## A255648.P8184486219158093200

`∑{d}[n+1, A049347(#-1)*A382488((n+1)/#)]`
-/

namespace A255648.P8184486219158093200
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A049347 (d - 1) * A382488 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A255648.P8184486219158093200

namespace A255648

/-- `∑{d}[n+1, A049347(#-1)*A382488((n+1)/#)]` -/
def P8184486219158093200.Spec : Prop :=
  ∀ n, P8184486219158093200.a n = A255648 (n + 1)

end A255648

/-! ## A255648.P11491250455166211155

`2*A113448(A038502(n+1))-A113448(n+1)`
-/

namespace A255648.P11491250455166211155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A113448 (A038502 (n + 1)).toNat - A113448 (n + 1)

end

end A255648.P11491250455166211155

namespace A255648

/-- `2*A113448(A038502(n+1))-A113448(n+1)` -/
def P11491250455166211155.Spec : Prop :=
  ∀ n, P11491250455166211155.a n = A255648 (n + 1)

end A255648

/-! ## A255648.P14715631627492947122

`abs(A260945(n+1))`
-/

namespace A255648.P14715631627492947122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A260945 (n + 1)|

end

end A255648.P14715631627492947122

namespace A255648

/-- `abs(A260945(n+1))` -/
def P14715631627492947122.Spec : Prop :=
  ∀ n, P14715631627492947122.a n = A255648 (n + 1)

end A255648

/-! ## A255648.P15500454733796288905

`lcm(A084091(2*n)+1, A260945(n+1))`
-/

namespace A255648.P15500454733796288905
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A084091 (2 * n) + 1) (A260945 (n + 1))

end

end A255648.P15500454733796288905

namespace A255648

/-- `lcm(A084091(2*n)+1, A260945(n+1))` -/
def P15500454733796288905.Spec : Prop :=
  ∀ n, (P15500454733796288905.a n : ℤ) = A255648 (n + 1)

end A255648

/-! ## A255648.P4765916330135916491

`A113063(2*(n+1))+A113063(n+1)`
-/

namespace A255648.P4765916330135916491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113063 (2 * (n + 1)) + A113063 (n + 1)

end

end A255648.P4765916330135916491

namespace A255648

/-- `A113063(2*(n+1))+A113063(n+1)` -/
def P4765916330135916491.Spec : Prop :=
  ∀ n, P4765916330135916491.a n = A255648 (n + 1)

end A255648

/-! ## A255648.P8561983648218118503

`abs(A193426(2*(n+1))-A193426(n+1))`
-/

namespace A255648.P8561983648218118503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A193426 (2 * (n + 1)) - A193426 (n + 1)|

end

end A255648.P8561983648218118503

namespace A255648

/-- `abs(A193426(2*(n+1))-A193426(n+1))` -/
def P8561983648218118503.Spec : Prop :=
  ∀ n, P8561983648218118503.a n = A255648 (n + 1)

end A255648

/-! ## A255648.P14131773606727383131

`A123863(2*(n+1))+2*A035178(n+1)`
-/

namespace A255648.P14131773606727383131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123863 (2 * (n + 1)) + 2 * A035178 (n + 1)

end

end A255648.P14131773606727383131

namespace A255648

/-- `A123863(2*(n+1))+2*A035178(n+1)` -/
def P14131773606727383131.Spec : Prop :=
  ∀ n, P14131773606727383131.a n = A255648 (n + 1)

end A255648

/-! ## A255648.P13615753868247011755

`(2-A131720(2*n+1))*A035178(n+1)`
-/

namespace A255648.P13615753868247011755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A131720 (2 * n + 1)) * A035178 (n + 1)

end

end A255648.P13615753868247011755

namespace A255648

/-- `(2-A131720(2*n+1))*A035178(n+1)` -/
def P13615753868247011755.Spec : Prop :=
  ∀ n, P13615753868247011755.a n = A255648 (n + 1)

end A255648

/-!
# A255649: Partial sums of A134661.

The programs for A255649, there is no canonical definition to state claims against.
-/

/-! ## A255649.P4832873564328073874

`∑[A134661(n)]`
-/

namespace A255649.P4832873564328073874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134661 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A255649.P4832873564328073874

/-! ## A255649.P1436321388052610420

`A134661(2*n)+a(n-1)` with `a(0)=1`
-/

namespace A255649.P1436321388052610420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A134661 (2 * n) + a (n - 1)

end

end A255649.P1436321388052610420

/-! ## A255649.P9546093517515608185

`a(n-1)+A134661(n)+A000007(n)` with `a(0)=1`
-/

namespace A255649.P9546093517515608185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A134661 n + A000007 n)

end

end A255649.P9546093517515608185

/-! ## A255649.P2055897646136354069

`a(n-1)+A134661(n)%A031130(n)` with `a(0)=1`
-/

namespace A255649.P2055897646136354069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Int.tmod (A134661 n) (A031130 n)

end

end A255649.P2055897646136354069

/-! ## A255649.P17445581265591318374

`(A134661(n)+a(n-1))%A007635(n+1)` with `a(0)=1`
-/

namespace A255649.P17445581265591318374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.tmod (A134661 n + a (n - 1)) (A007635 (n + 1))

end

end A255649.P17445581265591318374

/-!
# A255650: Partial sums of A134662.

The programs for A255650, there is no canonical definition to state claims against.
-/

/-! ## A255650.P12139823109712902384

`∑[A134662(n)]`
-/

namespace A255650.P12139823109712902384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134662 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A255650.P12139823109712902384

/-! ## A255650.P4987248135509630632

`A134662(char[1]+n)+a(n-1)` with `a(0)=1`
-/

namespace A255650.P4987248135509630632
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A134662 ((if ∃ j, f1 j = n then 1 else 0) + n) + a (n - 1)

end

end A255650.P4987248135509630632

/-! ## A255650.P11799720846644172150

`A134662(n)+A028310(a(n-1))` with `a(0)=1`
-/

namespace A255650.P11799720846644172150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A134662 n + A028310 (a (n - 1)).toNat

end

end A255650.P11799720846644172150

/-! ## A255650.P12489413351588169416

`A060000(A134662(n)+a(n-1)+1)` with `a(0)=1`
-/

namespace A255650.P12489413351588169416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A060000 (A134662 n + a (n - 1) + 1).toNat

end

end A255650.P12489413351588169416

/-! ## A255650.P1012554902216693723

`A134662(n)+a(n-1)-A000007(n)` with `a(0)=1`
-/

namespace A255650.P1012554902216693723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A134662 n + (a (n - 1) - A000007 n)

end

end A255650.P1012554902216693723

/-! ## A255650.P17535736885696663384

`a(n-1)+A134662(n)%A008458(n)` with `a(0)=1`
-/

namespace A255650.P17535736885696663384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Int.tmod (A134662 n) (A008458 n)

end

end A255650.P17535736885696663384

/-!
# A255651: Partial sums of A255485.

The programs for A255651, there is no canonical definition to state claims against.
-/

/-! ## A255651.P8665042116825544566

`∑[A255485(n)]`
-/

namespace A255651.P8665042116825544566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255485 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A255651.P8665042116825544566

/-! ## A255651.P6842627959112693267

`A255485(2*n)+a(n-1)` with `a(0)=1`
-/

namespace A255651.P6842627959112693267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A255485 (2 * n) + a (n - 1)

end

end A255651.P6842627959112693267

/-! ## A255651.P1562207536791322044

`A000027(A255485(n)+a(n-1))` with `a(0)=1`
-/

namespace A255651.P1562207536791322044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000027 (A255485 n + a (n - 1)).toNat

end

end A255651.P1562207536791322044

/-! ## A255651.P15994690869150310869

`A181440(A255485(n)+a(n-1))` with `a(0)=1`
-/

namespace A255651.P15994690869150310869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A181440 (A255485 n + a (n - 1)).toNat

end

end A255651.P15994690869150310869

/-! ## A255651.P8952057761139823456

`A255485(n)-A001489(a(n-1))` with `a(0)=1`
-/

namespace A255651.P8952057761139823456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A255485 n - A001489 (a (n - 1)).toNat

end

end A255651.P8952057761139823456

/-! ## A255651.P12848058780966076612

`abs(A255485(A028310(n))+a(n-1))` with `a(0)=1`
-/

namespace A255651.P12848058780966076612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  |A255485 (A028310 n).toNat + a (n - 1)|

end

end A255651.P12848058780966076612

/-! ## A255651.P16426200856683679060

`A322250(A255485(n)+a(n-1))+1` with `a(0)=1`
-/

namespace A255651.P16426200856683679060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A322250 (A255485 n + a (n - 1)).toNat + 1

end

end A255651.P16426200856683679060

/-! ## A255651.P2293495393192700407

`A000007(n)+A255485(n)+a(n-1)` with `a(0)=1`
-/

namespace A255651.P2293495393192700407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000007 n + (A255485 n + a (n - 1))

end

end A255651.P2293495393192700407

/-! ## A255651.P2379318379314059248

`a(n-1)+A255485(n)%A072103(n+1)` with `a(0)=1`
-/

namespace A255651.P2379318379314059248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Int.tmod (A255485 n) (A072103 (n + 1))

end

end A255651.P2379318379314059248

/-! ## A255651.P14523391864522528457

`A263273(A263273(a(n-1)))+A255485(n)` with `a(0)=1`
-/

namespace A255651.P14523391864522528457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A263273 (A263273 (a (n - 1)).toNat).toNat + A255485 n

end

end A255651.P14523391864522528457

/-!
# A255652: Partial sums of A255486.

The programs for A255652, there is no canonical definition to state claims against.
-/

/-! ## A255652.P4291404035788444914

`∑[A255486(n)]`
-/

namespace A255652.P4291404035788444914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255486 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A255652.P4291404035788444914

/-! ## A255652.P7739682733290359122

`A255486(2*n)+a(n-1)` with `a(0)=1`
-/

namespace A255652.P7739682733290359122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A255486 (2 * n) + a (n - 1)

end

end A255652.P7739682733290359122

/-! ## A255652.P8556817219870760206

`∑{d}[A000079(n), A255486(A001222(#))]`
-/

namespace A255652.P8556817219870760206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A255486 (A001222 d).toNat

end

end A255652.P8556817219870760206

/-! ## A255652.P11503442272691311431

`∑{digits}[A038378(n+1), A255486(#)]`
-/

namespace A255652.P11503442272691311431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038378 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A255486 x).sum

end

end A255652.P11503442272691311431

/-!
# A255653: Partial sums of A255488.

The programs for A255653, there is no canonical definition to state claims against.
-/

/-! ## A255653.P10412378435935469180

`∑[A255488(n)]`
-/

namespace A255653.P10412378435935469180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255488 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A255653.P10412378435935469180

/-! ## A255653.P8080643825324775535

`A255488(2*n)+a(n-1)` with `a(0)=1`
-/

namespace A255653.P8080643825324775535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A255488 (2 * n) + a (n - 1)

end

end A255653.P8080643825324775535

/-! ## A255653.P6979856297236680892

`A000027(A255488(n)+a(n-1))` with `a(0)=1`
-/

namespace A255653.P6979856297236680892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000027 (A255488 n + a (n - 1)).toNat

end

end A255653.P6979856297236680892

/-! ## A255653.P4338200863011517322

`A000265(A255488(n)+a(n-1))` with `a(0)=1`
-/

namespace A255653.P4338200863011517322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000265 (A255488 n + a (n - 1)).toNat

end

end A255653.P4338200863011517322

/-! ## A255653.P14312454754418407310

`A000007(n)+A255488(n)+a(n-1)` with `a(0)=1`
-/

namespace A255653.P14312454754418407310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000007 n + (A255488 n + a (n - 1))

end

end A255653.P14312454754418407310

/-! ## A255653.P2246872869366563410

`or(A255488(n)+a(n-1), A106468(n))` with `a(0)=1`
-/

namespace A255653.P2246872869366563410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.lor (A255488 n + a (n - 1)) (A106468 n)

end

end A255653.P2246872869366563410

/-!
# A255654: Partial sums of A247649.

The programs for A255654, there is no canonical definition to state claims against.
-/

/-! ## A255654.P5670267145428932345

`∑[A247649(n)]`
-/

namespace A255654.P5670267145428932345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247649 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A255654.P5670267145428932345

/-! ## A255654.P9734934939732145421

`∑[sqrt(A247650(n))]`
-/

namespace A255654.P9734934939732145421
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A247650 n : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A255654.P9734934939732145421

/-! ## A255654.P16716761614440703883

`∑[root(A247650(2*n), 2)]`
-/

namespace A255654.P16716761614440703883
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A247650 (2 * n) : ℝ) ^ (1 / (2 : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A255654.P16716761614440703883

/-! ## A255654.P5878500839875536864

`A247649(2*n)+a(n-1)` with `a(0)=1`
-/

namespace A255654.P5878500839875536864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A247649 (2 * n) + a (n - 1)

end

end A255654.P5878500839875536864

/-! ## A255654.P3373987456532943507

`∑[A000265(root(A247650(n), 2))]`
-/

namespace A255654.P3373987456532943507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (SequenceMachineLib.roundAway ((A247650 n : ℝ) ^ (1 / (2 : ℝ)))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A255654.P3373987456532943507

/-! ## A255654.P10605889027698295696

`∑[A022998(root(A247650(n), 2))]`
-/

namespace A255654.P10605889027698295696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022998 (SequenceMachineLib.roundAway ((A247650 n : ℝ) ^ (1 / (2 : ℝ)))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A255654.P10605889027698295696

/-! ## A255654.P4676180081626538949

`∑[root(A247650(n), 2)%A000041(n+4)]`
-/

namespace A255654.P4676180081626538949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A247650 n : ℝ) ^ (1 / (2 : ℝ)))) (A000041 (n + 4))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A255654.P4676180081626538949

/-!
# A255655: The sum of the odd terms in row n of A050873.

The programs for A255655, the canonical program `A255655.P10981461665302525658` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A255655 has offset 1).

The definition of A255655 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A255655.P10981461665302525658

`∑{d}[n+1, A193356(#)*A000010((n+1)/#)]`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A255655

/-- `∑{d}[n+1, A193356(#)*A000010((n+1)/#)]` -/
def P10981461665302525658.Spec : Prop :=
  ∀ n, P10981461665302525658.a n = A255655 (n + 1)

theorem P10981461665302525658.correct : P10981461665302525658.Spec := by
  intro n
  simp only [A255655, Nat.add_sub_cancel]

end A255655

/-! ## A255655.P3636052528129099663

`A368736(gcd(n+1, ∑[n]))`
-/

namespace A255655.P3636052528129099663
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368736 (Nat.gcd (n + 1) (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A255655.P3636052528129099663

namespace A255655

/-- `A368736(gcd(n+1, ∑[n]))` -/
def P3636052528129099663.Spec : Prop :=
  ∀ n, P3636052528129099663.a n = A255655 (n + 1)

end A255655

/-! ## A255655.P15795439679611065447

`lcm(2, A368736(n+1))/2`
-/

namespace A255655.P15795439679611065447
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 (A368736 (n + 1)) : ℚ) / 2

end

end A255655.P15795439679611065447

namespace A255655

/-- `lcm(2, A368736(n+1))/2` -/
def P15795439679611065447.Spec : Prop :=
  ∀ n, P15795439679611065447.a n = (A255655 (n + 1) : ℚ)

end A255655

/-! ## A255655.P6883005335910175988

`∑{d}[n+1, #*A319997((n+1)/#)]`
-/

namespace A255655.P6883005335910175988
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A319997 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A255655.P6883005335910175988

namespace A255655

/-- `∑{d}[n+1, #*A319997((n+1)/#)]` -/
def P6883005335910175988.Spec : Prop :=
  ∀ n, P6883005335910175988.a n = A255655 (n + 1)

end A255655

/-! ## A255655.P227336190667617473

`A018804(n+1)/val(∑[∑[4*n]+2], 2)`
-/

namespace A255655.P227336190667617473
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A018804 (n + 1) : ℚ) / (SequenceMachineLib.valuation (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℚ)

end

end A255655.P227336190667617473

namespace A255655

/-- `A018804(n+1)/val(∑[∑[4*n]+2], 2)` -/
def P227336190667617473.Spec : Prop :=
  ∀ n, P227336190667617473.a n = (A255655 (n + 1) : ℚ)

end A255655

/-! ## A255655.P3518704803997291021

`lcm((n+1)/∏{p}[n+1, #], A018804((n+1)/2^val(n+1, 2)))`
-/

namespace A255655.P3518704803997291021
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ))) (A018804 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ))).toNat)

end

end A255655.P3518704803997291021

namespace A255655

/-- `lcm((n+1)/∏{p}[n+1, #], A018804((n+1)/2^val(n+1, 2)))` -/
def P3518704803997291021.Spec : Prop :=
  ∀ n, (P3518704803997291021.a n : ℤ) = A255655 (n + 1)

end A255655

/-! ## A255655.P17391748139204022277

`A368736(n+1)/A000034(n)`
-/

namespace A255655.P17391748139204022277
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A368736 (n + 1) : ℚ) / (A000034 n : ℚ)

end

end A255655.P17391748139204022277

namespace A255655

/-- `A368736(n+1)/A000034(n)` -/
def P17391748139204022277.Spec : Prop :=
  ∀ n, P17391748139204022277.a n = (A255655 (n + 1) : ℚ)

end A255655

/-! ## A255655.P3146870225047833802

`A018804(n+1)/A090740(n+1)`
-/

namespace A255655.P3146870225047833802
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A018804 (n + 1) : ℚ) / (A090740 (n + 1) : ℚ)

end

end A255655.P3146870225047833802

namespace A255655

/-- `A018804(n+1)/A090740(n+1)` -/
def P3146870225047833802.Spec : Prop :=
  ∀ n, P3146870225047833802.a n = (A255655 (n + 1) : ℚ)

end A255655

/-! ## A255655.P1877090895659508652

`A368736(n+1)/(A000035(n)+1)`
-/

namespace A255655.P1877090895659508652
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A368736 (n + 1) : ℚ) / (A000035 n + 1 : ℚ)

end

end A255655.P1877090895659508652

namespace A255655

/-- `A368736(n+1)/(A000035(n)+1)` -/
def P1877090895659508652.Spec : Prop :=
  ∀ n, P1877090895659508652.a n = (A255655 (n + 1) : ℚ)

end A255655

/-! ## A255655.P6672128526359468029

`A018804(n+1)/log2(A074723(n+1))`
-/

namespace A255655.P6672128526359468029
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A018804 (n + 1) : ℝ) / Real.logb 2 (A074723 (n + 1) : ℝ)

end

end A255655.P6672128526359468029

namespace A255655

/-- `A018804(n+1)/log2(A074723(n+1))` -/
def P6672128526359468029.Spec : Prop :=
  ∀ n, P6672128526359468029.a n = (A255655 (n + 1) : ℝ)

end A255655

/-! ## A255655.P17286063302603902887

`A018804(n+1)/(A001511(n+1)+and(1, n))`
-/

namespace A255655.P17286063302603902887
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A018804 (n + 1) : ℚ) / (A001511 (n + 1) + (Nat.land 1 n : ℤ) : ℚ)

end

end A255655.P17286063302603902887

namespace A255655

/-- `A018804(n+1)/(A001511(n+1)+and(1, n))` -/
def P17286063302603902887.Spec : Prop :=
  ∀ n, P17286063302603902887.a n = (A255655 (n + 1) : ℚ)

end A255655

/-! ## A255655.P17610219700829856514

`∑{d}[n+1, A007427(#)*A109386((n+1)/#)]`
-/

namespace A255655.P17610219700829856514
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007427 d * A109386 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A255655.P17610219700829856514

namespace A255655

/-- `∑{d}[n+1, A007427(#)*A109386((n+1)/#)]` -/
def P17610219700829856514.Spec : Prop :=
  ∀ n, P17610219700829856514.a n = A255655 (n + 1)

end A255655

/-! ## A255655.P8446773160416262507

`∑{d}[n+1, A048272(#)*A143275((n+1)/#)]`
-/

namespace A255655.P8446773160416262507
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A048272 d * A143275 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A255655.P8446773160416262507

namespace A255655

/-- `∑{d}[n+1, A048272(#)*A143275((n+1)/#)]` -/
def P8446773160416262507.Spec : Prop :=
  ∀ n, P8446773160416262507.a n = A255655 (n + 1)

end A255655

/-! ## A255655.P12502957758393398432

`∑{d}[n+1, A000010(#)*A193356((n+1)/#)]`
-/

namespace A255655.P12502957758393398432
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 d * A193356 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A255655.P12502957758393398432

namespace A255655

/-- `∑{d}[n+1, A000010(#)*A193356((n+1)/#)]` -/
def P12502957758393398432.Spec : Prop :=
  ∀ n, P12502957758393398432.a n = A255655 (n + 1)

end A255655

/-! ## A255655.P1416542642739844271

`∑{d}[n+1, A008683(#)*A245579((n+1)/#)]`
-/

namespace A255655.P1416542642739844271
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A245579 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A255655.P1416542642739844271

namespace A255655

/-- `∑{d}[n+1, A008683(#)*A245579((n+1)/#)]` -/
def P1416542642739844271.Spec : Prop :=
  ∀ n, P1416542642739844271.a n = A255655 (n + 1)

end A255655

/-! ## A255655.P15341560237410373622

`∑{d}[n+1, A007432(#)*A288417((n+1)/#)]`
-/

namespace A255655.P15341560237410373622
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007432 d * A288417 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A255655.P15341560237410373622

namespace A255655

/-- `∑{d}[n+1, A007432(#)*A288417((n+1)/#)]` -/
def P15341560237410373622.Spec : Prop :=
  ∀ n, P15341560237410373622.a n = A255655 (n + 1)

end A255655

/-! ## A255655.P95839687875156640

`∑{d}[n+1, A000265(#)*A326305((n+1)/#)]`
-/

namespace A255655.P95839687875156640
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000265 d * A326305 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A255655.P95839687875156640

namespace A255655

/-- `∑{d}[n+1, A000265(#)*A326305((n+1)/#)]` -/
def P95839687875156640.Spec : Prop :=
  ∀ n, P95839687875156640.a n = A255655 (n + 1)

end A255655

/-! ## A255655.P1946836489695945336

`∑{d}[n+1, A038040(#)*A361019((n+1)/#)]`
-/

namespace A255655.P1946836489695945336
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A038040 d * A361019 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A255655.P1946836489695945336

namespace A255655

/-- `∑{d}[n+1, A038040(#)*A361019((n+1)/#)]` -/
def P1946836489695945336.Spec : Prop :=
  ∀ n, P1946836489695945336.a n = A255655 (n + 1)

end A255655

/-! ## A255655.P16747310710233858421

`∑{d}[n+1, A130107(#)*A328373((n+1)/#)]`
-/

namespace A255655.P16747310710233858421
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A130107 d * A328373 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A255655.P16747310710233858421

namespace A255655

/-- `∑{d}[n+1, A130107(#)*A328373((n+1)/#)]` -/
def P16747310710233858421.Spec : Prop :=
  ∀ n, P16747310710233858421.a n = A255655 (n + 1)

end A255655

/-! ## A255655.P4058023011449450039

`∑{d}[n+1, A228274(#)*A328502((n+1)/#)]`
-/

namespace A255655.P4058023011449450039
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A228274 d * A328502 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A255655.P4058023011449450039

namespace A255655

/-- `∑{d}[n+1, A228274(#)*A328502((n+1)/#)]` -/
def P4058023011449450039.Spec : Prop :=
  ∀ n, P4058023011449450039.a n = A255655 (n + 1)

end A255655

/-! ## A255655.P1625421356436943796

`∑{#}[n, gcd(2*(#+1)+1, n+1)]/(1+n%2)`
-/

namespace A255655.P1625421356436943796
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ k ∈ Finset.range (f1 n + 1), Nat.gcd (2 * (k + 1) + 1) (n + 1) : ℕ) : ℚ) / ((1 + n % 2 : ℕ) : ℚ)

end

end A255655.P1625421356436943796

namespace A255655

/-- `∑{#}[n, gcd(2*(#+1)+1, n+1)]/(1+n%2)` -/
def P1625421356436943796.Spec : Prop :=
  ∀ n, P1625421356436943796.a n = (A255655 (n + 1) : ℚ)

end A255655

/-!
# A255656: Number of length n+4 0..3 arrays with at most two downsteps in every 4 consecutive neighbor pairs.

The programs for A255656, there is no canonical definition to state claims against.
-/

/-! ## A255656.P13756856594582318720

`A255660(∑[n+4]+3)`
-/

namespace A255656.P13756856594582318720
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255660 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A255656.P13756856594582318720

/-!
# A255657: Number of length n+5 0..3 arrays with at most two downsteps in every 5 consecutive neighbor pairs.

The programs for A255657, there is no canonical definition to state claims against.
-/

/-! ## A255657.P18023859500155499519

`A255660(∑[n+5]+6)`
-/

namespace A255657.P18023859500155499519
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255660 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A255657.P18023859500155499519

/-!
# A255658: Number of length n+6 0..3 arrays with at most two downsteps in every 6 consecutive neighbor pairs.

The programs for A255658, there is no canonical definition to state claims against.
-/

/-! ## A255658.P16626133623225883878

`A255660((n+4)²-∑[n+1]+1)`
-/

namespace A255658.P16626133623225883878
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255660 (((n + 4) ^ 2 : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + 1).toNat

end

end A255658.P16626133623225883878

/-!
# A255659: Number of length n+7 0..3 arrays with at most two downsteps in every 7 consecutive neighbor pairs.

The programs for A255659, there is no canonical definition to state claims against.
-/

/-! ## A255659.P17352673802016194153

`A255660(C(n+7, 2)+n+1)`
-/

namespace A255659.P17352673802016194153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255660 (Nat.choose (n + 7) 2 + (n + 1))

end

end A255659.P17352673802016194153

/-!
# A255660: T(n,k)=Number of length n+k 0..3 arrays with at most two downsteps in every k consecutive neighbor pairs.

The programs for A255660, there is no canonical definition to state claims against.
-/

/-! ## A255660.P11218204822827183748

`(2^(comp[∑[n]]-n))²-and(n, floor(n/2))^3^n`
-/

namespace A255660.P11218204822827183748
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 : ℚ) ^ ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ) : ℤ)) ^ 2 - (Int.land (n : ℤ) ⌊(n : ℚ) / 2⌋ ^ 3 ^ n : ℚ)

end

end A255660.P11218204822827183748

/-! ## A255660.P12760946832015825433

`A048785(A090084(n+1))-floor(n/∏{p}[n+1, #])`
-/

namespace A255660.P12760946832015825433
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048785 (A090084 (n + 1)).toNat - ⌊(n : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ)⌋

end

end A255660.P12760946832015825433

/-!
# A255661: Number of length n+1 0..3 arrays with at most two downsteps in every n consecutive neighbor pairs.

The programs for A255661, there is no canonical definition to state claims against.
-/

/-! ## A255661.P548307352701621943

`A255660(∑[n]+1)`
-/

namespace A255661.P548307352701621943
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255660 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A255661.P548307352701621943

/-!
# A255662: Number of length n+2 0..3 arrays with at most two downsteps in every n consecutive neighbor pairs.

The programs for A255662, there is no canonical definition to state claims against.
-/

/-! ## A255662.P10818836466223301359

`A255660(∑[n+1]+2)`
-/

namespace A255662.P10818836466223301359
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255660 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A255662.P10818836466223301359

/-!
# A255663: Number of length n+3 0..3 arrays with at most two downsteps in every n consecutive neighbor pairs.

The programs for A255663, there is no canonical definition to state claims against.
-/

/-! ## A255663.P16424420125902420888

`A255660(∑[n+2]+4)`
-/

namespace A255663.P16424420125902420888
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255660 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A255663.P16424420125902420888

/-!
# A255664: Number of length n+4 0..3 arrays with at most two downsteps in every n consecutive neighbor pairs.

The programs for A255664, there is no canonical definition to state claims against.
-/

/-! ## A255664.P17459469529990812996

`A255660(A052905(n)+9)`
-/

namespace A255664.P17459469529990812996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255660 (A052905 n + 9).toNat

end

end A255664.P17459469529990812996

/-!
# A255665: Number of length n+5 0..3 arrays with at most two downsteps in every n consecutive neighbor pairs.

The programs for A255665, there is no canonical definition to state claims against.
-/

/-! ## A255665.P4342966520826828649

`A255660(A167499(n+3))`
-/

namespace A255665.P4342966520826828649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255660 (A167499 (n + 3)).toNat

end

end A255665.P4342966520826828649

/-!
# A255666: Number of length n+6 0..3 arrays with at most two downsteps in every n consecutive neighbor pairs.

The programs for A255666, there is no canonical definition to state claims against.
-/

/-! ## A255666.P4113665757167368979

`A255660(A167499(n+4)+1)`
-/

namespace A255666.P4113665757167368979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255660 (A167499 (n + 4) + 1).toNat

end

end A255666.P4113665757167368979

/-!
# A255667: Number of length n+7 0..3 arrays with at most two downsteps in every n consecutive neighbor pairs.

The programs for A255667, there is no canonical definition to state claims against.
-/

/-! ## A255667.P8394768037521545279

`A255660(A167499(n+5)+2)`
-/

namespace A255667.P8394768037521545279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255660 (A167499 (n + 5) + 2).toNat

end

end A255667.P8394768037521545279

/-!
# A255670: Number of the column of the Wythoff array (A035513) that contains L(n), where L = A000201, the lower Wythoff sequence.

The programs for A255670, the canonical program `A255670.P14046333864495007464` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A255670 has offset 1).

The definition of A255670 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A035612, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A255670.P12771891640223871366

`A255671(n+1)-1`
-/

namespace A255670.P12771891640223871366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255671 (n + 1) - 1

end

end A255670.P12771891640223871366

namespace A255670

/-- `A255671(n+1)-1` -/
def P12771891640223871366.Spec : Prop :=
  ∀ n, P12771891640223871366.a n = A255670 (n + 1)

theorem P12771891640223871366.correct : P12771891640223871366.Spec := by
  intro n
  simp only [A255670, Nat.add_sub_cancel, A255670.P12771891640223871366.a, A255670.P14046333864495007464.a, A000201, A000201.P2935798382643029248.a, A035612, A035612.P10790304675127339633.a, A255671, A255671.P11613518622091459689.a, A022340, A022340.P3334581410869230776.a, A003714, A003714.P565032106299634425.a, A022342, A022342.P1190268710273068250.a, A003849, A003849.P15070805603138295355.a, A193564, A193564.P7428461359431683456.f1, A193564.P7428461359431683456.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A255670

/-! ## A255670.P14046333864495007464

`A035612(A000201(n+1))`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A255670

/-- `A035612(A000201(n+1))` -/
def P14046333864495007464.Spec : Prop :=
  ∀ n, P14046333864495007464.a n = A255670 (n + 1)

theorem P14046333864495007464.correct : P14046333864495007464.Spec := by
  intro n
  simp only [A255670, Nat.add_sub_cancel]

end A255670

/-! ## A255670.P6225568185789876902

`1+val(record[xor(n, 2*n)]+1, 2)`
-/

namespace A255670.P6225568185789876902
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + SequenceMachineLib.valuation (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1) 2

end

end A255670.P6225568185789876902

namespace A255670

/-- `1+val(record[xor(n, 2*n)]+1, 2)` -/
def P6225568185789876902.Spec : Prop :=
  ∀ n, (P6225568185789876902.a n : ℤ) = A255670 (n + 1)

end A255670

/-! ## A255670.P2843016337252484312

`val(record[xor(n, ceil(n/2))+1], 2)+1`
-/

namespace A255670.P2843016337252484312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) ⌈(n : ℚ) / 2⌉ + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat 2 + 1

end

end A255670.P2843016337252484312

namespace A255670

/-- `val(record[xor(n, ceil(n/2))+1], 2)+1` -/
def P2843016337252484312.Spec : Prop :=
  ∀ n, (P2843016337252484312.a n : ℤ) = A255670 (n + 1)

end A255670

/-! ## A255670.P12158733336427161393

`val(A048297(n), 2)+1`
-/

namespace A255670.P12158733336427161393
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A048297 n).toNat 2 + 1

end

end A255670.P12158733336427161393

namespace A255670

/-- `val(A048297(n), 2)+1` -/
def P12158733336427161393.Spec : Prop :=
  ∀ n, (P12158733336427161393.a n : ℤ) = A255670 (n + 1)

end A255670

/-! ## A255670.P7676190804002582078

`A035612(floor(ϕ*(n+1)))`
-/

namespace A255670.P7676190804002582078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035612 ⌊Real.goldenRatio * (n + 1 : ℝ)⌋.toNat

end

end A255670.P7676190804002582078

namespace A255670

/-- `A035612(floor(ϕ*(n+1)))` -/
def P7676190804002582078.Spec : Prop :=
  ∀ n, P7676190804002582078.a n = A255670 (n + 1)

end A255670

/-! ## A255670.P9822740593848679686

`val(A277335(n)+1, 2)+1`
-/

namespace A255670.P9822740593848679686
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A277335 n + 1).toNat 2 + 1

end

end A255670.P9822740593848679686

namespace A255670

/-- `val(A277335(n)+1, 2)+1` -/
def P9822740593848679686.Spec : Prop :=
  ∀ n, (P9822740593848679686.a n : ℤ) = A255670 (n + 1)

end A255670

/-! ## A255670.P16696608623776349471

`A035612(comp[floor(ϕ*n)])-1`
-/

namespace A255670.P16696608623776349471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * (n : ℝ)⌋

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035612 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n) - 1

end

end A255670.P16696608623776349471

namespace A255670

/-- `A035612(comp[floor(ϕ*n)])-1` -/
def P16696608623776349471.Spec : Prop :=
  ∀ n, P16696608623776349471.a n = A255670 (n + 1)

end A255670

/-! ## A255670.P6685811098411099825

`A035614(comp[floor(ϕ*n)-1])`
-/

namespace A255670.P6685811098411099825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * (n : ℝ)⌋ - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035614 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A255670.P6685811098411099825

namespace A255670

/-- `A035614(comp[floor(ϕ*n)-1])` -/
def P6685811098411099825.Spec : Prop :=
  ∀ n, P6685811098411099825.a n = A255670 (n + 1)

end A255670

/-! ## A255670.P14705850493639241464

`val(A003714(comp[floor(ϕ*n)]), 2)`
-/

namespace A255670.P14705850493639241464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * (n : ℝ)⌋

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A003714 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)).toNat 2

end

end A255670.P14705850493639241464

namespace A255670

/-- `val(A003714(comp[floor(ϕ*n)]), 2)` -/
def P14705850493639241464.Spec : Prop :=
  ∀ n, (P14705850493639241464.a n : ℤ) = A255670 (n + 1)

end A255670

/-!
# A255671: Number of the column of the Wythoff array (A035513) that contains U(n), where U = A001950, the upper Wythoff sequence.

The programs for A255671, the canonical program `A255671.P11613518622091459689` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A255671 has offset 1).

The definition of A255671 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A255670, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A255671.P11613518622091459689

`A255670(n+1)+1`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A255671

/-- `A255670(n+1)+1` -/
def P11613518622091459689.Spec : Prop :=
  ∀ n, P11613518622091459689.a n = A255671 (n + 1)

theorem P11613518622091459689.correct : P11613518622091459689.Spec := by
  intro n
  simp only [A255671, Nat.add_sub_cancel]

end A255671

/-! ## A255671.P8057495323385587900

`A035612(A001950(n+1))`
-/

namespace A255671.P8057495323385587900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035612 (A001950 (n + 1)).toNat

end

end A255671.P8057495323385587900

namespace A255671

/-- `A035612(A001950(n+1))` -/
def P8057495323385587900.Spec : Prop :=
  ∀ n, P8057495323385587900.a n = A255671 (n + 1)

end A255671

/-! ## A255671.P6449956696390004491

`2+val(record[xor(n, 2*n)]+1, 2)`
-/

namespace A255671.P6449956696390004491
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 + SequenceMachineLib.valuation (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1) 2

end

end A255671.P6449956696390004491

namespace A255671

/-- `2+val(record[xor(n, 2*n)]+1, 2)` -/
def P6449956696390004491.Spec : Prop :=
  ∀ n, (P6449956696390004491.a n : ℤ) = A255671 (n + 1)

end A255671

/-! ## A255671.P16169667783792387600

`(val(record[xor(n, ceil(n/2))+1], 2)+1)%(n+4)+1`
-/

namespace A255671.P16169667783792387600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) ⌈(n : ℚ) / 2⌉ + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat 2 + 1) % (n + 4) + 1

end

end A255671.P16169667783792387600

namespace A255671

/-- `(val(record[xor(n, ceil(n/2))+1], 2)+1)%(n+4)+1` -/
def P16169667783792387600.Spec : Prop :=
  ∀ n, (P16169667783792387600.a n : ℤ) = A255671 (n + 1)

end A255671

/-! ## A255671.P4863838098029332064

`val(A048297(n), 2)+2`
-/

namespace A255671.P4863838098029332064
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A048297 n).toNat 2 + 2

end

end A255671.P4863838098029332064

namespace A255671

/-- `val(A048297(n), 2)+2` -/
def P4863838098029332064.Spec : Prop :=
  ∀ n, (P4863838098029332064.a n : ℤ) = A255671 (n + 1)

end A255671

/-! ## A255671.P1455654196158332519

`A035612(comp[floor(ϕ*n)])`
-/

namespace A255671.P1455654196158332519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * (n : ℝ)⌋

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035612 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A255671.P1455654196158332519

namespace A255671

/-- `A035612(comp[floor(ϕ*n)])` -/
def P1455654196158332519.Spec : Prop :=
  ∀ n, P1455654196158332519.a n = A255671 (n + 1)

end A255671

/-! ## A255671.P7411236934687782195

`A085058(record[xor(n, 2*n)])`
-/

namespace A255671.P7411236934687782195
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085058 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A255671.P7411236934687782195

namespace A255671

/-- `A085058(record[xor(n, 2*n)])` -/
def P7411236934687782195.Spec : Prop :=
  ∀ n, P7411236934687782195.a n = A255671 (n + 1)

end A255671

/-! ## A255671.P8750849157944017952

`val(A277335(n)+1, 2)+2`
-/

namespace A255671.P8750849157944017952
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A277335 n + 1).toNat 2 + 2

end

end A255671.P8750849157944017952

namespace A255671

/-- `val(A277335(n)+1, 2)+2` -/
def P8750849157944017952.Spec : Prop :=
  ∀ n, (P8750849157944017952.a n : ℤ) = A255671 (n + 1)

end A255671

/-! ## A255671.P9714960641592617768

`val(record[A048724(n)+1], 2)+2`
-/

namespace A255671.P9714960641592617768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048724 n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat 2 + 2

end

end A255671.P9714960641592617768

namespace A255671

/-- `val(record[A048724(n)+1], 2)+2` -/
def P9714960641592617768.Spec : Prop :=
  ∀ n, (P9714960641592617768.a n : ℤ) = A255671 (n + 1)

end A255671

/-! ## A255671.P1206087894278846366

`A035612(floor(ϕ*(n+1)))+1`
-/

namespace A255671.P1206087894278846366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035612 ⌊Real.goldenRatio * (n + 1 : ℝ)⌋.toNat + 1

end

end A255671.P1206087894278846366

namespace A255671

/-- `A035612(floor(ϕ*(n+1)))+1` -/
def P1206087894278846366.Spec : Prop :=
  ∀ n, P1206087894278846366.a n = A255671 (n + 1)

end A255671

/-!
# A255672: Coefficient of x^n in Product_{k>=1} 1/(1-x^k)^(k*n).

The programs for A255672, there is no canonical definition to state claims against.
-/

/-! ## A255672.P15625219114153301663

`A255961(∑[4*n])`
-/

namespace A255672.P15625219114153301663
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255961 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A255672.P15625219114153301663

/-!
# A255673: Coefficients of A(x), which satisfies: A(x) = 1 + x*A(x)^3 + x^2*A(x)^6.

The programs for A255673, the canonical program `A255673.P4251183108128377706` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A255673 has offset 0).

The definition of A255673 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A255673.P4251183108128377706

`1/(3*n+1)*∑{#}[floor(n/2), C(n-#, #)*C(3*n+1, n-#)]`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A255673

/-- `1/(3*n+1)*∑{#}[floor(n/2), C(n-#, #)*C(3*n+1, n-#)]` -/
def P4251183108128377706.Spec : Prop :=
  ∀ n, P4251183108128377706.a n = (A255673 n : ℚ)

end A255673

/-! ## A255673.P15240365725764046903

`A026303(n)/Δ[n²]`
-/

namespace A255673.P15240365725764046903
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026303 n : ℚ) / ((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℚ)

end

end A255673.P15240365725764046903

namespace A255673

/-- `A026303(n)/Δ[n²]` -/
def P15240365725764046903.Spec : Prop :=
  ∀ n, P15240365725764046903.a n = (A255673 n : ℚ)

end A255673

/-!
# A255675: Least integer k such that the n-th prime of form m^2+1 divides the composite number k^2+1.

The programs for A255675, there is no canonical definition to state claims against.
-/

/-! ## A255675.P9959009546554416126

`A206246(A300576(2+n))`
-/

namespace A255675.P9959009546554416126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206246 (A300576 (2 + n)).toNat

end

end A255675.P9959009546554416126

/-! ## A255675.P391171638114962295

`A121326(n%a(n-1))-A005574(n+1)` with `a(0)=3`
-/

namespace A255675.P391171638114962295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A121326 (Int.tmod (n : ℤ) (a (n - 1))).toNat - A005574 (n + 1)

end

end A255675.P391171638114962295

/-! ## A255675.P14410166054899193054

`A002061(lcm(2, A005574(n+1)))`
-/

namespace A255675.P14410166054899193054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002061 (Int.lcm 2 (A005574 (n + 1)))

end

end A255675.P14410166054899193054

/-! ## A255675.P5350681332775017366

`A002061(A005574(n+1))+A000038(n)`
-/

namespace A255675.P5350681332775017366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002061 (A005574 (n + 1)).toNat + A000038 n

end

end A255675.P5350681332775017366

/-! ## A255675.P7656617944531156517

`record[A065876(2*n)]+floor(acot(n)²)`
-/

namespace A255675.P7656617944531156517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065876 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + ⌊SequenceMachineLib.acot (n : ℝ) ^ 2⌋

end

end A255675.P7656617944531156517

/-! ## A255675.P11987276323163903195

`A065876(A005574(1+n))`
-/

namespace A255675.P11987276323163903195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065876 (A005574 (1 + n)).toNat

end

end A255675.P11987276323163903195

/-!
# A255676: E.g.f. satisfies: A'(x) = (1 + A(x))*(1 + A(x)^2).

The programs for A255676, there is no canonical definition to state claims against.
-/

/-! ## A255676.P18166191296810273540

`A155041(∏[a(n-1)+1])` with `a(0)=1, a(1)=4, a(2)=4`
-/

namespace A255676.P18166191296810273540
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 4, 4] fun n f1 =>
  f1 (n - 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155041 (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A255676.P18166191296810273540

/-! ## A255676.P490642866374553894

`A194386(A000670(n))`
-/

namespace A255676.P490642866374553894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194386 (A000670 n).toNat

end

end A255676.P490642866374553894

/-!
# A255678: Smallest number m needing exactly n distinct digits in decimal representation of m*(m+1)/2.

The programs for A255678, there is no canonical definition to state claims against.
-/

/-! ## A255678.P219195567921630967

`round(sqrt(2*A260214(n+1)))`
-/

namespace A255678.P219195567921630967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (2 * A260214 (n + 1) : ℝ))

end

end A255678.P219195567921630967

/-! ## A255678.P8758256909494701126

`A027649(n)-A001222(A245567(n))`
-/

namespace A255678.P8758256909494701126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027649 n - A001222 (A245567 n).toNat

end

end A255678.P8758256909494701126

/-!
# A255680: a(n) = n*(n mod 3)*(n mod 5).

The programs for A255680, the canonical program `A255680.P15424281102267418586` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A255680 has offset 0).

The definition of A255680 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*n%3*n%5` (program `A255680.P15424281102267418586`, by `A255680.P15424281102267418586.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A255680.P15424281102267418586

`n*n%3*n%5`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A255680

/-- `n*n%3*n%5` -/
def P15424281102267418586.Spec : Prop :=
  ∀ n, (P15424281102267418586.a n : ℤ) = A255680 n

theorem P15424281102267418586.correct : P15424281102267418586.Spec := by
  intro n
  simp only [A255680]

end A255680

/-! ## A255680.P3449992732875684789

`n*A010872(n)*A010874(n)`
-/

namespace A255680.P3449992732875684789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A010872 n * A010874 n

end

end A255680.P3449992732875684789

namespace A255680

/-- `n*A010872(n)*A010874(n)` -/
def P3449992732875684789.Spec : Prop :=
  ∀ n, P3449992732875684789.a n = A255680 n

theorem P3449992732875684789.correct : P3449992732875684789.Spec := by
  intro n
  simp only [A255680, Nat.add_sub_cancel, A255680.P3449992732875684789.a, A255680.P15424281102267418586.a, A010872, A010872.P9752549328412734763.a, A010874, A010874.P10724650744425709314.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A255680

/-! ## A255680.P8727995966219670756

`n*n%3*n%5`
-/

namespace A255680.P8727995966219670756
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (n % 3 * (n % 5))

end

end A255680.P8727995966219670756

namespace A255680

/-- `n*n%3*n%5` -/
def P8727995966219670756.Spec : Prop :=
  ∀ n, (P8727995966219670756.a n : ℤ) = A255680 n

theorem P8727995966219670756.correct : P8727995966219670756.Spec := by
  intro n
  simp only [A255680, Nat.add_sub_cancel, A255680.P8727995966219670756.a, A255680.P15424281102267418586.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A255680

/-! ## A255680.P18412133717422140388

`n%3*n*A010874(n)`
-/

namespace A255680.P18412133717422140388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n % 3 * n : ℕ) : ℤ) * A010874 n

end

end A255680.P18412133717422140388

namespace A255680

/-- `n%3*n*A010874(n)` -/
def P18412133717422140388.Spec : Prop :=
  ∀ n, P18412133717422140388.a n = A255680 n

theorem P18412133717422140388.correct : P18412133717422140388.Spec := by
  intro n
  simp only [A255680, Nat.add_sub_cancel, A255680.P18412133717422140388.a, A255680.P15424281102267418586.a, A010874, A010874.P10724650744425709314.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A255680

/-! ## A255680.P15922214938596897074

`n*A080425(2*n)*A010874(n)`
-/

namespace A255680.P15922214938596897074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A080425 (2 * n) * A010874 n

end

end A255680.P15922214938596897074

namespace A255680

/-- `n*A080425(2*n)*A010874(n)` -/
def P15922214938596897074.Spec : Prop :=
  ∀ n, P15922214938596897074.a n = A255680 n

end A255680

/-!
# A255682: Numbers k such that 4^k - 2^k - 3 is prime.

The programs for A255682, there is no canonical definition to state claims against.
-/

/-! ## A255682.P16914860391482048750

`eq[3, A191751(n+1)]+1`
-/

namespace A255682.P16914860391482048750
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191751 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A255682.P16914860391482048750

/-! ## A255682.P15090534368698454367

`eq[3, A191751(A028310(n))]`
-/

namespace A255682.P15090534368698454367
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191751 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A255682.P15090534368698454367

/-! ## A255682.P13583083851666523905

`eq[3, A191751(A093178(n))]`
-/

namespace A255682.P13583083851666523905
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191751 (A093178 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A255682.P13583083851666523905

/-! ## A255682.P18366385684626451642

`A004442(eq[3, A191751(n+1)])`
-/

namespace A255682.P18366385684626451642
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191751 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A255682.P18366385684626451642

/-! ## A255682.P15708525046263437273

`A020725(eq[3, A191751(n+1)])`
-/

namespace A255682.P15708525046263437273
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191751 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A255682.P15708525046263437273

/-!
# A255683: Sum of the binary numbers whose digits are cyclic permutations of the binary expansion of n.

The programs for A255683, the canonical program `A255683.P1316510834808175680` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A255683 has offset 1).

The definition of A255683 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A255683.P1316510834808175680

`A000120(n+1)*(A000918(A000523(n+1)+1)+1)`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A255683

/-- `A000120(n+1)*(A000918(A000523(n+1)+1)+1)` -/
def P1316510834808175680.Spec : Prop :=
  ∀ n, P1316510834808175680.a n = A255683 (n + 1)

theorem P1316510834808175680.correct : P1316510834808175680.Spec := by
  intro n
  simp only [A255683, Nat.add_sub_cancel]

end A255683

/-! ## A255683.P6003726676594291770

`∑[A099894(n)]*A000120(n+1)`
-/

namespace A255683.P6003726676594291770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099894 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A000120 (n + 1)

end

end A255683.P6003726676594291770

namespace A255683

/-- `∑[A099894(n)]*A000120(n+1)` -/
def P6003726676594291770.Spec : Prop :=
  ∀ n, P6003726676594291770.a n = A255683 (n + 1)

end A255683

/-! ## A255683.P17450207519128257833

`A000120(1+n)*A003817(n+1)`
-/

namespace A255683.P17450207519128257833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (1 + n) * A003817 (n + 1)

end

end A255683.P17450207519128257833

namespace A255683

/-- `A000120(1+n)*A003817(n+1)` -/
def P17450207519128257833.Spec : Prop :=
  ∀ n, P17450207519128257833.a n = A255683 (n + 1)

end A255683

/-! ## A255683.P7893312712258959644

`(A035327(n+1)+n+1)*A000120(n+1)`
-/

namespace A255683.P7893312712258959644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A035327 (n + 1) + (n + 1 : ℤ)) * A000120 (n + 1)

end

end A255683.P7893312712258959644

namespace A255683

/-- `(A035327(n+1)+n+1)*A000120(n+1)` -/
def P7893312712258959644.Spec : Prop :=
  ∀ n, P7893312712258959644.a n = A255683 (n + 1)

end A255683

/-! ## A255683.P5995053772436064851

`A000120(n+1)*A005187(A053644(n+1))`
-/

namespace A255683.P5995053772436064851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (n + 1) * A005187 (A053644 (n + 1)).toNat

end

end A255683.P5995053772436064851

namespace A255683

/-- `A000120(n+1)*A005187(A053644(n+1))` -/
def P5995053772436064851.Spec : Prop :=
  ∀ n, P5995053772436064851.a n = A255683 (n + 1)

end A255683

/-! ## A255683.P9218389086106969577

`A000120(n+1)*A000225(A000523(n+1)+1)`
-/

namespace A255683.P9218389086106969577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (n + 1) * A000225 (A000523 (n + 1) + 1).toNat

end

end A255683.P9218389086106969577

namespace A255683

/-- `A000120(n+1)*A000225(A000523(n+1)+1)` -/
def P9218389086106969577.Spec : Prop :=
  ∀ n, P9218389086106969577.a n = A255683 (n + 1)

theorem P9218389086106969577.correct : P9218389086106969577.Spec := by
  intro n
  simp only [A255683, Nat.add_sub_cancel, A255683.P9218389086106969577.a, A255683.P1316510834808175680.a, A000120, A000120.P2816527436160941581.a, A000225, A000225.P6535533121115206393.a, A000523, A000523.P3314682526375882520.a, A000918, A000918.P14329454465793069288.a, A005187, A005187.P3874015513960485494.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A255683

/-! ## A255683.P7944573944842205497

`(A004277(n+1)-A006257(n+1))*A000120(n+1)`
-/

namespace A255683.P7944573944842205497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A004277 (n + 1) - A006257 (n + 1)) * A000120 (n + 1)

end

end A255683.P7944573944842205497

namespace A255683

/-- `(A004277(n+1)-A006257(n+1))*A000120(n+1)` -/
def P7944573944842205497.Spec : Prop :=
  ∀ n, P7944573944842205497.a n = A255683 (n + 1)

end A255683

/-! ## A255683.P13293111625300017760

`(A004754(n+1)-A062050(n+1))*A000120(n+1)`
-/

namespace A255683.P13293111625300017760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A004754 (n + 1) - A062050 (n + 1)) * A000120 (n + 1)

end

end A255683.P13293111625300017760

namespace A255683

/-- `(A004754(n+1)-A062050(n+1))*A000120(n+1)` -/
def P13293111625300017760.Spec : Prop :=
  ∀ n, P13293111625300017760.a n = A255683 (n + 1)

end A255683

/-! ## A255683.P12515832737302440480

`A000120(n+1)/A090706(n+1)*A378959(n+1)`
-/

namespace A255683.P12515832737302440480
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000120 (n + 1) : ℚ) / (A090706 (n + 1) : ℚ) * (A378959 (n + 1) : ℚ)

end

end A255683.P12515832737302440480

namespace A255683

/-- `A000120(n+1)/A090706(n+1)*A378959(n+1)` -/
def P12515832737302440480.Spec : Prop :=
  ∀ n, P12515832737302440480.a n = (A255683 (n + 1) : ℚ)

end A255683

/-! ## A255683.P9442523112169254932

`(A062383(n+1)-1)*A000120(n+1)`
-/

namespace A255683.P9442523112169254932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A062383 (n + 1) - 1) * A000120 (n + 1)

end

end A255683.P9442523112169254932

namespace A255683

/-- `(A062383(n+1)-1)*A000120(n+1)` -/
def P9442523112169254932.Spec : Prop :=
  ∀ n, P9442523112169254932.a n = A255683 (n + 1)

end A255683

/-! ## A255683.P649095500123385155

`A000120(n+1)*A000225(A070939(n+1))`
-/

namespace A255683.P649095500123385155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (n + 1) * A000225 (A070939 (n + 1)).toNat

end

end A255683.P649095500123385155

namespace A255683

/-- `A000120(n+1)*A000225(A070939(n+1))` -/
def P649095500123385155.Spec : Prop :=
  ∀ n, P649095500123385155.a n = A255683 (n + 1)

end A255683

/-! ## A255683.P13428760270861082154

`(A346304(n+1)-A171757(n+2))*A000120(n+1)`
-/

namespace A255683.P13428760270861082154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A346304 (n + 1) - A171757 (n + 2)) * A000120 (n + 1)

end

end A255683.P13428760270861082154

namespace A255683

/-- `(A346304(n+1)-A171757(n+2))*A000120(n+1)` -/
def P13428760270861082154.Spec : Prop :=
  ∀ n, P13428760270861082154.a n = A255683 (n + 1)

end A255683

/-! ## A255683.P8873480094097589855

`A000120(n+1)*A092323(2*(n+1))`
-/

namespace A255683.P8873480094097589855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (n + 1) * A092323 (2 * (n + 1))

end

end A255683.P8873480094097589855

namespace A255683

/-- `A000120(n+1)*A092323(2*(n+1))` -/
def P8873480094097589855.Spec : Prop :=
  ∀ n, P8873480094097589855.a n = A255683 (n + 1)

end A255683

/-! ## A255683.P3592933923709299282

`A000120(n+1)*A011371(A062383(n+1))`
-/

namespace A255683.P3592933923709299282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (n + 1) * A011371 (A062383 (n + 1)).toNat

end

end A255683.P3592933923709299282

namespace A255683

/-- `A000120(n+1)*A011371(A062383(n+1))` -/
def P3592933923709299282.Spec : Prop :=
  ∀ n, P3592933923709299282.a n = A255683 (n + 1)

end A255683

/-! ## A255683.P13295464300480433383

`A003817(n+1)*A005811(A341916(n+1))`
-/

namespace A255683.P13295464300480433383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003817 (n + 1) * A005811 (A341916 (n + 1)).toNat

end

end A255683.P13295464300480433383

namespace A255683

/-- `A003817(n+1)*A005811(A341916(n+1))` -/
def P13295464300480433383.Spec : Prop :=
  ∀ n, P13295464300480433383.a n = A255683 (n + 1)

end A255683

/-! ## A255683.P8573420654628174140

`A000523(A209639(n+1))*A003817(n+1)`
-/

namespace A255683.P8573420654628174140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (A209639 (n + 1)).toNat * A003817 (n + 1)

end

end A255683.P8573420654628174140

namespace A255683

/-- `A000523(A209639(n+1))*A003817(n+1)` -/
def P8573420654628174140.Spec : Prop :=
  ∀ n, P8573420654628174140.a n = A255683 (n + 1)

end A255683

/-!
# A255684: Bernoulli number B_{n} has denominator 354.

The programs for A255684, there is no canonical definition to state claims against.
-/

/-! ## A255684.P10769587516736815486

`58*A099375(A024075(n))`
-/

namespace A255684.P10769587516736815486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  58 * A099375 (A024075 n).toNat

end

end A255684.P10769587516736815486

/-!
# A255686: Numbers n such that lambda(sum of odd divisors of Fibonacci(n)) = lambda(sum of even divisors of Fibonacci(n)) where lambda is the Carmichael function (A002322).

The programs for A255686, there is no canonical definition to state claims against.
-/

/-! ## A255686.P6309150716852440948

`eq[A026729(A138065(n+1)), A138067(n+1)]`
-/

namespace A255686.P6309150716852440948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026729 (A138065 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138067 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A255686.P6309150716852440948

/-! ## A255686.P6477349617963121847

`A008486(lt[A179162(n+1), A152522(n+1)])`
-/

namespace A255686.P6477349617963121847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179162 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152522 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A255686.P6477349617963121847

/-! ## A255686.P7275518669952037679

`lt[A029324(n+1), A029302(n)-A029338(n+4)]`
-/

namespace A255686.P7275518669952037679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029324 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029302 n - A029338 (n + 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A255686.P7275518669952037679

/-! ## A255686.P971432430179405185

`3*lt[A282892(n+1), n]`
-/

namespace A255686.P971432430179405185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282892 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A255686.P971432430179405185

/-!
# A255687: a(n) = n*(n + 1)*(7*n + 11)/6.

The programs for A255687, the canonical program `A255687.P606655382252547481` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A255687 has offset 0).

The definition of A255687 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(n+1)*(7*n+11)/6` (program `A255687.P16204878719808806365`, by `A255687.P16204878719808806365.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A255687.P15118450902945029902

`ogf((6x+x^2)/(1-4x+6x^2-4x^3+x^4))`
-/

namespace A255687.P15118450902945029902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 6, 1] [1, -4, 6, -4, 1] n

end

end A255687.P15118450902945029902

namespace A255687

/-- `ogf((6x+x^2)/(1-4x+6x^2-4x^3+x^4))` -/
def P15118450902945029902.Spec : Prop :=
  ∀ n, P15118450902945029902.a n = A255687 n

end A255687

/-! ## A255687.P16204878719808806365

`n*(n+1)*(7*n+11)/6`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A255687.P16204878719808806365
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n * (n + 1) * (7 * n + 11) : ℚ) / 6

end

end A255687.P16204878719808806365

namespace A255687

/-- `n*(n+1)*(7*n+11)/6` -/
def P16204878719808806365.Spec : Prop :=
  ∀ n, P16204878719808806365.a n = (A255687 n : ℚ)

theorem P16204878719808806365.correct : P16204878719808806365.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A255687, Nat.add_sub_cancel, A255687.P16204878719808806365.a, A255687.P606655382252547481.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A255687, Nat.add_sub_cancel, A255687.P16204878719808806365.a, A255687.P606655382252547481.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [← h1, ← h2, ← h3, ← h4]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A255687

/-! ## A255687.P606655382252547481

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=0, a(1)=6, a(2)=25, a(3)=64`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A255687

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` -/
def P606655382252547481.Spec : Prop :=
  ∀ n, P606655382252547481.a n = A255687 n

theorem P606655382252547481.correct : P606655382252547481.Spec := by
  intro n
  simp only [A255687]

end A255687

/-! ## A255687.P16513375335560193618

`A212977(2*n)`
-/

namespace A255687.P16513375335560193618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212977 (2 * n)

end

end A255687.P16513375335560193618

namespace A255687

/-- `A212977(2*n)` -/
def P16513375335560193618.Spec : Prop :=
  ∀ n, P16513375335560193618.a n = A255687 n

end A255687

/-! ## A255687.P1305941521359015655

`∑[∑[7+a(n-1)]]` with `a(0)=0, a(1)=6`
-/

namespace A255687.P1305941521359015655
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 6] fun n f2 =>
  7 + f2 (n - 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A255687.P1305941521359015655

namespace A255687

/-- `∑[∑[7+a(n-1)]]` -/
def P1305941521359015655.Spec : Prop :=
  ∀ n, (P1305941521359015655.a n : ℤ) = A255687 n

end A255687

/-! ## A255687.P3916437798901737953

`∑[∑[ogf((6x+x^2)/(1-2x+x^2))]]`
-/

namespace A255687.P3916437798901737953
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 6, 1] [1, -2, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A255687.P3916437798901737953

namespace A255687

/-- `∑[∑[ogf((6x+x^2)/(1-2x+x^2))]]` -/
def P3916437798901737953.Spec : Prop :=
  ∀ n, P3916437798901737953.a n = A255687 n

end A255687

/-! ## A255687.P6591265155208257736

`∑[1-∑[a(n-1)-7]]` with `a(0)=1`
-/

namespace A255687.P6591265155208257736
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  f2 (n - 1) - 7

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A255687.P6591265155208257736

namespace A255687

/-- `∑[1-∑[a(n-1)-7]]` -/
def P6591265155208257736.Spec : Prop :=
  ∀ n, P6591265155208257736.a n = A255687 n

end A255687

/-! ## A255687.P620636970431816744

`∑[Δ[n²]²]-C(n+3, 3)`
-/

namespace A255687.P620636970431816744
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f2 (n + 1) : ℤ) - (f2 n : ℤ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (Nat.choose (n + 3) 3 : ℤ)

end

end A255687.P620636970431816744

namespace A255687

/-- `∑[Δ[n²]²]-C(n+3, 3)` -/
def P620636970431816744.Spec : Prop :=
  ∀ n, P620636970431816744.a n = A255687 n

end A255687

/-! ## A255687.P14954272283226205982

`∑[C(n, 2)-1]+(n+1)^3`
-/

namespace A255687.P14954272283226205982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose n 2 : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ((n + 1) ^ 3 : ℤ)

end

end A255687.P14954272283226205982

namespace A255687

/-- `∑[C(n, 2)-1]+(n+1)^3` -/
def P14954272283226205982.Spec : Prop :=
  ∀ n, P14954272283226205982.a n = A255687 n

end A255687

/-! ## A255687.P16081923321121108571

`∑[C(n, 2)]+2*n*∑[n+1]`
-/

namespace A255687.P16081923321121108571
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2 * n * (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A255687.P16081923321121108571

namespace A255687

/-- `∑[C(n, 2)]+2*n*∑[n+1]` -/
def P16081923321121108571.Spec : Prop :=
  ∀ n, (P16081923321121108571.a n : ℤ) = A255687 n

end A255687

/-! ## A255687.P9707256871665831919

`∑[lcm(n, 2*n+1)]+∑[∑[3*n]]`
-/

namespace A255687.P9707256871665831919
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm n (2 * n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ∑ j ∈ Finset.range (n + 1), f2 j

end

end A255687.P9707256871665831919

namespace A255687

/-- `∑[lcm(n, 2*n+1)]+∑[∑[3*n]]` -/
def P9707256871665831919.Spec : Prop :=
  ∀ n, (P9707256871665831919.a n : ℤ) = A255687 n

end A255687

/-! ## A255687.P6691928552239030848

`(2*n+1)²+a(n-1)-C(n+2, 2)` with `a(0)=0`
-/

namespace A255687.P6691928552239030848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ((2 * n + 1) ^ 2 : ℤ) + (a (n - 1) - (Nat.choose (n + 2) 2 : ℤ))

end

end A255687.P6691928552239030848

namespace A255687

/-- `(2*n+1)²+a(n-1)-C(n+2, 2)` -/
def P6691928552239030848.Spec : Prop :=
  ∀ n, P6691928552239030848.a n = A255687 n

end A255687

/-! ## A255687.P18059919906977830626

`C(n+1, 3)+(2*(n+1)+2)*C(n+1, 2)`
-/

namespace A255687.P18059919906977830626
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 1) 3 + (2 * (n + 1) + 2) * Nat.choose (n + 1) 2

end

end A255687.P18059919906977830626

namespace A255687

/-- `C(n+1, 3)+(2*(n+1)+2)*C(n+1, 2)` -/
def P18059919906977830626.Spec : Prop :=
  ∀ n, (P18059919906977830626.a n : ℤ) = A255687 n

end A255687

/-! ## A255687.P10825663593815742696

`∑[A179986(n)]`
-/

namespace A255687.P10825663593815742696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179986 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A255687.P10825663593815742696

namespace A255687

/-- `∑[A179986(n)]` -/
def P10825663593815742696.Spec : Prop :=
  ∀ n, P10825663593815742696.a n = A255687 n

end A255687

/-! ## A255687.P12606034534652058680

`∑[A195027(n)/4]`
-/

namespace A255687.P12606034534652058680
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A195027 n : ℚ) / 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A255687.P12606034534652058680

namespace A255687

/-- `∑[A195027(n)/4]` -/
def P12606034534652058680.Spec : Prop :=
  ∀ n, P12606034534652058680.a n = (A255687 n : ℚ)

end A255687

/-! ## A255687.P13882486276868792767

`∑[A186029(n)+n]`
-/

namespace A255687.P13882486276868792767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186029 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A255687.P13882486276868792767

namespace A255687

/-- `∑[A186029(n)+n]` -/
def P13882486276868792767.Spec : Prop :=
  ∀ n, P13882486276868792767.a n = A255687 n

end A255687

/-! ## A255687.P11476464310526085294

`A245301(n)+∑[n]`
-/

namespace A255687.P11476464310526085294
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245301 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A255687.P11476464310526085294

namespace A255687

/-- `A245301(n)+∑[n]` -/
def P11476464310526085294.Spec : Prop :=
  ∀ n, P11476464310526085294.a n = A255687 n

end A255687

/-! ## A255687.P4417369615273978675

`∑[A024966(n)-n]`
-/

namespace A255687.P4417369615273978675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024966 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A255687.P4417369615273978675

namespace A255687

/-- `∑[A024966(n)-n]` -/
def P4417369615273978675.Spec : Prop :=
  ∀ n, P4417369615273978675.a n = A255687 n

end A255687

/-! ## A255687.P12601094247965698900

`∑[A028895(n)+n²]`
-/

namespace A255687.P12601094247965698900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028895 n + (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A255687.P12601094247965698900

namespace A255687

/-- `∑[A028895(n)+n²]` -/
def P12601094247965698900.Spec : Prop :=
  ∀ n, P12601094247965698900.a n = A255687 n

end A255687

/-! ## A255687.P11134424935442221356

`A134481(n)+∑[n²]`
-/

namespace A255687.P11134424935442221356
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134481 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A255687.P11134424935442221356

namespace A255687

/-- `A134481(n)+∑[n²]` -/
def P11134424935442221356.Spec : Prop :=
  ∀ n, P11134424935442221356.a n = A255687 n

end A255687

/-!
# A255688: G.f.: (2*x+1)/(2*sqrt(4*x^2-8*x+1)) + 1/2.

The programs for A255688, there is no canonical definition to state claims against.
-/

/-! ## A255688.P4180067467704156741

`A152842(2*n²)`
-/

namespace A255688.P4180067467704156741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152842 (2 * n ^ 2)

end

end A255688.P4180067467704156741

/-! ## A255688.P9714069604419700436

`A122016(∑[4*n])`
-/

namespace A255688.P9714069604419700436
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122016 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A255688.P9714069604419700436

/-! ## A255688.P7840682972250786540

`record[A152842(Δ[A200067(n)])]`
-/

namespace A255688.P7840682972250786540
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200067 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152842 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A255688.P7840682972250786540

/-! ## A255688.P18338466639357346581

`A249250(2*n²)`
-/

namespace A255688.P18338466639357346581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249250 (2 * n ^ 2)

end

end A255688.P18338466639357346581

/-! ## A255688.P13001624164152364008

`record[A249250(A025480(n²))]`
-/

namespace A255688.P13001624164152364008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249250 (A025480 (n ^ 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A255688.P13001624164152364008

/-!
# A255689: Convert n to base 4, move the most significant digit to the least significant one and convert back to base 10.

The programs for A255689, there is no canonical definition to state claims against.
-/

/-! ## A255689.P14189295660499342323

`A055949(A297253(3+n))+A030103(n)`
-/

namespace A255689.P14189295660499342323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055949 (A297253 (3 + n)).toNat + A030103 n

end

end A255689.P14189295660499342323

/-!
# A255690: Convert n to base 5, move the most significant digit to the least significant one and convert back to base 10.

The programs for A255690, there is no canonical definition to state claims against.
-/

/-! ## A255690.P8013227313420316700

`A030104(lt[A265516(n), A265564(2*n+1)])`
-/

namespace A255690.P8013227313420316700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265516 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265564 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030104 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A255690.P8013227313420316700

/-! ## A255690.P374718690979002581

`A030104(lt[A055950(n), 49])`
-/

namespace A255690.P374718690979002581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055950 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  49

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030104 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A255690.P374718690979002581

/-! ## A255690.P141551898922775184

`gcd(A141023(A185037(n)), A255590(n))`
-/

namespace A255690.P141551898922775184
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A141023 (A185037 n).toNat) (A255590 n)

end

end A255690.P141551898922775184

/-! ## A255690.P8032367773733470758

`A030104(n)%A036195(A051733(n+1))`
-/

namespace A255690.P8032367773733470758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A030104 n) (A036195 (A051733 (n + 1)).toNat)

end

end A255690.P8032367773733470758

/-!
# A255691: Convert n to base 6, move the most significant digit to the least significant one and convert back to base 10.

The programs for A255691, there is no canonical definition to state claims against.
-/

/-! ## A255691.P155533399329512016

`A214394(A255591(n))`
-/

namespace A255691.P155533399329512016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214394 (A255591 n).toNat

end

end A255691.P155533399329512016

/-! ## A255691.P12202093897325087251

`A030105(lt[A265518(n), A184398(n+1)])`
-/

namespace A255691.P12202093897325087251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265518 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184398 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030105 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A255691.P12202093897325087251

/-! ## A255691.P5817206638329858902

`A030105(lt[A055952(n), 71])`
-/

namespace A255691.P5817206638329858902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055952 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  71

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030105 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A255691.P5817206638329858902

/-! ## A255691.P1293376985962379823

`A030105(n)%A350807(n+1)`
-/

namespace A255691.P1293376985962379823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A030105 n) (A350807 (n + 1))

end

end A255691.P1293376985962379823

/-!
# A255692: Convert n to base 7, move the most significant digit to the least significant one and convert back to base 10.

The programs for A255692, there is no canonical definition to state claims against.
-/

/-! ## A255692.P3162282442460189692

`A106608(A255592(n))`
-/

namespace A255692.P3162282442460189692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106608 (A255592 n).toNat

end

end A255692.P3162282442460189692

/-!
# A255693: Convert n to base 8, move the most significant digit to the least significant one and convert back to base 10.

The programs for A255693, there is no canonical definition to state claims against.
-/

/-! ## A255693.P16464755667100383681

`A030107(n)%A151707(A347693(n))`
-/

namespace A255693.P16464755667100383681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A030107 n) (A151707 (A347693 n).toNat)

end

end A255693.P16464755667100383681

/-! ## A255693.P14033678892248755823

`(A055956(n)-n)%A151707(A347693(n))`
-/

namespace A255693.P14033678892248755823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A055956 n - (n : ℤ)) (A151707 (A347693 n).toNat)

end

end A255693.P14033678892248755823

/-! ## A255693.P3374963580632337976

`(n-A055957(n))%A151707(A347693(n))`
-/

namespace A255693.P3374963580632337976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n : ℤ) - A055957 n) (A151707 (A347693 n).toNat)

end

end A255693.P3374963580632337976

/-! ## A255693.P7028368440089089473

`-(A055957(n)+A001489(n))%A151707(A347693(n))`
-/

namespace A255693.P7028368440089089473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (-(A055957 n + A001489 n)) (A151707 (A347693 n).toNat)

end

end A255693.P7028368440089089473

/-! ## A255693.P469499296811747422

`(A196199(n²)+A055956(n))%A151707(A347693(n))`
-/

namespace A255693.P469499296811747422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A196199 (n ^ 2) + A055956 n) (A151707 (A347693 n).toNat)

end

end A255693.P469499296811747422

/-! ## A255693.P4272663073159469880

`A030107(n)`
-/

namespace A255693.P4272663073159469880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030107 n

end

end A255693.P4272663073159469880

