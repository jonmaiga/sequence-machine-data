import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C002
import Seq.B000.C004
import Seq.B000.C006
import Seq.B000.C008
import Seq.B000.C010
import Seq.B000.C012
import Seq.B000.C015
import Seq.B000.C018
import Seq.B000.C020
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C008
import Seq.B001.C011
import Seq.B002.C001
import Seq.B002.C002
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C004
import Seq.B004.C000
import Seq.B005.C000
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.B012.C000
import Seq.B013.C000
import Seq.Opaque.C000
import Seq.Opaque.C001
import Seq.Opaque.C003
import Seq.Opaque.C004
import Seq.Opaque.C005
import Seq.Opaque.C006
import Seq.Opaque.C007
import Seq.Opaque.C008
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

/-!
# A156401: Number of 9 X 9 arrays of squares of integers, symmetric under 90-degree rotation, with all rows summing to n.

The programs for A156401, there is no canonical definition to state claims against.
-/

/-! ## A156401.P7663134685767903194

`A000122(n)*A299240(A001541(n))`
-/

namespace A156401.P7663134685767903194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 n * A299240 (A001541 n).toNat

end

end A156401.P7663134685767903194

/-!
# A156407: Number of 11 X 11 arrays of squares of integers, symmetric about the diagonal and under 90-degree rotation, with all rows summing to n.

The programs for A156407, there is no canonical definition to state claims against.
-/

/-! ## A156407.P10498804651799374462

`and(A201644(n+1)², A104203(n+1))`
-/

namespace A156407.P10498804651799374462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A201644 (n + 1) ^ 2) (A104203 (n + 1))

end

end A156407.P10498804651799374462

/-! ## A156407.P2903433706624414990

`and(A028310(A000143(n)), A050451(n+1))`
-/

namespace A156407.P2903433706624414990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A028310 (A000143 n).toNat) (A050451 (n + 1))

end

end A156407.P2903433706624414990

/-! ## A156407.P16482339987748977156

`and(A120820(n+1), A326305(A048778(n)))`
-/

namespace A156407.P16482339987748977156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A120820 (n + 1)) (A326305 (A048778 n).toNat)

end

end A156407.P16482339987748977156

/-! ## A156407.P16524050430434835721

`A320126(3*n)*A366247(A003397(n+1))`
-/

namespace A156407.P16524050430434835721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320126 (3 * n) * A366247 (A003397 (n + 1)).toNat

end

end A156407.P16524050430434835721

/-! ## A156407.P783636847942511503

`A008480(A262675(3*n+5))*A234931(n)`
-/

namespace A156407.P783636847942511503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008480 (A262675 (3 * n + 5)).toNat * A234931 n

end

end A156407.P783636847942511503

/-!
# A156414: Number of 13 X 13 arrays of squares of integers, symmetric about the diagonal and under 90-degree rotation, with all rows summing to n.

The programs for A156414, there is no canonical definition to state claims against.
-/

/-! ## A156414.P3356787559781501651

`A223033((char[1]+n)!)`
-/

namespace A156414.P3356787559781501651
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223033 (Nat.factorial ((if ∃ j, f1 j = n then 1 else 0) + n))

end

end A156414.P3356787559781501651

/-!
# A156419: Number of 15 X 15 arrays of squares of integers, symmetric about the diagonal and under 90-degree rotation, with all rows summing to n.

The programs for A156419, there is no canonical definition to state claims against.
-/

/-! ## A156419.P3366053296331893589

`A349914(floor(10^n/3)+4)`
-/

namespace A156419.P3366053296331893589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349914 (⌊(10 ^ n : ℚ) / 3⌋ + 4).toNat

end

end A156419.P3366053296331893589

/-!
# A156424: Number of 17 X 17 arrays of squares of integers, symmetric about the diagonal and under 90 degree rotation, with all rows summing to n.

The programs for A156424, there is no canonical definition to state claims against.
-/

/-! ## A156424.P13708024399002679384

`A188448(n^3+(n+1)*(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1])`
-/

namespace A156424.P13708024399002679384
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188448 (SequenceMachineLib.roundAway ((n ^ 3 : ℚ) + (n + 1 : ℚ) * ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1) : ℤ) : ℚ)))).toNat

end

end A156424.P13708024399002679384

/-!
# A156430: Number of n X n arrays of squares of integers, symmetric about both diagonal and antidiagonal, with all rows summing to 2.

The programs for A156430, there is no canonical definition to state claims against.
-/

/-! ## A156430.P14240466737543076093

`∑[A318622(∑[A041178(n)])]`
-/

namespace A156430.P14240466737543076093
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041178 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318622 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156430.P14240466737543076093

/-! ## A156430.P2634468679340958457

`record[A003558(∑[A285434(n)])]`
-/

namespace A156430.P2634468679340958457
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285434 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003558 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A156430.P2634468679340958457

/-!
# A156433: Number of n X n arrays of squares of integers, symmetric under 90 degree rotation, with all rows summing to 3.

The programs for A156433, there is no canonical definition to state claims against.
-/

/-! ## A156433.P4076016106226097277

`A070677(∑[A122704(n)+3])`
-/

namespace A156433.P4076016106226097277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122704 n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070677 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A156433.P4076016106226097277

/-! ## A156433.P13483925177696919786

`A096535(5^∑[A333453(n)])`
-/

namespace A156433.P13483925177696919786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333453 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096535 (SequenceMachineLib.roundAway ((5 : ℚ) ^ (∑ j ∈ Finset.range (n + 1), f1 j : ℤ))).toNat

end

end A156433.P13483925177696919786

/-!
# A156434: Number of n X n arrays of squares of integers, symmetric about main diagonal, with all rows summing to 4.

The programs for A156434, there is no canonical definition to state claims against.
-/

/-! ## A156434.P4563685435036920130

`A129487(A027384(a(n-1)))` with `a(0)=1`
-/

namespace A156434.P4563685435036920130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A129487 (A027384 (a (n - 1)).toNat).toNat

end

end A156434.P4563685435036920130

/-! ## A156434.P13178050488884362731

`A004001(A306020(n)+A000041(n))`
-/

namespace A156434.P13178050488884362731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004001 (A306020 n + A000041 n).toNat

end

end A156434.P13178050488884362731

/-!
# A156435: Number of n X n arrays of squares of integers, symmetric about both diagonal and antidiagonal, with all rows summing to 4.

The programs for A156435, there is no canonical definition to state claims against.
-/

/-! ## A156435.P9955720653108752390

`A347186(2*a(n-1)-a(n-2))` with `a(0)=1, a(1)=2, a(2)=2, a(3)=7, a(4)=13`
-/

namespace A156435.P9955720653108752390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 2, 7, 13] fun n a =>
  A347186 (2 * a (n - 1) - a (n - 2)).toNat

end

end A156435.P9955720653108752390

/-! ## A156435.P2481743859671426767

`A309157(A367071(n))`
-/

namespace A156435.P2481743859671426767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309157 (A367071 n).toNat

end

end A156435.P2481743859671426767

/-!
# A156436: Number of n X n arrays of squares of integers, symmetric under 90 degree rotation, with all rows summing to 4.

The programs for A156436, there is no canonical definition to state claims against.
-/

/-! ## A156436.P10799247179674885030

`A335380(lcm(A000757(n), A106454(n+1)))`
-/

namespace A156436.P10799247179674885030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335380 (Int.lcm (A000757 n) (A106454 (n + 1)))

end

end A156436.P10799247179674885030

/-!
# A156437: Number of n X n arrays of squares of integers, symmetric about main diagonal, with all rows summing to 5.

The programs for A156437, there is no canonical definition to state claims against.
-/

/-! ## A156437.P10552876703577100401

`A057859(A293889(n+8)+A018048(n))`
-/

namespace A156437.P10552876703577100401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057859 (A293889 (n + 8) + A018048 n).toNat

end

end A156437.P10552876703577100401

/-!
# A156438: Number of n X n arrays of squares of integers, symmetric about both diagonal and antidiagonal, with all rows summing to 5.

The programs for A156438, there is no canonical definition to state claims against.
-/

/-! ## A156438.P12887585780937972946

`A096535(A237821(n+5)+A119634(n))`
-/

namespace A156438.P12887585780937972946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096535 (A237821 (n + 5) + A119634 n).toNat

end

end A156438.P12887585780937972946

/-!
# A156439: Number of n X n arrays of squares of integers, symmetric under 90 degree rotation, with all rows summing to 5.

The programs for A156439, there is no canonical definition to state claims against.
-/

/-! ## A156439.P18315751076067532848

`A205785(n+1)*A327195(A205774(n))`
-/

namespace A156439.P18315751076067532848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205785 (n + 1) * A327195 (A205774 n).toNat

end

end A156439.P18315751076067532848

/-! ## A156439.P11586386399380914330

`A337301(A337287(3*n+4))*A337303(n)`
-/

namespace A156439.P11586386399380914330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337301 (A337287 (3 * n + 4)).toNat * A337303 n

end

end A156439.P11586386399380914330

/-!
# A156442: Number of n X n arrays of squares of integers, symmetric under 90 degree rotation, with all rows summing to 6.

The programs for A156442, there is no canonical definition to state claims against.
-/

/-! ## A156442.P3969756776218647602

`A348513(A348514(n+1)-4*n)`
-/

namespace A156442.P3969756776218647602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348513 (A348514 (n + 1) - (4 * n : ℤ)).toNat

end

end A156442.P3969756776218647602

/-!
# A156445: Number of n X n arrays of squares of integers, symmetric about main diagonal, with all rows summing to 8.

The programs for A156445, there is no canonical definition to state claims against.
-/

/-! ## A156445.P11480480772708071477

`A011371(A060690(n)+A025052(2*n+1))`
-/

namespace A156445.P11480480772708071477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011371 (A060690 n + A025052 (2 * n + 1)).toNat

end

end A156445.P11480480772708071477

/-!
# A156446: Number of n X n arrays of squares of integers, symmetric about both diagonal and antidiagonal, with all rows summing to 8.

The programs for A156446, there is no canonical definition to state claims against.
-/

/-! ## A156446.P16765045825117453601

`A221918(A351016(n²))`
-/

namespace A156446.P16765045825117453601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221918 (A351016 (n ^ 2)).toNat

end

end A156446.P16765045825117453601

/-!
# A156448: Number of n X n arrays of squares of integers, symmetric about main diagonal, with all rows summing to 9.

The programs for A156448, there is no canonical definition to state claims against.
-/

/-! ## A156448.P4165962194674934340

`A102463(C(n+3, 4)+2)`
-/

namespace A156448.P4165962194674934340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102463 (Nat.choose (n + 3) 4 + 2)

end

end A156448.P4165962194674934340

/-!
# A156449: Number of n X n arrays of squares of integers, symmetric about both diagonal and antidiagonal, with all rows summing to 9.

The programs for A156449, there is no canonical definition to state claims against.
-/

/-! ## A156449.P3497654045314132450

`∑[A124773(comp[2*n+3]²)]`
-/

namespace A156449.P3497654045314132450
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 3

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124773 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156449.P3497654045314132450

/-! ## A156449.P7077251492055786806

`∑[A087258(A023717(n)!)]`
-/

namespace A156449.P7077251492055786806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087258 (Nat.factorial (A023717 n).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156449.P7077251492055786806

/-!
# A156450: Number of n X n arrays of squares of integers, symmetric under 90 degree rotation, with all rows summing to 9.

The programs for A156450, there is no canonical definition to state claims against.
-/

/-! ## A156450.P1074926766071305163

`A089038(A140997(n+4)^A079901(n))`
-/

namespace A156450.P1074926766071305163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089038 (SequenceMachineLib.roundAway ((A140997 (n + 4) : ℚ) ^ (A079901 n : ℤ))).toNat

end

end A156450.P1074926766071305163

/-! ## A156450.P15672063135552713181

`A271518(A092658(n+1))*A277767(n+5)`
-/

namespace A156450.P15672063135552713181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271518 (A092658 (n + 1)).toNat * A277767 (n + 5)

end

end A156450.P15672063135552713181

/-!
# A156463: Number of n X n arrays of squares of integers, symmetric about main diagonal, with all rows summing to 16.

The programs for A156463, there is no canonical definition to state claims against.
-/

/-! ## A156463.P790923225022794137

`A345899(ceil(ϕ*a(n-1)))` with `a(0)=1`
-/

namespace A156463.P790923225022794137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A345899 ⌈Real.goldenRatio * (a (n - 1) : ℝ)⌉.toNat

end

end A156463.P790923225022794137

/-!
# A156464: Number of n X n arrays of squares of integers, symmetric about both diagonal and antidiagonal, with all rows summing to 16.

The programs for A156464, there is no canonical definition to state claims against.
-/

/-! ## A156464.P2447940939635352668

`A280470(∑[A099363(n)²])`
-/

namespace A156464.P2447940939635352668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099363 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280470 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A156464.P2447940939635352668

/-! ## A156464.P762134596316895109

`A280470(∑[A208355(n)²])`
-/

namespace A156464.P762134596316895109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208355 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280470 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A156464.P762134596316895109

/-!
# A156465: Number of n X n arrays of squares of integers, symmetric under 90 degree rotation, with all rows summing to 16.

The programs for A156465, there is no canonical definition to state claims against.
-/

/-! ## A156465.P2686180002388584120

`((n+5)*n!)%A039696(A147930(n+1))`
-/

namespace A156465.P2686180002388584120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n + 5) * Nat.factorial n : ℤ) (A039696 (A147930 (n + 1)).toNat)

end

end A156465.P2686180002388584120

/-! ## A156465.P7818346556204340385

`A176747(A214198(n))+A033183(n)`
-/

namespace A156465.P7818346556204340385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176747 (A214198 n).toNat + A033183 n

end

end A156465.P7818346556204340385

/-! ## A156465.P16259731466364551036

`A036234(A118192(n))-A055396(n+1)`
-/

namespace A156465.P16259731466364551036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036234 (A118192 n).toNat - A055396 (n + 1)

end

end A156465.P16259731466364551036

/-!
# A156467: Number of n X n arrays of squares of integers, symmetric about both diagonal and antidiagonal, with all rows summing to 17.

The programs for A156467, there is no canonical definition to state claims against.
-/

/-! ## A156467.P16287421911074789243

`A000010(2*(n+2))*A196374(A241904(n+1))`
-/

namespace A156467.P16287421911074789243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (2 * (n + 2)) * A196374 (A241904 (n + 1)).toNat

end

end A156467.P16287421911074789243

/-!
# A156482: Number of n X n arrays of squares of integers, symmetric about main diagonal, with all rows summing to 25.

The programs for A156482, there is no canonical definition to state claims against.
-/

/-! ## A156482.P17258850797856342156

`A087293(a(n-1))+2` with `a(0)=1`
-/

namespace A156482.P17258850797856342156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A087293 (a (n - 1)).toNat + 2

end

end A156482.P17258850797856342156

/-!
# A156492: Number of n X n arrays of squares of integers, symmetric about both diagonal and antidiagonal, with all rows summing to 32.

The programs for A156492, there is no canonical definition to state claims against.
-/

/-! ## A156492.P10463879931179693759

`A331742(A133310(2*n+1)^round(5*n/4))`
-/

namespace A156492.P10463879931179693759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331742 (SequenceMachineLib.roundAway ((A133310 (2 * n + 1) : ℚ) ^ (SequenceMachineLib.roundAway (5 * ((n : ℚ) / 4)) : ℤ))).toNat

end

end A156492.P10463879931179693759

/-!
# A156493: Number of n X n arrays of squares of integers, symmetric under 90 degree rotation, with all rows summing to 32.

The programs for A156493, there is no canonical definition to state claims against.
-/

/-! ## A156493.P11274233950877567480

`A004086(A001499(n)*A124758(n))`
-/

namespace A156493.P11274233950877567480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (A001499 n * A124758 n).toNat

end

end A156493.P11274233950877567480

/-! ## A156493.P2635573325944935836

`A004086(A001499(n)*A181971(n))`
-/

namespace A156493.P2635573325944935836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (A001499 n * A181971 n).toNat

end

end A156493.P2635573325944935836

/-!
# A156497: Number of n X n arrays of squares of integers, symmetric about main diagonal, with all rows summing to 36.

The programs for A156497, there is no canonical definition to state claims against.
-/

/-! ## A156497.P4924537445765328783

`A342256(A134054(n))-1`
-/

namespace A156497.P4924537445765328783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342256 (A134054 n).toNat - 1

end

end A156497.P4924537445765328783

/-!
# A156498: Number of n X n arrays of squares of integers, symmetric about both diagonal and antidiagonal, with all rows summing to 36.

The programs for A156498, there is no canonical definition to state claims against.
-/

/-! ## A156498.P7680013802527183370

`A297553(n*∑[n]+1)`
-/

namespace A156498.P7680013802527183370
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297553 (n * (∑ j ∈ Finset.range (n + 1), f1 j) + 1)

end

end A156498.P7680013802527183370

/-!
# A156499: Number of n X n arrays of squares of integers, symmetric under 90 degree rotation, with all rows summing to 36.

The programs for A156499, there is no canonical definition to state claims against.
-/

/-! ## A156499.P6746834578496756512

`A020653(A020560(n))-n`
-/

namespace A156499.P6746834578496756512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020653 (A020560 n).toNat - (n : ℤ)

end

end A156499.P6746834578496756512

/-! ## A156499.P7809824179953361264

`xor(n, A302776(A076015(n+1)))`
-/

namespace A156499.P7809824179953361264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (A302776 (A076015 (n + 1)).toNat)

end

end A156499.P7809824179953361264

