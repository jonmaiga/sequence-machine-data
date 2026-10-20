import SequenceMachineLib
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
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C005
import Seq.B001.C007
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C004
import Seq.B003.C000
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C000
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C002
import Seq.B007.C000
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
import Seq.Opaque.C018
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022

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

/-! ## A250500.P2607229686758021963

`A250504(A141214(n)+7)`
-/

namespace A250500.P2607229686758021963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250504 (A141214 n + 7).toNat

end

end A250500.P2607229686758021963

/-! ## A250500.P4505086113207799860

`A250504(A052905(n)+9)`
-/

namespace A250500.P4505086113207799860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250504 (A052905 n + 9).toNat

end

end A250500.P4505086113207799860

/-! ## A250500.P6478100636435196545

`A250504(A055999(n)+10)`
-/

namespace A250500.P6478100636435196545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250504 (A055999 n + 10).toNat

end

end A250500.P6478100636435196545

/-! ## A250500.P16146894385287080233

`A250504(A167614(n+2)+1)`
-/

namespace A250500.P16146894385287080233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250504 (A167614 (n + 2) + 1).toNat

end

end A250500.P16146894385287080233

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

/-! ## A250501.P17345386136836541158

`A250504(A167499(n+3))`
-/

namespace A250501.P17345386136836541158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250504 (A167499 (n + 3)).toNat

end

end A250501.P17345386136836541158

/-! ## A250501.P7590007314128519499

`A250504(A155212(n)+13)`
-/

namespace A250501.P7590007314128519499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250504 (A155212 n + 13).toNat

end

end A250501.P7590007314128519499

/-! ## A250501.P2714105179480958913

`A250504(A056000(n)+15)`
-/

namespace A250501.P2714105179480958913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250504 (A056000 n + 15).toNat

end

end A250501.P2714105179480958913

/-! ## A250501.P16501993012988283008

`A250504(eq[6, A131818(n+1)])`
-/

namespace A250501.P16501993012988283008
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250504 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A250501.P16501993012988283008

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

/-! ## A250502.P7607204333391543323

`A250504(A167499(n+4)+1)`
-/

namespace A250502.P7607204333391543323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250504 (A167499 (n + 4) + 1).toNat

end

end A250502.P7607204333391543323

/-! ## A250502.P6864998867417520792

`A250504(A077169(n+6)+1)`
-/

namespace A250502.P6864998867417520792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250504 (A077169 (n + 6) + 1).toNat

end

end A250502.P6864998867417520792

/-! ## A250502.P13503845516263455353

`A250504(eq[7, A131818(n+1)])`
-/

namespace A250502.P13503845516263455353
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250504 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A250502.P13503845516263455353

/-! ## A250502.P9302861641440278199

`A250504(eq[5, A193592(n)])`
-/

namespace A250502.P9302861641440278199
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250504 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A250502.P9302861641440278199

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

/-! ## A250503.P6457595743403680415

`A250504(eq[8, A131818(n+1)])`
-/

namespace A250503.P6457595743403680415
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250504 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A250503.P6457595743403680415

/-! ## A250503.P12048094444174782155

`A250504(eq[6, A193592(n)])`
-/

namespace A250503.P12048094444174782155
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250504 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A250503.P12048094444174782155

/-! ## A250503.P16849813604510721839

`A250504(eq[7, A200370(n+1)])`
-/

namespace A250503.P16849813604510721839
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250504 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A250503.P16849813604510721839

/-!
# A250505: Number of (n+2)X(1+2) 0..2 arrays with nondecreasing medians of every three consecutive values in every row and column.

The programs for A250505, there is no canonical definition to state claims against.
-/

/-! ## A250505.P1526713578003302855

`A250134(n+1)^3`
-/

namespace A250505.P1526713578003302855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250134 (n + 1) ^ 3

end

end A250505.P1526713578003302855

/-! ## A250505.P1386826106172376290

`A250140(∑[n+2])^3`
-/

namespace A250505.P1386826106172376290
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250140 (∑ j ∈ Finset.range (n + 1), f1 j) ^ 3

end

end A250505.P1386826106172376290

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

/-! ## A250508.P15052102675936138901

`or(1, A250510(A000124(n)))`
-/

namespace A250508.P15052102675936138901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A250510 (A000124 n).toNat)

end

end A250508.P15052102675936138901

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

/-! ## A250511.P13985009066887419156

`A250519(A001844(n))+A056965(n)`
-/

namespace A250511.P13985009066887419156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250519 (A001844 n).toNat + A056965 n

end

end A250511.P13985009066887419156

/-! ## A250511.P13742690701441004478

`A250519(A001844(n))+A185043(n)`
-/

namespace A250511.P13742690701441004478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250519 (A001844 n).toNat + A185043 n

end

end A250511.P13742690701441004478

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

/-! ## A250513.P14136818678725940502

`A250519(A000096(n)+3)%A215551(n+3)`
-/

namespace A250513.P14136818678725940502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A250519 (A000096 n + 3).toNat) (A215551 (n + 3))

end

end A250513.P14136818678725940502

/-! ## A250513.P3018046676153170204

`A250519(A000096(n+1))+A019590(n+3)`
-/

namespace A250513.P3018046676153170204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250519 (A000096 (n + 1)).toNat + A019590 (n + 3)

end

end A250513.P3018046676153170204

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

/-! ## A250514.P2085279333075988862

`A036225(n)*A250519(A167614(n+1))`
-/

namespace A250514.P2085279333075988862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036225 n * A250519 (A167614 (n + 1)).toNat

end

end A250514.P2085279333075988862

/-! ## A250514.P863987338288349846

`A250519(A167614(n+1))+A070204(n+1)`
-/

namespace A250514.P863987338288349846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250519 (A167614 (n + 1)).toNat + A070204 (n + 1)

end

end A250514.P863987338288349846

/-! ## A250514.P17487896362781128046

`A250519(A167614(n+1))%A250515(n+1)`
-/

namespace A250514.P17487896362781128046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A250519 (A167614 (n + 1)).toNat) (A250515 (n + 1))

end

end A250514.P17487896362781128046

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

/-! ## A250515.P6678881220704395659

`A250519(A052905(n)+9)`
-/

namespace A250515.P6678881220704395659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250519 (A052905 n + 9).toNat

end

end A250515.P6678881220704395659

/-! ## A250515.P5242845426451004424

`A250519(A167614(n+2)+1)`
-/

namespace A250515.P5242845426451004424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250519 (A167614 (n + 2) + 1).toNat

end

end A250515.P5242845426451004424

/-! ## A250515.P12638239322301181867

`A250519(A166136(n+2)-2)`
-/

namespace A250515.P12638239322301181867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250519 (A166136 (n + 2) - 2).toNat

end

end A250515.P12638239322301181867

/-! ## A250515.P11704848518679942336

`A250519(A166136(n+1)+1+n)`
-/

namespace A250515.P11704848518679942336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250519 (A166136 (n + 1) + 1 + (n : ℤ)).toNat

end

end A250515.P11704848518679942336

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

/-! ## A250516.P15660841154383268603

`A250519(A166136(n+1)+2*(n+3))`
-/

namespace A250516.P15660841154383268603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250519 (A166136 (n + 1) + (2 * (n + 3) : ℤ)).toNat

end

end A250516.P15660841154383268603

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

/-! ## A250517.P3221326610413219057

`A250519(eq[6, A195079(n+1)])`
-/

namespace A250517.P3221326610413219057
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195079 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250519 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A250517.P3221326610413219057

/-!
# A250518: 

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

/-! ## A250520.P1959608046386012035

`A250527(A001844(n))+char[11]`
-/

namespace A250520.P1959608046386012035
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250527 (A001844 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A250520.P1959608046386012035

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

/-! ## A250521.P2642647824535511878

`A250527(A000096(n)+3)+char[23]`
-/

namespace A250521.P2642647824535511878
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  23

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250527 (A000096 n + 3).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A250521.P2642647824535511878

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

/-! ## A250521.P15490244959152496075

`A007318(C(2, n))*A250527(A000096(n)+3)`
-/

namespace A250521.P15490244959152496075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A250527 (A000096 n + 3).toNat

end

end A250521.P15490244959152496075

/-! ## A250521.P725926424922847293

`gcd(11, A007318(n))*A250527(A000096(n)+3)`
-/

namespace A250521.P725926424922847293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 11 (A007318 n) : ℤ) * A250527 (A000096 n + 3).toNat

end

end A250521.P725926424922847293

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

/-! ## A250522.P739956875549526913

`or(1, A250527(A167614(n+1)))`
-/

namespace A250522.P739956875549526913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A250527 (A167614 (n + 1)).toNat)

end

end A250522.P739956875549526913

/-! ## A250522.P16595758720111113388

`or(1, A250527(A034856(n+1)+5))`
-/

namespace A250522.P16595758720111113388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A250527 (A034856 (n + 1) + 5).toNat)

end

end A250522.P16595758720111113388

/-! ## A250522.P14515781671326826594

`A250527(A167614(n+1))%A250523(n+1)`
-/

namespace A250522.P14515781671326826594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A250527 (A167614 (n + 1)).toNat) (A250523 (n + 1))

end

end A250522.P14515781671326826594

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

/-! ## A250523.P3121062029732489951

`or(1, A250527(A052905(n)+9))`
-/

namespace A250523.P3121062029732489951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A250527 (A052905 n + 9).toNat)

end

end A250523.P3121062029732489951

/-! ## A250523.P9517539123523248059

`or(1, A250527(A055999(n)+10))`
-/

namespace A250523.P9517539123523248059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A250527 (A055999 n + 10).toNat)

end

end A250523.P9517539123523248059

/-! ## A250523.P5088384703521065827

`or(1, A250527(A055998(n+1)+7))`
-/

namespace A250523.P5088384703521065827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A250527 (A055998 (n + 1) + 7).toNat)

end

end A250523.P5088384703521065827

/-! ## A250523.P15939938118245951112

`A007318(C(2, n))*A250527(A055999(n)+10)`
-/

namespace A250523.P15939938118245951112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A250527 (A055999 n + 10).toNat

end

end A250523.P15939938118245951112

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

/-! ## A250524.P193035746673546921

`A250527(A155212(n)+13)+A000007(n+1)`
-/

namespace A250524.P193035746673546921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250527 (A155212 n + 13).toNat + A000007 (n + 1)

end

end A250524.P193035746673546921

/-! ## A250524.P5363707052387837905

`A250527(A167499(n+3))+A027641(2*n+3)`
-/

namespace A250524.P5363707052387837905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250527 (A167499 (n + 3)).toNat + A027641 (2 * n + 3)

end

end A250524.P5363707052387837905

/-! ## A250524.P6078498872696864187

`A250527(A167499(n+3))+A122284(n)-A089840(n)`
-/

namespace A250524.P6078498872696864187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250527 (A167499 (n + 3)).toNat + (A122284 n - A089840 n)

end

end A250524.P6078498872696864187

/-! ## A250524.P13957666268622878936

`A250527(A000217(n+5)-4)+char[22]`
-/

namespace A250524.P13957666268622878936
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  22

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250527 (A000217 (n + 5) - 4).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A250524.P13957666268622878936

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

/-! ## A250525.P4556846095528084944

`A250527(A056115(n)+21)`
-/

namespace A250525.P4556846095528084944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250527 (A056115 n + 21).toNat

end

end A250525.P4556846095528084944

/-! ## A250525.P12872215003399053905

`A250527(A000124(n+5)+5)`
-/

namespace A250525.P12872215003399053905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250527 (A000124 (n + 5) + 5).toNat

end

end A250525.P12872215003399053905

/-! ## A250525.P3657636034512878617

`A250527(A000096(n+4)+7)`
-/

namespace A250525.P3657636034512878617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250527 (A000096 (n + 4) + 7).toNat

end

end A250525.P3657636034512878617

/-! ## A250525.P7450659353229886612

`A250527(A000217(n+5)+6)`
-/

namespace A250525.P7450659353229886612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250527 (A000217 (n + 5) + 6).toNat

end

end A250525.P7450659353229886612

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

/-! ## A250526.P6649640504589291167

`A250527(A056119(n)+28)`
-/

namespace A250526.P6649640504589291167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250527 (A056119 n + 28).toNat

end

end A250526.P6649640504589291167

/-! ## A250526.P12267755626867152120

`A250527(eq[11, A066657(n)])`
-/

namespace A250526.P12267755626867152120
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250527 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A250526.P12267755626867152120

/-! ## A250526.P13338076137478545245

`A250527(A167614(n+5)+4)`
-/

namespace A250526.P13338076137478545245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250527 (A167614 (n + 5) + 4).toNat

end

end A250526.P13338076137478545245

/-! ## A250526.P11071620469409743365

`A250527(A000096(n+5)+8)`
-/

namespace A250526.P11071620469409743365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250527 (A000096 (n + 5) + 8).toNat

end

end A250526.P11071620469409743365

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

/-! ## A250528.P5042485703666080300

`lcm(2, A250536(A001844(n)))`
-/

namespace A250528.P5042485703666080300
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A250536 (A001844 n).toNat)

end

end A250528.P5042485703666080300

/-! ## A250528.P2125350208151135684

`A250536(A001844(n))*A261585(n)`
-/

namespace A250528.P2125350208151135684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250536 (A001844 n).toNat * A261585 n

end

end A250528.P2125350208151135684

/-! ## A250528.P13732010256655837676

`or(A000038(n), A250536(A001844(n)))`
-/

namespace A250528.P13732010256655837676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000038 n) (A250536 (A001844 n).toNat)

end

end A250528.P13732010256655837676

/-! ## A250528.P14766660006958516683

`A007318(A000096(n))*A250536(A001844(n))`
-/

namespace A250528.P14766660006958516683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A000096 n).toNat * A250536 (A001844 n).toNat

end

end A250528.P14766660006958516683

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

/-! ## A250530.P17650805045984080189

`A117910(A327187(n))*A250536(A000096(n)+3)`
-/

namespace A250530.P17650805045984080189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117910 (A327187 n).toNat * A250536 (A000096 n + 3).toNat

end

end A250530.P17650805045984080189

/-! ## A250530.P12664601712597452484

`A117910(A327188(n))*A250536(A000096(n)+3)`
-/

namespace A250530.P12664601712597452484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117910 (A327188 n).toNat * A250536 (A000096 n + 3).toNat

end

end A250530.P12664601712597452484

/-! ## A250530.P12499371116044579369

`A117910(A327193(n))*A250536(A000096(n)+3)`
-/

namespace A250530.P12499371116044579369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117910 (A327193 n).toNat * A250536 (A000096 n + 3).toNat

end

end A250530.P12499371116044579369

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

/-! ## A250531.P17183533108718111804

`lcm(A033999(n), A250536(A167614(n+1)))`
-/

namespace A250531.P17183533108718111804
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A250536 (A167614 (n + 1)).toNat)

end

end A250531.P17183533108718111804

/-! ## A250531.P14976726108093008261

`or(A000038(n), A250536(A167614(n+1)))`
-/

namespace A250531.P14976726108093008261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000038 n) (A250536 (A167614 (n + 1)).toNat)

end

end A250531.P14976726108093008261

/-! ## A250531.P3516042866908947210

`A250536(A167614(n+1))+A034530(n+1)`
-/

namespace A250531.P3516042866908947210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250536 (A167614 (n + 1)).toNat + A034530 (n + 1)

end

end A250531.P3516042866908947210

/-! ## A250531.P14436730897975260397

`A033999(2*n)*A250536(A167614(n+1))`
-/

namespace A250531.P14436730897975260397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (2 * n) * A250536 (A167614 (n + 1)).toNat

end

end A250531.P14436730897975260397

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

/-! ## A250532.P5356264048892215584

`A250536(A055999(n)+10)`
-/

namespace A250532.P5356264048892215584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250536 (A055999 n + 10).toNat

end

end A250532.P5356264048892215584

/-! ## A250532.P11247085149775743597

`A250536(A167614(n+2)+1)`
-/

namespace A250532.P11247085149775743597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250536 (A167614 (n + 2) + 1).toNat

end

end A250532.P11247085149775743597

/-! ## A250532.P15084876136634542231

`A250536(eq[5, A131818(n+1)])`
-/

namespace A250532.P15084876136634542231
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250536 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A250532.P15084876136634542231

/-! ## A250532.P6517625521882691083

`A250536(A374004(n+1))`
-/

namespace A250532.P6517625521882691083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250536 (A374004 (n + 1)).toNat

end

end A250532.P6517625521882691083

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

/-! ## A250533.P12412054572931418665

`A250536(A056000(n)+15)`
-/

namespace A250533.P12412054572931418665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250536 (A056000 n + 15).toNat

end

end A250533.P12412054572931418665

/-! ## A250533.P12245712084463694656

`A250536(eq[6, A131818(n+1)])`
-/

namespace A250533.P12245712084463694656
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250536 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A250533.P12245712084463694656

/-! ## A250533.P4010047115837193582

`A250536(A374005(n+1))`
-/

namespace A250533.P4010047115837193582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250536 (A374005 (n + 1)).toNat

end

end A250533.P4010047115837193582

/-! ## A250533.P4320458760961867069

`A250536(A046691(n+3))`
-/

namespace A250533.P4320458760961867069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250536 (A046691 (n + 3)).toNat

end

end A250533.P4320458760961867069

/-!
# A250534: Number of (n+1)X(6+1) 0..3 arrays with nondecreasing max(x(i,j),x(i,j-1)) in the i direction and nondecreasing min(x(i,j),x(i-1,j)) in the j direction.

The programs for A250534, there is no canonical definition to state claims against.
-/

/-! ## A250534.P7095515011572484260

`A250536(A167499(n+4)+1)`
-/

namespace A250534.P7095515011572484260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250536 (A167499 (n + 4) + 1).toNat

end

end A250534.P7095515011572484260

/-! ## A250534.P8577091506369646947

`A250536(eq[7, A131818(n+1)])`
-/

namespace A250534.P8577091506369646947
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250536 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A250534.P8577091506369646947

/-! ## A250534.P7250512734349883223

`A250536(A374007(n+1))`
-/

namespace A250534.P7250512734349883223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250536 (A374007 (n + 1)).toNat

end

end A250534.P7250512734349883223

/-! ## A250534.P3564008253468296174

`A250536(eq[5, A193592(n)])`
-/

namespace A250534.P3564008253468296174
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250536 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A250534.P3564008253468296174

/-! ## A250534.P6065850686009867667

`A250536(eq[6, A200370(n+1)])`
-/

namespace A250534.P6065850686009867667
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250536 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A250534.P6065850686009867667

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

/-! ## A250535.P12931700323820033707

`A250536(A374008(n+1))`
-/

namespace A250535.P12931700323820033707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250536 (A374008 (n + 1)).toNat

end

end A250535.P12931700323820033707

/-! ## A250535.P16826488055503521307

`A250536(A055999(n+4))`
-/

namespace A250535.P16826488055503521307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250536 (A055999 (n + 4)).toNat

end

end A250535.P16826488055503521307

/-! ## A250535.P13019110012278517070

`A250536(eq[6, A193592(n)])`
-/

namespace A250535.P13019110012278517070
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250536 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A250535.P13019110012278517070

/-! ## A250535.P12271040150485094331

`A250536(eq[7, A200370(n+1)])`
-/

namespace A250535.P12271040150485094331
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250536 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A250535.P12271040150485094331

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

/-! ## A250537.P17111293295069856607

`A250544(A001844(n))+char[8]`
-/

namespace A250537.P17111293295069856607
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250544 (A001844 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A250537.P17111293295069856607

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

/-! ## A250539.P7849463315563697704

`A250544(A167614(n+1))+char[16]`
-/

namespace A250539.P7849463315563697704
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250544 (A167614 (n + 1)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A250539.P7849463315563697704

/-! ## A250539.P4339979456179390039

`A250544(A166136(n+1)-3)+char[15]`
-/

namespace A250539.P4339979456179390039
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  15

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250544 (A166136 (n + 1) - 3).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A250539.P4339979456179390039

/-! ## A250539.P4765787293443183713

`A250544(A034856(n+1)+5)+char[18]`
-/

namespace A250539.P4765787293443183713
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  18

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250544 (A034856 (n + 1) + 5).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A250539.P4765787293443183713

/-! ## A250539.P6583041892108107158

`A256974(n)+A250544(A167614(n+1))`
-/

namespace A250539.P6583041892108107158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256974 n + A250544 (A167614 (n + 1)).toNat

end

end A250539.P6583041892108107158

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

/-! ## A250540.P10629493343412392737

`A250544(A374004(n+1))*A322356(n+1)`
-/

namespace A250540.P10629493343412392737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250544 (A374004 (n + 1)).toNat * A322356 (n + 1)

end

end A250540.P10629493343412392737

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

/-! ## A250541.P5927354620901607773

`A250544(A167499(n+3))`
-/

namespace A250541.P5927354620901607773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250544 (A167499 (n + 3)).toNat

end

end A250541.P5927354620901607773

/-! ## A250541.P5737221978178370612

`A250544(A155212(n)+13)`
-/

namespace A250541.P5737221978178370612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250544 (A155212 n + 13).toNat

end

end A250541.P5737221978178370612

/-! ## A250541.P12034534380194505476

`A250544(A056000(n)+15)`
-/

namespace A250541.P12034534380194505476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250544 (A056000 n + 15).toNat

end

end A250541.P12034534380194505476

/-! ## A250541.P10534024640928025956

`A250544(eq[7, A066657(n)])`
-/

namespace A250541.P10534024640928025956
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250544 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A250541.P10534024640928025956

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

/-! ## A250542.P9964766169544449984

`A250544(A166136(n+4))`
-/

namespace A250542.P9964766169544449984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250544 (A166136 (n + 4)).toNat

end

end A250542.P9964766169544449984

/-! ## A250542.P16391388450620290391

`A250544(A056115(n)+21)`
-/

namespace A250542.P16391388450620290391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250544 (A056115 n + 21).toNat

end

end A250542.P16391388450620290391

/-! ## A250542.P9971922382203611439

`A250544(Δ[A255994(n+2)])`
-/

namespace A250542.P9971922382203611439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255994 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250544 (f1 (n + 1) - f1 n).toNat

end

end A250542.P9971922382203611439

/-! ## A250542.P12890576677948646508

`A250544(Δ[A264443(n)]+10)`
-/

namespace A250542.P12890576677948646508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250544 (f1 (n + 1) - f1 n + 10).toNat

end

end A250542.P12890576677948646508

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

/-! ## A250543.P8170570019229582295

`A250544(A302537(n)+27)`
-/

namespace A250543.P8170570019229582295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250544 (A302537 n + 27).toNat

end

end A250543.P8170570019229582295

/-! ## A250543.P7942958833107957139

`A250544(A056119(n)+28)`
-/

namespace A250543.P7942958833107957139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250544 (A056119 n + 28).toNat

end

end A250543.P7942958833107957139

/-! ## A250543.P16325069920796659412

`A250544(eq[11, A066657(n)])`
-/

namespace A250543.P16325069920796659412
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250544 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A250543.P16325069920796659412

/-! ## A250543.P3941303128834511426

`A250544(A166136(n+5)+1)`
-/

namespace A250543.P3941303128834511426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250544 (A166136 (n + 5) + 1).toNat

end

end A250543.P3941303128834511426

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

/-! ## A250550.P8101466456986479300

`(n+1)*A294515(n)`
-/

namespace A250550.P8101466456986479300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A294515 n

end

end A250550.P8101466456986479300

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

/-! ## A250552.P18061876676606303930

`A061395(p?[A247797(n+1)])`
-/

namespace A250552.P18061876676606303930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247797 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A250552.P18061876676606303930

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

/-! ## A250552.P947046226095217077

`A156061(lcm(2, A247797(n+1)))`
-/

namespace A250552.P947046226095217077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156061 (Int.lcm 2 (A247797 (n + 1)))

end

end A250552.P947046226095217077

/-! ## A250552.P16682463438954892430

`A056172(A247797(n+1)+A247797(n+1)+1)`
-/

namespace A250552.P16682463438954892430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056172 (A247797 (n + 1) + (A247797 (n + 1) + 1)).toNat

end

end A250552.P16682463438954892430

/-!
# A250554: Number of length n+2 0..1 arrays with the sum of second differences multiplied by some arrangement of +-1 equal to zero.

The programs for A250554, the canonical program `A250554.P11660294058464506872` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A250554 has offset 1).

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

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A250554

/-- `2*(∑[2^n]+n%2)` -/
def P11660294058464506872.Spec : Prop :=
  ∀ n, (P11660294058464506872.a n : ℤ) = A250554 (n + 1)

theorem P11660294058464506872.correct : P11660294058464506872.Spec := by
  intro n
  simp only [A250554, Nat.add_sub_cancel]

end A250554

/-! ## A250554.P9372471542895166490

`xor(n, ∑[2^(n+1)])+n`
-/

namespace A250554.P9372471542895166490
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (∑ j ∈ Finset.range (n + 1), f1 j) + n

end

end A250554.P9372471542895166490

namespace A250554

/-- `xor(n, ∑[2^(n+1)])+n` -/
def P9372471542895166490.Spec : Prop :=
  ∀ n, (P9372471542895166490.a n : ℤ) = A250554 (n + 1)

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

/-! ## A250554.P7477017362956398131

`record[A062510(A008611(n))-1]`
-/

namespace A250554.P7477017362956398131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062510 (A008611 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A250554.P7477017362956398131

namespace A250554

/-- `record[A062510(A008611(n))-1]` -/
def P7477017362956398131.Spec : Prop :=
  ∀ n, P7477017362956398131.a n = A250554 (n + 1)

end A250554

/-! ## A250554.P9425945815479973462

`record[A062510(A008612(n))-1]`
-/

namespace A250554.P9425945815479973462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062510 (A008612 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A250554.P9425945815479973462

namespace A250554

/-- `record[A062510(A008612(n))-1]` -/
def P9425945815479973462.Spec : Prop :=
  ∀ n, P9425945815479973462.a n = A250554 (n + 1)

end A250554

/-! ## A250554.P3379055106348252356

`record[A062510(A008624(n))-1]`
-/

namespace A250554.P3379055106348252356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062510 (A008624 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A250554.P3379055106348252356

namespace A250554

/-- `record[A062510(A008624(n))-1]` -/
def P3379055106348252356.Spec : Prop :=
  ∀ n, P3379055106348252356.a n = A250554 (n + 1)

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

/-! ## A250555.P6493299524904989677

`or(1, A250561(A000096(n+1)))`
-/

namespace A250555.P6493299524904989677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A250561 (A000096 (n + 1)).toNat)

end

end A250555.P6493299524904989677

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

/-! ## A250555.P5904383088323320632

`A250561(A000096(n+1))%A000108(n+4)`
-/

namespace A250555.P5904383088323320632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A250561 (A000096 (n + 1)).toNat) (A000108 (n + 4))

end

end A250555.P5904383088323320632

/-! ## A250555.P6605607110176406714

`A007318(C(2, n))*A250561(A000096(n+1))`
-/

namespace A250555.P6605607110176406714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A250561 (A000096 (n + 1)).toNat

end

end A250555.P6605607110176406714

/-!
# A250556: Number of length n+2 0..3 arrays with the sum of second differences multiplied by some arrangement of +-1 equal to zero.

The programs for A250556, there is no canonical definition to state claims against.
-/

/-! ## A250556.P2154213481356919194

`A250561(∑[n+3]+1)`
-/

namespace A250556.P2154213481356919194
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250561 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A250556.P2154213481356919194

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

/-! ## A250556.P15358542264296110769

`lcm(2, A250561(Δ[A008778(n)]))`
-/

namespace A250556.P15358542264296110769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A250561 (f1 (n + 1) - f1 n).toNat)

end

end A250556.P15358542264296110769

/-! ## A250556.P18126013809239194017

`and(-2, A250561(A055999(n)+4))`
-/

namespace A250556.P18126013809239194017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-2) (A250561 (A055999 n + 4).toNat)

end

end A250556.P18126013809239194017

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

/-! ## A250557.P2560746679451775706

`or(1, A250561(A141214(n+1)))`
-/

namespace A250557.P2560746679451775706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A250561 (A141214 (n + 1)).toNat)

end

end A250557.P2560746679451775706

/-! ## A250557.P11354052113279601687

`A250561(A027379(n+2))+A067157(n)`
-/

namespace A250557.P11354052113279601687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250561 (A027379 (n + 2)).toNat + A067157 (n + 10)

end

end A250557.P11354052113279601687

/-! ## A250557.P16410327783891443412

`Δ[A055645(n)]*A250561(A155212(n)+5)`
-/

namespace A250557.P16410327783891443412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055645 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A250561 (A155212 n + 5).toNat

end

end A250557.P16410327783891443412

/-! ## A250557.P12675858181365172887

`A038500(3*n+5)*A250561(A027379(n+2))`
-/

namespace A250557.P12675858181365172887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038500 (3 * n + 5) * A250561 (A027379 (n + 2)).toNat

end

end A250557.P12675858181365172887

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

/-! ## A250558.P14557123080056143358

`A250561(A056115(n)+11)`
-/

namespace A250558.P14557123080056143358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250561 (A056115 n + 11).toNat

end

end A250558.P14557123080056143358

/-! ## A250558.P9731617834031205429

`A250561(eq[2, A092921(n)])`
-/

namespace A250558.P9731617834031205429
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092921 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250561 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A250558.P9731617834031205429

/-! ## A250558.P14812212129267818567

`A250561(eq[3, A152157(n)])`
-/

namespace A250558.P14812212129267818567
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152157 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250561 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A250558.P14812212129267818567

/-! ## A250558.P9464872676724356168

`A250561(eq[4, A193592(n)])`
-/

namespace A250558.P9464872676724356168
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250561 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A250558.P9464872676724356168

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

/-! ## A250559.P3370927766633440440

`A250561(A056119(n)+16)`
-/

namespace A250559.P3370927766633440440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250561 (A056119 n + 16).toNat

end

end A250559.P3370927766633440440

/-! ## A250559.P10728272291305720285

`A250561(eq[3, A219347(n)])`
-/

namespace A250559.P10728272291305720285
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250561 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A250559.P10728272291305720285

/-! ## A250559.P2664172840717846694

`A250561(eq[5, A193592(n)])`
-/

namespace A250559.P2664172840717846694
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250561 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A250559.P2664172840717846694

/-! ## A250559.P4710590355179763855

`A250561(eq[8, A258709(n)])`
-/

namespace A250559.P4710590355179763855
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258709 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250561 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A250559.P4710590355179763855

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

/-! ## A250560.P4959542923315635893

`A250561(eq[4, A219347(n)])`
-/

namespace A250560.P4959542923315635893
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250561 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A250560.P4959542923315635893

/-! ## A250560.P14084245717908530862

`A250561(eq[5, A332954(n)])`
-/

namespace A250560.P14084245717908530862
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332954 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250561 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A250560.P14084245717908530862

/-! ## A250560.P9328270709448446485

`A250561(eq[6, A193592(n)])`
-/

namespace A250560.P9328270709448446485
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250561 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A250560.P9328270709448446485

/-! ## A250560.P4441695561114638148

`A250561(A155212(n+3)+2)`
-/

namespace A250560.P4441695561114638148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250561 (A155212 (n + 3) + 2).toNat

end

end A250560.P4441695561114638148

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

/-! ## A250562.P1149981809192167375

`A250561(A167614(n+1))+char[17]`
-/

namespace A250562.P1149981809192167375
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  17

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250561 (A167614 (n + 1)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A250562.P1149981809192167375

/-! ## A250562.P5514867161495093408

`A294889(n+1)+A250561(A167614(n+1))`
-/

namespace A250562.P5514867161495093408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294889 (n + 1) + A250561 (A167614 (n + 1)).toNat

end

end A250562.P5514867161495093408

/-! ## A250562.P420545708317342384

`A250561(A167614(n+1))%A103793(n+1)`
-/

namespace A250562.P420545708317342384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A250561 (A167614 (n + 1)).toNat) (A103793 (n + 1))

end

end A250562.P420545708317342384

/-! ## A250562.P1525240488524344039

`∑{d}[A250561(A167614(n+1)), A000010(#)]`
-/

namespace A250562.P1525240488524344039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250561 (A167614 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A250562.P1525240488524344039

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

/-! ## A250563.P3756087970756721291

`A250561(A052905(n)+9)+char[18]`
-/

namespace A250563.P3756087970756721291
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  18

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250561 (A052905 n + 9).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A250563.P3756087970756721291

/-! ## A250563.P2990733728045502573

`and(-3, A250561(A167614(n+2)+1))`
-/

namespace A250563.P2990733728045502573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-3) (A250561 (A167614 (n + 2) + 1).toNat)

end

end A250563.P2990733728045502573

/-! ## A250563.P10472144513039915277

`A250561(A167614(n+2)+1)%A000108(n+7)`
-/

namespace A250563.P10472144513039915277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A250561 (A167614 (n + 2) + 1).toNat) (A000108 (n + 7))

end

end A250563.P10472144513039915277

/-! ## A250563.P9870447190992175361

`A007318(C(2, n))*A250561(A167614(n+2)+1)`
-/

namespace A250563.P9870447190992175361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A250561 (A167614 (n + 2) + 1).toNat

end

end A250563.P9870447190992175361

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

/-! ## A250564.P2820025957239187747

`A250561(A077169(n+5))`
-/

namespace A250564.P2820025957239187747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250561 (A077169 (n + 5)).toNat

end

end A250564.P2820025957239187747

/-! ## A250564.P10010163016697399243

`A250561(A155212(n)+13)`
-/

namespace A250564.P10010163016697399243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250561 (A155212 n + 13).toNat

end

end A250564.P10010163016697399243

/-! ## A250564.P3546145570989508539

`A250561(A056000(n)+15)`
-/

namespace A250564.P3546145570989508539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250561 (A056000 n + 15).toNat

end

end A250564.P3546145570989508539

/-! ## A250564.P4687590818673750220

`A250561(eq[7, A066657(n)])`
-/

namespace A250564.P4687590818673750220
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250561 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A250564.P4687590818673750220

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

/-! ## A250565.P4641901220356495672

`A250561(A167499(n+4)+1)`
-/

namespace A250565.P4641901220356495672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250561 (A167499 (n + 4) + 1).toNat

end

end A250565.P4641901220356495672

/-! ## A250565.P10456505790618530001

`A250561(A167614(n+4)+3)`
-/

namespace A250565.P10456505790618530001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250561 (A167614 (n + 4) + 3).toNat

end

end A250565.P10456505790618530001

/-! ## A250565.P6300162616649105713

`A250561(A000124(n+5)+5)`
-/

namespace A250565.P6300162616649105713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250561 (A000124 (n + 5) + 5).toNat

end

end A250565.P6300162616649105713

/-! ## A250565.P3688628846324551217

`A250561(A000096(n+4)+7)`
-/

namespace A250565.P3688628846324551217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250561 (A000096 (n + 4) + 7).toNat

end

end A250565.P3688628846324551217

/-!
# A250566: Number of length 7+2 0..n arrays with the sum of second differences multiplied by some arrangement of +-1 equal to zero.

The programs for A250566, there is no canonical definition to state claims against.
-/

/-! ## A250566.P161421943620847815

`A250561(A056119(n)+28)`
-/

namespace A250566.P161421943620847815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250561 (A056119 n + 28).toNat

end

end A250566.P161421943620847815

/-! ## A250566.P6997724086782466432

`A250561(eq[11, A066657(n)])`
-/

namespace A250566.P6997724086782466432
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250561 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A250566.P6997724086782466432

/-! ## A250566.P5797688545122938006

`A250561(A167499(n+5)+2)`
-/

namespace A250566.P5797688545122938006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250561 (A167499 (n + 5) + 2).toNat

end

end A250566.P5797688545122938006

/-! ## A250566.P7774679926480578204

`A250561(A167614(n+5)+4)`
-/

namespace A250566.P7774679926480578204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250561 (A167614 (n + 5) + 4).toNat

end

end A250566.P7774679926480578204

/-! ## A250566.P11991004334398945673

`A250561(eq[8, A131818(n+1)])`
-/

namespace A250566.P11991004334398945673
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250561 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A250566.P11991004334398945673

/-!
# A250567: Number of (n+2)X(n+2) 0..1 arrays with nondecreasing maximum of every three consecutive values in every row and column.

The programs for A250567, there is no canonical definition to state claims against.
-/

/-! ## A250567.P1317195739705538074

`A250574((n+1)²+n²)`
-/

namespace A250567.P1317195739705538074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250574 ((n + 1) ^ 2 + n ^ 2)

end

end A250567.P1317195739705538074

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

/-! ## A250568.P16490168127882579942

`A250574(A000096(n+1))+A000035(2*n)`
-/

namespace A250568.P16490168127882579942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250574 (A000096 (n + 1)).toNat + A000035 (2 * n)

end

end A250568.P16490168127882579942

/-! ## A250568.P2458456544075498697

`A033999(2*n)*A250574(A000096(n+1))`
-/

namespace A250568.P2458456544075498697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (2 * n) * A250574 (A000096 (n + 1)).toNat

end

end A250568.P2458456544075498697

/-! ## A250568.P17905261314174318386

`A250574(A000096(n+1))+A035363(2*n+1)`
-/

namespace A250568.P17905261314174318386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250574 (A000096 (n + 1)).toNat + A035363 (2 * n + 1)

end

end A250568.P17905261314174318386

/-! ## A250568.P15117598479305531491

`A250574(A000096(n+1))+A248908(2*(n+1))`
-/

namespace A250568.P15117598479305531491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250574 (A000096 (n + 1)).toNat + A248908 (2 * (n + 1))

end

end A250568.P15117598479305531491

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

/-! ## A250569.P10938162054074679380

`lcm(ceil(acot(n)), A250574(A167614(n+1)))`
-/

namespace A250569.P10938162054074679380
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ⌈SequenceMachineLib.acot (n : ℝ)⌉ (A250574 (A167614 (n + 1)).toNat)

end

end A250569.P10938162054074679380

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

/-! ## A250569.P4039154167373459383

`lcm(A035214(n), A250574(A167614(n+1)))`
-/

namespace A250569.P4039154167373459383
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A035214 n) (A250574 (A167614 (n + 1)).toNat)

end

end A250569.P4039154167373459383

/-! ## A250569.P1823200877157300753

`A250574(A167614(n+1))%A250570(n+1)`
-/

namespace A250569.P1823200877157300753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A250574 (A167614 (n + 1)).toNat) (A250570 (n + 1))

end

end A250569.P1823200877157300753

/-!
# A250570: Number of (n+2) X (4+2) 0..1 arrays with nondecreasing maximum of every three consecutive values in every row and column.

The programs for A250570, there is no canonical definition to state claims against.
-/

/-! ## A250570.P5440414026277754297

`A250574(A052905(n)+9)`
-/

namespace A250570.P5440414026277754297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250574 (A052905 n + 9).toNat

end

end A250570.P5440414026277754297

/-! ## A250570.P12720511748088113491

`A250574(A055999(n)+10)`
-/

namespace A250570.P12720511748088113491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250574 (A055999 n + 10).toNat

end

end A250570.P12720511748088113491

/-! ## A250570.P12746557171719373742

`A250574(A167614(n+2)+1)`
-/

namespace A250570.P12746557171719373742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250574 (A167614 (n + 2) + 1).toNat

end

end A250570.P12746557171719373742

/-! ## A250570.P4398181085451561800

`A250574(A166136(n+2)-2)`
-/

namespace A250570.P4398181085451561800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250574 (A166136 (n + 2) - 2).toNat

end

end A250570.P4398181085451561800

/-! ## A250570.P17762237511244675894

`A250574(A166136(n+1)+1+n)`
-/

namespace A250570.P17762237511244675894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250574 (A166136 (n + 1) + 1 + (n : ℤ)).toNat

end

end A250570.P17762237511244675894

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

/-! ## A250571.P5504265604024138191

`A250574(Δ[A023545(n+1)])`
-/

namespace A250571.P5504265604024138191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250574 (f1 (n + 1) - f1 n).toNat

end

end A250571.P5504265604024138191

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

/-! ## A250572.P3697605933320126826

`A250574(Δ[A023545(n+2)]-1)`
-/

namespace A250572.P3697605933320126826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250574 (f1 (n + 1) - f1 n - 1).toNat

end

end A250572.P3697605933320126826

/-!
# A250575: Number of (n+1) X (n+1) 0..1 arrays with nondecreasing max(x(i,j),x(i,j-1)) in the i direction and nondecreasing min(x(i,j),x(i-1,j)) in the j direction.

The programs for A250575, there is no canonical definition to state claims against.
-/

/-! ## A250575.P10449947906131820692

`A250583((n+1)²+n²)`
-/

namespace A250575.P10449947906131820692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250583 ((n + 1) ^ 2 + n ^ 2)

end

end A250575.P10449947906131820692

/-! ## A250575.P3486607000935565465

`lcm(2, A250583(∑[4*n]+1))`
-/

namespace A250575.P3486607000935565465
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A250583 (∑ j ∈ Finset.range (n + 1), f1 j + 1))

end

end A250575.P3486607000935565465

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

/-! ## A250575.P8110000717439442579

`A250583(∑[4*n]+1)+A000007(n+1)`
-/

namespace A250575.P8110000717439442579
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250583 (∑ j ∈ Finset.range (n + 1), f1 j + 1) + A000007 (n + 1)

end

end A250575.P8110000717439442579

/-! ## A250575.P11242425900798344687

`A002061(n)%2*A250583(∑[4*n]+1)`
-/

namespace A250575.P11242425900798344687
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002061 n) 2 * A250583 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A250575.P11242425900798344687

/-!
# A250576: Number of (n+1) X (1+1) 0..1 arrays with nondecreasing max(x(i,j),x(i,j-1)) in the i direction and nondecreasing min(x(i,j),x(i-1,j)) in the j direction.

The programs for A250576, the canonical program `A250576.P15965323562905096149` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A250576 has offset 1).

The definition of A250576 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 282 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A250576.P15965323562905096149

`3*a(n-1)-a(n-2)-2*a(n-3)+a(n-4)` with `a(0)=10, a(1)=24, a(2)=55, a(3)=125`

The canonical program, it is in `Seq.B000.C031`.
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

/-! ## A250576.P16468250855528350919

`A006054(n+5)-1`
-/

namespace A250576.P16468250855528350919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006054 (n + 5) - 1

end

end A250576.P16468250855528350919

namespace A250576

/-- `A006054(n+5)-1` -/
def P16468250855528350919.Spec : Prop :=
  ∀ n, P16468250855528350919.a n = A250576 (n + 1)

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

The programs for A250577, there is no canonical definition to state claims against.
-/

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

/-! ## A250577.P17504655078412982970

`A250583(A000096(n)+3)%A250808(n+1)`
-/

namespace A250577.P17504655078412982970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A250583 (A000096 n + 3).toNat) (A250808 (n + 1))

end

end A250577.P17504655078412982970

/-! ## A250577.P11461730268100787092

`A247478(n+1)%2*A250583(A000096(n)+3)`
-/

namespace A250577.P11461730268100787092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A247478 (n + 1)) 2 * A250583 (A000096 n + 3).toNat

end

end A250577.P11461730268100787092

/-! ## A250577.P1968538703990182477

`A007318(C(2, n+2))*A250583(A000096(n)+3)`
-/

namespace A250577.P1968538703990182477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 (n + 2)) * A250583 (A000096 n + 3).toNat

end

end A250577.P1968538703990182477

/-! ## A250577.P17834978511036332615

`A007318(A200650(n+2))*A250583(A000096(n)+3)`
-/

namespace A250577.P17834978511036332615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A200650 (n + 2)).toNat * A250583 (A000096 n + 3).toNat

end

end A250577.P17834978511036332615

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

/-! ## A250578.P8217532928237199329

`A250583(A373663(n+1))`
-/

namespace A250578.P8217532928237199329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250583 (A373663 (n + 1)).toNat

end

end A250578.P8217532928237199329

/-! ## A250578.P664898879561254807

`A250583(A055998(n)+6)`
-/

namespace A250578.P664898879561254807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250583 (A055998 n + 6).toNat

end

end A250578.P664898879561254807

/-! ## A250578.P15739976875927801588

`A250583(A046691(n)+7)`
-/

namespace A250578.P15739976875927801588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250583 (A046691 n + 7).toNat

end

end A250578.P15739976875927801588

/-! ## A250578.P5694920237165007362

`A250583(A167499(n)+n)`
-/

namespace A250578.P5694920237165007362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250583 (A167499 n + (n : ℤ)).toNat

end

end A250578.P5694920237165007362

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

/-! ## A250579.P668776336088684200

`A250583(A145018(n+4))`
-/

namespace A250579.P668776336088684200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250583 (A145018 (n + 4)).toNat

end

end A250579.P668776336088684200

/-! ## A250579.P10498444370182761297

`A250583(A052905(n)+9)`
-/

namespace A250579.P10498444370182761297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250583 (A052905 n + 9).toNat

end

end A250579.P10498444370182761297

/-! ## A250579.P880437447735668888

`A250583(A055999(n)+10)`
-/

namespace A250579.P880437447735668888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250583 (A055999 n + 10).toNat

end

end A250579.P880437447735668888

/-! ## A250579.P1231131304031235886

`A250583(A167614(n+2)+1)`
-/

namespace A250579.P1231131304031235886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250583 (A167614 (n + 2) + 1).toNat

end

end A250579.P1231131304031235886

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

/-! ## A250580.P1150241269399898138

`A250583(A167499(n+3))`
-/

namespace A250580.P1150241269399898138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250583 (A167499 (n + 3)).toNat

end

end A250580.P1150241269399898138

/-! ## A250580.P6875971078098711698

`A250583(A000124(n+5)-(n+1))`
-/

namespace A250580.P6875971078098711698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250583 (A000124 (n + 5) - (n + 1 : ℤ)).toNat

end

end A250580.P6875971078098711698

/-! ## A250580.P10047901526831120327

`A250583(Δ[A023545(n+1)])`
-/

namespace A250580.P10047901526831120327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250583 (f1 (n + 1) - f1 n).toNat

end

end A250580.P10047901526831120327

/-! ## A250580.P9904567291565093555

`A250583(A000217(n+5)-4)`
-/

namespace A250580.P9904567291565093555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250583 (A000217 (n + 5) - 4).toNat

end

end A250580.P9904567291565093555

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

/-! ## A250581.P8185784072781593460

`or(A000007(n), A250583(A167499(n+4)+1))`
-/

namespace A250581.P8185784072781593460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A250583 (A167499 (n + 4) + 1).toNat)

end

end A250581.P8185784072781593460

/-! ## A250581.P5573507056136792100

`or(A000038(n), A250583(A000217(n+5)+6))`
-/

namespace A250581.P5573507056136792100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000038 n) (A250583 (A000217 (n + 5) + 6).toNat)

end

end A250581.P5573507056136792100

/-! ## A250581.P811851718549254685

`A007318(C(n, 64))*A250583(A167499(n+4)+1)`
-/

namespace A250581.P811851718549254685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose n 64) * A250583 (A167499 (n + 4) + 1).toNat

end

end A250581.P811851718549254685

/-! ## A250581.P17449675150728267555

`A000045(A020639(2*(n+1)))*A250583(A167499(n+4)+1)`
-/

namespace A250581.P17449675150728267555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A020639 (2 * (n + 1))).toNat * A250583 (A167499 (n + 4) + 1).toNat

end

end A250581.P17449675150728267555

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

/-! ## A250582.P3797827295337705402

`A250583(A000217(n+6)+7)`
-/

namespace A250582.P3797827295337705402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250583 (A000217 (n + 6) + 7).toNat

end

end A250582.P3797827295337705402

/-! ## A250582.P12003038511951351662

`A250583(A167499(n+6)-A020710(n))`
-/

namespace A250582.P12003038511951351662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250583 (A167499 (n + 6) - A020710 n).toNat

end

end A250582.P12003038511951351662

/-! ## A250582.P4782204377191740922

`A250583(A133263(n+4)+A005843(n+8))`
-/

namespace A250582.P4782204377191740922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250583 (A133263 (n + 4) + A005843 (n + 8)).toNat

end

end A250582.P4782204377191740922

/-! ## A250582.P18161509825867674312

`A250583(A055999(n+4))`
-/

namespace A250582.P18161509825867674312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250583 (A055999 (n + 4)).toNat

end

end A250582.P18161509825867674312

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

/-! ## A250584.P17430618994609400872

`A250592(A001844(n))%A237674(n+1)`
-/

namespace A250584.P17430618994609400872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A250592 (A001844 n).toNat) (A237674 (n + 1))

end

end A250584.P17430618994609400872

/-! ## A250584.P1787290436037505856

`or(A177063(n+1), A250592(A001844(n)))`
-/

namespace A250584.P1787290436037505856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A177063 (n + 1)) (A250592 (A001844 n).toNat)

end

end A250584.P1787290436037505856

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

/-! ## A250586.P8470836773003252127

`abs(A033999(n)*A250592(A000096(n)+3))`
-/

namespace A250586.P8470836773003252127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A033999 n * A250592 (A000096 n + 3).toNat|

end

end A250586.P8470836773003252127

/-! ## A250586.P2071007708318723470

`lcm(A033999(n), A250592(A000096(n+1)))`
-/

namespace A250586.P2071007708318723470
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A250592 (A000096 (n + 1)).toNat)

end

end A250586.P2071007708318723470

/-! ## A250586.P11101862226927466250

`A033999(2*n)*A250592(A000096(n+1))`
-/

namespace A250586.P11101862226927466250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (2 * n) * A250592 (A000096 (n + 1)).toNat

end

end A250586.P11101862226927466250

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

/-! ## A250587.P10806507708799283209

`A250592(A167614(n+1))+A034569(n+1)`
-/

namespace A250587.P10806507708799283209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250592 (A167614 (n + 1)).toNat + A034569 (n + 1)

end

end A250587.P10806507708799283209

/-! ## A250587.P4007992213189895609

`A250592(A046691(n)+7)+A034569(n+1)`
-/

namespace A250587.P4007992213189895609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250592 (A046691 n + 7).toNat + A034569 (n + 1)

end

end A250587.P4007992213189895609

/-! ## A250587.P6590876238593359847

`A196368(A152714(n))*A250592(A167614(n+1))`
-/

namespace A250587.P6590876238593359847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196368 (A152714 n).toNat * A250592 (A167614 (n + 1)).toNat

end

end A250587.P6590876238593359847

/-! ## A250587.P15757911822438865908

`A196368(A152714(n))*A250592(A046691(n)+7)`
-/

namespace A250587.P15757911822438865908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196368 (A152714 n).toNat * A250592 (A046691 n + 7).toNat

end

end A250587.P15757911822438865908

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

/-! ## A250588.P3888631320539587847

`A250592(A055999(n)+10)`
-/

namespace A250588.P3888631320539587847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250592 (A055999 n + 10).toNat

end

end A250588.P3888631320539587847

/-! ## A250588.P6621500505094078492

`A250592(A167614(n+2)+1)`
-/

namespace A250588.P6621500505094078492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250592 (A167614 (n + 2) + 1).toNat

end

end A250588.P6621500505094078492

/-! ## A250588.P8253964805386201081

`A250592(A080036(A167614(n+1)))`
-/

namespace A250588.P8253964805386201081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250592 (A080036 (A167614 (n + 1)).toNat).toNat

end

end A250588.P8253964805386201081

/-! ## A250588.P7552475990472836318

`A250592(A374004(n+1))`
-/

namespace A250588.P7552475990472836318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250592 (A374004 (n + 1)).toNat

end

end A250588.P7552475990472836318

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

/-! ## A250589.P14959976124792775177

`A250592(A000217(n+4)+5)`
-/

namespace A250589.P14959976124792775177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250592 (A000217 (n + 4) + 5).toNat

end

end A250589.P14959976124792775177

/-! ## A250589.P5370403000193060151

`A250592(A052905(n+3)-(2*n+1))`
-/

namespace A250589.P5370403000193060151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250592 (A052905 (n + 3) - (2 * n + 1 : ℤ)).toNat

end

end A250589.P5370403000193060151

/-! ## A250589.P2787310084920215561

`A250592(A008486(n+5)+A000096(n))`
-/

namespace A250589.P2787310084920215561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250592 (A008486 (n + 5) + A000096 n).toNat

end

end A250589.P2787310084920215561

/-! ## A250589.P14051543570897814785

`A250592(A004273(n+7)+A000096(n+1))`
-/

namespace A250589.P14051543570897814785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250592 (A004273 (n + 7) + A000096 (n + 1)).toNat

end

end A250589.P14051543570897814785

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

/-! ## A250590.P12690646515358239013

`A250592(gcd(n, n+1)+A133263(n+5)+3)`
-/

namespace A250590.P12690646515358239013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250592 ((Nat.gcd n (n + 1) : ℤ) + (A133263 (n + 5) + 3)).toNat

end

end A250590.P12690646515358239013

/-! ## A250590.P474284853530674023

`A250592(A374007(n+1))`
-/

namespace A250590.P474284853530674023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250592 (A374007 (n + 1)).toNat

end

end A250590.P474284853530674023

/-! ## A250590.P10633727563141357273

`A250592(A052905(n+3))`
-/

namespace A250590.P10633727563141357273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250592 (A052905 (n + 3)).toNat

end

end A250590.P10633727563141357273

/-! ## A250590.P10766623057415706830

`A250592(A046691(n+4)-1)`
-/

namespace A250590.P10766623057415706830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250592 (A046691 (n + 4) - 1).toNat

end

end A250590.P10766623057415706830

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

/-! ## A250591.P4832130278335905712

`A250592(A167499(n+6)-A020710(n))`
-/

namespace A250591.P4832130278335905712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250592 (A167499 (n + 6) - A020710 n).toNat

end

end A250591.P4832130278335905712

/-! ## A250591.P9070450777979619112

`A250592(lcm(A000096(n+5)+8, A033999(n)))`
-/

namespace A250591.P9070450777979619112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250592 (Int.lcm (A000096 (n + 5) + 8) (A033999 n))

end

end A250591.P9070450777979619112

/-! ## A250591.P1117815777512153856

`A250592(A374008(n+1))`
-/

namespace A250591.P1117815777512153856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250592 (A374008 (n + 1)).toNat

end

end A250591.P1117815777512153856

/-! ## A250591.P5786927186002815482

`A250592(A000096(n+6)-5)`
-/

namespace A250591.P5786927186002815482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250592 (A000096 (n + 6) - 5).toNat

end

end A250591.P5786927186002815482

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

/-! ## A250598.P2672931541425397

`A250601(A046691(n+3))`
-/

namespace A250598.P2672931541425397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250601 (A046691 (n + 3)).toNat

end

end A250598.P2672931541425397

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

/-! ## A250599.P15681574989114763786

`A250601(eq[8, A131818(n+1)]-12)`
-/

namespace A250599.P15681574989114763786
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250601 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n - 12)

end

end A250599.P15681574989114763786

/-! ## A250599.P11187135187796447690

`A250598(n+1)²/A250597(n+1)`
-/

namespace A250599.P11187135187796447690
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A250598 (n + 1) ^ 2 : ℚ) / (A250597 (n + 1) : ℚ)

end

end A250599.P11187135187796447690

