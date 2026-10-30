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
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C036
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C040
import Seq.B000.C041
import Seq.B000.C042
import Seq.B000.C043
import Seq.B000.C044
import Seq.B000.C045
import Seq.B000.C046
import Seq.B000.C050
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C012
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
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
# A033600: Coordination sequence T2 for Zeolite Code CFI.

The programs for A033600, there is no canonical definition to state claims against.
-/

/-! ## A033600.P12932877658109254950

`A008006(n)-A105783(A087421(n))`
-/

namespace A033600.P12932877658109254950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008006 n - A105783 (A087421 n).toNat

end

end A033600.P12932877658109254950

/-!
# A033604: Coordination sequence T1 for Zeolite Code SBE.

The programs for A033604, there is no canonical definition to state claims against.
-/

/-! ## A033604.P1188470525635889305

`∑[record[A125184(A044827(2*n+1))]]`
-/

namespace A033604.P1188470525635889305
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125184 (A044827 (2 * n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033604.P1188470525635889305

/-! ## A033604.P8474920231775614362

`∑[eq[A233296(n+3), A299229(3*n+1)]]`
-/

namespace A033604.P8474920231775614362
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233296 (n + 3)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299229 (3 * n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033604.P8474920231775614362

/-! ## A033604.P6986661795880415087

`A069623(A182260(n+1)+A000580(n+7))`
-/

namespace A033604.P6986661795880415087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069623 (A182260 (n + 1) + A000580 (n + 7)).toNat

end

end A033604.P6986661795880415087

/-!
# A033605: Coordination sequence T2 for Zeolite Code SBE.

The programs for A033605, there is no canonical definition to state claims against.
-/

/-! ## A033605.P1592500491129655004

`∑[∑[A255337(A067975(n))]]`
-/

namespace A033605.P1592500491129655004
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255337 (A067975 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033605.P1592500491129655004

/-! ## A033605.P10931366015737199337

`∑[∑[A001221(A080144(n+1))]]`
-/

namespace A033605.P10931366015737199337
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A080144 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033605.P10931366015737199337

/-! ## A033605.P17111999193888255826

`∑[∑[A297770(A085810(n+1))]]`
-/

namespace A033605.P17111999193888255826
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297770 (A085810 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033605.P17111999193888255826

/-! ## A033605.P17726133251259719829

`∑[∑[A212625(A096111(3*n))]]`
-/

namespace A033605.P17726133251259719829
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212625 (A096111 (3 * n)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033605.P17726133251259719829

/-! ## A033605.P18416990910603633686

`∑[∑[A069010(A075226(n+2))]]`
-/

namespace A033605.P18416990910603633686
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069010 (A075226 (n + 2)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033605.P18416990910603633686

/-!
# A033606: Coordination sequence T3 for Zeolite Code SBE.

The programs for A033606, there is no canonical definition to state claims against.
-/

/-! ## A033606.P12165282897549840104

`∑[∑[A329313(A237349(n+1))]]`
-/

namespace A033606.P12165282897549840104
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329313 (A237349 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033606.P12165282897549840104

/-! ## A033606.P12823079614711569627

`∑[∑[A318513(A007317(n+1)+n+1)+2]-1]`
-/

namespace A033606.P12823079614711569627
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318513 (A007317 (n + 1) + (n + 1 : ℤ)).toNat + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033606.P12823079614711569627

/-! ## A033606.P11144860229271751431

`∑[∑[A134194(A157004(n))]]`
-/

namespace A033606.P11144860229271751431
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134194 (A157004 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033606.P11144860229271751431

/-! ## A033606.P13222730711993505627

`∑[∑[A001227(A046831(n+1))]]`
-/

namespace A033606.P13222730711993505627
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (A046831 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033606.P13222730711993505627

/-! ## A033606.P10788446158357317675

`∑[∑[A106490(A270929(3*n+2))]]`
-/

namespace A033606.P10788446158357317675
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106490 (A270929 (3 * n + 2)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033606.P10788446158357317675

/-!
# A033607: Coordination sequence T4 for Zeolite Code SBE.

The programs for A033607, there is no canonical definition to state claims against.
-/

/-! ## A033607.P12667133815407133171

`A324845(∑[∑[A006928(n+1)]])`
-/

namespace A033607.P12667133815407133171
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006928 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324845 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A033607.P12667133815407133171

/-! ## A033607.P4397142723607979736

`or(A039999(A014143(n)), A138981(n))`
-/

namespace A033607.P4397142723607979736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A039999 (A014143 n).toNat) (A138981 n)

end

end A033607.P4397142723607979736

/-!
# A033608: Coordination sequence T1 for Zeolite Code SBS.

The programs for A033608, there is no canonical definition to state claims against.
-/

/-! ## A033608.P7886852151187318830

`A185284(A033638(n))+A033613(n)`
-/

namespace A033608.P7886852151187318830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 (A033638 n).toNat + A033613 n

end

end A033608.P7886852151187318830

/-! ## A033608.P14161748911847839249

`A354948(A354938(n+5))+A033613(n)`
-/

namespace A033608.P14161748911847839249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354948 (A354938 (n + 5)).toNat + A033613 n

end

end A033608.P14161748911847839249

/-! ## A033608.P552818679992972414

`A033613(n)+A000007(A169970(n))`
-/

namespace A033608.P552818679992972414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033613 n + A000007 (A169970 n).toNat

end

end A033608.P552818679992972414

/-! ## A033608.P15325020728477199163

`A033613(n)+A000038(A237770(n))`
-/

namespace A033608.P15325020728477199163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033613 n + A000038 (A237770 n).toNat

end

end A033608.P15325020728477199163

/-! ## A033608.P2568528238478914061

`A033613(n)^A033630(A000225(n))`
-/

namespace A033608.P2568528238478914061
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033613 n : ℚ) ^ (A033630 (A000225 n).toNat : ℤ)

end

end A033608.P2568528238478914061

/-!
# A033609: Coordination sequence T2 for Zeolite Code SBS.

The programs for A033609, there is no canonical definition to state claims against.
-/

/-! ## A033609.P11207627844209252369

`record[A033614(A106486(n))]`
-/

namespace A033609.P11207627844209252369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033614 (A106486 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A033609.P11207627844209252369

/-! ## A033609.P1172172024980718393

`A033614(and(n, A174944(n+2)))`
-/

namespace A033609.P1172172024980718393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033614 (Int.land (n : ℤ) (A174944 (n + 2))).toNat

end

end A033609.P1172172024980718393

/-! ## A033609.P3673345076598706856

`A033614(n)%Δ[A143702(2*(n+1))]`
-/

namespace A033609.P3673345076598706856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143702 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A033614 n) (f1 (n + 1) - f1 n)

end

end A033609.P3673345076598706856

/-! ## A033609.P3573834224294905690

`A033614(n)+A000007(A001006(n))`
-/

namespace A033609.P3573834224294905690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033614 n + A000007 (A001006 n).toNat

end

end A033609.P3573834224294905690

/-! ## A033609.P10968589241237825477

`A122840(A230797(n))+A033614(n)`
-/

namespace A033609.P10968589241237825477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122840 (A230797 n).toNat + A033614 n

end

end A033609.P10968589241237825477

/-!
# A033610: Coordination sequence T3 for Zeolite Code SBS.

The programs for A033610, there is no canonical definition to state claims against.
-/

/-! ## A033610.P17326316823453448323

`A033612(n)+A010051(A022177(n))`
-/

namespace A033610.P17326316823453448323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033612 n + A010051 (A022177 n).toNat

end

end A033610.P17326316823453448323

/-! ## A033610.P2579810148590060224

`A044941(A000079(n))+A033612(n)`
-/

namespace A033610.P2579810148590060224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044941 (A000079 n).toNat + A033612 n

end

end A033610.P2579810148590060224

/-! ## A033610.P14966840680467922793

`A033612(n)%A075956(n)`
-/

namespace A033610.P14966840680467922793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A033612 n) (A075956 n)

end

end A033610.P14966840680467922793

/-! ## A033610.P13324577987905040722

`A033612(n)+A000007(A188644(n))`
-/

namespace A033610.P13324577987905040722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033612 n + A000007 (A188644 n).toNat

end

end A033610.P13324577987905040722

/-! ## A033610.P6918262626259585025

`A033612(n)+A007814(A299280(n))`
-/

namespace A033610.P6918262626259585025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033612 n + A007814 (A299280 n).toNat

end

end A033610.P6918262626259585025

/-!
# A033611: Coordination sequence T4 for Zeolite Code SBS.

The programs for A033611, there is no canonical definition to state claims against.
-/

/-! ## A033611.P10466191483326825525

`A033615(n)-A070097(A346097(n+1))`
-/

namespace A033611.P10466191483326825525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033615 n - A070097 (A346097 (n + 1)).toNat

end

end A033611.P10466191483326825525

/-! ## A033611.P17524342733408795571

`A056926(A033615(n)²)`
-/

namespace A033611.P17524342733408795571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056926 (A033615 n ^ 2).toNat

end

end A033611.P17524342733408795571

/-! ## A033611.P4071008719483432723

`A033615(n*A287384(n))`
-/

namespace A033611.P4071008719483432723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033615 ((n : ℤ) * A287384 n).toNat

end

end A033611.P4071008719483432723

/-! ## A033611.P11492692602703416711

`∏{e}[A000244(n), A033615(#)]`
-/

namespace A033611.P11492692602703416711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A033615 (Nat.factorization (f1 n).natAbs p)

end

end A033611.P11492692602703416711

/-! ## A033611.P14714534840758508977

`A033615(n)^A036427(n)!`
-/

namespace A033611.P14714534840758508977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033615 n ^ Nat.factorial (A036427 n).toNat

end

end A033611.P14714534840758508977

/-!
# A033612: Coordination sequence T1 for Zeolite Code SBT.

The programs for A033612, there is no canonical definition to state claims against.
-/

/-! ## A033612.P6703635190754649472

`A033610(n)-A010051(A022177(n))`
-/

namespace A033612.P6703635190754649472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033610 n - A010051 (A022177 n).toNat

end

end A033612.P6703635190754649472

/-! ## A033612.P5521869966010596886

`A033610(n)-A044941(A000079(n))`
-/

namespace A033612.P5521869966010596886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033610 n - A044941 (A000079 n).toNat

end

end A033612.P5521869966010596886

/-! ## A033612.P16134963300429660795

`A033610(n)-A011724(A184955(n))`
-/

namespace A033612.P16134963300429660795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033610 n - A011724 (A184955 n).toNat

end

end A033612.P16134963300429660795

/-! ## A033612.P4615463275187623848

`A033610(n)-A059841(A342891(n))`
-/

namespace A033612.P4615463275187623848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033610 n - A059841 (A342891 n).toNat

end

end A033612.P4615463275187623848

/-! ## A033612.P9862020283832256481

`A033610(n)-A010054(A161409(2*n+3))`
-/

namespace A033612.P9862020283832256481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033610 n - A010054 (A161409 (2 * n + 3)).toNat

end

end A033612.P9862020283832256481

/-!
# A033613: Coordination sequence T2 for Zeolite Code SBT.

The programs for A033613, there is no canonical definition to state claims against.
-/

/-! ## A033613.P16676478845980572456

`A033608(n)-A185284(A033638(n))`
-/

namespace A033613.P16676478845980572456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033608 n - A185284 (A033638 n).toNat

end

end A033613.P16676478845980572456

/-! ## A033613.P8563235000875512239

`A033608(n)-A134667(A270929(2*(n+1)))`
-/

namespace A033613.P8563235000875512239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033608 n - A134667 (A270929 (2 * (n + 1))).toNat

end

end A033613.P8563235000875512239

/-!
# A033616: Coordination sequence T1 for Zeolite Code TSC.

The programs for A033616, there is no canonical definition to state claims against.
-/

/-! ## A033616.P3381732987385043809

`∑[lt[A324665(2*(n+2)), A324666(n+4)]]`
-/

namespace A033616.P3381732987385043809
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324665 (2 * (n + 2))

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324666 (n + 4)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033616.P3381732987385043809

/-! ## A033616.P11159260684710796719

`∑[∑[A358134(A063886(n))]]`
-/

namespace A033616.P11159260684710796719
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358134 (A063886 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033616.P11159260684710796719

/-! ## A033616.P2971593096337859997

`∑[∑[A139094(A319303(n))]]`
-/

namespace A033616.P2971593096337859997
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139094 (A319303 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033616.P2971593096337859997

/-! ## A033616.P12039476302993169806

`∑[∑[A064547(A083845(n+1))]]`
-/

namespace A033616.P12039476302993169806
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064547 (A083845 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033616.P12039476302993169806

/-! ## A033616.P1895023348258594439

`∑[A103298(∑[A113960(n+1)])]`
-/

namespace A033616.P1895023348258594439
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113960 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103298 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033616.P1895023348258594439

/-!
# A033617: Coordination sequence T2 for Zeolite Code TSC.

The programs for A033617, there is no canonical definition to state claims against.
-/

/-! ## A033617.P10157518968615787816

`∑[∑[A257993(A149841(n))]]`
-/

namespace A033617.P10157518968615787816
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257993 (A149841 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033617.P10157518968615787816

/-! ## A033617.P16832230277735375457

`∑[∑[A050205(A083844(n+1))]]`
-/

namespace A033617.P16832230277735375457
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050205 (A083844 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033617.P16832230277735375457

/-! ## A033617.P16244415130724181992

`∑[∑[A001222(A116841(n+2))]]`
-/

namespace A033617.P16244415130724181992
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A116841 (n + 2)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033617.P16244415130724181992

/-! ## A033617.P2135983833152399232

`∑[∑[A001222(A243902(n+2))]]`
-/

namespace A033617.P2135983833152399232
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A243902 (n + 2)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033617.P2135983833152399232

/-! ## A033617.P6174860066287004273

`∑[∑[A055092(n)%A108776(n)]]`
-/

namespace A033617.P6174860066287004273
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A055092 n) (A108776 n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033617.P6174860066287004273

/-!
# A033618: Number of ways n-th repdigit number, A010785(n), can be expressed as a polygonal number.

The programs for A033618, there is no canonical definition to state claims against.
-/

/-! ## A033618.P13804853254944452778

`A115568(A057977(n))+A001055(2*n+1)`
-/

namespace A033618.P13804853254944452778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115568 (A057977 n).toNat + A001055 (2 * n + 1)

end

end A033618.P13804853254944452778

/-! ## A033618.P12090953102964680670

`A083499(A334320(n)+A224254(n+1))`
-/

namespace A033618.P12090953102964680670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083499 (A334320 n + A224254 (n + 1)).toNat

end

end A033618.P12090953102964680670

/-! ## A033618.P2145249563982365649

`A126688(A175406(n+1)^A025429(n+4))`
-/

namespace A033618.P2145249563982365649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126688 (SequenceMachineLib.roundAway ((A175406 (n + 1) : ℚ) ^ (A025429 (n + 4) : ℤ))).toNat

end

end A033618.P2145249563982365649

/-! ## A033618.P8477955076693605556

`A001055(2*n+1)+A000688(A214282(n+1))`
-/

namespace A033618.P8477955076693605556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001055 (2 * n + 1) + A000688 (A214282 (n + 1)).toNat

end

end A033618.P8477955076693605556

/-! ## A033618.P9969715124987394921

`A105778(A106150(n))+1`
-/

namespace A033618.P9969715124987394921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105778 (A106150 n).toNat + 1

end

end A033618.P9969715124987394921

/-!
# A033619: Undulating numbers (of form abababab... in base 10).

The programs for A033619, the canonical program `A033619.P1872960733624961267` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A033619 has offset 1).

The definition of A033619 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A033619.P13267668641061603967

`record[A292579(n)+A070565(A347689(n))]`
-/

namespace A033619.P13267668641061603967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292579 n + A070565 (A347689 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A033619.P13267668641061603967

namespace A033619

/-- `record[A292579(n)+A070565(A347689(n))]` -/
def P13267668641061603967.Spec : Prop :=
  ∀ n, P13267668641061603967.a n = A033619 (n + 1)

end A033619

/-! ## A033619.P11459896521589373815

`record[n-A066568(A347689(n))]`
-/

namespace A033619.P11459896521589373815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A066568 (A347689 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A033619.P11459896521589373815

namespace A033619

/-- `record[n-A066568(A347689(n))]` -/
def P11459896521589373815.Spec : Prop :=
  ∀ n, P11459896521589373815.a n = A033619 (n + 1)

end A033619

/-! ## A033619.P2414459029093887985

`or(n, and(A130734(n+1), A163351(n)))`
-/

namespace A033619.P2414459029093887985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (Int.land (A130734 (n + 1)) (A163351 n))

end

end A033619.P2414459029093887985

namespace A033619

/-- `or(n, and(A130734(n+1), A163351(n)))` -/
def P2414459029093887985.Spec : Prop :=
  ∀ n, P2414459029093887985.a n = A033619 (n + 1)

end A033619

/-! ## A033619.P17125321621069864590

`A017887(n)*A033665(A196222(n))+n`
-/

namespace A033619.P17125321621069864590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017887 n * A033665 (A196222 n).toNat + (n : ℤ)

end

end A033619.P17125321621069864590

namespace A033619

/-- `A017887(n)*A033665(A196222(n))+n` -/
def P17125321621069864590.Spec : Prop :=
  ∀ n, P17125321621069864590.a n = A033619 (n + 1)

end A033619

/-! ## A033619.P2620943468185087325

`or(n, A118759(n)%4)`
-/

namespace A033619.P2620943468185087325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (Int.tmod (A118759 n) 4)

end

end A033619.P2620943468185087325

namespace A033619

/-- `or(n, A118759(n)%4)` -/
def P2620943468185087325.Spec : Prop :=
  ∀ n, P2620943468185087325.a n = A033619 (n + 1)

end A033619

/-! ## A033619.P1872960733624961267

`A000196(n²)+char[10*(n+10)]`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A033619

/-- `A000196(n²)+char[10*(n+10)]` -/
def P1872960733624961267.Spec : Prop :=
  ∀ n, P1872960733624961267.a n = A033619 (n + 1)

theorem P1872960733624961267.correct : P1872960733624961267.Spec := by
  intro n
  simp only [A033619, Nat.add_sub_cancel]

end A033619

/-!
# A033620: Numbers all of whose prime factors are palindromes.

The programs for A033620, there is no canonical definition to state claims against.
-/

/-! ## A033620.P15697248740067212347

`∪[A046349(n+1), A062687(n+1)]`
-/

namespace A033620.P15697248740067212347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046349 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062687 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A033620.P15697248740067212347

/-! ## A033620.P15548991750727333471

`record[A117358(A046349(n+1))]`
-/

namespace A033620.P15548991750727333471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117358 (A046349 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A033620.P15548991750727333471

/-! ## A033620.P13220501433499060272

`lcm(A033999(A167614(n+5)), A376858(n+1))`
-/

namespace A033620.P13220501433499060272
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 (A167614 (n + 5)).toNat) (A376858 (n + 1))

end

end A033620.P13220501433499060272

/-! ## A033620.P9261242328802673890

`A376858(n+1)+A091225(A366616(2*(n+2)))`
-/

namespace A033620.P9261242328802673890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376858 (n + 1) + A091225 (A366616 (2 * (n + 2))).toNat

end

end A033620.P9261242328802673890

/-! ## A033620.P18189545021423277955

`A376858(n+1)+A051516(A065381(n+1))`
-/

namespace A033620.P18189545021423277955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376858 (n + 1) + A051516 (A065381 (n + 1)).toNat

end

end A033620.P18189545021423277955

/-! ## A033620.P10228516410325131211

`and(A376858(n+1), A381707(n+1))`
-/

namespace A033620.P10228516410325131211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A376858 (n + 1)) (A381707 (n + 1))

end

end A033620.P10228516410325131211

/-! ## A033620.P5684359485030092758

`eq[A232655(A071786(n+1)), A232655(n+1)]+1`
-/

namespace A033620.P5684359485030092758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232655 (A071786 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232655 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A033620.P5684359485030092758

/-! ## A033620.P4211777859797574549

`eq[A258554(A071786(n+1)), A258554(n+1)]+1`
-/

namespace A033620.P4211777859797574549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258554 (A071786 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258554 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A033620.P4211777859797574549

/-! ## A033620.P115288761509376339

`A376858(n+1)%A107505(A000124(n))`
-/

namespace A033620.P115288761509376339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A376858 (n + 1)) (A107505 (A000124 n).toNat)

end

end A033620.P115288761509376339

/-! ## A033620.P8905269238862762348

`A376858(n+1)+A000122(A088179(2*(n+1)))`
-/

namespace A033620.P8905269238862762348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376858 (n + 1) + A000122 (A088179 (2 * (n + 1))).toNat

end

end A033620.P8905269238862762348

/-! ## A033620.P9900916605899708951

`eq[A232446(A071786(n+1)), A232446(n+1)]+1`
-/

namespace A033620.P9900916605899708951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232446 (A071786 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232446 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A033620.P9900916605899708951

/-! ## A033620.P10947938717682016649

`and(A086827(n+1), A376858(n+1))`
-/

namespace A033620.P10947938717682016649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A086827 (n + 1)) (A376858 (n + 1))

end

end A033620.P10947938717682016649

/-!
# A033621: Numbers k such that k-1 is a palindrome in base 10, and k+1 is a palindrome in base 17.

The programs for A033621, there is no canonical definition to state claims against.
-/

/-! ## A033621.P7869452086094471474

`eq[n, A366198(n+1)]+1`
-/

namespace A033621.P7869452086094471474
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366198 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A033621.P7869452086094471474

/-! ## A033621.P17326251263590068461

`∑[A330950((2^∑{digits}[n, #%C(n, #)])²)]`
-/

namespace A033621.P17326251263590068461
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330950 ((2 ^ ((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => x % Nat.choose n x).sum) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033621.P17326251263590068461

/-! ## A033621.P6042457838238504731

`A096503(lcm(n, a(n-1)-n)+1+n)` with `a(0)=1`
-/

namespace A033621.P6042457838238504731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A096503 (Int.lcm (n : ℤ) (a (n - 1) - (n : ℤ)) + 1 + n)

end

end A033621.P6042457838238504731

/-! ## A033621.P12160971541083374529

`∑[A018636(A212389(n))]`
-/

namespace A033621.P12160971541083374529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018636 (A212389 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033621.P12160971541083374529

/-! ## A033621.P3431790396856514680

`∑[A000041(A309864(n))]`
-/

namespace A033621.P3431790396856514680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (A309864 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033621.P3431790396856514680

/-!
# A033622: Good sequence of increments for Shell sort (best on big values).

The programs for A033622, the canonical program `A033622.P8468115569823409156` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A033622 has offset 0).

The definition of A033622 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A033622.P2100695508965312595

`(9-n%2)*2^n-(9-3*n%2)*2^ceil(n/2)+1`
-/

namespace A033622.P2100695508965312595
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((9 - ((n % 2 : ℕ) : ℤ)) * (2 ^ n : ℤ) : ℚ) - (9 - ((3 * (n % 2) : ℕ) : ℤ) : ℚ) * (2 : ℚ) ^ (⌈(n : ℚ) / 2⌉ : ℤ) + 1

end

end A033622.P2100695508965312595

namespace A033622

/-- `(9-n%2)*2^n-(9-3*n%2)*2^ceil(n/2)+1` -/
def P2100695508965312595.Spec : Prop :=
  ∀ n, P2100695508965312595.a n = (A033622 n : ℚ)

end A033622

/-! ## A033622.P18119171317462950

`ogf((1+4x+8x^2-2x^3-8x^4)/(1-x-6x^2+6x^3+8x^4-8x^5))`
-/

namespace A033622.P18119171317462950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 4, 8, -2, -8] [1, -1, -6, 6, 8, -8] n

end

end A033622.P18119171317462950

namespace A033622

/-- `ogf((1+4x+8x^2-2x^3-8x^4)/(1-x-6x^2+6x^3+8x^4-8x^5))` -/
def P18119171317462950.Spec : Prop :=
  ∀ n, P18119171317462950.a n = A033622 n

end A033622

/-! ## A033622.P8468115569823409156

`a(n-1)+6*a(n-2)-6*a(n-3)-8*a(n-4)+8*a(n-5)` with `a(0)=1, a(1)=5, a(2)=19, a(3)=41, a(4)=109`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A033622

/-- `a(n-1)+6*a(n-2)-6*a(n-3)-8*a(n-4)+8*a(n-5)` -/
def P8468115569823409156.Spec : Prop :=
  ∀ n, P8468115569823409156.a n = A033622 n

theorem P8468115569823409156.correct : P8468115569823409156.Spec := by
  intro n
  simp only [A033622]

end A033622

/-! ## A033622.P12395913585330280388

`A354788(n)+A027383(n)²`
-/

namespace A033622.P12395913585330280388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354788 n + A027383 n ^ 2

end

end A033622.P12395913585330280388

namespace A033622

/-- `A354788(n)+A027383(n)²` -/
def P12395913585330280388.Spec : Prop :=
  ∀ n, P12395913585330280388.a n = A033622 n

end A033622

/-! ## A033622.P3384072628837273872

`A052955(n+1)²-A063759(n+1)`
-/

namespace A033622.P3384072628837273872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052955 (n + 1) ^ 2 - A063759 (n + 1)

end

end A033622.P3384072628837273872

namespace A033622

/-- `A052955(n+1)²-A063759(n+1)` -/
def P3384072628837273872.Spec : Prop :=
  ∀ n, P3384072628837273872.a n = A033622 n

end A033622

/-! ## A033622.P7943166607036110595

`(A027383(n)+1)²-A163978(n+1)`
-/

namespace A033622.P7943166607036110595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A027383 n + 1) ^ 2 - A163978 (n + 1)

end

end A033622.P7943166607036110595

namespace A033622

/-- `(A027383(n)+1)²-A163978(n+1)` -/
def P7943166607036110595.Spec : Prop :=
  ∀ n, P7943166607036110595.a n = A033622 n

end A033622

/-! ## A033622.P14636615885290275482

`A052955(n+1)²-A164090(n+2)`
-/

namespace A033622.P14636615885290275482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052955 (n + 1) ^ 2 - A164090 (n + 2)

end

end A033622.P14636615885290275482

namespace A033622

/-- `A052955(n+1)²-A164090(n+2)` -/
def P14636615885290275482.Spec : Prop :=
  ∀ n, P14636615885290275482.a n = A033622 n

end A033622

/-! ## A033622.P14030696882598005138

`∑[A131572(n)]*A163978(n+1)+1`
-/

namespace A033622.P14030696882598005138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131572 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A163978 (n + 1) + 1

end

end A033622.P14030696882598005138

namespace A033622

/-- `∑[A131572(n)]*A163978(n+1)+1` -/
def P14030696882598005138.Spec : Prop :=
  ∀ n, P14030696882598005138.a n = A033622 n

end A033622

/-! ## A033622.P7970561738256089762

`∑[A016116(n)]*A052955(n+1)-1`
-/

namespace A033622.P7970561738256089762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A052955 (n + 1) - 1

end

end A033622.P7970561738256089762

namespace A033622

/-- `∑[A016116(n)]*A052955(n+1)-1` -/
def P7970561738256089762.Spec : Prop :=
  ∀ n, P7970561738256089762.a n = A033622 n

end A033622

/-! ## A033622.P10954302199596743694

`A395109(n+1)+A395109(n)-A000051(n+1)`
-/

namespace A033622.P10954302199596743694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395109 (n + 1) + (A395109 n - A000051 (n + 1))

end

end A033622.P10954302199596743694

namespace A033622

/-- `A395109(n+1)+A395109(n)-A000051(n+1)` -/
def P10954302199596743694.Spec : Prop :=
  ∀ n, P10954302199596743694.a n = A033622 n

end A033622

/-! ## A033622.P8552026105668484745

`A027383(n)*A063759(n+1)-A052955(n+1)`
-/

namespace A033622.P8552026105668484745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027383 n * A063759 (n + 1) - A052955 (n + 1)

end

end A033622.P8552026105668484745

namespace A033622

/-- `A027383(n)*A063759(n+1)-A052955(n+1)` -/
def P8552026105668484745.Spec : Prop :=
  ∀ n, P8552026105668484745.a n = A033622 n

end A033622

/-! ## A033622.P6592328433662707947

`A027383(n)*A163978(n+1)-A052955(n+1)`
-/

namespace A033622.P6592328433662707947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027383 n * A163978 (n + 1) - A052955 (n + 1)

end

end A033622.P6592328433662707947

namespace A033622

/-- `A027383(n)*A163978(n+1)-A052955(n+1)` -/
def P6592328433662707947.Spec : Prop :=
  ∀ n, P6592328433662707947.a n = A033622 n

end A033622

/-! ## A033622.P2417128458681252886

`A027383(n)*A164090(n+2)-A052955(n+1)`
-/

namespace A033622.P2417128458681252886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027383 n * A164090 (n + 2) - A052955 (n + 1)

end

end A033622.P2417128458681252886

namespace A033622

/-- `A027383(n)*A164090(n+2)-A052955(n+1)` -/
def P2417128458681252886.Spec : Prop :=
  ∀ n, P2417128458681252886.a n = A033622 n

end A033622

/-!
# A033623: Grundy function for turn-at-most-4-coins game.

The programs for A033623, there is no canonical definition to state claims against.
-/

/-! ## A033623.P4331227656861366298

`floor(A054016(n+2)/2)`
-/

namespace A033623.P4331227656861366298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A054016 (n + 2) : ℚ) / 2⌋

end

end A033623.P4331227656861366298

/-! ## A033623.P10981014226430801258

`ceil((A033999(2*n)*A054016(n+2)-1)/2)`
-/

namespace A033623.P10981014226430801258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A033999 (2 * n) * A054016 (n + 2) - 1 : ℚ) / 2⌉

end

end A033623.P10981014226430801258

/-! ## A033623.P6898493227789992386

`ceil((A057428(A001316(n))+A054016(n+2))/2)`
-/

namespace A033623.P6898493227789992386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A057428 (A001316 n).toNat + A054016 (n + 2) : ℚ) / 2⌉

end

end A033623.P6898493227789992386

/-! ## A033623.P11407013507914015550

`ceil((A054016(n+2)-1)/A000005(A118359(n+1)))`
-/

namespace A033623.P11407013507914015550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A054016 (n + 2) - 1 : ℚ) / (A000005 (A118359 (n + 1)).toNat : ℚ)⌉

end

end A033623.P11407013507914015550

/-! ## A033623.P3961277287602424329

`round((A033999(2*A285808(n+1))*A054016(n+2)-1)/2)`
-/

namespace A033623.P3961277287602424329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A033999 (2 * A285808 (n + 1)).toNat * A054016 (n + 2) - 1 : ℚ) / 2)

end

end A033623.P3961277287602424329

/-! ## A033623.P546240327823518280

`∪[A000079(n), A075933(n)]`
-/

namespace A033623.P546240327823518280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075933 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A033623.P546240327823518280

/-! ## A033623.P3778678316473650242

`∪[A075933(n), A247208(n+1)]`
-/

namespace A033623.P3778678316473650242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075933 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247208 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A033623.P3778678316473650242

/-! ## A033623.P13758810764322176434

`A004526(A054016(n+2))`
-/

namespace A033623.P13758810764322176434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A054016 (n + 2)).toNat

end

end A033623.P13758810764322176434

/-! ## A033623.P2260812019971989567

`A065033(A054016(n+2)-1)`
-/

namespace A033623.P2260812019971989567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A054016 (n + 2) - 1).toNat

end

end A033623.P2260812019971989567

/-! ## A033623.P13478795767522390216

`A008619(A054016(n+2)-2)`
-/

namespace A033623.P13478795767522390216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A054016 (n + 2) - 2).toNat

end

end A033623.P13478795767522390216

/-!
# A033627: 0-additive sequence: not the sum of any previous pair.

The programs for A033627, the canonical program `A033627.P2311132704957428460` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A033627 has offset 1).

The definition of A033627 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A033627.P2311132704957428460

`ogf((1+x^2+x^3)/(1-2x+x^2))`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A033627

/-- `ogf((1+x^2+x^3)/(1-2x+x^2))` -/
def P2311132704957428460.Spec : Prop :=
  ∀ n, P2311132704957428460.a n = A033627 (n + 1)

theorem P2311132704957428460.correct : P2311132704957428460.Spec := by
  intro n
  simp only [A033627, Nat.add_sub_cancel]

end A033627

/-!
# A033628: Numbers that are in both the 1-additive and 0-additive sequences (A002858 and A033627).

The programs for A033628, there is no canonical definition to state claims against.
-/

/-! ## A033628.P9944783009988947539

`∩[A002858(n+1), A033627(n+1)]`
-/

namespace A033628.P9944783009988947539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002858 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033627 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033628.P9944783009988947539

/-! ## A033628.P748394200780369952

`∩[A033627(n+1), A072832(n)+a(n-1)]` with `a(0)=1`
-/

namespace A033628.P748394200780369952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033627 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  A072832 n + f2 (n - 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033628.P748394200780369952

/-! ## A033628.P4409602674835970901

`∩[a(n-1)+3, A110654(A048951(n+1)-1)]` with `a(0)=0, a(1)=1, a(2)=2, a(3)=4`
-/

namespace A033628.P4409602674835970901
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 2, 4] fun n f1 =>
  f1 (n - 1) + 3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A048951 (n + 1) - 1).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033628.P4409602674835970901

/-!
# A033629: Numbers that are not the sum of two distinct Ulam numbers.

The programs for A033629, there is no canonical definition to state claims against.
-/

/-! ## A033629.P6203797901359462437

`A286309(n)+a(n-1)` with `a(0)=23`
-/

namespace A033629.P6203797901359462437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [23] fun n a =>
  A286309 n + a (n - 1)

end

end A033629.P6203797901359462437

/-! ## A033629.P4146744747036141339

`∑[A286309(n)%A304726(a(n-1))]` with `a(0)=23`
-/

namespace A033629.P4146744747036141339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [23] fun n f1 =>
  Int.tmod (A286309 n) (A304726 (f1 (n - 1)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033629.P4146744747036141339

/-! ## A033629.P12070532249129267178

`∑[A286309(n+1)]+23-A286309(n+1)`
-/

namespace A033629.P12070532249129267178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286309 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (23 - A286309 (n + 1))

end

end A033629.P12070532249129267178

/-! ## A033629.P4259157971850885001

`eq[C(2, n), A080573(A028310(n))]`
-/

namespace A033629.P4259157971850885001
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080573 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A033629.P4259157971850885001

/-! ## A033629.P7004486556911723343

`lt[A080573(n+1), A080573(A002858(n+1))]+1`
-/

namespace A033629.P7004486556911723343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080573 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080573 (A002858 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A033629.P7004486556911723343

/-!
# A033630: Number of partitions of n into distinct divisors of n.

The programs for A033630, there is no canonical definition to state claims against.
-/

/-! ## A033630.P3088751330881815866

`A065205(A028310(n))+1`
-/

namespace A033630.P3088751330881815866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065205 (A028310 n).toNat + 1

end

end A033630.P3088751330881815866

/-! ## A033630.P7013103912390694447

`A065205(A000007(n)+n)+1`
-/

namespace A033630.P7013103912390694447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065205 (A000007 n + (n : ℤ)).toNat + 1

end

end A033630.P7013103912390694447

/-! ## A033630.P13688622572437503919

`A065205(A000038(n)+n)+1`
-/

namespace A033630.P13688622572437503919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065205 (A000038 n + (n : ℤ)).toNat + 1

end

end A033630.P13688622572437503919

/-! ## A033630.P14070488961137112140

`A065205(n)+a(A080791(A080791(n)))` with `a(0)=1`
-/

namespace A033630.P14070488961137112140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A065205 n + a (A080791 (A080791 n).toNat).toNat

end

end A033630.P14070488961137112140

/-! ## A033630.P18241066155581419144

`A065205(n)+a(A065205(A005100(n)))` with `a(0)=1`
-/

namespace A033630.P18241066155581419144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A065205 n + a (A065205 (A005100 n).toNat).toNat

end

end A033630.P18241066155581419144

/-! ## A033630.P15709281379657759984

`A065205(A060000(n+1))+1`
-/

namespace A033630.P15709281379657759984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065205 (A060000 (n + 1)).toNat + 1

end

end A033630.P15709281379657759984

/-! ## A033630.P13852907232067037934

`A211111(A004926(n))`
-/

namespace A033630.P13852907232067037934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211111 (A004926 n).toNat

end

end A033630.P13852907232067037934

/-! ## A033630.P16241655358482337484

`A211111(A004946(n))`
-/

namespace A033630.P16241655358482337484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211111 (A004946 n).toNat

end

end A033630.P16241655358482337484

/-!
# A033631: Numbers k such that sigma(phi(k)) = sigma(k) where sigma is the sum of divisors function A000203 and phi is the Euler totient function A000010.

The programs for A033631, there is no canonical definition to state claims against.
-/

/-! ## A033631.P17357586268568464418

`∩[A066831(n+1), A172466(n+1)]`
-/

namespace A033631.P17357586268568464418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066831 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172466 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033631.P17357586268568464418

/-! ## A033631.P1806249774845293462

`∩[A066831(n+1), A190503(n+1)]`
-/

namespace A033631.P1806249774845293462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066831 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190503 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033631.P1806249774845293462

/-! ## A033631.P17015575293441810554

`∩[A172466(n+1), A190503(n+1)]`
-/

namespace A033631.P17015575293441810554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172466 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190503 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033631.P17015575293441810554

/-!
# A033632: Numbers k such that sigma(phi(k)) = phi(sigma(k)).

The programs for A033632, there is no canonical definition to state claims against.
-/

/-! ## A033632.P6963161448225185683

`A092584(ceil(atan(n))+n+1)`
-/

namespace A033632.P6963161448225185683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092584 (⌈Real.arctan (n : ℝ)⌉ + (n + 1 : ℤ)).toNat

end

end A033632.P6963161448225185683

/-! ## A033632.P6039135129532958522

`A092584(n+3-C(2, n+1))`
-/

namespace A033632.P6039135129532958522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092584 (n + 3 - Nat.choose 2 (n + 1))

end

end A033632.P6039135129532958522

/-! ## A033632.P8274213136264329041

`A092584(Δ[n²]-floor(n-atan(n)))`
-/

namespace A033632.P8274213136264329041
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092584 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - ⌊(n : ℝ) - Real.arctan (n : ℝ)⌋).toNat

end

end A033632.P8274213136264329041

/-! ## A033632.P7719246027182140862

`A092584(2*n+3-round(acot(n)+n))`
-/

namespace A033632.P7719246027182140862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092584 ((2 * n + 3 : ℤ) - SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat

end

end A033632.P7719246027182140862

/-! ## A033632.P11118062671506237187

`A092584(A130130(n)+1+n)`
-/

namespace A033632.P11118062671506237187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092584 (A130130 n + 1 + (n : ℤ)).toNat

end

end A033632.P11118062671506237187

/-! ## A033632.P10098624823823217089

`∩[A073858(n+1), A092584(n+1)]`
-/

namespace A033632.P10098624823823217089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073858 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092584 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033632.P10098624823823217089

/-! ## A033632.P17949925825206553488

`∩[A066930(n+1), A073858(n+1)]`
-/

namespace A033632.P17949925825206553488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066930 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073858 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033632.P17949925825206553488

/-! ## A033632.P4954079194013990906

`∩[A066930(n+1), A092584(n+1)]`
-/

namespace A033632.P4954079194013990906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066930 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092584 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033632.P4954079194013990906

/-!
# A033633: a(n) = n-th prime modulo 19.

The programs for A033633, the canonical program `A033633.P16631947785481772110` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A033633 has offset 1).

The definition of A033633 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A033633.P16631947785481772110

`A000040(n+1)%19`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A033633

/-- `A000040(n+1)%19` -/
def P16631947785481772110.Spec : Prop :=
  ∀ n, P16631947785481772110.a n = A033633 (n + 1)

theorem P16631947785481772110.correct : P16631947785481772110.Spec := by
  intro n
  simp only [A033633, Nat.add_sub_cancel]

end A033633

/-! ## A033633.P3541753527239471701

`sqrt(A001248(n+1))%19`
-/

namespace A033633.P3541753527239471701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (Real.sqrt (A001248 (n + 1) : ℝ))) 19

end

end A033633.P3541753527239471701

namespace A033633

/-- `sqrt(A001248(n+1))%19` -/
def P3541753527239471701.Spec : Prop :=
  ∀ n, P3541753527239471701.a n = A033633 (n + 1)

end A033633

/-! ## A033633.P6288711798031294096

`(A006093(n+1)+1)%19`
-/

namespace A033633.P6288711798031294096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006093 (n + 1) + 1) 19

end

end A033633.P6288711798031294096

namespace A033633

/-- `(A006093(n+1)+1)%19` -/
def P6288711798031294096.Spec : Prop :=
  ∀ n, P6288711798031294096.a n = A033633 (n + 1)

theorem P6288711798031294096.correct : P6288711798031294096.Spec := by
  intro n
  simp only [A033633, Nat.add_sub_cancel, A033633.P6288711798031294096.a, A033633.P16631947785481772110.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A006093, A006093.P2906174024863549003.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A033633

/-! ## A033633.P14859517897398649758

`(A014692(n+1)+n)%19`
-/

namespace A033633.P14859517897398649758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A014692 (n + 1) + (n : ℤ)) 19

end

end A033633.P14859517897398649758

namespace A033633

/-- `(A014692(n+1)+n)%19` -/
def P14859517897398649758.Spec : Prop :=
  ∀ n, P14859517897398649758.a n = A033633 (n + 1)

theorem P14859517897398649758.correct : P14859517897398649758.Spec := by
  intro n
  simp only [A033633, Nat.add_sub_cancel, A033633.P14859517897398649758.a, A033633.P16631947785481772110.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A014692, A014692.P2004927767556050134.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A033633

/-! ## A033633.P11747357451888109537

`(A040976(n+1)+2)%A027848(A020639(2*(n+1)))`
-/

namespace A033633.P11747357451888109537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A040976 (n + 1) + 2) (A027848 (A020639 (2 * (n + 1))).toNat)

end

end A033633.P11747357451888109537

namespace A033633

/-- `(A040976(n+1)+2)%A027848(A020639(2*(n+1)))` -/
def P11747357451888109537.Spec : Prop :=
  ∀ n, P11747357451888109537.a n = A033633 (n + 1)

end A033633

/-! ## A033633.P17671895746299245786

`record[A020639(n+2)]%19`
-/

namespace A033633.P17671895746299245786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) 19

end

end A033633.P17671895746299245786

namespace A033633

/-- `record[A020639(n+2)]%19` -/
def P17671895746299245786.Spec : Prop :=
  ∀ n, P17671895746299245786.a n = A033633 (n + 1)

end A033633

/-! ## A033633.P2687596728023106013

`record[A000010(n+1)+1]%19`
-/

namespace A033633.P2687596728023106013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) 19

end

end A033633.P2687596728023106013

namespace A033633

/-- `record[A000010(n+1)+1]%19` -/
def P2687596728023106013.Spec : Prop :=
  ∀ n, P2687596728023106013.a n = A033633 (n + 1)

end A033633

/-! ## A033633.P15265389400072428413

`record[A051698(n)]%19`
-/

namespace A033633.P15265389400072428413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051698 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) 19

end

end A033633.P15265389400072428413

namespace A033633

/-- `record[A051698(n)]%19` -/
def P15265389400072428413.Spec : Prop :=
  ∀ n, P15265389400072428413.a n = A033633 (n + 1)

end A033633

/-!
# A033634: OddPowerSigma(n) = sum of odd power divisors of n.

The programs for A033634, the canonical program `A033634.P7485427623378639722` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A033634 has offset 1).

The definition of A033634 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A033634.P7485427623378639722

`∑{d}[n+1, A295316(#)*#]`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A033634

/-- `∑{d}[n+1, A295316(#)*#]` -/
def P7485427623378639722.Spec : Prop :=
  ∀ n, P7485427623378639722.a n = A033634 (n + 1)

theorem P7485427623378639722.correct : P7485427623378639722.Spec := by
  intro n
  simp only [A033634, Nat.add_sub_cancel]

end A033634

/-! ## A033634.P9496813933733409052

`∑{d}[n+1, #*A295316(#)]`
-/

namespace A033634.P9496813933733409052
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A295316 d

end

end A033634.P9496813933733409052

namespace A033634

/-- `∑{d}[n+1, #*A295316(#)]` -/
def P9496813933733409052.Spec : Prop :=
  ∀ n, P9496813933733409052.a n = A033634 (n + 1)

end A033634

/-! ## A033634.P14411435356660809235

`∑{d}[n+1, #*A005361(#)%2]`
-/

namespace A033634.P14411435356660809235
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * Int.tmod (A005361 d) 2

end

end A033634.P14411435356660809235

namespace A033634

/-- `∑{d}[n+1, #*A005361(#)%2]` -/
def P14411435356660809235.Spec : Prop :=
  ∀ n, P14411435356660809235.a n = A033634 (n + 1)

end A033634

/-! ## A033634.P15716256840579018608

`A380322(A019554(n+1))`
-/

namespace A033634.P15716256840579018608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380322 (A019554 (n + 1)).toNat

end

end A033634.P15716256840579018608

namespace A033634

/-- `A380322(A019554(n+1))` -/
def P15716256840579018608.Spec : Prop :=
  ∀ n, P15716256840579018608.a n = A033634 (n + 1)

end A033634

/-! ## A033634.P15528404363463171998

`A368471(A350390(n+1))`
-/

namespace A033634.P15528404363463171998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368471 (A350390 (n + 1)).toNat

end

end A033634.P15528404363463171998

namespace A033634

/-- `A368471(A350390(n+1))` -/
def P15528404363463171998.Spec : Prop :=
  ∀ n, P15528404363463171998.a n = A033634 (n + 1)

end A033634

/-! ## A033634.P11389594547287497272

`∑{d}[A019554(n+1), A102631(#)]`
-/

namespace A033634.P11389594547287497272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019554 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A102631 d

end

end A033634.P11389594547287497272

namespace A033634

/-- `∑{d}[A019554(n+1), A102631(#)]` -/
def P11389594547287497272.Spec : Prop :=
  ∀ n, P11389594547287497272.a n = A033634 (n + 1)

end A033634

/-! ## A033634.P1578988900332337921

`∑{d}[A019554(n+1), #*A003557(#)]`
-/

namespace A033634.P1578988900332337921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019554 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, (d : ℤ) * A003557 d

end

end A033634.P1578988900332337921

namespace A033634

/-- `∑{d}[A019554(n+1), #*A003557(#)]` -/
def P1578988900332337921.Spec : Prop :=
  ∀ n, P1578988900332337921.a n = A033634 (n + 1)

end A033634

/-! ## A033634.P18435516926113974361

`∑{d}[A071975(A350390(n+1)), A102631(#)]`
-/

namespace A033634.P18435516926113974361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071975 (A350390 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A102631 d

end

end A033634.P18435516926113974361

namespace A033634

/-- `∑{d}[A071975(A350390(n+1)), A102631(#)]` -/
def P18435516926113974361.Spec : Prop :=
  ∀ n, P18435516926113974361.a n = A033634 (n + 1)

end A033634

/-! ## A033634.P1484787500810367230

`A365336((n+1)²)`
-/

namespace A033634.P1484787500810367230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365336 ((n + 1) ^ 2)

end

end A033634.P1484787500810367230

namespace A033634

/-- `A365336((n+1)²)` -/
def P1484787500810367230.Spec : Prop :=
  ∀ n, P1484787500810367230.a n = A033634 (n + 1)

end A033634

/-! ## A033634.P17675788685348540366

`A365334(A053143(n+1))`
-/

namespace A033634.P17675788685348540366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365334 (A053143 (n + 1)).toNat

end

end A033634.P17675788685348540366

namespace A033634

/-- `A365334(A053143(n+1))` -/
def P17675788685348540366.Spec : Prop :=
  ∀ n, P17675788685348540366.a n = A033634 (n + 1)

end A033634

/-! ## A033634.P11462813992780581574

`A365334(A064549(n+1))`
-/

namespace A033634.P11462813992780581574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365334 (A064549 (n + 1)).toNat

end

end A033634.P11462813992780581574

namespace A033634

/-- `A365334(A064549(n+1))` -/
def P11462813992780581574.Spec : Prop :=
  ∀ n, P11462813992780581574.a n = A033634 (n + 1)

end A033634

/-! ## A033634.P2188558921045666349

`∑{d}[A019554(n+1), A003557(#²)]`
-/

namespace A033634.P2188558921045666349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019554 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A003557 (d ^ 2)

end

end A033634.P2188558921045666349

namespace A033634

/-- `∑{d}[A019554(n+1), A003557(#²)]` -/
def P2188558921045666349.Spec : Prop :=
  ∀ n, P2188558921045666349.a n = A033634 (n + 1)

end A033634

/-! ## A033634.P11174682355714539252

`∑{d}[A071975(A350390(n+1)), A350390(#²)]`
-/

namespace A033634.P11174682355714539252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071975 (A350390 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A350390 (d ^ 2)

end

end A033634.P11174682355714539252

namespace A033634

/-- `∑{d}[A071975(A350390(n+1)), A350390(#²)]` -/
def P11174682355714539252.Spec : Prop :=
  ∀ n, P11174682355714539252.a n = A033634 (n + 1)

end A033634

/-!
# A033637: Products of partition numbers A000041(n).

The programs for A033637, there is no canonical definition to state claims against.
-/

/-! ## A033637.P6706564437161494272

`lt[0, A046056(n+1)]+1`
-/

namespace A033637.P6706564437161494272
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046056 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A033637.P6706564437161494272

/-! ## A033637.P596656505097889269

`lt[A004442(n), A046056(A028310(n))]`
-/

namespace A033637.P596656505097889269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046056 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A033637.P596656505097889269

/-! ## A033637.P16089143988729295747

`lt[A000007(n), A050317(A233583(n+1))]`
-/

namespace A033637.P16089143988729295747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050317 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A033637.P16089143988729295747

/-! ## A033637.P6749547904660522671

`lt[A000038(n), A050317(A233583(n+1))²]`
-/

namespace A033637.P6749547904660522671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050317 (A233583 (n + 1)).toNat ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A033637.P6749547904660522671

/-! ## A033637.P17634919004940975160

`lt[1, A046056(A028310(2*n))]`
-/

namespace A033637.P17634919004940975160
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046056 (A028310 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A033637.P17634919004940975160

/-! ## A033637.P15772690776038815858

`lt[1, A046056(A028310(n)+n)]`
-/

namespace A033637.P15772690776038815858
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046056 (A028310 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A033637.P15772690776038815858

/-!
# A033638: Quarter-squares plus 1 (that is, a(n) = A002620(n) + 1).

The programs for A033638, the canonical program `A033638.P14460038369392948833` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A033638 has offset 0).

The definition of A033638 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A002620(n)+1` (program `A033638.P14460038369392948833`, by `A033638.P14460038369392948833.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A033638.P12205945644349206478

`1+floor(n²/4)`
-/

namespace A033638.P12205945644349206478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + ⌊(n ^ 2 : ℚ) / 4⌋

end

end A033638.P12205945644349206478

namespace A033638

/-- `1+floor(n²/4)` -/
def P12205945644349206478.Spec : Prop :=
  ∀ n, P12205945644349206478.a n = A033638 n

theorem P12205945644349206478.correct : P12205945644349206478.Spec := by
  intro n
  simp only [A033638, Nat.add_sub_cancel, A033638.P12205945644349206478.a, A033638.P14460038369392948833.a, A002620, A002620.P9002536657626793813.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A033638

/-! ## A033638.P12720929681551098533

`ogf((1-x+x^3)/(1-2x+2x^3-x^4))`
-/

namespace A033638.P12720929681551098533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1, 0, 1] [1, -2, 0, 2, -1] n

end

end A033638.P12720929681551098533

namespace A033638

/-- `ogf((1-x+x^3)/(1-2x+2x^3-x^4))` -/
def P12720929681551098533.Spec : Prop :=
  ∀ n, P12720929681551098533.a n = A033638 n

end A033638

/-! ## A033638.P14460038369392948833

`A002620(n)+1`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A033638

/-- `A002620(n)+1` -/
def P14460038369392948833.Spec : Prop :=
  ∀ n, P14460038369392948833.a n = A033638 n

theorem P14460038369392948833.correct : P14460038369392948833.Spec := by
  intro n
  simp only [A033638]

end A033638

/-! ## A033638.P7440861798547216495

`round(cosh(log(acot(n)))²)`
-/

namespace A033638.P7440861798547216495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.cosh (Real.log (SequenceMachineLib.acot (n : ℝ))) ^ 2)

end

end A033638.P7440861798547216495

namespace A033638

/-- `round(cosh(log(acot(n)))²)` -/
def P7440861798547216495.Spec : Prop :=
  ∀ n, P7440861798547216495.a n = A033638 n

end A033638

/-! ## A033638.P9098666516869099835

`ceil(or(1, n²)/4)`
-/

namespace A033638.P9098666516869099835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.lor 1 (n ^ 2) : ℚ) / 4⌉

end

end A033638.P9098666516869099835

namespace A033638

/-- `ceil(or(1, n²)/4)` -/
def P9098666516869099835.Spec : Prop :=
  ∀ n, P9098666516869099835.a n = A033638 n

end A033638

/-! ## A033638.P14475233403900539886

`round(or(2, n²)/4)`
-/

namespace A033638.P14475233403900539886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.lor 2 (n ^ 2) : ℚ) / 4)

end

end A033638.P14475233403900539886

namespace A033638

/-- `round(or(2, n²)/4)` -/
def P14475233403900539886.Spec : Prop :=
  ∀ n, P14475233403900539886.a n = A033638 n

end A033638

/-! ## A033638.P9673484313239254327

`ceil(xor(2, n²)/4)`
-/

namespace A033638.P9673484313239254327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.xor 2 (n ^ 2) : ℚ) / 4⌉

end

end A033638.P9673484313239254327

namespace A033638

/-- `ceil(xor(2, n²)/4)` -/
def P9673484313239254327.Spec : Prop :=
  ∀ n, P9673484313239254327.a n = A033638 n

end A033638

/-! ## A033638.P5067663634379293110

`round(xor(2, n²)/4)`
-/

namespace A033638.P5067663634379293110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.xor 2 (n ^ 2) : ℚ) / 4)

end

end A033638.P5067663634379293110

namespace A033638

/-- `round(xor(2, n²)/4)` -/
def P5067663634379293110.Spec : Prop :=
  ∀ n, P5067663634379293110.a n = A033638 n

end A033638

/-! ## A033638.P5514586540756713067

`(or(1, n²)+3)/4`
-/

namespace A033638.P5514586540756713067
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lor 1 (n ^ 2) + 3 : ℚ) / 4

end

end A033638.P5514586540756713067

namespace A033638

/-- `(or(1, n²)+3)/4` -/
def P5514586540756713067.Spec : Prop :=
  ∀ n, P5514586540756713067.a n = (A033638 n : ℚ)

end A033638

/-! ## A033638.P10769131031212332874

`ceil(cos(1)+(n/2)²)`
-/

namespace A033638.P10769131031212332874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.cos (1 : ℝ) + (((n : ℚ) / 2) ^ 2 : ℝ)⌉

end

end A033638.P10769131031212332874

namespace A033638

/-- `ceil(cos(1)+(n/2)²)` -/
def P10769131031212332874.Spec : Prop :=
  ∀ n, P10769131031212332874.a n = A033638 n

end A033638

/-! ## A033638.P15713854575845458676

`round(cos(1)+(n/2)²)`
-/

namespace A033638.P15713854575845458676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.cos (1 : ℝ) + (((n : ℚ) / 2) ^ 2 : ℝ))

end

end A033638.P15713854575845458676

namespace A033638

/-- `round(cos(1)+(n/2)²)` -/
def P15713854575845458676.Spec : Prop :=
  ∀ n, P15713854575845458676.a n = A033638 n

end A033638

/-! ## A033638.P11183129566736669980

`round(sin(1)+(n/2)²)`
-/

namespace A033638.P11183129566736669980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sin (1 : ℝ) + (((n : ℚ) / 2) ^ 2 : ℝ))

end

end A033638.P11183129566736669980

namespace A033638

/-- `round(sin(1)+(n/2)²)` -/
def P11183129566736669980.Spec : Prop :=
  ∀ n, P11183129566736669980.a n = A033638 n

end A033638

/-! ## A033638.P6283112351081123128

`ceil((n/2)²-cos(2))`
-/

namespace A033638.P6283112351081123128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(((n : ℚ) / 2) ^ 2 : ℝ) - Real.cos (2 : ℝ)⌉

end

end A033638.P6283112351081123128

namespace A033638

/-- `ceil((n/2)²-cos(2))` -/
def P6283112351081123128.Spec : Prop :=
  ∀ n, P6283112351081123128.a n = A033638 n

end A033638

/-! ## A033638.P4489029278138429430

`ceil(sin(3)+(n/2)²)`
-/

namespace A033638.P4489029278138429430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sin (3 : ℝ) + (((n : ℚ) / 2) ^ 2 : ℝ)⌉

end

end A033638.P4489029278138429430

namespace A033638

/-- `ceil(sin(3)+(n/2)²)` -/
def P4489029278138429430.Spec : Prop :=
  ∀ n, P4489029278138429430.a n = A033638 n

end A033638

/-! ## A033638.P2672930351292493572

`round((n/2)²-cos(3))`
-/

namespace A033638.P2672930351292493572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((((n : ℚ) / 2) ^ 2 : ℝ) - Real.cos (3 : ℝ))

end

end A033638.P2672930351292493572

namespace A033638

/-- `round((n/2)²-cos(3))` -/
def P2672930351292493572.Spec : Prop :=
  ∀ n, P2672930351292493572.a n = A033638 n

end A033638

/-! ## A033638.P8303859842351875889

`ceil((n/2)²-tan(3))`
-/

namespace A033638.P8303859842351875889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(((n : ℚ) / 2) ^ 2 : ℝ) - Real.tan (3 : ℝ)⌉

end

end A033638.P8303859842351875889

namespace A033638

/-- `ceil((n/2)²-tan(3))` -/
def P8303859842351875889.Spec : Prop :=
  ∀ n, P8303859842351875889.a n = A033638 n

end A033638

/-! ## A033638.P9186535993965335040

`round(atan(1)+(n/2)²)`
-/

namespace A033638.P9186535993965335040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.arctan (1 : ℝ) + (((n : ℚ) / 2) ^ 2 : ℝ))

end

end A033638.P9186535993965335040

namespace A033638

/-- `round(atan(1)+(n/2)²)` -/
def P9186535993965335040.Spec : Prop :=
  ∀ n, P9186535993965335040.a n = A033638 n

end A033638

/-! ## A033638.P15834060811088516077

`round(sinh(1)+(n/2)²)`
-/

namespace A033638.P15834060811088516077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sinh (1 : ℝ) + (((n : ℚ) / 2) ^ 2 : ℝ))

end

end A033638.P15834060811088516077

namespace A033638

/-- `round(sinh(1)+(n/2)²)` -/
def P15834060811088516077.Spec : Prop :=
  ∀ n, P15834060811088516077.a n = A033638 n

end A033638

/-! ## A033638.P11546622925768492720

`round(tanh(1)+(n/2)²)`
-/

namespace A033638.P11546622925768492720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.tanh (1 : ℝ) + (((n : ℚ) / 2) ^ 2 : ℝ))

end

end A033638.P11546622925768492720

namespace A033638

/-- `round(tanh(1)+(n/2)²)` -/
def P11546622925768492720.Spec : Prop :=
  ∀ n, P11546622925768492720.a n = A033638 n

end A033638

/-! ## A033638.P11409798270561268245

`ceil(cot(1)+(n/2)²)`
-/

namespace A033638.P11409798270561268245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.cot (1 : ℝ) + (((n : ℚ) / 2) ^ 2 : ℝ)⌉

end

end A033638.P11409798270561268245

namespace A033638

/-- `ceil(cot(1)+(n/2)²)` -/
def P11409798270561268245.Spec : Prop :=
  ∀ n, P11409798270561268245.a n = A033638 n

end A033638

/-!
# A033639: Base-2 digital convolution sequence.

The programs for A033639, there is no canonical definition to state claims against.
-/

/-! ## A033639.P2359953475863179932

`A049085(A008673(2*n+1)^A029349(n+1))`
-/

namespace A033639.P2359953475863179932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049085 (SequenceMachineLib.roundAway ((A008673 (2 * n + 1) : ℚ) ^ (A029349 (n + 1) : ℤ))).toNat

end

end A033639.P2359953475863179932

/-!
# A033640: Base 3 digital convolution sequence.

The programs for A033640, there is no canonical definition to state claims against.
-/

/-! ## A033640.P17154750420026474097

`A000119(lcm(A202087(n), A337600(2*(n+1))))`
-/

namespace A033640.P17154750420026474097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000119 (Int.lcm (A202087 n) (A337600 (2 * (n + 1))))

end

end A033640.P17154750420026474097

/-!
# A033641: Base 4 digital convolution sequence.

The programs for A033641, there is no canonical definition to state claims against.
-/

/-! ## A033641.P8706665281328774504

`A291150(A222292(3*n)-A000108(n))`
-/

namespace A033641.P8706665281328774504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291150 (A222292 (3 * n) - A000108 n).toNat

end

end A033641.P8706665281328774504

/-!
# A033643: Base 6 digital convolution sequence.

The programs for A033643, there is no canonical definition to state claims against.
-/

/-! ## A033643.P4238170005164537208

`A064830(n!)`
-/

namespace A033643.P4238170005164537208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064830 (Nat.factorial n)

end

end A033643.P4238170005164537208

/-! ## A033643.P12237487341578495499

`gcd(n!, A084920(n!))`
-/

namespace A033643.P12237487341578495499
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (Nat.factorial n : ℤ) (A084920 (Nat.factorial n))

end

end A033643.P12237487341578495499

/-! ## A033643.P16747916850610873803

`n!%A343741(3*(n+1))`
-/

namespace A033643.P16747916850610873803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Nat.factorial n : ℤ) (A343741 (3 * (n + 1)))

end

end A033643.P16747916850610873803

/-! ## A033643.P3944803747214350388

`A325640(11*lcm(2*n%9-n, gcd(11, n))!)`
-/

namespace A033643.P3944803747214350388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325640 (11 * Nat.factorial (Int.lcm (((2 * (n % 9) : ℕ) : ℤ) - (n : ℤ)) (Nat.gcd 11 n : ℤ)))

end

end A033643.P3944803747214350388

/-!
# A033644: Base 7 digital convolution sequence.

The programs for A033644, there is no canonical definition to state claims against.
-/

/-! ## A033644.P11333015512500660462

`gcd(A000142(n), A100145(A072856(n)))`
-/

namespace A033644.P11333015512500660462
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000142 n) (A100145 (A072856 n).toNat)

end

end A033644.P11333015512500660462

/-! ## A033644.P13206322875043791933

`A000142(n)%A005349(A002998(3*(n+1)))`
-/

namespace A033644.P13206322875043791933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000142 n) (A005349 (A002998 (3 * (n + 1))).toNat)

end

end A033644.P13206322875043791933

/-! ## A033644.P16907425046738023881

`n!%A074270(n+3)`
-/

namespace A033644.P16907425046738023881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Nat.factorial n : ℤ) (A074270 (n + 3))

end

end A033644.P16907425046738023881

/-! ## A033644.P10375085462203809149

`and(n, A230139(n+1))!`
-/

namespace A033644.P10375085462203809149
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (Int.land (n : ℤ) (A230139 (n + 1))).toNat

end

end A033644.P10375085462203809149

/-!
# A033645: Base 8 digital convolution sequence.

The programs for A033645, there is no canonical definition to state claims against.
-/

/-! ## A033645.P7128149734236284012

`gcd(n!, A276009(A309841(2*(n+1))))`
-/

namespace A033645.P7128149734236284012
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (Nat.factorial n : ℤ) (A276009 (A309841 (2 * (n + 1))).toNat)

end

end A033645.P7128149734236284012

/-! ## A033645.P14644340995536561339

`n!%A062401(A275240(2*n+3))`
-/

namespace A033645.P14644340995536561339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Nat.factorial n : ℤ) (A062401 (A275240 (2 * n + 3)).toNat)

end

end A033645.P14644340995536561339

/-! ## A033645.P16286429374078863399

`∑{digits}[n, #!]%A111030(A046785(3*n))`
-/

namespace A033645.P16286429374078863399
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => Nat.factorial x).sum : ℕ) : ℤ) (A111030 (A046785 (3 * n)).toNat)

end

end A033645.P16286429374078863399

/-! ## A033645.P12660118045569024525

`gcd(A000142(n), A059377(A153713(n+1)))`
-/

namespace A033645.P12660118045569024525
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000142 n) (A059377 (A153713 (n + 1)).toNat)

end

end A033645.P12660118045569024525

/-! ## A033645.P5964276568864972374

`A000142(n)%A329851(A329655(n+2))`
-/

namespace A033645.P5964276568864972374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000142 n) (A329851 (A329655 (n + 2)).toNat)

end

end A033645.P5964276568864972374

/-!
# A033646: Base 9 digital convolution sequence.

The programs for A033646, there is no canonical definition to state claims against.
-/

/-! ## A033646.P1142135629155117444

`A309236(n²)!`
-/

namespace A033646.P1142135629155117444
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A309236 (n ^ 2)).toNat

end

end A033646.P1142135629155117444

/-! ## A033646.P16472292901802953397

`xor(n, A174614(n))!`
-/

namespace A033646.P16472292901802953397
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (Int.xor (n : ℤ) (A174614 n)).toNat

end

end A033646.P16472292901802953397

/-! ## A033646.P12863877892310398519

`xor(n, A069964(n+2))!`
-/

namespace A033646.P12863877892310398519
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (Int.xor (n : ℤ) (A069964 (n + 2))).toNat

end

end A033646.P12863877892310398519

/-! ## A033646.P14955458333276999170

`abs(n-A133039(n)²)!`
-/

namespace A033646.P14955458333276999170
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial |(n : ℤ) - A133039 n ^ 2|.toNat

end

end A033646.P14955458333276999170

/-!
# A033647: Base 10 digital convolution sequence.

The programs for A033647, there is no canonical definition to state claims against.
-/

/-! ## A033647.P2975727574363723023

`lcm(2*n%9-n, gcd(11, n))!`
-/

namespace A033647.P2975727574363723023
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (Int.lcm (((2 * (n % 9) : ℕ) : ℤ) - (n : ℤ)) (Nat.gcd 11 n : ℤ))

end

end A033647.P2975727574363723023

/-! ## A033647.P14947864019012377182

`((n-2*floor(n/10))^∑{digits}[n, round(atan(#))])!`
-/

namespace A033647.P14947864019012377182
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (SequenceMachineLib.roundAway (((n : ℤ) - 2 * ⌊(n : ℚ) / 10⌋ : ℚ) ^ (((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => SequenceMachineLib.roundAway (Real.arctan (x : ℝ))).sum : ℤ))).toNat

end

end A033647.P14947864019012377182

/-! ## A033647.P12387349079903883727

`((n-2*floor(n/10))^∑{digits}[n, ceil(#/9)])!`
-/

namespace A033647.P12387349079903883727
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (SequenceMachineLib.roundAway (((n : ℤ) - 2 * ⌊(n : ℚ) / 10⌋ : ℚ) ^ (((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => ⌈(x : ℚ) / 9⌉).sum : ℤ))).toNat

end

end A033647.P12387349079903883727

/-! ## A033647.P8896547944286520059

`lcm(n-2*floor(n/10), C(n, 2*floor(n/2)))!`
-/

namespace A033647.P8896547944286520059
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (Int.lcm ((n : ℤ) - 2 * ⌊(n : ℚ) / 10⌋) (Nat.choose n (2 * ⌊(n : ℚ) / 2⌋).toNat : ℤ))

end

end A033647.P8896547944286520059

/-! ## A033647.P5273196367138916064

`xor(n, A179958(n))!`
-/

namespace A033647.P5273196367138916064
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (Int.xor (n : ℤ) (A179958 n)).toNat

end

end A033647.P5273196367138916064

/-!
# A033648: Trajectory of 3 under map x->x + (x-with-digits-reversed).

The programs for A033648, there is no canonical definition to state claims against.
-/

/-! ## A033648.P1253406261623845665

`A243238(∑[n+2]+4)`
-/

namespace A033648.P1253406261623845665
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243238 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A033648.P1253406261623845665

/-! ## A033648.P8867984754723128114

`lcm(3, A243238(A167614(n+1)))`
-/

namespace A033648.P8867984754723128114
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 3 (A243238 (A167614 (n + 1)).toNat)

end

end A033648.P8867984754723128114

/-! ## A033648.P15260561242641660929

`A243238(A167614(n+1))%A006960(n)`
-/

namespace A033648.P15260561242641660929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A243238 (A167614 (n + 1)).toNat) (A006960 n)

end

end A033648.P15260561242641660929

/-! ## A033648.P14204458747920176336

`or(A000007(n), A243238(A167614(n+1)))`
-/

namespace A033648.P14204458747920176336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A243238 (A167614 (n + 1)).toNat)

end

end A033648.P14204458747920176336

/-! ## A033648.P4038309762623653613

`or(A000038(n), A243238(A167614(n+1)))`
-/

namespace A033648.P4038309762623653613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000038 n) (A243238 (A167614 (n + 1)).toNat)

end

end A033648.P4038309762623653613

/-! ## A033648.P14666137615298208762

`(A080513(2*n)-n)*A243238(A167614(n+1))`
-/

namespace A033648.P14666137615298208762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A080513 (2 * n) - (n : ℤ)) * A243238 (A167614 (n + 1)).toNat

end

end A033648.P14666137615298208762

/-! ## A033648.P5032772409270660457

`A243238(A167614(n+1))+A000007(A017005(n))`
-/

namespace A033648.P5032772409270660457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243238 (A167614 (n + 1)).toNat + A000007 (A017005 n).toNat

end

end A033648.P5032772409270660457

/-! ## A033648.P18160193298905147601

`A243238(A167614(n+1))+A132896(A000217(n))`
-/

namespace A033648.P18160193298905147601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243238 (A167614 (n + 1)).toNat + A132896 (A000217 n).toNat

end

end A033648.P18160193298905147601

/-! ## A033648.P9122312129296793253

`A133821(A000124(n))*A243238(A167614(n+1))`
-/

namespace A033648.P9122312129296793253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133821 (A000124 n).toNat * A243238 (A167614 (n + 1)).toNat

end

end A033648.P9122312129296793253

/-! ## A033648.P17652981050613833429

`A243238(A167499(n)+n)+A000007(A017005(n))`
-/

namespace A033648.P17652981050613833429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243238 (A167499 n + (n : ℤ)).toNat + A000007 (A017005 n).toNat

end

end A033648.P17652981050613833429

/-!
# A033649: Trajectory of 5 under map x->x + (x-with-digits-reversed).

The programs for A033649, there is no canonical definition to state claims against.
-/

/-! ## A033649.P11234051392029138579

`A243238(A167499(n+3))`
-/

namespace A033649.P11234051392029138579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243238 (A167499 (n + 3)).toNat

end

end A033649.P11234051392029138579

/-! ## A033649.P15395937024851714152

`A243238(A155212(n)+13)`
-/

namespace A033649.P15395937024851714152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243238 (A155212 n + 13).toNat

end

end A033649.P15395937024851714152

/-! ## A033649.P8049213071961291567

`A243238(A167614(n+3)+2)`
-/

namespace A033649.P8049213071961291567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243238 (A167614 (n + 3) + 2).toNat

end

end A033649.P8049213071961291567

/-! ## A033649.P16498052717125549965

`A243238(A000124(n+4)+4)`
-/

namespace A033649.P16498052717125549965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243238 (A000124 (n + 4) + 4).toNat

end

end A033649.P16498052717125549965

/-! ## A033649.P3158560347325400026

`A243238(A000217(n+4)+5)`
-/

namespace A033649.P3158560347325400026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243238 (A000217 (n + 4) + 5).toNat

end

end A033649.P3158560347325400026

/-! ## A033649.P16141464429132810265

`A243238(A055998(n+2)+8)`
-/

namespace A033649.P16141464429132810265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243238 (A055998 (n + 2) + 8).toNat

end

end A033649.P16141464429132810265

/-! ## A033649.P10070427739326322350

`A243238(A052905(n+1)+10)`
-/

namespace A033649.P10070427739326322350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243238 (A052905 (n + 1) + 10).toNat

end

end A033649.P10070427739326322350

/-! ## A033649.P17337036822975030250

`A243238(A000096(n+2)+n+10)`
-/

namespace A033649.P17337036822975030250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243238 (A000096 (n + 2) + (n + 10 : ℤ)).toNat

end

end A033649.P17337036822975030250

/-! ## A033649.P13242403260224762013

`A243238(A038722(Δ[A023545(n+1)]))`
-/

namespace A033649.P13242403260224762013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243238 (A038722 (f1 (n + 1) - f1 n).toNat).toNat

end

end A033649.P13242403260224762013

/-!
# A033650: Trajectory of 7 under map x --> x + (x-with-digits-reversed).

The programs for A033650, there is no canonical definition to state claims against.
-/

/-! ## A033650.P782732452886360698

`A243238(A000124(n+6)+6)`
-/

namespace A033650.P782732452886360698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243238 (A000124 (n + 6) + 6).toNat

end

end A033650.P782732452886360698

/-! ## A033650.P16380529026726925669

`A243238(A000096(n+5)+8)`
-/

namespace A033650.P16380529026726925669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243238 (A000096 (n + 5) + 8).toNat

end

end A033650.P16380529026726925669

/-! ## A033650.P2450880165413849509

`A243238(A000217(n+6)+7)`
-/

namespace A033650.P2450880165413849509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243238 (A000217 (n + 6) + 7).toNat

end

end A033650.P2450880165413849509

/-! ## A033650.P13126864872131489980

`A243238(A155212(n+2)+15)`
-/

namespace A033650.P13126864872131489980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243238 (A155212 (n + 2) + 15).toNat

end

end A033650.P13126864872131489980

/-! ## A033650.P15195233243463691253

`A243238(A167614(n+6)-(n+3))`
-/

namespace A033650.P15195233243463691253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243238 (A167614 (n + 6) - (n + 3 : ℤ)).toNat

end

end A033650.P15195233243463691253

/-! ## A033650.P17557253546253995805

`A243238(A247328(n+8)+A167614(n+3))`
-/

namespace A033650.P17557253546253995805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243238 (A247328 (n + 8) + A167614 (n + 3)).toNat

end

end A033650.P17557253546253995805

/-!
# A033651: Trajectory of 9 under map x->x + (x-with-digits-reversed).

The programs for A033651, there is no canonical definition to state claims against.
-/

/-! ## A033651.P12179408234903619315

`∑[A112296(n+1)]`
-/

namespace A033651.P12179408234903619315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112296 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033651.P12179408234903619315

/-! ## A033651.P15995223557940381873

`A243238(A000124(n+8)+8)`
-/

namespace A033651.P15995223557940381873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243238 (A000124 (n + 8) + 8).toNat

end

end A033651.P15995223557940381873

/-! ## A033651.P16638325246170662993

`A243238(eq[10, A131818(n+1)])`
-/

namespace A033651.P16638325246170662993
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243238 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A033651.P16638325246170662993

/-! ## A033651.P9089858005450557497

`A243238(A000096(n+8)+1-n)`
-/

namespace A033651.P9089858005450557497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243238 (A000096 (n + 8) + (1 - (n : ℤ))).toNat

end

end A033651.P9089858005450557497

/-! ## A033651.P16360065604060009008

`A243238(A000217(n+10)-10-2*n)`
-/

namespace A033651.P16360065604060009008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243238 (A000217 (n + 10) - 10 - (2 * n : ℤ)).toNat

end

end A033651.P16360065604060009008

/-!
# A033652: Trajectory of 13 under map x->x + (x-with-digits-reversed).

The programs for A033652, there is no canonical definition to state claims against.
-/

/-! ## A033652.P2431636995828990400

`A033661(n)%A207267(n+1)`
-/

namespace A033652.P2431636995828990400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A033661 n) (A207267 (n + 1))

end

end A033652.P2431636995828990400

/-! ## A033652.P17219424758109210945

`A033661(n)%A155155(n)`
-/

namespace A033652.P17219424758109210945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A033661 n) (A155155 n)

end

end A033652.P17219424758109210945

/-! ## A033652.P1142810973924170991

`A033649(n+3)-A198954(A323294(n+6)-5)`
-/

namespace A033652.P1142810973924170991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033649 (n + 3) - A198954 (A323294 (n + 6) - 5).toNat

end

end A033652.P1142810973924170991

/-! ## A033652.P2950845739481447529

`A243238(eq[14, A131818(n+1)])`
-/

namespace A033652.P2950845739481447529
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  14

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243238 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A033652.P2950845739481447529

/-! ## A033652.P10824675098292980306

`A243238(Δ[A000292(n+12)]-n)`
-/

namespace A033652.P10824675098292980306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (n + 12)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243238 (f1 (n + 1) - f1 n - (n : ℤ)).toNat

end

end A033652.P10824675098292980306

/-!
# A033653: Trajectory of 15 under map x->x + (x-with-digits-reversed).

The programs for A033653, there is no canonical definition to state claims against.
-/

/-! ## A033653.P14677036419916285751

`A033648(n+3)-A033668(A033668(n)+1)`
-/

namespace A033653.P14677036419916285751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033648 (n + 3) - A033668 (A033668 n + 1).toNat

end

end A033653.P14677036419916285751

/-! ## A033653.P18091821065959887157

`A033648(n+3)%A153338(n+3)`
-/

namespace A033653.P18091821065959887157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A033648 (n + 3)) (A153338 (n + 3))

end

end A033653.P18091821065959887157

/-! ## A033653.P1257187791668160553

`A033656(n+1)%Δ[A033647(n+3)]`
-/

namespace A033653.P1257187791668160553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033647 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A033656 (n + 1)) (f1 (n + 1) - f1 n)

end

end A033653.P1257187791668160553

/-! ## A033653.P11212660960899451786

`A243238(eq[16, A131818(n+1)])`
-/

namespace A033653.P11212660960899451786
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243238 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A033653.P11212660960899451786

/-! ## A033653.P1830002635042157929

`A033648(n+3)%A033651(A026352(n))`
-/

namespace A033653.P1830002635042157929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A033648 (n + 3)) (A033651 (A026352 n).toNat)

end

end A033653.P1830002635042157929

/-!
# A033654: Trajectory of 17 under map x->x + (x-with-digits-reversed).

The programs for A033654, there is no canonical definition to state claims against.
-/

/-! ## A033654.P5418385975506037149

`record[A033661(A324533(n))%A033659(n)]`
-/

namespace A033654.P5418385975506037149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A033661 (A324533 n).toNat) (A033659 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A033654.P5418385975506037149

/-! ## A033654.P17211990315317219662

`A243238(eq[43, A066657(n)])`
-/

namespace A033654.P17211990315317219662
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  43

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243238 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A033654.P17211990315317219662

/-! ## A033654.P3031039816281844803

`A243238(eq[18, A131818(n+1)])`
-/

namespace A033654.P3031039816281844803
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  18

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243238 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A033654.P3031039816281844803

/-! ## A033654.P9691661309535013046

`A033649(n+4)%Δ[A033648(2*n+1)]`
-/

namespace A033654.P9691661309535013046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033648 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A033649 (n + 4)) (f1 (n + 1) - f1 n)

end

end A033654.P9691661309535013046

/-! ## A033654.P10800798929140791390

`A033652(n+1)%A024441(n+1)`
-/

namespace A033654.P10800798929140791390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A033652 (n + 1)) (A024441 (n + 1))

end

end A033654.P10800798929140791390

/-!
# A033655: Trajectory of 19 under map x->x + (x-with-digits-reversed).

The programs for A033655, there is no canonical definition to state claims against.
-/

/-! ## A033655.P4550073253433724276

`A033650(n+2)-A000038(n)*A167614(n+4)`
-/

namespace A033655.P4550073253433724276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033650 (n + 2) - A000038 n * A167614 (n + 4)

end

end A033655.P4550073253433724276

/-! ## A033655.P5838940814525868750

`A033657(n+1)%A262789(n+1)`
-/

namespace A033655.P5838940814525868750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A033657 (n + 1)) (A262789 (n + 1))

end

end A033655.P5838940814525868750

/-! ## A033655.P8462663736392645130

`A243238(eq[A040090(n), A131818(n+1)])`
-/

namespace A033655.P8462663736392645130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040090 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243238 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A033655.P8462663736392645130

/-! ## A033655.P11465155175222326714

`A033650(n+2)%C(A033651(n), 2)`
-/

namespace A033655.P11465155175222326714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A033650 (n + 2)) (Nat.choose (A033651 n).toNat 2 : ℤ)

end

end A033655.P11465155175222326714

/-! ## A033655.P5968933562102464866

`A033650(n+2)-A000038(n)*A073511(n+3)`
-/

namespace A033655.P5968933562102464866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033650 (n + 2) - A000038 n * A073511 (n + 3)

end

end A033655.P5968933562102464866

/-!
# A033656: Trajectory of 21 under map x->x + (x-with-digits-reversed).

The programs for A033656, there is no canonical definition to state claims against.
-/

/-! ## A033656.P12219929026315213025

`A033648(n+2)+A033668(A033668(n)+1)/2`
-/

namespace A033656.P12219929026315213025
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033648 (n + 2) : ℚ) + (A033668 (A033668 n + 1).toNat : ℚ) / 2

end

end A033656.P12219929026315213025

/-! ## A033656.P8514983049190451725

`A056964(a(n-1))` with `a(0)=21`
-/

namespace A033656.P8514983049190451725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [21] fun n a =>
  A056964 (a (n - 1)).toNat

end

end A033656.P8514983049190451725

/-! ## A033656.P8258190517693787838

`A004086(a(n-1))+a(n-1)` with `a(0)=21`
-/

namespace A033656.P8258190517693787838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [21] fun n a =>
  A004086 (a (n - 1)).toNat + a (n - 1)

end

end A033656.P8258190517693787838

/-! ## A033656.P13442605639526034073

`A082799(A033648(n+2)%A000108(3*(n+1)))`
-/

namespace A033656.P13442605639526034073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082799 (Int.tmod (A033648 (n + 2)) (A000108 (3 * (n + 1)))).toNat

end

end A033656.P13442605639526034073

/-!
# A033657: Trajectory of 23 under map x->x + (x-with-digits-reversed).

The programs for A033657, there is no canonical definition to state claims against.
-/

/-! ## A033657.P587849524846201024

`A056964(a(n-1))` with `a(0)=23`
-/

namespace A033657.P587849524846201024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [23] fun n a =>
  A056964 (a (n - 1)).toNat

end

end A033657.P587849524846201024

/-! ## A033657.P15001766950543981961

`A004086(a(n-1))+a(n-1)` with `a(0)=23`
-/

namespace A033657.P15001766950543981961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [23] fun n a =>
  A004086 (a (n - 1)).toNat + a (n - 1)

end

end A033657.P15001766950543981961

/-! ## A033657.P16703638951163914978

`record[A056964(a(A080465(n)))]` with `a(0)=23`
-/

namespace A033657.P16703638951163914978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [23] fun n f1 =>
  A056964 (f1 (A080465 (n + 10)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A033657.P16703638951163914978

/-!
# A033658: Trajectory of 25 under map x->x + (x-with-digits-reversed).

The programs for A033658, there is no canonical definition to state claims against.
-/

/-! ## A033658.P7465917360865480966

`A343575(A106856(n+1))+A001127(n+4)`
-/

namespace A033658.P7465917360865480966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343575 (A106856 (n + 1)).toNat + A001127 (n + 4)

end

end A033658.P7465917360865480966

/-! ## A033658.P7001531107829316188

`A161697(A190565(3*n+4))+A001127(n+4)`
-/

namespace A033658.P7001531107829316188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161697 (A190565 (3 * n + 4)).toNat + A001127 (n + 4)

end

end A033658.P7001531107829316188

/-! ## A033658.P17414272514411454249

`A161697(A000040(6*n+1))+A001127(n+4)`
-/

namespace A033658.P17414272514411454249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161697 (A000040 (6 * n + 1)).toNat + A001127 (n + 4)

end

end A033658.P17414272514411454249

/-! ## A033658.P7163440550633971738

`A343575(A005384(n+1))+A001127(n+4)`
-/

namespace A033658.P7163440550633971738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343575 (A005384 (n + 1)).toNat + A001127 (n + 4)

end

end A033658.P7163440550633971738

/-! ## A033658.P15653449476649256347

`A161697(∏{p}[59*n-16, #])+A001127(n+4)`
-/

namespace A033658.P15653449476649256347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (59 * n : ℤ) - 16

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161697 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p) + A001127 (n + 4)

end

end A033658.P15653449476649256347

/-! ## A033658.P1924611971579463856

`A161697(A038618(8*n+1))+A001127(n+4)`
-/

namespace A033658.P1924611971579463856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161697 (A038618 (8 * n + 1)).toNat + A001127 (n + 4)

end

end A033658.P1924611971579463856

/-! ## A033658.P6111603120029189452

`A161697(A139867(n+1))+A001127(n+4)`
-/

namespace A033658.P6111603120029189452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161697 (A139867 (n + 1)).toNat + A001127 (n + 4)

end

end A033658.P6111603120029189452

/-!
# A033659: Trajectory of 27 under map x->x + (x-with-digits-reversed).

The programs for A033659, there is no canonical definition to state claims against.
-/

/-! ## A033659.P9755615055909311143

`A033651(A028310(n))+Δ[A033651(n)]`
-/

namespace A033659.P9755615055909311143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033651 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033651 (A028310 n).toNat + (f1 (n + 1) - f1 n)

end

end A033659.P9755615055909311143

/-! ## A033659.P11974003195661341931

`record[A014963(A033648(n))*A033651(n)]`
-/

namespace A033659.P11974003195661341931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A033648 n).toNat * A033651 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A033659.P11974003195661341931

/-! ## A033659.P2375540137500070483

`A004086(a(n-1))+a(n-1)` with `a(0)=27`
-/

namespace A033659.P2375540137500070483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [27] fun n a =>
  A004086 (a (n - 1)).toNat + a (n - 1)

end

end A033659.P2375540137500070483

/-!
# A033660: Trajectory of 29 under map x->x + (x-with-digits-reversed).

The programs for A033660, there is no canonical definition to state claims against.
-/

/-! ## A033660.P15882358844336056185

`A033655(n+1)%A033651(n)²`
-/

namespace A033660.P15882358844336056185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A033655 (n + 1)) (A033651 n ^ 2)

end

end A033660.P15882358844336056185

/-! ## A033660.P8000163350624666852

`A033657(n+2)%A033651(n)²`
-/

namespace A033660.P8000163350624666852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A033657 (n + 2)) (A033651 n ^ 2)

end

end A033660.P8000163350624666852

/-! ## A033660.P7779975943965797779

`A033650(n+3)%A033651(n)²`
-/

namespace A033660.P7779975943965797779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A033650 (n + 3)) (A033651 n ^ 2)

end

end A033660.P7779975943965797779

/-! ## A033660.P17763004929847733822

`A243238(eq[30, A131818(n+1)])`
-/

namespace A033660.P17763004929847733822
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  30

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243238 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A033660.P17763004929847733822

/-! ## A033660.P457703194030762259

`A056964(a(n-1))` with `a(0)=29`
-/

namespace A033660.P457703194030762259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [29] fun n a =>
  A056964 (a (n - 1)).toNat

end

end A033660.P457703194030762259

/-!
# A033661: Trajectory of 31 under map x->x + (x-with-digits-reversed).

The programs for A033661, there is no canonical definition to state claims against.
-/

/-! ## A033661.P5339816520129016371

`or(A033649(n+3), A033652(n))`
-/

namespace A033661.P5339816520129016371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A033649 (n + 3)) (A033652 n)

end

end A033661.P5339816520129016371

/-! ## A033661.P11762329968925308250

`A033668(A033668(n)+1)+A033652(n)`
-/

namespace A033661.P11762329968925308250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033668 (A033668 n + 1).toNat + A033652 n

end

end A033661.P11762329968925308250

/-! ## A033661.P949284899935293014

`or(A033659(n)%33, A033652(n))`
-/

namespace A033661.P949284899935293014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (Int.tmod (A033659 n) 33) (A033652 n)

end

end A033661.P949284899935293014

/-! ## A033661.P2513053632902652171

`A198954(A323294(n+6)-5)+A033649(n+3)`
-/

namespace A033661.P2513053632902652171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198954 (A323294 (n + 6) - 5).toNat + A033649 (n + 3)

end

end A033661.P2513053632902652171

/-! ## A033661.P2904891630924380781

`A198954(A022420(2*(n²+n))+2)+A033649(n+3)`
-/

namespace A033661.P2904891630924380781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198954 (A022420 (2 * (n ^ 2 + n)) + 2).toNat + A033649 (n + 3)

end

end A033661.P2904891630924380781

/-!
# A033662: Possible digital sums of Smith numbers (conjectural).

The programs for A033662, the canonical program `A033662.P8127504772752808406` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A033662 has offset 1).

The definition of A033662 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A033662.P8127504772752808406

`ogf((4+x-x^2-2x^3-x^5)/(1-2x+x^2))`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A033662

/-- `ogf((4+x-x^2-2x^3-x^5)/(1-2x+x^2))` -/
def P8127504772752808406.Spec : Prop :=
  ∀ n, P8127504772752808406.a n = A033662 (n + 1)

theorem P8127504772752808406.correct : P8127504772752808406.Spec := by
  intro n
  simp only [A033662, Nat.add_sub_cancel]

end A033662

/-!
# A033664: Every suffix is prime.

The programs for A033664, there is no canonical definition to state claims against.
-/

/-! ## A033664.P10559666759333815839

`∪[A024785(n+1), A144714(n+1)]`
-/

namespace A033664.P10559666759333815839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024785 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144714 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A033664.P10559666759333815839

/-! ## A033664.P14737230830063080936

`∪[A144714(n+1), A308711(n+1)]`
-/

namespace A033664.P14737230830063080936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144714 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308711 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A033664.P14737230830063080936

/-! ## A033664.P7310264135764778026

`∩[A042993(n+1), A143390(n+1)]`
-/

namespace A033664.P7310264135764778026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042993 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143390 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033664.P7310264135764778026

/-! ## A033664.P15156248457112543384

`∩[A042991(n+1), A143390(n+1)]`
-/

namespace A033664.P15156248457112543384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042991 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143390 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033664.P15156248457112543384

/-! ## A033664.P9984931430390181298

`∩[A143390(n+1), A260181(n+1)]`
-/

namespace A033664.P9984931430390181298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143390 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260181 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033664.P9984931430390181298

/-! ## A033664.P10159426580129177889

`∩[A047222(n+1), A143390(n+1)]`
-/

namespace A033664.P10159426580129177889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047222 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143390 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033664.P10159426580129177889

/-! ## A033664.P11608722431968870701

`∩[A143390(n+1), A187332(n+1)]`
-/

namespace A033664.P11608722431968870701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143390 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187332 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033664.P11608722431968870701

/-! ## A033664.P4855890344961481651

`∩[A047203(n+1), A143390(n+1)]`
-/

namespace A033664.P4855890344961481651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047203 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143390 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033664.P4855890344961481651

/-! ## A033664.P4388800625595966905

`A059806(A308711(n+1))`
-/

namespace A033664.P4388800625595966905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059806 (A308711 (n + 1)).toNat

end

end A033664.P4388800625595966905

/-! ## A033664.P17237453291658762072

`A002266(5*A308711(n+1))`
-/

namespace A033664.P17237453291658762072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002266 (5 * A308711 (n + 1)).toNat

end

end A033664.P17237453291658762072

/-!
# A033665: Number of 'Reverse and Add' steps needed to reach a palindrome starting at n, or -1 if n never reaches a palindrome.

The programs for A033665, there is no canonical definition to state claims against.
-/

/-! ## A033665.P5807597553677716428

`A030547(floor(acot(n)+n))-1`
-/

namespace A033665.P5807597553677716428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030547 ⌊SequenceMachineLib.acot (n : ℝ) + (n : ℝ)⌋.toNat - 1

end

end A033665.P5807597553677716428

/-! ## A033665.P15552508515714482821

`A030547(round(acot(n)+n))-1`
-/

namespace A033665.P15552508515714482821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030547 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat - 1

end

end A033665.P15552508515714482821

/-! ## A033665.P14848976220774630475

`A030547(abs(1-n)+1)-1`
-/

namespace A033665.P14848976220774630475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030547 (|1 - (n : ℤ)| + 1).toNat - 1

end

end A033665.P14848976220774630475

/-! ## A033665.P8205855632737204174

`xor(-A030547(round(acot(n+1)+n)), -1)`
-/

namespace A033665.P8205855632737204174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (-A030547 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n + 1 : ℝ) + (n : ℝ))).toNat) (-1)

end

end A033665.P8205855632737204174

/-! ## A033665.P4893576859727383866

`abs(1-A030547(A028310(n)))`
-/

namespace A033665.P4893576859727383866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A030547 (A028310 n).toNat|

end

end A033665.P4893576859727383866

/-! ## A033665.P9131497654611605530

`A023443(A030547(abs(1-n)+1))`
-/

namespace A033665.P9131497654611605530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A030547 (|1 - (n : ℤ)| + 1).toNat).toNat

end

end A033665.P9131497654611605530

/-! ## A033665.P15562694783368566967

`abs(1-A030547(A233583(n+1)))`
-/

namespace A033665.P15562694783368566967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A030547 (A233583 (n + 1)).toNat|

end

end A033665.P15562694783368566967

/-! ## A033665.P1282806183862598154

`abs(1-A030547(A065033(2*n)))`
-/

namespace A033665.P1282806183862598154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A030547 (A065033 (2 * n)).toNat|

end

end A033665.P1282806183862598154

/-! ## A033665.P6733223512390041773

`abs(1-A030547(A000007(n)+n))`
-/

namespace A033665.P6733223512390041773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A030547 (A000007 n + (n : ℤ)).toNat|

end

end A033665.P6733223512390041773

/-! ## A033665.P16777548920927198081

`abs(1-A030547(gcd(n, A008574(n))))`
-/

namespace A033665.P16777548920927198081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A030547 (Int.gcd (n : ℤ) (A008574 n))|

end

end A033665.P16777548920927198081

/-! ## A033665.P10794279881526275711

`abs(1-A030547(or(n, A000007(n))))`
-/

namespace A033665.P10794279881526275711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A030547 (Int.lor (n : ℤ) (A000007 n)).toNat|

end

end A033665.P10794279881526275711

/-! ## A033665.P4902308538922315224

`lcm(1-A030547(A233583(n+1)), A033999(n))`
-/

namespace A033665.P4902308538922315224
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (1 - A030547 (A233583 (n + 1)).toNat) (A033999 n)

end

end A033665.P4902308538922315224

/-! ## A033665.P10281424312903411205

`∑{d}[1-A030547(A233583(n+1)), A000010(#)]`
-/

namespace A033665.P10281424312903411205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A030547 (A233583 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A033665.P10281424312903411205

/-! ## A033665.P15417418969368494492

`A260196(n+2)+A030547(A000007(n)+n)`
-/

namespace A033665.P15417418969368494492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260196 (n + 2) + A030547 (A000007 n + (n : ℤ)).toNat

end

end A033665.P15417418969368494492

/-! ## A033665.P12580727118999545973

`A016016(A233583(n+1))*A057427(A064834(n))`
-/

namespace A033665.P12580727118999545973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016016 (A233583 (n + 1)).toNat * A057427 (A064834 n).toNat

end

end A033665.P12580727118999545973

/-! ## A033665.P16423262538808480278

`A016016(A233583(n+1))*A136400(A241173(n))`
-/

namespace A033665.P16423262538808480278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016016 (A233583 (n + 1)).toNat * A136400 (A241173 n).toNat

end

end A033665.P16423262538808480278

/-!
# A033666: Base-2 digital convolution sequence (with smallest digits).

The programs for A033666, the canonical program `A033666.P15559541265896972006` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A033666 has offset 0).

The definition of A033666 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 191 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A033666.P15559541265896972006

`A109129(A306286(n))+1`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A033666

/-- `A109129(A306286(n))+1` -/
def P15559541265896972006.Spec : Prop :=
  ∀ n, P15559541265896972006.a n = A033666 n

theorem P15559541265896972006.correct : P15559541265896972006.Spec := by
  intro n
  simp only [A033666]

end A033666

/-! ## A033666.P14742109264931968802

`A109129(2*A306286(n))`
-/

namespace A033666.P14742109264931968802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109129 (2 * A306286 n).toNat

end

end A033666.P14742109264931968802

namespace A033666

/-- `A109129(2*A306286(n))` -/
def P14742109264931968802.Spec : Prop :=
  ∀ n, P14742109264931968802.a n = A033666 n

end A033666

/-! ## A033666.P18169867583930316176

`A109129(lcm(11, A306286(n)))`
-/

namespace A033666.P18169867583930316176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109129 (Int.lcm 11 (A306286 n))

end

end A033666.P18169867583930316176

namespace A033666

/-- `A109129(lcm(11, A306286(n)))` -/
def P18169867583930316176.Spec : Prop :=
  ∀ n, P18169867583930316176.a n = A033666 n

end A033666

/-! ## A033666.P9291026150870755354

`A326032(A030101(n))+1`
-/

namespace A033666.P9291026150870755354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326032 (A030101 n).toNat + 1

end

end A033666.P9291026150870755354

namespace A033666

/-- `A326032(A030101(n))+1` -/
def P9291026150870755354.Spec : Prop :=
  ∀ n, P9291026150870755354.a n = A033666 n

end A033666

/-! ## A033666.P460475853544391532

`A326032(A325401(2*n))+1`
-/

namespace A033666.P460475853544391532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326032 (A325401 (2 * n)).toNat + 1

end

end A033666.P460475853544391532

namespace A033666

/-- `A326032(A325401(2*n))+1` -/
def P460475853544391532.Spec : Prop :=
  ∀ n, P460475853544391532.a n = A033666 n

end A033666

/-! ## A033666.P8871361782320902281

`A001222(A138117(n+1)*A306286(n))`
-/

namespace A033666.P8871361782320902281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A138117 (n + 1) * A306286 n).toNat

end

end A033666.P8871361782320902281

namespace A033666

/-- `A001222(A138117(n+1)*A306286(n))` -/
def P8871361782320902281.Spec : Prop :=
  ∀ n, P8871361782320902281.a n = A033666 n

end A033666

/-!
# A033667: Base 3 digital convolution sequence, (with smallest digits).

The programs for A033667, there is no canonical definition to state claims against.
-/

/-! ## A033667.P12399943576403784264

`A033923(A030102(n)+1)`
-/

namespace A033667.P12399943576403784264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033923 (A030102 n + 1).toNat

end

end A033667.P12399943576403784264

/-! ## A033667.P16573265376159456655

`A033923(A055946(n)+1-n)`
-/

namespace A033667.P16573265376159456655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033923 (A055946 n + (1 - (n : ℤ))).toNat

end

end A033667.P16573265376159456655

/-! ## A033667.P11479009928485212684

`A033923(1-(n-A055946(n)))`
-/

namespace A033667.P11479009928485212684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033923 (1 - ((n : ℤ) - A055946 n)).toNat

end

end A033667.P11479009928485212684

/-! ## A033667.P11978554406484451665

`A033930(A305877(n)%A067224(n+2))`
-/

namespace A033667.P11978554406484451665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033930 (Int.tmod (A305877 n) (A067224 (n + 2))).toNat

end

end A033667.P11978554406484451665

/-! ## A033667.P10850555211704808371

`A033930(A305877(n))%A092960(n+2)`
-/

namespace A033667.P10850555211704808371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A033930 (A305877 n).toNat) (A092960 (n + 2))

end

end A033667.P10850555211704808371

/-!
# A033668: Theta series of 4-dimensional lattice A_2 tensor A2, with det 81, minimal norm 4.

The programs for A033668, there is no canonical definition to state claims against.
-/

/-! ## A033668.P14265490256187618185

`A057078(n)*A281722(n)`
-/

namespace A033668.P14265490256187618185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057078 n * A281722 n

end

end A033668.P14265490256187618185

/-! ## A033668.P6424040803658442002

`lcm(A260192(n), A281722(n))`
-/

namespace A033668.P6424040803658442002
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A260192 n) (A281722 n)

end

end A033668.P6424040803658442002

/-! ## A033668.P2880698686768713081

`abs(A204418(n)*A281722(n))`
-/

namespace A033668.P2880698686768713081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A204418 n * A281722 n|

end

end A033668.P2880698686768713081

/-! ## A033668.P14854119804683554496

`(1-A102283(n))*A242874(n)`
-/

namespace A033668.P14854119804683554496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A102283 n) * A242874 n

end

end A033668.P14854119804683554496

/-! ## A033668.P13300922919241829500

`(2-A010882(n))*A281722(n)`
-/

namespace A033668.P13300922919241829500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A010882 n) * A281722 n

end

end A033668.P13300922919241829500

/-! ## A033668.P11669287679382627551

`A010892(2*n)*A281722(n)`
-/

namespace A033668.P11669287679382627551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010892 (2 * n) * A281722 n

end

end A033668.P11669287679382627551

/-! ## A033668.P7644106424916778533

`A049347(2*n)*A281722(n)`
-/

namespace A033668.P7644106424916778533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049347 (2 * n) * A281722 n

end

end A033668.P7644106424916778533

/-! ## A033668.P15407665682423300073

`A052938(n)%3*A242874(n)`
-/

namespace A033668.P15407665682423300073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A052938 n) 3 * A242874 n

end

end A033668.P15407665682423300073

/-! ## A033668.P12817676332420037598

`A010872(Δ[n²])*A096726(n)`
-/

namespace A033668.P12817676332420037598
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010872 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat * A096726 n

end

end A033668.P12817676332420037598

/-! ## A033668.P1089273564987591275

`(1-A057078(A028242(n)))*A242874(n)`
-/

namespace A033668.P1089273564987591275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A057078 (A028242 n).toNat) * A242874 n

end

end A033668.P1089273564987591275

/-!
# A033669: a(n) = n^6*(n^6 + 1)*(n^2 - 1).

The programs for A033669, the canonical program `A033669.P8372327217254903753` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A033669 has offset 0).

The definition of A033669 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n^6*(n^6+1)*(n²-1)` (program `A033669.P8372327217254903753`, by `A033669.P8372327217254903753.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A033669.P8372327217254903753

`n^6*(n^6+1)*(n²-1)`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A033669

/-- `n^6*(n^6+1)*(n²-1)` -/
def P8372327217254903753.Spec : Prop :=
  ∀ n, P8372327217254903753.a n = A033669 n

theorem P8372327217254903753.correct : P8372327217254903753.Spec := by
  intro n
  simp only [A033669]

end A033669

/-! ## A033669.P6019919206607817847

`A037251(n²)`
-/

namespace A033669.P6019919206607817847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037251 (n ^ 2)

end

end A033669.P6019919206607817847

namespace A033669

/-- `A037251(n²)` -/
def P6019919206607817847.Spec : Prop :=
  ∀ n, P6019919206607817847.a n = A033669 n

theorem P6019919206607817847.correct : P6019919206607817847.Spec := by
  intro n
  simp only [A033669, Nat.add_sub_cancel, A033669.P6019919206607817847.a, A033669.P8372327217254903753.a, A037251, A037251.P2363510451119139966.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A033669

/-! ## A033669.P12518373183907154751

`lcm(2, A037251(A000290(n)))`
-/

namespace A033669.P12518373183907154751
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A037251 (A000290 n).toNat)

end

end A033669.P12518373183907154751

namespace A033669

/-- `lcm(2, A037251(A000290(n)))` -/
def P12518373183907154751.Spec : Prop :=
  ∀ n, (P12518373183907154751.a n : ℤ) = A033669 n

end A033669

/-! ## A033669.P12008800393688907507

`A218132(n²)/A059826(n)`
-/

namespace A033669.P12008800393688907507
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A218132 (n ^ 2) : ℚ) / (A059826 n : ℚ)

end

end A033669.P12008800393688907507

namespace A033669

/-- `A218132(n²)/A059826(n)` -/
def P12008800393688907507.Spec : Prop :=
  ∀ n, P12008800393688907507.a n = (A033669 n : ℚ)

end A033669

/-! ## A033669.P12367361297515854874

`A218132(n²)/A002061(A002522(n))`
-/

namespace A033669.P12367361297515854874
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A218132 (n ^ 2) : ℚ) / (A002061 (A002522 n).toNat : ℚ)

end

end A033669.P12367361297515854874

namespace A033669

/-- `A218132(n²)/A002061(A002522(n))` -/
def P12367361297515854874.Spec : Prop :=
  ∀ n, P12367361297515854874.a n = (A033669 n : ℚ)

end A033669

/-!
# A033670: Trajectory of 89 under map x->x + (x-with-digits-reversed).

The programs for A033670, there is no canonical definition to state claims against.
-/

/-! ## A033670.P5326774515202126867

`A056964(a(n-1))` with `a(0)=89`
-/

namespace A033670.P5326774515202126867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [89] fun n a =>
  A056964 (a (n - 1)).toNat

end

end A033670.P5326774515202126867

/-! ## A033670.P8423911386512859601

`A004086(a(n-1))+a(n-1)` with `a(0)=89`
-/

namespace A033670.P8423911386512859601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [89] fun n a =>
  A004086 (a (n - 1)).toNat + a (n - 1)

end

end A033670.P8423911386512859601

/-! ## A033670.P6484601175575748261

`record[A056964(a(A049820(n)))]` with `a(0)=89, a(1)=3`
-/

namespace A033670.P6484601175575748261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [89, 3] fun n f1 =>
  A056964 (f1 (A049820 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A033670.P6484601175575748261

/-!
# A033671: Trajectory of 59 under map x->x + (x-with-digits-reversed).

The programs for A033671, there is no canonical definition to state claims against.
-/

/-! ## A033671.P3588763690672586739

`A033658(n+1)-A033668(A033668(n)+1)`
-/

namespace A033671.P3588763690672586739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033658 (n + 1) - A033668 (A033668 n + 1).toNat

end

end A033671.P3588763690672586739

/-! ## A033671.P11337227570194572116

`A056964(a(n-1))` with `a(0)=59`
-/

namespace A033671.P11337227570194572116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [59] fun n a =>
  A056964 (a (n - 1)).toNat

end

end A033671.P11337227570194572116

/-! ## A033671.P17272702444141700712

`A004086(a(n-1))+a(n-1)` with `a(0)=59`
-/

namespace A033671.P17272702444141700712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [59] fun n a =>
  A004086 (a (n - 1)).toNat + a (n - 1)

end

end A033671.P17272702444141700712

/-!
# A033672: Trajectory of 69 under map x->x + (x-with-digits-reversed).

The programs for A033672, there is no canonical definition to state claims against.
-/

/-! ## A033672.P15557841153255286183

`A056964(a(n-1))` with `a(0)=69`
-/

namespace A033672.P15557841153255286183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [69] fun n a =>
  A056964 (a (n - 1)).toNat

end

end A033672.P15557841153255286183

/-! ## A033672.P17861315119584626946

`A004086(a(n-1))+a(n-1)` with `a(0)=69`
-/

namespace A033672.P17861315119584626946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [69] fun n a =>
  A004086 (a (n - 1)).toNat + a (n - 1)

end

end A033672.P17861315119584626946

/-!
# A033673: Trajectory of 79 under map x->x + (x-with-digits-reversed).

The programs for A033673, there is no canonical definition to state claims against.
-/

/-! ## A033673.P15395011407172728351

`A004086(a(n-1))+a(n-1)` with `a(0)=79`
-/

namespace A033673.P15395011407172728351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [79] fun n a =>
  A004086 (a (n - 1)).toNat + a (n - 1)

end

end A033673.P15395011407172728351

/-! ## A033673.P6613149311508481982

`A056964(a(n-1))` with `a(0)=79`
-/

namespace A033673.P6613149311508481982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [79] fun n a =>
  A056964 (a (n - 1)).toNat

end

end A033673.P6613149311508481982

/-!
# A033674: Trajectory of 99 under map x->x + (x-with-digits-reversed).

The programs for A033674, there is no canonical definition to state claims against.
-/

/-! ## A033674.P13722207291307012833

`A033659(n+1)`
-/

namespace A033674.P13722207291307012833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033659 (n + 1)

end

end A033674.P13722207291307012833

/-! ## A033674.P18290378330598900684

`A033651(n+2)`
-/

namespace A033674.P18290378330598900684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033651 (n + 2)

end

end A033674.P18290378330598900684

/-! ## A033674.P14323325345969335054

`record[lcm(11, A033651(n))]`
-/

namespace A033674.P14323325345969335054
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 11 (A033651 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A033674.P14323325345969335054

/-! ## A033674.P11745420610853415523

`record[A033659(abs(1-n))]`
-/

namespace A033674.P11745420610853415523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033659 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A033674.P11745420610853415523

/-! ## A033674.P17230377540511149807

`record[A033651(abs(2-n))]`
-/

namespace A033674.P17230377540511149807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033651 |2 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A033674.P17230377540511149807

/-! ## A033674.P9898120982893528001

`∩[A033651(n), A033659(n)]`
-/

namespace A033674.P9898120982893528001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033651 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033659 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033674.P9898120982893528001

/-!
# A033676: Largest divisor of n <= sqrt(n).

The programs for A033676, there is no canonical definition to state claims against.
-/

/-! ## A033676.P4828879334433714486

`A162348(2*n+1)`
-/

namespace A033676.P4828879334433714486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162348 (2 * n + 1)

end

end A033676.P4828879334433714486

/-! ## A033676.P3847261258307370740

`(n+1)/A033677(n+1)`
-/

namespace A033676.P3847261258307370740
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A033677 (n + 1) : ℚ)

end

end A033676.P3847261258307370740

/-! ## A033676.P17399892143239412211

`(1+n)/(A248835(1+n)-(n+1))`
-/

namespace A033676.P17399892143239412211
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 + n : ℚ) / (A248835 (1 + n) - (n + 1 : ℤ) : ℚ)

end

end A033676.P17399892143239412211

/-! ## A033676.P2163355981522346626

`(n+1)/(n+1-A398341(n+1))`
-/

namespace A033676.P2163355981522346626
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((n + 1 : ℤ) - A398341 (n + 1) : ℚ)

end

end A033676.P2163355981522346626

/-! ## A033676.P17765295380392010239

`A033677(n+1)-A056737(n+1)`
-/

namespace A033676.P17765295380392010239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033677 (n + 1) - A056737 (n + 1)

end

end A033676.P17765295380392010239

/-! ## A033676.P3645940758173037933

`A063655(n+1)-A033677(n+1)`
-/

namespace A033676.P3645940758173037933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063655 (n + 1) - A033677 (n + 1)

end

end A033676.P3645940758173037933

/-! ## A033676.P8519682584229922541

`A101322(n+1)-A398341(n+1)`
-/

namespace A033676.P8519682584229922541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101322 (n + 1) - A398341 (n + 1)

end

end A033676.P8519682584229922541

/-! ## A033676.P6223354301524349091

`A398341(n+1)-A220114(n+1)`
-/

namespace A033676.P6223354301524349091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398341 (n + 1) - A220114 (n + 1)

end

end A033676.P6223354301524349091

/-! ## A033676.P15179568841967101268

`(A063655(n+1)-A056737(n+1))/2`
-/

namespace A033676.P15179568841967101268
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A063655 (n + 1) - A056737 (n + 1) : ℚ) / 2

end

end A033676.P15179568841967101268

/-! ## A033676.P2202291909902267388

`A000720(A000040(A162348(n+1+n)))`
-/

namespace A033676.P2202291909902267388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A000040 (A162348 (n + 1 + n)).toNat).toNat

end

end A033676.P2202291909902267388

/-! ## A033676.P5801038788117799869

`A033677(A323728(n+1)-A033677(n+1)²)`
-/

namespace A033676.P5801038788117799869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033677 (A323728 (n + 1) - A033677 (n + 1) ^ 2).toNat

end

end A033676.P5801038788117799869

/-! ## A033676.P15928972240187584318

`A001414(n+1)+A092510(n+1)-A033677(n+1)`
-/

namespace A033676.P15928972240187584318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (n + 1) + (A092510 (n + 1) - A033677 (n + 1))

end

end A033676.P15928972240187584318

/-! ## A033676.P11985154987417658587

`A207375(∑[A169695(n)])`
-/

namespace A033676.P11985154987417658587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169695 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207375 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A033676.P11985154987417658587

/-! ## A033676.P15070561397576774360

`A161906(A094820(n+1))`
-/

namespace A033676.P15070561397576774360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161906 (A094820 (n + 1)).toNat

end

end A033676.P15070561397576774360

/-! ## A033676.P11906722737509572416

`A161906(∑[A038548(n+1)])`
-/

namespace A033676.P11906722737509572416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038548 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161906 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A033676.P11906722737509572416

/-! ## A033676.P3288468303423699883

`A161906(A091627(n+1)+1)`
-/

namespace A033676.P3288468303423699883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161906 (A091627 (n + 1) + 1).toNat

end

end A033676.P3288468303423699883

/-! ## A033676.P5114854686412831457

`A161906(A211275(2*(n+1)))`
-/

namespace A033676.P5114854686412831457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161906 (A211275 (2 * (n + 1))).toNat

end

end A033676.P5114854686412831457

/-! ## A033676.P15365053786772181154

`A161906(A161842(n+1)/2)`
-/

namespace A033676.P15365053786772181154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161906 (SequenceMachineLib.roundAway ((A161842 (n + 1) : ℚ) / 2)).toNat

end

end A033676.P15365053786772181154

/-! ## A033676.P1816139270037284631

`A161906(eq[A057427(n), A161906(n+1)])`
-/

namespace A033676.P1816139270037284631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161906 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161906 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A033676.P1816139270037284631

/-! ## A033676.P19584703908840866

`A027750(A038548(n+1)+A006218(n))`
-/

namespace A033676.P19584703908840866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027750 (A038548 (n + 1) + A006218 n).toNat

end

end A033676.P19584703908840866

/-!
# A033677: Smallest divisor of n >= sqrt(n).

The programs for A033677, there is no canonical definition to state claims against.
-/

/-! ## A033677.P6847667084774516681

`A162348(2*(n+1))`
-/

namespace A033677.P6847667084774516681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162348 (2 * (n + 1))

end

end A033677.P6847667084774516681

/-! ## A033677.P5517689456498751785

`(n+1)/A033676(n+1)`
-/

namespace A033677.P5517689456498751785
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A033676 (n + 1) : ℚ)

end

end A033677.P5517689456498751785

/-! ## A033677.P1742359886982772445

`A248835(1+n)-(n+1)`
-/

namespace A033677.P1742359886982772445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248835 (1 + n) - (n + 1 : ℤ)

end

end A033677.P1742359886982772445

/-! ## A033677.P12247972818201390884

`n+1-A398341(n+1)`
-/

namespace A033677.P12247972818201390884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A398341 (n + 1)

end

end A033677.P12247972818201390884

/-! ## A033677.P11633212215306353171

`gcd(n+1, A248835(n+1))`
-/

namespace A033677.P11633212215306353171
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A248835 (n + 1))

end

end A033677.P11633212215306353171

/-! ## A033677.P14134769848586306871

`(n+1)/A162348(Δ[n²])`
-/

namespace A033677.P14134769848586306871
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A162348 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ)

end

end A033677.P14134769848586306871

/-! ## A033677.P4492717066221915245

`sqrt(A139717(n+1)+1+n)`
-/

namespace A033677.P4492717066221915245
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A139717 (n + 1) + 1 + (n : ℤ) : ℝ)

end

end A033677.P4492717066221915245

/-! ## A033677.P15567661056666048623

`A056737(n+1)+A033676(n+1)`
-/

namespace A033677.P15567661056666048623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056737 (n + 1) + A033676 (n + 1)

end

end A033677.P15567661056666048623

/-! ## A033677.P29805856285311816

`A395409(n+1)+A003059(n+1)`
-/

namespace A033677.P29805856285311816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395409 (n + 1) + A003059 (n + 1)

end

end A033677.P29805856285311816

/-! ## A033677.P15022686129665498658

`A063655(n+1)-A033676(n+1)`
-/

namespace A033677.P15022686129665498658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063655 (n + 1) - A033676 (n + 1)

end

end A033677.P15022686129665498658

/-! ## A033677.P12766552126172124171

`gcd(A000027(n+1), A398341(n+1))`
-/

namespace A033677.P12766552126172124171
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000027 (n + 1)) (A398341 (n + 1))

end

end A033677.P12766552126172124171

/-! ## A033677.P12017439411662195302

`(A063655(n+1)+A056737(n+1))/2`
-/

namespace A033677.P12017439411662195302
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A063655 (n + 1) + A056737 (n + 1) : ℚ) / 2

end

end A033677.P12017439411662195302

/-! ## A033677.P11154937534144603430

`A001414(n+1)+A092510(n+1)-A033676(n+1)`
-/

namespace A033677.P11154937534144603430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (n + 1) + (A092510 (n + 1) - A033676 (n + 1))

end

end A033677.P11154937534144603430

/-! ## A033677.P4617882994347779357

`A395409(n+1)+A135034(n+1)`
-/

namespace A033677.P4617882994347779357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395409 (n + 1) + A135034 (n + 1)

end

end A033677.P4617882994347779357

/-! ## A033677.P7372315755189719017

`A207375(∑[A275437(n)])`
-/

namespace A033677.P7372315755189719017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275437 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207375 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A033677.P7372315755189719017

/-! ## A033677.P9164783924631235808

`A207375(∑[A169695(n+1)])`
-/

namespace A033677.P9164783924631235808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169695 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207375 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A033677.P9164783924631235808

/-! ## A033677.P9380799461891029263

`A207375(∑[A049240(n+1)+1])`
-/

namespace A033677.P9380799461891029263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049240 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207375 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A033677.P9380799461891029263

/-! ## A033677.P4875260253707233461

`A161908(A211275(2*n+1)+1)`
-/

namespace A033677.P4875260253707233461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161908 (A211275 (2 * n + 1) + 1).toNat

end

end A033677.P4875260253707233461

/-! ## A033677.P14044241828201031555

`(n+1)/A161906(A094820(n+1))`
-/

namespace A033677.P14044241828201031555
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A161906 (A094820 (n + 1)).toNat : ℚ)

end

end A033677.P14044241828201031555

/-! ## A033677.P5132292829837127330

`A210959(∑[∏{e}[n+1, #+1]])`
-/

namespace A033677.P5132292829837127330
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210959 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A033677.P5132292829837127330

/-!
# A033678: Number of labeled Eulerian graphs with n nodes.

The programs for A033678, there is no canonical definition to state claims against.
-/

/-! ## A033678.P4255406700819550919

`A228550(∑[n]+1)`
-/

namespace A033678.P4255406700819550919
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228550 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A033678.P4255406700819550919

/-! ## A033678.P16417141351437293843

`A228550(A000124(n))+A025469(n)`
-/

namespace A033678.P16417141351437293843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228550 (A000124 n).toNat + A025469 n

end

end A033678.P16417141351437293843

/-! ## A033678.P10341183458015704837

`gcd(A000038(n), A228550(A000124(n)))`
-/

namespace A033678.P10341183458015704837
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A228550 (A000124 n).toNat)

end

end A033678.P10341183458015704837

/-! ## A033678.P13368164934498153238

`lcm(A020985(n), A228550(A000124(n)))`
-/

namespace A033678.P13368164934498153238
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A228550 (A000124 n).toNat)

end

end A033678.P13368164934498153238

/-! ## A033678.P6144816326128001559

`and(A057428(n+1), A228550(A000124(n)))`
-/

namespace A033678.P6144816326128001559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A057428 (n + 1)) (A228550 (A000124 n).toNat)

end

end A033678.P6144816326128001559

/-!
# A033682: Numbers of the form (q^2+(q+1)^2)*(r^2+(r+1)^2), q,r >= 1.

The programs for A033682, there is no canonical definition to state claims against.
-/

/-! ## A033682.P14001356254745197153

`A120961(∏{e}[A240945(n+1), #])`
-/

namespace A033682.P14001356254745197153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240945 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120961 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p)

end

end A033682.P14001356254745197153

/-! ## A033682.P5568766825509989046

`A120961(record[Δ[A039712(n+1)]])`
-/

namespace A033682.P5568766825509989046
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039712 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120961 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A033682.P5568766825509989046

/-!
# A033683: a(n) = 1 if n is an odd square not divisible by 3, otherwise 0.

The programs for A033683, the canonical program `A033683.P11546619599251774441` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A033683 has offset 0).

The definition of A033683 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A033684, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A033683.P11546619599251774441

`A033684(n)*A000035(n)`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A033683

/-- `A033684(n)*A000035(n)` -/
def P11546619599251774441.Spec : Prop :=
  ∀ n, P11546619599251774441.a n = A033683 n

theorem P11546619599251774441.correct : P11546619599251774441.Spec := by
  intro n
  simp only [A033683]

end A033683

/-! ## A033683.P10499709875599970584

`and(n, char[comp[3*n]²])`
-/

namespace A033683.P10499709875599970584
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land n (if ∃ j, f1 j = n then 1 else 0)

end

end A033683.P10499709875599970584

namespace A033683

/-- `and(n, char[comp[3*n]²])` -/
def P10499709875599970584.Spec : Prop :=
  ∀ n, (P10499709875599970584.a n : ℤ) = A033683 n

end A033683

/-! ## A033683.P8452646379296077464

`char[or(1, 3*n+1)²]`
-/

namespace A033683.P8452646379296077464
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (3 * n + 1) ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A033683.P8452646379296077464

namespace A033683

/-- `char[or(1, 3*n+1)²]` -/
def P8452646379296077464.Spec : Prop :=
  ∀ n, (P8452646379296077464.a n : ℤ) = A033683 n

end A033683

/-! ## A033683.P7899267560566577202

`char[Δ[n*gcd(2, n)²]²]`
-/

namespace A033683.P7899267560566577202
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Nat.gcd 2 n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f2 (n + 1) : ℤ) - (f2 n : ℤ)) ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A033683.P7899267560566577202

namespace A033683

/-- `char[Δ[n*gcd(2, n)²]²]` -/
def P7899267560566577202.Spec : Prop :=
  ∀ n, (P7899267560566577202.a n : ℤ) = A033683 n

end A033683

/-! ## A033683.P153796701358565371

`char[(gcd(6, n+1)²+n)²]`
-/

namespace A033683.P153796701358565371
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 6 (n + 1) ^ 2 + n) ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A033683.P153796701358565371

namespace A033683

/-- `char[(gcd(6, n+1)²+n)²]` -/
def P153796701358565371.Spec : Prop :=
  ∀ n, (P153796701358565371.a n : ℤ) = A033683 n

end A033683

/-! ## A033683.P15931150331501309804

`char[Δ[floor(3/2*n²)]²]`
-/

namespace A033683.P15931150331501309804
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(3 : ℚ) / 2 * (n ^ 2 : ℚ)⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A033683.P15931150331501309804

namespace A033683

/-- `char[Δ[floor(3/2*n²)]²]` -/
def P15931150331501309804.Spec : Prop :=
  ∀ n, (P15931150331501309804.a n : ℤ) = A033683 n

end A033683

/-! ## A033683.P3618701367899007374

`A045839(n)%2`
-/

namespace A033683.P3618701367899007374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A045839 n) 2

end

end A033683.P3618701367899007374

namespace A033683

/-- `A045839(n)%2` -/
def P3618701367899007374.Spec : Prop :=
  ∀ n, P3618701367899007374.a n = A033683 n

end A033683

/-! ## A033683.P3639624590420308481

`∑{d}[n, A133639(#)]`
-/

namespace A033683.P3639624590420308481
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A133639 d

end

end A033683.P3639624590420308481

namespace A033683

/-- `∑{d}[n, A133639(#)]` -/
def P3639624590420308481.Spec : Prop :=
  ∀ n, P3639624590420308481.a n = A033683 n

end A033683

/-! ## A033683.P12359517863586670859

`(A005929(n)/2)%2`
-/

namespace A033683.P12359517863586670859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A005929 n : ℚ) / 2)) 2

end

end A033683.P12359517863586670859

namespace A033683

/-- `(A005929(n)/2)%2` -/
def P12359517863586670859.Spec : Prop :=
  ∀ n, P12359517863586670859.a n = A033683 n

end A033683

/-! ## A033683.P7115697073216341087

`A033684(A091685(n))`
-/

namespace A033683.P7115697073216341087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033684 (A091685 n).toNat

end

end A033683.P7115697073216341087

namespace A033683

/-- `A033684(A091685(n))` -/
def P7115697073216341087.Spec : Prop :=
  ∀ n, P7115697073216341087.a n = A033683 n

end A033683

/-! ## A033683.P3507464100521731207

`A109017(A038759(n))`
-/

namespace A033683.P3507464100521731207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109017 (A038759 n).toNat

end

end A033683.P3507464100521731207

namespace A033683

/-- `A109017(A038759(n))` -/
def P3507464100521731207.Spec : Prop :=
  ∀ n, P3507464100521731207.a n = A033683 n

end A033683

/-! ## A033683.P12752137281380280555

`A098108(A091684(n))`
-/

namespace A033683.P12752137281380280555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098108 (A091684 n).toNat

end

end A033683.P12752137281380280555

namespace A033683

/-- `A098108(A091684(n))` -/
def P12752137281380280555.Spec : Prop :=
  ∀ n, P12752137281380280555.a n = A033683 n

end A033683

/-! ## A033683.P12246141600769380933

`A033684(A187601(n))`
-/

namespace A033683.P12246141600769380933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033684 (A187601 n).toNat

end

end A033683.P12246141600769380933

namespace A033683

/-- `A033684(A187601(n))` -/
def P12246141600769380933.Spec : Prop :=
  ∀ n, P12246141600769380933.a n = A033683 n

end A033683

/-! ## A033683.P17661350750122818677

`A033684(A190621(n))`
-/

namespace A033683.P17661350750122818677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033684 (A190621 n).toNat

end

end A033683.P17661350750122818677

namespace A033683

/-- `A033684(A190621(n))` -/
def P17661350750122818677.Spec : Prop :=
  ∀ n, P17661350750122818677.a n = A033683 n

end A033683

/-! ## A033683.P10003987364322754165

`A033684(A195312(n))`
-/

namespace A033683.P10003987364322754165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033684 (A195312 n).toNat

end

end A033683.P10003987364322754165

namespace A033683

/-- `A033684(A195312(n))` -/
def P10003987364322754165.Spec : Prop :=
  ∀ n, P10003987364322754165.a n = A033683 n

end A033683

/-! ## A033683.P12320412256153538461

`A033684(A261671(n))`
-/

namespace A033683.P12320412256153538461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033684 (A261671 n).toNat

end

end A033683.P12320412256153538461

namespace A033683

/-- `A033684(A261671(n))` -/
def P12320412256153538461.Spec : Prop :=
  ∀ n, P12320412256153538461.a n = A033683 n

end A033683

/-! ## A033683.P110255654251195067

`A033684(n*A000035(n))`
-/

namespace A033683.P110255654251195067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033684 ((n : ℤ) * A000035 n).toNat

end

end A033683.P110255654251195067

namespace A033683

/-- `A033684(n*A000035(n))` -/
def P110255654251195067.Spec : Prop :=
  ∀ n, P110255654251195067.a n = A033683 n

end A033683

/-! ## A033683.P4794504123515313127

`A007877(n*A033684(n))`
-/

namespace A033683.P4794504123515313127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007877 ((n : ℤ) * A033684 n).toNat

end

end A033683.P4794504123515313127

namespace A033683

/-- `A007877(n*A033684(n))` -/
def P4794504123515313127.Spec : Prop :=
  ∀ n, P4794504123515313127.a n = A033683 n

end A033683

/-! ## A033683.P728020646799969581

`A010873(n*A033684(n))`
-/

namespace A033683.P728020646799969581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010873 ((n : ℤ) * A033684 n).toNat

end

end A033683.P728020646799969581

namespace A033683

/-- `A010873(n*A033684(n))` -/
def P728020646799969581.Spec : Prop :=
  ∀ n, P728020646799969581.a n = A033683 n

end A033683

/-!
# A033684: 1 iff n is a square not divisible by 3.

The programs for A033684, the canonical program `A033684.P12387515410583376305` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A033684 has offset 0).

The definition of A033684 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A010052, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A033684.P12387515410583376305

`A010052(n)*A011655(n)`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A033684

/-- `A010052(n)*A011655(n)` -/
def P12387515410583376305.Spec : Prop :=
  ∀ n, P12387515410583376305.a n = A033684 n

theorem P12387515410583376305.correct : P12387515410583376305.Spec := by
  intro n
  simp only [A033684]

end A033684

/-! ## A033684.P2074246203423780519

`char[comp[3*n]²]`
-/

namespace A033684.P2074246203423780519
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A033684.P2074246203423780519

namespace A033684

/-- `char[comp[3*n]²]` -/
def P2074246203423780519.Spec : Prop :=
  ∀ n, (P2074246203423780519.a n : ℤ) = A033684 n

end A033684

/-! ## A033684.P225263523569060547

`n%3*char[n²]`
-/

namespace A033684.P225263523569060547
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 3 * (if ∃ j, f1 j = n then 1 else 0)

end

end A033684.P225263523569060547

namespace A033684

/-- `n%3*char[n²]` -/
def P225263523569060547.Spec : Prop :=
  ∀ n, (P225263523569060547.a n : ℤ) = A033684 n

end A033684

/-! ## A033684.P5494488021507881888

`and(n²%3, char[n²])`
-/

namespace A033684.P5494488021507881888
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land (n ^ 2 % 3) (if ∃ j, f1 j = n then 1 else 0)

end

end A033684.P5494488021507881888

namespace A033684

/-- `and(n²%3, char[n²])` -/
def P5494488021507881888.Spec : Prop :=
  ∀ n, (P5494488021507881888.a n : ℤ) = A033684 n

end A033684

/-! ## A033684.P3309019816588805563

`and(char[n²], comp[or(3, n)])`
-/

namespace A033684.P3309019816588805563
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 3 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land (if ∃ j, f1 j = n then 1 else 0) (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

end

end A033684.P3309019816588805563

namespace A033684

/-- `and(char[n²], comp[or(3, n)])` -/
def P3309019816588805563.Spec : Prop :=
  ∀ n, (P3309019816588805563.a n : ℤ) = A033684 n

end A033684

/-! ## A033684.P3899561721867658130

`Δ[C(ceil(sqrt(n)), 2)]²%3`
-/

namespace A033684.P3899561721867658130
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ⌈Real.sqrt (n : ℝ)⌉.toNat 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (((f1 (n + 1) : ℤ) - (f1 n : ℤ)) ^ 2) 3

end

end A033684.P3899561721867658130

namespace A033684

/-- `Δ[C(ceil(sqrt(n)), 2)]²%3` -/
def P3899561721867658130.Spec : Prop :=
  ∀ n, P3899561721867658130.a n = A033684 n

end A033684

/-! ## A033684.P2880673077131246256

`and(ceil(8*n/3), char[n²])`
-/

namespace A033684.P2880673077131246256
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ⌈8 * ((n : ℚ) / 3)⌉ ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A033684.P2880673077131246256

namespace A033684

/-- `and(ceil(8*n/3), char[n²])` -/
def P2880673077131246256.Spec : Prop :=
  ∀ n, P2880673077131246256.a n = A033684 n

end A033684

/-! ## A033684.P17887268749622461323

`A045833(n)%2`
-/

namespace A033684.P17887268749622461323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A045833 n) 2

end

end A033684.P17887268749622461323

namespace A033684

/-- `A045833(n)%2` -/
def P17887268749622461323.Spec : Prop :=
  ∀ n, P17887268749622461323.a n = A033684 n

end A033684

/-! ## A033684.P7179931280962177639

`A037213(n)²%3`
-/

namespace A033684.P7179931280962177639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A037213 n ^ 2) 3

end

end A033684.P7179931280962177639

namespace A033684

/-- `A037213(n)²%3` -/
def P7179931280962177639.Spec : Prop :=
  ∀ n, P7179931280962177639.a n = A033684 n

end A033684

/-! ## A033684.P14742912275472349818

`and(2, A233673(n))/2`
-/

namespace A033684.P14742912275472349818
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land 2 (A233673 n) : ℚ) / 2

end

end A033684.P14742912275472349818

namespace A033684

/-- `and(2, A233673(n))/2` -/
def P14742912275472349818.Spec : Prop :=
  ∀ n, P14742912275472349818.a n = (A033684 n : ℚ)

end A033684

/-! ## A033684.P6693604876552853363

`and(2, A256014(n))/2`
-/

namespace A033684.P6693604876552853363
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land 2 (A256014 n) : ℚ) / 2

end

end A033684.P6693604876552853363

namespace A033684

/-- `and(2, A256014(n))/2` -/
def P6693604876552853363.Spec : Prop :=
  ∀ n, P6693604876552853363.a n = (A033684 n : ℚ)

end A033684

/-! ## A033684.P10910686414175721973

`char[A189707(n+1)]*char[n²]`
-/

namespace A033684.P10910686414175721973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189707 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f1 j = (n : ℤ) then 1 else 0) * (if ∃ j, f2 j = n then 1 else 0)

end

end A033684.P10910686414175721973

namespace A033684

/-- `char[A189707(n+1)]*char[n²]` -/
def P10910686414175721973.Spec : Prop :=
  ∀ n, (P10910686414175721973.a n : ℤ) = A033684 n

end A033684

/-! ## A033684.P5338420381778028904

`A011655(A037213(n))`
-/

namespace A033684.P5338420381778028904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011655 (A037213 n).toNat

end

end A033684.P5338420381778028904

namespace A033684

/-- `A011655(A037213(n))` -/
def P5338420381778028904.Spec : Prop :=
  ∀ n, P5338420381778028904.a n = A033684 n

end A033684

/-! ## A033684.P778923075404022385

`A014707(A258034(n))`
-/

namespace A033684.P778923075404022385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014707 (A258034 n).toNat

end

end A033684.P778923075404022385

namespace A033684

/-- `A014707(A258034(n))` -/
def P778923075404022385.Spec : Prop :=
  ∀ n, P778923075404022385.a n = A033684 n

end A033684

/-! ## A033684.P13629453560027804628

`A010872(n*A010052(n))`
-/

namespace A033684.P13629453560027804628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010872 ((n : ℤ) * A010052 n).toNat

end

end A033684.P13629453560027804628

namespace A033684

/-- `A010872(n*A010052(n))` -/
def P13629453560027804628.Spec : Prop :=
  ∀ n, P13629453560027804628.a n = A033684 n

end A033684

/-! ## A033684.P13719125144383293041

`A011655(n*A010052(n))`
-/

namespace A033684.P13719125144383293041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011655 ((n : ℤ) * A010052 n).toNat

end

end A033684.P13719125144383293041

namespace A033684

/-- `A011655(n*A010052(n))` -/
def P13719125144383293041.Spec : Prop :=
  ∀ n, P13719125144383293041.a n = A033684 n

end A033684

/-! ## A033684.P1762651555104173961

`A084091(n*A010052(n))`
-/

namespace A033684.P1762651555104173961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084091 ((n : ℤ) * A010052 n).toNat

end

end A033684.P1762651555104173961

namespace A033684

/-- `A084091(n*A010052(n))` -/
def P1762651555104173961.Spec : Prop :=
  ∀ n, P1762651555104173961.a n = A033684 n

end A033684

/-! ## A033684.P1685967047349498547

`A101000(n*A010052(n))`
-/

namespace A033684.P1685967047349498547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101000 ((n : ℤ) * A010052 n).toNat

end

end A033684.P1685967047349498547

namespace A033684

/-- `A101000(n*A010052(n))` -/
def P1685967047349498547.Spec : Prop :=
  ∀ n, P1685967047349498547.a n = A033684 n

end A033684

/-! ## A033684.P14007184840249871378

`A102283(n*A010052(n))`
-/

namespace A033684.P14007184840249871378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102283 ((n : ℤ) * A010052 n).toNat

end

end A033684.P14007184840249871378

namespace A033684

/-- `A102283(n*A010052(n))` -/
def P14007184840249871378.Spec : Prop :=
  ∀ n, P14007184840249871378.a n = A033684 n

end A033684

/-! ## A033684.P7560397534999084577

`A112690(n*A010052(n))`
-/

namespace A033684.P7560397534999084577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112690 ((n : ℤ) * A010052 n).toNat

end

end A033684.P7560397534999084577

namespace A033684

/-- `A112690(n*A010052(n))` -/
def P7560397534999084577.Spec : Prop :=
  ∀ n, P7560397534999084577.a n = A033684 n

end A033684

/-!
# A033685: Theta series of hexagonal lattice A_2 with respect to deep hole.

The programs for A033685, the canonical program `A033685.P5820918837906960133` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A033685 has offset 0).

The definition of A033685 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A045833, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A033685.P5820918837906960133

`3*A045833(n)`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A033685

/-- `3*A045833(n)` -/
def P5820918837906960133.Spec : Prop :=
  ∀ n, P5820918837906960133.a n = A033685 n

theorem P5820918837906960133.correct : P5820918837906960133.Spec := by
  intro n
  simp only [A033685]

end A033685

/-! ## A033685.P7650385957746693717

`A217219(n)/2`
-/

namespace A033685.P7650385957746693717
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A217219 n : ℚ) / 2

end

end A033685.P7650385957746693717

namespace A033685

/-- `A217219(n)/2` -/
def P7650385957746693717.Spec : Prop :=
  ∀ n, P7650385957746693717.a n = (A033685 n : ℚ)

theorem P7650385957746693717.correct : P7650385957746693717.Spec := by
  intro n
  simp only [A033685, Nat.add_sub_cancel, A033685.P7650385957746693717.a, A033685.P5820918837906960133.a, A045833, A045833.P12838744438603727675.f1, A045833.P12838744438603727675.a, A217219, A217219.P6754064516663132838.a, A091684, A091684.P4172566819234303247.a, A102283, A102283.P18218274576938374007.a, A011655, A011655.P15232422005463079339.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A033685

/-! ## A033685.P17120408986187305215

`3*∑{d}[n, (n*#)^3]%9`
-/

namespace A033685.P17120408986187305215
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * ((∑ d ∈ Nat.divisors (f1 n), (n * d) ^ 3) % 9)

end

end A033685.P17120408986187305215

namespace A033685

/-- `3*∑{d}[n, (n*#)^3]%9` -/
def P17120408986187305215.Spec : Prop :=
  ∀ n, (P17120408986187305215.a n : ℤ) = A033685 n

end A033685

/-! ## A033685.P998933307259728703

`lcm(n%3, A005928(n))`
-/

namespace A033685.P998933307259728703
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((n % 3 : ℕ) : ℤ) (A005928 n)

end

end A033685.P998933307259728703

namespace A033685

/-- `lcm(n%3, A005928(n))` -/
def P998933307259728703.Spec : Prop :=
  ∀ n, (P998933307259728703.a n : ℤ) = A033685 n

end A033685

/-! ## A033685.P4422601823501132513

`abs(A132973(n))*val((∑[n]+1)%3, 2)`
-/

namespace A033685.P4422601823501132513
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A132973 n| * (SequenceMachineLib.valuation ((∑ j ∈ Finset.range (n + 1), f1 j + 1) % 3) 2 : ℤ)

end

end A033685.P4422601823501132513

namespace A033685

/-- `abs(A132973(n))*val((∑[n]+1)%3, 2)` -/
def P4422601823501132513.Spec : Prop :=
  ∀ n, P4422601823501132513.a n = A033685 n

end A033685

/-! ## A033685.P9228881696253999234

`A001281(A217219(n))`
-/

namespace A033685.P9228881696253999234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A217219 n).toNat

end

end A033685.P9228881696253999234

namespace A033685

/-- `A001281(A217219(n))` -/
def P9228881696253999234.Spec : Prop :=
  ∀ n, P9228881696253999234.a n = A033685 n

end A033685

/-! ## A033685.P17259799919974538393

`A004016(n)-A113062(n)`
-/

namespace A033685.P17259799919974538393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004016 n - A113062 n

end

end A033685.P17259799919974538393

namespace A033685

/-- `A004016(n)-A113062(n)` -/
def P17259799919974538393.Spec : Prop :=
  ∀ n, P17259799919974538393.a n = A033685 n

end A033685

/-! ## A033685.P9918151142131732360

`A010872(n)*A113062(n)`
-/

namespace A033685.P9918151142131732360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010872 n * A113062 n

end

end A033685.P9918151142131732360

namespace A033685

/-- `A010872(n)*A113062(n)` -/
def P9918151142131732360.Spec : Prop :=
  ∀ n, P9918151142131732360.a n = A033685 n

end A033685

/-! ## A033685.P10793386023207113494

`A011655(n)*A113062(n)`
-/

namespace A033685.P10793386023207113494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011655 n * A113062 n

end

end A033685.P10793386023207113494

namespace A033685

/-- `A011655(n)*A113062(n)` -/
def P10793386023207113494.Spec : Prop :=
  ∀ n, P10793386023207113494.a n = A033685 n

end A033685

/-! ## A033685.P13443376946822044179

`A084091(n)*A107760(n)`
-/

namespace A033685.P13443376946822044179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084091 n * A107760 n

end

end A033685.P13443376946822044179

namespace A033685

/-- `A084091(n)*A107760(n)` -/
def P13443376946822044179.Spec : Prop :=
  ∀ n, P13443376946822044179.a n = A033685 n

end A033685

/-! ## A033685.P4583722139421102010

`A084091(n)*A113062(n)`
-/

namespace A033685.P4583722139421102010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084091 n * A113062 n

end

end A033685.P4583722139421102010

namespace A033685

/-- `A084091(n)*A113062(n)` -/
def P4583722139421102010.Spec : Prop :=
  ∀ n, P4583722139421102010.a n = A033685 n

end A033685

/-! ## A033685.P11277905166873919576

`A101000(n)*A113062(n)`
-/

namespace A033685.P11277905166873919576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101000 n * A113062 n

end

end A033685.P11277905166873919576

namespace A033685

/-- `A101000(n)*A113062(n)` -/
def P11277905166873919576.Spec : Prop :=
  ∀ n, P11277905166873919576.a n = A033685 n

end A033685

/-! ## A033685.P11183505793552486972

`A102283(n)*A113062(n)`
-/

namespace A033685.P11183505793552486972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102283 n * A113062 n

end

end A033685.P11183505793552486972

namespace A033685

/-- `A102283(n)*A113062(n)` -/
def P11183505793552486972.Spec : Prop :=
  ∀ n, P11183505793552486972.a n = A033685 n

end A033685

/-! ## A033685.P149265750986175287

`A092220(n)*A226535(n)`
-/

namespace A033685.P149265750986175287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092220 n * A226535 n

end

end A033685.P149265750986175287

namespace A033685

/-- `A092220(n)*A226535(n)` -/
def P149265750986175287.Spec : Prop :=
  ∀ n, P149265750986175287.a n = A033685 n

end A033685

/-! ## A033685.P15888870323700879176

`A128834(n)*A226535(n)`
-/

namespace A033685.P15888870323700879176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128834 n * A226535 n

end

end A033685.P15888870323700879176

namespace A033685

/-- `A128834(n)*A226535(n)` -/
def P15888870323700879176.Spec : Prop :=
  ∀ n, P15888870323700879176.a n = A033685 n

end A033685

/-! ## A033685.P16781591097780755433

`A107760(n)%A267318(n)`
-/

namespace A033685.P16781591097780755433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A107760 n) (A267318 n)

end

end A033685.P16781591097780755433

namespace A033685

/-- `A107760(n)%A267318(n)` -/
def P16781591097780755433.Spec : Prop :=
  ∀ n, P16781591097780755433.a n = A033685 n

end A033685

/-! ## A033685.P15920138216777109026

`lcm(A005928(n), A010872(n))`
-/

namespace A033685.P15920138216777109026
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A005928 n) (A010872 n)

end

end A033685.P15920138216777109026

namespace A033685

/-- `lcm(A005928(n), A010872(n))` -/
def P15920138216777109026.Spec : Prop :=
  ∀ n, (P15920138216777109026.a n : ℤ) = A033685 n

end A033685

/-! ## A033685.P15640552431552947941

`lcm(A076452(n), A113062(n))`
-/

namespace A033685.P15640552431552947941
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A076452 n) (A113062 n)

end

end A033685.P15640552431552947941

namespace A033685

/-- `lcm(A076452(n), A113062(n))` -/
def P15640552431552947941.Spec : Prop :=
  ∀ n, (P15640552431552947941.a n : ℤ) = A033685 n

end A033685

/-! ## A033685.P5141969736945847848

`lcm(A084091(n), A132973(n))`
-/

namespace A033685.P5141969736945847848
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A084091 n) (A132973 n)

end

end A033685.P5141969736945847848

namespace A033685

/-- `lcm(A084091(n), A132973(n))` -/
def P5141969736945847848.Spec : Prop :=
  ∀ n, (P5141969736945847848.a n : ℤ) = A033685 n

end A033685

/-! ## A033685.P594754168776958008

`lcm(A101000(n), A226535(n))`
-/

namespace A033685.P594754168776958008
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A101000 n) (A226535 n)

end

end A033685.P594754168776958008

namespace A033685

/-- `lcm(A101000(n), A226535(n))` -/
def P594754168776958008.Spec : Prop :=
  ∀ n, (P594754168776958008.a n : ℤ) = A033685 n

end A033685

/-!
# A033686: One-ninth of theta series of A2[hole]^2.

The programs for A033686, the canonical program `A033686.P10800342706131622131` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A033686 has offset 0).

The definition of A033686 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A033686.P10800342706131622131

`A144615(n)/3`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A033686

/-- `A144615(n)/3` -/
def P10800342706131622131.Spec : Prop :=
  ∀ n, P10800342706131622131.a n = (A033686 n : ℚ)

end A033686

/-! ## A033686.P12935959641259040999

`(-1)^n*A134079(n)`
-/

namespace A033686.P12935959641259040999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A134079 n

end

end A033686.P12935959641259040999

namespace A033686

/-- `(-1)^n*A134079(n)` -/
def P12935959641259040999.Spec : Prop :=
  ∀ n, P12935959641259040999.a n = A033686 n

end A033686

/-! ## A033686.P2607869145382770423

`A000203(3*n+2)/3`
-/

namespace A033686.P2607869145382770423
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (3 * n + 2) : ℚ) / 3

end

end A033686.P2607869145382770423

namespace A033686

/-- `A000203(3*n+2)/3` -/
def P2607869145382770423.Spec : Prop :=
  ∀ n, P2607869145382770423.a n = (A033686 n : ℚ)

end A033686

/-! ## A033686.P5604568266598498675

`∑{d}[3*n+2, #/3]`
-/

namespace A033686.P5604568266598498675
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n + 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℚ) / 3

end

end A033686.P5604568266598498675

namespace A033686

/-- `∑{d}[3*n+2, #/3]` -/
def P5604568266598498675.Spec : Prop :=
  ∀ n, P5604568266598498675.a n = (A033686 n : ℚ)

end A033686

/-! ## A033686.P243675736099675359

`∑{d}[3+a(n-1), #]/3` with `a(0)=2`
-/

namespace A033686.P243675736099675359
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2] fun n f1 =>
  3 + f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℚ) / 3

end

end A033686.P243675736099675359

namespace A033686

/-- `∑{d}[3+a(n-1), #]/3` -/
def P243675736099675359.Spec : Prop :=
  ∀ n, P243675736099675359.a n = (A033686 n : ℚ)

end A033686

/-! ## A033686.P3263950893938451819

`abs(A134079(n))`
-/

namespace A033686.P3263950893938451819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A134079 n|

end

end A033686.P3263950893938451819

namespace A033686

/-- `abs(A134079(n))` -/
def P3263950893938451819.Spec : Prop :=
  ∀ n, P3263950893938451819.a n = A033686 n

end A033686

/-! ## A033686.P16934254847450148876

`gcd(A000038(n), A134079(n))`
-/

namespace A033686.P16934254847450148876
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A134079 n)

end

end A033686.P16934254847450148876

namespace A033686

/-- `gcd(A000038(n), A134079(n))` -/
def P16934254847450148876.Spec : Prop :=
  ∀ n, (P16934254847450148876.a n : ℤ) = A033686 n

end A033686

/-! ## A033686.P7846638095209082579

`lcm(A000034(n), A134079(n))`
-/

namespace A033686.P7846638095209082579
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000034 n) (A134079 n)

end

end A033686.P7846638095209082579

namespace A033686

/-- `lcm(A000034(n), A134079(n))` -/
def P7846638095209082579.Spec : Prop :=
  ∀ n, (P7846638095209082579.a n : ℤ) = A033686 n

end A033686

/-! ## A033686.P12063551914357621402

`A145394(3*n+2)`
-/

namespace A033686.P12063551914357621402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145394 (3 * n + 2)

end

end A033686.P12063551914357621402

namespace A033686

/-- `A145394(3*n+2)` -/
def P12063551914357621402.Spec : Prop :=
  ∀ n, P12063551914357621402.a n = A033686 n

end A033686

/-! ## A033686.P18252462885317189480

`A051176(∑{d}[3*n+2, #])`
-/

namespace A033686.P18252462885317189480
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051176 (∑ d ∈ Nat.divisors (f1 n), d)

end

end A033686.P18252462885317189480

namespace A033686

/-- `A051176(∑{d}[3*n+2, #])` -/
def P18252462885317189480.Spec : Prop :=
  ∀ n, P18252462885317189480.a n = A033686 n

end A033686

/-! ## A033686.P714142018340673004

`A002264(A144615(n))`
-/

namespace A033686.P714142018340673004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A144615 n).toNat

end

end A033686.P714142018340673004

namespace A033686

/-- `A002264(A144615(n))` -/
def P714142018340673004.Spec : Prop :=
  ∀ n, P714142018340673004.a n = A033686 n

end A033686

/-! ## A033686.P2214940915231932936

`A341307(A144615(n)-1)`
-/

namespace A033686.P2214940915231932936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341307 (A144615 n - 1).toNat

end

end A033686.P2214940915231932936

namespace A033686

/-- `A341307(A144615(n)-1)` -/
def P2214940915231932936.Spec : Prop :=
  ∀ n, P2214940915231932936.a n = A033686 n

end A033686

/-! ## A033686.P14160648155873371051

`A002264(A000203(3*n+2))`
-/

namespace A033686.P14160648155873371051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A000203 (3 * n + 2)).toNat

end

end A033686.P14160648155873371051

namespace A033686

/-- `A002264(A000203(3*n+2))` -/
def P14160648155873371051.Spec : Prop :=
  ∀ n, P14160648155873371051.a n = A033686 n

end A033686

/-! ## A033686.P4404531377474203149

`A175676(∑{d}[A008585(n)+2, #])`
-/

namespace A033686.P4404531377474203149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175676 (∑ d ∈ Nat.divisors (f1 n).natAbs, d)

end

end A033686.P4404531377474203149

namespace A033686

/-- `A175676(∑{d}[A008585(n)+2, #])` -/
def P4404531377474203149.Spec : Prop :=
  ∀ n, P4404531377474203149.a n = A033686 n

end A033686

/-! ## A033686.P4737070437685707885

`A109595(A000203(2*n+n+2))`
-/

namespace A033686.P4737070437685707885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109595 (A000203 (2 * n + (n + 2))).toNat

end

end A033686.P4737070437685707885

namespace A033686

/-- `A109595(A000203(2*n+n+2))` -/
def P4737070437685707885.Spec : Prop :=
  ∀ n, P4737070437685707885.a n = A033686 n

end A033686

/-! ## A033686.P1919625596215661404

`A051176(A000203(A145064(3*n)))`
-/

namespace A033686.P1919625596215661404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051176 (A000203 (A145064 (3 * n)).toNat).toNat

end

end A033686.P1919625596215661404

namespace A033686

/-- `A051176(A000203(A145064(3*n)))` -/
def P1919625596215661404.Spec : Prop :=
  ∀ n, P1919625596215661404.a n = A033686 n

end A033686

/-! ## A033686.P12637989185199633884

`A285870(A000203(A165355(2*n+1)))`
-/

namespace A033686.P12637989185199633884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285870 (A000203 (A165355 (2 * n + 1)).toNat).toNat

end

end A033686.P12637989185199633884

namespace A033686

/-- `A285870(A000203(A165355(2*n+1)))` -/
def P12637989185199633884.Spec : Prop :=
  ∀ n, P12637989185199633884.a n = A033686 n

end A033686

/-! ## A033686.P10970034232160671006

`∑{#}[n, A033687(#)*A033687(n-#)]`
-/

namespace A033686.P10970034232160671006
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A033687 k * A033687 (n - k)

end

end A033686.P10970034232160671006

namespace A033686

/-- `∑{#}[n, A033687(#)*A033687(n-#)]` -/
def P10970034232160671006.Spec : Prop :=
  ∀ n, P10970034232160671006.a n = A033686 n

end A033686

/-! ## A033686.P2531048087152957327

`A341307(A341307(A242874(2*n+n+2)))`
-/

namespace A033686.P2531048087152957327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341307 (A341307 (A242874 (2 * n + (n + 2))).toNat).toNat

end

end A033686.P2531048087152957327

namespace A033686

/-- `A341307(A341307(A242874(2*n+n+2)))` -/
def P2531048087152957327.Spec : Prop :=
  ∀ n, P2531048087152957327.a n = A033686 n

end A033686

/-!
# A033687: Theta series of hexagonal lattice A_2 with respect to deep hole divided by 3.

The programs for A033687, the canonical program `A033687.P2538927358754509175` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A033687 has offset 0).

The definition of A033687 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002324, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A033687.P2538927358754509175

`A002324(3*n+1)`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A033687

/-- `A002324(3*n+1)` -/
def P2538927358754509175.Spec : Prop :=
  ∀ n, P2538927358754509175.a n = A033687 n

theorem P2538927358754509175.correct : P2538927358754509175.Spec := by
  intro n
  simp only [A033687]

end A033687

/-! ## A033687.P16473045529507728591

`abs(A227696(n))`
-/

namespace A033687.P16473045529507728591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A227696 n|

end

end A033687.P16473045529507728591

namespace A033687

/-- `abs(A227696(n))` -/
def P16473045529507728591.Spec : Prop :=
  ∀ n, P16473045529507728591.a n = A033687 n

end A033687

/-! ## A033687.P9969447183061720379

`A005882(n)/3`
-/

namespace A033687.P9969447183061720379
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005882 n : ℚ) / 3

end

end A033687.P9969447183061720379

namespace A033687

/-- `A005882(n)/3` -/
def P9969447183061720379.Spec : Prop :=
  ∀ n, P9969447183061720379.a n = (A033687 n : ℚ)

end A033687

/-! ## A033687.P10154013559440416517

`A138806(3*n+1)`
-/

namespace A033687.P10154013559440416517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138806 (3 * n + 1)

end

end A033687.P10154013559440416517

namespace A033687

/-- `A138806(3*n+1)` -/
def P10154013559440416517.Spec : Prop :=
  ∀ n, P10154013559440416517.a n = A033687 n

end A033687

/-! ## A033687.P14023395399742892177

`A002264(A005882(n))`
-/

namespace A033687.P14023395399742892177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A005882 n).toNat

end

end A033687.P14023395399742892177

namespace A033687

/-- `A002264(A005882(n))` -/
def P14023395399742892177.Spec : Prop :=
  ∀ n, P14023395399742892177.a n = A033687 n

end A033687

/-! ## A033687.P1168362984123450525

`A008611(A005882(n)+1)`
-/

namespace A033687.P1168362984123450525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (A005882 n + 1).toNat

end

end A033687.P1168362984123450525

namespace A033687

/-- `A008611(A005882(n)+1)` -/
def P1168362984123450525.Spec : Prop :=
  ∀ n, P1168362984123450525.a n = A033687 n

end A033687

/-! ## A033687.P5472764117351583349

`A157685(A005882(n)+1)`
-/

namespace A033687.P5472764117351583349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157685 (A005882 n + 1).toNat

end

end A033687.P5472764117351583349

namespace A033687

/-- `A157685(A005882(n)+1)` -/
def P5472764117351583349.Spec : Prop :=
  ∀ n, P5472764117351583349.a n = A033687 n

end A033687

/-! ## A033687.P17959717814984113403

`A008615(2*A005882(n))`
-/

namespace A033687.P17959717814984113403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (2 * A005882 n).toNat

end

end A033687.P17959717814984113403

namespace A033687

/-- `A008615(2*A005882(n))` -/
def P17959717814984113403.Spec : Prop :=
  ∀ n, P17959717814984113403.a n = A033687 n

end A033687

/-! ## A033687.P9267455084922058641

`A033999(n)*A227696(n)`
-/

namespace A033687.P9267455084922058641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A227696 n

end

end A033687.P9267455084922058641

namespace A033687

/-- `A033999(n)*A227696(n)` -/
def P9267455084922058641.Spec : Prop :=
  ∀ n, P9267455084922058641.a n = A033687 n

end A033687

/-! ## A033687.P4291900143367962085

`A129576(n)/A010684(n)`
-/

namespace A033687.P4291900143367962085
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A129576 n : ℚ) / (A010684 n : ℚ)

end

end A033687.P4291900143367962085

namespace A033687

/-- `A129576(n)/A010684(n)` -/
def P4291900143367962085.Spec : Prop :=
  ∀ n, P4291900143367962085.a n = (A033687 n : ℚ)

end A033687

/-! ## A033687.P1586038382150386924

`A129576(n)/A053381(n)`
-/

namespace A033687.P1586038382150386924
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A129576 n : ℚ) / (A053381 n : ℚ)

end

end A033687.P1586038382150386924

namespace A033687

/-- `A129576(n)/A053381(n)` -/
def P1586038382150386924.Spec : Prop :=
  ∀ n, P1586038382150386924.a n = (A033687 n : ℚ)

end A033687

/-! ## A033687.P9863383036582039221

`A129576(n)/A056753(n)`
-/

namespace A033687.P9863383036582039221
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A129576 n : ℚ) / (A056753 n : ℚ)

end

end A033687.P9863383036582039221

namespace A033687

/-- `A129576(n)/A056753(n)` -/
def P9863383036582039221.Spec : Prop :=
  ∀ n, P9863383036582039221.a n = (A033687 n : ℚ)

end A033687

/-! ## A033687.P6828213406852088659

`A122861(n)/A176563(n)`
-/

namespace A033687.P6828213406852088659
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A122861 n : ℚ) / (A176563 n : ℚ)

end

end A033687.P6828213406852088659

namespace A033687

/-- `A122861(n)/A176563(n)` -/
def P6828213406852088659.Spec : Prop :=
  ∀ n, P6828213406852088659.a n = (A033687 n : ℚ)

end A033687

/-! ## A033687.P624477807125805846

`gcd(A000038(n), A227696(n))`
-/

namespace A033687.P624477807125805846
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A227696 n)

end

end A033687.P624477807125805846

namespace A033687

/-- `gcd(A000038(n), A227696(n))` -/
def P624477807125805846.Spec : Prop :=
  ∀ n, (P624477807125805846.a n : ℤ) = A033687 n

end A033687

/-! ## A033687.P8903223535385791438

`lcm(A001492(n), A227696(n))`
-/

namespace A033687.P8903223535385791438
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A001492 n) (A227696 n)

end

end A033687.P8903223535385791438

namespace A033687

/-- `lcm(A001492(n), A227696(n))` -/
def P8903223535385791438.Spec : Prop :=
  ∀ n, (P8903223535385791438.a n : ℤ) = A033687 n

end A033687

/-! ## A033687.P7042744104196973367

`A227696(n)*A309873(n+1)`
-/

namespace A033687.P7042744104196973367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227696 n * A309873 (n + 1)

end

end A033687.P7042744104196973367

namespace A033687

/-- `A227696(n)*A309873(n+1)` -/
def P7042744104196973367.Spec : Prop :=
  ∀ n, P7042744104196973367.a n = A033687 n

end A033687

/-! ## A033687.P10280051860483022412

`A129576(n)/A037227(n+1)`
-/

namespace A033687.P10280051860483022412
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A129576 n : ℚ) / (A037227 (n + 1) : ℚ)

end

end A033687.P10280051860483022412

namespace A033687

/-- `A129576(n)/A037227(n+1)` -/
def P10280051860483022412.Spec : Prop :=
  ∀ n, P10280051860483022412.a n = (A033687 n : ℚ)

end A033687

/-! ## A033687.P17642851178426794654

`A129576(n)/A038712(n+1)`
-/

namespace A033687.P17642851178426794654
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A129576 n : ℚ) / (A038712 (n + 1) : ℚ)

end

end A033687.P17642851178426794654

namespace A033687

/-- `A129576(n)/A038712(n+1)` -/
def P17642851178426794654.Spec : Prop :=
  ∀ n, P17642851178426794654.a n = (A033687 n : ℚ)

end A033687

/-! ## A033687.P14210718756666834159

`A129576(n)/A090740(n+1)`
-/

namespace A033687.P14210718756666834159
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A129576 n : ℚ) / (A090740 (n + 1) : ℚ)

end

end A033687.P14210718756666834159

namespace A033687

/-- `A129576(n)/A090740(n+1)` -/
def P14210718756666834159.Spec : Prop :=
  ∀ n, P14210718756666834159.a n = (A033687 n : ℚ)

end A033687

/-! ## A033687.P14118810829273503772

`A129576(n)/A094603(n+1)`
-/

namespace A033687.P14118810829273503772
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A129576 n : ℚ) / (A094603 (n + 1) : ℚ)

end

end A033687.P14118810829273503772

namespace A033687

/-- `A129576(n)/A094603(n+1)` -/
def P14118810829273503772.Spec : Prop :=
  ∀ n, P14118810829273503772.a n = (A033687 n : ℚ)

end A033687

/-!
# A033688: Theta series of tensor cube of A_2 lattice (dimension 8, det 3^12).

The programs for A033688, there is no canonical definition to state claims against.
-/

/-! ## A033688.P14947859304452743723

`A007425(A071383(n+2))*A222690(n+1)`
-/

namespace A033688.P14947859304452743723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007425 (A071383 (n + 2)).toNat * A222690 (n + 1)

end

end A033688.P14947859304452743723

/-! ## A033688.P8568091654029433385

`∏{e}[3^n+9^n, xor(#, floor(sqrt(n)))]`
-/

namespace A033688.P8568091654029433385
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n + 9 ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), Nat.xor (Nat.factorization (f1 n) p) (Nat.sqrt n)

end

end A033688.P8568091654029433385

/-! ## A033688.P7342452634796450488

`A000005(C(n+4, 4)*C(n+5, 5))*A212217(n)`
-/

namespace A033688.P7342452634796450488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (Nat.choose (n + 4) 4 * Nat.choose (n + 5) 5) * A212217 n

end

end A033688.P7342452634796450488

/-!
# A033689: Number of extreme quadratic forms or lattices in dimension n.

The programs for A033689, there is no canonical definition to state claims against.
-/

/-! ## A033689.P2210697447089470902

`A130518(n)+A130518(n)^A008382(n)`
-/

namespace A033689.P2210697447089470902
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A130518 n : ℚ) + (A130518 n : ℚ) ^ (A008382 n : ℤ)

end

end A033689.P2210697447089470902

/-! ## A033689.P5178275951997446523

`A130518(n)+A130518(n)^A083741(n)`
-/

namespace A033689.P5178275951997446523
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A130518 n : ℚ) + (A130518 n : ℚ) ^ (A083741 n : ℤ)

end

end A033689.P5178275951997446523

/-!
# A033690: Theta series of A2[hole]^4.

The programs for A033690, the canonical program `A033690.P6937920065126332039` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A033690 has offset 0).

The definition of A033690 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3333 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A033690.P6937920065126332039

`A242042(3*n+4)/9`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A033690

/-- `A242042(3*n+4)/9` -/
def P6937920065126332039.Spec : Prop :=
  ∀ n, P6937920065126332039.a n = (A033690 n : ℚ)

end A033690

/-! ## A033690.P3603319736013461513

`∑{#}[n, A033686(#)*A033686(n-#)]`
-/

namespace A033690.P3603319736013461513
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A033686 k * A033686 (n - k)

end

end A033690.P3603319736013461513

namespace A033690

/-- `∑{#}[n, A033686(#)*A033686(n-#)]` -/
def P3603319736013461513.Spec : Prop :=
  ∀ n, P3603319736013461513.a n = A033690 n

end A033690

/-! ## A033690.P4688198844359788780

`A023920(3*n+4)/18`
-/

namespace A033690.P4688198844359788780
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A023920 (3 * n + 4) : ℚ) / 18

end

end A033690.P4688198844359788780

namespace A033690

/-- `A023920(3*n+4)/18` -/
def P4688198844359788780.Spec : Prop :=
  ∀ n, P4688198844359788780.a n = (A033690 n : ℚ)

end A033690

/-! ## A033690.P9280430935770168523

`A072839(6*n+8)/18`
-/

namespace A033690.P9280430935770168523
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A072839 (6 * n + 8) : ℚ) / 18

end

end A033690.P9280430935770168523

namespace A033690

/-- `A072839(6*n+8)/18` -/
def P9280430935770168523.Spec : Prop :=
  ∀ n, P9280430935770168523.a n = (A033690 n : ℚ)

end A033690

/-!
# A033691: Minimal number of vertices in 1-1 deficient regular graph where minimal degree is 1 and maximal degree is n.

The programs for A033691, the canonical program `A033691.P5317964984543265291` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A033691 has offset 2).

The definition of A033691 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A033691.P5317964984543265291

`4*round((n+3)²/8)`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A033691

/-- `4*round((n+3)²/8)` -/
def P5317964984543265291.Spec : Prop :=
  ∀ n, P5317964984543265291.a n = A033691 (n + 2)

theorem P5317964984543265291.correct : P5317964984543265291.Spec := by
  intro n
  simp only [A033691, Nat.add_sub_cancel]

end A033691

/-! ## A033691.P884289441883693027

`or(3, ∑[or(1, n+2)])+1`
-/

namespace A033691.P884289441883693027
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 3 (∑ j ∈ Finset.range (n + 1), f1 j) + 1

end

end A033691.P884289441883693027

namespace A033691

/-- `or(3, ∑[or(1, n+2)])+1` -/
def P884289441883693027.Spec : Prop :=
  ∀ n, (P884289441883693027.a n : ℤ) = A033691 (n + 2)

end A033691

/-! ## A033691.P10473896330552688070

`∑[a(n-4)+4]` with `a(0)=4, a(1)=4, a(2)=4, a(3)=8, a(4)=4`
-/

namespace A033691.P10473896330552688070
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [4, 4, 4, 8, 4] fun n f1 =>
  f1 (n - 4) + 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033691.P10473896330552688070

namespace A033691

/-- `∑[a(n-4)+4]` -/
def P10473896330552688070.Spec : Prop :=
  ∀ n, (P10473896330552688070.a n : ℤ) = A033691 (n + 2)

end A033691

/-! ## A033691.P5916873425804219930

`∑[gcd(2, n)+n+1]+gcd(4, n+1)`
-/

namespace A033691.P5916873425804219930
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 n + (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + Nat.gcd 4 (n + 1)

end

end A033691.P5916873425804219930

namespace A033691

/-- `∑[gcd(2, n)+n+1]+gcd(4, n+1)` -/
def P5916873425804219930.Spec : Prop :=
  ∀ n, (P5916873425804219930.a n : ℤ) = A033691 (n + 2)

end A033691

/-! ## A033691.P15937906248581420178

`or(2, ceil(n²/2)+3*(n+1))+1`
-/

namespace A033691.P15937906248581420178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 (⌈(n ^ 2 : ℚ) / 2⌉ + (3 * (n + 1) : ℤ)) + 1

end

end A033691.P15937906248581420178

namespace A033691

/-- `or(2, ceil(n²/2)+3*(n+1))+1` -/
def P15937906248581420178.Spec : Prop :=
  ∀ n, P15937906248581420178.a n = A033691 (n + 2)

end A033691

/-! ## A033691.P3548497490866262084

`ogf((4+4x^3-8x^4+4x^5)/(1-2x+x^2-x^4+2x^5-x^6))`
-/

namespace A033691.P3548497490866262084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4, 0, 0, 4, -8, 4] [1, -2, 1, 0, -1, 2, -1] n

end

end A033691.P3548497490866262084

namespace A033691

/-- `ogf((4+4x^3-8x^4+4x^5)/(1-2x+x^2-x^4+2x^5-x^6))` -/
def P3548497490866262084.Spec : Prop :=
  ∀ n, P3548497490866262084.a n = A033691 (n + 2)

end A033691

/-! ## A033691.P6685365081667603023

`Δ[4*∑[A001971(n+2)]]`
-/

namespace A033691.P6685365081667603023
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001971 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A033691.P6685365081667603023

namespace A033691

/-- `Δ[4*∑[A001971(n+2)]]` -/
def P6685365081667603023.Spec : Prop :=
  ∀ n, P6685365081667603023.a n = A033691 (n + 2)

end A033691

/-! ## A033691.P3718665853802566283

`Δ[4*A173722(n+2)]`
-/

namespace A033691.P3718665853802566283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A173722 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A033691.P3718665853802566283

namespace A033691

/-- `Δ[4*A173722(n+2)]` -/
def P3718665853802566283.Spec : Prop :=
  ∀ n, P3718665853802566283.a n = A033691 (n + 2)

end A033691

/-! ## A033691.P109892396525477696

`∑[2*A187180(A187180(4*A187180(n+1)))]`
-/

namespace A033691.P109892396525477696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A187180 (A187180 (4 * A187180 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033691.P109892396525477696

namespace A033691

/-- `∑[2*A187180(A187180(4*A187180(n+1)))]` -/
def P109892396525477696.Spec : Prop :=
  ∀ n, P109892396525477696.a n = A033691 (n + 2)

end A033691

/-! ## A033691.P17462533098790406703

`A008590(A001971(n+3))/2`
-/

namespace A033691.P17462533098790406703
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008590 (A001971 (n + 3)).toNat : ℚ) / 2

end

end A033691.P17462533098790406703

namespace A033691

/-- `A008590(A001971(n+3))/2` -/
def P17462533098790406703.Spec : Prop :=
  ∀ n, P17462533098790406703.a n = (A033691 (n + 2) : ℚ)

end A033691

/-! ## A033691.P12744606512559280131

`A008574(∑[A008624(n+1)]+1)`
-/

namespace A033691.P12744606512559280131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008624 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat

end

end A033691.P12744606512559280131

namespace A033691

/-- `A008574(∑[A008624(n+1)]+1)` -/
def P12744606512559280131.Spec : Prop :=
  ∀ n, P12744606512559280131.a n = A033691 (n + 2)

end A033691

/-! ## A033691.P5592474958969156349

`record[A154681(n+1)-A154681(n+1)%4]`
-/

namespace A033691.P5592474958969156349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154681 (n + 1) - Int.tmod (A154681 (n + 1)) 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A033691.P5592474958969156349

namespace A033691

/-- `record[A154681(n+1)-A154681(n+1)%4]` -/
def P5592474958969156349.Spec : Prop :=
  ∀ n, P5592474958969156349.a n = A033691 (n + 2)

end A033691

/-! ## A033691.P7896726730017587324

`A168273(A076921(n+1)+2)+A168273(n+1)`
-/

namespace A033691.P7896726730017587324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168273 (A076921 (n + 1) + 2).toNat + A168273 (n + 1)

end

end A033691.P7896726730017587324

namespace A033691

/-- `A168273(A076921(n+1)+2)+A168273(n+1)` -/
def P7896726730017587324.Spec : Prop :=
  ∀ n, P7896726730017587324.a n = A033691 (n + 2)

end A033691

/-! ## A033691.P14114365549850842454

`A168273(A002620(n+3)+1)`
-/

namespace A033691.P14114365549850842454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168273 (A002620 (n + 3) + 1).toNat

end

end A033691.P14114365549850842454

namespace A033691

/-- `A168273(A002620(n+3)+1)` -/
def P14114365549850842454.Spec : Prop :=
  ∀ n, P14114365549850842454.a n = A033691 (n + 2)

end A033691

/-! ## A033691.P13247730961096301672

`A005843(A005843(A143901(A000982(n+2))))`
-/

namespace A033691.P13247730961096301672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A005843 (A143901 (A000982 (n + 2)).toNat).toNat).toNat

end

end A033691.P13247730961096301672

namespace A033691

/-- `A005843(A005843(A143901(A000982(n+2))))` -/
def P13247730961096301672.Spec : Prop :=
  ∀ n, P13247730961096301672.a n = A033691 (n + 2)

end A033691

/-! ## A033691.P5836469665762444390

`A211390(A116940(n+1))`
-/

namespace A033691.P5836469665762444390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211390 (A116940 (n + 1)).toNat

end

end A033691.P5836469665762444390

namespace A033691

/-- `A211390(A116940(n+1))` -/
def P5836469665762444390.Spec : Prop :=
  ∀ n, P5836469665762444390.a n = A033691 (n + 2)

end A033691

/-! ## A033691.P15564051730805688566

`A211390(A183575(n+2))`
-/

namespace A033691.P15564051730805688566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211390 (A183575 (n + 2)).toNat

end

end A033691.P15564051730805688566

namespace A033691

/-- `A211390(A183575(n+2))` -/
def P15564051730805688566.Spec : Prop :=
  ∀ n, P15564051730805688566.a n = A033691 (n + 2)

end A033691

/-! ## A033691.P8244326367360172816

`A127932(A047838(n+3))`
-/

namespace A033691.P8244326367360172816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127932 (A047838 (n + 3)).toNat

end

end A033691.P8244326367360172816

namespace A033691

/-- `A127932(A047838(n+3))` -/
def P8244326367360172816.Spec : Prop :=
  ∀ n, P8244326367360172816.a n = A033691 (n + 2)

end A033691

/-! ## A033691.P93218533123914292

`A244584(∑[A244584(n+1)])+1`
-/

namespace A033691.P93218533123914292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244584 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244584 (∑ j ∈ Finset.range (n + 1), f1 j).toNat + 1

end

end A033691.P93218533123914292

namespace A033691

/-- `A244584(∑[A244584(n+1)])+1` -/
def P93218533123914292.Spec : Prop :=
  ∀ n, P93218533123914292.a n = A033691 (n + 2)

end A033691

/-! ## A033691.P1839624888686609000

`A201629(A000982(n+2)+n+3)`
-/

namespace A033691.P1839624888686609000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201629 (A000982 (n + 2) + (n + 3 : ℤ)).toNat

end

end A033691.P1839624888686609000

namespace A033691

/-- `A201629(A000982(n+2)+n+3)` -/
def P1839624888686609000.Spec : Prop :=
  ∀ n, P1839624888686609000.a n = A033691 (n + 2)

end A033691

/-!
# A033693: Theta series of lattice D3 tensor D3 (dimension 9, det. 4096, min. norm 4).

The programs for A033693, there is no canonical definition to state claims against.
-/

/-! ## A033693.P14780742078678741104

`A074590(A074575(n)-A074565(n))`
-/

namespace A033693.P14780742078678741104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074590 (A074575 n - A074565 n).toNat

end

end A033693.P14780742078678741104

/-!
# A033694: Theta series of lattice D3 tensor D3* (dimension 9, det. 262144, min. norm 6).

The programs for A033694, there is no canonical definition to state claims against.
-/

/-! ## A033694.P12650726585177153502

`A004013(lcm(n, A142983(n+1)))`
-/

namespace A033694.P12650726585177153502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004013 (Int.lcm (n : ℤ) (A142983 (n + 1)))

end

end A033694.P12650726585177153502

/-! ## A033694.P4907856285114378557

`A004736(A000351(n))*A217201(n)`
-/

namespace A033694.P4907856285114378557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (A000351 n).toNat * A217201 n

end

end A033694.P4907856285114378557

/-!
# A033698: Theta series of lattice A_2 tensor E_6 (dimension 12, det. 6561, min. norm 4).

The programs for A033698, there is no canonical definition to state claims against.
-/

/-! ## A033698.P15698441944936050790

`∑[n+1]*A278085(A001941(n)+n)`
-/

namespace A033698.P15698441944936050790
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A278085 (A001941 n + (n : ℤ)).toNat

end

end A033698.P15698441944936050790

