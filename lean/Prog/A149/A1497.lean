import SequenceMachineLib.Basic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C009
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
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C037
import Seq.B000.C039
import Seq.B000.C040
import Seq.B000.C041
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C011
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
import Seq.B006.C000
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
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
# A149700: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 0), (0, -1, 1), (0, 1, -1), (1, 1, 1)}.

The programs for A149700, there is no canonical definition to state claims against.
-/

/-! ## A149700.P4517830880101083743

`xor(A149701(n), A185284(n²))`
-/

namespace A149700.P4517830880101083743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A149701 n) (A185284 (n ^ 2))

end

end A149700.P4517830880101083743

/-! ## A149700.P221840907336609930

`A187180(A149714(n)+A149674(n))`
-/

namespace A149700.P221840907336609930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187180 (A149714 n + A149674 n).toNat

end

end A149700.P221840907336609930

/-! ## A149700.P7263456248113478310

`A187180(A149714(n)+A149675(n))`
-/

namespace A149700.P7263456248113478310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187180 (A149714 n + A149675 n).toNat

end

end A149700.P7263456248113478310

/-!
# A149703: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 0), (0, 1, -1), (1, -1, 0), (1, 1, 1)}.

The programs for A149703, there is no canonical definition to state claims against.
-/

/-! ## A149703.P7201729710103070944

`A008611(A150520(n)+A150496(n))`
-/

namespace A149703.P7201729710103070944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (A150520 n + A150496 n).toNat

end

end A149703.P7201729710103070944

/-! ## A149703.P7258473252859203679

`A188144(A004912(n+1))-A001045(n)`
-/

namespace A149703.P7258473252859203679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188144 (A004912 (n + 1)).toNat - A001045 n

end

end A149703.P7258473252859203679

/-!
# A149704: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, 1), (0, 1, -1), (1, -1, 0), (1, 1, 1)}.

The programs for A149704, there is no canonical definition to state claims against.
-/

/-! ## A149704.P8263168888156046029

`A008611(A150520(n)+A150499(n))`
-/

namespace A149704.P8263168888156046029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (A150520 n + A150499 n).toNat

end

end A149704.P8263168888156046029

/-! ## A149704.P266580970291423133

`A004526(A339036(n)+A150577(n))`
-/

namespace A149704.P266580970291423133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A339036 n + A150577 n).toNat

end

end A149704.P266580970291423133

/-! ## A149704.P9263589267882451238

`A151276(n)+A073292(A352661(3*n+2))`
-/

namespace A149704.P9263589267882451238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151276 n + A073292 (A352661 (3 * n + 2)).toNat

end

end A149704.P9263589267882451238

/-!
# A149705: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 1, 0), (0, 0, -1), (1, -1, 1), (1, 1, 1)}.

The programs for A149705, there is no canonical definition to state claims against.
-/

/-! ## A149705.P3407609270157315294

`and(A324595(n), A373149(A213079(n+1)))`
-/

namespace A149705.P3407609270157315294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A324595 n) (A373149 (A213079 (n + 1)).toNat)

end

end A149705.P3407609270157315294

/-! ## A149705.P15590868802297206601

`A095725(A128816(n))`
-/

namespace A149705.P15590868802297206601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095725 (A128816 n).toNat

end

end A149705.P15590868802297206601

/-!
# A149706: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 1, 1), (0, 0, -1), (1, -1, 1), (1, 1, 1)}.

The programs for A149706, there is no canonical definition to state claims against.
-/

/-! ## A149706.P7412875005975419289

`A172308(A011947(n))`
-/

namespace A149706.P7412875005975419289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172308 (A011947 n).toNat

end

end A149706.P7412875005975419289

/-! ## A149706.P10394734128466568462

`A063677(A149761(n))`
-/

namespace A149706.P10394734128466568462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063677 (A149761 n).toNat

end

end A149706.P10394734128466568462

/-!
# A149707: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, 0), (0, 1, -1), (1, -1, 1), (1, 1, 1)}.

The programs for A149707, there is no canonical definition to state claims against.
-/

/-! ## A149707.P11771419729284455461

`or(1, A072749(A116415(n)))`
-/

namespace A149707.P11771419729284455461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A072749 (A116415 n).toNat)

end

end A149707.P11771419729284455461

/-! ## A149707.P9824885918444254968

`or(1, A261692(A242551(n)))`
-/

namespace A149707.P9824885918444254968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A261692 (A242551 n).toNat)

end

end A149707.P9824885918444254968

/-!
# A149708: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 0), (1, -1, 1), (1, 0, -1), (1, 1, 1)}.

The programs for A149708, there is no canonical definition to state claims against.
-/

/-! ## A149708.P10492146646282796354

`A105670(A150498(n))`
-/

namespace A149708.P10492146646282796354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105670 (A150498 n).toNat

end

end A149708.P10492146646282796354

/-! ## A149708.P4727091573865276096

`A105670(A363293(n+2))`
-/

namespace A149708.P4727091573865276096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105670 (A363293 (n + 2)).toNat

end

end A149708.P4727091573865276096

/-!
# A149709: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 1), (0, -1, 1), (0, 1, -1), (1, 1, 1)}.

The programs for A149709, there is no canonical definition to state claims against.
-/

/-! ## A149709.P4216526283865469608

`∏{p}[A149710(n)², #]`
-/

namespace A149709.P4216526283865469608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149710 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A149709.P4216526283865469608

/-! ## A149709.P9241629672305449073

`A149710(A001096(n))`
-/

namespace A149709.P9241629672305449073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149710 (A001096 n).toNat

end

end A149709.P9241629672305449073

/-!
# A149710: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 1), (1, -1, 0), (1, 0, -1), (1, 1, 1)}.

The programs for A149710, there is no canonical definition to state claims against.
-/

/-! ## A149710.P5218276456469713316

`A026741(A149726(n)+A149692(n))`
-/

namespace A149710.P5218276456469713316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A149726 n + A149692 n).toNat

end

end A149710.P5218276456469713316

/-! ## A149710.P5921289031446072815

`A026741(A149725(n)+A149694(n))`
-/

namespace A149710.P5921289031446072815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A149725 n + A149694 n).toNat

end

end A149710.P5921289031446072815

/-! ## A149710.P10493513159697209638

`A246277(A149725(n)+A149694(n))`
-/

namespace A149710.P10493513159697209638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246277 (A149725 n + A149694 n).toNat

end

end A149710.P10493513159697209638

/-!
# A149711: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, 1), (1, -1, 1), (1, 0, -1), (1, 1, 1)}.

The programs for A149711, there is no canonical definition to state claims against.
-/

/-! ## A149711.P5485117424271350029

`A093783(A149710(n))`
-/

namespace A149711.P5485117424271350029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093783 (A149710 n).toNat

end

end A149711.P5485117424271350029

/-! ## A149711.P18079051403165013533

`A149710(n)+A025469(A001563(n))`
-/

namespace A149711.P18079051403165013533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149710 n + A025469 (A001563 n).toNat

end

end A149711.P18079051403165013533

/-! ## A149711.P3188690640802165337

`or(A001222(A006862(n)), A149710(n))`
-/

namespace A149711.P3188690640802165337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001222 (A006862 n).toNat) (A149710 n)

end

end A149711.P3188690640802165337

/-!
# A149712: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 1, 0), (0, 1, -1), (1, -1, 0), (1, 1, 1)}.

The programs for A149712, there is no canonical definition to state claims against.
-/

/-! ## A149712.P6292552033727249155

`A004525(A206302(n)+A150746(n))`
-/

namespace A149712.P6292552033727249155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A206302 n + A150746 n).toNat

end

end A149712.P6292552033727249155

/-! ## A149712.P10170459051514489771

`or(A007599(A150746(n)), A149705(n))`
-/

namespace A149712.P10170459051514489771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A007599 (A150746 n).toNat) (A149705 n)

end

end A149712.P10170459051514489771

/-!
# A149713: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 1, 1), (0, 0, -1), (1, -1, 1), (1, 1, 1)}.

The programs for A149713, there is no canonical definition to state claims against.
-/

/-! ## A149713.P6774607360493319238

`A182182(A098619(n))`
-/

namespace A149713.P6774607360493319238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182182 (A098619 n).toNat

end

end A149713.P6774607360493319238

/-! ## A149713.P8933373017684579341

`A064989(8*A173324(n))`
-/

namespace A149713.P8933373017684579341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (8 * A173324 n).toNat

end

end A149713.P8933373017684579341

/-!
# A149714: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 1), (0, 1, -1), (1, -1, 0), (1, 1, 1)}.

The programs for A149714, there is no canonical definition to state claims against.
-/

/-! ## A149714.P11679150967420683269

`∏{p}[Δ[A137952(n)]², #]`
-/

namespace A149714.P11679150967420683269
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137952 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A149714.P11679150967420683269

/-! ## A149714.P6909900202852981660

`A121761(A149712(n))`
-/

namespace A149714.P6909900202852981660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121761 (A149712 n).toNat

end

end A149714.P6909900202852981660

/-!
# A149715: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 0), (0, 1, -1), (1, -1, 1), (1, 1, 1)}.

The programs for A149715, there is no canonical definition to state claims against.
-/

/-! ## A149715.P16377996945721590381

`A008611(2*A150556(n))`
-/

namespace A149715.P16377996945721590381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (2 * A150556 n).toNat

end

end A149715.P16377996945721590381

/-! ## A149715.P4116418085960238204

`A008612(4*A150556(n))`
-/

namespace A149715.P4116418085960238204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008612 (4 * A150556 n).toNat

end

end A149715.P4116418085960238204

/-! ## A149715.P742775263096925725

`or(A065033(A327214(n)), A235645(n+1))`
-/

namespace A149715.P742775263096925725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A065033 (A327214 n).toNat) (A235645 (n + 1))

end

end A149715.P742775263096925725

/-!
# A149716: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, 1), (0, 1, -1), (1, -1, 1), (1, 1, 1)}.

The programs for A149716, there is no canonical definition to state claims against.
-/

/-! ## A149716.P1050819393334719592

`A097337(A150735(n)+1)`
-/

namespace A149716.P1050819393334719592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097337 (A150735 n + 1).toNat

end

end A149716.P1050819393334719592

/-! ## A149716.P2736210279180883644

`or(1, A097337(A150736(n)))`
-/

namespace A149716.P2736210279180883644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A097337 (A150736 n).toNat)

end

end A149716.P2736210279180883644

/-! ## A149716.P10993746679980601185

`or(1, A097337(A150737(n)))`
-/

namespace A149716.P10993746679980601185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A097337 (A150737 n).toNat)

end

end A149716.P10993746679980601185

/-!
# A149717: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, 0), (0, -1, 0), (1, 1, -1), (1, 1, 1)}.

The programs for A149717, there is no canonical definition to state claims against.
-/

/-! ## A149717.P2651485903134182953

`A139421(A149718(n))`
-/

namespace A149717.P2651485903134182953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139421 (A149718 n).toNat

end

end A149717.P2651485903134182953

/-! ## A149717.P4402080576123124671

`A175249(A327644(n))`
-/

namespace A149717.P4402080576123124671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175249 (A327644 n).toNat

end

end A149717.P4402080576123124671

/-!
# A149718: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 1), (1, -1, 1), (1, 0, -1), (1, 1, 1)}.

The programs for A149718, there is no canonical definition to state claims against.
-/

/-! ## A149718.P9364252985508758077

`and(-3, A172308(∑{d}[ceil(2^(n-1)), #]))`
-/

namespace A149718.P9364252985508758077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-3) (A172308 (∑ d ∈ Nat.divisors (f1 n).natAbs, d))

end

end A149718.P9364252985508758077

/-! ## A149718.P18272258427226088439

`A211964(A052365(n))`
-/

namespace A149718.P18272258427226088439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211964 (A052365 n).toNat

end

end A149718.P18272258427226088439

/-!
# A149719: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 1, 0), (0, 1, -1), (1, -1, 0), (1, 1, 1)}.

The programs for A149719, there is no canonical definition to state claims against.
-/

/-! ## A149719.P13753704295115728720

`A004525(A150906(n)+A014684(n+1))`
-/

namespace A149719.P13753704295115728720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A150906 n + A014684 (n + 1)).toNat

end

end A149719.P13753704295115728720

/-! ## A149719.P12680870445561345798

`A003814(A000110(n))-A103451(A000051(2*n+1))`
-/

namespace A149719.P12680870445561345798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003814 (A000110 n).toNat - A103451 (A000051 (2 * n + 1)).toNat

end

end A149719.P12680870445561345798

/-!
# A149720: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 1, 0), (1, -1, 1), (1, 0, -1), (1, 1, 1)}.

The programs for A149720, there is no canonical definition to state claims against.
-/

/-! ## A149720.P9088392690124945338

`A072739((n^n+n^ceil(n/2))/2)+n!*∏{e}[n, #+1]`
-/

namespace A149720.P9088392690124945338
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072739 (SequenceMachineLib.roundAway (((n ^ n : ℚ) + (n : ℚ) ^ (⌈(n : ℚ) / 2⌉ : ℤ)) / 2)).toNat + ((Nat.factorial n * (∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1)) : ℕ) : ℤ)

end

end A149720.P9088392690124945338

/-! ## A149720.P5078561032006461042

`A248227(A150452(n))`
-/

namespace A149720.P5078561032006461042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248227 (A150452 n).toNat

end

end A149720.P5078561032006461042

/-!
# A149721: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 1), (0, 1, -1), (1, -1, 1), (1, 1, 1)}.

The programs for A149721, there is no canonical definition to state claims against.
-/

/-! ## A149721.P17897267540797897086

`A149733(n)-A247138(A309908(n))`
-/

namespace A149721.P17897267540797897086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149733 n - A247138 (A309908 n).toNat

end

end A149721.P17897267540797897086

/-! ## A149721.P14153012954186289610

`or(1, A059995(Δ[(1-2^n)²]))`
-/

namespace A149721.P14153012954186289610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (2 ^ n : ℤ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A059995 (f1 (n + 1) - f1 n).toNat)

end

end A149721.P14153012954186289610

/-!
# A149722: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 1, 0), (0, 1, -1), (1, -1, 1), (1, 1, 1)}.

The programs for A149722, there is no canonical definition to state claims against.
-/

/-! ## A149722.P5975814286048125397

`or(1, A097337(A150752(n)))`
-/

namespace A149722.P5975814286048125397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A097337 (A150752 n).toNat)

end

end A149722.P5975814286048125397

/-! ## A149722.P16639241638622737473

`A004525(A290356(n)+A004273(n))`
-/

namespace A149722.P16639241638622737473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A290356 n + A004273 n).toNat

end

end A149722.P16639241638622737473

/-! ## A149722.P8356562832271253574

`A004525(A290356(n)+A007494(n))`
-/

namespace A149722.P8356562832271253574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A290356 n + A007494 n).toNat

end

end A149722.P8356562832271253574

/-!
# A149723: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 1), (0, 0, -1), (1, 0, -1), (1, 1, 1)}.

The programs for A149723, there is no canonical definition to state claims against.
-/

/-! ## A149723.P13117438737613883983

`∏{p}[A149710(n)², #]+and(20, n)`
-/

namespace A149723.P13117438737613883983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149710 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p + Nat.land 20 n

end

end A149723.P13117438737613883983

/-! ## A149723.P10412188611525116779

`A149724(n)%p?[∑[round(5*2^(n-2))]]`
-/

namespace A149723.P10412188611525116779
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (5 * (2 : ℚ) ^ ((n : ℤ) - 2 : ℤ))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A149724 n) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A149723.P10412188611525116779

/-!
# A149725: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, 0), (1, -1, 0), (1, 1, -1), (1, 1, 1)}.

The programs for A149725, there is no canonical definition to state claims against.
-/

/-! ## A149725.P2413329838289807197

`or(A117910(n)^3, A110654(A150803(n)))`
-/

namespace A149725.P2413329838289807197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A117910 n ^ 3) (A110654 (A150803 n).toNat)

end

end A149725.P2413329838289807197

/-! ## A149725.P2657977251023317258

`A172308(∑{d}[ceil(2^(n-1)), #])`
-/

namespace A149725.P2657977251023317258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172308 (∑ d ∈ Nat.divisors (f1 n).natAbs, d)

end

end A149725.P2657977251023317258

/-!
# A149726: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 0), (1, 0, -1), (1, 1, -1), (1, 1, 1)}.

The programs for A149726, there is no canonical definition to state claims against.
-/

/-! ## A149726.P17388151124298340081

`A149727(n)-A002605(A307670(n+1))`
-/

namespace A149726.P17388151124298340081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149727 n - A002605 (A307670 (n + 1)).toNat

end

end A149726.P17388151124298340081

/-! ## A149726.P12566214353370238881

`A149728(n)-A008407(A307670(n+1)+1)`
-/

namespace A149726.P12566214353370238881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149728 n - A008407 (A307670 (n + 1) + 1).toNat

end

end A149726.P12566214353370238881

/-! ## A149726.P15946045101355290346

`A149728(n)-A000045(2*A307670(n+1))`
-/

namespace A149726.P15946045101355290346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149728 n - A000045 (2 * A307670 (n + 1)).toNat

end

end A149726.P15946045101355290346

/-!
# A149727: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 1, 0), (1, 0, -1), (1, 1, -1), (1, 1, 1)}.

The programs for A149727, there is no canonical definition to state claims against.
-/

/-! ## A149727.P6131883083646606661

`A109613(A149728(n)-A008218(n))`
-/

namespace A149727.P6131883083646606661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 (A149728 n - A008218 n).toNat

end

end A149727.P6131883083646606661

/-! ## A149727.P17575111308868299913

`A149728(n)-A248327(A001096(n))`
-/

namespace A149727.P17575111308868299913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149728 n - A248327 (A001096 n).toNat

end

end A149727.P17575111308868299913

/-! ## A149727.P15507519783501521849

`A149728(n)-A188170(A149713(n))`
-/

namespace A149727.P15507519783501521849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149728 n - A188170 (A149713 n).toNat

end

end A149727.P15507519783501521849

/-!
# A149728: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 1), (0, 1, -1), (1, 0, -1), (1, 1, 1)}.

The programs for A149728, there is no canonical definition to state claims against.
-/

/-! ## A149728.P15877327203784600778

`A248327(A001096(n))+A149727(n)`
-/

namespace A149728.P15877327203784600778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248327 (A001096 n).toNat + A149727 n

end

end A149728.P15877327203784600778

/-! ## A149728.P7564294481930965835

`A188170(A149713(n))+A149727(n)`
-/

namespace A149728.P7564294481930965835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188170 (A149713 n).toNat + A149727 n

end

end A149728.P7564294481930965835

/-! ## A149728.P15585704516653439294

`A248327(A001096(n))-(A248327(n)-A149727(n))`
-/

namespace A149728.P15585704516653439294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248327 (A001096 n).toNat - (A248327 n - A149727 n)

end

end A149728.P15585704516653439294

/-!
# A149729: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 1, 1), (0, 1, -1), (1, 0, -1), (1, 1, 1)}.

The programs for A149729, there is no canonical definition to state claims against.
-/

/-! ## A149729.P2793107585645707241

`or(A149726(n), A351241(A081659(n)))`
-/

namespace A149729.P2793107585645707241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A149726 n) (A351241 (A081659 n).toNat)

end

end A149729.P2793107585645707241

/-! ## A149729.P1497203486003570109

`or(A149726(n), A222063(A261300(n)))`
-/

namespace A149729.P1497203486003570109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A149726 n) (A222063 (A261300 n).toNat)

end

end A149729.P1497203486003570109

/-! ## A149729.P17596197527838388592

`or(A149726(A307670(n+1)), A149726(n))`
-/

namespace A149729.P17596197527838388592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A149726 (A307670 (n + 1)).toNat) (A149726 n)

end

end A149729.P17596197527838388592

/-!
# A149730: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, 1), (1, 0, -1), (1, 1, -1), (1, 1, 1)}.

The programs for A149730, there is no canonical definition to state claims against.
-/

/-! ## A149730.P11050990927258437786

`xor(A149731(n), A185284(n²))`
-/

namespace A149730.P11050990927258437786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A149731 n) (A185284 (n ^ 2))

end

end A149730.P11050990927258437786

/-! ## A149730.P2564823115038043761

`A078898(A149744(n)+A149714(n))`
-/

namespace A149730.P2564823115038043761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (A149744 n + A149714 n).toNat

end

end A149730.P2564823115038043761

/-!
# A149731: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 1, 1), (1, 0, -1), (1, 1, -1), (1, 1, 1)}.

The programs for A149731, there is no canonical definition to state claims against.
-/

/-! ## A149731.P3974089713527246599

`or(A004525(A238113(n)), A022171(n))`
-/

namespace A149731.P3974089713527246599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A004525 (A238113 n).toNat) (A022171 n)

end

end A149731.P3974089713527246599

/-! ## A149731.P16944730401524153442

`or(A004525(A238113(n)), A149720(n))`
-/

namespace A149731.P16944730401524153442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A004525 (A238113 n).toNat) (A149720 n)

end

end A149731.P16944730401524153442

/-! ## A149731.P10548978132193712113

`or(A004525(A238113(n)), A176491(n))`
-/

namespace A149731.P10548978132193712113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A004525 (A238113 n).toNat) (A176491 n)

end

end A149731.P10548978132193712113

/-!
# A149732: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 0), (0, -1, 0), (1, 1, -1), (1, 1, 1)}.

The programs for A149732, there is no canonical definition to state claims against.
-/

/-! ## A149732.P17421656205382729640

`A049093(A149600(n))`
-/

namespace A149732.P17421656205382729640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049093 (A149600 n).toNat

end

end A149732.P17421656205382729640

/-! ## A149732.P5569602271452334461

`A170886(A099036(n))`
-/

namespace A149732.P5569602271452334461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170886 (A099036 n).toNat

end

end A149732.P5569602271452334461

/-!
# A149733: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, 0), (0, -1, 1), (1, 1, -1), (1, 1, 1)}.

The programs for A149733, there is no canonical definition to state claims against.
-/

/-! ## A149733.P3743194599766660983

`A247138(A309908(n))+A149721(n)`
-/

namespace A149733.P3743194599766660983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247138 (A309908 n).toNat + A149721 n

end

end A149733.P3743194599766660983

/-! ## A149733.P17708119084705006213

`A149734(A001096(n))`
-/

namespace A149733.P17708119084705006213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149734 (A001096 n).toNat

end

end A149733.P17708119084705006213

/-!
# A149734: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 1, 0), (1, -1, 1), (1, 0, -1), (1, 1, 1)}.

The programs for A149734, there is no canonical definition to state claims against.
-/

/-! ## A149734.P8437055490557031910

`A149738(n)-A247138(A309908(n))`
-/

namespace A149734.P8437055490557031910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149738 n - A247138 (A309908 n).toNat

end

end A149734.P8437055490557031910

/-!
# A149735: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 1, 0), (0, 1, -1), (1, -1, 1), (1, 1, 1)}.

The programs for A149735, there is no canonical definition to state claims against.
-/

/-! ## A149735.P18348381914362353120

`A149736(n)-A025469(A001563(n))`
-/

namespace A149735.P18348381914362353120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149736 n - A025469 (A001563 n).toNat

end

end A149735.P18348381914362353120

/-! ## A149735.P3150753400097614508

`A149736(n)-A063725(A007905(n))`
-/

namespace A149735.P3150753400097614508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149736 n - A063725 (A007905 n).toNat

end

end A149735.P3150753400097614508

/-! ## A149735.P11270061920610491121

`A149736(n)-A107846(A024168(n+1))`
-/

namespace A149735.P11270061920610491121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149736 n - A107846 (A024168 (n + 1)).toNat

end

end A149735.P11270061920610491121

/-!
# A149736: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 1, 1), (0, 1, -1), (1, -1, 1), (1, 1, 1)}.

The programs for A149736, there is no canonical definition to state claims against.
-/

/-! ## A149736.P7151674265586375636

`A004525(xor(n, A150915(n)))`
-/

namespace A149736.P7151674265586375636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (Int.xor (n : ℤ) (A150915 n)).toNat

end

end A149736.P7151674265586375636

/-! ## A149736.P1670620262983478913

`A149735(n)+A025469(A001563(n))`
-/

namespace A149736.P1670620262983478913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149735 n + A025469 (A001563 n).toNat

end

end A149736.P1670620262983478913

/-! ## A149736.P17728381770852970647

`A149735(n)+A063725(A007905(n))`
-/

namespace A149736.P17728381770852970647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149735 n + A063725 (A007905 n).toNat

end

end A149736.P17728381770852970647

/-!
# A149737: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 1), (0, 0, -1), (1, 1, -1), (1, 1, 1)}.

The programs for A149737, there is no canonical definition to state claims against.
-/

/-! ## A149737.P16727020457707081141

`A005185(A327245(n)+A327214(n))`
-/

namespace A149737.P16727020457707081141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005185 (A327245 n + A327214 n).toNat

end

end A149737.P16727020457707081141

/-! ## A149737.P3910914331652221569

`A095725(A104432(n))`
-/

namespace A149737.P3910914331652221569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095725 (A104432 n).toNat

end

end A149737.P3910914331652221569

/-!
# A149738: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 0), (1, -1, 0), (1, 1, -1), (1, 1, 1)}.

The programs for A149738, there is no canonical definition to state claims against.
-/

/-! ## A149738.P16062034080616759460

`A247138(A309908(n))+A149734(n)`
-/

namespace A149738.P16062034080616759460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247138 (A309908 n).toNat + A149734 n

end

end A149738.P16062034080616759460

/-! ## A149738.P15810912602820647030

`or(A001076(n), A131319(A303170(n)))`
-/

namespace A149738.P15810912602820647030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001076 n) (A131319 (A303170 n).toNat)

end

end A149738.P15810912602820647030

/-! ## A149738.P7491920350539549291

`or(A051777(A081568(n)), A325156(n))`
-/

namespace A149738.P7491920350539549291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A051777 (A081568 n).toNat) (A325156 n)

end

end A149738.P7491920350539549291

/-!
# A149739: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, 0), (1, -1, 1), (1, 1, -1), (1, 1, 1)}.

The programs for A149739, there is no canonical definition to state claims against.
-/

/-! ## A149739.P15053717790623437893

`A085801(A149740(n))`
-/

namespace A149739.P15053717790623437893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085801 (A149740 n).toNat

end

end A149739.P15053717790623437893

/-! ## A149739.P8142497864207858173

`A149740(n)-A184943(C(n, 6))`
-/

namespace A149739.P8142497864207858173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149740 n - A184943 (Nat.choose n 6)

end

end A149739.P8142497864207858173

/-! ## A149739.P6387319471227999403

`A149740(n)-A185143(C(n, 6))`
-/

namespace A149739.P6387319471227999403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149740 n - A185143 (Nat.choose n 6)

end

end A149739.P6387319471227999403

/-! ## A149739.P1237798509539217754

`A004442(A149740(n)-A174116(n))`
-/

namespace A149739.P1237798509539217754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (A149740 n - A174116 n).toNat

end

end A149739.P1237798509539217754

/-!
# A149740: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, 1), (1, -1, 0), (1, 1, -1), (1, 1, 1)}.

The programs for A149740, there is no canonical definition to state claims against.
-/

/-! ## A149740.P384053367121829946

`A111701(or(∑{e}[n+1, #-1], A149739(n)))`
-/

namespace A149740.P384053367121829946
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111701 (Int.lor (∑ p ∈ Nat.primeFactors (f1 n), ((Nat.factorization (f1 n) p : ℤ) - 1)) (A149739 n)).toNat

end

end A149740.P384053367121829946

/-! ## A149740.P15513753342499663721

`A174116(n)+A004442(A149739(n))`
-/

namespace A149740.P15513753342499663721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174116 n + A004442 (A149739 n).toNat

end

end A149740.P15513753342499663721

/-! ## A149740.P7739886188395241733

`A149739(n)+A083890(A149774(n))`
-/

namespace A149740.P7739886188395241733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149739 n + A083890 (A149774 n).toNat

end

end A149740.P7739886188395241733

/-! ## A149740.P11923317229067623958

`A149739(n)+A001842(A291113(n))`
-/

namespace A149740.P11923317229067623958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149739 n + A001842 (A291113 n).toNat

end

end A149740.P11923317229067623958

/-!
# A149741: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 1, 1), (0, 1, -1), (1, -1, 1), (1, 1, 1)}.

The programs for A149741, there is no canonical definition to state claims against.
-/

/-! ## A149741.P8793113714103106069

`A004525(xor(2, A150916(n)+n))`
-/

namespace A149741.P8793113714103106069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (Int.xor 2 (A150916 n + (n : ℤ))).toNat

end

end A149741.P8793113714103106069

/-! ## A149741.P15446847068127447855

`A216523(A102699(n))`
-/

namespace A149741.P15446847068127447855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216523 (A102699 n).toNat

end

end A149741.P15446847068127447855

/-!
# A149742: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 0), (0, -1, 1), (1, 1, -1), (1, 1, 1)}.

The programs for A149742, there is no canonical definition to state claims against.
-/

/-! ## A149742.P1312560367360095605

`∏{p}[A149743(n)², #]`
-/

namespace A149742.P1312560367360095605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149743 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A149742.P1312560367360095605

/-! ## A149742.P6609275278979755336

`A149743(A001096(n))`
-/

namespace A149742.P6609275278979755336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149743 (A001096 n).toNat

end

end A149742.P6609275278979755336

/-!
# A149743: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, 1), (0, -1, 1), (1, 1, -1), (1, 1, 1)}.

The programs for A149743, there is no canonical definition to state claims against.
-/

/-! ## A149743.P12751033270288008819

`A004525(A290356(n)+A224521(n))`
-/

namespace A149743.P12751033270288008819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A290356 n + A224521 n).toNat

end

end A149743.P12751033270288008819

/-! ## A149743.P7992056311979309144

`A051274(xor(A006882(n), A083102(n)))`
-/

namespace A149743.P7992056311979309144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051274 (Int.xor (A006882 n) (A083102 n)).toNat

end

end A149743.P7992056311979309144

/-! ## A149743.P4430865561435448552

`A065033(A224521(n)+A290356(n)-A087010(n+1))`
-/

namespace A149743.P4430865561435448552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A224521 n + (A290356 n - A087010 (n + 1))).toNat

end

end A149743.P4430865561435448552

/-!
# A149744: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 1, 0), (1, -1, 0), (1, 1, -1), (1, 1, 1)}.

The programs for A149744, there is no canonical definition to state claims against.
-/

/-! ## A149744.P13207262617095527270

`A259178(A149594(n))`
-/

namespace A149744.P13207262617095527270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259178 (A149594 n).toNat

end

end A149744.P13207262617095527270

/-! ## A149744.P7880036020769821613

`or(A149737(n), A384890(A032170(n+1)))`
-/

namespace A149744.P7880036020769821613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A149737 n) (A384890 (A032170 (n + 1)).toNat)

end

end A149744.P7880036020769821613

/-!
# A149745: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 0), (1, -1, 1), (1, 1, -1), (1, 1, 1)}.

The programs for A149745, there is no canonical definition to state claims against.
-/

/-! ## A149745.P10432525173673420961

`A149746(n)-A184943(C(n, 6))`
-/

namespace A149745.P10432525173673420961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149746 n - A184943 (Nat.choose n 6)

end

end A149745.P10432525173673420961

/-! ## A149745.P11217927788496823818

`A149746(n)-A185143(C(n, 6))`
-/

namespace A149745.P11217927788496823818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149746 n - A185143 (Nat.choose n 6)

end

end A149745.P11217927788496823818

/-! ## A149745.P2997066744330916220

`A004442(A149746(n)-A174116(n))`
-/

namespace A149745.P2997066744330916220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (A149746 n - A174116 n).toNat

end

end A149745.P2997066744330916220

/-! ## A149745.P6048740027899536236

`A109613(A149746(n)-A132393(n))`
-/

namespace A149745.P6048740027899536236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 (A149746 n - A132393 n).toNat

end

end A149745.P6048740027899536236

/-!
# A149746: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 1), (1, -1, 0), (1, 1, -1), (1, 1, 1)}.

The programs for A149746, there is no canonical definition to state claims against.
-/

/-! ## A149746.P7291396015285540459

`A174116(n)+A004442(A149745(n))`
-/

namespace A149746.P7291396015285540459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174116 n + A004442 (A149745 n).toNat

end

end A149746.P7291396015285540459

/-! ## A149746.P7576848827219727023

`A109613(xor(A037953(n), A149745(n)))`
-/

namespace A149746.P7576848827219727023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 (Int.xor (A037953 n) (A149745 n)).toNat

end

end A149746.P7576848827219727023

/-! ## A149746.P6884434377176947941

`A026741(A231285(n+1)+A149745(n))`
-/

namespace A149746.P6884434377176947941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A231285 (n + 1) + A149745 n).toNat

end

end A149746.P6884434377176947941

/-! ## A149746.P2318174280754769141

`A028310(A282441(n+1)+A149745(n))`
-/

namespace A149746.P2318174280754769141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A282441 (n + 1) + A149745 n).toNat

end

end A149746.P2318174280754769141

/-!
# A149747: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, 1), (1, -1, 1), (1, 1, -1), (1, 1, 1)}.

The programs for A149747, there is no canonical definition to state claims against.
-/

/-! ## A149747.P16862485662812663072

`A340988(A001317(n))+A149745(n)`
-/

namespace A149747.P16862485662812663072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340988 ((A001317 n).toNat + 91) + A149745 n

end

end A149747.P16862485662812663072

/-! ## A149747.P17320192933946703776

`A340988(A001317(n))+A149746(n)`
-/

namespace A149747.P17320192933946703776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340988 ((A001317 n).toNat + 91) + A149746 n

end

end A149747.P17320192933946703776

/-! ## A149747.P15206435428068443696

`A149745(n)+A107393(A179062(n+1))`
-/

namespace A149747.P15206435428068443696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149745 n + A107393 (A179062 (n + 1)).toNat

end

end A149747.P15206435428068443696

/-!
# A149748: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 1), (0, -1, 1), (1, 1, -1), (1, 1, 1)}.

The programs for A149748, there is no canonical definition to state claims against.
-/

/-! ## A149748.P12874934970599678347

`A105570(n)+A004525(A150937(n))`
-/

namespace A149748.P12874934970599678347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105570 n + A004525 (A150937 n).toNat

end

end A149748.P12874934970599678347

/-! ## A149748.P11530683425267204890

`A105570(n)+A004525(A150938(n))`
-/

namespace A149748.P11530683425267204890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105570 n + A004525 (A150938 n).toNat

end

end A149748.P11530683425267204890

/-! ## A149748.P10268107519272926137

`or(A003415(n), A004525(A150937(n)))`
-/

namespace A149748.P10268107519272926137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A003415 n) (A004525 (A150937 n).toNat)

end

end A149748.P10268107519272926137

/-!
# A149749: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 1, 0), (1, -1, 0), (1, 1, -1), (1, 1, 1)}.

The programs for A149749, there is no canonical definition to state claims against.
-/

/-! ## A149749.P5044070878925141601

`A049093(A149614(n))`
-/

namespace A149749.P5044070878925141601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049093 (A149614 n).toNat

end

end A149749.P5044070878925141601

/-! ## A149749.P17488073292033579288

`A166104(A002024(n^n))`
-/

namespace A149749.P17488073292033579288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166104 (A002024 (n ^ n)).toNat

end

end A149749.P17488073292033579288

/-!
# A149750: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 1, 0), (1, -1, 1), (1, 1, -1), (1, 1, 1)}.

The programs for A149750, there is no canonical definition to state claims against.
-/

/-! ## A149750.P10136191669263216658

`A090915(A149751(n))`
-/

namespace A149750.P10136191669263216658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090915 (A149751 n).toNat

end

end A149750.P10136191669263216658

/-! ## A149750.P16290884460493604319

`or(1, A027870(A211388(n)))`
-/

namespace A149750.P16290884460493604319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A027870 (A211388 n).toNat)

end

end A149750.P16290884460493604319

/-!
# A149751: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 1), (1, -1, 1), (1, 1, -1), (1, 1, 1)}.

The programs for A149751, there is no canonical definition to state claims against.
-/

/-! ## A149751.P14218899509303554046

`A090915(A149750(n))`
-/

namespace A149751.P14218899509303554046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090915 (A149750 n).toNat

end

end A149751.P14218899509303554046

/-! ## A149751.P14895437565368676317

`A038566(A229233(n+2)+3)`
-/

namespace A149751.P14895437565368676317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038566 (A229233 (n + 2) + 3).toNat

end

end A149751.P14895437565368676317

/-!
# A149752: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 1), (1, 0, -1), (1, 1, -1), (1, 1, 1)}.

The programs for A149752, there is no canonical definition to state claims against.
-/

/-! ## A149752.P13926527219067968873

`∏{p}[A149753(n)², #]`
-/

namespace A149752.P13926527219067968873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149753 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A149752.P13926527219067968873

/-! ## A149752.P5960231671405825730

`A007306(A057085(n))`
-/

namespace A149752.P5960231671405825730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007306 (A057085 n).toNat

end

end A149752.P5960231671405825730

/-!
# A149754: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 1, 0), (1, -1, 1), (1, 1, -1), (1, 1, 1)}.

The programs for A149754, there is no canonical definition to state claims against.
-/

/-! ## A149754.P7507736245120654936

`A400863(A149755(n))`
-/

namespace A149754.P7507736245120654936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A400863 (A149755 n).toNat

end

end A149754.P7507736245120654936

/-! ## A149754.P2037898138585826664

`A149755(n)-A239657(A084859(n))`
-/

namespace A149754.P2037898138585826664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149755 n - A239657 (A084859 n).toNat

end

end A149754.P2037898138585826664

/-! ## A149754.P15058632803831428776

`A149755(n)-A025469(A183340(n+1))`
-/

namespace A149754.P15058632803831428776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149755 n - A025469 (A183340 (n + 1)).toNat

end

end A149754.P15058632803831428776

/-!
# A149755: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 1, 1), (1, -1, 1), (1, 1, -1), (1, 1, 1)}.

The programs for A149755, there is no canonical definition to state claims against.
-/

/-! ## A149755.P8591152753659574857

`A149754(n)+A058343(A005195(n))`
-/

namespace A149755.P8591152753659574857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149754 n + A058343 (A005195 n).toNat

end

end A149755.P8591152753659574857

/-! ## A149755.P7726962279425303637

`A149754(n)+A058343(A056971(n))`
-/

namespace A149755.P7726962279425303637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149754 n + A058343 (A056971 n).toNat

end

end A149755.P7726962279425303637

/-! ## A149755.P12564631271780335549

`A239657(A084859(n))+A149754(n)`
-/

namespace A149755.P12564631271780335549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239657 (A084859 n).toNat + A149754 n

end

end A149755.P12564631271780335549

/-!
# A149756: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 1), (-1, 1, 1), (1, 0, -1), (1, 0, 1), (1, 1, -1)}.

The programs for A149756, there is no canonical definition to state claims against.
-/

/-! ## A149756.P2448756417025324019

`A246333(xor(A109955(n), A358912(n)))`
-/

namespace A149756.P2448756417025324019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246333 (Int.xor (A109955 n) (A358912 n)).toNat

end

end A149756.P2448756417025324019

/-! ## A149756.P6278737238223423582

`A088597(A168582(n))`
-/

namespace A149756.P6278737238223423582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088597 (A168582 n).toNat

end

end A149756.P6278737238223423582

/-!
# A149757: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 1, 1), (1, -1, 1), (1, 1, -1), (1, 1, 1)}.

The programs for A149757, there is no canonical definition to state claims against.
-/

/-! ## A149757.P5790022624994128487

`A037918(A149630(n))`
-/

namespace A149757.P5790022624994128487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037918 (A149630 n).toNat

end

end A149757.P5790022624994128487

/-! ## A149757.P18072696545737491985

`A124741(A149794(n)+A008966(n+1))`
-/

namespace A149757.P18072696545737491985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124741 (A149794 n + A008966 (n + 1)).toNat

end

end A149757.P18072696545737491985

/-!
# A149758: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 0), (-1, 0, 1), (0, -1, 0), (0, 0, -1), (1, 1, 1)}.

The programs for A149758, there is no canonical definition to state claims against.
-/

/-! ## A149758.P1933702810719470311

`or(1, A273888(A000984(n)))`
-/

namespace A149758.P1933702810719470311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A273888 (A000984 n).toNat)

end

end A149758.P1933702810719470311

/-! ## A149758.P4896943910307138468

`A008611(2*(A150499(n)+A008611(n)))`
-/

namespace A149758.P4896943910307138468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (2 * (A150499 n + A008611 n)).toNat

end

end A149758.P4896943910307138468

/-!
# A149759: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 0), (0, -1, 0), (0, 1, -1), (1, 0, -1), (1, 1, 1)}.

The programs for A149759, there is no canonical definition to state claims against.
-/

/-! ## A149759.P3500099736672983273

`or(A107286(A001147(n)), A290912(n))`
-/

namespace A149759.P3500099736672983273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A107286 (A001147 n).toNat) (A290912 n)

end

end A149759.P3500099736672983273

/-! ## A149759.P3747409529628691732

`or(A149691(n), A227083(A149691(n)))`
-/

namespace A149759.P3747409529628691732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A149691 n) (A227083 (A149691 n).toNat)

end

end A149759.P3747409529628691732

/-! ## A149759.P11450249795511577997

`or(A275367(A112934(n)), A290912(n))`
-/

namespace A149759.P11450249795511577997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A275367 (A112934 n).toNat) (A290912 n)

end

end A149759.P11450249795511577997

/-!
# A149760: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 0), (-1, 1, 1), (0, -1, 0), (0, 0, -1), (1, 1, 1)}.

The programs for A149760, there is no canonical definition to state claims against.
-/

/-! ## A149760.P16837517410107297482

`A372172(A330054(n))+A149759(n)`
-/

namespace A149760.P16837517410107297482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372172 (A330054 n).toNat + A149759 n

end

end A149760.P16837517410107297482

/-! ## A149760.P6917155321065332497

`A260731(A045890(n))-A106150(n)`
-/

namespace A149760.P6917155321065332497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260731 (A045890 n).toNat - A106150 n

end

end A149760.P6917155321065332497

/-! ## A149760.P339810739740021470

`or(A003505(n+1), A008615(A003517(n+2)))`
-/

namespace A149760.P339810739740021470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A003505 (n + 1)) (A008615 (A003517 (n + 2)).toNat)

end

end A149760.P339810739740021470

/-!
# A149761: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 0), (-1, 0, 1), (0, -1, 1), (0, 0, -1), (1, 1, 1)}.

The programs for A149761, there is no canonical definition to state claims against.
-/

/-! ## A149761.P8544880967254759798

`A139711(A149432(n))`
-/

namespace A149761.P8544880967254759798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139711 (A149432 n).toNat

end

end A149761.P8544880967254759798

/-! ## A149761.P1989951110077962446

`A226457(A149759(n))`
-/

namespace A149761.P1989951110077962446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226457 (A149759 n).toNat

end

end A149761.P1989951110077962446

/-!
# A149762: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 0), (-1, 0, 1), (0, -1, 0), (0, 1, -1), (1, 1, 1)}.

The programs for A149762, there is no canonical definition to state claims against.
-/

/-! ## A149762.P5512470008707825467

`A004525(or(n, A151050(n)))`
-/

namespace A149762.P5512470008707825467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (Int.lor (n : ℤ) (A151050 n)).toNat

end

end A149762.P5512470008707825467

/-! ## A149762.P8237354778301089800

`A060384((n+1)*A095297(2*(n+1)))`
-/

namespace A149762.P8237354778301089800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060384 ((n + 1 : ℤ) * A095297 (2 * (n + 1))).toNat

end

end A149762.P8237354778301089800

/-! ## A149762.P2482180422031953392

`or(A034888(A014445(n)), A034888(n))`
-/

namespace A149762.P2482180422031953392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A034888 (A014445 n).toNat) (A034888 n)

end

end A149762.P2482180422031953392

/-!
# A149763: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 0), (0, -1, 0), (0, 1, -1), (1, 1, -1), (1, 1, 1)}.

The programs for A149763, there is no canonical definition to state claims against.
-/

/-! ## A149763.P9416631023778595363

`A137687(A005059(n)-n)+1`
-/

namespace A149763.P9416631023778595363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137687 (A005059 n - (n : ℤ)).toNat + 1

end

end A149763.P9416631023778595363

/-! ## A149763.P16390183141935695093

`A137687(A005059(A000007(n)+n))`
-/

namespace A149763.P16390183141935695093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137687 (A005059 (A000007 n + (n : ℤ)).toNat).toNat

end

end A149763.P16390183141935695093

/-! ## A149763.P7898799788592084200

`A137687(A005059(n)+A003982(n))`
-/

namespace A149763.P7898799788592084200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137687 (A005059 n + A003982 n).toNat

end

end A149763.P7898799788592084200

/-!
# A149764: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 0), (0, -1, 1), (1, -1, 0), (1, 0, -1), (1, 1, 1)}.

The programs for A149764, there is no canonical definition to state claims against.
-/

/-! ## A149764.P8807638533022404048

`A400863(A149765(n))`
-/

namespace A149764.P8807638533022404048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A400863 (A149765 n).toNat

end

end A149764.P8807638533022404048

/-! ## A149764.P13808349813944478888

`A034887(xor(A036882(n), A138269(n)))`
-/

namespace A149764.P13808349813944478888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034887 (Int.xor (A036882 n) (A138269 n)).toNat

end

end A149764.P13808349813944478888

/-!
# A149765: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 0), (-1, 1, 1), (0, -1, 0), (0, 1, -1), (1, 1, 1)}.

The programs for A149765, there is no canonical definition to state claims against.
-/

/-! ## A149765.P14902309407125789723

`A116922(A224240(n))`
-/

namespace A149765.P14902309407125789723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116922 (A224240 n).toNat

end

end A149765.P14902309407125789723

/-! ## A149765.P1349321235372879715

`or(A001222(A000556(n)), A149764(n))`
-/

namespace A149765.P1349321235372879715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001222 (A000556 n).toNat) (A149764 n)

end

end A149765.P1349321235372879715

/-! ## A149765.P5816061269210989083

`or(A001222(A014566(n)), A149764(n))`
-/

namespace A149765.P5816061269210989083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001222 (A014566 n).toNat) (A149764 n)

end

end A149765.P5816061269210989083

/-!
# A149766: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 0), (-1, 0, 1), (0, -1, 1), (0, 1, -1), (1, 1, 1)}.

The programs for A149766, there is no canonical definition to state claims against.
-/

/-! ## A149766.P1353673436752949711

`or((n+1)/∏{p}[n+1, #], A080079(A077829(n)))`
-/

namespace A149766.P1353673436752949711
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ))) (A080079 (A077829 n).toNat)

end

end A149766.P1353673436752949711

/-! ## A149766.P11705536998161956210

`or(A080079(A077829(n)), A204771(n))`
-/

namespace A149766.P11705536998161956210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A080079 (A077829 n).toNat) (A204771 n)

end

end A149766.P11705536998161956210

/-! ## A149766.P16482848532170775595

`A260731(xor(A045890(n), A089851(n)))`
-/

namespace A149766.P16482848532170775595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260731 (Int.xor (A045890 n) (A089851 n)).toNat

end

end A149766.P16482848532170775595

/-!
# A149767: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 0), (1, -1, 0), (1, -1, 1), (1, 0, -1), (1, 1, 1)}.

The programs for A149767, there is no canonical definition to state claims against.
-/

/-! ## A149767.P10094989997548084031

`ceil(A326294(n+2)/8)`
-/

namespace A149767.P10094989997548084031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A326294 (n + 2) : ℚ) / 8⌉

end

end A149767.P10094989997548084031

/-! ## A149767.P6359682668825586608

`A105670(A215143(n))`
-/

namespace A149767.P6359682668825586608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105670 (A215143 n).toNat

end

end A149767.P6359682668825586608

/-!
# A149768: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 0), (0, -1, 1), (1, -1, 1), (1, 0, -1), (1, 1, 1)}.

The programs for A149768, there is no canonical definition to state claims against.
-/

/-! ## A149768.P11538931583967806610

`A092695(A150234(n+1))`
-/

namespace A149768.P11538931583967806610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092695 (A150234 (n + 1)).toNat

end

end A149768.P11538931583967806610

/-! ## A149768.P18271456258711506475

`or(1, A260731(A045890(n)))`
-/

namespace A149768.P18271456258711506475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A260731 (A045890 n).toNat)

end

end A149768.P18271456258711506475

/-! ## A149768.P6824266312230089531

`A260731(xor(char[2^n], A045890(n)))`
-/

namespace A149768.P6824266312230089531
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260731 (Int.xor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A045890 n)).toNat

end

end A149768.P6824266312230089531

/-!
# A149769: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 1), (-1, 1, 0), (0, -1, 1), (0, 1, -1), (1, 1, 1)}.

The programs for A149769, there is no canonical definition to state claims against.
-/

/-! ## A149769.P6052264771527796252

`A004151(A149770(n))`
-/

namespace A149769.P6052264771527796252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004151 (A149770 n).toNat

end

end A149769.P6052264771527796252

/-! ## A149769.P6934213101867151708

`A149770(A073789(n))`
-/

namespace A149769.P6934213101867151708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149770 (A073789 n).toNat

end

end A149769.P6934213101867151708

/-! ## A149769.P10483992570140231536

`A149770(A171644(n))`
-/

namespace A149769.P10483992570140231536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149770 (A171644 n).toNat

end

end A149769.P10483992570140231536

/-! ## A149769.P1483465662507368328

`A149770(A004869(n+1))`
-/

namespace A149769.P1483465662507368328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149770 (A004869 (n + 1)).toNat

end

end A149769.P1483465662507368328

/-!
# A149770: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 0), (-1, 1, 1), (0, -1, 1), (0, 1, -1), (1, 1, 1)}.

The programs for A149770, there is no canonical definition to state claims against.
-/

/-! ## A149770.P1609119174690514418

`or(A001221(n!), A149769(n))`
-/

namespace A149770.P1609119174690514418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001221 (Nat.factorial n)) (A149769 n)

end

end A149770.P1609119174690514418

/-! ## A149770.P6619475717661013519

`or(A001221(A000142(n)), A149769(n))`
-/

namespace A149770.P6619475717661013519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001221 (A000142 n).toNat) (A149769 n)

end

end A149770.P6619475717661013519

/-! ## A149770.P11460588238126024884

`or(A001221(A052699(n)), A149769(n))`
-/

namespace A149770.P11460588238126024884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001221 (A052699 n).toNat) (A149769 n)

end

end A149770.P11460588238126024884

/-! ## A149770.P18044097782420391141

`or(A001221(A072133(n)), A149769(n))`
-/

namespace A149770.P18044097782420391141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001221 (A072133 n).toNat) (A149769 n)

end

end A149770.P18044097782420391141

/-!
# A149771: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 0), (-1, 0, 1), (0, 0, -1), (1, -1, 0), (1, 1, 1)}.

The programs for A149771, there is no canonical definition to state claims against.
-/

/-! ## A149771.P1358397046720503122

`A274230(n)+A004525(A006139(n))`
-/

namespace A149771.P1358397046720503122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274230 n + A004525 (A006139 n).toNat

end

end A149771.P1358397046720503122

/-! ## A149771.P10204222190215037500

`A267806(A074444(n+1)+A002001(n))`
-/

namespace A149771.P10204222190215037500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267806 (A074444 (n + 1) + A002001 n).toNat

end

end A149771.P10204222190215037500

/-!
# A149772: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 1), (-1, 1, 1), (0, -1, 1), (0, 1, -1), (1, 1, 1)}.

The programs for A149772, there is no canonical definition to state claims against.
-/

/-! ## A149772.P16503791968935390121

`A004525(or(A000295(n), A110224(n)))`
-/

namespace A149772.P16503791968935390121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (Int.lor (A000295 n) (A110224 n)).toNat

end

end A149772.P16503791968935390121

/-! ## A149772.P2146633190194700398

`or(A001045(n), A004525(A110224(n)))`
-/

namespace A149772.P2146633190194700398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001045 n) (A004525 (A110224 n).toNat)

end

end A149772.P2146633190194700398

/-! ## A149772.P4372435049747951853

`or(A095940(n), A105224(A007226(n)))`
-/

namespace A149772.P4372435049747951853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A095940 n) (A105224 (A007226 n).toNat)

end

end A149772.P4372435049747951853

/-!
# A149773: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 0), (-1, 0, 1), (0, -1, 0), (1, 0, -1), (1, 1, 1)}.

The programs for A149773, there is no canonical definition to state claims against.
-/

/-! ## A149773.P8360790422426003076

`A087504(A372414(n+1))`
-/

namespace A149773.P8360790422426003076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087504 (A372414 (n + 1)).toNat

end

end A149773.P8360790422426003076

/-! ## A149773.P852043579484646902

`A029917(A119254(n)+A084059(n))`
-/

namespace A149773.P852043579484646902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029917 (A119254 n + A084059 n).toNat

end

end A149773.P852043579484646902

/-!
# A149774: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 0), (-1, 0, 1), (0, 0, -1), (1, -1, 1), (1, 1, 1)}.

The programs for A149774, there is no canonical definition to state claims against.
-/

/-! ## A149774.P5163088906886320063

`∑[A036461(∑[(1-2^n)²])]`
-/

namespace A149774.P5163088906886320063
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (2 ^ n : ℤ)) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036461 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A149774.P5163088906886320063

/-! ## A149774.P8948608560192749093

`A004525(∑[A150724(n)])`
-/

namespace A149774.P8948608560192749093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150724 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A149774.P8948608560192749093

/-! ## A149774.P7011007617090343232

`A004525(A236408(n+1)+A150763(n))`
-/

namespace A149774.P7011007617090343232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A236408 (n + 1) + A150763 n).toNat

end

end A149774.P7011007617090343232

/-!
# A149775: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 0), (-1, 0, 1), (0, 1, -1), (1, -1, 0), (1, 1, 1)}.

The programs for A149775, there is no canonical definition to state claims against.
-/

/-! ## A149775.P4430082741267176357

`A004526(A150922(n)+A107268(n))`
-/

namespace A149775.P4430082741267176357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A150922 n + A107268 n).toNat

end

end A149775.P4430082741267176357

/-! ## A149775.P9182306638164207137

`A123108(A150922(n)+A107268(n))`
-/

namespace A149775.P9182306638164207137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (A150922 n + A107268 n).toNat

end

end A149775.P9182306638164207137

/-! ## A149775.P10583736391986408314

`A007310(A182454(n*A155586(n)))`
-/

namespace A149775.P10583736391986408314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007310 (A182454 ((n : ℤ) * A155586 n).toNat).toNat

end

end A149775.P10583736391986408314

/-!
# A149776: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 0), (0, -1, 1), (0, 1, -1), (1, -1, 0), (1, 1, 1)}.

The programs for A149776, there is no canonical definition to state claims against.
-/

/-! ## A149776.P8247035111278016034

`A136548(A168653(n+1))`
-/

namespace A149776.P8247035111278016034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136548 (A168653 (n + 1)).toNat

end

end A149776.P8247035111278016034

/-! ## A149776.P8172105920795377044

`A004525(or(1, A007163(n+1)-1))`
-/

namespace A149776.P8172105920795377044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (Int.lor 1 (A007163 (n + 1) - 1)).toNat

end

end A149776.P8172105920795377044

/-! ## A149776.P8021704187703701047

`A116921(A007163(n+1)-char[∑[n+1]]+1)`
-/

namespace A149776.P8021704187703701047
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116921 (A007163 (n + 1) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + 1).toNat

end

end A149776.P8021704187703701047

/-!
# A149777: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 0), (-1, 1, 1), (0, -1, 0), (1, 0, -1), (1, 1, 1)}.

The programs for A149777, there is no canonical definition to state claims against.
-/

/-! ## A149777.P14587604925446461683

`or(A004525(A007163(n+1)), A117967(n))`
-/

namespace A149777.P14587604925446461683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A004525 (A007163 (n + 1)).toNat) (A117967 n)

end

end A149777.P14587604925446461683

/-! ## A149777.P9638377842200664427

`or(A004525(A007163(n+1)), A346920(n))`
-/

namespace A149777.P9638377842200664427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A004525 (A007163 (n + 1)).toNat) (A346920 n)

end

end A149777.P9638377842200664427

/-! ## A149777.P2225338905131268094

`or(A228369(A034381(n+1)), A290914(n))`
-/

namespace A149777.P2225338905131268094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A228369 (A034381 (n + 1)).toNat) (A290914 n)

end

end A149777.P2225338905131268094

/-!
# A149778: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 0), (-1, 0, 1), (0, -1, 1), (1, 0, -1), (1, 1, 1)}.

The programs for A149778, there is no canonical definition to state claims against.
-/

/-! ## A149778.P580653945534793262

`A057357(A084480(n))+1`
-/

namespace A149778.P580653945534793262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057357 (A084480 n).toNat + 1

end

end A149778.P580653945534793262

/-! ## A149778.P7762332733058871512

`or(A001221(A113296(n)), A149776(n))`
-/

namespace A149778.P7762332733058871512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001221 (A113296 n).toNat) (A149776 n)

end

end A149778.P7762332733058871512

/-! ## A149778.P4619570797188481209

`or(A001221(A116881(n)), A149776(n))`
-/

namespace A149778.P4619570797188481209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001221 (A116881 n).toNat) (A149776 n)

end

end A149778.P4619570797188481209

/-!
# A149779: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 0), (-1, 0, 1), (0, -1, 0), (1, 1, -1), (1, 1, 1)}.

The programs for A149779, there is no canonical definition to state claims against.
-/

/-! ## A149779.P4207962918031988436

`or(1, A276796(A214954(n)))`
-/

namespace A149779.P4207962918031988436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A276796 (A214954 n).toNat)

end

end A149779.P4207962918031988436

/-! ## A149779.P9297488219461807815

`or(A276796(A150921(n)), A293042(n))`
-/

namespace A149779.P9297488219461807815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A276796 (A150921 n).toNat) (A293042 n)

end

end A149779.P9297488219461807815

/-!
# A149780: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 0), (0, -1, 1), (1, 0, -1), (1, 1, -1), (1, 1, 1)}.

The programs for A149780, there is no canonical definition to state claims against.
-/

/-! ## A149780.P15387611782274947911

`A319198(A150793(n)+A005087(n+1))`
-/

namespace A149780.P15387611782274947911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319198 (A150793 n + A005087 (n + 1)).toNat

end

end A149780.P15387611782274947911

/-! ## A149780.P8404705047854345748

`A074840(A249739(n+5)+A006139(n))`
-/

namespace A149780.P8404705047854345748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074840 (A249739 (n + 5) + A006139 n).toNat

end

end A149780.P8404705047854345748

/-! ## A149780.P2668301170442047375

`A319198(A150793(n)+n-A319198(n))`
-/

namespace A149780.P2668301170442047375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319198 (A150793 n + ((n : ℤ) - A319198 n)).toNat

end

end A149780.P2668301170442047375

/-!
# A149781: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 0), (0, -1, 1), (1, -1, 0), (1, 1, -1), (1, 1, 1)}.

The programs for A149781, there is no canonical definition to state claims against.
-/

/-! ## A149781.P15249961172500417243

`A149782(n)%p?[2^n-1]`
-/

namespace A149781.P15249961172500417243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A149782 n) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A149781.P15249961172500417243

/-! ## A149781.P6282477461921327891

`A014245(A150770(n))`
-/

namespace A149781.P6282477461921327891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014245 (A150770 n).toNat

end

end A149781.P6282477461921327891

/-! ## A149781.P14480368254324473504

`A029922(A150794(n))`
-/

namespace A149781.P14480368254324473504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029922 (A150794 n).toNat

end

end A149781.P14480368254324473504

/-!
# A149783: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 0), (-1, 1, 1), (0, -1, 0), (1, 1, -1), (1, 1, 1)}.

The programs for A149783, there is no canonical definition to state claims against.
-/

/-! ## A149783.P6071018244765047051

`A014245(A150767(n))`
-/

namespace A149783.P6071018244765047051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014245 (A150767 n).toNat

end

end A149783.P6071018244765047051

/-! ## A149783.P11273328706586822073

`A149784(A073788(n))`
-/

namespace A149783.P11273328706586822073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149784 (A073788 n).toNat

end

end A149783.P11273328706586822073

/-! ## A149783.P10833873101018274688

`A130371(A149784(n))`
-/

namespace A149783.P10833873101018274688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130371 (A149784 n).toNat

end

end A149783.P10833873101018274688

/-!
# A149785: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 0), (-1, 0, 1), (0, 1, -1), (1, -1, 1), (1, 1, 1)}.

The programs for A149785, there is no canonical definition to state claims against.
-/

/-! ## A149785.P15068519439993884769

`A004525(A150947(n)+A148058(n))`
-/

namespace A149785.P15068519439993884769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A150947 n + A148058 n).toNat

end

end A149785.P15068519439993884769

/-!
# A149786: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 0), (0, -1, 1), (0, 1, -1), (1, -1, 1), (1, 1, 1)}.

The programs for A149786, there is no canonical definition to state claims against.
-/

/-! ## A149786.P10893337665069462687

`A130823(floor(sqrt(A339984(3*(n+1)))))`
-/

namespace A149786.P10893337665069462687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130823 (Int.sqrt (A339984 (3 * (n + 1)))).toNat

end

end A149786.P10893337665069462687

/-! ## A149786.P12742007817638269770

`A004396(A150742(n)-A264476(n+1))`
-/

namespace A149786.P12742007817638269770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A150742 n - A264476 (n + 1)).toNat

end

end A149786.P12742007817638269770

/-!
# A149787: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 0), (-1, 0, 1), (0, -1, 1), (1, 1, -1), (1, 1, 1)}.

The programs for A149787, there is no canonical definition to state claims against.
-/

/-! ## A149787.P6517211685837694591

`A005229(A150651(n))`
-/

namespace A149787.P6517211685837694591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005229 (A150651 n).toNat

end

end A149787.P6517211685837694591

/-! ## A149787.P9199724720852934696

`(Δ[n²]^(n-1))%A222256((ceil(2^(n-1))+1)*n!)`
-/

namespace A149787.P9199724720852934696
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℚ) ^ ((n : ℤ) - 1 : ℤ))) (A222256 ((⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉ + 1) * (Nat.factorial n : ℤ)).toNat)

end

end A149787.P9199724720852934696

/-!
# A149788: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 0), (1, -1, 0), (1, -1, 1), (1, 1, -1), (1, 1, 1)}.

The programs for A149788, there is no canonical definition to state claims against.
-/

/-! ## A149788.P15308082309578452040

`A175249(A000110(n))`
-/

namespace A149788.P15308082309578452040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175249 (A000110 n).toNat

end

end A149788.P15308082309578452040

/-! ## A149788.P7044347709467249498

`A066508(A150403(n))`
-/

namespace A149788.P7044347709467249498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066508 (A150403 n).toNat

end

end A149788.P7044347709467249498

/-!
# A149789: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 1), (-1, 1, 1), (0, 1, -1), (1, -1, 0), (1, 1, 1)}.

The programs for A149789, there is no canonical definition to state claims against.
-/

/-! ## A149789.P12323970229744457767

`A029922(A150804(n))`
-/

namespace A149789.P12323970229744457767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029922 (A150804 n).toNat

end

end A149789.P12323970229744457767

/-! ## A149789.P14640889605653780608

`A149790(A001096(n))`
-/

namespace A149789.P14640889605653780608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149790 (A001096 n).toNat

end

end A149789.P14640889605653780608

/-!
# A149790: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 1), (-1, 1, 1), (0, -1, 1), (1, 0, -1), (1, 1, 1)}.

The programs for A149790, there is no canonical definition to state claims against.
-/

/-! ## A149790.P12935164424155566080

`A001281(A149795(n)+A149783(n))`
-/

namespace A149790.P12935164424155566080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A149795 n + A149783 n).toNat

end

end A149790.P12935164424155566080

/-! ## A149790.P5227662559708920598

`A001281(A149795(n)+A149784(n))`
-/

namespace A149790.P5227662559708920598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A149795 n + A149784 n).toNat

end

end A149790.P5227662559708920598

/-! ## A149790.P4467572488013014628

`A004525(A149795(n)+A149783(n))`
-/

namespace A149790.P4467572488013014628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A149795 n + A149783 n).toNat

end

end A149790.P4467572488013014628

/-!
# A149791: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 0), (0, -1, 1), (1, -1, 1), (1, 1, -1), (1, 1, 1)}.

The programs for A149791, there is no canonical definition to state claims against.
-/

/-! ## A149791.P10315154410022101546

`A400863(A149792(n))`
-/

namespace A149791.P10315154410022101546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A400863 (A149792 n).toNat

end

end A149791.P10315154410022101546

/-! ## A149791.P8634897126962528632

`A400863(A149793(n))`
-/

namespace A149791.P8634897126962528632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A400863 (A149793 n).toNat

end

end A149791.P8634897126962528632

/-! ## A149791.P5619041698616938217

`A004525(∑[A278391(n)])`
-/

namespace A149791.P5619041698616938217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278391 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A149791.P5619041698616938217

/-!
# A149792: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 1), (-1, 1, 0), (0, -1, 1), (1, 1, -1), (1, 1, 1)}.

The programs for A149792, there is no canonical definition to state claims against.
-/

/-! ## A149792.P10516061606848688190

`A000026(A149793(n))`
-/

namespace A149792.P10516061606848688190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000026 (A149793 n).toNat

end

end A149792.P10516061606848688190

/-! ## A149792.P14578928705557637534

`A149793(A073789(n))`
-/

namespace A149792.P14578928705557637534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149793 (A073789 n).toNat

end

end A149792.P14578928705557637534

/-! ## A149792.P10270946064180600507

`A149793(A171644(n))`
-/

namespace A149792.P10270946064180600507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149793 (A171644 n).toNat

end

end A149792.P10270946064180600507

/-! ## A149792.P3642036624106091817

`A149793(A004869(n+1))`
-/

namespace A149792.P3642036624106091817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149793 (A004869 (n + 1)).toNat

end

end A149792.P3642036624106091817

/-!
# A149794: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 0), (-1, 0, 1), (1, -1, 0), (1, 0, -1), (1, 1, 1)}.

The programs for A149794, there is no canonical definition to state claims against.
-/

/-! ## A149794.P8608107049459539660

`A124741(A150275(n))`
-/

namespace A149794.P8608107049459539660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124741 (A150275 n).toNat

end

end A149794.P8608107049459539660

/-! ## A149794.P7464165908480534111

`A002372(A278460(n))+1`
-/

namespace A149794.P7464165908480534111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002372 (A278460 n).toNat + 1

end

end A149794.P7464165908480534111

/-!
# A149795: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 1), (-1, 1, 1), (0, 1, -1), (1, -1, 1), (1, 1, 1)}.

The programs for A149795, there is no canonical definition to state claims against.
-/

/-! ## A149795.P14801464817914289642

`A324595(n)-2*(n+1)*A001222(A237914(n))`
-/

namespace A149795.P14801464817914289642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324595 n - (2 * (n + 1) : ℤ) * A001222 (A237914 n).toNat

end

end A149795.P14801464817914289642

/-! ## A149795.P13378372036189620035

`A209081(A150813(n))`
-/

namespace A149795.P13378372036189620035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209081 (A150813 n).toNat

end

end A149795.P13378372036189620035

/-!
# A149796: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 1), (-1, 1, 1), (0, -1, 1), (1, 1, -1), (1, 1, 1)}.

The programs for A149796, there is no canonical definition to state claims against.
-/

/-! ## A149796.P7711162715244776469

`A150768(n)-A008615(A000302(n))`
-/

namespace A149796.P7711162715244776469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150768 n - A008615 (A000302 n).toNat

end

end A149796.P7711162715244776469

/-! ## A149796.P522886401958156085

`A102899(or(A067280(n+1), A150662(n)))`
-/

namespace A149796.P522886401958156085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102899 (Int.lor (A067280 (n + 1)) (A150662 n)).toNat

end

end A149796.P522886401958156085

/-!
# A149797: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 0), (-1, 0, 1), (1, -1, 1), (1, 0, -1), (1, 1, 1)}.

The programs for A149797, there is no canonical definition to state claims against.
-/

/-! ## A149797.P3707450034047894543

`A194640(A026693(n))`
-/

namespace A149797.P3707450034047894543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194640 (A026693 n).toNat

end

end A149797.P3707450034047894543

/-! ## A149797.P11955311980156500495

`A299237(A285078(n!))`
-/

namespace A149797.P11955311980156500495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299237 (A285078 (Nat.factorial n)).toNat

end

end A149797.P11955311980156500495

/-!
# A149798: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 0), (-1, 0, 1), (1, -1, 0), (1, 1, -1), (1, 1, 1)}.

The programs for A149798, there is no canonical definition to state claims against.
-/

/-! ## A149798.P143111794050232177

`A274616(A222290(n+1)+A150732(n))`
-/

namespace A149798.P143111794050232177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274616 (A222290 (n + 1) + A150732 n).toNat

end

end A149798.P143111794050232177

/-! ## A149798.P11513025191791349463

`A336119(A149258(n))`
-/

namespace A149798.P11513025191791349463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336119 (A149258 n).toNat

end

end A149798.P11513025191791349463

/-!
# A149799: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 1), (-1, 1, 0), (1, -1, 0), (1, 0, -1), (1, 1, 1)}.

The programs for A149799, there is no canonical definition to state claims against.
-/

/-! ## A149799.P1803994655819888423

`∑[A120707(2*n+1)-lcm(2, n)]`
-/

namespace A149799.P1803994655819888423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120707 (2 * n + 1) - (Nat.lcm 2 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A149799.P1803994655819888423

/-! ## A149799.P13538799201592368221

`A149800(A001096(n))`
-/

namespace A149799.P13538799201592368221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149800 (A001096 n).toNat

end

end A149799.P13538799201592368221

