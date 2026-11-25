import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
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
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C033
import Seq.B000.C036
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C040
import Seq.B000.C042
import Seq.B000.C044
import Seq.B000.C045
import Seq.B000.C048
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C010
import Seq.B001.C012
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C003
import Seq.B002.C005
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C003
import Seq.B003.C004
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C004
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C001
import Seq.B009.C000
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
import Seq.Opaque.C009
import Seq.Opaque.C010
import Seq.Opaque.C011
import Seq.Opaque.C012
import Seq.Opaque.C013
import Seq.Opaque.C014
import Seq.Opaque.C016
import Seq.Opaque.C017
import Seq.Opaque.C018
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023
import SequenceMachineLib.Triangle

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

/-!
# A236901: Number of (n+1) X (7+1) 0..2 arrays with the maximum plus the upper median of every 2 X 2 subblock equal.

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

/-! ## A236913.P12159764434221637503

`A363048(A096376(n))`
-/

namespace A236913.P12159764434221637503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363048 (A096376 n).toNat

end

end A236913.P12159764434221637503

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

/-! ## A236914.P14034005187395698086

`record[A000701(xor(1, n))]`
-/

namespace A236914.P14034005187395698086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000701 (Nat.xor 1 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236914.P14034005187395698086

/-! ## A236914.P13472562013080125964

`record[A027187(xor(1, n))]`
-/

namespace A236914.P13472562013080125964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027187 (Nat.xor 1 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236914.P13472562013080125964

/-! ## A236914.P642855012150589124

`record[n%2*A000701(n)]`
-/

namespace A236914.P642855012150589124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n % 2 : ℕ) : ℤ) * A000701 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236914.P642855012150589124

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

/-! ## A236914.P7297648197494477758

`A330644(Δ[n²])/2`
-/

namespace A236914.P7297648197494477758
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A330644 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / 2

end

end A236914.P7297648197494477758

/-! ## A236914.P5904366106370523041

`A058695(n)-A160786(n)`
-/

namespace A236914.P5904366106370523041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058695 n - A160786 n

end

end A236914.P5904366106370523041

/-! ## A236914.P2835613803792600611

`A058695(n)-A027193(2*n+1)`
-/

namespace A236914.P2835613803792600611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058695 n - A027193 (2 * n + 1)

end

end A236914.P2835613803792600611

/-! ## A236914.P11635185577494998605

`A058695(n)-A046682(2*n+1)`
-/

namespace A236914.P11635185577494998605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058695 n - A046682 (2 * n + 1)

end

end A236914.P11635185577494998605

/-! ## A236914.P13467410043825011942

`A000041(2*n+1)-A027193(2*n+1)`
-/

namespace A236914.P13467410043825011942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (2 * n + 1) - A027193 (2 * n + 1)

end

end A236914.P13467410043825011942

/-!
# A236915: Number T(n,k) of equivalence classes of ways of placing k 8 X 8 tiles in an n X n square under all symmetry operations of the square; irregular triangle T(n,k), n>=8, 0<=k<=floor(n/8)^2, read by rows.

The programs for A236915, there is no canonical definition to state claims against.
-/

/-! ## A236915.P9838302221490402995

`A236936(n+9)`
-/

namespace A236915.P9838302221490402995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236936 (n + 9)

end

end A236915.P9838302221490402995

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

/-! ## A236915.P15710064945274924325

`A236939(n)`
-/

namespace A236915.P15710064945274924325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236939 (n + 10)

end

end A236915.P15710064945274924325

/-!
# A236916: The first "octad" is 0, 1, 2, 2, 2, 2, 3, 3; thereafter add 4 to get the next octad.

The programs for A236916, the canonical program `A236916.P12494679140748673037` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A236916 has offset 0).

The definition of A236916 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A236916.P12494679140748673037

`ogf((x+x^2+x^6+x^8)/(1-x-x^8+x^9))`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A236916

/-- `ogf((x+x^2+x^6+x^8)/(1-x-x^8+x^9))` -/
def P12494679140748673037.Spec : Prop :=
  ∀ n, P12494679140748673037.a n = A236916 n

theorem P12494679140748673037.correct : P12494679140748673037.Spec := by
  intro n
  simp only [A236916]

end A236916

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

/-! ## A236916.P2870323347222282507

`(or(1, and(6, n+1)%3+n)-1)/2`
-/

namespace A236916.P2870323347222282507
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Nat.lor 1 (Nat.land 6 (n + 1) % 3 + n) : ℤ) - 1 : ℚ) / 2

end

end A236916.P2870323347222282507

namespace A236916

/-- `(or(1, and(6, n+1)%3+n)-1)/2` -/
def P2870323347222282507.Spec : Prop :=
  ∀ n, P2870323347222282507.a n = (A236916 n : ℚ)

end A236916

/-! ## A236916.P11324744827470201049

`∑[∑{e}[xor(1, a(n-4)), 2-#]]` with `a(0)=1, a(1)=-3, a(2)=2, a(3)=1, a(4)=-1`
-/

namespace A236916.P11324744827470201049
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, -3, 2, 1, -1] fun n f2 =>
  Int.xor 1 (f2 (n - 4))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n).natAbs, (2 - (Nat.factorization (f2 n).natAbs p : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A236916.P11324744827470201049

namespace A236916

/-- `∑[∑{e}[xor(1, a(n-4)), 2-#]]` -/
def P11324744827470201049.Spec : Prop :=
  ∀ n, P11324744827470201049.a n = A236916 n

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

/-! ## A236916.P109439325607014254

`fp[A047397(n+2)]`
-/

namespace A236916.P109439325607014254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047397 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (n : ℤ) < f1 j) 0

end

end A236916.P109439325607014254

namespace A236916

/-- `fp[A047397(n+2)]` -/
def P109439325607014254.Spec : Prop :=
  ∀ n, (P109439325607014254.a n : ℤ) = A236916 n

end A236916

/-! ## A236916.P16802076418677134595

`fp[A047479(n+1)+1]`
-/

namespace A236916.P16802076418677134595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047479 (n + 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (n : ℤ) < f1 j) 0

end

end A236916.P16802076418677134595

namespace A236916

/-- `fp[A047479(n+1)+1]` -/
def P16802076418677134595.Spec : Prop :=
  ∀ n, (P16802076418677134595.a n : ℤ) = A236916 n

end A236916

/-! ## A236916.P14910980737374846545

`ceil((A046978(n)+n)/2)`
-/

namespace A236916.P14910980737374846545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A046978 n + (n : ℤ) : ℚ) / 2⌉

end

end A236916.P14910980737374846545

namespace A236916

/-- `ceil((A046978(n)+n)/2)` -/
def P14910980737374846545.Spec : Prop :=
  ∀ n, P14910980737374846545.a n = A236916 n

end A236916

/-! ## A236916.P11016587290115819700

`fp[A047533(n+1)-1]-1`
-/

namespace A236916.P11016587290115819700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047533 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (n : ℤ) < f1 j) 0 : ℤ) - 1

end

end A236916.P11016587290115819700

namespace A236916

/-- `fp[A047533(n+1)-1]-1` -/
def P11016587290115819700.Spec : Prop :=
  ∀ n, P11016587290115819700.a n = A236916 n

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

/-!
# A236917: Numbers n for which there is no k such that n - k and n + k are both prime, with 0 <= k <= sqrt(n).

The programs for A236917, the canonical program `A236917.P2032412828706962363` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A236917 has offset 1).

The definition of A236917 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1194 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A236917.P2032412828706962363

`eq[0, A236747(1+n)]+1`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A236917

/-- `eq[0, A236747(1+n)]+1` -/
def P2032412828706962363.Spec : Prop :=
  ∀ n, (P2032412828706962363.a n : ℤ) = A236917 (n + 1)

theorem P2032412828706962363.correct : P2032412828706962363.Spec := by
  intro n
  simp only [A236917, Nat.add_sub_cancel]

end A236917

/-! ## A236917.P769798642555479507

`lt[abs(1-n), A325142(n)²]`
-/

namespace A236917.P769798642555479507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (n : ℤ)|

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325142 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A236917.P769798642555479507

namespace A236917

/-- `lt[abs(1-n), A325142(n)²]` -/
def P769798642555479507.Spec : Prop :=
  ∀ n, (P769798642555479507.a n : ℤ) = A236917 (n + 1)

end A236917

/-! ## A236917.P2846512689542361683

`lt[n, A325142(n+1)²]+1`
-/

namespace A236917.P2846512689542361683
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325142 (n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A236917.P2846512689542361683

namespace A236917

/-- `lt[n, A325142(n+1)²]+1` -/
def P2846512689542361683.Spec : Prop :=
  ∀ n, (P2846512689542361683.a n : ℤ) = A236917 (n + 1)

end A236917

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

namespace A236917

/-- `eq[0, A236747(A000038(n)+n)]` -/
def P15682327535167852319.Spec : Prop :=
  ∀ n, (P15682327535167852319.a n : ℤ) = A236917 (n + 1)

end A236917

/-! ## A236917.P13386534847282129752

`lt[A236747(A000038(row(n))+n)-1, 0]`
-/

namespace A236917.P13386534847282129752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236747 (A000038 (SequenceMachineLib.triRow n) + (n : ℤ)).toNat - 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A236917.P13386534847282129752

namespace A236917

/-- `lt[A236747(A000038(row(n))+n)-1, 0]` -/
def P13386534847282129752.Spec : Prop :=
  ∀ n, (P13386534847282129752.a n : ℤ) = A236917 (n + 1)

end A236917

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

namespace A236917

/-- `eq[A000007(n), A236747(A028310(n))]` -/
def P12012041602852912763.Spec : Prop :=
  ∀ n, (P12012041602852912763.a n : ℤ) = A236917 (n + 1)

end A236917

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

namespace A236917

/-- `eq[A000038(n), A236747(A028310(n))]` -/
def P11486980228237249211.Spec : Prop :=
  ∀ n, (P11486980228237249211.a n : ℤ) = A236917 (n + 1)

end A236917

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

/-! ## A236921.P17724155158016050795

`and(A082841(n), A333379(A374743(n)))`
-/

namespace A236921.P17724155158016050795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A082841 n) (A333379 (A374743 n).toNat)

end

end A236921.P17724155158016050795

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

/-! ## A236922.P6981206272808791562

`∑{#}[n, A004531(#)*A004531(n-#)]`
-/

namespace A236922.P6981206272808791562
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A004531 k * A004531 (n - k)

end

end A236922.P6981206272808791562

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

/-! ## A236923.P121585786549406081

`and(3, ∑[2*n]+1)*A236924(n)`
-/

namespace A236923.P121585786549406081
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.land 3 (∑ j ∈ Finset.range (n + 1), f1 j + 1) : ℤ) * A236924 n

end

end A236923.P121585786549406081

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

/-! ## A236924.P320151745521963819

`A236923(n)/C(3, n%4)`
-/

namespace A236924.P320151745521963819
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A236923 n : ℚ) / (Nat.choose 3 (n % 4) : ℚ)

end

end A236924.P320151745521963819

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

/-!
# A236925: Number of integer solutions to a^2 + 4*b^2 + 4*c^2 + 4*d^2 = n.

The programs for A236925, there is no canonical definition to state claims against.
-/

/-! ## A236925.P5613957259204739266

`∑[1+n]%2*A236924(n)`
-/

namespace A236925.P5613957259204739266
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j) % 2 : ℕ) : ℤ) * A236924 n

end

end A236925.P5613957259204739266

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

/-! ## A236925.P10918589511232909562

`floor(A236924(n)^A057077(n))`
-/

namespace A236925.P10918589511232909562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A236924 n : ℚ) ^ (A057077 n : ℤ)⌋

end

end A236925.P10918589511232909562

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

/-! ## A236925.P6264096971024040579

`char[A042948(n)]*A236924(n)`
-/

namespace A236925.P6264096971024040579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042948 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A236924 n

end

end A236925.P6264096971024040579

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

/-! ## A236926.P1354645357746636888

`A320127(A004277(n))^A055396(A030101(n)+1)`
-/

namespace A236926.P1354645357746636888
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A320127 (A004277 n).toNat : ℚ) ^ (A055396 (A030101 n + 1).toNat : ℤ)

end

end A236926.P1354645357746636888

/-! ## A236926.P14339358397479019912

`A236933(4*n)`
-/

namespace A236926.P14339358397479019912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236933 (4 * n)

end

end A236926.P14339358397479019912

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

/-! ## A236929.P12426107526349177467

`∑{#}[n, A033718(#)*A033718(n-#)]`
-/

namespace A236929.P12426107526349177467
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A033718 k * A033718 (n - k)

end

end A236929.P12426107526349177467

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

/-! ## A236933.P3387811564213638087

`A059483(n!/floor(n/2)!²)+A005875(n)`
-/

namespace A236933.P3387811564213638087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059483 (SequenceMachineLib.roundAway ((Nat.factorial n : ℚ) / (Nat.factorial ⌊(n : ℚ) / 2⌋.toNat ^ 2 : ℚ))).toNat + A005875 n

end

end A236933.P3387811564213638087

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

/-! ## A236936.P16000181876220796571

`A236939(A055644(n))`
-/

namespace A236936.P16000181876220796571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236939 ((A055644 n).toNat + 10)

end

end A236936.P16000181876220796571

/-! ## A236936.P4461148972221287084

`A388067(A130599(n))`
-/

namespace A236936.P4461148972221287084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388067 (A130599 n).toNat

end

end A236936.P4461148972221287084

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
# A236941: Number of (n+1)X(n+1) 0..3 arrays with the maximum of every 2X2 subblock equal.

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
# A236945: Number of (n+1)X(4+1) 0..3 arrays with the maximum of every 2X2 subblock equal.

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
# A236946: Number of (n+1)X(5+1) 0..3 arrays with the maximum of every 2X2 subblock equal.

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
# A236947: Number of (n+1)X(6+1) 0..3 arrays with the maximum of every 2X2 subblock equal.

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

/-! ## A236950.P18419526983291412995

`∩[A236759(n+1), A348283(n+1)]`
-/

namespace A236950.P18419526983291412995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236759 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348283 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A236950.P18419526983291412995

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

/-! ## A236951.P9427593861171533280

`∩[A236044(n+1), A236950(n+1)]`
-/

namespace A236951.P9427593861171533280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236044 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236950 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A236951.P9427593861171533280

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

/-! ## A236956.P11979933320213770178

`A385473(n)`
-/

namespace A236956.P11979933320213770178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385473 n

end

end A236956.P11979933320213770178

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

The programs for A236959, the canonical program `A236959.P4408222998361723081` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A236959 has offset 1).

The definition of A236959 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A236959.P4408222998361723081

`A006093(n+1)/gcd(A006093(n+1), 3)`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A236959

/-- `A006093(n+1)/gcd(A006093(n+1), 3)` -/
def P4408222998361723081.Spec : Prop :=
  ∀ n, P4408222998361723081.a n = (A236959 (n + 1) : ℚ)

end A236959

/-! ## A236959.P11446795646193833943

`(A000040(n+1)-1)/gcd(3, A000040(n+1)-1)`
-/

namespace A236959.P11446795646193833943
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000040 (n + 1) - 1 : ℚ) / (Int.gcd 3 (A000040 (n + 1) - 1) : ℚ)

end

end A236959.P11446795646193833943

namespace A236959

/-- `(A000040(n+1)-1)/gcd(3, A000040(n+1)-1)` -/
def P11446795646193833943.Spec : Prop :=
  ∀ n, P11446795646193833943.a n = (A236959 (n + 1) : ℚ)

end A236959

/-! ## A236959.P3623468229845954607

`A323704(1+n)-1`
-/

namespace A236959.P3623468229845954607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323704 (1 + n) - 1

end

end A236959.P3623468229845954607

namespace A236959

/-- `A323704(1+n)-1` -/
def P3623468229845954607.Spec : Prop :=
  ∀ n, P3623468229845954607.a n = A236959 (n + 1)

end A236959

/-! ## A236959.P4988435550678262122

`lcm(3, A006093(n+1))/3`
-/

namespace A236959.P4988435550678262122
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 3 (A006093 (n + 1)) : ℚ) / 3

end

end A236959.P4988435550678262122

namespace A236959

/-- `lcm(3, A006093(n+1))/3` -/
def P4988435550678262122.Spec : Prop :=
  ∀ n, P4988435550678262122.a n = (A236959 (n + 1) : ℚ)

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

/-! ## A236959.P13768673877161516538

`A087692(record[A051698(n)])`
-/

namespace A236959.P13768673877161516538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051698 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087692 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A236959.P13768673877161516538

namespace A236959

/-- `A087692(record[A051698(n)])` -/
def P13768673877161516538.Spec : Prop :=
  ∀ n, P13768673877161516538.a n = A236959 (n + 1)

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

/-! ## A236959.P1763466456102552695

`A115070(A006005(n+1))`
-/

namespace A236959.P1763466456102552695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115070 (A006005 (n + 1)).toNat

end

end A236959.P1763466456102552695

namespace A236959

/-- `A115070(A006005(n+1))` -/
def P1763466456102552695.Spec : Prop :=
  ∀ n, P1763466456102552695.a n = A236959 (n + 1)

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

/-! ## A236959.P16101924505924798366

`A046530(A000040(n+1))-1`
-/

namespace A236959.P16101924505924798366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046530 (A000040 (n + 1)).toNat - 1

end

end A236959.P16101924505924798366

namespace A236959

/-- `A046530(A000040(n+1))-1` -/
def P16101924505924798366.Spec : Prop :=
  ∀ n, P16101924505924798366.a n = A236959 (n + 1)

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

/-! ## A236959.P16968341692272174596

`A060473(A077017(n+2))`
-/

namespace A236959.P16968341692272174596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060473 (A077017 (n + 2)).toNat

end

end A236959.P16968341692272174596

namespace A236959

/-- `A060473(A077017(n+2))` -/
def P16968341692272174596.Spec : Prop :=
  ∀ n, P16968341692272174596.a n = A236959 (n + 1)

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

/-! ## A236959.P15858399988318171893

`A279287(A001749(n+1))`
-/

namespace A236959.P15858399988318171893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279287 (A001749 (n + 1)).toNat

end

end A236959.P15858399988318171893

namespace A236959

/-- `A279287(A001749(n+1))` -/
def P15858399988318171893.Spec : Prop :=
  ∀ n, P15858399988318171893.a n = A236959 (n + 1)

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

/-! ## A236961.P12546075006978606841

`A158835(n+1)+A089049(A184944(n+2))`
-/

namespace A236961.P12546075006978606841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158835 (n + 1) + A089049 (A184944 (n + 2)).toNat

end

end A236961.P12546075006978606841

/-! ## A236961.P17672344175154013930

`A158835(n+1)+A135767(A081703(n+1))`
-/

namespace A236961.P17672344175154013930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158835 (n + 1) + A135767 (A081703 (n + 1)).toNat

end

end A236961.P17672344175154013930

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

/-!
# A236965: Number of nonzero quartic residues modulo the n-th prime.

The programs for A236965, the canonical program `A236965.P13563175010307940546` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A236965 has offset 1).

The definition of A236965 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A236965.P13563175010307940546

`A006093(n+1)/gcd(A006093(n+1), 4)`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A236965

/-- `A006093(n+1)/gcd(A006093(n+1), 4)` -/
def P13563175010307940546.Spec : Prop :=
  ∀ n, P13563175010307940546.a n = (A236965 (n + 1) : ℚ)

end A236965

/-! ## A236965.P2802622176657450995

`(A000040(n+1)-1)/gcd(A000040(n+1)-1, 4)`
-/

namespace A236965.P2802622176657450995
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000040 (n + 1) - 1 : ℚ) / (Int.gcd (A000040 (n + 1) - 1) 4 : ℚ)

end

end A236965.P2802622176657450995

namespace A236965

/-- `(A000040(n+1)-1)/gcd(A000040(n+1)-1, 4)` -/
def P2802622176657450995.Spec : Prop :=
  ∀ n, P2802622176657450995.a n = (A236965 (n + 1) : ℚ)

end A236965

/-! ## A236965.P4867924204486302736

`lcm(2, A130290(1+n))/2`
-/

namespace A236965.P4867924204486302736
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 (A130290 (1 + n)) : ℚ) / 2

end

end A236965.P4867924204486302736

namespace A236965

/-- `lcm(2, A130290(1+n))/2` -/
def P4867924204486302736.Spec : Prop :=
  ∀ n, P4867924204486302736.a n = (A236965 (n + 1) : ℚ)

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

/-! ## A236965.P6345638189889104231

`A116921(A306591(n+1))`
-/

namespace A236965.P6345638189889104231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116921 (A306591 (n + 1)).toNat

end

end A236965.P6345638189889104231

namespace A236965

/-- `A116921(A306591(n+1))` -/
def P6345638189889104231.Spec : Prop :=
  ∀ n, P6345638189889104231.a n = A236965 (n + 1)

end A236965

/-! ## A236965.P9695480320783668237

`A130845(A116974(n+2))`
-/

namespace A236965.P9695480320783668237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130845 (A116974 (n + 2)).toNat

end

end A236965.P9695480320783668237

namespace A236965

/-- `A130845(A116974(n+2))` -/
def P9695480320783668237.Spec : Prop :=
  ∀ n, P9695480320783668237.a n = A236965 (n + 1)

end A236965

/-! ## A236965.P17732496880355381679

`A317925(A077017(n+2))`
-/

namespace A236965.P17732496880355381679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317925 (A077017 (n + 2)).toNat

end

end A236965.P17732496880355381679

namespace A236965

/-- `A317925(A077017(n+2))` -/
def P17732496880355381679.Spec : Prop :=
  ∀ n, P17732496880355381679.a n = A236965 (n + 1)

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

/-! ## A236965.P11671974427722747808

`A279287(A073582(n+1))`
-/

namespace A236965.P11671974427722747808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279287 (A073582 (n + 1)).toNat

end

end A236965.P11671974427722747808

namespace A236965

/-- `A279287(A073582(n+1))` -/
def P11671974427722747808.Spec : Prop :=
  ∀ n, P11671974427722747808.a n = A236965 (n + 1)

end A236965

/-! ## A236965.P2047260017633941223

`A373318(A100484(n+1))`
-/

namespace A236965.P2047260017633941223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373318 (A100484 (n + 1)).toNat

end

end A236965.P2047260017633941223

namespace A236965

/-- `A373318(A100484(n+1))` -/
def P2047260017633941223.Spec : Prop :=
  ∀ n, P2047260017633941223.a n = A236965 (n + 1)

end A236965

/-! ## A236965.P15913333812404560347

`A146306(A247159(n+1))`
-/

namespace A236965.P15913333812404560347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146306 (A247159 (n + 1)).toNat

end

end A236965.P15913333812404560347

namespace A236965

/-- `A146306(A247159(n+1))` -/
def P15913333812404560347.Spec : Prop :=
  ∀ n, P15913333812404560347.a n = A236965 (n + 1)

end A236965

/-! ## A236965.P214915222407026601

`A070091(A072900(n+1))`
-/

namespace A236965.P214915222407026601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070091 (A072900 (n + 1)).toNat

end

end A236965.P214915222407026601

namespace A236965

/-- `A070091(A072900(n+1))` -/
def P214915222407026601.Spec : Prop :=
  ∀ n, P214915222407026601.a n = A236965 (n + 1)

end A236965

/-! ## A236965.P11665798587155532737

`A268336(A062876(n+1))`
-/

namespace A236965.P11665798587155532737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268336 (A062876 (n + 1)).toNat

end

end A236965.P11665798587155532737

namespace A236965

/-- `A268336(A062876(n+1))` -/
def P11665798587155532737.Spec : Prop :=
  ∀ n, P11665798587155532737.a n = A236965 (n + 1)

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
# A236967: Expansion of g.f. (1+3*x)^2/(1-3*x)^2.

The programs for A236967, the canonical program `A236967.P11485579401680264996` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A236967 has offset 0).

The definition of A236967 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+6x+9x^2)/(1-6x+9x^2))` (program `A236967.P11485579401680264996`, by `A236967.P11485579401680264996.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A236967.P11485579401680264996

`ogf((1+6x+9x^2)/(1-6x+9x^2))`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A236967

/-- `ogf((1+6x+9x^2)/(1-6x+9x^2))` -/
def P11485579401680264996.Spec : Prop :=
  ∀ n, P11485579401680264996.a n = A236967 n

theorem P11485579401680264996.correct : P11485579401680264996.Spec := by
  intro n
  simp only [A236967]

end A236967

/-! ## A236967.P14543508598371912382

`6*a(n-1)-9*a(n-2)` with `a(0)=1, a(1)=12, a(2)=72`
-/

namespace A236967.P14543508598371912382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 12, 72] fun n a =>
  6 * a (n - 1) - 9 * a (n - 2)

end

end A236967.P14543508598371912382

namespace A236967

/-- `6*a(n-1)-9*a(n-2)` -/
def P14543508598371912382.Spec : Prop :=
  ∀ n, P14543508598371912382.a n = A236967 n

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

/-! ## A236976.P16522644030326198799

`A236979(A141214(n+1))`
-/

namespace A236976.P16522644030326198799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236979 (A141214 (n + 1)).toNat

end

end A236976.P16522644030326198799

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

/-! ## A236993.P6337683397527906419

`A236997(A141214(n+1))`
-/

namespace A236993.P6337683397527906419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236997 (A141214 (n + 1)).toNat

end

end A236993.P6337683397527906419

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

/-!
# A236998: a(n) = |{0 < k < n/2: phi(k)*phi(n-k) is a square}|, where phi(.) is Euler's totient function.

The programs for A236998, there is no canonical definition to state claims against.
-/

/-! ## A236998.P484832139299073761

`A126043(3*n+1)%(A323273(n)+1)`
-/

namespace A236998.P484832139299073761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A126043 (3 * n + 1)) (A323273 n + 1)

end

end A236998.P484832139299073761

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

The programs for A236999, the canonical program `A236999.P18015192940983009174` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A236999 has offset 1).

The definition of A236999 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A236999.P18015192940983009174

`A000265(A034856(n+1))`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A236999

/-- `A000265(A034856(n+1))` -/
def P18015192940983009174.Spec : Prop :=
  ∀ n, P18015192940983009174.a n = A236999 (n + 1)

theorem P18015192940983009174.correct : P18015192940983009174.Spec := by
  intro n
  simp only [A236999, Nat.add_sub_cancel]

end A236999

/-! ## A236999.P5143567863687140804

`A000265(∑[2+n]-1)`
-/

namespace A236999.P5143567863687140804
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A236999.P5143567863687140804

namespace A236999

/-- `A000265(∑[2+n]-1)` -/
def P5143567863687140804.Spec : Prop :=
  ∀ n, P5143567863687140804.a n = A236999 (n + 1)

end A236999

/-! ## A236999.P17184046277982569673

`A171435(2+n*(n+5))`
-/

namespace A236999.P17184046277982569673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171435 (2 + n * (n + 5))

end

end A236999.P17184046277982569673

namespace A236999

/-- `A171435(2+n*(n+5))` -/
def P17184046277982569673.Spec : Prop :=
  ∀ n, P17184046277982569673.a n = A236999 (n + 1)

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

/-! ## A236999.P16743649905545383985

`A302044(n*(n+5)+2)`
-/

namespace A236999.P16743649905545383985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302044 (n * (n + 5) + 2)

end

end A236999.P16743649905545383985

namespace A236999

/-- `A302044(n*(n+5)+2)` -/
def P16743649905545383985.Spec : Prop :=
  ∀ n, P16743649905545383985.a n = A236999 (n + 1)

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

/-! ## A236999.P13026323750366555378

`A132740(∑[n+1]+n)`
-/

namespace A236999.P13026323750366555378
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132740 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A236999.P13026323750366555378

namespace A236999

/-- `A132740(∑[n+1]+n)` -/
def P13026323750366555378.Spec : Prop :=
  ∀ n, P13026323750366555378.a n = A236999 (n + 1)

end A236999

/-! ## A236999.P4646398120262103145

`A165725(∑[n+1]+n)`
-/

namespace A236999.P4646398120262103145
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165725 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A236999.P4646398120262103145

namespace A236999

/-- `A165725(∑[n+1]+n)` -/
def P4646398120262103145.Spec : Prop :=
  ∀ n, P4646398120262103145.a n = A236999 (n + 1)

end A236999

/-! ## A236999.P13156261074101323594

`A214681(∑[n+1]+n)`
-/

namespace A236999.P13156261074101323594
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214681 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A236999.P13156261074101323594

namespace A236999

/-- `A214681(∑[n+1]+n)` -/
def P13156261074101323594.Spec : Prop :=
  ∀ n, P13156261074101323594.a n = A236999 (n + 1)

end A236999

/-! ## A236999.P15685697666214005812

`A214685(∑[n+1]+n)`
-/

namespace A236999.P15685697666214005812
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214685 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A236999.P15685697666214005812

namespace A236999

/-- `A214685(∑[n+1]+n)` -/
def P15685697666214005812.Spec : Prop :=
  ∀ n, P15685697666214005812.a n = A236999 (n + 1)

end A236999

