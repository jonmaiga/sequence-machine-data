import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C027
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C034
import Seq.B000.C037
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C002
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C002
import Seq.B007.C000
import Seq.B007.C001
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A376800: 3-brilliant numbers with distinct prime factors.

The programs for A376800, there is no canonical definition to state claims against.
-/

/-! ## A376800.P18084758696237429592

`∩[A376703(n+1), A395899(n+1)]`
-/

namespace A376800.P18084758696237429592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376703 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395899 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A376800.P18084758696237429592

/-! ## A376800.P8005545020041269364

`filter[A376703(n+1), A008966(#)]`
-/

namespace A376800.P8005545020041269364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376703 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A376800.P8005545020041269364

/-! ## A376800.P4910452518053918823

`filter[A376703(n+1), A354353(#)]`
-/

namespace A376800.P4910452518053918823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376703 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354353 (f1 j).toNat = 1) n)

end

end A376800.P4910452518053918823

/-! ## A376800.P15953709414051117954

`filter[A376703(n+1), A354819(#)]`
-/

namespace A376800.P15953709414051117954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376703 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354819 (f1 j).toNat = 1) n)

end

end A376800.P15953709414051117954

/-! ## A376800.P3563308311692962166

`filter[A376703(n+1), A354926(#)]`
-/

namespace A376800.P3563308311692962166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376703 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354926 (f1 j).toNat = 1) n)

end

end A376800.P3563308311692962166

/-! ## A376800.P14832724737760087306

`filter[A376703(n+1), A374130(#)]`
-/

namespace A376800.P14832724737760087306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376703 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374130 (f1 j).toNat = 1) n)

end

end A376800.P14832724737760087306

/-! ## A376800.P669633835767216305

`filter[A376703(n+1), A374466(#)]`
-/

namespace A376800.P669633835767216305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376703 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374466 (f1 j).toNat = 1) n)

end

end A376800.P669633835767216305

/-! ## A376800.P18285027861793351600

`filter[A376703(n+1), A380469(#)]`
-/

namespace A376800.P18285027861793351600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376703 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A380469 (f1 j).toNat = 1) n)

end

end A376800.P18285027861793351600

/-! ## A376800.P7997288058490040200

`filter[A376703(n+1), A252233(#)]`
-/

namespace A376800.P7997288058490040200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376703 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A252233 (f1 j).toNat = 1) n)

end

end A376800.P7997288058490040200

/-! ## A376800.P12398938801321088846

`filter[A376703(n+1), A323154(#)]`
-/

namespace A376800.P12398938801321088846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376703 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323154 (f1 j).toNat = 1) n)

end

end A376800.P12398938801321088846

/-! ## A376800.P11865074183715241035

`filter[A376703(n+1), A353519(#)]`
-/

namespace A376800.P11865074183715241035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376703 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353519 (f1 j).toNat = 1) n)

end

end A376800.P11865074183715241035

/-! ## A376800.P9411427139507083510

`filter[A376703(n+1), A353559(#)]`
-/

namespace A376800.P9411427139507083510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376703 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353559 (f1 j).toNat = 1) n)

end

end A376800.P9411427139507083510

/-!
# A376801: a(0) = 397; a(n+1) = a(n)^2 if a(n) is prime, floor(a(n)/2) otherwise.

The programs for A376801, there is no canonical definition to state claims against.
-/

/-! ## A376801.P11086464580735712064

`A340419(n)+A124763(A001792(n))`
-/

namespace A376801.P11086464580735712064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340419 n + A124763 (A001792 n).toNat

end

end A376801.P11086464580735712064

/-!
# A376802: Expansion of 1/((1 - x)^3 - 9*x)^(1/3).

The programs for A376802, there is no canonical definition to state claims against.
-/

/-! ## A376802.P5323430216404627154

`∑[A361895(n)]`
-/

namespace A376802.P5323430216404627154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361895 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A376802.P5323430216404627154

/-!
# A376803: Expansion of 1/((1 - x)^3 - 9*x^2)^(1/3).

The programs for A376803, there is no canonical definition to state claims against.
-/

/-! ## A376803.P501186450490969237

`A352272(a(n-1)+1)` with `a(0)=1, a(1)=1`
-/

namespace A376803.P501186450490969237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A352272 (a (n - 1) + 1).toNat

end

end A376803.P501186450490969237

/-! ## A376803.P5311850079296653536

`A079932(A001250(n))`
-/

namespace A376803.P5311850079296653536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079932 (A001250 n).toNat

end

end A376803.P5311850079296653536

/-!
# A376805: Expansion of 1/((1 - x^2)^3 - 9*x)^(1/3).

The programs for A376805, there is no canonical definition to state claims against.
-/

/-! ## A376805.P3586485659144109138

`A324477(A011782(3*n))`
-/

namespace A376805.P3586485659144109138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324477 (A011782 (3 * n)).toNat

end

end A376805.P3586485659144109138

/-!
# A376806: Expansion of 1/((1 - x^3)^3 - 9*x)^(1/3).

The programs for A376806, there is no canonical definition to state claims against.
-/

/-! ## A376806.P628562068854918560

`A264230(n+1)-A386586(A304792(n))`
-/

namespace A376806.P628562068854918560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264230 (n + 1) - A386586 (A304792 n).toNat

end

end A376806.P628562068854918560

/-! ## A376806.P8488526976926875233

`A264230(n+1)-A014085(A098854(3*n+1))`
-/

namespace A376806.P8488526976926875233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264230 (n + 1) - A014085 (A098854 (3 * n + 1)).toNat

end

end A376806.P8488526976926875233

/-!
# A376807: Products of distinct prime Fibonacci numbers.

The programs for A376807, there is no canonical definition to state claims against.
-/

/-! ## A376807.P988664605064131768

`record[A007947(A068095(n+1))]`
-/

namespace A376807.P988664605064131768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A068095 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A376807.P988664605064131768

/-! ## A376807.P2295349231658374546

`filter[A068095(n+1), A008966(#)]`
-/

namespace A376807.P2295349231658374546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068095 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A376807.P2295349231658374546

/-! ## A376807.P11478863233403795751

`∩[A005117(n+1), A068095(n+1)]`
-/

namespace A376807.P11478863233403795751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068095 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A376807.P11478863233403795751

/-! ## A376807.P4650877370250246527

`∩[A068095(n+1), A326535(n+1)]`
-/

namespace A376807.P4650877370250246527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068095 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326535 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A376807.P4650877370250246527

/-! ## A376807.P3333010866242653463

`∩[A068095(n+1), A344308(n+1)]`
-/

namespace A376807.P3333010866242653463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068095 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344308 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A376807.P3333010866242653463

/-!
# A376810: Expansion of 1/sqrt(1 - 4*x/(1 - x^2)^2).

The programs for A376810, there is no canonical definition to state claims against.
-/

/-! ## A376810.P9934789880051406801

`A037458(A369839(n+1))`
-/

namespace A376810.P9934789880051406801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037458 (A369839 (n + 1)).toNat

end

end A376810.P9934789880051406801

/-! ## A376810.P17125107124573999937

`A194523(A086462(n))`
-/

namespace A376810.P17125107124573999937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194523 (A086462 n).toNat

end

end A376810.P17125107124573999937

/-!
# A376811: Expansion of 1/sqrt(1 - 4*x/(1 - x^3)^2).

The programs for A376811, there is no canonical definition to state claims against.
-/

/-! ## A376811.P11405502505950362720

`A374599(n)+A339087(A076843(n+1))`
-/

namespace A376811.P11405502505950362720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374599 n + A339087 (A076843 (n + 1)).toNat

end

end A376811.P11405502505950362720

/-!
# A376822: Number of colorings of a toroidal n X n grid using exactly two colors under translational symmetry.

The programs for A376822, there is no canonical definition to state claims against.
-/

/-! ## A376822.P10836597384667655348

`A179043(n+1)-2`
-/

namespace A376822.P10836597384667655348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179043 (n + 1) - 2

end

end A376822.P10836597384667655348

/-! ## A376822.P16081966763463400279

`A294684(∑[n+1])`
-/

namespace A376822.P16081966763463400279
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294684 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A376822.P16081966763463400279

/-! ## A376822.P12655965568362635838

`A184271(A001844(n))-2`
-/

namespace A376822.P12655965568362635838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184271 (A001844 n).toNat - 2

end

end A376822.P12655965568362635838

/-! ## A376822.P8192308179729902937

`record[Δ[A179043(A006843(n+1))]]`
-/

namespace A376822.P8192308179729902937
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179043 (A006843 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A376822.P8192308179729902937

/-! ## A376822.P8867140855190671479

`record[A127672(n)*A294684(n+1)]`
-/

namespace A376822.P8867140855190671479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127672 n * A294684 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A376822.P8867140855190671479

/-!
# A376823: Number of colorings of a toroidal n X n grid using exactly three colors under translational symmetry.

The programs for A376823, there is no canonical definition to state claims against.
-/

/-! ## A376823.P9467498464694611135

`A184278(n+1)-3*A179043(n+1)+3`
-/

namespace A376823.P9467498464694611135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184278 (n + 1) - 3 * A179043 (n + 1) + 3

end

end A376823.P9467498464694611135

/-! ## A376823.P3236963226402717377

`A294685(∑[n+1])`
-/

namespace A376823.P3236963226402717377
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294685 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A376823.P3236963226402717377

/-!
# A376824: Number of colorings of a toroidal n X n grid using exactly four colors under translational symmetry.

The programs for A376824, there is no canonical definition to state claims against.
-/

/-! ## A376824.P9629573346568449356

`A184272(n+1)-4*A184278(n+1)+6*A179043(n+1)-4`
-/

namespace A376824.P9629573346568449356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184272 (n + 1) - 4 * A184278 (n + 1) + 6 * A179043 (n + 1) - 4

end

end A376824.P9629573346568449356

/-! ## A376824.P12581224601875686530

`A294686(∑[n+1])`
-/

namespace A376824.P12581224601875686530
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294686 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A376824.P12581224601875686530

/-!
# A376826: Array read by antidiagonals: T(n,k) = n! * [x^n] exp(2*x + (k/2)*x^2), n >= 0, k >= 0.

The programs for A376826, there is no canonical definition to state claims against.
-/

/-! ## A376826.P1662899767573216155

`A116925(comp[∑[n-1]]%A128460(n+2))`
-/

namespace A376826.P1662899767573216155
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116925 (Int.tmod (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) (A128460 (n + 2))).toNat

end

end A376826.P1662899767573216155

/-! ## A376826.P16190501384780275652

`A203647(n+1)+A080343(A157150(n))`
-/

namespace A376826.P16190501384780275652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203647 (n + 1) + A080343 (A157150 n).toNat

end

end A376826.P16190501384780275652

/-! ## A376826.P4454006965250503160

`A386584(A008277(n+1))+A203647(n+1)`
-/

namespace A376826.P4454006965250503160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386584 (A008277 (n + 1)).toNat + A203647 (n + 1)

end

end A376826.P4454006965250503160

/-! ## A376826.P18041391293711432133

`A203647(n+1)+A186748(A061910(n+5))`
-/

namespace A376826.P18041391293711432133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203647 (n + 1) + A186748 (A061910 (n + 5)).toNat

end

end A376826.P18041391293711432133

/-! ## A376826.P16211455368012338039

`A116925(comp[∑[n-1]])%A217599(n+1)`
-/

namespace A376826.P16211455368012338039
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A116925 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)) (A217599 (n + 1))

end

end A376826.P16211455368012338039

/-!
# A376827: T(n, k) = binomial(n, k)*hypergeom([(1 - n)/2, -n/2], [1], 4).

The programs for A376827, the canonical program `A376827.P729589527535175197` is in `Seq.B006.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A376827 has offset 0).

The definition of A376827 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8839 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A376827.P729589527535175197

`A002426(A003056(n))*A007318(n)`

The canonical program, it is in `Seq.B006.C002`.
-/

namespace A376827

/-- `A002426(A003056(n))*A007318(n)` -/
def P729589527535175197.Spec : Prop :=
  ∀ n, P729589527535175197.a n = A376827 n

theorem P729589527535175197.correct : P729589527535175197.Spec := by
  intro n
  simp only [A376827]

end A376827

/-! ## A376827.P4451570793826996700

`A007318(n)*A116883(A168256(n))`
-/

namespace A376827.P4451570793826996700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A116883 (A168256 n).toNat

end

end A376827.P4451570793826996700

namespace A376827

/-- `A007318(n)*A116883(A168256(n))` -/
def P4451570793826996700.Spec : Prop :=
  ∀ n, P4451570793826996700.a n = A376827 n

end A376827

/-!
# A376829: Numbers m whose symmetric representation of sigma(m) has at least a part with maximum width 3.

The programs for A376829, there is no canonical definition to state claims against.
-/

/-! ## A376829.P1109522691517220990

`eq[3, A250068(n+1)]+1`
-/

namespace A376829.P1109522691517220990
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250068 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A376829.P1109522691517220990

/-! ## A376829.P14812742085049967269

`eq[3, A250068(A028310(n))]`
-/

namespace A376829.P14812742085049967269
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250068 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A376829.P14812742085049967269

/-! ## A376829.P7413500102468777827

`A065475(eq[3, A250068(n+1)])`
-/

namespace A376829.P7413500102468777827
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250068 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A376829.P7413500102468777827

/-! ## A376829.P17774837275280053872

`eq[3, A250068(A233583(n+1))]`
-/

namespace A376829.P17774837275280053872
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250068 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A376829.P17774837275280053872

/-! ## A376829.P6025369668139094278

`A253258(A167614(n+1))`
-/

namespace A376829.P6025369668139094278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253258 (A167614 (n + 1)).toNat

end

end A376829.P6025369668139094278

/-!
# A376833: Second smallest prime factor of numbers m that are both squarefree and composite.

The programs for A376833, there is no canonical definition to state claims against.
-/

/-! ## A376833.P3930033897863993129

`A119288(A120944(n+1))`
-/

namespace A376833.P3930033897863993129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119288 (A120944 (n + 1)).toNat

end

end A376833.P3930033897863993129

/-! ## A376833.P934345418451196287

`A014673(A000469(n+2))`
-/

namespace A376833.P934345418451196287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014673 (A000469 (n + 2)).toNat

end

end A376833.P934345418451196287

/-! ## A376833.P17324081064746454314

`A292269(A120944(2*n+1-n))`
-/

namespace A376833.P17324081064746454314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292269 (A120944 (2 * n + 1 - n)).toNat

end

end A376833.P17324081064746454314

/-! ## A376833.P16918099940700634308

`p?[A008683(n+1)²*A014673(n+1)]`
-/

namespace A376833.P16918099940700634308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 1) ^ 2 * A014673 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A376833.P16918099940700634308

/-! ## A376833.P13867305580892604219

`A006530(A394049(n+1))`
-/

namespace A376833.P13867305580892604219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A394049 (n + 1)).toNat

end

end A376833.P13867305580892604219

/-! ## A376833.P12132325967932129089

`A067695(A366807(n+1))`
-/

namespace A376833.P12132325967932129089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067695 (A366807 (n + 1)).toNat

end

end A376833.P12132325967932129089

/-!
# A376834: Numbers k that have at least 1 powerful number m such that 1 < m <= k that are not prime powers such that rad(m) | k, where rad = A007947.

The programs for A376834, there is no canonical definition to state claims against.
-/

/-! ## A376834.P7371072165150263133

`filter[A214408(n+2), A136442(#)]`
-/

namespace A376834.P7371072165150263133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214408 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A136442 (f1 j).toNat = 1) n)

end

end A376834.P7371072165150263133

/-!
# A376835: Expansion of 1/((1-x)^4 - 8*x^4)^(1/4).

The programs for A376835, there is no canonical definition to state claims against.
-/

/-! ## A376835.P16377416917145522022

`A004396(A379464(n))`
-/

namespace A376835.P16377416917145522022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A379464 n).toNat

end

end A376835.P16377416917145522022

/-! ## A376835.P8882313675993941394

`A215457(A227035(n))`
-/

namespace A376835.P8882313675993941394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215457 (A227035 n).toNat

end

end A376835.P8882313675993941394

/-! ## A376835.P2067489129867411513

`A353833(A387508(n))`
-/

namespace A376835.P2067489129867411513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353833 (A387508 n).toNat

end

end A376835.P2067489129867411513

/-! ## A376835.P4175976433731602693

`A004741(A227035(n)²)`
-/

namespace A376835.P4175976433731602693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004741 (A227035 n ^ 2).toNat

end

end A376835.P4175976433731602693

/-! ## A376835.P8873841254590955119

`A055086(A227035(n)²)`
-/

namespace A376835.P8873841254590955119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055086 (A227035 n ^ 2).toNat

end

end A376835.P8873841254590955119

/-!
# A376836: Expansion of 1/((1-x)^8 - 16*x^8)^(1/8).

The programs for A376836, there is no canonical definition to state claims against.
-/

/-! ## A376836.P5626306714472454290

`A005408(C(n, 8))`
-/

namespace A376836.P5626306714472454290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (Nat.choose n 8)

end

end A376836.P5626306714472454290

/-! ## A376836.P15145378342099358402

`A160144(C(n, 8))`
-/

namespace A376836.P15145378342099358402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160144 (Nat.choose n 8)

end

end A376836.P15145378342099358402

/-! ## A376836.P13056966082134914421

`A237292(C(n, 8))`
-/

namespace A376836.P13056966082134914421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237292 (Nat.choose n 8)

end

end A376836.P13056966082134914421

/-! ## A376836.P11555883676993153911

`A266437(C(n, 8))`
-/

namespace A376836.P11555883676993153911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266437 (Nat.choose n 8)

end

end A376836.P11555883676993153911

/-! ## A376836.P18284827793033440285

`A004273(C(n, 8)+1)`
-/

namespace A376836.P18284827793033440285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (Nat.choose n 8 + 1)

end

end A376836.P18284827793033440285

/-!
# A376837: a(n) is the number of paths to reach a position outside an 8 X 8 chessboard after n steps, starting in one of the corners, when performing a walk with unit steps on the square lattice.

The programs for A376837, there is no canonical definition to state claims against.
-/

/-! ## A376837.P9460249039376540519

`A126257(4*A005558(n))`
-/

namespace A376837.P9460249039376540519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126257 (4 * A005558 n).toNat

end

end A376837.P9460249039376540519

/-! ## A376837.P15745263866813519813

`(ceil(1/A269134(3*n+1))+1)*A005558(n)`
-/

namespace A376837.P15745263866813519813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (⌈1 / (A269134 (3 * n + 1) : ℚ)⌉ + 1) * A005558 n

end

end A376837.P15745263866813519813

/-! ## A376837.P7818839916594578969

`A001316(A006125(n))*A005558(n)`
-/

namespace A376837.P7818839916594578969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 (A006125 n).toNat * A005558 n

end

end A376837.P7818839916594578969

/-!
# A376838: Phase shift (original name "sfasamento") of the tetration base 10*n at height 2.

The programs for A376838, there is no canonical definition to state claims against.
-/

/-! ## A376838.P6694123351389552807

`((((n+1)/10^val(n+1, 10))^(n%8+1))%10)²%10`
-/

namespace A376838.P6694123351389552807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.tmod (SequenceMachineLib.roundAway (((n + 1 : ℚ) / (10 ^ SequenceMachineLib.valuation (n + 1) 10 : ℚ)) ^ (n % 8 + 1))) 10 ^ 2) 10

end

end A376838.P6694123351389552807

/-! ## A376838.P9860568602255207928

`A116081(A008592(n+1))`
-/

namespace A376838.P9860568602255207928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116081 (A008592 (n + 1)).toNat

end

end A376838.P9860568602255207928

/-! ## A376838.P9692383739984941018

`A116081(A017377(n)+1)`
-/

namespace A376838.P9692383739984941018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116081 (A017377 n + 1).toNat

end

end A376838.P9692383739984941018

/-! ## A376838.P2075306339592228627

`A116081(A059729(n+1))`
-/

namespace A376838.P2075306339592228627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116081 (A059729 (n + 1)).toNat

end

end A376838.P2075306339592228627

/-! ## A376838.P7900065911998871698

`A116081(A068522(n+1))`
-/

namespace A376838.P7900065911998871698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116081 (A068522 (n + 1)).toNat

end

end A376838.P7900065911998871698

/-! ## A376838.P8417240277858616726

`A116081(A087217(n+1))`
-/

namespace A376838.P8417240277858616726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116081 (A087217 (n + 1)).toNat

end

end A376838.P8417240277858616726

/-! ## A376838.P3465166360416442804

`A116081(A017329(n)+5)`
-/

namespace A376838.P3465166360416442804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116081 (A017329 n + 5).toNat

end

end A376838.P3465166360416442804

/-! ## A376838.P2117682294402660426

`A116081(A380904(n+10))`
-/

namespace A376838.P2117682294402660426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116081 (A380904 (n + 10)).toNat

end

end A376838.P2117682294402660426

/-! ## A376838.P16556813309645165824

`A116081(A017281(n+1)-1)`
-/

namespace A376838.P16556813309645165824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116081 (A017281 (n + 1) - 1).toNat

end

end A376838.P16556813309645165824

/-! ## A376838.P14776313992953004354

`A116081((n+1)*A065881(n+1))`
-/

namespace A376838.P14776313992953004354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116081 ((n + 1 : ℤ) * A065881 (n + 1)).toNat

end

end A376838.P14776313992953004354

/-!
# A376840: Take the integer partitions with at least 2 parts in order of their associated multinomial coefficients; a(n) is the sum of the n-th partition, i.e., the number of the row of A036038 (or A078760) in which the multinomial coefficient appears. In case of ties, take the sums (or row numbers) in nondecreasing order.

The programs for A376840, there is no canonical definition to state claims against.
-/

/-! ## A376840.P13267851254126059293

`A056239(A376379(n+1))`
-/

namespace A376840.P13267851254126059293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (A376379 (n + 1)).toNat

end

end A376840.P13267851254126059293

/-!
# A376842: Asymptotic phase shift of the tetration base n written by juxtaposing its representative congruence classes modulo 10 (i.e., the 1, 2, or 4, distinct sfasamenti taken by starting from the minimum height such that the congruence speed of n is constant), and a(n) = -1 if n is a multiple of 10.

The programs for A376842, there is no canonical definition to state claims against.
-/

/-! ## A376842.P17781486874689375168

`A378419(n+1)%A179795(3*n+1)`
-/

namespace A376842.P17781486874689375168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A378419 (n + 1)) (A179795 (3 * n + 1))

end

end A376842.P17781486874689375168

/-! ## A376842.P14649953961615689556

`A378419(n+1)+A007814(A177208(n))`
-/

namespace A376842.P14649953961615689556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378419 (n + 1) + A007814 (A177208 n).toNat

end

end A376842.P14649953961615689556

/-! ## A376842.P652997436475571402

`A378419(n+1)+A353477(A000666(n))`
-/

namespace A376842.P652997436475571402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378419 (n + 1) + A353477 (A000666 n).toNat

end

end A376842.P652997436475571402

/-!
# A376844: Numbers k such that (k + k')' = k' + k'', where ' denotes the arithmetic derivative A003415.

The programs for A376844, there is no canonical definition to state claims against.
-/

/-! ## A376844.P13149490426804326050

`A151845(A084652(n+1))`
-/

namespace A376844.P13149490426804326050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151845 (A084652 (n + 1)).toNat

end

end A376844.P13149490426804326050

/-!
# A376846: Number of m <= n such that rad(m) | n and Omega(m) > Omega(n), where rad = A007947 and Omega = A001222.

The programs for A376846, there is no canonical definition to state claims against.
-/

/-! ## A376846.P5826378415568036162

`A010846(n+1)+A376847(n+1)-A376567(n+1)`
-/

namespace A376846.P5826378415568036162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010846 (n + 1) + (A376847 (n + 1) - A376567 (n + 1))

end

end A376846.P5826378415568036162

/-! ## A376846.P6812912998214028909

`C(A001221(A038001(n+1)), A040865(n))`
-/

namespace A376846.P6812912998214028909
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A001221 (A038001 (n + 1)).toNat).toNat (A040865 n).toNat

end

end A376846.P6812912998214028909

/-! ## A376846.P4984690018649548344

`and(A210323(n+1), A339893(n+1))`
-/

namespace A376846.P4984690018649548344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A210323 (n + 1)) (A339893 (n + 1))

end

end A376846.P4984690018649548344

/-! ## A376846.P820251422295990172

`and(A248074(n+1), A339893(n+1))`
-/

namespace A376846.P820251422295990172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A248074 (n + 1)) (A339893 (n + 1))

end

end A376846.P820251422295990172

/-! ## A376846.P11921430329274876058

`A172310(n)%A263296(A133910(n+1))`
-/

namespace A376846.P11921430329274876058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A172310 n) (A263296 (A133910 (n + 1)).toNat)

end

end A376846.P11921430329274876058

/-!
# A376847: Number of m > n such that rad(m) | n and Omega(m) <= Omega(n), where rad = A007947 and Omega = A001222.

The programs for A376847, there is no canonical definition to state claims against.
-/

/-! ## A376847.P14982681477332981407

`A376567(n+1)+A376846(n+1)-A010846(n+1)`
-/

namespace A376847.P14982681477332981407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376567 (n + 1) + (A376846 (n + 1) - A010846 (n + 1))

end

end A376847.P14982681477332981407

/-! ## A376847.P17529698159940566048

`A000120(A165633(3*n+2)*A364830(n+1))`
-/

namespace A376847.P17529698159940566048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A165633 (3 * n + 2) * A364830 (n + 1)).toNat

end

end A376847.P17529698159940566048

/-! ## A376847.P8370111547972520904

`A000120(A364830(n+1))%A106442(2*(n+1))`
-/

namespace A376847.P8370111547972520904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000120 (A364830 (n + 1)).toNat) (A106442 (2 * (n + 1)))

end

end A376847.P8370111547972520904

/-! ## A376847.P6718102938497597306

`A000120(A364830(n+1)%A238202(n+5))`
-/

namespace A376847.P6718102938497597306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (Int.tmod (A364830 (n + 1)) (A238202 (n + 5))).toNat

end

end A376847.P6718102938497597306

/-! ## A376847.P4889391294627957059

`A000120(A364830(n+1))%A320893(n+1)`
-/

namespace A376847.P4889391294627957059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000120 (A364830 (n + 1)).toNat) (A320893 (n + 1))

end

end A376847.P4889391294627957059

/-!
# A376848: Numbers k such that phi(k + phi(k)) = phi(k) + phi(phi(k)), where phi = A000010.

The programs for A376848, there is no canonical definition to state claims against.
-/

/-! ## A376848.P10073221846641292705

`lt[A003961(A329940(n+1)), A329901(n+1)]`
-/

namespace A376848.P10073221846641292705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (A329940 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329901 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A376848.P10073221846641292705

/-!
# A376851: Numbers k such that sopfr(k + sopfr(k)) = sopfr(k) + sopfr(sopfr(k)), where sopfr = A001414.

The programs for A376851, there is no canonical definition to state claims against.
-/

/-! ## A376851.P9108146624778055809

`A319847(n+1)+A301372(A125853(n+1))`
-/

namespace A376851.P9108146624778055809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319847 (n + 1) + A301372 (A125853 (n + 1)).toNat

end

end A376851.P9108146624778055809

/-!
# A376852: G.f.: Sum_{k>=0} x^(k*(k+1)) * Product_{j=1..k} ((1 + x^j)/(1 - x^j))^2.

The programs for A376852, there is no canonical definition to state claims against.
-/

/-! ## A376852.P12712734231712843907

`A140397(A135197(n+1))+A139714(n)`
-/

namespace A376852.P12712734231712843907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140397 (A135197 (n + 1)).toNat + A139714 n

end

end A376852.P12712734231712843907

/-!
# A376855: Position of first 0 in the n-th differences of the noncomposite numbers (A008578), or 0 if it does not appear.

The programs for A376855, there is no canonical definition to state claims against.
-/

/-! ## A376855.P1734218097856009495

`(A376678(n)+1)%A308647(n)`
-/

namespace A376855.P1734218097856009495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A376678 n + 1) (A308647 n)

end

end A376855.P1734218097856009495

/-!
# A376856: a(1) = 1; for n > 1, a(n) is the smallest unused positive number such that a(n), |a(n) - a(n-1)| and a(1) + ... +a(n) are all palindromes.

The programs for A376856, there is no canonical definition to state claims against.
-/

/-! ## A376856.P6985984384813405002

`A265536(A308251(n))`
-/

namespace A376856.P6985984384813405002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265536 (A308251 n).toNat

end

end A376856.P6985984384813405002

/-! ## A376856.P14991959194376542970

`A265536(A364841(n))`
-/

namespace A376856.P14991959194376542970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265536 (A364841 n).toNat

end

end A376856.P14991959194376542970

/-! ## A376856.P3094076546461794178

`A265536(A058592(n+1))`
-/

namespace A376856.P3094076546461794178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265536 (A058592 (n + 1)).toNat

end

end A376856.P3094076546461794178

/-! ## A376856.P6004489416186911453

`A265518(A240841(n+1))`
-/

namespace A376856.P6004489416186911453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265518 (A240841 (n + 1)).toNat

end

end A376856.P6004489416186911453

/-! ## A376856.P2338730869102015661

`A073880(A002113(A109872(n+2)))`
-/

namespace A376856.P2338730869102015661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073880 (A002113 (A109872 (n + 2)).toNat).toNat

end

end A376856.P2338730869102015661

/-!
# A376857: Fixed points of A162742.

The programs for A376857, there is no canonical definition to state claims against.
-/

/-! ## A376857.P11146247838532625083

`∩[2*n+1, A235028(n+1)]`
-/

namespace A376857.P11146247838532625083
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235028 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A376857.P11146247838532625083

/-! ## A376857.P16259978616029845452

`∩[A235028(n+1), A060747(n)]`
-/

namespace A376857.P16259978616029845452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235028 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060747 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A376857.P16259978616029845452

/-! ## A376857.P12707203796233092940

`eq[n, A235027(A093178(n))]`
-/

namespace A376857.P12707203796233092940
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235027 (A093178 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A376857.P12707203796233092940

/-! ## A376857.P3505579485121262232

`eq[n, A235027(A109613(n))]`
-/

namespace A376857.P3505579485121262232
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235027 (A109613 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A376857.P3505579485121262232

/-! ## A376857.P11071407874492327741

`eq[n, A235027(A215495(n))]`
-/

namespace A376857.P11071407874492327741
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235027 (A215495 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A376857.P11071407874492327741

/-! ## A376857.P15786725098019625086

`eq[A225058(n), A235027(n)]`
-/

namespace A376857.P15786725098019625086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225058 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235027 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A376857.P15786725098019625086

/-! ## A376857.P17381130614344690085

`eq[A235027(n), A257088(n)]`
-/

namespace A376857.P17381130614344690085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235027 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257088 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A376857.P17381130614344690085

/-! ## A376857.P3931830460426238747

`eq[A235027(n), A257143(n)]`
-/

namespace A376857.P3931830460426238747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235027 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257143 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A376857.P3931830460426238747

/-! ## A376857.P7539735599782582588

`eq[A235027(n), A261671(n)]`
-/

namespace A376857.P7539735599782582588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235027 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261671 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A376857.P7539735599782582588

/-! ## A376857.P18059350601958299174

`eq[n, A235027(A263426(n))]`
-/

namespace A376857.P18059350601958299174
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235027 (A263426 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A376857.P18059350601958299174

/-! ## A376857.P10805573315484254115

`eq[n, A235027(A290561(n))]`
-/

namespace A376857.P10805573315484254115
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235027 (A290561 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A376857.P10805573315484254115

/-! ## A376857.P11083533003736749749

`eq[A235027(n), A290562(n)]`
-/

namespace A376857.P11083533003736749749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235027 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290562 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A376857.P11083533003736749749

/-! ## A376857.P5172742294933703831

`filter[A235028(n+1), A000035(#)]`
-/

namespace A376857.P5172742294933703831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235028 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n)

end

end A376857.P5172742294933703831

/-! ## A376857.P9579120814553150557

`eq[A103889(n+1), A235027(n)]`
-/

namespace A376857.P9579120814553150557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103889 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235027 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A376857.P9579120814553150557

/-! ## A376857.P17670338895424756675

`eq[A133090(n+1), A235027(n)]`
-/

namespace A376857.P17670338895424756675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133090 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235027 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A376857.P17670338895424756675

/-! ## A376857.P11575591641916841078

`eq[n, A235027(A325962(n+1))]`
-/

namespace A376857.P11575591641916841078
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235027 (A325962 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A376857.P11575591641916841078

/-!
# A376858: 

The programs for A376858, there is no canonical definition to state claims against.
-/

/-! ## A376858.P2590050741007034715

`record[gcd(n+1, A071786(n+1))]`
-/

namespace A376858.P2590050741007034715
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A071786 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A376858.P2590050741007034715

/-! ## A376858.P15521743982896861586

`eq[n, A071786(A028310(n))]`
-/

namespace A376858.P15521743982896861586
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071786 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A376858.P15521743982896861586

/-! ## A376858.P6780696640419288674

`eq[A000027(n+1), A071786(n+1)]+1`
-/

namespace A376858.P6780696640419288674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071786 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A376858.P6780696640419288674

/-! ## A376858.P12051942837289883829

`eq[A004086(n), A161594(A028310(n))]`
-/

namespace A376858.P12051942837289883829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161594 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A376858.P12051942837289883829

/-!
# A376861: Numbers with a composite number of prime factors and a composite number of distinct prime factors.

The programs for A376861, there is no canonical definition to state claims against.
-/

/-! ## A376861.P5383055329672002860

`filter[A033993(n+1), A065043(#)]`
-/

namespace A376861.P5383055329672002860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033993 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A065043 (f1 j).toNat = 1) n)

end

end A376861.P5383055329672002860

/-! ## A376861.P7843665894014218527

`filter[A033993(n+1), A181183(#)]`
-/

namespace A376861.P7843665894014218527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033993 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A181183 (f1 j).toNat = 1) n)

end

end A376861.P7843665894014218527

/-! ## A376861.P10855882413312709102

`filter[A033993(n+1), A353669(#)]`
-/

namespace A376861.P10855882413312709102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033993 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353669 (f1 j).toNat = 1) n)

end

end A376861.P10855882413312709102

/-! ## A376861.P15009665132649996085

`∩[A033993(n+1), A067028(n+1)]`
-/

namespace A376861.P15009665132649996085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033993 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067028 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A376861.P15009665132649996085

/-! ## A376861.P8768111919552678415

`∩[A033993(n+1), A110893(n+1)]`
-/

namespace A376861.P8768111919552678415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033993 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110893 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A376861.P8768111919552678415

/-!
# A376862: Unitary Zumkeller numbers whose divisors can be partitioned into two disjoint subsets with equal sums and cardinalities.

The programs for A376862, there is no canonical definition to state claims against.
-/

/-! ## A376862.P884792116534058436

`∩[A290466(n+1), A347063(n+1)]`
-/

namespace A376862.P884792116534058436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290466 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347063 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A376862.P884792116534058436

/-! ## A376862.P18272599846426339070

`∩[A290466(n+1), A381874(n+1)]`
-/

namespace A376862.P18272599846426339070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290466 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381874 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A376862.P18272599846426339070

/-! ## A376862.P9296706591104192405

`∩[A293188(n+1), A381874(n+1)]`
-/

namespace A376862.P9296706591104192405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293188 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381874 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A376862.P9296706591104192405

/-! ## A376862.P9563423809430557191

`∩[A290466(n+1), A367397(n+1)]`
-/

namespace A376862.P9563423809430557191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290466 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367397 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A376862.P9563423809430557191

/-! ## A376862.P14726514024169755865

`∩[A293188(n+1), A367397(n+1)]`
-/

namespace A376862.P14726514024169755865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293188 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367397 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A376862.P14726514024169755865

/-!
# A376868: a(n) = n! * 4^binomial(n, 2).

The programs for A376868, the canonical program `A376868.P7740210885381345666` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A376868 has offset 0).

The definition of A376868 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A376868.P6637626109219944170

`n!*4^C(n, 2)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A376868.P6637626109219944170
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n * 4 ^ Nat.choose n 2

end

end A376868.P6637626109219944170

namespace A376868

/-- `n!*4^C(n, 2)` -/
def P6637626109219944170.Spec : Prop :=
  ∀ n, (P6637626109219944170.a n : ℤ) = A376868 n

end A376868

/-! ## A376868.P8013990527447070952

`n!*2^(n²-n)`
-/

namespace A376868.P8013990527447070952
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℚ) * (2 : ℚ) ^ ((n ^ 2 : ℤ) - (n : ℤ) : ℤ)

end

end A376868.P8013990527447070952

namespace A376868

/-- `n!*2^(n²-n)` -/
def P8013990527447070952.Spec : Prop :=
  ∀ n, P8013990527447070952.a n = (A376868 n : ℚ)

end A376868

/-! ## A376868.P7740210885381345666

`A000142(n)*A053763(n)`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A376868

/-- `A000142(n)*A053763(n)` -/
def P7740210885381345666.Spec : Prop :=
  ∀ n, P7740210885381345666.a n = A376868 n

theorem P7740210885381345666.correct : P7740210885381345666.Spec := by
  intro n
  simp only [A376868]

end A376868

/-! ## A376868.P1635959195914600691

`2^(n*(n-1))*n!`
-/

namespace A376868.P1635959195914600691
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) * ((n : ℤ) - 1) : ℤ) * (Nat.factorial n : ℚ)

end

end A376868.P1635959195914600691

namespace A376868

/-- `2^(n*(n-1))*n!` -/
def P1635959195914600691.Spec : Prop :=
  ∀ n, P1635959195914600691.a n = (A376868 n : ℚ)

end A376868

/-! ## A376868.P16924171792005393996

`n*4^(n-1)*a(n-1)` with `a(0)=1`
-/

namespace A376868.P16924171792005393996
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (n : ℚ) * ((4 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * a (n - 1))

end

end A376868.P16924171792005393996

namespace A376868

/-- `n*4^(n-1)*a(n-1)` -/
def P16924171792005393996.Spec : Prop :=
  ∀ n, P16924171792005393996.a n = (A376868 n : ℚ)

end A376868

/-!
# A376871: a(n) = Sum_{k=0..n} n^k * hypergeom([-k, k - n], [1], 2).

The programs for A376871, there is no canonical definition to state claims against.
-/

/-! ## A376871.P17701076732852308305

`A096396(A385498(n)+2)`
-/

namespace A376871.P17701076732852308305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096396 (A385498 n + 2).toNat

end

end A376871.P17701076732852308305

/-!
# A376872: a(n) = n! * 2^(-n) * binomial(3*n - 1, 2*n) * binomial(2*n, n). Central terms of the Bessel triangle A132062.

The programs for A376872, the canonical program `A376872.P11860476060773288879` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A376872 has offset 0).

The definition of A376872 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A376872.P11860476060773288879

`a(n-1)*(27*n^3-54*n²+33*n-6)/(2*n²-2*n)` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A376872

/-- `a(n-1)*(27*n^3-54*n²+33*n-6)/(2*n²-2*n)` -/
def P11860476060773288879.Spec : Prop :=
  ∀ n, P11860476060773288879.a n = (A376872 n : ℚ)

end A376872

/-! ## A376872.P5229730704092931205

`A144299(A022266(n))`
-/

namespace A376872.P5229730704092931205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144299 (A022266 n).toNat

end

end A376872.P5229730704092931205

namespace A376872

/-- `A144299(A022266(n))` -/
def P5229730704092931205.Spec : Prop :=
  ∀ n, P5229730704092931205.a n = A376872 n

end A376872

/-! ## A376872.P14733818238484189620

`A359760(A022267(n))`
-/

namespace A376872.P14733818238484189620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359760 (A022267 n).toNat

end

end A376872.P14733818238484189620

namespace A376872

/-- `A359760(A022267(n))` -/
def P14733818238484189620.Spec : Prop :=
  ∀ n, P14733818238484189620.a n = A376872 n

end A376872

/-! ## A376872.P6339965633599590959

`A001498(2*n²)`
-/

namespace A376872.P6339965633599590959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001498 (2 * n ^ 2)

end

end A376872.P6339965633599590959

namespace A376872

/-- `A001498(2*n²)` -/
def P6339965633599590959.Spec : Prop :=
  ∀ n, P6339965633599590959.a n = A376872 n

end A376872

/-! ## A376872.P8343409335803733709

`A144331(A033991(n))`
-/

namespace A376872.P8343409335803733709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144331 (A033991 n).toNat

end

end A376872.P8343409335803733709

namespace A376872

/-- `A144331(A033991(n))` -/
def P8343409335803733709.Spec : Prop :=
  ∀ n, P8343409335803733709.a n = A376872 n

end A376872

/-!
# A376873: a(n) = n! * |Stirling1(2*n, n)|.

The programs for A376873, there is no canonical definition to state claims against.
-/

/-! ## A376873.P11691204924923537932

`n!*A187646(n)`
-/

namespace A376873.P11691204924923537932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A187646 n

end

end A376873.P11691204924923537932

/-! ## A376873.P18095526428163706502

`A225479(∑[4*n])`
-/

namespace A376873.P18095526428163706502
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225479 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A376873.P18095526428163706502

/-! ## A376873.P12175186687812916958

`A075181(n²+n²+1)`
-/

namespace A376873.P12175186687812916958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075181 (n ^ 2 + (n ^ 2 + 1))

end

end A376873.P12175186687812916958

/-! ## A376873.P14493707539716977546

`A000142(n)*A187646(n)`
-/

namespace A376873.P14493707539716977546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n * A187646 n

end

end A376873.P14493707539716977546

/-! ## A376873.P4923598718344051507

`A344498(2*n)`
-/

namespace A376873.P4923598718344051507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344498 (2 * n)

end

end A376873.P4923598718344051507

/-!
# A376874: a(n) = A376877(n) / p where p is the largest prime factor of A376877(n).

The programs for A376874, there is no canonical definition to state claims against.
-/

/-! ## A376874.P18220033213360039933

`A376877(n+1)/A006530(A376877(n+1))`
-/

namespace A376874.P18220033213360039933
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A376877 (n + 1) : ℚ) / (A006530 (A376877 (n + 1)).toNat : ℚ)

end

end A376874.P18220033213360039933

/-! ## A376874.P13586587179397020519

`A294887(A376877(n+1))`
-/

namespace A376874.P13586587179397020519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294887 (A376877 (n + 1)).toNat

end

end A376874.P13586587179397020519

/-! ## A376874.P13964619615042946718

`A006039(eq[1, A136708(n+3)])`
-/

namespace A376874.P13964619615042946718
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136708 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006039 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A376874.P13964619615042946718

/-! ## A376874.P4391752049353689245

`A006036(∑[abs(A143590(n+1)-n)!])`
-/

namespace A376874.P4391752049353689245
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial |A143590 (n + 1) - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006036 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A376874.P4391752049353689245

/-!
# A376876: Rademacher's partition formula extended to half-integers. a(n) = round(sqrt(48) * (cosh(h(n)) - sinh(h(n))/h(n)) / (24*n + 11)) where h(n) = sqrt(24*n + 11)*(Pi/6).

The programs for A376876, there is no canonical definition to state claims against.
-/

/-! ## A376876.P8580186653557100595

`A329978(A027340(n))`
-/

namespace A376876.P8580186653557100595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329978 (A027340 n).toNat

end

end A376876.P8580186653557100595

/-! ## A376876.P14163346977025488502

`A329978(A104503(n))`
-/

namespace A376876.P14163346977025488502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329978 (A104503 n).toNat

end

end A376876.P14163346977025488502

/-! ## A376876.P14273042114049657607

`A329978(A219601(n))`
-/

namespace A376876.P14273042114049657607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329978 (A219601 n).toNat

end

end A376876.P14273042114049657607

/-! ## A376876.P8137409522285519842

`A369464(A062298(n+1)+A000041(n))`
-/

namespace A376876.P8137409522285519842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369464 (A062298 (n + 1) + A000041 n).toNat

end

end A376876.P8137409522285519842

/-! ## A376876.P14526551878927852200

`A093697(A118084(n+2))`
-/

namespace A376876.P14526551878927852200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093697 (A118084 (n + 2)).toNat

end

end A376876.P14526551878927852200

/-!
# A376877: Numbers that have exactly one Zumkeller divisor but are not Zumkeller.

The programs for A376877, there is no canonical definition to state claims against.
-/

/-! ## A376877.P13774652398276171169

`∩[A028982(n+1), A376881(n+1)]`
-/

namespace A376877.P13774652398276171169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028982 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376881 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A376877.P13774652398276171169

/-! ## A376877.P17013366126318301930

`∩[A069265(n+1), A376881(n+1)]`
-/

namespace A376877.P17013366126318301930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069265 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376881 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A376877.P17013366126318301930

/-! ## A376877.P15590207369281317223

`∩[A069562(n+1), A376881(n+1)]`
-/

namespace A376877.P15590207369281317223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069562 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376881 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A376877.P15590207369281317223

/-! ## A376877.P16800873785311573081

`∩[A088827(n+1), A376881(n+1)]`
-/

namespace A376877.P16800873785311573081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088827 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376881 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A376877.P16800873785311573081

/-! ## A376877.P8988619689238810682

`∩[A156903(n+1), A376881(n+1)]`
-/

namespace A376877.P8988619689238810682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156903 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376881 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A376877.P8988619689238810682

/-! ## A376877.P8278584746057208550

`∩[A259231(n+1), A376881(n+1)]`
-/

namespace A376877.P8278584746057208550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259231 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376881 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A376877.P8278584746057208550

/-! ## A376877.P3152516788514044354

`∩[2*A166402(n+1), A376881(n+1)]`
-/

namespace A376877.P3152516788514044354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A166402 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376881 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A376877.P3152516788514044354

/-!
# A376878: Triangle read by rows: T(n, k) = n^k * n! * [x^k][y^n]((sec(y) + tan(y)) * exp(x*y)).

The programs for A376878, there is no canonical definition to state claims against.
-/

/-! ## A376878.P11845048580456315274

`A079901(n)*A109449(n)`
-/

namespace A376878.P11845048580456315274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079901 n * A109449 n

end

end A376878.P11845048580456315274

/-! ## A376878.P9787422134083373261

`abs(A247453(n))*A079901(n)`
-/

namespace A376878.P9787422134083373261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A247453 n| * A079901 n

end

end A376878.P9787422134083373261

/-!
# A376879: Numbers that are abundant (A005101) and have no Zumkeller divisors.

The programs for A376879, there is no canonical definition to state claims against.
-/

/-! ## A376879.P3560287604063913670

`A378656(n+1)%A378656(3*n+2)`
-/

namespace A376879.P3560287604063913670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A378656 (n + 1)) (A378656 (3 * n + 2))

end

end A376879.P3560287604063913670

/-! ## A376879.P6959779847977416863

`A378656(n+1)+A000007(A000213(n))`
-/

namespace A376879.P6959779847977416863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378656 (n + 1) + A000007 (A000213 n).toNat

end

end A376879.P6959779847977416863

/-! ## A376879.P9727201620104581336

`A378656(n+1)+A000007(A048736(n))`
-/

namespace A376879.P9727201620104581336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378656 (n + 1) + A000007 (A048736 n).toNat

end

end A376879.P9727201620104581336

/-! ## A376879.P15597977394539644021

`A378656(n+1)+A070435(A055112(n))`
-/

namespace A376879.P15597977394539644021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378656 (n + 1) + A070435 (A055112 n).toNat

end

end A376879.P15597977394539644021

/-! ## A376879.P6092334411249240494

`A378656(n+1)+A000007(A232464(n))`
-/

namespace A376879.P6092334411249240494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378656 (n + 1) + A000007 (A232464 n).toNat

end

end A376879.P6092334411249240494

/-!
# A376881: Numbers that have exactly one Zumkeller divisor.

The programs for A376881, there is no canonical definition to state claims against.
-/

/-! ## A376881.P13913406467703927439

`∪[A180332(n+1), A376877(n+1)]`
-/

namespace A376881.P13913406467703927439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180332 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376877 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A376881.P13913406467703927439

/-!
# A376882: a(n) is the product of the Zumkeller divisors of n.

The programs for A376882, there is no canonical definition to state claims against.
-/

/-! ## A376882.P895345756806050521

`A171147(A098315(n))`
-/

namespace A376882.P895345756806050521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171147 (A098315 n).toNat

end

end A376882.P895345756806050521

/-! ## A376882.P9963842661569464466

`A143364(A140495(n+1))`
-/

namespace A376882.P9963842661569464466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143364 (A140495 (n + 1)).toNat

end

end A376882.P9963842661569464466

/-! ## A376882.P1101821443170662636

`A135899(A265163(n+1))`
-/

namespace A376882.P1101821443170662636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135899 (A265163 (n + 1)).toNat

end

end A376882.P1101821443170662636

/-! ## A376882.P18111543752924384662

`A231655(A350793(n+1))`
-/

namespace A376882.P18111543752924384662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231655 (A350793 (n + 1)).toNat

end

end A376882.P18111543752924384662

/-! ## A376882.P14637609944054955464

`A293606(and(n, A236641(n+1)))`
-/

namespace A376882.P14637609944054955464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293606 (Int.land (n : ℤ) (A236641 (n + 1))).toNat

end

end A376882.P14637609944054955464

/-!
# A376884: Number of binary n-sequences ending in 1 with exactly one more occurrence of 11 than 10.

The programs for A376884, there is no canonical definition to state claims against.
-/

/-! ## A376884.P2195141453719486071

`A360309(n+1)/2`
-/

namespace A376884.P2195141453719486071
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A360309 (n + 1) : ℚ) / 2

end

end A376884.P2195141453719486071

/-! ## A376884.P4588673206256583170

`Δ[A217615(n)/2]`
-/

namespace A376884.P4588673206256583170
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A217615 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A376884.P4588673206256583170

/-! ## A376884.P4576302143651081805

`abs(A217615(n)-A217615(n+1))/2`
-/

namespace A376884.P4576302143651081805
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (|A217615 n - A217615 (n + 1)| : ℚ) / 2

end

end A376884.P4576302143651081805

/-! ## A376884.P10186274454751511537

`Δ[A371564(n)-A371358(n)]`
-/

namespace A376884.P10186274454751511537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371564 n - A371358 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A376884.P10186274454751511537

/-! ## A376884.P8932304778353926956

`Δ[2^n-A163493(n)-A371358(n)-A371358(n)]`
-/

namespace A376884.P8932304778353926956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - A163493 n - A371358 n - A371358 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A376884.P8932304778353926956

/-!
# A376885: The number of factors of n of the form p^(k!) counted with multiplicity, where p is a prime and k >= 1, when the factorization is uniquely done using the factorial-base representation of the exponents in the prime factorization of n.

The programs for A376885, the canonical program `A376885.P9304065174401764500` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A376885 has offset 1).

The definition of A376885 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A376885.P15795032870390106268

`ceil(log2(A376887(n+1)))`
-/

namespace A376885.P15795032870390106268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (A376887 (n + 1) : ℝ)⌉

end

end A376885.P15795032870390106268

namespace A376885

/-- `ceil(log2(A376887(n+1)))` -/
def P15795032870390106268.Spec : Prop :=
  ∀ n, P15795032870390106268.a n = A376885 (n + 1)

end A376885

/-! ## A376885.P2907418312419088428

`∑{e}[n+1, A034968(#)]`
-/

namespace A376885.P2907418312419088428
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A034968 (Nat.factorization (f1 n) p)

end

end A376885.P2907418312419088428

namespace A376885

/-- `∑{e}[n+1, A034968(#)]` -/
def P2907418312419088428.Spec : Prop :=
  ∀ n, P2907418312419088428.a n = A376885 (n + 1)

end A376885

/-! ## A376885.P9304065174401764500

`∑{e}[n+1, A276150(#)]`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A376885

/-- `∑{e}[n+1, A276150(#)]` -/
def P9304065174401764500.Spec : Prop :=
  ∀ n, P9304065174401764500.a n = A376885 (n + 1)

theorem P9304065174401764500.correct : P9304065174401764500.Spec := by
  intro n
  simp only [A376885, Nat.add_sub_cancel]

end A376885

/-! ## A376885.P7129119286756815159

`A056239(A376887(n+1))`
-/

namespace A376885.P7129119286756815159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (A376887 (n + 1)).toNat

end

end A376885.P7129119286756815159

namespace A376885

/-- `A056239(A376887(n+1))` -/
def P7129119286756815159.Spec : Prop :=
  ∀ n, P7129119286756815159.a n = A376885 (n + 1)

end A376885

/-! ## A376885.P5325765949212383696

`A064547((n+1)*A008833(A000188(n+1)))`
-/

namespace A376885.P5325765949212383696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064547 ((n + 1 : ℤ) * A008833 (A000188 (n + 1)).toNat).toNat

end

end A376885.P5325765949212383696

namespace A376885

/-- `A064547((n+1)*A008833(A000188(n+1)))` -/
def P5325765949212383696.Spec : Prop :=
  ∀ n, P5325765949212383696.a n = A376885 (n + 1)

end A376885

/-! ## A376885.P5590016848889224721

`A257991(A124859(n+1)%A217577(n+1))`
-/

namespace A376885.P5590016848889224721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257991 (Int.tmod (A124859 (n + 1)) (A217577 (n + 1))).toNat

end

end A376885.P5590016848889224721

namespace A376885

/-- `A257991(A124859(n+1)%A217577(n+1))` -/
def P5590016848889224721.Spec : Prop :=
  ∀ n, P5590016848889224721.a n = A376885 (n + 1)

end A376885

/-! ## A376885.P13672490663030386105

`A257991(A124859(n+1))`
-/

namespace A376885.P13672490663030386105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257991 (A124859 (n + 1)).toNat

end

end A376885.P13672490663030386105

namespace A376885

/-- `A257991(A124859(n+1))` -/
def P13672490663030386105.Spec : Prop :=
  ∀ n, P13672490663030386105.a n = A376885 (n + 1)

end A376885

/-! ## A376885.P12818766013692682578

`∑{e}[n+1, A118914(A109155(#))]`
-/

namespace A376885.P12818766013692682578
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A118914 (A109155 (Nat.factorization (f1 n) p)).toNat

end

end A376885.P12818766013692682578

namespace A376885

/-- `∑{e}[n+1, A118914(A109155(#))]` -/
def P12818766013692682578.Spec : Prop :=
  ∀ n, P12818766013692682578.a n = A376885 (n + 1)

end A376885

/-! ## A376885.P8860173140671624575

`A071330(A286324(n+1)%A195928(n+1))`
-/

namespace A376885.P8860173140671624575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071330 (Int.tmod (A286324 (n + 1)) (A195928 (n + 1))).toNat

end

end A376885.P8860173140671624575

namespace A376885

/-- `A071330(A286324(n+1)%A195928(n+1))` -/
def P8860173140671624575.Spec : Prop :=
  ∀ n, P8860173140671624575.a n = A376885 (n + 1)

end A376885

/-! ## A376885.P3545110816480211958

`A362412(A033428(n+1))-A362412(n+1)`
-/

namespace A376885.P3545110816480211958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362412 (A033428 (n + 1)).toNat - A362412 (n + 1)

end

end A376885.P3545110816480211958

namespace A376885

/-- `A362412(A033428(n+1))-A362412(n+1)` -/
def P3545110816480211958.Spec : Prop :=
  ∀ n, P3545110816480211958.a n = A376885 (n + 1)

end A376885

/-!
# A376886: 

The programs for A376886, there is no canonical definition to state claims against.
-/

/-! ## A376886.P15568620973443412979

`A371090(n+1)`
-/

namespace A376886.P15568620973443412979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371090 (n + 1)

end

end A376886.P15568620973443412979

/-! ## A376886.P1466799685630243861

`∑{e}[n+1, A060130(#)]`
-/

namespace A376886.P1466799685630243861
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A060130 (Nat.factorization (f1 n) p)

end

end A376886.P1466799685630243861

/-! ## A376886.P9676119589858096483

`∑{e}[n+1, A257695(#)]`
-/

namespace A376886.P9676119589858096483
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A257695 (Nat.factorization (f1 n) p)

end

end A376886.P9676119589858096483

/-! ## A376886.P547385557337678963

`A001222(A376887(n+1))`
-/

namespace A376886.P547385557337678963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A376887 (n + 1)).toNat

end

end A376886.P547385557337678963

/-! ## A376886.P8433999383620560059

`A376885(C(A376887(n+1), A376885(n+1)))`
-/

namespace A376886.P8433999383620560059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376885 (Nat.choose (A376887 (n + 1)).toNat (A376885 (n + 1)).toNat)

end

end A376886.P8433999383620560059

/-!
# A376887: The number of divisors of n that are products of factors of the form p^(k!) with multiplicities not larger than their multiplicity in n, where p is a prime and k >= 1, when the factorization of n is uniquely done using the factorial-base representation of the exponents in the prime factorization of n.

The programs for A376887, there is no canonical definition to state claims against.
-/

/-! ## A376887.P13923516153977316351

`∏{e}[n+1, A227154(#)]`
-/

namespace A376887.P13923516153977316351
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A227154 (Nat.factorization (f1 n) p)

end

end A376887.P13923516153977316351

/-! ## A376887.P14338287037934289139

`∏{e}[n+1, A275735(#)]`
-/

namespace A376887.P14338287037934289139
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A275735 (Nat.factorization (f1 n) p)

end

end A376887.P14338287037934289139

/-! ## A376887.P5301984055351677430

`∏{e}[n+1, A324655(#)]`
-/

namespace A376887.P5301984055351677430
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A324655 (Nat.factorization (f1 n) p)

end

end A376887.P5301984055351677430

/-! ## A376887.P13787958802758841417

`∏{e}[n+1, A328835(#)]`
-/

namespace A376887.P13787958802758841417
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A328835 (Nat.factorization (f1 n) p)

end

end A376887.P13787958802758841417

/-! ## A376887.P4465892060376743467

`A038148(A355264(n+1))`
-/

namespace A376887.P4465892060376743467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038148 (A355264 (n + 1)).toNat

end

end A376887.P4465892060376743467

/-! ## A376887.P5300349985243454184

`A365488(A270436(n+1))`
-/

namespace A376887.P5300349985243454184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365488 (A270436 (n + 1)).toNat

end

end A376887.P5300349985243454184

/-! ## A376887.P12321130785472587703

`A366763(A227324(n+1))`
-/

namespace A376887.P12321130785472587703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366763 (A227324 (n + 1)).toNat

end

end A376887.P12321130785472587703

/-!
# A376888: The sum of divisors of n that are products of factors of the form p^(k!) with multiplicities not larger than their multiplicity in n, where p is a prime and k >= 1, when the factorization of n is uniquely done using the factorial-base representation of the exponents in the prime factorization of n.

The programs for A376888, there is no canonical definition to state claims against.
-/

/-! ## A376888.P8030117380248281049

`A249817(A188999(n+1))%A298119(3*(n+1))`
-/

namespace A376888.P8030117380248281049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A249817 (A188999 (n + 1)).toNat) (A298119 (3 * (n + 1)))

end

end A376888.P8030117380248281049

/-! ## A376888.P14656325624558698219

`A250245(A331110(n+1)%A115172(n+1))`
-/

namespace A376888.P14656325624558698219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250245 (Int.tmod (A331110 (n + 1)) (A115172 (n + 1))).toNat

end

end A376888.P14656325624558698219

/-! ## A376888.P8034765862327066060

`A250249(A188999(n+1)%A298877(2*n+1))`
-/

namespace A376888.P8034765862327066060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250249 (Int.tmod (A188999 (n + 1)) (A298877 (2 * n + 1))).toNat

end

end A376888.P8034765862327066060

/-! ## A376888.P15139377837843257581

`A138806(A249359(n+1))+A049417(n+1)`
-/

namespace A376888.P15139377837843257581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138806 (A249359 (n + 1)).toNat + A049417 (n + 1)

end

end A376888.P15139377837843257581

/-! ## A376888.P2426690185775267960

`or(A324684(A140994(2*n+3)), A324706(n+1))`
-/

namespace A376888.P2426690185775267960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A324684 (A140994 (2 * n + 3)).toNat) (A324706 (n + 1))

end

end A376888.P2426690185775267960

/-!
# A376889: Numbers k such that A376888(k) = 2*k.

The programs for A376889, there is no canonical definition to state claims against.
-/

/-! ## A376889.P2965095916040679793

`A058007(2*n+1)*A119666(A373339(n))`
-/

namespace A376889.P2965095916040679793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058007 (2 * n + 1) * A119666 (A373339 n).toNat

end

end A376889.P2965095916040679793

/-!
# A376890: Alternating sum of twin primes (A001097).

The programs for A376890, the canonical program `A376890.P3945601980111199333` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A376890 has offset 1).

The definition of A376890 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A376890.P3945601980111199333

`∑[(-1)^n*A001097(n+1)]`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A376890

/-- `∑[(-1)^n*A001097(n+1)]` -/
def P3945601980111199333.Spec : Prop :=
  ∀ n, P3945601980111199333.a n = A376890 (n + 1)

theorem P3945601980111199333.correct : P3945601980111199333.Spec := by
  intro n
  simp only [A376890, Nat.add_sub_cancel]

end A376890

/-! ## A376890.P2276694110720245039

`∑[A001097(n+1)*A033999(n)]`
-/

namespace A376890.P2276694110720245039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001097 (n + 1) * A033999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A376890.P2276694110720245039

namespace A376890

/-- `∑[A001097(n+1)*A033999(n)]` -/
def P2276694110720245039.Spec : Prop :=
  ∀ n, P2276694110720245039.a n = A376890 (n + 1)

theorem P2276694110720245039.correct : P2276694110720245039.Spec := by
  intro n
  simp only [A376890, Nat.add_sub_cancel, A376890.P2276694110720245039.f1, A376890.P2276694110720245039.a, A376890.P3945601980111199333.f1, A376890.P3945601980111199333.a, A001097, A001097.P321733695451409135.a, A033999, A033999.P17703899380244199787.a, A280968, A280968.P4817024604496871762.a, A163656, A163656.P15274253072224242917.a, A096281, A096281.P9870488552655544131.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A376890

/-! ## A376890.P16635054890165307089

`∑[A001097(n+1)*A062157(n+1)]`
-/

namespace A376890.P16635054890165307089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001097 (n + 1) * A062157 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A376890.P16635054890165307089

namespace A376890

/-- `∑[A001097(n+1)*A062157(n+1)]` -/
def P16635054890165307089.Spec : Prop :=
  ∀ n, P16635054890165307089.a n = A376890 (n + 1)

theorem P16635054890165307089.correct : P16635054890165307089.Spec := by
  intro n
  simp only [A376890, Nat.add_sub_cancel, A376890.P16635054890165307089.f1, A376890.P16635054890165307089.a, A376890.P3945601980111199333.f1, A376890.P3945601980111199333.a, A001097, A001097.P321733695451409135.a, A062157, A062157.P13834877263571195293.a, A280968, A280968.P4817024604496871762.a, A163656, A163656.P15274253072224242917.a, A096281, A096281.P9870488552655544131.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A376890

/-! ## A376890.P5996571843443639992

`∑[A001097(n+1)*A009001(2*n)]`
-/

namespace A376890.P5996571843443639992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001097 (n + 1) * A009001 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A376890.P5996571843443639992

namespace A376890

/-- `∑[A001097(n+1)*A009001(2*n)]` -/
def P5996571843443639992.Spec : Prop :=
  ∀ n, P5996571843443639992.a n = A376890 (n + 1)

end A376890

/-! ## A376890.P5222075940946517391

`∑[A001097(n+1)*A056594(2*(n+2))]`
-/

namespace A376890.P5222075940946517391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001097 (n + 1) * A056594 (2 * (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A376890.P5222075940946517391

namespace A376890

/-- `∑[A001097(n+1)*A056594(2*(n+2))]` -/
def P5222075940946517391.Spec : Prop :=
  ∀ n, P5222075940946517391.a n = A376890 (n + 1)

end A376890

/-! ## A376890.P13897093431341560305

`∑[A001097(n+1)*A057077(2*(n+2))]`
-/

namespace A376890.P13897093431341560305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001097 (n + 1) * A057077 (2 * (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A376890.P13897093431341560305

namespace A376890

/-- `∑[A001097(n+1)*A057077(2*(n+2))]` -/
def P13897093431341560305.Spec : Prop :=
  ∀ n, P13897093431341560305.a n = A376890 (n + 1)

end A376890

/-! ## A376890.P3111666244828063671

`∑[A001097(n+1)*A156872(2*(n+2))]`
-/

namespace A376890.P3111666244828063671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001097 (n + 1) * A156872 (2 * (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A376890.P3111666244828063671

namespace A376890

/-- `∑[A001097(n+1)*A156872(2*(n+2))]` -/
def P3111666244828063671.Spec : Prop :=
  ∀ n, P3111666244828063671.a n = A376890 (n + 1)

end A376890

