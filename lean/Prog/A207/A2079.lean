import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C017
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C037
import Seq.B000.C039
import Seq.B000.C045
import Seq.B000.C047
import Seq.B000.C048
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C004
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C011
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C004
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B005.C000
import Seq.B006.C000
import Seq.B008.C000
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
import Seq.Opaque.C016
import Seq.Opaque.C018
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A207900: Number of 7 X n 0..1 arrays avoiding 0 0 0 and 1 0 1 horizontally and 0 0 0 and 1 1 1 vertically.

The programs for A207900, there is no canonical definition to state claims against.
-/

/-! ## A207900.P16263732994574278286

`A207895(A167499(n+5)+2)`
-/

namespace A207900.P16263732994574278286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207895 (A167499 (n + 5) + 2).toNat

end

end A207900.P16263732994574278286

/-!
# A207901: Let S_k denote the first 2^k terms of this sequence and let b_k be the smallest positive integer that is not in S_k, also let R_k equal S_k read in reverse order; then the numbers b_k*R_k are the next 2^k terms.

The programs for A207901, there is no canonical definition to state claims against.
-/

/-! ## A207901.P14125135239095559007

`A302781(A302843(n))`
-/

namespace A207901.P14125135239095559007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302781 (A302843 n).toNat

end

end A207901.P14125135239095559007

/-! ## A207901.P1237669136149240839

`A052330(A003188(n))`
-/

namespace A207901.P1237669136149240839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052330 (A003188 n).toNat

end

end A207901.P1237669136149240839

/-! ## A207901.P7863274871420749527

`A302783(A064706(n))`
-/

namespace A207901.P7863274871420749527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302783 (A064706 n).toNat

end

end A207901.P7863274871420749527

/-! ## A207901.P3776087834544238658

`A052330(xor(n, floor(n/2)))`
-/

namespace A207901.P3776087834544238658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052330 (Int.xor (n : ℤ) ⌊(n : ℚ) / 2⌋).toNat

end

end A207901.P3776087834544238658

/-! ## A207901.P10347823358715192754

`A302783(xor(n, floor(n/4)))`
-/

namespace A207901.P10347823358715192754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302783 (Int.xor (n : ℤ) ⌊(n : ℚ) / 4⌋).toNat

end

end A207901.P10347823358715192754

/-! ## A207901.P4550817722685249872

`∏{p}[A302033(n), A302023(#)]`
-/

namespace A207901.P4550817722685249872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302033 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A302023 p

end

end A207901.P4550817722685249872

/-! ## A207901.P6514307382002334743

`A302023(A243353(n))`
-/

namespace A207901.P6514307382002334743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302023 (A243353 n).toNat

end

end A207901.P6514307382002334743

/-!
# A207902: Number of n X n 0..1 arrays avoiding 0 0 0 and 0 1 0 horizontally and 0 0 0 and 0 1 1 vertically.

The programs for A207902, there is no canonical definition to state claims against.
-/

/-! ## A207902.P8407627164683899445

`A207908(∑[4*n]+1)`
-/

namespace A207902.P8407627164683899445
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207908 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A207902.P8407627164683899445

/-! ## A207902.P7531284535677921082

`record[A003982(n)*A207908(n+1)]`
-/

namespace A207902.P7531284535677921082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A207908 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A207902.P7531284535677921082

/-! ## A207902.P10499777930044739742

`record[gcd(A114327(n), A207908(n+1))]`
-/

namespace A207902.P10499777930044739742
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A114327 n) (A207908 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A207902.P10499777930044739742

/-! ## A207902.P7040125528213872219

`record[root(A207908(n+1), A204143(n+1))]`
-/

namespace A207902.P7040125528213872219
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A207908 (n + 1) : ℝ) ^ (1 / (A204143 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A207902.P7040125528213872219

/-!
# A207903: Number of nX3 0..1 arrays avoiding 0 0 0 and 0 1 0 horizontally and 0 0 0 and 0 1 1 vertically.

The programs for A207903, there is no canonical definition to state claims against.
-/

/-! ## A207903.P18242244832160532182

`sqrt(A207025(n+1))*sqrt(A207904(n+1))`
-/

namespace A207903.P18242244832160532182
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A207025 (n + 1) : ℝ) * Real.sqrt (A207904 (n + 1) : ℝ)

end

end A207903.P18242244832160532182

/-! ## A207903.P12648177888073425928

`sqrt(A207025(n+1)*A207904(n+1))`
-/

namespace A207903.P12648177888073425928
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A207025 (n + 1) * A207904 (n + 1) : ℝ)

end

end A207903.P12648177888073425928

/-! ## A207903.P13540670780565864031

`sqrt((1-A054405(n+2))²*A207904(n+1))`
-/

namespace A207903.P13540670780565864031
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((1 - A054405 (n + 2)) ^ 2 * A207904 (n + 1) : ℝ)

end

end A207903.P13540670780565864031

/-! ## A207903.P5042627461123475121

`sqrt((3-Δ[A018917(n+3)])²*A207904(n+1))`
-/

namespace A207903.P5042627461123475121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018917 (n + 3)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((3 - (f1 (n + 1) - f1 n)) ^ 2 * A207904 (n + 1) : ℝ)

end

end A207903.P5042627461123475121

/-! ## A207903.P12291546505229378936

`A208420(∑[n+3]+1)`
-/

namespace A207903.P12291546505229378936
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208420 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A207903.P12291546505229378936

/-!
# A207904: Number of nX4 0..1 arrays avoiding 0 0 0 and 0 1 0 horizontally and 0 0 0 and 0 1 1 vertically.

The programs for A207904, there is no canonical definition to state claims against.
-/

/-! ## A207904.P16244774235243295071

`A207903(n+1)/A207025(n+1)*A207903(n+1)`
-/

namespace A207904.P16244774235243295071
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A207903 (n + 1) : ℚ) / (A207025 (n + 1) : ℚ) * (A207903 (n + 1) : ℚ)

end

end A207904.P16244774235243295071

/-! ## A207904.P1046611933882096428

`A207903(n+1)/A208416(n+1)*A207905(n+1)`
-/

namespace A207904.P1046611933882096428
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A207903 (n + 1) : ℚ) / (A208416 (n + 1) : ℚ) * (A207905 (n + 1) : ℚ)

end

end A207904.P1046611933882096428

/-! ## A207904.P9416353245162985395

`A207905(n+1)/A207906(n+1)*A207905(n+1)`
-/

namespace A207904.P9416353245162985395
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A207905 (n + 1) : ℚ) / (A207906 (n + 1) : ℚ) * (A207905 (n + 1) : ℚ)

end

end A207904.P9416353245162985395

/-! ## A207904.P14378053462031156283

`A207903(n+1)²/A207025(n+1)`
-/

namespace A207904.P14378053462031156283
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A207903 (n + 1) ^ 2 : ℚ) / (A207025 (n + 1) : ℚ)

end

end A207904.P14378053462031156283

/-! ## A207904.P16918864778105291840

`A207905(n+1)²/A207906(n+1)`
-/

namespace A207904.P16918864778105291840
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A207905 (n + 1) ^ 2 : ℚ) / (A207906 (n + 1) : ℚ)

end

end A207904.P16918864778105291840

/-!
# A207905: Number of nX5 0..1 arrays avoiding 0 0 0 and 0 1 0 horizontally and 0 0 0 and 0 1 1 vertically.

The programs for A207905, there is no canonical definition to state claims against.
-/

/-! ## A207905.P3936246797909149739

`A207903(n+1)/A207025(n+1)*A208416(n+1)`
-/

namespace A207905.P3936246797909149739
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A207903 (n + 1) : ℚ) / (A207025 (n + 1) : ℚ) * (A208416 (n + 1) : ℚ)

end

end A207905.P3936246797909149739

/-! ## A207905.P16743374281286075943

`A207904(n+1)/A207903(n+1)*A208416(n+1)`
-/

namespace A207905.P16743374281286075943
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A207904 (n + 1) : ℚ) / (A207903 (n + 1) : ℚ) * (A208416 (n + 1) : ℚ)

end

end A207905.P16743374281286075943

/-! ## A207905.P2812790742050776476

`sqrt(A207904(n+1))*sqrt(A207906(n+1))`
-/

namespace A207905.P2812790742050776476
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A207904 (n + 1) : ℝ) * Real.sqrt (A207906 (n + 1) : ℝ)

end

end A207905.P2812790742050776476

/-! ## A207905.P15821119540703737954

`sqrt(A207904(n+1)*A207906(n+1))`
-/

namespace A207905.P15821119540703737954
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A207904 (n + 1) * A207906 (n + 1) : ℝ)

end

end A207905.P15821119540703737954

/-! ## A207905.P13029158279178916215

`A207908(A046691(n+3))`
-/

namespace A207905.P13029158279178916215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207908 (A046691 (n + 3)).toNat

end

end A207905.P13029158279178916215

/-!
# A207906: Number of nX6 0..1 arrays avoiding 0 0 0 and 0 1 0 horizontally and 0 0 0 and 0 1 1 vertically.

The programs for A207906, there is no canonical definition to state claims against.
-/

/-! ## A207906.P8483734930994627275

`A207905(n+1)/A207904(n+1)*A207905(n+1)`
-/

namespace A207906.P8483734930994627275
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A207905 (n + 1) : ℚ) / (A207904 (n + 1) : ℚ) * (A207905 (n + 1) : ℚ)

end

end A207906.P8483734930994627275

/-! ## A207906.P15368485808275646704

`A208416(n+1)/A207025(n+1)*A208416(n+1)`
-/

namespace A207906.P15368485808275646704
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A208416 (n + 1) : ℚ) / (A207025 (n + 1) : ℚ) * (A208416 (n + 1) : ℚ)

end

end A207906.P15368485808275646704

/-! ## A207906.P4837414315614424506

`A208416(n+1)/A207903(n+1)*A207905(n+1)`
-/

namespace A207906.P4837414315614424506
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A208416 (n + 1) : ℚ) / (A207903 (n + 1) : ℚ) * (A207905 (n + 1) : ℚ)

end

end A207906.P4837414315614424506

/-! ## A207906.P12530187702343928698

`A207025(n+1)/(A207903(n+1)/A207905(n+1))²`
-/

namespace A207906.P12530187702343928698
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A207025 (n + 1) : ℚ) / ((A207903 (n + 1) : ℚ) / (A207905 (n + 1) : ℚ)) ^ 2

end

end A207906.P12530187702343928698

/-! ## A207906.P713248298962916906

`A208416(n+1)²/A207025(n+1)`
-/

namespace A207906.P713248298962916906
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A208416 (n + 1) ^ 2 : ℚ) / (A207025 (n + 1) : ℚ)

end

end A207906.P713248298962916906

/-! ## A207906.P6165875099786225839

`A207905(n+1)²/A207904(n+1)`
-/

namespace A207906.P6165875099786225839
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A207905 (n + 1) ^ 2 : ℚ) / (A207904 (n + 1) : ℚ)

end

end A207906.P6165875099786225839

/-!
# A207907: Number of nX7 0..1 arrays avoiding 0 0 0 and 0 1 0 horizontally and 0 0 0 and 0 1 1 vertically.

The programs for A207907, there is no canonical definition to state claims against.
-/

/-! ## A207907.P7212513873759110673

`A208416(n+1)/A207025(n+1)*A208417(n+1)`
-/

namespace A207907.P7212513873759110673
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A208416 (n + 1) : ℚ) / (A207025 (n + 1) : ℚ) * (A208417 (n + 1) : ℚ)

end

end A207907.P7212513873759110673

/-! ## A207907.P16358460831139957306

`A207908(A055999(n+4))`
-/

namespace A207907.P16358460831139957306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207908 (A055999 (n + 4)).toNat

end

end A207907.P16358460831139957306

/-!
# A207908: T(n,k)=Number of nXk 0..1 arrays avoiding 0 0 0 and 0 1 0 horizontally and 0 0 0 and 0 1 1 vertically.

The programs for A207908, there is no canonical definition to state claims against.
-/

/-! ## A207908.P13909412224911634987

`A208039(n+1)-A210709(A067747(n+1))`
-/

namespace A207908.P13909412224911634987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208039 (n + 1) - A210709 (A067747 (n + 1)).toNat

end

end A207908.P13909412224911634987

/-! ## A207908.P10444455314688161822

`A208039(n+1)-A210709(n+11)`
-/

namespace A207908.P10444455314688161822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208039 (n + 1) - A210709 (n + 11)

end

end A207908.P10444455314688161822

/-! ## A207908.P5570282604764553749

`A208039(n+1)*A208420(n+1)/(A210709(n+11)+A208420(n+1))`
-/

namespace A207908.P5570282604764553749
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A208039 (n + 1) * A208420 (n + 1) : ℚ) / (A210709 (n + 11) + A208420 (n + 1) : ℚ)

end

end A207908.P5570282604764553749

/-! ## A207908.P1499118411319669901

`A208039(n+1)`
-/

namespace A207908.P1499118411319669901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208039 (n + 1)

end

end A207908.P1499118411319669901

/-!
# A207909: Number of 4Xn 0..1 arrays avoiding 0 0 0 and 0 1 0 horizontally and 0 0 0 and 0 1 1 vertically.

The programs for A207909, there is no canonical definition to state claims against.
-/

/-! ## A207909.P8421056070364219629

`A207908(∑[n+3]+7)`
-/

namespace A207909.P8421056070364219629
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207908 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A207909.P8421056070364219629

/-!
# A207910: Number of 5Xn 0..1 arrays avoiding 0 0 0 and 0 1 0 horizontally and 0 0 0 and 0 1 1 vertically.

The programs for A207910, there is no canonical definition to state claims against.
-/

/-! ## A207910.P11240233466809472728

`A207908(A056000(n)+15)`
-/

namespace A207910.P11240233466809472728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207908 (A056000 n + 15).toNat

end

end A207910.P11240233466809472728

/-!
# A207911: Number of 6Xn 0..1 arrays avoiding 0 0 0 and 0 1 0 horizontally and 0 0 0 and 0 1 1 vertically.

The programs for A207911, there is no canonical definition to state claims against.
-/

/-! ## A207911.P7914700112060759403

`A207908(A000124(n+5)+5)`
-/

namespace A207911.P7914700112060759403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207908 (A000124 (n + 5) + 5).toNat

end

end A207911.P7914700112060759403

/-!
# A207912: Number of 7Xn 0..1 arrays avoiding 0 0 0 and 0 1 0 horizontally and 0 0 0 and 0 1 1 vertically.

The programs for A207912, there is no canonical definition to state claims against.
-/

/-! ## A207912.P12229954368567635852

`A207908(A167487(n+5))`
-/

namespace A207912.P12229954368567635852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207908 (A167487 (n + 5)).toNat

end

end A207912.P12229954368567635852

/-!
# A207913: Number of n X n 0..1 arrays avoiding 0 0 0 and 1 0 1 horizontally and 0 1 0 and 1 0 1 vertically.

The programs for A207913, there is no canonical definition to state claims against.
-/

/-! ## A207913.P5715746792075051748

`A207918(∑[4*n]+1)`
-/

namespace A207913.P5715746792075051748
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207918 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A207913.P5715746792075051748

/-! ## A207913.P11173293570886392447

`record[A003982(n)*A207918(n+1)]`
-/

namespace A207913.P11173293570886392447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A207918 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A207913.P11173293570886392447

/-! ## A207913.P3325391157928784339

`record[gcd(A037012(n), A207918(n+1))]`
-/

namespace A207913.P3325391157928784339
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A037012 n) (A207918 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A207913.P3325391157928784339

/-! ## A207913.P15107440778630733118

`record[A203994(n+1)*A207918(n+1)]`
-/

namespace A207913.P15107440778630733118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203994 (n + 1) * A207918 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A207913.P15107440778630733118

/-!
# A207914: Number of nX4 0..1 arrays avoiding 0 0 0 and 1 0 1 horizontally and 0 1 0 and 1 0 1 vertically.

The programs for A207914, there is no canonical definition to state claims against.
-/

/-! ## A207914.P3398638095504094286

`A207918(A141214(n+1))`
-/

namespace A207914.P3398638095504094286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207918 (A141214 (n + 1)).toNat

end

end A207914.P3398638095504094286

/-! ## A207914.P7699280263884718197

`A208698(A155212(n)+5)`
-/

namespace A207914.P7699280263884718197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208698 (A155212 n + 5).toNat

end

end A207914.P7699280263884718197

/-!
# A207915: Number of nX5 0..1 arrays avoiding 0 0 0 and 1 0 1 horizontally and 0 1 0 and 1 0 1 vertically.

The programs for A207915, there is no canonical definition to state claims against.
-/

/-! ## A207915.P15155041834639703496

`A207918(eq[4, A193592(n)])`
-/

namespace A207915.P15155041834639703496
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207918 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A207915.P15155041834639703496

/-!
# A207916: Number of nX6 0..1 arrays avoiding 0 0 0 and 1 0 1 horizontally and 0 1 0 and 1 0 1 vertically.

The programs for A207916, there is no canonical definition to state claims against.
-/

/-! ## A207916.P14885457311046196836

`A207918(A052905(n+3))`
-/

namespace A207916.P14885457311046196836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207918 (A052905 (n + 3)).toNat

end

end A207916.P14885457311046196836

/-!
# A207917: Number of nX7 0..1 arrays avoiding 0 0 0 and 1 0 1 horizontally and 0 1 0 and 1 0 1 vertically.

The programs for A207917, there is no canonical definition to state claims against.
-/

/-! ## A207917.P16154672043462409213

`A207918(A055999(n+4))`
-/

namespace A207917.P16154672043462409213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207918 (A055999 (n + 4)).toNat

end

end A207917.P16154672043462409213

/-!
# A207918: T(n,k)=Number of nXk 0..1 arrays avoiding 0 0 0 and 1 0 1 horizontally and 0 1 0 and 1 0 1 vertically.

The programs for A207918, there is no canonical definition to state claims against.
-/

/-! ## A207918.P10141948455364707938

`A207467(n+1)+A016389(A119502(n))`
-/

namespace A207918.P10141948455364707938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207467 (n + 1) + A016389 (A119502 n).toNat

end

end A207918.P10141948455364707938

/-! ## A207918.P6648865166850093994

`A207467(n+1)+A016389(A152656(n))`
-/

namespace A207918.P6648865166850093994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207467 (n + 1) + A016389 (A152656 n).toNat

end

end A207918.P6648865166850093994

/-! ## A207918.P4386076125298284172

`A207467(n+1)+A070204(A126331(n))`
-/

namespace A207918.P4386076125298284172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207467 (n + 1) + A070204 (A126331 n).toNat

end

end A207918.P4386076125298284172

/-! ## A207918.P6245492814857896953

`A359472(A060281(n+1))+A207467(n+1)`
-/

namespace A207918.P6245492814857896953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359472 (A060281 (n + 1)).toNat + A207467 (n + 1)

end

end A207918.P6245492814857896953

/-! ## A207918.P13749723481824926885

`A207467(n+1)-A240465(A254051(3*n+2))`
-/

namespace A207918.P13749723481824926885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207467 (n + 1) - A240465 (A254051 (3 * n + 2)).toNat

end

end A207918.P13749723481824926885

/-!
# A207919: Number of 4Xn 0..1 arrays avoiding 0 0 0 and 1 0 1 horizontally and 0 1 0 and 1 0 1 vertically.

The programs for A207919, there is no canonical definition to state claims against.
-/

/-! ## A207919.P5983857361044622424

`A207918(∑[n+3]+7)`
-/

namespace A207919.P5983857361044622424
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207918 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A207919.P5983857361044622424

/-!
# A207920: Number of 5Xn 0..1 arrays avoiding 0 0 0 and 1 0 1 horizontally and 0 1 0 and 1 0 1 vertically.

The programs for A207920, there is no canonical definition to state claims against.
-/

/-! ## A207920.P17351206293089260108

`A207918(A167499(n+3))`
-/

namespace A207920.P17351206293089260108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207918 (A167499 (n + 3)).toNat

end

end A207920.P17351206293089260108

/-!
# A207921: Number of 6Xn 0..1 arrays avoiding 0 0 0 and 1 0 1 horizontally and 0 1 0 and 1 0 1 vertically.

The programs for A207921, there is no canonical definition to state claims against.
-/

/-! ## A207921.P11333582486442571304

`A207918(A167614(n+4)+3)`
-/

namespace A207921.P11333582486442571304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207918 (A167614 (n + 4) + 3).toNat

end

end A207921.P11333582486442571304

/-!
# A207922: Number of 7Xn 0..1 arrays avoiding 0 0 0 and 1 0 1 horizontally and 0 1 0 and 1 0 1 vertically.

The programs for A207922, there is no canonical definition to state claims against.
-/

/-! ## A207922.P6528062981902668226

`A207918(A167487(n+5))`
-/

namespace A207922.P6528062981902668226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207918 (A167487 (n + 5)).toNat

end

end A207922.P6528062981902668226

/-!
# A207923: Number of n X n 0..1 arrays avoiding 0 0 0 and 0 1 0 horizontally and 0 0 0 and 1 1 1 vertically.

The programs for A207923, there is no canonical definition to state claims against.
-/

/-! ## A207923.P4836804468969831443

`A207928(∑[4*n]+1)`
-/

namespace A207923.P4836804468969831443
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207928 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A207923.P4836804468969831443

/-! ## A207923.P4629694299576734928

`record[A207928(A330613(n+1))]`
-/

namespace A207923.P4629694299576734928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207928 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A207923.P4629694299576734928

/-! ## A207923.P9686082631403977705

`record[gcd(A037012(n), A207928(n+1))]`
-/

namespace A207923.P9686082631403977705
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A037012 n) (A207928 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A207923.P9686082631403977705

/-! ## A207923.P8936652326156201006

`record[A203994(n+1)*A207928(n+1)]`
-/

namespace A207923.P8936652326156201006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203994 (n + 1) * A207928 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A207923.P8936652326156201006

/-!
# A207924: Number of n X 4 0..1 arrays avoiding 0 0 0 and 0 1 0 horizontally and 0 0 0 and 1 1 1 vertically.

The programs for A207924, the canonical program `A207924.P10688370420301754489` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A207924 has offset 1).

The definition of A207924 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 187 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A207924.P10688370420301754489

`(A248959(2+n)/3)²`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A207924

/-- `(A248959(2+n)/3)²` -/
def P10688370420301754489.Spec : Prop :=
  ∀ n, P10688370420301754489.a n = (A207924 (n + 1) : ℚ)

end A207924

/-! ## A207924.P7836282099491989390

`(A248959(n+2)/3)^2`
-/

namespace A207924.P7836282099491989390
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A248959 (n + 2) : ℚ) / 3) ^ 2

end

end A207924.P7836282099491989390

namespace A207924

/-- `(A248959(n+2)/3)^2` -/
def P7836282099491989390.Spec : Prop :=
  ∀ n, P7836282099491989390.a n = (A207924 (n + 1) : ℚ)

end A207924

/-! ## A207924.P1407644270408816669

`A207840(n+1)/A206981(n+1)*A207840(n+1)`
-/

namespace A207924.P1407644270408816669
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A207840 (n + 1) : ℚ) / (A206981 (n + 1) : ℚ) * (A207840 (n + 1) : ℚ)

end

end A207924.P1407644270408816669

namespace A207924

/-- `A207840(n+1)/A206981(n+1)*A207840(n+1)` -/
def P1407644270408816669.Spec : Prop :=
  ∀ n, P1407644270408816669.a n = (A207924 (n + 1) : ℚ)

end A207924

/-! ## A207924.P10071349189813181450

`A208070(n+1)/A208071(n+1)*A208070(n+1)`
-/

namespace A207924.P10071349189813181450
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A208070 (n + 1) : ℚ) / (A208071 (n + 1) : ℚ) * (A208070 (n + 1) : ℚ)

end

end A207924.P10071349189813181450

namespace A207924

/-- `A208070(n+1)/A208071(n+1)*A208070(n+1)` -/
def P10071349189813181450.Spec : Prop :=
  ∀ n, P10071349189813181450.a n = (A207924 (n + 1) : ℚ)

end A207924

/-! ## A207924.P4974240275160290583

`A207925(n+1)/A207926(n+1)*A207925(n+1)`
-/

namespace A207924.P4974240275160290583
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A207925 (n + 1) : ℚ) / (A207926 (n + 1) : ℚ) * (A207925 (n + 1) : ℚ)

end

end A207924.P4974240275160290583

namespace A207924

/-- `A207925(n+1)/A207926(n+1)*A207925(n+1)` -/
def P4974240275160290583.Spec : Prop :=
  ∀ n, P4974240275160290583.a n = (A207924 (n + 1) : ℚ)

end A207924

/-! ## A207924.P12209396758191799533

`A207840(n+1)²/A206981(n+1)`
-/

namespace A207924.P12209396758191799533
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A207840 (n + 1) ^ 2 : ℚ) / (A206981 (n + 1) : ℚ)

end

end A207924.P12209396758191799533

namespace A207924

/-- `A207840(n+1)²/A206981(n+1)` -/
def P12209396758191799533.Spec : Prop :=
  ∀ n, P12209396758191799533.a n = (A207924 (n + 1) : ℚ)

end A207924

/-! ## A207924.P760126791451960025

`A208070(n+1)²/A208071(n+1)`
-/

namespace A207924.P760126791451960025
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A208070 (n + 1) ^ 2 : ℚ) / (A208071 (n + 1) : ℚ)

end

end A207924.P760126791451960025

namespace A207924

/-- `A208070(n+1)²/A208071(n+1)` -/
def P760126791451960025.Spec : Prop :=
  ∀ n, P760126791451960025.a n = (A207924 (n + 1) : ℚ)

end A207924

/-! ## A207924.P720447228348082633

`A207925(n+1)²/A207926(n+1)`
-/

namespace A207924.P720447228348082633
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A207925 (n + 1) ^ 2 : ℚ) / (A207926 (n + 1) : ℚ)

end

end A207924.P720447228348082633

namespace A207924

/-- `A207925(n+1)²/A207926(n+1)` -/
def P720447228348082633.Spec : Prop :=
  ∀ n, P720447228348082633.a n = (A207924 (n + 1) : ℚ)

end A207924

/-!
# A207925: Number of nX5 0..1 arrays avoiding 0 0 0 and 0 1 0 horizontally and 0 0 0 and 1 1 1 vertically.

The programs for A207925, there is no canonical definition to state claims against.
-/

/-! ## A207925.P9756834269106779506

`A207840(n+1)/A206981(n+1)*A207841(n+1)`
-/

namespace A207925.P9756834269106779506
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A207840 (n + 1) : ℚ) / (A206981 (n + 1) : ℚ) * (A207841 (n + 1) : ℚ)

end

end A207925.P9756834269106779506

/-! ## A207925.P1881301563603458990

`A207841(n+1)/A207840(n+1)*A207924(n+1)`
-/

namespace A207925.P1881301563603458990
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A207841 (n + 1) : ℚ) / (A207840 (n + 1) : ℚ) * (A207924 (n + 1) : ℚ)

end

end A207925.P1881301563603458990

/-! ## A207925.P9467314009498802990

`sqrt(A207924(n+1))*sqrt(A207926(n+1))`
-/

namespace A207925.P9467314009498802990
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A207924 (n + 1) : ℝ) * Real.sqrt (A207926 (n + 1) : ℝ)

end

end A207925.P9467314009498802990

/-! ## A207925.P12684165954791369850

`sqrt(A207924(n+1)*A207926(n+1))`
-/

namespace A207925.P12684165954791369850
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A207924 (n + 1) * A207926 (n + 1) : ℝ)

end

end A207925.P12684165954791369850

/-! ## A207925.P8117370690589096824

`A207928(Δ[A264443(n)])`
-/

namespace A207925.P8117370690589096824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207928 (f1 (n + 1) - f1 n).toNat

end

end A207925.P8117370690589096824

/-!
# A207926: Number of n X 6 0..1 arrays avoiding 0 0 0 and 0 1 0 horizontally and 0 0 0 and 1 1 1 vertically.

The programs for A207926, there is no canonical definition to state claims against.
-/

/-! ## A207926.P7862038036450413021

`(A207841(1+n)/record[A118658(n)])²`
-/

namespace A207926.P7862038036450413021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118658 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A207841 (1 + n) : ℚ) / (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ)) ^ 2

end

end A207926.P7862038036450413021

/-! ## A207926.P1919913642875394470

`A207841(n+1)/A206981(n+1)*A207841(n+1)`
-/

namespace A207926.P1919913642875394470
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A207841 (n + 1) : ℚ) / (A206981 (n + 1) : ℚ) * (A207841 (n + 1) : ℚ)

end

end A207926.P1919913642875394470

/-! ## A207926.P16295250405369551072

`A207925(n+1)/A207924(n+1)*A207925(n+1)`
-/

namespace A207926.P16295250405369551072
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A207925 (n + 1) : ℚ) / (A207924 (n + 1) : ℚ) * (A207925 (n + 1) : ℚ)

end

end A207926.P16295250405369551072

/-! ## A207926.P6971714734130220625

`(A207925(n+1)/A207840(n+1))²*A206981(n+1)`
-/

namespace A207926.P6971714734130220625
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A207925 (n + 1) : ℚ) / (A207840 (n + 1) : ℚ)) ^ 2 * (A206981 (n + 1) : ℚ)

end

end A207926.P6971714734130220625

/-! ## A207926.P5127922697069359413

`(A207841(n+1)/A207840(n+1))²*A207924(n+1)`
-/

namespace A207926.P5127922697069359413
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A207841 (n + 1) : ℚ) / (A207840 (n + 1) : ℚ)) ^ 2 * (A207924 (n + 1) : ℚ)

end

end A207926.P5127922697069359413

/-! ## A207926.P7134096047441710189

`A207841(n+1)²/A206981(n+1)`
-/

namespace A207926.P7134096047441710189
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A207841 (n + 1) ^ 2 : ℚ) / (A206981 (n + 1) : ℚ)

end

end A207926.P7134096047441710189

/-! ## A207926.P11790695789858915679

`A207925(n+1)²/A207924(n+1)`
-/

namespace A207926.P11790695789858915679
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A207925 (n + 1) ^ 2 : ℚ) / (A207924 (n + 1) : ℚ)

end

end A207926.P11790695789858915679

/-!
# A207927: Number of nX7 0..1 arrays avoiding 0 0 0 and 0 1 0 horizontally and 0 0 0 and 1 1 1 vertically.

The programs for A207927, there is no canonical definition to state claims against.
-/

/-! ## A207927.P4797343244244808300

`A207841(n+1)/A206981(n+1)*A207842(n+1)`
-/

namespace A207927.P4797343244244808300
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A207841 (n + 1) : ℚ) / (A206981 (n + 1) : ℚ) * (A207842 (n + 1) : ℚ)

end

end A207927.P4797343244244808300

/-! ## A207927.P12573314360670537716

`A207928(A055999(n+4))`
-/

namespace A207927.P12573314360670537716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207928 (A055999 (n + 4)).toNat

end

end A207927.P12573314360670537716

/-!
# A207928: T(n,k)=Number of nXk 0..1 arrays avoiding 0 0 0 and 0 1 0 horizontally and 0 0 0 and 1 1 1 vertically.

The programs for A207928, there is no canonical definition to state claims against.
-/

/-! ## A207928.P9536490230908198225

`A207858(n+1)`
-/

namespace A207928.P9536490230908198225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207858 (n + 1)

end

end A207928.P9536490230908198225

/-!
# A207929: Number of 3 X n 0..1 arrays avoiding 0 0 0 and 0 1 0 horizontally and 0 0 0 and 1 1 1 vertically.

The programs for A207929, the canonical program `A207929.P4700416767861235979` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A207929 has offset 1).

The definition of A207929 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 259 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A207929.P14639227209968674352

`ogf((6+24x-12x^3-6x^4)/(1-2x-2x^3-x^4))`
-/

namespace A207929.P14639227209968674352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [6, 24, 0, -12, -6] [1, -2, 0, -2, -1] n

end

end A207929.P14639227209968674352

namespace A207929

/-- `ogf((6+24x-12x^3-6x^4)/(1-2x-2x^3-x^4))` -/
def P14639227209968674352.Spec : Prop :=
  ∀ n, P14639227209968674352.a n = A207929 (n + 1)

end A207929

/-! ## A207929.P4700416767861235979

`2*a(n-1)+2*a(n-3)+a(n-4)` with `a(0)=6, a(1)=36, a(2)=72, a(3)=144, a(4)=360`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A207929

/-- `2*a(n-1)+2*a(n-3)+a(n-4)` -/
def P4700416767861235979.Spec : Prop :=
  ∀ n, (P4700416767861235979.a n : ℤ) = A207929 (n + 1)

theorem P4700416767861235979.correct : P4700416767861235979.Spec := by
  intro n
  simp only [A207929, Nat.add_sub_cancel]

end A207929

/-! ## A207929.P5666649246425605333

`A207928(∑[n+2]+4)`
-/

namespace A207929.P5666649246425605333
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207928 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A207929.P5666649246425605333

namespace A207929

/-- `A207928(∑[n+2]+4)` -/
def P5666649246425605333.Spec : Prop :=
  ∀ n, P5666649246425605333.a n = A207929 (n + 1)

end A207929

/-!
# A207930: Number of 4Xn 0..1 arrays avoiding 0 0 0 and 0 1 0 horizontally and 0 0 0 and 1 1 1 vertically.

The programs for A207930, there is no canonical definition to state claims against.
-/

/-! ## A207930.P17688304046483416777

`A207928(∑[n+3]+7)`
-/

namespace A207930.P17688304046483416777
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207928 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A207930.P17688304046483416777

/-!
# A207931: Number of 5Xn 0..1 arrays avoiding 0 0 0 and 0 1 0 horizontally and 0 0 0 and 1 1 1 vertically.

The programs for A207931, there is no canonical definition to state claims against.
-/

/-! ## A207931.P7827531162655508550

`A207928(A056000(n)+15)`
-/

namespace A207931.P7827531162655508550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207928 (A056000 n + 15).toNat

end

end A207931.P7827531162655508550

/-!
# A207932: Number of 6Xn 0..1 arrays avoiding 0 0 0 and 0 1 0 horizontally and 0 0 0 and 1 1 1 vertically.

The programs for A207932, there is no canonical definition to state claims against.
-/

/-! ## A207932.P9308507343992114969

`A207928(A166136(n+4))`
-/

namespace A207932.P9308507343992114969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207928 (A166136 (n + 4)).toNat

end

end A207932.P9308507343992114969

/-!
# A207933: Number of 7Xn 0..1 arrays avoiding 0 0 0 and 0 1 0 horizontally and 0 0 0 and 1 1 1 vertically.

The programs for A207933, there is no canonical definition to state claims against.
-/

/-! ## A207933.P4937060960976840531

`A207928(A167499(n+5)+2)`
-/

namespace A207933.P4937060960976840531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207928 (A167499 (n + 5) + 2).toNat

end

end A207933.P4937060960976840531

/-!
# A207934: Number of n X n 0..1 arrays avoiding 0 0 1 and 1 0 0 horizontally and 0 0 1 and 1 1 0 vertically.

The programs for A207934, there is no canonical definition to state claims against.
-/

/-! ## A207934.P10183328329792871519

`A207938((n+1)²+n²)`
-/

namespace A207934.P10183328329792871519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207938 ((n + 1) ^ 2 + n ^ 2)

end

end A207934.P10183328329792871519

/-! ## A207934.P8085842977326455525

`record[A003982(n)*A207938(n+1)]`
-/

namespace A207934.P8085842977326455525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A207938 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A207934.P8085842977326455525

/-! ## A207934.P18349745426696209802

`record[gcd(A114327(n), A207938(n+1))]`
-/

namespace A207934.P18349745426696209802
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A114327 n) (A207938 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A207934.P18349745426696209802

/-!
# A207935: Number of n X 5 0..1 arrays avoiding 0 0 1 and 1 0 0 horizontally and 0 0 1 and 1 1 0 vertically.

The programs for A207935, the canonical program `A207935.P4545169078113945491` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A207935 has offset 1).

The definition of A207935 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A207935.P4545169078113945491

`(30-(n+1)*149+10*(n+1)²+250*(n+1)^3+65*(n+1)^4+4*(n+1)^5)/15`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A207935

/-- `(30-(n+1)*149+10*(n+1)²+250*(n+1)^3+65*(n+1)^4+4*(n+1)^5)/15` -/
def P4545169078113945491.Spec : Prop :=
  ∀ n, P4545169078113945491.a n = (A207935 (n + 1) : ℚ)

end A207935

/-! ## A207935.P16839237507263033325

`A207938(A046691(n+3))`
-/

namespace A207935.P16839237507263033325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207938 (A046691 (n + 3)).toNat

end

end A207935.P16839237507263033325

namespace A207935

/-- `A207938(A046691(n+3))` -/
def P16839237507263033325.Spec : Prop :=
  ∀ n, P16839237507263033325.a n = A207935 (n + 1)

end A207935

/-!
# A207936: Number of n X 6 0..1 arrays avoiding 0 0 1 and 1 0 0 horizontally and 0 0 1 and 1 1 0 vertically.

The programs for A207936, there is no canonical definition to state claims against.
-/

/-! ## A207936.P16637130004823652846

`A207938(A052905(n+3))`
-/

namespace A207936.P16637130004823652846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207938 (A052905 (n + 3)).toNat

end

end A207936.P16637130004823652846

/-!
# A207937: Number of n X 7 0..1 arrays avoiding 0 0 1 and 1 0 0 horizontally and 0 0 1 and 1 1 0 vertically.

The programs for A207937, there is no canonical definition to state claims against.
-/

/-! ## A207937.P2126322970760412813

`A207938(A055999(n+4))`
-/

namespace A207937.P2126322970760412813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207938 (A055999 (n + 4)).toNat

end

end A207937.P2126322970760412813

/-!
# A207938: T(n,k)=Number of nXk 0..1 arrays avoiding 0 0 1 and 1 0 0 horizontally and 0 0 1 and 1 1 0 vertically.

The programs for A207938, there is no canonical definition to state claims against.
-/

/-! ## A207938.P2026458371217628592

`A207391(n+1)+A016389(A119502(n))`
-/

namespace A207938.P2026458371217628592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207391 (n + 1) + A016389 (A119502 n).toNat

end

end A207938.P2026458371217628592

/-! ## A207938.P10881295761812781190

`A207391(n+1)+A016389(A152656(n))`
-/

namespace A207938.P10881295761812781190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207391 (n + 1) + A016389 (A152656 n).toNat

end

end A207938.P10881295761812781190

/-! ## A207938.P1206031155542391993

`A207391(n+1)+A070204(A126331(n))`
-/

namespace A207938.P1206031155542391993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207391 (n + 1) + A070204 (A126331 n).toNat

end

end A207938.P1206031155542391993

/-! ## A207938.P12088588416662313782

`A244612(A056036(3*(n+1)))+A207391(n+1)`
-/

namespace A207938.P12088588416662313782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244612 (A056036 (3 * (n + 1))).toNat + A207391 (n + 1)

end

end A207938.P12088588416662313782

/-! ## A207938.P12517077165813823093

`A207391(A242474(n+1))+A014083(n)`
-/

namespace A207938.P12517077165813823093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207391 (A242474 (n + 1)).toNat + A014083 n

end

end A207938.P12517077165813823093

/-!
# A207939: Number of 3 X n 0..1 arrays avoiding 0 0 1 and 1 0 0 horizontally and 0 0 1 and 1 1 0 vertically.

The programs for A207939, there is no canonical definition to state claims against.
-/

/-! ## A207939.P9480783855259545288

`A207938(∑[n+2]+4)`
-/

namespace A207939.P9480783855259545288
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207938 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A207939.P9480783855259545288

/-! ## A207939.P5745921291747657527

`A208698(A167614(n+1))`
-/

namespace A207939.P5745921291747657527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208698 (A167614 (n + 1)).toNat

end

end A207939.P5745921291747657527

/-!
# A207940: Number of 4Xn 0..1 arrays avoiding 0 0 1 and 1 0 0 horizontally and 0 0 1 and 1 1 0 vertically.

The programs for A207940, there is no canonical definition to state claims against.
-/

/-! ## A207940.P17236877159973706528

`A207938(A141214(n)+7)`
-/

namespace A207940.P17236877159973706528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207938 (A141214 n + 7).toNat

end

end A207940.P17236877159973706528

/-!
# A207941: Number of 5Xn 0..1 arrays avoiding 0 0 1 and 1 0 0 horizontally and 0 0 1 and 1 1 0 vertically.

The programs for A207941, there is no canonical definition to state claims against.
-/

/-! ## A207941.P12662497924949000931

`A207938(A167499(n+3))`
-/

namespace A207941.P12662497924949000931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207938 (A167499 (n + 3)).toNat

end

end A207941.P12662497924949000931

/-!
# A207942: Number of 6Xn 0..1 arrays avoiding 0 0 1 and 1 0 0 horizontally and 0 0 1 and 1 1 0 vertically.

The programs for A207942, there is no canonical definition to state claims against.
-/

/-! ## A207942.P5376102973853376266

`A207938(A166136(n+4))`
-/

namespace A207942.P5376102973853376266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207938 (A166136 (n + 4)).toNat

end

end A207942.P5376102973853376266

/-!
# A207943: Number of 7Xn 0..1 arrays avoiding 0 0 1 and 1 0 0 horizontally and 0 0 1 and 1 1 0 vertically.

The programs for A207943, there is no canonical definition to state claims against.
-/

/-! ## A207943.P1416169891282819532

`A207938(A167499(n+5)+2)`
-/

namespace A207943.P1416169891282819532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207938 (A167499 (n + 5) + 2).toNat

end

end A207943.P1416169891282819532

/-!
# A207945: Number of n X n 0..1 arrays avoiding 0 0 1 and 0 1 1 horizontally and 0 1 0 and 1 0 1 vertically.

The programs for A207945, there is no canonical definition to state claims against.
-/

/-! ## A207945.P9987916958017966188

`A207949(∑[4*n]+1)`
-/

namespace A207945.P9987916958017966188
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207949 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A207945.P9987916958017966188

/-! ## A207945.P6593459587449764830

`record[gcd(A049581(n), A207949(n+1))]`
-/

namespace A207945.P6593459587449764830
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A049581 n) (A207949 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A207945.P6593459587449764830

/-!
# A207946: Number of nX5 0..1 arrays avoiding 0 0 1 and 0 1 1 horizontally and 0 1 0 and 1 0 1 vertically.

The programs for A207946, the canonical program `A207946.P1343383528588518597` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A207946 has offset 1).

The definition of A207946 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 136 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A207946.P1343383528588518597

`A207249(n+1)/A206981(n+1)*A207250(n+1)`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A207946

/-- `A207249(n+1)/A206981(n+1)*A207250(n+1)` -/
def P1343383528588518597.Spec : Prop :=
  ∀ n, P1343383528588518597.a n = (A207946 (n + 1) : ℚ)

end A207946

/-! ## A207946.P12790367616237013022

`sqrt(A207854(n+1))*sqrt(A207947(n+1))`
-/

namespace A207946.P12790367616237013022
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A207854 (n + 1) : ℝ) * Real.sqrt (A207947 (n + 1) : ℝ)

end

end A207946.P12790367616237013022

namespace A207946

/-- `sqrt(A207854(n+1))*sqrt(A207947(n+1))` -/
def P12790367616237013022.Spec : Prop :=
  ∀ n, P12790367616237013022.a n = (A207946 (n + 1) : ℝ)

end A207946

/-! ## A207946.P6975143954341857638

`sqrt(A207854(n+1)*A207947(n+1))`
-/

namespace A207946.P6975143954341857638
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A207854 (n + 1) * A207947 (n + 1) : ℝ)

end

end A207946.P6975143954341857638

namespace A207946

/-- `sqrt(A207854(n+1)*A207947(n+1))` -/
def P6975143954341857638.Spec : Prop :=
  ∀ n, P6975143954341857638.a n = (A207946 (n + 1) : ℝ)

end A207946

/-! ## A207946.P7465608218165286529

`A207949(A000217(n+5)-4)`
-/

namespace A207946.P7465608218165286529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207949 (A000217 (n + 5) - 4).toNat

end

end A207946.P7465608218165286529

namespace A207946

/-- `A207949(A000217(n+5)-4)` -/
def P7465608218165286529.Spec : Prop :=
  ∀ n, P7465608218165286529.a n = A207946 (n + 1)

end A207946

/-!
# A207947: Number of nX6 0..1 arrays avoiding 0 0 1 and 0 1 1 horizontally and 0 1 0 and 1 0 1 vertically.

The programs for A207947, the canonical program `A207947.P11344013199271307700` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A207947 has offset 1).

The definition of A207947 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 122 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A207947.P11344013199271307700

`A218051(2+n)²`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A207947

/-- `A218051(2+n)²` -/
def P11344013199271307700.Spec : Prop :=
  ∀ n, P11344013199271307700.a n = A207947 (n + 1)

theorem P11344013199271307700.correct : P11344013199271307700.Spec := by
  intro n
  simp only [A207947, Nat.add_sub_cancel]

end A207947

/-! ## A207947.P6791047011230141151

`record[A218051(A117910(n))²]`
-/

namespace A207947.P6791047011230141151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218051 (A117910 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A207947.P6791047011230141151

namespace A207947

/-- `record[A218051(A117910(n))²]` -/
def P6791047011230141151.Spec : Prop :=
  ∀ n, P6791047011230141151.a n = A207947 (n + 1)

end A207947

/-! ## A207947.P15874731161304279106

`record[A218051(A328399(n))²]`
-/

namespace A207947.P15874731161304279106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218051 (A328399 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A207947.P15874731161304279106

namespace A207947

/-- `record[A218051(A328399(n))²]` -/
def P15874731161304279106.Spec : Prop :=
  ∀ n, P15874731161304279106.a n = A207947 (n + 1)

end A207947

/-! ## A207947.P2717123728251237901

`record[A218051(A344180(n))²]`
-/

namespace A207947.P2717123728251237901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218051 (A344180 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A207947.P2717123728251237901

namespace A207947

/-- `record[A218051(A344180(n))²]` -/
def P2717123728251237901.Spec : Prop :=
  ∀ n, P2717123728251237901.a n = A207947 (n + 1)

end A207947

/-! ## A207947.P5305442010869045984

`record[A218051(A133265(n)/2)²]`
-/

namespace A207947.P5305442010869045984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218051 (SequenceMachineLib.roundAway ((A133265 n : ℚ) / 2)).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A207947.P5305442010869045984

namespace A207947

/-- `record[A218051(A133265(n)/2)²]` -/
def P5305442010869045984.Spec : Prop :=
  ∀ n, P5305442010869045984.a n = A207947 (n + 1)

end A207947

/-! ## A207947.P15033420134377243912

`A218051(n+2)*A218051(n+2)`
-/

namespace A207947.P15033420134377243912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218051 (n + 2) * A218051 (n + 2)

end

end A207947.P15033420134377243912

namespace A207947

/-- `A218051(n+2)*A218051(n+2)` -/
def P15033420134377243912.Spec : Prop :=
  ∀ n, P15033420134377243912.a n = A207947 (n + 1)

theorem P15033420134377243912.correct : P15033420134377243912.Spec := by
  intro n
  simp only [A207947, Nat.add_sub_cancel, A207947.P15033420134377243912.a, A207947.P11344013199271307700.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A207947

/-! ## A207947.P1440023368426735195

`A207250(n+1)/A206981(n+1)*A207250(n+1)`
-/

namespace A207947.P1440023368426735195
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A207250 (n + 1) : ℚ) / (A206981 (n + 1) : ℚ) * (A207250 (n + 1) : ℚ)

end

end A207947.P1440023368426735195

namespace A207947

/-- `A207250(n+1)/A206981(n+1)*A207250(n+1)` -/
def P1440023368426735195.Spec : Prop :=
  ∀ n, P1440023368426735195.a n = (A207947 (n + 1) : ℚ)

end A207947

/-! ## A207947.P2214988098808910586

`A207250(n+1)²/A206981(n+1)`
-/

namespace A207947.P2214988098808910586
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A207250 (n + 1) ^ 2 : ℚ) / (A206981 (n + 1) : ℚ)

end

end A207947.P2214988098808910586

namespace A207947

/-- `A207250(n+1)²/A206981(n+1)` -/
def P2214988098808910586.Spec : Prop :=
  ∀ n, P2214988098808910586.a n = (A207947 (n + 1) : ℚ)

end A207947

/-!
# A207948: Number of nX7 0..1 arrays avoiding 0 0 1 and 0 1 1 horizontally and 0 1 0 and 1 0 1 vertically.

The programs for A207948, there is no canonical definition to state claims against.
-/

/-! ## A207948.P12826564140970491107

`A207250(n+1)/A206981(n+1)*A207251(n+1)`
-/

namespace A207948.P12826564140970491107
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A207250 (n + 1) : ℚ) / (A206981 (n + 1) : ℚ) * (A207251 (n + 1) : ℚ)

end

end A207948.P12826564140970491107

/-! ## A207948.P533680615484666112

`A207949(C(n+7, 2)+n+1)`
-/

namespace A207948.P533680615484666112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207949 (Nat.choose (n + 7) 2 + (n + 1))

end

end A207948.P533680615484666112

/-!
# A207949: T(n,k)=Number of nXk 0..1 arrays avoiding 0 0 1 and 0 1 1 horizontally and 0 1 0 and 1 0 1 vertically.

The programs for A207949, there is no canonical definition to state claims against.
-/

/-! ## A207949.P5694510269134217362

`A207858(n+1)-A326292(A193958(n))`
-/

namespace A207949.P5694510269134217362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207858 (n + 1) - A326292 (A193958 n).toNat

end

end A207949.P5694510269134217362

/-! ## A207949.P14033859990399496354

`char[9]+A267719(n+1)^A320606(n+1)!`
-/

namespace A207949.P14033859990399496354
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + A267719 (n + 1) ^ Nat.factorial (A320606 (n + 1)).toNat

end

end A207949.P14033859990399496354

/-! ## A207949.P15863253200439476229

`A207752(n+1)+A010894(A051455(n))`
-/

namespace A207949.P15863253200439476229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207752 (n + 1) + A010894 ((A051455 n).toNat + 21)

end

end A207949.P15863253200439476229

/-! ## A207949.P12305137042478659881

`A207752(n+1)+A010894(A062344(n))`
-/

namespace A207949.P12305137042478659881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207752 (n + 1) + A010894 ((A062344 n).toNat + 21)

end

end A207949.P12305137042478659881

/-! ## A207949.P4281506651456131515

`A207752(n+1)+A037911(A079441(n))`
-/

namespace A207949.P4281506651456131515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207752 (n + 1) + A037911 (A079441 n).toNat

end

end A207949.P4281506651456131515

/-!
# A207950: Number of 4 X n 0..1 arrays avoiding 0 0 1 and 0 1 1 horizontally and 0 1 0 and 1 0 1 vertically.

The programs for A207950, there is no canonical definition to state claims against.
-/

/-! ## A207950.P1870564551266874419

`A207949(A052905(n)+9)`
-/

namespace A207950.P1870564551266874419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207949 (A052905 n + 9).toNat

end

end A207950.P1870564551266874419

/-!
# A207951: Number of 5Xn 0..1 arrays avoiding 0 0 1 and 0 1 1 horizontally and 0 1 0 and 1 0 1 vertically.

The programs for A207951, there is no canonical definition to state claims against.
-/

/-! ## A207951.P1927971202949453736

`A207949(A167499(n+3))`
-/

namespace A207951.P1927971202949453736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207949 (A167499 (n + 3)).toNat

end

end A207951.P1927971202949453736

/-!
# A207952: Number of 6Xn 0..1 arrays avoiding 0 0 1 and 0 1 1 horizontally and 0 1 0 and 1 0 1 vertically.

The programs for A207952, there is no canonical definition to state claims against.
-/

/-! ## A207952.P13153576024434614945

`A207949(C(n+7, 2)-n)`
-/

namespace A207952.P13153576024434614945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207949 (Nat.choose (n + 7) 2 - n)

end

end A207952.P13153576024434614945

/-!
# A207953: Number of 7Xn 0..1 arrays avoiding 0 0 1 and 0 1 1 horizontally and 0 1 0 and 1 0 1 vertically.

The programs for A207953, there is no canonical definition to state claims against.
-/

/-! ## A207953.P4835087095965739222

`A207949(A167614(n+5)+4)`
-/

namespace A207953.P4835087095965739222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207949 (A167614 (n + 5) + 4).toNat

end

end A207953.P4835087095965739222

/-!
# A207954: Palindromes with consecutive digits that differ exactly by 1.

The programs for A207954, there is no canonical definition to state claims against.
-/

/-! ## A207954.P4367452149157413609

`∩[A030147(n+1), A033075(n+1)]`
-/

namespace A207954.P4367452149157413609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030147 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033075 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A207954.P4367452149157413609

/-! ## A207954.P5065444650690187460

`∩[A033075(n+1), A050783(n+1)]`
-/

namespace A207954.P5065444650690187460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033075 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050783 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A207954.P5065444650690187460

/-! ## A207954.P15663168848491697012

`A056525(A033075(1+n))`
-/

namespace A207954.P15663168848491697012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056525 (A033075 (1 + n)).toNat

end

end A207954.P15663168848491697012

/-! ## A207954.P13773581035141022723

`∩[A002113(n+1), A033075(n+1)]`
-/

namespace A207954.P13773581035141022723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033075 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A207954.P13773581035141022723

/-! ## A207954.P4133586801384869290

`∩[A030147(n+1), A032981(n+1)]`
-/

namespace A207954.P4133586801384869290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030147 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032981 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A207954.P4133586801384869290

/-! ## A207954.P5178963666809794702

`∩[A032981(n+1), A050783(n+1)]`
-/

namespace A207954.P5178963666809794702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032981 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050783 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A207954.P5178963666809794702

/-! ## A207954.P12244465831451424370

`∩[A033075(n+1), A306273(n+1)]`
-/

namespace A207954.P12244465831451424370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033075 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306273 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A207954.P12244465831451424370

/-! ## A207954.P2881901926055495631

`∩[A033075(n+1), A061379(n+1)]`
-/

namespace A207954.P2881901926055495631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033075 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061379 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A207954.P2881901926055495631

/-! ## A207954.P17371761581764799340

`∩[A033075(n+1), A110751(n+1)]`
-/

namespace A207954.P17371761581764799340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033075 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110751 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A207954.P17371761581764799340

/-! ## A207954.P8236191054986079103

`∩[A033075(n+1), A342826(n+1)]`
-/

namespace A207954.P8236191054986079103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033075 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342826 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A207954.P8236191054986079103

/-!
# A207955: Number of n X n 0..1 arrays avoiding 0 0 0 and 1 0 1 horizontally and 0 0 1 and 1 0 0 vertically.

The programs for A207955, there is no canonical definition to state claims against.
-/

/-! ## A207955.P6733610402514815912

`A207960(∑[4*n]+1)`
-/

namespace A207955.P6733610402514815912
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207960 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A207955.P6733610402514815912

/-!
# A207956: Number of nX4 0..1 arrays avoiding 0 0 0 and 1 0 1 horizontally and 0 0 1 and 1 0 0 vertically.

The programs for A207956, there is no canonical definition to state claims against.
-/

/-! ## A207956.P15094145674085723388

`A207960(A141214(n+1))`
-/

namespace A207956.P15094145674085723388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207960 (A141214 (n + 1)).toNat

end

end A207956.P15094145674085723388

/-!
# A207957: Number of nX5 0..1 arrays avoiding 0 0 0 and 1 0 1 horizontally and 0 0 1 and 1 0 0 vertically.

The programs for A207957, there is no canonical definition to state claims against.
-/

/-! ## A207957.P4929003988044166797

`A207960(A046691(n+3))`
-/

namespace A207957.P4929003988044166797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207960 (A046691 (n + 3)).toNat

end

end A207957.P4929003988044166797

/-!
# A207958: Number of nX6 0..1 arrays avoiding 0 0 0 and 1 0 1 horizontally and 0 0 1 and 1 0 0 vertically.

The programs for A207958, there is no canonical definition to state claims against.
-/

/-! ## A207958.P11858520993109768281

`A207960(A052905(n+3))`
-/

namespace A207958.P11858520993109768281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207960 (A052905 (n + 3)).toNat

end

end A207958.P11858520993109768281

/-!
# A207959: Number of nX7 0..1 arrays avoiding 0 0 0 and 1 0 1 horizontally and 0 0 1 and 1 0 0 vertically.

The programs for A207959, there is no canonical definition to state claims against.
-/

/-! ## A207959.P7466224926617895567

`A207960(eq[4, A219347(n)])`
-/

namespace A207959.P7466224926617895567
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207960 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A207959.P7466224926617895567

/-!
# A207960: T(n,k)=Number of nXk 0..1 arrays avoiding 0 0 0 and 1 0 1 horizontally and 0 0 1 and 1 0 0 vertically.

The programs for A207960, there is no canonical definition to state claims against.
-/

/-! ## A207960.P7169988875136414730

`A208164(n+1)+A185264(A324362(n))`
-/

namespace A207960.P7169988875136414730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208164 (n + 1) + A185264 (A324362 n).toNat

end

end A207960.P7169988875136414730

/-! ## A207960.P4043551227263933983

`A208164(n+1)`
-/

namespace A207960.P4043551227263933983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208164 (n + 1)

end

end A207960.P4043551227263933983

/-!
# A207961: Number of 3 X n 0..1 arrays avoiding 0 0 0 and 1 0 1 horizontally and 0 0 1 and 1 0 0 vertically.

The programs for A207961, there is no canonical definition to state claims against.
-/

/-! ## A207961.P14028760526168464877

`A207960(∑[n+2]+4)`
-/

namespace A207961.P14028760526168464877
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207960 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A207961.P14028760526168464877

/-! ## A207961.P8114867461319235380

`A208164(∑[n+2]+4)`
-/

namespace A207961.P8114867461319235380
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208164 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A207961.P8114867461319235380

/-!
# A207962: Number of 4Xn 0..1 arrays avoiding 0 0 0 and 1 0 1 horizontally and 0 0 1 and 1 0 0 vertically.

The programs for A207962, there is no canonical definition to state claims against.
-/

/-! ## A207962.P18289204408819699017

`A207960(A141214(n)+7)`
-/

namespace A207962.P18289204408819699017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207960 (A141214 n + 7).toNat

end

end A207962.P18289204408819699017

/-!
# A207963: Number of 5 X n 0..1 arrays avoiding 0 0 0 and 1 0 1 horizontally and 0 0 1 and 1 0 0 vertically.

The programs for A207963, there is no canonical definition to state claims against.
-/

/-! ## A207963.P585778644411529455

`A207960(A167499(n+3))`
-/

namespace A207963.P585778644411529455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207960 (A167499 (n + 3)).toNat

end

end A207963.P585778644411529455

/-!
# A207964: Number of 6Xn 0..1 arrays avoiding 0 0 0 and 1 0 1 horizontally and 0 0 1 and 1 0 0 vertically.

The programs for A207964, there is no canonical definition to state claims against.
-/

/-! ## A207964.P7207939887517791578

`A207960(A167499(n+4)+1)`
-/

namespace A207964.P7207939887517791578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207960 (A167499 (n + 4) + 1).toNat

end

end A207964.P7207939887517791578

/-!
# A207965: Number of 7Xn 0..1 arrays avoiding 0 0 0 and 1 0 1 horizontally and 0 0 1 and 1 0 0 vertically.

The programs for A207965, there is no canonical definition to state claims against.
-/

/-! ## A207965.P4378530308395290951

`A207960(A167487(n+5))`
-/

namespace A207965.P4378530308395290951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207960 (A167487 (n + 5)).toNat

end

end A207965.P4378530308395290951

/-!
# A207966: Numbers that match irreducible polynomials over {0,1,2}.

The programs for A207966, there is no canonical definition to state claims against.
-/

/-! ## A207966.P13880925446197521189

`A028898(A207968(n+1))`
-/

namespace A207966.P13880925446197521189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028898 (A207968 (n + 1)).toNat

end

end A207966.P13880925446197521189

/-! ## A207966.P17708322330563493583

`lt[A111520(n), A000079(n)]+1`
-/

namespace A207966.P17708322330563493583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111520 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A207966.P17708322330563493583

/-! ## A207966.P9605988371652794123

`lt[A111520(n), A365376(n)]+1`
-/

namespace A207966.P9605988371652794123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111520 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365376 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A207966.P9605988371652794123

/-! ## A207966.P6926665157904507093

`comp[A008443(A228948(n+3))]+3`
-/

namespace A207966.P6926665157904507093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008443 (A228948 (n + 3)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 3

end

end A207966.P6926665157904507093

/-! ## A207966.P1200579798137391902

`lt[A111520(n), A000740(n+1)]+1`
-/

namespace A207966.P1200579798137391902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111520 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000740 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A207966.P1200579798137391902

/-!
# A207967: Numbers that match non-irreducible polynomials over {0,1,2}; complement of A207966.

The programs for A207967, there is no canonical definition to state claims against.
-/

/-! ## A207967.P16794885386035392726

`1+comp[A207966(n+1)-1]`
-/

namespace A207967.P16794885386035392726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207966 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A207967.P16794885386035392726

/-! ## A207967.P7027078322837202296

`∩[A207670(n+1), comp[A207966(n+1)]]`
-/

namespace A207967.P7027078322837202296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207670 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207966 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A207967.P7027078322837202296

/-! ## A207967.P15741636382635647778

`eq[char[A207966(n+1)], A151933(n)]`
-/

namespace A207967.P15741636382635647778
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207966 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151933 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A207967.P15741636382635647778

/-!
# A207968: Ternary numbers that match irreducible polynomials over {0,1,2}.

The programs for A207968, there is no canonical definition to state claims against.
-/

/-! ## A207968.P10095842524804642195

`A007089(A207966(n+1))`
-/

namespace A207968.P10095842524804642195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 (A207966 (n + 1)).toNat

end

end A207968.P10095842524804642195

/-! ## A207968.P17003124768589493287

`∩[A169911(n+1), A007089(n)]`
-/

namespace A207968.P17003124768589493287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169911 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A207968.P17003124768589493287

/-! ## A207968.P5103824941407272347

`∩[A159952(n+1), A169911(n+1)]`
-/

namespace A207968.P5103824941407272347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159952 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169911 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A207968.P5103824941407272347

/-!
# A207969: G.f.: exp( Sum_{n>=1} 5*Fibonacci(n)^4 * x^n/n ).

The programs for A207969, there is no canonical definition to state claims against.
-/

/-! ## A207969.P2330510574688222041

`or(A329634(A329669(n)), A329738(n))`
-/

namespace A207969.P2330510574688222041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A329634 (A329669 n).toNat) (A329738 n)

end

end A207969.P2330510574688222041

/-! ## A207969.P7825974617407085907

`or(A156165(n+1), A329634(A329669(n)))`
-/

namespace A207969.P7825974617407085907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A156165 (n + 1)) (A329634 (A329669 n).toNat)

end

end A207969.P7825974617407085907

/-!
# A207970: G.f.: exp( Sum_{n>=1} 5*Fibonacci(n)^6 * x^n/n ).

The programs for A207970, there is no canonical definition to state claims against.
-/

/-! ## A207970.P4539430704201250979

`A049687(A046869(n+1)*A305550(n))`
-/

namespace A207970.P4539430704201250979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049687 (A046869 (n + 1) * A305550 n).toNat

end

end A207970.P4539430704201250979

/-!
# A207972: Expansion of g.f.: exp( Sum_{n>=1} 5*Fibonacci(n^2) * x^n/n ).

The programs for A207972, there is no canonical definition to state claims against.
-/

/-! ## A207972.P10160335722010283432

`A008706(∑[A262868(2^∑[n])])`
-/

namespace A207972.P10160335722010283432
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262868 (2 ^ (∑ j ∈ Finset.range (n + 1), f2 j))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008706 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A207972.P10160335722010283432

/-!
# A207973: Primes p such that the equation prime(p-k)+k! = prime(p) has at least one solution k>0.

The programs for A207973, there is no canonical definition to state claims against.
-/

/-! ## A207973.P6042994503405859295

`p?[∑[A000005(A097611(3*n+4))]]`
-/

namespace A207973.P6042994503405859295
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A097611 (3 * n + 4)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A207973.P6042994503405859295

/-!
# A207974: Triangle related to A152198.

The programs for A207974, there is no canonical definition to state claims against.
-/

/-! ## A207974.P1571872832632501949

`A098436(n)%A010723(A028871(n+1))`
-/

namespace A207974.P1571872832632501949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A098436 n) (A010723 (A028871 (n + 1)).toNat)

end

end A207974.P1571872832632501949

/-! ## A207974.P7071650278521710535

`gcd(A004277(A144512(n)), A123610(n))`
-/

namespace A207974.P7071650278521710535
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A004277 (A144512 n).toNat) (A123610 n)

end

end A207974.P7071650278521710535

/-! ## A207974.P7105303790365433115

`gcd(A005843(A144512(n)), A219206(n))`
-/

namespace A207974.P7105303790365433115
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A005843 (A144512 n).toNat) (A219206 n)

end

end A207974.P7105303790365433115

/-! ## A207974.P1847374804227452195

`gcd(A352515(A299904(n))+1, A244132(n))`
-/

namespace A207974.P1847374804227452195
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A352515 (A299904 n).toNat + 1) (A244132 n)

end

end A207974.P1847374804227452195

/-! ## A207974.P16455586502688637554

`gcd(A110511(n), A237427(A001523(n)))`
-/

namespace A207974.P16455586502688637554
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A110511 n) (A237427 (A001523 n).toNat)

end

end A207974.P16455586502688637554

/-!
# A207976: a(1) = 2; for n>1, a(n) = largest integer such that the sequence b(n) = a(n)^(1/n) is decreasing.

The programs for A207976, the canonical program `A207976.P4652139222768872179` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A207976 has offset 1).

The definition of A207976 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A207976.P4652139222768872179

`floor(exp(log(a(n-1))*(n+1)/n))` with `a(0)=2, a(1)=3`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A207976

/-- `floor(exp(log(a(n-1))*(n+1)/n))` -/
def P4652139222768872179.Spec : Prop :=
  ∀ n, P4652139222768872179.a n = A207976 (n + 1)

theorem P4652139222768872179.correct : P4652139222768872179.Spec := by
  intro n
  simp only [A207976, Nat.add_sub_cancel]

end A207976

/-! ## A207976.P825455621681096703

`floor(a(n-1)^(1/n+1))` with `a(0)=2, a(1)=3`
-/

namespace A207976.P825455621681096703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 3] fun n a =>
  ⌊(a (n - 1) : ℝ) ^ (1 / (n : ℚ) + 1 : ℝ)⌋

end

end A207976.P825455621681096703

namespace A207976

/-- `floor(a(n-1)^(1/n+1))` -/
def P825455621681096703.Spec : Prop :=
  ∀ n, P825455621681096703.a n = A207976 (n + 1)

end A207976

/-! ## A207976.P11353163798153373042

`ceil(a(n-1)^(1/n+1))-1` with `a(0)=2`
-/

namespace A207976.P11353163798153373042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  ⌈(a (n - 1) : ℝ) ^ (1 / (n : ℚ) + 1 : ℝ)⌉ - 1

end

end A207976.P11353163798153373042

namespace A207976

/-- `ceil(a(n-1)^(1/n+1))-1` -/
def P11353163798153373042.Spec : Prop :=
  ∀ n, P11353163798153373042.a n = A207976 (n + 1)

end A207976

/-! ## A207976.P3105044536393117814

`floor((a(n-1)^n^(-1))^(n+1))` with `a(0)=2, a(1)=3`
-/

namespace A207976.P3105044536393117814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 3] fun n a =>
  ⌊((a (n - 1) : ℝ) ^ ((n : ℚ) ^ (-1 : ℤ) : ℝ)) ^ (n + 1)⌋

end

end A207976.P3105044536393117814

namespace A207976

/-- `floor((a(n-1)^n^(-1))^(n+1))` -/
def P3105044536393117814.Spec : Prop :=
  ∀ n, P3105044536393117814.a n = A207976 (n + 1)

end A207976

/-! ## A207976.P5230535398291334646

`floor(a(n-1)^(1/n)*a(n-1))` with `a(0)=2, a(1)=3`
-/

namespace A207976.P5230535398291334646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 3] fun n a =>
  ⌊(a (n - 1) : ℝ) ^ (1 / (n : ℚ) : ℝ) * (a (n - 1) : ℝ)⌋

end

end A207976.P5230535398291334646

namespace A207976

/-- `floor(a(n-1)^(1/n)*a(n-1))` -/
def P5230535398291334646.Spec : Prop :=
  ∀ n, P5230535398291334646.a n = A207976 (n + 1)

end A207976

/-!
# A207977: Infinite sequence of integers arising in the Quantum Walk of F. Riesz.

The programs for A207977, there is no canonical definition to state claims against.
-/

/-! ## A207977.P15964357093998803173

`A005352(8*n+3)`
-/

namespace A207977.P15964357093998803173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005352 (8 * n + 3)

end

end A207977.P15964357093998803173

/-! ## A207977.P2162367695897694953

`xor(81, A004769(n)+81)`
-/

namespace A207977.P2162367695897694953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 81 (A004769 n + 81)

end

end A207977.P2162367695897694953

/-! ## A207977.P11458401977341487459

`xor(87, A017101(n)+87)`
-/

namespace A207977.P11458401977341487459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 87 (A017101 n + 87)

end

end A207977.P11458401977341487459

/-! ## A207977.P3749054721316220717

`xor(86, Δ[A157434(n+1)])`
-/

namespace A207977.P3749054721316220717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157434 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 86 (f1 (n + 1) - f1 n)

end

end A207977.P3749054721316220717

/-! ## A207977.P2594942238517812564

`8*A005351(n+1)+5`
-/

namespace A207977.P2594942238517812564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A005351 (n + 1) + 5

end

end A207977.P2594942238517812564

/-!
# A207978: Number of n X 2 nonnegative integer arrays with new values 0 upwards introduced in row major order and no element equal to any diagonal or antidiagonal neighbor (colorings ignoring permutations of colors).

The programs for A207978, there is no canonical definition to state claims against.
-/

/-! ## A207978.P14175888106159845536

`A106436(2+n*Δ[n²])`
-/

namespace A207978.P14175888106159845536
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106436 (2 + (n : ℤ) * ((f1 (n + 1) : ℤ) - (f1 n : ℤ))).toNat

end

end A207978.P14175888106159845536

/-! ## A207978.P8772239131144112514

`A011971(∑[a(n-1)+4])` with `a(0)=1, a(1)=1`
-/

namespace A207978.P8772239131144112514
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  f1 (n - 1) + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011971 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A207978.P8772239131144112514

/-! ## A207978.P9203328668427247972

`A011968(comp[T(n-1,k+1)+2-T(T(n-1,k+1), T(n-1,k-1)-1)])` with `a(0)=2`
-/

namespace A207978.P9203328668427247972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  SequenceMachineLib.triUpRight f1 n + 2 - SequenceMachineLib.triAt f1 (SequenceMachineLib.triUpRight f1 n) (SequenceMachineLib.triUpLeft f1 n - 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011968 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A207978.P9203328668427247972

/-! ## A207978.P12228920905570911023

`A095149(A096376(n))`
-/

namespace A207978.P12228920905570911023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095149 (A096376 n).toNat

end

end A207978.P12228920905570911023

/-! ## A207978.P13454333366474329191

`A207981(A133263(n))`
-/

namespace A207978.P13454333366474329191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207981 (A133263 n).toNat

end

end A207978.P13454333366474329191

/-!
# A207979: Number of n X 3 nonnegative integer arrays with new values 0 upwards introduced in row major order and no element equal to any diagonal or antidiagonal neighbor (colorings ignoring permutations of colors).

The programs for A207979, there is no canonical definition to state claims against.
-/

/-! ## A207979.P10507862894577677287

`A207981(∑[n+2]+4)`
-/

namespace A207979.P10507862894577677287
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207981 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A207979.P10507862894577677287

/-!
# A207980: Number of n X 4 nonnegative integer arrays with new values 0 upwards introduced in row major order and no element equal to any diagonal or antidiagonal neighbor (colorings ignoring permutations of colors).

The programs for A207980, there is no canonical definition to state claims against.
-/

/-! ## A207980.P8005966357534666982

`A207981(A167614(n+2)+1)`
-/

namespace A207980.P8005966357534666982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207981 (A167614 (n + 2) + 1).toNat

end

end A207980.P8005966357534666982

/-! ## A207980.P7917371692666836476

`A207981(A056000(n)+7)`
-/

namespace A207980.P7917371692666836476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207981 (A056000 n + 7).toNat

end

end A207980.P7917371692666836476

/-!
# A207982: Least m>1 such that all central binomial coefficients C(2k,k), k<=n, are pairwise not congruent mod m.

The programs for A207982, there is no canonical definition to state claims against.
-/

/-! ## A207982.P1829608922978938223

`p?[A123502(n)-A073292(n)]`
-/

namespace A207982.P1829608922978938223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123502 n - A073292 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A207982.P1829608922978938223

/-! ## A207982.P6401810673516809019

`p?[A329793(∑{digits}[A122629(n+1), #])]`
-/

namespace A207982.P6401810673516809019
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122629 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329793 ((SequenceMachineLib.digits10 (f2 n).natAbs).map fun (x : ℕ) => x).sum

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A207982.P6401810673516809019

/-!
# A207983: Number of n X n 0..2 arrays avoiding the pattern z z+1 z horizontally and z z-1 z vertically.

The programs for A207983, there is no canonical definition to state claims against.
-/

/-! ## A207983.P8944422951326024432

`A207989(∑[4*n]+1)`
-/

namespace A207983.P8944422951326024432
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207989 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A207983.P8944422951326024432

/-!
# A207984: Number of nX3 0..2 arrays avoiding the pattern z z+1 z horizontally and z z-1 z vertically.

The programs for A207984, there is no canonical definition to state claims against.
-/

/-! ## A207984.P1187374168689428622

`A207989(∑[n+2]+4)`
-/

namespace A207984.P1187374168689428622
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207989 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A207984.P1187374168689428622

/-! ## A207984.P15270169765550125160

`record[A207989(A167614(∏{p}[n+1, #^val(n+1, #²)]))]`
-/

namespace A207984.P15270169765550125160
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207989 (A167614 (∏ p ∈ Nat.primeFactors (f2 n), p ^ SequenceMachineLib.valuation (n + 1) (p ^ 2))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A207984.P15270169765550125160

/-!
# A207985: Number of nX4 0..2 arrays avoiding the pattern z z+1 z horizontally and z z-1 z vertically.

The programs for A207985, there is no canonical definition to state claims against.
-/

/-! ## A207985.P7537209574207002199

`A207989(A141214(n)+7)`
-/

namespace A207985.P7537209574207002199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207989 (A141214 n + 7).toNat

end

end A207985.P7537209574207002199

/-! ## A207985.P15142262808218558972

`A207989(A141214(n+1))`
-/

namespace A207985.P15142262808218558972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207989 (A141214 (n + 1)).toNat

end

end A207985.P15142262808218558972

/-!
# A207986: Number of nX5 0..2 arrays avoiding the pattern z z+1 z horizontally and z z-1 z vertically.

The programs for A207986, there is no canonical definition to state claims against.
-/

/-! ## A207986.P2551304595509018434

`A207989(A155212(n)+13)`
-/

namespace A207986.P2551304595509018434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207989 (A155212 n + 13).toNat

end

end A207986.P2551304595509018434

/-! ## A207986.P16519777474377193407

`A207989(∑[n+5]+6)`
-/

namespace A207986.P16519777474377193407
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207989 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A207986.P16519777474377193407

/-!
# A207987: Number of nX6 0..2 arrays avoiding the pattern z z+1 z horizontally and z z-1 z vertically.

The programs for A207987, there is no canonical definition to state claims against.
-/

/-! ## A207987.P8774095005238172926

`A207989(A374007(n+1))`
-/

namespace A207987.P8774095005238172926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207989 (A374007 (n + 1)).toNat

end

end A207987.P8774095005238172926

/-!
# A207988: Number of nX7 0..2 arrays avoiding the pattern z z+1 z horizontally and z z-1 z vertically.

The programs for A207988, there is no canonical definition to state claims against.
-/

/-! ## A207988.P8628144128055102933

`A207989(A374008(n+1))`
-/

namespace A207988.P8628144128055102933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207989 (A374008 (n + 1)).toNat

end

end A207988.P8628144128055102933

/-!
# A207989: T(n,k)=Number of nXk 0..2 arrays avoiding the pattern z z+1 z horizontally and z z-1 z vertically.

The programs for A207989, there is no canonical definition to state claims against.
-/

/-! ## A207989.P4837846083797217931

`or(A022932(ceil(2^(n-1))), A207358(n+1))`
-/

namespace A207989.P4837846083797217931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A022932 ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉.toNat) (A207358 (n + 1))

end

end A207989.P4837846083797217931

/-! ## A207989.P692204603349007300

`or(A010060(ceil(2*(2^n-1)/3)), A207358(n+1))`
-/

namespace A207989.P692204603349007300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A010060 ⌈2 * (((2 ^ n : ℤ) - 1 : ℚ) / 3)⌉.toNat) (A207358 (n + 1))

end

end A207989.P692204603349007300

/-! ## A207989.P2225173315092201462

`A207358(n+1)+A055641(A098051(n))`
-/

namespace A207989.P2225173315092201462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207358 (n + 1) + A055641 (A098051 n).toNat

end

end A207989.P2225173315092201462

/-! ## A207989.P15623704145188674977

`A340999(A276086(n))+A207358(n+1)`
-/

namespace A207989.P15623704145188674977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340999 ((A276086 n).toNat + 204) + A207358 (n + 1)

end

end A207989.P15623704145188674977

/-! ## A207989.P15805127346275913151

`or(A000035(A024493(n)), A207358(n+1))`
-/

namespace A207989.P15805127346275913151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000035 (A024493 n).toNat) (A207358 (n + 1))

end

end A207989.P15805127346275913151

/-!
# A207990: Primes of the form prime(n) + prime(n+1) - 5.

The programs for A207990, the canonical program `A207990.P6589723644473389047` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A207990 has offset 1).

The definition of A207990 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1983 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A207990.P6589723644473389047

`p?[∑[A031131(n+1)]]`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A207990

/-- `p?[∑[A031131(n+1)]]` -/
def P6589723644473389047.Spec : Prop :=
  ∀ n, P6589723644473389047.a n = A207990 (n + 1)

theorem P6589723644473389047.correct : P6589723644473389047.Spec := by
  intro n
  simp only [A207990, Nat.add_sub_cancel]

end A207990

/-! ## A207990.P10074940771557083719

`p?[∑[A001223(n+2)+A001223(n+1)]]`
-/

namespace A207990.P10074940771557083719
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (n + 2) + A001223 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A207990.P10074940771557083719

namespace A207990

/-- `p?[∑[A001223(n+2)+A001223(n+1)]]` -/
def P10074940771557083719.Spec : Prop :=
  ∀ n, P10074940771557083719.a n = A207990 (n + 1)

theorem P10074940771557083719.correct : P10074940771557083719.Spec := by
  intro n
  simp only [A207990, Nat.add_sub_cancel, A207990.P10074940771557083719.f2, A207990.P10074940771557083719.f1, A207990.P10074940771557083719.a, A207990.P6589723644473389047.f2, A207990.P6589723644473389047.f1, A207990.P6589723644473389047.a, A001223, A001223.P5034056745985311719.a, A031131, A031131.P2453725465626413076.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A207990

/-! ## A207990.P13547344293558406670

`p?[A076273(n)-4]`
-/

namespace A207990.P13547344293558406670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076273 n - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A207990.P13547344293558406670

namespace A207990

/-- `p?[A076273(n)-4]` -/
def P13547344293558406670.Spec : Prop :=
  ∀ n, P13547344293558406670.a n = A207990 (n + 1)

end A207990

/-! ## A207990.P9027564398492352910

`p?[∑[A075527(n+1)]]`
-/

namespace A207990.P9027564398492352910
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075527 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A207990.P9027564398492352910

namespace A207990

/-- `p?[∑[A075527(n+1)]]` -/
def P9027564398492352910.Spec : Prop :=
  ∀ n, P9027564398492352910.a n = A207990 (n + 1)

end A207990

/-! ## A207990.P7000090037782011834

`p?[∑[A075527(n)]-2]`
-/

namespace A207990.P7000090037782011834
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075527 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A207990.P7000090037782011834

namespace A207990

/-- `p?[∑[A075527(n)]-2]` -/
def P7000090037782011834.Spec : Prop :=
  ∀ n, P7000090037782011834.a n = A207990 (n + 1)

end A207990

/-! ## A207990.P10032984810781624405

`p?[A001043(n+1)-5]`
-/

namespace A207990.P10032984810781624405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001043 (n + 1) - 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A207990.P10032984810781624405

namespace A207990

/-- `p?[A001043(n+1)-5]` -/
def P10032984810781624405.Spec : Prop :=
  ∀ n, P10032984810781624405.a n = A207990 (n + 1)

end A207990

/-! ## A207990.P8477014047695999965

`p?[∑[A046930(n+2)+2]]`
-/

namespace A207990.P8477014047695999965
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046930 (n + 2) + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A207990.P8477014047695999965

namespace A207990

/-- `p?[∑[A046930(n+2)+2]]` -/
def P8477014047695999965.Spec : Prop :=
  ∀ n, P8477014047695999965.a n = A207990 (n + 1)

end A207990

/-! ## A207990.P2840335732218707856

`p?[∑[A159461(n+2)+2]]`
-/

namespace A207990.P2840335732218707856
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159461 (n + 2) + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A207990.P2840335732218707856

namespace A207990

/-- `p?[∑[A159461(n+2)+2]]` -/
def P2840335732218707856.Spec : Prop :=
  ∀ n, P2840335732218707856.a n = A207990 (n + 1)

end A207990

/-! ## A207990.P9926979314943410666

`p?[∑[A000040(n+3)-A000040(n+1)]]`
-/

namespace A207990.P9926979314943410666
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 3) - A000040 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A207990.P9926979314943410666

namespace A207990

/-- `p?[∑[A000040(n+3)-A000040(n+1)]]` -/
def P9926979314943410666.Spec : Prop :=
  ∀ n, P9926979314943410666.a n = A207990 (n + 1)

end A207990

/-! ## A207990.P4856976787025036983

`p?[A008578(n+1)+A086801(n+1)-2]`
-/

namespace A207990.P4856976787025036983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1) + (A086801 (n + 1) - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A207990.P4856976787025036983

namespace A207990

/-- `p?[A008578(n+1)+A086801(n+1)-2]` -/
def P4856976787025036983.Spec : Prop :=
  ∀ n, P4856976787025036983.a n = A207990 (n + 1)

end A207990

/-! ## A207990.P16193282236676750986

`p?[A001223(n+1)+A131426(n+1)-2]`
-/

namespace A207990.P16193282236676750986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (n + 1) + (A131426 (n + 1) - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A207990.P16193282236676750986

namespace A207990

/-- `p?[A001223(n+1)+A131426(n+1)-2]` -/
def P16193282236676750986.Spec : Prop :=
  ∀ n, P16193282236676750986.a n = A207990 (n + 1)

end A207990

/-! ## A207990.P11920873284224461381

`p?[A046933(n+1)+2*A040976(n+1)]`
-/

namespace A207990.P11920873284224461381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046933 (n + 1) + 2 * A040976 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A207990.P11920873284224461381

namespace A207990

/-- `p?[A046933(n+1)+2*A040976(n+1)]` -/
def P11920873284224461381.Spec : Prop :=
  ∀ n, P11920873284224461381.a n = A207990 (n + 1)

end A207990

/-! ## A207990.P12918691243311732001

`p?[A006093(n+2)+A006093(n+1)-3]`
-/

namespace A207990.P12918691243311732001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 2) + (A006093 (n + 1) - 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A207990.P12918691243311732001

namespace A207990

/-- `p?[A006093(n+2)+A006093(n+1)-3]` -/
def P12918691243311732001.Spec : Prop :=
  ∀ n, P12918691243311732001.a n = A207990 (n + 1)

end A207990

/-! ## A207990.P465098642728726715

`p?[2*A040976(n+1)-A076368(n+1)]`
-/

namespace A207990.P465098642728726715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A040976 (n + 1) - A076368 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A207990.P465098642728726715

namespace A207990

/-- `p?[2*A040976(n+1)-A076368(n+1)]` -/
def P465098642728726715.Spec : Prop :=
  ∀ n, P465098642728726715.a n = A207990 (n + 1)

end A207990

/-! ## A207990.P3790305510357721944

`p?[A000040(n+1)+A000040(n+2)-5]`
-/

namespace A207990.P3790305510357721944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + A000040 (n + 2) - 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A207990.P3790305510357721944

namespace A207990

/-- `p?[A000040(n+1)+A000040(n+2)-5]` -/
def P3790305510357721944.Spec : Prop :=
  ∀ n, P3790305510357721944.a n = A207990 (n + 1)

end A207990

/-! ## A207990.P658782910034877898

`record[A006530(∑[A031131(n+1)])]`
-/

namespace A207990.P658782910034877898
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031131 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A207990.P658782910034877898

namespace A207990

/-- `record[A006530(∑[A031131(n+1)])]` -/
def P658782910034877898.Spec : Prop :=
  ∀ n, P658782910034877898.a n = A207990 (n + 1)

end A207990

/-! ## A207990.P11727102345951092178

`record[A020639(∑[A031131(n+1)])]`
-/

namespace A207990.P11727102345951092178
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031131 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A207990.P11727102345951092178

namespace A207990

/-- `record[A020639(∑[A031131(n+1)])]` -/
def P11727102345951092178.Spec : Prop :=
  ∀ n, P11727102345951092178.a n = A207990 (n + 1)

end A207990

/-! ## A207990.P15391355824258456187

`record[A014963(∑[A031131(n+1)])]`
-/

namespace A207990.P15391355824258456187
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031131 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A207990.P15391355824258456187

namespace A207990

/-- `record[A014963(∑[A031131(n+1)])]` -/
def P15391355824258456187.Spec : Prop :=
  ∀ n, P15391355824258456187.a n = A207990 (n + 1)

end A207990

/-!
# A207991: Primes of the form prime(n) + prime(n+1) + 5.

The programs for A207991, the canonical program `A207991.P23937838274844558` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A207991 has offset 1).

The definition of A207991 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1975 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A207991.P4268205176277546341

`p?[A055670(n+2)+A055670(n+1)+3]`
-/

namespace A207991.P4268205176277546341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055670 (n + 2) + (A055670 (n + 1) + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A207991.P4268205176277546341

namespace A207991

/-- `p?[A055670(n+2)+A055670(n+1)+3]` -/
def P4268205176277546341.Spec : Prop :=
  ∀ n, P4268205176277546341.a n = A207991 (n + 1)

end A207991

/-! ## A207991.P23937838274844558

`p?[A001043(n+1)+5]`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A207991

/-- `p?[A001043(n+1)+5]` -/
def P23937838274844558.Spec : Prop :=
  ∀ n, P23937838274844558.a n = A207991 (n + 1)

theorem P23937838274844558.correct : P23937838274844558.Spec := by
  intro n
  simp only [A207991, Nat.add_sub_cancel]

end A207991

/-! ## A207991.P2389587972206447427

`p?[2*A024675(n+1)+5]`
-/

namespace A207991.P2389587972206447427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A024675 (n + 1) + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A207991.P2389587972206447427

namespace A207991

/-- `p?[2*A024675(n+1)+5]` -/
def P2389587972206447427.Spec : Prop :=
  ∀ n, P2389587972206447427.a n = A207991 (n + 1)

end A207991

/-! ## A207991.P15175167525180556302

`p?[A175221(n+1)+A181428(n+1)+1]`
-/

namespace A207991.P15175167525180556302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175221 (n + 1) + (A181428 (n + 1) + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A207991.P15175167525180556302

namespace A207991

/-- `p?[A175221(n+1)+A181428(n+1)+1]` -/
def P15175167525180556302.Spec : Prop :=
  ∀ n, P15175167525180556302.a n = A207991 (n + 1)

end A207991

/-! ## A207991.P16769536085073756771

`p?[A008864(n+2)+A008864(n+1)+3]`
-/

namespace A207991.P16769536085073756771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (n + 2) + (A008864 (n + 1) + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A207991.P16769536085073756771

namespace A207991

/-- `p?[A008864(n+2)+A008864(n+1)+3]` -/
def P16769536085073756771.Spec : Prop :=
  ∀ n, P16769536085073756771.a n = A207991 (n + 1)

end A207991

/-! ## A207991.P4705082574296497116

`p?[A000040(n+1)+A000040(n+2)+5]`
-/

namespace A207991.P4705082574296497116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + A000040 (n + 2) + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A207991.P4705082574296497116

namespace A207991

/-- `p?[A000040(n+1)+A000040(n+2)+5]` -/
def P4705082574296497116.Spec : Prop :=
  ∀ n, P4705082574296497116.a n = A207991 (n + 1)

end A207991

/-! ## A207991.P2333175229092787654

`p?[A134651(n+1)]`
-/

namespace A207991.P2333175229092787654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134651 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A207991.P2333175229092787654

namespace A207991

/-- `p?[A134651(n+1)]` -/
def P2333175229092787654.Spec : Prop :=
  ∀ n, P2333175229092787654.a n = A207991 (n + 1)

end A207991

/-! ## A207991.P14683817503590288649

`record[A006530(A134651(n+2))]`
-/

namespace A207991.P14683817503590288649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A134651 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A207991.P14683817503590288649

namespace A207991

/-- `record[A006530(A134651(n+2))]` -/
def P14683817503590288649.Spec : Prop :=
  ∀ n, P14683817503590288649.a n = A207991 (n + 1)

end A207991

/-! ## A207991.P6457204087364947885

`filter[A134651(n+1), A010051(#)]`
-/

namespace A207991.P6457204087364947885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134651 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A207991.P6457204087364947885

namespace A207991

/-- `filter[A134651(n+1), A010051(#)]` -/
def P6457204087364947885.Spec : Prop :=
  ∀ n, P6457204087364947885.a n = A207991 (n + 1)

end A207991

/-! ## A207991.P18230850508311275125

`∩[A000040(n+1), A134651(n+1)]`
-/

namespace A207991.P18230850508311275125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134651 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A207991.P18230850508311275125

namespace A207991

/-- `∩[A000040(n+1), A134651(n+1)]` -/
def P18230850508311275125.Spec : Prop :=
  ∀ n, (P18230850508311275125.a n : ℤ) = A207991 (n + 1)

end A207991

/-! ## A207991.P9320232367777995327

`∩[A004139(n+1), A134651(n+1)]`
-/

namespace A207991.P9320232367777995327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134651 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A207991.P9320232367777995327

namespace A207991

/-- `∩[A004139(n+1), A134651(n+1)]` -/
def P9320232367777995327.Spec : Prop :=
  ∀ n, (P9320232367777995327.a n : ℤ) = A207991 (n + 1)

end A207991

/-! ## A207991.P9286679321617861526

`∩[A006005(n+1), A134651(n+1)]`
-/

namespace A207991.P9286679321617861526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134651 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A207991.P9286679321617861526

namespace A207991

/-- `∩[A006005(n+1), A134651(n+1)]` -/
def P9286679321617861526.Spec : Prop :=
  ∀ n, (P9286679321617861526.a n : ℤ) = A207991 (n + 1)

end A207991

/-! ## A207991.P8667498902642244

`∩[A008578(n+1), A134651(n+1)]`
-/

namespace A207991.P8667498902642244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134651 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A207991.P8667498902642244

namespace A207991

/-- `∩[A008578(n+1), A134651(n+1)]` -/
def P8667498902642244.Spec : Prop :=
  ∀ n, (P8667498902642244.a n : ℤ) = A207991 (n + 1)

end A207991

/-! ## A207991.P12524389337082455480

`∩[A033946(n+1), A134651(n+1)]`
-/

namespace A207991.P12524389337082455480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033946 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134651 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A207991.P12524389337082455480

namespace A207991

/-- `∩[A033946(n+1), A134651(n+1)]` -/
def P12524389337082455480.Spec : Prop :=
  ∀ n, (P12524389337082455480.a n : ℤ) = A207991 (n + 1)

end A207991

/-! ## A207991.P16281560603766645722

`∩[A045319(n+1), A134651(n+1)]`
-/

namespace A207991.P16281560603766645722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134651 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A207991.P16281560603766645722

namespace A207991

/-- `∩[A045319(n+1), A134651(n+1)]` -/
def P16281560603766645722.Spec : Prop :=
  ∀ n, (P16281560603766645722.a n : ℤ) = A207991 (n + 1)

end A207991

/-! ## A207991.P16253141621731343697

`∩[A045344(n+1), A134651(n+1)]`
-/

namespace A207991.P16253141621731343697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134651 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A207991.P16253141621731343697

namespace A207991

/-- `∩[A045344(n+1), A134651(n+1)]` -/
def P16253141621731343697.Spec : Prop :=
  ∀ n, (P16253141621731343697.a n : ℤ) = A207991 (n + 1)

end A207991

/-! ## A207991.P8778852551283319660

`∩[A046022(n+1), A134651(n+1)]`
-/

namespace A207991.P8778852551283319660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134651 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A207991.P8778852551283319660

namespace A207991

/-- `∩[A046022(n+1), A134651(n+1)]` -/
def P8778852551283319660.Spec : Prop :=
  ∀ n, (P8778852551283319660.a n : ℤ) = A207991 (n + 1)

end A207991

/-! ## A207991.P6526615463114951432

`∩[A051948(n+1), A134651(n+1)]`
-/

namespace A207991.P6526615463114951432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051948 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134651 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A207991.P6526615463114951432

namespace A207991

/-- `∩[A051948(n+1), A134651(n+1)]` -/
def P6526615463114951432.Spec : Prop :=
  ∀ n, (P6526615463114951432.a n : ℤ) = A207991 (n + 1)

end A207991

/-! ## A207991.P8660991145686733577

`p?[A005408(A024675(n+1)+2)]`
-/

namespace A207991.P8660991145686733577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A024675 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A207991.P8660991145686733577

namespace A207991

/-- `p?[A005408(A024675(n+1)+2)]` -/
def P8660991145686733577.Spec : Prop :=
  ∀ n, P8660991145686733577.a n = A207991 (n + 1)

end A207991

/-! ## A207991.P7136755511468650481

`p?[A347136(A000040(n+1))+5]`
-/

namespace A207991.P7136755511468650481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347136 (A000040 (n + 1)).toNat + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A207991.P7136755511468650481

namespace A207991

/-- `p?[A347136(A000040(n+1))+5]` -/
def P7136755511468650481.Spec : Prop :=
  ∀ n, P7136755511468650481.a n = A207991 (n + 1)

end A207991

/-!
# A207992: Primes p of the form p = prime(n) + prime(n+1) - 5 and p = prime(k) + prime(k+1) + 5.

The programs for A207992, the canonical program `A207992.P2814114464240705401` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A207992 has offset 1).

The definition of A207992 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 222 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A207992.P2814114464240705401

`∩[A207990(n+1), A207991(n+1)]`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A207992

/-- `∩[A207990(n+1), A207991(n+1)]` -/
def P2814114464240705401.Spec : Prop :=
  ∀ n, (P2814114464240705401.a n : ℤ) = A207992 (n + 1)

theorem P2814114464240705401.correct : P2814114464240705401.Spec := by
  intro n
  simp only [A207992, Nat.add_sub_cancel]

end A207992

/-! ## A207992.P11672455895295396205

`∩[A001043(n+1)+5, A207990(n+1)]`
-/

namespace A207992.P11672455895295396205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001043 (n + 1) + 5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207990 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A207992.P11672455895295396205

namespace A207992

/-- `∩[A001043(n+1)+5, A207990(n+1)]` -/
def P11672455895295396205.Spec : Prop :=
  ∀ n, (P11672455895295396205.a n : ℤ) = A207992 (n + 1)

end A207992

/-! ## A207992.P11962607003269611656

`∩[A001043(n+1)-5, A207991(n+1)]`
-/

namespace A207992.P11962607003269611656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001043 (n + 1) - 5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207991 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A207992.P11962607003269611656

namespace A207992

/-- `∩[A001043(n+1)-5, A207991(n+1)]` -/
def P11962607003269611656.Spec : Prop :=
  ∀ n, (P11962607003269611656.a n : ℤ) = A207992 (n + 1)

end A207992

/-! ## A207992.P12223925736860391227

`∩[A134651(n+1), A207990(n+1)]`
-/

namespace A207992.P12223925736860391227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134651 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207990 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A207992.P12223925736860391227

namespace A207992

/-- `∩[A134651(n+1), A207990(n+1)]` -/
def P12223925736860391227.Spec : Prop :=
  ∀ n, (P12223925736860391227.a n : ℤ) = A207992 (n + 1)

end A207992

/-!
# A207993: Number of n X n 0..2 arrays with new values 0..2 introduced in row major order and no element equal to any horizontal or vertical neighbor (colorings ignoring permutations of colors).

The programs for A207993, there is no canonical definition to state claims against.
-/

/-! ## A207993.P15472870363172363586

`A207997(2*(n+1)²-2*(n+1)+1)`
-/

namespace A207993.P15472870363172363586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207997 ((2 * (n + 1) ^ 2 : ℤ) - (2 * (n + 1) : ℤ) + 1).toNat

end

end A207993.P15472870363172363586

/-! ## A207993.P11041227605522522326

`ceil(A068253(n+1)/2)`
-/

namespace A207993.P11041227605522522326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A068253 (n + 1) : ℚ) / 2⌉

end

end A207993.P11041227605522522326

/-! ## A207993.P7392507191278280600

`ceil(A078099(1+n*2*(n+1))/2)`
-/

namespace A207993.P7392507191278280600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A078099 (1 + n * (2 * (n + 1))) : ℚ) / 2⌉

end

end A207993.P7392507191278280600

/-! ## A207993.P13127321505637657875

`A068253(n+1)/A040000(n)`
-/

namespace A207993.P13127321505637657875
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A068253 (n + 1) : ℚ) / (A040000 n : ℚ)

end

end A207993.P13127321505637657875

/-! ## A207993.P3249661099247698734

`(A068253(n+1)/2)^A178334(n)`
-/

namespace A207993.P3249661099247698734
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A068253 (n + 1) : ℚ) / 2) ^ (A178334 n : ℤ)

end

end A207993.P3249661099247698734

/-!
# A207994: Number of nX5 0..2 arrays with new values 0..2 introduced in row major order and no element equal to any horizontal or vertical neighbor (colorings ignoring permutations of colors).

The programs for A207994, the canonical program `A207994.P6094540907220759869` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A207994 has offset 1).

The definition of A207994 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A207994.P6094540907220759869

`ogf((8-47x+77x^2-44x^3+8x^4)/(1-16x+65x^2-92x^3+48x^4-8x^5))`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A207994

/-- `ogf((8-47x+77x^2-44x^3+8x^4)/(1-16x+65x^2-92x^3+48x^4-8x^5))` -/
def P6094540907220759869.Spec : Prop :=
  ∀ n, P6094540907220759869.a n = A207994 (n + 1)

theorem P6094540907220759869.correct : P6094540907220759869.Spec := by
  intro n
  simp only [A207994, Nat.add_sub_cancel]

end A207994

/-! ## A207994.P663122309186450822

`A223199(n+1)/A000079(5*(n+1))`
-/

namespace A207994.P663122309186450822
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A223199 (n + 1) : ℚ) / (A000079 (5 * (n + 1)) : ℚ)

end

end A207994.P663122309186450822

namespace A207994

/-- `A223199(n+1)/A000079(5*(n+1))` -/
def P663122309186450822.Spec : Prop :=
  ∀ n, P663122309186450822.a n = (A207994 (n + 1) : ℚ)

end A207994

/-! ## A207994.P1161331571885606809

`A223199(n+1)/A000079(n+1)^5`
-/

namespace A207994.P1161331571885606809
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A223199 (n + 1) : ℚ) / (A000079 (n + 1) ^ 5 : ℚ)

end

end A207994.P1161331571885606809

namespace A207994

/-- `A223199(n+1)/A000079(n+1)^5` -/
def P1161331571885606809.Spec : Prop :=
  ∀ n, P1161331571885606809.a n = (A207994 (n + 1) : ℚ)

end A207994

/-! ## A207994.P8971816655765521253

`A207997(A374005(n+1))`
-/

namespace A207994.P8971816655765521253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207997 (A374005 (n + 1)).toNat

end

end A207994.P8971816655765521253

namespace A207994

/-- `A207997(A374005(n+1))` -/
def P8971816655765521253.Spec : Prop :=
  ∀ n, P8971816655765521253.a n = A207994 (n + 1)

end A207994

/-!
# A207995: Number of nX6 0..2 arrays with new values 0..2 introduced in row major order and no element equal to any horizontal or vertical neighbor (colorings ignoring permutations of colors).

The programs for A207995, there is no canonical definition to state claims against.
-/

/-! ## A207995.P14295831291365760149

`Δ[∑[A078099(A052905(n+2))]/2]`
-/

namespace A207995.P14295831291365760149
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078099 (A052905 (n + 2)).toNat

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A207995.P14295831291365760149

/-! ## A207995.P2653112153135732050

`gcd(A223200(n+1), A223216(n+1))/2`
-/

namespace A207995.P2653112153135732050
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.gcd (A223200 (n + 1)) (A223216 (n + 1)) : ℚ) / 2

end

end A207995.P2653112153135732050

/-! ## A207995.P12110895116325468723

`A207997(A374007(n+1))`
-/

namespace A207995.P12110895116325468723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207997 (A374007 (n + 1)).toNat

end

end A207995.P12110895116325468723

/-!
# A207996: Number of nX7 0..2 arrays with new values 0..2 introduced in row major order and no element equal to any horizontal or vertical neighbor (colorings ignoring permutations of colors).

The programs for A207996, there is no canonical definition to state claims against.
-/

/-! ## A207996.P10154458926786218722

`A078099(A000096(n+5)+8)/2`
-/

namespace A207996.P10154458926786218722
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A078099 (A000096 (n + 5) + 8).toNat : ℚ) / 2

end

end A207996.P10154458926786218722

/-! ## A207996.P11695921486299981815

`A207997(A374008(n+1))`
-/

namespace A207996.P11695921486299981815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207997 (A374008 (n + 1)).toNat

end

end A207996.P11695921486299981815

/-!
# A207997: T(n,k) = number of n X k 0..2 arrays with new values 0..2 introduced in row major order and no element equal to any horizontal or vertical neighbor (colorings ignoring permutations of colors).

The programs for A207997, there is no canonical definition to state claims against.
-/

/-! ## A207997.P15600421331622678282

`ceil(A078099(1+n)/2)`
-/

namespace A207997.P15600421331622678282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A078099 (1 + n) : ℚ) / 2⌉

end

end A207997.P15600421331622678282

/-! ## A207997.P5717309075342037790

`round(A078099(n+1)/2)`
-/

namespace A207997.P5717309075342037790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A078099 (n + 1) : ℚ) / 2)

end

end A207997.P5717309075342037790

/-! ## A207997.P9634056953804046276

`A078099(abs(1-n)+2)/2`
-/

namespace A207997.P9634056953804046276
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A078099 (|1 - (n : ℤ)| + 2).toNat : ℚ) / 2

end

end A207997.P9634056953804046276

/-! ## A207997.P7484094805595459243

`A078099(n+1)/A000079(n)*A011782(n)`
-/

namespace A207997.P7484094805595459243
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A078099 (n + 1) : ℚ) / (A000079 n : ℚ) * (A011782 n : ℚ)

end

end A207997.P7484094805595459243

/-! ## A207997.P8664769684406459619

`A078099(n+1)/A011782(n+1)*A011782(n)`
-/

namespace A207997.P8664769684406459619
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A078099 (n + 1) : ℚ) / (A011782 (n + 1) : ℚ) * (A011782 n : ℚ)

end

end A207997.P8664769684406459619

/-!
# A207998: Number of nX2 nonnegative integer arrays with new values 0 upwards introduced in row major order and no element equal to any knight-move neighbor (colorings ignoring permutations of colors).

The programs for A207998, there is no canonical definition to state claims against.
-/

/-! ## A207998.P1764117361633922033

`A106436(5+(n+2)*Δ[n²])`
-/

namespace A207998.P1764117361633922033
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106436 (5 + (n + 2 : ℤ) * ((f1 (n + 1) : ℤ) - (f1 n : ℤ))).toNat

end

end A207998.P1764117361633922033

/-! ## A207998.P1644170522517778058

`A011971(A134869(2*n+1)+2)`
-/

namespace A207998.P1644170522517778058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011971 (A134869 (2 * n + 1) + 2).toNat

end

end A207998.P1644170522517778058

/-! ## A207998.P17263450848745242501

`A095149(A000096(2*n+1)+5)`
-/

namespace A207998.P17263450848745242501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095149 (A000096 (2 * n + 1) + 5).toNat

end

end A207998.P17263450848745242501

/-! ## A207998.P8150772814472046981

`A208001(∑[n+2])`
-/

namespace A207998.P8150772814472046981
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208001 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A207998.P8150772814472046981

/-!
# A207999: Number of nX3 nonnegative integer arrays with new values 0 upwards introduced in row major order and no element equal to any knight-move neighbor (colorings ignoring permutations of colors).

The programs for A207999, there is no canonical definition to state claims against.
-/

/-! ## A207999.P720480078911924038

`A208001(∑[n+2]+4)`
-/

namespace A207999.P720480078911924038
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208001 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A207999.P720480078911924038

