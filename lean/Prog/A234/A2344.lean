import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C012
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C024
import Seq.B000.C027
import Seq.B000.C030
import Seq.B000.C032
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C004
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B012.C000
import Seq.Opaque.C000
import Seq.Opaque.C001
import Seq.Opaque.C002
import Seq.Opaque.C003
import Seq.Opaque.C004
import Seq.Opaque.C006
import Seq.Opaque.C007
import Seq.Opaque.C008
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
import Seq.Opaque.C023
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A234400: Number of (n+1)X(1+1) 0..6 arrays with every 2X2 subblock having the sum of the absolute values of the edge differences equal to 12.

The programs for A234400, there is no canonical definition to state claims against.
-/

/-! ## A234400.P2236681665874232381

`A234405(∑[n]+1)`
-/

namespace A234400.P2236681665874232381
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234405 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A234400.P2236681665874232381

/-! ## A234400.P14770734127880075123

`lcm(2, A234405(A000124(n)))`
-/

namespace A234400.P14770734127880075123
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A234405 (A000124 n).toNat)

end

end A234400.P14770734127880075123

/-! ## A234400.P11775714365816106621

`record[gcd(A004247(n), A234405(n+1))]`
-/

namespace A234400.P11775714365816106621
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A004247 n) (A234405 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234400.P11775714365816106621

/-! ## A234400.P6841479953643167905

`record[root(A234405(n+1), A211836(n+1))]`
-/

namespace A234400.P6841479953643167905
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A234405 (n + 1) : ℝ) ^ (1 / (A211836 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234400.P6841479953643167905

/-! ## A234400.P7745525178570359169

`record[root(A234405(n+1), A284949(n+1))]`
-/

namespace A234400.P7745525178570359169
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A234405 (n + 1) : ℝ) ^ (1 / (A284949 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234400.P7745525178570359169

/-!
# A234401: Number of (n+1)X(2+1) 0..6 arrays with every 2X2 subblock having the sum of the absolute values of the edge differences equal to 12.

The programs for A234401, there is no canonical definition to state claims against.
-/

/-! ## A234401.P7330679079474638900

`A234405(∑[n+1]+2)`
-/

namespace A234401.P7330679079474638900
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234405 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A234401.P7330679079474638900

/-! ## A234401.P17228270313503719151

`lcm(2, A234405(A133263(n+1)))`
-/

namespace A234401.P17228270313503719151
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A234405 (A133263 (n + 1)).toNat)

end

end A234401.P17228270313503719151

/-! ## A234401.P7141995727348935619

`record[root(A234405(n+2), A211836(n+1))]`
-/

namespace A234401.P7141995727348935619
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A234405 (n + 2) : ℝ) ^ (1 / (A211836 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234401.P7141995727348935619

/-! ## A234401.P535113041836108691

`A184257(n+1)*A234405(A133263(n+1))`
-/

namespace A234401.P535113041836108691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184257 (n + 1) * A234405 (A133263 (n + 1)).toNat

end

end A234401.P535113041836108691

/-! ## A234401.P13142370864680316910

`or(A234405(A133263(n+1)), A282593(n+1))`
-/

namespace A234401.P13142370864680316910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A234405 (A133263 (n + 1)).toNat) (A282593 (n + 1))

end

end A234401.P13142370864680316910

/-!
# A234402: Number of (n+1)X(3+1) 0..6 arrays with every 2X2 subblock having the sum of the absolute values of the edge differences equal to 12.

The programs for A234402, there is no canonical definition to state claims against.
-/

/-! ## A234402.P2039818844546975491

`A234405(∑[n+2]+4)`
-/

namespace A234402.P2039818844546975491
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234405 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A234402.P2039818844546975491

/-!
# A234403: Number of (n+1)X(4+1) 0..6 arrays with every 2X2 subblock having the sum of the absolute values of the edge differences equal to 12.

The programs for A234403, there is no canonical definition to state claims against.
-/

/-! ## A234403.P4329411696047347307

`A234405(A141214(n)+7)`
-/

namespace A234403.P4329411696047347307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234405 (A141214 n + 7).toNat

end

end A234403.P4329411696047347307

/-! ## A234403.P8713455488969063421

`A234405(A055999(n)+10)`
-/

namespace A234403.P8713455488969063421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234405 (A055999 n + 10).toNat

end

end A234403.P8713455488969063421

/-!
# A234406: Number of (n+1)X(1+1) 0..6 arrays with every 2X2 subblock having the sum of the absolute values of the edge differences equal to 12 and no adjacent elements equal.

The programs for A234406, there is no canonical definition to state claims against.
-/

/-! ## A234406.P18165981759528137150

`A234412(∑[n]+1)`
-/

namespace A234406.P18165981759528137150
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234412 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A234406.P18165981759528137150

/-! ## A234406.P16371261214456975312

`lcm(2, A234412(A000124(n)))`
-/

namespace A234406.P16371261214456975312
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A234412 (A000124 n).toNat)

end

end A234406.P16371261214456975312

/-! ## A234406.P2875534493515734309

`record[A010054(n)*A234412(n+1)]`
-/

namespace A234406.P2875534493515734309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A234412 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234406.P2875534493515734309

/-! ## A234406.P12448093114754990859

`record[A103451(n)*A234412(n+1)]`
-/

namespace A234406.P12448093114754990859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103451 n * A234412 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234406.P12448093114754990859

/-! ## A234406.P15285360374583518932

`record[A234412(n+1)/A168551(n)]`
-/

namespace A234406.P15285360374583518932
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A234412 (n + 1) : ℚ) / (A168551 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234406.P15285360374583518932

/-!
# A234407: Number of (n+1)X(2+1) 0..6 arrays with every 2X2 subblock having the sum of the absolute values of the edge differences equal to 12 and no adjacent elements equal.

The programs for A234407, there is no canonical definition to state claims against.
-/

/-! ## A234407.P13695473130846311108

`A234412(∑[n+1]+2)`
-/

namespace A234407.P13695473130846311108
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234412 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A234407.P13695473130846311108

/-! ## A234407.P489270739832856676

`record[A010054(n)*A234412(n+2)]`
-/

namespace A234407.P489270739832856676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A234412 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234407.P489270739832856676

/-!
# A234408: Number of (n+1)X(3+1) 0..6 arrays with every 2X2 subblock having the sum of the absolute values of the edge differences equal to 12 and no adjacent elements equal.

The programs for A234408, there is no canonical definition to state claims against.
-/

/-! ## A234408.P5085108240674412241

`A234412(∑[n+2]+4)`
-/

namespace A234408.P5085108240674412241
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234412 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A234408.P5085108240674412241

/-! ## A234408.P11529474080926256084

`lcm(2, A234412(A167614(n+1)))`
-/

namespace A234408.P11529474080926256084
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A234412 (A167614 (n + 1)).toNat)

end

end A234408.P11529474080926256084

/-! ## A234408.P8831284032653454069

`A234412(A167614(n+1))+A000038(n+1)`
-/

namespace A234408.P8831284032653454069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234412 (A167614 (n + 1)).toNat + A000038 (n + 1)

end

end A234408.P8831284032653454069

/-! ## A234408.P15734657841701063268

`A234412(A167614(n+1))%A234409(n+1)`
-/

namespace A234408.P15734657841701063268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A234412 (A167614 (n + 1)).toNat) (A234409 (n + 1))

end

end A234408.P15734657841701063268

/-! ## A234408.P17317401412863354201

`A234412(A167614(n+1))*A300826(2*n+1)`
-/

namespace A234408.P17317401412863354201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234412 (A167614 (n + 1)).toNat * A300826 (2 * n + 1)

end

end A234408.P17317401412863354201

/-!
# A234409: Number of (n+1)X(4+1) 0..6 arrays with every 2X2 subblock having the sum of the absolute values of the edge differences equal to 12 and no adjacent elements equal.

The programs for A234409, there is no canonical definition to state claims against.
-/

/-! ## A234409.P17964964066184991443

`A234412(A141214(n)+7)`
-/

namespace A234409.P17964964066184991443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234412 (A141214 n + 7).toNat

end

end A234409.P17964964066184991443

/-! ## A234409.P15345710802358276655

`A234412(A052905(n)+9)`
-/

namespace A234409.P15345710802358276655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234412 (A052905 n + 9).toNat

end

end A234409.P15345710802358276655

/-! ## A234409.P2240693139272751496

`A234412(A055999(n)+10)`
-/

namespace A234409.P2240693139272751496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234412 (A055999 n + 10).toNat

end

end A234409.P2240693139272751496

/-! ## A234409.P3223956811183375777

`A234412(A167614(n+2)+1)`
-/

namespace A234409.P3223956811183375777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234412 (A167614 (n + 2) + 1).toNat

end

end A234409.P3223956811183375777

/-! ## A234409.P14849385742940784246

`A234412(A055998(n+2))`
-/

namespace A234409.P14849385742940784246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234412 (A055998 (n + 2)).toNat

end

end A234409.P14849385742940784246

/-!
# A234410: Number of (n+1) X (5+1) 0..6 arrays with every 2 X 2 subblock having the sum of the absolute values of the edge differences equal to 12 and no adjacent elements equal.

The programs for A234410, there is no canonical definition to state claims against.
-/

/-! ## A234410.P12847085799039516544

`A234412(A374005(n+1))`
-/

namespace A234410.P12847085799039516544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234412 (A374005 (n + 1)).toNat

end

end A234410.P12847085799039516544

/-! ## A234410.P13858866049121170860

`A234412(eq[8, A057728(n+1)])`
-/

namespace A234410.P13858866049121170860
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057728 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234412 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A234410.P13858866049121170860

/-!
# A234413: Number of (n+1)X(n+1) 0..7 arrays with every 2X2 subblock having the absolute values of all six edge and diagonal differences no larger than 1.

The programs for A234413, there is no canonical definition to state claims against.
-/

/-! ## A234413.P16981193664194858484

`A234421((n+1)²+n²)`
-/

namespace A234413.P16981193664194858484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234421 ((n + 1) ^ 2 + n ^ 2)

end

end A234413.P16981193664194858484

/-! ## A234413.P3633918933723673549

`lcm(2, A234421(A001844(n)))`
-/

namespace A234413.P3633918933723673549
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A234421 (A001844 n).toNat)

end

end A234413.P3633918933723673549

/-!
# A234414: Number of (n+1) X (1+1) 0..7 arrays with every 2 X 2 subblock having the absolute values of all six edge and diagonal differences no larger than 1.

The programs for A234414, there is no canonical definition to state claims against.
-/

/-! ## A234414.P10988382092630260943

`A234421(∑[n]+1)`
-/

namespace A234414.P10988382092630260943
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234421 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A234414.P10988382092630260943

/-! ## A234414.P3649334249600017503

`lcm(2, A234421(A000124(n)))`
-/

namespace A234414.P3649334249600017503
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A234421 (A000124 n).toNat)

end

end A234414.P3649334249600017503

/-! ## A234414.P7110522910363651447

`record[A176270(n)*A234421(n+1)]`
-/

namespace A234414.P7110522910363651447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176270 n * A234421 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234414.P7110522910363651447

/-! ## A234414.P10309944759674210281

`record[gcd(A002262(n), A234421(n+1))]`
-/

namespace A234414.P10309944759674210281
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A234421 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234414.P10309944759674210281

/-! ## A234414.P4575203411140548653

`A234421(A000124(n))+A178798(n)`
-/

namespace A234414.P4575203411140548653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234421 (A000124 n).toNat + A178798 n

end

end A234414.P4575203411140548653

/-!
# A234415: Number of (n+1)X(2+1) 0..7 arrays with every 2X2 subblock having the absolute values of all six edge and diagonal differences no larger than 1.

The programs for A234415, there is no canonical definition to state claims against.
-/

/-! ## A234415.P18254505621367482415

`A234421(∑[n+1]+2)`
-/

namespace A234415.P18254505621367482415
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234421 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A234415.P18254505621367482415

/-! ## A234415.P9263951519811580075

`record[gcd(A002262(n), A234421(n+2))]`
-/

namespace A234415.P9263951519811580075
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A234421 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234415.P9263951519811580075

/-! ## A234415.P17978754920986588264

`record[A234421(abs(A201163(n)))]`
-/

namespace A234415.P17978754920986588264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234421 |A201163 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234415.P17978754920986588264

/-! ## A234415.P11769269803185659395

`record[A234421(Δ[A003453(n+5)])]`
-/

namespace A234415.P11769269803185659395
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003453 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234421 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234415.P11769269803185659395

/-! ## A234415.P6081881639814210920

`A234421(A000096(n+1))%A209847(n+1)`
-/

namespace A234415.P6081881639814210920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A234421 (A000096 (n + 1)).toNat) (A209847 (n + 1))

end

end A234415.P6081881639814210920

/-!
# A234416: Number of (n+1)X(3+1) 0..7 arrays with every 2X2 subblock having the absolute values of all six edge and diagonal differences no larger than 1.

The programs for A234416, there is no canonical definition to state claims against.
-/

/-! ## A234416.P2253520374196274225

`A234421(∑[n+2]+4)`
-/

namespace A234416.P2253520374196274225
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234421 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A234416.P2253520374196274225

/-! ## A234416.P6933823757444379736

`lcm(2, A234421(A167614(n+1)))`
-/

namespace A234416.P6933823757444379736
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A234421 (A167614 (n + 1)).toNat)

end

end A234416.P6933823757444379736

/-! ## A234416.P2945133400931257901

`A234421(A167614(n+1))+A025466(n)`
-/

namespace A234416.P2945133400931257901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234421 (A167614 (n + 1)).toNat + A025466 n

end

end A234416.P2945133400931257901

/-! ## A234416.P15204193364301228039

`A234421(A167614(n+1))+A178798(n)`
-/

namespace A234416.P15204193364301228039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234421 (A167614 (n + 1)).toNat + A178798 n

end

end A234416.P15204193364301228039

/-! ## A234416.P3985774379487800209

`A234421(A167614(n+1))%A234418(n+1)`
-/

namespace A234416.P3985774379487800209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A234421 (A167614 (n + 1)).toNat) (A234418 (n + 1))

end

end A234416.P3985774379487800209

/-!
# A234417: Number of (n+1)X(4+1) 0..7 arrays with every 2X2 subblock having the absolute values of all six edge and diagonal differences no larger than 1.

The programs for A234417, there is no canonical definition to state claims against.
-/

/-! ## A234417.P2991957406718961191

`A234421(A052905(n)+9)`
-/

namespace A234417.P2991957406718961191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234421 (A052905 n + 9).toNat

end

end A234417.P2991957406718961191

/-! ## A234417.P13595366807764078405

`A234421(A055999(n)+10)`
-/

namespace A234417.P13595366807764078405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234421 (A055999 n + 10).toNat

end

end A234417.P13595366807764078405

/-! ## A234417.P13906725494838243588

`A234421(Δ[A008778(n)]+6)`
-/

namespace A234417.P13906725494838243588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234421 (f1 (n + 1) - f1 n + 6).toNat

end

end A234417.P13906725494838243588

/-! ## A234417.P1565554122612873996

`A234421(A167614(n+2)+1)`
-/

namespace A234417.P1565554122612873996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234421 (A167614 (n + 2) + 1).toNat

end

end A234417.P1565554122612873996

/-! ## A234417.P12148688740154063095

`A234421(eq[8, A059268(n)]+1)`
-/

namespace A234417.P12148688740154063095
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234421 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A234417.P12148688740154063095

/-!
# A234418: Number of (n+1)X(5+1) 0..7 arrays with every 2X2 subblock having the absolute values of all six edge and diagonal differences no larger than 1.

The programs for A234418, there is no canonical definition to state claims against.
-/

/-! ## A234418.P5301024301429054901

`A234421(eq[6, A131818(n+1)])`
-/

namespace A234418.P5301024301429054901
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234421 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A234418.P5301024301429054901

/-! ## A234418.P330080196170956951

`A234421(A374005(n+1))`
-/

namespace A234418.P330080196170956951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234421 (A374005 (n + 1)).toNat

end

end A234418.P330080196170956951

/-! ## A234418.P5842756045594497134

`A234421(A056115(n)+11)`
-/

namespace A234418.P5842756045594497134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234421 (A056115 n + 11).toNat

end

end A234418.P5842756045594497134

/-! ## A234418.P13392507711763585000

`A234421(eq[4, A193592(n)])`
-/

namespace A234418.P13392507711763585000
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234421 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A234418.P13392507711763585000

/-!
# A234419: Number of (n+1)X(6+1) 0..7 arrays with every 2X2 subblock having the absolute values of all six edge and diagonal differences no larger than 1.

The programs for A234419, there is no canonical definition to state claims against.
-/

/-! ## A234419.P3702076024078946475

`A234421(A167499(n+4)+1)`
-/

namespace A234419.P3702076024078946475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234421 (A167499 (n + 4) + 1).toNat

end

end A234419.P3702076024078946475

/-! ## A234419.P17404777065902741519

`A234421(eq[7, A131818(n+1)])`
-/

namespace A234419.P17404777065902741519
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234421 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A234419.P17404777065902741519

/-! ## A234419.P9525075999438793302

`A234421(A374007(n+1))`
-/

namespace A234419.P9525075999438793302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234421 (A374007 (n + 1)).toNat

end

end A234419.P9525075999438793302

/-! ## A234419.P7584854328086515095

`A234421(eq[5, A193592(n)])`
-/

namespace A234419.P7584854328086515095
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234421 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A234419.P7584854328086515095

/-! ## A234419.P18224421022805745952

`A234421(Δ[Δ[A006504(n+1)]])`
-/

namespace A234419.P18224421022805745952
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006504 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234421 (f1 (n + 1) - f1 n).toNat

end

end A234419.P18224421022805745952

/-!
# A234420: 

The programs for A234420, there is no canonical definition to state claims against.
-/

/-! ## A234420.P14102214328635365885

`A234421(eq[6, A193592(n)])`
-/

namespace A234420.P14102214328635365885
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234421 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A234420.P14102214328635365885

/-!
# A234421: T(n,k)=Number of (n+1)X(k+1) 0..7 arrays with every 2X2 subblock having the absolute values of all six edge and diagonal differences no larger than 1.

The programs for A234421, there is no canonical definition to state claims against.
-/

/-! ## A234421.P18116312426561601523

`A234131(n+1)+A060747(A209829(n+1))`
-/

namespace A234421.P18116312426561601523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234131 (n + 1) + A060747 (A209829 (n + 1)).toNat

end

end A234421.P18116312426561601523

/-! ## A234421.P4488679908503744077

`A302032(A234131(n+1)-A234036(n+1))+A234131(n+1)`
-/

namespace A234421.P4488679908503744077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302032 (A234131 (n + 1) - A234036 (n + 1)).toNat + A234131 (n + 1)

end

end A234421.P4488679908503744077

/-! ## A234421.P1360996971660488021

`A234184(n+1)+A004277(A234184(n+1)-A234036(n+1))`
-/

namespace A234421.P1360996971660488021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234184 (n + 1) + A004277 (A234184 (n + 1) - A234036 (n + 1)).toNat

end

end A234421.P1360996971660488021

/-!
# A234422: Number of primes <= 123...n.

The programs for A234422, the canonical program `A234422.P3597506736073895590` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A234422 has offset 1).

The definition of A234422 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A234422.P3597506736073895590

`A000720(A007908(n+1))`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A234422

/-- `A000720(A007908(n+1))` -/
def P3597506736073895590.Spec : Prop :=
  ∀ n, P3597506736073895590.a n = A234422 (n + 1)

theorem P3597506736073895590.correct : P3597506736073895590.Spec := by
  intro n
  simp only [A234422, Nat.add_sub_cancel]

end A234422

/-!
# A234423: a(n) = the smallest multiple of prime(n) such that a(n) == j-1 (mod j) for each integer j with 1 <= j < prime(n).

The programs for A234423, there is no canonical definition to state claims against.
-/

/-! ## A234423.P1209699958699650311

`or(2, A254939(n+1)-1)`
-/

namespace A234423.P1209699958699650311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 (A254939 (n + 1) - 1)

end

end A234423.P1209699958699650311

/-! ## A234423.P8880115661726698979

`A254939(n+1)+A033999(A000225(n))`
-/

namespace A234423.P8880115661726698979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254939 (n + 1) + A033999 (A000225 n).toNat

end

end A234423.P8880115661726698979

/-! ## A234423.P7797572585296232509

`A254939(n+1)+A062157(A320153(n))`
-/

namespace A234423.P7797572585296232509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254939 (n + 1) + A062157 (A320153 n).toNat

end

end A234423.P7797572585296232509

/-! ## A234423.P15127566639454904059

`A254939(n+1)-A033999(A008574(n))`
-/

namespace A234423.P15127566639454904059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254939 (n + 1) - A033999 (A008574 n).toNat

end

end A234423.P15127566639454904059

/-! ## A234423.P18070081273029816883

`A254939(n+1)+A008683(A006005(n+1))`
-/

namespace A234423.P18070081273029816883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254939 (n + 1) + A008683 (A006005 (n + 1)).toNat

end

end A234423.P18070081273029816883

/-!
# A234424: Number of (n+1)X(1+1) 0..7 arrays with every 2X2 subblock having the sum of the absolute values of the edge differences equal to 14 and no adjacent elements equal.

The programs for A234424, there is no canonical definition to state claims against.
-/

/-! ## A234424.P1107045918500223691

`A234428(∑[n]+1)`
-/

namespace A234424.P1107045918500223691
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234428 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A234424.P1107045918500223691

/-! ## A234424.P4861534013568624422

`lcm(2, A234428(A000124(n)))`
-/

namespace A234424.P4861534013568624422
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A234428 (A000124 n).toNat)

end

end A234424.P4861534013568624422

/-! ## A234424.P17529606145382539189

`record[A010054(n)*A234428(n+1)]`
-/

namespace A234424.P17529606145382539189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A234428 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234424.P17529606145382539189

/-! ## A234424.P9929466986340595147

`record[root(A234428(n+1), A034932(n))]`
-/

namespace A234424.P9929466986340595147
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A234428 (n + 1) : ℝ) ^ (1 / (A034932 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234424.P9929466986340595147

/-! ## A234424.P8773628135704580347

`record[gcd(A002262(n), A234428(n+1))]`
-/

namespace A234424.P8773628135704580347
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A234428 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234424.P8773628135704580347

/-!
# A234425: Number of (n+1)X(2+1) 0..7 arrays with every 2X2 subblock having the sum of the absolute values of the edge differences equal to 14 and no adjacent elements equal.

The programs for A234425, there is no canonical definition to state claims against.
-/

/-! ## A234425.P13973755918458264711

`A234428(∑[n+1]+2)`
-/

namespace A234425.P13973755918458264711
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234428 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A234425.P13973755918458264711

/-! ## A234425.P15983473699685167878

`record[gcd(A002262(n), A234428(n+2))]`
-/

namespace A234425.P15983473699685167878
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A234428 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234425.P15983473699685167878

/-! ## A234425.P7416702637071092104

`record[A234428(abs(A201163(n)))]`
-/

namespace A234425.P7416702637071092104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234428 |A201163 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234425.P7416702637071092104

/-! ## A234425.P18321444108725328501

`record[A234428(A198455(n+1))]`
-/

namespace A234425.P18321444108725328501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234428 (A198455 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234425.P18321444108725328501

/-! ## A234425.P10622930660620920302

`lcm(2, A234428(A000096(n+1)))`
-/

namespace A234425.P10622930660620920302
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A234428 (A000096 (n + 1)).toNat)

end

end A234425.P10622930660620920302

/-!
# A234426: Number of (n+1)X(3+1) 0..7 arrays with every 2X2 subblock having the sum of the absolute values of the edge differences equal to 14 and no adjacent elements equal.

The programs for A234426, there is no canonical definition to state claims against.
-/

/-! ## A234426.P6143785540618474047

`A234428(∑[n+1]+5+n)`
-/

namespace A234426.P6143785540618474047
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234428 (∑ j ∈ Finset.range (n + 1), f1 j + 5 + n)

end

end A234426.P6143785540618474047

/-! ## A234426.P15773315349509321675

`record[A010054(n+1)*A234428(n+4)]`
-/

namespace A234426.P15773315349509321675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (n + 1) * A234428 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234426.P15773315349509321675

/-! ## A234426.P7342105536058262896

`A234428(A167614(n+1))+A025469(n)`
-/

namespace A234426.P7342105536058262896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234428 (A167614 (n + 1)).toNat + A025469 n

end

end A234426.P7342105536058262896

/-!
# A234427: Number of (n+1)X(4+1) 0..7 arrays with every 2X2 subblock having the sum of the absolute values of the edge differences equal to 14 and no adjacent elements equal.

The programs for A234427, there is no canonical definition to state claims against.
-/

/-! ## A234427.P5938618411343669572

`A234428(∑[n+3]+7)`
-/

namespace A234427.P5938618411343669572
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234428 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A234427.P5938618411343669572

/-!
# A234429: Numbers which are the digital sum of the square of some prime.

The programs for A234429, the canonical program `A234429.P1618448529803820431` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A234429 has offset 1).

The definition of A234429 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A234429.P1618448529803820431

`a(n-1)+3` with `a(0)=4, a(1)=7, a(2)=9, a(3)=10`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A234429

/-- `a(n-1)+3` -/
def P1618448529803820431.Spec : Prop :=
  ∀ n, (P1618448529803820431.a n : ℤ) = A234429 (n + 1)

theorem P1618448529803820431.correct : P1618448529803820431.Spec := by
  intro n
  simp only [A234429, Nat.add_sub_cancel]

end A234429

/-!
# A234431: Numbers that are the sum of 2 successive evil numbers (A001969).

The programs for A234431, the canonical program `A234431.P6979625768694921759` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A234431 has offset 1).

The definition of A234431 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A234431.P6979625768694921759

`A001969(n+1)+A001969(n+2)`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A234431

/-- `A001969(n+1)+A001969(n+2)` -/
def P6979625768694921759.Spec : Prop :=
  ∀ n, P6979625768694921759.a n = A234431 (n + 1)

theorem P6979625768694921759.correct : P6979625768694921759.Spec := by
  intro n
  simp only [A234431, Nat.add_sub_cancel]

end A234431

/-! ## A234431.P17645808594432208750

`lt[1, -(2*a(and(n, n-1)))]+A341916(n)%2+2*n` with `a(0)=1`
-/

namespace A234431.P17645808594432208750
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  -(2 * f2 (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n : ℤ) + (Int.tmod (A341916 n) 2 + (2 * n : ℤ))

end

end A234431.P17645808594432208750

namespace A234431

/-- `lt[1, -(2*a(and(n, n-1)))]+A341916(n)%2+2*n` -/
def P17645808594432208750.Spec : Prop :=
  ∀ n, P17645808594432208750.a n = A234431 (n + 1)

end A234431

/-! ## A234431.P13719728389755994362

`A017137(n)-A234011(n+1)`
-/

namespace A234431.P13719728389755994362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017137 n - A234011 (n + 1)

end

end A234431.P13719728389755994362

namespace A234431

/-- `A017137(n)-A234011(n+1)` -/
def P13719728389755994362.Spec : Prop :=
  ∀ n, P13719728389755994362.a n = A234431 (n + 1)

end A234431

/-! ## A234431.P1336176474085108597

`A092246(n+1)+A036577(n+1)`
-/

namespace A234431.P1336176474085108597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092246 (n + 1) + A036577 (n + 1)

end

end A234431.P1336176474085108597

namespace A234431

/-- `A092246(n+1)+A036577(n+1)` -/
def P1336176474085108597.Spec : Prop :=
  ∀ n, P1336176474085108597.a n = A234431 (n + 1)

theorem P1336176474085108597.correct : P1336176474085108597.Spec := by
  intro n
  simp only [A234431, Nat.add_sub_cancel, A234431.P1336176474085108597.a, A234431.P6979625768694921759.a, A001969, A001969.P9139304774861292784.a, A036577, A036577.P861720372246105226.a, A092246, A092246.P10064573919626078015.a, A010060, A010060.P3080921269106500717.a, A029883, A029883.P16402799982168113119.a, A000035, A000035.P2023072528413494694.a, A000120, A000120.P2816527436160941581.a, A007413, A007413.P5220170299432131247.a, A005187, A005187.P3874015513960485494.a, A036585, A036585.P17220132576541787484.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A234431

/-! ## A234431.P2264256800451757166

`A125592(n+1)+A036585(n+1)`
-/

namespace A234431.P2264256800451757166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125592 (n + 1) + A036585 (n + 1)

end

end A234431.P2264256800451757166

namespace A234431

/-- `A125592(n+1)+A036585(n+1)` -/
def P2264256800451757166.Spec : Prop :=
  ∀ n, P2264256800451757166.a n = A234431 (n + 1)

end A234431

/-! ## A234431.P2391253853213794728

`A029883(n+1)+2*A026147(n+1)`
-/

namespace A234431.P2391253853213794728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029883 (n + 1) + 2 * A026147 (n + 1)

end

end A234431.P2391253853213794728

namespace A234431

/-- `A029883(n+1)+2*A026147(n+1)` -/
def P2391253853213794728.Spec : Prop :=
  ∀ n, P2391253853213794728.a n = A234431 (n + 1)

theorem P2391253853213794728.correct : P2391253853213794728.Spec := by
  intro n
  simp only [A234431, Nat.add_sub_cancel, A234431.P2391253853213794728.a, A234431.P6979625768694921759.a, A001969, A001969.P9139304774861292784.a, A026147, A026147.P16575442085374687038.a, A029883, A029883.P16402799982168113119.a, A007413, A007413.P5220170299432131247.a, A010060, A010060.P3080921269106500717.a, A000035, A000035.P2023072528413494694.a, A000120, A000120.P2816527436160941581.a, A036585, A036585.P17220132576541787484.a, A005187, A005187.P3874015513960485494.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A234431

/-! ## A234431.P6849363936218297113

`2*A140592(n+1)-A007413(n+1)`
-/

namespace A234431.P6849363936218297113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A140592 (n + 1) - A007413 (n + 1)

end

end A234431.P6849363936218297113

namespace A234431

/-- `2*A140592(n+1)-A007413(n+1)` -/
def P6849363936218297113.Spec : Prop :=
  ∀ n, P6849363936218297113.a n = A234431 (n + 1)

theorem P6849363936218297113.correct : P6849363936218297113.Spec := by
  intro n
  simp only [A234431, Nat.add_sub_cancel, A234431.P6849363936218297113.a, A234431.P6979625768694921759.a, A001969, A001969.P9139304774861292784.a, A007413, A007413.P5220170299432131247.a, A140592, A140592.P9802847602468291615.a, A010060, A010060.P3080921269106500717.a, A036585, A036585.P17220132576541787484.a, A000035, A000035.P2023072528413494694.a, A000120, A000120.P2816527436160941581.a, A005187, A005187.P3874015513960485494.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A234431

/-! ## A234431.P11536561948662299484

`A001285(n)+4*n+A001285(n+1)`
-/

namespace A234431.P11536561948662299484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001285 n + ((4 * n : ℤ) + A001285 (n + 1))

end

end A234431.P11536561948662299484

namespace A234431

/-- `A001285(n)+4*n+A001285(n+1)` -/
def P11536561948662299484.Spec : Prop :=
  ∀ n, P11536561948662299484.a n = A234431 (n + 1)

theorem P11536561948662299484.correct : P11536561948662299484.Spec := by
  intro n
  simp only [A234431, Nat.add_sub_cancel, A234431.P11536561948662299484.a, A234431.P6979625768694921759.a, A001285, A001285.P11616636227895161122.a, A001969, A001969.P9139304774861292784.a, A010060, A010060.P3080921269106500717.a, A000035, A000035.P2023072528413494694.a, A000120, A000120.P2816527436160941581.a, A005187, A005187.P3874015513960485494.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A234431

/-! ## A234431.P11271865344914648977

`4*(n+1)-(A010059(n)+A010059(n+1))`
-/

namespace A234431.P11271865344914648977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * (n + 1) : ℤ) - (A010059 n + A010059 (n + 1))

end

end A234431.P11271865344914648977

namespace A234431

/-- `4*(n+1)-(A010059(n)+A010059(n+1))` -/
def P11271865344914648977.Spec : Prop :=
  ∀ n, P11271865344914648977.a n = A234431 (n + 1)

theorem P11271865344914648977.correct : P11271865344914648977.Spec := by
  intro n
  simp only [A234431, Nat.add_sub_cancel, A234431.P11271865344914648977.a, A234431.P6979625768694921759.a, A001969, A001969.P9139304774861292784.a, A010059, A010059.P6338678923093357896.a, A010060, A010060.P3080921269106500717.a, A000035, A000035.P2023072528413494694.a, A000120, A000120.P2816527436160941581.a, A005187, A005187.P3874015513960485494.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A234431

/-! ## A234431.P2022554704828357472

`4*n+2+A010060(n)+A010060(n+1)`
-/

namespace A234431.P2022554704828357472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * n + 2 : ℤ) + (A010060 n + A010060 (n + 1))

end

end A234431.P2022554704828357472

namespace A234431

/-- `4*n+2+A010060(n)+A010060(n+1)` -/
def P2022554704828357472.Spec : Prop :=
  ∀ n, P2022554704828357472.a n = A234431 (n + 1)

theorem P2022554704828357472.correct : P2022554704828357472.Spec := by
  intro n
  simp only [A234431, Nat.add_sub_cancel, A234431.P2022554704828357472.a, A234431.P6979625768694921759.a, A001969, A001969.P9139304774861292784.a, A010060, A010060.P3080921269106500717.a, A000035, A000035.P2023072528413494694.a, A000120, A000120.P2816527436160941581.a, A005187, A005187.P3874015513960485494.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A234431

/-! ## A234431.P15434930378627130504

`A010060(n+1)+A092246(n+1)+A010059(n)`
-/

namespace A234431.P15434930378627130504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (n + 1) + (A092246 (n + 1) + A010059 n)

end

end A234431.P15434930378627130504

namespace A234431

/-- `A010060(n+1)+A092246(n+1)+A010059(n)` -/
def P15434930378627130504.Spec : Prop :=
  ∀ n, P15434930378627130504.a n = A234431 (n + 1)

theorem P15434930378627130504.correct : P15434930378627130504.Spec := by
  intro n
  simp only [A234431, Nat.add_sub_cancel, A234431.P15434930378627130504.a, A234431.P6979625768694921759.a, A001969, A001969.P9139304774861292784.a, A010059, A010059.P6338678923093357896.a, A010060, A010060.P3080921269106500717.a, A092246, A092246.P10064573919626078015.a, A000035, A000035.P2023072528413494694.a, A000120, A000120.P2816527436160941581.a, A005187, A005187.P3874015513960485494.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A234431

/-! ## A234431.P13763350515795054656

`A125592(n+1)+A026147(n+2)-A026147(n+1)`
-/

namespace A234431.P13763350515795054656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125592 (n + 1) + (A026147 (n + 2) - A026147 (n + 1))

end

end A234431.P13763350515795054656

namespace A234431

/-- `A125592(n+1)+A026147(n+2)-A026147(n+1)` -/
def P13763350515795054656.Spec : Prop :=
  ∀ n, P13763350515795054656.a n = A234431 (n + 1)

end A234431

/-! ## A234431.P11635626847474105495

`A048724(A006068(n))+A001969(n+2)`
-/

namespace A234431.P11635626847474105495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048724 (A006068 n).toNat + A001969 (n + 2)

end

end A234431.P11635626847474105495

namespace A234431

/-- `A048724(A006068(n))+A001969(n+2)` -/
def P11635626847474105495.Spec : Prop :=
  ∀ n, P11635626847474105495.a n = A234431 (n + 1)

end A234431

/-! ## A234431.P16741116864900068071

`A038556(A038558(n))+A001969(n+2)`
-/

namespace A234431.P16741116864900068071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038556 (A038558 n).toNat + A001969 (n + 2)

end

end A234431.P16741116864900068071

namespace A234431

/-- `A038556(A038558(n))+A001969(n+2)` -/
def P16741116864900068071.Spec : Prop :=
  ∀ n, P16741116864900068071.a n = A234431 (n + 1)

end A234431

/-! ## A234431.P8742907944504680269

`A005681(n+1)+A000069(2*n+1)`
-/

namespace A234431.P8742907944504680269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005681 (n + 1) + A000069 (2 * n + 1)

end

end A234431.P8742907944504680269

namespace A234431

/-- `A005681(n+1)+A000069(2*n+1)` -/
def P8742907944504680269.Spec : Prop :=
  ∀ n, P8742907944504680269.a n = A234431 (n + 1)

end A234431

/-! ## A234431.P502013195040141744

`A029883(2*(n+1))+4*n+3`
-/

namespace A234431.P502013195040141744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029883 (2 * (n + 1)) + (4 * n + 3 : ℤ)

end

end A234431.P502013195040141744

namespace A234431

/-- `A029883(2*(n+1))+4*n+3` -/
def P502013195040141744.Spec : Prop :=
  ∀ n, P502013195040141744.a n = A234431 (n + 1)

end A234431

/-! ## A234431.P16645660376230861365

`A036577(2*(n+1))+2*(2*n+1)`
-/

namespace A234431.P16645660376230861365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036577 (2 * (n + 1)) + (2 * (2 * n + 1) : ℤ)

end

end A234431.P16645660376230861365

namespace A234431

/-- `A036577(2*(n+1))+2*(2*n+1)` -/
def P16645660376230861365.Spec : Prop :=
  ∀ n, P16645660376230861365.a n = A234431 (n + 1)

end A234431

/-! ## A234431.P8463989361124452608

`A010060(n+1)+A000069(2*(n+1))`
-/

namespace A234431.P8463989361124452608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (n + 1) + A000069 (2 * (n + 1))

end

end A234431.P8463989361124452608

namespace A234431

/-- `A010060(n+1)+A000069(2*(n+1))` -/
def P8463989361124452608.Spec : Prop :=
  ∀ n, P8463989361124452608.a n = A234431 (n + 1)

end A234431

/-! ## A234431.P3589108254114784066

`A140592(2*n+1)+A010060(n+1)`
-/

namespace A234431.P3589108254114784066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140592 (2 * n + 1) + A010060 (n + 1)

end

end A234431.P3589108254114784066

namespace A234431

/-- `A140592(2*n+1)+A010060(n+1)` -/
def P3589108254114784066.Spec : Prop :=
  ∀ n, P3589108254114784066.a n = A234431 (n + 1)

end A234431

/-! ## A234431.P14175821739204372358

`A181155(2*(n+1))-A010059(n+1)`
-/

namespace A234431.P14175821739204372358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181155 (2 * (n + 1)) - A010059 (n + 1)

end

end A234431.P14175821739204372358

namespace A234431

/-- `A181155(2*(n+1))-A010059(n+1)` -/
def P14175821739204372358.Spec : Prop :=
  ∀ n, P14175821739204372358.a n = A234431 (n + 1)

end A234431

/-!
# A234435: Number of (n+1) X (n+1) 0..2 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 1 (constant-stress 1 X 1 tilings).

The programs for A234435, there is no canonical definition to state claims against.
-/

/-! ## A234435.P12638345570910653391

`A234443(∑[4*n]+1)`
-/

namespace A234435.P12638345570910653391
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234443 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A234435.P12638345570910653391

/-! ## A234435.P7151724920376044312

`lcm(2, A234443(A001844(n)))`
-/

namespace A234435.P7151724920376044312
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A234443 (A001844 n).toNat)

end

end A234435.P7151724920376044312

/-! ## A234435.P17568346457602330114

`record[A003982(n)*A234443(n+1)]`
-/

namespace A234435.P17568346457602330114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A234443 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234435.P17568346457602330114

/-! ## A234435.P6279358864194160069

`record[gcd(A037012(n), A234443(n+1))]`
-/

namespace A234435.P6279358864194160069
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A037012 n) (A234443 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234435.P6279358864194160069

/-! ## A234435.P3381688062859185212

`A213217(n)*A234443(A001844(n))`
-/

namespace A234435.P3381688062859185212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213217 n * A234443 (A001844 n).toNat

end

end A234435.P3381688062859185212

/-!
# A234436: Number of (n+1) X (1+1) 0..2 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 1 (constant-stress 1 X 1 tilings).

The programs for A234436, the canonical program `A234436.P8512712558864129574` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A234436 has offset 1).

The definition of A234436 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 172 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A234436.P8512712558864129574

`14*a(n-2)` with `a(0)=32, a(1)=120`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A234436

/-- `14*a(n-2)` -/
def P8512712558864129574.Spec : Prop :=
  ∀ n, (P8512712558864129574.a n : ℤ) = A234436 (n + 1)

theorem P8512712558864129574.correct : P8512712558864129574.Spec := by
  intro n
  simp only [A234436, Nat.add_sub_cancel]

end A234436

/-! ## A234436.P16220662882538431978

`A237368(2*(n+1))/sqrt(A237368(2*n+1))`
-/

namespace A234436.P16220662882538431978
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A237368 (2 * (n + 1)) : ℝ) / Real.sqrt (A237368 (2 * n + 1) : ℝ)

end

end A234436.P16220662882538431978

namespace A234436

/-- `A237368(2*(n+1))/sqrt(A237368(2*n+1))` -/
def P16220662882538431978.Spec : Prop :=
  ∀ n, P16220662882538431978.a n = (A234436 (n + 1) : ℝ)

end A234436

/-! ## A234436.P17635036290148708415

`sqrt(A237368(2*n+3))`
-/

namespace A234436.P17635036290148708415
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A237368 (2 * n + 3) : ℝ)

end

end A234436.P17635036290148708415

namespace A234436

/-- `sqrt(A237368(2*n+3))` -/
def P17635036290148708415.Spec : Prop :=
  ∀ n, P17635036290148708415.a n = (A234436 (n + 1) : ℝ)

end A234436

/-! ## A234436.P13613866121904660014

`A234443(∑[n]+1)`
-/

namespace A234436.P13613866121904660014
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234443 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A234436.P13613866121904660014

namespace A234436

/-- `A234443(∑[n]+1)` -/
def P13613866121904660014.Spec : Prop :=
  ∀ n, P13613866121904660014.a n = A234436 (n + 1)

end A234436

/-! ## A234436.P14681296908893450111

`lcm(2, A234443(A000124(n)))`
-/

namespace A234436.P14681296908893450111
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A234443 (A000124 n).toNat)

end

end A234436.P14681296908893450111

namespace A234436

/-- `lcm(2, A234443(A000124(n)))` -/
def P14681296908893450111.Spec : Prop :=
  ∀ n, (P14681296908893450111.a n : ℤ) = A234436 (n + 1)

end A234436

/-!
# A234437: Number of (n+1) X (2+1) 0..2 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 1 (constant-stress 1 X 1 tilings).

The programs for A234437, there is no canonical definition to state claims against.
-/

/-! ## A234437.P3457220752695032832

`A234443(∑[n+1]+2)`
-/

namespace A234437.P3457220752695032832
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234443 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A234437.P3457220752695032832

/-! ## A234437.P11718890460259173861

`record[A234443(A133263(abs(1-n)))]`
-/

namespace A234437.P11718890460259173861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234443 (A133263 |1 - (n : ℤ)|.toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234437.P11718890460259173861

/-! ## A234437.P15084226781030746128

`record[A234443(abs(A201163(n)))]`
-/

namespace A234437.P15084226781030746128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234443 |A201163 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234437.P15084226781030746128

/-! ## A234437.P18427309001357527871

`record[A234443(Δ[A003453(n+5)])]`
-/

namespace A234437.P18427309001357527871
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003453 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234443 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234437.P18427309001357527871

/-! ## A234437.P3804580182237176947

`record[A234443(A000096(val(n+1, 2)+1))]`
-/

namespace A234437.P3804580182237176947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234443 (A000096 (SequenceMachineLib.valuation (n + 1) 2 + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234437.P3804580182237176947

/-!
# A234438: Number of (n+1) X (3+1) 0..2 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 1 (constant-stress 1 X 1 tilings).

The programs for A234438, there is no canonical definition to state claims against.
-/

/-! ## A234438.P5791760480165401706

`A234443(∑[n+2]+4)`
-/

namespace A234438.P5791760480165401706
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234443 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A234438.P5791760480165401706

/-! ## A234438.P11004929007767422068

`lcm(2, A234443(A167614(n+1)))`
-/

namespace A234438.P11004929007767422068
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A234443 (A167614 (n + 1)).toNat)

end

end A234438.P11004929007767422068

/-! ## A234438.P7969951684455743306

`A324179(n+1)+A234443(A167614(n+1))`
-/

namespace A234438.P7969951684455743306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324179 (n + 1) + A234443 (A167614 (n + 1)).toNat

end

end A234438.P7969951684455743306

/-! ## A234438.P5511944021399545530

`A234443(A167614(n+1))*A353801(n+1)`
-/

namespace A234438.P5511944021399545530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234443 (A167614 (n + 1)).toNat * A353801 (n + 1)

end

end A234438.P5511944021399545530

/-! ## A234438.P5680134520774340378

`A234443(A167614(n+1))%A250992(n+1)`
-/

namespace A234438.P5680134520774340378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A234443 (A167614 (n + 1)).toNat) (A250992 (n + 1))

end

end A234438.P5680134520774340378

/-!
# A234439: Number of (n+1) X (4+1) 0..2 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 1 (constant-stress 1 X 1 tilings).

The programs for A234439, there is no canonical definition to state claims against.
-/

/-! ## A234439.P3396704997564930926

`A234443(∑[n+3]+7)`
-/

namespace A234439.P3396704997564930926
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234443 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A234439.P3396704997564930926

/-! ## A234439.P16541688712982206661

`A234443(A055998(n+2))+A154271(3*n+4)`
-/

namespace A234439.P16541688712982206661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234443 (A055998 (n + 2)).toNat + A154271 (3 * n + 4)

end

end A234439.P16541688712982206661

/-!
# A234440: Number of (n+1) X (5+1) 0..2 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 1 (constant-stress 1 X 1 tilings).

The programs for A234440, there is no canonical definition to state claims against.
-/

/-! ## A234440.P1574606990668562958

`A234443(A374005(n+1))`
-/

namespace A234440.P1574606990668562958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234443 (A374005 (n + 1)).toNat

end

end A234440.P1574606990668562958

/-! ## A234440.P12611824403633934741

`A234443(A167614(n+3)+2)`
-/

namespace A234440.P12611824403633934741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234443 (A167614 (n + 3) + 2).toNat

end

end A234440.P12611824403633934741

/-! ## A234440.P5108441520888521789

`A234443(A141214(n+1)+8)`
-/

namespace A234440.P5108441520888521789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234443 (A141214 (n + 1) + 8).toNat

end

end A234440.P5108441520888521789

/-! ## A234440.P8099832291256106032

`A234443(Δ[A264443(n)])`
-/

namespace A234440.P8099832291256106032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234443 (f1 (n + 1) - f1 n).toNat

end

end A234440.P8099832291256106032

/-! ## A234440.P17580827743123022017

`A234443(A046691(n+3))`
-/

namespace A234440.P17580827743123022017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234443 (A046691 (n + 3)).toNat

end

end A234440.P17580827743123022017

/-!
# A234441: Number of (n+1) X (6+1) 0..2 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 1 (constant-stress 1 X 1 tilings).

The programs for A234441, there is no canonical definition to state claims against.
-/

/-! ## A234441.P12312587069508140710

`A234443(A374007(n+1))`
-/

namespace A234441.P12312587069508140710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234443 (A374007 (n + 1)).toNat

end

end A234441.P12312587069508140710

/-! ## A234441.P13269130169650098126

`A234443(A141214(n+2)+9)`
-/

namespace A234441.P13269130169650098126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234443 (A141214 (n + 2) + 9).toNat

end

end A234441.P13269130169650098126

/-! ## A234441.P14312158494736066171

`A234443(eq[7, A131818(n+1)])`
-/

namespace A234441.P14312158494736066171
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234443 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A234441.P14312158494736066171

/-! ## A234441.P11480504982210020565

`A234443(A052905(n+3))`
-/

namespace A234441.P11480504982210020565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234443 (A052905 (n + 3)).toNat

end

end A234441.P11480504982210020565

/-! ## A234441.P13130611272382741059

`A234443(eq[3, A219347(n)])`
-/

namespace A234441.P13130611272382741059
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234443 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A234441.P13130611272382741059

/-!
# A234442: Number of (n+1) X (7+1) 0..2 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 1 (constant-stress 1 X 1 tilings).

The programs for A234442, there is no canonical definition to state claims against.
-/

/-! ## A234442.P17296766969507035972

`A234443(A374008(n+1))`
-/

namespace A234442.P17296766969507035972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234443 (A374008 (n + 1)).toNat

end

end A234442.P17296766969507035972

/-! ## A234442.P13265824234453103323

`A234443(eq[8, A131818(n+1)])`
-/

namespace A234442.P13265824234453103323
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234443 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A234442.P13265824234453103323

/-! ## A234442.P7580468227314693869

`A234443(eq[4, A219347(n)])`
-/

namespace A234442.P7580468227314693869
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234443 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A234442.P7580468227314693869

/-! ## A234442.P10526756588337888697

`A234443(eq[6, A193592(n)])`
-/

namespace A234442.P10526756588337888697
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234443 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A234442.P10526756588337888697

/-! ## A234442.P16777163278010613139

`A234443(eq[7, A200370(n+1)])`
-/

namespace A234442.P16777163278010613139
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234443 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A234442.P16777163278010613139

/-!
# A234444: Number of (n+1) X (1+1) 0..4 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 1 (constant-stress 1 X 1 tilings).

The programs for A234444, there is no canonical definition to state claims against.
-/

/-! ## A234444.P13027644940372564742

`A234450(∑[n]+1)`
-/

namespace A234444.P13027644940372564742
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234450 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A234444.P13027644940372564742

/-! ## A234444.P16915330063885008679

`record[A234450(n+1)/A176080(n)]`
-/

namespace A234444.P16915330063885008679
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A234450 (n + 1) : ℚ) / (A176080 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234444.P16915330063885008679

/-! ## A234444.P10213671228996847957

`record[gcd(A002262(n), A234450(n+1))]`
-/

namespace A234444.P10213671228996847957
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A234450 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234444.P10213671228996847957

/-! ## A234444.P14927630681216546942

`record[root(A234450(n+1), A143327(n+1))]`
-/

namespace A234444.P14927630681216546942
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A234450 (n + 1) : ℝ) ^ (1 / (A143327 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234444.P14927630681216546942

/-! ## A234444.P12215599930528276991

`record[A234450(n+1)/A199704(n+1)²]`
-/

namespace A234444.P12215599930528276991
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A234450 (n + 1) : ℚ) / (A199704 (n + 1) ^ 2 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234444.P12215599930528276991

/-!
# A234445: Number of (n+1) X (2+1) 0..4 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 1 (constant-stress 1 X 1 tilings).

The programs for A234445, there is no canonical definition to state claims against.
-/

/-! ## A234445.P9730519627865610399

`A234450(∑[n+1]+2)`
-/

namespace A234445.P9730519627865610399
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234450 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A234445.P9730519627865610399

/-! ## A234445.P13696899563648653671

`record[gcd(A002262(n), A234450(n+2))]`
-/

namespace A234445.P13696899563648653671
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A234450 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234445.P13696899563648653671

/-! ## A234445.P13587527703022641882

`record[A234450(A133263(∑[(-1)^(n%3)]))]`
-/

namespace A234445.P13587527703022641882
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ (n % 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234450 (A133263 (∑ j ∈ Finset.range (n + 1), f2 j).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234445.P13587527703022641882

/-! ## A234445.P14196759168984423731

`record[A234450(abs(A201163(n)))]`
-/

namespace A234445.P14196759168984423731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234450 |A201163 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234445.P14196759168984423731

/-! ## A234445.P3282545005740527342

`record[root(A234450(n+2), A033185(n+2))]`
-/

namespace A234445.P3282545005740527342
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A234450 (n + 2) : ℝ) ^ (1 / (A033185 (n + 2) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234445.P3282545005740527342

/-!
# A234446: Number of (n+1) X (3+1) 0..4 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 1 (constant-stress 1 X 1 tilings).

The programs for A234446, there is no canonical definition to state claims against.
-/

/-! ## A234446.P10138702913550302046

`A234450(∑[n+2]+4)`
-/

namespace A234446.P10138702913550302046
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234450 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A234446.P10138702913550302046

/-! ## A234446.P3362375373845673541

`lcm(2, A234450(A167614(n+1)))`
-/

namespace A234446.P3362375373845673541
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A234450 (A167614 (n + 1)).toNat)

end

end A234446.P3362375373845673541

/-! ## A234446.P2309988684736789448

`A234450(A167614(n+1))+A065744(n)`
-/

namespace A234446.P2309988684736789448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234450 (A167614 (n + 1)).toNat + A065744 n

end

end A234446.P2309988684736789448

/-! ## A234446.P4730921570397812450

`A234450(A167614(n+1))+A184955(n)`
-/

namespace A234446.P4730921570397812450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234450 (A167614 (n + 1)).toNat + A184955 n

end

end A234446.P4730921570397812450

/-! ## A234446.P12886419769116405100

`A234450(A167614(n+1))+A034504(n+1)`
-/

namespace A234446.P12886419769116405100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234450 (A167614 (n + 1)).toNat + A034504 (n + 1)

end

end A234446.P12886419769116405100

/-!
# A234447: Number of (n+1) X (4+1) 0..4 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 1 (constant-stress 1 X 1 tilings).

The programs for A234447, there is no canonical definition to state claims against.
-/

/-! ## A234447.P5644601865685754717

`A234450(A052905(n)+9)`
-/

namespace A234447.P5644601865685754717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234450 (A052905 n + 9).toNat

end

end A234447.P5644601865685754717

/-! ## A234447.P7599681101957402155

`A234450(A167614(n+2)+1)`
-/

namespace A234447.P7599681101957402155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234450 (A167614 (n + 2) + 1).toNat

end

end A234447.P7599681101957402155

/-! ## A234447.P3276751970886772385

`A234450(eq[8, A059268(n)]+1)`
-/

namespace A234447.P3276751970886772385
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234450 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A234447.P3276751970886772385

/-! ## A234447.P12251799348458606495

`A234450(Δ[A023545(n+1)-n²])`
-/

namespace A234447.P12251799348458606495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1) - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234450 (f1 (n + 1) - f1 n).toNat

end

end A234447.P12251799348458606495

/-! ## A234447.P8986713425757893640

`A234450(A141214(n+1))`
-/

namespace A234447.P8986713425757893640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234450 (A141214 (n + 1)).toNat

end

end A234447.P8986713425757893640

/-!
# A234448: Number of (n+1) X (5+1) 0..4 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 1 (constant-stress 1 X 1 tilings).

The programs for A234448, there is no canonical definition to state claims against.
-/

/-! ## A234448.P3615149925840619458

`A234450(A155212(n)+13)`
-/

namespace A234448.P3615149925840619458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234450 (A155212 n + 13).toNat

end

end A234448.P3615149925840619458

/-! ## A234448.P9880973247255411534

`A234450(eq[6, A131818(n+1)])`
-/

namespace A234448.P9880973247255411534
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234450 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A234448.P9880973247255411534

/-! ## A234448.P13701003831806064636

`A234450(A374005(n+1))`
-/

namespace A234448.P13701003831806064636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234450 (A374005 (n + 1)).toNat

end

end A234448.P13701003831806064636

/-! ## A234448.P15769114331189271344

`A234450(eq[4, A193592(n)])`
-/

namespace A234448.P15769114331189271344
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234450 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A234448.P15769114331189271344

/-! ## A234448.P17323501017532430400

`A234450(Δ[A023545(n+1)])`
-/

namespace A234448.P17323501017532430400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234450 (f1 (n + 1) - f1 n).toNat

end

end A234448.P17323501017532430400

/-!
# A234449: Number of (n+1) X (6+1) 0..4 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 1 (constant-stress 1 X 1 tilings).

The programs for A234449, there is no canonical definition to state claims against.
-/

/-! ## A234449.P3072047433416962258

`A234450(eq[7, A131818(n+1)])`
-/

namespace A234449.P3072047433416962258
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234450 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A234449.P3072047433416962258

/-! ## A234449.P16101367496041147294

`A234450(A374007(n+1))`
-/

namespace A234449.P16101367496041147294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234450 (A374007 (n + 1)).toNat

end

end A234449.P16101367496041147294

/-! ## A234449.P10950110184482541125

`A234450(A052905(n+3))`
-/

namespace A234449.P10950110184482541125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234450 (A052905 (n + 3)).toNat

end

end A234449.P10950110184482541125

/-! ## A234449.P9149789236062928810

`A234450(Δ[A023545(n+2)]-1)`
-/

namespace A234449.P9149789236062928810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234450 (f1 (n + 1) - f1 n - 1).toNat

end

end A234449.P9149789236062928810

/-!
# A234452: Number of (n+1) X (1+1) 0..5 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 1 (constant-stress 1 X 1 tilings).

The programs for A234452, there is no canonical definition to state claims against.
-/

/-! ## A234452.P13684556854998716460

`A234458(∑[n]+1)`
-/

namespace A234452.P13684556854998716460
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234458 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A234452.P13684556854998716460

/-! ## A234452.P2184552481354671370

`lcm(2, A234458(A000124(n)))`
-/

namespace A234452.P2184552481354671370
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A234458 (A000124 n).toNat)

end

end A234452.P2184552481354671370

/-! ## A234452.P7814026569509294220

`record[A234458(n+1)/A226234(n)]`
-/

namespace A234452.P7814026569509294220
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A234458 (n + 1) : ℚ) / (A226234 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234452.P7814026569509294220

/-! ## A234452.P9839650260503701762

`record[gcd(A002262(n), A234458(n+1))]`
-/

namespace A234452.P9839650260503701762
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A234458 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234452.P9839650260503701762

/-! ## A234452.P7993232463615935575

`record[A234458(n+1)/A081581(n)²]`
-/

namespace A234452.P7993232463615935575
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A234458 (n + 1) : ℚ) / (A081581 n ^ 2 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234452.P7993232463615935575

/-!
# A234453: Number of (n+1) X (2+1) 0..5 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 1 (constant-stress 1 X 1 tilings).

The programs for A234453, there is no canonical definition to state claims against.
-/

/-! ## A234453.P14877470492312476719

`A234458(∑[n+1]+2)`
-/

namespace A234453.P14877470492312476719
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234458 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A234453.P14877470492312476719

/-! ## A234453.P2795785155844659118

`record[A234458(A008795(n)+2)]`
-/

namespace A234453.P2795785155844659118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234458 (A008795 n + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234453.P2795785155844659118

/-! ## A234453.P6813045471623342244

`record[A234458(A286237(n+1)+1)]`
-/

namespace A234453.P6813045471623342244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234458 (A286237 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234453.P6813045471623342244

/-! ## A234453.P17716777814992891038

`record[A234458(A286238(n+1)+1)]`
-/

namespace A234453.P17716777814992891038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234458 (A286238 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234453.P17716777814992891038

/-! ## A234453.P1652067974829639159

`record[gcd(A002262(n), A234458(n+2))]`
-/

namespace A234453.P1652067974829639159
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A234458 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234453.P1652067974829639159

/-!
# A234454: Number of (n+1) X (3+1) 0..5 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 1 (constant-stress 1 X 1 tilings).

The programs for A234454, there is no canonical definition to state claims against.
-/

/-! ## A234454.P6131493960024791668

`A234458(∑[n+2]+4)`
-/

namespace A234454.P6131493960024791668
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234458 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A234454.P6131493960024791668

/-! ## A234454.P3012684834681038745

`record[A234458(A008795(n)+3)]`
-/

namespace A234454.P3012684834681038745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234458 (A008795 n + 3).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234454.P3012684834681038745

/-! ## A234454.P531161077521996709

`lcm(2, A234458(A167614(n+1)))`
-/

namespace A234454.P531161077521996709
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A234458 (A167614 (n + 1)).toNat)

end

end A234454.P531161077521996709

/-! ## A234454.P16373246359273417276

`A234458(A167614(n+1))+A217657(n)`
-/

namespace A234454.P16373246359273417276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234458 (A167614 (n + 1)).toNat + A217657 n

end

end A234454.P16373246359273417276

/-! ## A234454.P13105148354226780893

`A234458(A167614(n+1))*A304042(n)`
-/

namespace A234454.P13105148354226780893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234458 (A167614 (n + 1)).toNat * A304042 n

end

end A234454.P13105148354226780893

/-!
# A234455: Number of (n+1) X (4+1) 0..5 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 1 (constant-stress 1 X 1 tilings).

The programs for A234455, there is no canonical definition to state claims against.
-/

/-! ## A234455.P1201824159566149282

`A234458(A374004(n+1))`
-/

namespace A234455.P1201824159566149282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234458 (A374004 (n + 1)).toNat

end

end A234455.P1201824159566149282

/-! ## A234455.P13531511312017850495

`A234458(A052905(n)+9)`
-/

namespace A234455.P13531511312017850495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234458 (A052905 n + 9).toNat

end

end A234455.P13531511312017850495

/-! ## A234455.P14158427706221771142

`A234458(A055999(n)+10)`
-/

namespace A234455.P14158427706221771142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234458 (A055999 n + 10).toNat

end

end A234455.P14158427706221771142

/-! ## A234455.P13779299874760365202

`A234458(A167614(n+2)+1)`
-/

namespace A234455.P13779299874760365202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234458 (A167614 (n + 2) + 1).toNat

end

end A234455.P13779299874760365202

/-! ## A234455.P1609834494174982062

`A234458(record[A131414(n+1)+9])`
-/

namespace A234455.P1609834494174982062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131414 (n + 1) + 9

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234458 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A234455.P1609834494174982062

/-!
# A234456: Number of (n+1) X (5+1) 0..5 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 1 (constant-stress 1 X 1 tilings).

The programs for A234456, there is no canonical definition to state claims against.
-/

/-! ## A234456.P17846907499654556478

`A234458(A374005(n+1))`
-/

namespace A234456.P17846907499654556478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234458 (A374005 (n + 1)).toNat

end

end A234456.P17846907499654556478

/-! ## A234456.P6607998738599044700

`A234458(A167499(n+3))`
-/

namespace A234456.P6607998738599044700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234458 (A167499 (n + 3)).toNat

end

end A234456.P6607998738599044700

/-! ## A234456.P18356534652822211801

`A234458(A056000(n)+15)`
-/

namespace A234456.P18356534652822211801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234458 (A056000 n + 15).toNat

end

end A234456.P18356534652822211801

/-! ## A234456.P4981061238963573643

`A234458(A167614(n+3)+2)`
-/

namespace A234456.P4981061238963573643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234458 (A167614 (n + 3) + 2).toNat

end

end A234456.P4981061238963573643

/-! ## A234456.P10141570424764299373

`A234458(eq[6, A131818(n+1)])`
-/

namespace A234456.P10141570424764299373
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234458 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A234456.P10141570424764299373

/-!
# A234457: Number of (n+1) X (6+1) 0..5 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 1 (constant-stress 1 X 1 tilings).

The programs for A234457, there is no canonical definition to state claims against.
-/

/-! ## A234457.P11584668836203261522

`A234458(A374007(n+1))`
-/

namespace A234457.P11584668836203261522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234458 (A374007 (n + 1)).toNat

end

end A234457.P11584668836203261522

/-! ## A234457.P246493071959166162

`A234458(Δ[A023545(n+1)]+10)`
-/

namespace A234457.P246493071959166162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234458 (f1 (n + 1) - f1 n + 10).toNat

end

end A234457.P246493071959166162

/-! ## A234457.P12205854600364715046

`A234458(A052905(n+3))`
-/

namespace A234457.P12205854600364715046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234458 (A052905 (n + 3)).toNat

end

end A234457.P12205854600364715046

/-!
# A234461: a(n) = binomial(8*n+2,n)/(4*n+1).

The programs for A234461, the canonical program `A234461.P2777526272986179006` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A234461 has offset 0).

The definition of A234461 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A234461.P2777526272986179006

`C(8*n+2, n)/(4*n+1)`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A234461

/-- `C(8*n+2, n)/(4*n+1)` -/
def P2777526272986179006.Spec : Prop :=
  ∀ n, P2777526272986179006.a n = (A234461 n : ℚ)

end A234461

/-! ## A234461.P1002769954389857081

`A386396(A016993(n))`
-/

namespace A234461.P1002769954389857081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386396 (A016993 n).toNat

end

end A234461.P1002769954389857081

namespace A234461

/-- `A386396(A016993(n))` -/
def P1002769954389857081.Spec : Prop :=
  ∀ n, P1002769954389857081.a n = A234461 n

end A234461

/-!
# A234462: a(n) = 3*binomial(8*n+3,n)/(8*n+3).

The programs for A234462, the canonical program `A234462.P3320381882171532416` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A234462 has offset 0).

The definition of A234462 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A234462.P3320381882171532416

`3*C(8*n+3, n)/(8*n+3)`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A234462

/-- `3*C(8*n+3, n)/(8*n+3)` -/
def P3320381882171532416.Spec : Prop :=
  ∀ n, P3320381882171532416.a n = (A234462 n : ℚ)

end A234462

/-! ## A234462.P2404170712208041707

`A386396(A017005(n))`
-/

namespace A234462.P2404170712208041707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386396 (A017005 n).toNat

end

end A234462.P2404170712208041707

namespace A234462

/-- `A386396(A017005(n))` -/
def P2404170712208041707.Spec : Prop :=
  ∀ n, P2404170712208041707.a n = A234462 n

end A234462

/-!
# A234463: a(n) = binomial(8*n+4,n)/(2*n+1).

The programs for A234463, the canonical program `A234463.P1069547442113230402` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A234463 has offset 0).

The definition of A234463 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A234463.P1069547442113230402

`C(8*n+4, n)/(2*n+1)`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A234463

/-- `C(8*n+4, n)/(2*n+1)` -/
def P1069547442113230402.Spec : Prop :=
  ∀ n, P1069547442113230402.a n = (A234463 n : ℚ)

end A234463

/-! ## A234463.P17399420251822351504

`A386396(A017017(n))`
-/

namespace A234463.P17399420251822351504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386396 (A017017 n).toNat

end

end A234463.P17399420251822351504

namespace A234463

/-- `A386396(A017017(n))` -/
def P17399420251822351504.Spec : Prop :=
  ∀ n, P17399420251822351504.a n = A234463 n

end A234463

/-!
# A234464: a(n) = 5*binomial(8*n+5, n)/(8*n+5).

The programs for A234464, the canonical program `A234464.P17843916058202830921` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A234464 has offset 0).

The definition of A234464 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A234464.P17843916058202830921

`5*C(8*n+5, n)/(8*n+5)`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A234464

/-- `5*C(8*n+5, n)/(8*n+5)` -/
def P17843916058202830921.Spec : Prop :=
  ∀ n, P17843916058202830921.a n = (A234464 n : ℚ)

end A234464

/-! ## A234464.P14665160416161475604

`A386396(A017029(n))`
-/

namespace A234464.P14665160416161475604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386396 (A017029 n).toNat

end

end A234464.P14665160416161475604

namespace A234464

/-- `A386396(A017029(n))` -/
def P14665160416161475604.Spec : Prop :=
  ∀ n, P14665160416161475604.a n = A234464 n

end A234464

/-!
# A234465: a(n) = 3*binomial(8*n+6,n)/(4*n+3).

The programs for A234465, the canonical program `A234465.P17549893966879213526` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A234465 has offset 0).

The definition of A234465 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A234465.P17549893966879213526

`3*C(8*n+6, n)/(4*n+3)`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A234465

/-- `3*C(8*n+6, n)/(4*n+3)` -/
def P17549893966879213526.Spec : Prop :=
  ∀ n, P17549893966879213526.a n = (A234465 n : ℚ)

end A234465

/-! ## A234465.P10838227644419572390

`A386396(A017041(n))`
-/

namespace A234465.P10838227644419572390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386396 (A017041 n).toNat

end

end A234465.P10838227644419572390

namespace A234465

/-- `A386396(A017041(n))` -/
def P10838227644419572390.Spec : Prop :=
  ∀ n, P10838227644419572390.a n = A234465 n

end A234465

/-!
# A234466: a(n) = 7*binomial(8*n+7,n)/(8*n+7).

The programs for A234466, the canonical program `A234466.P5422403043252799257` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A234466 has offset 0).

The definition of A234466 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A234466.P5422403043252799257

`7*C(8*n+7, n)/(8*n+7)`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A234466

/-- `7*C(8*n+7, n)/(8*n+7)` -/
def P5422403043252799257.Spec : Prop :=
  ∀ n, P5422403043252799257.a n = (A234466 n : ℚ)

end A234466

/-! ## A234466.P10668797955076312733

`A386396(A017053(n))`
-/

namespace A234466.P10668797955076312733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386396 (A017053 n).toNat

end

end A234466.P10668797955076312733

namespace A234466

/-- `A386396(A017053(n))` -/
def P10668797955076312733.Spec : Prop :=
  ∀ n, P10668797955076312733.a n = A234466 n

end A234466

/-! ## A234466.P13281364258144367282

`C(8*n+6, n)/(n+1)`
-/

namespace A234466.P13281364258144367282
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (8 * n + 6) n : ℚ) / (n + 1 : ℚ)

end

end A234466.P13281364258144367282

namespace A234466

/-- `C(8*n+6, n)/(n+1)` -/
def P13281364258144367282.Spec : Prop :=
  ∀ n, P13281364258144367282.a n = (A234466 n : ℚ)

end A234466

/-! ## A234466.P3539611369900154430

`A047996(A139274(2*(n+1))-(n+1))`
-/

namespace A234466.P3539611369900154430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047996 (A139274 (2 * (n + 1)) - (n + 1 : ℤ)).toNat

end

end A234466.P3539611369900154430

namespace A234466

/-- `A047996(A139274(2*(n+1))-(n+1))` -/
def P3539611369900154430.Spec : Prop :=
  ∀ n, P3539611369900154430.a n = A234466 n

end A234466

/-! ## A234466.P8956668865503362559

`A037306(C(A004741((4*(n+1))²+1), 2)-(n+1))`
-/

namespace A234466.P8956668865503362559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037306 (Nat.choose (A004741 ((4 * (n + 1)) ^ 2 + 1)).toNat 2 - (n + 1))

end

end A234466.P8956668865503362559

namespace A234466

/-- `A037306(C(A004741((4*(n+1))²+1), 2)-(n+1))` -/
def P8956668865503362559.Spec : Prop :=
  ∀ n, P8956668865503362559.a n = A234466 n

end A234466

/-!
# A234467: a(n) = 9*binomial(8*n + 9,n)/(8*n + 9).

The programs for A234467, the canonical program `A234467.P13819058097301829321` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A234467 has offset 0).

The definition of A234467 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A234467.P13819058097301829321

`9*C(8*n+9, n)/(8*n+9)`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A234467

/-- `9*C(8*n+9, n)/(8*n+9)` -/
def P13819058097301829321.Spec : Prop :=
  ∀ n, P13819058097301829321.a n = (A234467 n : ℚ)

end A234467

/-! ## A234467.P10193543327078295023

`A234461(n+1)-A007556(n+1)`
-/

namespace A234467.P10193543327078295023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234461 (n + 1) - A007556 (n + 1)

end

end A234467.P10193543327078295023

namespace A234467

/-- `A234461(n+1)-A007556(n+1)` -/
def P10193543327078295023.Spec : Prop :=
  ∀ n, P10193543327078295023.a n = A234467 n

end A234467

/-! ## A234467.P657903047047411226

`A234462(n+1)-(A230390(n)+A007556(n+1))`
-/

namespace A234467.P657903047047411226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234462 (n + 1) - (A230390 n + A007556 (n + 1))

end

end A234467.P657903047047411226

namespace A234467

/-- `A234462(n+1)-(A230390(n)+A007556(n+1))` -/
def P657903047047411226.Spec : Prop :=
  ∀ n, P657903047047411226.a n = A234467 n

end A234467

/-!
# A234471: Number of sets of 4 distinct collinear points in an n X n permutation array in which leftmost pair has same spacing as rightmost pair.

The programs for A234471, there is no canonical definition to state claims against.
-/

/-! ## A234471.P1822198983532400578

`A070218(n+1)-A123318(A123324(n+1))`
-/

namespace A234471.P1822198983532400578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070218 (n + 1) - A123318 (A123324 (n + 1)).toNat

end

end A234471.P1822198983532400578

/-!
# A234472: Numbers that when raised to the fourth power and written backwards give squares.

The programs for A234472, there is no canonical definition to state claims against.
-/

/-! ## A234472.P8748033779800859758

`floor(A052216(comp[∑[n+2]]+1)/10)`
-/

namespace A234472.P8748033779800859758
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A052216 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1) : ℚ) / 10⌋

end

end A234472.P8748033779800859758

/-! ## A234472.P2942601729455069529

`A007088(lt[a(and(n, n-1))+1, 3])` with `a(0)=0`
-/

namespace A234472.P2942601729455069529
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A234472.P2942601729455069529

/-! ## A234472.P18147415716531110682

`A007088(lt[2*a(and(n, n-1)), 5])` with `a(0)=1`
-/

namespace A234472.P18147415716531110682
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  2 * f1 (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A234472.P18147415716531110682

/-! ## A234472.P2095645035812830788

`A007088(lt[a(floor(n/2))+n%2, 2])` with `a(0)=0, a(1)=0`
-/

namespace A234472.P2095645035812830788
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 0] fun n f1 =>
  f1 ⌊(n : ℚ) / 2⌋.toNat + n % 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A234472.P2095645035812830788

/-! ## A234472.P7840457597776072948

`A007088(lt[A000120(n), 3])`
-/

namespace A234472.P7840457597776072948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A234472.P7840457597776072948

/-!
# A234474: Numbers that are divisible by their digital sum and digital root.

The programs for A234474, the canonical program `A234474.P13636113180550074245` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A234474 has offset 1).

The definition of A234474 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A234474.P9430808423371163531

`record[A360074(A064807(n+1))]`
-/

namespace A234474.P9430808423371163531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360074 (A064807 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234474.P9430808423371163531

namespace A234474

/-- `record[A360074(A064807(n+1))]` -/
def P9430808423371163531.Spec : Prop :=
  ∀ n, P9430808423371163531.a n = A234474 (n + 1)

end A234474

/-! ## A234474.P13636113180550074245

`filter[A064807(n+1), A188641(#)]`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A234474

/-- `filter[A064807(n+1), A188641(#)]` -/
def P13636113180550074245.Spec : Prop :=
  ∀ n, P13636113180550074245.a n = A234474 (n + 1)

theorem P13636113180550074245.correct : P13636113180550074245.Spec := by
  intro n
  simp only [A234474, Nat.add_sub_cancel]

end A234474

/-! ## A234474.P1123343703567599356

`∩[A005349(n+1), A064807(n+1)]`
-/

namespace A234474.P1123343703567599356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005349 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064807 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A234474.P1123343703567599356

namespace A234474

/-- `∩[A005349(n+1), A064807(n+1)]` -/
def P1123343703567599356.Spec : Prop :=
  ∀ n, (P1123343703567599356.a n : ℤ) = A234474 (n + 1)

end A234474

/-! ## A234474.P1801522950886585082

`∩[A064807(n+1), A082516(n)+a(n-1)]` with `a(0)=1`
-/

namespace A234474.P1801522950886585082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064807 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  A082516 n + f2 (n - 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A234474.P1801522950886585082

namespace A234474

/-- `∩[A064807(n+1), A082516(n)+a(n-1)]` -/
def P1801522950886585082.Spec : Prop :=
  ∀ n, (P1801522950886585082.a n : ℤ) = A234474 (n + 1)

end A234474

/-! ## A234474.P12037390284291129419

`∩[A064807(n+1), A113315(n+1)*A325454(n+1)]`
-/

namespace A234474.P12037390284291129419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064807 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113315 (n + 1) * A325454 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A234474.P12037390284291129419

namespace A234474

/-- `∩[A064807(n+1), A113315(n+1)*A325454(n+1)]` -/
def P12037390284291129419.Spec : Prop :=
  ∀ n, (P12037390284291129419.a n : ℤ) = A234474 (n + 1)

end A234474

/-! ## A234474.P12413541866635240916

`A285829(n+1)^A007318(3^val(n+1, 3))`
-/

namespace A234474.P12413541866635240916
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A285829 (n + 1) : ℚ) ^ (A007318 (3 ^ SequenceMachineLib.valuation (n + 1) 3) : ℤ)

end

end A234474.P12413541866635240916

namespace A234474

/-- `A285829(n+1)^A007318(3^val(n+1, 3))` -/
def P12413541866635240916.Spec : Prop :=
  ∀ n, P12413541866635240916.a n = (A234474 (n + 1) : ℚ)

end A234474

/-! ## A234474.P1329015796150514348

`A285829(n+1)+A000038(A036695(n))`
-/

namespace A234474.P1329015796150514348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285829 (n + 1) + A000038 (A036695 n).toNat

end

end A234474.P1329015796150514348

namespace A234474

/-- `A285829(n+1)+A000038(A036695(n))` -/
def P1329015796150514348.Spec : Prop :=
  ∀ n, P1329015796150514348.a n = A234474 (n + 1)

end A234474

/-! ## A234474.P9204490160093910375

`A285829(n+1)+A000038(A049732(n))`
-/

namespace A234474.P9204490160093910375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285829 (n + 1) + A000038 (A049732 n).toNat

end

end A234474.P9204490160093910375

namespace A234474

/-- `A285829(n+1)+A000038(A049732(n))` -/
def P9204490160093910375.Spec : Prop :=
  ∀ n, P9204490160093910375.a n = A234474 (n + 1)

end A234474

/-! ## A234474.P3793806439323780377

`A285829(n+1)+A000038(A049733(n))`
-/

namespace A234474.P3793806439323780377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285829 (n + 1) + A000038 (A049733 n).toNat

end

end A234474.P3793806439323780377

namespace A234474

/-- `A285829(n+1)+A000038(A049733(n))` -/
def P3793806439323780377.Spec : Prop :=
  ∀ n, P3793806439323780377.a n = A234474 (n + 1)

end A234474

/-! ## A234474.P15580994335745927078

`A285829(n+1)%A002189(n)`
-/

namespace A234474.P15580994335745927078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A285829 (n + 1)) (A002189 n)

end

end A234474.P15580994335745927078

namespace A234474

/-- `A285829(n+1)%A002189(n)` -/
def P15580994335745927078.Spec : Prop :=
  ∀ n, P15580994335745927078.a n = A234474 (n + 1)

end A234474

/-!
# A234476: Number of (n+1) X (1+1) 0..7 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 1 (constant-stress 1 X 1 tilings).

The programs for A234476, there is no canonical definition to state claims against.
-/

/-! ## A234476.P12613312065040237852

`A234481(∑[n]+1)`
-/

namespace A234476.P12613312065040237852
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234481 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A234476.P12613312065040237852

/-! ## A234476.P3648129445623956178

`record[A234481(n+1)/A022166(n)]`
-/

namespace A234476.P3648129445623956178
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A234481 (n + 1) : ℚ) / (A022166 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234476.P3648129445623956178

/-! ## A234476.P11857019480981220977

`record[A234481(n+1)/A022167(n)]`
-/

namespace A234476.P11857019480981220977
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A234481 (n + 1) : ℚ) / (A022167 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234476.P11857019480981220977

/-! ## A234476.P17864003205271791713

`record[A234481(n+1)/A110107(n)]`
-/

namespace A234476.P17864003205271791713
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A234481 (n + 1) : ℚ) / (A110107 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234476.P17864003205271791713

/-! ## A234476.P12136606167871020855

`record[A234481(n+1)/A321163(n+1)]`
-/

namespace A234476.P12136606167871020855
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A234481 (n + 1) : ℚ) / (A321163 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234476.P12136606167871020855

/-!
# A234477: Number of (n+1) X (2+1) 0..7 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 1 (constant-stress 1 X 1 tilings).

The programs for A234477, there is no canonical definition to state claims against.
-/

/-! ## A234477.P4751079142299918541

`A234481(∑[n+1]+2)`
-/

namespace A234477.P4751079142299918541
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234481 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A234477.P4751079142299918541

/-! ## A234477.P17171075659832358461

`record[A234481(A133263(∑[(-1)^(n%3)]))]`
-/

namespace A234477.P17171075659832358461
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ (n % 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234481 (A133263 (∑ j ∈ Finset.range (n + 1), f2 j).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234477.P17171075659832358461

/-! ## A234477.P16698818794566859908

`A234481(A000096(n+1))+A171386(3*n+1)`
-/

namespace A234477.P16698818794566859908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234481 (A000096 (n + 1)).toNat + A171386 (3 * n + 1)

end

end A234477.P16698818794566859908

/-!
# A234478: Number of (n+1) X (3+1) 0..7 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 1 (constant-stress 1 X 1 tilings).

The programs for A234478, there is no canonical definition to state claims against.
-/

/-! ## A234478.P9875139972782097483

`A234481(∑[n+2]+4)`
-/

namespace A234478.P9875139972782097483
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234481 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A234478.P9875139972782097483

/-! ## A234478.P15013102090184453031

`lcm(2, A234481(A167614(n+1)))`
-/

namespace A234478.P15013102090184453031
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A234481 (A167614 (n + 1)).toNat)

end

end A234478.P15013102090184453031

/-! ## A234478.P12129354423108920670

`A234481(A167614(n+1))*A250662(n)`
-/

namespace A234478.P12129354423108920670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234481 (A167614 (n + 1)).toNat * A250662 n

end

end A234478.P12129354423108920670

/-! ## A234478.P12521913655710018525

`A297233(n+1)+A234481(A167614(n+1))`
-/

namespace A234478.P12521913655710018525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297233 (n + 1) + A234481 (A167614 (n + 1)).toNat

end

end A234478.P12521913655710018525

/-! ## A234478.P4314302893540725058

`A234481(A167614(n+1))+A072325(n+2)`
-/

namespace A234478.P4314302893540725058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234481 (A167614 (n + 1)).toNat + A072325 (n + 2)

end

end A234478.P4314302893540725058

/-!
# A234479: Number of (n+1) X (4+1) 0..7 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 1 (constant-stress 1 X 1 tilings).

The programs for A234479, there is no canonical definition to state claims against.
-/

/-! ## A234479.P15772317813206942063

`A234481(∑[n+3]+7)`
-/

namespace A234479.P15772317813206942063
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234481 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A234479.P15772317813206942063

/-!
# A234480: Number of (n+1) X (5+1) 0..7 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 1 (constant-stress 1 X 1 tilings).

The programs for A234480, there is no canonical definition to state claims against.
-/

/-! ## A234480.P4346956533812808867

`A234481(A374005(n+1))`
-/

namespace A234480.P4346956533812808867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234481 (A374005 (n + 1)).toNat

end

end A234480.P4346956533812808867

/-! ## A234480.P2049666121173026764

`A234481(Δ[A264443(n)])`
-/

namespace A234480.P2049666121173026764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234481 (f1 (n + 1) - f1 n).toNat

end

end A234480.P2049666121173026764

/-!
# A234482: Number of (n+1) X (n+1) 0..3 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 2 (constant-stress 1 X 1 tilings).

The programs for A234482, there is no canonical definition to state claims against.
-/

/-! ## A234482.P13977749737618236347

`A234490(∑[4*n]+1)`
-/

namespace A234482.P13977749737618236347
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234490 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A234482.P13977749737618236347

/-! ## A234482.P9746989540556490614

`lcm(2, A234490(A001844(n)))`
-/

namespace A234482.P9746989540556490614
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A234490 (A001844 n).toNat)

end

end A234482.P9746989540556490614

/-! ## A234482.P5956405310218598487

`record[A234490(A330613(n+1))]`
-/

namespace A234482.P5956405310218598487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234490 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234482.P5956405310218598487

/-! ## A234482.P8344003317832816249

`record[A234490(A001844(val(n+1, 2)))]`
-/

namespace A234482.P8344003317832816249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234490 (A001844 (SequenceMachineLib.valuation (n + 1) 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234482.P8344003317832816249

/-! ## A234482.P17031232779212840357

`record[A003982(n)*A234490(n+1)]`
-/

namespace A234482.P17031232779212840357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A234490 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234482.P17031232779212840357

/-!
# A234483: Number of (n+1) X (1+1) 0..3 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 2 (constant-stress 1 X 1 tilings).

The programs for A234483, the canonical program `A234483.P15806752830530674786` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A234483 has offset 1).

The definition of A234483 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 164 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A234483.P15806752830530674786

`7*a(n-1)-9*a(n-2)-12*a(n-3)` with `a(0)=62, a(1)=242, a(2)=944`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A234483

/-- `7*a(n-1)-9*a(n-2)-12*a(n-3)` -/
def P15806752830530674786.Spec : Prop :=
  ∀ n, P15806752830530674786.a n = A234483 (n + 1)

theorem P15806752830530674786.correct : P15806752830530674786.Spec := by
  intro n
  simp only [A234483, Nat.add_sub_cancel]

end A234483

/-! ## A234483.P352041019674164530

`A155116(n+3)+A004171(n+2)`
-/

namespace A234483.P352041019674164530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155116 (n + 3) + A004171 (n + 2)

end

end A234483.P352041019674164530

namespace A234483

/-- `A155116(n+3)+A004171(n+2)` -/
def P352041019674164530.Spec : Prop :=
  ∀ n, P352041019674164530.a n = A234483 (n + 1)

end A234483

/-! ## A234483.P13517071402380139919

`A155116(n+3)+A000079(2*n+5)`
-/

namespace A234483.P13517071402380139919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155116 (n + 3) + A000079 (2 * n + 5)

end

end A234483.P13517071402380139919

namespace A234483

/-- `A155116(n+3)+A000079(2*n+5)` -/
def P13517071402380139919.Spec : Prop :=
  ∀ n, P13517071402380139919.a n = A234483 (n + 1)

end A234483

/-! ## A234483.P10646181927427436595

`A155116(n+3)+Δ[A077925(2*(n+2))]`
-/

namespace A234483.P10646181927427436595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077925 (2 * (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155116 (n + 3) + (f1 (n + 1) - f1 n)

end

end A234483.P10646181927427436595

namespace A234483

/-- `A155116(n+3)+Δ[A077925(2*(n+2))]` -/
def P10646181927427436595.Spec : Prop :=
  ∀ n, P10646181927427436595.a n = A234483 (n + 1)

end A234483

/-! ## A234483.P15583215189826741844

`A331595(A000040(2*n+5))+A155116(n+3)`
-/

namespace A234483.P15583215189826741844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331595 (A000040 (2 * n + 5)).toNat + A155116 (n + 3)

end

end A234483.P15583215189826741844

namespace A234483

/-- `A331595(A000040(2*n+5))+A155116(n+3)` -/
def P15583215189826741844.Spec : Prop :=
  ∀ n, P15583215189826741844.a n = A234483 (n + 1)

end A234483

/-!
# A234484: Number of (n+1) X (2+1) 0..3 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 2 (constant-stress 1 X 1 tilings).

The programs for A234484, there is no canonical definition to state claims against.
-/

/-! ## A234484.P15909373115079003914

`A234490(∑[n+1]+2)`
-/

namespace A234484.P15909373115079003914
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234490 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A234484.P15909373115079003914

/-! ## A234484.P1280269963830324257

`lcm(2, A234490(A000096(n)+3))`
-/

namespace A234484.P1280269963830324257
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A234490 (A000096 n + 3).toNat)

end

end A234484.P1280269963830324257

/-! ## A234484.P10528363150439376878

`record[gcd(A053615(2*n), A234490(n+2))]`
-/

namespace A234484.P10528363150439376878
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A053615 (2 * n)) (A234490 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234484.P10528363150439376878

/-! ## A234484.P13840703899695278723

`A007318(C(2, n))*A234490(A000096(n)+3)`
-/

namespace A234484.P13840703899695278723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A234490 (A000096 n + 3).toNat

end

end A234484.P13840703899695278723

/-! ## A234484.P12136262808823795767

`A007318(floor(n/5))*A234490(A000096(n)+3)`
-/

namespace A234484.P12136262808823795767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 ⌊(n : ℚ) / 5⌋.toNat * A234490 (A000096 n + 3).toNat

end

end A234484.P12136262808823795767

/-!
# A234485: Number of (n+1) X (3+1) 0..3 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 2 (constant-stress 1 X 1 tilings).

The programs for A234485, there is no canonical definition to state claims against.
-/

/-! ## A234485.P17579619716808428943

`A234490(∑[n+2]+4)`
-/

namespace A234485.P17579619716808428943
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234490 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A234485.P17579619716808428943

/-! ## A234485.P10177740262371018391

`lcm(2, A234490(A167614(n+1)))`
-/

namespace A234485.P10177740262371018391
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A234490 (A167614 (n + 1)).toNat)

end

end A234485.P10177740262371018391

/-! ## A234485.P6606631113617962270

`lcm(4, A234490(A046691(n)+7))`
-/

namespace A234485.P6606631113617962270
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 4 (A234490 (A046691 n + 7).toNat)

end

end A234485.P6606631113617962270

/-! ## A234485.P14168656870329328613

`A234490(A167614(n+1))+A025466(n)`
-/

namespace A234485.P14168656870329328613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234490 (A167614 (n + 1)).toNat + A025466 n

end

end A234485.P14168656870329328613

/-! ## A234485.P15868334155412196722

`A234490(A167614(n+1))+A025469(n)`
-/

namespace A234485.P15868334155412196722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234490 (A167614 (n + 1)).toNat + A025469 n

end

end A234485.P15868334155412196722

/-!
# A234486: Number of (n+1) X (4+1) 0..3 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 2 (constant-stress 1 X 1 tilings).

The programs for A234486, there is no canonical definition to state claims against.
-/

/-! ## A234486.P18144392678408058665

`A234490(∑[n+5]+5-n-n)`
-/

namespace A234486.P18144392678408058665
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234490 (((∑ j ∈ Finset.range (n + 1), f1 j + 5 : ℕ) : ℤ) - (n : ℤ) - (n : ℤ)).toNat

end

end A234486.P18144392678408058665

/-! ## A234486.P2045091176369665676

`abs(1-A234490(A055998(n+2)))+1`
-/

namespace A234486.P2045091176369665676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A234490 (A055998 (n + 2)).toNat| + 1

end

end A234486.P2045091176369665676

/-! ## A234486.P1956604541108208813

`A234490(A055998(n+2))+A000007(3*n+1)`
-/

namespace A234486.P1956604541108208813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234490 (A055998 (n + 2)).toNat + A000007 (3 * n + 1)

end

end A234486.P1956604541108208813

/-!
# A234487: Number of (n+1) X (5+1) 0..3 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 2 (constant-stress 1 X 1 tilings).

The programs for A234487, there is no canonical definition to state claims against.
-/

/-! ## A234487.P14076872394680947776

`A234490(A374005(n+1))`
-/

namespace A234487.P14076872394680947776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234490 (A374005 (n + 1)).toNat

end

end A234487.P14076872394680947776

/-! ## A234487.P619894775125317952

`A234490(A167499(n+3))`
-/

namespace A234487.P619894775125317952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234490 (A167499 (n + 3)).toNat

end

end A234487.P619894775125317952

/-! ## A234487.P553367470393090876

`A234490(A155212(n)+13)`
-/

namespace A234487.P553367470393090876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234490 (A155212 n + 13).toNat

end

end A234487.P553367470393090876

/-! ## A234487.P4909500105364877239

`A234490(A056000(n)+15)`
-/

namespace A234487.P4909500105364877239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234490 (A056000 n + 15).toNat

end

end A234487.P4909500105364877239

/-! ## A234487.P11401012354933496744

`A234490(eq[7, A066657(n)])`
-/

namespace A234487.P11401012354933496744
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234490 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A234487.P11401012354933496744

/-!
# A234488: Number of (n+1) X (6+1) 0..3 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 2 (constant-stress 1 X 1 tilings).

The programs for A234488, there is no canonical definition to state claims against.
-/

/-! ## A234488.P13222519305548372465

`A234490(A374007(n+1))`
-/

namespace A234488.P13222519305548372465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234490 (A374007 (n + 1)).toNat

end

end A234488.P13222519305548372465

/-! ## A234488.P12809946851472831800

`A234490(A056115(n)+21)`
-/

namespace A234488.P12809946851472831800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234490 (A056115 n + 21).toNat

end

end A234488.P12809946851472831800

/-! ## A234488.P7563411656278708619

`A234490(A167499(n+4)+1)`
-/

namespace A234488.P7563411656278708619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234490 (A167499 (n + 4) + 1).toNat

end

end A234488.P7563411656278708619

/-! ## A234488.P7725638437359650688

`A234490(A167614(n+4)+3)`
-/

namespace A234488.P7725638437359650688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234490 (A167614 (n + 4) + 3).toNat

end

end A234488.P7725638437359650688

/-! ## A234488.P514400000433935943

`A234490(A052905(n+2)+11)`
-/

namespace A234488.P514400000433935943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234490 (A052905 (n + 2) + 11).toNat

end

end A234488.P514400000433935943

/-!
# A234489: Number of (n+1) X (7+1) 0..3 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 2 (constant-stress 1 X 1 tilings).

The programs for A234489, there is no canonical definition to state claims against.
-/

/-! ## A234489.P13994745568557828067

`A234490(∑[n+6]+22)`
-/

namespace A234489.P13994745568557828067
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234490 (∑ j ∈ Finset.range (n + 1), f1 j + 22)

end

end A234489.P13994745568557828067

/-!
# A234491: Number of (n+1) X (1+1) 0..5 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 2 (constant-stress 1 X 1 tilings).

The programs for A234491, there is no canonical definition to state claims against.
-/

/-! ## A234491.P14759418877457879688

`A234497(∑[n]+1)`
-/

namespace A234491.P14759418877457879688
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234497 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A234491.P14759418877457879688

/-! ## A234491.P14244094954743201782

`lcm(2, A234497(A000124(n)))`
-/

namespace A234491.P14244094954743201782
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A234497 (A000124 n).toNat)

end

end A234491.P14244094954743201782

/-! ## A234491.P1714395460165262652

`record[A234497(A286235(n+1))]`
-/

namespace A234491.P1714395460165262652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234497 (A286235 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234491.P1714395460165262652

/-! ## A234491.P14201054994706095580

`record[A010054(n)*A234497(n+1)]`
-/

namespace A234491.P14201054994706095580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A234497 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234491.P14201054994706095580

/-! ## A234491.P4173082196510815037

`record[A234497(n+1)/A103141(n)]`
-/

namespace A234491.P4173082196510815037
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A234497 (n + 1) : ℚ) / (A103141 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234491.P4173082196510815037

/-!
# A234492: Number of (n+1) X (2+1) 0..5 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 2 (constant-stress 1 X 1 tilings).

The programs for A234492, there is no canonical definition to state claims against.
-/

/-! ## A234492.P11939820816296268640

`A234497(∑[n+1]+2)`
-/

namespace A234492.P11939820816296268640
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234497 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A234492.P11939820816296268640

/-! ## A234492.P6231944358922982766

`lcm(2, A234497(A133263(n+1)))`
-/

namespace A234492.P6231944358922982766
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A234497 (A133263 (n + 1)).toNat)

end

end A234492.P6231944358922982766

/-! ## A234492.P3031450238359198220

`record[A234497(A286235(n+1)+1)]`
-/

namespace A234492.P3031450238359198220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234497 (A286235 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234492.P3031450238359198220

/-! ## A234492.P5715471445248898167

`record[A010054(n)*A234497(n+2)]`
-/

namespace A234492.P5715471445248898167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A234497 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234492.P5715471445248898167

/-! ## A234492.P16098413637595090127

`record[gcd(A002262(n), A234497(n+2))]`
-/

namespace A234492.P16098413637595090127
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A234497 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234492.P16098413637595090127

/-!
# A234493: Number of (n+1) X (3+1) 0..5 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 2 (constant-stress 1 X 1 tilings).

The programs for A234493, there is no canonical definition to state claims against.
-/

/-! ## A234493.P4276210525817341403

`A234497(∑[n+2]+4)`
-/

namespace A234493.P4276210525817341403
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234497 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A234493.P4276210525817341403

/-! ## A234493.P13630325572420831355

`lcm(2, A234497(A167614(n+1)))`
-/

namespace A234493.P13630325572420831355
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A234497 (A167614 (n + 1)).toNat)

end

end A234493.P13630325572420831355

/-! ## A234493.P6664285510882545213

`record[gcd(A122283(n), A234497(n+4))]`
-/

namespace A234493.P6664285510882545213
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A122283 n) (A234497 (n + 4))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234493.P6664285510882545213

/-! ## A234493.P2858621026772071361

`A234497(A167614(n+1))+A011745(n)`
-/

namespace A234493.P2858621026772071361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234497 (A167614 (n + 1)).toNat + A011745 n

end

end A234493.P2858621026772071361

/-! ## A234493.P18068321393843209729

`A234497(A167614(n+1))+A025439(n)`
-/

namespace A234493.P18068321393843209729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234497 (A167614 (n + 1)).toNat + A025439 n

end

end A234493.P18068321393843209729

/-!
# A234494: Number of (n+1) X (4+1) 0..5 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 2 (constant-stress 1 X 1 tilings).

The programs for A234494, there is no canonical definition to state claims against.
-/

/-! ## A234494.P1345365376576372607

`A234497(A374004(n+1))`
-/

namespace A234494.P1345365376576372607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234497 (A374004 (n + 1)).toNat

end

end A234494.P1345365376576372607

/-! ## A234494.P6934894188510122113

`A234497(A141214(n)+7)`
-/

namespace A234494.P6934894188510122113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234497 (A141214 n + 7).toNat

end

end A234494.P6934894188510122113

/-! ## A234494.P14133104907604086423

`A234497(A052905(n)+9)`
-/

namespace A234494.P14133104907604086423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234497 (A052905 n + 9).toNat

end

end A234494.P14133104907604086423

/-! ## A234494.P5573568078370290413

`A234497(A055999(n)+10)`
-/

namespace A234494.P5573568078370290413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234497 (A055999 n + 10).toNat

end

end A234494.P5573568078370290413

/-! ## A234494.P11916615691123357877

`A234497(eq[5, A066657(n)])`
-/

namespace A234494.P11916615691123357877
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234497 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A234494.P11916615691123357877

/-!
# A234495: Number of (n+1) X (5+1) 0..5 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 2 (constant-stress 1 X 1 tilings).

The programs for A234495, there is no canonical definition to state claims against.
-/

/-! ## A234495.P184007853684055004

`A234497(A374005(n+1))`
-/

namespace A234495.P184007853684055004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234497 (A374005 (n + 1)).toNat

end

end A234495.P184007853684055004

/-! ## A234495.P1296493341505610365

`A234497(A155212(n)+13)`
-/

namespace A234495.P1296493341505610365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234497 (A155212 n + 13).toNat

end

end A234495.P1296493341505610365

/-! ## A234495.P7888391853098640581

`A234497(A056000(n)+15)`
-/

namespace A234495.P7888391853098640581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234497 (A056000 n + 15).toNat

end

end A234495.P7888391853098640581

/-! ## A234495.P11408391819033300078

`A234497(eq[7, A066657(n)])`
-/

namespace A234495.P11408391819033300078
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234497 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A234495.P11408391819033300078

/-! ## A234495.P17295449312341790494

`A234497(eq[6, A131818(n+1)])`
-/

namespace A234495.P17295449312341790494
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234497 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A234495.P17295449312341790494

/-!
# A234496: Number of (n+1) X (6+1) 0..5 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 2 (constant-stress 1 X 1 tilings).

The programs for A234496, there is no canonical definition to state claims against.
-/

/-! ## A234496.P11287353218829480506

`A234497(A374007(n+1))`
-/

namespace A234496.P11287353218829480506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234497 (A374007 (n + 1)).toNat

end

end A234496.P11287353218829480506

/-! ## A234496.P3398474561808297292

`A234497(A167499(n+4)+1)`
-/

namespace A234496.P3398474561808297292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234497 (A167499 (n + 4) + 1).toNat

end

end A234496.P3398474561808297292

/-! ## A234496.P11973513588857482018

`A234497(A167614(n+4)+3)`
-/

namespace A234496.P11973513588857482018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234497 (A167614 (n + 4) + 3).toNat

end

end A234496.P11973513588857482018

/-! ## A234496.P16983558965373528620

`A234497(eq[7, A131818(n+1)])`
-/

namespace A234496.P16983558965373528620
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234497 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A234496.P16983558965373528620

/-!
# A234498: Products p*q*r*s of distinct primes for which (p*q*r*s - 1)/2 is prime.

The programs for A234498, there is no canonical definition to state claims against.
-/

/-! ## A234498.P12976815737957416794

`2*A234499(n+1)+1`
-/

namespace A234498.P12976815737957416794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A234499 (n + 1) + 1

end

end A234498.P12976815737957416794

/-! ## A234498.P10133011308543371513

`2*p?[floor(A046390(n+1)/2)]+1`
-/

namespace A234498.P10133011308543371513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A046390 (n + 1) : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 1

end

end A234498.P10133011308543371513

/-! ## A234498.P5516678868479604173

`A002659(A234499(n+1))`
-/

namespace A234498.P5516678868479604173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002659 (A234499 (n + 1)).toNat

end

end A234498.P5516678868479604173

/-! ## A234498.P7631836865632099063

`A004273(A234499(n+1)+1)`
-/

namespace A234498.P7631836865632099063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A234499 (n + 1) + 1).toNat

end

end A234498.P7631836865632099063

/-! ## A234498.P17554036974133727111

`A060747(A234499(n+1)+1)`
-/

namespace A234498.P17554036974133727111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060747 (A234499 (n + 1) + 1).toNat

end

end A234498.P17554036974133727111

/-!
# A234499: Primes of the form (p*q*r*s - 1)/2, where p, q, r,s are distinct primes.

The programs for A234499, the canonical program `A234499.P15163541633688242812` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A234499 has offset 1).

The definition of A234499 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A234499.P15163541633688242812

`p?[floor(A046390(n+1)/2)]`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A234499

/-- `p?[floor(A046390(n+1)/2)]` -/
def P15163541633688242812.Spec : Prop :=
  ∀ n, P15163541633688242812.a n = A234499 (n + 1)

theorem P15163541633688242812.correct : P15163541633688242812.Spec := by
  intro n
  simp only [A234499, Nat.add_sub_cancel]

end A234499

/-! ## A234499.P1908963380695082755

`record[A006530(A046390(n+1)-1)]`
-/

namespace A234499.P1908963380695082755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A046390 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234499.P1908963380695082755

namespace A234499

/-- `record[A006530(A046390(n+1)-1)]` -/
def P1908963380695082755.Spec : Prop :=
  ∀ n, P1908963380695082755.a n = A234499 (n + 1)

end A234499

/-! ## A234499.P6405651609512701756

`p?[A122410(A046390(n+1)-1)]`
-/

namespace A234499.P6405651609512701756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122410 (A046390 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A234499.P6405651609512701756

namespace A234499

/-- `p?[A122410(A046390(n+1)-1)]` -/
def P6405651609512701756.Spec : Prop :=
  ∀ n, P6405651609512701756.a n = A234499 (n + 1)

end A234499

/-! ## A234499.P10150260678537658884

`p?[A273943(A046390(n+1)-1)]`
-/

namespace A234499.P10150260678537658884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (A046390 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A234499.P10150260678537658884

namespace A234499

/-- `p?[A273943(A046390(n+1)-1)]` -/
def P10150260678537658884.Spec : Prop :=
  ∀ n, P10150260678537658884.a n = A234499 (n + 1)

end A234499

/-! ## A234499.P13601482890647828973

`p?[A300251(A046390(n+1)-1)]`
-/

namespace A234499.P13601482890647828973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300251 (A046390 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A234499.P13601482890647828973

namespace A234499

/-- `p?[A300251(A046390(n+1)-1)]` -/
def P13601482890647828973.Spec : Prop :=
  ∀ n, P13601482890647828973.a n = A234499 (n + 1)

end A234499

/-! ## A234499.P14935981330770754711

`record[A006530(xor(1, A046390(n+1)))]`
-/

namespace A234499.P14935981330770754711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (Int.xor 1 (A046390 (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234499.P14935981330770754711

namespace A234499

/-- `record[A006530(xor(1, A046390(n+1)))]` -/
def P14935981330770754711.Spec : Prop :=
  ∀ n, P14935981330770754711.a n = A234499 (n + 1)

end A234499

/-! ## A234499.P13325268519691868451

`p?[A122410(xor(1, A046390(n+1)))]`
-/

namespace A234499.P13325268519691868451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122410 (Int.xor 1 (A046390 (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A234499.P13325268519691868451

namespace A234499

/-- `p?[A122410(xor(1, A046390(n+1)))]` -/
def P13325268519691868451.Spec : Prop :=
  ∀ n, P13325268519691868451.a n = A234499 (n + 1)

end A234499

/-! ## A234499.P6006238311620319296

`p?[A273943(xor(1, A046390(n+1)))]`
-/

namespace A234499.P6006238311620319296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (Int.xor 1 (A046390 (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A234499.P6006238311620319296

namespace A234499

/-- `p?[A273943(xor(1, A046390(n+1)))]` -/
def P6006238311620319296.Spec : Prop :=
  ∀ n, P6006238311620319296.a n = A234499 (n + 1)

end A234499

/-! ## A234499.P5110527007831281912

`record[A006530(floor(A046390(n+1)/2))]`
-/

namespace A234499.P5110527007831281912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 ⌊(A046390 (n + 1) : ℚ) / 2⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234499.P5110527007831281912

namespace A234499

/-- `record[A006530(floor(A046390(n+1)/2))]` -/
def P5110527007831281912.Spec : Prop :=
  ∀ n, P5110527007831281912.a n = A234499 (n + 1)

end A234499

/-! ## A234499.P11276250366277706613

`record[A020639(floor(A046390(n+1)/2))]`
-/

namespace A234499.P11276250366277706613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 ⌊(A046390 (n + 1) : ℚ) / 2⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234499.P11276250366277706613

namespace A234499

/-- `record[A020639(floor(A046390(n+1)/2))]` -/
def P11276250366277706613.Spec : Prop :=
  ∀ n, P11276250366277706613.a n = A234499 (n + 1)

end A234499

/-! ## A234499.P13084347715793025224

`record[A020639((A046390(n+1)-1)/2)]`
-/

namespace A234499.P13084347715793025224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (SequenceMachineLib.roundAway ((A046390 (n + 1) - 1 : ℚ) / 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234499.P13084347715793025224

namespace A234499

/-- `record[A020639((A046390(n+1)-1)/2)]` -/
def P13084347715793025224.Spec : Prop :=
  ∀ n, P13084347715793025224.a n = A234499 (n + 1)

end A234499

/-! ## A234499.P16585618190775294643

`record[A006530(A066182(A046390(n+1)))]`
-/

namespace A234499.P16585618190775294643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A066182 (A046390 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234499.P16585618190775294643

namespace A234499

/-- `record[A006530(A066182(A046390(n+1)))]` -/
def P16585618190775294643.Spec : Prop :=
  ∀ n, P16585618190775294643.a n = A234499 (n + 1)

end A234499

