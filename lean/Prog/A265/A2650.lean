import SequenceMachineLib
import Mathlib.Tactic
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
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
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
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B008.C001
import Seq.B009.C000
import Seq.B010.C000
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A265000: Number of nX3 arrays containing 3 copies of 0..n-1 with rows and columns nondecreasing.

The programs for A265000, there is no canonical definition to state claims against.
-/

/-! ## A265000.P8028513376270659788

`A265005(∑[n+3]+1)`
-/

namespace A265000.P8028513376270659788
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265005 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A265000.P8028513376270659788

/-! ## A265000.P15825321945886831684

`record[A265005(A198464(n+1))]`
-/

namespace A265000.P15825321945886831684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265005 (A198464 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A265000.P15825321945886831684

/-! ## A265000.P11838740641294052336

`record[char[A055998(n)]*A265005(n+1)]`
-/

namespace A265000.P11838740641294052336
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055998 n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A265005 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A265000.P11838740641294052336

/-! ## A265000.P12086168786067873740

`A265005(Δ[A008778(n)])%Δ[8^n]`
-/

namespace A265000.P12086168786067873740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A265005 (f1 (n + 1) - f1 n).toNat) ((f2 (n + 1) : ℤ) - (f2 n : ℤ))

end

end A265000.P12086168786067873740

/-! ## A265000.P12904430668297281708

`record[A010054(n+3)*A265005(n+1)]`
-/

namespace A265000.P12904430668297281708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (n + 3) * A265005 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A265000.P12904430668297281708

/-!
# A265001: Number of nX4 arrays of permutations of 4 copies of 0..n-1 with rows and columns nondecreasing.

The programs for A265001, there is no canonical definition to state claims against.
-/

/-! ## A265001.P16449387123594285860

`A265005(∑[n+4]+3)`
-/

namespace A265001.P16449387123594285860
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265005 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A265001.P16449387123594285860

/-! ## A265001.P1378490058021087239

`record[A265005(A198464(n+1)-1)]`
-/

namespace A265001.P1378490058021087239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265005 (A198464 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A265001.P1378490058021087239

/-! ## A265001.P6147119759807564255

`record[gcd(A081718(n+3), A265005(n+1))]`
-/

namespace A265001.P6147119759807564255
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A081718 (n + 3)) (A265005 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A265001.P6147119759807564255

/-!
# A265002: Number of nX5 arrays of permutations of 5 copies of 0..n-1 with rows and columns nondecreasing.

The programs for A265002, there is no canonical definition to state claims against.
-/

/-! ## A265002.P14773301085907845863

`A265005(∑[n+5]+6)`
-/

namespace A265002.P14773301085907845863
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265005 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A265002.P14773301085907845863

/-! ## A265002.P7480526291331502927

`record[A265005(A198464(n+1)-2)]`
-/

namespace A265002.P7480526291331502927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265005 (A198464 (n + 1) - 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A265002.P7480526291331502927

/-! ## A265002.P11850272327270605943

`A265005(A046691(n+3))%A200987(3*(n+1))`
-/

namespace A265002.P11850272327270605943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A265005 (A046691 (n + 3)).toNat) (A200987 (3 * (n + 1)))

end

end A265002.P11850272327270605943

/-!
# A265003: Number of nX6 arrays of permutations of 6 copies of 0..n-1 with rows and columns nondecreasing.

The programs for A265003, there is no canonical definition to state claims against.
-/

/-! ## A265003.P12004129788645587784

`A265005(A052905(n+3))`
-/

namespace A265003.P12004129788645587784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265005 (A052905 (n + 3)).toNat

end

end A265003.P12004129788645587784

/-! ## A265003.P3763899751239473575

`A265005(eq[3, A219347(n)])`
-/

namespace A265003.P3763899751239473575
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265005 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A265003.P3763899751239473575

/-! ## A265003.P128109038425187331

`A265005(eq[5, A152157(n)])`
-/

namespace A265003.P128109038425187331
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152157 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265005 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A265003.P128109038425187331

/-! ## A265003.P10942102033548319715

`A265005(eq[5, A193592(n)])`
-/

namespace A265003.P10942102033548319715
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265005 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A265003.P10942102033548319715

/-! ## A265003.P15300517875085674383

`A265005(eq[8, A258709(n)])`
-/

namespace A265003.P15300517875085674383
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258709 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265005 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A265003.P15300517875085674383

/-!
# A265004: Number of nX7 arrays of permutations of 7 copies of 0..n-1 with rows and columns nondecreasing.

The programs for A265004, there is no canonical definition to state claims against.
-/

/-! ## A265004.P16513336770869860094

`A265005(A055999(n+4))`
-/

namespace A265004.P16513336770869860094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265005 (A055999 (n + 4)).toNat

end

end A265004.P16513336770869860094

/-! ## A265004.P16501925595109918542

`A265005(eq[4, A219347(n)])`
-/

namespace A265004.P16501925595109918542
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265005 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A265004.P16501925595109918542

/-! ## A265004.P1631521168740205297

`A265005(eq[6, A193592(n)])`
-/

namespace A265004.P1631521168740205297
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265005 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A265004.P1631521168740205297

/-! ## A265004.P64260382935628102

`A265005(eq[7, A152157(n)])`
-/

namespace A265004.P64260382935628102
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152157 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265005 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A265004.P64260382935628102

/-! ## A265004.P4668744016546515326

`record[A265005(∑[A020705(n)])]`
-/

namespace A265004.P4668744016546515326
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020705 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265005 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A265004.P4668744016546515326

/-!
# A265005: T(n,k)=Number of nXk arrays containing k copies of 0..n-1 with rows and columns nondecreasing.

The programs for A265005, there is no canonical definition to state claims against.
-/

/-! ## A265005.P14010513929266373303

`A117707(A340970(n))`
-/

namespace A265005.P14010513929266373303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117707 (A340970 n).toNat

end

end A265005.P14010513929266373303

/-! ## A265005.P13270905680747174122

`A097688(A219206(n))`
-/

namespace A265005.P13270905680747174122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097688 (A219206 n).toNat

end

end A265005.P13270905680747174122

/-! ## A265005.P4975541048514518910

`A325678(A341470(n))`
-/

namespace A265005.P4975541048514518910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325678 (A341470 n).toNat

end

end A265005.P4975541048514518910

/-! ## A265005.P16167679384172260645

`A069464(A094424(n+1))`
-/

namespace A265005.P16167679384172260645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069464 (A094424 (n + 1)).toNat

end

end A265005.P16167679384172260645

/-! ## A265005.P12751402271101791785

`A274011(A195892(n+2))`
-/

namespace A265005.P12751402271101791785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274011 (A195892 (n + 2)).toNat

end

end A265005.P12751402271101791785

/-!
# A265006: Twin prime pairs of the form (k^2 + k - 1, k^2 + k + 1).

The programs for A265006, there is no canonical definition to state claims against.
-/

/-! ## A265006.P1496379778427348904

`A088486(A008619(n))+A010673(n)`
-/

namespace A265006.P1496379778427348904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088486 (A008619 n).toNat + A010673 n

end

end A265006.P1496379778427348904

/-! ## A265006.P11303759989197832890

`A088486(A008619(n))+Δ[A109613(n)]`
-/

namespace A265006.P11303759989197832890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088486 (A008619 n).toNat + (f1 (n + 1) - f1 n)

end

end A265006.P11303759989197832890

/-! ## A265006.P4983427425332098691

`A088486(A008619(n))-A014681(n+1)+n+2`
-/

namespace A265006.P4983427425332098691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088486 (A008619 n).toNat - A014681 (n + 1) + (n + 2 : ℤ)

end

end A265006.P4983427425332098691

/-! ## A265006.P4204406555502801787

`A088486(A008619(n))+Δ[A052928(n)]`
-/

namespace A265006.P4204406555502801787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052928 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088486 (A008619 n).toNat + (f1 (n + 1) - f1 n)

end

end A265006.P4204406555502801787

/-! ## A265006.P13679381844411477640

`A088486(A008619(n))+Δ[A004525(2*n+1)]`
-/

namespace A265006.P13679381844411477640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088486 (A008619 n).toNat + (f1 (n + 1) - f1 n)

end

end A265006.P13679381844411477640

/-!
# A265007: Total sum of number of lambda-parking functions, where lambda ranges over all partitions of n.

The programs for A265007, there is no canonical definition to state claims against.
-/

/-! ## A265007.P17355675152385418933

`A006130(n)-A005614(A008986(n))`
-/

namespace A265007.P17355675152385418933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006130 n - A005614 (A008986 n).toNat

end

end A265007.P17355675152385418933

/-! ## A265007.P10039018893549268644

`A006130(n)-A101688(A000142(n))`
-/

namespace A265007.P10039018893549268644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006130 n - A101688 (A000142 n).toNat

end

end A265007.P10039018893549268644

/-! ## A265007.P15441304869522813907

`A006130(n)-A010051(A096510(n))`
-/

namespace A265007.P15441304869522813907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006130 n - A010051 (A096510 n).toNat

end

end A265007.P15441304869522813907

/-! ## A265007.P16305701929197872108

`A006130(n)-A010060(A128740(n))`
-/

namespace A265007.P16305701929197872108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006130 n - A010060 (A128740 n).toNat

end

end A265007.P16305701929197872108

/-!
# A265008: Number of positive solutions to the equation A x B = C, where A, B and C are made from (contiguous) substrings of the binary representation of n.

The programs for A265008, there is no canonical definition to state claims against.
-/

/-! ## A265008.P7623884992053475102

`A265182(A007088(n+1))`
-/

namespace A265008.P7623884992053475102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265182 (A007088 (n + 1)).toNat

end

end A265008.P7623884992053475102

/-! ## A265008.P3082098566527628778

`A265182(A115848(n+1))`
-/

namespace A265008.P3082098566527628778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265182 (A115848 (n + 1)).toNat

end

end A265008.P3082098566527628778

/-! ## A265008.P7584927010599914761

`A265182(sqrt(A063009(n+1)))`
-/

namespace A265008.P7584927010599914761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265182 (SequenceMachineLib.roundAway (Real.sqrt (A063009 (n + 1) : ℝ))).toNat

end

end A265008.P7584927010599914761

/-! ## A265008.P1026320124601553681

`A265182(∑[A138342(n+1)])`
-/

namespace A265008.P1026320124601553681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138342 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265182 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A265008.P1026320124601553681

/-! ## A265008.P17472904011093734658

`A265182(A204093(n+1)/6)`
-/

namespace A265008.P17472904011093734658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265182 (SequenceMachineLib.roundAway ((A204093 (n + 1) : ℚ) / 6)).toNat

end

end A265008.P17472904011093734658

/-!
# A265009: a(1)=3; for n>1, if n is odd a(n) = spf(Product_{k=1..n-1}(a(k))+1) else a(n) = spf(Product_{k=1..n-1}(a(k))-1), where spf is "smallest prime factor".

The programs for A265009, there is no canonical definition to state claims against.
-/

/-! ## A265009.P16457511350268712036

`A089727(a(n-1)+1)` with `a(0)=3, a(1)=2`
-/

namespace A265009.P16457511350268712036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 2] fun n a =>
  A089727 (a (n - 1) + 1).toNat

end

end A265009.P16457511350268712036

/-!
# A265010: Numbers which are the product of two tetrahedral numbers.

The programs for A265010, there is no canonical definition to state claims against.
-/

/-! ## A265010.P16756865855589794047

`∩[A274231(n+1), A334115(n+1)]`
-/

namespace A265010.P16756865855589794047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274231 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334115 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A265010.P16756865855589794047

/-! ## A265010.P10393118031106846460

`A334115(A349190(n+1))%A270022(n)`
-/

namespace A265010.P10393118031106846460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A334115 (A349190 (n + 1)).toNat) (A270022 n)

end

end A265010.P10393118031106846460

/-! ## A265010.P2736498052867593117

`A334115(A032555(n+1))`
-/

namespace A265010.P2736498052867593117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334115 (A032555 (n + 1)).toNat

end

end A265010.P2736498052867593117

/-! ## A265010.P6785290700666166197

`A334115(A032559(n+1))`
-/

namespace A265010.P6785290700666166197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334115 (A032559 (n + 1)).toNat

end

end A265010.P6785290700666166197

/-! ## A265010.P8529631753782894248

`A334115(A077739(n+1))`
-/

namespace A265010.P8529631753782894248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334115 (A077739 (n + 1)).toNat

end

end A265010.P8529631753782894248

/-!
# A265012: a(n) = 10^(prime(n)-1) mod prime(n)^2.

The programs for A265012, there is no canonical definition to state claims against.
-/

/-! ## A265012.P6287344377892823446

`A011557(A006093(n+1))%A001248(n+1)`
-/

namespace A265012.P6287344377892823446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A011557 (A006093 (n + 1)).toNat) (A001248 (n + 1))

end

end A265012.P6287344377892823446

/-!
# A265014: Triangle read by rows: T(n,k) = number of neighbors in n-dimensional lattice for generalized neighborhood given with parameter k.

The programs for A265014, there is no canonical definition to state claims against.
-/

/-! ## A265014.P3984636233316604730

`A193823(lt[1, A007318(n)])-1`
-/

namespace A265014.P3984636233316604730
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193823 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n) - 1

end

end A265014.P3984636233316604730

/-! ## A265014.P4641360805405960159

`A193823(lt[1, A108625(n)])-1`
-/

namespace A265014.P4641360805405960159
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108625 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193823 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n) - 1

end

end A265014.P4641360805405960159

/-! ## A265014.P13051754305164936802

`A193823(lt[1, A128966(n)])-1`
-/

namespace A265014.P13051754305164936802
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128966 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193823 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n) - 1

end

end A265014.P13051754305164936802

/-! ## A265014.P12357238845257703698

`A193823(lt[1, A155493(n)])-1`
-/

namespace A265014.P12357238845257703698
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155493 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193823 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n) - 1

end

end A265014.P12357238845257703698

/-! ## A265014.P318944625675263632

`A193823(lt[1, A193592(n)])-1`
-/

namespace A265014.P318944625675263632
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193823 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n) - 1

end

end A265014.P318944625675263632

/-! ## A265014.P11889789887392965709

`A193823(lt[1, A238392(n)])-1`
-/

namespace A265014.P11889789887392965709
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238392 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193823 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n) - 1

end

end A265014.P11889789887392965709

/-! ## A265014.P14570888268964736670

`A193823(lt[1, A294316(n)])-1`
-/

namespace A265014.P14570888268964736670
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294316 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193823 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n) - 1

end

end A265014.P14570888268964736670

/-! ## A265014.P2151572687011207538

`A112626(A099375(n)+n)-1`
-/

namespace A265014.P2151572687011207538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112626 (A099375 n + (n : ℤ)).toNat - 1

end

end A265014.P2151572687011207538

/-! ## A265014.P14488755378710418264

`A193823(lt[2, A002260(n+2)])-1`
-/

namespace A265014.P14488755378710418264
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193823 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n) - 1

end

end A265014.P14488755378710418264

/-! ## A265014.P1313218427490381530

`A193860(n)+A004273(A193862(n))`
-/

namespace A265014.P1313218427490381530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193860 n + A004273 (A193862 n).toNat

end

end A265014.P1313218427490381530

/-!
# A265015: a(n) = A015128(n)^n.

The programs for A265015, there is no canonical definition to state claims against.
-/

/-! ## A265015.P7413554481379670324

`A015128(n)^n`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A265015.P7413554481379670324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015128 n ^ n

end

end A265015.P7413554481379670324

/-! ## A265015.P18339857646819265501

`abs(A004402(n)^n)`
-/

namespace A265015.P18339857646819265501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A004402 n ^ n|

end

end A265015.P18339857646819265501

/-! ## A265015.P14706348562293364926

`∑[A211971(n)]^n`
-/

namespace A265015.P14706348562293364926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211971 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ n

end

end A265015.P14706348562293364926

/-! ## A265015.P18301143027354065686

`A359670(∑[n])^n`
-/

namespace A265015.P18301143027354065686
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359670 (∑ j ∈ Finset.range (n + 1), f1 j) ^ n

end

end A265015.P18301143027354065686

/-! ## A265015.P3758905346160941570

`(A304627(n)+2)^n`
-/

namespace A265015.P3758905346160941570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A304627 n + 2) ^ n

end

end A265015.P3758905346160941570

/-!
# A265017: Total sum T(n,k) of number of lambda-parking functions of partitions lambda of n into distinct parts with smallest part k; triangle T(n,k), n>=0, 0<=k<=n, read by rows.

The programs for A265017, there is no canonical definition to state claims against.
-/

/-! ## A265017.P11828601945566318154

`A285481(A217964(n+1))*A344739(n)`
-/

namespace A265017.P11828601945566318154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285481 (A217964 (n + 1)).toNat * A344739 n

end

end A265017.P11828601945566318154

/-! ## A265017.P1000397020595112554

`C(A143773(n+1), A327001(gcd(2, n)+4*n))`
-/

namespace A265017.P1000397020595112554
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A143773 (n + 1)).toNat (A327001 (Nat.gcd 2 n + 4 * n)).toNat

end

end A265017.P1000397020595112554

/-! ## A265017.P13278774908358572647

`A007359(n)*A216577(A000930(n))`
-/

namespace A265017.P13278774908358572647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007359 n * A216577 (A000930 n).toNat

end

end A265017.P13278774908358572647

/-! ## A265017.P14595666547266983687

`A000120(A007661(n)*A344739(n))`
-/

namespace A265017.P14595666547266983687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A007661 n * A344739 n).toNat

end

end A265017.P14595666547266983687

/-! ## A265017.P11997693919638862420

`A124767(A026786(n)*A344739(n))`
-/

namespace A265017.P11997693919638862420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124767 (A026786 n * A344739 n).toNat

end

end A265017.P11997693919638862420

/-!
# A265020: Total sum T(n,k) of number of lambda-parking functions of partitions lambda of n into exactly k distinct parts; triangle T(n,k), n>=0, 0<=k<=A003056(n), read by rows.

The programs for A265020, there is no canonical definition to state claims against.
-/

/-! ## A265020.P10291888735916483781

`A351645(7^A351645(n))*A354760(2*(n+1))`
-/

namespace A265020.P10291888735916483781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351645 (SequenceMachineLib.roundAway ((7 : ℚ) ^ (A351645 n : ℤ))).toNat * A354760 (2 * (n + 1))

end

end A265020.P10291888735916483781

/-! ## A265020.P17258097883340803065

`A003188(A227551(n)^A141459(n))*A354760(2*n+2)`
-/

namespace A265020.P17258097883340803065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003188 (SequenceMachineLib.roundAway ((A227551 n : ℚ) ^ (A141459 n : ℤ))).toNat * A354760 (2 * n + 2)

end

end A265020.P17258097883340803065

/-! ## A265020.P2919326862243485489

`A291960(n)^A001045(A020639(n+1))*A354760(2*(n+1))`
-/

namespace A265020.P2919326862243485489
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A291960 n : ℚ) ^ (A001045 (A020639 (n + 1)).toNat : ℤ) * (A354760 (2 * (n + 1)) : ℚ)

end

end A265020.P2919326862243485489

/-!
# A265021: Sum of fifth powers of the first n even numbers.

The programs for A265021, the canonical program `A265021.P3608315180476438173` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A265021 has offset 0).

The definition of A265021 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A265021.P3608315180476438173

`8/3*n²*(n+1)²*(2*n²+2*n-1)`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A265021

/-- `8/3*n²*(n+1)²*(2*n²+2*n-1)` -/
def P3608315180476438173.Spec : Prop :=
  ∀ n, P3608315180476438173.a n = (A265021 n : ℚ)

end A265021

/-! ## A265021.P6545292818161466466

`a(n-1)+(2*n)^5` with `a(0)=0`
-/

namespace A265021.P6545292818161466466
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + (2 * n) ^ 5

end

end A265021.P6545292818161466466

namespace A265021

/-- `a(n-1)+(2*n)^5` -/
def P6545292818161466466.Spec : Prop :=
  ∀ n, (P6545292818161466466.a n : ℤ) = A265021 n

end A265021

/-! ## A265021.P8587870212823942235

`lcm(2, ∑[2*n*(2*n)²²])`
-/

namespace A265021.P8587870212823942235
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n * ((2 * n) ^ 2) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A265021.P8587870212823942235

namespace A265021

/-- `lcm(2, ∑[2*n*(2*n)²²])` -/
def P8587870212823942235.Spec : Prop :=
  ∀ n, (P8587870212823942235.a n : ℤ) = A265021 n

end A265021

/-! ## A265021.P18286191548428703675

`∑[(floor(acot(n)+n)+n)^5]-1`
-/

namespace A265021.P18286191548428703675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (⌊SequenceMachineLib.acot (n : ℝ) + (n : ℝ)⌋ + (n : ℤ)) ^ 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A265021.P18286191548428703675

namespace A265021

/-- `∑[(floor(acot(n)+n)+n)^5]-1` -/
def P18286191548428703675.Spec : Prop :=
  ∀ n, P18286191548428703675.a n = A265021 n

end A265021

/-! ## A265021.P1536975438268322920

`abs((-2*n)^5-a(n-1))` with `a(0)=0`
-/

namespace A265021.P1536975438268322920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  |(-(2 * n : ℤ)) ^ 5 - a (n - 1)|

end

end A265021.P1536975438268322920

namespace A265021

/-- `abs((-2*n)^5-a(n-1))` -/
def P1536975438268322920.Spec : Prop :=
  ∀ n, P1536975438268322920.a n = A265021 n

end A265021

/-! ## A265021.P12585242191062712183

`(2*n)^5-floor(-a(n-1))` with `a(0)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A265021.P12585242191062712183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ((2 * n) ^ 5 : ℤ) - (-a (n - 1))

end

end A265021.P12585242191062712183

namespace A265021

/-- `(2*n)^5-floor(-a(n-1))` -/
def P12585242191062712183.Spec : Prop :=
  ∀ n, P12585242191062712183.a n = A265021 n

end A265021

/-! ## A265021.P16676197117167906144

`(2*n)^5-ceil(-a(n-1))` with `a(0)=0`

`ceil` is left out, it is the identity on integers.
-/

namespace A265021.P16676197117167906144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ((2 * n) ^ 5 : ℤ) - (-a (n - 1))

end

end A265021.P16676197117167906144

namespace A265021

/-- `(2*n)^5-ceil(-a(n-1))` -/
def P16676197117167906144.Spec : Prop :=
  ∀ n, P16676197117167906144.a n = A265021 n

end A265021

/-! ## A265021.P2420195046154566614

`(2*n)^5-round(-a(n-1))` with `a(0)=0`

`round` is left out, it is the identity on integers.
-/

namespace A265021.P2420195046154566614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ((2 * n) ^ 5 : ℤ) - (-a (n - 1))

end

end A265021.P2420195046154566614

namespace A265021

/-- `(2*n)^5-round(-a(n-1))` -/
def P2420195046154566614.Spec : Prop :=
  ∀ n, P2420195046154566614.a n = A265021 n

end A265021

/-! ## A265021.P4811168432677384529

`floor(a(n-1)+2*n*(2*n)²²)` with `a(0)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A265021.P4811168432677384529
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + 2 * n * ((2 * n) ^ 2) ^ 2

end

end A265021.P4811168432677384529

namespace A265021

/-- `floor(a(n-1)+2*n*(2*n)²²)` -/
def P4811168432677384529.Spec : Prop :=
  ∀ n, (P4811168432677384529.a n : ℤ) = A265021 n

end A265021

/-! ## A265021.P13439791436206864126

`∑[sqrt(A016750(n))]`
-/

namespace A265021.P13439791436206864126
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A016750 n : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A265021.P13439791436206864126

namespace A265021

/-- `∑[sqrt(A016750(n))]` -/
def P13439791436206864126.Spec : Prop :=
  ∀ n, P13439791436206864126.a n = (A265021 n : ℝ)

end A265021

/-! ## A265021.P8292225739004585975

`∑[A004277(n)^5]-1`
-/

namespace A265021.P8292225739004585975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n ^ 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A265021.P8292225739004585975

namespace A265021

/-- `∑[A004277(n)^5]-1` -/
def P8292225739004585975.Spec : Prop :=
  ∀ n, P8292225739004585975.a n = A265021 n

end A265021

/-! ## A265021.P1957937082747351103

`A016745(n)+a(n-1)` with `a(0)=0`
-/

namespace A265021.P1957937082747351103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A016745 n + a (n - 1)

end

end A265021.P1957937082747351103

namespace A265021

/-- `A016745(n)+a(n-1)` -/
def P1957937082747351103.Spec : Prop :=
  ∀ n, P1957937082747351103.a n = A265021 n

end A265021

/-! ## A265021.P2638661217998243345

`∑[record[A026741(n)+1]^5]-1`
-/

namespace A265021.P2638661217998243345
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) ^ 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A265021.P2638661217998243345

namespace A265021

/-- `∑[record[A026741(n)+1]^5]-1` -/
def P2638661217998243345.Spec : Prop :=
  ∀ n, P2638661217998243345.a n = A265021 n

end A265021

/-! ## A265021.P14862080285313949220

`∑[A131471(2*n)]-∑[2*n]`
-/

namespace A265021.P14862080285313949220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131471 (2 * n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A265021.P14862080285313949220

namespace A265021

/-- `∑[A131471(2*n)]-∑[2*n]` -/
def P14862080285313949220.Spec : Prop :=
  ∀ n, P14862080285313949220.a n = A265021 n

end A265021

/-! ## A265021.P7652865137821868806

`A231304(2*n)`
-/

namespace A265021.P7652865137821868806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231304 (2 * n)

end

end A265021.P7652865137821868806

namespace A265021

/-- `A231304(2*n)` -/
def P7652865137821868806.Spec : Prop :=
  ∀ n, P7652865137821868806.a n = A265021 n

end A265021

/-! ## A265021.P11110366245649096353

`∑[sqrt(A008454(2*n))]`
-/

namespace A265021.P11110366245649096353
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A008454 (2 * n) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A265021.P11110366245649096353

namespace A265021

/-- `∑[sqrt(A008454(2*n))]` -/
def P11110366245649096353.Spec : Prop :=
  ∀ n, P11110366245649096353.a n = (A265021 n : ℝ)

end A265021

/-! ## A265021.P1111387813964368157

`A140143(Δ[n²])-(n+1)`
-/

namespace A265021.P1111387813964368157
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140143 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - (n + 1 : ℤ)

end

end A265021.P1111387813964368157

namespace A265021

/-- `A140143(Δ[n²])-(n+1)` -/
def P1111387813964368157.Spec : Prop :=
  ∀ n, P1111387813964368157.a n = A265021 n

end A265021

/-! ## A265021.P16075825634133169915

`A000584(2*n)+a(n-1)` with `a(0)=0`
-/

namespace A265021.P16075825634133169915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A000584 (2 * n) + a (n - 1)

end

end A265021.P16075825634133169915

namespace A265021

/-- `A000584(2*n)+a(n-1)` -/
def P16075825634133169915.Spec : Prop :=
  ∀ n, P16075825634133169915.a n = A265021 n

end A265021

/-! ## A265021.P2329266089947342636

`A140147(2*n+1)-(n+1)²`
-/

namespace A265021.P2329266089947342636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140147 (2 * n + 1) - ((n + 1) ^ 2 : ℤ)

end

end A265021.P2329266089947342636

namespace A265021

/-- `A140147(2*n+1)-(n+1)²` -/
def P2329266089947342636.Spec : Prop :=
  ∀ n, P2329266089947342636.a n = A265021 n

end A265021

/-! ## A265021.P15442297626469245589

`A000539(2*n+1)-A002594(n+1)`
-/

namespace A265021.P15442297626469245589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000539 (2 * n + 1) - A002594 (n + 1)

end

end A265021.P15442297626469245589

namespace A265021

/-- `A000539(2*n+1)-A002594(n+1)` -/
def P15442297626469245589.Spec : Prop :=
  ∀ n, P15442297626469245589.a n = A265021 n

end A265021

/-!
# A265023: Second order complementary Bell numbers.

The programs for A265023, there is no canonical definition to state claims against.
-/

/-! ## A265023.P13538540981850056957

`A265313(∑[n+3])`
-/

namespace A265023.P13538540981850056957
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265313 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A265023.P13538540981850056957

/-! ## A265023.P14045050814192221178

`A265313(A141214(n))+char[9]`
-/

namespace A265023.P14045050814192221178
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265313 (A141214 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A265023.P14045050814192221178

/-! ## A265023.P13831559080071876604

`A007318(∑[n])*A265313(A141214(n))`
-/

namespace A265023.P13831559080071876604
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A265313 (A141214 n).toNat

end

end A265023.P13831559080071876604

/-! ## A265023.P12240953884914293221

`A007318(C(n, 2))²*A265313(A141214(n))`
-/

namespace A265023.P12240953884914293221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose n 2) ^ 2 * A265313 (A141214 n).toNat

end

end A265023.P12240953884914293221

/-! ## A265023.P4225835132145560197

`and(A057428(2*(n+2)), A265313(A141214(n)))`
-/

namespace A265023.P4225835132145560197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A057428 (2 * (n + 2))) (A265313 (A141214 n).toNat)

end

end A265023.P4225835132145560197

/-!
# A265024: a(n) = n! * Sum_{d in D(n+1)} (-1)^(d+1)*(n+1)/d, D(n) the divisors of n.

The programs for A265024, the canonical program `A265024.P4967435460097502295` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A265024 has offset 0).

The definition of A265024 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A265024.P4967435460097502295

`n!*A000593(n+1)`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A265024

/-- `n!*A000593(n+1)` -/
def P4967435460097502295.Spec : Prop :=
  ∀ n, P4967435460097502295.a n = A265024 n

theorem P4967435460097502295.correct : P4967435460097502295.Spec := by
  intro n
  simp only [A265024]

end A265024

/-! ## A265024.P16492667122367938655

`n!*∑{d}[n+1, #*#%2]`
-/

namespace A265024.P16492667122367938655
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n * (∑ d ∈ Nat.divisors (f1 n), d * (d % 2))

end

end A265024.P16492667122367938655

namespace A265024

/-- `n!*∑{d}[n+1, #*#%2]` -/
def P16492667122367938655.Spec : Prop :=
  ∀ n, (P16492667122367938655.a n : ℤ) = A265024 n

end A265024

/-! ## A265024.P4251691432685347562

`n!*∑{d}[n+1, and(#, (-1)^#)]`
-/

namespace A265024.P4251691432685347562
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * (∑ d ∈ Nat.divisors (f1 n), Int.land (d : ℤ) ((-1) ^ d))

end

end A265024.P4251691432685347562

namespace A265024

/-- `n!*∑{d}[n+1, and(#, (-1)^#)]` -/
def P4251691432685347562.Spec : Prop :=
  ∀ n, P4251691432685347562.a n = A265024 n

end A265024

/-! ## A265024.P12724230529975930547

`∑{d}[n+1, #]/xor(n, n+1)*n!`
-/

namespace A265024.P12724230529975930547
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℚ) / (Nat.xor n (n + 1) : ℚ) * (Nat.factorial n : ℚ)

end

end A265024.P12724230529975930547

namespace A265024

/-- `∑{d}[n+1, #]/xor(n, n+1)*n!` -/
def P12724230529975930547.Spec : Prop :=
  ∀ n, P12724230529975930547.a n = (A265024 n : ℚ)

end A265024

/-! ## A265024.P13861172883035213326

`A000203(n+1)/xor(n, n+1)*n!`
-/

namespace A265024.P13861172883035213326
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (n + 1) : ℚ) / (Nat.xor n (n + 1) : ℚ) * (Nat.factorial n : ℚ)

end

end A265024.P13861172883035213326

namespace A265024

/-- `A000203(n+1)/xor(n, n+1)*n!` -/
def P13861172883035213326.Spec : Prop :=
  ∀ n, P13861172883035213326.a n = (A265024 n : ℚ)

end A265024

/-! ## A265024.P11257144821938194137

`A000142(n)*A000593(n+1)`
-/

namespace A265024.P11257144821938194137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n * A000593 (n + 1)

end

end A265024.P11257144821938194137

namespace A265024

/-- `A000142(n)*A000593(n+1)` -/
def P11257144821938194137.Spec : Prop :=
  ∀ n, P11257144821938194137.a n = A265024 n

end A265024

/-! ## A265024.P2526901407744108988

`(n+1)!*∑{d}[n+1, (-1)^(#+1)/#]`
-/

namespace A265024.P2526901407744108988
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n + 1) : ℚ) * (∑ d ∈ Nat.divisors (f1 n), ((-1) ^ (d + 1) : ℚ) / (d : ℚ))

end

end A265024.P2526901407744108988

namespace A265024

/-- `(n+1)!*∑{d}[n+1, (-1)^(#+1)/#]` -/
def P2526901407744108988.Spec : Prop :=
  ∀ n, P2526901407744108988.a n = (A265024 n : ℚ)

end A265024

/-! ## A265024.P14169315930384041345

`A075525(∑[n]+1)`
-/

namespace A265024.P14169315930384041345
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075525 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A265024.P14169315930384041345

namespace A265024

/-- `A075525(∑[n]+1)` -/
def P14169315930384041345.Spec : Prop :=
  ∀ n, P14169315930384041345.a n = A265024 n

end A265024

/-!
# A265026: First differences of A048701.

The programs for A265026, the canonical program `A265026.P15314511607540541398` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A265026 has offset 1).

The definition of A265026 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048701, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A265026.P15314511607540541398

`A048701(n+1)-A048701(n)`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A265026

/-- `A048701(n+1)-A048701(n)` -/
def P15314511607540541398.Spec : Prop :=
  ∀ n, P15314511607540541398.a n = A265026 (n + 1)

theorem P15314511607540541398.correct : P15314511607540541398.Spec := by
  intro n
  simp only [A265026, Nat.add_sub_cancel]

end A265026

/-! ## A265026.P2293520925560188432

`Δ[(A264618(n)+A030101(n))/2]`
-/

namespace A265026.P2293520925560188432
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A264618 n + A030101 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A265026.P2293520925560188432

namespace A265026

/-- `Δ[(A264618(n)+A030101(n))/2]` -/
def P2293520925560188432.Spec : Prop :=
  ∀ n, P2293520925560188432.a n = (A265026 (n + 1) : ℚ)

end A265026

/-! ## A265026.P16061672059679295881

`Δ[A055944(n)+n*A003817(n)]`
-/

namespace A265026.P16061672059679295881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055944 n + (n : ℤ) * A003817 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A265026.P16061672059679295881

namespace A265026

/-- `Δ[A055944(n)+n*A003817(n)]` -/
def P16061672059679295881.Spec : Prop :=
  ∀ n, P16061672059679295881.a n = A265026 (n + 1)

end A265026

/-! ## A265026.P12801597942552844809

`Δ[A048701(n)]`
-/

namespace A265026.P12801597942552844809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048701 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A265026.P12801597942552844809

namespace A265026

/-- `Δ[A048701(n)]` -/
def P12801597942552844809.Spec : Prop :=
  ∀ n, P12801597942552844809.a n = A265026 (n + 1)

theorem P12801597942552844809.correct : P12801597942552844809.Spec := by
  intro n
  simp only [A265026, Nat.add_sub_cancel, A265026.P12801597942552844809.f1, A265026.P12801597942552844809.a, A265026.P15314511607540541398.a, SequenceMachineLib.memo_apply]

end A265026

/-! ## A265026.P15932683947192595196

`Δ[3*A048702(n)]`
-/

namespace A265026.P15932683947192595196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A048702 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A265026.P15932683947192595196

namespace A265026

/-- `Δ[3*A048702(n)]` -/
def P15932683947192595196.Spec : Prop :=
  ∀ n, P15932683947192595196.a n = A265026 (n + 1)

end A265026

/-! ## A265026.P2817957027562804212

`3*Δ[∑[n]-A075113(n)]`
-/

namespace A265026.P2817957027562804212
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - A075113 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (f1 (n + 1) - f1 n)

end

end A265026.P2817957027562804212

namespace A265026

/-- `3*Δ[∑[n]-A075113(n)]` -/
def P2817957027562804212.Spec : Prop :=
  ∀ n, P2817957027562804212.a n = A265026 (n + 1)

end A265026

/-! ## A265026.P3743596502269487298

`Δ[A030101(n)+n*A062383(n)]`
-/

namespace A265026.P3743596502269487298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 n + (n : ℤ) * A062383 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A265026.P3743596502269487298

namespace A265026

/-- `Δ[A030101(n)+n*A062383(n)]` -/
def P3743596502269487298.Spec : Prop :=
  ∀ n, P3743596502269487298.a n = A265026 (n + 1)

end A265026

/-! ## A265026.P8438006381824291217

`Δ[A264618(n)-n*A062383(n)]`
-/

namespace A265026.P8438006381824291217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264618 n - (n : ℤ) * A062383 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A265026.P8438006381824291217

namespace A265026

/-- `Δ[A264618(n)-n*A062383(n)]` -/
def P8438006381824291217.Spec : Prop :=
  ∀ n, P8438006381824291217.a n = A265026 (n + 1)

end A265026

/-! ## A265026.P14409185772560559642

`3*(A048702(n+1)-A048702(n))`
-/

namespace A265026.P14409185772560559642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A048702 (n + 1) - A048702 n)

end

end A265026.P14409185772560559642

namespace A265026

/-- `3*(A048702(n+1)-A048702(n))` -/
def P14409185772560559642.Spec : Prop :=
  ∀ n, P14409185772560559642.a n = A265026 (n + 1)

end A265026

/-! ## A265026.P12539186816705141882

`3*Δ[A000124(n)-(A075113(n)+1)]`
-/

namespace A265026.P12539186816705141882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 n - (A075113 n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (f1 (n + 1) - f1 n)

end

end A265026.P12539186816705141882

namespace A265026

/-- `3*Δ[A000124(n)-(A075113(n)+1)]` -/
def P12539186816705141882.Spec : Prop :=
  ∀ n, P12539186816705141882.a n = A265026 (n + 1)

end A265026

/-! ## A265026.P15414335779301347809

`Δ[A006995(A004760(n+2))]`
-/

namespace A265026.P15414335779301347809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006995 (A004760 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A265026.P15414335779301347809

namespace A265026

/-- `Δ[A006995(A004760(n+2))]` -/
def P15414335779301347809.Spec : Prop :=
  ∀ n, P15414335779301347809.a n = A265026 (n + 1)

end A265026

/-! ## A265026.P3492817324831862979

`Δ[A006995(A062383(n)+n)]`
-/

namespace A265026.P3492817324831862979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006995 (A062383 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A265026.P3492817324831862979

namespace A265026

/-- `Δ[A006995(A062383(n)+n)]` -/
def P3492817324831862979.Spec : Prop :=
  ∀ n, P3492817324831862979.a n = A265026 (n + 1)

end A265026

/-! ## A265026.P16040266073462032814

`Δ[A006995(A053644(2*n+1)+n)]`
-/

namespace A265026.P16040266073462032814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006995 (A053644 (2 * n + 1) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A265026.P16040266073462032814

namespace A265026

/-- `Δ[A006995(A053644(2*n+1)+n)]` -/
def P16040266073462032814.Spec : Prop :=
  ∀ n, P16040266073462032814.a n = A265026 (n + 1)

end A265026

/-! ## A265026.P6081920167512823831

`Δ[A006995(A055945(n)+A030101(2*n+1))]`
-/

namespace A265026.P6081920167512823831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006995 (A055945 n + A030101 (2 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A265026.P6081920167512823831

namespace A265026

/-- `Δ[A006995(A055945(n)+A030101(2*n+1))]` -/
def P6081920167512823831.Spec : Prop :=
  ∀ n, P6081920167512823831.a n = A265026 (n + 1)

end A265026

/-! ## A265026.P16274912083646888270

`A008585(Δ[A048702(n)])`
-/

namespace A265026.P16274912083646888270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048702 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 (f1 (n + 1) - f1 n).toNat

end

end A265026.P16274912083646888270

namespace A265026

/-- `A008585(Δ[A048702(n)])` -/
def P16274912083646888270.Spec : Prop :=
  ∀ n, P16274912083646888270.a n = A265026 (n + 1)

end A265026

/-! ## A265026.P4388979464746575854

`A008585(A048702(n+1)-A048702(n))`
-/

namespace A265026.P4388979464746575854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 (A048702 (n + 1) - A048702 n).toNat

end

end A265026.P4388979464746575854

namespace A265026

/-- `A008585(A048702(n+1)-A048702(n))` -/
def P4388979464746575854.Spec : Prop :=
  ∀ n, P4388979464746575854.a n = A265026 (n + 1)

end A265026

/-!
# A265027: First differences of A048701 divided by 6.

The programs for A265027, the canonical program `A265027.P2893098001650246285` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A265027 has offset 2).

The definition of A265027 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A265026, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A265027.P2893098001650246285

`A265026(n+2)/6`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A265027

/-- `A265026(n+2)/6` -/
def P2893098001650246285.Spec : Prop :=
  ∀ n, P2893098001650246285.a n = (A265027 (n + 2) : ℚ)

end A265027

/-! ## A265027.P11180967040936301863

`Δ[A048702(n+1)/2]`
-/

namespace A265027.P11180967040936301863
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048702 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A265027.P11180967040936301863

namespace A265027

/-- `Δ[A048702(n+1)/2]` -/
def P11180967040936301863.Spec : Prop :=
  ∀ n, P11180967040936301863.a n = (A265027 (n + 2) : ℚ)

end A265027

/-! ## A265027.P12659957565142546648

`A014682(Δ[A048702(n+1)])`
-/

namespace A265027.P12659957565142546648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048702 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (f1 (n + 1) - f1 n).toNat

end

end A265027.P12659957565142546648

namespace A265027

/-- `A014682(Δ[A048702(n+1)])` -/
def P12659957565142546648.Spec : Prop :=
  ∀ n, P12659957565142546648.a n = A265027 (n + 2)

end A265027

/-! ## A265027.P15009019974842532309

`A004525(Δ[A048702(n+1)])`
-/

namespace A265027.P15009019974842532309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048702 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (f1 (n + 1) - f1 n).toNat

end

end A265027.P15009019974842532309

namespace A265027

/-- `A004525(Δ[A048702(n+1)])` -/
def P15009019974842532309.Spec : Prop :=
  ∀ n, P15009019974842532309.a n = A265027 (n + 2)

end A265027

/-! ## A265027.P16886926259273784061

`A110654(Δ[A048702(n+1)])`
-/

namespace A265027.P16886926259273784061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048702 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (f1 (n + 1) - f1 n).toNat

end

end A265027.P16886926259273784061

namespace A265027

/-- `A110654(Δ[A048702(n+1)])` -/
def P16886926259273784061.Spec : Prop :=
  ∀ n, P16886926259273784061.a n = A265027 (n + 2)

end A265027

/-! ## A265027.P13174629039940824682

`A003602(Δ[A048702(n+1)]+1)-1`
-/

namespace A265027.P13174629039940824682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048702 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (f1 (n + 1) - f1 n + 1).toNat - 1

end

end A265027.P13174629039940824682

namespace A265027

/-- `A003602(Δ[A048702(n+1)]+1)-1` -/
def P13174629039940824682.Spec : Prop :=
  ∀ n, P13174629039940824682.a n = A265027 (n + 2)

end A265027

/-! ## A265027.P8153238060819619929

`A004526(A048702(n+2)-A048702(n+1))`
-/

namespace A265027.P8153238060819619929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A048702 (n + 2) - A048702 (n + 1)).toNat

end

end A265027.P8153238060819619929

namespace A265027

/-- `A004526(A048702(n+2)-A048702(n+1))` -/
def P8153238060819619929.Spec : Prop :=
  ∀ n, P8153238060819619929.a n = A265027 (n + 2)

end A265027

/-! ## A265027.P11494875854584102934

`A008615(A265026(n+2))`
-/

namespace A265027.P11494875854584102934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (A265026 (n + 2)).toNat

end

end A265027.P11494875854584102934

namespace A265027

/-- `A008615(A265026(n+2))` -/
def P11494875854584102934.Spec : Prop :=
  ∀ n, P11494875854584102934.a n = A265027 (n + 2)

end A265027

/-! ## A265027.P14797880412727905126

`Δ[A003602(A048702(n+1)+2)]`
-/

namespace A265027.P14797880412727905126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (A048702 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A265027.P14797880412727905126

namespace A265027

/-- `Δ[A003602(A048702(n+1)+2)]` -/
def P14797880412727905126.Spec : Prop :=
  ∀ n, P14797880412727905126.a n = A265027 (n + 2)

end A265027

/-!
# A265028: First differences of A264618.

The programs for A265028, the canonical program `A265028.P3632854501498841608` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A265028 has offset 1).

The definition of A265028 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A265028.P3632854501498841608

`Δ[A264618(n)]`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A265028

/-- `Δ[A264618(n)]` -/
def P3632854501498841608.Spec : Prop :=
  ∀ n, P3632854501498841608.a n = A265028 (n + 1)

theorem P3632854501498841608.correct : P3632854501498841608.Spec := by
  intro n
  simp only [A265028, Nat.add_sub_cancel]

end A265028

/-! ## A265028.P5251449588622043599

`A265029(n+1)-A099894(n)`
-/

namespace A265028.P5251449588622043599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265029 (n + 1) - A099894 n

end

end A265028.P5251449588622043599

namespace A265028

/-- `A265029(n+1)-A099894(n)` -/
def P5251449588622043599.Spec : Prop :=
  ∀ n, P5251449588622043599.a n = A265028 (n + 1)

end A265028

/-! ## A265028.P16115988590599225524

`A264618(n+1)-A264618(n)`
-/

namespace A265028.P16115988590599225524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264618 (n + 1) - A264618 n

end

end A265028.P16115988590599225524

namespace A265028

/-- `A264618(n+1)-A264618(n)` -/
def P16115988590599225524.Spec : Prop :=
  ∀ n, P16115988590599225524.a n = A265028 (n + 1)

theorem P16115988590599225524.correct : P16115988590599225524.Spec := by
  intro n
  simp only [A265028, Nat.add_sub_cancel, A265028.P16115988590599225524.a, A265028.P3632854501498841608.f1, A265028.P3632854501498841608.a, SequenceMachineLib.memo_apply]

end A265028

/-! ## A265028.P16167755211148173632

`A265029(n+1)+A003817(n)-A003817(n+1)`
-/

namespace A265028.P16167755211148173632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265029 (n + 1) + (A003817 n - A003817 (n + 1))

end

end A265028.P16167755211148173632

namespace A265028

/-- `A265029(n+1)+A003817(n)-A003817(n+1)` -/
def P16167755211148173632.Spec : Prop :=
  ∀ n, P16167755211148173632.a n = A265028 (n + 1)

end A265028

/-! ## A265028.P9297601482490130845

`Δ[A264619(n)-A062383(n)]`
-/

namespace A265028.P9297601482490130845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264619 n - A062383 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A265028.P9297601482490130845

namespace A265028

/-- `Δ[A264619(n)-A062383(n)]` -/
def P9297601482490130845.Spec : Prop :=
  ∀ n, P9297601482490130845.a n = A265028 (n + 1)

end A265028

/-! ## A265028.P5436864772603057936

`A265029(n+1)-Δ[A062383(n)]`
-/

namespace A265028.P5436864772603057936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062383 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265029 (n + 1) - (f1 (n + 1) - f1 n)

end

end A265028.P5436864772603057936

namespace A265028

/-- `A265029(n+1)-Δ[A062383(n)]` -/
def P5436864772603057936.Spec : Prop :=
  ∀ n, P5436864772603057936.a n = A265028 (n + 1)

end A265028

/-! ## A265028.P13336057387092954102

`A265029(n+1)+A062383(n)-A062383(n+1)`
-/

namespace A265028.P13336057387092954102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265029 (n + 1) + (A062383 n - A062383 (n + 1))

end

end A265028.P13336057387092954102

namespace A265028

/-- `A265029(n+1)+A062383(n)-A062383(n+1)` -/
def P13336057387092954102.Spec : Prop :=
  ∀ n, P13336057387092954102.a n = A265028 (n + 1)

end A265028

/-! ## A265028.P12536672361543729155

`Δ[A006995(A004760(n+2)+n)]`
-/

namespace A265028.P12536672361543729155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006995 (A004760 (n + 2) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A265028.P12536672361543729155

namespace A265028

/-- `Δ[A006995(A004760(n+2)+n)]` -/
def P12536672361543729155.Spec : Prop :=
  ∀ n, P12536672361543729155.a n = A265028 (n + 1)

end A265028

/-! ## A265028.P13262387701570880469

`Δ[A006995(A062383(n)+2*n)]`
-/

namespace A265028.P13262387701570880469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006995 (A062383 n + (2 * n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A265028.P13262387701570880469

namespace A265028

/-- `Δ[A006995(A062383(n)+2*n)]` -/
def P13262387701570880469.Spec : Prop :=
  ∀ n, P13262387701570880469.a n = A265028 (n + 1)

end A265028

/-! ## A265028.P10099312646090697728

`Δ[A006995(A004754(2*n+1)-1)]`
-/

namespace A265028.P10099312646090697728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006995 (A004754 (2 * n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A265028.P10099312646090697728

namespace A265028

/-- `Δ[A006995(A004754(2*n+1)-1)]` -/
def P10099312646090697728.Spec : Prop :=
  ∀ n, P10099312646090697728.a n = A265028 (n + 1)

end A265028

/-! ## A265028.P10407263959859057590

`Δ[A006995(A053644(2*n+1)+2*n)]`
-/

namespace A265028.P10407263959859057590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006995 (A053644 (2 * n + 1) + (2 * n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A265028.P10407263959859057590

namespace A265028

/-- `Δ[A006995(A053644(2*n+1)+2*n)]` -/
def P10407263959859057590.Spec : Prop :=
  ∀ n, P10407263959859057590.a n = A265028 (n + 1)

end A265028

/-! ## A265028.P16265735121633185270

`Δ[A006995(A055945(2*n)+A030101(2*n+1))]`
-/

namespace A265028.P16265735121633185270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006995 (A055945 (2 * n) + A030101 (2 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A265028.P16265735121633185270

namespace A265028

/-- `Δ[A006995(A055945(2*n)+A030101(2*n+1))]` -/
def P16265735121633185270.Spec : Prop :=
  ∀ n, P16265735121633185270.a n = A265028 (n + 1)

end A265028

/-!
# A265029: First differences of A264619.

The programs for A265029, the canonical program `A265029.P2055403291823061890` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A265029 has offset 1).

The definition of A265029 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A265029.P2055403291823061890

`Δ[A264619(n)]`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A265029

/-- `Δ[A264619(n)]` -/
def P2055403291823061890.Spec : Prop :=
  ∀ n, P2055403291823061890.a n = A265029 (n + 1)

theorem P2055403291823061890.correct : P2055403291823061890.Spec := by
  intro n
  simp only [A265029, Nat.add_sub_cancel]

end A265029

/-! ## A265029.P2575923675555644476

`A265028(n+1)+A099894(n)`
-/

namespace A265029.P2575923675555644476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265028 (n + 1) + A099894 n

end

end A265029.P2575923675555644476

namespace A265029

/-- `A265028(n+1)+A099894(n)` -/
def P2575923675555644476.Spec : Prop :=
  ∀ n, P2575923675555644476.a n = A265029 (n + 1)

end A265029

/-! ## A265029.P11720976813299338672

`A264619(n+1)-A264619(n)`
-/

namespace A265029.P11720976813299338672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264619 (n + 1) - A264619 n

end

end A265029.P11720976813299338672

namespace A265029

/-- `A264619(n+1)-A264619(n)` -/
def P11720976813299338672.Spec : Prop :=
  ∀ n, P11720976813299338672.a n = A265029 (n + 1)

theorem P11720976813299338672.correct : P11720976813299338672.Spec := by
  intro n
  simp only [A265029, Nat.add_sub_cancel, A265029.P11720976813299338672.a, A265029.P2055403291823061890.f1, A265029.P2055403291823061890.a, SequenceMachineLib.memo_apply]

end A265029

/-! ## A265029.P18192343984276758650

`Δ[or(A145341(n+1), A264618(n))]`
-/

namespace A265029.P18192343984276758650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A145341 (n + 1)) (A264618 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A265029.P18192343984276758650

namespace A265029

/-- `Δ[or(A145341(n+1), A264618(n))]` -/
def P18192343984276758650.Spec : Prop :=
  ∀ n, P18192343984276758650.a n = A265029 (n + 1)

end A265029

/-! ## A265029.P13913319434800582372

`A003817(n+1)+A265028(n+1)-A003817(n)`
-/

namespace A265029.P13913319434800582372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003817 (n + 1) + (A265028 (n + 1) - A003817 n)

end

end A265029.P13913319434800582372

namespace A265029

/-- `A003817(n+1)+A265028(n+1)-A003817(n)` -/
def P13913319434800582372.Spec : Prop :=
  ∀ n, P13913319434800582372.a n = A265029 (n + 1)

end A265029

/-! ## A265029.P16551359224618857577

`Δ[A264618(n)+A062383(n)]`
-/

namespace A265029.P16551359224618857577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264618 n + A062383 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A265029.P16551359224618857577

namespace A265029

/-- `Δ[A264618(n)+A062383(n)]` -/
def P16551359224618857577.Spec : Prop :=
  ∀ n, P16551359224618857577.a n = A265029 (n + 1)

end A265029

/-! ## A265029.P8507678410446059676

`A062383(n+1)+A265028(n+1)-A062383(n)`
-/

namespace A265029.P8507678410446059676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062383 (n + 1) + (A265028 (n + 1) - A062383 n)

end

end A265029.P8507678410446059676

namespace A265029

/-- `A062383(n+1)+A265028(n+1)-A062383(n)` -/
def P8507678410446059676.Spec : Prop :=
  ∀ n, P8507678410446059676.a n = A265029 (n + 1)

end A265029

/-! ## A265029.P10339913943831041423

`Δ[A048700(Δ[n²])]`
-/

namespace A265029.P10339913943831041423
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048700 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A265029.P10339913943831041423

namespace A265029

/-- `Δ[A048700(Δ[n²])]` -/
def P10339913943831041423.Spec : Prop :=
  ∀ n, P10339913943831041423.a n = A265029 (n + 1)

end A265029

/-! ## A265029.P11258630666195028739

`A048700(2*n+3)-A048700(2*n+1)`
-/

namespace A265029.P11258630666195028739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048700 (2 * n + 3) - A048700 (2 * n + 1)

end

end A265029.P11258630666195028739

namespace A265029

/-- `A048700(2*n+3)-A048700(2*n+1)` -/
def P11258630666195028739.Spec : Prop :=
  ∀ n, P11258630666195028739.a n = A265029 (n + 1)

end A265029

/-! ## A265029.P14747977155301521956

`Δ[A006995(A004754(Δ[n²]))]`
-/

namespace A265029.P14747977155301521956
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006995 (A004754 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A265029.P14747977155301521956

namespace A265029

/-- `Δ[A006995(A004754(Δ[n²]))]` -/
def P14747977155301521956.Spec : Prop :=
  ∀ n, P14747977155301521956.a n = A265029 (n + 1)

end A265029

/-! ## A265029.P14191963623633444109

`Δ[A162749(A206332(Δ[n²]))]`
-/

namespace A265029.P14191963623633444109
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162749 (A206332 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A265029.P14191963623633444109

namespace A265029

/-- `Δ[A162749(A206332(Δ[n²]))]` -/
def P14191963623633444109.Spec : Prop :=
  ∀ n, P14191963623633444109.a n = A265029 (n + 1)

end A265029

/-!
# A265031: Denominator of Kirchhoff index of ladder graph L_n.

The programs for A265031, there is no canonical definition to state claims against.
-/

/-! ## A265031.P946021155831080865

`lcm((n+1)², A001353(n+1))/(n+1)²`
-/

namespace A265031.P946021155831080865
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm ((n + 1) ^ 2 : ℤ) (A001353 (n + 1)) : ℚ) / ((n + 1) ^ 2 : ℚ)

end

end A265031.P946021155831080865

/-! ## A265031.P9911713847638008090

`∏{p}[A110294(n), A051724(#)]`
-/

namespace A265031.P9911713847638008090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110294 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A051724 p

end

end A265031.P9911713847638008090

/-! ## A265031.P9798363101330382853

`∏{p}[A110294(n), A065330(#)]`
-/

namespace A265031.P9798363101330382853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110294 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A065330 p

end

end A265031.P9798363101330382853

/-! ## A265031.P11431460369523260962

`∏{p}[A125905(n), A051724(#)]`
-/

namespace A265031.P11431460369523260962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125905 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A051724 p

end

end A265031.P11431460369523260962

/-! ## A265031.P1778380332018381801

`∏{p}[A125905(n), A065330(#)]`
-/

namespace A265031.P1778380332018381801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125905 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A065330 p

end

end A265031.P1778380332018381801

/-!
# A265033: Generating function A(x) satisfies A = 1 + x*A^6 + x^2*A^12.

The programs for A265033, there is no canonical definition to state claims against.
-/

/-! ## A265033.P8145125679989470405

`A280864(A000085(2*n))-A047549(n+1)`
-/

namespace A265033.P8145125679989470405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280864 (A000085 (2 * n)).toNat - A047549 (n + 1)

end

end A265033.P8145125679989470405

/-!
# A265035: Coordination sequence of 2-uniform tiling {3.4.6.4, 4.6.12} with respect to a point of type 4.6.12.

The programs for A265035, the canonical program `A265035.P10344988030138921737` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A265035 has offset 0).

The definition of A265035 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A265035.P10344988030138921737

`A311101(n)-n`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A265035

/-- `A311101(n)-n` -/
def P10344988030138921737.Spec : Prop :=
  ∀ n, P10344988030138921737.a n = A265035 n

theorem P10344988030138921737.correct : P10344988030138921737.Spec := by
  intro n
  simp only [A265035]

end A265035

/-! ## A265035.P5818302863547131556

`abs(A311101(n)+A001489(n))`
-/

namespace A265035.P5818302863547131556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A311101 n + A001489 n|

end

end A265035.P5818302863547131556

namespace A265035

/-- `abs(A311101(n)+A001489(n))` -/
def P5818302863547131556.Spec : Prop :=
  ∀ n, P5818302863547131556.a n = A265035 n

end A265035

/-! ## A265035.P16915000964427922695

`(A311101(n)+A001489(n))%A003325(n+1)`
-/

namespace A265035.P16915000964427922695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A311101 n + A001489 n) (A003325 (n + 1))

end

end A265035.P16915000964427922695

namespace A265035

/-- `(A311101(n)+A001489(n))%A003325(n+1)` -/
def P16915000964427922695.Spec : Prop :=
  ∀ n, P16915000964427922695.a n = A265035 n

end A265035

/-! ## A265035.P9892218223608291241

`A326075(A001511(n+1))+A311101(n)+A001489(n)`
-/

namespace A265035.P9892218223608291241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326075 (A001511 (n + 1)).toNat + (A311101 n + A001489 n)

end

end A265035.P9892218223608291241

namespace A265035

/-- `A326075(A001511(n+1))+A311101(n)+A001489(n)` -/
def P9892218223608291241.Spec : Prop :=
  ∀ n, P9892218223608291241.a n = A265035 n

end A265035

/-! ## A265035.P18354630227788426729

`A326075(A001222(n+3))+A311101(n)+A001489(n)`
-/

namespace A265035.P18354630227788426729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326075 (A001222 (n + 3)).toNat + (A311101 n + A001489 n)

end

end A265035.P18354630227788426729

namespace A265035

/-- `A326075(A001222(n+3))+A311101(n)+A001489(n)` -/
def P18354630227788426729.Spec : Prop :=
  ∀ n, P18354630227788426729.a n = A265035 n

end A265035

/-! ## A265035.P6129607626506688210

`(A311101(n)+A001489(n))^A001222(A008578(n+1))`
-/

namespace A265035.P6129607626506688210
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A311101 n + A001489 n : ℚ) ^ (A001222 (A008578 (n + 1)).toNat : ℤ)

end

end A265035.P6129607626506688210

namespace A265035

/-- `(A311101(n)+A001489(n))^A001222(A008578(n+1))` -/
def P6129607626506688210.Spec : Prop :=
  ∀ n, P6129607626506688210.a n = (A265035 n : ℚ)

end A265035

/-! ## A265035.P3295526900394032230

`(A311101(n)+A001489(n))/A001222(A000040(n+1))`
-/

namespace A265035.P3295526900394032230
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A311101 n + A001489 n : ℚ) / (A001222 (A000040 (n + 1)).toNat : ℚ)

end

end A265035.P3295526900394032230

namespace A265035

/-- `(A311101(n)+A001489(n))/A001222(A000040(n+1))` -/
def P3295526900394032230.Spec : Prop :=
  ∀ n, P3295526900394032230.a n = (A265035 n : ℚ)

end A265035

/-! ## A265035.P1502978631134302993

`(A311101(n)+A001489(n))/A001511(2*n+1)`
-/

namespace A265035.P1502978631134302993
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A311101 n + A001489 n : ℚ) / (A001511 (2 * n + 1) : ℚ)

end

end A265035.P1502978631134302993

namespace A265035

/-- `(A311101(n)+A001489(n))/A001511(2*n+1)` -/
def P1502978631134302993.Spec : Prop :=
  ∀ n, P1502978631134302993.a n = (A265035 n : ℚ)

end A265035

/-! ## A265035.P11626739884291365252

`A004525(2*n)+A004525(A311101(n))`
-/

namespace A265035.P11626739884291365252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (2 * n) + A004525 (A311101 n).toNat

end

end A265035.P11626739884291365252

namespace A265035

/-- `A004525(2*n)+A004525(A311101(n))` -/
def P11626739884291365252.Spec : Prop :=
  ∀ n, P11626739884291365252.a n = A265035 n

end A265035

/-! ## A265035.P10892193830623025289

`floor(A008619(3*A311101(n))/2)`
-/

namespace A265035.P10892193830623025289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A008619 (3 * A311101 n).toNat : ℚ) / 2⌋

end

end A265035.P10892193830623025289

namespace A265035

/-- `floor(A008619(3*A311101(n))/2)` -/
def P10892193830623025289.Spec : Prop :=
  ∀ n, P10892193830623025289.a n = A265035 n

end A265035

/-! ## A265035.P10192575483378873609

`A002265(A008585(A311101(n))+1)`
-/

namespace A265035.P10192575483378873609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A008585 (A311101 n).toNat + 1).toNat

end

end A265035.P10192575483378873609

namespace A265035

/-- `A002265(A008585(A311101(n))+1)` -/
def P10192575483378873609.Spec : Prop :=
  ∀ n, P10192575483378873609.a n = A265035 n

end A265035

/-!
# A265036: Coordination sequence of 2-uniform tiling {3.4.6.4, 4.6.12} with respect to a point of type 3.4.6.4.

The programs for A265036, there is no canonical definition to state claims against.
-/

/-! ## A265036.P12070889325780506169

`2*A310954(n)-A311038(n)`
-/

namespace A265036.P12070889325780506169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A310954 n - A311038 n

end

end A265036.P12070889325780506169

/-! ## A265036.P16281650051103932103

`A000027((2*A310954(n))%(A311038(n)+1)+1)`
-/

namespace A265036.P16281650051103932103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (Int.tmod (2 * A310954 n) (A311038 n + 1) + 1).toNat

end

end A265036.P16281650051103932103

/-! ## A265036.P9152112896784727120

`A004277(A310954(n))-A311038(n)`
-/

namespace A265036.P9152112896784727120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A310954 n).toNat - A311038 n

end

end A265036.P9152112896784727120

/-!
# A265037: G.f.: (1 + 22*x - 34*x^2 + 14*x^3)/((1 - x)^2*(1 - 6*x + 8*x^2)).

The programs for A265037, the canonical program `A265037.P16345106435264009009` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A265037 has offset 0).

The definition of A265037 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A265037.P16345106435264009009

`8*a(n-1)-21*a(n-2)+22*a(n-3)-8*a(n-4)` with `a(0)=1, a(1)=30, a(2)=185, a(3)=886`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A265037

/-- `8*a(n-1)-21*a(n-2)+22*a(n-3)-8*a(n-4)` -/
def P16345106435264009009.Spec : Prop :=
  ∀ n, P16345106435264009009.a n = A265037 n

theorem P16345106435264009009.correct : P16345106435264009009.Spec := by
  intro n
  simp only [A265037]

end A265037

/-! ## A265037.P5882595969324366593

`1/12*(68+49*2^(2*n+2)-63*2^(2+n)+12*n)`
-/

namespace A265037.P5882595969324366593
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 12 * ((68 + 49 * 2 ^ (2 * n + 2) : ℤ) - (63 * 2 ^ (2 + n) : ℤ) + (12 * n : ℤ) : ℚ)

end

end A265037.P5882595969324366593

namespace A265037

/-- `1/12*(68+49*2^(2*n+2)-63*2^(2+n)+12*n)` -/
def P5882595969324366593.Spec : Prop :=
  ∀ n, P5882595969324366593.a n = (A265037 n : ℚ)

theorem P5882595969324366593.correct : P5882595969324366593.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A265037, Nat.add_sub_cancel, A265037.P5882595969324366593.a, A265037.P16345106435264009009.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A265037, Nat.add_sub_cancel, A265037.P5882595969324366593.a, A265037.P16345106435264009009.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [← h1, ← h2, ← h3, ← h4]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A265037

/-!
# A265038: Partial sums of A009927.

The programs for A265038, there is no canonical definition to state claims against.
-/

/-! ## A265038.P2617166916175345720

`∑[A009927(n)]`
-/

namespace A265038.P2617166916175345720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009927 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A265038.P2617166916175345720

/-! ## A265038.P15939849338360745748

`A009927(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A265038.P15939849338360745748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A009927 n + a (A023443 n).toNat

end

end A265038.P15939849338360745748

/-! ## A265038.P14925073357071460761

`a(n-1)+A009927(n)+A000007(n)` with `a(0)=1`
-/

namespace A265038.P14925073357071460761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A009927 n + A000007 n)

end

end A265038.P14925073357071460761

/-! ## A265038.P14650325338808388100

`a(n-1)-A009927(n)*A316441(A007491(n+1))` with `a(0)=1`
-/

namespace A265038.P14650325338808388100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) - A009927 n * A316441 (A007491 (n + 1)).toNat

end

end A265038.P14650325338808388100

/-! ## A265038.P15997855008583376101

`A009927(n)+A004151(a(n-1))` with `a(0)=1`
-/

namespace A265038.P15997855008583376101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A009927 n + A004151 (a (n - 1)).toNat

end

end A265038.P15997855008583376101

/-!
# A265039: If A009927 is regarded as the coordination sequence of AuNb_3, this sequence gives cumulative number of Au atoms in shells 1 through n.

The programs for A265039, there is no canonical definition to state claims against.
-/

/-! ## A265039.P9555084104121939494

`A265038(n+1)-A265040(n+1)`
-/

namespace A265039.P9555084104121939494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265038 (n + 1) - A265040 (n + 1)

end

end A265039.P9555084104121939494

/-! ## A265039.P8555708498547037940

`A265038(A031285(n))%A265040(n+1)`
-/

namespace A265039.P8555708498547037940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A265038 (A031285 n).toNat) (A265040 (n + 1))

end

end A265039.P8555708498547037940

/-! ## A265039.P10999207324421148874

`A265038(A348553(n))%A265040(n+1)`
-/

namespace A265039.P10999207324421148874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A265038 (A348553 n).toNat) (A265040 (n + 1))

end

end A265039.P10999207324421148874

/-! ## A265039.P17731912759763096049

`A265038(A000027(n+1))%A265040(n+1)`
-/

namespace A265039.P17731912759763096049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A265038 (A000027 (n + 1)).toNat) (A265040 (n + 1))

end

end A265039.P17731912759763096049

/-! ## A265039.P12823050691697288880

`A265038(A003964(n+1))%A265040(n+1)`
-/

namespace A265039.P12823050691697288880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A265038 (A003964 (n + 1)).toNat) (A265040 (n + 1))

end

end A265039.P12823050691697288880

/-!
# A265040: If A009927 is regarded as the coordination sequence of AuNb_3, this sequence gives cumulative number of Nb atoms in shells 1 through n.

The programs for A265040, there is no canonical definition to state claims against.
-/

/-! ## A265040.P14027521416293503442

`A265038(n+1)-A265039(n+1)`
-/

namespace A265040.P14027521416293503442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265038 (n + 1) - A265039 (n + 1)

end

end A265040.P14027521416293503442

/-!
# A265041: Coordination sequence for the {3,3,3,5} tiling.

The programs for A265041, there is no canonical definition to state claims against.
-/

/-! ## A265041.P3117222681890400133

`filter[A162608(2*n+1), A189169(#)]`
-/

namespace A265041.P3117222681890400133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162608 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A189169 (f1 j).toNat = 1) n)

end

end A265041.P3117222681890400133

/-!
# A265044: Poincaré series for hyperbolic reflection group with Coxeter diagram o---o-(5)-o---o.

The programs for A265044, there is no canonical definition to state claims against.
-/

/-! ## A265044.P10550971562273098689

`A003056(∑[A000098(Δ[n²])])`
-/

namespace A265044.P10550971562273098689
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000098 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A265044.P10550971562273098689

/-! ## A265044.P6401004972222673102

`A003056(A347547(3*n+1))`
-/

namespace A265044.P6401004972222673102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A347547 (3 * n + 1 + 10)).toNat

end

end A265044.P6401004972222673102

/-! ## A265044.P17082675448838616959

`A003056(A000070(3*n))+n`
-/

namespace A265044.P17082675448838616959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A000070 (3 * n)).toNat + (n : ℤ)

end

end A265044.P17082675448838616959

/-! ## A265044.P14834854464555520628

`∑[∑[A095161(A014596(n+1))]]`
-/

namespace A265044.P14834854464555520628
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095161 (A014596 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A265044.P14834854464555520628

/-! ## A265044.P9624199855223207949

`A184419(∑[∑[A089047(n+1)]])`
-/

namespace A265044.P9624199855223207949
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089047 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184419 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A265044.P9624199855223207949

/-!
# A265045: Coordination sequence for a 6.6.6 point in the 3-transitive tiling {4.6.6, 6.6.6, 6.6.6.6} of the plane by squares and dominoes (hexagons).

The programs for A265045, the canonical program `A265045.P13375192905549320280` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A265045 has offset 0).

The definition of A265045 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A265045.P13375192905549320280

`2*a(n-1)-a(n-2)` with `a(0)=1, a(1)=3, a(2)=7, a(3)=11, a(4)=14, a(5)=18, a(6)=23, a(7)=28, a(8)=32`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A265045

/-- `2*a(n-1)-a(n-2)` -/
def P13375192905549320280.Spec : Prop :=
  ∀ n, P13375192905549320280.a n = A265045 n

theorem P13375192905549320280.correct : P13375192905549320280.Spec := by
  intro n
  simp only [A265045]

end A265045

/-!
# A265046: Coordination sequence for a 4.6.6 point in the 3-transitive tiling {4.6.6, 6.6.6, 6.6.6.6} of the plane by squares and dominoes (hexagons).

The programs for A265046, the canonical program `A265046.P1239512869053431095` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A265046 has offset 0).

The definition of A265046 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A265046.P1239512869053431095

`2*a(n-1)-a(n-2)` with `a(0)=1, a(1)=3, a(2)=5, a(3)=8, a(4)=13, a(5)=18, a(6)=23, a(7)=28, a(8)=32`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A265046

/-- `2*a(n-1)-a(n-2)` -/
def P1239512869053431095.Spec : Prop :=
  ∀ n, P1239512869053431095.a n = A265046 n

theorem P1239512869053431095.correct : P1239512869053431095.Spec := by
  intro n
  simp only [A265046]

end A265046

/-!
# A265047: Poincaré series for hyperbolic reflection group with Coxeter diagram o-(4)-o---o-(5)-o.

The programs for A265047, there is no canonical definition to state claims against.
-/

/-! ## A265047.P3293396985084018559

`∑[∑[A276611(A151527(n+1))]]`
-/

namespace A265047.P3293396985084018559
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276611 (A151527 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A265047.P3293396985084018559

/-! ## A265047.P14833866079145732294

`∑[∑[A227177(A180414(n))]]`
-/

namespace A265047.P14833866079145732294
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227177 (A180414 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A265047.P14833866079145732294

/-! ## A265047.P7289800773252364039

`∑[∑[A074279(A051573(n+2))]]`
-/

namespace A265047.P7289800773252364039
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074279 (A051573 (n + 2)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A265047.P7289800773252364039

/-! ## A265047.P11807653071146470927

`∑[A329978(a(n-1)+1)]` with `a(0)=1, a(1)=3`
-/

namespace A265047.P11807653071146470927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n f1 =>
  A329978 (f1 (n - 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A265047.P11807653071146470927

/-! ## A265047.P6213430543055590487

`∑[∑[A134914(A002387(n))]]`
-/

namespace A265047.P6213430543055590487
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134914 (A002387 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A265047.P6213430543055590487

/-!
# A265048: Poincaré series for hyperbolic reflection group with Coxeter diagram o-(5)-o---o-(5)-o.

The programs for A265048, there is no canonical definition to state claims against.
-/

/-! ## A265048.P5451055833763275966

`∑[A000267(A108870(n)-1)]`
-/

namespace A265048.P5451055833763275966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000267 (A108870 n - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A265048.P5451055833763275966

/-! ## A265048.P7548818659936611349

`∑[A000194(2*(n+1)*2^n)]`
-/

namespace A265048.P7548818659936611349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (2 * (n + 1) * 2 ^ n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A265048.P7548818659936611349

/-! ## A265048.P3013856008299435769

`∑[A337835(2*(n+1)*2^n)]`
-/

namespace A265048.P3013856008299435769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337835 (2 * (n + 1) * 2 ^ n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A265048.P3013856008299435769

/-! ## A265048.P1837570305237851102

`∑[A349520(2*(n+1)*2^n)]`
-/

namespace A265048.P1837570305237851102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349520 (2 * (n + 1) * 2 ^ n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A265048.P1837570305237851102

/-! ## A265048.P863839220203670999

`∑[A137734(∑[(n+2)*2^n]-1)]`
-/

namespace A265048.P863839220203670999
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 2) * 2 ^ n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137734 (∑ j ∈ Finset.range (n + 1), f2 j - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A265048.P863839220203670999

/-!
# A265049: Poincaré series for hyperbolic reflection group with Coxeter diagram shown in Comments.

The programs for A265049, there is no canonical definition to state claims against.
-/

/-! ## A265049.P7987158138418050178

`∑[∑[A204166(A083378(n+1))]]`
-/

namespace A265049.P7987158138418050178
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204166 (A083378 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A265049.P7987158138418050178

/-! ## A265049.P9303649348070467247

`A266333(n)+A178798(A008346(n))`
-/

namespace A265049.P9303649348070467247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266333 n + A178798 (A008346 n).toNat

end

end A265049.P9303649348070467247

/-! ## A265049.P11137260244618100900

`A266333(n)-A083892(A078057(n))`
-/

namespace A265049.P11137260244618100900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266333 n - A083892 (A078057 n).toNat

end

end A265049.P11137260244618100900

/-! ## A265049.P3799499470721378084

`A266333(n)-A025469(A162740(n))`
-/

namespace A265049.P3799499470721378084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266333 n - A025469 (A162740 n).toNat

end

end A265049.P3799499470721378084

/-!
# A265050: Poincaré series for hyperbolic reflection group with Coxeter diagram shown in Comments.

The programs for A265050, there is no canonical definition to state claims against.
-/

/-! ## A265050.P14634733200797065440

`∑[∑[A204166(A048745(n))]]`
-/

namespace A265050.P14634733200797065440
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204166 (A048745 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A265050.P14634733200797065440

/-! ## A265050.P5493742890177815526

`∑[∑[A323361(A039723(n))]]`
-/

namespace A265050.P5493742890177815526
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323361 (A039723 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A265050.P5493742890177815526

/-! ## A265050.P4721534974415313584

`∑[∑[A323361(A087051(n))]]`
-/

namespace A265050.P4721534974415313584
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323361 (A087051 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A265050.P4721534974415313584

/-! ## A265050.P9443972191332751035

`∑[∑[A323361(A004871(n+1))]]`
-/

namespace A265050.P9443972191332751035
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323361 (A004871 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A265050.P9443972191332751035

/-! ## A265050.P3107262364563123951

`∑[A172471(∑[A317758(n+1)])]`
-/

namespace A265050.P3107262364563123951
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317758 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172471 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A265050.P3107262364563123951

/-!
# A265051: Poincaré series for hyperbolic reflection group with Coxeter diagram shown in Comments.

The programs for A265051, there is no canonical definition to state claims against.
-/

/-! ## A265051.P3369424915880987071

`∑[∑[A018073(A087051(n))]]`
-/

namespace A265051.P3369424915880987071
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018073 (A087051 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A265051.P3369424915880987071

/-! ## A265051.P712002410786594211

`∑[∑[A018073(A227549(n+1))]]`
-/

namespace A265051.P712002410786594211
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018073 (A227549 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A265051.P712002410786594211

/-! ## A265051.P14075364738264405225

`∑[∑[A002024(floor(10^(n/2)/2)+1)]]`
-/

namespace A265051.P14075364738264405225
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (⌊(10 : ℝ) ^ ((n : ℚ) / 2 : ℝ) / 2⌋ + 1).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A265051.P14075364738264405225

/-! ## A265051.P2515687362901586636

`∑[∑[A082447(A136304(n))]]`
-/

namespace A265051.P2515687362901586636
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082447 (A136304 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A265051.P2515687362901586636

/-! ## A265051.P9702384705316975607

`∑[∑[A000194(A097333(3*n))]]`
-/

namespace A265051.P9702384705316975607
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A097333 (3 * n)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A265051.P9702384705316975607

/-!
# A265052: Poincaré series for hyperbolic reflection group with Coxeter diagram shown in Comments.

The programs for A265052, there is no canonical definition to state claims against.
-/

/-! ## A265052.P11220712100424016696

`∑[A059995(A289914(n+4))]`
-/

namespace A265052.P11220712100424016696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059995 (A289914 (n + 4)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A265052.P11220712100424016696

/-! ## A265052.P6529341107605112184

`∑[∑[A003056(A115115(n+1))]]`
-/

namespace A265052.P6529341107605112184
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A115115 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A265052.P6529341107605112184

/-! ## A265052.P4922607934409873214

`∑[∑[A257639(A052947(3*(n+1)))]]`
-/

namespace A265052.P4922607934409873214
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257639 (A052947 (3 * (n + 1))).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A265052.P4922607934409873214

/-! ## A265052.P14893870901457152952

`∑[∑[A002024(A357654(3*n+2))]]`
-/

namespace A265052.P14893870901457152952
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A357654 (3 * n + 2)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A265052.P14893870901457152952

/-! ## A265052.P8990338456118698618

`∑[∑[A257639(A107850(3*n+4))]]`
-/

namespace A265052.P8990338456118698618
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257639 (A107850 (3 * n + 4)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A265052.P8990338456118698618

/-!
# A265053: Poincaré series for hyperbolic reflection group with Coxeter diagram shown in Comments.

The programs for A265053, there is no canonical definition to state claims against.
-/

/-! ## A265053.P8828671264309712022

`∑[∑[A000194(A211282(n))]]`
-/

namespace A265053.P8828671264309712022
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A211282 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A265053.P8828671264309712022

/-! ## A265053.P17166203098299428685

`∑[∑[A000194(A211292(n))]]`
-/

namespace A265053.P17166203098299428685
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A211292 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A265053.P17166203098299428685

/-! ## A265053.P14334221491854357312

`∑[∑[A000194(A211295(n))]]`
-/

namespace A265053.P14334221491854357312
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A211295 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A265053.P14334221491854357312

/-! ## A265053.P296699678595136590

`∑[∑[A135660(A106729(n))]]`
-/

namespace A265053.P296699678595136590
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135660 (A106729 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A265053.P296699678595136590

/-! ## A265053.P3506909270920898468

`∑[∑[A204164(A067771(n))]]`
-/

namespace A265053.P3506909270920898468
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204164 (A067771 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A265053.P3506909270920898468

/-!
# A265054: Poincaré series for hyperbolic reflection group with Coxeter diagram shown in Comments.

The programs for A265054, there is no canonical definition to state claims against.
-/

/-! ## A265054.P3272180813654531225

`A102026(n+2)-A165102(A261775(3*n+4))`
-/

namespace A265054.P3272180813654531225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102026 (n + 2) - A165102 (A261775 (3 * n + 4)).toNat

end

end A265054.P3272180813654531225

/-! ## A265054.P4613424003729269311

`∑[∑[A003059(A077837(n))]]`
-/

namespace A265054.P4613424003729269311
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003059 (A077837 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A265054.P4613424003729269311

/-! ## A265054.P16900541373045184421

`∑[∑[A100617(A001700(n))]]`
-/

namespace A265054.P16900541373045184421
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100617 (A001700 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A265054.P16900541373045184421

/-! ## A265054.P2332197042778082905

`∑[∑[A000196(A165205(n))]]`
-/

namespace A265054.P2332197042778082905
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A165205 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A265054.P2332197042778082905

/-!
# A265055: Expansion of b(2)*b(4)*b(6)/(x^8-x^4-x+1), where b(k) = (1-x^k)/(1-x).

The programs for A265055, there is no canonical definition to state claims against.
-/

/-! ## A265055.P6653374696497967605

`∑[∑[A274701(A018424(n+1))]]`
-/

namespace A265055.P6653374696497967605
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274701 (A018424 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A265055.P6653374696497967605

/-! ## A265055.P12339801734757817021

`∑{e}[A257273(n), A134987(#)]+(n+1)²`
-/

namespace A265055.P12339801734757817021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257273 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A134987 (Nat.factorization (f1 n).natAbs p) + ((n + 1) ^ 2 : ℤ)

end

end A265055.P12339801734757817021

/-! ## A265055.P12271337176698360697

`A072088(A137359(n))+A000290(n+1)`
-/

namespace A265055.P12271337176698360697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072088 (A137359 n).toNat + A000290 (n + 1)

end

end A265055.P12271337176698360697

/-! ## A265055.P11539566476367580177

`A184419(A377407(n+2))`
-/

namespace A265055.P11539566476367580177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184419 (A377407 (n + 2)).toNat

end

end A265055.P11539566476367580177

/-!
# A265056: Partial sums of A234275.

The programs for A265056, the canonical program `A265056.P5274687067658637690` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A265056 has offset 0).

The definition of A265056 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A265056.P5274687067658637690

`3*a(n-1)-3*a(n-2)+a(n-3)` with `a(0)=1, a(1)=5, a(2)=21, a(3)=45`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A265056

/-- `3*a(n-1)-3*a(n-2)+a(n-3)` -/
def P5274687067658637690.Spec : Prop :=
  ∀ n, P5274687067658637690.a n = A265056 n

theorem P5274687067658637690.correct : P5274687067658637690.Spec := by
  intro n
  simp only [A265056]

end A265056

/-! ## A265056.P9541567560023555448

`abs(2-∑[8*n])-1`
-/

namespace A265056.P9541567560023555448
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)| - 1

end

end A265056.P9541567560023555448

namespace A265056

/-- `abs(2-∑[8*n])-1` -/
def P9541567560023555448.Spec : Prop :=
  ∀ n, P9541567560023555448.a n = A265056 n

end A265056

/-! ## A265056.P9081343623458031095

`∑[a(n-1)+8]` with `a(0)=1, a(1)=4, a(2)=16`
-/

namespace A265056.P9081343623458031095
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 4, 16] fun n f1 =>
  f1 (n - 1) + 8

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A265056.P9081343623458031095

namespace A265056

/-- `∑[a(n-1)+8]` -/
def P9081343623458031095.Spec : Prop :=
  ∀ n, (P9081343623458031095.a n : ℤ) = A265056 n

end A265056

/-! ## A265056.P3774188043450336781

`ceil((2*n+1-acot(n))²)`
-/

namespace A265056.P3774188043450336781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((2 * n + 1 : ℝ) - SequenceMachineLib.acot (n : ℝ)) ^ 2⌉

end

end A265056.P3774188043450336781

namespace A265056

/-- `ceil((2*n+1-acot(n))²)` -/
def P3774188043450336781.Spec : Prop :=
  ∀ n, P3774188043450336781.a n = A265056 n

end A265056

/-! ## A265056.P17381030777378595775

`∑[ogf((1+2x+9x^2-4x^3)/(1-2x+x^2))]`
-/

namespace A265056.P17381030777378595775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2, 9, -4] [1, -2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A265056.P17381030777378595775

namespace A265056

/-- `∑[ogf((1+2x+9x^2-4x^3)/(1-2x+x^2))]` -/
def P17381030777378595775.Spec : Prop :=
  ∀ n, P17381030777378595775.a n = A265056 n

end A265056

/-! ## A265056.P10654499159141303765

`xor(3, lcm(2, (2*n+1)²-3))`
-/

namespace A265056.P10654499159141303765
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 (Int.lcm 2 (((2 * n + 1) ^ 2 : ℤ) - 3))

end

end A265056.P10654499159141303765

namespace A265056

/-- `xor(3, lcm(2, (2*n+1)²-3))` -/
def P10654499159141303765.Spec : Prop :=
  ∀ n, (P10654499159141303765.a n : ℤ) = A265056 n

end A265056

/-! ## A265056.P8546189369502644460

`∑[4*n*gcd(2, a(n-1))]` with `a(0)=1`
-/

namespace A265056.P8546189369502644460
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  4 * (n * Nat.gcd 2 (f1 (n - 1)))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A265056.P8546189369502644460

namespace A265056

/-- `∑[4*n*gcd(2, a(n-1))]` -/
def P8546189369502644460.Spec : Prop :=
  ∀ n, (P8546189369502644460.a n : ℤ) = A265056 n

end A265056

/-! ## A265056.P10201217471459550297

`∑[n*8%a(n-1)²]` with `a(0)=1, a(1)=4`
-/

namespace A265056.P10201217471459550297
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 4] fun n f1 =>
  n * (8 % f1 (n - 1) ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A265056.P10201217471459550297

namespace A265056

/-- `∑[n*8%a(n-1)²]` -/
def P10201217471459550297.Spec : Prop :=
  ∀ n, (P10201217471459550297.a n : ℤ) = A265056 n

end A265056

/-! ## A265056.P8302780062902559293

`record[((n+2)*(n-2))^and(1, n)]`
-/

namespace A265056.P8302780062902559293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 2 : ℤ) * ((n : ℤ) - 2)) ^ Nat.land 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A265056.P8302780062902559293

namespace A265056

/-- `record[((n+2)*(n-2))^and(1, n)]` -/
def P8302780062902559293.Spec : Prop :=
  ∀ n, P8302780062902559293.a n = A265056 n

end A265056

/-! ## A265056.P16682914037728086292

`∑[4*n*2%a(n-1)]` with `a(0)=1, a(1)=4`
-/

namespace A265056.P16682914037728086292
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 4] fun n f1 =>
  4 * (n * (2 % f1 (n - 1)))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A265056.P16682914037728086292

namespace A265056

/-- `∑[4*n*2%a(n-1)]` -/
def P16682914037728086292.Spec : Prop :=
  ∀ n, (P16682914037728086292.a n : ℤ) = A265056 n

end A265056

/-! ## A265056.P18321424709484416335

`gcd((2*n+1)²-4, C(2, n+2))`
-/

namespace A265056.P18321424709484416335
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (((2 * n + 1) ^ 2 : ℤ) - 4) (Nat.choose 2 (n + 2) : ℤ)

end

end A265056.P18321424709484416335

namespace A265056

/-- `gcd((2*n+1)²-4, C(2, n+2))` -/
def P18321424709484416335.Spec : Prop :=
  ∀ n, (P18321424709484416335.a n : ℤ) = A265056 n

end A265056

/-! ## A265056.P3867297137630892762

`floor((2/C(2*n+1, 2*n)-(2*n+1))²)`
-/

namespace A265056.P3867297137630892762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 / (Nat.choose (2 * n + 1) (2 * n) : ℚ) - (2 * n + 1 : ℚ)) ^ 2⌋

end

end A265056.P3867297137630892762

namespace A265056

/-- `floor((2/C(2*n+1, 2*n)-(2*n+1))²)` -/
def P3867297137630892762.Spec : Prop :=
  ∀ n, P3867297137630892762.a n = A265056 n

end A265056

/-! ## A265056.P8926046908489648595

`∑[A234275(n)]`
-/

namespace A265056.P8926046908489648595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234275 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A265056.P8926046908489648595

namespace A265056

/-- `∑[A234275(n)]` -/
def P8926046908489648595.Spec : Prop :=
  ∀ n, P8926046908489648595.a n = A265056 n

end A265056

/-! ## A265056.P14557524974828724421

`abs(2-abs(A184882(n)))`
-/

namespace A265056.P14557524974828724421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(2 - |A184882 n|)|

end

end A265056.P14557524974828724421

namespace A265056

/-- `abs(2-abs(A184882(n)))` -/
def P14557524974828724421.Spec : Prop :=
  ∀ n, P14557524974828724421.a n = A265056 n

end A265056

/-! ## A265056.P16625057002387148606

`abs(record[A173039(n+2)])`
-/

namespace A265056.P16625057002387148606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173039 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)|

end

end A265056.P16625057002387148606

namespace A265056

/-- `abs(record[A173039(n+2)])` -/
def P16625057002387148606.Spec : Prop :=
  ∀ n, P16625057002387148606.a n = A265056 n

end A265056

/-! ## A265056.P12062729608725237094

`abs(1-2*A132209(n))`
-/

namespace A265056.P12062729608725237094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - 2 * A132209 n|

end

end A265056.P12062729608725237094

namespace A265056

/-- `abs(1-2*A132209(n))` -/
def P12062729608725237094.Spec : Prop :=
  ∀ n, P12062729608725237094.a n = A265056 n

end A265056

/-! ## A265056.P7720397097182056008

`record[or(1, A061037(n+2))]`
-/

namespace A265056.P7720397097182056008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A061037 (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A265056.P7720397097182056008

namespace A265056

/-- `record[or(1, A061037(n+2))]` -/
def P7720397097182056008.Spec : Prop :=
  ∀ n, P7720397097182056008.a n = A265056 n

end A265056

/-! ## A265056.P8313920104403554916

`ceil((acot(n)-A005408(n))²)`
-/

namespace A265056.P8313920104403554916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(SequenceMachineLib.acot (n : ℝ) - (A005408 n : ℝ)) ^ 2⌉

end

end A265056.P8313920104403554916

namespace A265056

/-- `ceil((acot(n)-A005408(n))²)` -/
def P8313920104403554916.Spec : Prop :=
  ∀ n, P8313920104403554916.a n = A265056 n

end A265056

/-! ## A265056.P11143964969143906286

`-or(3, A001221(2*n+1)-(2*n+1)²)`
-/

namespace A265056.P11143964969143906286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.lor 3 (A001221 (2 * n + 1) - ((2 * n + 1) ^ 2 : ℤ))

end

end A265056.P11143964969143906286

namespace A265056

/-- `-or(3, A001221(2*n+1)-(2*n+1)²)` -/
def P11143964969143906286.Spec : Prop :=
  ∀ n, P11143964969143906286.a n = A265056 n

end A265056

/-! ## A265056.P7671299566166198401

`floor((2*n+1-(n+2)/∑[A000203(2*n+1)])²)`
-/

namespace A265056.P7671299566166198401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((2 * n + 1 : ℚ) - (n + 2 : ℚ) / ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ)) ^ 2⌋

end

end A265056.P7671299566166198401

namespace A265056

/-- `floor((2*n+1-(n+2)/∑[A000203(2*n+1)])²)` -/
def P7671299566166198401.Spec : Prop :=
  ∀ n, P7671299566166198401.a n = A265056 n

end A265056

/-!
# A265057: Coordination sequence for (2,3,7) tiling of hyperbolic plane.

The programs for A265057, there is no canonical definition to state claims against.
-/

/-! ## A265057.P2331279701265390510

`∑[A106161(∑[A027907(n)])]`
-/

namespace A265057.P2331279701265390510
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027907 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106161 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A265057.P2331279701265390510

/-! ## A265057.P13816043317231358586

`∑[A108602(A239458(n+1))]`
-/

namespace A265057.P13816043317231358586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108602 (A239458 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A265057.P13816043317231358586

/-! ## A265057.P14299408848664488267

`A206244(23*A004895(n+1))`
-/

namespace A265057.P14299408848664488267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206244 (23 * A004895 (n + 1)).toNat

end

end A265057.P14299408848664488267

/-! ## A265057.P5516358823108617566

`A368915(A018036(n))+A082662(n+1)`
-/

namespace A265057.P5516358823108617566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368915 (A018036 n).toNat + A082662 (n + 1)

end

end A265057.P5516358823108617566

/-! ## A265057.P10114814560112372220

`∑[∑[A000035(A099234(n))]]`
-/

namespace A265057.P10114814560112372220
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A099234 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A265057.P10114814560112372220

/-!
# A265058: Coordination sequence for (2,3,8) tiling of hyperbolic plane.

The programs for A265058, there is no canonical definition to state claims against.
-/

/-! ## A265058.P4328039028238756818

`∑[∑[A333816(A181926(n))]]`
-/

namespace A265058.P4328039028238756818
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333816 (A181926 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A265058.P4328039028238756818

/-! ## A265058.P2359984717230772906

`A059396(or(A070289(3*(n+1)), A236923(n)))`
-/

namespace A265058.P2359984717230772906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059396 (Int.lor (A070289 (3 * (n + 1))) (A236923 n)).toNat

end

end A265058.P2359984717230772906

/-! ## A265058.P9563445899197568559

`A059396(A285412(n+1)+A070289(3*(n+1)))`
-/

namespace A265058.P9563445899197568559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059396 (A285412 (n + 1) + A070289 (3 * (n + 1))).toNat

end

end A265058.P9563445899197568559

/-! ## A265058.P6487101139312879130

`A059396(A070289(3*(n+1))+A059894(2*n+1))`
-/

namespace A265058.P6487101139312879130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059396 (A070289 (3 * (n + 1)) + A059894 (2 * n + 1)).toNat

end

end A265058.P6487101139312879130

/-! ## A265058.P8633858950926334127

`∑[∑[A243224(A020243(n+1))]]`
-/

namespace A265058.P8633858950926334127
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243224 (A020243 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A265058.P8633858950926334127

/-!
# A265059: Coordination sequence for (2,3,9) tiling of hyperbolic plane.

The programs for A265059, there is no canonical definition to state claims against.
-/

/-! ## A265059.P6573587337734037349

`A131209(∑[∑[A253240(n)]])`
-/

namespace A265059.P6573587337734037349
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253240 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131209 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A265059.P6573587337734037349

/-! ## A265059.P13801953980534879130

`A293754(∑[∑[A253240(n)]])`
-/

namespace A265059.P13801953980534879130
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253240 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293754 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A265059.P13801953980534879130

/-! ## A265059.P2454783252925038579

`∑[A064099(A012855(n))]`
-/

namespace A265059.P2454783252925038579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064099 (A012855 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A265059.P2454783252925038579

/-! ## A265059.P9165239945170814364

`∑[∑[A050370(A002426(n))]]`
-/

namespace A265059.P9165239945170814364
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050370 (A002426 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A265059.P9165239945170814364

/-! ## A265059.P7967852614934939611

`A276611(A048468(n))`
-/

namespace A265059.P7967852614934939611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276611 (A048468 n).toNat

end

end A265059.P7967852614934939611

/-!
# A265060: Coordination sequence for (2,4,5) tiling of hyperbolic plane.

The programs for A265060, there is no canonical definition to state claims against.
-/

/-! ## A265060.P1201435412516937473

`A377286(A237269(n+1))`
-/

namespace A265060.P1201435412516937473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377286 (A237269 (n + 1)).toNat

end

end A265060.P1201435412516937473

/-! ## A265060.P18144811388745496737

`A000196(∑[A185691(n)])-2`
-/

namespace A265060.P18144811388745496737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185691 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (∑ j ∈ Finset.range (n + 1), f1 j).toNat - 2

end

end A265060.P18144811388745496737

/-! ## A265060.P955098659498209273

`∑[∑[A361158(A034891(n))]]`
-/

namespace A265060.P955098659498209273
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361158 (A034891 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A265060.P955098659498209273

/-! ## A265060.P3801765250860048881

`∑[∑[A374521(A370586(n))]]`
-/

namespace A265060.P3801765250860048881
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374521 (A370586 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A265060.P3801765250860048881

/-! ## A265060.P18334819428963383286

`∑[∑[A240021(A209864(2*n))]]`
-/

namespace A265060.P18334819428963383286
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240021 (A209864 (2 * n)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A265060.P18334819428963383286

/-!
# A265061: Coordination sequence for (2,4,6) tiling of hyperbolic plane.

The programs for A265061, there is no canonical definition to state claims against.
-/

/-! ## A265061.P11345680665323935334

`∑[A227177(∑[A001006(n)])]`
-/

namespace A265061.P11345680665323935334
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001006 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227177 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A265061.P11345680665323935334

/-! ## A265061.P12896094784803676798

`∑[A227581(record[A251704(n)])]`
-/

namespace A265061.P12896094784803676798
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251704 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227581 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A265061.P12896094784803676798

/-! ## A265061.P3978567502426932784

`∑[A227177(∑[A086246(n+2)])]`
-/

namespace A265061.P3978567502426932784
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086246 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227177 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A265061.P3978567502426932784

/-! ## A265061.P12590034528786968529

`A002024(∑[∑[A164215(n)+n]])`
-/

namespace A265061.P12590034528786968529
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164215 n + (n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A265061.P12590034528786968529

/-! ## A265061.P3154534301892306179

`A003056(A122793(a(n-1)+2))` with `a(0)=1`
-/

namespace A265061.P3154534301892306179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A003056 (A122793 (a (n - 1) + 2).toNat).toNat

end

end A265061.P3154534301892306179

/-!
# A265062: Coordination sequence for (2,4,7) tiling of hyperbolic plane.

The programs for A265062, there is no canonical definition to state claims against.
-/

/-! ## A265062.P13921143741403778986

`A003056(∑[A132730(n)]+n)+n`
-/

namespace A265062.P13921143741403778986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132730 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)).toNat + (n : ℤ)

end

end A265062.P13921143741403778986

/-! ## A265062.P13072275143295933641

`A003056(∑[A126646(n)+A022811(n)])`
-/

namespace A265062.P13072275143295933641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126646 n + A022811 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A265062.P13072275143295933641

/-! ## A265062.P1920112853106139408

`A000194(∑[A128443(n+1)])`
-/

namespace A265062.P1920112853106139408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128443 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A265062.P1920112853106139408

/-! ## A265062.P16052861841117729039

`A003059(A208354(n)*A313475(n))`
-/

namespace A265062.P16052861841117729039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003059 (A208354 n * A313475 n).toNat

end

end A265062.P16052861841117729039

/-! ## A265062.P16406473286397004314

`A339183(A306967(n+2))`
-/

namespace A265062.P16406473286397004314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339183 (A306967 (n + 2)).toNat

end

end A265062.P16406473286397004314

/-!
# A265063: Coordination sequence for (2,4,8) tiling of hyperbolic plane.

The programs for A265063, there is no canonical definition to state claims against.
-/

/-! ## A265063.P13513447575794847053

`A205842(∑[2^n]+2)-4`
-/

namespace A265063.P13513447575794847053
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205842 (∑ j ∈ Finset.range (n + 1), f1 j + 2) - 4

end

end A265063.P13513447575794847053

/-! ## A265063.P8148570551279429147

`A073188(A224521(n+1))`
-/

namespace A265063.P8148570551279429147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073188 (A224521 (n + 1)).toNat

end

end A265063.P8148570551279429147

/-! ## A265063.P6204641768204335498

`A073188(A291754(n+1))`
-/

namespace A265063.P6204641768204335498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073188 (A291754 (n + 1)).toNat

end

end A265063.P6204641768204335498

/-! ## A265063.P10455266386124890102

`A071860(A276918(n)+n)`
-/

namespace A265063.P10455266386124890102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071860 (A276918 n + (n : ℤ)).toNat

end

end A265063.P10455266386124890102

/-! ## A265063.P8288327479882124132

`A071860(or(n, A276918(n)))`
-/

namespace A265063.P8288327479882124132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071860 (Int.lor (n : ℤ) (A276918 n)).toNat

end

end A265063.P8288327479882124132

/-!
# A265064: Coordination sequence for (2,5,5) tiling of hyperbolic plane.

The programs for A265064, there is no canonical definition to state claims against.
-/

/-! ## A265064.P17234723299626687346

`A116939(A048487(n)+A001060(n))`
-/

namespace A265064.P17234723299626687346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116939 (A048487 n + A001060 n).toNat

end

end A265064.P17234723299626687346

/-! ## A265064.P13458353407989852971

`A116939(A001060(n)-(2-A048487(n)))`
-/

namespace A265064.P13458353407989852971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116939 (A001060 n - (2 - A048487 n)).toNat

end

end A265064.P13458353407989852971

/-! ## A265064.P9371740430904005385

`A307707(A213589(n+2))`
-/

namespace A265064.P9371740430904005385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307707 (A213589 (n + 2)).toNat

end

end A265064.P9371740430904005385

/-! ## A265064.P13209580870791595788

`or(A000196(A139635(n+1)), A364011(n+1))`
-/

namespace A265064.P13209580870791595788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000196 (A139635 (n + 1)).toNat) (A364011 (n + 1))

end

end A265064.P13209580870791595788

/-!
# A265065: Coordination sequence for (2,5,6) tiling of hyperbolic plane.

The programs for A265065, there is no canonical definition to state claims against.
-/

/-! ## A265065.P11793122334439384775

`∑[A161511(∑[A054581(n+2)])]`
-/

namespace A265065.P11793122334439384775
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054581 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161511 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A265065.P11793122334439384775

/-! ## A265065.P5422959226414289665

`A000196(A112730(n+1)*A164193(n))`
-/

namespace A265065.P5422959226414289665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A112730 (n + 1) * A164193 n).toNat

end

end A265065.P5422959226414289665

/-! ## A265065.P6474737327052093027

`A000196(A058396(n)+1)+∑[A000196(n)]`
-/

namespace A265065.P6474737327052093027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A058396 n + 1).toNat + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A265065.P6474737327052093027

/-! ## A265065.P4555334579075816882

`∑[A000196(n)]+A000196(A278464(n))+1`
-/

namespace A265065.P4555334579075816882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (A000196 (A278464 n).toNat + 1)

end

end A265065.P4555334579075816882

/-! ## A265065.P12591557691192002323

`A338331(A061419(n+1))+∑[A004525(n)]`
-/

namespace A265065.P12591557691192002323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338331 (A061419 (n + 1)).toNat + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A265065.P12591557691192002323

/-!
# A265066: Coordination sequence for (2,5,7) tiling of hyperbolic plane.

The programs for A265066, there is no canonical definition to state claims against.
-/

/-! ## A265066.P13936590778422549780

`∑[A003059(A154222(n))]`
-/

namespace A265066.P13936590778422549780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003059 (A154222 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A265066.P13936590778422549780

/-! ## A265066.P11110225505730392299

`∑[A079643(∑[A214663(n)])]`
-/

namespace A265066.P11110225505730392299
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214663 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079643 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A265066.P11110225505730392299

/-! ## A265066.P10823849061565180917

`∑[A000194(A132333(n)+A132332(n))]`
-/

namespace A265066.P10823849061565180917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A132333 n + A132332 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A265066.P10823849061565180917

/-! ## A265066.P14451248561472009299

`A184419(a(n-1))+1` with `a(0)=1, a(1)=3`
-/

namespace A265066.P14451248561472009299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  A184419 (a (n - 1)).toNat + 1

end

end A265066.P14451248561472009299

/-! ## A265066.P17552002945740192476

`A097285(A014480(n))`
-/

namespace A265066.P17552002945740192476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097285 (A014480 n).toNat

end

end A265066.P17552002945740192476

/-!
# A265067: Coordination sequence for (2,5,8) tiling of hyperbolic plane.

The programs for A265067, there is no canonical definition to state claims against.
-/

/-! ## A265067.P7750593341612067913

`A355910(n+4)-A333254(A161704(n+1))`
-/

namespace A265067.P7750593341612067913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355910 (n + 4) - A333254 (A161704 (n + 1)).toNat

end

end A265067.P7750593341612067913

/-! ## A265067.P12457025743534727458

`A227568(A362973(n+1))`
-/

namespace A265067.P12457025743534727458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227568 (A362973 (n + 1)).toNat

end

end A265067.P12457025743534727458

/-! ## A265067.P11229597151267822866

`A105223(A048469(n)+6)`
-/

namespace A265067.P11229597151267822866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105223 (A048469 n + 6).toNat

end

end A265067.P11229597151267822866

/-! ## A265067.P6737705499587696123

`A002024(∑[∑[A297496(n)]])`
-/

namespace A265067.P6737705499587696123
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297496 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A265067.P6737705499587696123

/-! ## A265067.P14142255054026403861

`A123578(∑[∑[A297496(n)]])`
-/

namespace A265067.P14142255054026403861
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297496 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123578 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A265067.P14142255054026403861

/-!
# A265068: Coordination sequence for (2,5,infinity) tiling of hyperbolic plane.

The programs for A265068, there is no canonical definition to state claims against.
-/

/-! ## A265068.P107945522736958567

`∑[A274701(A002203(n)+A001651(n+1))]`
-/

namespace A265068.P107945522736958567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274701 (A002203 n + A001651 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A265068.P107945522736958567

/-! ## A265068.P4054150282193039227

`A103128(2*A097550(n))`
-/

namespace A265068.P4054150282193039227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103128 (2 * A097550 n).toNat

end

end A265068.P4054150282193039227

/-! ## A265068.P1899117634319251289

`A003056(A007288(n))+n`
-/

namespace A265068.P1899117634319251289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A007288 n).toNat + (n : ℤ)

end

end A265068.P1899117634319251289

/-! ## A265068.P5304009113954840278

`A097285(A053730(n))+n`
-/

namespace A265068.P5304009113954840278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097285 (A053730 n).toNat + (n : ℤ)

end

end A265068.P5304009113954840278

/-! ## A265068.P4321850329519388594

`A003056(A151535(n+1))+n`
-/

namespace A265068.P4321850329519388594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A151535 (n + 1)).toNat + (n : ℤ)

end

end A265068.P4321850329519388594

/-!
# A265069: Coordination sequence for (2,6,6) tiling of hyperbolic plane.

The programs for A265069, there is no canonical definition to state claims against.
-/

/-! ## A265069.P11132022614370590777

`A035936(xor(A087323(n), A168288(n)))`
-/

namespace A265069.P11132022614370590777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035936 (Int.xor (A087323 n) (A168288 n)).toNat

end

end A265069.P11132022614370590777

/-! ## A265069.P10763069335507606878

`A218979(∑[A218931(n)])`
-/

namespace A265069.P10763069335507606878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218931 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218979 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A265069.P10763069335507606878

/-! ## A265069.P13206780016227646666

`A135663(A048469(n+1))`
-/

namespace A265069.P13206780016227646666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135663 (A048469 (n + 1)).toNat

end

end A265069.P13206780016227646666

/-! ## A265069.P22285963232806549

`A347243(A198094(n+2))`
-/

namespace A265069.P22285963232806549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347243 (A198094 (n + 2)).toNat

end

end A265069.P22285963232806549

/-! ## A265069.P4233583639321812189

`A000196(A119034(n+1)+A003261(n+1))`
-/

namespace A265069.P4233583639321812189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A119034 (n + 1) + A003261 (n + 1)).toNat

end

end A265069.P4233583639321812189

/-!
# A265070: Coordination sequence for (2,6,infinity) tiling of hyperbolic plane.

The programs for A265070, the canonical program `A265070.P7302077500375369542` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A265070 has offset 0).

The definition of A265070 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A265070.P7302077500375369542

`a(n-1)+a(n-3)+a(n-5)` with `a(0)=1, a(1)=3, a(2)=5, a(3)=8, a(4)=13, a(5)=21, a(6)=33`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A265070

/-- `a(n-1)+a(n-3)+a(n-5)` -/
def P7302077500375369542.Spec : Prop :=
  ∀ n, (P7302077500375369542.a n : ℤ) = A265070 n

theorem P7302077500375369542.correct : P7302077500375369542.Spec := by
  intro n
  simp only [A265070]

end A265070

/-! ## A265070.P7543622327636469614

`∑[A235963(A000646(n))]`
-/

namespace A265070.P7543622327636469614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235963 (A000646 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A265070.P7543622327636469614

namespace A265070

/-- `∑[A235963(A000646(n))]` -/
def P7543622327636469614.Spec : Prop :=
  ∀ n, P7543622327636469614.a n = A265070 n

end A265070

/-! ## A265070.P4027750899603202824

`∑[A054846(record[A136311(n+1)])]`
-/

namespace A265070.P4027750899603202824
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136311 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054846 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A265070.P4027750899603202824

namespace A265070

/-- `∑[A054846(record[A136311(n+1)])]` -/
def P4027750899603202824.Spec : Prop :=
  ∀ n, P4027750899603202824.a n = A265070 n

end A265070

/-! ## A265070.P10929367508544667845

`A000267(2*n*A090344(n))`
-/

namespace A265070.P10929367508544667845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000267 (2 * ((n : ℤ) * A090344 n)).toNat

end

end A265070.P10929367508544667845

namespace A265070

/-- `A000267(2*n*A090344(n))` -/
def P10929367508544667845.Spec : Prop :=
  ∀ n, P10929367508544667845.a n = A265070 n

end A265070

/-! ## A265070.P9199207129353343092

`∑[A135664(A000129(n+1))+1]`
-/

namespace A265070.P9199207129353343092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135664 (A000129 (n + 1)).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A265070.P9199207129353343092

namespace A265070

/-- `∑[A135664(A000129(n+1))+1]` -/
def P9199207129353343092.Spec : Prop :=
  ∀ n, P9199207129353343092.a n = A265070 n

end A265070

/-!
# A265071: Coordination sequence for (3,3,4) tiling of hyperbolic plane.

The programs for A265071, the canonical program `A265071.P17620935214342358587` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A265071 has offset 0).

The definition of A265071 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A265071.P17620935214342358587

`a(n-2)+a(n-3)+a(n-4)-a(n-6)` with `a(0)=1, a(1)=3, a(2)=6, a(3)=10, a(4)=15, a(5)=22, a(6)=31`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A265071

/-- `a(n-2)+a(n-3)+a(n-4)-a(n-6)` -/
def P17620935214342358587.Spec : Prop :=
  ∀ n, P17620935214342358587.a n = A265071 n

theorem P17620935214342358587.correct : P17620935214342358587.Spec := by
  intro n
  simp only [A265071]

end A265071

/-! ## A265071.P2496166192531595925

`∑[A000196(∑[A270440(n)])]`
-/

namespace A265071.P2496166192531595925
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270440 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A265071.P2496166192531595925

namespace A265071

/-- `∑[A000196(∑[A270440(n)])]` -/
def P2496166192531595925.Spec : Prop :=
  ∀ n, P2496166192531595925.a n = A265071 n

end A265071

/-! ## A265071.P15984703728429017364

`∑[A000196(∑[2*A135056(n)])+1]`
-/

namespace A265071.P15984703728429017364
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A135056 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (∑ j ∈ Finset.range (n + 1), f2 j).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A265071.P15984703728429017364

namespace A265071

/-- `∑[A000196(∑[2*A135056(n)])+1]` -/
def P15984703728429017364.Spec : Prop :=
  ∀ n, P15984703728429017364.a n = A265071 n

end A265071

/-! ## A265071.P15553037608931964498

`∑[A204166(A052996(n))]`
-/

namespace A265071.P15553037608931964498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204166 (A052996 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A265071.P15553037608931964498

namespace A265071

/-- `∑[A204166(A052996(n))]` -/
def P15553037608931964498.Spec : Prop :=
  ∀ n, P15553037608931964498.a n = A265071 n

end A265071

/-! ## A265071.P3286378155904497752

`∑[∑[A048766(A106336(n))]]`
-/

namespace A265071.P3286378155904497752
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (A106336 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A265071.P3286378155904497752

namespace A265071

/-- `∑[∑[A048766(A106336(n))]]` -/
def P3286378155904497752.Spec : Prop :=
  ∀ n, P3286378155904497752.a n = A265071 n

end A265071

/-!
# A265072: Coordination sequence for (3,3,5) tiling of hyperbolic plane.

The programs for A265072, there is no canonical definition to state claims against.
-/

/-! ## A265072.P6796692961021508594

`∑[∑[A227568(A002845(n+1))]]`
-/

namespace A265072.P6796692961021508594
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227568 (A002845 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A265072.P6796692961021508594

/-! ## A265072.P789683670813474331

`∑[∑[A259899(A316500(n+1))]]`
-/

namespace A265072.P789683670813474331
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259899 (A316500 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A265072.P789683670813474331

/-! ## A265072.P13429127614172665274

`∑[A003059(∑[A114199(n)])]`
-/

namespace A265072.P13429127614172665274
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114199 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003059 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A265072.P13429127614172665274

/-! ## A265072.P8691658595203745471

`∑[A000196(A221945(n)+2)]`
-/

namespace A265072.P8691658595203745471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A221945 n + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A265072.P8691658595203745471

/-! ## A265072.P12406105149421377053

`∑[A003059(A279674(n))]`
-/

namespace A265072.P12406105149421377053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003059 (A279674 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A265072.P12406105149421377053

/-!
# A265073: Coordination sequence for (3,3,6) tiling of hyperbolic plane.

The programs for A265073, there is no canonical definition to state claims against.
-/

/-! ## A265073.P16745110892655490296

`∑[A172471(∑[A026569(n)])]`
-/

namespace A265073.P16745110892655490296
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026569 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172471 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A265073.P16745110892655490296

/-! ## A265073.P4261653285496557100

`∑[A002024(A022543(n+1))]`
-/

namespace A265073.P4261653285496557100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A022543 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A265073.P4261653285496557100

/-! ## A265073.P11744730813374568657

`∑[record[A000194(A256169(n))]]`
-/

namespace A265073.P11744730813374568657
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A256169 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A265073.P11744730813374568657

/-! ## A265073.P795073690951802402

`A321578(A182644(n+2))`
-/

namespace A265073.P795073690951802402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321578 (A182644 (n + 2)).toNat

end

end A265073.P795073690951802402

/-! ## A265073.P13544819010120313301

`∑[A071626(∑[A038075(n+1)])]`
-/

namespace A265073.P13544819010120313301
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038075 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071626 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A265073.P13544819010120313301

/-!
# A265074: Coordination sequence for (3,3,7) tiling of hyperbolic plane.

The programs for A265074, the canonical program `A265074.P3861643776228917807` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A265074 has offset 0).

The definition of A265074 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A265074.P3861643776228917807

`a(n-1)+a(n-3)+a(n-5)+a(n-7)-a(n-8)` with `a(0)=1, a(1)=3, a(2)=6, a(3)=10, a(4)=16, a(5)=26, a(6)=42, a(7)=67, a(8)=106`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A265074

/-- `a(n-1)+a(n-3)+a(n-5)+a(n-7)-a(n-8)` -/
def P3861643776228917807.Spec : Prop :=
  ∀ n, P3861643776228917807.a n = A265074 n

theorem P3861643776228917807.correct : P3861643776228917807.Spec := by
  intro n
  simp only [A265074]

end A265074

/-! ## A265074.P15169418860777557895

`∑[A002024(A176334(n+1))]`
-/

namespace A265074.P15169418860777557895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A176334 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A265074.P15169418860777557895

namespace A265074

/-- `∑[A002024(A176334(n+1))]` -/
def P15169418860777557895.Spec : Prop :=
  ∀ n, P15169418860777557895.a n = A265074 n

end A265074

/-! ## A265074.P16079134275994823311

`A202304(∑[A077847(n)])`
-/

namespace A265074.P16079134275994823311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077847 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202304 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A265074.P16079134275994823311

namespace A265074

/-- `A202304(∑[A077847(n)])` -/
def P16079134275994823311.Spec : Prop :=
  ∀ n, P16079134275994823311.a n = A265074 n

end A265074

/-! ## A265074.P6477093309374314156

`A216256(∑[A084625(n)])`
-/

namespace A265074.P6477093309374314156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084625 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216256 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A265074.P6477093309374314156

namespace A265074

/-- `A216256(∑[A084625(n)])` -/
def P6477093309374314156.Spec : Prop :=
  ∀ n, P6477093309374314156.a n = A265074 n

end A265074

/-! ## A265074.P812678610882698223

`A321578(A116703(n+2))`
-/

namespace A265074.P812678610882698223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321578 (A116703 (n + 2)).toNat

end

end A265074.P812678610882698223

namespace A265074

/-- `A321578(A116703(n+2))` -/
def P812678610882698223.Spec : Prop :=
  ∀ n, P812678610882698223.a n = A265074 n

end A265074

/-!
# A265075: Coordination sequence for (3,4,4) tiling of hyperbolic plane.

The programs for A265075, there is no canonical definition to state claims against.
-/

/-! ## A265075.P12999016858989936124

`∑[record[A257639(A097892(n))]]`
-/

namespace A265075.P12999016858989936124
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257639 (A097892 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A265075.P12999016858989936124

/-! ## A265075.P13577128508973950607

`A073188(∑[A018020(n)])`
-/

namespace A265075.P13577128508973950607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018020 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073188 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A265075.P13577128508973950607

/-! ## A265075.P8526956566310364174

`∑[A003059(A191652(n))]`
-/

namespace A265075.P8526956566310364174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003059 (A191652 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A265075.P8526956566310364174

/-! ## A265075.P11080332326245442851

`∑[A000194(∑[A106666(n)])]`
-/

namespace A265075.P11080332326245442851
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106666 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A265075.P11080332326245442851

/-! ## A265075.P1959382065081785677

`∑[A381431(∑[A000016(n)])]`
-/

namespace A265075.P1959382065081785677
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000016 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381431 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A265075.P1959382065081785677

/-!
# A265076: Coordination sequence for (3,5,5) tiling of hyperbolic plane.

The programs for A265076, the canonical program `A265076.P7643481419899896412` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A265076 has offset 0).

The definition of A265076 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A265076.P7643481419899896412

`a(n-1)+2*a(n-3)+a(n-5)-a(n-6)` with `a(0)=1, a(1)=3, a(2)=6, a(3)=11, a(4)=20, a(5)=35, a(6)=60`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A265076

/-- `a(n-1)+2*a(n-3)+a(n-5)-a(n-6)` -/
def P7643481419899896412.Spec : Prop :=
  ∀ n, P7643481419899896412.a n = A265076 n

theorem P7643481419899896412.correct : P7643481419899896412.Spec := by
  intro n
  simp only [A265076]

end A265076

/-! ## A265076.P12546322149978773618

`∑[A051659(A310458(n))+A017989(n)]`
-/

namespace A265076.P12546322149978773618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051659 (A310458 n).toNat + A017989 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A265076.P12546322149978773618

namespace A265076

/-- `∑[A051659(A310458(n))+A017989(n)]` -/
def P12546322149978773618.Spec : Prop :=
  ∀ n, P12546322149978773618.a n = A265076 n

end A265076

/-! ## A265076.P7670669981605451294

`∑[A083277(∑[3*a(n-1)+1])]` with `a(0)=1, a(1)=2`
-/

namespace A265076.P7670669981605451294
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n f2 =>
  3 * f2 (n - 1) + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083277 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A265076.P7670669981605451294

namespace A265076

/-- `∑[A083277(∑[3*a(n-1)+1])]` -/
def P7670669981605451294.Spec : Prop :=
  ∀ n, P7670669981605451294.a n = A265076 n

end A265076

/-! ## A265076.P17355052889093458155

`∑[A085736(A017990(n))]`
-/

namespace A265076.P17355052889093458155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085736 (A017990 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A265076.P17355052889093458155

namespace A265076

/-- `∑[A085736(A017990(n))]` -/
def P17355052889093458155.Spec : Prop :=
  ∀ n, P17355052889093458155.a n = A265076 n

end A265076

/-! ## A265076.P1646600827702447424

`∑[A000194(∑[A019308(n)])]`
-/

namespace A265076.P1646600827702447424
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019308 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A265076.P1646600827702447424

namespace A265076

/-- `∑[A000194(∑[A019308(n)])]` -/
def P1646600827702447424.Spec : Prop :=
  ∀ n, P1646600827702447424.a n = A265076 n

end A265076

/-!
# A265077: Coordination sequence for (3,6,8) tiling of hyperbolic plane.

The programs for A265077, the canonical program `A265077.P9566099730679701037` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A265077 has offset 0).

The definition of A265077 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A265077.P9566099730679701037

`a(n-1)+a(n-2)+a(n-4)+a(n-5)-a(n-6)` with `a(0)=1, a(1)=3, a(2)=6, a(3)=11, a(4)=20, a(5)=37, a(6)=66`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A265077

/-- `a(n-1)+a(n-2)+a(n-4)+a(n-5)-a(n-6)` -/
def P9566099730679701037.Spec : Prop :=
  ∀ n, P9566099730679701037.a n = A265077 n

theorem P9566099730679701037.correct : P9566099730679701037.Spec := by
  intro n
  simp only [A265077]

end A265077

/-! ## A265077.P3951786273763252823

`A289341(A354785(n+1))`
-/

namespace A265077.P3951786273763252823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289341 (A354785 (n + 1)).toNat

end

end A265077.P3951786273763252823

namespace A265077

/-- `A289341(A354785(n+1))` -/
def P3951786273763252823.Spec : Prop :=
  ∀ n, P3951786273763252823.a n = A265077 n

end A265077

/-! ## A265077.P6785189881850120060

`A289341(3*A018425(n+1))`
-/

namespace A265077.P6785189881850120060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289341 (3 * A018425 (n + 1)).toNat

end

end A265077.P6785189881850120060

namespace A265077

/-- `A289341(3*A018425(n+1))` -/
def P6785189881850120060.Spec : Prop :=
  ∀ n, P6785189881850120060.a n = A265077 n

end A265077

/-! ## A265077.P11518627003282963716

`A289341(3*A029744(n+1))`
-/

namespace A265077.P11518627003282963716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289341 (3 * A029744 (n + 1)).toNat

end

end A265077.P11518627003282963716

namespace A265077

/-- `A289341(3*A029744(n+1))` -/
def P11518627003282963716.Spec : Prop :=
  ∀ n, P11518627003282963716.a n = A265077 n

end A265077

/-! ## A265077.P16094720500042718657

`A001462(A374632(2*n))+n`
-/

namespace A265077.P16094720500042718657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 (A374632 (2 * n)).toNat + (n : ℤ)

end

end A265077.P16094720500042718657

namespace A265077

/-- `A001462(A374632(2*n))+n` -/
def P16094720500042718657.Spec : Prop :=
  ∀ n, P16094720500042718657.a n = A265077 n

end A265077

/-!
# A265078: Partial sums of A072154.

The programs for A265078, the canonical program `A265078.P18444495648062331933` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A265078 has offset 0).

The definition of A265078 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A265078.P18444495648062331933

`2*a(n-1)-a(n-2)+a(n-5)-2*a(n-6)+a(n-7)` with `a(0)=1, a(1)=4, a(2)=9, a(3)=16, a(4)=25, a(5)=37, a(6)=52`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A265078

/-- `2*a(n-1)-a(n-2)+a(n-5)-2*a(n-6)+a(n-7)` -/
def P18444495648062331933.Spec : Prop :=
  ∀ n, P18444495648062331933.a n = A265078 n

theorem P18444495648062331933.correct : P18444495648062331933.Spec := by
  intro n
  simp only [A265078]

end A265078

/-! ## A265078.P14598555881566487900

`ceil(∑[12*n]/5)+1`
-/

namespace A265078.P14598555881566487900
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 5⌉ + 1

end

end A265078.P14598555881566487900

namespace A265078

/-- `ceil(∑[12*n]/5)+1` -/
def P14598555881566487900.Spec : Prop :=
  ∀ n, P14598555881566487900.a n = A265078 n

end A265078

/-! ## A265078.P6354453982181188514

`∑[∑[floor(a(n-5))]]` with `a(0)=1, a(1)=2, a(2)=2, a(3)=2, a(4)=2, a(5)=3, a(6)=3`

`floor` is left out, it is the identity on integers.
-/

namespace A265078.P6354453982181188514
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 2, 2, 2, 3, 3] fun n f2 =>
  f2 (n - 5)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A265078.P6354453982181188514

namespace A265078

/-- `∑[∑[floor(a(n-5))]]` -/
def P6354453982181188514.Spec : Prop :=
  ∀ n, (P6354453982181188514.a n : ℤ) = A265078 n

end A265078

/-! ## A265078.P996974942123201660

`∑[comp[a(n-2)+7]+n]` with `a(0)=0, a(1)=0, a(2)=6, a(3)=8`
-/

namespace A265078.P996974942123201660
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 6, 8] fun n f2 =>
  f2 (n - 2) + 7

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A265078.P996974942123201660

namespace A265078

/-- `∑[comp[a(n-2)+7]+n]` -/
def P996974942123201660.Spec : Prop :=
  ∀ n, (P996974942123201660.a n : ℤ) = A265078 n

end A265078

/-! ## A265078.P7199535544558558082

`ceil(∑[A301730(n)/2])`
-/

namespace A265078.P7199535544558558082
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A301730 n : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ j ∈ Finset.range (n + 1), f1 j⌉

end

end A265078.P7199535544558558082

namespace A265078

/-- `ceil(∑[A301730(n)/2])` -/
def P7199535544558558082.Spec : Prop :=
  ∀ n, P7199535544558558082.a n = A265078 n

end A265078

/-! ## A265078.P13059264700421607450

`∑[comp[∑[A177499(2*(n+1))+1]]+n+1]`
-/

namespace A265078.P13059264700421607450
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177499 (2 * (n + 1)) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n + n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A265078.P13059264700421607450

namespace A265078

/-- `∑[comp[∑[A177499(2*(n+1))+1]]+n+1]` -/
def P13059264700421607450.Spec : Prop :=
  ∀ n, (P13059264700421607450.a n : ℤ) = A265078 n

end A265078

/-! ## A265078.P2279562542612084389

`∑[A047363(n+1)+A028310(n)]`
-/

namespace A265078.P2279562542612084389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047363 (n + 1) + A028310 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A265078.P2279562542612084389

namespace A265078

/-- `∑[A047363(n+1)+A028310(n)]` -/
def P2279562542612084389.Spec : Prop :=
  ∀ n, P2279562542612084389.a n = A265078 n

end A265078

/-! ## A265078.P7104278698515837842

`∑[A008574(n)-A047486(n+1)]`
-/

namespace A265078.P7104278698515837842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n - A047486 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A265078.P7104278698515837842

namespace A265078

/-- `∑[A008574(n)-A047486(n+1)]` -/
def P7104278698515837842.Spec : Prop :=
  ∀ n, P7104278698515837842.a n = A265078 n

end A265078

/-! ## A265078.P174122963213918709

`round((A005897(n)+A016945(n)+2)/5)`
-/

namespace A265078.P174122963213918709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A005897 n + (A016945 n + 2) : ℚ) / 5)

end

end A265078.P174122963213918709

namespace A265078

/-- `round((A005897(n)+A016945(n)+2)/5)` -/
def P174122963213918709.Spec : Prop :=
  ∀ n, P174122963213918709.a n = A265078 n

end A265078

/-! ## A265078.P6161917447484554261

`(A008817(2*n)+A000982(2*n+1))/2`
-/

namespace A265078.P6161917447484554261
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008817 (2 * n) + A000982 (2 * n + 1) : ℚ) / 2

end

end A265078.P6161917447484554261

namespace A265078

/-- `(A008817(2*n)+A000982(2*n+1))/2` -/
def P6161917447484554261.Spec : Prop :=
  ∀ n, P6161917447484554261.a n = (A265078 n : ℚ)

end A265078

/-! ## A265078.P4517035896600687583

`∑[A072154(n)]`
-/

namespace A265078.P4517035896600687583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072154 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A265078.P4517035896600687583

namespace A265078

/-- `∑[A072154(n)]` -/
def P4517035896600687583.Spec : Prop :=
  ∀ n, P4517035896600687583.a n = A265078 n

end A265078

/-! ## A265078.P14890250299091791922

`∑[A250120(3*n)-12*n]`
-/

namespace A265078.P14890250299091791922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 (3 * n) - (12 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A265078.P14890250299091791922

namespace A265078

/-- `∑[A250120(3*n)-12*n]` -/
def P14890250299091791922.Spec : Prop :=
  ∀ n, P14890250299091791922.a n = A265078 n

end A265078

/-! ## A265078.P18419638739068128014

`∑[A314685(n)-2*n]`
-/

namespace A265078.P18419638739068128014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314685 n - (2 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A265078.P18419638739068128014

namespace A265078

/-- `∑[A314685(n)-2*n]` -/
def P18419638739068128014.Spec : Prop :=
  ∀ n, P18419638739068128014.a n = A265078 n

end A265078

/-! ## A265078.P2077978836234315157

`(∑[A315187(n)]+1)/2`
-/

namespace A265078.P2077978836234315157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315187 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j + 1 : ℤ) : ℚ) / 2

end

end A265078.P2077978836234315157

namespace A265078

/-- `(∑[A315187(n)]+1)/2` -/
def P2077978836234315157.Spec : Prop :=
  ∀ n, P2077978836234315157.a n = (A265078 n : ℚ)

end A265078

/-! ## A265078.P15885328112160383108

`∑[A004525(A250120(n))]`
-/

namespace A265078.P15885328112160383108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A250120 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A265078.P15885328112160383108

namespace A265078

/-- `∑[A004525(A250120(n))]` -/
def P15885328112160383108.Spec : Prop :=
  ∀ n, P15885328112160383108.a n = A265078 n

end A265078

/-! ## A265078.P2513625644586317541

`∑[A004525(A315187(n))]`
-/

namespace A265078.P2513625644586317541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A315187 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A265078.P2513625644586317541

namespace A265078

/-- `∑[A004525(A315187(n))]` -/
def P2513625644586317541.Spec : Prop :=
  ∀ n, P2513625644586317541.a n = A265078 n

end A265078

/-! ## A265078.P10873403133604177868

`∑[A004525(A008458(n)-A047263(n+1))]`
-/

namespace A265078.P10873403133604177868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A008458 n - A047263 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A265078.P10873403133604177868

namespace A265078

/-- `∑[A004525(A008458(n)-A047263(n+1))]` -/
def P10873403133604177868.Spec : Prop :=
  ∀ n, P10873403133604177868.a n = A265078 n

end A265078

/-! ## A265078.P16635719582626333851

`∑[A068962(A008458(n))]`
-/

namespace A265078.P16635719582626333851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068962 (A008458 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A265078.P16635719582626333851

namespace A265078

/-- `∑[A068962(A008458(n))]` -/
def P16635719582626333851.Spec : Prop :=
  ∀ n, P16635719582626333851.a n = A265078 n

end A265078

/-! ## A265078.P15712207850337207776

`A060106(∑[n]+1)`
-/

namespace A265078.P15712207850337207776
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060106 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A265078.P15712207850337207776

namespace A265078

/-- `A060106(∑[n]+1)` -/
def P15712207850337207776.Spec : Prop :=
  ∀ n, P15712207850337207776.a n = A265078 n

end A265078

/-! ## A265078.P2521305651311402441

`floor(6*A004767(∑[n])/10)`
-/

namespace A265078.P2521305651311402441
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(6 * A004767 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / 10⌋

end

end A265078.P2521305651311402441

namespace A265078

/-- `floor(6*A004767(∑[n])/10)` -/
def P2521305651311402441.Spec : Prop :=
  ∀ n, P2521305651311402441.a n = A265078 n

end A265078

/-!
# A265080: Array read by antidiagonals, arising from study of remixing keys in public-key cryptography.

The programs for A265080, there is no canonical definition to state claims against.
-/

/-! ## A265080.P18357972466304404509

`A265533(A265512(3*(n+1))+A229079(n))`
-/

namespace A265080.P18357972466304404509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265533 (A265512 (3 * (n + 1)) + A229079 n).toNat

end

end A265080.P18357972466304404509

/-! ## A265080.P10304633134338477095

`(A286335(n)-A025469(A228326(3*n+1)))*A002262(n)`
-/

namespace A265080.P10304633134338477095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A286335 n - A025469 (A228326 (3 * n + 1)).toNat) * A002262 n

end

end A265080.P10304633134338477095

/-! ## A265080.P6113206879261786096

`A007814(A025622(n+1))*A277504(n)`
-/

namespace A265080.P6113206879261786096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A025622 (n + 1)).toNat * A277504 n

end

end A265080.P6113206879261786096

/-! ## A265080.P3711223476792515411

`(A286335(n)-A086016(A000045(n)))*A002262(n)`
-/

namespace A265080.P3711223476792515411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A286335 n - A086016 (A000045 n).toNat) * A002262 n

end

end A265080.P3711223476792515411

/-!
# A265081: Row 4 of array in A265080.

The programs for A265081, the canonical program `A265081.P5445107378262976962` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A265081 has offset 0).

The definition of A265081 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1001 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A265081.P5445107378262976962

`A123865(n+1)+A015246(n)`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A265081

/-- `A123865(n+1)+A015246(n)` -/
def P5445107378262976962.Spec : Prop :=
  ∀ n, P5445107378262976962.a n = A265081 n

theorem P5445107378262976962.correct : P5445107378262976962.Spec := by
  intro n
  simp only [A265081]

end A265081

/-! ## A265081.P10968605255767539034

`A005843(Δ[C((1-n)², 2)]+n+C(n², 2)+n^3)`
-/

namespace A265081.P10968605255767539034
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ((1 - (n : ℤ)) ^ 2).toNat 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + (n : ℤ) + (Nat.choose (n ^ 2) 2 + n ^ 3 : ℤ)).toNat

end

end A265081.P10968605255767539034

namespace A265081

/-- `A005843(Δ[C((1-n)², 2)]+n+C(n², 2)+n^3)` -/
def P10968605255767539034.Spec : Prop :=
  ∀ n, P10968605255767539034.a n = A265081 n

end A265081

/-!
# A265082: Row 5 of array in A265080.

The programs for A265082, there is no canonical definition to state claims against.
-/

/-! ## A265082.P17105764958100251264

`A265080(eq[2, A166301(n)])`
-/

namespace A265082.P17105764958100251264
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166301 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265080 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A265082.P17105764958100251264

/-!
# A265083: Column 3 of array in A265080.

The programs for A265083, there is no canonical definition to state claims against.
-/

/-! ## A265083.P922569893610167881

`A265080(lt[A362013(n+3), A112239(n)])`
-/

namespace A265083.P922569893610167881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362013 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112239 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265080 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A265083.P922569893610167881

/-! ## A265083.P710746278377061844

`A265080(lt[A362013(n+3), A163528(n)])`
-/

namespace A265083.P710746278377061844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362013 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163528 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265080 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A265083.P710746278377061844

/-!
# A265084: Column 4 of array in A265080.

The programs for A265084, there is no canonical definition to state claims against.
-/

/-! ## A265084.P11294231251132761843

`A265080(eq[3, A332954(n)])`
-/

namespace A265084.P11294231251132761843
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332954 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265080 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A265084.P11294231251132761843

/-! ## A265084.P6963914931881598901

`A000351(n)-A063954(A113040(n+1))`
-/

namespace A265084.P6963914931881598901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000351 n - A063954 (A113040 (n + 1)).toNat

end

end A265084.P6963914931881598901

/-!
# A265085: Column 5 of array in A265080.

The programs for A265085, there is no canonical definition to state claims against.
-/

/-! ## A265085.P11390298572682136825

`5*n*A193832(A000364(n))`
-/

namespace A265085.P11390298572682136825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (5 * n : ℤ) * A193832 (A000364 n).toNat

end

end A265085.P11390298572682136825

/-!
# A265086: Number of n X 2 arrays containing 2 copies of 0..n-1 with row sums equal and column sums equal.

The programs for A265086, there is no canonical definition to state claims against.
-/

/-! ## A265086.P11300269298596758179

`(n+1)*(A222855(n+1)-A000079(n))*A090932(n)`
-/

namespace A265086.P11300269298596758179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * ((A222855 (n + 1) - A000079 n) * A090932 n)

end

end A265086.P11300269298596758179

/-! ## A265086.P4219351680970023580

`A265089(∑[n+2])`
-/

namespace A265086.P4219351680970023580
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265089 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A265086.P4219351680970023580

/-! ## A265086.P7420782224939718775

`record[A265089(∑[A152271(n)])]`
-/

namespace A265086.P7420782224939718775
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152271 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265089 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A265086.P7420782224939718775

/-! ## A265086.P14461082238373703822

`record[A265089(∑[A158821(n)])]`
-/

namespace A265086.P14461082238373703822
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158821 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265089 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A265086.P14461082238373703822

/-! ## A265086.P6253269841741851815

`record[A265089(A193739(n)+n)]`
-/

namespace A265086.P6253269841741851815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265089 (A193739 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A265086.P6253269841741851815

/-!
# A265088: Number of n X 4 arrays of permutations of 4 copies of 0..n-1 with row sums equal and column sums equal.

The programs for A265088, there is no canonical definition to state claims against.
-/

/-! ## A265088.P14264525024050525053

`record[A265089(A027379(n))]`
-/

namespace A265088.P14264525024050525053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265089 (A027379 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A265088.P14264525024050525053

/-! ## A265088.P14314260205241103475

`A265089(A141214(n+1))`
-/

namespace A265088.P14314260205241103475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265089 (A141214 (n + 1)).toNat

end

end A265088.P14314260205241103475

/-! ## A265088.P12659798990851434387

`A265089(A027379(n+2))`
-/

namespace A265088.P12659798990851434387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265089 (A027379 (n + 2)).toNat

end

end A265088.P12659798990851434387

/-!
# A265089: T(n,k)=Number of nXk arrays containing k copies of 0..n-1 with row sums equal and column sums equal.

The programs for A265089, there is no canonical definition to state claims against.
-/

/-! ## A265089.P14358603412630990983

`A048766(A127368(n+1)^A052938(n))`
-/

namespace A265089.P14358603412630990983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (SequenceMachineLib.roundAway ((A127368 (n + 1) : ℚ) ^ (A052938 n : ℤ))).toNat

end

end A265089.P14358603412630990983

/-! ## A265089.P9488258615121015270

`A274881(A156914(n)%A367209(n+1))`
-/

namespace A265089.P9488258615121015270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274881 (Int.tmod (A156914 n) (A367209 (n + 1))).toNat

end

end A265089.P9488258615121015270

/-! ## A265089.P5767769778857634253

`A329020(n)%A057820(A022097(n+4))`
-/

namespace A265089.P5767769778857634253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A329020 n) (A057820 (A022097 (n + 4)).toNat)

end

end A265089.P5767769778857634253

/-! ## A265089.P7280772214068084870

`and(A007947(A046860(n+1)), A329020(n))`
-/

namespace A265089.P7280772214068084870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A007947 (A046860 (n + 1)).toNat) (A329020 n)

end

end A265089.P7280772214068084870

/-! ## A265089.P8377267720152052592

`and(A007947(A046860(n+1)), A160870(n+1))`
-/

namespace A265089.P8377267720152052592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A007947 (A046860 (n + 1)).toNat) (A160870 (n + 1))

end

end A265089.P8377267720152052592

/-!
# A265090: Number of 4Xn arrays containing n copies of 0..4-1 with row sums equal and column sums equal.

The programs for A265090, there is no canonical definition to state claims against.
-/

/-! ## A265090.P8877574210722517146

`A265089(∑[n+3]+7)`
-/

namespace A265090.P8877574210722517146
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265089 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A265090.P8877574210722517146

/-! ## A265090.P10886571091497289086

`A265089(A055999(n)+10)%A349324(n+1)`
-/

namespace A265090.P10886571091497289086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A265089 (A055999 n + 10).toNat) (A349324 (n + 1))

end

end A265090.P10886571091497289086

/-! ## A265090.P7310505263916506471

`A265089(A055999(n)+10)/A000041(A027656(n))`
-/

namespace A265090.P7310505263916506471
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A265089 (A055999 n + 10).toNat : ℚ) / (A000041 (A027656 n).toNat : ℚ)

end

end A265090.P7310505263916506471

/-!
# A265091: Number of 5Xn arrays containing n copies of 0..5-1 with row sums equal and column sums equal.

The programs for A265091, there is no canonical definition to state claims against.
-/

/-! ## A265091.P16167209497484788990

`A265089(A167499(n+3))`
-/

namespace A265091.P16167209497484788990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265089 (A167499 (n + 3)).toNat

end

end A265091.P16167209497484788990

/-! ## A265091.P10990919355920962541

`A265089(A155212(n)+13)`
-/

namespace A265091.P10990919355920962541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265089 (A155212 n + 13).toNat

end

end A265091.P10990919355920962541

/-! ## A265091.P10864840442111210136

`A265089(A056000(n)+15)`
-/

namespace A265091.P10864840442111210136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265089 (A056000 n + 15).toNat

end

end A265091.P10864840442111210136

/-!
# A265092: Number of n X n arrays containing n copies of 0..n-1 with row sums equal and column sums equal.

The programs for A265092, there is no canonical definition to state claims against.
-/

/-! ## A265092.P14999295949488918577

`A265089(∑[4*n]+1)`
-/

namespace A265092.P14999295949488918577
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265089 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A265092.P14999295949488918577

/-!
# A265093: a(n) = Sum_{k=0..n} q(k)^2, where q(k) = partition numbers into distinct parts (A000009).

The programs for A265093, there is no canonical definition to state claims against.
-/

/-! ## A265093.P6136224218469603886

`∑[A304990(n)]`
-/

namespace A265093.P6136224218469603886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304990 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A265093.P6136224218469603886

/-! ## A265093.P221457110577185999

`∑[A000009(n)²]`
-/

namespace A265093.P221457110577185999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A265093.P221457110577185999

/-! ## A265093.P4724266866987617931

`∑[A081360(n)²]`
-/

namespace A265093.P4724266866987617931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081360 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A265093.P4724266866987617931

/-! ## A265093.P14627078859123796372

`∑[∑[A087897(n)]²]`
-/

namespace A265093.P14627078859123796372
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087897 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A265093.P14627078859123796372

/-! ## A265093.P7096019700377833275

`∑[(A111133(n)+1)²]`
-/

namespace A265093.P7096019700377833275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A111133 n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A265093.P7096019700377833275

/-! ## A265093.P4642189481660354720

`∑[A035457(2*n)²]`
-/

namespace A265093.P4642189481660354720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035457 (2 * n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A265093.P4642189481660354720

/-! ## A265093.P5528535368752446951

`∑[A172033(2*n)²]`
-/

namespace A265093.P5528535368752446951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172033 (2 * n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A265093.P5528535368752446951

/-! ## A265093.P7533562177038291994

`∑[(A057428(n)+A052839(n))²]`
-/

namespace A265093.P7533562177038291994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A057428 n + A052839 n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A265093.P7533562177038291994

/-! ## A265093.P1609201550234992543

`∑[(A096765(n)+A025147(n))²]`
-/

namespace A265093.P1609201550234992543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A096765 n + A025147 n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A265093.P1609201550234992543

/-! ## A265093.P6152043856976331969

`∑[(A000041(n)-A047967(n))²]`
-/

namespace A265093.P6152043856976331969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000041 n - A047967 n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A265093.P6152043856976331969

/-! ## A265093.P5885024815343487155

`∑[A172033(2*n+1)*A172033(2*n)]`
-/

namespace A265093.P5885024815343487155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172033 (2 * n + 1) * A172033 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A265093.P5885024815343487155

/-! ## A265093.P8721594561633497805

`∑[(A067661(n)+A067659(n))²]`
-/

namespace A265093.P8721594561633497805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A067661 n + A067659 n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A265093.P8721594561633497805

/-! ## A265093.P7086804947951362488

`∑[A264404(A002620(n+1))²]`
-/

namespace A265093.P7086804947951362488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264404 (A002620 (n + 1)).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A265093.P7086804947951362488

/-! ## A265093.P16029285521153310208

`∑[A241701(A001840(n))²]`
-/

namespace A265093.P16029285521153310208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241701 (A001840 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A265093.P16029285521153310208

/-! ## A265093.P13675120738149163721

`∑[A264405(∑[n])²]`
-/

namespace A265093.P13675120738149163721
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264405 (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A265093.P13675120738149163721

/-! ## A265093.P15510670103974214435

`∑[A284593(∑[n])²]`
-/

namespace A265093.P15510670103974214435
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284593 (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A265093.P15510670103974214435

/-! ## A265093.P10876371986936454623

`∑[A360634(∑[n])²]`
-/

namespace A265093.P10876371986936454623
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360634 (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A265093.P10876371986936454623

/-! ## A265093.P10232387169349914742

`∑[A364916(∑[n])²]`
-/

namespace A265093.P10232387169349914742
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364916 (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A265093.P10232387169349914742

/-!
# A265094: a(n) = q(n)^n, where q(n) = partition numbers into distinct parts (A000009).

The programs for A265094, there is no canonical definition to state claims against.
-/

/-! ## A265094.P16528479751147807121

`A000009(n)^n`
-/

namespace A265094.P16528479751147807121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 n ^ n

end

end A265094.P16528479751147807121

/-! ## A265094.P17101158298078581478

`abs(A081360(n)^n)`
-/

namespace A265094.P17101158298078581478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A081360 n ^ n|

end

end A265094.P17101158298078581478

/-! ## A265094.P2459304544187392530

`A054242(∑[n])^n`
-/

namespace A265094.P2459304544187392530
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054242 (∑ j ∈ Finset.range (n + 1), f1 j) ^ n

end

end A265094.P2459304544187392530

/-! ## A265094.P14977828576074088527

`∑[A087897(n)]^n`
-/

namespace A265094.P14977828576074088527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087897 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ n

end

end A265094.P14977828576074088527

/-! ## A265094.P11395644284867439804

`A201377(∑[n])^n`
-/

namespace A265094.P11395644284867439804
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201377 (∑ j ∈ Finset.range (n + 1), f1 j) ^ n

end

end A265094.P11395644284867439804

/-!
# A265095: a(n) = Sum_{k=0..n} q(k)^k, where q(k) = partition numbers into distinct parts (A000009).

The programs for A265095, there is no canonical definition to state claims against.
-/

/-! ## A265095.P16623817864563211010

`∑[A265094(n)]`
-/

namespace A265095.P16623817864563211010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265094 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A265095.P16623817864563211010

/-! ## A265095.P10988516450319396315

`∑[A000009(n)^n]`
-/

namespace A265095.P10988516450319396315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 n ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A265095.P10988516450319396315

/-! ## A265095.P17189955865077649114

`∑[A034148(n)^n]`
-/

namespace A265095.P17189955865077649114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034148 n ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A265095.P17189955865077649114

/-! ## A265095.P15847259131609817359

`∑[A034149(n)^n]`
-/

namespace A265095.P15847259131609817359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034149 n ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A265095.P15847259131609817359

/-! ## A265095.P17605225484988951921

`∑[A034150(n)^n]`
-/

namespace A265095.P17605225484988951921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034150 n ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A265095.P17605225484988951921

/-!
# A265096: a(n) = Sum_{k=0..n} p(k)*q(k), where p(k) = partition numbers (A000041) and q(k) = partition numbers into distinct parts (A000009).

The programs for A265096, there is no canonical definition to state claims against.
-/

/-! ## A265096.P11127877535181394651

`∑[A304991(n)]`
-/

namespace A265096.P11127877535181394651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304991 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A265096.P11127877535181394651

/-! ## A265096.P5416762440359828263

`∑[A000009(n)*A000041(n)]`
-/

namespace A265096.P5416762440359828263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 n * A000041 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A265096.P5416762440359828263

/-! ## A265096.P9547536057995045763

`∑[abs(A000041(n)*A081360(n))]`
-/

namespace A265096.P9547536057995045763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000041 n * A081360 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A265096.P9547536057995045763

/-! ## A265096.P287911105402688956

`∑[∑[A002865(n)]*A000009(n)]`
-/

namespace A265096.P287911105402688956
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) * A000009 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A265096.P287911105402688956

/-! ## A265096.P11050173643750803137

`∑[A000041(n)*∑[A087897(n)]]`
-/

namespace A265096.P11050173643750803137
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087897 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A265096.P11050173643750803137

/-! ## A265096.P13010255864504831003

`∑[(A000065(n)+1)*A000009(n)]`
-/

namespace A265096.P13010255864504831003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000065 n + 1) * A000009 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A265096.P13010255864504831003

/-! ## A265096.P13415874282679165103

`∑[A000009(n)*A035363(2*n)]`
-/

namespace A265096.P13415874282679165103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 n * A035363 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A265096.P13415874282679165103

/-! ## A265096.P726240658315307168

`∑[A000041(n)*A035457(2*n)]`
-/

namespace A265096.P726240658315307168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n * A035457 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A265096.P726240658315307168

/-! ## A265096.P16826080543216037659

`∑[A000009(n)/2*A139582(n)]`
-/

namespace A265096.P16826080543216037659
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000009 n : ℚ) / 2 * (A139582 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A265096.P16826080543216037659

/-! ## A265096.P3966029314762288366

`∑[(A133041(n)-n)*A000009(n)]`
-/

namespace A265096.P3966029314762288366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A133041 n - (n : ℤ)) * A000009 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A265096.P3966029314762288366

/-! ## A265096.P16936521578800867128

`∑[∑[A085811(n+3)]*A000009(n)]`
-/

namespace A265096.P16936521578800867128
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085811 (n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) * A000009 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A265096.P16936521578800867128

/-! ## A265096.P12102754051097421173

`∑[(A047967(n)+A000009(n))*A000009(n)]`
-/

namespace A265096.P12102754051097421173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A047967 n + A000009 n) * A000009 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A265096.P12102754051097421173

/-! ## A265096.P879288921984393746

`∑[(A295341(n)+A000726(n))*A000009(n)]`
-/

namespace A265096.P879288921984393746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A295341 n + A000726 n) * A000009 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A265096.P879288921984393746

/-! ## A265096.P7958752589215251217

`∑[(A000041(n)-A047967(n))*A000041(n)]`
-/

namespace A265096.P7958752589215251217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000041 n - A047967 n) * A000041 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A265096.P7958752589215251217

/-! ## A265096.P7376131563294629899

`∑[A000009(n)/A000070(n)*A143229(n)]`
-/

namespace A265096.P7376131563294629899
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000009 n : ℚ) / (A000070 n : ℚ) * (A143229 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A265096.P7376131563294629899

/-! ## A265096.P3075819095988802272

`∑[(A332281(n)+A332280(n))*A000009(n)]`
-/

namespace A265096.P3075819095988802272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A332281 n + A332280 n) * A000009 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A265096.P3075819095988802272

/-! ## A265096.P18050717575074083262

`∑[(A325833(n)+A325832(n))*A000009(n)]`
-/

namespace A265096.P18050717575074083262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A325833 n + A325832 n) * A000009 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A265096.P18050717575074083262

/-! ## A265096.P17102477929884447711

`∑[(A325834(n)+A325831(n))*A000009(n)]`
-/

namespace A265096.P17102477929884447711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A325834 n + A325831 n) * A000009 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A265096.P17102477929884447711

/-! ## A265096.P11583925486810941960

`∑[(A332284(n)+A332283(n))*A000009(n)]`
-/

namespace A265096.P11583925486810941960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A332284 n + A332283 n) * A000009 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A265096.P11583925486810941960

/-! ## A265096.P11960558593928776817

`∑[A000041(n)*A264405(∑[n])]`
-/

namespace A265096.P11960558593928776817
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n * A264405 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A265096.P11960558593928776817

/-!
# A265097: a(n) = Product_{k=0..n} q(k)^k, where q(k) = partition numbers into distinct parts (A000009).

The programs for A265097, there is no canonical definition to state claims against.
-/

/-! ## A265097.P1292495979953903872

`∏[A265094(n)]`
-/

namespace A265097.P1292495979953903872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265094 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A265097.P1292495979953903872

/-! ## A265097.P13645436061201019157

`∏[A000009(n)^n]`
-/

namespace A265097.P13645436061201019157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 n ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A265097.P13645436061201019157

/-! ## A265097.P6198140929940703863

`∏[A034145(n)^n]`
-/

namespace A265097.P6198140929940703863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034145 n ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A265097.P6198140929940703863

/-! ## A265097.P5567886676847467587

`∏[A034146(n)^n]`
-/

namespace A265097.P5567886676847467587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034146 n ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A265097.P5567886676847467587

