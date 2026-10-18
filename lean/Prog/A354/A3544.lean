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
import Seq.B000.C014
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C034
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C003
import Seq.B002.C005
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C003
import Seq.B005.C000
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
import Seq.Opaque.C025

/-!
# A354400: Replace the nonprimes in the prime gaps with primes. See Comments section for details.

The programs for A354400, there is no canonical definition to state claims against.
-/

/-! ## A354400.P15933609913081445896

`A000040(A263399(n+1)+A032559(n+1))`
-/

namespace A354400.P15933609913081445896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A263399 (n + 1) + A032559 (n + 1)).toNat

end

end A354400.P15933609913081445896

/-!
# A354401: a(n) is the denominator of Sum_{k=1..n} 1 / (k*k!).

The programs for A354401, there is no canonical definition to state claims against.
-/

/-! ## A354401.P16099466353534034407

`A354404(n+1)/A354358(A354417(n+1))`
-/

namespace A354401.P16099466353534034407
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A354404 (n + 1) : ℚ) / (A354358 (A354417 (n + 1)).toNat : ℚ)

end

end A354401.P16099466353534034407

/-! ## A354401.P13541172438654403585

`A354404(n+1)/A053878(A000051(n))`
-/

namespace A354401.P13541172438654403585
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A354404 (n + 1) : ℚ) / (A053878 (A000051 n).toNat : ℚ)

end

end A354401.P13541172438654403585

/-!
# A354402: a(n) is the numerator of Sum_{k=1..n} (-1)^(k+1) / (k*k!).

The programs for A354402, there is no canonical definition to state claims against.
-/

/-! ## A354402.P10825526333823962393

`A258117(A257952(n)+A055396(n+1))`
-/

namespace A354402.P10825526333823962393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258117 (A257952 n + A055396 (n + 1)).toNat

end

end A354402.P10825526333823962393

/-!
# A354404: a(n) is the denominator of Sum_{k=1..n} (-1)^(k+1) / (k*k!).

The programs for A354404, there is no canonical definition to state claims against.
-/

/-! ## A354404.P14431040495624042164

`lcm(A050292(A003418(n)), A354401(n+1))`
-/

namespace A354404.P14431040495624042164
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A050292 (A003418 n).toNat) (A354401 (n + 1))

end

end A354404.P14431040495624042164

/-! ## A354404.P2170744039449732190

`lcm(A051683(n+1), A354401(A061147(n+1)))`
-/

namespace A354404.P2170744039449732190
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A051683 (n + 1)) (A354401 (A061147 (n + 1)).toNat)

end

end A354404.P2170744039449732190

/-! ## A354404.P9552884463254256601

`A318577(A136683(n+1))*A354401(n+1)`
-/

namespace A354404.P9552884463254256601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318577 (A136683 (n + 1)).toNat * A354401 (n + 1)

end

end A354404.P9552884463254256601

/-! ## A354404.P10522583412890909552

`A126770(A126756(n+1))*A354401(n+1)`
-/

namespace A354404.P10522583412890909552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126770 (A126756 (n + 1)).toNat * A354401 (n + 1)

end

end A354404.P10522583412890909552

/-!
# A354409: Maximum value in the n-th row of A354408.

The programs for A354409, there is no canonical definition to state claims against.
-/

/-! ## A354409.P4829392615104392528

`A354408(A063428(n+2)+A000124(n))`
-/

namespace A354409.P4829392615104392528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354408 (A063428 (n + 2) + A000124 n).toNat

end

end A354409.P4829392615104392528

/-! ## A354409.P1247791005461902131

`A354408(∑[A212627(2*n+5)+A000009(n+2)])`
-/

namespace A354409.P1247791005461902131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212627 (2 * n + 5) + A000009 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354408 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A354409.P1247791005461902131

/-! ## A354409.P16306377679531236774

`record[A341439(A112926(n+1)+1)]`
-/

namespace A354409.P16306377679531236774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341439 (A112926 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A354409.P16306377679531236774

/-!
# A354410: Numbers with as many zeros as the sum of their digits.

The programs for A354410, there is no canonical definition to state claims against.
-/

/-! ## A354410.P16321486291497364732

`eq[A007953(n), A055641(n)]`
-/

namespace A354410.P16321486291497364732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055641 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A354410.P16321486291497364732

/-! ## A354410.P11750290006061776663

`eq[A007953(n), A064532(n)]`
-/

namespace A354410.P11750290006061776663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064532 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A354410.P11750290006061776663

/-!
# A354411: a(n) is the least oblong number that is divisible by the first n primes.

The programs for A354411, there is no canonical definition to state claims against.
-/

/-! ## A354411.P18053346869402134071

`A118478(n+1)*(A118478(n+1)+1)`
-/

namespace A354411.P18053346869402134071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118478 (n + 1) * (A118478 (n + 1) + 1)

end

end A354411.P18053346869402134071

/-! ## A354411.P13766789010486324445

`A002110(n+1)*A215021(n+1)`
-/

namespace A354411.P13766789010486324445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002110 (n + 1) * A215021 (n + 1)

end

end A354411.P13766789010486324445

/-! ## A354411.P9172019778415335249

`A118478(n+1)+A118478(n+1)²`
-/

namespace A354411.P9172019778415335249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118478 (n + 1) + A118478 (n + 1) ^ 2

end

end A354411.P9172019778415335249

/-! ## A354411.P9700033171837654741

`A179675(A061853(n+1)+1+n)+A179675(A061853(n+1)+1+n)²`
-/

namespace A354411.P9700033171837654741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179675 (A061853 (n + 1) + 1 + (n : ℤ)).toNat + A179675 (A061853 (n + 1) + 1 + (n : ℤ)).toNat ^ 2

end

end A354411.P9700033171837654741

/-! ## A354411.P16600489889355853028

`record[A322792(n+1)]*A215021(n+1)`
-/

namespace A354411.P16600489889355853028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322792 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A215021 (n + 1)

end

end A354411.P16600489889355853028

/-!
# A354413: Expansion of e.g.f. 1/(2 - exp(x))^x.

The programs for A354413, there is no canonical definition to state claims against.
-/

/-! ## A354413.P9750537626916617868

`A190658(n+1)-A001222(A305857(n))`
-/

namespace A354413.P9750537626916617868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190658 (n + 1) - A001222 (A305857 n).toNat

end

end A354413.P9750537626916617868

/-! ## A354413.P2345200035533742984

`n*A111791(a(n-1))` with `a(0)=1, a(1)=0, a(2)=2`
-/

namespace A354413.P2345200035533742984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 2] fun n a =>
  (n : ℤ) * A111791 (a (n - 1)).toNat

end

end A354413.P2345200035533742984

/-!
# A354414: a(n) is the smallest positive integer which does not occur in any Lucas sequence in which the first term is at most n and the second term is at most the first term.

The programs for A354414, there is no canonical definition to state claims against.
-/

/-! ## A354414.P3472919573539104798

`∑[A345347(n)-n]`
-/

namespace A354414.P3472919573539104798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345347 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A354414.P3472919573539104798

/-! ## A354414.P7951069313944497062

`∑[A087172(comp[ceil(ϕ*n)])]`
-/

namespace A354414.P7951069313944497062
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.goldenRatio * (n : ℝ)⌉

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087172 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A354414.P7951069313944497062

/-! ## A354414.P17150723152675596312

`A354415(n)+a(n-1)` with `a(0)=1`
-/

namespace A354414.P17150723152675596312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A354415 n + a (n - 1)

end

end A354414.P17150723152675596312

/-! ## A354414.P7406262913348751437

`∑[A083662(record[and(2*n, -n)])]`
-/

namespace A354414.P7406262913348751437
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (2 * n : ℤ) (-(n : ℤ))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083662 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A354414.P7406262913348751437

/-! ## A354414.P13254492124037948509

`∑[A246104(comp[or(n, n+3)])]-1`
-/

namespace A354414.P13254492124037948509
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor n (n + 3)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246104 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A354414.P13254492124037948509

/-! ## A354414.P10533932003499140880

`∑[∑[n*A104162(n)]]+1+n`
-/

namespace A354414.P10533932003499140880
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A104162 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1 + (n : ℤ)

end

end A354414.P10533932003499140880

/-! ## A354414.P9074882067020712825

`∑[A087172(a(n-1)+n)]-1` with `a(0)=2`
-/

namespace A354414.P9074882067020712825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  A087172 (f1 (n - 1) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A354414.P9074882067020712825

/-! ## A354414.P2675215830095146705

`∑[∑[n*char[A000045(n)]]+2]-1`
-/

namespace A354414.P2675215830095146705
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (if ∃ j, f3 j = (n : ℤ) then 1 else 0)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A354414.P2675215830095146705

/-! ## A354414.P10917441653299189711

`A000045(floor(log(n²))+4)+a(n-1)` with `a(0)=1`
-/

namespace A354414.P10917441653299189711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000045 (⌊Real.log (n ^ 2 : ℝ)⌋ + 4).toNat + a (n - 1)

end

end A354414.P10917441653299189711

/-! ## A354414.P5411113936873834826

`∑[A000045(A108852(n)+1)]`
-/

namespace A354414.P5411113936873834826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A108852 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A354414.P5411113936873834826

/-!
# A354415: First differences of A354414.

The programs for A354415, there is no canonical definition to state claims against.
-/

/-! ## A354415.P508019486691855856

`A354414(n+1)-A354414(n)`
-/

namespace A354415.P508019486691855856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354414 (n + 1) - A354414 n

end

end A354415.P508019486691855856

/-! ## A354415.P4938995023026128327

`eq[1, round(a(floor(n/ϕ)))]-n` with `a(0)=2, a(1)=3, a(2)=5, a(3)=1, a(4)=9, a(5)=2`

`round` is left out, it is the identity on integers.
-/

namespace A354415.P4938995023026128327
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.rec [2, 3, 5, 1, 9, 2] fun n f2 =>
  f2 ⌊(n : ℝ) / Real.goldenRatio⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j = f2 j) n : ℤ) - (n : ℤ)

end

end A354415.P4938995023026128327

/-! ## A354415.P16508268727566155761

`round(ϕ*A246104(n))`
-/

namespace A354415.P16508268727566155761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.goldenRatio * (A246104 n : ℝ))

end

end A354415.P16508268727566155761

/-! ## A354415.P528009509539601008

`A246104(floor(ϕ*(n+1)))`
-/

namespace A354415.P528009509539601008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246104 ⌊Real.goldenRatio * (n + 1 : ℝ)⌋.toNat

end

end A354415.P528009509539601008

/-! ## A354415.P13053514602767550735

`A256654(floor(ϕ*n)+3)`
-/

namespace A354415.P13053514602767550735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256654 (⌊Real.goldenRatio * (n : ℝ)⌋ + 3).toNat

end

end A354415.P13053514602767550735

/-! ## A354415.P443612097218411244

`round(ϕ*A256654(n+2))`
-/

namespace A354415.P443612097218411244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.goldenRatio * (A256654 (n + 2) : ℝ))

end

end A354415.P443612097218411244

/-! ## A354415.P11392205672228246522

`A099267(a(floor(n/ϕ)))` with `a(0)=3`
-/

namespace A354415.P11392205672228246522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A099267 (a ⌊(n : ℝ) / Real.goldenRatio⌋.toNat).toNat

end

end A354415.P11392205672228246522

/-! ## A354415.P8742291927583273409

`A189662(a(floor(n/ϕ)))` with `a(0)=3`
-/

namespace A354415.P8742291927583273409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A189662 (a ⌊(n : ℝ) / Real.goldenRatio⌋.toNat).toNat

end

end A354415.P8742291927583273409

/-! ## A354415.P17793499601044667152

`A345347(n+1)-(n+1)`
-/

namespace A354415.P17793499601044667152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345347 (n + 1) - (n + 1 : ℤ)

end

end A354415.P17793499601044667152

/-! ## A354415.P3476985560586013846

`∑[(n+1)*A192687(n)]+2`
-/

namespace A354415.P3476985560586013846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A192687 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A354415.P3476985560586013846

/-!
# A354416: Expansion of e.g.f. (1 - log(1-x))^x.

The programs for A354416, there is no canonical definition to state claims against.
-/

/-! ## A354416.P14398906659111170217

`A391010(A056435(n+2))`
-/

namespace A354416.P14398906659111170217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391010 (A056435 (n + 2)).toNat

end

end A354416.P14398906659111170217

/-! ## A354416.P4694111321170698719

`A162306(A000699(n))*A265820(n)`
-/

namespace A354416.P4694111321170698719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162306 (A000699 n).toNat * A265820 n

end

end A354416.P4694111321170698719

/-!
# A354417: a(n) is the numerator of the sum of the reciprocals of the first n squarefree numbers.

The programs for A354417, there is no canonical definition to state claims against.
-/

/-! ## A354417.P2823884903909432753

`A072980(record[∏{p}[n, #]])`
-/

namespace A354417.P2823884903909432753
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072980 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A354417.P2823884903909432753

/-! ## A354417.P13151389937438147531

`A072980(eq[n, ∏{p}[n, #]])`
-/

namespace A354417.P13151389937438147531
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n), p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072980 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A354417.P13151389937438147531

/-! ## A354417.P11182763787888006701

`A072980(comp[lcm(n, -1%∏{e}[n, #])])`
-/

namespace A354417.P11182763787888006701
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) (Int.tmod (-1) ((∏ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p : ℕ) : ℤ))

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072980 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A354417.P11182763787888006701

/-! ## A354417.P11898507039754646722

`A072980(A005117(n+1))`
-/

namespace A354417.P11898507039754646722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072980 (A005117 (n + 1)).toNat

end

end A354417.P11898507039754646722

/-! ## A354417.P9459453774817635389

`A072980(record[A007913(n+1)])`
-/

namespace A354417.P9459453774817635389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072980 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A354417.P9459453774817635389

/-! ## A354417.P3303355871362417392

`A072980(lt[A206245(3*n), A007913(n+1)])`
-/

namespace A354417.P3303355871362417392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206245 (3 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072980 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A354417.P3303355871362417392

/-!
# A354418: a(n) is the denominator of the sum of the reciprocals of the first n squarefree numbers.

The programs for A354418, there is no canonical definition to state claims against.
-/

/-! ## A354418.P11961645522473920669

`A072983(record[∏{p}[n, #]])`
-/

namespace A354418.P11961645522473920669
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072983 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A354418.P11961645522473920669

/-! ## A354418.P13782022993276642412

`A072983(eq[n, ∏{p}[n, #]])`
-/

namespace A354418.P13782022993276642412
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n), p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072983 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A354418.P13782022993276642412

/-! ## A354418.P16455512813416163480

`A072983(A005117(n+1))`
-/

namespace A354418.P16455512813416163480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072983 (A005117 (n + 1)).toNat

end

end A354418.P16455512813416163480

/-! ## A354418.P16916156481749768087

`A072983(A077377(n+1))`
-/

namespace A354418.P16916156481749768087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072983 (A077377 (n + 1)).toNat

end

end A354418.P16916156481749768087

/-! ## A354418.P17927782545082018584

`A072983(A348506(n+1))`
-/

namespace A354418.P17927782545082018584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072983 (A348506 (n + 1)).toNat

end

end A354418.P17927782545082018584

/-!
# A354419: Expansion of e.g.f. log(1+4*x) * exp(x)/4.

The programs for A354419, there is no canonical definition to state claims against.
-/

/-! ## A354419.P7358285564202864245

`∑[1-4*(n-1)*a(n-1)]` with `a(0)=0`
-/

namespace A354419.P7358285564202864245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  1 - 4 * (((n : ℤ) - 1) * f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A354419.P7358285564202864245

/-!
# A354423: a(0)=1; a(n) is the smallest positive integer that cannot be obtained from the integers {1, ..., n} using each number at most once, and the operators addition and multiplication.

The programs for A354423, there is no canonical definition to state claims against.
-/

/-! ## A354423.P7467471220625110096

`A034973(A195510(n))+A000079(n)`
-/

namespace A354423.P7467471220625110096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034973 (A195510 n).toNat + A000079 n

end

end A354423.P7467471220625110096

/-! ## A354423.P4854553254284797264

`A239072(n)+A115060(A219231(n))`
-/

namespace A354423.P4854553254284797264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239072 n + A115060 (A219231 n).toNat

end

end A354423.P4854553254284797264

/-! ## A354423.P9400368961515749541

`A351978(A002144(n+1))+A095168(n+1)`
-/

namespace A354423.P9400368961515749541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351978 (A002144 (n + 1)).toNat + A095168 (n + 1)

end

end A354423.P9400368961515749541

/-!
# A354424: Numbers k for which the ratio A008475(k)/k reaches a record low.

The programs for A354424, there is no canonical definition to state claims against.
-/

/-! ## A354424.P1800088219152169441

`record[lcm(A104246(n+1), A179301(n+1))]`
-/

namespace A354424.P1800088219152169441
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A104246 (n + 1)) (A179301 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A354424.P1800088219152169441

/-! ## A354424.P2251278595156786283

`∩[A000037(n+1), A034884(A140100(n+1))]`
-/

namespace A354424.P2251278595156786283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000037 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034884 (A140100 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A354424.P2251278595156786283

/-!
# A354425: List of k such that sign(A009277(k)) = sign(A009277(k+1)).

The programs for A354425, there is no canonical definition to state claims against.
-/

/-! ## A354425.P9318659018503622984

`floor(sqrt(A005843(2*n^3+n)))`
-/

namespace A354425.P9318659018503622984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A005843 (2 * n ^ 3 + n))

end

end A354425.P9318659018503622984

/-! ## A354425.P9307590625454380955

`floor(sqrt(A042948(2*n^3+n)))`
-/

namespace A354425.P9307590625454380955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A042948 (2 * n ^ 3 + n))

end

end A354425.P9307590625454380955

/-! ## A354425.P17768207957648353175

`A003056(Δ[A261347(n+1)])`
-/

namespace A354425.P17768207957648353175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261347 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (f1 (n + 1) - f1 n).toNat

end

end A354425.P17768207957648353175

/-! ## A354425.P14131796411542665150

`A130855(A077043(n)+abs(n²*(1-2*n)))`
-/

namespace A354425.P14131796411542665150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130855 (A077043 n + |(n ^ 2 : ℤ) * (1 - (2 * n : ℤ))|).toNat

end

end A354425.P14131796411542665150

/-! ## A354425.P9498314988397566390

`A123578(A281026(n)+abs(n²*(1-2*n)))`
-/

namespace A354425.P9498314988397566390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123578 (A281026 n + |(n ^ 2 : ℤ) * (1 - (2 * n : ℤ))|).toNat

end

end A354425.P9498314988397566390

/-!
# A354430: First diagonal of an array, generated from the sequence of the nonprimes.

The programs for A354430, there is no canonical definition to state claims against.
-/

/-! ## A354430.P3678959162028911544

`A026488(A132750(n))`
-/

namespace A354430.P3678959162028911544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026488 (A132750 n).toNat

end

end A354430.P3678959162028911544

/-! ## A354430.P2245938900671895408

`A059169(A167667(n+2))-1`
-/

namespace A354430.P2245938900671895408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059169 (A167667 (n + 2)).toNat - 1

end

end A354430.P2245938900671895408

/-! ## A354430.P12984680161394835833

`A057360(A002064(n+2))-2`
-/

namespace A354430.P12984680161394835833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057360 (A002064 (n + 2)).toNat - 2

end

end A354430.P12984680161394835833

/-! ## A354430.P10928803991127030277

`A057360(4*A099035(n+1))`
-/

namespace A354430.P10928803991127030277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057360 (4 * A099035 (n + 1)).toNat

end

end A354430.P10928803991127030277

/-!
# A354431: Numbers k such that there are no bipartite graphs with k edge coverings.

The programs for A354431, there is no canonical definition to state claims against.
-/

/-! ## A354431.P6240870692461955663

`A352885(A049407(n+1))`
-/

namespace A354431.P6240870692461955663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352885 (A049407 (n + 1)).toNat

end

end A354431.P6240870692461955663

/-! ## A354431.P9256807777370465291

`A352885(A030709(n+2))`
-/

namespace A354431.P9256807777370465291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352885 (A030709 (n + 2)).toNat

end

end A354431.P9256807777370465291

/-! ## A354431.P16031047353689567759

`∩[A240032(n+1), A352885(n+1)]`
-/

namespace A354431.P16031047353689567759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240032 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352885 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A354431.P16031047353689567759

/-! ## A354431.P2859150770004748518

`A352885(∪[A352872(2*n+1), A352917(n+1)])`
-/

namespace A354431.P2859150770004748518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352872 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352917 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352885 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A354431.P2859150770004748518

/-!
# A354433: a(n) is the denominator of the sum of the reciprocals of the nonprime divisors of n.

The programs for A354433, there is no canonical definition to state claims against.
-/

/-! ## A354433.P5949138761146089361

`(n*∏{p}[n+1, C(#%n, #)]+1)%A236119(A225469(n+3))`
-/

namespace A354433.P5949138761146089361
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n * (∏ p ∈ Nat.primeFactors (f1 n), Nat.choose (p % n) p) + 1 : ℕ) : ℤ) (A236119 (A225469 (n + 3)).toNat)

end

end A354433.P5949138761146089361

/-! ## A354433.P16891488122677941627

`gcd(A000005(2^n), A340655(n+1))`
-/

namespace A354433.P16891488122677941627
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000005 (2 ^ n)) (A340655 (n + 1))

end

end A354433.P16891488122677941627

/-! ## A354433.P2630173982016517609

`A000005(A238949(n+1)^A106612(n))`
-/

namespace A354433.P2630173982016517609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((A238949 (n + 1) : ℚ) ^ (A106612 n : ℤ))).toNat

end

end A354433.P2630173982016517609

/-! ## A354433.P3043866263087196408

`A000005(A238949(n+1)^A137564(n))`
-/

namespace A354433.P3043866263087196408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((A238949 (n + 1) : ℚ) ^ (A137564 n : ℤ))).toNat

end

end A354433.P3043866263087196408

/-! ## A354433.P2464948822083156665

`A000005(A345266(n+1)^A106612(n))`
-/

namespace A354433.P2464948822083156665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((A345266 (n + 1) : ℚ) ^ (A106612 n : ℤ))).toNat

end

end A354433.P2464948822083156665

/-!
# A354436: a(n) = n! * Sum_{k=0..n} k^(n-k)/k!.

The programs for A354436, there is no canonical definition to state claims against.
-/

/-! ## A354436.P11636541176384720094

`A008619(A202153(n)²)`
-/

namespace A354436.P11636541176384720094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A202153 n ^ 2).toNat

end

end A354436.P11636541176384720094

/-! ## A354436.P7562206460435990772

`A008619(A375677(n)²)`
-/

namespace A354436.P7562206460435990772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A375677 n ^ 2).toNat

end

end A354436.P7562206460435990772

/-!
# A354438: Square array A(n, k), n, k >= 0, read by antidiagonals; the factorial base expansion of A(n, k) is obtained by adding componentwise and reducing modulo their radix the digits of the factorial base expansions of n and k.

The programs for A354438, there is no canonical definition to state claims against.
-/

/-! ## A354438.P5980412477886372685

`A354470(n)`
-/

namespace A354438.P5980412477886372685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354470 n

end

end A354438.P5980412477886372685

/-! ## A354438.P9001393532131443585

`or(A003987(n), A290566(A157209(n)))`
-/

namespace A354438.P9001393532131443585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A003987 n) (A290566 (A157209 n).toNat)

end

end A354438.P9001393532131443585

/-! ## A354438.P15649558125536337996

`A002024(n+1)-A010873(A300785(n))`
-/

namespace A354438.P15649558125536337996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (n + 1) - A010873 (A300785 n).toNat

end

end A354438.P15649558125536337996

/-! ## A354438.P12783991426999622978

`A003056(n)-A349907(A263060(n+1))`
-/

namespace A354438.P12783991426999622978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 n - A349907 (A263060 (n + 1)).toNat

end

end A354438.P12783991426999622978

/-! ## A354438.P10055386837385539939

`A335885(A223440(n+1))`
-/

namespace A354438.P10055386837385539939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335885 (A223440 (n + 1)).toNat

end

end A354438.P10055386837385539939

/-!
# A354441: Lexicographically earliest sequence of distinct positive integers on a square spiral such that any 3X3 square of numbers sums to a prime.

The programs for A354441, there is no canonical definition to state claims against.
-/

/-! ## A354441.P11279141047434967588

`A048266(A354435(n+1))`
-/

namespace A354441.P11279141047434967588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048266 (A354435 (n + 1)).toNat

end

end A354441.P11279141047434967588

/-! ## A354441.P1846279880942090986

`A354435(A328617(n+1))`
-/

namespace A354441.P1846279880942090986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354435 (A328617 (n + 1)).toNat

end

end A354441.P1846279880942090986

/-! ## A354441.P4180586124939015566

`A354435(n+1)%A168537(n+1)`
-/

namespace A354441.P4180586124939015566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A354435 (n + 1)) (A168537 (n + 1))

end

end A354441.P4180586124939015566

/-! ## A354441.P12746876174045293729

`A354435(n+1)^A050448(A000119(n))`
-/

namespace A354441.P12746876174045293729
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A354435 (n + 1) : ℚ) ^ (A050448 (A000119 n).toNat : ℤ)

end

end A354441.P12746876174045293729

/-! ## A354441.P16146516176591708930

`A354435(n+1)%A016742(A215245(n))`
-/

namespace A354441.P16146516176591708930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A354435 (n + 1)) (A016742 (A215245 n).toNat)

end

end A354441.P16146516176591708930

/-!
# A354442: The primes sums formed for each completed 3 X 3 square of numbers in A354441.

The programs for A354442, there is no canonical definition to state claims against.
-/

/-! ## A354442.P17313264451286911012

`∑{e}[5^(n+1), A354461(#)]`
-/

namespace A354442.P17313264451286911012
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 ^ (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A354461 (Nat.factorization (f1 n) p)

end

end A354442.P17313264451286911012

/-! ## A354442.P11544418424800757500

`A354461(∑[A361705(n)])`
-/

namespace A354442.P11544418424800757500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361705 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354461 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A354442.P11544418424800757500

/-! ## A354442.P15206014739833672711

`A354461(A024655(n+1))`
-/

namespace A354442.P15206014739833672711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354461 (A024655 (n + 1)).toNat

end

end A354442.P15206014739833672711

/-! ## A354442.P13506690134369813957

`A354461(A024656(n+1))`
-/

namespace A354442.P13506690134369813957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354461 (A024656 (n + 1)).toNat

end

end A354442.P13506690134369813957

/-!
# A354445: Number of polynomials per row where the minimum number of rows and polynomials per row necessary to transform A335105 into a triangular array are present.

The programs for A354445, there is no canonical definition to state claims against.
-/

/-! ## A354445.P7763856319181667633

`∑[A008836(A205479(3*n+1))]`
-/

namespace A354445.P7763856319181667633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008836 (A205479 (3 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A354445.P7763856319181667633

/-! ## A354445.P10266373669787865156

`∑[A057077(n*abs(2-∑[n])+n)]`
-/

namespace A354445.P10266373669787865156
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 ((n : ℤ) * |2 - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)| + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A354445.P10266373669787865156

/-! ## A354445.P15776153352163469807

`∑[(-1)^n^A325356(A325358(3*n+4))]`
-/

namespace A354445.P15776153352163469807
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((-1) ^ n : ℚ) ^ (A325356 (A325358 (3 * n + 4)).toNat : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A354445.P15776153352163469807

/-! ## A354445.P6260625410646344040

`∑[A071936(A159287(n+1)+1)]`
-/

namespace A354445.P6260625410646344040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071936 (A159287 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A354445.P6260625410646344040

/-! ## A354445.P4373508025145652960

`∑[(-1)^(1-A375125(3*n+1))]`
-/

namespace A354445.P4373508025145652960
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-1 : ℚ) ^ (1 - A375125 (3 * n + 1) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A354445.P4373508025145652960

/-!
# A354446: 11-gonal numbers which are products of three distinct primes.

The programs for A354446, there is no canonical definition to state claims against.
-/

/-! ## A354446.P6627181018672471516

`filter[A051682(n+1), A354926(#)]`
-/

namespace A354446.P6627181018672471516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051682 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354926 (f1 j).toNat = 1) n)

end

end A354446.P6627181018672471516

/-! ## A354446.P15245766779675572500

`filter[A213479(2*n), A354926(#)]`
-/

namespace A354446.P15245766779675572500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213479 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354926 (f1 j).toNat = 1) n)

end

end A354446.P15245766779675572500

/-! ## A354446.P2129629967895707172

`filter[A195160(2*n+1), A354926(#)]`
-/

namespace A354446.P2129629967895707172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195160 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354926 (f1 j).toNat = 1) n)

end

end A354446.P2129629967895707172

/-! ## A354446.P2497117492314187822

`filter[A210981(2*n+1), A354926(#)]`
-/

namespace A354446.P2497117492314187822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210981 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354926 (f1 j).toNat = 1) n)

end

end A354446.P2497117492314187822

/-! ## A354446.P15601902735001817565

`filter[A024401(3*n+1), A354926(#)]`
-/

namespace A354446.P15601902735001817565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024401 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354926 (f1 j).toNat = 1) n)

end

end A354446.P15601902735001817565

/-!
# A354448: 11-gonal numbers which are products of two distinct primes.

The programs for A354448, there is no canonical definition to state claims against.
-/

/-! ## A354448.P6186860015658408877

`filter[A051682(n+2), A354927(#)]`
-/

namespace A354448.P6186860015658408877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051682 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354927 (f1 j).toNat = 1) n)

end

end A354448.P6186860015658408877

/-! ## A354448.P15400641772599074212

`filter[A051682(n+1), A064911(#)]`
-/

namespace A354448.P15400641772599074212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051682 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A354448.P15400641772599074212

/-! ## A354448.P16802243317254296749

`filter[A051682(n+1), A280710(#)]`
-/

namespace A354448.P16802243317254296749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051682 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A280710 (f1 j).toNat = 1) n)

end

end A354448.P16802243317254296749

/-! ## A354448.P15007387278272502676

`filter[A213479(2*n), A064911(#)]`
-/

namespace A354448.P15007387278272502676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213479 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A354448.P15007387278272502676

/-! ## A354448.P14778415354136003145

`filter[A213479(2*n), A280710(#)]`
-/

namespace A354448.P14778415354136003145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213479 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A280710 (f1 j).toNat = 1) n)

end

end A354448.P14778415354136003145

/-!
# A354451: Number of middle divisors of 2*n-1.

The programs for A354451, there is no canonical definition to state claims against.
-/

/-! ## A354451.P9459722222514077739

`A067742(2*n+1)`
-/

namespace A354451.P9459722222514077739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067742 (2 * n + 1)

end

end A354451.P9459722222514077739

/-! ## A354451.P12618222345245465938

`A348406(Δ[n²])-1`
-/

namespace A354451.P12618222345245465938
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348406 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - 1

end

end A354451.P12618222345245465938

/-! ## A354451.P11502509787229821867

`A025581(2*A348406(2*n+1)²)`
-/

namespace A354451.P11502509787229821867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (2 * A348406 (2 * n + 1) ^ 2).toNat

end

end A354451.P11502509787229821867

/-! ## A354451.P8555455357503683041

`A348951(4*n+2)`
-/

namespace A354451.P8555455357503683041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348951 (4 * n + 2)

end

end A354451.P8555455357503683041

/-! ## A354451.P468154361659628512

`dr(A067742(comp[2*n]))`
-/

namespace A354451.P468154361659628512
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A067742 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n))

end

end A354451.P468154361659628512

/-! ## A354451.P10684374858838266546

`A000005(2*n+1)-A067743(2*n+1)`
-/

namespace A354451.P10684374858838266546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (2 * n + 1) - A067743 (2 * n + 1)

end

end A354451.P10684374858838266546

/-! ## A354451.P3130700829368782218

`A001227(2*n+1)-A067743(2*n+1)`
-/

namespace A354451.P3130700829368782218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (2 * n + 1) - A067743 (2 * n + 1)

end

end A354451.P3130700829368782218

/-! ## A354451.P17225500022670678728

`A082647(2*n+1)-A131576(2*n+1)`
-/

namespace A354451.P17225500022670678728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082647 (2 * n + 1) - A131576 (2 * n + 1)

end

end A354451.P17225500022670678728

/-! ## A354451.P13631103282198785591

`A000005(2*n+1)-A281009(2*n+1)`
-/

namespace A354451.P13631103282198785591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (2 * n + 1) - A281009 (2 * n + 1)

end

end A354451.P13631103282198785591

/-! ## A354451.P15616658007685682516

`A001227(2*n+1)-A281009(2*n+1)`
-/

namespace A354451.P15616658007685682516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (2 * n + 1) - A281009 (2 * n + 1)

end

end A354451.P15616658007685682516

/-! ## A354451.P13745822524658991664

`A005843(A082647(2*n+1))-A001227(2*n+1)`
-/

namespace A354451.P13745822524658991664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A082647 (2 * n + 1)).toNat - A001227 (2 * n + 1)

end

end A354451.P13745822524658991664

/-! ## A354451.P1439213077616008422

`A001227(2*n+1)-A005843(A131576(2*n+1))`
-/

namespace A354451.P1439213077616008422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (2 * n + 1) - A005843 (A131576 (2 * n + 1)).toNat

end

end A354451.P1439213077616008422

/-! ## A354451.P2586502494862868240

`A333781(4*n+2)`
-/

namespace A354451.P2586502494862868240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333781 (4 * n + 2)

end

end A354451.P2586502494862868240

/-! ## A354451.P13294843284247508549

`A333809(4*n+2)`
-/

namespace A354451.P13294843284247508549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333809 (4 * n + 2)

end

end A354451.P13294843284247508549

/-! ## A354451.P12090143939460695208

`abs(A348515(4*n+2))`
-/

namespace A354451.P12090143939460695208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A348515 (4 * n + 2)|

end

end A354451.P12090143939460695208

/-!
# A354452: Number of middle divisors of 2*n.

The programs for A354452, there is no canonical definition to state claims against.
-/

/-! ## A354452.P13016986762873698674

`A067742(2*(n+1))`
-/

namespace A354452.P13016986762873698674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067742 (2 * (n + 1))

end

end A354452.P13016986762873698674

/-! ## A354452.P2350729945389096209

`A348406(2*(n+1))-1`
-/

namespace A354452.P2350729945389096209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348406 (2 * (n + 1)) - 1

end

end A354452.P2350729945389096209

/-! ## A354452.P18400686526398106638

`abs(1-A348406(n+2+n))`
-/

namespace A354452.P18400686526398106638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A348406 (n + 2 + n)|

end

end A354452.P18400686526398106638

/-! ## A354452.P9096808063025320476

`A247802(A348406(2*(n+1)))`
-/

namespace A354452.P9096808063025320476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247802 (A348406 (2 * (n + 1))).toNat

end

end A354452.P9096808063025320476

/-! ## A354452.P13273876415332553732

`A025581(2*A348406(2*(n+1))²)`
-/

namespace A354452.P13273876415332553732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (2 * A348406 (2 * (n + 1)) ^ 2).toNat

end

end A354452.P13273876415332553732

/-! ## A354452.P14218767928171387627

`A001227(n+1)-2*A131576(2*(n+1))`
-/

namespace A354452.P14218767928171387627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (n + 1) - 2 * A131576 (2 * (n + 1))

end

end A354452.P14218767928171387627

/-! ## A354452.P2939775998958862468

`dr(A067742(record[2-xor(1, -n)]))`
-/

namespace A354452.P2939775998958862468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - Int.xor 1 (-(n : ℤ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A067742 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat)

end

end A354452.P2939775998958862468

/-! ## A354452.P7476593694733715314

`Δ[A060831(n)]-A281009(2*(n+1))`
-/

namespace A354452.P7476593694733715314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060831 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A281009 (2 * (n + 1))

end

end A354452.P7476593694733715314

/-! ## A354452.P13076501262149088570

`A001227(n+1)-A281009(2*(n+1))`
-/

namespace A354452.P13076501262149088570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (n + 1) - A281009 (2 * (n + 1))

end

end A354452.P13076501262149088570

/-! ## A354452.P159421980639040076

`A000005(2*(n+1))-A067743(2*(n+1))`
-/

namespace A354452.P159421980639040076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (2 * (n + 1)) - A067743 (2 * (n + 1))

end

end A354452.P159421980639040076

/-! ## A354452.P10142105047289826481

`2*A082647(2*(n+1))-A001227(n+1)`
-/

namespace A354452.P10142105047289826481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A082647 (2 * (n + 1)) - A001227 (n + 1)

end

end A354452.P10142105047289826481

/-! ## A354452.P2458297101861606718

`A082647(2*(n+1))-A131576(2*(n+1))`
-/

namespace A354452.P2458297101861606718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082647 (2 * (n + 1)) - A131576 (2 * (n + 1))

end

end A354452.P2458297101861606718

/-! ## A354452.P4761027346741586459

`A240542(2*(n+1))-A240542(2*n+1)`
-/

namespace A354452.P4761027346741586459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240542 (2 * (n + 1)) - A240542 (2 * n + 1)

end

end A354452.P4761027346741586459

/-! ## A354452.P17106887424172463284

`A334954(2*(n+1))-(A067743(2*(n+1))+1)`
-/

namespace A354452.P17106887424172463284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334954 (2 * (n + 1)) - (A067743 (2 * (n + 1)) + 1)

end

end A354452.P17106887424172463284

/-! ## A354452.P5333736229837402943

`A065033(A338723(2*(n+1)))-A065033(A338723(2*n+1))`
-/

namespace A354452.P5333736229837402943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A338723 (2 * (n + 1))).toNat - A065033 (A338723 (2 * n + 1)).toNat

end

end A354452.P5333736229837402943

/-!
# A354454: Nearest integer to sqrt(8*Pi*n).

The programs for A354454, the canonical program `A354454.P13516656335249468132` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A354454 has offset 0).

The definition of A354454 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A354454.P13516656335249468132

`floor(sqrt(8*π*n)+1/2)`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A354454

/-- `floor(sqrt(8*π*n)+1/2)` -/
def P13516656335249468132.Spec : Prop :=
  ∀ n, P13516656335249468132.a n = A354454 n

theorem P13516656335249468132.correct : P13516656335249468132.Spec := by
  intro n
  simp only [A354454]

end A354454

/-! ## A354454.P6068577496394582240

`round(sqrt(A008591(3*n)-A057361(3*n+2)+1))`
-/

namespace A354454.P6068577496394582240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A008591 (3 * n) - A057361 (3 * n + 2) + 1 : ℝ))

end

end A354454.P6068577496394582240

namespace A354454

/-- `round(sqrt(A008591(3*n)-A057361(3*n+2)+1))` -/
def P6068577496394582240.Spec : Prop :=
  ∀ n, P6068577496394582240.a n = A354454 n

end A354454

/-! ## A354454.P7845594821035613085

`A121856(A326178(2*n)+A248758(n))`
-/

namespace A354454.P7845594821035613085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121856 (A326178 (2 * n) + A248758 n).toNat

end

end A354454.P7845594821035613085

namespace A354454

/-- `A121856(A326178(2*n)+A248758(n))` -/
def P7845594821035613085.Spec : Prop :=
  ∀ n, P7845594821035613085.a n = A354454 n

end A354454

/-! ## A354454.P3377084166461975081

`A002024(A189361(3*n+1))%A001412(n)`
-/

namespace A354454.P3377084166461975081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002024 (A189361 (3 * n + 1)).toNat) (A001412 n)

end

end A354454.P3377084166461975081

namespace A354454

/-- `A002024(A189361(3*n+1))%A001412(n)` -/
def P3377084166461975081.Spec : Prop :=
  ∀ n, P3377084166461975081.a n = A354454 n

end A354454

/-! ## A354454.P9740323896717262517

`round(5*sqrt(n))%A029532(n+5)`
-/

namespace A354454.P9740323896717262517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (5 * Real.sqrt (n : ℝ))) (A029532 (n + 5))

end

end A354454.P9740323896717262517

namespace A354454

/-- `round(5*sqrt(n))%A029532(n+5)` -/
def P9740323896717262517.Spec : Prop :=
  ∀ n, P9740323896717262517.a n = A354454 n

end A354454

/-!
# A354455: a(n) is the first composite number in the n-th row of A328739.

The programs for A354455, there is no canonical definition to state claims against.
-/

/-! ## A354455.P14838472500551776292

`∏{e}[A326138(n+1), 2*#]`
-/

namespace A354455.P14838472500551776292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326138 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, 2 * Nat.factorization (f1 n).natAbs p

end

end A354455.P14838472500551776292

/-! ## A354455.P15643875396334314206

`A355911(A107976(n+1))`
-/

namespace A354455.P15643875396334314206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355911 (A107976 (n + 1)).toNat

end

end A354455.P15643875396334314206

/-! ## A354455.P13218600354118334847

`A355911(Δ[A212959(n+2)])`
-/

namespace A354455.P13218600354118334847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212959 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355911 (f1 (n + 1) - f1 n).toNat

end

end A354455.P13218600354118334847

/-! ## A354455.P2182640752765039370

`A355911(A007310(n+5)-4)`
-/

namespace A354455.P2182640752765039370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355911 (A007310 (n + 5) - 4).toNat

end

end A354455.P2182640752765039370

/-! ## A354455.P15998921732491068348

`4*A365722(A031367(2*n+3))`
-/

namespace A354455.P15998921732491068348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A365722 (A031367 (2 * n + 3)).toNat

end

end A354455.P15998921732491068348

/-!
# A354457: a(n) is the least integer for which there exist two disjoint sets of n positive integers each, all distinct, for which the product of the integers in either set is a(n).

The programs for A354457, there is no canonical definition to state claims against.
-/

/-! ## A354457.P17618287276438268953

`A081457(2*(n+2))`
-/

namespace A354457.P17618287276438268953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081457 (2 * (n + 2))

end

end A354457.P17618287276438268953

/-! ## A354457.P3194463870251457701

`sqrt(A081456(2*(n+2)))`
-/

namespace A354457.P3194463870251457701
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A081456 (2 * (n + 2)) : ℝ)

end

end A354457.P3194463870251457701

/-! ## A354457.P12156125052015205078

`A081456(2*n+4)^(2/4)`
-/

namespace A354457.P12156125052015205078
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A081456 (2 * n + 4) : ℝ) ^ ((2 : ℚ) / 4 : ℝ)

end

end A354457.P12156125052015205078

/-! ## A354457.P11027344352678603743

`record[A081457(A360005(n+3))]`
-/

namespace A354457.P11027344352678603743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081457 (A360005 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A354457.P11027344352678603743

/-!
# A354458: Number of commuting pairs of equivalence relations on [n].

The programs for A354458, there is no canonical definition to state claims against.
-/

/-! ## A354458.P6077846846196286701

`A187181(Δ[A058307(n)])`
-/

namespace A354458.P6077846846196286701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058307 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187181 (f1 (n + 1) - f1 n).toNat

end

end A354458.P6077846846196286701

/-! ## A354458.P9343806452648175762

`A194465(A005316(2*n))`
-/

namespace A354458.P9343806452648175762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194465 (A005316 (2 * n)).toNat

end

end A354458.P9343806452648175762

/-!
# A354459: Lazy cutter's sequence (see Comments).

The programs for A354459, there is no canonical definition to state claims against.
-/

/-! ## A354459.P8009413056774910551

`A038569(record[xor(3, n)])-1`
-/

namespace A354459.P8009413056774910551
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038569 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) - 1

end

end A354459.P8009413056774910551

/-! ## A354459.P7967954155702777051

`∑[abs(Δ[A038567(2*n)])]`
-/

namespace A354459.P7967954155702777051
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038567 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A354459.P7967954155702777051

/-! ## A354459.P15823852809884568882

`A038567(2*(n+1))-1`
-/

namespace A354459.P15823852809884568882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038567 (2 * (n + 1)) - 1

end

end A354459.P15823852809884568882

/-! ## A354459.P17766562306065595913

`A038568(4*(n+1))-1`
-/

namespace A354459.P17766562306065595913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038568 (4 * (n + 1)) - 1

end

end A354459.P17766562306065595913

/-! ## A354459.P3863481954237836240

`A336755(3*n+2)-1`
-/

namespace A354459.P3863481954237836240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336755 (3 * n + 2) - 1

end

end A354459.P3863481954237836240

/-! ## A354459.P7131092490825319615

`A336756(n+1)/3-1`
-/

namespace A354459.P7131092490825319615
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A336756 (n + 1) : ℚ) / 3 - 1

end

end A354459.P7131092490825319615

/-! ## A354459.P17218097586820912839

`A038569(4*n+3)-1`
-/

namespace A354459.P17218097586820912839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038569 (4 * n + 3) - 1

end

end A354459.P17218097586820912839

/-! ## A354459.P1875153570045407970

`comp[∑[A326790(n+1)]]-n`
-/

namespace A354459.P1875153570045407970
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326790 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)

end

end A354459.P1875153570045407970

/-! ## A354459.P2663115368512608145

`A071912(4*(n+1)+3)-1`
-/

namespace A354459.P2663115368512608145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071912 (4 * (n + 1) + 3) - 1

end

end A354459.P2663115368512608145

/-! ## A354459.P6720381167303159602

`∑[char[floor((A002088(n)-1)/2)]]+1`
-/

namespace A354459.P6720381167303159602
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A002088 n - 1 : ℚ) / 2⌋

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A354459.P6720381167303159602

/-!
# A354460: The primes sums formed for each completed 2 X 2 square of numbers in A354453.

The programs for A354460, there is no canonical definition to state claims against.
-/

/-! ## A354460.P11959744162762369157

`A087200(n+1)+A031347(A035346(2*(n+1)))`
-/

namespace A354460.P11959744162762369157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087200 (n + 1) + A031347 (A035346 (2 * (n + 1))).toNat

end

end A354460.P11959744162762369157

/-!
# A354462: a(n) is the least number k such that there are exactly n pairs (p,q) of primes with p

The programs for A354462, there is no canonical definition to state claims against.
-/

/-! ## A354462.P2533915696500986169

`A116417(A003698(n+1)-A003714(n))`
-/

namespace A354462.P2533915696500986169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116417 (A003698 (n + 1) - A003714 n).toNat

end

end A354462.P2533915696500986169

/-!
# A354463: a(n) is the number of trailing zeros in (2^n)!.

The programs for A354463, the canonical program `A354463.P2239529858229905820` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A354463 has offset 0).

The definition of A354463 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A354463.P2239529858229905820

`A027868(A000079(n))`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A354463

/-- `A027868(A000079(n))` -/
def P2239529858229905820.Spec : Prop :=
  ∀ n, P2239529858229905820.a n = A354463 n

theorem P2239529858229905820.correct : P2239529858229905820.Spec := by
  intro n
  simp only [A354463]

end A354463

/-! ## A354463.P332094922549172989

`(2^n-A183226(n))/4`
-/

namespace A354463.P332094922549172989
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 ^ n : ℤ) - A183226 n : ℚ) / 4

end

end A354463.P332094922549172989

namespace A354463

/-- `(2^n-A183226(n))/4` -/
def P332094922549172989.Spec : Prop :=
  ∀ n, P332094922549172989.a n = (A354463 n : ℚ)

end A354463

/-! ## A354463.P2050827474383261336

`abs((A000079(n)-A183226(n))/4)`
-/

namespace A354463.P2050827474383261336
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A000079 n - A183226 n : ℚ) / 4|

end

end A354463.P2050827474383261336

namespace A354463

/-- `abs((A000079(n)-A183226(n))/4)` -/
def P2050827474383261336.Spec : Prop :=
  ∀ n, P2050827474383261336.a n = (A354463 n : ℚ)

end A354463

/-! ## A354463.P12979635839747953912

`floor((A000079(A233583(n+1))-A183226(n))/4)`
-/

namespace A354463.P12979635839747953912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000079 (A233583 (n + 1)).toNat - A183226 n : ℚ) / 4⌋

end

end A354463.P12979635839747953912

namespace A354463

/-- `floor((A000079(A233583(n+1))-A183226(n))/4)` -/
def P12979635839747953912.Spec : Prop :=
  ∀ n, P12979635839747953912.a n = A354463 n

end A354463

/-! ## A354463.P14598871609013604828

`A173228(round(sqrt(n²+1)))%A011782(n)`
-/

namespace A354463.P14598871609013604828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A173228 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat) (A011782 n)

end

end A354463.P14598871609013604828

namespace A354463

/-- `A173228(round(sqrt(n²+1)))%A011782(n)` -/
def P14598871609013604828.Spec : Prop :=
  ∀ n, P14598871609013604828.a n = A354463 n

end A354463

/-! ## A354463.P10587743616047351186

`A173228(A028310(n))%A000079(n)`
-/

namespace A354463.P10587743616047351186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A173228 (A028310 n).toNat) (A000079 n)

end

end A354463.P10587743616047351186

namespace A354463

/-- `A173228(A028310(n))%A000079(n)` -/
def P10587743616047351186.Spec : Prop :=
  ∀ n, P10587743616047351186.a n = A354463 n

end A354463

/-!
# A354464: Number of distinct bracelets of length n (A000029) that eventually result in a cycle with length 2 or greater when used as the starting conditions for a rule 18 cellular automaton in a cyclic universe of circumference n.

The programs for A354464, there is no canonical definition to state claims against.
-/

/-! ## A354464.P8368159208591138701

`A073189(A027097(n+5)-A210613(n+1))`
-/

namespace A354464.P8368159208591138701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073189 (A027097 (n + 5) - A210613 (n + 1)).toNat

end

end A354464.P8368159208591138701

/-!
# A354465: Number of connected simple graphs for which D.x = 1 has no solutions when D is the distance matrix.

The programs for A354465, there is no canonical definition to state claims against.
-/

/-! ## A354465.P16922379195986625398

`A150039(n)%A101447(A255538(n+1))`
-/

namespace A354465.P16922379195986625398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A150039 n) (A101447 (A255538 (n + 1)).toNat)

end

end A354465.P16922379195986625398

/-! ## A354465.P18176646864440036818

`xor(A067394(n+1), A274201(A317880(n+1)))`
-/

namespace A354465.P18176646864440036818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A067394 (n + 1)) (A274201 (A317880 (n + 1)).toNat)

end

end A354465.P18176646864440036818

/-!
# A354467: Positive integers whose prime factors are congruent to 1 (mod 12).

The programs for A354467, the canonical program `A354467.P1434315419781372648` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A354467 has offset 1).

The definition of A354467 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3366 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A354467.P1434315419781372648

`∩[A004611(n+1), A072330(n+1)]`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A354467

/-- `∩[A004611(n+1), A072330(n+1)]` -/
def P1434315419781372648.Spec : Prop :=
  ∀ n, (P1434315419781372648.a n : ℤ) = A354467 (n + 1)

theorem P1434315419781372648.correct : P1434315419781372648.Spec := by
  intro n
  simp only [A354467, Nat.add_sub_cancel]

end A354467

/-! ## A354467.P17960229423870242382

`∩[A004611(n+1), A004613(n+1)]`
-/

namespace A354467.P17960229423870242382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004611 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004613 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A354467.P17960229423870242382

namespace A354467

/-- `∩[A004611(n+1), A004613(n+1)]` -/
def P17960229423870242382.Spec : Prop :=
  ∀ n, (P17960229423870242382.a n : ℤ) = A354467 (n + 1)

end A354467

/-! ## A354467.P11769787564816006866

`∩[A004613(n+1), A072330(n+1)]`
-/

namespace A354467.P11769787564816006866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004613 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072330 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A354467.P11769787564816006866

namespace A354467

/-- `∩[A004613(n+1), A072330(n+1)]` -/
def P11769787564816006866.Spec : Prop :=
  ∀ n, (P11769787564816006866.a n : ℤ) = A354467 (n + 1)

end A354467

/-! ## A354467.P9729837152909919241

`∩[A004613(n+1), A034017(n+1)]`
-/

namespace A354467.P9729837152909919241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004613 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034017 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A354467.P9729837152909919241

namespace A354467

/-- `∩[A004613(n+1), A034017(n+1)]` -/
def P9729837152909919241.Spec : Prop :=
  ∀ n, (P9729837152909919241.a n : ℤ) = A354467 (n + 1)

end A354467

/-! ## A354467.P5851723729903986677

`∩[A034017(n+1), A072330(n+1)]`
-/

namespace A354467.P5851723729903986677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034017 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072330 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A354467.P5851723729903986677

namespace A354467

/-- `∩[A034017(n+1), A072330(n+1)]` -/
def P5851723729903986677.Spec : Prop :=
  ∀ n, (P5851723729903986677.a n : ℤ) = A354467 (n + 1)

end A354467

/-! ## A354467.P9940394181737204766

`∩[A004613(n+1), A364614(n+1)]`
-/

namespace A354467.P9940394181737204766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004613 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364614 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A354467.P9940394181737204766

namespace A354467

/-- `∩[A004613(n+1), A364614(n+1)]` -/
def P9940394181737204766.Spec : Prop :=
  ∀ n, (P9940394181737204766.a n : ℤ) = A354467 (n + 1)

end A354467

/-! ## A354467.P11480528878813893554

`∩[A072330(n+1), A364614(n+1)]`
-/

namespace A354467.P11480528878813893554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072330 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364614 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A354467.P11480528878813893554

namespace A354467

/-- `∩[A072330(n+1), A364614(n+1)]` -/
def P11480528878813893554.Spec : Prop :=
  ∀ n, (P11480528878813893554.a n : ℤ) = A354467 (n + 1)

end A354467

/-! ## A354467.P3977788540017274542

`∩[A004611(n+1), A008784(n+1)]`
-/

namespace A354467.P3977788540017274542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004611 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008784 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A354467.P3977788540017274542

namespace A354467

/-- `∩[A004611(n+1), A008784(n+1)]` -/
def P3977788540017274542.Spec : Prop :=
  ∀ n, (P3977788540017274542.a n : ℤ) = A354467 (n + 1)

end A354467

/-! ## A354467.P16716465500174049115

`∩[A008784(n+1), A034017(n+1)]`
-/

namespace A354467.P16716465500174049115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008784 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034017 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A354467.P16716465500174049115

namespace A354467

/-- `∩[A008784(n+1), A034017(n+1)]` -/
def P16716465500174049115.Spec : Prop :=
  ∀ n, (P16716465500174049115.a n : ℤ) = A354467 (n + 1)

end A354467

/-! ## A354467.P3005763039436501979

`∩[A008784(n+1), A072330(n+1)]`
-/

namespace A354467.P3005763039436501979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008784 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072330 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A354467.P3005763039436501979

namespace A354467

/-- `∩[A008784(n+1), A072330(n+1)]` -/
def P3005763039436501979.Spec : Prop :=
  ∀ n, (P3005763039436501979.a n : ℤ) = A354467 (n + 1)

end A354467

/-! ## A354467.P3926439696092106929

`∩[A008784(n+1), A364614(n+1)]`
-/

namespace A354467.P3926439696092106929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008784 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364614 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A354467.P3926439696092106929

namespace A354467

/-- `∩[A008784(n+1), A364614(n+1)]` -/
def P3926439696092106929.Spec : Prop :=
  ∀ n, (P3926439696092106929.a n : ℤ) = A354467 (n + 1)

end A354467

/-! ## A354467.P8812983995907995586

`filter[A004613(n+1), A319691(#)]`
-/

namespace A354467.P8812983995907995586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004613 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A319691 (f1 j).toNat = 1) n)

end

end A354467.P8812983995907995586

namespace A354467

/-- `filter[A004613(n+1), A319691(#)]` -/
def P8812983995907995586.Spec : Prop :=
  ∀ n, P8812983995907995586.a n = A354467 (n + 1)

end A354467

/-! ## A354467.P5034791702795412835

`filter[A008784(n+1), A319691(#)]`
-/

namespace A354467.P5034791702795412835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008784 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A319691 (f1 j).toNat = 1) n)

end

end A354467.P5034791702795412835

namespace A354467

/-- `filter[A008784(n+1), A319691(#)]` -/
def P5034791702795412835.Spec : Prop :=
  ∀ n, P5034791702795412835.a n = A354467 (n + 1)

end A354467

/-! ## A354467.P904578763895873742

`filter[A072330(n+1), A319691(#)]`
-/

namespace A354467.P904578763895873742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072330 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A319691 (f1 j).toNat = 1) n)

end

end A354467.P904578763895873742

namespace A354467

/-- `filter[A072330(n+1), A319691(#)]` -/
def P904578763895873742.Spec : Prop :=
  ∀ n, P904578763895873742.a n = A354467 (n + 1)

end A354467

/-! ## A354467.P8430272267330349941

`∩[A004613(n+1), A319838(n+1)]`
-/

namespace A354467.P8430272267330349941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004613 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319838 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A354467.P8430272267330349941

namespace A354467

/-- `∩[A004613(n+1), A319838(n+1)]` -/
def P8430272267330349941.Spec : Prop :=
  ∀ n, (P8430272267330349941.a n : ℤ) = A354467 (n + 1)

end A354467

/-! ## A354467.P2038821903456236904

`∩[A072330(n+1), A319838(n+1)]`
-/

namespace A354467.P2038821903456236904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072330 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319838 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A354467.P2038821903456236904

namespace A354467

/-- `∩[A072330(n+1), A319838(n+1)]` -/
def P2038821903456236904.Spec : Prop :=
  ∀ n, (P2038821903456236904.a n : ℤ) = A354467 (n + 1)

end A354467

/-! ## A354467.P1806851582959521736

`filter[A057125(n+1), A319691(#)]`
-/

namespace A354467.P1806851582959521736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057125 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A319691 (f1 j).toNat = 1) n)

end

end A354467.P1806851582959521736

namespace A354467

/-- `filter[A057125(n+1), A319691(#)]` -/
def P1806851582959521736.Spec : Prop :=
  ∀ n, P1806851582959521736.a n = A354467 (n + 1)

end A354467

/-! ## A354467.P14248330959575273933

`∩[A004611(n+1), A057125(n+1)]`
-/

namespace A354467.P14248330959575273933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004611 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057125 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A354467.P14248330959575273933

namespace A354467

/-- `∩[A004611(n+1), A057125(n+1)]` -/
def P14248330959575273933.Spec : Prop :=
  ∀ n, (P14248330959575273933.a n : ℤ) = A354467 (n + 1)

end A354467

/-! ## A354467.P8261127745677512032

`∩[A004613(n+1), A057125(n+1)]`
-/

namespace A354467.P8261127745677512032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004613 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057125 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A354467.P8261127745677512032

namespace A354467

/-- `∩[A004613(n+1), A057125(n+1)]` -/
def P8261127745677512032.Spec : Prop :=
  ∀ n, (P8261127745677512032.a n : ℤ) = A354467 (n + 1)

end A354467

/-! ## A354467.P3779293704997846664

`filter[A057129(n+1), A319691(#)]`
-/

namespace A354467.P3779293704997846664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057129 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A319691 (f1 j).toNat = 1) n)

end

end A354467.P3779293704997846664

namespace A354467

/-- `filter[A057129(n+1), A319691(#)]` -/
def P3779293704997846664.Spec : Prop :=
  ∀ n, P3779293704997846664.a n = A354467 (n + 1)

end A354467

/-!
# A354468: Number of possible ordered pairs (n_1, S) where (n_1, n_2, ..., n_k) is a partition of n, n_1 is the largest element of the partition, and S = Sum_{j=1..k} n_j^2.

The programs for A354468, there is no canonical definition to state claims against.
-/

/-! ## A354468.P4276341682942785353

`A133137(A008630(n))`
-/

namespace A354468.P4276341682942785353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133137 (A008630 n).toNat

end

end A354468.P4276341682942785353

/-! ## A354468.P15850443068122696602

`A133137(A008636(n))`
-/

namespace A354468.P15850443068122696602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133137 (A008636 n).toNat

end

end A354468.P15850443068122696602

/-! ## A354468.P13604024369230112195

`A089867(A355027(n))`
-/

namespace A354468.P13604024369230112195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089867 (A355027 n).toNat

end

end A354468.P13604024369230112195

/-! ## A354468.P16864506698086273230

`A133137(A339672(n))`
-/

namespace A354468.P16864506698086273230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133137 (A339672 (n + 28)).toNat

end

end A354468.P16864506698086273230

/-! ## A354468.P6034574773824299611

`A133137(A347573(n))`
-/

namespace A354468.P6034574773824299611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133137 (A347573 (n + 21)).toNat

end

end A354468.P6034574773824299611

/-!
# A354469: Write n in primorial base, then replace each nonzero digit d of radix p with p-d.

The programs for A354469, there is no canonical definition to state claims against.
-/

/-! ## A354469.P14672301275202204080

`A343046(∑[n+3])-n`
-/

namespace A354469.P14672301275202204080
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343046 (∑ j ∈ Finset.range (n + 1), f1 j) - (n : ℤ)

end

end A354469.P14672301275202204080

/-! ## A354469.P2057628743428381918

`A328841(A276154(n))-n`
-/

namespace A354469.P2057628743428381918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328841 (A276154 n).toNat - (n : ℤ)

end

end A354469.P2057628743428381918

/-! ## A354469.P883843870742210064

`A373158(A328571(n))-n`
-/

namespace A354469.P883843870742210064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373158 (A328571 n).toNat - (n : ℤ)

end

end A354469.P883843870742210064

/-! ## A354469.P16878177254086477156

`A328841(lt[A329048(n), (n+3)/2])-n`
-/

namespace A354469.P16878177254086477156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329048 n

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328841 (SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n) - (n : ℤ)

end

end A354469.P16878177254086477156

/-! ## A354469.P15702964490388417410

`A373158(A276086(n)/A328475(n)*A328573(n))-n`
-/

namespace A354469.P15702964490388417410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373158 (SequenceMachineLib.roundAway ((A276086 n : ℚ) / (A328475 n : ℚ) * (A328573 n : ℚ))).toNat - (n : ℤ)

end

end A354469.P15702964490388417410

/-!
# A354470: Square array A(n, k), n, k >= 0, read by antidiagonals; the primorial base expansion of A(n, k) is obtained by adding componentwise and reducing modulo their radix the digits of the primorial base expansions of n and k.

The programs for A354470, there is no canonical definition to state claims against.
-/

/-! ## A354470.P12641103038359666789

`A354438(n)%17`
-/

namespace A354470.P12641103038359666789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A354438 n) 17

end

end A354470.P12641103038359666789

/-! ## A354470.P11820589504555604895

`A354438(n)+char[A224452(n)]`
-/

namespace A354470.P11820589504555604895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224452 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354438 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A354470.P11820589504555604895

/-! ## A354470.P416709180648376519

`A005555(A354438(n)+1)-2`
-/

namespace A354470.P416709180648376519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005555 (A354438 n + 1).toNat - 2

end

end A354470.P416709180648376519

/-! ## A354470.P13988730754511836505

`A354438(A353473(n+1)+n)`
-/

namespace A354470.P13988730754511836505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354438 (A353473 (n + 1) + (n : ℤ)).toNat

end

end A354470.P13988730754511836505

/-! ## A354470.P14517930265617823957

`A354438(n*A354487(n+4))`
-/

namespace A354470.P14517930265617823957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354438 ((n : ℤ) * A354487 (n + 4)).toNat

end

end A354470.P14517930265617823957

/-! ## A354470.P11016851538120113050

`A354438(n)^A354487(n+4)`
-/

namespace A354470.P11016851538120113050
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A354438 n : ℚ) ^ (A354487 (n + 4) : ℤ)

end

end A354470.P11016851538120113050

/-! ## A354470.P6826695870434275376

`A354438(n)+char[A352229(n+1)]`
-/

namespace A354470.P6826695870434275376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352229 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354438 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A354470.P6826695870434275376

/-! ## A354470.P13589794081982396663

`A354438(n)+char[A352656(n+2)]`
-/

namespace A354470.P13589794081982396663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352656 (n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354438 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A354470.P13589794081982396663

/-! ## A354470.P4639074852718000076

`A354438(n)+char[A367972(n+3)]`
-/

namespace A354470.P4639074852718000076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367972 (n + 3)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354438 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A354470.P4639074852718000076

/-! ## A354470.P9413960902706822475

`A354438(n)+char[A020905(n+4)]`
-/

namespace A354470.P9413960902706822475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020905 (n + 4)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354438 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A354470.P9413960902706822475

/-!
# A354474: Numbers that can be written as reversals in two different bases, where the bases are also reversals of each other. (Trailing zeros are not allowed.)

The programs for A354474, there is no canonical definition to state claims against.
-/

/-! ## A354474.P3425057591824649148

`A355313(C(A278297(n)+1+n, n))`
-/

namespace A354474.P3425057591824649148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355313 (Nat.choose (A278297 n + 1 + (n : ℤ)).toNat n)

end

end A354474.P3425057591824649148

/-! ## A354474.P5163197870615366942

`A355313(n+1)%A157428(2*n+5)`
-/

namespace A354474.P5163197870615366942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A355313 (n + 1)) (A157428 (2 * n + 5))

end

end A354474.P5163197870615366942

/-! ## A354474.P10584454591156949108

`A355313(n+1)+A000007(A050531(n))`
-/

namespace A354474.P10584454591156949108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355313 (n + 1) + A000007 (A050531 n).toNat

end

end A354474.P10584454591156949108

/-! ## A354474.P17680488661579259804

`A355313(n+1)+A010054(A154357(n))`
-/

namespace A354474.P17680488661579259804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355313 (n + 1) + A010054 (A154357 n).toNat

end

end A354474.P17680488661579259804

/-! ## A354474.P12135622456349084253

`A355313(n+1)+A165878(A165878(n))`
-/

namespace A354474.P12135622456349084253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355313 (n + 1) + A165878 (A165878 n).toNat

end

end A354474.P12135622456349084253

/-!
# A354475: Number of fusion rings of multiplicity 2 and rank n.

The programs for A354475, there is no canonical definition to state claims against.
-/

/-! ## A354475.P16148876073099302428

`record[Δ[A097364(ceil(2^(n-1)))]]`
-/

namespace A354475.P16148876073099302428
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097364 ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉.toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A354475.P16148876073099302428

/-! ## A354475.P3327616477612616193

`A004721(A004721(a(n-1))²)` with `a(0)=0, a(1)=1, a(2)=3`
-/

namespace A354475.P3327616477612616193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 3] fun n a =>
  A004721 (A004721 (a (n - 1)).toNat ^ 2).toNat

end

end A354475.P3327616477612616193

/-!
# A354476: Number of fusion rings of multiplicity 3 and rank n.

The programs for A354476, there is no canonical definition to state claims against.
-/

/-! ## A354476.P5670291579426125651

`A326875(A100094(n))`
-/

namespace A354476.P5670291579426125651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326875 (A100094 n).toNat

end

end A354476.P5670291579426125651

/-!
# A354477: Number of fusion rings of multiplicity 4 and rank n.

The programs for A354477, there is no canonical definition to state claims against.
-/

/-! ## A354477.P10961703129057333659

`A074239(∑[A296788(n)])`
-/

namespace A354477.P10961703129057333659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296788 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074239 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A354477.P10961703129057333659

/-!
# A354478: a(n) is the numerator of Sum_{k=1..n} 1 / Stirling1(n,k).

The programs for A354478, there is no canonical definition to state claims against.
-/

/-! ## A354478.P10804818057441464363

`A016777(A292385(a(n-1)+2+n))` with `a(0)=1, a(1)=0`
-/

namespace A354478.P10804818057441464363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A016777 (A292385 (a (n - 1) + 2 + (n : ℤ)).toNat).toNat

end

end A354478.P10804818057441464363

/-!
# A354479: a(n) is the denominator of Sum_{k=1..n} 1 / Stirling1(n,k).

The programs for A354479, there is no canonical definition to state claims against.
-/

/-! ## A354479.P837230514178227382

`A063039(n+1)/A063059(2^n-1)`
-/

namespace A354479.P837230514178227382
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A063039 (n + 1) : ℚ) / (A063059 (2 ^ n - 1) : ℚ)

end

end A354479.P837230514178227382

/-! ## A354479.P5192845948884771061

`A054868(A000522(n))*A112289(n+1)`
-/

namespace A354479.P5192845948884771061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054868 (A000522 n).toNat * A112289 (n + 1)

end

end A354479.P5192845948884771061

/-! ## A354479.P6518094564609090471

`A112289(n+1)*A257023(A052720(n))`
-/

namespace A354479.P6518094564609090471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112289 (n + 1) * A257023 (A052720 n).toNat

end

end A354479.P6518094564609090471

/-!
# A354480: a(n) is the smallest decimal palindrome with Hamming weight n (i.e., with exactly n 1's when written in binary).

The programs for A354480, there is no canonical definition to state claims against.
-/

/-! ## A354480.P3041788755441835608

`A265571(A265556(2^n-1))`
-/

namespace A354480.P3041788755441835608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265571 (A265556 (2 ^ n - 1)).toNat

end

end A354480.P3041788755441835608

/-!
# A354482: Positions of 0's in binary expansion of Pi.

The programs for A354482, there is no canonical definition to state claims against.
-/

/-! ## A354482.P15808106194234124697

`A320300(n+1)-2`
-/

namespace A354482.P15808106194234124697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320300 (n + 1) - 2

end

end A354482.P15808106194234124697

/-! ## A354482.P18294127645164811942

`comp[A256108(n+1)]`
-/

namespace A354482.P18294127645164811942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256108 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A354482.P18294127645164811942

/-! ## A354482.P15793162951788234321

`comp[A004711(n+1)-2]`
-/

namespace A354482.P15793162951788234321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004711 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A354482.P15793162951788234321

/-! ## A354482.P4239340063857822125

`A320301(n)+a(n-1)` with `a(0)=1`
-/

namespace A354482.P4239340063857822125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A320301 n + a (n - 1)

end

end A354482.P4239340063857822125

/-! ## A354482.P2868813591133314127

`∪[A293828(n+1), A293830(n+1)]-1`
-/

namespace A354482.P2868813591133314127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293828 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293830 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1

end

end A354482.P2868813591133314127

/-! ## A354482.P1096751295039310175

`∪[A293828(n+1), A293829(n+1)]-2`
-/

namespace A354482.P1096751295039310175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293828 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293829 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 2

end

end A354482.P1096751295039310175

/-! ## A354482.P7154776408019999110

`eq[0, A004601(n+3)]`
-/

namespace A354482.P7154776408019999110
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004601 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A354482.P7154776408019999110

/-! ## A354482.P9365742195013032594

`lt[0, A180433(n+2)]`
-/

namespace A354482.P9365742195013032594
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180433 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A354482.P9365742195013032594

/-! ## A354482.P17395437874482456727

`lt[∑[A155482(n+1)], 0]`
-/

namespace A354482.P17395437874482456727
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155482 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n

end

end A354482.P17395437874482456727

/-! ## A354482.P15137550905881813520

`lt[∑[A155482(n)], 1]-1`
-/

namespace A354482.P15137550905881813520
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155482 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n : ℤ) - 1

end

end A354482.P15137550905881813520

/-! ## A354482.P6878331274174548980

`lt[Δ[A166006(n+1)], 1]`
-/

namespace A354482.P6878331274174548980
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166006 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n

end

end A354482.P6878331274174548980

/-! ## A354482.P18343170667863256924

`A023444(A320300(n+1))`
-/

namespace A354482.P18343170667863256924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A320300 (n + 1)).toNat

end

end A354482.P18343170667863256924

/-! ## A354482.P8233981962619325827

`eq[1, A293342(n)%2]`
-/

namespace A354482.P8233981962619325827
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A293342 n) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A354482.P8233981962619325827

/-!
# A354484: Common differences associated with the arithmetic progressions of primes in A354376.

The programs for A354484, there is no canonical definition to state claims against.
-/

/-! ## A354484.P3178633488805224235

`A354485(A133263(n))-A354377(n+1)`
-/

namespace A354484.P3178633488805224235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354485 (A133263 n).toNat - A354377 (n + 1)

end

end A354484.P3178633488805224235

/-! ## A354484.P4768856198130241014

`A354485(A133263(n))-A354485(∑[n]+1)`
-/

namespace A354484.P4768856198130241014
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354485 (A133263 n).toNat - A354485 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A354484.P4768856198130241014

/-! ## A354484.P12980668812080324460

`A000002(A000111(n))*A033188(n+1)`
-/

namespace A354484.P12980668812080324460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000002 (A000111 n).toNat * A033188 (n + 1)

end

end A354484.P12980668812080324460

/-! ## A354484.P10120944084802208466

`A033188(n+1)*A183017(A112007(n))`
-/

namespace A354484.P10120944084802208466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033188 (n + 1) * A183017 (A112007 n).toNat

end

end A354484.P10120944084802208466

/-! ## A354484.P14208491532497762519

`A033188(n+1)*A321650(A000032(n))`
-/

namespace A354484.P14208491532497762519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033188 (n + 1) * A321650 (A000032 n).toNat

end

end A354484.P14208491532497762519

/-!
# A354485: Triangle read by rows: row n gives the arithmetic progression of exactly n primes with minimal final term, cf. A354376.

The programs for A354485, there is no canonical definition to state claims against.
-/

/-! ## A354485.P15920198338602117544

`A385654(A048290(n+1))`
-/

namespace A354485.P15920198338602117544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385654 (A048290 (n + 1)).toNat

end

end A354485.P15920198338602117544

/-! ## A354485.P16200510995714879033

`p?[val(2^n, A171462(n+3))]`
-/

namespace A354485.P16200510995714879033
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (2 ^ n) (A171462 (n + 3)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A354485.P16200510995714879033

/-! ## A354485.P12827283345088802006

`p?[C(A283875(n), (n+1)/∏{p}[n+1, #])]`
-/

namespace A354485.P12827283345088802006
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A283875 n).toNat (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A354485.P12827283345088802006

/-! ## A354485.P18358957321138178074

`A160903(A063776(n+1))`
-/

namespace A354485.P18358957321138178074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160903 (A063776 (n + 1)).toNat

end

end A354485.P18358957321138178074

/-! ## A354485.P12283418140588899599

`filter[A376580(2*n+1), A332219(#)]`
-/

namespace A354485.P12283418140588899599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376580 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A332219 (f1 j).toNat = 1) n)

end

end A354485.P12283418140588899599

/-!
# A354487: Triangle read by rows: T(n,k) is the denominator of the n-th term of the Somos-k sequence, 4 <= k <= n.

The programs for A354487, there is no canonical definition to state claims against.
-/

/-! ## A354487.P6843312021642387528

`or(1, A151878(n)%10)`
-/

namespace A354487.P6843312021642387528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (Int.tmod (A151878 n) 10)

end

end A354487.P6843312021642387528

/-! ## A354487.P1830360436214606005

`floor(exp(A079208(Δ[n²])))`
-/

namespace A354487.P1830360436214606005
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.exp (A079208 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℝ)⌋

end

end A354487.P1830360436214606005

/-! ## A354487.P2147200764281494993

`round(exp(A079208(2*n+1)))`
-/

namespace A354487.P2147200764281494993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.exp (A079208 (2 * n + 1) : ℝ))

end

end A354487.P2147200764281494993

/-! ## A354487.P14214966768719053917

`A200221(A111008(n))+1`
-/

namespace A354487.P14214966768719053917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200221 (A111008 n).toNat + 1

end

end A354487.P14214966768719053917

/-! ## A354487.P14324772364303563234

`gcd(7, A183987(A309049(n)))`
-/

namespace A354487.P14324772364303563234
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 7 (A183987 (A309049 n).toNat)

end

end A354487.P14324772364303563234

/-! ## A354487.P5014667061632750431

`A209402(C(A325280(n), 43))`
-/

namespace A354487.P5014667061632750431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209402 (Nat.choose (A325280 n).toNat 43)

end

end A354487.P5014667061632750431

/-! ## A354487.P10464874660994211964

`A022097(C(A200329(n+1), 87))`
-/

namespace A354487.P10464874660994211964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022097 (Nat.choose (A200329 (n + 1)).toNat 87)

end

end A354487.P10464874660994211964

/-! ## A354487.P10183776633495399037

`gcd(63, A151878(n)+A034856(n+1))`
-/

namespace A354487.P10183776633495399037
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 63 (A151878 n + A034856 (n + 1))

end

end A354487.P10183776633495399037

/-! ## A354487.P14833589341994620481

`A079208(2*n+1)*A155754(n)+1`
-/

namespace A354487.P14833589341994620481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079208 (2 * n + 1) * A155754 n + 1

end

end A354487.P14833589341994620481

/-! ## A354487.P14559133765962108596

`A000265(n+1)*A079208(2*n+1)+1`
-/

namespace A354487.P14559133765962108596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (n + 1) * A079208 (2 * n + 1) + 1

end

end A354487.P14559133765962108596

/-! ## A354487.P14542471286957801557

`A048291(and(A151859(n), A151878(n)))`
-/

namespace A354487.P14542471286957801557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048291 (Int.land (A151859 n) (A151878 n)).toNat

end

end A354487.P14542471286957801557

/-! ## A354487.P8242396870231355521

`A151856(and(A151859(n), A151878(n)))`
-/

namespace A354487.P8242396870231355521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151856 (Int.land (A151859 n) (A151878 n)).toNat

end

end A354487.P8242396870231355521

/-! ## A354487.P11660592232525214783

`A151856(and(A151867(n), A151878(n)))`
-/

namespace A354487.P11660592232525214783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151856 (Int.land (A151867 n) (A151878 n)).toNat

end

end A354487.P11660592232525214783

/-! ## A354487.P9078365016130892221

`A360544(and(A151878(n), A360543(n+1)))`
-/

namespace A354487.P9078365016130892221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360544 (Int.land (A151878 n) (A360543 (n + 1))).toNat

end

end A354487.P9078365016130892221

/-! ## A354487.P16649525396901501991

`A151856(and(A151843(3*n+1), A151878(n)))`
-/

namespace A354487.P16649525396901501991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151856 (Int.land (A151843 (3 * n + 1)) (A151878 n)).toNat

end

end A354487.P16649525396901501991

/-! ## A354487.P3241575141946918791

`A052496(C(A052509(n), 8*A000010(n+1)))`
-/

namespace A354487.P3241575141946918791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052496 (Nat.choose (A052509 n).toNat (8 * A000010 (n + 1)).toNat)

end

end A354487.P3241575141946918791

/-! ## A354487.P4689748915347856643

`gcd(14, 1-A151878(n+1))`
-/

namespace A354487.P4689748915347856643
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 14 (1 - A151878 (n + 1))

end

end A354487.P4689748915347856643

/-! ## A354487.P2468392188639715912

`A053295(C(A282750(n+1), 21))`
-/

namespace A354487.P2468392188639715912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053295 (Nat.choose (A282750 (n + 1)).toNat 21)

end

end A354487.P2468392188639715912

/-! ## A354487.P4720881826588947144

`and(xor(1, A110657(n)), A151878(n+1))+1`
-/

namespace A354487.P4720881826588947144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (Int.xor 1 (A110657 n)) (A151878 (n + 1)) + 1

end

end A354487.P4720881826588947144

/-! ## A354487.P1118097594639885125

`gcd(28, A151878(n+1)+A001844(2*n+1))`
-/

namespace A354487.P1118097594639885125
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 28 (A151878 (n + 1) + A001844 (2 * n + 1))

end

end A354487.P1118097594639885125

/-!
# A354488: T(w,h) with 3 <= h < w is the number of quadrilaterals as defined in A353532 with diagonals intersecting at the same angle theta as the diagonals of the grid rectangle with side lengths w > h, where T(w,h) is a triangle read by rows.

The programs for A354488, there is no canonical definition to state claims against.
-/

/-! ## A354488.P84113553527924942

`A138045(A275247(n+2))`
-/

namespace A354488.P84113553527924942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138045 (A275247 (n + 2)).toNat

end

end A354488.P84113553527924942

/-! ## A354488.P8171701098324270483

`val(A000032(A112440(n+1)), 3)`
-/

namespace A354488.P8171701098324270483
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A000032 (A112440 (n + 1)).toNat).toNat 3

end

end A354488.P8171701098324270483

/-! ## A354488.P2158573325296845444

`A374248(A257801(n+1)+n)`
-/

namespace A354488.P2158573325296845444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374248 (A257801 (n + 1) + (n : ℤ)).toNat

end

end A354488.P2158573325296845444

/-! ## A354488.P9414727938284576081

`A095683(∑[A069675(n+3)+1])`
-/

namespace A354488.P9414727938284576081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069675 (n + 3) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095683 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A354488.P9414727938284576081

/-!
# A354489: Widths w of w X h grid rectangles with w > h such that no quadrilaterals with 2 < h < w as defined in A353532 exist, whose angle between their diagonals is equal to the angle between the diagonals of the grid rectangle.

The programs for A354489, there is no canonical definition to state claims against.
-/

/-! ## A354489.P8477374814198688188

`eq[A000700(A173678(3*n+1)), A173636(2*n)]`
-/

namespace A354489.P8477374814198688188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000700 (A173678 (3 * n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173636 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A354489.P8477374814198688188

/-!
# A354491: Diagonal of the triangle A354490.

The programs for A354491, there is no canonical definition to state claims against.
-/

/-! ## A354491.P13457730270148947220

`A354490(∑[A061147(n+1)]+1)`
-/

namespace A354491.P13457730270148947220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061147 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354490 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat

end

end A354491.P13457730270148947220

/-! ## A354491.P17928911798320381010

`A354490(∑[A065200(n+1)]+1)`
-/

namespace A354491.P17928911798320381010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065200 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354490 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat

end

end A354491.P17928911798320381010

/-! ## A354491.P5554902990398119683

`A354490(∑[A354144(n+1)]+1)`
-/

namespace A354491.P5554902990398119683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354144 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354490 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat

end

end A354491.P5554902990398119683

/-! ## A354491.P13878297964191141518

`A354490(∑[∑[A354488(n+4)+1]]+1)`
-/

namespace A354491.P13878297964191141518
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354488 (n + 4) + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354490 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat

end

end A354491.P13878297964191141518

/-!
# A354492: Diagonal of A354703.

The programs for A354492, there is no canonical definition to state claims against.
-/

/-! ## A354492.P3008647428360937971

`A354703(∑[n+1])`
-/

namespace A354492.P3008647428360937971
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354703 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A354492.P3008647428360937971

/-! ## A354492.P10309421977150333506

`(n+1)²-A354702(∑[n+1])`
-/

namespace A354492.P10309421977150333506
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - A354702 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A354492.P10309421977150333506

/-! ## A354492.P13091967811046152124

`A354703(A000096(n)+1)^ceil(sin(n)²)`
-/

namespace A354492.P13091967811046152124
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A354703 (A000096 n + 1).toNat : ℚ) ^ (⌈Real.sin (n : ℝ) ^ 2⌉ : ℤ)

end

end A354492.P13091967811046152124

/-! ## A354492.P4103295198998035482

`A354703(A000217(n+1))+A181735(n+1)`
-/

namespace A354492.P4103295198998035482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354703 (A000217 (n + 1)).toNat + A181735 (n + 1)

end

end A354492.P4103295198998035482

/-! ## A354492.P10354111199644900235

`A354703(A000217(n+1))+A097109(3*n+2)`
-/

namespace A354492.P10354111199644900235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354703 (A000217 (n + 1)).toNat + A097109 (3 * n + 2)

end

end A354492.P10354111199644900235

/-!
# A354493: Number of quantales on n elements, up to isomorphism.

The programs for A354493, there is no canonical definition to state claims against.
-/

/-! ## A354493.P10911832022984677688

`A039118(∏[A147515(n+1)+1])`
-/

namespace A354493.P10911832022984677688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147515 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039118 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A354493.P10911832022984677688

/-!
# A354494: Number of semi-unital quantales on n elements, up to isomorphism.

The programs for A354494, there is no canonical definition to state claims against.
-/

/-! ## A354494.P14301737015216860912

`A002264((∑[n]+1)*n^n)+1`
-/

namespace A354494.P14301737015216860912
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 ((∑ j ∈ Finset.range (n + 1), f1 j + 1) * n ^ n) + 1

end

end A354494.P14301737015216860912

/-!
# A354495: Number of unital quantales on n elements, up to isomorphism.

The programs for A354495, there is no canonical definition to state claims against.
-/

/-! ## A354495.P16920623942939369987

`abs(1-A000720(A080254(n)))`
-/

namespace A354495.P16920623942939369987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A000720 (A080254 n).toNat|

end

end A354495.P16920623942939369987

/-! ## A354495.P5744226297982243421

`A363560(n)+A047222(A059167(n))`
-/

namespace A354495.P5744226297982243421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363560 n + A047222 (A059167 n).toNat

end

end A354495.P5744226297982243421

/-!
# A354496: Number of left-sided quantales on n elements, up to isomorphism. Also number of right-sided quantales on n elements, up to isomorphism.

The programs for A354496, there is no canonical definition to state claims against.
-/

/-! ## A354496.P11490352965038555845

`A264810(A005260(n))`
-/

namespace A354496.P11490352965038555845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264810 (A005260 n).toNat

end

end A354496.P11490352965038555845

/-!
# A354497: Number of strictly left-sided quantales on n elements, up to isomorphism. Also number of strictly right-sided quantales on n elements, up to isomorphism.

The programs for A354497, there is no canonical definition to state claims against.
-/

/-! ## A354497.P6433032071802836273

`A006594(A305307(n))`
-/

namespace A354497.P6433032071802836273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006594 (A305307 n).toNat

end

end A354497.P6433032071802836273

/-! ## A354497.P7459407008224336254

`A091226(A058126(n))+A001423(n)`
-/

namespace A354497.P7459407008224336254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091226 (A058126 n).toNat + A001423 n

end

end A354497.P7459407008224336254

/-!
# A354498: Number of two-sided quantales on n elements, up to isomorphism.

The programs for A354498, there is no canonical definition to state claims against.
-/

/-! ## A354498.P7295861811409258991

`A205946(2*n²)+n`
-/

namespace A354498.P7295861811409258991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205946 (2 * n ^ 2) + (n : ℤ)

end

end A354498.P7295861811409258991

/-!
# A354499: Number of consecutive primes generated by adding 2n to the odd squares (A016754).

The programs for A354499, there is no canonical definition to state claims against.
-/

/-! ## A354499.P15533555563365839469

`A277647(A005722(2*(n+2)))-A353374(2*n+3)`
-/

namespace A354499.P15533555563365839469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277647 (A005722 (2 * (n + 2))).toNat - A353374 (2 * n + 3)

end

end A354499.P15533555563365839469

