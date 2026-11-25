import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C022
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C031
import Seq.B000.C036
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C040
import Seq.B000.C041
import Seq.B000.C045
import Seq.B000.C048
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C008
import Seq.B001.C010
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C005
import Seq.B006.C000
import Seq.B010.C000
import Seq.Opaque.C000
import Seq.Opaque.C001
import Seq.Opaque.C007
import Seq.Opaque.C010
import Seq.Opaque.C011
import Seq.Opaque.C012
import Seq.Opaque.C013
import Seq.Opaque.C014
import Seq.Opaque.C017
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C021
import SequenceMachineLib.Triangle

/-!
# A250500: Number of (n+2)X(4+2) 0..1 arrays with nondecreasing medians of every three consecutive values in every row and column.

The programs for A250500, there is no canonical definition to state claims against.
-/

/-! ## A250500.P6607340470303783208

`A250504(A374004(n+1))`
-/

namespace A250500.P6607340470303783208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250504 (A374004 (n + 1)).toNat

end

end A250500.P6607340470303783208

/-! ## A250500.P4106967552129550674

`A250504(A141214(n+1))`
-/

namespace A250500.P4106967552129550674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250504 (A141214 (n + 1)).toNat

end

end A250500.P4106967552129550674

/-!
# A250501: Number of (n+2)X(5+2) 0..1 arrays with nondecreasing medians of every three consecutive values in every row and column.

The programs for A250501, there is no canonical definition to state claims against.
-/

/-! ## A250501.P8956136543881960110

`A250504(A374005(n+1))`
-/

namespace A250501.P8956136543881960110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250504 (A374005 (n + 1)).toNat

end

end A250501.P8956136543881960110

/-!
# A250502: Number of (n+2)X(6+2) 0..1 arrays with nondecreasing medians of every three consecutive values in every row and column.

The programs for A250502, there is no canonical definition to state claims against.
-/

/-! ## A250502.P7751275364756395735

`A250504(A374007(n+1))`
-/

namespace A250502.P7751275364756395735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250504 (A374007 (n + 1)).toNat

end

end A250502.P7751275364756395735

/-!
# A250503: Number of (n+2)X(7+2) 0..1 arrays with nondecreasing medians of every three consecutive values in every row and column.

The programs for A250503, there is no canonical definition to state claims against.
-/

/-! ## A250503.P12739820800589601102

`A250504(A374008(n+1))`
-/

namespace A250503.P12739820800589601102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250504 (A374008 (n + 1)).toNat

end

end A250503.P12739820800589601102

/-!
# A250505: Number of (n+2)X(1+2) 0..2 arrays with nondecreasing medians of every three consecutive values in every row and column.

The programs for A250505, there is no canonical definition to state claims against.
-/

/-! ## A250505.P6352695006766715602

`A250134(1+n)^3`
-/

namespace A250505.P6352695006766715602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250134 (1 + n) ^ 3

end

end A250505.P6352695006766715602

/-! ## A250505.P13869864006602584459

`A250140(∑[2+n])^3`
-/

namespace A250505.P13869864006602584459
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250140 (∑ j ∈ Finset.range (n + 1), f1 j) ^ 3

end

end A250505.P13869864006602584459

/-! ## A250505.P13502124038336850477

`record[A250134(A152271(n))^3]`
-/

namespace A250505.P13502124038336850477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250134 (A152271 n).toNat ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A250505.P13502124038336850477

/-! ## A250505.P2367054574519413659

`record[A250134(A154958(n))^3]`
-/

namespace A250505.P2367054574519413659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250134 (A154958 n).toNat ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A250505.P2367054574519413659

/-! ## A250505.P17864501359786743764

`A250134(n+1)²*A250140(∑[n+2])`
-/

namespace A250505.P17864501359786743764
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250134 (n + 1) ^ 2 * A250140 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A250505.P17864501359786743764

/-!
# A250506: Number of (n+2)X(2+2) 0..2 arrays with nondecreasing medians of every three consecutive values in every row and column.

The programs for A250506, there is no canonical definition to state claims against.
-/

/-! ## A250506.P9891042065046471309

`A250507(∑[n+1]+2)`
-/

namespace A250506.P9891042065046471309
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250507 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A250506.P9891042065046471309

/-! ## A250506.P10501304021937441172

`record[gcd(A002262(n), A250507(n+2))]`
-/

namespace A250506.P10501304021937441172
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A250507 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A250506.P10501304021937441172

/-! ## A250506.P13709723252941601029

`record[root(A250507(n+2), A250485(n+1))]`
-/

namespace A250506.P13709723252941601029
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A250507 (n + 2) : ℝ) ^ (1 / (A250485 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A250506.P13709723252941601029

/-!
# A250508: Number of (n+2)X(1+2) 0..2 arrays with nondecreasing maximum minus minimum of every three consecutive values in every row and column.

The programs for A250508, there is no canonical definition to state claims against.
-/

/-! ## A250508.P8429623219153082909

`A250510(∑[n]+1)`
-/

namespace A250508.P8429623219153082909
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250510 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A250508.P8429623219153082909

/-! ## A250508.P11096548239508000668

`record[A250510(A112367(n)+1)]`
-/

namespace A250508.P11096548239508000668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250510 (A112367 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A250508.P11096548239508000668

/-! ## A250508.P5810196107559028671

`record[A250510(A249742(n+1))]`
-/

namespace A250508.P5810196107559028671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250510 (A249742 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A250508.P5810196107559028671

/-!
# A250509: Number of (n+2)X(2+2) 0..2 arrays with nondecreasing maximum minus minimum of every three consecutive values in every row and column.

The programs for A250509, there is no canonical definition to state claims against.
-/

/-! ## A250509.P1780543208102105689

`A250510(∑[n+1]+2)`
-/

namespace A250509.P1780543208102105689
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250510 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A250509.P1780543208102105689

/-! ## A250509.P17559119176812282019

`record[A250510(A112367(n)+2)]`
-/

namespace A250509.P17559119176812282019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250510 (A112367 n + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A250509.P17559119176812282019

/-! ## A250509.P11074340791055106323

`record[A010054(n)*A250510(n+2)]`
-/

namespace A250509.P11074340791055106323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A250510 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A250509.P11074340791055106323

/-!
# A250511: Number of (n+1) X (n+1) 0..3 arrays with nondecreasing min(x(i,j),x(i,j-1)) in the i direction and nondecreasing min(x(i,j),x(i-1,j)) in the j direction.

The programs for A250511, there is no canonical definition to state claims against.
-/

/-! ## A250511.P17680918475941645931

`A250519((n+1)²+n²)`
-/

namespace A250511.P17680918475941645931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250519 ((n + 1) ^ 2 + n ^ 2)

end

end A250511.P17680918475941645931

/-!
# A250512: Number of (n+1)X(1+1) 0..3 arrays with nondecreasing min(x(i,j),x(i,j-1)) in the i direction and nondecreasing min(x(i,j),x(i-1,j)) in the j direction.

The programs for A250512, there is no canonical definition to state claims against.
-/

/-! ## A250512.P17362110837411840903

`A250519(∑[n]+1)`
-/

namespace A250512.P17362110837411840903
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250519 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A250512.P17362110837411840903

/-! ## A250512.P16440661538291101675

`record[A010054(n)*A250519(n+1)]`
-/

namespace A250512.P16440661538291101675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A250519 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A250512.P16440661538291101675

/-! ## A250512.P10449782120574949947

`record[root(A250519(n+1), A054115(n))]`
-/

namespace A250512.P10449782120574949947
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A250519 (n + 1) : ℝ) ^ (1 / (A054115 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A250512.P10449782120574949947

/-! ## A250512.P13444387285337574698

`record[root(A250519(n+1), A287326(n))]`
-/

namespace A250512.P13444387285337574698
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A250519 (n + 1) : ℝ) ^ (1 / (A287326 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A250512.P13444387285337574698

/-! ## A250512.P11694123451784428958

`record[gcd(A002262(n), A250519(n+1))]`
-/

namespace A250512.P11694123451784428958
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A250519 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A250512.P11694123451784428958

/-!
# A250513: Number of (n+1)X(2+1) 0..3 arrays with nondecreasing min(x(i,j),x(i,j-1)) in the i direction and nondecreasing min(x(i,j),x(i-1,j)) in the j direction.

The programs for A250513, there is no canonical definition to state claims against.
-/

/-! ## A250513.P7741188046740190794

`A250519(∑[n+1]+2)`
-/

namespace A250513.P7741188046740190794
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250519 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A250513.P7741188046740190794

/-! ## A250513.P9444050901111657045

`record[A010054(n)*A250519(n+2)]`
-/

namespace A250513.P9444050901111657045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A250519 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A250513.P9444050901111657045

/-! ## A250513.P10440318297732475290

`record[gcd(A002262(n), A250519(n+2))]`
-/

namespace A250513.P10440318297732475290
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A250519 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A250513.P10440318297732475290

/-!
# A250514: Number of (n+1)X(3+1) 0..3 arrays with nondecreasing min(x(i,j),x(i,j-1)) in the i direction and nondecreasing min(x(i,j),x(i-1,j)) in the j direction.

The programs for A250514, there is no canonical definition to state claims against.
-/

/-! ## A250514.P11166000660585707341

`A250519(∑[n+2]+4)`
-/

namespace A250514.P11166000660585707341
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250519 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A250514.P11166000660585707341

/-!
# A250515: Number of (n+1)X(4+1) 0..3 arrays with nondecreasing min(x(i,j),x(i,j-1)) in the i direction and nondecreasing min(x(i,j),x(i-1,j)) in the j direction.

The programs for A250515, there is no canonical definition to state claims against.
-/

/-! ## A250515.P11959318428366057469

`A250519(A141214(n)+7)`
-/

namespace A250515.P11959318428366057469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250519 (A141214 n + 7).toNat

end

end A250515.P11959318428366057469

/-! ## A250515.P7948006120985402259

`A250519(A141214(n+1))`
-/

namespace A250515.P7948006120985402259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250519 (A141214 (n + 1)).toNat

end

end A250515.P7948006120985402259

/-!
# A250516: Number of (n+1)X(5+1) 0..3 arrays with nondecreasing min(x(i,j),x(i,j-1)) in the i direction and nondecreasing min(x(i,j),x(i-1,j)) in the j direction.

The programs for A250516, there is no canonical definition to state claims against.
-/

/-! ## A250516.P14088461667056295937

`A250519(A167499(n+3))`
-/

namespace A250516.P14088461667056295937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250519 (A167499 (n + 3)).toNat

end

end A250516.P14088461667056295937

/-! ## A250516.P13109150051618461392

`A250519(A374005(n+1))`
-/

namespace A250516.P13109150051618461392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250519 (A374005 (n + 1)).toNat

end

end A250516.P13109150051618461392

/-!
# A250517: Number of (n+1)X(6+1) 0..3 arrays with nondecreasing min(x(i,j),x(i,j-1)) in the i direction and nondecreasing min(x(i,j),x(i-1,j)) in the j direction.

The programs for A250517, there is no canonical definition to state claims against.
-/

/-! ## A250517.P10522053508943566356

`A250519(A167499(n+4)+1)`
-/

namespace A250517.P10522053508943566356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250519 (A167499 (n + 4) + 1).toNat

end

end A250517.P10522053508943566356

/-! ## A250517.P16204809425297483811

`A250519(A374007(n+1))`
-/

namespace A250517.P16204809425297483811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250519 (A374007 (n + 1)).toNat

end

end A250517.P16204809425297483811

/-!
# A250518: Number of (n+1)X(7+1) 0..3 arrays with nondecreasing min(x(i,j),x(i,j-1)) in the i direction and nondecreasing min(x(i,j),x(i-1,j)) in the j direction.

The programs for A250518, there is no canonical definition to state claims against.
-/

/-! ## A250518.P13227959262781011457

`A250519(eq[8, A131818(n+1)])`
-/

namespace A250518.P13227959262781011457
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250519 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A250518.P13227959262781011457

/-!
# A250520: Number of (n+1)X(n+1) 0..2 arrays with nondecreasing x(i,j)-x(i,j-1) in the i direction and nondecreasing x(i,j)-x(i-1,j) in the j direction.

The programs for A250520, there is no canonical definition to state claims against.
-/

/-! ## A250520.P5046943093685949718

`A250527(∑[4*n]+1)`
-/

namespace A250520.P5046943093685949718
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250527 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A250520.P5046943093685949718

/-! ## A250520.P9052932977214316002

`record[A250527(A330613(n+1))]`
-/

namespace A250520.P9052932977214316002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250527 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A250520.P9052932977214316002

/-! ## A250520.P2344967646284995346

`record[A250527(A001844(∑{digits}[n, #]))]`
-/

namespace A250520.P2344967646284995346
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250527 (A001844 ((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => x).sum).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A250520.P2344967646284995346

/-! ## A250520.P2883792776883195246

`record[A250527(A001844(∏{digits}[n, #]))]`
-/

namespace A250520.P2883792776883195246
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250527 (A001844 ((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => x).prod).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A250520.P2883792776883195246

/-!
# A250521: Number of (n+1)X(2+1) 0..2 arrays with nondecreasing x(i,j)-x(i,j-1) in the i direction and nondecreasing x(i,j)-x(i-1,j) in the j direction.

The programs for A250521, there is no canonical definition to state claims against.
-/

/-! ## A250521.P11204535334742235965

`A250527(∑[n+1]+2)`
-/

namespace A250521.P11204535334742235965
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250527 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A250521.P11204535334742235965

/-! ## A250521.P17997314227178620080

`record[gcd(A002262(n), A250527(n+2))]`
-/

namespace A250521.P17997314227178620080
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A250527 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A250521.P17997314227178620080

/-!
# A250522: Number of (n+1)X(3+1) 0..2 arrays with nondecreasing x(i,j)-x(i,j-1) in the i direction and nondecreasing x(i,j)-x(i-1,j) in the j direction.

The programs for A250522, there is no canonical definition to state claims against.
-/

/-! ## A250522.P15883849375731928584

`A250527(∑[n+2]+4)`
-/

namespace A250522.P15883849375731928584
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250527 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A250522.P15883849375731928584

/-!
# A250523: Number of (n+1)X(4+1) 0..2 arrays with nondecreasing x(i,j)-x(i,j-1) in the i direction and nondecreasing x(i,j)-x(i-1,j) in the j direction.

The programs for A250523, there is no canonical definition to state claims against.
-/

/-! ## A250523.P1130989732634018407

`A250527(∑[n+3]+7)`
-/

namespace A250523.P1130989732634018407
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250527 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A250523.P1130989732634018407

/-!
# A250524: Number of (n+1)X(5+1) 0..2 arrays with nondecreasing x(i,j)-x(i,j-1) in the i direction and nondecreasing x(i,j)-x(i-1,j) in the j direction.

The programs for A250524, there is no canonical definition to state claims against.
-/

/-! ## A250524.P788073172075656348

`A250527(∑[n+4]+11)`
-/

namespace A250524.P788073172075656348
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250527 (∑ j ∈ Finset.range (n + 1), f1 j + 11)

end

end A250524.P788073172075656348

/-!
# A250525: Number of (n+1)X(6+1) 0..2 arrays with nondecreasing x(i,j)-x(i,j-1) in the i direction and nondecreasing x(i,j)-x(i-1,j) in the j direction.

The programs for A250525, there is no canonical definition to state claims against.
-/

/-! ## A250525.P5733860688634201215

`A250527(A166136(n+4))`
-/

namespace A250525.P5733860688634201215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250527 (A166136 (n + 4)).toNat

end

end A250525.P5733860688634201215

/-! ## A250525.P9022489441350064081

`A250527(A374007(n+1))`
-/

namespace A250525.P9022489441350064081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250527 (A374007 (n + 1)).toNat

end

end A250525.P9022489441350064081

/-!
# A250526: Number of (n+1)X(7+1) 0..2 arrays with nondecreasing x(i,j)-x(i,j-1) in the i direction and nondecreasing x(i,j)-x(i-1,j) in the j direction.

The programs for A250526, there is no canonical definition to state claims against.
-/

/-! ## A250526.P2040675657714069005

`A250527(A167487(n+5))`
-/

namespace A250526.P2040675657714069005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250527 (A167487 (n + 5)).toNat

end

end A250526.P2040675657714069005

/-! ## A250526.P4005495376143923922

`A250527(A374008(n+1))`
-/

namespace A250526.P4005495376143923922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250527 (A374008 (n + 1)).toNat

end

end A250526.P4005495376143923922

/-!
# A250528: Number of (n+1)X(n+1) 0..3 arrays with nondecreasing max(x(i,j),x(i,j-1)) in the i direction and nondecreasing min(x(i,j),x(i-1,j)) in the j direction.

The programs for A250528, there is no canonical definition to state claims against.
-/

/-! ## A250528.P18338355716406072389

`A250536(∑[4*n]+1)`
-/

namespace A250528.P18338355716406072389
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250536 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A250528.P18338355716406072389

/-!
# A250529: Number of (n+1)X(1+1) 0..3 arrays with nondecreasing max(x(i,j),x(i,j-1)) in the i direction and nondecreasing min(x(i,j),x(i-1,j)) in the j direction.

The programs for A250529, there is no canonical definition to state claims against.
-/

/-! ## A250529.P1371040265680974670

`A250536(∑[n]+1)`
-/

namespace A250529.P1371040265680974670
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250536 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A250529.P1371040265680974670

/-! ## A250529.P14696783715597509411

`record[A250536(n+1)/A007318(n)]`
-/

namespace A250529.P14696783715597509411
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A250536 (n + 1) : ℚ) / (A007318 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A250529.P14696783715597509411

/-! ## A250529.P12834890353164963538

`record[A250536(n+1)/A054143(n)]`
-/

namespace A250529.P12834890353164963538
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A250536 (n + 1) : ℚ) / (A054143 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A250529.P12834890353164963538

/-! ## A250529.P12184991529590210585

`record[root(A250536(n+1), A193592(n))]`
-/

namespace A250529.P12184991529590210585
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A250536 (n + 1) : ℝ) ^ (1 / (A193592 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A250529.P12184991529590210585

/-! ## A250529.P3603345873648673771

`record[gcd(A002262(n), A250536(n+1))]`
-/

namespace A250529.P3603345873648673771
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A250536 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A250529.P3603345873648673771

/-!
# A250530: Number of (n+1)X(2+1) 0..3 arrays with nondecreasing max(x(i,j),x(i,j-1)) in the i direction and nondecreasing min(x(i,j),x(i-1,j)) in the j direction.

The programs for A250530, there is no canonical definition to state claims against.
-/

/-! ## A250530.P11573764949240691848

`A250536(∑[n+1]+2)`
-/

namespace A250530.P11573764949240691848
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250536 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A250530.P11573764949240691848

/-! ## A250530.P13308502677181289326

`record[gcd(A002262(n), A250536(n+2))]`
-/

namespace A250530.P13308502677181289326
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A250536 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A250530.P13308502677181289326

/-!
# A250531: Number of (n+1)X(3+1) 0..3 arrays with nondecreasing max(x(i,j),x(i,j-1)) in the i direction and nondecreasing min(x(i,j),x(i-1,j)) in the j direction.

The programs for A250531, there is no canonical definition to state claims against.
-/

/-! ## A250531.P739107371305542522

`A250536(∑[n+2]+4)`
-/

namespace A250531.P739107371305542522
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250536 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A250531.P739107371305542522

/-!
# A250532: Number of (n+1) X (4+1) 0..3 arrays with nondecreasing max(x(i,j),x(i,j-1)) in the i direction and nondecreasing min(x(i,j),x(i-1,j)) in the j direction.

The programs for A250532, there is no canonical definition to state claims against.
-/

/-! ## A250532.P12154455467306944779

`A250536(A141214(n)+7)`
-/

namespace A250532.P12154455467306944779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250536 (A141214 n + 7).toNat

end

end A250532.P12154455467306944779

/-! ## A250532.P7667864382006424432

`A250536(A141214(n+1))`
-/

namespace A250532.P7667864382006424432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250536 (A141214 (n + 1)).toNat

end

end A250532.P7667864382006424432

/-!
# A250533: Number of (n+1)X(5+1) 0..3 arrays with nondecreasing max(x(i,j),x(i,j-1)) in the i direction and nondecreasing min(x(i,j),x(i-1,j)) in the j direction.

The programs for A250533, there is no canonical definition to state claims against.
-/

/-! ## A250533.P17748065255035244281

`A250536(A155212(n)+13)`
-/

namespace A250533.P17748065255035244281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250536 (A155212 n + 13).toNat

end

end A250533.P17748065255035244281

/-! ## A250533.P4010047115837193582

`A250536(A374005(n+1))`
-/

namespace A250533.P4010047115837193582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250536 (A374005 (n + 1)).toNat

end

end A250533.P4010047115837193582

/-!
# A250534: Number of (n+1)X(6+1) 0..3 arrays with nondecreasing max(x(i,j),x(i,j-1)) in the i direction and nondecreasing min(x(i,j),x(i-1,j)) in the j direction.

The programs for A250534, there is no canonical definition to state claims against.
-/

/-! ## A250534.P5508506474093298305

`A250536(C(n+7, 2)-n)`
-/

namespace A250534.P5508506474093298305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250536 (Nat.choose (n + 7) 2 - n)

end

end A250534.P5508506474093298305

/-!
# A250535: Number of (n+1)X(7+1) 0..3 arrays with nondecreasing max(x(i,j),x(i,j-1)) in the i direction and nondecreasing min(x(i,j),x(i-1,j)) in the j direction.

The programs for A250535, there is no canonical definition to state claims against.
-/

/-! ## A250535.P14846275822913596468

`A250536(eq[8, A131818(n+1)])`
-/

namespace A250535.P14846275822913596468
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250536 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A250535.P14846275822913596468

/-! ## A250535.P6764492158628378110

`A250536(C(n+7, 2)+n+1)`
-/

namespace A250535.P6764492158628378110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250536 (Nat.choose (n + 7) 2 + (n + 1))

end

end A250535.P6764492158628378110

/-!
# A250537: Number of (n+1)X(n+1) 0..3 arrays with nondecreasing x(i,j)-x(i,j-1) in the i direction and nondecreasing x(i,j)-x(i-1,j) in the j direction.

The programs for A250537, there is no canonical definition to state claims against.
-/

/-! ## A250537.P14173165094477195302

`A250544(∑[4*n]+1)`
-/

namespace A250537.P14173165094477195302
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250544 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A250537.P14173165094477195302

/-! ## A250537.P12758850380102545881

`record[A250544(Δ[A235355(n)])]`
-/

namespace A250537.P12758850380102545881
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235355 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250544 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A250537.P12758850380102545881

/-! ## A250537.P11080160074407837352

`record[A250544(A330613(n+1))]`
-/

namespace A250537.P11080160074407837352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250544 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A250537.P11080160074407837352

/-!
# A250538: Number of (n+1)X(2+1) 0..3 arrays with nondecreasing x(i,j)-x(i,j-1) in the i direction and nondecreasing x(i,j)-x(i-1,j) in the j direction.

The programs for A250538, there is no canonical definition to state claims against.
-/

/-! ## A250538.P14935843686329735470

`A250544(∑[n+1]+2)`
-/

namespace A250538.P14935843686329735470
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250544 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A250538.P14935843686329735470

/-! ## A250538.P914474976679039098

`record[A250544(A056536(n+1)+1)]`
-/

namespace A250538.P914474976679039098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250544 (A056536 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A250538.P914474976679039098

/-! ## A250538.P2571570618401248118

`record[A250544(A114091(n+1)+1)]`
-/

namespace A250538.P2571570618401248118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250544 (A114091 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A250538.P2571570618401248118

/-! ## A250538.P4157961781948569394

`record[A250544(A286235(n+1)+1)]`
-/

namespace A250538.P4157961781948569394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250544 (A286235 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A250538.P4157961781948569394

/-! ## A250538.P16779726328894083965

`record[A250544(A038722(n+1)+2)]`
-/

namespace A250538.P16779726328894083965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250544 (A038722 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A250538.P16779726328894083965

/-!
# A250539: Number of (n+1)X(3+1) 0..3 arrays with nondecreasing x(i,j)-x(i,j-1) in the i direction and nondecreasing x(i,j)-x(i-1,j) in the j direction.

The programs for A250539, there is no canonical definition to state claims against.
-/

/-! ## A250539.P8480512697065791181

`A250544(∑[n+2]+4)`
-/

namespace A250539.P8480512697065791181
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250544 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A250539.P8480512697065791181

/-!
# A250540: Number of (n+1) X (4+1) 0..3 arrays with nondecreasing x(i,j)-x(i,j-1) in the i direction and nondecreasing x(i,j)-x(i-1,j) in the j direction.

The programs for A250540, there is no canonical definition to state claims against.
-/

/-! ## A250540.P15218572020137314543

`A250544(∑[n+3]+7)`
-/

namespace A250540.P15218572020137314543
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250544 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A250540.P15218572020137314543

/-!
# A250541: Number of (n+1)X(5+1) 0..3 arrays with nondecreasing x(i,j)-x(i,j-1) in the i direction and nondecreasing x(i,j)-x(i-1,j) in the j direction.

The programs for A250541, there is no canonical definition to state claims against.
-/

/-! ## A250541.P5952217860693137936

`A250544(A374005(n+1))`
-/

namespace A250541.P5952217860693137936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250544 (A374005 (n + 1)).toNat

end

end A250541.P5952217860693137936

/-!
# A250542: Number of (n+1)X(6+1) 0..3 arrays with nondecreasing x(i,j)-x(i,j-1) in the i direction and nondecreasing x(i,j)-x(i-1,j) in the j direction.

The programs for A250542, there is no canonical definition to state claims against.
-/

/-! ## A250542.P9505661789996544265

`A250544(A374007(n+1))`
-/

namespace A250542.P9505661789996544265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250544 (A374007 (n + 1)).toNat

end

end A250542.P9505661789996544265

/-!
# A250543: Number of (n+1)X(7+1) 0..3 arrays with nondecreasing x(i,j)-x(i,j-1) in the i direction and nondecreasing x(i,j)-x(i-1,j) in the j direction.

The programs for A250543, there is no canonical definition to state claims against.
-/

/-! ## A250543.P8293961733004985355

`A250544(A374008(n+1))`
-/

namespace A250543.P8293961733004985355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250544 (A374008 (n + 1)).toNat

end

end A250543.P8293961733004985355

/-!
# A250545: Numbers of the form 4^x + y^4 with x, y >= 0.

The programs for A250545, there is no canonical definition to state claims against.
-/

/-! ## A250545.P6294775783786736264

`eq[A014695(A211357(n)), A053737(n)]`
-/

namespace A250545.P6294775783786736264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014695 (A211357 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053737 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A250545.P6294775783786736264

/-! ## A250545.P13298794522972976988

`eq[A033922(n), A322028(n+1)]`
-/

namespace A250545.P13298794522972976988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033922 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322028 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A250545.P13298794522972976988

/-! ## A250545.P10963536639466050330

`eq[A269224(n), A324920(n)]`
-/

namespace A250545.P10963536639466050330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269224 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324920 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A250545.P10963536639466050330

/-! ## A250545.P134388735189710766

`eq[A033922(n), A180026(n+1)]`
-/

namespace A250545.P134388735189710766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033922 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180026 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A250545.P134388735189710766

/-! ## A250545.P3116645853504136285

`eq[A033922(n), A237353(n+2)]`
-/

namespace A250545.P3116645853504136285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033922 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237353 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A250545.P3116645853504136285

/-!
# A250550: Numerator of the harmonic mean of the first n 10-gonal numbers.

The programs for A250550, there is no canonical definition to state claims against.
-/

/-! ## A250550.P15014790063916794248

`(1+n)*A294515(n)`
-/

namespace A250550.P15014790063916794248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 + n : ℤ) * A294515 n

end

end A250550.P15014790063916794248

/-! ## A250550.P9972081577200782835

`A294515(n)*A332893(A103517(n))`
-/

namespace A250550.P9972081577200782835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294515 n * A332893 (A103517 n).toNat

end

end A250550.P9972081577200782835

/-! ## A250550.P11369502844378965703

`A294515(n)*A294519(A000096(n))`
-/

namespace A250550.P11369502844378965703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294515 n * A294519 (A000096 n).toNat

end

end A250550.P11369502844378965703

/-! ## A250550.P6249687608601021447

`A294515(n)*A342769(∑[A103517(n)])`
-/

namespace A250550.P6249687608601021447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294515 n * A342769 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A250550.P6249687608601021447

/-!
# A250552: A049084(A247797(n)).

The programs for A250552, there is no canonical definition to state claims against.
-/

/-! ## A250552.P3736664336547610705

`A049084(A247797(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A250552.P3736664336547610705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (A247797 (n + 1)).toNat

end

end A250552.P3736664336547610705

/-! ## A250552.P16070230010399962831

`fo[A250553(n+1)-1]+1`
-/

namespace A250552.P16070230010399962831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250553 (n + 1) - 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (n : ℤ)) 0 + 1

end

end A250552.P16070230010399962831

/-! ## A250552.P2644121167049777769

`A000720(A247797(1+n))`
-/

namespace A250552.P2644121167049777769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A247797 (1 + n)).toNat

end

end A250552.P2644121167049777769

/-! ## A250552.P4003097813975110016

`A061395(2*A247797(n+1))`
-/

namespace A250552.P4003097813975110016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (2 * A247797 (n + 1)).toNat

end

end A250552.P4003097813975110016

/-! ## A250552.P16711700980713136444

`A036234(A247797(n+1)-1)`
-/

namespace A250552.P16711700980713136444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036234 (A247797 (n + 1) - 1).toNat

end

end A250552.P16711700980713136444

/-! ## A250552.P17365002708495100063

`A156061(lcm(2, A247797(n+1))/2)`
-/

namespace A250552.P17365002708495100063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156061 (SequenceMachineLib.roundAway ((Int.lcm 2 (A247797 (n + 1)) : ℚ) / 2)).toNat

end

end A250552.P17365002708495100063

/-! ## A250552.P10549211506102849232

`A056172(2*A247797(n+1))`
-/

namespace A250552.P10549211506102849232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056172 (2 * A247797 (n + 1)).toNat

end

end A250552.P10549211506102849232

/-! ## A250552.P16211160610171671143

`A156061(2*A247797(n+1))`
-/

namespace A250552.P16211160610171671143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156061 (2 * A247797 (n + 1)).toNat

end

end A250552.P16211160610171671143

/-!
# A250553: Inverse permutation to A250552.

The programs for A250553, there is no canonical definition to state claims against.
-/

/-! ## A250553.P14952512982848532624

`fo[A250552(n+1)-1]+1`
-/

namespace A250553.P14952512982848532624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250552 (n + 1) - 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (n : ℤ)) 0 + 1

end

end A250553.P14952512982848532624

/-!
# A250554: Number of length n+2 0..1 arrays with the sum of second differences multiplied by some arrangement of +-1 equal to zero.

The programs for A250554, the canonical program `A250554.P11660294058464506872` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A250554 has offset 1).

The definition of A250554 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 331 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A250554.P3015441319887442511

`ogf((2+4x-4x^2)/(1-2x-x^2+2x^3))`
-/

namespace A250554.P3015441319887442511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 4, -4] [1, -2, -1, 2] n

end

end A250554.P3015441319887442511

namespace A250554

/-- `ogf((2+4x-4x^2)/(1-2x-x^2+2x^3))` -/
def P3015441319887442511.Spec : Prop :=
  ∀ n, P3015441319887442511.a n = A250554 (n + 1)

end A250554

/-! ## A250554.P11660294058464506872

`2*(∑[2^n]+n%2)`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A250554

/-- `2*(∑[2^n]+n%2)` -/
def P11660294058464506872.Spec : Prop :=
  ∀ n, (P11660294058464506872.a n : ℤ) = A250554 (n + 1)

theorem P11660294058464506872.correct : P11660294058464506872.Spec := by
  intro n
  simp only [A250554, Nat.add_sub_cancel]

end A250554

/-! ## A250554.P8038318868075279190

`xor(∑[2^(n+1)], n)+n`
-/

namespace A250554.P8038318868075279190
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor (∑ j ∈ Finset.range (n + 1), f1 j) n + n

end

end A250554.P8038318868075279190

namespace A250554

/-- `xor(∑[2^(n+1)], n)+n` -/
def P8038318868075279190.Spec : Prop :=
  ∀ n, (P8038318868075279190.a n : ℤ) = A250554 (n + 1)

end A250554

/-! ## A250554.P13848929605049589415

`∑[lcm(2, 1-(-2)^n)]+2`
-/

namespace A250554.P13848929605049589415
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (1 - (-2) ^ n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A250554.P13848929605049589415

namespace A250554

/-- `∑[lcm(2, 1-(-2)^n)]+2` -/
def P13848929605049589415.Spec : Prop :=
  ∀ n, (P13848929605049589415.a n : ℤ) = A250554 (n + 1)

end A250554

/-! ## A250554.P13507383823708870965

`6*floor(∑[2^n/3])+2`
-/

namespace A250554.P13507383823708870965
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℚ) / 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋ + 2

end

end A250554.P13507383823708870965

namespace A250554

/-- `6*floor(∑[2^n/3])+2` -/
def P13507383823708870965.Spec : Prop :=
  ∀ n, P13507383823708870965.a n = A250554 (n + 1)

end A250554

/-! ## A250554.P14313023828186588525

`a(n-2)+3*2^n` with `a(0)=2, a(1)=8`
-/

namespace A250554.P14313023828186588525
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 8] fun n a =>
  a (n - 2) + 3 * 2 ^ n

end

end A250554.P14313023828186588525

namespace A250554

/-- `a(n-2)+3*2^n` -/
def P14313023828186588525.Spec : Prop :=
  ∀ n, (P14313023828186588525.a n : ℤ) = A250554 (n + 1)

end A250554

/-! ## A250554.P9606066860671913984

`2^(n+2)-∑[-a(n-1)]` with `a(0)=2`
-/

namespace A250554.P9606066860671913984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  -f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 2) : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A250554.P9606066860671913984

namespace A250554

/-- `2^(n+2)-∑[-a(n-1)]` -/
def P9606066860671913984.Spec : Prop :=
  ∀ n, P9606066860671913984.a n = A250554 (n + 1)

end A250554

/-! ## A250554.P16923626343381216801

`∑[a(n-1)+2*a(n-2)]` with `a(0)=2, a(1)=6, a(2)=6`
-/

namespace A250554.P16923626343381216801
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 6, 6] fun n f1 =>
  f1 (n - 1) + 2 * f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A250554.P16923626343381216801

namespace A250554

/-- `∑[a(n-1)+2*a(n-2)]` -/
def P16923626343381216801.Spec : Prop :=
  ∀ n, (P16923626343381216801.a n : ℤ) = A250554 (n + 1)

end A250554

/-! ## A250554.P9342441435031590107

`2*A051049(n+1)`
-/

namespace A250554.P9342441435031590107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A051049 (n + 1)

end

end A250554.P9342441435031590107

namespace A250554

/-- `2*A051049(n+1)` -/
def P9342441435031590107.Spec : Prop :=
  ∀ n, P9342441435031590107.a n = A250554 (n + 1)

end A250554

/-! ## A250554.P18023972827367042870

`xor(1, A062510(n+2))`
-/

namespace A250554.P18023972827367042870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A062510 (n + 2))

end

end A250554.P18023972827367042870

namespace A250554

/-- `xor(1, A062510(n+2))` -/
def P18023972827367042870.Spec : Prop :=
  ∀ n, P18023972827367042870.a n = A250554 (n + 1)

end A250554

/-! ## A250554.P10818174351119771250

`2*(A084173(n)+n)`
-/

namespace A250554.P10818174351119771250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A084173 n + (n : ℤ))

end

end A250554.P10818174351119771250

namespace A250554

/-- `2*(A084173(n)+n)` -/
def P10818174351119771250.Spec : Prop :=
  ∀ n, P10818174351119771250.a n = A250554 (n + 1)

end A250554

/-! ## A250554.P6164237409424904543

`2*(∑[A062510(n)]+1)`
-/

namespace A250554.P6164237409424904543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062510 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A250554.P6164237409424904543

namespace A250554

/-- `2*(∑[A062510(n)]+1)` -/
def P6164237409424904543.Spec : Prop :=
  ∀ n, P6164237409424904543.a n = A250554 (n + 1)

end A250554

/-! ## A250554.P12689160851982082693

`2*Δ[A112884(n+1)]`
-/

namespace A250554.P12689160851982082693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112884 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (f1 (n + 1) - f1 n)

end

end A250554.P12689160851982082693

namespace A250554

/-- `2*Δ[A112884(n+1)]` -/
def P12689160851982082693.Spec : Prop :=
  ∀ n, P12689160851982082693.a n = A250554 (n + 1)

end A250554

/-! ## A250554.P2652631395258768187

`2*Δ[A173009(n+2)]`
-/

namespace A250554.P2652631395258768187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173009 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (f1 (n + 1) - f1 n)

end

end A250554.P2652631395258768187

namespace A250554

/-- `2*Δ[A173009(n+2)]` -/
def P2652631395258768187.Spec : Prop :=
  ∀ n, P2652631395258768187.a n = A250554 (n + 1)

end A250554

/-! ## A250554.P1129172681565454727

`2*(A141023(n+1)+1)`
-/

namespace A250554.P1129172681565454727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A141023 (n + 1) + 1)

end

end A250554.P1129172681565454727

namespace A250554

/-- `2*(A141023(n+1)+1)` -/
def P1129172681565454727.Spec : Prop :=
  ∀ n, P1129172681565454727.a n = A250554 (n + 1)

end A250554

/-! ## A250554.P4237563735349760827

`2*(A052531(n+1)-1)`
-/

namespace A250554.P4237563735349760827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A052531 (n + 1) - 1)

end

end A250554.P4237563735349760827

namespace A250554

/-- `2*(A052531(n+1)-1)` -/
def P4237563735349760827.Spec : Prop :=
  ∀ n, P4237563735349760827.a n = A250554 (n + 1)

end A250554

/-! ## A250554.P8807354252986583362

`xor(1, A284353(n+1)+2)`
-/

namespace A250554.P8807354252986583362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A284353 (n + 1) + 2)

end

end A250554.P8807354252986583362

namespace A250554

/-- `xor(1, A284353(n+1)+2)` -/
def P8807354252986583362.Spec : Prop :=
  ∀ n, P8807354252986583362.a n = A250554 (n + 1)

end A250554

/-! ## A250554.P801190107663245375

`2*(A168361(n)+a(n-1))` with `a(0)=2`
-/

namespace A250554.P801190107663245375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  2 * (A168361 n + a (n - 1))

end

end A250554.P801190107663245375

namespace A250554

/-- `2*(A168361(n)+a(n-1))` -/
def P801190107663245375.Spec : Prop :=
  ∀ n, P801190107663245375.a n = A250554 (n + 1)

end A250554

/-! ## A250554.P11837029580614905579

`A010698(n)*A282453(n)`
-/

namespace A250554.P11837029580614905579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010698 n * A282453 n

end

end A250554.P11837029580614905579

namespace A250554

/-- `A010698(n)*A282453(n)` -/
def P11837029580614905579.Spec : Prop :=
  ∀ n, P11837029580614905579.a n = A250554 (n + 1)

end A250554

/-! ## A250554.P12712933861926790295

`record[A062510(A007599(n))-1]`
-/

namespace A250554.P12712933861926790295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062510 (A007599 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A250554.P12712933861926790295

namespace A250554

/-- `record[A062510(A007599(n))-1]` -/
def P12712933861926790295.Spec : Prop :=
  ∀ n, P12712933861926790295.a n = A250554 (n + 1)

end A250554

/-!
# A250555: Number of length n+2 0..2 arrays with the sum of second differences multiplied by some arrangement of +-1 equal to zero.

The programs for A250555, there is no canonical definition to state claims against.
-/

/-! ## A250555.P8797767810211377930

`A250561(∑[n+2])`
-/

namespace A250555.P8797767810211377930
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250561 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A250555.P8797767810211377930

/-! ## A250555.P5071556736291807571

`record[A250561(A198456(n+1)-1)]`
-/

namespace A250555.P5071556736291807571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250561 (A198456 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A250555.P5071556736291807571

/-!
# A250556: Number of length n+2 0..3 arrays with the sum of second differences multiplied by some arrangement of +-1 equal to zero.

The programs for A250556, there is no canonical definition to state claims against.
-/

/-! ## A250556.P11452389600468238957

`A250561(∑[3+n]+1)`
-/

namespace A250556.P11452389600468238957
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250561 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A250556.P11452389600468238957

/-! ## A250556.P2912709421001703197

`record[A250561(A198464(n+1))]`
-/

namespace A250556.P2912709421001703197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250561 (A198464 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A250556.P2912709421001703197

/-! ## A250556.P7399512885124077132

`record[A250561(A198463(n+1)+1)]`
-/

namespace A250556.P7399512885124077132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250561 (A198463 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A250556.P7399512885124077132

/-!
# A250557: Number of length n+2 0..4 arrays with the sum of second differences multiplied by some arrangement of +-1 equal to zero.

The programs for A250557, there is no canonical definition to state claims against.
-/

/-! ## A250557.P5113112753809245857

`A250561(∑[n+4]+3)`
-/

namespace A250557.P5113112753809245857
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250561 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A250557.P5113112753809245857

/-!
# A250558: Number of length n+2 0..5 arrays with the sum of second differences multiplied by some arrangement of +-1 equal to zero.

The programs for A250558, there is no canonical definition to state claims against.
-/

/-! ## A250558.P12023990504182056397

`A250561(Δ[A264443(n)])`
-/

namespace A250558.P12023990504182056397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250561 (f1 (n + 1) - f1 n).toNat

end

end A250558.P12023990504182056397

/-!
# A250559: Number of length n+2 0..6 arrays with the sum of second differences multiplied by some arrangement of +-1 equal to zero.

The programs for A250559, there is no canonical definition to state claims against.
-/

/-! ## A250559.P6186200279579271072

`A250561(A052905(n+3))`
-/

namespace A250559.P6186200279579271072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250561 (A052905 (n + 3)).toNat

end

end A250559.P6186200279579271072

/-!
# A250560: Number of length n+2 0..7 arrays with the sum of second differences multiplied by some arrangement of +-1 equal to zero.

The programs for A250560, there is no canonical definition to state claims against.
-/

/-! ## A250560.P647112945482330411

`A250561(A055999(n+4))`
-/

namespace A250560.P647112945482330411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250561 (A055999 (n + 4)).toNat

end

end A250560.P647112945482330411

/-!
# A250562: Number of length 3+2 0..n arrays with the sum of second differences multiplied by some arrangement of +-1 equal to zero.

The programs for A250562, there is no canonical definition to state claims against.
-/

/-! ## A250562.P6169135206556786549

`A250561(∑[n+2]+4)`
-/

namespace A250562.P6169135206556786549
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250561 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A250562.P6169135206556786549

/-!
# A250563: Number of length 4+2 0..n arrays with the sum of second differences multiplied by some arrangement of +-1 equal to zero.

The programs for A250563, there is no canonical definition to state claims against.
-/

/-! ## A250563.P15004090477369539797

`A250561(∑[n+3]+7)`
-/

namespace A250563.P15004090477369539797
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250561 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A250563.P15004090477369539797

/-!
# A250564: Number of length 5+2 0..n arrays with the sum of second differences multiplied by some arrangement of +-1 equal to zero.

The programs for A250564, there is no canonical definition to state claims against.
-/

/-! ## A250564.P12022746451990597532

`A250561(A167499(n+3))`
-/

namespace A250564.P12022746451990597532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250561 (A167499 (n + 3)).toNat

end

end A250564.P12022746451990597532

/-!
# A250565: Number of length 6+2 0..n arrays with the sum of second differences multiplied by some arrangement of +-1 equal to zero.

The programs for A250565, there is no canonical definition to state claims against.
-/

/-! ## A250565.P11901317690207831285

`A250561(A056115(n)+21)`
-/

namespace A250565.P11901317690207831285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250561 (A056115 n + 21).toNat

end

end A250565.P11901317690207831285

/-!
# A250566: Number of length 7+2 0..n arrays with the sum of second differences multiplied by some arrangement of +-1 equal to zero.

The programs for A250566, there is no canonical definition to state claims against.
-/

/-! ## A250566.P16520178153777349821

`A250561(A167487(n+5))`
-/

namespace A250566.P16520178153777349821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250561 (A167487 (n + 5)).toNat

end

end A250566.P16520178153777349821

/-!
# A250567: Number of (n+2)X(n+2) 0..1 arrays with nondecreasing maximum of every three consecutive values in every row and column.

The programs for A250567, there is no canonical definition to state claims against.
-/

/-! ## A250567.P1399642922668469193

`A250574(4*∑[n]+1)`
-/

namespace A250567.P1399642922668469193
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250574 (4 * (∑ j ∈ Finset.range (n + 1), f1 j) + 1)

end

end A250567.P1399642922668469193

/-!
# A250568: Number of (n+2)X(2+2) 0..1 arrays with nondecreasing maximum of every three consecutive values in every row and column.

The programs for A250568, there is no canonical definition to state claims against.
-/

/-! ## A250568.P12687009513688053769

`A250574(∑[n+1]+2)`
-/

namespace A250568.P12687009513688053769
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250574 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A250568.P12687009513688053769

/-!
# A250569: Number of (n+2) X (3+2) 0..1 arrays with nondecreasing maximum of every three consecutive values in every row and column.

The programs for A250569, there is no canonical definition to state claims against.
-/

/-! ## A250569.P18332221480144952418

`A250574(∑[n+2]+4)`
-/

namespace A250569.P18332221480144952418
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250574 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A250569.P18332221480144952418

/-! ## A250569.P13313689735144783140

`record[A250574(A167614(Δ[ceil(sqrt(n^3))]))]`
-/

namespace A250569.P13313689735144783140
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (n ^ 3 : ℝ)⌉

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250574 (A167614 (f2 (n + 1) - f2 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A250569.P13313689735144783140

/-!
# A250570: Number of (n+2) X (4+2) 0..1 arrays with nondecreasing maximum of every three consecutive values in every row and column.

The programs for A250570, there is no canonical definition to state claims against.
-/

/-! ## A250570.P15170572859473748237

`A250574(eq[3, col(n)]+1)`
-/

namespace A250570.P15170572859473748237
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.triCol n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250574 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A250570.P15170572859473748237

/-!
# A250571: Number of (n+2)X(5+2) 0..1 arrays with nondecreasing maximum of every three consecutive values in every row and column.

The programs for A250571, there is no canonical definition to state claims against.
-/

/-! ## A250571.P7180862419923762265

`A250574(A374005(n+1))`
-/

namespace A250571.P7180862419923762265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250574 (A374005 (n + 1)).toNat

end

end A250571.P7180862419923762265

/-!
# A250572: Number of (n+2)X(6+2) 0..1 arrays with nondecreasing maximum of every three consecutive values in every row and column.

The programs for A250572, there is no canonical definition to state claims against.
-/

/-! ## A250572.P6991274277337734419

`A250574(A166136(n+4))`
-/

namespace A250572.P6991274277337734419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250574 (A166136 (n + 4)).toNat

end

end A250572.P6991274277337734419

/-! ## A250572.P867427414214460417

`A250574(A374007(n+1))`
-/

namespace A250572.P867427414214460417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250574 (A374007 (n + 1)).toNat

end

end A250572.P867427414214460417

/-!
# A250575: Number of (n+1) X (n+1) 0..1 arrays with nondecreasing max(x(i,j),x(i,j-1)) in the i direction and nondecreasing min(x(i,j),x(i-1,j)) in the j direction.

The programs for A250575, there is no canonical definition to state claims against.
-/

/-! ## A250575.P6797049329106527905

`A250583(∑[4*n]+1)`
-/

namespace A250575.P6797049329106527905
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250583 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A250575.P6797049329106527905

/-! ## A250575.P5336842663029350472

`record[A003982(n)*A250583(n+1)]`
-/

namespace A250575.P5336842663029350472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A250583 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A250575.P5336842663029350472

/-!
# A250576: Number of (n+1) X (1+1) 0..1 arrays with nondecreasing max(x(i,j),x(i,j-1)) in the i direction and nondecreasing min(x(i,j),x(i-1,j)) in the j direction.

The programs for A250576, the canonical program `A250576.P15965323562905096149` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A250576 has offset 1).

The definition of A250576 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 282 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A250576.P12088175656184399650

`ogf((10-6x-7x^2+4x^3)/(1-3x+x^2+2x^3-x^4))`
-/

namespace A250576.P12088175656184399650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [10, -6, -7, 4] [1, -3, 1, 2, -1] n

end

end A250576.P12088175656184399650

namespace A250576

/-- `ogf((10-6x-7x^2+4x^3)/(1-3x+x^2+2x^3-x^4))` -/
def P12088175656184399650.Spec : Prop :=
  ∀ n, P12088175656184399650.a n = A250576 (n + 1)

end A250576

/-! ## A250576.P15965323562905096149

`3*a(n-1)-a(n-2)-2*a(n-3)+a(n-4)` with `a(0)=10, a(1)=24, a(2)=55, a(3)=125`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A250576

/-- `3*a(n-1)-a(n-2)-2*a(n-3)+a(n-4)` -/
def P15965323562905096149.Spec : Prop :=
  ∀ n, P15965323562905096149.a n = A250576 (n + 1)

theorem P15965323562905096149.correct : P15965323562905096149.Spec := by
  intro n
  simp only [A250576, Nat.add_sub_cancel]

end A250576

/-! ## A250576.P10490244044368102060

`A106805(n+3)-1`
-/

namespace A250576.P10490244044368102060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106805 (n + 3) - 1

end

end A250576.P10490244044368102060

namespace A250576

/-- `A106805(n+3)-1` -/
def P10490244044368102060.Spec : Prop :=
  ∀ n, P10490244044368102060.a n = A250576 (n + 1)

end A250576

/-! ## A250576.P17101586055275007559

`A006054(5+n)-1`
-/

namespace A250576.P17101586055275007559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006054 (5 + n) - 1

end

end A250576.P17101586055275007559

namespace A250576

/-- `A006054(5+n)-1` -/
def P17101586055275007559.Spec : Prop :=
  ∀ n, P17101586055275007559.a n = A250576 (n + 1)

end A250576

/-! ## A250576.P2994662061026166952

`∑[A006356(n+2)]+4`
-/

namespace A250576.P2994662061026166952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006356 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 4

end

end A250576.P2994662061026166952

namespace A250576

/-- `∑[A006356(n+2)]+4` -/
def P2994662061026166952.Spec : Prop :=
  ∀ n, P2994662061026166952.a n = A250576 (n + 1)

end A250576

/-! ## A250576.P7098949170257867444

`∑[A077998(n+3)]+4`
-/

namespace A250576.P7098949170257867444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077998 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 4

end

end A250576.P7098949170257867444

namespace A250576

/-- `∑[A077998(n+3)]+4` -/
def P7098949170257867444.Spec : Prop :=
  ∀ n, P7098949170257867444.a n = A250576 (n + 1)

end A250576

/-! ## A250576.P3452894559062174847

`A271485(2*n+5)-1`
-/

namespace A250576.P3452894559062174847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271485 (2 * n + 5) - 1

end

end A250576.P3452894559062174847

namespace A250576

/-- `A271485(2*n+5)-1` -/
def P3452894559062174847.Spec : Prop :=
  ∀ n, P3452894559062174847.a n = A250576 (n + 1)

end A250576

/-! ## A250576.P5061738377395330693

`A038196(2*n+7)-1`
-/

namespace A250576.P5061738377395330693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038196 (2 * n + 7) - 1

end

end A250576.P5061738377395330693

namespace A250576

/-- `A038196(2*n+7)-1` -/
def P5061738377395330693.Spec : Prop :=
  ∀ n, P5061738377395330693.a n = A250576 (n + 1)

end A250576

/-! ## A250576.P15765097032400420127

`A250730(n+1)+A106805(n)`
-/

namespace A250576.P15765097032400420127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250730 (n + 1) + A106805 n

end

end A250576.P15765097032400420127

namespace A250576

/-- `A250730(n+1)+A106805(n)` -/
def P15765097032400420127.Spec : Prop :=
  ∀ n, P15765097032400420127.a n = A250576 (n + 1)

end A250576

/-! ## A250576.P10784042706804749019

`A077850(n+1)+A033303(n+2)`
-/

namespace A250576.P10784042706804749019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077850 (n + 1) + A033303 (n + 2)

end

end A250576.P10784042706804749019

namespace A250576

/-- `A077850(n+1)+A033303(n+2)` -/
def P10784042706804749019.Spec : Prop :=
  ∀ n, P10784042706804749019.a n = A250576 (n + 1)

end A250576

/-! ## A250576.P1146701041959930882

`A077850(n+2)+A006054(n+3)`
-/

namespace A250576.P1146701041959930882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077850 (n + 2) + A006054 (n + 3)

end

end A250576.P1146701041959930882

namespace A250576

/-- `A077850(n+2)+A006054(n+3)` -/
def P1146701041959930882.Spec : Prop :=
  ∀ n, P1146701041959930882.a n = A250576 (n + 1)

end A250576

/-! ## A250576.P4078963679678230672

`A006356(n+3)-A052949(n+2)`
-/

namespace A250576.P4078963679678230672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006356 (n + 3) - A052949 (n + 2)

end

end A250576.P4078963679678230672

namespace A250576

/-- `A006356(n+3)-A052949(n+2)` -/
def P4078963679678230672.Spec : Prop :=
  ∀ n, P4078963679678230672.a n = A250576 (n + 1)

end A250576

/-! ## A250576.P15669666600814226676

`Δ[A109110(n+1)]-1`
-/

namespace A250576.P15669666600814226676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109110 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A250576.P15669666600814226676

namespace A250576

/-- `Δ[A109110(n+1)]-1` -/
def P15669666600814226676.Spec : Prop :=
  ∀ n, P15669666600814226676.a n = A250576 (n + 1)

end A250576

/-! ## A250576.P15475653035124518297

`Δ[A077850(n+2)]-1`
-/

namespace A250576.P15475653035124518297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077850 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A250576.P15475653035124518297

namespace A250576

/-- `Δ[A077850(n+2)]-1` -/
def P15475653035124518297.Spec : Prop :=
  ∀ n, P15475653035124518297.a n = A250576 (n + 1)

end A250576

/-! ## A250576.P2114510394489056024

`Δ[A052534(n+3)]-1`
-/

namespace A250576.P2114510394489056024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052534 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A250576.P2114510394489056024

namespace A250576

/-- `Δ[A052534(n+3)]-1` -/
def P2114510394489056024.Spec : Prop :=
  ∀ n, P2114510394489056024.a n = A250576 (n + 1)

end A250576

/-! ## A250576.P55416415585308077

`A077850(n+3)-A109110(n+1)`
-/

namespace A250576.P55416415585308077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077850 (n + 3) - A109110 (n + 1)

end

end A250576.P55416415585308077

namespace A250576

/-- `A077850(n+3)-A109110(n+1)` -/
def P55416415585308077.Spec : Prop :=
  ∀ n, P55416415585308077.a n = A250576 (n + 1)

end A250576

/-! ## A250576.P4213228298005780058

`A077850(n+3)-A052534(n+3)`
-/

namespace A250576.P4213228298005780058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077850 (n + 3) - A052534 (n + 3)

end

end A250576.P4213228298005780058

namespace A250576

/-- `A077850(n+3)-A052534(n+3)` -/
def P4213228298005780058.Spec : Prop :=
  ∀ n, P4213228298005780058.a n = A250576 (n + 1)

end A250576

/-!
# A250577: Number of (n+1) X (2+1) 0..1 arrays with nondecreasing max(x(i,j),x(i,j-1)) in the i direction and nondecreasing min(x(i,j),x(i-1,j)) in the j direction.

The programs for A250577, the canonical program `A250577.P4015062729286512326` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A250577 has offset 1).

The definition of A250577 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 272 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A250577.P4015062729286512326

`ogf((24-36x-26x^2+61x^3-24x^4)/(1-4x+3x^2+5x^3-8x^4+3x^5))`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A250577

/-- `ogf((24-36x-26x^2+61x^3-24x^4)/(1-4x+3x^2+5x^3-8x^4+3x^5))` -/
def P4015062729286512326.Spec : Prop :=
  ∀ n, P4015062729286512326.a n = A250577 (n + 1)

theorem P4015062729286512326.correct : P4015062729286512326.Spec := by
  intro n
  simp only [A250577, Nat.add_sub_cancel]

end A250577

/-! ## A250577.P4998826303156402945

`A250583(∑[n+1]+2)`
-/

namespace A250577.P4998826303156402945
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250583 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A250577.P4998826303156402945

namespace A250577

/-- `A250583(∑[n+1]+2)` -/
def P4998826303156402945.Spec : Prop :=
  ∀ n, P4998826303156402945.a n = A250577 (n + 1)

end A250577

/-!
# A250578: Number of (n+1) X (3+1) 0..1 arrays with nondecreasing max(x(i,j),x(i,j-1)) in the i direction and nondecreasing min(x(i,j),x(i-1,j)) in the j direction.

The programs for A250578, there is no canonical definition to state claims against.
-/

/-! ## A250578.P16176164986564867004

`A250583(A167614(n+1))`
-/

namespace A250578.P16176164986564867004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250583 (A167614 (n + 1)).toNat

end

end A250578.P16176164986564867004

/-!
# A250579: Number of (n+1) X (4+1) 0..1 arrays with nondecreasing max(x(i,j),x(i,j-1)) in the i direction and nondecreasing min(x(i,j),x(i-1,j)) in the j direction.

The programs for A250579, there is no canonical definition to state claims against.
-/

/-! ## A250579.P11646664925208697878

`A250583(A374004(n+1))`
-/

namespace A250579.P11646664925208697878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250583 (A374004 (n + 1)).toNat

end

end A250579.P11646664925208697878

/-!
# A250580: Number of (n+1)X(5+1) 0..1 arrays with nondecreasing max(x(i,j),x(i,j-1)) in the i direction and nondecreasing min(x(i,j),x(i-1,j)) in the j direction.

The programs for A250580, there is no canonical definition to state claims against.
-/

/-! ## A250580.P7041512363481326596

`A250583(A374005(n+1))`
-/

namespace A250580.P7041512363481326596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250583 (A374005 (n + 1)).toNat

end

end A250580.P7041512363481326596

/-!
# A250581: Number of (n+1)X(6+1) 0..1 arrays with nondecreasing max(x(i,j),x(i,j-1)) in the i direction and nondecreasing min(x(i,j),x(i-1,j)) in the j direction.

The programs for A250581, there is no canonical definition to state claims against.
-/

/-! ## A250581.P10500815334155556125

`A250583(∑[n+5]+16)`
-/

namespace A250581.P10500815334155556125
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250583 (∑ j ∈ Finset.range (n + 1), f1 j + 16)

end

end A250581.P10500815334155556125

/-!
# A250582: Number of (n+1)X(7+1) 0..1 arrays with nondecreasing max(x(i,j),x(i,j-1)) in the i direction and nondecreasing min(x(i,j),x(i-1,j)) in the j direction.

The programs for A250582, there is no canonical definition to state claims against.
-/

/-! ## A250582.P964892953859306850

`A250583(A374008(n+1))`
-/

namespace A250582.P964892953859306850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250583 (A374008 (n + 1)).toNat

end

end A250582.P964892953859306850

/-!
# A250583: T(n,k)=Number of (n+1)X(k+1) 0..1 arrays with nondecreasing max(x(i,j),x(i,j-1)) in the i direction and nondecreasing min(x(i,j),x(i-1,j)) in the j direction.

The programs for A250583, there is no canonical definition to state claims against.
-/

/-! ## A250583.P6780192557696759782

`A003056(A236035(n+1))-A317644(n)`
-/

namespace A250583.P6780192557696759782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A236035 (n + 1)).toNat - A317644 n

end

end A250583.P6780192557696759782

/-!
# A250584: Number of (n+1)X(n+1) 0..2 arrays with nondecreasing max(x(i,j),x(i,j-1)) in the i direction and nondecreasing min(x(i,j),x(i-1,j)) in the j direction.

The programs for A250584, there is no canonical definition to state claims against.
-/

/-! ## A250584.P1109903751502768436

`A250592(∑[4*n]+1)`
-/

namespace A250584.P1109903751502768436
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250592 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A250584.P1109903751502768436

/-! ## A250584.P720933550805043412

`record[A003982(n)*A250592(n+1)]`
-/

namespace A250584.P720933550805043412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A250592 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A250584.P720933550805043412

/-! ## A250584.P17591750471658064966

`record[gcd(A037012(n), A250592(n+1))]`
-/

namespace A250584.P17591750471658064966
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A037012 n) (A250592 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A250584.P17591750471658064966

/-!
# A250585: Number of (n+1) X (1+1) 0..2 arrays with nondecreasing max(x(i,j),x(i,j-1)) in the i direction and nondecreasing min(x(i,j),x(i-1,j)) in the j direction.

The programs for A250585, there is no canonical definition to state claims against.
-/

/-! ## A250585.P10693244748150433997

`A250592(∑[n]+1)`
-/

namespace A250585.P10693244748150433997
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250592 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A250585.P10693244748150433997

/-! ## A250585.P8028754690340501946

`record[A010054(n)*A250592(n+1)]`
-/

namespace A250585.P8028754690340501946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A250592 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A250585.P8028754690340501946

/-! ## A250585.P10890392664770486606

`record[A250592(n+1)/A007318(n)]`
-/

namespace A250585.P10890392664770486606
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A250592 (n + 1) : ℚ) / (A007318 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A250585.P10890392664770486606

/-! ## A250585.P18195276344676687062

`record[A250592(n+1)/A039755(n)]`
-/

namespace A250585.P18195276344676687062
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A250592 (n + 1) : ℚ) / (A039755 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A250585.P18195276344676687062

/-! ## A250585.P16091741217377464341

`record[A250592(n+1)/A109128(n)]`
-/

namespace A250585.P16091741217377464341
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A250592 (n + 1) : ℚ) / (A109128 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A250585.P16091741217377464341

/-!
# A250586: Number of (n+1)X(2+1) 0..2 arrays with nondecreasing max(x(i,j),x(i,j-1)) in the i direction and nondecreasing min(x(i,j),x(i-1,j)) in the j direction.

The programs for A250586, there is no canonical definition to state claims against.
-/

/-! ## A250586.P8232075748837572284

`A250592(∑[n+1]+2)`
-/

namespace A250586.P8232075748837572284
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250592 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A250586.P8232075748837572284

/-! ## A250586.P13219130445546258025

`record[A010054(n)*A250592(n+2)]`
-/

namespace A250586.P13219130445546258025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A250592 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A250586.P13219130445546258025

/-!
# A250587: Number of (n+1)X(3+1) 0..2 arrays with nondecreasing max(x(i,j),x(i,j-1)) in the i direction and nondecreasing min(x(i,j),x(i-1,j)) in the j direction.

The programs for A250587, there is no canonical definition to state claims against.
-/

/-! ## A250587.P15932359864840547460

`A250592(∑[n+2]+4)`
-/

namespace A250587.P15932359864840547460
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250592 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A250587.P15932359864840547460

/-!
# A250588: Number of (n+1)X(4+1) 0..2 arrays with nondecreasing max(x(i,j),x(i,j-1)) in the i direction and nondecreasing min(x(i,j),x(i-1,j)) in the j direction.

The programs for A250588, there is no canonical definition to state claims against.
-/

/-! ## A250588.P13797331460695547594

`A250592(A141214(n)+7)`
-/

namespace A250588.P13797331460695547594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250592 (A141214 n + 7).toNat

end

end A250588.P13797331460695547594

/-! ## A250588.P15609297049183961988

`A250592(A141214(n+1))`
-/

namespace A250588.P15609297049183961988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250592 (A141214 (n + 1)).toNat

end

end A250588.P15609297049183961988

/-!
# A250589: Number of (n+1)X(5+1) 0..2 arrays with nondecreasing max(x(i,j),x(i,j-1)) in the i direction and nondecreasing min(x(i,j),x(i-1,j)) in the j direction.

The programs for A250589, there is no canonical definition to state claims against.
-/

/-! ## A250589.P13093554150330491788

`A250592(A167499(n+3))`
-/

namespace A250589.P13093554150330491788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250592 (A167499 (n + 3)).toNat

end

end A250589.P13093554150330491788

/-! ## A250589.P12920469012847072959

`A250592(A374005(n+1))`
-/

namespace A250589.P12920469012847072959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250592 (A374005 (n + 1)).toNat

end

end A250589.P12920469012847072959

/-!
# A250590: Number of (n+1)X(6+1) 0..2 arrays with nondecreasing max(x(i,j),x(i,j-1)) in the i direction and nondecreasing min(x(i,j),x(i-1,j)) in the j direction.

The programs for A250590, there is no canonical definition to state claims against.
-/

/-! ## A250590.P2043964664736945824

`A250592(A000217(n+5)+6)`
-/

namespace A250590.P2043964664736945824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250592 (A000217 (n + 5) + 6).toNat

end

end A250590.P2043964664736945824

/-! ## A250590.P474284853530674023

`A250592(A374007(n+1))`
-/

namespace A250590.P474284853530674023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250592 (A374007 (n + 1)).toNat

end

end A250590.P474284853530674023

/-!
# A250591: Number of (n+1)X(7+1) 0..2 arrays with nondecreasing max(x(i,j),x(i,j-1)) in the i direction and nondecreasing min(x(i,j),x(i-1,j)) in the j direction.

The programs for A250591, there is no canonical definition to state claims against.
-/

/-! ## A250591.P14572133278603349912

`A250592(A027379(n+4)+10)`
-/

namespace A250591.P14572133278603349912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250592 (A027379 (n + 4) + 10).toNat

end

end A250591.P14572133278603349912

/-! ## A250591.P1117815777512153856

`A250592(A374008(n+1))`
-/

namespace A250591.P1117815777512153856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250592 (A374008 (n + 1)).toNat

end

end A250591.P1117815777512153856

/-!
# A250593: Number of (n+2) X (n+2) 0..2 arrays with nondecreasing sum of every three consecutive values in every row and column.

The programs for A250593, there is no canonical definition to state claims against.
-/

/-! ## A250593.P7180552182164826869

`A250601((n+1)²+n²)`
-/

namespace A250593.P7180552182164826869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250601 ((n + 1) ^ 2 + n ^ 2)

end

end A250593.P7180552182164826869

/-!
# A250594: Number of (n+2)X(1+2) 0..2 arrays with nondecreasing sum of every three consecutive values in every row and column.

The programs for A250594, there is no canonical definition to state claims against.
-/

/-! ## A250594.P5196818744283169333

`A251188(n+1)/A251187(n+1)*A251189(n+1)`
-/

namespace A250594.P5196818744283169333
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A251188 (n + 1) : ℚ) / (A251187 (n + 1) : ℚ) * (A251189 (n + 1) : ℚ)

end

end A250594.P5196818744283169333

/-! ## A250594.P6267629219938626189

`A251189(n+1)²/A251188(n+1)`
-/

namespace A250594.P6267629219938626189
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A251189 (n + 1) ^ 2 : ℚ) / (A251188 (n + 1) : ℚ)

end

end A250594.P6267629219938626189

/-! ## A250594.P8097226553588352526

`A251190(n+1)²/A251191(n+1)`
-/

namespace A250594.P8097226553588352526
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A251190 (n + 1) ^ 2 : ℚ) / (A251191 (n + 1) : ℚ)

end

end A250594.P8097226553588352526

/-! ## A250594.P14276288491163535069

`(A251191(n+1)/A250861(n+1))²*A251191(n+1)`
-/

namespace A250594.P14276288491163535069
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A251191 (n + 1) : ℚ) / (A250861 (n + 1) : ℚ)) ^ 2 * (A251191 (n + 1) : ℚ)

end

end A250594.P14276288491163535069

/-! ## A250594.P12943900008230941422

`sqrt(A251190(n+1)/A250861(n+1))*A251190(n+1)`
-/

namespace A250594.P12943900008230941422
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((A251190 (n + 1) : ℚ) / (A250861 (n + 1) : ℚ) : ℝ) * (A251190 (n + 1) : ℝ)

end

end A250594.P12943900008230941422

/-!
# A250595: Number of (n+2)X(2+2) 0..2 arrays with nondecreasing sum of every three consecutive values in every row and column.

The programs for A250595, there is no canonical definition to state claims against.
-/

/-! ## A250595.P15977933050329469210

`A250594(n+1)/A251189(n+1)*A251190(n+1)`
-/

namespace A250595.P15977933050329469210
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A250594 (n + 1) : ℚ) / (A251189 (n + 1) : ℚ) * (A251190 (n + 1) : ℚ)

end

end A250595.P15977933050329469210

/-! ## A250595.P8465504288075493168

`A251188(n+1)/A251187(n+1)*A251190(n+1)`
-/

namespace A250595.P8465504288075493168
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A251188 (n + 1) : ℚ) / (A251187 (n + 1) : ℚ) * (A251190 (n + 1) : ℚ)

end

end A250595.P8465504288075493168

/-! ## A250595.P9802046398349152879

`A251189(n+1)/A251188(n+1)*A251190(n+1)`
-/

namespace A250595.P9802046398349152879
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A251189 (n + 1) : ℚ) / (A251188 (n + 1) : ℚ) * (A251190 (n + 1) : ℚ)

end

end A250595.P9802046398349152879

/-! ## A250595.P10859151989470162156

`sqrt(A250594(n+1)*A250596(n+1))`
-/

namespace A250595.P10859151989470162156
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A250594 (n + 1) * A250596 (n + 1) : ℝ)

end

end A250595.P10859151989470162156

/-! ## A250595.P8389477106758070251

`A250596(n+1)²/A250597(n+1)`
-/

namespace A250595.P8389477106758070251
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A250596 (n + 1) ^ 2 : ℚ) / (A250597 (n + 1) : ℚ)

end

end A250595.P8389477106758070251

/-!
# A250596: Number of (n+2) X (3+2) 0..2 arrays with nondecreasing sum of every three consecutive values in every row and column.

The programs for A250596, there is no canonical definition to state claims against.
-/

/-! ## A250596.P11054111420217412220

`A250595(n+1)²/A250594(n+1)`
-/

namespace A250596.P11054111420217412220
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A250595 (n + 1) ^ 2 : ℚ) / (A250594 (n + 1) : ℚ)

end

end A250596.P11054111420217412220

/-! ## A250596.P8876869734298127056

`A251190(n+1)²/A251188(n+1)`
-/

namespace A250596.P8876869734298127056
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A251190 (n + 1) ^ 2 : ℚ) / (A251188 (n + 1) : ℚ)

end

end A250596.P8876869734298127056

/-! ## A250596.P12921075185550398726

`A250594(n+1)/A251188(n+1)*A251191(n+1)`
-/

namespace A250596.P12921075185550398726
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A250594 (n + 1) : ℚ) / (A251188 (n + 1) : ℚ) * (A251191 (n + 1) : ℚ)

end

end A250596.P12921075185550398726

/-! ## A250596.P1936885545441266248

`A251189(n+1)/A251187(n+1)*A251191(n+1)`
-/

namespace A250596.P1936885545441266248
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A251189 (n + 1) : ℚ) / (A251187 (n + 1) : ℚ) * (A251191 (n + 1) : ℚ)

end

end A250596.P1936885545441266248

/-! ## A250596.P7500455228094128767

`(A251190(n+1)/A251189(n+1))²*A250594(n+1)`
-/

namespace A250596.P7500455228094128767
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A251190 (n + 1) : ℚ) / (A251189 (n + 1) : ℚ)) ^ 2 * (A250594 (n + 1) : ℚ)

end

end A250596.P7500455228094128767

/-!
# A250597: Number of (n+2)X(4+2) 0..2 arrays with nondecreasing sum of every three consecutive values in every row and column.

The programs for A250597, there is no canonical definition to state claims against.
-/

/-! ## A250597.P830530824056303862

`A250596(n+1)²/A250595(n+1)`
-/

namespace A250597.P830530824056303862
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A250596 (n + 1) ^ 2 : ℚ) / (A250595 (n + 1) : ℚ)

end

end A250597.P830530824056303862

/-! ## A250597.P9347753719430772935

`A250595(n+1)/A250594(n+1)*A250596(n+1)`
-/

namespace A250597.P9347753719430772935
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A250595 (n + 1) : ℚ) / (A250594 (n + 1) : ℚ) * (A250596 (n + 1) : ℚ)

end

end A250597.P9347753719430772935

/-! ## A250597.P1504285228852863968

`A250594(n+1)*A250861(n+1)/A251187(n+1)`
-/

namespace A250597.P1504285228852863968
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A250594 (n + 1) * A250861 (n + 1) : ℚ) / (A251187 (n + 1) : ℚ)

end

end A250597.P1504285228852863968

/-! ## A250597.P10937804330578873437

`A251190(n+1)/A251187(n+1)*A251191(n+1)`
-/

namespace A250597.P10937804330578873437
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A251190 (n + 1) : ℚ) / (A251187 (n + 1) : ℚ) * (A251191 (n + 1) : ℚ)

end

end A250597.P10937804330578873437

/-! ## A250597.P10541618223674570234

`A250601(A167614(n+2)+1)`
-/

namespace A250597.P10541618223674570234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250601 (A167614 (n + 2) + 1).toNat

end

end A250597.P10541618223674570234

/-!
# A250598: Number of (n+2)X(5+2) 0..2 arrays with nondecreasing sum of every three consecutive values in every row and column.

The programs for A250598, there is no canonical definition to state claims against.
-/

/-! ## A250598.P17935529685070279866

`A250601(A374005(n+1))`
-/

namespace A250598.P17935529685070279866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250601 (A374005 (n + 1)).toNat

end

end A250598.P17935529685070279866

/-!
# A250599: Number of (n+2)X(6+2) 0..2 arrays with nondecreasing sum of every three consecutive values in every row and column.

The programs for A250599, there is no canonical definition to state claims against.
-/

/-! ## A250599.P1587432701779755432

`A250601(A374007(n+1))`
-/

namespace A250599.P1587432701779755432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250601 (A374007 (n + 1)).toNat

end

end A250599.P1587432701779755432

/-! ## A250599.P11187135187796447690

`A250598(n+1)²/A250597(n+1)`
-/

namespace A250599.P11187135187796447690
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A250598 (n + 1) ^ 2 : ℚ) / (A250597 (n + 1) : ℚ)

end

end A250599.P11187135187796447690

