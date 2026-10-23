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
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C036
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C008
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B006.C002
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
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

/-!
# A236900: Number of (n+1)X(6+1) 0..2 arrays with the maximum plus the upper median of every 2X2 subblock equal.

The programs for A236900, there is no canonical definition to state claims against.
-/

/-! ## A236900.P2149767757184370028

`A236902(A374007(n+1))`
-/

namespace A236900.P2149767757184370028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236902 (A374007 (n + 1)).toNat

end

end A236900.P2149767757184370028

/-! ## A236900.P8948169612073801260

`A236902(eq[7, A131818(n+1)])`
-/

namespace A236900.P8948169612073801260
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236902 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A236900.P8948169612073801260

/-! ## A236900.P18421540512977319164

`A236902(A000124(n+6)-(n+1))`
-/

namespace A236900.P18421540512977319164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236902 (A000124 (n + 6) - (n + 1 : ℤ)).toNat

end

end A236900.P18421540512977319164

/-! ## A236900.P6291198997472201431

`A236902(A052905(n+3))`
-/

namespace A236900.P6291198997472201431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236902 (A052905 (n + 3)).toNat

end

end A236900.P6291198997472201431

/-! ## A236900.P1067095162421474338

`A236902(A055999(n+3)+1)`
-/

namespace A236900.P1067095162421474338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236902 (A055999 (n + 3) + 1).toNat

end

end A236900.P1067095162421474338

/-!
# A236901: 

The programs for A236901, there is no canonical definition to state claims against.
-/

/-! ## A236901.P9568398726063859586

`A236902(A000124(n+6)+6)`
-/

namespace A236901.P9568398726063859586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236902 (A000124 (n + 6) + 6).toNat

end

end A236901.P9568398726063859586

/-!
# A236903: Row sums of an analog of Pascal's triangle resulting from replacing addition with concatenation in the construction rule.

The programs for A236903, there is no canonical definition to state claims against.
-/

/-! ## A236903.P12379434521917592517

`∑{digits}[A007094(9^n), A002275(#)]`
-/

namespace A236903.P12379434521917592517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007094 (9 ^ n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A002275 x).sum

end

end A236903.P12379434521917592517

/-!
# A236904: Number of (n+1)X(1+1) 0..3 arrays with the maximum plus the upper median plus the minimum of every 2X2 subblock equal.

The programs for A236904, there is no canonical definition to state claims against.
-/

/-! ## A236904.P14339845991310051993

`A236911(∑[n]+1)`
-/

namespace A236904.P14339845991310051993
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236911 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A236904.P14339845991310051993

/-! ## A236904.P5661175900776814170

`lcm(2, A236911(A000124(n)))`
-/

namespace A236904.P5661175900776814170
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A236911 (A000124 n).toNat)

end

end A236904.P5661175900776814170

/-! ## A236904.P6627462405872743509

`record[A010054(n)*A236911(n+1)]`
-/

namespace A236904.P6627462405872743509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A236911 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236904.P6627462405872743509

/-! ## A236904.P8869229156183858459

`record[A236911(n+1)/A022166(n)]`
-/

namespace A236904.P8869229156183858459
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A236911 (n + 1) : ℚ) / (A022166 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236904.P8869229156183858459

/-! ## A236904.P12263065257825789251

`record[root(A236911(n+1), A059268(n))]`
-/

namespace A236904.P12263065257825789251
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A236911 (n + 1) : ℝ) ^ (1 / (A059268 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236904.P12263065257825789251

/-!
# A236905: Number of (n+1)X(2+1) 0..3 arrays with the maximum plus the upper median plus the minimum of every 2X2 subblock equal.

The programs for A236905, there is no canonical definition to state claims against.
-/

/-! ## A236905.P522197921998518015

`A236911(∑[n+1]+2)`
-/

namespace A236905.P522197921998518015
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236911 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A236905.P522197921998518015

/-! ## A236905.P15736630186488485536

`record[A010054(n)*A236911(n+2)]`
-/

namespace A236905.P15736630186488485536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A236911 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236905.P15736630186488485536

/-! ## A236905.P15523539664289227033

`record[root(A236911(n+2), A059268(n))]`
-/

namespace A236905.P15523539664289227033
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A236911 (n + 2) : ℝ) ^ (1 / (A059268 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236905.P15523539664289227033

/-! ## A236905.P6790756112799546807

`record[A236911(A198455(n+1))]`
-/

namespace A236905.P6790756112799546807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236911 (A198455 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236905.P6790756112799546807

/-! ## A236905.P3344409162369635277

`record[A236911(record[A185180(n+2)])]`
-/

namespace A236905.P3344409162369635277
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185180 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236911 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236905.P3344409162369635277

/-!
# A236906: Number of (n+1)X(3+1) 0..3 arrays with the maximum plus the upper median plus the minimum of every 2X2 subblock equal.

The programs for A236906, there is no canonical definition to state claims against.
-/

/-! ## A236906.P3617642539120934075

`A236911(∑[n+2]+4)`
-/

namespace A236906.P3617642539120934075
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236911 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A236906.P3617642539120934075

/-! ## A236906.P9986112207501244046

`lcm(2, A236911(A167614(n+1)))`
-/

namespace A236906.P9986112207501244046
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A236911 (A167614 (n + 1)).toNat)

end

end A236906.P9986112207501244046

/-! ## A236906.P12192443039409418693

`A236911(A167614(n+1))+A185284(n)`
-/

namespace A236906.P12192443039409418693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236911 (A167614 (n + 1)).toNat + A185284 n

end

end A236906.P12192443039409418693

/-! ## A236906.P1115475098318089970

`A236911(A167614(n+1))*A303929(n)`
-/

namespace A236906.P1115475098318089970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236911 (A167614 (n + 1)).toNat * A303929 n

end

end A236906.P1115475098318089970

/-! ## A236906.P4151841873367562711

`A350139(n+1)+A236911(A167614(n+1))`
-/

namespace A236906.P4151841873367562711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350139 (n + 1) + A236911 (A167614 (n + 1)).toNat

end

end A236906.P4151841873367562711

/-!
# A236907: Number of (n+1)X(4+1) 0..3 arrays with the maximum plus the upper median plus the minimum of every 2X2 subblock equal.

The programs for A236907, there is no canonical definition to state claims against.
-/

/-! ## A236907.P5095011456872473254

`A236911(A374004(n+1))`
-/

namespace A236907.P5095011456872473254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236911 (A374004 (n + 1)).toNat

end

end A236907.P5095011456872473254

/-! ## A236907.P7425234392761710429

`A236911(A055999(n)+10)`
-/

namespace A236907.P7425234392761710429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236911 (A055999 n + 10).toNat

end

end A236907.P7425234392761710429

/-! ## A236907.P3361991726940865200

`A236911(A167614(n+2)+1)`
-/

namespace A236907.P3361991726940865200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236911 (A167614 (n + 2) + 1).toNat

end

end A236907.P3361991726940865200

/-! ## A236907.P5414033314797987794

`A236911(Δ[A023545(n+1)-n²])`
-/

namespace A236907.P5414033314797987794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1) - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236911 (f1 (n + 1) - f1 n).toNat

end

end A236907.P5414033314797987794

/-! ## A236907.P9014028576681892297

`A236911(A141214(n+1))`
-/

namespace A236907.P9014028576681892297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236911 (A141214 (n + 1)).toNat

end

end A236907.P9014028576681892297

/-!
# A236908: Number of (n+1)X(5+1) 0..3 arrays with the maximum plus the upper median plus the minimum of every 2X2 subblock equal.

The programs for A236908, there is no canonical definition to state claims against.
-/

/-! ## A236908.P15323543863112402693

`A236911(A374005(n+1))`
-/

namespace A236908.P15323543863112402693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236911 (A374005 (n + 1)).toNat

end

end A236908.P15323543863112402693

/-! ## A236908.P13358423835843046841

`A236911(A155212(n)+13)`
-/

namespace A236908.P13358423835843046841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236911 (A155212 n + 13).toNat

end

end A236908.P13358423835843046841

/-! ## A236908.P321349416366399896

`A236911(A056000(n)+15)`
-/

namespace A236908.P321349416366399896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236911 (A056000 n + 15).toNat

end

end A236908.P321349416366399896

/-! ## A236908.P8855411828689872463

`A236911(eq[6, A131818(n+1)])`
-/

namespace A236908.P8855411828689872463
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236911 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A236908.P8855411828689872463

/-! ## A236908.P4570898084608132350

`A236911(Δ[A023545(n+1)])`
-/

namespace A236908.P4570898084608132350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236911 (f1 (n + 1) - f1 n).toNat

end

end A236908.P4570898084608132350

/-!
# A236909: Number of (n+1)X(6+1) 0..3 arrays with the maximum plus the upper median plus the minimum of every 2X2 subblock equal.

The programs for A236909, there is no canonical definition to state claims against.
-/

/-! ## A236909.P16291688738029785426

`A236911(A374007(n+1))`
-/

namespace A236909.P16291688738029785426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236911 (A374007 (n + 1)).toNat

end

end A236909.P16291688738029785426

/-! ## A236909.P905658260515961929

`A236911(Δ[Δ[A006504(n+1)]])`
-/

namespace A236909.P905658260515961929
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006504 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236911 (f1 (n + 1) - f1 n).toNat

end

end A236909.P905658260515961929

/-! ## A236909.P5898176456014617000

`A236911(Δ[A023545(n+2)]-1)`
-/

namespace A236909.P5898176456014617000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236911 (f1 (n + 1) - f1 n - 1).toNat

end

end A236909.P5898176456014617000

/-!
# A236910: Number of (n+1)X(7+1) 0..3 arrays with the maximum plus the upper median plus the minimum of every 2X2 subblock equal.

The programs for A236910, there is no canonical definition to state claims against.
-/

/-! ## A236910.P16227352179051784581

`A236911(A374008(n+1))`
-/

namespace A236910.P16227352179051784581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236911 (A374008 (n + 1)).toNat

end

end A236910.P16227352179051784581

/-! ## A236910.P14449103119269666835

`A236911(eq[8, A131818(n+1)])`
-/

namespace A236910.P14449103119269666835
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236911 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A236910.P14449103119269666835

/-!
# A236912: Number of partitions of n such that no part is a sum of two other parts.

The programs for A236912, there is no canonical definition to state claims against.
-/

/-! ## A236912.P16455508608033366038

`A000041(n)-A237113(n)`
-/

namespace A236912.P16455508608033366038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A237113 n

end

end A236912.P16455508608033366038

/-! ## A236912.P10824330357724570255

`A213598(n)-A237113(n)`
-/

namespace A236912.P10824330357724570255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213598 n - A237113 n

end

end A236912.P10824330357724570255

/-! ## A236912.P15780426720734727394

`∑[A002865(n)]-A237113(n)`
-/

namespace A236912.P15780426720734727394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A237113 n

end

end A236912.P15780426720734727394

/-! ## A236912.P15050711797423102915

`A000065(n)+1-A237113(n)`
-/

namespace A236912.P15050711797423102915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000065 n + 1 - A237113 n

end

end A236912.P15050711797423102915

/-! ## A236912.P16629707489026144913

`A035363(2*n)-A237113(n)`
-/

namespace A236912.P16629707489026144913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 (2 * n) - A237113 n

end

end A236912.P16629707489026144913

/-!
# A236913: Number of partitions of 2n of type EE (see Comments).

The programs for A236913, there is no canonical definition to state claims against.
-/

/-! ## A236913.P1897796668542323428

`A027187(2*n)`
-/

namespace A236913.P1897796668542323428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027187 (2 * n)

end

end A236913.P1897796668542323428

/-! ## A236913.P10639727384972373436

`A046682(2*n)`
-/

namespace A236913.P10639727384972373436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046682 (2 * n)

end

end A236913.P10639727384972373436

/-! ## A236913.P3536054331056751881

`A347443(2*n)`
-/

namespace A236913.P3536054331056751881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347443 (2 * n)

end

end A236913.P3536054331056751881

/-! ## A236913.P7146055568684302956

`A236559(n)+A069910(n)`
-/

namespace A236913.P7146055568684302956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236559 n + A069910 n

end

end A236913.P7146055568684302956

/-! ## A236913.P17229719968361702855

`A058696(n)-A236559(n)`
-/

namespace A236913.P17229719968361702855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058696 n - A236559 n

end

end A236913.P17229719968361702855

/-! ## A236913.P14616128013749892132

`A069910(n)+A000701(2*n)`
-/

namespace A236913.P14616128013749892132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069910 n + A000701 (2 * n)

end

end A236913.P14616128013749892132

/-! ## A236913.P18017958250983344220

`A236559(n)+A000700(2*n)`
-/

namespace A236913.P18017958250983344220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236559 n + A000700 (2 * n)

end

end A236913.P18017958250983344220

/-! ## A236913.P6442874790393481335

`A058696(n)-A000701(2*n)`
-/

namespace A236913.P6442874790393481335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058696 n - A000701 (2 * n)

end

end A236913.P6442874790393481335

/-! ## A236913.P12307682978805869419

`A058696(n)-A027193(2*n)`
-/

namespace A236913.P12307682978805869419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058696 n - A027193 (2 * n)

end

end A236913.P12307682978805869419

/-! ## A236913.P9754102884261375038

`A000041(2*n)-A236559(n)`
-/

namespace A236913.P9754102884261375038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (2 * n) - A236559 n

end

end A236913.P9754102884261375038

/-! ## A236913.P4337654099080152356

`A000701(2*n)+A000700(2*n)`
-/

namespace A236913.P4337654099080152356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000701 (2 * n) + A000700 (2 * n)

end

end A236913.P4337654099080152356

/-! ## A236913.P6450843255823112559

`A027193(2*n)+A000700(2*n)`
-/

namespace A236913.P6450843255823112559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027193 (2 * n) + A000700 (2 * n)

end

end A236913.P6450843255823112559

/-! ## A236913.P6005348222886741460

`A081362(2*n)+A000701(2*n)`
-/

namespace A236913.P6005348222886741460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081362 (2 * n) + A000701 (2 * n)

end

end A236913.P6005348222886741460

/-! ## A236913.P13175378304908284735

`A081362(2*n)+A027193(2*n)`
-/

namespace A236913.P13175378304908284735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081362 (2 * n) + A027193 (2 * n)

end

end A236913.P13175378304908284735

/-! ## A236913.P15219991286614183916

`A000041(2*n)-A000701(2*n)`
-/

namespace A236913.P15219991286614183916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (2 * n) - A000701 (2 * n)

end

end A236913.P15219991286614183916

/-! ## A236913.P4394096518724027614

`A000041(2*n)-A027193(2*n)`
-/

namespace A236913.P4394096518724027614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (2 * n) - A027193 (2 * n)

end

end A236913.P4394096518724027614

/-! ## A236913.P12778769675199189530

`sqrt(A001255(2*n))-A000701(2*n)`
-/

namespace A236913.P12778769675199189530
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A001255 (2 * n) : ℝ) - (A000701 (2 * n) : ℝ)

end

end A236913.P12778769675199189530

/-! ## A236913.P12822215251655903314

`A000065(2*n)+1-A000701(2*n)`
-/

namespace A236913.P12822215251655903314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000065 (2 * n) + (1 - A000701 (2 * n))

end

end A236913.P12822215251655903314

/-! ## A236913.P10339551118728406505

`(A000700(2*n)+A000041(2*n))/2`
-/

namespace A236913.P10339551118728406505
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000700 (2 * n) + A000041 (2 * n) : ℚ) / 2

end

end A236913.P10339551118728406505

/-! ## A236913.P12181104268965626819

`(A081362(2*n)+A000041(2*n))/2`
-/

namespace A236913.P12181104268965626819
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A081362 (2 * n) + A000041 (2 * n) : ℚ) / 2

end

end A236913.P12181104268965626819

/-!
# A236914: Number of partitions of 2n+1 of type OO (see Comments).

The programs for A236914, there is no canonical definition to state claims against.
-/

/-! ## A236914.P14340585394317350720

`A000701(Δ[n²])`
-/

namespace A236914.P14340585394317350720
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000701 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A236914.P14340585394317350720

/-! ## A236914.P1567750528348182135

`A027187(Δ[n²])`
-/

namespace A236914.P1567750528348182135
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027187 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A236914.P1567750528348182135

/-! ## A236914.P4437311707178081533

`∑{d}[2*n+1, A339397(#)]`
-/

namespace A236914.P4437311707178081533
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A339397 d

end

end A236914.P4437311707178081533

/-! ## A236914.P4061543970354569727

`xor(1, xor(1, A000701(2*n+1)))`
-/

namespace A236914.P4061543970354569727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (Int.xor 1 (A000701 (2 * n + 1)))

end

end A236914.P4061543970354569727

/-! ## A236914.P10344072987324357999

`A160786(n)-A069911(n)`
-/

namespace A236914.P10344072987324357999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160786 n - A069911 n

end

end A236914.P10344072987324357999

/-! ## A236914.P13184030310824415153

`A160786(n)+A081362(2*n+1)`
-/

namespace A236914.P13184030310824415153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160786 n + A081362 (2 * n + 1)

end

end A236914.P13184030310824415153

/-! ## A236914.P15197283737871484286

`A160786(n)-A000700(2*n+1)`
-/

namespace A236914.P15197283737871484286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160786 n - A000700 (2 * n + 1)

end

end A236914.P15197283737871484286

/-! ## A236914.P11371293675727633516

`A347443(2*n+1)-A000041(n)`
-/

namespace A236914.P11371293675727633516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347443 (2 * n + 1) - A000041 n

end

end A236914.P11371293675727633516

/-! ## A236914.P3349595167251284917

`A000701(2*n+1)+A000007(n+1)`
-/

namespace A236914.P3349595167251284917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000701 (2 * n + 1) + A000007 (n + 1)

end

end A236914.P3349595167251284917

/-! ## A236914.P17879854968371328549

`A027187(2*n+1)+A000007(n+1)`
-/

namespace A236914.P17879854968371328549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027187 (2 * n + 1) + A000007 (n + 1)

end

end A236914.P17879854968371328549

/-! ## A236914.P17152294758966724598

`A347443(2*n+1)-A035363(2*n)`
-/

namespace A236914.P17152294758966724598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347443 (2 * n + 1) - A035363 (2 * n)

end

end A236914.P17152294758966724598

/-! ## A236914.P3276349319438574720

`A347443(2*n+1)-A119620(2*n)`
-/

namespace A236914.P3276349319438574720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347443 (2 * n + 1) - A119620 (2 * n)

end

end A236914.P3276349319438574720

/-! ## A236914.P3690304514478710857

`A035363(2*n+1)+A000701(2*n+1)`
-/

namespace A236914.P3690304514478710857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 (2 * n + 1) + A000701 (2 * n + 1)

end

end A236914.P3690304514478710857

/-! ## A236914.P4378285631461532068

`A035444(2*n+1)+A000701(2*n+1)`
-/

namespace A236914.P4378285631461532068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035444 (2 * n + 1) + A000701 (2 * n + 1)

end

end A236914.P4378285631461532068

/-! ## A236914.P10434816991501974786

`A035457(2*n+1)+A000701(2*n+1)`
-/

namespace A236914.P10434816991501974786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035457 (2 * n + 1) + A000701 (2 * n + 1)

end

end A236914.P10434816991501974786

/-! ## A236914.P9260593974874773621

`A081362(2*n+1)+A027193(2*n+1)`
-/

namespace A236914.P9260593974874773621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081362 (2 * n + 1) + A027193 (2 * n + 1)

end

end A236914.P9260593974874773621

/-! ## A236914.P4713412500930654686

`A027193(2*n+1)-A000700(2*n+1)`
-/

namespace A236914.P4713412500930654686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027193 (2 * n + 1) - A000700 (2 * n + 1)

end

end A236914.P4713412500930654686

/-! ## A236914.P8119799918547656322

`A046682(2*n+1)-A000700(2*n+1)`
-/

namespace A236914.P8119799918547656322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046682 (2 * n + 1) - A000700 (2 * n + 1)

end

end A236914.P8119799918547656322

/-! ## A236914.P16059467525637271306

`A000701(2*n+1)*A067513(2*n+1)`
-/

namespace A236914.P16059467525637271306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000701 (2 * n + 1) * A067513 (2 * n + 1)

end

end A236914.P16059467525637271306

/-! ## A236914.P15633911000755574788

`A000701(2*n+1)*A135528(2*(n+1))`
-/

namespace A236914.P15633911000755574788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000701 (2 * n + 1) * A135528 (2 * (n + 1))

end

end A236914.P15633911000755574788

/-!
# A236915: Number T(n,k) of equivalence classes of ways of placing k 8 X 8 tiles in an n X n square under all symmetry operations of the square; irregular triangle T(n,k), n>=8, 0<=k<=floor(n/8)^2, read by rows.

The programs for A236915, there is no canonical definition to state claims against.
-/

/-! ## A236915.P8207338403593924980

`A236939(n*a(a(n-1)))` with `a(0)=1, a(1)=1`
-/

namespace A236915.P8207338403593924980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A236939 (((n : ℤ) * a (a (n - 1)).toNat).toNat + 10)

end

end A236915.P8207338403593924980

/-! ## A236915.P16213260843511600327

`C(ceil(n/A210857(a(n-1)))+1, 2)` with `a(0)=1`
-/

namespace A236915.P16213260843511600327
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.choose (⌈(n : ℚ) / (A210857 (a (n - 1)) : ℚ)⌉ + 1).toNat 2

end

end A236915.P16213260843511600327

/-! ## A236915.P9513924641733119995

`A236936(n+9)%record[A089338(n)]`
-/

namespace A236915.P9513924641733119995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089338 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A236936 (n + 9)) (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A236915.P9513924641733119995

/-! ## A236915.P6575475445654089041

`A236939(n*A254864(3*(n+1)))`
-/

namespace A236915.P6575475445654089041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236939 (((n : ℤ) * A254864 (3 * (n + 1))).toNat + 10)

end

end A236915.P6575475445654089041

/-! ## A236915.P14822743457270246350

`A124530(A202784(n))*A236939(n)`
-/

namespace A236915.P14822743457270246350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124530 (A202784 n).toNat * A236939 (n + 10)

end

end A236915.P14822743457270246350

/-!
# A236916: The first "octad" is 0, 1, 2, 2, 2, 2, 3, 3; thereafter add 4 to get the next octad.

The programs for A236916, the canonical program `A236916.P14910980737374846545` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A236916 has offset 0).

The definition of A236916 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A236916.P14954004259720945499

`∑[ceil(sin((n+1)%8))]-1`
-/

namespace A236916.P14954004259720945499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sin (((n + 1) % 8 : ℕ) : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A236916.P14954004259720945499

namespace A236916

/-- `∑[ceil(sin((n+1)%8))]-1` -/
def P14954004259720945499.Spec : Prop :=
  ∀ n, P14954004259720945499.a n = A236916 n

end A236916

/-! ## A236916.P12434390338257985620

`1-∑[(a(n-1)^a(n-2)-a(n-3))²]+n` with `a(0)=1, a(1)=0, a(2)=0, a(3)=1`
-/

namespace A236916.P12434390338257985620
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.rec [1, 0, 0, 1] fun n f1 =>
  (f1 (n - 1) ^ (f1 (n - 2)) - f1 (n - 3)) ^ 2

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  1 - ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℝ)

end

end A236916.P12434390338257985620

namespace A236916

/-- `1-∑[(a(n-1)^a(n-2)-a(n-3))²]+n` -/
def P12434390338257985620.Spec : Prop :=
  ∀ n, P12434390338257985620.a n = (A236916 n : ℝ)

end A236916

/-! ## A236916.P1030231087024131923

`1-(∑[(a(n-1)^a(n-2)-a(n-3))²]-n)` with `a(0)=1, a(1)=0, a(2)=0, a(3)=1`
-/

namespace A236916.P1030231087024131923
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.rec [1, 0, 0, 1] fun n f1 =>
  (f1 (n - 1) ^ (f1 (n - 2)) - f1 (n - 3)) ^ 2

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  1 - (∑ j ∈ Finset.range (n + 1), f1 j - (n : ℝ))

end

end A236916.P1030231087024131923

namespace A236916

/-- `1-(∑[(a(n-1)^a(n-2)-a(n-3))²]-n)` -/
def P1030231087024131923.Spec : Prop :=
  ∀ n, P1030231087024131923.a n = (A236916 n : ℝ)

end A236916

/-! ## A236916.P3676830910430993776

`∑[char[A047397(n+2)]]`
-/

namespace A236916.P3676830910430993776
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047397 (n + 2)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A236916.P3676830910430993776

namespace A236916

/-- `∑[char[A047397(n+2)]]` -/
def P3676830910430993776.Spec : Prop :=
  ∀ n, (P3676830910430993776.a n : ℤ) = A236916 n

end A236916

/-! ## A236916.P14910980737374846545

`ceil((A046978(n)+n)/2)`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A236916

/-- `ceil((A046978(n)+n)/2)` -/
def P14910980737374846545.Spec : Prop :=
  ∀ n, P14910980737374846545.a n = A236916 n

theorem P14910980737374846545.correct : P14910980737374846545.Spec := by
  intro n
  simp only [A236916]

end A236916

/-! ## A236916.P1720799267752890952

`char[A047475(n+1)]+floor(n/2)`
-/

namespace A236916.P1720799267752890952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047475 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) + ⌊(n : ℚ) / 2⌋

end

end A236916.P1720799267752890952

namespace A236916

/-- `char[A047475(n+1)]+floor(n/2)` -/
def P1720799267752890952.Spec : Prop :=
  ∀ n, P1720799267752890952.a n = A236916 n

end A236916

/-! ## A236916.P1147533138765360910

`A110654(A046978(n)+n)`
-/

namespace A236916.P1147533138765360910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A046978 n + (n : ℤ)).toNat

end

end A236916.P1147533138765360910

namespace A236916

/-- `A110654(A046978(n)+n)` -/
def P1147533138765360910.Spec : Prop :=
  ∀ n, P1147533138765360910.a n = A236916 n

end A236916

/-! ## A236916.P10555340350147488334

`A004526(A046978(n)+1+n)`
-/

namespace A236916.P10555340350147488334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A046978 n + 1 + (n : ℤ)).toNat

end

end A236916.P10555340350147488334

namespace A236916

/-- `A004526(A046978(n)+1+n)` -/
def P10555340350147488334.Spec : Prop :=
  ∀ n, P10555340350147488334.a n = A236916 n

end A236916

/-! ## A236916.P11015810651867026468

`1-A034586(n+2)+n`
-/

namespace A236916.P11015810651867026468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A034586 (n + 2) + (n : ℤ)

end

end A236916.P11015810651867026468

namespace A236916

/-- `1-A034586(n+2)+n` -/
def P11015810651867026468.Spec : Prop :=
  ∀ n, P11015810651867026468.a n = A236916 n

end A236916

/-! ## A236916.P4826754901891482111

`n-A004526(n-A046978(n))`
-/

namespace A236916.P4826754901891482111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A004526 ((n : ℤ) - A046978 n).toNat

end

end A236916.P4826754901891482111

namespace A236916

/-- `n-A004526(n-A046978(n))` -/
def P4826754901891482111.Spec : Prop :=
  ∀ n, P4826754901891482111.a n = A236916 n

end A236916

/-! ## A236916.P3307427023373194590

`A004525(A004525(n))+A002265(n+2)`
-/

namespace A236916.P3307427023373194590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A004525 n).toNat + A002265 (n + 2)

end

end A236916.P3307427023373194590

namespace A236916

/-- `A004525(A004525(n))+A002265(n+2)` -/
def P3307427023373194590.Spec : Prop :=
  ∀ n, P3307427023373194590.a n = A236916 n

end A236916

/-! ## A236916.P1041432872175834145

`A140427(n+6)-2`
-/

namespace A236916.P1041432872175834145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140427 (n + 6) - 2

end

end A236916.P1041432872175834145

namespace A236916

/-- `A140427(n+6)-2` -/
def P1041432872175834145.Spec : Prop :=
  ∀ n, P1041432872175834145.a n = A236916 n

end A236916

/-! ## A236916.P1996576803512692048

`∑[char[xor(2*n, A177499(n))]]-1`
-/

namespace A236916.P1996576803512692048
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (2 * n : ℤ) (A177499 n)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A236916.P1996576803512692048

namespace A236916

/-- `∑[char[xor(2*n, A177499(n))]]-1` -/
def P1996576803512692048.Spec : Prop :=
  ∀ n, P1996576803512692048.a n = A236916 n

end A236916

/-! ## A236916.P8961991665936819982

`∑[char[A131452(A030118(n))]]`
-/

namespace A236916.P8961991665936819982
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131452 (A030118 n).toNat

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A236916.P8961991665936819982

namespace A236916

/-- `∑[char[A131452(A030118(n))]]` -/
def P8961991665936819982.Spec : Prop :=
  ∀ n, (P8961991665936819982.a n : ℤ) = A236916 n

end A236916

/-! ## A236916.P8378269050808553391

`A002265(or(n, A010877(n+3))+n)`
-/

namespace A236916.P8378269050808553391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (Int.lor (n : ℤ) (A010877 (n + 3)) + (n : ℤ)).toNat

end

end A236916.P8378269050808553391

namespace A236916

/-- `A002265(or(n, A010877(n+3))+n)` -/
def P8378269050808553391.Spec : Prop :=
  ∀ n, P8378269050808553391.a n = A236916 n

end A236916

/-! ## A236916.P914405993548828316

`A002265(2*(A046978(n)-1+n)+4)`
-/

namespace A236916.P914405993548828316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (2 * (A046978 n - 1 + (n : ℤ)) + 4).toNat

end

end A236916.P914405993548828316

namespace A236916

/-- `A002265(2*(A046978(n)-1+n)+4)` -/
def P914405993548828316.Spec : Prop :=
  ∀ n, P914405993548828316.a n = A236916 n

end A236916

/-! ## A236916.P6380475857541971861

`A002265(A010876(A130486(n+1))+2*n)`
-/

namespace A236916.P6380475857541971861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A010876 (A130486 (n + 1)).toNat + (2 * n : ℤ)).toNat

end

end A236916.P6380475857541971861

namespace A236916

/-- `A002265(A010876(A130486(n+1))+2*n)` -/
def P6380475857541971861.Spec : Prop :=
  ∀ n, P6380475857541971861.a n = A236916 n

end A236916

/-! ## A236916.P902329330677271396

`log2(A236680(n+1))`
-/

namespace A236916.P902329330677271396
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A236680 (n + 1) : ℝ)

end

end A236916.P902329330677271396

namespace A236916

/-- `log2(A236680(n+1))` -/
def P902329330677271396.Spec : Prop :=
  ∀ n, P902329330677271396.a n = (A236916 n : ℝ)

end A236916

/-! ## A236916.P2469397915123703957

`∑[A324908(∑[A249693(n)])]`
-/

namespace A236916.P2469397915123703957
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249693 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324908 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A236916.P2469397915123703957

namespace A236916

/-- `∑[A324908(∑[A249693(n)])]` -/
def P2469397915123703957.Spec : Prop :=
  ∀ n, P2469397915123703957.a n = A236916 n

end A236916

/-!
# A236917: Numbers n for which there is no k such that n - k and n + k are both prime, with 0 <= k <= sqrt(n).

The programs for A236917, there is no canonical definition to state claims against.
-/

/-! ## A236917.P18043759810654327920

`eq[0, A236747(n+1)]+1`
-/

namespace A236917.P18043759810654327920
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236747 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A236917.P18043759810654327920

/-! ## A236917.P8219985833488222545

`record[(n+1)%(A325142(n+1)²+1)]`
-/

namespace A236917.P8219985833488222545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A325142 (n + 1) ^ 2 + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236917.P8219985833488222545

/-! ## A236917.P15682327535167852319

`eq[0, A236747(A000038(n)+n)]`
-/

namespace A236917.P15682327535167852319
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236747 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A236917.P15682327535167852319

/-! ## A236917.P12012041602852912763

`eq[A000007(n), A236747(A028310(n))]`
-/

namespace A236917.P12012041602852912763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236747 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A236917.P12012041602852912763

/-! ## A236917.P11486980228237249211

`eq[A000038(n), A236747(A028310(n))]`
-/

namespace A236917.P11486980228237249211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236747 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A236917.P11486980228237249211

/-!
# A236918: Triangle read by rows: Catalan triangle of the k-Fibonacci sequence.

The programs for A236918, there is no canonical definition to state claims against.
-/

/-! ## A236918.P10626143597456019339

`A237596(∑[2*n]%comp[∑[n]])`
-/

namespace A236918.P10626143597456019339
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237596 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

end

end A236918.P10626143597456019339

/-! ## A236918.P1072007068064945918

`A237596(∑[char[∑[n]]]²-(n+1))`
-/

namespace A236918.P1072007068064945918
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237596 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - (n + 1))

end

end A236918.P1072007068064945918

/-! ## A236918.P10867610718010529069

`or(A000007(n), A237596(A061579(n)))`
-/

namespace A236918.P10867610718010529069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A237596 (A061579 n).toNat)

end

end A236918.P10867610718010529069

/-! ## A236918.P9515325034734046997

`A237596(A061579(n))^A007318(((-1)^n)²)`
-/

namespace A236918.P9515325034734046997
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A237596 (A061579 n).toNat : ℚ) ^ (A007318 (((-1) ^ n) ^ 2).toNat : ℤ)

end

end A236918.P9515325034734046997

/-! ## A236918.P16964320474519476954

`A237596(A061579(n))^∑{e}[A020639(n+1), #]`
-/

namespace A236918.P16964320474519476954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237596 (A061579 n).toNat ^ (∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p)

end

end A236918.P16964320474519476954

/-! ## A236918.P5236699451616999752

`A237596(A061579(n))%A005807(n)`
-/

namespace A236918.P5236699451616999752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A237596 (A061579 n).toNat) (A005807 n)

end

end A236918.P5236699451616999752

/-!
# A236921: Number of n-permutations which fix at least one odd prefix.

The programs for A236921, there is no canonical definition to state claims against.
-/

/-! ## A236921.P772055073473099069

`A130343(A111046(a(n-2)))` with `a(0)=0, a(1)=0, a(2)=1, a(3)=2`
-/

namespace A236921.P772055073473099069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 1, 2] fun n a =>
  A130343 (A111046 (a (n - 2)).toNat).toNat

end

end A236921.P772055073473099069

/-! ## A236921.P3255383705558374547

`A000010(A277676(n*a(n-1))-1)` with `a(0)=0, a(1)=0, a(2)=1`
-/

namespace A236921.P3255383705558374547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 1] fun n a =>
  A000010 (A277676 ((n : ℤ) * a (n - 1)).toNat - 1).toNat

end

end A236921.P3255383705558374547

/-! ## A236921.P10890250131240487281

`A191987(A082582(n)+A002864(n+1))`
-/

namespace A236921.P10890250131240487281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191987 (A082582 n + A002864 (n + 1)).toNat

end

end A236921.P10890250131240487281

/-!
# A236922: Number of integer solutions to a^2 + b^2 + 4*c^2 + 4*d^2 = n.

The programs for A236922, there is no canonical definition to state claims against.
-/

/-! ## A236922.P4670710184436662426

`∑[A057077(n)]*A236924(n)`
-/

namespace A236922.P4670710184436662426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A236924 n

end

end A236922.P4670710184436662426

/-! ## A236922.P5164366577633639418

`(A207541(n)+A097057(n))/2`
-/

namespace A236922.P5164366577633639418
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A207541 n + A097057 n : ℚ) / 2

end

end A236922.P5164366577633639418

/-! ## A236922.P18193913898475372631

`and(3, A005915(n))*A236924(n)`
-/

namespace A236922.P18193913898475372631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 3 (A005915 n) * A236924 n

end

end A236922.P18193913898475372631

/-! ## A236922.P6156236580860795963

`A099307(A006519(n+1))*A236924(n)`
-/

namespace A236922.P6156236580860795963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099307 (A006519 (n + 1)).toNat * A236924 n

end

end A236922.P6156236580860795963

/-! ## A236922.P6198532228305143949

`A000122(A006519(n+1)-1)*A236924(n)`
-/

namespace A236922.P6198532228305143949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 (A006519 (n + 1) - 1).toNat * A236924 n

end

end A236922.P6198532228305143949

/-! ## A236922.P13305760270750788910

`and(1, A026741(n+1))*A097057(A026741(n))`
-/

namespace A236922.P13305760270750788910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A026741 (n + 1)) * A097057 (A026741 n).toNat

end

end A236922.P13305760270750788910

/-! ## A236922.P7757448113597444575

`A078898(A207541(n)+A097057(n))`
-/

namespace A236922.P7757448113597444575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (A207541 n + A097057 n).toNat

end

end A236922.P7757448113597444575

/-! ## A236922.P13957477267806880864

`A028583(4*n)`
-/

namespace A236922.P13957477267806880864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028583 (4 * n)

end

end A236922.P13957477267806880864

/-! ## A236922.P15577088284690707956

`A028598(8*n)`
-/

namespace A236922.P15577088284690707956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028598 (8 * n)

end

end A236922.P15577088284690707956

/-! ## A236922.P6103031214782504582

`A028630(4*4*n)`
-/

namespace A236922.P6103031214782504582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028630 (4 * (4 * n))

end

end A236922.P6103031214782504582

/-!
# A236923: Number of integer solutions to a^2 + b^2 + c^2 + 4*d^2 = n.

The programs for A236923, there is no canonical definition to state claims against.
-/

/-! ## A236923.P1157202349273889124

`A084101(n)*A236924(n)`
-/

namespace A236923.P1157202349273889124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084101 n * A236924 n

end

end A236923.P1157202349273889124

/-! ## A236923.P7036579820243445209

`A320130(2*n)`
-/

namespace A236923.P7036579820243445209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320130 (2 * n)

end

end A236923.P7036579820243445209

/-! ## A236923.P7018566598399325880

`gcd(A004011(n), A320130(n+n))`
-/

namespace A236923.P7018566598399325880
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A004011 n) (A320130 (n + n))

end

end A236923.P7018566598399325880

/-! ## A236923.P13449092459537771575

`A320130(n+n)%A002523(n+1)`
-/

namespace A236923.P13449092459537771575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A320130 (n + n)) (A002523 (n + 1))

end

end A236923.P13449092459537771575

/-! ## A236923.P288976632182184952

`A320130(n+n)/A340072(A014963(n+1))`
-/

namespace A236923.P288976632182184952
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A320130 (n + n) : ℚ) / (A340072 (A014963 (n + 1)).toNat : ℚ)

end

end A236923.P288976632182184952

/-! ## A236923.P4378761011173395050

`A185048(A320130(n+n)+1)`
-/

namespace A236923.P4378761011173395050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185048 (A320130 (n + n) + 1).toNat

end

end A236923.P4378761011173395050

/-! ## A236923.P4716060119840625543

`A078898(A207541(n)+A097057(2*n))`
-/

namespace A236923.P4716060119840625543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (A207541 n + A097057 (2 * n)).toNat

end

end A236923.P4716060119840625543

/-!
# A236924: Number of integer solutions to a^2 + 2*b^2 + 2*c^2 + 4*d^2 = n.

The programs for A236924, there is no canonical definition to state claims against.
-/

/-! ## A236924.P4352313237350109450

`A236923(n)/A084101(n)`
-/

namespace A236924.P4352313237350109450
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A236923 n : ℚ) / (A084101 n : ℚ)

end

end A236924.P4352313237350109450

/-! ## A236924.P7562610623523090838

`gcd(A097057(n), A236923(n))`
-/

namespace A236924.P7562610623523090838
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A097057 n) (A236923 n)

end

end A236924.P7562610623523090838

/-! ## A236924.P6141522185077318020

`A033720(2*n)`
-/

namespace A236924.P6141522185077318020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033720 (2 * n)

end

end A236924.P6141522185077318020

/-! ## A236924.P5428007409349511352

`gcd(A000118(n), A033720(n+n))`
-/

namespace A236924.P5428007409349511352
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000118 n) (A033720 (n + n))

end

end A236924.P5428007409349511352

/-! ## A236924.P14813103276839657443

`A033720(n+n)%Δ[A033431(n)]`
-/

namespace A236924.P14813103276839657443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033431 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A033720 (n + n)) (f1 (n + 1) - f1 n)

end

end A236924.P14813103276839657443

/-! ## A236924.P9542928503263779110

`A164292(A033720(n))+A033720(n+n)`
-/

namespace A236924.P9542928503263779110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164292 (A033720 n).toNat + A033720 (n + n)

end

end A236924.P9542928503263779110

/-!
# A236925: Number of integer solutions to a^2 + 4*b^2 + 4*c^2 + 4*d^2 = n.

The programs for A236925, there is no canonical definition to state claims against.
-/

/-! ## A236925.P2954851541949230979

`A133872(n)*A236924(n)`
-/

namespace A236925.P2954851541949230979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133872 n * A236924 n

end

end A236925.P2954851541949230979

/-! ## A236925.P2317286162175145467

`lcm(A128130(n), A236924(n))`
-/

namespace A236925.P2317286162175145467
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A128130 n) (A236924 n)

end

end A236925.P2317286162175145467

/-! ## A236925.P15623001769214742956

`∑[A056594(n)]*A236924(n)`
-/

namespace A236925.P15623001769214742956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A236924 n

end

end A236925.P15623001769214742956

/-! ## A236925.P4972503886615986613

`and(Δ[A092486(n)], A236924(n))`
-/

namespace A236925.P4972503886615986613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092486 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (f1 (n + 1) - f1 n) (A236924 n)

end

end A236925.P4972503886615986613

/-! ## A236925.P17807147719648532316

`and(1, A276819(n))*A236924(n)`
-/

namespace A236925.P17807147719648532316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A276819 n) * A236924 n

end

end A236925.P17807147719648532316

/-! ## A236925.P7878523690395786214

`A000035(A052938(n))*A236924(n)`
-/

namespace A236925.P7878523690395786214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A052938 n).toNat * A236924 n

end

end A236925.P7878523690395786214

/-! ## A236925.P10774858612506081303

`A236922(n+1)/A097057(n+1)*A236922(n)`
-/

namespace A236925.P10774858612506081303
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A236922 (n + 1) : ℚ) / (A097057 (n + 1) : ℚ) * (A236922 n : ℚ)

end

end A236925.P10774858612506081303

/-! ## A236925.P11145810633388119719

`A000035(A098181(n))*A236924(n)`
-/

namespace A236925.P11145810633388119719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A098181 n).toNat * A236924 n

end

end A236925.P11145810633388119719

/-! ## A236925.P10551136676431157127

`A000035(A004468(n+1))*A236924(n)`
-/

namespace A236925.P10551136676431157127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A004468 (n + 1)).toNat * A236924 n

end

end A236925.P10551136676431157127

/-! ## A236925.P9830652409847983189

`A000035(A000463(n+1))*A236924(n)`
-/

namespace A236925.P9830652409847983189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A000463 (n + 1)).toNat * A236924 n

end

end A236925.P9830652409847983189

/-!
# A236926: Number of integer solutions to a^2 + b^2 + c^2 + 3*d^2 = n.

The programs for A236926, there is no canonical definition to state claims against.
-/

/-! ## A236926.P3782638688033074429

`A320127(2*n)`
-/

namespace A236926.P3782638688033074429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320127 (2 * n)

end

end A236926.P3782638688033074429

/-! ## A236926.P12703142183519080515

`xor(1, xor(1, A320127(n+n)))`
-/

namespace A236926.P12703142183519080515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (Int.xor 1 (A320127 (n + n)))

end

end A236926.P12703142183519080515

/-! ## A236926.P14151728738964982705

`lcm(A033999(n), A320127(A005843(n)))`
-/

namespace A236926.P14151728738964982705
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A320127 (A005843 n).toNat)

end

end A236926.P14151728738964982705

/-! ## A236926.P7125525699927975941

`or(A000007(n), A320127(A005843(n)))`
-/

namespace A236926.P7125525699927975941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A320127 (A005843 n).toNat)

end

end A236926.P7125525699927975941

/-! ## A236926.P15739110792397524356

`A320127(A005843(n))%A016958(n)²`
-/

namespace A236926.P15739110792397524356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A320127 (A005843 n).toNat) (A016958 n ^ 2)

end

end A236926.P15739110792397524356

/-! ## A236926.P15110521799449910144

`A320127(A005843(n))+2%(A004442(n)-n)`
-/

namespace A236926.P15110521799449910144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320127 (A005843 n).toNat + Int.tmod 2 (A004442 n - (n : ℤ))

end

end A236926.P15110521799449910144

/-! ## A236926.P1354645357746636888

`A320127(A004277(n))^A055396(A030101(n)+1)`
-/

namespace A236926.P1354645357746636888
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A320127 (A004277 n).toNat : ℚ) ^ (A055396 (A030101 n + 1).toNat : ℤ)

end

end A236926.P1354645357746636888

/-! ## A236926.P2999709432223723388

`A320127(A005843(n))/A028963(A028961(n)²)!`
-/

namespace A236926.P2999709432223723388
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A320127 (A005843 n).toNat : ℚ) / (Nat.factorial (A028963 (A028961 n ^ 2).toNat).toNat : ℚ)

end

end A236926.P2999709432223723388

/-! ## A236926.P14339358397479019912

`A236933(4*n)`
-/

namespace A236926.P14339358397479019912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236933 (4 * n)

end

end A236926.P14339358397479019912

/-! ## A236926.P16783451067070103004

`A320127(A005843(n))/A014963(A000217(n+5))`
-/

namespace A236926.P16783451067070103004
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A320127 (A005843 n).toNat : ℚ) / (A014963 (A000217 (n + 5)).toNat : ℚ)

end

end A236926.P16783451067070103004

/-!
# A236928: Number of integer solutions to a^2 + b^2 + c^2 + 2*d^2 = n.

The programs for A236928, there is no canonical definition to state claims against.
-/

/-! ## A236928.P13255737854543830702

`2*A320149(n)-A131999(n)`
-/

namespace A236928.P13255737854543830702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A320149 n - A131999 n

end

end A236928.P13255737854543830702

/-! ## A236928.P4246744931769676856

`A320125(2*n)`
-/

namespace A236928.P4246744931769676856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320125 (2 * n)

end

end A236928.P4246744931769676856

/-! ## A236928.P15148633434571328676

`A320149(2*n)`
-/

namespace A236928.P15148633434571328676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320149 (2 * n)

end

end A236928.P15148633434571328676

/-! ## A236928.P288156912039433351

`A320149(n+n)/gcd(n, n+1)`
-/

namespace A236928.P288156912039433351
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A320149 (n + n) : ℚ) / (Nat.gcd n (n + 1) : ℚ)

end

end A236928.P288156912039433351

/-! ## A236928.P864359906427252018

`A236927(4*n)`
-/

namespace A236928.P864359906427252018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236927 (4 * n)

end

end A236928.P864359906427252018

/-! ## A236928.P1935840565299906716

`A320193(4*n)`
-/

namespace A236928.P1935840565299906716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320193 (4 * n)

end

end A236928.P1935840565299906716

/-!
# A236929: Number of integer solutions to a^2 + b^2 + 5*c^2 + 5*d^2 = n.

The programs for A236929, there is no canonical definition to state claims against.
-/

/-! ## A236929.P14198559515238244531

`A028606(8*n)`
-/

namespace A236929.P14198559515238244531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028606 (8 * n)

end

end A236929.P14198559515238244531

/-! ## A236929.P289943809217006211

`A028606(A022144(n))+A000007(n)`
-/

namespace A236929.P289943809217006211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028606 (A022144 n).toNat + A000007 n

end

end A236929.P289943809217006211

/-! ## A236929.P14381410704291695021

`A028606(A008590(n))%A017341(n)`
-/

namespace A236929.P14381410704291695021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A028606 (A008590 n).toNat) (A017341 n)

end

end A236929.P14381410704291695021

/-! ## A236929.P11626443956761499158

`A028606(A022144(n))+A000035(A008574(n))`
-/

namespace A236929.P11626443956761499158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028606 (A022144 n).toNat + A000035 (A008574 n).toNat

end

end A236929.P11626443956761499158

/-! ## A236929.P13402968052725764198

`A028606(A022144(n))+A000035(A028606(n))`
-/

namespace A236929.P13402968052725764198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028606 (A022144 n).toNat + A000035 (A028606 n).toNat

end

end A236929.P13402968052725764198

/-! ## A236929.P8013800164445020998

`A028646(16*n)`
-/

namespace A236929.P8013800164445020998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028646 (16 * n)

end

end A236929.P8013800164445020998

/-! ## A236929.P7270872731599801858

`A028606(A022144(n))+A340548(n+1)%2`
-/

namespace A236929.P7270872731599801858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028606 (A022144 n).toNat + Int.tmod (A340548 (n + 1)) 2

end

end A236929.P7270872731599801858

/-!
# A236930: Number of integer solutions to a^2 + b^2 + c^2 + 5*d^2 = n.

The programs for A236930, there is no canonical definition to state claims against.
-/

/-! ## A236930.P4761959286998897503

`A320132(2*n)`
-/

namespace A236930.P4761959286998897503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320132 (2 * n)

end

end A236930.P4761959286998897503

/-! ## A236930.P1530734324362995959

`xor(1, xor(1, A320132(n+n)))`
-/

namespace A236930.P1530734324362995959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (Int.xor 1 (A320132 (n + n)))

end

end A236930.P1530734324362995959

/-! ## A236930.P16344611307492822485

`A320132(Δ[A165900(n)])%(n+2)²`
-/

namespace A236930.P16344611307492822485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165900 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A320132 (f1 (n + 1) - f1 n).toNat) ((n + 2) ^ 2 : ℤ)

end

end A236930.P16344611307492822485

/-! ## A236930.P2427103118418775840

`A320132(record[A038608(n)])%A200156(n+1)`
-/

namespace A236930.P2427103118418775840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038608 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A320132 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat) (A200156 (n + 1))

end

end A236930.P2427103118418775840

/-! ## A236930.P5597956985914875856

`A348717(A320132(n+n))`
-/

namespace A236930.P5597956985914875856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348717 (A320132 (n + n)).toNat

end

end A236930.P5597956985914875856

/-! ## A236930.P17214866178200645505

`A186421(A320132(record[A014681(n)]))`
-/

namespace A236930.P17214866178200645505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186421 (A320132 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat).toNat

end

end A236930.P17214866178200645505

/-!
# A236931: Number of integer solutions to a^2 + b^2 + c^2 + 6*d^2 = n.

The programs for A236931, there is no canonical definition to state claims against.
-/

/-! ## A236931.P15766993546104030479

`A320134(2*n)`
-/

namespace A236931.P15766993546104030479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320134 (2 * n)

end

end A236931.P15766993546104030479

/-! ## A236931.P172567840410544738

`xor(1, xor(1, A320134(n+n)))`
-/

namespace A236931.P172567840410544738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (Int.xor 1 (A320134 (n + n)))

end

end A236931.P172567840410544738

/-! ## A236931.P16616968159185538102

`A320134(n+n)%∑[A320134(n+1)]`
-/

namespace A236931.P16616968159185538102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320134 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A320134 (n + n)) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A236931.P16616968159185538102

/-! ## A236931.P18177255166807123427

`lcm((n^3)%4+1, A320134(A005843(n)))`
-/

namespace A236931.P18177255166807123427
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((n ^ 3 % 4 + 1 : ℕ) : ℤ) (A320134 (A005843 n).toNat)

end

end A236931.P18177255166807123427

/-! ## A236931.P6756172467977561448

`or(A000122(n), A320134(A005843(n)))`
-/

namespace A236931.P6756172467977561448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000122 n) (A320134 (A005843 n).toNat)

end

end A236931.P6756172467977561448

/-! ## A236931.P953803935911921525

`A320134(n+n)%A000124(A311267(n))`
-/

namespace A236931.P953803935911921525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A320134 (n + n)) (A000124 (A311267 n).toNat)

end

end A236931.P953803935911921525

/-! ## A236931.P11383923822533113301

`A014684(A320134(record[A014681(n)]))`
-/

namespace A236931.P11383923822533113301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014684 (A320134 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat).toNat

end

end A236931.P11383923822533113301

/-! ## A236931.P8770454054830340895

`A320134(n+n)/A022818(∑[n+1])`
-/

namespace A236931.P8770454054830340895
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A320134 (n + n) : ℚ) / (A022818 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ)

end

end A236931.P8770454054830340895

/-!
# A236932: Number of integer solutions to a^2 + b^2 + c^2 + 7*d^2 = n.

The programs for A236932, there is no canonical definition to state claims against.
-/

/-! ## A236932.P6348347715627044584

`A320136(2*n)`
-/

namespace A236932.P6348347715627044584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320136 (2 * n)

end

end A236932.P6348347715627044584

/-! ## A236932.P14060911436177975890

`A320136(n+n)%A069074(n)`
-/

namespace A236932.P14060911436177975890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A320136 (n + n)) (A069074 n)

end

end A236932.P14060911436177975890

/-! ## A236932.P6313057849001039918

`lcm(A033999(n), A320136(A005843(n)))`
-/

namespace A236932.P6313057849001039918
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A320136 (A005843 n).toNat)

end

end A236932.P6313057849001039918

/-! ## A236932.P18004812906653679194

`or(A000007(n), A320136(A005843(n)))`
-/

namespace A236932.P18004812906653679194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A320136 (A005843 n).toNat)

end

end A236932.P18004812906653679194

/-! ## A236932.P4117868867292787799

`A000027(A320136(record[A129760(n+1)]))`
-/

namespace A236932.P4117868867292787799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129760 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A320136 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat).toNat

end

end A236932.P4117868867292787799

/-! ## A236932.P15383026881213458117

`A249818(A320136(eq[0, A191254(n+1)]))`
-/

namespace A236932.P15383026881213458117
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191254 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249818 (A320136 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)).toNat

end

end A236932.P15383026881213458117

/-!
# A236933: Number of integer solutions to a^2 + b^2 + c^2 + 12*d^2 = n.

The programs for A236933, there is no canonical definition to state claims against.
-/

/-! ## A236933.P14961162144257281433

`A350139(A166880(n+4))+A005875(n)`
-/

namespace A236933.P14961162144257281433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350139 (A166880 (n + 4)).toNat + A005875 n

end

end A236933.P14961162144257281433

/-! ## A236933.P6018595849857308999

`A018843(A013609(n))+A005875(n)`
-/

namespace A236933.P6018595849857308999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018843 (A013609 n).toNat + A005875 n

end

end A236933.P6018595849857308999

/-! ## A236933.P13252176016903682300

`A010894(A297835(n))+A005875(n)`
-/

namespace A236933.P13252176016903682300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010894 ((A297835 n).toNat + 21) + A005875 n

end

end A236933.P13252176016903682300

/-! ## A236933.P232098488665448252

`A176742(A280487(n))+A005875(n)`
-/

namespace A236933.P232098488665448252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176742 (A280487 n).toNat + A005875 n

end

end A236933.P232098488665448252

/-! ## A236933.P11994364935803388279

`A332671(A332638(n))+A005875(n)`
-/

namespace A236933.P11994364935803388279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332671 (A332638 n).toNat + A005875 n

end

end A236933.P11994364935803388279

/-!
# A236934: Triangle of Poupard numbers g_n(k) read by rows, n>=1, 1<=k<=2n-1.

The programs for A236934, there is no canonical definition to state claims against.
-/

/-! ## A236934.P196313668990783119

`and(A000005(A105865(n)), A103457(n))`
-/

namespace A236934.P196313668990783119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000005 (A105865 n).toNat) (A103457 n)

end

end A236934.P196313668990783119

/-! ## A236934.P7677308701434357356

`and(A000005(A105865(n)), A112153(n))`
-/

namespace A236934.P7677308701434357356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000005 (A105865 n).toNat) (A112153 n)

end

end A236934.P7677308701434357356

/-! ## A236934.P5989022558464855675

`and(A000005(A005663(n)), A325862(n))`
-/

namespace A236934.P5989022558464855675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000005 (A005663 n).toNat) (A325862 n)

end

end A236934.P5989022558464855675

/-! ## A236934.P15433552475572914248

`and(A000203(A304228(n+1)), A008346(n))`
-/

namespace A236934.P15433552475572914248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000203 (A304228 (n + 1)).toNat) (A008346 n)

end

end A236934.P15433552475572914248

/-! ## A236934.P7345222804086297195

`and(A000010(A046029(n+3)), A281517(n))`
-/

namespace A236934.P7345222804086297195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000010 (A046029 (n + 3)).toNat) (A281517 n)

end

end A236934.P7345222804086297195

/-!
# A236935: The infinite Seidel matrix H read by antidiagonals upwards; H = (H(n,k): n,k >= 0).

The programs for A236935, there is no canonical definition to state claims against.
-/

/-! ## A236935.P10259801050489634537

`A008280(n)*A057077(round(sqrt(2*n)))`
-/

namespace A236935.P10259801050489634537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008280 n * A057077 (SequenceMachineLib.roundAway (Real.sqrt (2 * n : ℝ))).toNat

end

end A236935.P10259801050489634537

/-! ## A236935.P10539579025702735009

`A008280(n)*A330025(2^(comp[∑[n]]-n))`
-/

namespace A236935.P10539579025702735009
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008280 n * A330025 (SequenceMachineLib.roundAway ((2 : ℚ) ^ ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ) : ℤ))).toNat

end

end A236935.P10539579025702735009

/-! ## A236935.P9653203020990223394

`A008280(n)*A087960(A003056(n))`
-/

namespace A236935.P9653203020990223394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008280 n * A087960 (A003056 n).toNat

end

end A236935.P9653203020990223394

/-! ## A236935.P7418809639877502899

`A008280(n)*A033999(A057944(n))`
-/

namespace A236935.P7418809639877502899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008280 n * A033999 (A057944 n).toNat

end

end A236935.P7418809639877502899

/-! ## A236935.P8075716645979479062

`A008280(n)/A057077(A002024(n+1))`
-/

namespace A236935.P8075716645979479062
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008280 n : ℚ) / (A057077 (A002024 (n + 1)).toNat : ℚ)

end

end A236935.P8075716645979479062

/-! ## A236935.P10644923712610095383

`(2*A202695(n+1)-A202692(n+1))*A087960(A003056(n))`
-/

namespace A236935.P10644923712610095383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * A202695 (n + 1) - A202692 (n + 1)) * A087960 (A003056 n).toNat

end

end A236935.P10644923712610095383

/-! ## A236935.P13198027737442218273

`(2*A202695(n+1)-A202692(n+1))*A108086(A057944(n))`
-/

namespace A236935.P13198027737442218273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * A202695 (n + 1) - A202692 (n + 1)) * A108086 (A057944 n).toNat

end

end A236935.P13198027737442218273

/-! ## A236935.P17138253849842682240

`(A202694(n+1)-2*A202697(n+1))*A108086(A057944(n))`
-/

namespace A236935.P17138253849842682240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A202694 (n + 1) - 2 * A202697 (n + 1)) * A108086 (A057944 n).toNat

end

end A236935.P17138253849842682240

/-! ## A236935.P10304087821486351266

`A239005(A061579(n))-A323833(n)`
-/

namespace A236935.P10304087821486351266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239005 (A061579 n).toNat - A323833 n

end

end A236935.P10304087821486351266

/-! ## A236935.P17561597927111691530

`A015343(A003056(n))*A239005(n)`
-/

namespace A236935.P17561597927111691530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015343 (A003056 n).toNat * A239005 n

end

end A236935.P17561597927111691530

/-!
# A236936: Number T(n,k) of equivalence classes of ways of placing k 9 X 9 tiles in an n X n square under all symmetry operations of the square; irregular triangle T(n,k), n>=9, 0<=k<=floor(n/9)^2, read by rows.

The programs for A236936, there is no canonical definition to state claims against.
-/

/-! ## A236936.P8161739103162751750

`∏{e}[2^n, A236939(#)]`
-/

namespace A236936.P8161739103162751750
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A236939 (Nat.factorization (f1 n) p + 10)

end

end A236936.P8161739103162751750

/-! ## A236936.P11593537257642183542

`A236939(A222230(n))`
-/

namespace A236936.P11593537257642183542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236939 ((A222230 n).toNat + 10)

end

end A236936.P11593537257642183542

/-! ## A236936.P8666074716844979317

`A236939(A222232(n))`
-/

namespace A236936.P8666074716844979317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236939 ((A222232 n).toNat + 10)

end

end A236936.P8666074716844979317

/-! ## A236936.P7654347106267875984

`A236939(A008554(n+1))`
-/

namespace A236936.P7654347106267875984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236939 ((A008554 (n + 1)).toNat + 10)

end

end A236936.P7654347106267875984

/-!
# A236937: Number of partitions of n such that the parts include all primes, with multiplicity, dividing n.

The programs for A236937, there is no canonical definition to state claims against.
-/

/-! ## A236937.P7600077588055992530

`A000041(A075255(abs(1-n)+1))`
-/

namespace A236937.P7600077588055992530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (A075255 (|1 - (n : ℤ)| + 1).toNat).toNat

end

end A236937.P7600077588055992530

/-! ## A236937.P13909474435350970088

`A000041(A233583(n+1)-A001414(A233583(n+1)))`
-/

namespace A236937.P13909474435350970088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (A233583 (n + 1) - A001414 (A233583 (n + 1)).toNat).toNat

end

end A236937.P13909474435350970088

/-!
# A236938: Number of partitions of n such that the parts include all primes, without multiplicity, dividing n.

The programs for A236938, there is no canonical definition to state claims against.
-/

/-! ## A236938.P4943773472771369142

`A000041(n-∑{p}[n, #])`
-/

namespace A236938.P4943773472771369142
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n - ∑ p ∈ Nat.primeFactors (f1 n), p)

end

end A236938.P4943773472771369142

/-! ## A236938.P7711817888934619378

`A000065(n-∑{p}[n, #])+1`
-/

namespace A236938.P7711817888934619378
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000065 (n - ∑ p ∈ Nat.primeFactors (f1 n), p) + 1

end

end A236938.P7711817888934619378

/-! ## A236938.P17725768971885747105

`∑{d}[n+1-∑{p}[n, #], A133732(#)]`
-/

namespace A236938.P17725768971885747105
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - ((∑ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A133732 d

end

end A236938.P17725768971885747105

/-! ## A236938.P16092533719205183178

`A000041(n-∑{d}[n, A061397(#)])`
-/

namespace A236938.P16092533719205183178
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 ((n : ℤ) - ∑ d ∈ Nat.divisors (f1 n), A061397 d).toNat

end

end A236938.P16092533719205183178

/-! ## A236938.P5559423899820990062

`A000041(A233583(n+1)-A008472(A233583(n+1)))`
-/

namespace A236938.P5559423899820990062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (A233583 (n + 1) - A008472 (A233583 (n + 1)).toNat).toNat

end

end A236938.P5559423899820990062

/-! ## A236938.P2076900264829866621

`A000041(A076694(A137735(n²)))`
-/

namespace A236938.P2076900264829866621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (A076694 (A137735 (n ^ 2)).toNat).toNat

end

end A236938.P2076900264829866621

/-!
# A236939: Number T(n,k) of equivalence classes of ways of placing k 10 X 10 tiles in an n X n square under all symmetry operations of the square; irregular triangle T(n,k), n>=10, 0<=k<=floor(n/10)^2, read by rows.

The programs for A236939, there is no canonical definition to state claims against.
-/

/-! ## A236939.P18364292519905098956

`C(ceil(n/A210855(a(n-1)))+1, 2)` with `a(0)=1`
-/

namespace A236939.P18364292519905098956
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.choose (⌈(n : ℚ) / (A210855 (a (n - 1)) : ℚ)⌉ + 1).toNat 2

end

end A236939.P18364292519905098956

/-! ## A236939.P1156237289135252463

`A109221(eq[1, A169945(n)])`
-/

namespace A236939.P1156237289135252463
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169945 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109221 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A236939.P1156237289135252463

/-! ## A236939.P5604663101252122871

`A109221(eq[1, A321391(n)])`
-/

namespace A236939.P5604663101252122871
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321391 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109221 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A236939.P5604663101252122871

/-! ## A236939.P3635361810060466441

`A046854(eq[2, A178522(n)])`
-/

namespace A236939.P3635361810060466441
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178522 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046854 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A236939.P3635361810060466441

/-! ## A236939.P5416849709600833431

`A109221(lt[A169945(n), 2])`
-/

namespace A236939.P5416849709600833431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169945 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109221 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A236939.P5416849709600833431

/-!
# A236940: Primes p such that p^4-p+1 is prime.

The programs for A236940, there is no canonical definition to state claims against.
-/

/-! ## A236940.P16353778604317647419

`p?[A236761(n+1)]`
-/

namespace A236940.P16353778604317647419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236761 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A236940.P16353778604317647419

/-! ## A236940.P3967473979970590928

`p?[record[A236761(A328399(n))]]`
-/

namespace A236940.P3967473979970590928
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236761 (A328399 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A236940.P3967473979970590928

/-! ## A236940.P4416189205324863526

`∩[A007645(n+1), A236761(n+1)]`
-/

namespace A236940.P4416189205324863526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007645 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236761 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A236940.P4416189205324863526

/-! ## A236940.P1246114127591471507

`∩[A045331(n+1), A236761(n+1)]`
-/

namespace A236940.P1246114127591471507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045331 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236761 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A236940.P1246114127591471507

/-! ## A236940.P15907654379017966011

`∩[A040116(n+1), A236761(n+1)]`
-/

namespace A236940.P15907654379017966011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040116 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236761 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A236940.P15907654379017966011

/-! ## A236940.P2524994016369759082

`∩[A045405(n+1), A236761(n+1)]`
-/

namespace A236940.P2524994016369759082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045405 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236761 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A236940.P2524994016369759082

/-! ## A236940.P11657683026843659168

`∩[A045428(n+1), A236761(n+1)]`
-/

namespace A236940.P11657683026843659168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045428 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236761 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A236940.P11657683026843659168

/-! ## A236940.P2733118552498613589

`∩[A236761(n+1), A325143(n+1)]`
-/

namespace A236940.P2733118552498613589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236761 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325143 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A236940.P2733118552498613589

/-! ## A236940.P4351190559059094221

`∩[A059456(n+1), A236761(n+1)]`
-/

namespace A236940.P4351190559059094221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059456 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236761 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A236940.P4351190559059094221

/-! ## A236940.P13127204536183965322

`∩[A000040(n+1), A236761(n+1)]`
-/

namespace A236940.P13127204536183965322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236761 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A236940.P13127204536183965322

/-! ## A236940.P9424680248346496644

`∩[A004139(n+1), A236761(n+1)]`
-/

namespace A236940.P9424680248346496644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236761 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A236940.P9424680248346496644

/-! ## A236940.P9165918896198601743

`∩[A006005(n+1), A236761(n+1)]`
-/

namespace A236940.P9165918896198601743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236761 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A236940.P9165918896198601743

/-! ## A236940.P17333797808571321972

`∩[A008578(n+1), A236761(n+1)]`
-/

namespace A236940.P17333797808571321972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236761 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A236940.P17333797808571321972

/-! ## A236940.P2730864469765560045

`∩[A045319(n+1), A236761(n+1)]`
-/

namespace A236940.P2730864469765560045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236761 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A236940.P2730864469765560045

/-! ## A236940.P10331159463278309175

`∩[A046022(n+1), A236761(n+1)]`
-/

namespace A236940.P10331159463278309175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236761 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A236940.P10331159463278309175

/-! ## A236940.P9462987417978778934

`∩[A065091(n+1), A236761(n+1)]`
-/

namespace A236940.P9462987417978778934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236761 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A236940.P9462987417978778934

/-! ## A236940.P2039224666281287836

`∩[A065396(n+1), A236761(n+1)]`
-/

namespace A236940.P2039224666281287836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065396 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236761 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A236940.P2039224666281287836

/-! ## A236940.P9552343679415497257

`∩[A070303(n+1), A236761(n+1)]`
-/

namespace A236940.P9552343679415497257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070303 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236761 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A236940.P9552343679415497257

/-! ## A236940.P3370557984055440673

`∩[A106118(n+1), A236761(n+1)]`
-/

namespace A236940.P3370557984055440673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106118 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236761 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A236940.P3370557984055440673

/-! ## A236940.P9120682427162345610

`∩[A158611(n+1), A236761(n+1)]`
-/

namespace A236940.P9120682427162345610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236761 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A236940.P9120682427162345610

/-!
# A236941: 

The programs for A236941, there is no canonical definition to state claims against.
-/

/-! ## A236941.P16633756416054263350

`A236949((n+1)²+n²)`
-/

namespace A236941.P16633756416054263350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236949 ((n + 1) ^ 2 + n ^ 2)

end

end A236941.P16633756416054263350

/-!
# A236942: Number of (n+1) X (1+1) 0..3 arrays with the maximum of every 2 X 2 subblock equal.

The programs for A236942, there is no canonical definition to state claims against.
-/

/-! ## A236942.P3272603683669438596

`A236949(∑[n]+1)`
-/

namespace A236942.P3272603683669438596
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236949 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A236942.P3272603683669438596

/-! ## A236942.P11616979684164412090

`lcm(2, A236949(A000124(n)))`
-/

namespace A236942.P11616979684164412090
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A236949 (A000124 n).toNat)

end

end A236942.P11616979684164412090

/-! ## A236942.P10999694939515276600

`record[A103451(n)*A236949(n+1)]`
-/

namespace A236942.P10999694939515276600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103451 n * A236949 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236942.P10999694939515276600

/-! ## A236942.P15671542499103290225

`record[A023531(n)*A236949(n+1)]`
-/

namespace A236942.P15671542499103290225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023531 n * A236949 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236942.P15671542499103290225

/-! ## A236942.P1228726164540979730

`record[A236949(A000217(A134478(n)))]`
-/

namespace A236942.P1228726164540979730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236949 (A000217 (A134478 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236942.P1228726164540979730

/-!
# A236943: Number of (n+1)X(2+1) 0..3 arrays with the maximum of every 2X2 subblock equal.

The programs for A236943, there is no canonical definition to state claims against.
-/

/-! ## A236943.P14941662433437513643

`A236949(∑[n+1]+2)`
-/

namespace A236943.P14941662433437513643
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236949 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A236943.P14941662433437513643

/-! ## A236943.P1044013572846679062

`record[A236949(A198453(n+1))]`
-/

namespace A236943.P1044013572846679062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236949 (A198453 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236943.P1044013572846679062

/-!
# A236944: Number of (n+1)X(3+1) 0..3 arrays with the maximum of every 2X2 subblock equal.

The programs for A236944, there is no canonical definition to state claims against.
-/

/-! ## A236944.P5091920778849710749

`A236949(∑[n+2]+4)`
-/

namespace A236944.P5091920778849710749
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236949 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A236944.P5091920778849710749

/-!
# A236945: 

The programs for A236945, there is no canonical definition to state claims against.
-/

/-! ## A236945.P11766792126949087298

`A236949(A052905(n)+9)`
-/

namespace A236945.P11766792126949087298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236949 (A052905 n + 9).toNat

end

end A236945.P11766792126949087298

/-! ## A236945.P11660945910913818127

`A236949(A046691(n+3)-(2*n+1))`
-/

namespace A236945.P11660945910913818127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236949 (A046691 (n + 3) - (2 * n + 1 : ℤ)).toNat

end

end A236945.P11660945910913818127

/-! ## A236945.P5125542364655142633

`A236949(A027379(n+2))`
-/

namespace A236945.P5125542364655142633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236949 (A027379 (n + 2)).toNat

end

end A236945.P5125542364655142633

/-!
# A236946: 

The programs for A236946, there is no canonical definition to state claims against.
-/

/-! ## A236946.P14196766535266924628

`A236949(A046691(n+3))`
-/

namespace A236946.P14196766535266924628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236949 (A046691 (n + 3)).toNat

end

end A236946.P14196766535266924628

/-!
# A236947: 

The programs for A236947, there is no canonical definition to state claims against.
-/

/-! ## A236947.P6091543605657753666

`A236949(A046691(n+3)+10)`
-/

namespace A236947.P6091543605657753666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236949 (A046691 (n + 3) + 10).toNat

end

end A236947.P6091543605657753666

/-!
# A236950: Primes p such that p^4+p-1 is prime.

The programs for A236950, there is no canonical definition to state claims against.
-/

/-! ## A236950.P9167873843439586507

`p?[A236759(n+1)]`
-/

namespace A236950.P9167873843439586507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236759 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A236950.P9167873843439586507

/-! ## A236950.P15037107887635774302

`∩[A236759(n+1), A042990(n)]`
-/

namespace A236950.P15037107887635774302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236759 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042990 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A236950.P15037107887635774302

/-! ## A236950.P12371449203666728989

`∩[A045311(n+1), A236759(n+1)]`
-/

namespace A236950.P12371449203666728989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045311 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236759 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A236950.P12371449203666728989

/-! ## A236950.P11003156724036453972

`∩[A348283(n+1), A236759(n+1)]`
-/

namespace A236950.P11003156724036453972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348283 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236759 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A236950.P11003156724036453972

/-! ## A236950.P1904873811380789520

`∩[A000040(n+1), A236759(n+1)]`
-/

namespace A236950.P1904873811380789520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236759 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A236950.P1904873811380789520

/-! ## A236950.P11553687141519497878

`∩[A008578(n+1), A236759(n+1)]`
-/

namespace A236950.P11553687141519497878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236759 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A236950.P11553687141519497878

/-! ## A236950.P1158170692876919710

`∩[A045319(n+1), A236759(n+1)]`
-/

namespace A236950.P1158170692876919710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236759 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A236950.P1158170692876919710

/-! ## A236950.P2857352623163252930

`∩[A046022(n+1), A236759(n+1)]`
-/

namespace A236950.P2857352623163252930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236759 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A236950.P2857352623163252930

/-! ## A236950.P16360633469045446393

`∩[A062972(n+1), A236759(n+1)]`
-/

namespace A236950.P16360633469045446393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062972 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236759 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A236950.P16360633469045446393

/-! ## A236950.P4907988721025287424

`∩[A158611(n+1), A236759(n+1)]`
-/

namespace A236950.P4907988721025287424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236759 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A236950.P4907988721025287424

/-! ## A236950.P17194937805151878155

`∩[A175787(n+1), A236759(n+1)]`
-/

namespace A236950.P17194937805151878155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175787 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236759 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A236950.P17194937805151878155

/-! ## A236950.P11104691915122270527

`∩[A182986(n+1), A236759(n+1)]`
-/

namespace A236950.P11104691915122270527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236759 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A236950.P11104691915122270527

/-! ## A236950.P11886784126161942642

`∩[A236759(n+1), A326715(n+1)]`
-/

namespace A236950.P11886784126161942642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236759 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326715 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A236950.P11886784126161942642

/-! ## A236950.P17827553556398144347

`record[A020639(A236759(n+3))]`
-/

namespace A236950.P17827553556398144347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A236759 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236950.P17827553556398144347

/-! ## A236950.P11205236468907935890

`filter[A236759(n+1), A010051(#)]`
-/

namespace A236950.P11205236468907935890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236759 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A236950.P11205236468907935890

/-! ## A236950.P15832856668299872988

`p?[record[A236759(A133310(n))]]`
-/

namespace A236950.P15832856668299872988
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236759 (A133310 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A236950.P15832856668299872988

/-! ## A236950.P10580528631388683678

`∩[A372059(n+1), A236759(n+1)]`
-/

namespace A236950.P10580528631388683678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372059 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236759 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A236950.P10580528631388683678

/-! ## A236950.P16437824574404505166

`p?[A000035(n)*A236759(A008619(n))]`
-/

namespace A236950.P16437824574404505166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n * A236759 (A008619 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A236950.P16437824574404505166

/-! ## A236950.P16928411040848258306

`filter[A236759(n+1), A080339(#)]`
-/

namespace A236950.P16928411040848258306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236759 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080339 (f1 j).toNat = 1) n)

end

end A236950.P16928411040848258306

/-! ## A236950.P12888869485889210839

`record[A014963(A236759(n+1)%A046515(n+1))]`
-/

namespace A236950.P12888869485889210839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (Int.tmod (A236759 (n + 1)) (A046515 (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236950.P12888869485889210839

/-!
# A236951: Primes p such that p^4 + p +/ - 1 are twin primes.

The programs for A236951, there is no canonical definition to state claims against.
-/

/-! ## A236951.P383034515794507448

`∩[A236760(n+1), A236950(n+1)]`
-/

namespace A236951.P383034515794507448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236760 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236950 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A236951.P383034515794507448

/-! ## A236951.P5735622204307554128

`p?[A236760(n+1)]`
-/

namespace A236951.P5735622204307554128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236760 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A236951.P5735622204307554128

/-! ## A236951.P1108528186575027219

`p?[record[A236760(A133310(n))]]`
-/

namespace A236951.P1108528186575027219
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236760 (A133310 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A236951.P1108528186575027219

/-! ## A236951.P9843218470378966495

`p?[A000035(n)*A236760(A008619(n))]`
-/

namespace A236951.P9843218470378966495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n * A236760 (A008619 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A236951.P9843218470378966495

/-! ## A236951.P7936152252250992667

`p?[A033999(n)*A236760(A008619(n))]`
-/

namespace A236951.P7936152252250992667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A236760 (A008619 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A236951.P7936152252250992667

/-! ## A236951.P9656416148370098986

`record[p?[A236760(A262672(n))]]`
-/

namespace A236951.P9656416148370098986
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236760 (A262672 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236951.P9656416148370098986

/-! ## A236951.P6165369679822241042

`∩[A236044(n+1), A236760(n+1)]`
-/

namespace A236951.P6165369679822241042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236044 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236760 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A236951.P6165369679822241042

/-! ## A236951.P12386376910728278520

`∩[A003627(n+1), A236760(n+1)]`
-/

namespace A236951.P12386376910728278520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003627 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236760 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A236951.P12386376910728278520

/-!
# A236952: Primes p such that p^4 - p +/ - 1 are twin primes.

The programs for A236952, there is no canonical definition to state claims against.
-/

/-! ## A236952.P11914453498620915651

`∩[A236763(n+1), A236940(n+1)]`
-/

namespace A236952.P11914453498620915651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236763 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236940 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A236952.P11914453498620915651

/-! ## A236952.P18252234178624507385

`∩[A236071(n+1), A236763(n+1)]`
-/

namespace A236952.P18252234178624507385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236071 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236763 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A236952.P18252234178624507385

/-! ## A236952.P12455208594462672552

`∩[A236071(n+1), A236940(n+1)]`
-/

namespace A236952.P12455208594462672552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236071 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236940 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A236952.P12455208594462672552

/-! ## A236952.P7208884689641022358

`p?[A236763(n+1)]`
-/

namespace A236952.P7208884689641022358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236763 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A236952.P7208884689641022358

/-! ## A236952.P12515991566280593518

`record[p?[A236763(A052938(n))]]`
-/

namespace A236952.P12515991566280593518
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236763 (A052938 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236952.P12515991566280593518

/-! ## A236952.P12990880457825752723

`record[p?[A236763(A291769(n))]]`
-/

namespace A236952.P12990880457825752723
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236763 (A291769 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236952.P12990880457825752723

/-! ## A236952.P3915611529127702009

`record[p?[A236763(A328399(n))]]`
-/

namespace A236952.P3915611529127702009
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236763 (A328399 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236952.P3915611529127702009

/-! ## A236952.P7282050198154512936

`record[p?[A236763(A065648(n))]]`
-/

namespace A236952.P7282050198154512936
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236763 (A065648 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236952.P7282050198154512936

/-!
# A236953: E.g.f. satisfies: A'(x) = A(x)^7 / A(-x) with A(0) = 1.

The programs for A236953, there is no canonical definition to state claims against.
-/

/-! ## A236953.P7040433153942776206

`A314123(4*(a(n-1)-3))` with `a(0)=1, a(1)=1, a(2)=8`
-/

namespace A236953.P7040433153942776206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 8] fun n a =>
  A314123 (4 * (a (n - 1) - 3)).toNat

end

end A236953.P7040433153942776206

/-!
# A236954: E.g.f. satisfies: A'(x) = A(x)^7 * A(-x) with A(0) = 1.

The programs for A236954, there is no canonical definition to state claims against.
-/

/-! ## A236954.P13449906864562903962

`A316054(C(∑[n], n+1))`
-/

namespace A236954.P13449906864562903962
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316054 (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) (n + 1))

end

end A236954.P13449906864562903962

/-!
# A236955: E.g.f. satisfies: A'(x) = A(x)^7 * A(-x)^2 with A(0) = 1.

The programs for A236955, there is no canonical definition to state claims against.
-/

/-! ## A236955.P12712457399912621241

`A068612(14*a(n-1))` with `a(0)=1, a(1)=1, a(2)=5`
-/

namespace A236955.P12712457399912621241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 5] fun n a =>
  A068612 (14 * a (n - 1)).toNat

end

end A236955.P12712457399912621241

/-!
# A236956: E.g.f. satisfies: A'(x) = A(x)^7 * A(-x)^3 with A(0) = 1.

The programs for A236956, there is no canonical definition to state claims against.
-/

/-! ## A236956.P5705692170338634235

`A365826(C(n+3, 3))`
-/

namespace A236956.P5705692170338634235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365826 (Nat.choose (n + 3) 3)

end

end A236956.P5705692170338634235

/-!
# A236957: E.g.f. satisfies: A'(x) = A(x)^7 * A(-x)^4 with A(0) = 1.

The programs for A236957, there is no canonical definition to state claims against.
-/

/-! ## A236957.P2454689303518702091

`A108991(n)+A019473(A019511(n))`
-/

namespace A236957.P2454689303518702091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108991 n + A019473 (A019511 n).toNat

end

end A236957.P2454689303518702091

/-!
# A236958: E.g.f. satisfies: A'(x) = A(x)^7 * A(-x)^5 with A(0) = 1.

The programs for A236958, there is no canonical definition to state claims against.
-/

/-! ## A236958.P9012307342296458734

`A001951(or(A006125(n), A209660(n)))`
-/

namespace A236958.P9012307342296458734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001951 (Int.lor (A006125 n) (A209660 n)).toNat

end

end A236958.P9012307342296458734

/-! ## A236958.P8457084940486066911

`A292560((A114327(n)+n)*A292482(n))`
-/

namespace A236958.P8457084940486066911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292560 ((A114327 n + (n : ℤ)) * A292482 n).toNat

end

end A236958.P8457084940486066911

/-!
# A236959: Number of nonzero cubic residues modulo the n-th prime.

The programs for A236959, the canonical program `A236959.P4408222998361723081` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A236959 has offset 1).

The definition of A236959 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006093, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A236959.P4408222998361723081

`A006093(n+1)/gcd(A006093(n+1), 3)`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A236959

/-- `A006093(n+1)/gcd(A006093(n+1), 3)` -/
def P4408222998361723081.Spec : Prop :=
  ∀ n, P4408222998361723081.a n = (A236959 (n + 1) : ℚ)

end A236959

/-! ## A236959.P13324473723279047808

`A323704(n+1)-1`
-/

namespace A236959.P13324473723279047808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323704 (n + 1) - 1

end

end A236959.P13324473723279047808

namespace A236959

/-- `A323704(n+1)-1` -/
def P13324473723279047808.Spec : Prop :=
  ∀ n, P13324473723279047808.a n = A236959 (n + 1)

end A236959

/-! ## A236959.P8210719319419253962

`gcd(A006093(n+1), A127919(n+1))`
-/

namespace A236959.P8210719319419253962
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A006093 (n + 1)) (A127919 (n + 1))

end

end A236959.P8210719319419253962

namespace A236959

/-- `gcd(A006093(n+1), A127919(n+1))` -/
def P8210719319419253962.Spec : Prop :=
  ∀ n, (P8210719319419253962.a n : ℤ) = A236959 (n + 1)

end A236959

/-! ## A236959.P10030068244122886761

`gcd(A037167(n+1), A127920(n+1))`
-/

namespace A236959.P10030068244122886761
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A037167 (n + 1)) (A127920 (n + 1))

end

end A236959.P10030068244122886761

namespace A236959

/-- `gcd(A037167(n+1), A127920(n+1))` -/
def P10030068244122886761.Spec : Prop :=
  ∀ n, (P10030068244122886761.a n : ℤ) = A236959 (n + 1)

end A236959

/-! ## A236959.P11513854588319372655

`gcd(A039915(n+1), A138419(n+1))`
-/

namespace A236959.P11513854588319372655
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A039915 (n + 1)) (A138419 (n + 1))

end

end A236959.P11513854588319372655

namespace A236959

/-- `gcd(A039915(n+1), A138419(n+1))` -/
def P11513854588319372655.Spec : Prop :=
  ∀ n, (P11513854588319372655.a n : ℤ) = A236959 (n + 1)

end A236959

/-! ## A236959.P17874849812063767488

`lcm(A099585(n+1), A356093(n+1))`
-/

namespace A236959.P17874849812063767488
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A099585 (n + 1)) (A356093 (n + 1))

end

end A236959.P17874849812063767488

namespace A236959

/-- `lcm(A099585(n+1), A356093(n+1))` -/
def P17874849812063767488.Spec : Prop :=
  ∀ n, (P17874849812063767488.a n : ℤ) = A236959 (n + 1)

end A236959

/-! ## A236959.P10752692681978459497

`A051176(A006093(n+1))`
-/

namespace A236959.P10752692681978459497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051176 (A006093 (n + 1)).toNat

end

end A236959.P10752692681978459497

namespace A236959

/-- `A051176(A006093(n+1))` -/
def P10752692681978459497.Spec : Prop :=
  ∀ n, P10752692681978459497.a n = A236959 (n + 1)

end A236959

/-! ## A236959.P4714054418447724209

`A087692(A000040(n+1))`
-/

namespace A236959.P4714054418447724209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087692 (A000040 (n + 1)).toNat

end

end A236959.P4714054418447724209

namespace A236959

/-- `A087692(A000040(n+1))` -/
def P4714054418447724209.Spec : Prop :=
  ∀ n, P4714054418447724209.a n = A236959 (n + 1)

end A236959

/-! ## A236959.P5172230479305223700

`A051176(A039915(n+1))`
-/

namespace A236959.P5172230479305223700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051176 (A039915 (n + 1)).toNat

end

end A236959.P5172230479305223700

namespace A236959

/-- `A051176(A039915(n+1))` -/
def P5172230479305223700.Spec : Prop :=
  ∀ n, P5172230479305223700.a n = A236959 (n + 1)

end A236959

/-! ## A236959.P1961615376997692080

`A087692(A006005(n+1))`
-/

namespace A236959.P1961615376997692080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087692 (A006005 (n + 1)).toNat

end

end A236959.P1961615376997692080

namespace A236959

/-- `A087692(A006005(n+1))` -/
def P1961615376997692080.Spec : Prop :=
  ∀ n, P1961615376997692080.a n = A236959 (n + 1)

end A236959

/-! ## A236959.P8112431133810842804

`A023443(A323704(n+1))`
-/

namespace A236959.P8112431133810842804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A323704 (n + 1)).toNat

end

end A236959.P8112431133810842804

namespace A236959

/-- `A023443(A323704(n+1))` -/
def P8112431133810842804.Spec : Prop :=
  ∀ n, P8112431133810842804.a n = A236959 (n + 1)

end A236959

/-! ## A236959.P15612441271571922031

`A087692(A008578(n+2))`
-/

namespace A236959.P15612441271571922031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087692 (A008578 (n + 2)).toNat

end

end A236959.P15612441271571922031

namespace A236959

/-- `A087692(A008578(n+2))` -/
def P15612441271571922031.Spec : Prop :=
  ∀ n, P15612441271571922031.a n = A236959 (n + 1)

end A236959

/-! ## A236959.P14805521778657202071

`A087692(A075643(n+2))`
-/

namespace A236959.P14805521778657202071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087692 (A075643 (n + 2)).toNat

end

end A236959.P14805521778657202071

namespace A236959

/-- `A087692(A075643(n+2))` -/
def P14805521778657202071.Spec : Prop :=
  ∀ n, P14805521778657202071.a n = A236959 (n + 1)

end A236959

/-! ## A236959.P10148627074627122260

`A046530(A182986(n+2))-1`
-/

namespace A236959.P10148627074627122260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046530 (A182986 (n + 2)).toNat - 1

end

end A236959.P10148627074627122260

namespace A236959

/-- `A046530(A182986(n+2))-1` -/
def P10148627074627122260.Spec : Prop :=
  ∀ n, P10148627074627122260.a n = A236959 (n + 1)

end A236959

/-! ## A236959.P16368096840616834757

`A051176(eq[1, A175126(n+1)])`
-/

namespace A236959.P16368096840616834757
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175126 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051176 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A236959.P16368096840616834757

namespace A236959

/-- `A051176(eq[1, A175126(n+1)])` -/
def P16368096840616834757.Spec : Prop :=
  ∀ n, P16368096840616834757.a n = A236959 (n + 1)

end A236959

/-! ## A236959.P17958427666359321840

`A051176(eq[2, A077462(n+1)])`
-/

namespace A236959.P17958427666359321840
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077462 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051176 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A236959.P17958427666359321840

namespace A236959

/-- `A051176(eq[2, A077462(n+1)])` -/
def P17958427666359321840.Spec : Prop :=
  ∀ n, P17958427666359321840.a n = A236959 (n + 1)

end A236959

/-! ## A236959.P4784491459653540642

`A342415(A100484(n+1))`
-/

namespace A236959.P4784491459653540642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342415 (A100484 (n + 1)).toNat

end

end A236959.P4784491459653540642

namespace A236959

/-- `A342415(A100484(n+1))` -/
def P4784491459653540642.Spec : Prop :=
  ∀ n, P4784491459653540642.a n = A236959 (n + 1)

end A236959

/-! ## A236959.P8533977444045291863

`A060789(A037168(n+1))`
-/

namespace A236959.P8533977444045291863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060789 (A037168 (n + 1)).toNat

end

end A236959.P8533977444045291863

namespace A236959

/-- `A060789(A037168(n+1))` -/
def P8533977444045291863.Spec : Prop :=
  ∀ n, P8533977444045291863.a n = A236959 (n + 1)

end A236959

/-! ## A236959.P17168810205388796106

`A268336(A001748(n+1))`
-/

namespace A236959.P17168810205388796106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268336 (A001748 (n + 1)).toNat

end

end A236959.P17168810205388796106

namespace A236959

/-- `A268336(A001748(n+1))` -/
def P17168810205388796106.Spec : Prop :=
  ∀ n, P17168810205388796106.a n = A236959 (n + 1)

end A236959

/-! ## A236959.P8445800626565079857

`A341857(A063534(n+1))`
-/

namespace A236959.P8445800626565079857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341857 (A063534 (n + 1)).toNat

end

end A236959.P8445800626565079857

namespace A236959

/-- `A341857(A063534(n+1))` -/
def P8445800626565079857.Spec : Prop :=
  ∀ n, P8445800626565079857.a n = A236959 (n + 1)

end A236959

/-!
# A236960: Given g.f. A(x) of this sequence, triangle A236961 transforms the diagonals in the table of successive iterations of A(x) such that A236961(n,0) = n^n.

The programs for A236960, there is no canonical definition to state claims against.
-/

/-! ## A236960.P2779169715770276292

`A377569(n)+A364272(A377572(n))`
-/

namespace A236960.P2779169715770276292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377569 n + A364272 (A377572 n).toNat

end

end A236960.P2779169715770276292

/-!
# A236961: Triangle, read by rows, that transforms diagonals in the table of coefficients in the successive iterations of g.f. of A236960 such that column 0 equals T(n,0) = n^n.

The programs for A236961, there is no canonical definition to state claims against.
-/

/-! ## A236961.P1578123880105715476

`A158835(n+1)+A010893(A119502(n))`
-/

namespace A236961.P1578123880105715476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158835 (n + 1) + A010893 ((A119502 n).toNat + 13)

end

end A236961.P1578123880105715476

/-! ## A236961.P10805822282288031555

`A158835(n+1)+A010893(A130534(n))`
-/

namespace A236961.P10805822282288031555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158835 (n + 1) + A010893 ((A130534 n).toNat + 13)

end

end A236961.P10805822282288031555

/-! ## A236961.P7541276248016332273

`A326033(A158815(n))+A158835(n+1)`
-/

namespace A236961.P7541276248016332273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326033 (A158815 n).toNat + A158835 (n + 1)

end

end A236961.P7541276248016332273

/-! ## A236961.P17672344175154013930

`A158835(n+1)+A135767(A081703(n+1))`
-/

namespace A236961.P17672344175154013930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158835 (n + 1) + A135767 (A081703 (n + 1)).toNat

end

end A236961.P17672344175154013930

/-! ## A236961.P12267871593224230917

`A241462(A064989(n+1))+A158835(n+1)`
-/

namespace A236961.P12267871593224230917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241462 (A064989 (n + 1)).toNat + A158835 (n + 1)

end

end A236961.P12267871593224230917

/-!
# A236962: Column 1 of triangle A236961.

The programs for A236962, there is no canonical definition to state claims against.
-/

/-! ## A236962.P11995048554736800105

`A236961(∑[n+1]+1)`
-/

namespace A236962.P11995048554736800105
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236961 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A236962.P11995048554736800105

/-! ## A236962.P9889357587389560669

`record[A236961(A036406(n))]`
-/

namespace A236962.P9889357587389560669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236961 (A036406 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236962.P9889357587389560669

/-! ## A236962.P11533184079485988579

`record[A236961(∑[A035214(n)])]`
-/

namespace A236962.P11533184079485988579
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035214 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236961 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236962.P11533184079485988579

/-! ## A236962.P17571679554535692098

`record[A236961(gcd(n, A010816(n)))]`
-/

namespace A236962.P17571679554535692098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236961 (Int.gcd (n : ℤ) (A010816 n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236962.P17571679554535692098

/-! ## A236962.P10286335868583679719

`record[A236961(lt[1, A002260(n+1)])]`
-/

namespace A236962.P10286335868583679719
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236961 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236962.P10286335868583679719

/-!
# A236963: Column 2 of triangle A236961.

The programs for A236963, there is no canonical definition to state claims against.
-/

/-! ## A236963.P14156948387306833838

`A236961(∑[n+2]+3)`
-/

namespace A236963.P14156948387306833838
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236961 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A236963.P14156948387306833838

/-! ## A236963.P4469995944993871969

`record[A236961(lt[1, A002262(n)])]`
-/

namespace A236963.P4469995944993871969
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236961 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236963.P4469995944993871969

/-! ## A236963.P10226825321720562776

`record[A236961(lt[2, A002260(n+1)])]`
-/

namespace A236963.P10226825321720562776
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236961 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236963.P10226825321720562776

/-! ## A236963.P4621405667269501454

`or(A000007(n), A236961(A133263(n+2)))`
-/

namespace A236963.P4621405667269501454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A236961 (A133263 (n + 2)).toNat)

end

end A236963.P4621405667269501454

/-!
# A236964: Column 3 of triangle A236961.

The programs for A236964, there is no canonical definition to state claims against.
-/

/-! ## A236964.P5831755008780144364

`A236961(A167614(n+2))`
-/

namespace A236964.P5831755008780144364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236961 (A167614 (n + 2)).toNat

end

end A236964.P5831755008780144364

/-! ## A236964.P10029411298407877583

`A236961(A055999(n)+9)`
-/

namespace A236964.P10029411298407877583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236961 (A055999 n + 9).toNat

end

end A236964.P10029411298407877583

/-! ## A236964.P14629008533595394229

`A236961(eq[3, A002262(n)])`
-/

namespace A236964.P14629008533595394229
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236961 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A236964.P14629008533595394229

/-! ## A236964.P10408819411070947652

`record[A236961(lt[2, A002262(n)])]`
-/

namespace A236964.P10408819411070947652
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236961 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236964.P10408819411070947652

/-! ## A236964.P8550122494751402479

`A236961(eq[4, A002260(n+1)])`
-/

namespace A236964.P8550122494751402479
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236961 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A236964.P8550122494751402479

/-!
# A236965: Number of nonzero quartic residues modulo the n-th prime.

The programs for A236965, the canonical program `A236965.P13563175010307940546` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A236965 has offset 1).

The definition of A236965 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006093, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A236965.P13563175010307940546

`A006093(n+1)/gcd(A006093(n+1), 4)`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A236965

/-- `A006093(n+1)/gcd(A006093(n+1), 4)` -/
def P13563175010307940546.Spec : Prop :=
  ∀ n, P13563175010307940546.a n = (A236965 (n + 1) : ℚ)

end A236965

/-! ## A236965.P10334150402812744123

`lcm(2, A130290(n+1))/2`
-/

namespace A236965.P10334150402812744123
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 (A130290 (n + 1)) : ℚ) / 2

end

end A236965.P10334150402812744123

namespace A236965

/-- `lcm(2, A130290(n+1))/2` -/
def P10334150402812744123.Spec : Prop :=
  ∀ n, P10334150402812744123.a n = (A236965 (n + 1) : ℚ)

end A236965

/-! ## A236965.P8488651618132468318

`lcm(4, A006093(n+1))/4`
-/

namespace A236965.P8488651618132468318
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 4 (A006093 (n + 1)) : ℚ) / 4

end

end A236965.P8488651618132468318

namespace A236965

/-- `lcm(4, A006093(n+1))/4` -/
def P8488651618132468318.Spec : Prop :=
  ∀ n, P8488651618132468318.a n = (A236965 (n + 1) : ℚ)

end A236965

/-! ## A236965.P8850457398995555532

`gcd(A130290(n+1), A138436(n+1))`
-/

namespace A236965.P8850457398995555532
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A130290 (n + 1)) (A138436 (n + 1))

end

end A236965.P8850457398995555532

namespace A236965

/-- `gcd(A130290(n+1), A138436(n+1))` -/
def P8850457398995555532.Spec : Prop :=
  ∀ n, (P8850457398995555532.a n : ℤ) = A236965 (n + 1)

end A236965

/-! ## A236965.P5395171986873668799

`A026741(A130290(n+1))`
-/

namespace A236965.P5395171986873668799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A130290 (n + 1)).toNat

end

end A236965.P5395171986873668799

namespace A236965

/-- `A026741(A130290(n+1))` -/
def P5395171986873668799.Spec : Prop :=
  ∀ n, P5395171986873668799.a n = A236965 (n + 1)

end A236965

/-! ## A236965.P17234419378389863013

`A026741(A102781(n+1)+A000007(n))`
-/

namespace A236965.P17234419378389863013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A102781 (n + 1) + A000007 n).toNat

end

end A236965.P17234419378389863013

namespace A236965

/-- `A026741(A102781(n+1)+A000007(n))` -/
def P17234419378389863013.Spec : Prop :=
  ∀ n, P17234419378389863013.a n = A236965 (n + 1)

end A236965

/-! ## A236965.P17136676645355567806

`A124446(p?[xor(1, n)])`
-/

namespace A236965.P17136676645355567806
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124446 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A236965.P17136676645355567806

namespace A236965

/-- `A124446(p?[xor(1, n)])` -/
def P17136676645355567806.Spec : Prop :=
  ∀ n, P17136676645355567806.a n = A236965 (n + 1)

end A236965

/-! ## A236965.P4287999195449673000

`A250207(p?[xor(1, n)])`
-/

namespace A236965.P4287999195449673000
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250207 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A236965.P4287999195449673000

namespace A236965

/-- `A250207(p?[xor(1, n)])` -/
def P4287999195449673000.Spec : Prop :=
  ∀ n, P4287999195449673000.a n = A236965 (n + 1)

end A236965

/-! ## A236965.P13924601873715930502

`A060819(p?[xor(1, n)]-1)`
-/

namespace A236965.P13924601873715930502
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060819 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) - 1)

end

end A236965.P13924601873715930502

namespace A236965

/-- `A060819(p?[xor(1, n)]-1)` -/
def P13924601873715930502.Spec : Prop :=
  ∀ n, P13924601873715930502.a n = A236965 (n + 1)

end A236965

/-! ## A236965.P13765079455633357582

`A052273(p?[xor(1, n)+1])-1`
-/

namespace A236965.P13765079455633357582
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052273 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)) - 1

end

end A236965.P13765079455633357582

namespace A236965

/-- `A052273(p?[xor(1, n)+1])-1` -/
def P13765079455633357582.Spec : Prop :=
  ∀ n, P13765079455633357582.a n = A236965 (n + 1)

end A236965

/-! ## A236965.P16138707774465975663

`A030065(A006093(n+1))`
-/

namespace A236965.P16138707774465975663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030065 (A006093 (n + 1)).toNat

end

end A236965.P16138707774465975663

namespace A236965

/-- `A030065(A006093(n+1))` -/
def P16138707774465975663.Spec : Prop :=
  ∀ n, P16138707774465975663.a n = A236965 (n + 1)

end A236965

/-! ## A236965.P9180788502223487016

`A124446(A000040(n+1))`
-/

namespace A236965.P9180788502223487016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124446 (A000040 (n + 1)).toNat

end

end A236965.P9180788502223487016

namespace A236965

/-- `A124446(A000040(n+1))` -/
def P9180788502223487016.Spec : Prop :=
  ∀ n, P9180788502223487016.a n = A236965 (n + 1)

end A236965

/-! ## A236965.P13521068976175916503

`A124446(A006005(n+1))`
-/

namespace A236965.P13521068976175916503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124446 (A006005 (n + 1)).toNat

end

end A236965.P13521068976175916503

namespace A236965

/-- `A124446(A006005(n+1))` -/
def P13521068976175916503.Spec : Prop :=
  ∀ n, P13521068976175916503.a n = A236965 (n + 1)

end A236965

/-! ## A236965.P12424512031994911819

`A030065(A156037(n+1))`
-/

namespace A236965.P12424512031994911819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030065 (A156037 (n + 1)).toNat

end

end A236965.P12424512031994911819

namespace A236965

/-- `A030065(A156037(n+1))` -/
def P12424512031994911819.Spec : Prop :=
  ∀ n, P12424512031994911819.a n = A236965 (n + 1)

end A236965

/-! ## A236965.P17746199424576837647

`A124446(A161847(n+1))`
-/

namespace A236965.P17746199424576837647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124446 (A161847 (n + 1)).toNat

end

end A236965.P17746199424576837647

namespace A236965

/-- `A124446(A161847(n+1))` -/
def P17746199424576837647.Spec : Prop :=
  ∀ n, P17746199424576837647.a n = A236965 (n + 1)

end A236965

/-! ## A236965.P13226357964987931720

`A124446(A175787(n+2))`
-/

namespace A236965.P13226357964987931720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124446 (A175787 (n + 2)).toNat

end

end A236965.P13226357964987931720

namespace A236965

/-- `A124446(A175787(n+2))` -/
def P13226357964987931720.Spec : Prop :=
  ∀ n, P13226357964987931720.a n = A236965 (n + 1)

end A236965

/-! ## A236965.P487809937041510681

`A060819(A040976(n+1)+1)`
-/

namespace A236965.P487809937041510681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060819 (A040976 (n + 1) + 1).toNat

end

end A236965.P487809937041510681

namespace A236965

/-- `A060819(A040976(n+1)+1)` -/
def P487809937041510681.Spec : Prop :=
  ∀ n, P487809937041510681.a n = A236965 (n + 1)

end A236965

/-! ## A236965.P165958095786657214

`A060819(A000040(n+1)-1)`
-/

namespace A236965.P165958095786657214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060819 (A000040 (n + 1) - 1).toNat

end

end A236965.P165958095786657214

namespace A236965

/-- `A060819(A000040(n+1)-1)` -/
def P165958095786657214.Spec : Prop :=
  ∀ n, P165958095786657214.a n = A236965 (n + 1)

end A236965

/-! ## A236965.P7017719299489260267

`A250207(A073582(n+1)/2)`
-/

namespace A236965.P7017719299489260267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250207 (SequenceMachineLib.roundAway ((A073582 (n + 1) : ℚ) / 2)).toNat

end

end A236965.P7017719299489260267

namespace A236965

/-- `A250207(A073582(n+1)/2)` -/
def P7017719299489260267.Spec : Prop :=
  ∀ n, P7017719299489260267.a n = A236965 (n + 1)

end A236965

/-! ## A236965.P1686341501734323426

`A026730(A037168(n+1))`
-/

namespace A236965.P1686341501734323426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026730 (A037168 (n + 1)).toNat

end

end A236965.P1686341501734323426

namespace A236965

/-- `A026730(A037168(n+1))` -/
def P1686341501734323426.Spec : Prop :=
  ∀ n, P1686341501734323426.a n = A236965 (n + 1)

end A236965

/-!
# A236966: Number of primes p < prime(n)/2 such that 2^p - 1 is a primitive root modulo prime(n).

The programs for A236966, there is no canonical definition to state claims against.
-/

/-! ## A236966.P5935522130351526063

`A001222(or(A033091(n), A097546(2*n+1)))`
-/

namespace A236966.P5935522130351526063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.lor (A033091 n) (A097546 (2 * n + 1))).toNat

end

end A236966.P5935522130351526063

/-!
# A236967: Expansion of (1+3*x)^2/(1-3*x)^2.

The programs for A236967, the canonical program `A236967.P11485579401680264996` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A236967 has offset 0).

The definition of A236967 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+6x+9x^2)/(1-6x+9x^2))` (program `A236967.P11485579401680264996`, by `A236967.P11485579401680264996.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A236967.P11485579401680264996

`ogf((1+6x+9x^2)/(1-6x+9x^2))`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A236967

/-- `ogf((1+6x+9x^2)/(1-6x+9x^2))` -/
def P11485579401680264996.Spec : Prop :=
  ∀ n, P11485579401680264996.a n = A236967 n

theorem P11485579401680264996.correct : P11485579401680264996.Spec := by
  intro n
  simp only [A236967]

end A236967

/-! ## A236967.P68410646526107056

`3^n*floor(4/sinh(acot(n)))`
-/

namespace A236967.P68410646526107056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℤ) * ⌊4 / Real.sinh (SequenceMachineLib.acot (n : ℝ))⌋

end

end A236967.P68410646526107056

namespace A236967

/-- `3^n*floor(4/sinh(acot(n)))` -/
def P68410646526107056.Spec : Prop :=
  ∀ n, P68410646526107056.a n = A236967 n

end A236967

/-! ## A236967.P16649425019378656116

`3^n*floor(2/acot(2*n))`
-/

namespace A236967.P16649425019378656116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℤ) * ⌊2 / SequenceMachineLib.acot (2 * n : ℝ)⌋

end

end A236967.P16649425019378656116

namespace A236967

/-- `3^n*floor(2/acot(2*n))` -/
def P16649425019378656116.Spec : Prop :=
  ∀ n, P16649425019378656116.a n = A236967 n

end A236967

/-! ## A236967.P3120194750229505771

`3^n*round(2/acot(2*n))`
-/

namespace A236967.P3120194750229505771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℤ) * SequenceMachineLib.roundAway (2 / SequenceMachineLib.acot (2 * n : ℝ))

end

end A236967.P3120194750229505771

namespace A236967

/-- `3^n*round(2/acot(2*n))` -/
def P3120194750229505771.Spec : Prop :=
  ∀ n, P3120194750229505771.a n = A236967 n

end A236967

/-! ## A236967.P8948395749162696946

`Δ[3^n]*record[(n+1)/gcd(2, n)]`
-/

namespace A236967.P8948395749162696946
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (Nat.gcd 2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℚ) * f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

end

end A236967.P8948395749162696946

namespace A236967

/-- `Δ[3^n]*record[(n+1)/gcd(2, n)]` -/
def P8948395749162696946.Spec : Prop :=
  ∀ n, P8948395749162696946.a n = (A236967 n : ℚ)

end A236967

/-! ## A236967.P12101104675129617930

`3^n*A008574(n)`
-/

namespace A236967.P12101104675129617930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℤ) * A008574 n

end

end A236967.P12101104675129617930

namespace A236967

/-- `3^n*A008574(n)` -/
def P12101104675129617930.Spec : Prop :=
  ∀ n, P12101104675129617930.a n = A236967 n

end A236967

/-! ## A236967.P4621188901859546598

`record[abs(1-n)*A003946(n)]`
-/

namespace A236967.P4621188901859546598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (n : ℤ)| * A003946 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236967.P4621188901859546598

namespace A236967

/-- `record[abs(1-n)*A003946(n)]` -/
def P4621188901859546598.Spec : Prop :=
  ∀ n, P4621188901859546598.a n = A236967 n

end A236967

/-! ## A236967.P9902931332793478910

`record[abs(1-n)*A027327(n)]`
-/

namespace A236967.P9902931332793478910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (n : ℤ)| * A027327 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236967.P9902931332793478910

namespace A236967

/-- `record[abs(1-n)*A027327(n)]` -/
def P9902931332793478910.Spec : Prop :=
  ∀ n, P9902931332793478910.a n = A236967 n

end A236967

/-! ## A236967.P7129378014541512594

`record[(n+1)*A166450(n+1)]`
-/

namespace A236967.P7129378014541512594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A166450 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236967.P7129378014541512594

namespace A236967

/-- `record[(n+1)*A166450(n+1)]` -/
def P7129378014541512594.Spec : Prop :=
  ∀ n, P7129378014541512594.a n = A236967 n

end A236967

/-! ## A236967.P10152795858717419633

`A003946(n)*A008486(n)`
-/

namespace A236967.P10152795858717419633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003946 n * A008486 n

end

end A236967.P10152795858717419633

namespace A236967

/-- `A003946(n)*A008486(n)` -/
def P10152795858717419633.Spec : Prop :=
  ∀ n, P10152795858717419633.a n = A236967 n

end A236967

/-! ## A236967.P13641637919426014278

`A008458(n)*A025192(n)`
-/

namespace A236967.P13641637919426014278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n * A025192 n

end

end A236967.P13641637919426014278

namespace A236967

/-- `A008458(n)*A025192(n)` -/
def P13641637919426014278.Spec : Prop :=
  ∀ n, P13641637919426014278.a n = A236967 n

end A236967

/-! ## A236967.P1845510784708821347

`A004277(n)*A099856(n)`
-/

namespace A236967.P1845510784708821347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n * A099856 n

end

end A236967.P1845510784708821347

namespace A236967

/-- `A004277(n)*A099856(n)` -/
def P1845510784708821347.Spec : Prop :=
  ∀ n, P1845510784708821347.a n = A236967 n

end A236967

/-! ## A236967.P9573476956682868968

`(A004273(n)+1)*A099856(n)`
-/

namespace A236967.P9573476956682868968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A004273 n + 1) * A099856 n

end

end A236967.P9573476956682868968

namespace A236967

/-- `(A004273(n)+1)*A099856(n)` -/
def P9573476956682868968.Spec : Prop :=
  ∀ n, P9573476956682868968.a n = A236967 n

end A236967

/-! ## A236967.P2711751440883245692

`A008486(n)*A326339(n+2)`
-/

namespace A236967.P2711751440883245692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 n * A326339 (n + 2)

end

end A236967.P2711751440883245692

namespace A236967

/-- `A008486(n)*A326339(n+2)` -/
def P2711751440883245692.Spec : Prop :=
  ∀ n, P2711751440883245692.a n = A236967 n

end A236967

/-! ## A236967.P15270468972769938091

`A000244(n)*A004277(2*n)`
-/

namespace A236967.P15270468972769938091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 n * A004277 (2 * n)

end

end A236967.P15270468972769938091

namespace A236967

/-- `A000244(n)*A004277(2*n)` -/
def P15270468972769938091.Spec : Prop :=
  ∀ n, P15270468972769938091.a n = A236967 n

end A236967

/-! ## A236967.P925837048489233122

`(A008486(n)+n)*A000244(n)`
-/

namespace A236967.P925837048489233122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A008486 n + (n : ℤ)) * A000244 n

end

end A236967.P925837048489233122

namespace A236967

/-- `(A008486(n)+n)*A000244(n)` -/
def P925837048489233122.Spec : Prop :=
  ∀ n, P925837048489233122.a n = A236967 n

end A236967

/-! ## A236967.P9886245587288120332

`Δ[A103453(n)]*A028310(2*n)`
-/

namespace A236967.P9886245587288120332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103453 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A028310 (2 * n)

end

end A236967.P9886245587288120332

namespace A236967

/-- `Δ[A103453(n)]*A028310(2*n)` -/
def P9886245587288120332.Spec : Prop :=
  ∀ n, P9886245587288120332.a n = A236967 n

end A236967

/-! ## A236967.P11758673782630302113

`A004277(2*n)*A038754(2*n)`
-/

namespace A236967.P11758673782630302113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (2 * n) * A038754 (2 * n)

end

end A236967.P11758673782630302113

namespace A236967

/-- `A004277(2*n)*A038754(2*n)` -/
def P11758673782630302113.Spec : Prop :=
  ∀ n, P11758673782630302113.a n = A236967 n

end A236967

/-! ## A236967.P13546402689685580924

`A004277(2*n)*A083658(2*n)`
-/

namespace A236967.P13546402689685580924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (2 * n) * A083658 (2 * n)

end

end A236967.P13546402689685580924

namespace A236967

/-- `A004277(2*n)*A083658(2*n)` -/
def P13546402689685580924.Spec : Prop :=
  ∀ n, P13546402689685580924.a n = A236967 n

end A236967

/-!
# A236968: Number of ordered ways to write n = k + m with k > 0 and m > 0 such that 6*k - 1, 6*k + 1 and k + phi(m) are all prime, where phi(.) is Euler's totient function.

The programs for A236968, there is no canonical definition to state claims against.
-/

/-! ## A236968.P14107766552798937889

`A331410(∑[A000120(A226253(n))])`
-/

namespace A236968.P14107766552798937889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A226253 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331410 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A236968.P14107766552798937889

/-! ## A236968.P8773906423633533771

`A327500(A093039(n+1)*A191175(n+1))`
-/

namespace A236968.P8773906423633533771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327500 (A093039 (n + 1) * A191175 (n + 1)).toNat

end

end A236968.P8773906423633533771

/-! ## A236968.P1276054934477249348

`A060500(A033489(n+1)-A000007(n))`
-/

namespace A236968.P1276054934477249348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060500 (A033489 (n + 1) - A000007 n).toNat

end

end A236968.P1276054934477249348

/-! ## A236968.P5174637499955238293

`A060500(A033489(n+1)%A033469(n))`
-/

namespace A236968.P5174637499955238293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060500 (Int.tmod (A033489 (n + 1)) (A033469 n)).toNat

end

end A236968.P5174637499955238293

/-! ## A236968.P13926770587958439126

`A001222(or(A008619(3*n+1), A056456(n+1)))`
-/

namespace A236968.P13926770587958439126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.lor (A008619 (3 * n + 1)) (A056456 (n + 1))).toNat

end

end A236968.P13926770587958439126

/-!
# A236969: Primes p such that there exist x, y where x + y, x * y and x ^ y == 1 mod p.

The programs for A236969, there is no canonical definition to state claims against.
-/

/-! ## A236969.P5511018347042859050

`∩[A023239(n+1), A111622(n+1)]`
-/

namespace A236969.P5511018347042859050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023239 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111622 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A236969.P5511018347042859050

/-!
# A236973: Number of (n+1)X(1+1) 0..3 arrays with the maximum plus the upper median minus the minimum of every 2X2 subblock equal.

The programs for A236973, there is no canonical definition to state claims against.
-/

/-! ## A236973.P16280958379938224429

`A236979(∑[n]+1)`
-/

namespace A236973.P16280958379938224429
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236979 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A236973.P16280958379938224429

/-! ## A236973.P5786274027861839677

`lcm(2, A236979(A000124(n)))`
-/

namespace A236973.P5786274027861839677
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A236979 (A000124 n).toNat)

end

end A236973.P5786274027861839677

/-! ## A236973.P300549247297943427

`record[A010054(n)*A236979(n+1)]`
-/

namespace A236973.P300549247297943427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A236979 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236973.P300549247297943427

/-! ## A236973.P4761113608100968597

`record[gcd(A004197(n), A236979(n+1))]`
-/

namespace A236973.P4761113608100968597
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A004197 n) (A236979 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236973.P4761113608100968597

/-! ## A236973.P2963835937736199918

`record[A236979(n+1)/A295213(n+1)]`
-/

namespace A236973.P2963835937736199918
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A236979 (n + 1) : ℚ) / (A295213 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236973.P2963835937736199918

/-!
# A236974: Number of (n+1)X(2+1) 0..3 arrays with the maximum plus the upper median minus the minimum of every 2X2 subblock equal.

The programs for A236974, there is no canonical definition to state claims against.
-/

/-! ## A236974.P3823989913247443460

`A236979(∑[n+1]+2)`
-/

namespace A236974.P3823989913247443460
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236979 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A236974.P3823989913247443460

/-! ## A236974.P6262147983942074160

`record[A010054(n)*A236979(n+2)]`
-/

namespace A236974.P6262147983942074160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A236979 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236974.P6262147983942074160

/-! ## A236974.P2980722292152802363

`record[root(A236979(n+2), A199847(n+1))]`
-/

namespace A236974.P2980722292152802363
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A236979 (n + 2) : ℝ) ^ (1 / (A199847 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236974.P2980722292152802363

/-! ## A236974.P17940938028619865530

`record[gcd(A003992(n+2), A236979(n+2))]`
-/

namespace A236974.P17940938028619865530
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003992 (n + 2)) (A236979 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236974.P17940938028619865530

/-! ## A236974.P1245609427510968897

`record[gcd(A004197(n+3), A236979(n+3))]`
-/

namespace A236974.P1245609427510968897
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A004197 (n + 3)) (A236979 (n + 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236974.P1245609427510968897

/-!
# A236975: Number of (n+1)X(3+1) 0..3 arrays with the maximum plus the upper median minus the minimum of every 2X2 subblock equal.

The programs for A236975, there is no canonical definition to state claims against.
-/

/-! ## A236975.P12584828892685515951

`A236979(∑[n+2]+4)`
-/

namespace A236975.P12584828892685515951
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236979 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A236975.P12584828892685515951

/-! ## A236975.P744919670082379774

`record[A010054(n+1)*A236979(n+4)]`
-/

namespace A236975.P744919670082379774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (n + 1) * A236979 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236975.P744919670082379774

/-! ## A236975.P16541419209354637835

`record[root(A236979(n+4), A199847(n+2))]`
-/

namespace A236975.P16541419209354637835
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A236979 (n + 4) : ℝ) ^ (1 / (A199847 (n + 2) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236975.P16541419209354637835

/-! ## A236975.P13808133453452125733

`A236979(A046691(n)+7)/A068763(A046660(n+1))`
-/

namespace A236975.P13808133453452125733
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A236979 (A046691 n + 7).toNat : ℚ) / (A068763 (A046660 (n + 1)).toNat : ℚ)

end

end A236975.P13808133453452125733

/-! ## A236975.P12085690231015070456

`A236979(A046691(n)+7)/A068763(A236998(n+1))`
-/

namespace A236975.P12085690231015070456
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A236979 (A046691 n + 7).toNat : ℚ) / (A068763 (A236998 (n + 1)).toNat : ℚ)

end

end A236975.P12085690231015070456

/-!
# A236976: Number of (n+1)X(4+1) 0..3 arrays with the maximum plus the upper median minus the minimum of every 2X2 subblock equal.

The programs for A236976, there is no canonical definition to state claims against.
-/

/-! ## A236976.P7823492952751740530

`A236979(A374004(n+1))`
-/

namespace A236976.P7823492952751740530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236979 (A374004 (n + 1)).toNat

end

end A236976.P7823492952751740530

/-! ## A236976.P9052808223294200239

`A236979(A141214(n)+7)`
-/

namespace A236976.P9052808223294200239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236979 (A141214 n + 7).toNat

end

end A236976.P9052808223294200239

/-! ## A236976.P12915895614274130460

`A236979(A052905(n)+9)`
-/

namespace A236976.P12915895614274130460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236979 (A052905 n + 9).toNat

end

end A236976.P12915895614274130460

/-! ## A236976.P1285524277110023425

`A236979(A055999(n)+10)`
-/

namespace A236976.P1285524277110023425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236979 (A055999 n + 10).toNat

end

end A236976.P1285524277110023425

/-! ## A236976.P13692114439274861003

`A236979(A167614(n+2)+1)`
-/

namespace A236976.P13692114439274861003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236979 (A167614 (n + 2) + 1).toNat

end

end A236976.P13692114439274861003

/-!
# A236977: Number of (n+1)X(5+1) 0..3 arrays with the maximum plus the upper median minus the minimum of every 2X2 subblock equal.

The programs for A236977, there is no canonical definition to state claims against.
-/

/-! ## A236977.P14307608215577983785

`A236979(A374005(n+1))`
-/

namespace A236977.P14307608215577983785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236979 (A374005 (n + 1)).toNat

end

end A236977.P14307608215577983785

/-! ## A236977.P1381742868593078215

`A236979(eq[6, A131818(n+1)])`
-/

namespace A236977.P1381742868593078215
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236979 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A236977.P1381742868593078215

/-! ## A236977.P602531261827502527

`A236979(Δ[A264443(n)])`
-/

namespace A236977.P602531261827502527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236979 (f1 (n + 1) - f1 n).toNat

end

end A236977.P602531261827502527

/-! ## A236977.P499059235615797065

`A236979(eq[4, A193592(n)])`
-/

namespace A236977.P499059235615797065
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236979 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A236977.P499059235615797065

/-! ## A236977.P14760394405648833205

`A236979(Δ[A023545(n+1)])`
-/

namespace A236977.P14760394405648833205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236979 (f1 (n + 1) - f1 n).toNat

end

end A236977.P14760394405648833205

/-!
# A236978: Number of (n+1)X(6+1) 0..3 arrays with the maximum plus the upper median minus the minimum of every 2X2 subblock equal.

The programs for A236978, there is no canonical definition to state claims against.
-/

/-! ## A236978.P13208326566282637867

`A236979(A374007(n+1))`
-/

namespace A236978.P13208326566282637867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236979 (A374007 (n + 1)).toNat

end

end A236978.P13208326566282637867

/-! ## A236978.P11728214950277379829

`A236979(Δ[Δ[A006504(n+1)]])`
-/

namespace A236978.P11728214950277379829
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006504 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236979 (f1 (n + 1) - f1 n).toNat

end

end A236978.P11728214950277379829

/-! ## A236978.P13957553001614980893

`A236979(Δ[A264443(n+1)]-1)`
-/

namespace A236978.P13957553001614980893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236979 (f1 (n + 1) - f1 n - 1).toNat

end

end A236978.P13957553001614980893

/-!
# A236980: Number of (n+1)X(1+1) 0..3 arrays with the maximum plus the upper median plus the lower median of every 2X2 subblock equal.

The programs for A236980, there is no canonical definition to state claims against.
-/

/-! ## A236980.P10507440514433899636

`A236987(∑[n]+1)`
-/

namespace A236980.P10507440514433899636
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236987 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A236980.P10507440514433899636

/-! ## A236980.P16053804151818094125

`record[A010054(n)*A236987(n+1)]`
-/

namespace A236980.P16053804151818094125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A236987 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236980.P16053804151818094125

/-! ## A236980.P13375212644256748114

`record[A176270(n)*A236987(n+1)]`
-/

namespace A236980.P13375212644256748114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176270 n * A236987 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236980.P13375212644256748114

/-! ## A236980.P9589385974316914690

`record[A236987(n+1)/A008292(n+1)]`
-/

namespace A236980.P9589385974316914690
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A236987 (n + 1) : ℚ) / (A008292 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236980.P9589385974316914690

/-! ## A236980.P13383671808223454788

`record[A236987(n+1)/A059110(A061579(n))]`
-/

namespace A236980.P13383671808223454788
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A236987 (n + 1) : ℚ) / (A059110 (A061579 n).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236980.P13383671808223454788

/-!
# A236981: Number of (n+1)X(2+1) 0..3 arrays with the maximum plus the upper median plus the lower median of every 2X2 subblock equal.

The programs for A236981, there is no canonical definition to state claims against.
-/

/-! ## A236981.P3075872433563858089

`A236987(∑[n+1]+2)`
-/

namespace A236981.P3075872433563858089
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236987 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A236981.P3075872433563858089

/-! ## A236981.P16575467705408145373

`lcm(2, A236987(A133263(n+1)))`
-/

namespace A236981.P16575467705408145373
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A236987 (A133263 (n + 1)).toNat)

end

end A236981.P16575467705408145373

/-! ## A236981.P17344832516537364303

`record[A010054(n)*A236987(n+2)]`
-/

namespace A236981.P17344832516537364303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A236987 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236981.P17344832516537364303

/-! ## A236981.P9242362707217129136

`A033999(2*n)*A236987(A133263(n+1))`
-/

namespace A236981.P9242362707217129136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (2 * n) * A236987 (A133263 (n + 1)).toNat

end

end A236981.P9242362707217129136

/-! ## A236981.P16367745045925157495

`or(A112053(n+1), A236987(A133263(n+1)))`
-/

namespace A236981.P16367745045925157495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A112053 (n + 1)) (A236987 (A133263 (n + 1)).toNat)

end

end A236981.P16367745045925157495

/-!
# A236982: Number of (n+1)X(3+1) 0..3 arrays with the maximum plus the upper median plus the lower median of every 2X2 subblock equal.

The programs for A236982, there is no canonical definition to state claims against.
-/

/-! ## A236982.P9815107788939713188

`A236987(∑[n+2]+4)`
-/

namespace A236982.P9815107788939713188
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236987 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A236982.P9815107788939713188

/-! ## A236982.P5844761425086747243

`lcm(2, A236987(A167614(n+1)))`
-/

namespace A236982.P5844761425086747243
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A236987 (A167614 (n + 1)).toNat)

end

end A236982.P5844761425086747243

/-! ## A236982.P15721506930017764545

`A236987(A167614(n+1))+A025469(n)`
-/

namespace A236982.P15721506930017764545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236987 (A167614 (n + 1)).toNat + A025469 n

end

end A236982.P15721506930017764545

/-! ## A236982.P5949205111455507877

`A236987(A167614(n+1))+A185284(n)`
-/

namespace A236982.P5949205111455507877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236987 (A167614 (n + 1)).toNat + A185284 n

end

end A236982.P5949205111455507877

/-! ## A236982.P11369030478551055350

`A236987(A167614(n+1))+A185294(n)`
-/

namespace A236982.P11369030478551055350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236987 (A167614 (n + 1)).toNat + A185294 n

end

end A236982.P11369030478551055350

/-!
# A236983: Number of (n+1)X(4+1) 0..3 arrays with the maximum plus the upper median plus the lower median of every 2X2 subblock equal.

The programs for A236983, there is no canonical definition to state claims against.
-/

/-! ## A236983.P12747304483822409064

`A236987(C(n+5, 2)-n)`
-/

namespace A236983.P12747304483822409064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236987 (Nat.choose (n + 5) 2 - n)

end

end A236983.P12747304483822409064

/-! ## A236983.P2791254510002271832

`A236987(A374004(n+1))`
-/

namespace A236983.P2791254510002271832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236987 (A374004 (n + 1)).toNat

end

end A236983.P2791254510002271832

/-! ## A236983.P5606380881896692775

`A236987(A141214(n)+7)`
-/

namespace A236983.P5606380881896692775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236987 (A141214 n + 7).toNat

end

end A236983.P5606380881896692775

/-! ## A236983.P12208221452062636087

`A236987(A052905(n)+9)`
-/

namespace A236983.P12208221452062636087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236987 (A052905 n + 9).toNat

end

end A236983.P12208221452062636087

/-! ## A236983.P2044464903110631298

`A236987(A055999(n)+10)`
-/

namespace A236983.P2044464903110631298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236987 (A055999 n + 10).toNat

end

end A236983.P2044464903110631298

/-!
# A236984: Number of (n+1)X(5+1) 0..3 arrays with the maximum plus the upper median plus the lower median of every 2X2 subblock equal.

The programs for A236984, there is no canonical definition to state claims against.
-/

/-! ## A236984.P6044226577892656997

`A236987(A374005(n+1))`
-/

namespace A236984.P6044226577892656997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236987 (A374005 (n + 1)).toNat

end

end A236984.P6044226577892656997

/-! ## A236984.P17869144575692410575

`A236987(A167499(n+3))`
-/

namespace A236984.P17869144575692410575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236987 (A167499 (n + 3)).toNat

end

end A236984.P17869144575692410575

/-! ## A236984.P11165686339285140816

`A236987(A155212(n)+13)`
-/

namespace A236984.P11165686339285140816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236987 (A155212 n + 13).toNat

end

end A236984.P11165686339285140816

/-! ## A236984.P5310211853826405450

`A236987(A056000(n)+15)`
-/

namespace A236984.P5310211853826405450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236987 (A056000 n + 15).toNat

end

end A236984.P5310211853826405450

/-! ## A236984.P4113148711686641533

`A236987(eq[6, A131818(n+1)])`
-/

namespace A236984.P4113148711686641533
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236987 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A236984.P4113148711686641533

/-!
# A236985: Number of (n+1)X(6+1) 0..3 arrays with the maximum plus the upper median plus the lower median of every 2X2 subblock equal.

The programs for A236985, there is no canonical definition to state claims against.
-/

/-! ## A236985.P11879608441002956208

`A236987(A374007(n+1))`
-/

namespace A236985.P11879608441002956208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236987 (A374007 (n + 1)).toNat

end

end A236985.P11879608441002956208

/-! ## A236985.P16126779120695517160

`A236987(eq[7, A131818(n+1)])`
-/

namespace A236985.P16126779120695517160
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236987 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A236985.P16126779120695517160

/-! ## A236985.P5155802521021093944

`A236987(A055999(n+4)-1-n-n)`
-/

namespace A236985.P5155802521021093944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236987 (A055999 (n + 4) - 1 - (n : ℤ) - (n : ℤ)).toNat

end

end A236985.P5155802521021093944

/-! ## A236985.P1426676769280116661

`A236987(A052905(n+3))`
-/

namespace A236985.P1426676769280116661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236987 (A052905 (n + 3)).toNat

end

end A236985.P1426676769280116661

/-! ## A236985.P7814056736105658563

`A236987(eq[5, A193592(n)])`
-/

namespace A236985.P7814056736105658563
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236987 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A236985.P7814056736105658563

/-!
# A236986: Number of (n+1)X(7+1) 0..3 arrays with the maximum plus the upper median plus the lower median of every 2X2 subblock equal.

The programs for A236986, there is no canonical definition to state claims against.
-/

/-! ## A236986.P15496437240040042080

`A236987(A374008(n+1))`
-/

namespace A236986.P15496437240040042080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236987 (A374008 (n + 1)).toNat

end

end A236986.P15496437240040042080

/-! ## A236986.P16402264135806212228

`A236987(A056119(n)+28)`
-/

namespace A236986.P16402264135806212228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236987 (A056119 n + 28).toNat

end

end A236986.P16402264135806212228

/-! ## A236986.P13621303157656378000

`A236987(eq[11, A066657(n)])`
-/

namespace A236986.P13621303157656378000
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236987 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A236986.P13621303157656378000

/-! ## A236986.P8081370486221417542

`A236987(A141214(n+3)+10)`
-/

namespace A236986.P8081370486221417542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236987 (A141214 (n + 3) + 10).toNat

end

end A236986.P8081370486221417542

/-! ## A236986.P1002811729338658691

`A236987(A055999(n+3)+13)`
-/

namespace A236986.P1002811729338658691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236987 (A055999 (n + 3) + 13).toNat

end

end A236986.P1002811729338658691

/-!
# A236989: Number of (n+1) X (n+1) 0..2 arrays with the maximum plus the lower median minus the upper median minus the minimum of every 2 X 2 subblock differing from its horizontal and vertical neighbors by exactly one.

The programs for A236989, there is no canonical definition to state claims against.
-/

/-! ## A236989.P6703636284688102916

`A236997((n+1)²+n²)`
-/

namespace A236989.P6703636284688102916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236997 ((n + 1) ^ 2 + n ^ 2)

end

end A236989.P6703636284688102916

/-!
# A236990: Number of (n+1)X(1+1) 0..2 arrays with the maximum plus the lower median minus the upper median minus the minimum of every 2X2 subblock differing from its horizontal and vertical neighbors by exactly one.

The programs for A236990, there is no canonical definition to state claims against.
-/

/-! ## A236990.P3212044630558045578

`A236997(∑[n]+1)`
-/

namespace A236990.P3212044630558045578
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236997 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A236990.P3212044630558045578

/-! ## A236990.P1608918673821495355

`record[root(A236997(n+1), A008949(n))]`
-/

namespace A236990.P1608918673821495355
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A236997 (n + 1) : ℝ) ^ (1 / (A008949 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236990.P1608918673821495355

/-! ## A236990.P2638659968647419699

`record[root(A236997(n+1), A101275(n))]`
-/

namespace A236990.P2638659968647419699
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A236997 (n + 1) : ℝ) ^ (1 / (A101275 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236990.P2638659968647419699

/-! ## A236990.P11098488798557473676

`record[root(A236997(n+1), A162663(n))]`
-/

namespace A236990.P11098488798557473676
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A236997 (n + 1) : ℝ) ^ (1 / (A162663 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236990.P11098488798557473676

/-! ## A236990.P813445635461323926

`record[gcd(A002262(n), A236997(n+1))]`
-/

namespace A236990.P813445635461323926
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A236997 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236990.P813445635461323926

/-!
# A236991: Number of (n+1)X(2+1) 0..2 arrays with the maximum plus the lower median minus the upper median minus the minimum of every 2X2 subblock differing from its horizontal and vertical neighbors by exactly one.

The programs for A236991, there is no canonical definition to state claims against.
-/

/-! ## A236991.P10531615307578452851

`A236997(∑[n+1]+2)`
-/

namespace A236991.P10531615307578452851
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236997 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A236991.P10531615307578452851

/-! ## A236991.P2962084802707671659

`record[root(A236997(n+2), A008949(n))]`
-/

namespace A236991.P2962084802707671659
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A236997 (n + 2) : ℝ) ^ (1 / (A008949 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236991.P2962084802707671659

/-! ## A236991.P14996894034566677005

`record[gcd(A002262(n), A236997(n+2))]`
-/

namespace A236991.P14996894034566677005
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A236997 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236991.P14996894034566677005

/-! ## A236991.P2235086398293438928

`record[root(A236997(n+2), A208761(n+1))]`
-/

namespace A236991.P2235086398293438928
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A236997 (n + 2) : ℝ) ^ (1 / (A208761 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236991.P2235086398293438928

/-! ## A236991.P14681473674570761831

`lcm(2, A236997(A000096(n+1)))`
-/

namespace A236991.P14681473674570761831
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A236997 (A000096 (n + 1)).toNat)

end

end A236991.P14681473674570761831

/-!
# A236992: Number of (n+1) X (3+1) 0..2 arrays with the maximum plus the lower median minus the upper median minus the minimum of every 2 X 2 subblock differing from its horizontal and vertical neighbors by exactly one.

The programs for A236992, there is no canonical definition to state claims against.
-/

/-! ## A236992.P11724096461315677166

`A236997(∑[n+2]+4)`
-/

namespace A236992.P11724096461315677166
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236997 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A236992.P11724096461315677166

/-! ## A236992.P15654044784551507076

`lcm(2, A236997(A167614(n+1)))`
-/

namespace A236992.P15654044784551507076
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A236997 (A167614 (n + 1)).toNat)

end

end A236992.P15654044784551507076

/-! ## A236992.P7011449999052481131

`A236997(A167614(n+1))%A236993(n+1)`
-/

namespace A236992.P7011449999052481131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A236997 (A167614 (n + 1)).toNat) (A236993 (n + 1))

end

end A236992.P7011449999052481131

/-! ## A236992.P9011701219132357893

`A236997(A055998(n)+6)%A236983(n+1)`
-/

namespace A236992.P9011701219132357893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A236997 (A055998 n + 6).toNat) (A236983 (n + 1))

end

end A236992.P9011701219132357893

/-! ## A236992.P18076309215357479561

`A236997(A055998(n)+6)+A000065(val(n+1, 6))`
-/

namespace A236992.P18076309215357479561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236997 (A055998 n + 6).toNat + A000065 (SequenceMachineLib.valuation (n + 1) 6)

end

end A236992.P18076309215357479561

/-!
# A236993: Number of (n+1)X(4+1) 0..2 arrays with the maximum plus the lower median minus the upper median minus the minimum of every 2X2 subblock differing from its horizontal and vertical neighbors by exactly one.

The programs for A236993, there is no canonical definition to state claims against.
-/

/-! ## A236993.P10965874332789799592

`A236997(A374004(n+1))`
-/

namespace A236993.P10965874332789799592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236997 (A374004 (n + 1)).toNat

end

end A236993.P10965874332789799592

/-! ## A236993.P6977123755468595242

`A236997(A052905(n)+9)`
-/

namespace A236993.P6977123755468595242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236997 (A052905 n + 9).toNat

end

end A236993.P6977123755468595242

/-! ## A236993.P12977696510676270702

`A236997(A055999(n)+10)`
-/

namespace A236993.P12977696510676270702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236997 (A055999 n + 10).toNat

end

end A236993.P12977696510676270702

/-! ## A236993.P3642604590601690820

`A236997(A167614(n+2)+1)`
-/

namespace A236993.P3642604590601690820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236997 (A167614 (n + 2) + 1).toNat

end

end A236993.P3642604590601690820

/-! ## A236993.P299771829150876021

`A236997(Δ[A264443(n)-n²])`
-/

namespace A236993.P299771829150876021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236997 (f1 (n + 1) - f1 n).toNat

end

end A236993.P299771829150876021

/-!
# A236994: Number of (n+1)X(5+1) 0..2 arrays with the maximum plus the lower median minus the upper median minus the minimum of every 2X2 subblock differing from its horizontal and vertical neighbors by exactly one.

The programs for A236994, there is no canonical definition to state claims against.
-/

/-! ## A236994.P9709607613745074271

`A236997(A374005(n+1))`
-/

namespace A236994.P9709607613745074271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236997 (A374005 (n + 1)).toNat

end

end A236994.P9709607613745074271

/-! ## A236994.P15565676706902800317

`A236997(A167499(n+3))`
-/

namespace A236994.P15565676706902800317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236997 (A167499 (n + 3)).toNat

end

end A236994.P15565676706902800317

/-! ## A236994.P11730613441841504953

`A236997(eq[6, A131818(n+1)])`
-/

namespace A236994.P11730613441841504953
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236997 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A236994.P11730613441841504953

/-! ## A236994.P4384271012466700292

`A236997(Δ[A264443(n)])`
-/

namespace A236994.P4384271012466700292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236997 (f1 (n + 1) - f1 n).toNat

end

end A236994.P4384271012466700292

/-! ## A236994.P6107090135928973469

`A236997(eq[4, A193592(n)])`
-/

namespace A236994.P6107090135928973469
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236997 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A236994.P6107090135928973469

/-!
# A236995: Number of (n+1)X(6+1) 0..2 arrays with the maximum plus the lower median minus the upper median minus the minimum of every 2X2 subblock differing from its horizontal and vertical neighbors by exactly one.

The programs for A236995, there is no canonical definition to state claims against.
-/

/-! ## A236995.P570896965346030101

`A236997(A374007(n+1))`
-/

namespace A236995.P570896965346030101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236997 (A374007 (n + 1)).toNat

end

end A236995.P570896965346030101

/-! ## A236995.P6070518989915566306

`A236997(A161680(n+6)+6)`
-/

namespace A236995.P6070518989915566306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236997 (A161680 (n + 6) + 6).toNat

end

end A236995.P6070518989915566306

/-! ## A236995.P6564588210181263844

`A236997(eq[7, A131818(n+1)])`
-/

namespace A236995.P6564588210181263844
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236997 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A236995.P6564588210181263844

/-! ## A236995.P8859651272092416103

`A236997(eq[3, A219347(n)])`
-/

namespace A236995.P8859651272092416103
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236997 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A236995.P8859651272092416103

/-! ## A236995.P3902740988022320030

`A236997(eq[5, A193592(n)])`
-/

namespace A236995.P3902740988022320030
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236997 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A236995.P3902740988022320030

/-!
# A236996: Number of (n+1)X(7+1) 0..2 arrays with the maximum plus the lower median minus the upper median minus the minimum of every 2X2 subblock differing from its horizontal and vertical neighbors by exactly one.

The programs for A236996, there is no canonical definition to state claims against.
-/

/-! ## A236996.P6475764487425811340

`A236997(A374008(n+1))`
-/

namespace A236996.P6475764487425811340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236997 (A374008 (n + 1)).toNat

end

end A236996.P6475764487425811340

/-! ## A236996.P7736241016590836215

`A236997(eq[4, A219347(n)])`
-/

namespace A236996.P7736241016590836215
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236997 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A236996.P7736241016590836215

/-!
# A236998: a(n) = |{0 < k < n/2: phi(k)*phi(n-k) is a square}|, where phi(.) is Euler's totient function.

The programs for A236998, there is no canonical definition to state claims against.
-/

/-! ## A236998.P5749812090036486566

`A081418(n)-A015021(A251653(n))`
-/

namespace A236998.P5749812090036486566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081418 n - A015021 (A251653 n).toNat

end

end A236998.P5749812090036486566

/-! ## A236998.P27939996651893576

`A081418(n)+A015021(A251653(n)+2)`
-/

namespace A236998.P27939996651893576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081418 n + A015021 (A251653 n + 2).toNat

end

end A236998.P27939996651893576

/-! ## A236998.P2315090798358739097

`A127327(A087794(2*(n+1))*A234808(n+1))`
-/

namespace A236998.P2315090798358739097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127327 (A087794 (2 * (n + 1)) * A234808 (n + 1)).toNat

end

end A236998.P2315090798358739097

/-! ## A236998.P484832139299073761

`A126043(3*n+1)%(A323273(n)+1)`
-/

namespace A236998.P484832139299073761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A126043 (3 * n + 1)) (A323273 n + 1)

end

end A236998.P484832139299073761

/-! ## A236998.P2440081110999062773

`A151899(A002817(n+1)+∑{e}[n+1, #]-val(n+1, 2))`
-/

namespace A236998.P2440081110999062773
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151899 (A002817 (n + 1) + (((∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p : ℕ) : ℤ) - (SequenceMachineLib.valuation (n + 1) 2 : ℤ))).toNat

end

end A236998.P2440081110999062773

/-!
# A236999: Odd part of n*(n+3)/2-1 (A034856).

The programs for A236999, the canonical program `A236999.P18015192940983009174` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A236999 has offset 1).

The definition of A236999 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000265, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A236999.P18015192940983009174

`A000265(A034856(n+1))`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A236999

/-- `A000265(A034856(n+1))` -/
def P18015192940983009174.Spec : Prop :=
  ∀ n, P18015192940983009174.a n = A236999 (n + 1)

theorem P18015192940983009174.correct : P18015192940983009174.Spec := by
  intro n
  simp only [A236999, Nat.add_sub_cancel]

end A236999

/-! ## A236999.P8096146141074710051

`A000265(A176126(n+2))`
-/

namespace A236999.P8096146141074710051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A176126 (n + 2)).toNat

end

end A236999.P8096146141074710051

namespace A236999

/-- `A000265(A176126(n+2))` -/
def P8096146141074710051.Spec : Prop :=
  ∀ n, P8096146141074710051.a n = A236999 (n + 1)

end A236999

/-! ## A236999.P14533034052417905149

`A000265(∑[n+2]-1)`
-/

namespace A236999.P14533034052417905149
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A236999.P14533034052417905149

namespace A236999

/-- `A000265(∑[n+2]-1)` -/
def P14533034052417905149.Spec : Prop :=
  ∀ n, P14533034052417905149.a n = A236999 (n + 1)

end A236999

/-! ## A236999.P12552533447801034455

`or(1, A000265(A046691(n)+2))`
-/

namespace A236999.P12552533447801034455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A000265 (A046691 n + 2).toNat)

end

end A236999.P12552533447801034455

namespace A236999

/-- `or(1, A000265(A046691(n)+2))` -/
def P12552533447801034455.Spec : Prop :=
  ∀ n, P12552533447801034455.a n = A236999 (n + 1)

end A236999

/-! ## A236999.P16943151815508402567

`A000027(A000265(abs(2-C(n+3, 2))))`
-/

namespace A236999.P16943151815508402567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A000265 |2 - (Nat.choose (n + 3) 2 : ℤ)|.toNat).toNat

end

end A236999.P16943151815508402567

namespace A236999

/-- `A000027(A000265(abs(2-C(n+3, 2))))` -/
def P16943151815508402567.Spec : Prop :=
  ∀ n, P16943151815508402567.a n = A236999 (n + 1)

end A236999

/-! ## A236999.P10357406276418077578

`A000027(A000265(∑[n]+2*n+1))`
-/

namespace A236999.P10357406276418077578
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A000265 (∑ j ∈ Finset.range (n + 1), f1 j + (2 * n + 1))).toNat

end

end A236999.P10357406276418077578

namespace A236999

/-- `A000027(A000265(∑[n]+2*n+1))` -/
def P10357406276418077578.Spec : Prop :=
  ∀ n, P10357406276418077578.a n = A236999 (n + 1)

end A236999

/-! ## A236999.P15464881001143665634

`A171435(2*(∑[n+2]-1))`
-/

namespace A236999.P15464881001143665634
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171435 (2 * (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1)).toNat

end

end A236999.P15464881001143665634

namespace A236999

/-- `A171435(2*(∑[n+2]-1))` -/
def P15464881001143665634.Spec : Prop :=
  ∀ n, P15464881001143665634.a n = A236999 (n + 1)

end A236999

/-! ## A236999.P18102400319054595580

`A093411(∑[n+2]-1)`
-/

namespace A236999.P18102400319054595580
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093411 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A236999.P18102400319054595580

namespace A236999

/-- `A093411(∑[n+2]-1)` -/
def P18102400319054595580.Spec : Prop :=
  ∀ n, P18102400319054595580.a n = A236999 (n + 1)

end A236999

/-! ## A236999.P15741437668795252634

`A302044((n+2)²+n-2)`
-/

namespace A236999.P15741437668795252634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302044 (((n + 2) ^ 2 : ℤ) + ((n : ℤ) - 2)).toNat

end

end A236999.P15741437668795252634

namespace A236999

/-- `A302044((n+2)²+n-2)` -/
def P15741437668795252634.Spec : Prop :=
  ∀ n, P15741437668795252634.a n = A236999 (n + 1)

end A236999

/-! ## A236999.P738524335231251254

`A328478(∑[n+2]-1)`
-/

namespace A236999.P738524335231251254
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328478 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A236999.P738524335231251254

namespace A236999

/-- `A328478(∑[n+2]-1)` -/
def P738524335231251254.Spec : Prop :=
  ∀ n, P738524335231251254.a n = A236999 (n + 1)

end A236999

/-! ## A236999.P7465020236424980449

`A007310(A126760(A000217(n+2)-2))`
-/

namespace A236999.P7465020236424980449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007310 (A126760 (A000217 (n + 2) - 2).toNat).toNat

end

end A236999.P7465020236424980449

namespace A236999

/-- `A007310(A126760(A000217(n+2)-2))` -/
def P7465020236424980449.Spec : Prop :=
  ∀ n, P7465020236424980449.a n = A236999 (n + 1)

end A236999

/-! ## A236999.P2732263945255303354

`A082725(∑[n+2]-1)`
-/

namespace A236999.P2732263945255303354
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082725 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A236999.P2732263945255303354

namespace A236999

/-- `A082725(∑[n+2]-1)` -/
def P2732263945255303354.Spec : Prop :=
  ∀ n, P2732263945255303354.a n = A236999 (n + 1)

end A236999

/-! ## A236999.P7398414893368250622

`A302034((n+2)²+n-2)`
-/

namespace A236999.P7398414893368250622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302034 (((n + 2) ^ 2 : ℤ) + ((n : ℤ) - 2)).toNat

end

end A236999.P7398414893368250622

namespace A236999

/-- `A302034((n+2)²+n-2)` -/
def P7398414893368250622.Spec : Prop :=
  ∀ n, P7398414893368250622.a n = A236999 (n + 1)

end A236999

/-! ## A236999.P4362898367454747596

`(∑[n+2]-1)/A100762(∑[n+2]-1)`
-/

namespace A236999.P4362898367454747596
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1 : ℚ) / (A100762 (∑ j ∈ Finset.range (n + 1), f2 j - 1) : ℚ)

end

end A236999.P4362898367454747596

namespace A236999

/-- `(∑[n+2]-1)/A100762(∑[n+2]-1)` -/
def P4362898367454747596.Spec : Prop :=
  ∀ n, P4362898367454747596.a n = (A236999 (n + 1) : ℚ)

end A236999

/-! ## A236999.P16725883203527996384

`lcm(A011782(n+1)², A101881(2*n))/A011782(n+1)²`
-/

namespace A236999.P16725883203527996384
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A011782 (n + 1) ^ 2) (A101881 (2 * n)) : ℚ) / (A011782 (n + 1) ^ 2 : ℚ)

end

end A236999.P16725883203527996384

namespace A236999

/-- `lcm(A011782(n+1)², A101881(2*n))/A011782(n+1)²` -/
def P16725883203527996384.Spec : Prop :=
  ∀ n, P16725883203527996384.a n = (A236999 (n + 1) : ℚ)

end A236999

/-! ## A236999.P2047463572642961257

`A340086(∑[n+2])`
-/

namespace A236999.P2047463572642961257
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340086 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A236999.P2047463572642961257

namespace A236999

/-- `A340086(∑[n+2])` -/
def P2047463572642961257.Spec : Prop :=
  ∀ n, P2047463572642961257.a n = A236999 (n + 1)

end A236999

/-! ## A236999.P1191395450922284077

`A065330(∑[n+2]-1)`
-/

namespace A236999.P1191395450922284077
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065330 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A236999.P1191395450922284077

namespace A236999

/-- `A065330(∑[n+2]-1)` -/
def P1191395450922284077.Spec : Prop :=
  ∀ n, P1191395450922284077.a n = A236999 (n + 1)

end A236999

