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
import Seq.B000.C013
import Seq.B000.C016
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
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C042
import Seq.B000.C043
import Seq.B000.C045
import Seq.B000.C048
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
import Seq.B001.C010
import Seq.B001.C012
import Seq.B001.C014
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A215800: Numbers k such that (2^k+1)/3 can be written in the form a^2 + 3*b^2.

The programs for A215800, there is no canonical definition to state claims against.
-/

/-! ## A215800.P15757286285024565847

`∩[A091010(n+1), A364614(n+1)]`
-/

namespace A215800.P15757286285024565847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091010 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364614 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215800.P15757286285024565847

/-! ## A215800.P6878046962951218230

`A364614(n+1)%A363729(2*n+3)`
-/

namespace A215800.P6878046962951218230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A364614 (n + 1)) (A363729 (2 * n + 3))

end

end A215800.P6878046962951218230

/-! ## A215800.P1748660622620337423

`A364614(n+1)+A104162(A121038(n+4))`
-/

namespace A215800.P1748660622620337423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364614 (n + 1) + A104162 (A121038 (n + 4)).toNat

end

end A215800.P1748660622620337423

/-! ## A215800.P12306734061388669968

`A364614(n+1)+A185238(A306209(2*n+1))`
-/

namespace A215800.P12306734061388669968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364614 (n + 1) + A185238 (A306209 (2 * n + 1)).toNat

end

end A215800.P12306734061388669968

/-! ## A215800.P6281970802123872714

`eq[1, A034444(A078182(n+1)²+1)]+1`
-/

namespace A215800.P6281970802123872714
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034444 (A078182 (n + 1) ^ 2 + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A215800.P6281970802123872714

/-!
# A215801: Prime numbers p such that (2^p + 1)/3 can be written in the form a^2 + 3*b^2.

The programs for A215801, there is no canonical definition to state claims against.
-/

/-! ## A215801.P10039389772210328061

`p?[A215800(n+1)]`
-/

namespace A215801.P10039389772210328061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215800 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215801.P10039389772210328061

/-! ## A215801.P9853964130779115269

`p?[record[A215800(A133310(n))]]`
-/

namespace A215801.P9853964130779115269
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215800 (A133310 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215801.P9853964130779115269

/-! ## A215801.P1452490485891213125

`p?[record[A215800(A154958(n))]]`
-/

namespace A215801.P1452490485891213125
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215800 (A154958 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215801.P1452490485891213125

/-! ## A215801.P2857940130392388605

`p?[record[A215800(A291769(n))]]`
-/

namespace A215801.P2857940130392388605
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215800 (A291769 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215801.P2857940130392388605

/-! ## A215801.P8604839777010523154

`record[A006530(A215800(n+2))]`
-/

namespace A215801.P8604839777010523154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A215800 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A215801.P8604839777010523154

/-!
# A215802: Prime numbers p such that the repunit number (10^p - 1)/9 can be written in the form a^2 + 3*b^2.

The programs for A215802, there is no canonical definition to state claims against.
-/

/-! ## A215802.P15448275758576509731

`p?[A215803(n+1)]`
-/

namespace A215802.P15448275758576509731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215803 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215802.P15448275758576509731

/-!
# A215803: Numbers k such that the repunit number (10^k - 1)/9 can be written in the form a^2 + 3*b^2.

The programs for A215803, there is no canonical definition to state claims against.
-/

/-! ## A215803.P11907521011566593328

`∩[A215816(n+1), A235591(n+1)]`
-/

namespace A215803.P11907521011566593328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215816 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235591 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215803.P11907521011566593328

/-! ## A215803.P17045105279845525418

`record[A029579(A265910(2*n+1))%A338907(n+1)]`
-/

namespace A215803.P17045105279845525418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A029579 (A265910 (2 * n + 1)).toNat) (A338907 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A215803.P17045105279845525418

/-!
# A215804: Odd numbers k such that 10^k + 1 can be written in the form a^2 + 2*b^2.

The programs for A215804, there is no canonical definition to state claims against.
-/

/-! ## A215804.P2013012514881783041

`∑[A008904(A317186(n)²)]`
-/

namespace A215804.P2013012514881783041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008904 (A317186 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A215804.P2013012514881783041

/-! ## A215804.P3315251820349465773

`lt[Δ[A137821(A137821(n+5))], 4]`
-/

namespace A215804.P3315251820349465773
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137821 (A137821 (n + 5)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n

end

end A215804.P3315251820349465773

/-! ## A215804.P9533767741473426446

`eq[A047988(n+2), A049263(2*n+3)]`
-/

namespace A215804.P9533767741473426446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047988 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049263 (2 * n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A215804.P9533767741473426446

/-! ## A215804.P227880316886589653

`eq[A000108(A271592(n+2)), A010144(n)]`
-/

namespace A215804.P227880316886589653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (A271592 (n + 2)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010144 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A215804.P227880316886589653

/-! ## A215804.P15695793908942872393

`eq[xor(2, a(n-2))+2, A251628(2*n+3)]` with `a(0)=0, a(1)=1, a(2)=1, a(3)=2`
-/

namespace A215804.P15695793908942872393
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 1, 2] fun n f1 =>
  Nat.xor 2 (f1 (n - 2)) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251628 (2 * n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A215804.P15695793908942872393

/-!
# A215805: Prime numbers p such that 10^p + 1 can be written in the form a^2 + 2*b^2.

The programs for A215805, there is no canonical definition to state claims against.
-/

/-! ## A215805.P13720324808707895368

`p?[A215804(n+1)]`
-/

namespace A215805.P13720324808707895368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215804 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215805.P13720324808707895368

/-! ## A215805.P9227038832553402424

`p?[record[A215804(A028920(n))]]`
-/

namespace A215805.P9227038832553402424
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215804 (A028920 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215805.P9227038832553402424

/-! ## A215805.P14640341387692970833

`p?[record[A215804(A051340(n))]]`
-/

namespace A215805.P14640341387692970833
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215804 (A051340 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215805.P14640341387692970833

/-! ## A215805.P7466659013403994379

`p?[record[A215804(A082854(n))]]`
-/

namespace A215805.P7466659013403994379
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215804 (A082854 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215805.P7466659013403994379

/-! ## A215805.P6432996783757351388

`record[A006530(A215804(n+2))]`
-/

namespace A215805.P6432996783757351388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A215804 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A215805.P6432996783757351388

/-!
# A215806: Odd numbers k such that the Mersenne number 2^k - 1 can be written in the form a^2 + 3*b^2.

The programs for A215806, there is no canonical definition to state claims against.
-/

/-! ## A215806.P3139240915513461667

`∩[2*n+1, A215798(n+1)]`
-/

namespace A215806.P3139240915513461667
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215798 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215806.P3139240915513461667

/-! ## A215806.P17317392831125884922

`record[A000265(A215798(n+2))]`
-/

namespace A215806.P17317392831125884922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A215798 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A215806.P17317392831125884922

/-! ## A215806.P18019551106652166253

`filter[A215798(n+1), A000035(#)]`
-/

namespace A215806.P18019551106652166253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215798 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n)

end

end A215806.P18019551106652166253

/-! ## A215806.P7309379348228550388

`filter[A215798(n+1), A035263(#)]`
-/

namespace A215806.P7309379348228550388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215798 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A035263 (f1 j).toNat = 1) n)

end

end A215806.P7309379348228550388

/-! ## A215806.P1026844023794728975

`filter[A215798(n+1), A104106(#)]`
-/

namespace A215806.P1026844023794728975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215798 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A104106 (f1 j).toNat = 1) n)

end

end A215806.P1026844023794728975

/-! ## A215806.P7101177761517795429

`filter[A215798(n+1), A141260(#)]`
-/

namespace A215806.P7101177761517795429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215798 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A141260 (f1 j).toNat = 1) n)

end

end A215806.P7101177761517795429

/-! ## A215806.P13316025497062908678

`filter[A215798(n+1), A152822(#)]`
-/

namespace A215806.P13316025497062908678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215798 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A152822 (f1 j).toNat = 1) n)

end

end A215806.P13316025497062908678

/-! ## A215806.P11758163388313236440

`filter[A215798(n+1), A259044(#)]`
-/

namespace A215806.P11758163388313236440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215798 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A259044 (f1 j).toNat = 1) n)

end

end A215806.P11758163388313236440

/-! ## A215806.P5663602274694459257

`filter[A215798(n+1), A259599(#)]`
-/

namespace A215806.P5663602274694459257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215798 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A259599 (f1 j).toNat = 1) n)

end

end A215806.P5663602274694459257

/-! ## A215806.P17660687227911838906

`filter[A215798(n+1), A260390(#)]`
-/

namespace A215806.P17660687227911838906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215798 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A260390 (f1 j).toNat = 1) n)

end

end A215806.P17660687227911838906

/-! ## A215806.P17689786844498916906

`filter[A215798(n+1), A266070(#)]`
-/

namespace A215806.P17689786844498916906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215798 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A266070 (f1 j).toNat = 1) n)

end

end A215806.P17689786844498916906

/-! ## A215806.P6869320136686537038

`filter[A215798(n+1), A373157(#)]`
-/

namespace A215806.P6869320136686537038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215798 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373157 (f1 j).toNat = 1) n)

end

end A215806.P6869320136686537038

/-! ## A215806.P1362799474567664761

`filter[A215798(n+1), A379952(#)]`
-/

namespace A215806.P1362799474567664761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215798 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379952 (f1 j).toNat = 1) n)

end

end A215806.P1362799474567664761

/-! ## A215806.P12919322886069366357

`filter[A215798(n+2), A266719(#)]`
-/

namespace A215806.P12919322886069366357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215798 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A266719 (f1 j).toNat = 1) n)

end

end A215806.P12919322886069366357

/-! ## A215806.P7960061929936107521

`filter[A215798(n+2), A296066(#)]`
-/

namespace A215806.P7960061929936107521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215798 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A296066 (f1 j).toNat = 1) n)

end

end A215806.P7960061929936107521

/-! ## A215806.P12543162603200203491

`∩[A215798(n+1), A229838(n+1)]`
-/

namespace A215806.P12543162603200203491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215798 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229838 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215806.P12543162603200203491

/-! ## A215806.P2718102964586572265

`∩[A215798(n+1), A247328(n+1)]`
-/

namespace A215806.P2718102964586572265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215798 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247328 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215806.P2718102964586572265

/-! ## A215806.P14727630695424782473

`∩[A215798(n+1), A256455(n+1)]`
-/

namespace A215806.P14727630695424782473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215798 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256455 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215806.P14727630695424782473

/-! ## A215806.P14792051477550929325

`A215798(record[n^(A215798(n+1)%2)]+1)`
-/

namespace A215806.P14792051477550929325
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) ^ (Int.tmod (A215798 (n + 1)) 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215798 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1)).toNat

end

end A215806.P14792051477550929325

/-! ## A215806.P13983620597736133146

`A215798(record[(n+1)*A215798(n+2)%2]+1)`
-/

namespace A215806.P13983620597736133146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * Int.tmod (A215798 (n + 2)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215798 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1).toNat

end

end A215806.P13983620597736133146

/-!
# A215807: Even numbers k such that 2^k - 1 can be written in the form a^2 + 3*b^2.

The programs for A215807, there is no canonical definition to state claims against.
-/

/-! ## A215807.P10441997183615127189

`∩[2*n, A215798(n+1)]`
-/

namespace A215807.P10441997183615127189
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215798 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215807.P10441997183615127189

/-! ## A215807.P3082966041393992631

`record[A009531(A215798(n+1))]`
-/

namespace A215807.P3082966041393992631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009531 (A215798 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A215807.P3082966041393992631

/-! ## A215807.P16334759577059063515

`filter[A215798(n+1), A059841(#)]`
-/

namespace A215807.P16334759577059063515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215798 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A059841 (f1 j).toNat = 1) n)

end

end A215807.P16334759577059063515

/-! ## A215807.P8228957079493262128

`filter[A215798(n+1), A135528(#)]`
-/

namespace A215807.P8228957079493262128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215798 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A135528 (f1 j).toNat = 1) n)

end

end A215807.P8228957079493262128

/-! ## A215807.P16363981078013012888

`filter[A215798(n+1), A260393(#)]`
-/

namespace A215807.P16363981078013012888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215798 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A260393 (f1 j).toNat = 1) n)

end

end A215807.P16363981078013012888

/-!
# A215808: Primes of the form 2*prime(k) - prime(k+1).

The programs for A215808, the canonical program `A215808.P8126471697275371774` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A215808 has offset 1).

The definition of A215808 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 918 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A215808.P8126471697275371774

`p?[A062234(n+1)]`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A215808

/-- `p?[A062234(n+1)]` -/
def P8126471697275371774.Spec : Prop :=
  ∀ n, P8126471697275371774.a n = A215808 (n + 1)

theorem P8126471697275371774.correct : P8126471697275371774.Spec := by
  intro n
  simp only [A215808, Nat.add_sub_cancel]

end A215808

/-! ## A215808.P3247623372727597170

`p?[Δ[A166448(n+1)]]`
-/

namespace A215808.P3247623372727597170
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166448 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215808.P3247623372727597170

namespace A215808

/-- `p?[Δ[A166448(n+1)]]` -/
def P3247623372727597170.Spec : Prop :=
  ∀ n, P3247623372727597170.a n = A215808 (n + 1)

end A215808

/-! ## A215808.P5953335986237839333

`p?[A124115(n+1)-2]`
-/

namespace A215808.P5953335986237839333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124115 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215808.P5953335986237839333

namespace A215808

/-- `p?[A124115(n+1)-2]` -/
def P5953335986237839333.Spec : Prop :=
  ∀ n, P5953335986237839333.a n = A215808 (n + 1)

theorem P5953335986237839333.correct : P5953335986237839333.Spec := by
  intro n
  simp only [A215808, Nat.add_sub_cancel, A215808.P5953335986237839333.f1, A215808.P5953335986237839333.a, A215808.P8126471697275371774.f1, A215808.P8126471697275371774.a, A062234, A062234.P8592873382335253705.a, A124115, A124115.P8341029799723134222.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A215808

/-! ## A215808.P1160319860496419944

`A062234(A216075(n+1))`
-/

namespace A215808.P1160319860496419944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062234 (A216075 (n + 1)).toNat

end

end A215808.P1160319860496419944

namespace A215808

/-- `A062234(A216075(n+1))` -/
def P1160319860496419944.Spec : Prop :=
  ∀ n, P1160319860496419944.a n = A215808 (n + 1)

end A215808

/-! ## A215808.P13281975716787312777

`p?[Δ[A007504(n)-A000040(n+1)]]`
-/

namespace A215808.P13281975716787312777
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n - A000040 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215808.P13281975716787312777

namespace A215808

/-- `p?[Δ[A007504(n)-A000040(n+1)]]` -/
def P13281975716787312777.Spec : Prop :=
  ∀ n, P13281975716787312777.a n = A215808 (n + 1)

end A215808

/-! ## A215808.P11965930105898830409

`p?[A096379(n+1)+A001223(n+1)]`
-/

namespace A215808.P11965930105898830409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096379 (n + 1) + A001223 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215808.P11965930105898830409

namespace A215808

/-- `p?[A096379(n+1)+A001223(n+1)]` -/
def P11965930105898830409.Spec : Prop :=
  ∀ n, P11965930105898830409.a n = A215808 (n + 1)

end A215808

/-! ## A215808.P12433862109086529590

`p?[A107471(n+1)+A001223(n+1)]`
-/

namespace A215808.P12433862109086529590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107471 (n + 1) + A001223 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215808.P12433862109086529590

namespace A215808

/-- `p?[A107471(n+1)+A001223(n+1)]` -/
def P12433862109086529590.Spec : Prop :=
  ∀ n, P12433862109086529590.a n = A215808 (n + 1)

theorem P12433862109086529590.correct : P12433862109086529590.Spec := by
  intro n
  simp only [A215808, Nat.add_sub_cancel, A215808.P12433862109086529590.f1, A215808.P12433862109086529590.a, A215808.P8126471697275371774.f1, A215808.P8126471697275371774.a, A001223, A001223.P5034056745985311719.a, A062234, A062234.P8592873382335253705.a, A107471, A107471.P13513587101651290245.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A215808

/-! ## A215808.P3352931935164112705

`p?[A000040(n+1)-A001223(n+1)]`
-/

namespace A215808.P3352931935164112705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - A001223 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215808.P3352931935164112705

namespace A215808

/-- `p?[A000040(n+1)-A001223(n+1)]` -/
def P3352931935164112705.Spec : Prop :=
  ∀ n, P3352931935164112705.a n = A215808 (n + 1)

theorem P3352931935164112705.correct : P3352931935164112705.Spec := by
  intro n
  simp only [A215808, Nat.add_sub_cancel, A215808.P3352931935164112705.f1, A215808.P3352931935164112705.a, A215808.P8126471697275371774.f1, A215808.P8126471697275371774.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001223, A001223.P5034056745985311719.a, A062234, A062234.P8592873382335253705.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A215808

/-! ## A215808.P5199556578234886579

`p?[A001747(n+1)-A000040(n+1)]`
-/

namespace A215808.P5199556578234886579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001747 (n + 1) - A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215808.P5199556578234886579

namespace A215808

/-- `p?[A001747(n+1)-A000040(n+1)]` -/
def P5199556578234886579.Spec : Prop :=
  ∀ n, P5199556578234886579.a n = A215808 (n + 1)

end A215808

/-! ## A215808.P2413207197711614168

`p?[A001748(n+1)-A001043(n+1)]`
-/

namespace A215808.P2413207197711614168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001748 (n + 1) - A001043 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215808.P2413207197711614168

namespace A215808

/-- `p?[A001748(n+1)-A001043(n+1)]` -/
def P2413207197711614168.Spec : Prop :=
  ∀ n, P2413207197711614168.a n = A215808 (n + 1)

theorem P2413207197711614168.correct : P2413207197711614168.Spec := by
  intro n
  simp only [A215808, Nat.add_sub_cancel, A215808.P2413207197711614168.f1, A215808.P2413207197711614168.a, A215808.P8126471697275371774.f1, A215808.P8126471697275371774.a, A001043, A001043.P18269783162673735460.a, A001748, A001748.P16019639290970068825.a, A062234, A062234.P8592873382335253705.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A215808

/-! ## A215808.P18146341211120997924

`p?[A000040(n+1)-A036263(n+1)]`
-/

namespace A215808.P18146341211120997924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - A036263 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215808.P18146341211120997924

namespace A215808

/-- `p?[A000040(n+1)-A036263(n+1)]` -/
def P18146341211120997924.Spec : Prop :=
  ∀ n, P18146341211120997924.a n = A215808 (n + 1)

end A215808

/-! ## A215808.P697795445797168320

`p?[A008578(n+1)-A054541(n+1)]`
-/

namespace A215808.P697795445797168320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1) - A054541 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215808.P697795445797168320

namespace A215808

/-- `p?[A008578(n+1)-A054541(n+1)]` -/
def P697795445797168320.Spec : Prop :=
  ∀ n, P697795445797168320.a n = A215808 (n + 1)

end A215808

/-! ## A215808.P7789530240204401757

`p?[A098764(n+1)-A000040(n+1)]`
-/

namespace A215808.P7789530240204401757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098764 (n + 1) - A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215808.P7789530240204401757

namespace A215808

/-- `p?[A098764(n+1)-A000040(n+1)]` -/
def P7789530240204401757.Spec : Prop :=
  ∀ n, P7789530240204401757.a n = A215808 (n + 1)

theorem P7789530240204401757.correct : P7789530240204401757.Spec := by
  intro n
  simp only [A215808, Nat.add_sub_cancel, A215808.P7789530240204401757.f1, A215808.P7789530240204401757.a, A215808.P8126471697275371774.f1, A215808.P8126471697275371774.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A062234, A062234.P8592873382335253705.a, A098764, A098764.P1450263935949736531.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A215808

/-! ## A215808.P16336242937935042979

`p?[A100484(n+1)-A065091(n+1)]`
-/

namespace A215808.P16336242937935042979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100484 (n + 1) - A065091 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215808.P16336242937935042979

namespace A215808

/-- `p?[A100484(n+1)-A065091(n+1)]` -/
def P16336242937935042979.Spec : Prop :=
  ∀ n, P16336242937935042979.a n = A215808 (n + 1)

end A215808

/-! ## A215808.P8780494515475211488

`p?[A008578(n+2)-A001223(n+1)]`
-/

namespace A215808.P8780494515475211488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 2) - A001223 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215808.P8780494515475211488

namespace A215808

/-- `p?[A008578(n+2)-A001223(n+1)]` -/
def P8780494515475211488.Spec : Prop :=
  ∀ n, P8780494515475211488.a n = A215808 (n + 1)

end A215808

/-! ## A215808.P1108234278967249632

`p?[A215848(n+1)-Δ[A215848(n+1)]]`
-/

namespace A215808.P1108234278967249632
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215848 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215848 (n + 1) - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215808.P1108234278967249632

namespace A215808

/-- `p?[A215848(n+1)-Δ[A215848(n+1)]]` -/
def P1108234278967249632.Spec : Prop :=
  ∀ n, P1108234278967249632.a n = A215808 (n + 1)

end A215808

/-! ## A215808.P11449957655494343914

`p?[A000040(n+2)-Δ[A000040(n+2)]]`
-/

namespace A215808.P11449957655494343914
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 2) - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215808.P11449957655494343914

namespace A215808

/-- `p?[A000040(n+2)-Δ[A000040(n+2)]]` -/
def P11449957655494343914.Spec : Prop :=
  ∀ n, P11449957655494343914.a n = A215808 (n + 1)

end A215808

/-! ## A215808.P6660897765782625925

`p?[A006093(n+1)+1-A001223(n+1)]`
-/

namespace A215808.P6660897765782625925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1) + (1 - A001223 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215808.P6660897765782625925

namespace A215808

/-- `p?[A006093(n+1)+1-A001223(n+1)]` -/
def P6660897765782625925.Spec : Prop :=
  ∀ n, P6660897765782625925.a n = A215808 (n + 1)

theorem P6660897765782625925.correct : P6660897765782625925.Spec := by
  intro n
  simp only [A215808, Nat.add_sub_cancel, A215808.P6660897765782625925.f1, A215808.P6660897765782625925.a, A215808.P8126471697275371774.f1, A215808.P8126471697275371774.a, A001223, A001223.P5034056745985311719.a, A006093, A006093.P2906174024863549003.a, A062234, A062234.P8592873382335253705.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A215808

/-! ## A215808.P3126980131860892453

`p?[A000040(n+1)-(A046933(n+1)+1)]`
-/

namespace A215808.P3126980131860892453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - (A046933 (n + 1) + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215808.P3126980131860892453

namespace A215808

/-- `p?[A000040(n+1)-(A046933(n+1)+1)]` -/
def P3126980131860892453.Spec : Prop :=
  ∀ n, P3126980131860892453.a n = A215808 (n + 1)

theorem P3126980131860892453.correct : P3126980131860892453.Spec := by
  intro n
  simp only [A215808, Nat.add_sub_cancel, A215808.P3126980131860892453.f1, A215808.P3126980131860892453.a, A215808.P8126471697275371774.f1, A215808.P8126471697275371774.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A046933, A046933.P9479947770746769512.a, A062234, A062234.P8592873382335253705.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A215808

/-! ## A215808.P3272218590060322011

`p?[A040976(n+1)+2-A001223(n+1)]`
-/

namespace A215808.P3272218590060322011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040976 (n + 1) + (2 - A001223 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215808.P3272218590060322011

namespace A215808

/-- `p?[A040976(n+1)+2-A001223(n+1)]` -/
def P3272218590060322011.Spec : Prop :=
  ∀ n, P3272218590060322011.a n = A215808 (n + 1)

theorem P3272218590060322011.correct : P3272218590060322011.Spec := by
  intro n
  simp only [A215808, Nat.add_sub_cancel, A215808.P3272218590060322011.f1, A215808.P3272218590060322011.a, A215808.P8126471697275371774.f1, A215808.P8126471697275371774.a, A001223, A001223.P5034056745985311719.a, A040976, A040976.P11599754272797435513.a, A062234, A062234.P8592873382335253705.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A215808

/-!
# A215809: Prime numbers n for which the Lucas number L(n) (see A000032) is the sum of two squares.

The programs for A215809, there is no canonical definition to state claims against.
-/

/-! ## A215809.P5709776177665834892

`p?[A124130(n+1)]`
-/

namespace A215809.P5709776177665834892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124130 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215809.P5709776177665834892

/-! ## A215809.P9709189261064003029

`p?[A124132(n+1)]`
-/

namespace A215809.P9709189261064003029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124132 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215809.P9709189261064003029

/-! ## A215809.P6235570840843790197

`p?[A215907(n+1)]`
-/

namespace A215809.P6235570840843790197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215907 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215809.P6235570840843790197

/-! ## A215809.P12656301841588811161

`record[A006530(A124132(n+2))]`
-/

namespace A215809.P12656301841588811161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A124132 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A215809.P12656301841588811161

/-! ## A215809.P2139236612968901497

`record[A001414(A215907(n+2))]`
-/

namespace A215809.P2139236612968901497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (A215907 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A215809.P2139236612968901497

/-!
# A215810: Numbers n such that the Lucas number L(n) can be written in the form a^2 + 3*b^2.

The programs for A215810, there is no canonical definition to state claims against.
-/

/-! ## A215810.P2580064806616778367

`∪[A215815(n+1), A215816(n+1)]`
-/

namespace A215810.P2580064806616778367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215815 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215816 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215810.P2580064806616778367

/-!
# A215811: Prime numbers n such that the Lucas number L(n) can be written in the form a^2 + 3*b^2.

The programs for A215811, there is no canonical definition to state claims against.
-/

/-! ## A215811.P11457109617446552494

`p?[A215810(n+1)]`
-/

namespace A215811.P11457109617446552494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215810 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215811.P11457109617446552494

/-! ## A215811.P13434735657478471480

`p?[A215816(n+1)+floor(acot(n))]`
-/

namespace A215811.P13434735657478471480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215816 (n + 1) + ⌊SequenceMachineLib.acot (n : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215811.P13434735657478471480

/-! ## A215811.P15593986400487493386

`record[A006530(A215810(n+2))]`
-/

namespace A215811.P15593986400487493386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A215810 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A215811.P15593986400487493386

/-! ## A215811.P15409436041334562906

`filter[A215810(n+1), A001222(#)]`
-/

namespace A215811.P15409436041334562906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215810 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A001222 (f1 j).toNat = 1) n)

end

end A215811.P15409436041334562906

/-! ## A215811.P224567388927408995

`filter[A215810(n+1), A010051(#)]`
-/

namespace A215811.P224567388927408995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215810 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A215811.P224567388927408995

/-!
# A215812: Odd numbers n such that the Lucas number L(n) can be written in the form a^2 + 2*b^2.

The programs for A215812, there is no canonical definition to state claims against.
-/

/-! ## A215812.P1145630386943210438

`A351870(∪[A002144(n+1), A000244(n)])`
-/

namespace A215812.P1145630386943210438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351870 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A215812.P1145630386943210438

/-! ## A215812.P8968737183076211171

`A381431(∪[A002144(n+1), A000244(n)])`
-/

namespace A215812.P8968737183076211171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381431 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A215812.P8968737183076211171

/-! ## A215812.P12758860333263441653

`record[A145175(n)%A242774(n+1)]`
-/

namespace A215812.P12758860333263441653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A145175 (n + 10)) (A242774 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A215812.P12758860333263441653

/-! ## A215812.P2511938136171588729

`A326848(A087019(n)+A005117(n+1))`
-/

namespace A215812.P2511938136171588729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326848 (A087019 n + A005117 (n + 1)).toNat

end

end A215812.P2511938136171588729

/-! ## A215812.P3303652867358975200

`A213086(A059022(n+3))+A160736(n)`
-/

namespace A215812.P3303652867358975200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213086 (A059022 (n + 3)).toNat + A160736 n

end

end A215812.P3303652867358975200

/-!
# A215813: Prime numbers p such that the Lucas number L(p) can be written in the form a^2 + 2*b^2.

The programs for A215813, there is no canonical definition to state claims against.
-/

/-! ## A215813.P1803257654717530070

`record[A074399(A215812(n+1))]`
-/

namespace A215813.P1803257654717530070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074399 (A215812 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A215813.P1803257654717530070

/-! ## A215813.P11325200569284897966

`record[A006530(2*A215812(n+1))]`
-/

namespace A215813.P11325200569284897966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (2 * A215812 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A215813.P11325200569284897966

/-! ## A215813.P16632304671944934691

`record[A006530(lcm(2, A215812(n+1)))]`
-/

namespace A215813.P16632304671944934691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (Int.lcm 2 (A215812 (n + 1)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A215813.P16632304671944934691

/-! ## A215813.P5043440562672500292

`p?[A215812(n+1)+A000007(n)]`
-/

namespace A215813.P5043440562672500292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215812 (n + 1) + A000007 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215813.P5043440562672500292

/-! ## A215813.P184872384270318585

`p?[A215812(n+1)+A151933(n)]`
-/

namespace A215813.P184872384270318585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215812 (n + 1) + A151933 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215813.P184872384270318585

/-!
# A215815: Even numbers n such that the Lucas number L(n) can be written in the form a^2 + 3*b^2.

The programs for A215815, there is no canonical definition to state claims against.
-/

/-! ## A215815.P18033989541711999536

`∩[2*n, A215810(n+1)]`
-/

namespace A215815.P18033989541711999536
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215810 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215815.P18033989541711999536

/-! ## A215815.P11656595351526281995

`record[A038608(A215810(n+2))]`
-/

namespace A215815.P11656595351526281995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038608 (A215810 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A215815.P11656595351526281995

/-! ## A215815.P7342178935192721873

`filter[A215810(n+1), A000034(#)]`
-/

namespace A215815.P7342178935192721873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215810 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000034 (f1 j).toNat = 1) n)

end

end A215815.P7342178935192721873

/-! ## A215815.P16864674390494907122

`filter[A215810(n+1), A059841(#)]`
-/

namespace A215815.P16864674390494907122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215810 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A059841 (f1 j).toNat = 1) n)

end

end A215815.P16864674390494907122

/-! ## A215815.P4685009511269141692

`filter[A215810(n+1), A120325(#)]`
-/

namespace A215815.P4685009511269141692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215810 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A120325 (f1 j).toNat = 1) n)

end

end A215815.P4685009511269141692

/-!
# A215816: Odd numbers n such that the Lucas number L(n) can be written in the form a^2 + 3*b^2.

The programs for A215816, there is no canonical definition to state claims against.
-/

/-! ## A215816.P16440528813257293500

`∩[2*n+1, A215810(n+1)]`
-/

namespace A215816.P16440528813257293500
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215810 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215816.P16440528813257293500

/-! ## A215816.P13314679045074072625

`record[A000265(A215810(n+1))]`
-/

namespace A215816.P13314679045074072625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A215810 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A215816.P13314679045074072625

/-! ## A215816.P5266185418902906544

`record[A026741(A215810(n+2))]`
-/

namespace A215816.P5266185418902906544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A215810 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A215816.P5266185418902906544

/-! ## A215816.P8313533896894116948

`filter[A215810(n+1), A000035(#)]`
-/

namespace A215816.P8313533896894116948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215810 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n)

end

end A215816.P8313533896894116948

/-! ## A215816.P7540884864165968466

`filter[A215810(n+1), A093719(#)]`
-/

namespace A215816.P7540884864165968466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215810 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A093719 (f1 j).toNat = 1) n)

end

end A215816.P7540884864165968466

/-! ## A215816.P3020852085731308875

`filter[A215810(n+1), A260390(#)]`
-/

namespace A215816.P3020852085731308875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215810 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A260390 (f1 j).toNat = 1) n)

end

end A215816.P3020852085731308875

/-! ## A215816.P13318480531702067089

`filter[A215810(n+1), A373157(#)]`
-/

namespace A215816.P13318480531702067089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215810 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373157 (f1 j).toNat = 1) n)

end

end A215816.P13318480531702067089

/-! ## A215816.P16539024033904756515

`filter[A215810(n+1), A374134(#)]`
-/

namespace A215816.P16539024033904756515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215810 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374134 (f1 j).toNat = 1) n)

end

end A215816.P16539024033904756515

/-! ## A215816.P8165131708048234218

`record[A106609(2*A215810(n+1))]`
-/

namespace A215816.P8165131708048234218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106609 (2 * A215810 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A215816.P8165131708048234218

/-! ## A215816.P7820442731629110218

`∩[A215810(n+1), A225771(n+1)]`
-/

namespace A215816.P7820442731629110218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215810 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225771 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215816.P7820442731629110218

/-!
# A215817: a(n) is the rational part of A(n) = (6-sqrt(7))*A(n-1) - (12-4*sqrt(7))*A(n-2) + (8-3*sqrt(7))*A(n-3) with A(0)=3, A(1)=6-sqrt(7), A(2)=19-4*sqrt(7).

The programs for A215817, there is no canonical definition to state claims against.
-/

/-! ## A215817.P7909165898288457209

`A008574(A000984(n))-A005317(n)`
-/

namespace A215817.P7909165898288457209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 (A000984 n).toNat - A005317 n

end

end A215817.P7909165898288457209

/-! ## A215817.P2676096677522202630

`A004277(A028329(n))-A005317(n)`
-/

namespace A215817.P2676096677522202630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A028329 n).toNat - A005317 n

end

end A215817.P2676096677522202630

/-! ## A215817.P9069122607332881629

`A008574(record[A081668(n)])-A005317(n)`
-/

namespace A215817.P9069122607332881629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081668 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat - A005317 n

end

end A215817.P9069122607332881629

/-! ## A215817.P6914046840490709802

`A008574(A001405(2*n))-A005317(n)`
-/

namespace A215817.P6914046840490709802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 (A001405 (2 * n)).toNat - A005317 n

end

end A215817.P6914046840490709802

/-!
# A215819: Prime numbers p such that the Fibonacci number F(p) can be written in the form a^2 + 2*b^2.

The programs for A215819, there is no canonical definition to state claims against.
-/

/-! ## A215819.P14229030375647829998

`p?[A215818(n+1)]`
-/

namespace A215819.P14229030375647829998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215819.P14229030375647829998

/-! ## A215819.P974790394933214623

`record[A006530(A215818(n+2))]`
-/

namespace A215819.P974790394933214623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A215818 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A215819.P974790394933214623

/-! ## A215819.P12573465019415838887

`record[A020639(A215818(n+4))]`
-/

namespace A215819.P12573465019415838887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A215818 (n + 4)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A215819.P12573465019415838887

/-! ## A215819.P3666649747718108486

`filter[A215818(n+1), A010051(#)]`
-/

namespace A215819.P3666649747718108486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A215819.P3666649747718108486

/-! ## A215819.P6023192818110959458

`filter[A215818(n+1), A051953(#)]`
-/

namespace A215819.P6023192818110959458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A051953 (f1 j).toNat = 1) n)

end

end A215819.P6023192818110959458

/-!
# A215820: Odd numbers k such that the Fibonacci number F(k) can be written in the form a^2 + 2*b^2.

The programs for A215820, there is no canonical definition to state claims against.
-/

/-! ## A215820.P5482234209800972717

`record[lcm(2, A215818(n+1))/2]`
-/

namespace A215820.P5482234209800972717
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 (A215818 (n + 1)) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A215820.P5482234209800972717

/-! ## A215820.P14450266314724957503

`record[A000265(A215818(n+1))]`
-/

namespace A215820.P14450266314724957503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A215818 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A215820.P14450266314724957503

/-! ## A215820.P11167696965405909885

`record[A026741(A215818(n+2))]`
-/

namespace A215820.P11167696965405909885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A215818 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A215820.P11167696965405909885

/-! ## A215820.P13340193221293874224

`filter[A215818(n+1), A000035(#)]`
-/

namespace A215820.P13340193221293874224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n)

end

end A215820.P13340193221293874224

/-! ## A215820.P10806950021539454507

`filter[A215818(n+1), A356172(#)]`
-/

namespace A215820.P10806950021539454507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A356172 (f1 j).toNat = 1) n)

end

end A215820.P10806950021539454507

/-! ## A215820.P7595622411790155187

`filter[A215818(n+1), A373157(#)]`
-/

namespace A215820.P7595622411790155187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373157 (f1 j).toNat = 1) n)

end

end A215820.P7595622411790155187

/-! ## A215820.P3247178812116098962

`filter[A215818(n+1), A374134(#)]`
-/

namespace A215820.P3247178812116098962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374134 (f1 j).toNat = 1) n)

end

end A215820.P3247178812116098962

/-! ## A215820.P12128942152736432259

`filter[A215818(n+1), A374136(#)]`
-/

namespace A215820.P12128942152736432259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374136 (f1 j).toNat = 1) n)

end

end A215820.P12128942152736432259

/-! ## A215820.P16992882532711663791

`∩[A004273(n), A215818(n+1)]`
-/

namespace A215820.P16992882532711663791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215818 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215820.P16992882532711663791

/-! ## A215820.P7109416600483992575

`∩[A060747(n), A215818(n+1)]`
-/

namespace A215820.P7109416600483992575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060747 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215818 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215820.P7109416600483992575

/-!
# A215821: Even numbers n such that the Fibonacci number F(n) can be written in the form a^2 + 2*b^2.

The programs for A215821, there is no canonical definition to state claims against.
-/

/-! ## A215821.P7243006413122911943

`∩[2*n, A215818(n+1)]`
-/

namespace A215821.P7243006413122911943
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215818 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215821.P7243006413122911943

/-! ## A215821.P8112271826093861887

`filter[A215818(n+1), A059841(#)]`
-/

namespace A215821.P8112271826093861887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A059841 (f1 j).toNat = 1) n)

end

end A215821.P8112271826093861887

/-! ## A215821.P14189118826859384018

`filter[A215818(n+2), A135528(#)]`
-/

namespace A215821.P14189118826859384018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215818 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A135528 (f1 j).toNat = 1) n)

end

end A215821.P14189118826859384018

/-! ## A215821.P8990539123741459543

`filter[A215818(n+2), A266591(#)]`
-/

namespace A215821.P8990539123741459543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215818 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A266591 (f1 j).toNat = 1) n)

end

end A215821.P8990539123741459543

/-! ## A215821.P12549397007632585863

`∩[A215818(n+1), A005843(n)]`
-/

namespace A215821.P12549397007632585863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215818 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215821.P12549397007632585863

/-!
# A215822: Numbers k such that the Fibonacci number F(k) can be written in the form a^2 + 3*b^2.

The programs for A215822, there is no canonical definition to state claims against.
-/

/-! ## A215822.P3853585629315367452

`eq[A131818(n+1), A153643(A132292(n+1))]`
-/

namespace A215822.P3853585629315367452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153643 (A132292 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A215822.P3853585629315367452

/-!
# A215823: Prime numbers p such that the Fibonacci number F(p) can be written in the form a^2 + 3*b^2.

The programs for A215823, there is no canonical definition to state claims against.
-/

/-! ## A215823.P2472281028146995169

`p?[A215822(n+1)]`
-/

namespace A215823.P2472281028146995169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215822 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215823.P2472281028146995169

/-! ## A215823.P2554664091099881173

`record[∑{p}[A215822(n+2), #]]`
-/

namespace A215823.P2554664091099881173
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215822 (n + 2)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n).natAbs, p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A215823.P2554664091099881173

/-! ## A215823.P12123507632373630996

`record[A006530(A215822(n+2))]`
-/

namespace A215823.P12123507632373630996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A215822 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A215823.P12123507632373630996

/-! ## A215823.P39196164555128197

`record[A020639(A215822(n+3))]`
-/

namespace A215823.P39196164555128197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A215822 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A215823.P39196164555128197

/-! ## A215823.P13301902638911301579

`filter[A215822(n+1), A010051(#)]`
-/

namespace A215823.P13301902638911301579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215822 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A215823.P13301902638911301579

/-!
# A215824: Odd numbers k such that the Fibonacci number F(k) can be written in the form a^2 + 3*b^2.

The programs for A215824, there is no canonical definition to state claims against.
-/

/-! ## A215824.P10979088778690741312

`∩[2*n+1, A215822(n+1)]`
-/

namespace A215824.P10979088778690741312
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215822 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215824.P10979088778690741312

/-! ## A215824.P10247907528898106324

`record[A000265(A215822(n+1))]`
-/

namespace A215824.P10247907528898106324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A215822 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A215824.P10247907528898106324

/-! ## A215824.P11732904905981879492

`record[A093178(A215822(n+2))]`
-/

namespace A215824.P11732904905981879492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093178 (A215822 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A215824.P11732904905981879492

/-! ## A215824.P7552195072676483736

`record[A060819(A215822(n+3))]`
-/

namespace A215824.P7552195072676483736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060819 (A215822 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A215824.P7552195072676483736

/-! ## A215824.P594652617190214306

`filter[A215822(n+1), A000035(#)]`
-/

namespace A215824.P594652617190214306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215822 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n)

end

end A215824.P594652617190214306

/-!
# A215825: Even numbers n such that the Fibonacci number F(n) can be written in the form a^2 + 3*b^2.

The programs for A215825, there is no canonical definition to state claims against.
-/

/-! ## A215825.P13666375775919722108

`∩[2*n, A215822(n+1)]`
-/

namespace A215825.P13666375775919722108
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215822 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215825.P13666375775919722108

/-! ## A215825.P15739923329437621042

`filter[A215822(n+1), A059841(#)]`
-/

namespace A215825.P15739923329437621042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215822 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A059841 (f1 j).toNat = 1) n)

end

end A215825.P15739923329437621042

/-! ## A215825.P17963610098892833696

`filter[A215822(n+1), A108357(#)]`
-/

namespace A215825.P17963610098892833696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215822 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A108357 (f1 j).toNat = 1) n)

end

end A215825.P17963610098892833696

/-! ## A215825.P18278370614035456845

`filter[A215822(n+1), A379964(#)]`
-/

namespace A215825.P18278370614035456845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215822 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379964 (f1 j).toNat = 1) n)

end

end A215825.P18278370614035456845

/-!
# A215826: Number of ways in which a 9 X n grid can be tiled with trominoes.

The programs for A215826, there is no canonical definition to state claims against.
-/

/-! ## A215826.P13712555116735649271

`A233320(eq[8, A116598(n)])`
-/

namespace A215826.P13712555116735649271
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116598 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233320 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A215826.P13712555116735649271

/-! ## A215826.P15994027662159795823

`A233320(eq[9, A002262(n)])`
-/

namespace A215826.P15994027662159795823
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233320 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A215826.P15994027662159795823

/-! ## A215826.P12524608913093037629

`A233320(eq[9, A025581(n)])`
-/

namespace A215826.P12524608913093037629
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233320 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A215826.P12524608913093037629

/-! ## A215826.P10708627075464924983

`A233320(eq[10, A193739(n)])`
-/

namespace A215826.P10708627075464924983
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233320 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A215826.P10708627075464924983

/-! ## A215826.P3938962546810983722

`A233320(A374011(n+1)-1)`
-/

namespace A215826.P3938962546810983722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233320 (A374011 (n + 1) - 1).toNat

end

end A215826.P3938962546810983722

/-!
# A215828: a(n) = 7^(floor(n/3))*A(n), where A(n) = A(n-1) + A(n-2) + A(n-3)/7, with A(0)=3, A(1)=1, A(2)=3.

The programs for A215828, the canonical program `A215828.P16133805387593400303` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A215828 has offset 0).

The definition of A215828 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A215828.P16133805387593400303

`ogf((3+x+3x^2-62x^3+22x^4-6x^5-25x^6+5x^7-x^8)/(1-31x^3-25x^6-x^9))`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A215828

/-- `ogf((3+x+3x^2-62x^3+22x^4-6x^5-25x^6+5x^7-x^8)/(1-31x^3-25x^6-x^9))` -/
def P16133805387593400303.Spec : Prop :=
  ∀ n, P16133805387593400303.a n = A215828 n

theorem P16133805387593400303.correct : P16133805387593400303.Spec := by
  intro n
  simp only [A215828]

end A215828

/-!
# A215829: a(n) = -3*a(n-1) + 9*a(n-2) + 3*a(n-3), with a(0)=3, a(1)=-3, a(2)=27.

The programs for A215829, the canonical program `A215829.P15179909587122685254` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A215829 has offset 0).

The definition of A215829 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `-3*a(n-1)+9*a(n-2)+3*a(n-3)` (program `A215829.P15179909587122685254`, by `A215829.P15179909587122685254.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A215829.P11564609759245156893

`ogf((3+6x-9x^2)/(1+3x-9x^2-3x^3))`
-/

namespace A215829.P11564609759245156893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, 6, -9] [1, 3, -9, -3] n

end

end A215829.P11564609759245156893

namespace A215829

/-- `ogf((3+6x-9x^2)/(1+3x-9x^2-3x^3))` -/
def P11564609759245156893.Spec : Prop :=
  ∀ n, P11564609759245156893.a n = A215829 n

end A215829

/-! ## A215829.P15179909587122685254

`-3*a(n-1)+9*a(n-2)+3*a(n-3)` with `a(0)=3, a(1)=-3, a(2)=27`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A215829

/-- `-3*a(n-1)+9*a(n-2)+3*a(n-3)` -/
def P15179909587122685254.Spec : Prop :=
  ∀ n, P15179909587122685254.a n = A215829 n

theorem P15179909587122685254.correct : P15179909587122685254.Spec := by
  intro n
  simp only [A215829]

end A215829

/-!
# A215830: Numbers k such that 2^k contains each decimal digit at least twice.

The programs for A215830, there is no canonical definition to state claims against.
-/

/-! ## A215830.P4964380421096331656

`A216873(n+1)-A138811(A128026(n+1))`
-/

namespace A215830.P4964380421096331656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216873 (n + 1) - A138811 (A128026 (n + 1)).toNat

end

end A215830.P4964380421096331656

/-!
# A215831: a(n) = 3^(-1-floor(n/3))*A215829(n).

The programs for A215831, the canonical program `A215831.P13469387609589851579` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A215831 has offset 0).

The definition of A215831 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A215831.P13469387609589851579

`3^(-1-floor(n/3))*A215829(n)`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A215831

/-- `3^(-1-floor(n/3))*A215829(n)` -/
def P13469387609589851579.Spec : Prop :=
  ∀ n, P13469387609589851579.a n = (A215831 n : ℚ)

end A215831

/-!
# A215834: Fourth derivative of f_n at x=1, where f_n is the n-th of all functions that are representable as x^x^...^x with m>=1 x's and parentheses inserted in all possible ways.

The programs for A215834, there is no canonical definition to state claims against.
-/

/-! ## A215834.P17385844177100103358

`A215703(eq[4, A002262(n)])`
-/

namespace A215834.P17385844177100103358
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215703 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A215834.P17385844177100103358

/-! ## A215834.P2767411570452365682

`A215703(A167614(n+3)+1)`
-/

namespace A215834.P2767411570452365682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215703 (A167614 (n + 3) + 1).toNat

end

end A215834.P2767411570452365682

/-! ## A215834.P17346715234318545972

`A215703(A167499(n+3)-1)`
-/

namespace A215834.P17346715234318545972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215703 (A167499 (n + 3) - 1).toNat

end

end A215834.P17346715234318545972

/-! ## A215834.P12372159017406364299

`A215703(A000124(n+4)+3)`
-/

namespace A215834.P12372159017406364299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215703 (A000124 (n + 4) + 3).toNat

end

end A215834.P12372159017406364299

/-! ## A215834.P7156784917648442969

`A215703(A000096(n+3)+5)`
-/

namespace A215834.P7156784917648442969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215703 (A000096 (n + 3) + 5).toNat

end

end A215834.P7156784917648442969

/-! ## A215834.P17410881606371642546

`A215703(A152948(n+6)+2)`
-/

namespace A215834.P17410881606371642546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215703 (A152948 (n + 6) + 2).toNat

end

end A215834.P17410881606371642546

/-! ## A215834.P325789823870030056

`A215703(eq[2, A144328(n+1)-2])`
-/

namespace A215834.P325789823870030056
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215703 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A215834.P325789823870030056

/-! ## A215834.P17278230644322858741

`A215703(eq[2, A144328(n+1)/2])`
-/

namespace A215834.P17278230644322858741
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A144328 (n + 1) : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215703 (SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n)

end

end A215834.P17278230644322858741

/-! ## A215834.P10217579918037002564

`A215703(Δ[A026054(n+3)-n²])`
-/

namespace A215834.P10217579918037002564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026054 (n + 3) - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215703 (f1 (n + 1) - f1 n).toNat

end

end A215834.P10217579918037002564

/-!
# A215835: Fifth derivative of f_n at x=1, where f_n is the n-th of all functions that are representable as x^x^...^x with m>=1 x's and parentheses inserted in all possible ways.

The programs for A215835, there is no canonical definition to state claims against.
-/

/-! ## A215835.P5422896787480231993

`A215703(A167499(n+4))`
-/

namespace A215835.P5422896787480231993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215703 (A167499 (n + 4)).toNat

end

end A215835.P5422896787480231993

/-! ## A215835.P15805673844381340356

`A215703(A000096(n+4)+6)`
-/

namespace A215835.P15805673844381340356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215703 (A000096 (n + 4) + 6).toNat

end

end A215835.P15805673844381340356

/-! ## A215835.P14737690264115849309

`A215703(A152948(n+7)+3)`
-/

namespace A215835.P14737690264115849309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215703 (A152948 (n + 7) + 3).toNat

end

end A215835.P14737690264115849309

/-! ## A215835.P10110347533994174594

`A215703(A000217(n+6)-(n+1))`
-/

namespace A215835.P10110347533994174594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215703 (A000217 (n + 6) - (n + 1 : ℤ)).toNat

end

end A215835.P10110347533994174594

/-! ## A215835.P12741096564722381628

`A215703(A055998(n)+A016789(n+6))`
-/

namespace A215835.P12741096564722381628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215703 (A055998 n + A016789 (n + 6)).toNat

end

end A215835.P12741096564722381628

/-! ## A215835.P16744902474779677143

`A215703(A024000(n+2)+A000217(n+6))`
-/

namespace A215835.P16744902474779677143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215703 (A024000 (n + 2) + A000217 (n + 6)).toNat

end

end A215835.P16744902474779677143

/-! ## A215835.P8453805771635504972

`A215703(A000124(n+8)-A016789(n+5))`
-/

namespace A215835.P8453805771635504972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215703 (A000124 (n + 8) - A016789 (n + 5)).toNat

end

end A215835.P8453805771635504972

/-!
# A215836: Sixth derivative of f_n at x=1, where f_n is the n-th of all functions that are representable as x^x^...^x with m>=1 x's and parentheses inserted in all possible ways.

The programs for A215836, there is no canonical definition to state claims against.
-/

/-! ## A215836.P11507098085294768450

`A215703(eq[6, A002262(n)])`
-/

namespace A215836.P11507098085294768450
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215703 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A215836.P11507098085294768450

/-! ## A215836.P16883447011152025837

`A215703(A167499(n+5)+1)`
-/

namespace A215836.P16883447011152025837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215703 (A167499 (n + 5) + 1).toNat

end

end A215836.P16883447011152025837

/-! ## A215836.P11075222854669671199

`A215703(A167614(n+5)+3)`
-/

namespace A215836.P11075222854669671199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215703 (A167614 (n + 5) + 3).toNat

end

end A215836.P11075222854669671199

/-! ## A215836.P8875611848471557713

`A215703(A000096(n+5)+7)`
-/

namespace A215836.P8875611848471557713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215703 (A000096 (n + 5) + 7).toNat

end

end A215836.P8875611848471557713

/-! ## A215836.P8383292784706773540

`A215703(A000217(n+6)+6)`
-/

namespace A215836.P8383292784706773540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215703 (A000217 (n + 6) + 6).toNat

end

end A215836.P8383292784706773540

/-! ## A215836.P7979254122205235641

`A215703(A016789(n+6)+A000124(n+3))`
-/

namespace A215836.P7979254122205235641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215703 (A016789 (n + 6) + A000124 (n + 3)).toNat

end

end A215836.P7979254122205235641

/-!
# A215837: Seventh derivative of f_n at x=1, where f_n is the n-th of all functions that are representable as x^x^...^x with m>=1 x's and parentheses inserted in all possible ways.

The programs for A215837, there is no canonical definition to state claims against.
-/

/-! ## A215837.P18381300257162405266

`A215703(eq[7, A002262(n)])`
-/

namespace A215837.P18381300257162405266
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215703 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A215837.P18381300257162405266

/-! ## A215837.P5723580702558126217

`A215703(A167499(n+6)+2)`
-/

namespace A215837.P5723580702558126217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215703 (A167499 (n + 6) + 2).toNat

end

end A215837.P5723580702558126217

/-! ## A215837.P4352360573779996330

`A215703(A000096(n+6)+8)`
-/

namespace A215837.P4352360573779996330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215703 (A000096 (n + 6) + 8).toNat

end

end A215837.P4352360573779996330

/-! ## A215837.P4487951442612247054

`A215703(A024000(n+2)+A000217(n+8))`
-/

namespace A215837.P4487951442612247054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215703 (A024000 (n + 2) + A000217 (n + 8)).toNat

end

end A215837.P4487951442612247054

/-! ## A215837.P13998214251779457496

`A215703(A055998(n+8)-A016789(n+5))`
-/

namespace A215837.P13998214251779457496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215703 (A055998 (n + 8) - A016789 (n + 5)).toNat

end

end A215837.P13998214251779457496

/-!
# A215838: Eighth derivative of f_n at x=1, where f_n is the n-th of all functions that are representable as x^x^...^x with m>=1 x's and parentheses inserted in all possible ways.

The programs for A215838, there is no canonical definition to state claims against.
-/

/-! ## A215838.P7900116104356874477

`A215703((n+7)²-∑[n+5])`
-/

namespace A215838.P7900116104356874477
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215703 ((n + 7) ^ 2 - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A215838.P7900116104356874477

/-! ## A215838.P18263032341220071832

`abs(A215703(A167499(n+7)+3))`
-/

namespace A215838.P18263032341220071832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A215703 (A167499 (n + 7) + 3).toNat|

end

end A215838.P18263032341220071832

/-! ## A215838.P9665194378909066109

`char[A007318(n)]*A215703(A167499(n+7)+3)`
-/

namespace A215838.P9665194378909066109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A215703 (A167499 (n + 7) + 3).toNat

end

end A215838.P9665194378909066109

/-! ## A215838.P6695922552915087795

`A215703(A167499(n+7)+3)+A000007(n+1)`
-/

namespace A215838.P6695922552915087795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215703 (A167499 (n + 7) + 3).toNat + A000007 (n + 1)

end

end A215838.P6695922552915087795

/-! ## A215838.P184578386721370392

`A215703(A167499(n+7)+3)/A158387(n+2)²`
-/

namespace A215838.P184578386721370392
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A215703 (A167499 (n + 7) + 3).toNat : ℚ) / (A158387 (n + 2) ^ 2 : ℚ)

end

end A215838.P184578386721370392

/-! ## A215838.P12861957927095408029

`A007318(val(n+1, 12))*A215703(A167499(n+7)+3)`
-/

namespace A215838.P12861957927095408029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.valuation (n + 1) 12) * A215703 (A167499 (n + 7) + 3).toNat

end

end A215838.P12861957927095408029

/-! ## A215838.P15353269020101668838

`A057077(A006530(n+2)²)*A215703(A167499(n+7)+3)`
-/

namespace A215838.P15353269020101668838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 (A006530 (n + 2) ^ 2).toNat * A215703 (A167499 (n + 7) + 3).toNat

end

end A215838.P15353269020101668838

/-!
# A215839: Ninth derivative of f_n at x=1, where f_n is the n-th of all functions that are representable as x^x^...^x with m>=1 x's and parentheses inserted in all possible ways.

The programs for A215839, there is no canonical definition to state claims against.
-/

/-! ## A215839.P9131250370561070892

`A215703(eq[9, A002262(n)])`
-/

namespace A215839.P9131250370561070892
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215703 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A215839.P9131250370561070892

/-! ## A215839.P3564786535590692481

`A215703(A000124(n+9)+8)`
-/

namespace A215839.P3564786535590692481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215703 (A000124 (n + 9) + 8).toNat

end

end A215839.P3564786535590692481

/-! ## A215839.P11372375473106778339

`A215703(eq[9, A130270(n+1)])`
-/

namespace A215839.P11372375473106778339
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130270 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215703 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A215839.P11372375473106778339

/-! ## A215839.P16374081475106316879

`A215703(eq[9, A144328(n+1)])`
-/

namespace A215839.P16374081475106316879
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215703 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A215839.P16374081475106316879

/-! ## A215839.P5385719414920889435

`A215703(eq[10, A002260(n+1)])`
-/

namespace A215839.P5385719414920889435
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215703 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A215839.P5385719414920889435

/-!
# A215840: Tenth derivative of f_n at x=1, where f_n is the n-th of all functions that are representable as x^x^...^x with m>=1 x's and parentheses inserted in all possible ways.

The programs for A215840, there is no canonical definition to state claims against.
-/

/-! ## A215840.P1294981970217645136

`A215703(eq[10, A002262(n)])`
-/

namespace A215840.P1294981970217645136
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215703 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A215840.P1294981970217645136

/-! ## A215840.P18446367258607280307

`A215703(eq[10, A144328(n+1)])`
-/

namespace A215840.P18446367258607280307
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215703 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A215840.P18446367258607280307

/-! ## A215840.P4573717506741569297

`A215703(eq[10, A327844(n+1)])`
-/

namespace A215840.P4573717506741569297
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327844 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215703 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A215840.P4573717506741569297

/-! ## A215840.P5524955720668252643

`A215703(eq[11, A002260(n+1)])`
-/

namespace A215840.P5524955720668252643
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215703 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A215840.P5524955720668252643

/-! ## A215840.P10830405485235572057

`A215703(eq[11, A135223(n+1)])`
-/

namespace A215840.P10830405485235572057
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135223 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215703 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A215840.P10830405485235572057

/-!
# A215841: Second derivative of f_n at x=1, where f_n is the n-th of all functions that are representable as x^x^...^x with m>=1 x's and parentheses inserted in all possible ways.

The programs for A215841, there is no canonical definition to state claims against.
-/

/-! ## A215841.P3723897744098346931

`A215703(∑[n+2]+3)`
-/

namespace A215841.P3723897744098346931
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215703 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A215841.P3723897744098346931

/-! ## A215841.P9343458484485683897

`and(14, A215703(A340266(n+1)))`
-/

namespace A215841.P9343458484485683897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 14 (A215703 (A340266 (n + 1)).toNat)

end

end A215841.P9343458484485683897

/-! ## A215841.P16642797085525464917

`A215703(A340266(n+1))%A008706(n)`
-/

namespace A215841.P16642797085525464917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A215703 (A340266 (n + 1)).toNat) (A008706 n)

end

end A215841.P16642797085525464917

/-! ## A215841.P15490462268755212805

`A211666(n+1)*A215703(A340266(n+1))`
-/

namespace A215841.P15490462268755212805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211666 (n + 1) * A215703 (A340266 (n + 1)).toNat

end

end A215841.P15490462268755212805

/-! ## A215841.P2042363544376981260

`A000040(n+1)%2*A215703(A340266(n+1))`
-/

namespace A215841.P2042363544376981260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 1)) 2 * A215703 (A340266 (n + 1)).toNat

end

end A215841.P2042363544376981260

/-!
# A215842: Third derivative of f_n at x=1, where f_n is the n-th of all functions that are representable as x^x^...^x with m>=1 x's and parentheses inserted in all possible ways.

The programs for A215842, there is no canonical definition to state claims against.
-/

/-! ## A215842.P3208910129137848416

`A215703(A167614(n+2))`
-/

namespace A215842.P3208910129137848416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215703 (A167614 (n + 2)).toNat

end

end A215842.P3208910129137848416

/-! ## A215842.P6254927048782339788

`A215703(A052905(n)+8)`
-/

namespace A215842.P6254927048782339788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215703 (A052905 n + 8).toNat

end

end A215842.P6254927048782339788

/-! ## A215842.P15420239598707573696

`A215703(A055999(n)+9)`
-/

namespace A215842.P15420239598707573696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215703 (A055999 n + 9).toNat

end

end A215842.P15420239598707573696

/-! ## A215842.P5832598302161373315

`A215703(eq[3, A002262(n)])`
-/

namespace A215842.P5832598302161373315
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215703 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A215842.P5832598302161373315

/-! ## A215842.P5728299531571521800

`A215703(A340266(n+2)+1)`
-/

namespace A215842.P5728299531571521800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215703 (A340266 (n + 2) + 1).toNat

end

end A215842.P5728299531571521800

/-! ## A215842.P7536107400340603909

`A215703(A000124(n+3)+2)`
-/

namespace A215842.P7536107400340603909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215703 (A000124 (n + 3) + 2).toNat

end

end A215842.P7536107400340603909

/-! ## A215842.P11764386951089439416

`A215703(A167499(n+2)-2)`
-/

namespace A215842.P11764386951089439416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215703 (A167499 (n + 2) - 2).toNat

end

end A215842.P11764386951089439416

/-! ## A215842.P4067482798959696063

`A215703(A000096(n+2)+4)`
-/

namespace A215842.P4067482798959696063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215703 (A000096 (n + 2) + 4).toNat

end

end A215842.P4067482798959696063

/-! ## A215842.P2194370093409441887

`A215703(A000217(n+3)+3)`
-/

namespace A215842.P2194370093409441887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215703 (A000217 (n + 3) + 3).toNat

end

end A215842.P2194370093409441887

/-! ## A215842.P8391954982465999890

`A215703(A152948(n+5)+1)`
-/

namespace A215842.P8391954982465999890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215703 (A152948 (n + 5) + 1).toNat

end

end A215842.P8391954982465999890

/-!
# A215843: Number of horizontal, vertical, diagonal and antidiagonal neighbor colorings of the even squares of an n X n array with new integer colors introduced in row major order.

The programs for A215843, there is no canonical definition to state claims against.
-/

/-! ## A215843.P7085523805341325509

`A215847(∑[4*n]+1)`
-/

namespace A215843.P7085523805341325509
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215847 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A215843.P7085523805341325509

/-! ## A215843.P10612692046276038427

`∏{d}[A001844(n), A215847(#)]`
-/

namespace A215843.P10612692046276038427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001844 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A215847 d

end

end A215843.P10612692046276038427

/-!
# A215844: Number of horizontal, vertical, diagonal and antidiagonal neighbor colorings of the even squares of an nX3 array with new integer colors introduced in row major order.

The programs for A215844, there is no canonical definition to state claims against.
-/

/-! ## A215844.P4256110370458536067

`A215847(∑[n+2]+4)`
-/

namespace A215844.P4256110370458536067
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215847 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A215844.P4256110370458536067

/-! ## A215844.P1279330361869680228

`or(char[1], A215847(A167499(n)+n))`
-/

namespace A215844.P1279330361869680228
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A215847 (A167499 n + (n : ℤ)).toNat)

end

end A215844.P1279330361869680228

/-! ## A215844.P7535271576003833544

`A215847(A167614(n+1))^ceil(acot(n))`
-/

namespace A215844.P7535271576003833544
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A215847 (A167614 (n + 1)).toNat : ℚ) ^ (⌈SequenceMachineLib.acot (n : ℝ)⌉ : ℤ)

end

end A215844.P7535271576003833544

/-! ## A215844.P6250232795781763867

`A215847(A167614(n+1))+A011737(n)`
-/

namespace A215844.P6250232795781763867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215847 (A167614 (n + 1)).toNat + A011737 n

end

end A215844.P6250232795781763867

/-! ## A215844.P12746422125908018259

`A215847(A167614(n+1))+A011738(n)`
-/

namespace A215844.P12746422125908018259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215847 (A167614 (n + 1)).toNat + A011738 n

end

end A215844.P12746422125908018259

/-!
# A215845: Number of horizontal, vertical, diagonal and antidiagonal neighbor colorings of the even squares of an n X 5 array with new integer colors introduced in row major order.

The programs for A215845, there is no canonical definition to state claims against.
-/

/-! ## A215845.P15242262851969073341

`A215847(A112355(n+1)+5)`
-/

namespace A215845.P15242262851969073341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215847 (A112355 (n + 1) + 5).toNat

end

end A215845.P15242262851969073341

/-! ## A215845.P17558875387174624259

`record[gcd(A215847(n+5), A215861(n))]`
-/

namespace A215845.P17558875387174624259
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A215847 (n + 5)) (A215861 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A215845.P17558875387174624259

/-! ## A215845.P14445535879155571599

`A215847(A141214(n)+A040012(n))`
-/

namespace A215845.P14445535879155571599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215847 (A141214 n + A040012 n).toNat

end

end A215845.P14445535879155571599

/-! ## A215845.P11511354947166558477

`A215847(∑[n+4]+2)`
-/

namespace A215845.P11511354947166558477
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215847 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A215845.P11511354947166558477

/-! ## A215845.P9777171703501582496

`A257297(n)+A215847(A046691(n+2))`
-/

namespace A215845.P9777171703501582496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257297 n + A215847 (A046691 (n + 2)).toNat

end

end A215845.P9777171703501582496

/-!
# A215846: Number of horizontal, vertical, diagonal and antidiagonal neighbor colorings of the even squares of an n X 7 array with new integer colors introduced in row major order.

The programs for A215846, there is no canonical definition to state claims against.
-/

/-! ## A215846.P7246084417393852517

`A215847(∩[A014601(n), A167487(n)])`
-/

namespace A215846.P7246084417393852517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014601 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167487 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215847 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A215846.P7246084417393852517

/-!
# A215848: Primes > 3.

The programs for A215848, the canonical program `A215848.P17068717743202425727` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A215848 has offset 1).

The definition of A215848 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A215848.P17068717743202425727

`A000040(n+3)`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A215848

/-- `A000040(n+3)` -/
def P17068717743202425727.Spec : Prop :=
  ∀ n, P17068717743202425727.a n = A215848 (n + 1)

theorem P17068717743202425727.correct : P17068717743202425727.Spec := by
  intro n
  simp only [A215848, Nat.add_sub_cancel]

end A215848

/-! ## A215848.P3819172161010909744

`p?[2*n+5]`
-/

namespace A215848.P3819172161010909744
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A215848.P3819172161010909744

namespace A215848

/-- `p?[2*n+5]` -/
def P3819172161010909744.Spec : Prop :=
  ∀ n, (P3819172161010909744.a n : ℤ) = A215848 (n + 1)

end A215848

/-! ## A215848.P17382389446657671433

`Δ[A007504(n+2)]`
-/

namespace A215848.P17382389446657671433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A215848.P17382389446657671433

namespace A215848

/-- `Δ[A007504(n+2)]` -/
def P17382389446657671433.Spec : Prop :=
  ∀ n, P17382389446657671433.a n = A215848 (n + 1)

end A215848

/-! ## A215848.P6365796790955914172

`record[A259153(n+4)]`
-/

namespace A215848.P6365796790955914172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259153 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A215848.P6365796790955914172

namespace A215848

/-- `record[A259153(n+4)]` -/
def P6365796790955914172.Spec : Prop :=
  ∀ n, P6365796790955914172.a n = A215848 (n + 1)

end A215848

/-! ## A215848.P14965399744583893918

`A156037(n+3)+1`
-/

namespace A215848.P14965399744583893918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156037 (n + 3) + 1

end

end A215848.P14965399744583893918

namespace A215848

/-- `A156037(n+3)+1` -/
def P14965399744583893918.Spec : Prop :=
  ∀ n, P14965399744583893918.a n = A215848 (n + 1)

end A215848

/-! ## A215848.P18091154992663778459

`A055670(n+3)-1`
-/

namespace A215848.P18091154992663778459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055670 (n + 3) - 1

end

end A215848.P18091154992663778459

namespace A215848

/-- `A055670(n+3)-1` -/
def P18091154992663778459.Spec : Prop :=
  ∀ n, P18091154992663778459.a n = A215848 (n + 1)

end A215848

/-! ## A215848.P1489621094055454297

`A172367(n+1)+4`
-/

namespace A215848.P1489621094055454297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172367 (n + 1) + 4

end

end A215848.P1489621094055454297

namespace A215848

/-- `A172367(n+1)+4` -/
def P1489621094055454297.Spec : Prop :=
  ∀ n, P1489621094055454297.a n = A215848 (n + 1)

theorem P1489621094055454297.correct : P1489621094055454297.Spec := by
  intro n
  simp only [A215848, Nat.add_sub_cancel, A215848.P1489621094055454297.a, A215848.P17068717743202425727.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A172367, A172367.P6320412010058866458.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A215848

/-! ## A215848.P13047387049486450512

`A001748(n+3)/3`
-/

namespace A215848.P13047387049486450512
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001748 (n + 3) : ℚ) / 3

end

end A215848.P13047387049486450512

namespace A215848

/-- `A001748(n+3)/3` -/
def P13047387049486450512.Spec : Prop :=
  ∀ n, P13047387049486450512.a n = (A215848 (n + 1) : ℚ)

theorem P13047387049486450512.correct : P13047387049486450512.Spec := by
  intro n
  simp only [A215848, Nat.add_sub_cancel, A215848.P13047387049486450512.a, A215848.P17068717743202425727.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001748, A001748.P16019639290970068825.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A215848

/-! ## A215848.P7540342261344337164

`A001749(n+3)/4`
-/

namespace A215848.P7540342261344337164
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001749 (n + 3) : ℚ) / 4

end

end A215848.P7540342261344337164

namespace A215848

/-- `A001749(n+3)/4` -/
def P7540342261344337164.Spec : Prop :=
  ∀ n, P7540342261344337164.a n = (A215848 (n + 1) : ℚ)

theorem P7540342261344337164.correct : P7540342261344337164.Spec := by
  intro n
  simp only [A215848, Nat.add_sub_cancel, A215848.P7540342261344337164.a, A215848.P17068717743202425727.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001749, A001749.P16106244962881767471.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A215848

/-! ## A215848.P12233955045591582202

`A004139(n+1)+A000038(n)`
-/

namespace A215848.P12233955045591582202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1) + A000038 n

end

end A215848.P12233955045591582202

namespace A215848

/-- `A004139(n+1)+A000038(n)` -/
def P12233955045591582202.Spec : Prop :=
  ∀ n, P12233955045591582202.a n = A215848 (n + 1)

end A215848

/-! ## A215848.P4385298214760232883

`A093667(n+1)+A001223(n+1)`
-/

namespace A215848.P4385298214760232883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093667 (n + 1) + A001223 (n + 1)

end

end A215848.P4385298214760232883

namespace A215848

/-- `A093667(n+1)+A001223(n+1)` -/
def P4385298214760232883.Spec : Prop :=
  ∀ n, P4385298214760232883.a n = A215848 (n + 1)

theorem P4385298214760232883.correct : P4385298214760232883.Spec := by
  intro n
  simp only [A215848, Nat.add_sub_cancel, A215848.P4385298214760232883.a, A215848.P17068717743202425727.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001223, A001223.P5034056745985311719.a, A093667, A093667.P4637239888588385054.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A215848

/-! ## A215848.P3999755873276866480

`A168563(n+1)+A002808(n+1)`
-/

namespace A215848.P3999755873276866480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168563 (n + 1) + A002808 (n + 1)

end

end A215848.P3999755873276866480

namespace A215848

/-- `A168563(n+1)+A002808(n+1)` -/
def P3999755873276866480.Spec : Prop :=
  ∀ n, P3999755873276866480.a n = A215848 (n + 1)

end A215848

/-! ## A215848.P13144010538788309704

`A176004(n+1)+A001358(n+1)`
-/

namespace A215848.P13144010538788309704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176004 (n + 1) + A001358 (n + 1)

end

end A215848.P13144010538788309704

namespace A215848

/-- `A176004(n+1)+A001358(n+1)` -/
def P13144010538788309704.Spec : Prop :=
  ∀ n, P13144010538788309704.a n = A215848 (n + 1)

end A215848

/-! ## A215848.P5515736624990798746

`A210497(n+1)+A036263(n+1)`
-/

namespace A215848.P5515736624990798746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210497 (n + 1) + A036263 (n + 1)

end

end A215848.P5515736624990798746

namespace A215848

/-- `A210497(n+1)+A036263(n+1)` -/
def P5515736624990798746.Spec : Prop :=
  ∀ n, P5515736624990798746.a n = A215848 (n + 1)

theorem P5515736624990798746.correct : P5515736624990798746.Spec := by
  intro n
  simp only [A215848, Nat.add_sub_cancel, A215848.P5515736624990798746.a, A215848.P17068717743202425727.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A036263, A036263.P14888342997651084870.a, A210497, A210497.P11511747503835237208.a, A001223, A001223.P5034056745985311719.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A215848

/-! ## A215848.P9028213393138593673

`A135732(n+1)+A135731(n+1)`
-/

namespace A215848.P9028213393138593673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135732 (n + 1) + A135731 (n + 1)

end

end A215848.P9028213393138593673

namespace A215848

/-- `A135732(n+1)+A135731(n+1)` -/
def P9028213393138593673.Spec : Prop :=
  ∀ n, P9028213393138593673.a n = A215848 (n + 1)

end A215848

/-! ## A215848.P9468867717124951325

`A191472(n+1)+A096379(n+1)`
-/

namespace A215848.P9468867717124951325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191472 (n + 1) + A096379 (n + 1)

end

end A215848.P9468867717124951325

namespace A215848

/-- `A191472(n+1)+A096379(n+1)` -/
def P9468867717124951325.Spec : Prop :=
  ∀ n, P9468867717124951325.a n = A215848 (n + 1)

theorem P9468867717124951325.correct : P9468867717124951325.Spec := by
  intro n
  simp only [A215848, Nat.add_sub_cancel, A215848.P9468867717124951325.a, A215848.P17068717743202425727.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A096379, A096379.P509834506880397996.a, A191472, A191472.P18443393501784059995.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A215848

/-! ## A215848.P12794585845602720255

`A034961(n+1)-A001043(n+1)`
-/

namespace A215848.P12794585845602720255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034961 (n + 1) - A001043 (n + 1)

end

end A215848.P12794585845602720255

namespace A215848

/-- `A034961(n+1)-A001043(n+1)` -/
def P12794585845602720255.Spec : Prop :=
  ∀ n, P12794585845602720255.a n = A215848 (n + 1)

theorem P12794585845602720255.correct : P12794585845602720255.Spec := by
  intro n
  simp only [A215848, Nat.add_sub_cancel, A215848.P12794585845602720255.a, A215848.P17068717743202425727.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001043, A001043.P18269783162673735460.a, A034961, A034961.P9480249767911558173.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A215848

/-! ## A215848.P9283078431687993463

`A028334(n+2)+A024675(n+1)`
-/

namespace A215848.P9283078431687993463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028334 (n + 2) + A024675 (n + 1)

end

end A215848.P9283078431687993463

namespace A215848

/-- `A028334(n+2)+A024675(n+1)` -/
def P9283078431687993463.Spec : Prop :=
  ∀ n, P9283078431687993463.a n = A215848 (n + 1)

end A215848

/-! ## A215848.P11740625424811655482

`A001043(n+1)-A096379(n+1)`
-/

namespace A215848.P11740625424811655482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001043 (n + 1) - A096379 (n + 1)

end

end A215848.P11740625424811655482

namespace A215848

/-- `A001043(n+1)-A096379(n+1)` -/
def P11740625424811655482.Spec : Prop :=
  ∀ n, P11740625424811655482.a n = A215848 (n + 1)

theorem P11740625424811655482.correct : P11740625424811655482.Spec := by
  intro n
  simp only [A215848, Nat.add_sub_cancel, A215848.P11740625424811655482.a, A215848.P17068717743202425727.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001043, A001043.P18269783162673735460.a, A096379, A096379.P509834506880397996.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A215848

/-! ## A215848.P18076135457755232148

`A006094(n+1)-A111071(n+1)`
-/

namespace A215848.P18076135457755232148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006094 (n + 1) - A111071 (n + 1)

end

end A215848.P18076135457755232148

namespace A215848

/-- `A006094(n+1)-A111071(n+1)` -/
def P18076135457755232148.Spec : Prop :=
  ∀ n, P18076135457755232148.a n = A215848 (n + 1)

theorem P18076135457755232148.correct : P18076135457755232148.Spec := by
  intro n
  simp only [A215848, Nat.add_sub_cancel, A215848.P18076135457755232148.a, A215848.P17068717743202425727.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A006094, A006094.P10257567645245129766.a, A111071, A111071.P17768111592594357772.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A215848

/-!
# A215850: Primes p such that 2*p + 1 divides Lucas(p).

The programs for A215850, the canonical program `A215850.P12379767940283912571` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A215850 has offset 1).

The definition of A215850 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1331 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A215850.P6130085287114265753

`p?[floor(A277049(n+1)/2)]`
-/

namespace A215850.P6130085287114265753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A277049 (n + 1) : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215850.P6130085287114265753

namespace A215850

/-- `p?[floor(A277049(n+1)/2)]` -/
def P6130085287114265753.Spec : Prop :=
  ∀ n, P6130085287114265753.a n = A215850 (n + 1)

end A215850

/-! ## A215850.P16916568300523255883

`∩[A005384(n+1), A045457(n+1)]`
-/

namespace A215850.P16916568300523255883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005384 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045457 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215850.P16916568300523255883

namespace A215850

/-- `∩[A005384(n+1), A045457(n+1)]` -/
def P16916568300523255883.Spec : Prop :=
  ∀ n, (P16916568300523255883.a n : ℤ) = A215850 (n + 1)

end A215850

/-! ## A215850.P11807851258393902696

`∩[A045457(n+1), A246857(n+1)]`
-/

namespace A215850.P11807851258393902696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045457 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246857 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215850.P11807851258393902696

namespace A215850

/-- `∩[A045457(n+1), A246857(n+1)]` -/
def P11807851258393902696.Spec : Prop :=
  ∀ n, (P11807851258393902696.a n : ℤ) = A215850 (n + 1)

end A215850

/-! ## A215850.P11520981419165777606

`∩[A045457(n+1), A348511(n+1)]`
-/

namespace A215850.P11520981419165777606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045457 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348511 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215850.P11520981419165777606

namespace A215850

/-- `∩[A045457(n+1), A348511(n+1)]` -/
def P11520981419165777606.Spec : Prop :=
  ∀ n, (P11520981419165777606.a n : ℤ) = A215850 (n + 1)

end A215850

/-! ## A215850.P9433466018820910505

`∩[A045457(n+1), A350230(n+1)]`
-/

namespace A215850.P9433466018820910505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045457 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350230 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215850.P9433466018820910505

namespace A215850

/-- `∩[A045457(n+1), A350230(n+1)]` -/
def P9433466018820910505.Spec : Prop :=
  ∀ n, (P9433466018820910505.a n : ℤ) = A215850 (n + 1)

end A215850

/-! ## A215850.P11427257479410195115

`∩[A045457(n+1), A364926(n+1)]`
-/

namespace A215850.P11427257479410195115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045457 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364926 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215850.P11427257479410195115

namespace A215850

/-- `∩[A045457(n+1), A364926(n+1)]` -/
def P11427257479410195115.Spec : Prop :=
  ∀ n, (P11427257479410195115.a n : ℤ) = A215850 (n + 1)

end A215850

/-! ## A215850.P12379767940283912571

`∩[A045457(n+1), A215751(n+1)]`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A215850

/-- `∩[A045457(n+1), A215751(n+1)]` -/
def P12379767940283912571.Spec : Prop :=
  ∀ n, (P12379767940283912571.a n : ℤ) = A215850 (n + 1)

theorem P12379767940283912571.correct : P12379767940283912571.Spec := by
  intro n
  simp only [A215850, Nat.add_sub_cancel]

end A215850

/-! ## A215850.P8949393507906005729

`∩[A045457(n+1), A259973(n+1)]`
-/

namespace A215850.P8949393507906005729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045457 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259973 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215850.P8949393507906005729

namespace A215850

/-- `∩[A045457(n+1), A259973(n+1)]` -/
def P8949393507906005729.Spec : Prop :=
  ∀ n, (P8949393507906005729.a n : ℤ) = A215850 (n + 1)

end A215850

/-! ## A215850.P5775972357739662645

`∩[A045356(n+1), A215751(n+1)]`
-/

namespace A215850.P5775972357739662645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045356 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215751 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215850.P5775972357739662645

namespace A215850

/-- `∩[A045356(n+1), A215751(n+1)]` -/
def P5775972357739662645.Spec : Prop :=
  ∀ n, (P5775972357739662645.a n : ℤ) = A215850 (n + 1)

end A215850

/-! ## A215850.P7156680986961139251

`p?[record[A385193(n+1)]]`
-/

namespace A215850.P7156680986961139251
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385193 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215850.P7156680986961139251

namespace A215850

/-- `p?[record[A385193(n+1)]]` -/
def P7156680986961139251.Spec : Prop :=
  ∀ n, P7156680986961139251.a n = A215850 (n + 1)

end A215850

/-! ## A215850.P3026761121768730237

`∩[A045356(n+1), A163778(n+1)]`
-/

namespace A215850.P3026761121768730237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045356 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163778 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215850.P3026761121768730237

namespace A215850

/-- `∩[A045356(n+1), A163778(n+1)]` -/
def P3026761121768730237.Spec : Prop :=
  ∀ n, (P3026761121768730237.a n : ℤ) = A215850 (n + 1)

end A215850

/-! ## A215850.P7402391198065240006

`∩[A045457(n+1), A163778(n+1)]`
-/

namespace A215850.P7402391198065240006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045457 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163778 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215850.P7402391198065240006

namespace A215850

/-- `∩[A045457(n+1), A163778(n+1)]` -/
def P7402391198065240006.Spec : Prop :=
  ∀ n, (P7402391198065240006.a n : ℤ) = A215850 (n + 1)

end A215850

/-! ## A215850.P17616533062376685190

`∩[A045457(n+1), A078762(n+1)]`
-/

namespace A215850.P17616533062376685190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045457 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078762 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215850.P17616533062376685190

namespace A215850

/-- `∩[A045457(n+1), A078762(n+1)]` -/
def P17616533062376685190.Spec : Prop :=
  ∀ n, (P17616533062376685190.a n : ℤ) = A215850 (n + 1)

end A215850

/-! ## A215850.P10714867671402808229

`∩[A045356(n+1), A104635(n+1)]`
-/

namespace A215850.P10714867671402808229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045356 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104635 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215850.P10714867671402808229

namespace A215850

/-- `∩[A045356(n+1), A104635(n+1)]` -/
def P10714867671402808229.Spec : Prop :=
  ∀ n, (P10714867671402808229.a n : ℤ) = A215850 (n + 1)

end A215850

/-! ## A215850.P8045570804336934383

`∩[A045457(n+1), A104635(n+1)]`
-/

namespace A215850.P8045570804336934383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045457 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104635 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215850.P8045570804336934383

namespace A215850

/-- `∩[A045457(n+1), A104635(n+1)]` -/
def P8045570804336934383.Spec : Prop :=
  ∀ n, (P8045570804336934383.a n : ℤ) = A215850 (n + 1)

end A215850

/-! ## A215850.P1149093826355586644

`∩[A045457(n+1), A054639(n+1)]`
-/

namespace A215850.P1149093826355586644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045457 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054639 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215850.P1149093826355586644

namespace A215850

/-- `∩[A045457(n+1), A054639(n+1)]` -/
def P1149093826355586644.Spec : Prop :=
  ∀ n, (P1149093826355586644.a n : ℤ) = A215850 (n + 1)

end A215850

/-! ## A215850.P5144161792060176011

`∩[A014109(n+1), A045457(n+1)]`
-/

namespace A215850.P5144161792060176011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014109 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045457 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215850.P5144161792060176011

namespace A215850

/-- `∩[A014109(n+1), A045457(n+1)]` -/
def P5144161792060176011.Spec : Prop :=
  ∀ n, (P5144161792060176011.a n : ℤ) = A215850 (n + 1)

end A215850

/-!
# A215851: Number of simple labeled graphs on n nodes with exactly 1 connected component that is a tree or a cycle.

The programs for A215851, there is no canonical definition to state claims against.
-/

/-! ## A215851.P8684166158030660890

`abs(record[Δ[A215861(n)]])`
-/

namespace A215851.P8684166158030660890
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215861 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)|

end

end A215851.P8684166158030660890

/-! ## A215851.P15598368354535804529

`A215861(∑[n+1]+1)`
-/

namespace A215851.P15598368354535804529
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215861 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A215851.P15598368354535804529

/-! ## A215851.P17607288746090825734

`((-3)^n)%3+record[A215861(n+1)]`
-/

namespace A215851.P17607288746090825734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215861 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((-3) ^ n) 3 + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A215851.P17607288746090825734

/-! ## A215851.P8385218214082583261

`A000007(n)+record[A215861(n+1)]`
-/

namespace A215851.P8385218214082583261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215861 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A215851.P8385218214082583261

/-! ## A215851.P1812065286886698251

`A036987(2*n)+record[A215861(n+1)]`
-/

namespace A215851.P1812065286886698251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215861 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036987 (2 * n) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A215851.P1812065286886698251

/-! ## A215851.P713485625357205370

`(n+1)^(n-1)+A000142(n)-A001710(n)`
-/

namespace A215851.P713485625357205370
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ ((n : ℤ) - 1 : ℤ) + (A000142 n - A001710 n : ℚ)

end

end A215851.P713485625357205370

/-! ## A215851.P10575634160405000988

`A010051(A000217(2*(n+1)))+record[A215861(n+1)]`
-/

namespace A215851.P10575634160405000988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215861 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A000217 (2 * (n + 1))).toNat + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A215851.P10575634160405000988

/-!
# A215852: Number of simple labeled graphs on n nodes with exactly 2 connected components that are trees or cycles.

The programs for A215852, there is no canonical definition to state claims against.
-/

/-! ## A215852.P8573178986709200360

`record[A215861(∑[n]+2)]`
-/

namespace A215852.P8573178986709200360
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215861 (∑ j ∈ Finset.range (n + 1), f2 j + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A215852.P8573178986709200360

/-! ## A215852.P11166422758322813062

`A215861(∑[n+2]+3)`
-/

namespace A215852.P11166422758322813062
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215861 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A215852.P11166422758322813062

/-! ## A215852.P13301314953354183843

`record[gcd(A215861(n), A334568(n))]`
-/

namespace A215852.P13301314953354183843
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A215861 n) (A334568 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A215852.P13301314953354183843

/-! ## A215852.P17971882504763479167

`record[gcd(A215861(n+2), A215977(n))]`
-/

namespace A215852.P17971882504763479167
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A215861 (n + 2)) (A215977 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A215852.P17971882504763479167

/-! ## A215852.P16223665305938989263

`record[A215861(A002262(n))*A215861(n)]`
-/

namespace A215852.P16223665305938989263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215861 (A002262 n).toNat * A215861 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A215852.P16223665305938989263

/-! ## A215852.P17239378009077784952

`A215861(A133263(n+2))+A000007(3*n+1)`
-/

namespace A215852.P17239378009077784952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215861 (A133263 (n + 2)).toNat + A000007 (3 * n + 1)

end

end A215852.P17239378009077784952

/-! ## A215852.P3081889948447012313

`A057427(2*(n+1))*A215861(A133263(n+2))`
-/

namespace A215852.P3081889948447012313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (2 * (n + 1)) * A215861 (A133263 (n + 2)).toNat

end

end A215852.P3081889948447012313

/-!
# A215853: Number of simple labeled graphs on n nodes with exactly 3 connected components that are trees or cycles.

The programs for A215853, there is no canonical definition to state claims against.
-/

/-! ## A215853.P7261871716231809660

`A215861(A167614(n+2))`
-/

namespace A215853.P7261871716231809660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215861 (A167614 (n + 2)).toNat

end

end A215853.P7261871716231809660

/-! ## A215853.P5282298840457012853

`A215861(A052905(n)+8)`
-/

namespace A215853.P5282298840457012853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215861 (A052905 n + 8).toNat

end

end A215853.P5282298840457012853

/-! ## A215853.P18228576172418787838

`A215861(eq[2, A141169(n)])`
-/

namespace A215853.P18228576172418787838
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141169 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215861 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A215853.P18228576172418787838

/-! ## A215853.P17472173273632503862

`A215861(eq[3, A002262(n)])`
-/

namespace A215853.P17472173273632503862
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215861 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A215853.P17472173273632503862

/-! ## A215853.P2861372477609129641

`A215861(eq[3, A191532(n)])`
-/

namespace A215853.P2861372477609129641
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191532 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215861 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A215853.P2861372477609129641

/-! ## A215853.P5964533117011266100

`record[A215861(A000096(n)+4)]`
-/

namespace A215853.P5964533117011266100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215861 (A000096 n + 4).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A215853.P5964533117011266100

/-! ## A215853.P3137181280319694989

`A215861(A167499(n+2)-2)`
-/

namespace A215853.P3137181280319694989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215861 (A167499 (n + 2) - 2).toNat

end

end A215853.P3137181280319694989

/-! ## A215853.P7113541751437396660

`A215861(A000217(n+3)+3)`
-/

namespace A215853.P7113541751437396660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215861 (A000217 (n + 3) + 3).toNat

end

end A215853.P7113541751437396660

/-! ## A215853.P7004512322032419360

`A215861(eq[4, A002260(n+1)])`
-/

namespace A215853.P7004512322032419360
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215861 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A215853.P7004512322032419360

/-! ## A215853.P9250868259569766036

`record[gcd(A215861(n+1), A334568(n))]`
-/

namespace A215853.P9250868259569766036
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A215861 (n + 1)) (A334568 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A215853.P9250868259569766036

/-!
# A215854: Number of simple labeled graphs on n nodes with exactly 4 connected components that are trees or cycles.

The programs for A215854, there is no canonical definition to state claims against.
-/

/-! ## A215854.P3906959328467843523

`A215861(eq[3, A141169(n)])`
-/

namespace A215854.P3906959328467843523
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141169 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215861 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A215854.P3906959328467843523

/-! ## A215854.P17001893757809908213

`A215861(eq[4, A002262(n)])`
-/

namespace A215854.P17001893757809908213
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215861 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A215854.P17001893757809908213

/-! ## A215854.P13157198028190650491

`A215861(eq[16, A059268(n)])`
-/

namespace A215854.P13157198028190650491
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215861 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A215854.P13157198028190650491

/-! ## A215854.P15966117811675165015

`A215861(A000124(n+4)+3)`
-/

namespace A215854.P15966117811675165015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215861 (A000124 (n + 4) + 3).toNat

end

end A215854.P15966117811675165015

/-! ## A215854.P725566706142346210

`A215861(A046691(n+2)+8)`
-/

namespace A215854.P725566706142346210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215861 (A046691 (n + 2) + 8).toNat

end

end A215854.P725566706142346210

/-! ## A215854.P15654174056075965712

`A215861(eq[5, A002260(n+1)])`
-/

namespace A215854.P15654174056075965712
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215861 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A215854.P15654174056075965712

/-! ## A215854.P7337839780225770773

`A215861(eq[5, A117502(n+1)])`
-/

namespace A215854.P7337839780225770773
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117502 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215861 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A215854.P7337839780225770773

/-! ## A215854.P13490526061293649585

`A215861(eq[2, A144328(n+1)-2])`
-/

namespace A215854.P13490526061293649585
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215861 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A215854.P13490526061293649585

/-! ## A215854.P51128556465817892

`A215861(eq[2, A144328(n+1)/2])`
-/

namespace A215854.P51128556465817892
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A144328 (n + 1) : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215861 (SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n)

end

end A215854.P51128556465817892

/-! ## A215854.P10360923950531564714

`A215861(Δ[A026054(n+3)-n²])`
-/

namespace A215854.P10360923950531564714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026054 (n + 3) - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215861 (f1 (n + 1) - f1 n).toNat

end

end A215854.P10360923950531564714

/-!
# A215855: Number of simple labeled graphs on n nodes with exactly 5 connected components that are trees or cycles.

The programs for A215855, there is no canonical definition to state claims against.
-/

/-! ## A215855.P16009197248888970151

`A215861(A167499(n+4))`
-/

namespace A215855.P16009197248888970151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215861 (A167499 (n + 4)).toNat

end

end A215855.P16009197248888970151

/-! ## A215855.P5034360427357381133

`A215861(eq[5, A002262(n)])`
-/

namespace A215855.P5034360427357381133
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215861 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A215855.P5034360427357381133

/-! ## A215855.P7248282615678782689

`A215861(eq[5, A141169(n)])`
-/

namespace A215855.P7248282615678782689
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141169 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215861 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A215855.P7248282615678782689

/-! ## A215855.P1723648767254796564

`A215861(eq[6, A002260(n+1)])`
-/

namespace A215855.P1723648767254796564
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215861 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A215855.P1723648767254796564

/-! ## A215855.P12110067412288013852

`A215861(eq[8, A117502(n+1)])`
-/

namespace A215855.P12110067412288013852
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117502 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215861 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A215855.P12110067412288013852

/-!
# A215856: Number of simple labeled graphs on n nodes with exactly 6 connected components that are trees or cycles.

The programs for A215856, there is no canonical definition to state claims against.
-/

/-! ## A215856.P14001860710423447303

`A215861(eq[6, A002262(n)])`
-/

namespace A215856.P14001860710423447303
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215861 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A215856.P14001860710423447303

/-! ## A215856.P4816701380835276660

`A215861(eq[8, A141169(n)])`
-/

namespace A215856.P4816701380835276660
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141169 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215861 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A215856.P4816701380835276660

/-! ## A215856.P10348161078547647832

`A215861(eq[64, A059268(n)])`
-/

namespace A215856.P10348161078547647832
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  64

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215861 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A215856.P10348161078547647832

/-! ## A215856.P9148314233537774694

`A215861(eq[7, A002260(n+1)])`
-/

namespace A215856.P9148314233537774694
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215861 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A215856.P9148314233537774694

/-! ## A215856.P18162061951193078155

`A215861(eq[7, A134868(n+1)])`
-/

namespace A215856.P18162061951193078155
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134868 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215861 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A215856.P18162061951193078155

/-! ## A215856.P478619697597154346

`A215861(eq[13, A104763(n+1)])`
-/

namespace A215856.P478619697597154346
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104763 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215861 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A215856.P478619697597154346

/-!
# A215857: Number of simple labeled graphs on n nodes with exactly 7 connected components that are trees or cycles.

The programs for A215857, there is no canonical definition to state claims against.
-/

/-! ## A215857.P10904366375458994221

`A215861(eq[7, A002262(n)])`
-/

namespace A215857.P10904366375458994221
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215861 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A215857.P10904366375458994221

/-! ## A215857.P13878084087974275436

`A215861(eq[8, A002260(n+1)])`
-/

namespace A215857.P13878084087974275436
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215861 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A215857.P13878084087974275436

/-! ## A215857.P13787498917468413810

`A215861(eq[8, A134868(n+1)])`
-/

namespace A215857.P13787498917468413810
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134868 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215861 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A215857.P13787498917468413810

/-! ## A215857.P4891275056272454560

`record[A215861(n*A316868(A002262(n)))]`
-/

namespace A215857.P4891275056272454560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215861 ((n : ℤ) * A316868 (A002262 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A215857.P4891275056272454560

/-! ## A215857.P18376677739422657610

`record[A215861(n)^A316868(A002262(n))]`
-/

namespace A215857.P18376677739422657610
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A215861 n : ℚ) ^ (A316868 (A002262 n).toNat : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A215857.P18376677739422657610

/-!
# A215858: Number of simple labeled graphs on n nodes with exactly 8 connected components that are trees or cycles.

The programs for A215858, there is no canonical definition to state claims against.
-/

/-! ## A215858.P16089310639395318550

`A215861(eq[8, A002262(n)])`
-/

namespace A215858.P16089310639395318550
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215861 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A215858.P16089310639395318550

/-! ## A215858.P1150910753046682908

`A215861(eq[8, A130270(n+1)])`
-/

namespace A215858.P1150910753046682908
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130270 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215861 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A215858.P1150910753046682908

/-! ## A215858.P2166507246084793103

`A215861(eq[8, A144328(n+1)])`
-/

namespace A215858.P2166507246084793103
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215861 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A215858.P2166507246084793103

/-! ## A215858.P2870753963906232620

`A215861(eq[9, A002260(n+1)])`
-/

namespace A215858.P2870753963906232620
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215861 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A215858.P2870753963906232620

/-! ## A215858.P17319442898980434361

`A215861(eq[9, A134868(n+1)])`
-/

namespace A215858.P17319442898980434361
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134868 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215861 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A215858.P17319442898980434361

/-!
# A215859: Number of simple labeled graphs on n nodes with exactly 9 connected components that are trees or cycles.

The programs for A215859, there is no canonical definition to state claims against.
-/

/-! ## A215859.P3212227349927604569

`A215861(eq[9, A002262(n)])`
-/

namespace A215859.P3212227349927604569
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215861 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A215859.P3212227349927604569

/-! ## A215859.P643110935514931927

`A215861(eq[9, A191532(n)])`
-/

namespace A215859.P643110935514931927
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191532 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215861 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A215859.P643110935514931927

/-! ## A215859.P10755520582243726044

`A215861(eq[9, A130270(n+1)])`
-/

namespace A215859.P10755520582243726044
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130270 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215861 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A215859.P10755520582243726044

/-! ## A215859.P11648699577100167109

`A215861(eq[10, A002260(n+1)])`
-/

namespace A215859.P11648699577100167109
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215861 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A215859.P11648699577100167109

/-! ## A215859.P15729710065637478609

`A215861(eq[10, A134868(n+1)])`
-/

namespace A215859.P15729710065637478609
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134868 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215861 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A215859.P15729710065637478609

/-!
# A215860: Number of simple labeled graphs on n nodes with exactly 10 connected components that are trees or cycles.

The programs for A215860, there is no canonical definition to state claims against.
-/

/-! ## A215860.P6336336095350150442

`A215861(eq[10, A002262(n)])`
-/

namespace A215860.P6336336095350150442
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215861 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A215860.P6336336095350150442

/-! ## A215860.P9623786924523235117

`A215861(A000096(n+9)+11)`
-/

namespace A215860.P9623786924523235117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215861 (A000096 (n + 9) + 11).toNat

end

end A215860.P9623786924523235117

/-! ## A215860.P3645077215689671785

`A215861(eq[10, A144328(n+1)])`
-/

namespace A215860.P3645077215689671785
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215861 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A215860.P3645077215689671785

/-! ## A215860.P7738373812691413969

`A215861(eq[11, A002260(n+1)])`
-/

namespace A215860.P7738373812691413969
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215861 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A215860.P7738373812691413969

/-! ## A215860.P8566292258371826430

`A215861(eq[11, A134868(n+1)])`
-/

namespace A215860.P8566292258371826430
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134868 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215861 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A215860.P8566292258371826430

/-!
# A215861: Number T(n,k) of simple labeled graphs on n nodes with exactly k connected components that are trees or cycles; triangle T(n,k), n>=0, 0<=k<=n, read by rows.

The programs for A215861, there is no canonical definition to state claims against.
-/

/-! ## A215861.P2718623490859323329

`A072088(A316868(n)+A132062(n))`
-/

namespace A215861.P2718623490859323329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072088 (A316868 n + A132062 n).toNat

end

end A215861.P2718623490859323329

/-! ## A215861.P12497281590886035930

`A000194(A271703(n)*A321964(n))`
-/

namespace A215861.P12497281590886035930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A271703 n * A321964 n).toNat

end

end A215861.P12497281590886035930

/-! ## A215861.P519065236749509232

`A113368(n)-A170980(A267836(n+1))`
-/

namespace A215861.P519065236749509232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113368 n - A170980 (A267836 (n + 1)).toNat

end

end A215861.P519065236749509232

/-! ## A215861.P4189820838705586045

`A072088(A132062(n))+Δ[A059995(n+2)]`
-/

namespace A215861.P4189820838705586045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059995 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072088 (A132062 n).toNat + (f1 (n + 1) - f1 n)

end

end A215861.P4189820838705586045

/-! ## A215861.P9465640707575215905

`and(∑[A045768(n+1)], A354794(n))`
-/

namespace A215861.P9465640707575215905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045768 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (∑ j ∈ Finset.range (n + 1), f1 j) (A354794 n)

end

end A215861.P9465640707575215905

/-!
# A215862: Number of simple labeled graphs on n+2 nodes with exactly n connected components that are trees or cycles.

The programs for A215862, the canonical program `A215862.P16699599028653009141` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A215862 has offset 0).

The definition of A215862 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A215862.P10276052198564964988

`ogf((4x-x^2)/(1-5x+10x^2-10x^3+5x^4-x^5))`
-/

namespace A215862.P10276052198564964988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 4, -1] [1, -5, 10, -10, 5, -1] n

end

end A215862.P10276052198564964988

namespace A215862

/-- `ogf((4x-x^2)/(1-5x+10x^2-10x^3+5x^4-x^5))` -/
def P10276052198564964988.Spec : Prop :=
  ∀ n, P10276052198564964988.a n = A215862 n

end A215862

/-! ## A215862.P853805266934402738

`C(n+2, 3)*(3*n+13)/4`
-/

namespace A215862.P853805266934402738
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 2) 3 * (3 * n + 13) : ℚ) / 4

end

end A215862.P853805266934402738

namespace A215862

/-- `C(n+2, 3)*(3*n+13)/4` -/
def P853805266934402738.Spec : Prop :=
  ∀ n, P853805266934402738.a n = (A215862 n : ℚ)

end A215862

/-! ## A215862.P16699599028653009141

`5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` with `a(0)=0, a(1)=4, a(2)=19, a(3)=55, a(4)=125`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A215862

/-- `5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` -/
def P16699599028653009141.Spec : Prop :=
  ∀ n, P16699599028653009141.a n = A215862 n

theorem P16699599028653009141.correct : P16699599028653009141.Spec := by
  intro n
  simp only [A215862]

end A215862

/-! ## A215862.P1489112250547475628

`∑[(3+n)*∑[n]]`
-/

namespace A215862.P1489112250547475628
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (3 + n) * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A215862.P1489112250547475628

namespace A215862

/-- `∑[(3+n)*∑[n]]` -/
def P1489112250547475628.Spec : Prop :=
  ∀ n, (P1489112250547475628.a n : ℤ) = A215862 n

end A215862

/-! ## A215862.P8664628094324168534

`∑[∑[n]]+C(∑[n+1], 2)`
-/

namespace A215862.P8664628094324168534
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + Nat.choose (∑ j ∈ Finset.range (n + 1), f3 j) 2

end

end A215862.P8664628094324168534

namespace A215862

/-- `∑[∑[n]]+C(∑[n+1], 2)` -/
def P8664628094324168534.Spec : Prop :=
  ∀ n, (P8664628094324168534.a n : ℤ) = A215862 n

end A215862

/-! ## A215862.P7270318941711736668

`floor(∑[∑[∑[a(n-1)+3]]])` with `a(0)=0, a(1)=4`

`floor` is left out, it is the identity on integers.
-/

namespace A215862.P7270318941711736668
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.rec [0, 4] fun n f3 =>
  f3 (n - 1) + 3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A215862.P7270318941711736668

namespace A215862

/-- `floor(∑[∑[∑[a(n-1)+3]]])` -/
def P7270318941711736668.Spec : Prop :=
  ∀ n, (P7270318941711736668.a n : ℤ) = A215862 n

end A215862

/-! ## A215862.P7207335250275208004

`floor(∑[∑[n-∑[a(n-1)-3]]])` with `a(0)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A215862.P7207335250275208004
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f3 =>
  f3 (n - 1) - 3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A215862.P7207335250275208004

namespace A215862

/-- `floor(∑[∑[n-∑[a(n-1)-3]]])` -/
def P7207335250275208004.Spec : Prop :=
  ∀ n, P7207335250275208004.a n = A215862 n

end A215862

/-! ## A215862.P9656851909992072429

`a(n-1)+(n+3)*C(n+1, 2)` with `a(0)=0`
-/

namespace A215862.P9656851909992072429
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + (n + 3) * Nat.choose (n + 1) 2

end

end A215862.P9656851909992072429

namespace A215862

/-- `a(n-1)+(n+3)*C(n+1, 2)` -/
def P9656851909992072429.Spec : Prop :=
  ∀ n, (P9656851909992072429.a n : ℤ) = A215862 n

end A215862

/-! ## A215862.P6401853816193547050

`∑[∑[a(n-1)+3]]+a(n-1)` with `a(0)=0, a(1)=4`
-/

namespace A215862.P6401853816193547050
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 4] fun n f2 =>
  f2 (n - 1) + 3

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 4] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j + a (n - 1)

end

end A215862.P6401853816193547050

namespace A215862

/-- `∑[∑[a(n-1)+3]]+a(n-1)` -/
def P6401853816193547050.Spec : Prop :=
  ∀ n, (P6401853816193547050.a n : ℤ) = A215862 n

end A215862

/-! ## A215862.P10833088760153029024

`a(n-1)-(n-3-2*n)*∑[n]` with `a(0)=0`
-/

namespace A215862.P10833088760153029024
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) - ((n : ℤ) - 3 - (2 * n : ℤ)) * ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A215862.P10833088760153029024

namespace A215862

/-- `a(n-1)-(n-3-2*n)*∑[n]` -/
def P10833088760153029024.Spec : Prop :=
  ∀ n, P10833088760153029024.a n = A215862 n

end A215862

/-! ## A215862.P3131076030112488256

`A163943(n)+n`
-/

namespace A215862.P3131076030112488256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163943 n + (n : ℤ)

end

end A215862.P3131076030112488256

namespace A215862

/-- `A163943(n)+n` -/
def P3131076030112488256.Spec : Prop :=
  ∀ n, P3131076030112488256.a n = A215862 n

end A215862

/-! ## A215862.P12706629953637844530

`∑[A317637(n)]/2`
-/

namespace A215862.P12706629953637844530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317637 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2

end

end A215862.P12706629953637844530

namespace A215862

/-- `∑[A317637(n)]/2` -/
def P12706629953637844530.Spec : Prop :=
  ∀ n, P12706629953637844530.a n = (A215862 n : ℚ)

end A215862

/-! ## A215862.P16802616251905410823

`A241765(n)-∑[∑[n]]`
-/

namespace A215862.P16802616251905410823
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241765 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A215862.P16802616251905410823

namespace A215862

/-- `A241765(n)-∑[∑[n]]` -/
def P16802616251905410823.Spec : Prop :=
  ∀ n, P16802616251905410823.a n = A215862 n

end A215862

/-! ## A215862.P6988165216373452548

`A051798(n)-∑[n+1]²`
-/

namespace A215862.P6988165216373452548
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051798 n - (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ)

end

end A215862.P6988165216373452548

namespace A215862

/-- `A051798(n)-∑[n+1]²` -/
def P6988165216373452548.Spec : Prop :=
  ∀ n, P6988165216373452548.a n = A215862 n

end A215862

/-! ## A215862.P11730309325219023267

`∑[n+1]²-A133252(n)`
-/

namespace A215862.P11730309325219023267
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) - A133252 n

end

end A215862.P11730309325219023267

namespace A215862

/-- `∑[n+1]²-A133252(n)` -/
def P11730309325219023267.Spec : Prop :=
  ∀ n, P11730309325219023267.a n = A215862 n

end A215862

/-! ## A215862.P7599501477356988144

`A059302(n+2)+∑[(n+1)²]`
-/

namespace A215862.P7599501477356988144
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059302 (n + 2) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A215862.P7599501477356988144

namespace A215862

/-- `A059302(n+2)+∑[(n+1)²]` -/
def P7599501477356988144.Spec : Prop :=
  ∀ n, P7599501477356988144.a n = A215862 n

end A215862

/-! ## A215862.P10688887319616061401

`∑[∑[∑[A016777(n)]-1]+1]-(n+1)`
-/

namespace A215862.P10688887319616061401
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n + 1 : ℤ)

end

end A215862.P10688887319616061401

namespace A215862

/-- `∑[∑[∑[A016777(n)]-1]+1]-(n+1)` -/
def P10688887319616061401.Spec : Prop :=
  ∀ n, P10688887319616061401.a n = A215862 n

end A215862

/-! ## A215862.P13456291927852515913

`A016061(n)+A002817(n)`
-/

namespace A215862.P13456291927852515913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016061 n + A002817 n

end

end A215862.P13456291927852515913

namespace A215862

/-- `A016061(n)+A002817(n)` -/
def P13456291927852515913.Spec : Prop :=
  ∀ n, P13456291927852515913.a n = A215862 n

end A215862

/-! ## A215862.P18400231041357327887

`A027480(n)+A001296(n)`
-/

namespace A215862.P18400231041357327887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027480 n + A001296 n

end

end A215862.P18400231041357327887

namespace A215862

/-- `A027480(n)+A001296(n)` -/
def P18400231041357327887.Spec : Prop :=
  ∀ n, P18400231041357327887.a n = A215862 n

end A215862

/-! ## A215862.P6699552838595568384

`A101165(n)+A037255(n)`
-/

namespace A215862.P6699552838595568384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101165 n + A037255 n

end

end A215862.P6699552838595568384

namespace A215862

/-- `A101165(n)+A037255(n)` -/
def P6699552838595568384.Spec : Prop :=
  ∀ n, P6699552838595568384.a n = A215862 n

end A215862

/-!
# A215863: Number of simple labeled graphs on n+3 nodes with exactly n connected components that are trees or cycles.

The programs for A215863, the canonical program `A215863.P14240570190136672268` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A215863 has offset 0).

The definition of A215863 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A215863.P2556069294569927614

`ogf((19x+2x^2-6x^3)/(1-7x+21x^2-35x^3+35x^4-21x^5+7x^6-x^7))`
-/

namespace A215863.P2556069294569927614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 19, 2, -6] [1, -7, 21, -35, 35, -21, 7, -1] n

end

end A215863.P2556069294569927614

namespace A215863

/-- `ogf((19x+2x^2-6x^3)/(1-7x+21x^2-35x^3+35x^4-21x^5+7x^6-x^7))` -/
def P2556069294569927614.Spec : Prop :=
  ∀ n, P2556069294569927614.a n = A215863 n

end A215863

/-! ## A215863.P14240570190136672268

`C(n+3, 4)*(n*(n+13)/2+12)`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A215863

/-- `C(n+3, 4)*(n*(n+13)/2+12)` -/
def P14240570190136672268.Spec : Prop :=
  ∀ n, P14240570190136672268.a n = (A215863 n : ℚ)

end A215863

/-! ## A215863.P7850156349747650779

`(∑[A008778(n+1)]+1)*∑[n]`
-/

namespace A215863.P7850156349747650779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j + 1) * ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A215863.P7850156349747650779

namespace A215863

/-- `(∑[A008778(n+1)]+1)*∑[n]` -/
def P7850156349747650779.Spec : Prop :=
  ∀ n, P7850156349747650779.a n = A215863 n

end A215863

/-! ## A215863.P16323016397644224958

`∑[n]*∑[A137742(n+1)+5]`
-/

namespace A215863.P16323016397644224958
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137742 (n + 1) + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A215863.P16323016397644224958

namespace A215863

/-- `∑[n]*∑[A137742(n+1)+5]` -/
def P16323016397644224958.Spec : Prop :=
  ∀ n, P16323016397644224958.a n = A215863 n

end A215863

/-! ## A215863.P17941265701133411728

`A395908(n)-A162668(n)`
-/

namespace A215863.P17941265701133411728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395908 n - A162668 n

end

end A215863.P17941265701133411728

namespace A215863

/-- `A395908(n)-A162668(n)` -/
def P17941265701133411728.Spec : Prop :=
  ∀ n, P17941265701133411728.a n = A215863 n

end A215863

/-! ## A215863.P9325799138016505497

`∑[n]*A005712(n+3)`
-/

namespace A215863.P9325799138016505497
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A005712 (n + 3)

end

end A215863.P9325799138016505497

namespace A215863

/-- `∑[n]*A005712(n+3)` -/
def P9325799138016505497.Spec : Prop :=
  ∀ n, P9325799138016505497.a n = A215863 n

end A215863

/-! ## A215863.P13427071858885724926

`(A008779(n+1)-A000330(n+1))*∑[n]`
-/

namespace A215863.P13427071858885724926
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A008779 (n + 1) - A000330 (n + 1)) * ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A215863.P13427071858885724926

namespace A215863

/-- `(A008779(n+1)-A000330(n+1))*∑[n]` -/
def P13427071858885724926.Spec : Prop :=
  ∀ n, P13427071858885724926.a n = A215863 n

end A215863

/-! ## A215863.P12933027042958381989

`A240440(n+2)+A266732(n)-A033487(n)`
-/

namespace A215863.P12933027042958381989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240440 (n + 2) + (A266732 n - A033487 n)

end

end A215863.P12933027042958381989

namespace A215863

/-- `A240440(n+2)+A266732(n)-A033487(n)` -/
def P12933027042958381989.Spec : Prop :=
  ∀ n, P12933027042958381989.a n = A215863 n

end A215863

/-! ## A215863.P10258087428809428792

`(A022815(n+2)-A000292(n+1))*A000217(n)`
-/

namespace A215863.P10258087428809428792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A022815 (n + 2) - A000292 (n + 1)) * A000217 n

end

end A215863.P10258087428809428792

namespace A215863

/-- `(A022815(n+2)-A000292(n+1))*A000217(n)` -/
def P10258087428809428792.Spec : Prop :=
  ∀ n, P10258087428809428792.a n = A215863 n

end A215863

/-! ## A215863.P7459421240024730978

`A005712(n+3)-A005712(n+3)*A080956(n+1)`
-/

namespace A215863.P7459421240024730978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005712 (n + 3) - A005712 (n + 3) * A080956 (n + 1)

end

end A215863.P7459421240024730978

namespace A215863

/-- `A005712(n+3)-A005712(n+3)*A080956(n+1)` -/
def P7459421240024730978.Spec : Prop :=
  ∀ n, P7459421240024730978.a n = A215863 n

end A215863

/-! ## A215863.P13254944813146719773

`A005712(n+3)*A026729(A055998(n+2))`
-/

namespace A215863.P13254944813146719773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005712 (n + 3) * A026729 (A055998 (n + 2)).toNat

end

end A215863.P13254944813146719773

namespace A215863

/-- `A005712(n+3)*A026729(A055998(n+2))` -/
def P13254944813146719773.Spec : Prop :=
  ∀ n, P13254944813146719773.a n = A215863 n

end A215863

/-!
# A215864: Number of simple labeled graphs on n+4 nodes with exactly n connected components that are trees or cycles.

The programs for A215864, there is no canonical definition to state claims against.
-/

/-! ## A215864.P11123246310404765482

`A215861(A052905(n+2))`
-/

namespace A215864.P11123246310404765482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215861 (A052905 (n + 2)).toNat

end

end A215864.P11123246310404765482

/-! ## A215864.P13640515208238437590

`A215861(A056115(n)+10)`
-/

namespace A215864.P13640515208238437590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215861 (A056115 n + 10).toNat

end

end A215864.P13640515208238437590

/-! ## A215864.P11802192278728951534

`A215861(eq[4, A025581(n)])`
-/

namespace A215864.P11802192278728951534
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215861 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A215864.P11802192278728951534

/-! ## A215864.P2580893704017944437

`A215861(eq[5, A193739(n)])`
-/

namespace A215864.P2580893704017944437
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215861 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A215864.P2580893704017944437

/-! ## A215864.P3754170320107930694

`A215861(eq[9, A099375(n)])`
-/

namespace A215864.P3754170320107930694
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215861 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A215864.P3754170320107930694

/-! ## A215864.P16703841304252157944

`A215861(eq[16, A130321(n)])`
-/

namespace A215864.P16703841304252157944
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130321 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215861 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A215864.P16703841304252157944

/-! ## A215864.P12175075754393001633

`A215861(eq[5, A004736(n+1)])`
-/

namespace A215864.P12175075754393001633
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215861 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A215864.P12175075754393001633

/-! ## A215864.P7536542130585640353

`A215861(eq[16, A095831(n+1)])`
-/

namespace A215864.P7536542130585640353
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095831 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215861 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A215864.P7536542130585640353

/-!
# A215865: Number of simple labeled graphs on n+5 nodes with exactly n connected components that are trees or cycles.

The programs for A215865, there is no canonical definition to state claims against.
-/

/-! ## A215865.P1486387319925208558

`A215861(eq[5, A025581(n)])`
-/

namespace A215865.P1486387319925208558
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215861 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A215865.P1486387319925208558

/-! ## A215865.P14505314236145735050

`A215861(eq[6, A193739(n)])`
-/

namespace A215865.P14505314236145735050
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215861 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A215865.P14505314236145735050

/-! ## A215865.P528414780498887729

`A215861(eq[32, A130321(n)])`
-/

namespace A215865.P528414780498887729
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  32

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130321 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215861 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A215865.P528414780498887729

/-! ## A215865.P9328045577138067860

`A215861(Δ[A026054(n+3)])`
-/

namespace A215865.P9328045577138067860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026054 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215861 (f1 (n + 1) - f1 n).toNat

end

end A215865.P9328045577138067860

/-! ## A215865.P10693887914857757086

`A215861(eq[6, A004736(n+1)])`
-/

namespace A215865.P10693887914857757086
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215861 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A215865.P10693887914857757086

/-! ## A215865.P1912320663878469723

`A215861(eq[4, A095133(n+3)])`
-/

namespace A215865.P1912320663878469723
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095133 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215861 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A215865.P1912320663878469723

/-!
# A215866: Number of permutations of 0..floor((n*6-2)/2) on odd squares of an n X 6 array such that each row, column, diagonal and (downwards) antidiagonal of odd squares is increasing.

The programs for A215866, the canonical program `A215866.P11152228054488832811` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A215866 has offset 1).

The definition of A215866 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A215866.P10336154233647349792

`ogf((1+5x-4x^2-2x^3)/(1-16x^2+3x^4))`
-/

namespace A215866.P10336154233647349792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 5, -4, -2] [1, 0, -16, 0, 3] n

end

end A215866.P10336154233647349792

namespace A215866

/-- `ogf((1+5x-4x^2-2x^3)/(1-16x^2+3x^4))` -/
def P10336154233647349792.Spec : Prop :=
  ∀ n, P10336154233647349792.a n = A215866 (n + 1)

end A215866

/-! ## A215866.P11152228054488832811

`16*a(n-2)-3*a(n-4)` with `a(0)=1, a(1)=5, a(2)=12, a(3)=78`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A215866

/-- `16*a(n-2)-3*a(n-4)` -/
def P11152228054488832811.Spec : Prop :=
  ∀ n, P11152228054488832811.a n = A215866 (n + 1)

theorem P11152228054488832811.correct : P11152228054488832811.Spec := by
  intro n
  simp only [A215866, Nat.add_sub_cancel]

end A215866

/-! ## A215866.P8550673619899657744

`A215870(A052905(n+3))`
-/

namespace A215866.P8550673619899657744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215870 (A052905 (n + 3)).toNat

end

end A215866.P8550673619899657744

namespace A215866

/-- `A215870(A052905(n+3))` -/
def P8550673619899657744.Spec : Prop :=
  ∀ n, P8550673619899657744.a n = A215866 (n + 1)

end A215866

/-! ## A215866.P9357608635024703534

`A215870(A302537(n)+15)`
-/

namespace A215866.P9357608635024703534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215870 (A302537 n + 15).toNat

end

end A215866.P9357608635024703534

namespace A215866

/-- `A215870(A302537(n)+15)` -/
def P9357608635024703534.Spec : Prop :=
  ∀ n, P9357608635024703534.a n = A215866 (n + 1)

end A215866

/-! ## A215866.P7017211347568532280

`A215870(A056119(n)+16)`
-/

namespace A215866.P7017211347568532280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215870 (A056119 n + 16).toNat

end

end A215866.P7017211347568532280

namespace A215866

/-- `A215870(A056119(n)+16)` -/
def P7017211347568532280.Spec : Prop :=
  ∀ n, P7017211347568532280.a n = A215866 (n + 1)

end A215866

/-!
# A215867: Number of permutations of 0..floor((n*7-2)/2) on odd squares of an n X 7 array such that each row, column, diagonal and (downwards) antidiagonal of odd squares is increasing.

The programs for A215867, the canonical program `A215867.P10765817038018944951` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A215867 has offset 1).

The definition of A215867 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 113 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A215867.P10765817038018944951

`ogf((1+5x-32x^2-43x^3-28x^4-2x^5)/(1-61x^2+99x^4+2x^6))`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A215867

/-- `ogf((1+5x-32x^2-43x^3-28x^4-2x^5)/(1-61x^2+99x^4+2x^6))` -/
def P10765817038018944951.Spec : Prop :=
  ∀ n, P10765817038018944951.a n = A215867 (n + 1)

theorem P10765817038018944951.correct : P10765817038018944951.Spec := by
  intro n
  simp only [A215867, Nat.add_sub_cancel]

end A215867

/-! ## A215867.P2857516458787727419

`A215870(A055999(n+4))`
-/

namespace A215867.P2857516458787727419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215870 (A055999 (n + 4)).toNat

end

end A215867.P2857516458787727419

namespace A215867

/-- `A215870(A055999(n+4))` -/
def P2857516458787727419.Spec : Prop :=
  ∀ n, P2857516458787727419.a n = A215867 (n + 1)

end A215867

/-! ## A215867.P12283489588664288729

`A215870(A168106(n)-6)`
-/

namespace A215867.P12283489588664288729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215870 (A168106 n - 6).toNat

end

end A215867.P12283489588664288729

namespace A215867

/-- `A215870(A168106(n)-6)` -/
def P12283489588664288729.Spec : Prop :=
  ∀ n, P12283489588664288729.a n = A215867 (n + 1)

end A215867

/-! ## A215867.P7108528648638040907

`A215870(A056121(n)+22)`
-/

namespace A215867.P7108528648638040907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215870 (A056121 n + 22).toNat

end

end A215867.P7108528648638040907

namespace A215867

/-- `A215870(A056121(n)+22)` -/
def P7108528648638040907.Spec : Prop :=
  ∀ n, P7108528648638040907.a n = A215867 (n + 1)

end A215867

/-! ## A215867.P11029793353068745153

`A215870(eq[4, A219347(n)])`
-/

namespace A215867.P11029793353068745153
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215870 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A215867.P11029793353068745153

namespace A215867

/-- `A215870(eq[4, A219347(n)])` -/
def P11029793353068745153.Spec : Prop :=
  ∀ n, P11029793353068745153.a n = A215867 (n + 1)

end A215867

/-!
# A215868: Number of permutations of 0..floor((n*8-2)/2) on odd squares of an nX8 array such that each row, column, diagonal and (downwards) antidiagonal of odd squares is increasing.

The programs for A215868, there is no canonical definition to state claims against.
-/

/-! ## A215868.P7454746386808321134

`A215870(eq[5, A219347(n)])`
-/

namespace A215868.P7454746386808321134
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215870 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A215868.P7454746386808321134

/-! ## A215868.P7802515448876090635

`A215870(eq[7, A193592(n)])`
-/

namespace A215868.P7802515448876090635
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215870 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A215868.P7802515448876090635

/-! ## A215868.P10750854301449760323

`A215870(A155212(n+4)+1)`
-/

namespace A215868.P10750854301449760323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215870 (A155212 (n + 4) + 1).toNat

end

end A215868.P10750854301449760323

/-! ## A215868.P1696165396161893983

`A215870(A056000(n+4)+3)`
-/

namespace A215868.P1696165396161893983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215870 (A056000 (n + 4) + 3).toNat

end

end A215868.P1696165396161893983

/-!
# A215869: Number of permutations of 0..floor((n*9-2)/2) on odd squares of an nX9 array such that each row, column, diagonal and (downwards) antidiagonal of odd squares is increasing.

The programs for A215869, there is no canonical definition to state claims against.
-/

/-! ## A215869.P1006375980299272367

`A215870(eq[6, A219347(n)])`
-/

namespace A215869.P1006375980299272367
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215870 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A215869.P1006375980299272367

/-! ## A215869.P7343776893962901357

`A215870(eq[8, A193592(n)])`
-/

namespace A215869.P7343776893962901357
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215870 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A215869.P7343776893962901357

/-! ## A215869.P18156735320529073960

`A215870(A055999(n+6)-2)`
-/

namespace A215869.P18156735320529073960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215870 (A055999 (n + 6) - 2).toNat

end

end A215869.P18156735320529073960

/-!
# A215871: Number of permutations of 0..floor((3*n-2)/2) on odd squares of an 3Xn array such that each row, column, diagonal and (downwards) antidiagonal of odd squares is increasing.

The programs for A215871, there is no canonical definition to state claims against.
-/

/-! ## A215871.P11724958192040974506

`A215870(∑[n+2]+4)`
-/

namespace A215871.P11724958192040974506
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215870 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A215871.P11724958192040974506

/-! ## A215871.P4264145640805277327

`A215870(A167614(n+1))+A025442(n)`
-/

namespace A215871.P4264145640805277327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215870 (A167614 (n + 1)).toNat + A025442 n

end

end A215871.P4264145640805277327

/-! ## A215871.P1544753190238384818

`A215870(A167614(n+1))+A025444(n)`
-/

namespace A215871.P1544753190238384818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215870 (A167614 (n + 1)).toNat + A025444 n

end

end A215871.P1544753190238384818

/-! ## A215871.P7041704911624577247

`A215870(A167614(n+1))+A061858(n)`
-/

namespace A215871.P7041704911624577247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215870 (A167614 (n + 1)).toNat + A061858 n

end

end A215871.P7041704911624577247

/-! ## A215871.P17117679229554211537

`A215870(A167614(n+1))+A185284(n)`
-/

namespace A215871.P17117679229554211537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215870 (A167614 (n + 1)).toNat + A185284 n

end

end A215871.P17117679229554211537

/-!
# A215872: Number of permutations of 0..floor((4*n-2)/2) on odd squares of an 4Xn array such that each row, column, diagonal and (downwards) antidiagonal of odd squares is increasing.

The programs for A215872, there is no canonical definition to state claims against.
-/

/-! ## A215872.P14398983218991346930

`A215870(∑[n+3]+7)`
-/

namespace A215872.P14398983218991346930
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215870 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A215872.P14398983218991346930

/-! ## A215872.P11143165939955181214

`A326042(A003285(n+1)+A000262(n))`
-/

namespace A215872.P11143165939955181214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326042 (A003285 (n + 1) + A000262 n).toNat

end

end A215872.P11143165939955181214

/-! ## A215872.P3095373849682891752

`A138255(A271721(n+1)+A001252(n+1))`
-/

namespace A215872.P3095373849682891752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138255 (A271721 (n + 1) + A001252 (n + 1)).toNat

end

end A215872.P3095373849682891752

/-!
# A215873: Number of permutations of 0..floor((5*n-2)/2) on odd squares of an 5Xn array such that each row, column, diagonal and (downwards) antidiagonal of odd squares is increasing.

The programs for A215873, there is no canonical definition to state claims against.
-/

/-! ## A215873.P8731511909817144222

`A215870(A167499(n+3))`
-/

namespace A215873.P8731511909817144222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215870 (A167499 (n + 3)).toNat

end

end A215873.P8731511909817144222

/-! ## A215873.P15618373508635613895

`A215870(A155212(n)+13)`
-/

namespace A215873.P15618373508635613895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215870 (A155212 n + 13).toNat

end

end A215873.P15618373508635613895

/-! ## A215873.P14558740454505961467

`A215870(A056000(n)+15)`
-/

namespace A215873.P14558740454505961467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215870 (A056000 n + 15).toNat

end

end A215873.P14558740454505961467

/-! ## A215873.P10067317875196886493

`A215870(eq[7, A066657(n)])`
-/

namespace A215873.P10067317875196886493
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215870 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A215873.P10067317875196886493

/-! ## A215873.P9981350496303528111

`A215870(A167614(n+3)+2)`
-/

namespace A215873.P9981350496303528111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215870 (A167614 (n + 3) + 2).toNat

end

end A215873.P9981350496303528111

/-!
# A215874: Number of permutations of 0..floor((6*n-2)/2) on odd squares of an 6Xn array such that each row, column, diagonal and (downwards) antidiagonal of odd squares is increasing.

The programs for A215874, there is no canonical definition to state claims against.
-/

/-! ## A215874.P6477377281338613727

`A215870(A056115(n)+21)`
-/

namespace A215874.P6477377281338613727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215870 (A056115 n + 21).toNat

end

end A215874.P6477377281338613727

/-! ## A215874.P6497435830780367625

`A215870(eq[6, A256910(n)])`
-/

namespace A215874.P6497435830780367625
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256910 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215870 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A215874.P6497435830780367625

/-! ## A215874.P12691821042414218490

`A215870(A167499(n+4)+1)`
-/

namespace A215874.P12691821042414218490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215870 (A167499 (n + 4) + 1).toNat

end

end A215874.P12691821042414218490

/-! ## A215874.P3988668255507291212

`A215870(eq[5, A002262(n)]+1)`
-/

namespace A215874.P3988668255507291212
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215870 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A215874.P3988668255507291212

/-! ## A215874.P2377474634344921331

`A215870(eq[5, A141169(n)]+1)`
-/

namespace A215874.P2377474634344921331
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141169 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215870 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A215874.P2377474634344921331

/-!
# A215875: Number of permutations of 0..floor((7*n-2)/2) on odd squares of an 7Xn array such that each row, column, diagonal and (downwards) antidiagonal of odd squares is increasing.

The programs for A215875, there is no canonical definition to state claims against.
-/

/-! ## A215875.P12237859637229249446

`A215870(A167487(n+5))`
-/

namespace A215875.P12237859637229249446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215870 (A167487 (n + 5)).toNat

end

end A215875.P12237859637229249446

/-! ## A215875.P8479634789067831593

`A215870(A056119(n)+28)`
-/

namespace A215875.P8479634789067831593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215870 (A056119 n + 28).toNat

end

end A215875.P8479634789067831593

/-! ## A215875.P6664398726957268094

`A215870(eq[11, A066657(n)])`
-/

namespace A215875.P6664398726957268094
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215870 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A215875.P6664398726957268094

/-! ## A215875.P5067141402779113618

`A215870(A168106(n)-n)`
-/

namespace A215875.P5067141402779113618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215870 (A168106 n - (n : ℤ)).toNat

end

end A215875.P5067141402779113618

/-! ## A215875.P9695116746067385694

`A215870(A166136(n+5)+1)`
-/

namespace A215875.P9695116746067385694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215870 (A166136 (n + 5) + 1).toNat

end

end A215875.P9695116746067385694

/-!
# A215877: a(n) = (A(n) - A215817(n))/sqrt(7), where A(n) = (6-sqrt(7))A(n-1) - (12-4*sqrt(7))A(n-2) + (8-3*sqrt(7))A(n-3), with A(0)=3, A(1)=6-sqrt(7), and A(2)=19-4*sqrt(7).

The programs for A215877, there is no canonical definition to state claims against.
-/

/-! ## A215877.P13416680891131223660

`Δ[-A250247(A029759(n))]`
-/

namespace A215877.P13416680891131223660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A250247 (A029759 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A215877.P13416680891131223660

/-! ## A215877.P5737172507071049344

`Δ[-A029759(A004880(n+1))]`
-/

namespace A215877.P5737172507071049344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A029759 (A004880 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A215877.P5737172507071049344

/-! ## A215877.P15154553974145956057

`Δ[-A029759(A004913(n+1))]`
-/

namespace A215877.P15154553974145956057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A029759 (A004913 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A215877.P15154553974145956057

/-!
# A215878: Lengths of loops in the P2 Penrose tiling.

The programs for A215878, the canonical program `A215878.P4546710471104201795` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A215878 has offset 1).

The definition of A215878 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A215878.P4546710471104201795

`ogf((10+20x+30x^2)/(1-5x^2-6x^4))`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A215878

/-- `ogf((10+20x+30x^2)/(1-5x^2-6x^4))` -/
def P4546710471104201795.Spec : Prop :=
  ∀ n, P4546710471104201795.a n = A215878 (n + 1)

theorem P4546710471104201795.correct : P4546710471104201795.Spec := by
  intro n
  simp only [A215878, Nat.add_sub_cancel]

end A215878

/-!
# A215879: Written in base 3, n ends in a(n) consecutive nonzero digits.

The programs for A215879, the canonical program `A215879.P7420381154779558260` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A215879 has offset 0).

The definition of A215879 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A215879.P6175076848122801485

`(a(floor(n/3))+1)*n²%3` with `a(0)=0`
-/

namespace A215879.P6175076848122801485
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  (a ⌊(n : ℚ) / 3⌋.toNat + 1) * (n ^ 2 % 3)

end

end A215879.P6175076848122801485

namespace A215879

/-- `(a(floor(n/3))+1)*n²%3` -/
def P6175076848122801485.Spec : Prop :=
  ∀ n, (P6175076848122801485.a n : ℤ) = A215879 n

end A215879

/-! ## A215879.P16851044084265750391

`val(A289831(n)+1, 2)`
-/

namespace A215879.P16851044084265750391
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A289831 n + 1).toNat 2

end

end A215879.P16851044084265750391

namespace A215879

/-- `val(A289831(n)+1, 2)` -/
def P16851044084265750391.Spec : Prop :=
  ∀ n, (P16851044084265750391.a n : ℤ) = A215879 n

end A215879

/-! ## A215879.P4766180247863047165

`val(A060372(n+1), 3)`
-/

namespace A215879.P4766180247863047165
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A060372 (n + 1)).toNat 3

end

end A215879.P4766180247863047165

namespace A215879

/-- `val(A060372(n+1), 3)` -/
def P4766180247863047165.Spec : Prop :=
  ∀ n, (P4766180247863047165.a n : ℤ) = A215879 n

end A215879

/-! ## A215879.P12935115325291665646

`A007814(A289831(n)+1)`
-/

namespace A215879.P12935115325291665646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A289831 n + 1).toNat

end

end A215879.P12935115325291665646

namespace A215879

/-- `A007814(A289831(n)+1)` -/
def P12935115325291665646.Spec : Prop :=
  ∀ n, P12935115325291665646.a n = A215879 n

end A215879

/-! ## A215879.P4578525937559031850

`A273513(A060372(n+1)-1)`
-/

namespace A215879.P4578525937559031850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273513 (A060372 (n + 1) - 1).toNat

end

end A215879.P4578525937559031850

namespace A215879

/-- `A273513(A060372(n+1)-1)` -/
def P4578525937559031850.Spec : Prop :=
  ∀ n, P4578525937559031850.a n = A215879 n

end A215879

/-! ## A215879.P5140338944972401970

`A007949(A060372(n+1))`
-/

namespace A215879.P5140338944972401970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007949 (A060372 (n + 1)).toNat

end

end A215879.P5140338944972401970

namespace A215879

/-- `A007949(A060372(n+1))` -/
def P5140338944972401970.Spec : Prop :=
  ∀ n, P5140338944972401970.a n = A215879 n

end A215879

/-! ## A215879.P2127606825561774929

`A081603(A060372(n+1)-1)`
-/

namespace A215879.P2127606825561774929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081603 (A060372 (n + 1) - 1).toNat

end

end A215879.P2127606825561774929

namespace A215879

/-- `A081603(A060372(n+1)-1)` -/
def P2127606825561774929.Spec : Prop :=
  ∀ n, P2127606825561774929.a n = A215879 n

end A215879

/-! ## A215879.P12537560302859891090

`val(A343228(n+1), 2)`
-/

namespace A215879.P12537560302859891090
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A343228 (n + 1)).toNat 2

end

end A215879.P12537560302859891090

namespace A215879

/-- `val(A343228(n+1), 2)` -/
def P12537560302859891090.Spec : Prop :=
  ∀ n, (P12537560302859891090.a n : ℤ) = A215879 n

end A215879

/-! ## A215879.P11314206509270929274

`A007814(A343228(n+1))`
-/

namespace A215879.P11314206509270929274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A343228 (n + 1)).toNat

end

end A215879.P11314206509270929274

namespace A215879

/-- `A007814(A343228(n+1))` -/
def P11314206509270929274.Spec : Prop :=
  ∀ n, P11314206509270929274.a n = A215879 n

end A215879

/-! ## A215879.P7420381154779558260

`val(A094114(2*(n+1)), 2)`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A215879

/-- `val(A094114(2*(n+1)), 2)` -/
def P7420381154779558260.Spec : Prop :=
  ∀ n, (P7420381154779558260.a n : ℤ) = A215879 n

theorem P7420381154779558260.correct : P7420381154779558260.Spec := by
  intro n
  simp only [A215879]

end A215879

/-! ## A215879.P11365344411705623186

`val(A289813(2*n+1), 2)`
-/

namespace A215879.P11365344411705623186
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A289813 (2 * n + 1)).toNat 2

end

end A215879.P11365344411705623186

namespace A215879

/-- `val(A289813(2*n+1), 2)` -/
def P11365344411705623186.Spec : Prop :=
  ∀ n, (P11365344411705623186.a n : ℤ) = A215879 n

end A215879

/-! ## A215879.P5957034128210160208

`val(A244042(2*n+1), 3)`
-/

namespace A215879.P5957034128210160208
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A244042 (2 * n + 1)).toNat 3

end

end A215879.P5957034128210160208

namespace A215879

/-- `val(A244042(2*n+1), 3)` -/
def P5957034128210160208.Spec : Prop :=
  ∀ n, (P5957034128210160208.a n : ℤ) = A215879 n

end A215879

/-! ## A215879.P1874557208182071516

`A007949(A093347(2*(n+1)))`
-/

namespace A215879.P1874557208182071516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007949 (A093347 (2 * (n + 1))).toNat

end

end A215879.P1874557208182071516

namespace A215879

/-- `A007949(A093347(2*(n+1)))` -/
def P1874557208182071516.Spec : Prop :=
  ∀ n, P1874557208182071516.a n = A215879 n

end A215879

/-! ## A215879.P9032229137842316186

`A007814(A094114(2*(n+1)))`
-/

namespace A215879.P9032229137842316186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A094114 (2 * (n + 1))).toNat

end

end A215879.P9032229137842316186

namespace A215879

/-- `A007814(A094114(2*(n+1)))` -/
def P9032229137842316186.Spec : Prop :=
  ∀ n, P9032229137842316186.a n = A215879 n

end A215879

/-! ## A215879.P5016763243461999783

`A007814(A289813(2*n+1))`
-/

namespace A215879.P5016763243461999783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A289813 (2 * n + 1)).toNat

end

end A215879.P5016763243461999783

namespace A215879

/-- `A007814(A289813(2*n+1))` -/
def P5016763243461999783.Spec : Prop :=
  ∀ n, P5016763243461999783.a n = A215879 n

end A215879

/-! ## A215879.P15338667819901594988

`A000989(A244042(2*n+1)-1)`
-/

namespace A215879.P15338667819901594988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000989 (A244042 (2 * n + 1) - 1).toNat

end

end A215879.P15338667819901594988

namespace A215879

/-- `A000989(A244042(2*n+1)-1)` -/
def P15338667819901594988.Spec : Prop :=
  ∀ n, P15338667819901594988.a n = A215879 n

end A215879

/-! ## A215879.P15373475923138890875

`A081603(A244042(2*n+1)-1)`
-/

namespace A215879.P15373475923138890875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081603 (A244042 (2 * n + 1) - 1).toNat

end

end A215879.P15373475923138890875

namespace A215879

/-- `A081603(A244042(2*n+1)-1)` -/
def P15373475923138890875.Spec : Prop :=
  ∀ n, P15373475923138890875.a n = A215879 n

end A215879

/-! ## A215879.P11091015149981710077

`A322523(3*n+5)-1`
-/

namespace A215879.P11091015149981710077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322523 (3 * n + 5) - 1

end

end A215879.P11091015149981710077

namespace A215879

/-- `A322523(3*n+5)-1` -/
def P11091015149981710077.Spec : Prop :=
  ∀ n, P11091015149981710077.a n = A215879 n

end A215879

/-! ## A215879.P12868828045573074292

`A382109(A016789(n+1))-2`
-/

namespace A215879.P12868828045573074292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382109 (A016789 (n + 1)).toNat - 2

end

end A215879.P12868828045573074292

namespace A215879

/-- `A382109(A016789(n+1))-2` -/
def P12868828045573074292.Spec : Prop :=
  ∀ n, P12868828045573074292.a n = A215879 n

end A215879

/-! ## A215879.P603763234554481683

`A000120(A343229(A004488(n)+3+n))`
-/

namespace A215879.P603763234554481683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A343229 (A004488 n + 3 + (n : ℤ)).toNat).toNat

end

end A215879.P603763234554481683

namespace A215879

/-- `A000120(A343229(A004488(n)+3+n))` -/
def P603763234554481683.Spec : Prop :=
  ∀ n, P603763234554481683.a n = A215879 n

end A215879

/-!
# A215881: Expansion of e.g.f.: sqrt( -LambertW(-x) / LambertW(x) ).

The programs for A215881, there is no canonical definition to state claims against.
-/

/-! ## A215881.P4922896561696659432

`A047369(A318895(n)^3)`
-/

namespace A215881.P4922896561696659432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047369 (A318895 n ^ 3).toNat

end

end A215881.P4922896561696659432

/-! ## A215881.P558598574677808146

`A077028(A344447(n)+A288270(n))`
-/

namespace A215881.P558598574677808146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077028 (A344447 n + A288270 n).toNat

end

end A215881.P558598574677808146

/-!
# A215882: Expansion of e.g.f.: -LambertW(-x) / LambertW(x).

The programs for A215882, there is no canonical definition to state claims against.
-/

/-! ## A215882.P4135548173037776104

`A108804(A084844(n+1)+A027907(n+3))`
-/

namespace A215882.P4135548173037776104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108804 (A084844 (n + 1) + A027907 (n + 3)).toNat

end

end A215882.P4135548173037776104

/-!
# A215883: When written in base 4, n ends in a(n) consecutive nonzero digits.

The programs for A215883, the canonical program `A215883.P14293418994661775014` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A215883 has offset 0).

The definition of A215883 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A215883.P14293418994661775014

`val(or(n, A004468(n))+1, 4)`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A215883

/-- `val(or(n, A004468(n))+1, 4)` -/
def P14293418994661775014.Spec : Prop :=
  ∀ n, (P14293418994661775014.a n : ℤ) = A215883 n

theorem P14293418994661775014.correct : P14293418994661775014.Spec := by
  intro n
  simp only [A215883]

end A215883

/-! ## A215883.P10513187243448098862

`val(or(n, A006015(n))+1, 4)`
-/

namespace A215883.P10513187243448098862
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (Int.lor (n : ℤ) (A006015 n) + 1).toNat 4

end

end A215883.P10513187243448098862

namespace A215883

/-- `val(or(n, A006015(n))+1, 4)` -/
def P10513187243448098862.Spec : Prop :=
  ∀ n, (P10513187243448098862.a n : ℤ) = A215883 n

end A215883

/-! ## A215883.P14430125638381870513

`val(A020986(or(n, floor(n/2))), 2)`
-/

namespace A215883.P14430125638381870513
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A020986 (Int.lor (n : ℤ) ⌊(n : ℚ) / 2⌋).toNat).toNat 2

end

end A215883.P14430125638381870513

namespace A215883

/-- `val(A020986(or(n, floor(n/2))), 2)` -/
def P14430125638381870513.Spec : Prop :=
  ∀ n, (P14430125638381870513.a n : ℤ) = A215883 n

end A215883

/-! ## A215883.P7271725506963615554

`A053398(A054239(n)+1)`
-/

namespace A215883.P7271725506963615554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053398 (A054239 n + 1).toNat

end

end A215883.P7271725506963615554

namespace A215883

/-- `A053398(A054239(n)+1)` -/
def P7271725506963615554.Spec : Prop :=
  ∀ n, P7271725506963615554.a n = A215883 n

end A215883

/-! ## A215883.P1393770861537993731

`A215884(A020654(n+1))`
-/

namespace A215883.P1393770861537993731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215884 (A020654 (n + 1)).toNat

end

end A215883.P1393770861537993731

namespace A215883

/-- `A215884(A020654(n+1))` -/
def P1393770861537993731.Spec : Prop :=
  ∀ n, P1393770861537993731.a n = A215883 n

end A215883

/-! ## A215883.P8907642352960756118

`A215884(A023733(n+1))`
-/

namespace A215883.P8907642352960756118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215884 (A023733 (n + 1)).toNat

end

end A215883.P8907642352960756118

namespace A215883

/-- `A215884(A023733(n+1))` -/
def P8907642352960756118.Spec : Prop :=
  ∀ n, P8907642352960756118.a n = A215883 n

end A215883

/-! ## A215883.P17804300067017915152

`A215884(A023725(n+1))`
-/

namespace A215883.P17804300067017915152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215884 (A023725 (n + 1)).toNat

end

end A215883.P17804300067017915152

namespace A215883

/-- `A215884(A023725(n+1))` -/
def P17804300067017915152.Spec : Prop :=
  ∀ n, P17804300067017915152.a n = A215883 n

end A215883

/-! ## A215883.P3174938140638401326

`A215884(A023729(n+1))`
-/

namespace A215883.P3174938140638401326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215884 (A023729 (n + 1)).toNat

end

end A215883.P3174938140638401326

namespace A215883

/-- `A215884(A023729(n+1))` -/
def P3174938140638401326.Spec : Prop :=
  ∀ n, P3174938140638401326.a n = A215883 n

end A215883

/-! ## A215883.P11098706975425355051

`A215887(A007090(n))`
-/

namespace A215883.P11098706975425355051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215887 (A007090 n).toNat

end

end A215883.P11098706975425355051

namespace A215883

/-- `A215887(A007090(n))` -/
def P11098706975425355051.Spec : Prop :=
  ∀ n, P11098706975425355051.a n = A215883 n

end A215883

/-! ## A215883.P5672055163924045794

`A215887(A007284(n))`
-/

namespace A215883.P5672055163924045794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215887 (A007284 n).toNat

end

end A215883.P5672055163924045794

namespace A215883

/-- `A215887(A007284(n))` -/
def P5672055163924045794.Spec : Prop :=
  ∀ n, P5672055163924045794.a n = A215883 n

end A215883

/-! ## A215883.P13581227487232401007

`A215887(A046030(n+1))`
-/

namespace A215883.P13581227487232401007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215887 (A046030 (n + 1)).toNat

end

end A215883.P13581227487232401007

namespace A215883

/-- `A215887(A046030(n+1))` -/
def P13581227487232401007.Spec : Prop :=
  ∀ n, P13581227487232401007.a n = A215883 n

end A215883

/-! ## A215883.P3013197942877336729

`A215887(record[A064770(n)])`
-/

namespace A215883.P3013197942877336729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064770 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215887 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A215883.P3013197942877336729

namespace A215883

/-- `A215887(record[A064770(n)])` -/
def P3013197942877336729.Spec : Prop :=
  ∀ n, P3013197942877336729.a n = A215883 n

end A215883

/-! ## A215883.P4065213388090847842

`A215887(A001743(n+1))`
-/

namespace A215883.P4065213388090847842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215887 (A001743 (n + 1)).toNat

end

end A215883.P4065213388090847842

namespace A215883

/-- `A215887(A001743(n+1))` -/
def P4065213388090847842.Spec : Prop :=
  ∀ n, P4065213388090847842.a n = A215883 n

end A215883

/-!
# A215884: Written in base 5, n ends in a(n) consecutive nonzero digits.

The programs for A215884, there is no canonical definition to state claims against.
-/

/-! ## A215884.P427465223699387350

`A215887(A007091(n))`
-/

namespace A215884.P427465223699387350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215887 (A007091 n).toNat

end

end A215884.P427465223699387350

/-! ## A215884.P11208245287208715396

`A215887(A054047(n))`
-/

namespace A215884.P11208245287208715396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215887 (A054047 n).toNat

end

end A215884.P11208245287208715396

/-! ## A215884.P8108062293501951550

`A215887(A080228(n+1))`
-/

namespace A215884.P8108062293501951550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215887 (A080228 (n + 1)).toNat

end

end A215884.P8108062293501951550

/-! ## A215884.P11830805736591404800

`A215887(A014263(n+1)/2)`
-/

namespace A215884.P11830805736591404800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215887 (SequenceMachineLib.roundAway ((A014263 (n + 1) : ℚ) / 2)).toNat

end

end A215884.P11830805736591404800

/-! ## A215884.P2221115365845773697

`A215887(2*(A084545(n+1)-1))`
-/

namespace A215884.P2221115365845773697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215887 (2 * (A084545 (n + 1) - 1)).toNat

end

end A215884.P2221115365845773697

/-! ## A215884.P13245193613835055960

`A215887(A084545(n+1)+A084545(n+1)-2)`
-/

namespace A215884.P13245193613835055960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215887 (A084545 (n + 1) + (A084545 (n + 1) - 2)).toNat

end

end A215884.P13245193613835055960

/-! ## A215884.P1749317035626838285

`A215887(record[A004520(n)/2])`
-/

namespace A215884.P1749317035626838285
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004520 n : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215887 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A215884.P1749317035626838285

/-! ## A215884.P4021459545942501676

`A215887(record[A004520(n)-n])`
-/

namespace A215884.P4021459545942501676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004520 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215887 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A215884.P4021459545942501676

/-! ## A215884.P18412487628947110114

`A215887(record[A001613(n)])`
-/

namespace A215884.P18412487628947110114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001613 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215887 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A215884.P18412487628947110114

/-! ## A215884.P11481960975831858329

`A215887(record[A106747(n)])`
-/

namespace A215884.P11481960975831858329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106747 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215887 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A215884.P11481960975831858329

/-! ## A215884.P6106752120779286411

`A215887(record[A107130(n)])`
-/

namespace A215884.P6106752120779286411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107130 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215887 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A215884.P6106752120779286411

/-! ## A215884.P17175950131336282306

`A215887(record[A222223(n)])`
-/

namespace A215884.P17175950131336282306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222223 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215887 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A215884.P17175950131336282306

/-! ## A215884.P11138601756819274207

`A215887(record[A222231(n)])`
-/

namespace A215884.P11138601756819274207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222231 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215887 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A215884.P11138601756819274207

/-! ## A215884.P8843216690661820410

`A215887(record[A222238(n)])`
-/

namespace A215884.P8843216690661820410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222238 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215887 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A215884.P8843216690661820410

/-! ## A215884.P13547245312495455732

`A215887(A001744(n+1))`
-/

namespace A215884.P13547245312495455732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215887 (A001744 (n + 1)).toNat

end

end A215884.P13547245312495455732

/-! ## A215884.P11965771567146064513

`A215887(A014263(n+1))`
-/

namespace A215884.P11965771567146064513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215887 (A014263 (n + 1)).toNat

end

end A215884.P11965771567146064513

/-! ## A215884.P3139198480340922340

`A215887(A072960(n+1))`
-/

namespace A215884.P3139198480340922340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215887 (A072960 (n + 1)).toNat

end

end A215884.P3139198480340922340

/-! ## A215884.P17177534050279495063

`A215887(eq[n, A001613(n)])`
-/

namespace A215884.P17177534050279495063
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001613 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215887 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A215884.P17177534050279495063

/-!
# A215885: a(n) = 3*a(n-1) - a(n-3), with a(0) = 3, a(1) = 3, and a(2) = 9.

The programs for A215885, the canonical program `A215885.P13055485216990390806` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A215885 has offset 0).

The definition of A215885 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*a(n-1)-a(n-3)` (program `A215885.P13055485216990390806`, by `A215885.P13055485216990390806.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A215885.P13055485216990390806

`3*a(n-1)-a(n-3)` with `a(0)=3, a(1)=3, a(2)=9`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A215885

/-- `3*a(n-1)-a(n-3)` -/
def P13055485216990390806.Spec : Prop :=
  ∀ n, P13055485216990390806.a n = A215885 n

theorem P13055485216990390806.correct : P13055485216990390806.Spec := by
  intro n
  simp only [A215885]

end A215885

/-! ## A215885.P5559253706798182722

`3*A147704(n)`
-/

namespace A215885.P5559253706798182722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A147704 n

end

end A215885.P5559253706798182722

namespace A215885

/-- `3*A147704(n)` -/
def P5559253706798182722.Spec : Prop :=
  ∀ n, P5559253706798182722.a n = A215885 n

end A215885

/-! ## A215885.P16099326923065392241

`ogf((3-6x)/(1-3x+x^3))`
-/

namespace A215885.P16099326923065392241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, -6] [1, -3, 0, 1] n

end

end A215885.P16099326923065392241

namespace A215885

/-- `ogf((3-6x)/(1-3x+x^3))` -/
def P16099326923065392241.Spec : Prop :=
  ∀ n, P16099326923065392241.a n = A215885 n

end A215885

/-! ## A215885.P6727537287122443499

`a(n-1)+a(n-1)+a(n-1)-a(n-3)` with `a(0)=3, a(1)=3, a(2)=9`
-/

namespace A215885.P6727537287122443499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 3, 9] fun n a =>
  a (n - 1) + (a (n - 1) + (a (n - 1) - a (n - 3)))

end

end A215885.P6727537287122443499

namespace A215885

/-- `a(n-1)+a(n-1)+a(n-1)-a(n-3)` -/
def P6727537287122443499.Spec : Prop :=
  ∀ n, P6727537287122443499.a n = A215885 n

theorem P6727537287122443499.correct : P6727537287122443499.Spec := by
  intro n
  simp only [A215885, Nat.add_sub_cancel, A215885.P6727537287122443499.a, A215885.P13055485216990390806.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A215885

/-! ## A215885.P716363274415295265

`a(n-1)-(a(n-3)-a(n-1)-a(n-1))` with `a(0)=3, a(1)=3, a(2)=9`
-/

namespace A215885.P716363274415295265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 3, 9] fun n a =>
  a (n - 1) - (a (n - 3) - a (n - 1) - a (n - 1))

end

end A215885.P716363274415295265

namespace A215885

/-- `a(n-1)-(a(n-3)-a(n-1)-a(n-1))` -/
def P716363274415295265.Spec : Prop :=
  ∀ n, P716363274415295265.a n = A215885 n

theorem P716363274415295265.correct : P716363274415295265.Spec := by
  intro n
  simp only [A215885, Nat.add_sub_cancel, A215885.P716363274415295265.a, A215885.P13055485216990390806.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A215885

/-! ## A215885.P1618459047585782549

`∑[3*A215448(n)]`
-/

namespace A215885.P1618459047585782549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A215448 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A215885.P1618459047585782549

namespace A215885

/-- `∑[3*A215448(n)]` -/
def P1618459047585782549.Spec : Prop :=
  ∀ n, P1618459047585782549.a n = A215885 n

end A215885

/-! ## A215885.P7615508455457024874

`abs(Δ[3*A122099(n+1)])`
-/

namespace A215885.P7615508455457024874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A122099 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A215885.P7615508455457024874

namespace A215885

/-- `abs(Δ[3*A122099(n+1)])` -/
def P7615508455457024874.Spec : Prop :=
  ∀ n, P7615508455457024874.a n = A215885 n

end A215885

/-! ## A215885.P7925536680899269248

`A188128(n)-A033999(n)`
-/

namespace A215885.P7925536680899269248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188128 n - A033999 n

end

end A215885.P7925536680899269248

namespace A215885

/-- `A188128(n)-A033999(n)` -/
def P7925536680899269248.Spec : Prop :=
  ∀ n, P7925536680899269248.a n = A215885 n

end A215885

/-! ## A215885.P7631616544824242207

`3*(A052536(n)-A123941(n))`
-/

namespace A215885.P7631616544824242207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A052536 n - A123941 n)

end

end A215885.P7631616544824242207

namespace A215885

/-- `3*(A052536(n)-A123941(n))` -/
def P7631616544824242207.Spec : Prop :=
  ∀ n, P7631616544824242207.a n = A215885 n

end A215885

/-! ## A215885.P16917016051203294271

`lcm(A074724(n+1), A147704(n))`
-/

namespace A215885.P16917016051203294271
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A074724 (n + 1)) (A147704 n)

end

end A215885.P16917016051203294271

namespace A215885

/-- `lcm(A074724(n+1), A147704(n))` -/
def P16917016051203294271.Spec : Prop :=
  ∀ n, (P16917016051203294271.a n : ℤ) = A215885 n

end A215885

/-! ## A215885.P6138058405083350330

`1-(∑[A123891(n)]-A123891(n+1))`
-/

namespace A215885.P6138058405083350330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123891 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (∑ j ∈ Finset.range (n + 1), f1 j - A123891 (n + 1))

end

end A215885.P6138058405083350330

namespace A215885

/-- `1-(∑[A123891(n)]-A123891(n+1))` -/
def P6138058405083350330.Spec : Prop :=
  ∀ n, P6138058405083350330.a n = A215885 n

end A215885

/-!
# A215886: The most common total path length for each size of (fully leafed) binary tree, with left and right distinguished.

The programs for A215886, there is no canonical definition to state claims against.
-/

/-! ## A215886.P3560131859760379211

`eq[A325414(n)!, A082375(n)]`
-/

namespace A215886.P3560131859760379211
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A325414 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082375 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A215886.P3560131859760379211

/-! ## A215886.P3009605450189710175

`A269394(∑[A004277(n)])+2*n`
-/

namespace A215886.P3009605450189710175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269394 (∑ j ∈ Finset.range (n + 1), f1 j).toNat + (2 * n : ℤ)

end

end A215886.P3009605450189710175

/-! ## A215886.P14644431490747336985

`∑[gcd(A103517(n), A323757(n+1))]`
-/

namespace A215886.P14644431490747336985
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A103517 n) (A323757 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A215886.P14644431490747336985

/-! ## A215886.P2923647708808006554

`lt[A238279(3*n+4), A355749(n+4)]`
-/

namespace A215886.P2923647708808006554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238279 (3 * n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355749 (n + 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A215886.P2923647708808006554

/-! ## A215886.P2321357217358498538

`record[A000265(A007496(n+1)+(n+1)²)]`
-/

namespace A215886.P2321357217358498538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A007496 (n + 1) + ((n + 1) ^ 2 : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A215886.P2321357217358498538

/-!
# A215887: Written in decimal, n ends in a(n) consecutive nonzero digits.

The programs for A215887, there is no canonical definition to state claims against.
-/

/-! ## A215887.P940811579354527983

`A055640(A355223(n))`
-/

namespace A215887.P940811579354527983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055640 (A355223 n).toNat

end

end A215887.P940811579354527983

/-! ## A215887.P9495795114891102662

`∑{digits}[A355223(n), A050782(#)]`
-/

namespace A215887.P9495795114891102662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355223 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A050782 x).sum

end

end A215887.P9495795114891102662

/-! ## A215887.P11835758832294995288

`∑{digits}[A355223(n), A168046(#)]`
-/

namespace A215887.P11835758832294995288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355223 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A168046 x).sum

end

end A215887.P11835758832294995288

/-! ## A215887.P5188771866918284263

`∑{digits}[A355223(n), A188642(#)]`
-/

namespace A215887.P5188771866918284263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355223 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A188642 x).sum

end

end A215887.P5188771866918284263

/-! ## A215887.P3470644631071641268

`∑{digits}[A355223(n), A343639(#)]`
-/

namespace A215887.P3470644631071641268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355223 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A343639 x).sum

end

end A215887.P3470644631071641268

/-! ## A215887.P7714048836248071021

`val(A344511(n)+1, 2)`
-/

namespace A215887.P7714048836248071021
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A344511 n + 1).toNat 2

end

end A215887.P7714048836248071021

/-! ## A215887.P11887213166247555258

`A122289(A123895(n*A168184(n)))`
-/

namespace A215887.P11887213166247555258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122289 (A123895 ((n : ℤ) * A168184 n).toNat).toNat

end

end A215887.P11887213166247555258

/-! ## A215887.P17588626853931486610

`A020639(A114711(A123895(n)+4))%3`
-/

namespace A215887.P17588626853931486610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A020639 (A114711 (A123895 n + 4).toNat).toNat) 3

end

end A215887.P17588626853931486610

/-! ## A215887.P13570650305515295184

`A055642(n)*A168046(A050782(n))`
-/

namespace A215887.P13570650305515295184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 n * A168046 (A050782 n).toNat

end

end A215887.P13570650305515295184

/-!
# A215888: Numbers k such that 2^k - 1 - Sum_{prime p<k} 2^p is prime.

The programs for A215888, there is no canonical definition to state claims against.
-/

/-! ## A215888.P17002836970316786535

`lt[A152798(∑{d}[n+1, #]), A031087(n)]`
-/

namespace A215888.P17002836970316786535
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152798 (∑ d ∈ Nat.divisors (f2 n), d)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031087 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n

end

end A215888.P17002836970316786535

/-! ## A215888.P15929306514217053439

`lt[A009999(A350844(n)), A031087(n)]`
-/

namespace A215888.P15929306514217053439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009999 (A350844 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031087 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A215888.P15929306514217053439

/-! ## A215888.P963658963347194102

`A049334(A126445(n))+A044818(n+1)`
-/

namespace A215888.P963658963347194102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049334 (A126445 n).toNat + A044818 (n + 1)

end

end A215888.P963658963347194102

/-! ## A215888.P9119401684289480105

`lt[A074294(A288255(n+9)), A165057(n+1)]`
-/

namespace A215888.P9119401684289480105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074294 (A288255 (n + 9)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165057 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A215888.P9119401684289480105

/-! ## A215888.P4637889502826708030

`A174323(A174323(n+1))+A057427(A305031(n))`
-/

namespace A215888.P4637889502826708030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174323 (A174323 (n + 1)).toNat + A057427 (A305031 n).toNat

end

end A215888.P4637889502826708030

/-!
# A215892: a(n) = 2^n - n^k, where k is the largest integer such that 2^n >= n^k.

The programs for A215892, the canonical program `A215892.P10805814958823080764` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A215892 has offset 2).

The definition of A215892 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 331 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A215892.P10805814958823080764

`2^(n+2)-A060509(n+2)`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A215892

/-- `2^(n+2)-A060509(n+2)` -/
def P10805814958823080764.Spec : Prop :=
  ∀ n, P10805814958823080764.a n = A215892 (n + 2)

theorem P10805814958823080764.correct : P10805814958823080764.Spec := by
  intro n
  simp only [A215892, Nat.add_sub_cancel]

end A215892

/-! ## A215892.P16003522946158115945

`abs(A060509(n+2)-A020707(n))`
-/

namespace A215892.P16003522946158115945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A060509 (n + 2) - A020707 n|

end

end A215892.P16003522946158115945

namespace A215892

/-- `abs(A060509(n+2)-A020707(n))` -/
def P16003522946158115945.Spec : Prop :=
  ∀ n, P16003522946158115945.a n = A215892 (n + 2)

end A215892

/-! ## A215892.P4823738103122832279

`abs(A151821(n+2)-A060509(n+2))`
-/

namespace A215892.P4823738103122832279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A151821 (n + 2) - A060509 (n + 2)|

end

end A215892.P4823738103122832279

namespace A215892

/-- `abs(A151821(n+2)-A060509(n+2))` -/
def P4823738103122832279.Spec : Prop :=
  ∀ n, P4823738103122832279.a n = A215892 (n + 2)

end A215892

/-! ## A215892.P4076577443860120834

`A020707(n)-(n+2)^A060508(n+2)`
-/

namespace A215892.P4076577443860120834
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A020707 n : ℚ) - (n + 2 : ℚ) ^ (A060508 (n + 2) : ℤ)

end

end A215892.P4076577443860120834

namespace A215892

/-- `A020707(n)-(n+2)^A060508(n+2)` -/
def P4076577443860120834.Spec : Prop :=
  ∀ n, P4076577443860120834.a n = (A215892 (n + 2) : ℚ)

end A215892

/-! ## A215892.P845413081222583928

`A020707(n)-(n+2)^(A065801(n+2)-1)`
-/

namespace A215892.P845413081222583928
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A020707 n : ℚ) - (n + 2 : ℚ) ^ (A065801 (n + 2) - 1 : ℤ)

end

end A215892.P845413081222583928

namespace A215892

/-- `A020707(n)-(n+2)^(A065801(n+2)-1)` -/
def P845413081222583928.Spec : Prop :=
  ∀ n, P845413081222583928.a n = (A215892 (n + 2) : ℚ)

end A215892

/-! ## A215892.P12734285385196724912

`A020707(n)-A060509(n+2)/gcd(2, A249819(n+1))`
-/

namespace A215892.P12734285385196724912
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A020707 n : ℚ) - (A060509 (n + 2) : ℚ) / (Int.gcd 2 (A249819 (n + 1)) : ℚ)

end

end A215892.P12734285385196724912

namespace A215892

/-- `A020707(n)-A060509(n+2)/gcd(2, A249819(n+1))` -/
def P12734285385196724912.Spec : Prop :=
  ∀ n, P12734285385196724912.a n = (A215892 (n + 2) : ℚ)

end A215892

/-! ## A215892.P6428285480426436448

`A001222(A051698(n))-(A060509(n+2)-A020707(n)+1)`
-/

namespace A215892.P6428285480426436448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A051698 n).toNat - (A060509 (n + 2) - A020707 n + 1)

end

end A215892.P6428285480426436448

namespace A215892

/-- `A001222(A051698(n))-(A060509(n+2)-A020707(n)+1)` -/
def P6428285480426436448.Spec : Prop :=
  ∀ n, P6428285480426436448.a n = A215892 (n + 2)

end A215892

/-! ## A215892.P14052605771038975851

`A020707(n)-(n+2)^A227549(floor((n+2)/log2(n+2))+1)`
-/

namespace A215892.P14052605771038975851
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A020707 n : ℚ) - (n + 2 : ℚ) ^ (A227549 (⌊(n + 2 : ℝ) / Real.logb 2 (n + 2 : ℝ)⌋ + 1).toNat : ℤ)

end

end A215892.P14052605771038975851

namespace A215892

/-- `A020707(n)-(n+2)^A227549(floor((n+2)/log2(n+2))+1)` -/
def P14052605771038975851.Spec : Prop :=
  ∀ n, P14052605771038975851.a n = (A215892 (n + 2) : ℚ)

end A215892

/-!
# A215894: a(n) = floor(2^n / n^k), where k is the largest integer such that 2^n >= n^k.

The programs for A215894, there is no canonical definition to state claims against.
-/

/-! ## A215894.P663535192775976649

`floor(A020707(n)/A060509(n+2))`
-/

namespace A215894.P663535192775976649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A020707 n : ℚ) / (A060509 (n + 2) : ℚ)⌋

end

end A215894.P663535192775976649

/-! ## A215894.P16614806894140864170

`floor(Δ[A020737(n)]/A060509(n+2))`
-/

namespace A215894.P16614806894140864170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020737 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (n + 1) - f1 n : ℚ) / (A060509 (n + 2) : ℚ)⌋

end

end A215894.P16614806894140864170

/-! ## A215894.P16523272863500029918

`floor(A151821(n+2)/A060509(n+2))`
-/

namespace A215894.P16523272863500029918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A151821 (n + 2) : ℚ) / (A060509 (n + 2) : ℚ)⌋

end

end A215894.P16523272863500029918

/-! ## A215894.P16925172428498539464

`floor(A020707(n)/(n+2)^A060508(n+2))`
-/

namespace A215894.P16925172428498539464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A020707 n : ℚ) / (n + 2 : ℚ) ^ (A060508 (n + 2) : ℤ)⌋

end

end A215894.P16925172428498539464

/-! ## A215894.P3509400937263089545

`floor(A020707(n)/(n+2)^(A065801(n+2)-1))`
-/

namespace A215894.P3509400937263089545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A020707 n : ℚ) / (n + 2 : ℚ) ^ (A065801 (n + 2) - 1 : ℤ)⌋

end

end A215894.P3509400937263089545

/-! ## A215894.P3069670973706568303

`floor(A020707(n)/(2^(n+2)-A215892(n+2)))`
-/

namespace A215894.P3069670973706568303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A020707 n : ℚ) / ((2 ^ (n + 2) : ℤ) - A215892 (n + 2) : ℚ)⌋

end

end A215894.P3069670973706568303

/-! ## A215894.P17022269923968593484

`floor(A016116(A020735(n+1))/A060509(n+2))`
-/

namespace A215894.P17022269923968593484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A016116 (A020735 (n + 1)).toNat : ℚ) / (A060509 (n + 2) : ℚ)⌋

end

end A215894.P17022269923968593484

/-! ## A215894.P12102880215001966704

`floor(A331595(A065091(n+1))/A060509(n+2))`
-/

namespace A215894.P12102880215001966704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A331595 (A065091 (n + 1)).toNat : ℚ) / (A060509 (n + 2) : ℚ)⌋

end

end A215894.P12102880215001966704

/-!
# A215896: Largest k = 2^(m - 1)*(2^m - 1) such that bigomega(k) = n or 0 if no such k exists.

The programs for A215896, there is no canonical definition to state claims against.
-/

/-! ## A215896.P11483275048313109526

`C(A260222(10*(a(n-1)+1))^n, 2)` with `a(0)=1`
-/

namespace A215896.P11483275048313109526
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.choose (A260222 (10 * (a (n - 1) + 1)) ^ n).toNat 2

end

end A215896.P11483275048313109526

/-! ## A215896.P16867995080851066340

`A119467(comp[∑[4*n]]%2+(2^n+4^n)/2+1)`
-/

namespace A215896.P16867995080851066340
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119467 (SequenceMachineLib.roundAway (((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n % 2 : ℕ) : ℚ) + ((2 ^ n + 4 ^ n : ℚ) / 2 + 1))).toNat

end

end A215896.P16867995080851066340

/-! ## A215896.P17808984991275079327

`(2-gcd(2, comp[∑[4*n]]))*A028310((4^n-2^n)/2)`
-/

namespace A215896.P17808984991275079327
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - (Nat.gcd 2 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) : ℤ)) * A028310 (SequenceMachineLib.roundAway (((4 ^ n : ℤ) - (2 ^ n : ℤ) : ℚ) / 2)).toNat

end

end A215896.P17808984991275079327

/-! ## A215896.P14905696575408613518

`A028310(A006516(n))*A128174(n+1)`
-/

namespace A215896.P14905696575408613518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A006516 n).toNat * A128174 (n + 1)

end

end A215896.P14905696575408613518

/-!
# A215897: a(n) = A215723(n) / 2^(n-1).

The programs for A215897, there is no canonical definition to state claims against.
-/

/-! ## A215897.P5254721671178954789

`A215723(n+1)/2^n`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A215897.P5254721671178954789
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A215723 (n + 1) : ℚ) / (2 ^ n : ℚ)

end

end A215897.P5254721671178954789

/-! ## A215897.P15995818383520400224

`floor(A215723(n+1)/A000079(n))`
-/

namespace A215897.P15995818383520400224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A215723 (n + 1) : ℚ) / (A000079 n : ℚ)⌋

end

end A215897.P15995818383520400224

/-!
# A215898: a(4n) = 1+4n, a(1+4n) = -2-6n, a(2+4n) = 4+6n, a(3+4n) = -3-4n.

The programs for A215898, the canonical program `A215898.P11576812449615340023` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A215898 has offset 0).

The definition of A215898 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A215898.P9162117446733922318

`ogf((1-x+3x^2+3x^4-x^5+x^6)/(1+x+x^2+x^3-x^4-x^5-x^6-x^7))`
-/

namespace A215898.P9162117446733922318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1, 3, 0, 3, -1, 1] [1, 1, 1, 1, -1, -1, -1, -1] n

end

end A215898.P9162117446733922318

namespace A215898

/-- `ogf((1-x+3x^2+3x^4-x^5+x^6)/(1+x+x^2+x^3-x^4-x^5-x^6-x^7))` -/
def P9162117446733922318.Spec : Prop :=
  ∀ n, P9162117446733922318.a n = A215898 n

end A215898

/-! ## A215898.P11576812449615340023

`2*a(n-4)-a(n-8)` with `a(0)=1, a(1)=-2, a(2)=4, a(3)=-3, a(4)=5, a(5)=-8, a(6)=10, a(7)=-7`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A215898

/-- `2*a(n-4)-a(n-8)` -/
def P11576812449615340023.Spec : Prop :=
  ∀ n, P11576812449615340023.a n = A215898 n

theorem P11576812449615340023.correct : P11576812449615340023.Spec := by
  intro n
  simp only [A215898]

end A215898

/-! ## A215898.P422772335269925848

`Δ[2*n/gcd(4, n+2)]-1`
-/

namespace A215898.P422772335269925848
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * n : ℚ) / (Nat.gcd 4 (n + 2) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A215898.P422772335269925848

namespace A215898

/-- `Δ[2*n/gcd(4, n+2)]-1` -/
def P422772335269925848.Spec : Prop :=
  ∀ n, P422772335269925848.a n = (A215898 n : ℚ)

end A215898

/-! ## A215898.P14220712089249717319

`Δ[lcm(n+2, 2*n)/(n+2)]-1`
-/

namespace A215898.P14220712089249717319
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm (n + 2) (2 * n) : ℚ) / (n + 2 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A215898.P14220712089249717319

namespace A215898

/-- `Δ[lcm(n+2, 2*n)/(n+2)]-1` -/
def P14220712089249717319.Spec : Prop :=
  ∀ n, P14220712089249717319.a n = (A215898 n : ℚ)

end A215898

/-! ## A215898.P4768447499123437401

`Δ[Δ[A272212(n)]]`
-/

namespace A215898.P4768447499123437401
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272212 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A215898.P4768447499123437401

namespace A215898

/-- `Δ[Δ[A272212(n)]]` -/
def P4768447499123437401.Spec : Prop :=
  ∀ n, P4768447499123437401.a n = A215898 n

end A215898

/-! ## A215898.P3371133176221585542

`Δ[Δ[A057353(n)*A059169(n+1)]]`
-/

namespace A215898.P3371133176221585542
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057353 n * A059169 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A215898.P3371133176221585542

namespace A215898

/-- `Δ[Δ[A057353(n)*A059169(n+1)]]` -/
def P3371133176221585542.Spec : Prop :=
  ∀ n, P3371133176221585542.a n = A215898 n

end A215898

/-! ## A215898.P17642711531519823472

`Δ[Δ[A008794(n)-A295643(n+1)]]`
-/

namespace A215898.P17642711531519823472
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008794 n - A295643 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A215898.P17642711531519823472

namespace A215898

/-- `Δ[Δ[A008794(n)-A295643(n+1)]]` -/
def P17642711531519823472.Spec : Prop :=
  ∀ n, P17642711531519823472.a n = A215898 n

end A215898

/-! ## A215898.P659593008395846998

`Δ[A225975(2*n)]-1`
-/

namespace A215898.P659593008395846998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225975 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A215898.P659593008395846998

namespace A215898

/-- `Δ[A225975(2*n)]-1` -/
def P659593008395846998.Spec : Prop :=
  ∀ n, P659593008395846998.a n = A215898 n

end A215898

/-! ## A215898.P808272123181880074

`Δ[Δ[A295643(2*n)-A295643(n+1)]]`
-/

namespace A215898.P808272123181880074
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295643 (2 * n) - A295643 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A215898.P808272123181880074

namespace A215898

/-- `Δ[Δ[A295643(2*n)-A295643(n+1)]]` -/
def P808272123181880074.Spec : Prop :=
  ∀ n, P808272123181880074.a n = A215898 n

end A215898

/-!
# A215899: Number of diagonal and antidiagonal neighbor colorings of the even squares of an n X n array with new integer colors introduced in row major order.

The programs for A215899, there is no canonical definition to state claims against.
-/

/-! ## A215899.P15527935547641559843

`A215904((n+1)²+n²)`
-/

namespace A215899.P15527935547641559843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215904 ((n + 1) ^ 2 + n ^ 2)

end

end A215899.P15527935547641559843

