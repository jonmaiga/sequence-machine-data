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
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C030
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C006
import Seq.B001.C008
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C001
import Seq.B008.C000
import Seq.B008.C001
import Seq.B010.C000
import Seq.B011.C000
import Seq.B013.C000
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A284800: Fixed points of the transform A284799.

The programs for A284800, there is no canonical definition to state claims against.
-/

/-! ## A284800.P11935662111232893763

`eq[n, A284799(n)]`
-/

namespace A284800.P11935662111232893763
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284799 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A284800.P11935662111232893763

/-! ## A284800.P7175898931853245877

`eq[0, A023416(A055948(n))]`
-/

namespace A284800.P7175898931853245877
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 (A055948 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A284800.P7175898931853245877

/-! ## A284800.P3749590278697960914

`lt[xor(n, A284799(n)), A091090(n)]`
-/

namespace A284800.P3749590278697960914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (A284799 n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091090 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A284800.P3749590278697960914

/-! ## A284800.P467141266854186112

`lt[xor(n, A284799(n)), A107393(n)]`
-/

namespace A284800.P467141266854186112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (A284799 n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107393 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A284800.P467141266854186112

/-! ## A284800.P4460098953409048574

`eq[A000038(n), A035327(A055948(n))]`
-/

namespace A284800.P4460098953409048574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035327 (A055948 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A284800.P4460098953409048574

/-! ## A284800.P6868531795031527732

`eq[A035327(A055948(n)), A116178(n)]`
-/

namespace A284800.P6868531795031527732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035327 (A055948 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116178 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A284800.P6868531795031527732

/-! ## A284800.P2412888872192198446

`eq[A080791(A055948(n)), A154271(n+1)]`
-/

namespace A284800.P2412888872192198446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080791 (A055948 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154271 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A284800.P2412888872192198446

/-!
# A284802: Fixed points of the transform A284801.

The programs for A284802, there is no canonical definition to state claims against.
-/

/-! ## A284802.P16735622408358709129

`eq[4, A137564(A071241(n))]`
-/

namespace A284802.P16735622408358709129
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137564 (A071241 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A284802.P16735622408358709129

/-!
# A284807: Write in base k, complement, reverse. Case k = 8.

The programs for A284807, there is no canonical definition to state claims against.
-/

/-! ## A284807.P9170023098136512759

`xor(n, A233366(A296057(n+1)))`
-/

namespace A284807.P9170023098136512759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (A233366 (A296057 (n + 1)).toNat)

end

end A284807.P9170023098136512759

/-! ## A284807.P17065529246631057101

`A299870(A172630(n+1)+1)-n`
-/

namespace A284807.P17065529246631057101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299870 (A172630 (n + 1) + 1).toNat - (n : ℤ)

end

end A284807.P17065529246631057101

/-! ## A284807.P12963614494159797589

`A050931(∏{e}[A185298(n)+1, #!])-n`
-/

namespace A284807.P12963614494159797589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185298 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050931 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorial (Nat.factorization (f1 n).natAbs p)) - (n : ℤ)

end

end A284807.P12963614494159797589

/-! ## A284807.P16403901019473835498

`6-(n-A184340(A184341(2*n+3)))`
-/

namespace A284807.P16403901019473835498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 - ((n : ℤ) - A184340 (A184341 (2 * n + 3)).toNat)

end

end A284807.P16403901019473835498

/-! ## A284807.P16225178034096769927

`A299870(A172631(round(acot(n)+n))+1)-n`
-/

namespace A284807.P16225178034096769927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299870 (A172631 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat + 1).toNat - (n : ℤ)

end

end A284807.P16225178034096769927

/-!
# A284808: Fixed points of the transform A284807.

The programs for A284808, there is no canonical definition to state claims against.
-/

/-! ## A284808.P3017558122771760410

`eq[n, A284807(n)]`
-/

namespace A284808.P3017558122771760410
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284807 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A284808.P3017558122771760410

/-! ## A284808.P12007988145083035340

`eq[A000007(n), A025480(A055956(n))]`
-/

namespace A284808.P12007988145083035340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A055956 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A284808.P12007988145083035340

/-! ## A284808.P5963179830899512005

`eq[A000038(n), A153733(A055956(n))]`
-/

namespace A284808.P5963179830899512005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153733 (A055956 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A284808.P5963179830899512005

/-! ## A284808.P3833668964742847941

`lt[A025480(A055956(n)), A000120(n)]`
-/

namespace A284808.P3833668964742847941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A055956 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A284808.P3833668964742847941

/-!
# A284809: Write in base k, complement, reverse. Case k = 9.

The programs for A284809, there is no canonical definition to state claims against.
-/

/-! ## A284809.P12123833431671624096

`A368919(A306860(n))-n`
-/

namespace A284809.P12123833431671624096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368919 (A306860 n).toNat - (n : ℤ)

end

end A284809.P12123833431671624096

/-! ## A284809.P12185288029539686748

`A368919(A322298(n))-n`
-/

namespace A284809.P12185288029539686748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368919 (A322298 n).toNat - (n : ℤ)

end

end A284809.P12185288029539686748

/-! ## A284809.P6140284079031679059

`A344853(A088471(n+1))-n`
-/

namespace A284809.P6140284079031679059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344853 (A088471 (n + 1)).toNat - (n : ℤ)

end

end A284809.P6140284079031679059

/-! ## A284809.P9621424604354782708

`A061601(∑[A002275(C(n, 9)+1)])`
-/

namespace A284809.P9621424604354782708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002275 (Nat.choose n 9 + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061601 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A284809.P9621424604354782708

/-! ## A284809.P17775371119842561033

`A082783(Δ[A002113(n+1)])-n`
-/

namespace A284809.P17775371119842561033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082783 (f1 (n + 1) - f1 n).toNat - (n : ℤ)

end

end A284809.P17775371119842561033

/-!
# A284810: Fixed points of the transform A284809.

The programs for A284810, there is no canonical definition to state claims against.
-/

/-! ## A284810.P7581611282452561826

`A028904(eq[A216556(n), A267193(n)])`
-/

namespace A284810.P7581611282452561826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216556 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267193 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028904 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A284810.P7581611282452561826

/-! ## A284810.P12776471309405913276

`eq[A007814(n+1), A284797(A055958(n))]`
-/

namespace A284810.P12776471309405913276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284797 (A055958 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A284810.P12776471309405913276

/-! ## A284810.P5508114897957922658

`eq[A135528(n+1), A284797(A055958(n))]`
-/

namespace A284810.P5508114897957922658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135528 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284797 (A055958 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A284810.P5508114897957922658

/-!
# A284811: Fixed points of the transform A267193.

The programs for A284811, there is no canonical definition to state claims against.
-/

/-! ## A284811.P7052447215782544616

`A111708(n+1)+A056965(n+1)`
-/

namespace A284811.P7052447215782544616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111708 (n + 1) + A056965 (n + 1)

end

end A284811.P7052447215782544616

/-! ## A284811.P13526592576459331733

`A111708(n+1)+A267193(n+1)-A061601(n+1)`
-/

namespace A284811.P13526592576459331733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111708 (n + 1) + (A267193 (n + 1) - A061601 (n + 1))

end

end A284811.P13526592576459331733

/-! ## A284811.P12735235978889671126

`∩[A098892(n+1), A262277(n+1)]`
-/

namespace A284811.P12735235978889671126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098892 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262277 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A284811.P12735235978889671126

/-! ## A284811.P12930956300392816563

`∩[A098892(n+1), A296130(n+1)]`
-/

namespace A284811.P12930956300392816563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098892 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296130 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A284811.P12930956300392816563

/-! ## A284811.P14046506612568106658

`∩[A098892(n+1), A144777(n+1)]`
-/

namespace A284811.P14046506612568106658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098892 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144777 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A284811.P14046506612568106658

/-! ## A284811.P5381936021438740386

`eq[n, A267193(n)]`
-/

namespace A284811.P5381936021438740386
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267193 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A284811.P5381936021438740386

/-! ## A284811.P18204758035087597661

`eq[0, A061601(A056964(n))]`
-/

namespace A284811.P18204758035087597661
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061601 (A056964 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A284811.P18204758035087597661

/-! ## A284811.P10832244957458031339

`eq[A004086(n), A061601(n)]`
-/

namespace A284811.P10832244957458031339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061601 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A284811.P10832244957458031339

/-! ## A284811.P11347301492512144469

`eq[n-A056965(n), A061601(n)]`
-/

namespace A284811.P11347301492512144469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A056965 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061601 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A284811.P11347301492512144469

/-!
# A284814: Least number k such that k mod (2, 3, 4, ..., n+1) = (d_1, d_2, ..., d_n), where d_1, d_2, ..., d_n are the digits of n, with MSD(n) = d_1 and LSD(n) = d_n. 0 if such a number does not exist.

The programs for A284814, there is no canonical definition to state claims against.
-/

/-! ## A284814.P16964955132827676036

`C(n, 4)*A014663(392+a(n-1))` with `a(0)=1`
-/

namespace A284814.P16964955132827676036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (Nat.choose n 4 : ℤ) * A014663 (392 + a (n - 1)).toNat

end

end A284814.P16964955132827676036

/-!
# A284815: Least number k such that k mod (2, 3, 4, ... , n+1) = (d_n, d_n-1, ..., d_1), where d_1 , d_2, ..., d_n are the digits of k, with MSD(k) = d_1 and LSD(k) = d_n. 0 if such a number does not exist.

The programs for A284815, there is no canonical definition to state claims against.
-/

/-! ## A284815.P4501518729418981325

`A049345(A000700(n)*A072597(n))`
-/

namespace A284815.P4501518729418981325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049345 (A000700 n * A072597 n).toNat

end

end A284815.P4501518729418981325

/-!
# A284816: Sum of entries in the first cycles of all permutations of [n].

The programs for A284816, the canonical program `A284816.P9637811502053019596` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A284816 has offset 1).

The definition of A284816 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A284816.P11021826451166779075

`(n+1)!*((n+1)*(n+2)-n*(n+3)/2)/2`
-/

namespace A284816.P11021826451166779075
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n + 1) : ℚ) * (((n + 1) * (n + 2) : ℚ) - (n * (n + 3) : ℚ) / 2) / 2

end

end A284816.P11021826451166779075

namespace A284816

/-- `(n+1)!*((n+1)*(n+2)-n*(n+3)/2)/2` -/
def P11021826451166779075.Spec : Prop :=
  ∀ n, P11021826451166779075.a n = (A284816 (n + 1) : ℚ)

end A284816

/-! ## A284816.P9637811502053019596

`(n+1)*A006595(n)`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A284816

/-- `(n+1)*A006595(n)` -/
def P9637811502053019596.Spec : Prop :=
  ∀ n, P9637811502053019596.a n = A284816 (n + 1)

theorem P9637811502053019596.correct : P9637811502053019596.Spec := by
  intro n
  simp only [A284816, Nat.add_sub_cancel]

end A284816

/-! ## A284816.P7398174025510185405

`((n+1)²+n+1+2)*(n+1)*a(n-1)/((n+1)²-(n+1)+2)` with `a(0)=1`
-/

namespace A284816.P7398174025510185405
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (((n + 1) ^ 2 + (n + 1) + 2) * (n + 1) : ℚ) * a (n - 1) / (((n + 1) ^ 2 : ℤ) - (n + 1 : ℤ) + 2 : ℚ)

end

end A284816.P7398174025510185405

namespace A284816

/-- `((n+1)²+n+1+2)*(n+1)*a(n-1)/((n+1)²-(n+1)+2)` -/
def P7398174025510185405.Spec : Prop :=
  ∀ n, P7398174025510185405.a n = (A284816 (n + 1) : ℚ)

end A284816

/-! ## A284816.P12637731319230174453

`(∏[n+3]-Δ[(n+1)!])/2`
-/

namespace A284816.P12637731319230174453
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - ((f2 (n + 1) : ℤ) - (f2 n : ℤ)) : ℚ) / 2

end

end A284816.P12637731319230174453

namespace A284816

/-- `(∏[n+3]-Δ[(n+1)!])/2` -/
def P12637731319230174453.Spec : Prop :=
  ∀ n, P12637731319230174453.a n = (A284816 (n + 1) : ℚ)

end A284816

/-! ## A284816.P7705778438102790772

`(∑[n+1]+1)/2*(n+1)!`
-/

namespace A284816.P7705778438102790772
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j + 1 : ℕ) : ℚ) / 2 * (Nat.factorial (n + 1) : ℚ)

end

end A284816.P7705778438102790772

namespace A284816

/-- `(∑[n+1]+1)/2*(n+1)!` -/
def P7705778438102790772.Spec : Prop :=
  ∀ n, P7705778438102790772.a n = (A284816 (n + 1) : ℚ)

end A284816

/-! ## A284816.P14646773337962271806

`A285439(∑[n]+1)`
-/

namespace A284816.P14646773337962271806
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285439 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A284816.P14646773337962271806

namespace A284816

/-- `A285439(∑[n]+1)` -/
def P14646773337962271806.Spec : Prop :=
  ∀ n, P14646773337962271806.a n = A284816 (n + 1)

end A284816

/-! ## A284816.P8874059230788822937

`record[A285439(n+1)]`
-/

namespace A284816.P8874059230788822937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285439 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A284816.P8874059230788822937

namespace A284816

/-- `record[A285439(n+1)]` -/
def P8874059230788822937.Spec : Prop :=
  ∀ n, P8874059230788822937.a n = A284816 (n + 1)

end A284816

/-! ## A284816.P15238821529072270120

`A121635(n+3)/2`
-/

namespace A284816.P15238821529072270120
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A121635 (n + 3) : ℚ) / 2

end

end A284816.P15238821529072270120

namespace A284816

/-- `A121635(n+3)/2` -/
def P15238821529072270120.Spec : Prop :=
  ∀ n, P15238821529072270120.a n = (A284816 (n + 1) : ℚ)

end A284816

/-! ## A284816.P11414825269689376599

`Δ[A138772(n+1)]-A001809(n)`
-/

namespace A284816.P11414825269689376599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138772 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A001809 n

end

end A284816.P11414825269689376599

namespace A284816

/-- `Δ[A138772(n+1)]-A001809(n)` -/
def P11414825269689376599.Spec : Prop :=
  ∀ n, P11414825269689376599.a n = A284816 (n + 1)

end A284816

/-! ## A284816.P7322107641959296235

`Δ[A006595(n)]-A138772(n+1)`
-/

namespace A284816.P7322107641959296235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006595 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A138772 (n + 1)

end

end A284816.P7322107641959296235

namespace A284816

/-- `Δ[A006595(n)]-A138772(n+1)` -/
def P7322107641959296235.Spec : Prop :=
  ∀ n, P7322107641959296235.a n = A284816 (n + 1)

end A284816

/-!
# A284817: a(n) = 2n - 1 - A284776(n).

The programs for A284817, the canonical program `A284817.P1561688684894145384` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A284817 has offset 1).

The definition of A284817 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A284776, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A284817.P1561688684894145384

`2*(n+1)-1-A284776(n+1)`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A284817

/-- `2*(n+1)-1-A284776(n+1)` -/
def P1561688684894145384.Spec : Prop :=
  ∀ n, P1561688684894145384.a n = A284817 (n + 1)

theorem P1561688684894145384.correct : P1561688684894145384.Spec := by
  intro n
  simp only [A284817, Nat.add_sub_cancel]

end A284817

/-! ## A284817.P2756158391636258216

`char[A189666(n+1)]`
-/

namespace A284817.P2756158391636258216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189666 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A284817.P2756158391636258216

namespace A284817

/-- `char[A189666(n+1)]` -/
def P2756158391636258216.Spec : Prop :=
  ∀ n, (P2756158391636258216.a n : ℤ) = A284817 (n + 1)

end A284817

/-! ## A284817.P17920127441884046228

`log2(gcd(2, A284776(n+1)))`
-/

namespace A284817.P17920127441884046228
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Int.gcd 2 (A284776 (n + 1)) : ℝ)

end

end A284817.P17920127441884046228

namespace A284817

/-- `log2(gcd(2, A284776(n+1)))` -/
def P17920127441884046228.Spec : Prop :=
  ∀ n, P17920127441884046228.a n = (A284817 (n + 1) : ℝ)

end A284817

/-! ## A284817.P923022466519331752

`char[A284819(n+1)-1]`
-/

namespace A284817.P923022466519331752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284819 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A284817.P923022466519331752

namespace A284817

/-- `char[A284819(n+1)-1]` -/
def P923022466519331752.Spec : Prop :=
  ∀ n, (P923022466519331752.a n : ℤ) = A284817 (n + 1)

end A284817

/-! ## A284817.P15182765099969019788

`comp[A285307(n+1)]%2`
-/

namespace A284817.P15182765099969019788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285307 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n % 2

end

end A284817.P15182765099969019788

namespace A284817

/-- `comp[A285307(n+1)]%2` -/
def P15182765099969019788.Spec : Prop :=
  ∀ n, (P15182765099969019788.a n : ℤ) = A284817 (n + 1)

end A284817

/-! ## A284817.P6169827849227293748

`A189664(C(3, n²)+n)`
-/

namespace A284817.P6169827849227293748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189664 (Nat.choose 3 (n ^ 2) + n)

end

end A284817.P6169827849227293748

namespace A284817

/-- `A189664(C(3, n²)+n)` -/
def P6169827849227293748.Spec : Prop :=
  ∀ n, P6169827849227293748.a n = A284817 (n + 1)

end A284817

/-! ## A284817.P4503846265167492969

`char[A284777(n+1)+n]`
-/

namespace A284817.P4503846265167492969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284777 (n + 1) + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A284817.P4503846265167492969

namespace A284817

/-- `char[A284777(n+1)+n]` -/
def P4503846265167492969.Spec : Prop :=
  ∀ n, (P4503846265167492969.a n : ℤ) = A284817 (n + 1)

end A284817

/-! ## A284817.P5622365906212198717

`1-char[A284818(n+1)-1]`
-/

namespace A284817.P5622365906212198717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284818 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A284817.P5622365906212198717

namespace A284817

/-- `1-char[A284818(n+1)-1]` -/
def P5622365906212198717.Spec : Prop :=
  ∀ n, P5622365906212198717.a n = A284817 (n + 1)

end A284817

/-! ## A284817.P18430377345082091571

`A189664(a(a(n-1))+n)` with `a(0)=0`
-/

namespace A284817.P18430377345082091571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A189664 (a (a (n - 1)).toNat + (n : ℤ)).toNat

end

end A284817.P18430377345082091571

namespace A284817

/-- `A189664(a(a(n-1))+n)` -/
def P18430377345082091571.Spec : Prop :=
  ∀ n, P18430377345082091571.a n = A284817 (n + 1)

end A284817

/-! ## A284817.P10290375287401697211

`A189664(n-a(a(n-1)))` with `a(0)=0`
-/

namespace A284817.P10290375287401697211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A189664 ((n : ℤ) - a (a (n - 1)).toNat).toNat

end

end A284817.P10290375287401697211

namespace A284817

/-- `A189664(n-a(a(n-1)))` -/
def P10290375287401697211.Spec : Prop :=
  ∀ n, P10290375287401697211.a n = A284817 (n + 1)

end A284817

/-! ## A284817.P10552247136200699483

`A189664(A028310(n))`
-/

namespace A284817.P10552247136200699483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189664 (A028310 n).toNat

end

end A284817.P10552247136200699483

namespace A284817

/-- `A189664(A028310(n))` -/
def P10552247136200699483.Spec : Prop :=
  ∀ n, P10552247136200699483.a n = A284817 (n + 1)

end A284817

/-! ## A284817.P769373635151985984

`A189664(A143051(n+1))`
-/

namespace A284817.P769373635151985984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189664 (A143051 (n + 1)).toNat

end

end A284817.P769373635151985984

namespace A284817

/-- `A189664(A143051(n+1))` -/
def P769373635151985984.Spec : Prop :=
  ∀ n, P769373635151985984.a n = A284817 (n + 1)

end A284817

/-! ## A284817.P18031169840802793834

`A189664(A000007(n)+n)`
-/

namespace A284817.P18031169840802793834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189664 (A000007 n + (n : ℤ)).toNat

end

end A284817.P18031169840802793834

namespace A284817

/-- `A189664(A000007(n)+n)` -/
def P18031169840802793834.Spec : Prop :=
  ∀ n, P18031169840802793834.a n = A284817 (n + 1)

end A284817

/-! ## A284817.P10785113356660002246

`char[A007494(A285307(n+1))]`
-/

namespace A284817.P10785113356660002246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007494 (A285307 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A284817.P10785113356660002246

namespace A284817

/-- `char[A007494(A285307(n+1))]` -/
def P10785113356660002246.Spec : Prop :=
  ∀ n, (P10785113356660002246.a n : ℤ) = A284817 (n + 1)

end A284817

/-! ## A284817.P6794726587818560491

`A189664(A008486(n)-2*n)`
-/

namespace A284817.P6794726587818560491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189664 (A008486 n - (2 * n : ℤ)).toNat

end

end A284817.P6794726587818560491

namespace A284817

/-- `A189664(A008486(n)-2*n)` -/
def P6794726587818560491.Spec : Prop :=
  ∀ n, P6794726587818560491.a n = A284817 (n + 1)

end A284817

/-! ## A284817.P8180478205537859962

`A014634(n)%A284776(n+1)`
-/

namespace A284817.P8180478205537859962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A014634 n) (A284776 (n + 1))

end

end A284817.P8180478205537859962

namespace A284817

/-- `A014634(n)%A284776(n+1)` -/
def P8180478205537859962.Spec : Prop :=
  ∀ n, P8180478205537859962.a n = A284817 (n + 1)

end A284817

/-! ## A284817.P6355299313053620685

`A014641(n)%A284776(n+1)`
-/

namespace A284817.P6355299313053620685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A014641 n) (A284776 (n + 1))

end

end A284817.P6355299313053620685

namespace A284817

/-- `A014641(n)%A284776(n+1)` -/
def P6355299313053620685.Spec : Prop :=
  ∀ n, P6355299313053620685.a n = A284817 (n + 1)

end A284817

/-! ## A284817.P8750735182368958972

`A014793(n)%A284776(n+1)`
-/

namespace A284817.P8750735182368958972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A014793 n) (A284776 (n + 1))

end

end A284817.P8750735182368958972

namespace A284817

/-- `A014793(n)%A284776(n+1)` -/
def P8750735182368958972.Spec : Prop :=
  ∀ n, P8750735182368958972.a n = A284817 (n + 1)

end A284817

/-! ## A284817.P2831454372686751697

`A014799(n)%A284776(n+1)`
-/

namespace A284817.P2831454372686751697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A014799 n) (A284776 (n + 1))

end

end A284817.P2831454372686751697

namespace A284817

/-- `A014799(n)%A284776(n+1)` -/
def P2831454372686751697.Spec : Prop :=
  ∀ n, P2831454372686751697.a n = A284817 (n + 1)

end A284817

/-!
# A284818: Positions of 0 in A284817.

The programs for A284818, the canonical program `A284818.P2162458952130043232` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A284818 has offset 1).

The definition of A284818 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A284818.P1743315826054235167

`ceil(A284796(n+1)/2)`
-/

namespace A284818.P1743315826054235167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A284796 (n + 1) : ℚ) / 2⌉

end

end A284818.P1743315826054235167

namespace A284818

/-- `ceil(A284796(n+1)/2)` -/
def P1743315826054235167.Spec : Prop :=
  ∀ n, P1743315826054235167.a n = A284818 (n + 1)

end A284818

/-! ## A284818.P8990680459037370539

`comp[A189666(n+1)]+1`
-/

namespace A284818.P8990680459037370539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189666 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A284818.P8990680459037370539

namespace A284818

/-- `comp[A189666(n+1)]+1` -/
def P8990680459037370539.Spec : Prop :=
  ∀ n, (P8990680459037370539.a n : ℤ) = A284818 (n + 1)

end A284818

/-! ## A284818.P551191054089579327

`comp[comp[A284776(n+1)]+n]`
-/

namespace A284818.P551191054089579327
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284776 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n + n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A284818.P551191054089579327

namespace A284818

/-- `comp[comp[A284776(n+1)]+n]` -/
def P551191054089579327.Spec : Prop :=
  ∀ n, (P551191054089579327.a n : ℤ) = A284818 (n + 1)

end A284818

/-! ## A284818.P14004994868803473264

`comp[A284777(n+1)+n]+1`
-/

namespace A284818.P14004994868803473264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284777 (n + 1) + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A284818.P14004994868803473264

namespace A284818

/-- `comp[A284777(n+1)+n]+1` -/
def P14004994868803473264.Spec : Prop :=
  ∀ n, (P14004994868803473264.a n : ℤ) = A284818 (n + 1)

end A284818

/-! ## A284818.P2162458952130043232

`∪[A189665(n+1), n²]+1`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A284818

/-- `∪[A189665(n+1), n²]+1` -/
def P2162458952130043232.Spec : Prop :=
  ∀ n, (P2162458952130043232.a n : ℤ) = A284818 (n + 1)

theorem P2162458952130043232.correct : P2162458952130043232.Spec := by
  intro n
  simp only [A284818, Nat.add_sub_cancel]

end A284818

/-! ## A284818.P11921103416575661239

`a(n-1)+A284775(n)+1` with `a(0)=1`
-/

namespace A284818.P11921103416575661239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A284775 n + 1)

end

end A284818.P11921103416575661239

namespace A284818

/-- `a(n-1)+A284775(n)+1` -/
def P11921103416575661239.Spec : Prop :=
  ∀ n, P11921103416575661239.a n = A284818 (n + 1)

end A284818

/-! ## A284818.P1985762763342191474

`A189665(n+1)-A284775(n+1)`
-/

namespace A284818.P1985762763342191474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189665 (n + 1) - A284775 (n + 1)

end

end A284818.P1985762763342191474

namespace A284818

/-- `A189665(n+1)-A284775(n+1)` -/
def P1985762763342191474.Spec : Prop :=
  ∀ n, P1985762763342191474.a n = A284818 (n + 1)

end A284818

/-! ## A284818.P11860812608977791360

`A008619(n-A284775(n+1))+n`
-/

namespace A284818.P11860812608977791360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 ((n : ℤ) - A284775 (n + 1)).toNat + (n : ℤ)

end

end A284818.P11860812608977791360

namespace A284818

/-- `A008619(n-A284775(n+1))+n` -/
def P11860812608977791360.Spec : Prop :=
  ∀ n, P11860812608977791360.a n = A284818 (n + 1)

end A284818

/-! ## A284818.P12816438307003867873

`A284796(n+1)+1-A189665(n+1)`
-/

namespace A284818.P12816438307003867873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284796 (n + 1) + (1 - A189665 (n + 1))

end

end A284818.P12816438307003867873

namespace A284818

/-- `A284796(n+1)+1-A189665(n+1)` -/
def P12816438307003867873.Spec : Prop :=
  ∀ n, P12816438307003867873.a n = A284818 (n + 1)

end A284818

/-! ## A284818.P10694098896136473262

`A284794(n+1)/2-A284775(n+1)`
-/

namespace A284818.P10694098896136473262
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A284794 (n + 1) : ℚ) / 2 - (A284775 (n + 1) : ℚ)

end

end A284818.P10694098896136473262

namespace A284818

/-- `A284794(n+1)/2-A284775(n+1)` -/
def P10694098896136473262.Spec : Prop :=
  ∀ n, P10694098896136473262.a n = (A284818 (n + 1) : ℚ)

end A284818

/-! ## A284818.P8331115010850086145

`A285254(n+1)-∑[A285255(n+1)]-A284775(n+1)`
-/

namespace A284818.P8331115010850086145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285255 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285254 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j - A284775 (n + 1)

end

end A284818.P8331115010850086145

namespace A284818

/-- `A285254(n+1)-∑[A285255(n+1)]-A284775(n+1)` -/
def P8331115010850086145.Spec : Prop :=
  ∀ n, P8331115010850086145.a n = A284818 (n + 1)

end A284818

/-! ## A284818.P17390840092912389422

`A189667(a(n-1))+1+n` with `a(0)=1`
-/

namespace A284818.P17390840092912389422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A189667 (a (n - 1)).toNat + 1 + (n : ℤ)

end

end A284818.P17390840092912389422

namespace A284818

/-- `A189667(a(n-1))+1+n` -/
def P17390840092912389422.Spec : Prop :=
  ∀ n, P17390840092912389422.a n = A284818 (n + 1)

end A284818

/-! ## A284818.P11830311276127764298

`a(n-1)+A189664(a(n-1))+1` with `a(0)=1`
-/

namespace A284818.P11830311276127764298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A189664 (a (n - 1)).toNat + 1)

end

end A284818.P11830311276127764298

namespace A284818

/-- `a(n-1)+A189664(a(n-1))+1` -/
def P11830311276127764298.Spec : Prop :=
  ∀ n, P11830311276127764298.a n = A284818 (n + 1)

end A284818

/-! ## A284818.P7452896807153114590

`eq[1, A284817(n+1)+1]+1`
-/

namespace A284818.P7452896807153114590
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284817 (n + 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A284818.P7452896807153114590

namespace A284818

/-- `eq[1, A284817(n+1)+1]+1` -/
def P7452896807153114590.Spec : Prop :=
  ∀ n, (P7452896807153114590.a n : ℤ) = A284818 (n + 1)

end A284818

/-! ## A284818.P4513207590863134235

`a(n-1)+A284817(a(n-1)+1)+1` with `a(0)=1`
-/

namespace A284818.P4513207590863134235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A284817 (a (n - 1) + 1).toNat + 1)

end

end A284818.P4513207590863134235

namespace A284818

/-- `a(n-1)+A284817(a(n-1)+1)+1` -/
def P4513207590863134235.Spec : Prop :=
  ∀ n, P4513207590863134235.a n = A284818 (n + 1)

end A284818

/-! ## A284818.P11030193806524314539

`record[n+1-A241928(n+1)*A284817(n+1)]`
-/

namespace A284818.P11030193806524314539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A241928 (n + 1) * A284817 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A284818.P11030193806524314539

namespace A284818

/-- `record[n+1-A241928(n+1)*A284817(n+1)]` -/
def P11030193806524314539.Spec : Prop :=
  ∀ n, P11030193806524314539.a n = A284818 (n + 1)

end A284818

/-! ## A284818.P18250753196962308320

`record[(n+1)/A241928(n*A284817(n+1)+1)]`
-/

namespace A284818.P18250753196962308320
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A241928 ((n : ℤ) * A284817 (n + 1) + 1).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A284818.P18250753196962308320

namespace A284818

/-- `record[(n+1)/A241928(n*A284817(n+1)+1)]` -/
def P18250753196962308320.Spec : Prop :=
  ∀ n, P18250753196962308320.a n = (A284818 (n + 1) : ℚ)

end A284818

/-! ## A284818.P1157711153104897391

`record[(n+1)*abs(A287455(n+1)-1)]-A284775(n+1)`
-/

namespace A284818.P1157711153104897391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * |A287455 (n + 1) - 1|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A284775 (n + 1)

end

end A284818.P1157711153104897391

namespace A284818

/-- `record[(n+1)*abs(A287455(n+1)-1)]-A284775(n+1)` -/
def P1157711153104897391.Spec : Prop :=
  ∀ n, P1157711153104897391.a n = A284818 (n + 1)

end A284818

/-! ## A284818.P2549998589333366764

`comp[A189669(n+1)*A284775(n+1)]`
-/

namespace A284818.P2549998589333366764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189669 (n + 1) * A284775 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A284818.P2549998589333366764

namespace A284818

/-- `comp[A189669(n+1)*A284775(n+1)]` -/
def P2549998589333366764.Spec : Prop :=
  ∀ n, (P2549998589333366764.a n : ℤ) = A284818 (n + 1)

end A284818

/-!
# A284819: Positions of 1 in A284817.

The programs for A284819, the canonical program `A284819.P13627960389545771610` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A284819 has offset 1).

The definition of A284819 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A284819.P13954242782944102522

`A189666(n+1)+1`
-/

namespace A284819.P13954242782944102522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189666 (n + 1) + 1

end

end A284819.P13954242782944102522

namespace A284819

/-- `A189666(n+1)+1` -/
def P13954242782944102522.Spec : Prop :=
  ∀ n, P13954242782944102522.a n = A284819 (n + 1)

end A284819

/-! ## A284819.P13627960389545771610

`A284777(n+1)+1+n`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A284819

/-- `A284777(n+1)+1+n` -/
def P13627960389545771610.Spec : Prop :=
  ∀ n, P13627960389545771610.a n = A284819 (n + 1)

theorem P13627960389545771610.correct : P13627960389545771610.Spec := by
  intro n
  simp only [A284819, Nat.add_sub_cancel]

end A284819

/-! ## A284819.P17419046012549527058

`A285307(n+1)+2+n`
-/

namespace A284819.P17419046012549527058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285307 (n + 1) + 2 + (n : ℤ)

end

end A284819.P17419046012549527058

namespace A284819

/-- `A285307(n+1)+2+n` -/
def P17419046012549527058.Spec : Prop :=
  ∀ n, P17419046012549527058.a n = A284819 (n + 1)

end A284819

/-! ## A284819.P11602301876685839634

`A189664(n+1)+3*(n+1)`
-/

namespace A284819.P11602301876685839634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189664 (n + 1) + (3 * (n + 1) : ℤ)

end

end A284819.P11602301876685839634

namespace A284819

/-- `A189664(n+1)+3*(n+1)` -/
def P11602301876685839634.Spec : Prop :=
  ∀ n, P11602301876685839634.a n = A284819 (n + 1)

end A284819

/-! ## A284819.P4761264865965014901

`5*(n+1)-A285306(n+1)`
-/

namespace A284819.P4761264865965014901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (5 * (n + 1) : ℤ) - A285306 (n + 1)

end

end A284819.P4761264865965014901

namespace A284819

/-- `5*(n+1)-A285306(n+1)` -/
def P4761264865965014901.Spec : Prop :=
  ∀ n, P4761264865965014901.a n = A284819 (n + 1)

end A284819

/-! ## A284819.P2017508354916620679

`A016897(n)+1-A285306(n+1)`
-/

namespace A284819.P2017508354916620679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016897 n + (1 - A285306 (n + 1))

end

end A284819.P2017508354916620679

namespace A284819

/-- `A016897(n)+1-A285306(n+1)` -/
def P2017508354916620679.Spec : Prop :=
  ∀ n, P2017508354916620679.a n = A284819 (n + 1)

end A284819

/-! ## A284819.P7888916010969644496

`A016777(n+1)-(1-A189664(n+1))`
-/

namespace A284819.P7888916010969644496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 (n + 1) - (1 - A189664 (n + 1))

end

end A284819.P7888916010969644496

namespace A284819

/-- `A016777(n+1)-(1-A189664(n+1))` -/
def P7888916010969644496.Spec : Prop :=
  ∀ n, P7888916010969644496.a n = A284819 (n + 1)

end A284819

/-! ## A284819.P8479601512091821936

`A000027(C(2, A287455(n+1))+2*n)+n+2`
-/

namespace A284819.P8479601512091821936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (Nat.choose 2 (A287455 (n + 1)).toNat + 2 * n) + (n : ℤ) + 2

end

end A284819.P8479601512091821936

namespace A284819

/-- `A000027(C(2, A287455(n+1))+2*n)+n+2` -/
def P8479601512091821936.Spec : Prop :=
  ∀ n, P8479601512091821936.a n = A284819 (n + 1)

end A284819

/-! ## A284819.P1149578533239154328

`A000027(C(2, A287455(n+1))+1+n)+n+n+1`
-/

namespace A284819.P1149578533239154328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (Nat.choose 2 (A287455 (n + 1)).toNat + 1 + n) + (n : ℤ) + (n + 1 : ℤ)

end

end A284819.P1149578533239154328

namespace A284819

/-- `A000027(C(2, A287455(n+1))+1+n)+n+n+1` -/
def P1149578533239154328.Spec : Prop :=
  ∀ n, P1149578533239154328.a n = A284819 (n + 1)

end A284819

/-! ## A284819.P14695528159681015221

`A284817(n+2)+3*(n+1)`
-/

namespace A284819.P14695528159681015221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284817 (n + 2) + (3 * (n + 1) : ℤ)

end

end A284819.P14695528159681015221

namespace A284819

/-- `A284817(n+2)+3*(n+1)` -/
def P14695528159681015221.Spec : Prop :=
  ∀ n, P14695528159681015221.a n = A284819 (n + 1)

end A284819

/-! ## A284819.P18239106584522959326

`A285250(2*(n+1))-n`
-/

namespace A284819.P18239106584522959326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285250 (2 * (n + 1)) - (n : ℤ)

end

end A284819.P18239106584522959326

namespace A284819

/-- `A285250(2*(n+1))-n` -/
def P18239106584522959326.Spec : Prop :=
  ∀ n, P18239106584522959326.a n = A284819 (n + 1)

end A284819

/-! ## A284819.P9400211573787406853

`A285253(2*(n+1))-n`
-/

namespace A284819.P9400211573787406853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285253 (2 * (n + 1)) - (n : ℤ)

end

end A284819.P9400211573787406853

namespace A284819

/-- `A285253(2*(n+1))-n` -/
def P9400211573787406853.Spec : Prop :=
  ∀ n, P9400211573787406853.a n = A284819 (n + 1)

end A284819

/-! ## A284819.P5123816401131247443

`ceil(A284795(2*(n+1))/2)`
-/

namespace A284819.P5123816401131247443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A284795 (2 * (n + 1)) : ℚ) / 2⌉

end

end A284819.P5123816401131247443

namespace A284819

/-- `ceil(A284795(2*(n+1))/2)` -/
def P5123816401131247443.Spec : Prop :=
  ∀ n, P5123816401131247443.a n = A284819 (n + 1)

end A284819

/-! ## A284819.P15163972733641632569

`3*n+4-A284775(2*(n+1))`
-/

namespace A284819.P15163972733641632569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n + 4 : ℤ) - A284775 (2 * (n + 1))

end

end A284819.P15163972733641632569

namespace A284819

/-- `3*n+4-A284775(2*(n+1))` -/
def P15163972733641632569.Spec : Prop :=
  ∀ n, P15163972733641632569.a n = A284819 (n + 1)

end A284819

/-! ## A284819.P8399075916555907762

`3*n+4-A285305(2*n+1)`
-/

namespace A284819.P8399075916555907762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n + 4 : ℤ) - A285305 (2 * n + 1)

end

end A284819.P8399075916555907762

namespace A284819

/-- `3*n+4-A285305(2*n+1)` -/
def P8399075916555907762.Spec : Prop :=
  ∀ n, P8399075916555907762.a n = A284819 (n + 1)

end A284819

/-! ## A284819.P869337302832798574

`8*n+7-(A285251(2*(n+1))+n)`
-/

namespace A284819.P869337302832798574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (8 * n + 7 : ℤ) - (A285251 (2 * (n + 1)) + (n : ℤ))

end

end A284819.P869337302832798574

namespace A284819

/-- `8*n+7-(A285251(2*(n+1))+n)` -/
def P869337302832798574.Spec : Prop :=
  ∀ n, P869337302832798574.a n = A284819 (n + 1)

end A284819

/-! ## A284819.P8957726994953421306

`8*n+7-(A285254(2*(n+1))+n)`
-/

namespace A284819.P8957726994953421306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (8 * n + 7 : ℤ) - (A285254 (2 * (n + 1)) + (n : ℤ))

end

end A284819.P8957726994953421306

namespace A284819

/-- `8*n+7-(A285254(2*(n+1))+n)` -/
def P8957726994953421306.Spec : Prop :=
  ∀ n, P8957726994953421306.a n = A284819 (n + 1)

end A284819

/-! ## A284819.P3024012576646868057

`A026137(A284777(n+1))`
-/

namespace A284819.P3024012576646868057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026137 (A284777 (n + 1)).toNat

end

end A284819.P3024012576646868057

namespace A284819

/-- `A026137(A284777(n+1))` -/
def P3024012576646868057.Spec : Prop :=
  ∀ n, P3024012576646868057.a n = A284819 (n + 1)

end A284819

/-! ## A284819.P4090863594753464797

`A168200(A285306(n+1))`
-/

namespace A284819.P4090863594753464797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168200 (A285306 (n + 1)).toNat

end

end A284819.P4090863594753464797

namespace A284819

/-- `A168200(A285306(n+1))` -/
def P4090863594753464797.Spec : Prop :=
  ∀ n, P4090863594753464797.a n = A284819 (n + 1)

end A284819

/-!
# A284820: Positions of 0 in the {1100->0}-transform of A010060; complement of A284847.

The programs for A284820, the canonical program `A284820.P16918251575447438407` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A284820 has offset 1).

The definition of A284820 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5555 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A284820.P16918251575447438407

`eq[char[A284847(n+1)], A000007(n)]`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A284820

/-- `eq[char[A284847(n+1)], A000007(n)]` -/
def P16918251575447438407.Spec : Prop :=
  ∀ n, (P16918251575447438407.a n : ℤ) = A284820 (n + 1)

theorem P16918251575447438407.correct : P16918251575447438407.Spec := by
  intro n
  simp only [A284820, Nat.add_sub_cancel]

end A284820

/-! ## A284820.P6623035080687116824

`eq[char[A284847(n+1)], A000038(n)]`
-/

namespace A284820.P6623035080687116824
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284847 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A284820.P6623035080687116824

namespace A284820

/-- `eq[char[A284847(n+1)], A000038(n)]` -/
def P6623035080687116824.Spec : Prop :=
  ∀ n, (P6623035080687116824.a n : ℤ) = A284820 (n + 1)

end A284820

/-! ## A284820.P11641887476121400474

`eq[char[A284847(n+1)], A130706(n+1)]`
-/

namespace A284820.P11641887476121400474
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284847 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130706 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A284820.P11641887476121400474

namespace A284820

/-- `eq[char[A284847(n+1)], A130706(n+1)]` -/
def P11641887476121400474.Spec : Prop :=
  ∀ n, (P11641887476121400474.a n : ℤ) = A284820 (n + 1)

end A284820

/-! ## A284820.P7596587158865677293

`eq[char[A284847(n+1)], A084099(2*n)]`
-/

namespace A284820.P7596587158865677293
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284847 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084099 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A284820.P7596587158865677293

namespace A284820

/-- `eq[char[A284847(n+1)], A084099(2*n)]` -/
def P7596587158865677293.Spec : Prop :=
  ∀ n, (P7596587158865677293.a n : ℤ) = A284820 (n + 1)

end A284820

/-! ## A284820.P591127071471946028

`eq[1, A178334(n)+char[A284847(n+1)]]`
-/

namespace A284820.P591127071471946028
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284847 (n + 1)

open Classical in
def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 n + ((if ∃ j, f3 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A284820.P591127071471946028

namespace A284820

/-- `eq[1, A178334(n)+char[A284847(n+1)]]` -/
def P591127071471946028.Spec : Prop :=
  ∀ n, (P591127071471946028.a n : ℤ) = A284820 (n + 1)

end A284820

/-!
# A284823: Array read by antidiagonals: T(n,k) = number of primitive (aperiodic) palindromes of length n using a maximum of k different symbols (n >= 1, k >= 1).

The programs for A284823, there is no canonical definition to state claims against.
-/

/-! ## A284823.P7804187647537366593

`2*A284871(n+1)-A143324(n+1)`
-/

namespace A284823.P7804187647537366593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A284871 (n + 1) - A143324 (n + 1)

end

end A284823.P7804187647537366593

/-! ## A284823.P12309996497396466035

`A005843(A284871(n+1))-A143324(n+1)`
-/

namespace A284823.P12309996497396466035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A284871 (n + 1)).toNat - A143324 (n + 1)

end

end A284823.P12309996497396466035

/-! ## A284823.P4053331808033866466

`A005843(A284871(n+1))-A074650(n+1)*A128227(n)`
-/

namespace A284823.P4053331808033866466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A284871 (n + 1)).toNat - A074650 (n + 1) * A128227 n

end

end A284823.P4053331808033866466

/-! ## A284823.P9388107803796886972

`A005843(A284871(n+1))-A074650(n+1)*A193738(n)`
-/

namespace A284823.P9388107803796886972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A284871 (n + 1)).toNat - A074650 (n + 1) * A193738 n

end

end A284823.P9388107803796886972

/-! ## A284823.P3129616337295859071

`A005843(A284871(n+1))-A074650(n+1)*A080508(n+1)`
-/

namespace A284823.P3129616337295859071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A284871 (n + 1)).toNat - A074650 (n + 1) * A080508 (n + 1)

end

end A284823.P3129616337295859071

/-! ## A284823.P9102623032353295408

`A005843(A284871(n+1))-A074650(n+1)*A080511(n+1)`
-/

namespace A284823.P9102623032353295408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A284871 (n + 1)).toNat - A074650 (n + 1) * A080511 (n + 1)

end

end A284823.P9102623032353295408

/-! ## A284823.P6344912744946212479

`A005843(A284871(n+1))-A074650(n+1)*A080818(n+1)`
-/

namespace A284823.P6344912744946212479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A284871 (n + 1)).toNat - A074650 (n + 1) * A080818 (n + 1)

end

end A284823.P6344912744946212479

/-!
# A284824: Number of partitions of n copies of n^2 into distinct parts.

The programs for A284824, there is no canonical definition to state claims against.
-/

/-! ## A284824.P17101755373318400408

`A339996(lcm(2, n!))`
-/

namespace A284824.P17101755373318400408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339996 (Nat.lcm 2 (Nat.factorial n))

end

end A284824.P17101755373318400408

/-!
# A284825: Number of partitions of n into 3 parts without common divisors such that every pair of them has common divisors.

The programs for A284825, there is no canonical definition to state claims against.
-/

/-! ## A284825.P4322571209660275755

`floor((A212122(n+1)-1)/A000005(n+1)²)`
-/

namespace A284825.P4322571209660275755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A212122 (n + 1) - 1 : ℚ) / (A000005 (n + 1) ^ 2 : ℚ)⌋

end

end A284825.P4322571209660275755

/-! ## A284825.P3282094392718068874

`A060396(A165828(n+4)+n)`
-/

namespace A284825.P3282094392718068874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060396 (A165828 (n + 4) + (n : ℤ)).toNat

end

end A284825.P3282094392718068874

/-! ## A284825.P8389853086288508406

`and(-A093727(n+1), A093718(n+1))`
-/

namespace A284825.P8389853086288508406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-A093727 (n + 1)) (A093718 (n + 1))

end

end A284825.P8389853086288508406

/-! ## A284825.P7075790669339304459

`A123565(n+1)%A325759(3*n+4)`
-/

namespace A284825.P7075790669339304459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A123565 (n + 1)) (A325759 (3 * n + 4))

end

end A284825.P7075790669339304459

/-! ## A284825.P5854587373123560657

`A018842(n)%A005811(A052552(n))`
-/

namespace A284825.P5854587373123560657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A018842 n) (A005811 (A052552 n).toNat)

end

end A284825.P5854587373123560657

/-!
# A284826: Irregular triangle T(n,k) for 1 <= k <= (n+1)/2: T(n,k) = number of primitive (aperiodic) palindromic structures of length n using exactly k different symbols.

The programs for A284826, there is no canonical definition to state claims against.
-/

/-! ## A284826.P13112126740028318944

`A327873(n+1)/A122197(n+1)!`
-/

namespace A284826.P13112126740028318944
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A327873 (n + 1) : ℚ) / (Nat.factorial (A122197 (n + 1)).toNat : ℚ)

end

end A284826.P13112126740028318944

/-! ## A284826.P5673538677075674378

`A327873(n+1)/A327873(A122197(n+1)²)`
-/

namespace A284826.P5673538677075674378
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A327873 (n + 1) : ℚ) / (A327873 (A122197 (n + 1) ^ 2).toNat : ℚ)

end

end A284826.P5673538677075674378

/-! ## A284826.P7492383451208783103

`A325280(A141036(n))%5`
-/

namespace A284826.P7492383451208783103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A325280 (A141036 n).toNat) 5

end

end A284826.P7492383451208783103

/-! ## A284826.P172033372137955528

`A170960(xor(11, A107635(n)))`
-/

namespace A284826.P172033372137955528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170960 (Int.xor 11 (A107635 n)).toNat

end

end A284826.P172033372137955528

/-! ## A284826.P2162980103339908921

`A047813(floor(sinh(A331327(n))))`
-/

namespace A284826.P2162980103339908921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047813 ⌊Real.sinh (A331327 n : ℝ)⌋.toNat

end

end A284826.P2162980103339908921

/-!
# A284827: Expansion of Sum_{i>=1} x^prime(i)/(1 - x^prime(i)) * Product_{j>=i} 1/(1 - x^prime(j)).

The programs for A284827, there is no canonical definition to state claims against.
-/

/-! ## A284827.P2178260425786371998

`A239482(n+5)-A266588(A064536(n+1))`
-/

namespace A284827.P2178260425786371998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239482 (n + 5) - A266588 (A064536 (n + 1)).toNat

end

end A284827.P2178260425786371998

/-!
# A284828: Expansion of Sum_{i>=2} x^prime(i)/(1 - x^prime(i)) * Product_{j>=i} 1/(1 - x^prime(j)).

The programs for A284828, there is no canonical definition to state claims against.
-/

/-! ## A284828.P5358038114282675751

`A070939(A196118(n))-A055034(n+1)`
-/

namespace A284828.P5358038114282675751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (A196118 n).toNat - A055034 (n + 1)

end

end A284828.P5358038114282675751

/-! ## A284828.P6760101591261569997

`A193582(A133037(n+1)*A346197(n+3))`
-/

namespace A284828.P6760101591261569997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193582 (A133037 (n + 1) * A346197 (n + 3)).toNat

end

end A284828.P6760101591261569997

/-!
# A284833: Expansion of Sum_{i>=1} x^prime(i)/(1 - x^prime(i)) * Product_{j=1..i} 1/(1 - x^prime(j)).

The programs for A284833, there is no canonical definition to state claims against.
-/

/-! ## A284833.P5567019155511310968

`A090677(A165998(n)+A079433(n+1))`
-/

namespace A284833.P5567019155511310968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090677 (A165998 n + A079433 (n + 1)).toNat

end

end A284833.P5567019155511310968

/-!
# A284834: Expansion of Sum_{i>=2} x^prime(i)/(1 - x^prime(i)) * Product_{j=2..i} 1/(1 - x^prime(j)).

The programs for A284834, there is no canonical definition to state claims against.
-/

/-! ## A284834.P10522875296987859909

`A139352(A348382(n)+A316983(n))`
-/

namespace A284834.P10522875296987859909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139352 (A348382 n + A316983 n).toNat

end

end A284834.P10522875296987859909

/-! ## A284834.P11392676208233035965

`A026409(A036035(3*(n+1)))%A342095(n+1)`
-/

namespace A284834.P11392676208233035965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A026409 (A036035 (3 * (n + 1))).toNat) (A342095 (n + 1))

end

end A284834.P11392676208233035965

/-!
# A284835: Expansion of Sum_{i>=1} mu(i)^2*x^i/(1 - x^i) * Product_{j=1..i} 1/(1 - mu(j)^2*x^j), where mu() is the Moebius function (A008683).

The programs for A284835, there is no canonical definition to state claims against.
-/

/-! ## A284835.P13590389839334199711

`A353848(A061479(n))+A288255(n+10)`
-/

namespace A284835.P13590389839334199711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353848 (A061479 n).toNat + A288255 (n + 10)

end

end A284835.P13590389839334199711

/-! ## A284835.P13482919597784048642

`A130472(A098065(n+2)+A051953(n+1))`
-/

namespace A284835.P13482919597784048642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130472 (A098065 (n + 2) + A051953 (n + 1)).toNat

end

end A284835.P13482919597784048642

/-! ## A284835.P9201174658383830975

`∑[A286585(record[A189435(2*n+1)])]`
-/

namespace A284835.P9201174658383830975
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189435 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286585 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A284835.P9201174658383830975

/-! ## A284835.P17528520733325835961

`A001221(A218543(2*n+3))+∑[n]`
-/

namespace A284835.P17528520733325835961
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A218543 (2 * n + 3)).toNat + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A284835.P17528520733325835961

/-! ## A284835.P2454745304040230954

`∑[A000121(A000045(∑{d}[n+1, 1-#+n]))]`
-/

namespace A284835.P2454745304040230954
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000121 (A000045 (∑ d ∈ Nat.divisors (f2 n), (1 - (d : ℤ) + (n : ℤ))).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A284835.P2454745304040230954

/-!
# A284836: Expansion of Sum_{i>=1} x^(i^2)/(1 - x^(i^2)) * Product_{j=1..i} 1/(1 - x^(j^2)).

The programs for A284836, there is no canonical definition to state claims against.
-/

/-! ## A284836.P14553239584180251408

`∑[A324912(A181817(n+1)+A000740(n+1))]`
-/

namespace A284836.P14553239584180251408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324912 (A181817 (n + 1) + A000740 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A284836.P14553239584180251408

/-!
# A284837: Expansion of Sum_{i>=1} x^(i^3)/(1 - x^(i^3)) * Product_{j=1..i} 1/(1 - x^(j^3)).

The programs for A284837, there is no canonical definition to state claims against.
-/

/-! ## A284837.P717244856448635308

`∑[A294333(n+1)%A133435(n+1)]`
-/

namespace A284837.P717244856448635308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A294333 (n + 1)) (A133435 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A284837.P717244856448635308

/-! ## A284837.P11487002151773059053

`∑[A332671(3*n+1)+A190867(n+1)]`
-/

namespace A284837.P11487002151773059053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332671 (3 * n + 1) + A190867 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A284837.P11487002151773059053

/-! ## A284837.P9261676343243986509

`∑[A319689(A001055(n+1)*A069485(n+1))]`
-/

namespace A284837.P9261676343243986509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319689 (A001055 (n + 1) * A069485 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A284837.P9261676343243986509

/-! ## A284837.P12699072742176328814

`lt[A173265(A115421(n+1)), A115421(3*n+1)]`
-/

namespace A284837.P12699072742176328814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173265 (A115421 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115421 (3 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A284837.P12699072742176328814

/-! ## A284837.P12162364765272040456

`lt[A162424(A115421(n+1)), A038509(2*n+3)]`
-/

namespace A284837.P12162364765272040456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162424 (A115421 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038509 (2 * n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A284837.P12162364765272040456

/-!
# A284838: Number of edges in the n-Keller graph.

The programs for A284838, the canonical program `A284838.P9987670439029586533` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A284838 has offset 1).

The definition of A284838 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A284838.P9987670439029586533

`2^(2*(n+1)-1)*(4^(n+1)-3^(n+1)-(n+1))`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A284838

/-- `2^(2*(n+1)-1)*(4^(n+1)-3^(n+1)-(n+1))` -/
def P9987670439029586533.Spec : Prop :=
  ∀ n, P9987670439029586533.a n = (A284838 (n + 1) : ℚ)

end A284838

/-! ## A284838.P10425954722804919555

`A296189(n+1)-A000302(n)*A301571(n+1)`
-/

namespace A284838.P10425954722804919555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296189 (n + 1) - A000302 n * A301571 (n + 1)

end

end A284838.P10425954722804919555

namespace A284838

/-- `A296189(n+1)-A000302(n)*A301571(n+1)` -/
def P10425954722804919555.Spec : Prop :=
  ∀ n, P10425954722804919555.a n = A284838 (n + 1)

end A284838

/-!
# A284839: Number of compositions (ordered partitions) of n into prime power divisors of n (including 1).

The programs for A284839, there is no canonical definition to state claims against.
-/

/-! ## A284839.P5593204226099036556

`A100346(n)-A121262(A000108(n))`
-/

namespace A284839.P5593204226099036556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100346 n - A121262 (A000108 n).toNat

end

end A284839.P5593204226099036556

/-! ## A284839.P6953837797582463583

`A100346(n)-A049320(A091568(n+1))`
-/

namespace A284839.P6953837797582463583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100346 n - A049320 (A091568 (n + 1)).toNat

end

end A284839.P6953837797582463583

/-! ## A284839.P13943702268710196209

`A100346(n)-A353814(n!)`
-/

namespace A284839.P13943702268710196209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100346 n - A353814 (Nat.factorial n)

end

end A284839.P13943702268710196209

/-! ## A284839.P11434304873909907445

`A121373(A001734(n))+A100346(n)`
-/

namespace A284839.P11434304873909907445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121373 (A001734 n).toNat + A100346 n

end

end A284839.P11434304873909907445

/-! ## A284839.P1834404972284309039

`A294138(n)+A267605(A093129(n))`
-/

namespace A284839.P1834404972284309039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294138 n + A267605 (A093129 n).toNat

end

end A284839.P1834404972284309039

/-!
# A284840: Number of quinternary strings avoiding consecutive digits i,i+1 and i,i+2.

The programs for A284840, the canonical program `A284840.P15406314837731503069` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A284840 has offset 0).

The definition of A284840 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 182 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A284840.P15406314837731503069

`ogf(1/(1-5x+7x^2-8x^3+5x^4-x^5))`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A284840

/-- `ogf(1/(1-5x+7x^2-8x^3+5x^4-x^5))` -/
def P15406314837731503069.Spec : Prop :=
  ∀ n, P15406314837731503069.a n = A284840 n

theorem P15406314837731503069.correct : P15406314837731503069.Spec := by
  intro n
  simp only [A284840]

end A284840

/-! ## A284840.P16854884175914058596

`A217538(A216959(2*n+5)-A129487(2*n+3))`
-/

namespace A284840.P16854884175914058596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217538 (A216959 (2 * n + 5) - A129487 (2 * n + 3)).toNat

end

end A284840.P16854884175914058596

namespace A284840

/-- `A217538(A216959(2*n+5)-A129487(2*n+3))` -/
def P16854884175914058596.Spec : Prop :=
  ∀ n, P16854884175914058596.a n = A284840 n

end A284840

/-!
# A284841: Number of primitive (aperiodic) palindromic structures of length n using an infinite alphabet.

The programs for A284841, there is no canonical definition to state claims against.
-/

/-! ## A284841.P14098389705988999659

`A056480(A004896(n+2))`
-/

namespace A284841.P14098389705988999659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056480 (A004896 (n + 2)).toNat

end

end A284841.P14098389705988999659

/-! ## A284841.P11312269614141924900

`A056480(A004907(n+2))`
-/

namespace A284841.P11312269614141924900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056480 (A004907 (n + 2)).toNat

end

end A284841.P11312269614141924900

/-! ## A284841.P13418892366170168461

`A056480(A004918(n+2))`
-/

namespace A284841.P13418892366170168461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056480 (A004918 (n + 2)).toNat

end

end A284841.P13418892366170168461

/-! ## A284841.P2220369552550434752

`A056480(A008277(A008277(n+1))+n)`
-/

namespace A284841.P2220369552550434752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056480 (A008277 (A008277 (n + 1)).toNat + (n : ℤ)).toNat

end

end A284841.P2220369552550434752

/-! ## A284841.P7060234666935709367

`A056480(A056480(A056475(n+1))+n)`
-/

namespace A284841.P7060234666935709367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056480 (A056480 (A056475 (n + 1)).toNat + (n : ℤ)).toNat

end

end A284841.P7060234666935709367

/-!
# A284843: Number of permutations on [n+2] with no circular 2-successions.

The programs for A284843, there is no canonical definition to state claims against.
-/

/-! ## A284843.P6573201879691097285

`lcm(n+3, Δ[(n+1)*(1-a(n-1))])` with `a(0)=1`
-/

namespace A284843.P6573201879691097285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  (n + 1 : ℤ) * (1 - f1 (n - 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n + 3 : ℤ) (f1 (n + 1) - f1 n)

end

end A284843.P6573201879691097285

/-! ## A284843.P2978356163297796057

`(n+3)*A000255(n+1)`
-/

namespace A284843.P2978356163297796057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℤ) * A000255 (n + 1)

end

end A284843.P2978356163297796057

/-! ## A284843.P16941260916823113438

`(n+3)*record[A116854(n+1)]`
-/

namespace A284843.P16941260916823113438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116854 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℤ) * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A284843.P16941260916823113438

/-! ## A284843.P10417155472241379894

`A000255(n+2)+A000166(n+1)`
-/

namespace A284843.P10417155472241379894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000255 (n + 2) + A000166 (n + 1)

end

end A284843.P10417155472241379894

/-! ## A284843.P1157938893028636239

`A055790(n+2)-A000166(n+2)`
-/

namespace A284843.P1157938893028636239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055790 (n + 2) - A000166 (n + 2)

end

end A284843.P1157938893028636239

/-! ## A284843.P1589159105276586213

`A000255(n+1)+A001277(n+3)-A001277(n+2)`
-/

namespace A284843.P1589159105276586213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000255 (n + 1) + (A001277 (n + 3) - A001277 (n + 2))

end

end A284843.P1589159105276586213

/-! ## A284843.P1165473883394195178

`A086325(n+3)/(n+2)`
-/

namespace A284843.P1165473883394195178
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A086325 (n + 3) : ℚ) / (n + 2 : ℚ)

end

end A284843.P1165473883394195178

/-!
# A284844: Number of permutations on [n+3] with no circular 3-successions.

The programs for A284844, there is no canonical definition to state claims against.
-/

/-! ## A284844.P11240355473744337701

`(n+4)*A055790(n+2)`
-/

namespace A284844.P11240355473744337701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 4 : ℤ) * A055790 (n + 2)

end

end A284844.P11240355473744337701

/-! ## A284844.P777510520366739335

`(n+4)*A061312(A027379(n+1))`
-/

namespace A284844.P777510520366739335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 4 : ℤ) * A061312 (A027379 (n + 1)).toNat

end

end A284844.P777510520366739335

/-! ## A284844.P11660145043831554860

`(n+4)*A047920(A055998(n+2))`
-/

namespace A284844.P11660145043831554860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 4 : ℤ) * A047920 (A055998 (n + 2)).toNat

end

end A284844.P11660145043831554860

/-! ## A284844.P7067693697244877609

`(n+4)*A068106(A238531(n+4))`
-/

namespace A284844.P7067693697244877609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 4 : ℤ) * A068106 (A238531 (n + 4)).toNat

end

end A284844.P7067693697244877609

/-! ## A284844.P13685014308143406759

`Δ[A028552(n+2)]*A060475(A055998(n+2))`
-/

namespace A284844.P13685014308143406759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028552 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A060475 (A055998 (n + 2)).toNat

end

end A284844.P13685014308143406759

/-!
# A284845: Number of permutations on [n+4] with no circular 4-successions.

The programs for A284845, there is no canonical definition to state claims against.
-/

/-! ## A284845.P4743225297039157611

`(n+5)*A277609(n+4)`
-/

namespace A284845.P4743225297039157611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 5 : ℤ) * A277609 (n + 4)

end

end A284845.P4743225297039157611

/-!
# A284847: Positions of 1 in the {1100->0}-transform of A010060; complement of A284820.

The programs for A284847, the canonical program `A284847.P9193682019044104553` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A284847 has offset 1).

The definition of A284847 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A284847.P9193682019044104553

`A003159(A004525(n+1))+A004525(n+2)+n`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A284847

/-- `A003159(A004525(n+1))+A004525(n+2)+n` -/
def P9193682019044104553.Spec : Prop :=
  ∀ n, P9193682019044104553.a n = A284847 (n + 1)

theorem P9193682019044104553.correct : P9193682019044104553.Spec := by
  intro n
  simp only [A284847, Nat.add_sub_cancel]

end A284847

/-! ## A284847.P6848792764166141

`n+1+A004524(n+1)+A003159(A004524(n)+1)`
-/

namespace A284847.P6848792764166141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + (A004524 (n + 1) + A003159 (A004524 n + 1).toNat)

end

end A284847.P6848792764166141

namespace A284847

/-- `n+1+A004524(n+1)+A003159(A004524(n)+1)` -/
def P6848792764166141.Spec : Prop :=
  ∀ n, P6848792764166141.a n = A284847 (n + 1)

end A284847

/-! ## A284847.P5176009002370758354

`eq[char[A284820(n+1)], A000007(n)]`
-/

namespace A284847.P5176009002370758354
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284820 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A284847.P5176009002370758354

namespace A284847

/-- `eq[char[A284820(n+1)], A000007(n)]` -/
def P5176009002370758354.Spec : Prop :=
  ∀ n, (P5176009002370758354.a n : ℤ) = A284847 (n + 1)

end A284847

/-! ## A284847.P2964165251955072664

`eq[char[A284820(n+1)], A000038(n)]`
-/

namespace A284847.P2964165251955072664
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284820 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A284847.P2964165251955072664

namespace A284847

/-- `eq[char[A284820(n+1)], A000038(n)]` -/
def P2964165251955072664.Spec : Prop :=
  ∀ n, (P2964165251955072664.a n : ℤ) = A284847 (n + 1)

end A284847

/-! ## A284847.P6091729753105451857

`A171946(A004525(n+1)+1)+A004525(3*n)`
-/

namespace A284847.P6091729753105451857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171946 (A004525 (n + 1) + 1).toNat + A004525 (3 * n)

end

end A284847.P6091729753105451857

namespace A284847

/-- `A171946(A004525(n+1)+1)+A004525(3*n)` -/
def P6091729753105451857.Spec : Prop :=
  ∀ n, P6091729753105451857.a n = A284847 (n + 1)

end A284847

/-!
# A284848: {1100->1}-transform of the Thue-Morse word A010060.

The programs for A284848, there is no canonical definition to state claims against.
-/

/-! ## A284848.P8329558274817340289

`char[A285092(n+1)-1]`
-/

namespace A284848.P8329558274817340289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285092 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A284848.P8329558274817340289

/-! ## A284848.P10114957005929231473

`A284622(A281873(n+1)+3*n)`
-/

namespace A284848.P10114957005929231473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284622 (A281873 (n + 1) + (3 * n : ℤ)).toNat

end

end A284848.P10114957005929231473

/-! ## A284848.P16626125857111944815

`A284622(A008574(A281873(n+1))-3)`
-/

namespace A284848.P16626125857111944815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284622 (A008574 (A281873 (n + 1)).toNat - 3).toNat

end

end A284848.P16626125857111944815

/-! ## A284848.P9349592529773559646

`A123594((n+3)*A355834(n+4))`
-/

namespace A284848.P9349592529773559646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123594 ((n + 3 : ℤ) * A355834 (n + 4)).toNat

end

end A284848.P9349592529773559646

/-! ## A284848.P3311666530796170730

`and(char[A325419(n+1)], A325372(2*(n+1)))`
-/

namespace A284848.P3311666530796170730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325419 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A325372 (2 * (n + 1)))

end

end A284848.P3311666530796170730

/-!
# A284849: Number of zeros strictly inside the unit circle of the Bernoulli polynomial B(n,x).

The programs for A284849, there is no canonical definition to state claims against.
-/

/-! ## A284849.P15673913278385940807

`∑[n+3]%A000196(A332366(n+2))`
-/

namespace A284849.P15673913278385940807
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) (A000196 (A332366 (n + 2)).toNat)

end

end A284849.P15673913278385940807

/-!
# A284850: a(n) = 4^n - 3^n - n.

The programs for A284850, the canonical program `A284850.P16744737997228673768` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A284850 has offset 1).

The definition of A284850 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4^(n+1)-3^(n+1)-(n+1)` (program `A284850.P16744737997228673768`, by `A284850.P16744737997228673768.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A284850.P16744737997228673768

`4^(n+1)-3^(n+1)-(n+1)`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A284850

/-- `4^(n+1)-3^(n+1)-(n+1)` -/
def P16744737997228673768.Spec : Prop :=
  ∀ n, P16744737997228673768.a n = A284850 (n + 1)

theorem P16744737997228673768.correct : P16744737997228673768.Spec := by
  intro n
  simp only [A284850, Nat.add_sub_cancel]

end A284850

/-!
# A284851: Fixed point of the morphism 0 -> 01, 1 -> 0100.

The programs for A284851, the canonical program `A284851.P2577468141538468078` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A284851 has offset 1).

The definition of A284851 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A284851.P2577468141538468078

`char[A284853(n+1)-1]`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A284851

/-- `char[A284853(n+1)-1]` -/
def P2577468141538468078.Spec : Prop :=
  ∀ n, (P2577468141538468078.a n : ℤ) = A284851 (n + 1)

theorem P2577468141538468078.correct : P2577468141538468078.Spec := by
  intro n
  simp only [A284851, Nat.add_sub_cancel]

end A284851

/-! ## A284851.P6415441464858269821

`char[A284507(n+1)+n]`
-/

namespace A284851.P6415441464858269821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284507 (n + 1) + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A284851.P6415441464858269821

namespace A284851

/-- `char[A284507(n+1)+n]` -/
def P6415441464858269821.Spec : Prop :=
  ∀ n, (P6415441464858269821.a n : ℤ) = A284851 (n + 1)

end A284851

/-! ## A284851.P1056931717528918914

`char[A026368(n+1)-(n+2)]`
-/

namespace A284851.P1056931717528918914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026368 (n + 1) - (n + 2 : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A284851.P1056931717528918914

namespace A284851

/-- `char[A026368(n+1)-(n+2)]` -/
def P1056931717528918914.Spec : Prop :=
  ∀ n, (P1056931717528918914.a n : ℤ) = A284851 (n + 1)

end A284851

/-! ## A284851.P17418025093558679819

`∑{d}[n+1, A063524(#-1)*A285431((n+1)/#)]`
-/

namespace A284851.P17418025093558679819
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A063524 (d - 1) * A285431 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A284851.P17418025093558679819

namespace A284851

/-- `∑{d}[n+1, A063524(#-1)*A285431((n+1)/#)]` -/
def P17418025093558679819.Spec : Prop :=
  ∀ n, P17418025093558679819.a n = A284851 (n + 1)

end A284851

/-! ## A284851.P6443035890331474778

`log2(Δ[A026367(n+1)])`
-/

namespace A284851.P6443035890331474778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026367 (n + 1)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (f1 (n + 1) - f1 n : ℝ)

end

end A284851.P6443035890331474778

namespace A284851

/-- `log2(Δ[A026367(n+1)])` -/
def P6443035890331474778.Spec : Prop :=
  ∀ n, P6443035890331474778.a n = (A284851 (n + 1) : ℝ)

end A284851

/-! ## A284851.P7470267407723780787

`Δ[A283964(n+1)]-2`
-/

namespace A284851.P7470267407723780787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283964 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 2

end

end A284851.P7470267407723780787

namespace A284851

/-- `Δ[A283964(n+1)]-2` -/
def P7470267407723780787.Spec : Prop :=
  ∀ n, P7470267407723780787.a n = A284851 (n + 1)

end A284851

/-! ## A284851.P15517969764994766181

`A001221(Δ[A026367(n+1)])`
-/

namespace A284851.P15517969764994766181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026367 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (f1 (n + 1) - f1 n).toNat

end

end A284851.P15517969764994766181

namespace A284851

/-- `A001221(Δ[A026367(n+1)])` -/
def P15517969764994766181.Spec : Prop :=
  ∀ n, P15517969764994766181.a n = A284851 (n + 1)

end A284851

/-! ## A284851.P14147585866087791603

`A001222(Δ[A026367(n+1)])`
-/

namespace A284851.P14147585866087791603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026367 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (f1 (n + 1) - f1 n).toNat

end

end A284851.P14147585866087791603

namespace A284851

/-- `A001222(Δ[A026367(n+1)])` -/
def P14147585866087791603.Spec : Prop :=
  ∀ n, P14147585866087791603.a n = A284851 (n + 1)

end A284851

/-! ## A284851.P15106226065989712076

`A004526(Δ[A026367(n+1)])`
-/

namespace A284851.P15106226065989712076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026367 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (f1 (n + 1) - f1 n).toNat

end

end A284851.P15106226065989712076

namespace A284851

/-- `A004526(Δ[A026367(n+1)])` -/
def P15106226065989712076.Spec : Prop :=
  ∀ n, P15106226065989712076.a n = A284851 (n + 1)

end A284851

/-! ## A284851.P2817009130631289038

`A008616(Δ[A026368(n+1)])`
-/

namespace A284851.P2817009130631289038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026368 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008616 (f1 (n + 1) - f1 n).toNat

end

end A284851.P2817009130631289038

namespace A284851

/-- `A008616(Δ[A026368(n+1)])` -/
def P2817009130631289038.Spec : Prop :=
  ∀ n, P2817009130631289038.a n = A284851 (n + 1)

end A284851

/-! ## A284851.P17779561555967783537

`A047381(Δ[A026367(n+1)])`
-/

namespace A284851.P17779561555967783537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026367 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047381 (f1 (n + 1) - f1 n).toNat

end

end A284851.P17779561555967783537

namespace A284851

/-- `A047381(Δ[A026367(n+1)])` -/
def P17779561555967783537.Spec : Prop :=
  ∀ n, P17779561555967783537.a n = A284851 (n + 1)

end A284851

/-! ## A284851.P13515356822145797494

`A001221(Δ[A284507(n+1)])`
-/

namespace A284851.P13515356822145797494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284507 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (f1 (n + 1) - f1 n).toNat

end

end A284851.P13515356822145797494

namespace A284851

/-- `A001221(Δ[A284507(n+1)])` -/
def P13515356822145797494.Spec : Prop :=
  ∀ n, P13515356822145797494.a n = A284851 (n + 1)

end A284851

/-! ## A284851.P18232955713775986399

`A001222(Δ[A284507(n+1)])`
-/

namespace A284851.P18232955713775986399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284507 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (f1 (n + 1) - f1 n).toNat

end

end A284851.P18232955713775986399

namespace A284851

/-- `A001222(Δ[A284507(n+1)])` -/
def P18232955713775986399.Spec : Prop :=
  ∀ n, P18232955713775986399.a n = A284851 (n + 1)

end A284851

/-! ## A284851.P8352411977602897050

`A088226(Δ[A283964(n+1)])`
-/

namespace A284851.P8352411977602897050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283964 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088226 (f1 (n + 1) - f1 n).toNat

end

end A284851.P8352411977602897050

namespace A284851

/-- `A088226(Δ[A283964(n+1)])` -/
def P8352411977602897050.Spec : Prop :=
  ∀ n, P8352411977602897050.a n = A284851 (n + 1)

end A284851

/-! ## A284851.P11629054970610637934

`A283963(Δ[A283964(n+1)])`
-/

namespace A284851.P11629054970610637934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283964 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283963 (f1 (n + 1) - f1 n).toNat

end

end A284851.P11629054970610637934

namespace A284851

/-- `A283963(Δ[A283964(n+1)])` -/
def P11629054970610637934.Spec : Prop :=
  ∀ n, P11629054970610637934.a n = A284851 (n + 1)

end A284851

/-! ## A284851.P2169021546120899870

`A284463(Δ[A284507(n+1)])`
-/

namespace A284851.P2169021546120899870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284507 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284463 (f1 (n + 1) - f1 n).toNat

end

end A284851.P2169021546120899870

namespace A284851

/-- `A284463(Δ[A284507(n+1)])` -/
def P2169021546120899870.Spec : Prop :=
  ∀ n, P2169021546120899870.a n = A284851 (n + 1)

end A284851

/-! ## A284851.P9786804420257378957

`A284465(Δ[A284507(n+1)])`
-/

namespace A284851.P9786804420257378957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284507 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284465 (f1 (n + 1) - f1 n).toNat

end

end A284851.P9786804420257378957

namespace A284851

/-- `A284465(Δ[A284507(n+1)])` -/
def P9786804420257378957.Spec : Prop :=
  ∀ n, P9786804420257378957.a n = A284851 (n + 1)

end A284851

/-! ## A284851.P14080090040917466343

`A284475(Δ[A284507(n+1)])`
-/

namespace A284851.P14080090040917466343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284507 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284475 (f1 (n + 1) - f1 n).toNat

end

end A284851.P14080090040917466343

namespace A284851

/-- `A284475(Δ[A284507(n+1)])` -/
def P14080090040917466343.Spec : Prop :=
  ∀ n, P14080090040917466343.a n = A284851 (n + 1)

end A284851

/-! ## A284851.P2509996452637834565

`A284487(Δ[A284507(n+1)])`
-/

namespace A284851.P2509996452637834565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284507 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284487 (f1 (n + 1) - f1 n).toNat

end

end A284851.P2509996452637834565

namespace A284851

/-- `A284487(Δ[A284507(n+1)])` -/
def P2509996452637834565.Spec : Prop :=
  ∀ n, P2509996452637834565.a n = A284851 (n + 1)

end A284851

/-!
# A284852: Positions of 0 in A284851; complement of A284853.

The programs for A284852, the canonical program `A284852.P8629922077169779044` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A284852 has offset 1).

The definition of A284852 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A284852.P10366121950061167476

`comp[2*comp[A026368(n+1)]]`
-/

namespace A284852.P10366121950061167476
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026368 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A284852.P10366121950061167476

namespace A284852

/-- `comp[2*comp[A026368(n+1)]]` -/
def P10366121950061167476.Spec : Prop :=
  ∀ n, (P10366121950061167476.a n : ℤ) = A284852 (n + 1)

end A284852

/-! ## A284852.P7104599167012658784

`comp[comp[A284506(n+1)]+n]`
-/

namespace A284852.P7104599167012658784
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284506 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n + n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A284852.P7104599167012658784

namespace A284852

/-- `comp[comp[A284506(n+1)]+n]` -/
def P7104599167012658784.Spec : Prop :=
  ∀ n, (P7104599167012658784.a n : ℤ) = A284852 (n + 1)

end A284852

/-! ## A284852.P15332043278053272761

`comp[A284853(n+1)-1]+1`
-/

namespace A284852.P15332043278053272761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284853 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A284852.P15332043278053272761

namespace A284852

/-- `comp[A284853(n+1)-1]+1` -/
def P15332043278053272761.Spec : Prop :=
  ∀ n, (P15332043278053272761.a n : ℤ) = A284852 (n + 1)

end A284852

/-! ## A284852.P1218272392293082629

`comp[A284507(n+1)+n]+1`
-/

namespace A284852.P1218272392293082629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284507 (n + 1) + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A284852.P1218272392293082629

namespace A284852

/-- `comp[A284507(n+1)+n]+1` -/
def P1218272392293082629.Spec : Prop :=
  ∀ n, (P1218272392293082629.a n : ℤ) = A284852 (n + 1)

end A284852

/-! ## A284852.P8629922077169779044

`a(n-1)+A284505(n)+1` with `a(0)=1`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A284852

/-- `a(n-1)+A284505(n)+1` -/
def P8629922077169779044.Spec : Prop :=
  ∀ n, P8629922077169779044.a n = A284852 (n + 1)

theorem P8629922077169779044.correct : P8629922077169779044.Spec := by
  intro n
  simp only [A284852, Nat.add_sub_cancel]

end A284852

/-! ## A284852.P5852012073660247309

`∑[A284505(n+1)+1]-A284505(n+1)`
-/

namespace A284852.P5852012073660247309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284505 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A284505 (n + 1)

end

end A284852.P5852012073660247309

namespace A284852

/-- `∑[A284505(n+1)+1]-A284505(n+1)` -/
def P5852012073660247309.Spec : Prop :=
  ∀ n, P5852012073660247309.a n = A284852 (n + 1)

end A284852

/-! ## A284852.P5901410519895123685

`eq[1, A284851(n+1)+1]+1`
-/

namespace A284852.P5901410519895123685
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284851 (n + 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A284852.P5901410519895123685

namespace A284852

/-- `eq[1, A284851(n+1)+1]+1` -/
def P5901410519895123685.Spec : Prop :=
  ∀ n, (P5901410519895123685.a n : ℤ) = A284852 (n + 1)

end A284852

/-! ## A284852.P16843802075224971558

`a(n-1)+A284851(a(n-1)+1)+1` with `a(0)=1`
-/

namespace A284852.P16843802075224971558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A284851 (a (n - 1) + 1).toNat + 1)

end

end A284852.P16843802075224971558

namespace A284852

/-- `a(n-1)+A284851(a(n-1)+1)+1` -/
def P16843802075224971558.Spec : Prop :=
  ∀ n, P16843802075224971558.a n = A284852 (n + 1)

end A284852

/-! ## A284852.P3067433101116147652

`eq[A028310(n)-n, A284851(A028310(n))]`
-/

namespace A284852.P3067433101116147652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n - (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284851 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A284852.P3067433101116147652

namespace A284852

/-- `eq[A028310(n)-n, A284851(A028310(n))]` -/
def P3067433101116147652.Spec : Prop :=
  ∀ n, (P3067433101116147652.a n : ℤ) = A284852 (n + 1)

end A284852

/-! ## A284852.P7191098969733371313

`eq[1, A001222(Δ[A284507(n+1)]+1)]+1`
-/

namespace A284852.P7191098969733371313
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284507 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (f3 (n + 1) - f3 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A284852.P7191098969733371313

namespace A284852

/-- `eq[1, A001222(Δ[A284507(n+1)]+1)]+1` -/
def P7191098969733371313.Spec : Prop :=
  ∀ n, (P7191098969733371313.a n : ℤ) = A284852 (n + 1)

end A284852

/-! ## A284852.P1712942222712625350

`record[(n+1)/(A284507(n+2)-A284507(n+1))]`
-/

namespace A284852.P1712942222712625350
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A284507 (n + 2) - A284507 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A284852.P1712942222712625350

namespace A284852

/-- `record[(n+1)/(A284507(n+2)-A284507(n+1))]` -/
def P1712942222712625350.Spec : Prop :=
  ∀ n, P1712942222712625350.a n = (A284852 (n + 1) : ℚ)

end A284852

/-! ## A284852.P9484077739495176071

`record[A026366(A285431(n+2)+n)]`
-/

namespace A284852.P9484077739495176071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026366 (A285431 (n + 2) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A284852.P9484077739495176071

namespace A284852

/-- `record[A026366(A285431(n+2)+n)]` -/
def P9484077739495176071.Spec : Prop :=
  ∀ n, P9484077739495176071.a n = A284852 (n + 1)

end A284852

/-! ## A284852.P3817631667042934007

`record[A026366(n+1)%A026366(n+2)]`
-/

namespace A284852.P3817631667042934007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A026366 (n + 1)) (A026366 (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A284852.P3817631667042934007

namespace A284852

/-- `record[A026366(n+1)%A026366(n+2)]` -/
def P3817631667042934007.Spec : Prop :=
  ∀ n, P3817631667042934007.a n = A284852 (n + 1)

end A284852

/-! ## A284852.P14354210710613121562

`record[A284851(A052938(n))+A052938(n)]`
-/

namespace A284852.P14354210710613121562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284851 (A052938 n).toNat + A052938 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A284852.P14354210710613121562

namespace A284852

/-- `record[A284851(A052938(n))+A052938(n)]` -/
def P14354210710613121562.Spec : Prop :=
  ∀ n, P14354210710613121562.a n = A284852 (n + 1)

end A284852

/-! ## A284852.P4080177199498078264

`record[A284851(A032742(n+1))+A032742(n+1)]`
-/

namespace A284852.P4080177199498078264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284851 (A032742 (n + 1)).toNat + A032742 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A284852.P4080177199498078264

namespace A284852

/-- `record[A284851(A032742(n+1))+A032742(n+1)]` -/
def P4080177199498078264.Spec : Prop :=
  ∀ n, P4080177199498078264.a n = A284852 (n + 1)

end A284852

/-!
# A284853: Positions of 1 in A284851; complement of A284852.

The programs for A284853, the canonical program `A284853.P3894203280212817045` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A284853 has offset 1).

The definition of A284853 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A026367, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A284853.P3894203280212817045

`2*A026367(n+1)`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A284853

/-- `2*A026367(n+1)` -/
def P3894203280212817045.Spec : Prop :=
  ∀ n, P3894203280212817045.a n = A284853 (n + 1)

theorem P3894203280212817045.correct : P3894203280212817045.Spec := by
  intro n
  simp only [A284853, Nat.add_sub_cancel]

end A284853

/-! ## A284853.P3775343970550281138

`a(n-1)+a(floor(n/a(a(n-1)/2-n)))` with `a(0)=2`
-/

namespace A284853.P3775343970550281138
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  a (n - 1) + a ⌊(n : ℚ) / (a (SequenceMachineLib.roundAway ((a (n - 1) : ℚ) / 2 - (n : ℚ))).toNat : ℚ)⌋.toNat

end

end A284853.P3775343970550281138

namespace A284853

/-- `a(n-1)+a(floor(n/a(a(n-1)/2-n)))` -/
def P3775343970550281138.Spec : Prop :=
  ∀ n, (P3775343970550281138.a n : ℤ) = A284853 (n + 1)

end A284853

/-! ## A284853.P13300300735894185545

`A284507(n+1)+1+n`
-/

namespace A284853.P13300300735894185545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284507 (n + 1) + 1 + (n : ℤ)

end

end A284853.P13300300735894185545

namespace A284853

/-- `A284507(n+1)+1+n` -/
def P13300300735894185545.Spec : Prop :=
  ∀ n, P13300300735894185545.a n = A284853 (n + 1)

end A284853

/-! ## A284853.P11738755297509881355

`A026368(n+1)-(n+1)`
-/

namespace A284853.P11738755297509881355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026368 (n + 1) - (n + 1 : ℤ)

end

end A284853.P11738755297509881355

namespace A284853

/-- `A026368(n+1)-(n+1)` -/
def P11738755297509881355.Spec : Prop :=
  ∀ n, P11738755297509881355.a n = A284853 (n + 1)

end A284853

/-! ## A284853.P5370916593777834431

`2*(A283964(n+1)-(n+1))`
-/

namespace A284853.P5370916593777834431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A283964 (n + 1) - (n + 1 : ℤ))

end

end A284853.P5370916593777834431

namespace A284853

/-- `2*(A283964(n+1)-(n+1))` -/
def P5370916593777834431.Spec : Prop :=
  ∀ n, P5370916593777834431.a n = A284853 (n + 1)

end A284853

/-! ## A284853.P16055109648739193120

`A026367(A000027(n+1))+A026367(n+1)`
-/

namespace A284853.P16055109648739193120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026367 (A000027 (n + 1)).toNat + A026367 (n + 1)

end

end A284853.P16055109648739193120

namespace A284853

/-- `A026367(A000027(n+1))+A026367(n+1)` -/
def P16055109648739193120.Spec : Prop :=
  ∀ n, P16055109648739193120.a n = A284853 (n + 1)

end A284853

/-! ## A284853.P11592916816181609576

`A026367(n+1)+A026367(A283964(n+1)-A026367(n+1))`
-/

namespace A284853.P11592916816181609576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026367 (n + 1) + A026367 (A283964 (n + 1) - A026367 (n + 1)).toNat

end

end A284853.P11592916816181609576

namespace A284853

/-- `A026367(n+1)+A026367(A283964(n+1)-A026367(n+1))` -/
def P11592916816181609576.Spec : Prop :=
  ∀ n, P11592916816181609576.a n = A284853 (n + 1)

end A284853

/-! ## A284853.P9494614517354902277

`2*(A026359(n+2)-1)`
-/

namespace A284853.P9494614517354902277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A026359 (n + 2) - 1)

end

end A284853.P9494614517354902277

namespace A284853

/-- `2*(A026359(n+2)-1)` -/
def P9494614517354902277.Spec : Prop :=
  ∀ n, P9494614517354902277.a n = A284853 (n + 1)

end A284853

/-! ## A284853.P4523177660892834618

`A026360(n+2)-(n+2)`
-/

namespace A284853.P4523177660892834618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026360 (n + 2) - (n + 2 : ℤ)

end

end A284853.P4523177660892834618

namespace A284853

/-- `A026360(n+2)-(n+2)` -/
def P4523177660892834618.Spec : Prop :=
  ∀ n, P4523177660892834618.a n = A284853 (n + 1)

end A284853

/-! ## A284853.P7068895685945742842

`record[(A285431(n+1)+1)*(n+1)]`
-/

namespace A284853.P7068895685945742842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A285431 (n + 1) + 1) * (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A284853.P7068895685945742842

namespace A284853

/-- `record[(A285431(n+1)+1)*(n+1)]` -/
def P7068895685945742842.Spec : Prop :=
  ∀ n, P7068895685945742842.a n = A284853 (n + 1)

end A284853

/-! ## A284853.P6989761074472890366

`A004277(A026367(n+1))`
-/

namespace A284853.P6989761074472890366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A026367 (n + 1)).toNat

end

end A284853.P6989761074472890366

namespace A284853

/-- `A004277(A026367(n+1))` -/
def P6989761074472890366.Spec : Prop :=
  ∀ n, P6989761074472890366.a n = A284853 (n + 1)

end A284853

/-! ## A284853.P14660035744369818271

`A004275(A026359(n+2))`
-/

namespace A284853.P14660035744369818271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A026359 (n + 2)).toNat

end

end A284853.P14660035744369818271

namespace A284853

/-- `A004275(A026359(n+2))` -/
def P14660035744369818271.Spec : Prop :=
  ∀ n, P14660035744369818271.a n = A284853 (n + 1)

end A284853

/-! ## A284853.P729617464038241222

`A284852(A284507(n+1))+1`
-/

namespace A284853.P729617464038241222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284852 (A284507 (n + 1)).toNat + 1

end

end A284853.P729617464038241222

namespace A284853

/-- `A284852(A284507(n+1))+1` -/
def P729617464038241222.Spec : Prop :=
  ∀ n, P729617464038241222.a n = A284853 (n + 1)

end A284853

/-! ## A284853.P2737324809203183006

`A284506(2*n+1)-Δ[n²]`
-/

namespace A284853.P2737324809203183006
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284506 (2 * n + 1) - ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A284853.P2737324809203183006

namespace A284853

/-- `A284506(2*n+1)-Δ[n²]` -/
def P2737324809203183006.Spec : Prop :=
  ∀ n, P2737324809203183006.a n = A284853 (n + 1)

end A284853

/-! ## A284853.P11179060262609246457

`A284773(A283964(n+1))-(n+1)`
-/

namespace A284853.P11179060262609246457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284773 (A283964 (n + 1)).toNat - (n + 1 : ℤ)

end

end A284853.P11179060262609246457

namespace A284853

/-- `A284773(A283964(n+1))-(n+1)` -/
def P11179060262609246457.Spec : Prop :=
  ∀ n, P11179060262609246457.a n = A284853 (n + 1)

end A284853

/-! ## A284853.P518198423763856307

`filter[n+1, A284851(#)]`
-/

namespace A284853.P518198423763856307
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A284851 (f1 j) = 1) n)

end

end A284853.P518198423763856307

namespace A284853

/-- `filter[n+1, A284851(#)]` -/
def P518198423763856307.Spec : Prop :=
  ∀ n, (P518198423763856307.a n : ℤ) = A284853 (n + 1)

end A284853

/-! ## A284853.P14970494041319820299

`eq[1, A284851(A028310(n))]`
-/

namespace A284853.P14970494041319820299
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284851 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A284853.P14970494041319820299

namespace A284853

/-- `eq[1, A284851(A028310(n))]` -/
def P14970494041319820299.Spec : Prop :=
  ∀ n, (P14970494041319820299.a n : ℤ) = A284853 (n + 1)

end A284853

/-!
# A284855: Array read by antidiagonals: T(n,k) = number of necklaces with n beads and k colors that are the same when turned over.

The programs for A284855, there is no canonical definition to state claims against.
-/

/-! ## A284855.P17158939073610855332

`A075195(n+1)-2*A293496(n+1)`
-/

namespace A284855.P17158939073610855332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075195 (n + 1) - 2 * A293496 (n + 1)

end

end A284855.P17158939073610855332

/-! ## A284855.P1596096426613933741

`A075195(n+1)-A005843(A293496(n+1))`
-/

namespace A284855.P1596096426613933741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075195 (n + 1) - A005843 (A293496 (n + 1)).toNat

end

end A284855.P1596096426613933741

/-! ## A284855.P6560621516945958928

`A319082(2*A014132(n+1)-n)-A005843(A293496(n+1))`
-/

namespace A284855.P6560621516945958928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319082 (2 * A014132 (n + 1) - (n : ℤ)).toNat - A005843 (A293496 (n + 1)).toNat

end

end A284855.P6560621516945958928

/-! ## A284855.P4900141928495036228

`and(A075195(n+1), A301925(A071945(n)))`
-/

namespace A284855.P4900141928495036228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A075195 (n + 1)) (A301925 (A071945 n).toNat)

end

end A284855.P4900141928495036228

/-! ## A284855.P14067330708425804629

`A134394(n+1)-A128407(A140692(2*(n+2)))`
-/

namespace A284855.P14067330708425804629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134394 (n + 1) - A128407 (A140692 (2 * (n + 2))).toNat

end

end A284855.P14067330708425804629

/-!
# A284856: Array read by antidiagonals: T(n,k) = number of aperiodic necklaces (Lyndon words) with n beads and k colors that are the same when turned over.

The programs for A284856, there is no canonical definition to state claims against.
-/

/-! ## A284856.P313876776196003315

`2*A276550(n+1)-A074650(n+1)`
-/

namespace A284856.P313876776196003315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A276550 (n + 1) - A074650 (n + 1)

end

end A284856.P313876776196003315

/-! ## A284856.P16545745537304480579

`2*A276550(n+1)-A143324(n+1)/A193738(n)`
-/

namespace A284856.P16545745537304480579
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * A276550 (n + 1) : ℚ) - (A143324 (n + 1) : ℚ) / (A193738 n : ℚ)

end

end A284856.P16545745537304480579

/-! ## A284856.P7113408997604289321

`2*A276550(n+1)-A143324(n+1)/(A002262(n)+1)`
-/

namespace A284856.P7113408997604289321
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * A276550 (n + 1) : ℚ) - (A143324 (n + 1) : ℚ) / (A002262 n + 1 : ℚ)

end

end A284856.P7113408997604289321

/-! ## A284856.P7847749628121827832

`2*A276550(n+1)-A143324(n+1)/A080511(n+1)`
-/

namespace A284856.P7847749628121827832
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * A276550 (n + 1) : ℚ) - (A143324 (n + 1) : ℚ) / (A080511 (n + 1) : ℚ)

end

end A284856.P7847749628121827832

/-! ## A284856.P13840740457823652594

`2*A276550(n+1)-A143324(n+1)/sqrt(A133819(n+1))`
-/

namespace A284856.P13840740457823652594
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (2 * A276550 (n + 1) : ℝ) - (A143324 (n + 1) : ℝ) / Real.sqrt (A133819 (n + 1) : ℝ)

end

end A284856.P13840740457823652594

/-! ## A284856.P17489761485631336826

`2*A276550(n+1)-A143324(n+1)/A004736(A038722(n+1))`
-/

namespace A284856.P17489761485631336826
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * A276550 (n + 1) : ℚ) - (A143324 (n + 1) : ℚ) / (A004736 (A038722 (n + 1)).toNat : ℚ)

end

end A284856.P17489761485631336826

/-! ## A284856.P3457095772520548003

`A005843(A276550(n+1))-A074650(n+1)`
-/

namespace A284856.P3457095772520548003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A276550 (n + 1)).toNat - A074650 (n + 1)

end

end A284856.P3457095772520548003

/-!
# A284858: Denominators of the exponential expansion of (3/(log(1+x)))*(1 - 1/(1+x)^(1/3)).

The programs for A284858, there is no canonical definition to state claims against.
-/

/-! ## A284858.P2443541146156501816

`lcm(n+1, A085961(A284863(n)))`
-/

namespace A284858.P2443541146156501816
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n + 1 : ℤ) (A085961 (A284863 n).toNat)

end

end A284858.P2443541146156501816

/-! ## A284858.P4579731084430858455

`A000027(A001316(n)*A284863(n))`
-/

namespace A284858.P4579731084430858455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A001316 n * A284863 n).toNat

end

end A284858.P4579731084430858455

/-! ## A284858.P10031900228090628025

`A000027(lcm(A001316(n), A284863(n)))`
-/

namespace A284858.P10031900228090628025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (Int.lcm (A001316 n) (A284863 n))

end

end A284858.P10031900228090628025

/-! ## A284858.P14250985815876239654

`lcm(A000265(A284863(n)), A002790(n))`
-/

namespace A284858.P14250985815876239654
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000265 (A284863 n).toNat) (A002790 n)

end

end A284858.P14250985815876239654

/-!
# A284859: Row sums of the Sheffer triangle (exp(x), exp(3*x)-1) given in A282629.

The programs for A284859, there is no canonical definition to state claims against.
-/

/-! ## A284859.P6062084736599422723

`∑[A003601(A215715(n))]`
-/

namespace A284859.P6062084736599422723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003601 (A215715 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A284859.P6062084736599422723

/-!
# A284860: Alternating row sums of the Sheffer triangle (exp(x), exp(3*x) - 1) given in A282629.

The programs for A284860, there is no canonical definition to state claims against.
-/

/-! ## A284860.P2381007657878234669

`A060637(∑[3*n]+C(n, 2))-C(3*n+1, 2)`
-/

namespace A284860.P2381007657878234669
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060637 (∑ j ∈ Finset.range (n + 1), f1 j + Nat.choose n 2) - (Nat.choose (3 * n + 1) 2 : ℤ)

end

end A284860.P2381007657878234669

/-!
# A284861: Triangle read by rows: T(n, k) = S2[3,1](n, k)*k! with the Sheffer triangle S2[3,1] = (exp(x), exp(3*x) -1) given in A282629.

The programs for A284861, there is no canonical definition to state claims against.
-/

/-! ## A284861.P18291251173754990176

`A233543(n)*A282629(n)`
-/

namespace A284861.P18291251173754990176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233543 n * A282629 n

end

end A284861.P18291251173754990176

/-! ## A284861.P17547137786985835656

`A002262(n)!*A282629(n)`
-/

namespace A284861.P17547137786985835656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A002262 n).toNat : ℤ) * A282629 n

end

end A284861.P17547137786985835656

/-! ## A284861.P17454276676236877117

`A163351(n)!*A282629(n)`
-/

namespace A284861.P17454276676236877117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A163351 n).toNat : ℤ) * A282629 n

end

end A284861.P17454276676236877117

/-! ## A284861.P16127316779464729807

`A025690(n+1)!*A282629(n)`
-/

namespace A284861.P16127316779464729807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A025690 (n + 1)).toNat : ℤ) * A282629 n

end

end A284861.P16127316779464729807

/-!
# A284863: Denominators of exponential expansion of (3/(2*log(1+x)))*(1 - 1/(1+x)^(2/3)).

The programs for A284863, there is no canonical definition to state claims against.
-/

/-! ## A284863.P17507535936956371714

`lcm(A099377(A000244(n)), A133846(n+1))`
-/

namespace A284863.P17507535936956371714
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A099377 (A000244 n).toNat) (A133846 (n + 1))

end

end A284863.P17507535936956371714

/-! ## A284863.P13054602325417550212

`A008289(3*(n+1))*A099377(A000244(n))`
-/

namespace A284863.P13054602325417550212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008289 (3 * (n + 1)) * A099377 (A000244 n).toNat

end

end A284863.P13054602325417550212

/-! ## A284863.P7353453235896704191

`A162742((n+1)*3^n)`
-/

namespace A284863.P7353453235896704191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162742 ((n + 1) * 3 ^ n)

end

end A284863.P7353453235896704191

/-! ## A284863.P922506036103504249

`A000265((n+1)*Δ[3^n])`
-/

namespace A284863.P922506036103504249
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 ((n + 1 : ℤ) * ((f1 (n + 1) : ℤ) - (f1 n : ℤ))).toNat

end

end A284863.P922506036103504249

/-!
# A284864: Row sums of Sheffer triangle S2[3,2] given by A225466.

The programs for A284864, there is no canonical definition to state claims against.
-/

/-! ## A284864.P711203688587056428

`A285375((n+3)*a(n-1))` with `a(0)=1`
-/

namespace A284864.P711203688587056428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A285375 ((n + 3 : ℤ) * a (n - 1)).toNat

end

end A284864.P711203688587056428

/-!
# A284865: Alternating row sums of the Sheffer triangle S2[3,2] given by A225466.

The programs for A284865, there is no canonical definition to state claims against.
-/

/-! ## A284865.P18424389837727374342

`A088004(A008542(n))-(3*n²-n)`
-/

namespace A284865.P18424389837727374342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088004 (A008542 n).toNat - ((3 * n ^ 2 : ℤ) - (n : ℤ))

end

end A284865.P18424389837727374342

/-!
# A284866: 

The programs for A284866, there is no canonical definition to state claims against.
-/

/-! ## A284866.P17304180696953667837

`A053089(n+1)*A078422(n+1)`
-/

namespace A284866.P17304180696953667837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053089 (n + 1) * A078422 (n + 1)

end

end A284866.P17304180696953667837

/-! ## A284866.P16283262532435764360

`p?[2*n+1]^record[A014963(n+2)]*A053089(n+1)`
-/

namespace A284866.P16283262532435764360
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℚ) ^ (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) : ℤ) * (A053089 (n + 1) : ℚ)

end

end A284866.P16283262532435764360

/-! ## A284866.P2059058122157050330

`A000040(n+2)^A000040(n+1)*A053089(n+1)`
-/

namespace A284866.P2059058122157050330
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000040 (n + 2) : ℚ) ^ (A000040 (n + 1) : ℤ) * (A053089 (n + 1) : ℚ)

end

end A284866.P2059058122157050330

/-!
# A284869: Number of n-step 2-dimensional closed self-avoiding paths on triangular lattice, reduced for symmetry, i.e., where rotations and reflections are not counted as distinct.

The programs for A284869, there is no canonical definition to state claims against.
-/

/-! ## A284869.P588476117569063306

`A057729(n+1)-A036639(A036640(n))`
-/

namespace A284869.P588476117569063306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057729 (n + 1) - A036639 (A036640 n).toNat

end

end A284869.P588476117569063306

/-! ## A284869.P14823419361688513952

`A057729(n+1)-A107846(A000105(n))`
-/

namespace A284869.P14823419361688513952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057729 (n + 1) - A107846 (A000105 n).toNat

end

end A284869.P14823419361688513952

/-! ## A284869.P9984880199990874246

`A057729(n+1)-A107846(A003239(n))`
-/

namespace A284869.P9984880199990874246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057729 (n + 1) - A107846 (A003239 n).toNat

end

end A284869.P9984880199990874246

/-! ## A284869.P12616341405927116621

`A057729(n+1)-A107846(A057513(n))`
-/

namespace A284869.P12616341405927116621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057729 (n + 1) - A107846 (A057513 n).toNat

end

end A284869.P12616341405927116621

/-! ## A284869.P2316582702686070043

`A057729(n+1)-A185284(A008810(n))`
-/

namespace A284869.P2316582702686070043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057729 (n + 1) - A185284 (A008810 n).toNat

end

end A284869.P2316582702686070043

/-!
# A284870: Expansion of Sum_{i>=1} i*x^i/(1 - x) * Product_{j=1..i} 1/(1 - x^j).

The programs for A284870, there is no canonical definition to state claims against.
-/

/-! ## A284870.P13865895414750504364

`A124920(n+1)-1`
-/

namespace A284870.P13865895414750504364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124920 (n + 1) - 1

end

end A284870.P13865895414750504364

/-! ## A284870.P17121667273987926196

`∑[A006128(n)]`
-/

namespace A284870.P17121667273987926196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006128 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A284870.P17121667273987926196

/-! ## A284870.P11876949508363081666

`∑[A211978(n)/2]`
-/

namespace A284870.P11876949508363081666
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A211978 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A284870.P11876949508363081666

/-! ## A284870.P13390870746544123056

`∑[A278355(n)/4]`
-/

namespace A284870.P13390870746544123056
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A278355 n : ℚ) / 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A284870.P13390870746544123056

/-! ## A284870.P17144035805802005013

`∑[A225596(n)-n]`
-/

namespace A284870.P17144035805802005013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225596 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A284870.P17144035805802005013

/-! ## A284870.P17666720917608508237

`∑[∑{d}[n, A085410(#)]]`
-/

namespace A284870.P17666720917608508237
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), A085410 d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A284870.P17666720917608508237

/-! ## A284870.P17552499701146965796

`A339011(n)+A096541(n)`
-/

namespace A284870.P17552499701146965796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339011 n + A096541 n

end

end A284870.P17552499701146965796

/-! ## A284870.P16146616877940183772

`∑[A093694(n)-A000041(n)]`
-/

namespace A284870.P16146616877940183772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093694 n - A000041 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A284870.P16146616877940183772

/-! ## A284870.P14867389559001932801

`∑[A093694(n)]-A000070(n)`
-/

namespace A284870.P14867389559001932801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093694 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A000070 n

end

end A284870.P14867389559001932801

/-! ## A284870.P10280841615792232986

`A339011(n+1)-A000070(n)`
-/

namespace A284870.P10280841615792232986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339011 (n + 1) - A000070 n

end

end A284870.P10280841615792232986

/-! ## A284870.P782056115532861458

`∑[A093694(n)-∑[A002865(n)]]`
-/

namespace A284870.P782056115532861458
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093694 n - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A284870.P782056115532861458

/-! ## A284870.P14103621489505602734

`∑[A093694(n)-A139582(n)/2]`
-/

namespace A284870.P14103621489505602734
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A093694 n : ℚ) - (A139582 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A284870.P14103621489505602734

/-! ## A284870.P6423932400958833893

`∑[∑[A138137(n+1)]-A138137(n+1)]`
-/

namespace A284870.P6423932400958833893
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138137 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A138137 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A284870.P6423932400958833893

/-! ## A284870.P12725484390270691086

`∑[A093694(n)-(A047967(n)+A000009(n))]`
-/

namespace A284870.P12725484390270691086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093694 n - (A047967 n + A000009 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A284870.P12725484390270691086

/-! ## A284870.P10719033006060908059

`∑[A093694(n)-(A295341(n)+A000726(n))]`
-/

namespace A284870.P10719033006060908059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093694 n - (A295341 n + A000726 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A284870.P10719033006060908059

/-! ## A284870.P6695804688314675503

`∑[A093694(n)-A035363(2*n)]`
-/

namespace A284870.P6695804688314675503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093694 n - A035363 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A284870.P6695804688314675503

/-! ## A284870.P13608048925850479400

`∑[A093694(n)-(A332281(n)+A332280(n))]`
-/

namespace A284870.P13608048925850479400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093694 n - (A332281 n + A332280 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A284870.P13608048925850479400

/-! ## A284870.P13262233611517388842

`∑[A093694(n)-(A332284(n)+A332283(n))]`
-/

namespace A284870.P13262233611517388842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093694 n - (A332284 n + A332283 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A284870.P13262233611517388842

/-! ## A284870.P6088636839146690831

`∑[A210485(∑[n]+n)]`
-/

namespace A284870.P6088636839146690831
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210485 (∑ j ∈ Finset.range (n + 1), f2 j + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A284870.P6088636839146690831

/-! ## A284870.P1641261791498933776

`∑[A256193(A000124(n))]-1`
-/

namespace A284870.P1641261791498933776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256193 (A000124 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A284870.P1641261791498933776

/-!
# A284871: Array read by antidiagonals: T(n,k) = number of primitive (aperiodic) reversible strings of length n using a maximum of k different symbols.

The programs for A284871, there is no canonical definition to state claims against.
-/

/-! ## A284871.P15370664544782897196

`(A284823(n+1)+A143324(n+1))/2`
-/

namespace A284871.P15370664544782897196
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A284823 (n + 1) + A143324 (n + 1) : ℚ) / 2

end

end A284871.P15370664544782897196

/-! ## A284871.P15875437888576359049

`A014682(A284823(n+1)+A143324(n+1))`
-/

namespace A284871.P15875437888576359049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A284823 (n + 1) + A143324 (n + 1)).toNat

end

end A284871.P15875437888576359049

/-! ## A284871.P5041560027138660587

`A014682(A284823(n+1)+A004736(n+1)*A143325(n+1))`
-/

namespace A284871.P5041560027138660587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A284823 (n + 1) + A004736 (n + 1) * A143325 (n + 1)).toNat

end

end A284871.P5041560027138660587

/-! ## A284871.P1045628943610096681

`A014682(A284823(n+1)+A074650(n+1)*A080818(n+1))`
-/

namespace A284871.P1045628943610096681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A284823 (n + 1) + A074650 (n + 1) * A080818 (n + 1)).toNat

end

end A284871.P1045628943610096681

/-! ## A284871.P9152910569926632742

`A014682(A284823(n+1)+(1-A057944(n)+n)*A074650(n+1))`
-/

namespace A284871.P9152910569926632742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A284823 (n + 1) + (1 - A057944 n + (n : ℤ)) * A074650 (n + 1)).toNat

end

end A284871.P9152910569926632742

/-! ## A284871.P5711970711548110887

`A004525(A284823(n+1)+A143324(n+1))`
-/

namespace A284871.P5711970711548110887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A284823 (n + 1) + A143324 (n + 1)).toNat

end

end A284871.P5711970711548110887

/-! ## A284871.P7210529281742428244

`A006370(A284823(n+1)+A143324(n+1))`
-/

namespace A284871.P7210529281742428244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006370 (A284823 (n + 1) + A143324 (n + 1)).toNat

end

end A284871.P7210529281742428244

/-! ## A284871.P2973897768589483940

`A025480(A284823(n+1)+A143324(n+1))`
-/

namespace A284871.P2973897768589483940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A284823 (n + 1) + A143324 (n + 1)).toNat

end

end A284871.P2973897768589483940

/-! ## A284871.P5543342850903147954

`A026741(A284823(n+1)+A143324(n+1))`
-/

namespace A284871.P5543342850903147954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A284823 (n + 1) + A143324 (n + 1)).toNat

end

end A284871.P5543342850903147954

/-! ## A284871.P16976185749682004208

`A029578(A284823(n+1)+A143324(n+1))`
-/

namespace A284871.P16976185749682004208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029578 (A284823 (n + 1) + A143324 (n + 1)).toNat

end

end A284871.P16976185749682004208

/-!
# A284873: Array read by antidiagonals: T(n,k) = number of double palindromes of length n using a maximum of k different symbols.

The programs for A284873, there is no canonical definition to state claims against.
-/

/-! ## A284873.P6935443291843790361

`A051128(n+1)-A173068(A059922(n))`
-/

namespace A284873.P6935443291843790361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051128 (n + 1) - A173068 (A059922 n).toNat

end

end A284873.P6935443291843790361

/-! ## A284873.P16809064879715625422

`A055208(n+1)-A173068(A059922(n))`
-/

namespace A284873.P16809064879715625422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055208 (n + 1) - A173068 (A059922 n).toNat

end

end A284873.P16809064879715625422

/-! ## A284873.P14379306446692951537

`A051128(n+1)-A166352(A174546(n))`
-/

namespace A284873.P14379306446692951537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051128 (n + 1) - A166352 (A174546 n).toNat

end

end A284873.P14379306446692951537

/-! ## A284873.P1420860846820899138

`A051128(n+1)-A173068(A185213(n+1))`
-/

namespace A284873.P1420860846820899138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051128 (n + 1) - A173068 (A185213 (n + 1)).toNat

end

end A284873.P1420860846820899138

/-!
# A284875: Values of m for which the complete bipartite graph K_{m,m} has a unique minimal coprime labeling.

The programs for A284875, there is no canonical definition to state claims against.
-/

/-! ## A284875.P3288599218660504254

`eq[1, A213806(n+1)]+1`
-/

namespace A284875.P3288599218660504254
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213806 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A284875.P3288599218660504254

/-! ## A284875.P16705556352093743914

`record[A000027(n+1)/A213806(n+1)]`
-/

namespace A284875.P16705556352093743914
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000027 (n + 1) : ℚ) / (A213806 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A284875.P16705556352093743914

/-! ## A284875.P3764835268925711151

`record[A089247(n+1)/A213806(n+1)]`
-/

namespace A284875.P3764835268925711151
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A089247 (n + 1) : ℚ) / (A213806 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A284875.P3764835268925711151

/-! ## A284875.P3693774095338452623

`lt[A213806(n+1), A152157(n)+1]+1`
-/

namespace A284875.P3693774095338452623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213806 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152157 n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A284875.P3693774095338452623

/-! ## A284875.P8660218091782677758

`eq[A057427(n), A213806(A028310(n))]`
-/

namespace A284875.P8660218091782677758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213806 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A284875.P8660218091782677758

/-!
# A284878: Fixed point of the morphism 0 -> 01, 1 -> 0110.

The programs for A284878, the canonical program `A284878.P13204157183764191036` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A284878 has offset 1).

The definition of A284878 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A284878.P854034558486995291

`A284882(n+1)%2`
-/

namespace A284878.P854034558486995291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A284882 (n + 1)) 2

end

end A284878.P854034558486995291

namespace A284878

/-- `A284882(n+1)%2` -/
def P854034558486995291.Spec : Prop :=
  ∀ n, P854034558486995291.a n = A284878 (n + 1)

end A284878

/-! ## A284878.P13204157183764191036

`char[A284880(n+1)-1]`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A284878

/-- `char[A284880(n+1)-1]` -/
def P13204157183764191036.Spec : Prop :=
  ∀ n, (P13204157183764191036.a n : ℤ) = A284878 (n + 1)

theorem P13204157183764191036.correct : P13204157183764191036.Spec := by
  intro n
  simp only [A284878, Nat.add_sub_cancel]

end A284878

/-! ## A284878.P16258714967548742080

`and(A057427(n), A284882(n+1))`
-/

namespace A284878.P16258714967548742080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A057427 n) (A284882 (n + 1))

end

end A284878.P16258714967548742080

namespace A284878

/-- `and(A057427(n), A284882(n+1))` -/
def P16258714967548742080.Spec : Prop :=
  ∀ n, P16258714967548742080.a n = A284878 (n + 1)

end A284878

/-! ## A284878.P18118275957962542530

`and(A097325(n), A284882(n+1))`
-/

namespace A284878.P18118275957962542530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A097325 n) (A284882 (n + 1))

end

end A284878.P18118275957962542530

namespace A284878

/-- `and(A097325(n), A284882(n+1))` -/
def P18118275957962542530.Spec : Prop :=
  ∀ n, P18118275957962542530.a n = A284878 (n + 1)

end A284878

/-! ## A284878.P16296654898907268310

`and(A168185(n), A284882(n+1))`
-/

namespace A284878.P16296654898907268310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A168185 n) (A284882 (n + 1))

end

end A284878.P16296654898907268310

namespace A284878

/-- `and(A168185(n), A284882(n+1))` -/
def P16296654898907268310.Spec : Prop :=
  ∀ n, P16296654898907268310.a n = A284878 (n + 1)

end A284878

/-! ## A284878.P13665663239413897761

`and(A267813(n), A284882(n+1))`
-/

namespace A284878.P13665663239413897761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A267813 n) (A284882 (n + 1))

end

end A284878.P13665663239413897761

namespace A284878

/-- `and(A267813(n), A284882(n+1))` -/
def P13665663239413897761.Spec : Prop :=
  ∀ n, P13665663239413897761.a n = A284878 (n + 1)

end A284878

/-! ## A284878.P8658633691478230537

`and(A284882(n+1), A294619(n))`
-/

namespace A284878.P8658633691478230537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A284882 (n + 1)) (A294619 n)

end

end A284878.P8658633691478230537

namespace A284878

/-- `and(A284882(n+1), A294619(n))` -/
def P8658633691478230537.Spec : Prop :=
  ∀ n, P8658633691478230537.a n = A284878 (n + 1)

end A284878

/-! ## A284878.P6873699068165123133

`and(A284882(n+1), A316829(n))`
-/

namespace A284878.P6873699068165123133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A284882 (n + 1)) (A316829 n)

end

end A284878.P6873699068165123133

namespace A284878

/-- `and(A284882(n+1), A316829(n))` -/
def P6873699068165123133.Spec : Prop :=
  ∀ n, P6873699068165123133.a n = A284878 (n + 1)

end A284878

/-! ## A284878.P14689408651556202497

`and(A284882(n+1), A329684(n))`
-/

namespace A284878.P14689408651556202497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A284882 (n + 1)) (A329684 n)

end

end A284878.P14689408651556202497

namespace A284878

/-- `and(A284882(n+1), A329684(n))` -/
def P14689408651556202497.Spec : Prop :=
  ∀ n, P14689408651556202497.a n = A284878 (n + 1)

end A284878

/-! ## A284878.P8572508794460168271

`A284882(n+1)-(A284884(n+1)+1)`
-/

namespace A284878.P8572508794460168271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284882 (n + 1) - (A284884 (n + 1) + 1)

end

end A284878.P8572508794460168271

namespace A284878

/-- `A284882(n+1)-(A284884(n+1)+1)` -/
def P8572508794460168271.Spec : Prop :=
  ∀ n, P8572508794460168271.a n = A284878 (n + 1)

end A284878

/-! ## A284878.P14269766832589154501

`A284882(n+1)-2*A189629(n+1)`
-/

namespace A284878.P14269766832589154501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284882 (n + 1) - 2 * A189629 (n + 1)

end

end A284878.P14269766832589154501

namespace A284878

/-- `A284882(n+1)-2*A189629(n+1)` -/
def P14269766832589154501.Spec : Prop :=
  ∀ n, P14269766832589154501.a n = A284878 (n + 1)

end A284878

/-! ## A284878.P15325385379908905123

`A284775(A284882(n+1)-A284884(n+1))`
-/

namespace A284878.P15325385379908905123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284775 (A284882 (n + 1) - A284884 (n + 1)).toNat

end

end A284878.P15325385379908905123

namespace A284878

/-- `A284775(A284882(n+1)-A284884(n+1))` -/
def P15325385379908905123.Spec : Prop :=
  ∀ n, P15325385379908905123.a n = A284878 (n + 1)

end A284878

/-! ## A284878.P12112085221528157310

`log2(Δ[A189629(n+1)])`
-/

namespace A284878.P12112085221528157310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189629 (n + 1)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (f1 (n + 1) - f1 n : ℝ)

end

end A284878.P12112085221528157310

namespace A284878

/-- `log2(Δ[A189629(n+1)])` -/
def P12112085221528157310.Spec : Prop :=
  ∀ n, P12112085221528157310.a n = (A284878 (n + 1) : ℝ)

end A284878

/-! ## A284878.P14754852821679906242

`A001221(Δ[A284884(n+1)]-1)`
-/

namespace A284878.P14754852821679906242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284884 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (f1 (n + 1) - f1 n - 1).toNat

end

end A284878.P14754852821679906242

namespace A284878

/-- `A001221(Δ[A284884(n+1)]-1)` -/
def P14754852821679906242.Spec : Prop :=
  ∀ n, P14754852821679906242.a n = A284878 (n + 1)

end A284878

/-! ## A284878.P5597896641138667719

`A082460(Δ[A284884(n+1)]-1)`
-/

namespace A284878.P5597896641138667719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284884 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082460 (f1 (n + 1) - f1 n - 1).toNat

end

end A284878.P5597896641138667719

namespace A284878

/-- `A082460(Δ[A284884(n+1)]-1)` -/
def P5597896641138667719.Spec : Prop :=
  ∀ n, P5597896641138667719.a n = A284878 (n + 1)

end A284878

/-! ## A284878.P2629163988223150988

`A083479(Δ[A284884(n+1)])-1`
-/

namespace A284878.P2629163988223150988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284884 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083479 (f1 (n + 1) - f1 n).toNat - 1

end

end A284878.P2629163988223150988

namespace A284878

/-- `A083479(Δ[A284884(n+1)])-1` -/
def P2629163988223150988.Spec : Prop :=
  ∀ n, P2629163988223150988.a n = A284878 (n + 1)

end A284878

/-! ## A284878.P12957832858645823491

`A128227(Δ[A284884(n+1)])-1`
-/

namespace A284878.P12957832858645823491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284884 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128227 (f1 (n + 1) - f1 n).toNat - 1

end

end A284878.P12957832858645823491

namespace A284878

/-- `A128227(Δ[A284884(n+1)])-1` -/
def P12957832858645823491.Spec : Prop :=
  ∀ n, P12957832858645823491.a n = A284878 (n + 1)

end A284878

/-! ## A284878.P12260586915705582629

`A001221(Δ[A284884(n+1)/2])`
-/

namespace A284878.P12260586915705582629
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A284884 (n + 1) : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (SequenceMachineLib.roundAway (f1 (n + 1) - f1 n)).toNat

end

end A284878.P12260586915705582629

namespace A284878

/-- `A001221(Δ[A284884(n+1)/2])` -/
def P12260586915705582629.Spec : Prop :=
  ∀ n, P12260586915705582629.a n = A284878 (n + 1)

end A284878

/-!
# A284879: Positions of 0 in A284878; complement of A284880.

The programs for A284879, the canonical program `A284879.P577505175711310991` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A284879 has offset 1).

The definition of A284879 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A284879.P577505175711310991

`A189628(n+1)+Δ[n²]`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A284879

/-- `A189628(n+1)+Δ[n²]` -/
def P577505175711310991.Spec : Prop :=
  ∀ n, P577505175711310991.a n = A284879 (n + 1)

theorem P577505175711310991.correct : P577505175711310991.Spec := by
  intro n
  simp only [A284879, Nat.add_sub_cancel]

end A284879

/-! ## A284879.P6757290309772348311

`A287516(n+1)!+2*n`
-/

namespace A284879.P6757290309772348311
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A287516 (n + 1)).toNat + 2 * n

end

end A284879.P6757290309772348311

namespace A284879

/-- `A287516(n+1)!+2*n` -/
def P6757290309772348311.Spec : Prop :=
  ∀ n, (P6757290309772348311.a n : ℤ) = A284879 (n + 1)

end A284879

/-! ## A284879.P13268147180314947022

`record[xor(3, n)]-A284880(n+1)`
-/

namespace A284879.P13268147180314947022
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℤ) - A284880 (n + 1)

end

end A284879.P13268147180314947022

namespace A284879

/-- `record[xor(3, n)]-A284880(n+1)` -/
def P13268147180314947022.Spec : Prop :=
  ∀ n, P13268147180314947022.a n = A284879 (n + 1)

end A284879

/-! ## A284879.P10450464855903209118

`C(A287520(n+1), 2)+2*n+1`
-/

namespace A284879.P10450464855903209118
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A287520 (n + 1)).toNat 2 + (2 * n + 1)

end

end A284879.P10450464855903209118

namespace A284879

/-- `C(A287520(n+1), 2)+2*n+1` -/
def P10450464855903209118.Spec : Prop :=
  ∀ n, (P10450464855903209118.a n : ℤ) = A284879 (n + 1)

end A284879

/-! ## A284879.P9415964561359666773

`A016897(n)-A189630(n+1)`
-/

namespace A284879.P9415964561359666773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016897 n - A189630 (n + 1)

end

end A284879.P9415964561359666773

namespace A284879

/-- `A016897(n)-A189630(n+1)` -/
def P9415964561359666773.Spec : Prop :=
  ∀ n, P9415964561359666773.a n = A284879 (n + 1)

end A284879

/-! ## A284879.P1786721730759108536

`A004767(n)-A284880(n+1)`
-/

namespace A284879.P1786721730759108536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004767 n - A284880 (n + 1)

end

end A284879.P1786721730759108536

namespace A284879

/-- `A004767(n)-A284880(n+1)` -/
def P1786721730759108536.Spec : Prop :=
  ∀ n, P1786721730759108536.a n = A284879 (n + 1)

end A284879

/-! ## A284879.P6202154986365269982

`A189628(n+1)+A005843(n)+1`
-/

namespace A284879.P6202154986365269982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189628 (n + 1) + A005843 n + 1

end

end A284879.P6202154986365269982

namespace A284879

/-- `A189628(n+1)+A005843(n)+1` -/
def P6202154986365269982.Spec : Prop :=
  ∀ n, P6202154986365269982.a n = A284879 (n + 1)

end A284879

/-! ## A284879.P18000038827304745306

`xor(A088837(n+1), A284880(n+1))`
-/

namespace A284879.P18000038827304745306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A088837 (n + 1)) (A284880 (n + 1))

end

end A284879.P18000038827304745306

namespace A284879

/-- `xor(A088837(n+1), A284880(n+1))` -/
def P18000038827304745306.Spec : Prop :=
  ∀ n, P18000038827304745306.a n = A284879 (n + 1)

end A284879

/-! ## A284879.P11241214106567417524

`floor(A284914(2*(n+1))/2)`
-/

namespace A284879.P11241214106567417524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A284914 (2 * (n + 1)) : ℚ) / 2⌋

end

end A284879.P11241214106567417524

namespace A284879

/-- `floor(A284914(2*(n+1))/2)` -/
def P11241214106567417524.Spec : Prop :=
  ∀ n, P11241214106567417524.a n = A284879 (n + 1)

end A284879

/-! ## A284879.P16501870140299380244

`floor(A287441(2*(n+1))/3)`
-/

namespace A284879.P16501870140299380244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A287441 (2 * (n + 1)) : ℚ) / 3⌋

end

end A284879.P16501870140299380244

namespace A284879

/-- `floor(A287441(2*(n+1))/3)` -/
def P16501870140299380244.Spec : Prop :=
  ∀ n, P16501870140299380244.a n = A284879 (n + 1)

end A284879

/-! ## A284879.P12257867526555311210

`ceil(A284884(2*(n+1))/3)`
-/

namespace A284879.P12257867526555311210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A284884 (2 * (n + 1)) : ℚ) / 3⌉

end

end A284879.P12257867526555311210

namespace A284879

/-- `ceil(A284884(2*(n+1))/3)` -/
def P12257867526555311210.Spec : Prop :=
  ∀ n, P12257867526555311210.a n = A284879 (n + 1)

end A284879

/-! ## A284879.P9091662013399890899

`A189629(2*(n+1))-(n+1)`
-/

namespace A284879.P9091662013399890899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189629 (2 * (n + 1)) - (n + 1 : ℤ)

end

end A284879.P9091662013399890899

namespace A284879

/-- `A189629(2*(n+1))-(n+1)` -/
def P9091662013399890899.Spec : Prop :=
  ∀ n, P9091662013399890899.a n = A284879 (n + 1)

end A284879

/-! ## A284879.P11756312226826567241

`A189632(2*(n+1))+Δ[n²]`
-/

namespace A284879.P11756312226826567241
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189632 (2 * (n + 1)) + ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A284879.P11756312226826567241

namespace A284879

/-- `A189632(2*(n+1))+Δ[n²]` -/
def P11756312226826567241.Spec : Prop :=
  ∀ n, P11756312226826567241.a n = A284879 (n + 1)

end A284879

/-! ## A284879.P9992220921561554513

`A284878(2*n+1)+Δ[n²]`
-/

namespace A284879.P9992220921561554513
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284878 (2 * n + 1) + ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A284879.P9992220921561554513

namespace A284879

/-- `A284878(2*n+1)+Δ[n²]` -/
def P9992220921561554513.Spec : Prop :=
  ∀ n, P9992220921561554513.a n = A284879 (n + 1)

end A284879

/-! ## A284879.P2624705248350586739

`2*(n+1)-A189727(2*(n+1))`
-/

namespace A284879.P2624705248350586739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) - A189727 (2 * (n + 1))

end

end A284879.P2624705248350586739

namespace A284879

/-- `2*(n+1)-A189727(2*(n+1))` -/
def P2624705248350586739.Spec : Prop :=
  ∀ n, P2624705248350586739.a n = A284879 (n + 1)

end A284879

/-! ## A284879.P4217906757800743742

`A284882(2*n+1)-(3*n+1+n)`
-/

namespace A284879.P4217906757800743742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284882 (2 * n + 1) - (3 * n + 1 + n : ℤ)

end

end A284879.P4217906757800743742

namespace A284879

/-- `A284882(2*n+1)-(3*n+1+n)` -/
def P4217906757800743742.Spec : Prop :=
  ∀ n, P4217906757800743742.a n = A284879 (n + 1)

end A284879

/-! ## A284879.P17037840414808469939

`A284883(2*(n+1))%3+1+n+n`
-/

namespace A284879.P17037840414808469939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A284883 (2 * (n + 1))) 3 + 1 + (n : ℤ) + (n : ℤ)

end

end A284879.P17037840414808469939

namespace A284879

/-- `A284883(2*(n+1))%3+1+n+n` -/
def P17037840414808469939.Spec : Prop :=
  ∀ n, P17037840414808469939.a n = A284879 (n + 1)

end A284879

/-! ## A284879.P13254778678063829359

`A014681(A284880(n+1))`
-/

namespace A284879.P13254778678063829359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (A284880 (n + 1)).toNat

end

end A284879.P13254778678063829359

namespace A284879

/-- `A014681(A284880(n+1))` -/
def P13254778678063829359.Spec : Prop :=
  ∀ n, P13254778678063829359.a n = A284879 (n + 1)

end A284879

/-!
# A284880: Positions of 1 in A284878; complement of A284879.

The programs for A284880, the canonical program `A284880.P8602811279724322610` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A284880 has offset 1).

The definition of A284880 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A284880.P8602811279724322610

`A189630(n+1)-(n+1)`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A284880

/-- `A189630(n+1)-(n+1)` -/
def P8602811279724322610.Spec : Prop :=
  ∀ n, P8602811279724322610.a n = A284880 (n + 1)

theorem P8602811279724322610.correct : P8602811279724322610.Spec := by
  intro n
  simp only [A284880, Nat.add_sub_cancel]

end A284880

/-! ## A284880.P13959472653495787145

`2*(n+1)-A189628(n+1)`
-/

namespace A284880.P13959472653495787145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) - A189628 (n + 1)

end

end A284880.P13959472653495787145

namespace A284880

/-- `2*(n+1)-A189628(n+1)` -/
def P13959472653495787145.Spec : Prop :=
  ∀ n, P13959472653495787145.a n = A284880 (n + 1)

end A284880

/-! ## A284880.P2573193380917666281

`A004767(n)-A284879(n+1)`
-/

namespace A284880.P2573193380917666281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004767 n - A284879 (n + 1)

end

end A284880.P2573193380917666281

namespace A284880

/-- `A004767(n)-A284879(n+1)` -/
def P2573193380917666281.Spec : Prop :=
  ∀ n, P2573193380917666281.a n = A284880 (n + 1)

end A284880

/-! ## A284880.P8131738540884864942

`A005843(n)+2-A189628(n+1)`
-/

namespace A284880.P8131738540884864942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n + (2 - A189628 (n + 1))

end

end A284880.P8131738540884864942

namespace A284880

/-- `A005843(n)+2-A189628(n+1)` -/
def P8131738540884864942.Spec : Prop :=
  ∀ n, P8131738540884864942.a n = A284880 (n + 1)

end A284880

/-! ## A284880.P3767626037826411576

`xor(A088837(n+1), A284879(n+1))`
-/

namespace A284880.P3767626037826411576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A088837 (n + 1)) (A284879 (n + 1))

end

end A284880.P3767626037826411576

namespace A284880

/-- `xor(A088837(n+1), A284879(n+1))` -/
def P3767626037826411576.Spec : Prop :=
  ∀ n, P3767626037826411576.a n = A284880 (n + 1)

end A284880

/-! ## A284880.P146624342520083131

`A189664(n+1)+A285306(n+1)-A189628(n+1)`
-/

namespace A284880.P146624342520083131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189664 (n + 1) + (A285306 (n + 1) - A189628 (n + 1))

end

end A284880.P146624342520083131

namespace A284880

/-- `A189664(n+1)+A285306(n+1)-A189628(n+1)` -/
def P146624342520083131.Spec : Prop :=
  ∀ n, P146624342520083131.a n = A284880 (n + 1)

end A284880

/-! ## A284880.P10760827380226403824

`A283234(n+1)-(A283233(n+1)+A189628(n+1))`
-/

namespace A284880.P10760827380226403824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283234 (n + 1) - (A283233 (n + 1) + A189628 (n + 1))

end

end A284880.P10760827380226403824

namespace A284880

/-- `A283234(n+1)-(A283233(n+1)+A189628(n+1))` -/
def P10760827380226403824.Spec : Prop :=
  ∀ n, P10760827380226403824.a n = A284880 (n + 1)

end A284880

/-! ## A284880.P10815645194523205492

`A285346(n+1)-(A189668(n+2)+A189628(n+1))`
-/

namespace A284880.P10815645194523205492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285346 (n + 1) - (A189668 (n + 2) + A189628 (n + 1))

end

end A284880.P10815645194523205492

namespace A284880

/-- `A285346(n+1)-(A189668(n+2)+A189628(n+1))` -/
def P10815645194523205492.Spec : Prop :=
  ∀ n, P10815645194523205492.a n = A284880 (n + 1)

end A284880

/-! ## A284880.P373389528737600778

`A285347(n+2)-(A285351(n+1)+A189628(n+1))`
-/

namespace A284880.P373389528737600778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285347 (n + 2) - (A285351 (n + 1) + A189628 (n + 1))

end

end A284880.P373389528737600778

namespace A284880

/-- `A285347(n+2)-(A285351(n+1)+A189628(n+1))` -/
def P373389528737600778.Spec : Prop :=
  ∀ n, P373389528737600778.a n = A284880 (n + 1)

end A284880

/-! ## A284880.P2944017612683705246

`filter[n+1, A284878(#)]`
-/

namespace A284880.P2944017612683705246
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A284878 (f1 j) = 1) n)

end

end A284880.P2944017612683705246

namespace A284880

/-- `filter[n+1, A284878(#)]` -/
def P2944017612683705246.Spec : Prop :=
  ∀ n, (P2944017612683705246.a n : ℤ) = A284880 (n + 1)

end A284880

/-! ## A284880.P11444088515313031565

`A284885(Δ[n²])-n`
-/

namespace A284880.P11444088515313031565
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284885 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - (n : ℤ)

end

end A284880.P11444088515313031565

namespace A284880

/-- `A284885(Δ[n²])-n` -/
def P11444088515313031565.Spec : Prop :=
  ∀ n, P11444088515313031565.a n = A284880 (n + 1)

end A284880

/-! ## A284880.P16360532380773115666

`floor(A189634(2*(n+1))/3)`
-/

namespace A284880.P16360532380773115666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A189634 (2 * (n + 1)) : ℚ) / 3⌋

end

end A284880.P16360532380773115666

namespace A284880

/-- `floor(A189634(2*(n+1))/3)` -/
def P16360532380773115666.Spec : Prop :=
  ∀ n, P16360532380773115666.a n = A284880 (n + 1)

end A284880

/-! ## A284880.P4876775855886395876

`ceil(A284883(2*n+1)/3)`
-/

namespace A284880.P4876775855886395876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A284883 (2 * n + 1) : ℚ) / 3⌉

end

end A284880.P4876775855886395876

namespace A284880

/-- `ceil(A284883(2*n+1)/3)` -/
def P4876775855886395876.Spec : Prop :=
  ∀ n, P4876775855886395876.a n = A284880 (n + 1)

end A284880

/-! ## A284880.P3369422586866694503

`record[2*A284881(n+1)+n]`
-/

namespace A284880.P3369422586866694503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A284881 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A284880.P3369422586866694503

namespace A284880

/-- `record[2*A284881(n+1)+n]` -/
def P3369422586866694503.Spec : Prop :=
  ∀ n, P3369422586866694503.a n = A284880 (n + 1)

end A284880

/-! ## A284880.P12638478592235390869

`A189727(2*(n+1))+Δ[n²]`
-/

namespace A284880.P12638478592235390869
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189727 (2 * (n + 1)) + ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A284880.P12638478592235390869

namespace A284880

/-- `A189727(2*(n+1))+Δ[n²]` -/
def P12638478592235390869.Spec : Prop :=
  ∀ n, P12638478592235390869.a n = A284880 (n + 1)

end A284880

/-! ## A284880.P10828986160264095263

`A284878(2*(n+1))+Δ[n²]`
-/

namespace A284880.P10828986160264095263
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284878 (2 * (n + 1)) + ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A284880.P10828986160264095263

namespace A284880

/-- `A284878(2*(n+1))+Δ[n²]` -/
def P10828986160264095263.Spec : Prop :=
  ∀ n, P10828986160264095263.a n = A284880 (n + 1)

end A284880

/-!
# A284881: Difference sequence of A284878.

The programs for A284881, the canonical program `A284881.P16258864461448778512` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A284881 has offset 1).

The definition of A284881 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A284881.P16258864461448778512

`Δ[A284878(n+1)+n]-1`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A284881

/-- `Δ[A284878(n+1)+n]-1` -/
def P16258864461448778512.Spec : Prop :=
  ∀ n, P16258864461448778512.a n = A284881 (n + 1)

theorem P16258864461448778512.correct : P16258864461448778512.Spec := by
  intro n
  simp only [A284881, Nat.add_sub_cancel]

end A284881

/-! ## A284881.P10045426975255023226

`A284878(n+2)-A284878(n+1)`
-/

namespace A284881.P10045426975255023226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284878 (n + 2) - A284878 (n + 1)

end

end A284881.P10045426975255023226

namespace A284881

/-- `A284878(n+2)-A284878(n+1)` -/
def P10045426975255023226.Spec : Prop :=
  ∀ n, P10045426975255023226.a n = A284881 (n + 1)

theorem P10045426975255023226.correct : P10045426975255023226.Spec := by
  intro n
  simp only [A284881, Nat.add_sub_cancel, A284881.P10045426975255023226.a, A284881.P16258864461448778512.f1, A284881.P16258864461448778512.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A284881

/-! ## A284881.P3838923303391936070

`Δ[A189628(A014682(n)+1)]`
-/

namespace A284881.P3838923303391936070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189628 (A014682 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A284881.P3838923303391936070

namespace A284881

/-- `Δ[A189628(A014682(n)+1)]` -/
def P3838923303391936070.Spec : Prop :=
  ∀ n, P3838923303391936070.a n = A284881 (n + 1)

end A284881

/-! ## A284881.P249509446487430239

`Δ[A189628(A064455(n+1))]`
-/

namespace A284881.P249509446487430239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189628 (A064455 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A284881.P249509446487430239

namespace A284881

/-- `Δ[A189628(A064455(n+1))]` -/
def P249509446487430239.Spec : Prop :=
  ∀ n, P249509446487430239.a n = A284881 (n + 1)

end A284881

/-! ## A284881.P6755516642319942565

`Δ[A010892(A284885(n+1))²]`
-/

namespace A284881.P6755516642319942565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010892 (A284885 (n + 1)).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A284881.P6755516642319942565

namespace A284881

/-- `Δ[A010892(A284885(n+1))²]` -/
def P6755516642319942565.Spec : Prop :=
  ∀ n, P6755516642319942565.a n = A284881 (n + 1)

end A284881

/-!
# A284882: Positions of -1 in A284881.

The programs for A284882, the canonical program `A284882.P13401279417778518260` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A284882 has offset 1).

The definition of A284882 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A284882.P13401279417778518260

`A284878(n+1)+2*A189629(n+1)`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A284882

/-- `A284878(n+1)+2*A189629(n+1)` -/
def P13401279417778518260.Spec : Prop :=
  ∀ n, P13401279417778518260.a n = A284882 (n + 1)

theorem P13401279417778518260.correct : P13401279417778518260.Spec := by
  intro n
  simp only [A284882, Nat.add_sub_cancel]

end A284882

/-! ## A284882.P1565351768572656328

`A284884(n+1)+Δ[A189629(n+1)]`
-/

namespace A284882.P1565351768572656328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189629 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284884 (n + 1) + (f1 (n + 1) - f1 n)

end

end A284882.P1565351768572656328

namespace A284882

/-- `A284884(n+1)+Δ[A189629(n+1)]` -/
def P1565351768572656328.Spec : Prop :=
  ∀ n, P1565351768572656328.a n = A284882 (n + 1)

end A284882

/-! ## A284882.P12997058940099692731

`(A284884(n+2)+A284884(n+1))/2`
-/

namespace A284882.P12997058940099692731
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A284884 (n + 2) + A284884 (n + 1) : ℚ) / 2

end

end A284882.P12997058940099692731

namespace A284882

/-- `(A284884(n+2)+A284884(n+1))/2` -/
def P12997058940099692731.Spec : Prop :=
  ∀ n, P12997058940099692731.a n = (A284882 (n + 1) : ℚ)

end A284882

/-! ## A284882.P17494528326557807771

`A284884(n+1)+A083479(Δ[A284884(n+1)])`
-/

namespace A284882.P17494528326557807771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284884 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284884 (n + 1) + A083479 (f1 (n + 1) - f1 n).toNat

end

end A284882.P17494528326557807771

namespace A284882

/-- `A284884(n+1)+A083479(Δ[A284884(n+1)])` -/
def P17494528326557807771.Spec : Prop :=
  ∀ n, P17494528326557807771.a n = A284882 (n + 1)

end A284882

/-! ## A284882.P244456897559100653

`A284884(n+1)+A128227(Δ[A284884(n+1)])`
-/

namespace A284882.P244456897559100653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284884 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284884 (n + 1) + A128227 (f1 (n + 1) - f1 n).toNat

end

end A284882.P244456897559100653

namespace A284882

/-- `A284884(n+1)+A128227(Δ[A284884(n+1)])` -/
def P244456897559100653.Spec : Prop :=
  ∀ n, P244456897559100653.a n = A284882 (n + 1)

end A284882

/-! ## A284882.P17711838786060761759

`A284884(n+1)+A082460(Δ[A284884(n+1)]+1)`
-/

namespace A284882.P17711838786060761759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284884 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284884 (n + 1) + A082460 (f1 (n + 1) - f1 n + 1).toNat

end

end A284882.P17711838786060761759

namespace A284882

/-- `A284884(n+1)+A082460(Δ[A284884(n+1)]+1)` -/
def P17711838786060761759.Spec : Prop :=
  ∀ n, P17711838786060761759.a n = A284882 (n + 1)

end A284882

/-! ## A284882.P13931678775764737071

`A284880(A189629(n+2)-1)`
-/

namespace A284882.P13931678775764737071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284880 (A189629 (n + 2) - 1).toNat

end

end A284882.P13931678775764737071

namespace A284882

/-- `A284880(A189629(n+2)-1)` -/
def P13931678775764737071.Spec : Prop :=
  ∀ n, P13931678775764737071.a n = A284882 (n + 1)

end A284882

/-! ## A284882.P13097951713276338777

`A284880(∑[A284878(n+1)+1])`
-/

namespace A284882.P13097951713276338777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284878 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284880 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A284882.P13097951713276338777

namespace A284882

/-- `A284880(∑[A284878(n+1)+1])` -/
def P13097951713276338777.Spec : Prop :=
  ∀ n, P13097951713276338777.a n = A284882 (n + 1)

end A284882

/-! ## A284882.P12579541231528179750

`A284880(A189629(n+1))+A284878(n+1)`
-/

namespace A284882.P12579541231528179750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284880 (A189629 (n + 1)).toNat + A284878 (n + 1)

end

end A284882.P12579541231528179750

namespace A284882

/-- `A284880(A189629(n+1))+A284878(n+1)` -/
def P12579541231528179750.Spec : Prop :=
  ∀ n, P12579541231528179750.a n = A284882 (n + 1)

end A284882

/-! ## A284882.P8244766342247342297

`A284879(A189629(n+1)+1)-1`
-/

namespace A284882.P8244766342247342297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284879 (A189629 (n + 1) + 1).toNat - 1

end

end A284882.P8244766342247342297

namespace A284882

/-- `A284879(A189629(n+1)+1)-1` -/
def P8244766342247342297.Spec : Prop :=
  ∀ n, P8244766342247342297.a n = A284882 (n + 1)

end A284882

/-! ## A284882.P17675255446187160631

`A284880(lt[n*A189628(n+1), n])`
-/

namespace A284882.P17675255446187160631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A189628 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284880 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A284882.P17675255446187160631

namespace A284882

/-- `A284880(lt[n*A189628(n+1), n])` -/
def P17675255446187160631.Spec : Prop :=
  ∀ n, P17675255446187160631.a n = A284882 (n + 1)

end A284882

/-! ## A284882.P6360747620943305616

`A284880(lt[A189628(n+1), A057427(n)])`
-/

namespace A284882.P6360747620943305616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189628 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284880 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A284882.P6360747620943305616

namespace A284882

/-- `A284880(lt[A189628(n+1), A057427(n)])` -/
def P6360747620943305616.Spec : Prop :=
  ∀ n, P6360747620943305616.a n = A284882 (n + 1)

end A284882

/-! ## A284882.P13349554033817614434

`A284880(A189631(A189629(n+2))+n+1)`
-/

namespace A284882.P13349554033817614434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284880 (A189631 (A189629 (n + 2)).toNat + (n + 1 : ℤ)).toNat

end

end A284882.P13349554033817614434

namespace A284882

/-- `A284880(A189631(A189629(n+2))+n+1)` -/
def P13349554033817614434.Spec : Prop :=
  ∀ n, P13349554033817614434.a n = A284882 (n + 1)

end A284882

/-! ## A284882.P8158267595045254195

`A284880(lt[A287520(n+1), 2*A057427(n)])`
-/

namespace A284882.P8158267595045254195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287520 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A057427 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284880 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A284882.P8158267595045254195

namespace A284882

/-- `A284880(lt[A287520(n+1), 2*A057427(n)])` -/
def P8158267595045254195.Spec : Prop :=
  ∀ n, P8158267595045254195.a n = A284882 (n + 1)

end A284882

/-! ## A284882.P2981243246219406689

`A284880(lt[A287520(n+1)/2, A057427(n)])`
-/

namespace A284882.P2981243246219406689
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A287520 (n + 1) : ℚ) / 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284880 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n)

end

end A284882.P2981243246219406689

namespace A284882

/-- `A284880(lt[A287520(n+1)/2, A057427(n)])` -/
def P2981243246219406689.Spec : Prop :=
  ∀ n, P2981243246219406689.a n = A284882 (n + 1)

end A284882

/-! ## A284882.P6001803741699430800

`A284880(lt[A287520(n+1)!-1, A057427(n)])`
-/

namespace A284882.P6001803741699430800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A287520 (n + 1)).toNat : ℤ) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284880 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A284882.P6001803741699430800

namespace A284882

/-- `A284880(lt[A287520(n+1)!-1, A057427(n)])` -/
def P6001803741699430800.Spec : Prop :=
  ∀ n, P6001803741699430800.a n = A284882 (n + 1)

end A284882

/-! ## A284882.P3938436208969598853

`A189628(A014682(n+1))+A014682(2*n+1)`
-/

namespace A284882.P3938436208969598853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189628 (A014682 (n + 1)).toNat + A014682 (2 * n + 1)

end

end A284882.P3938436208969598853

namespace A284882

/-- `A189628(A014682(n+1))+A014682(2*n+1)` -/
def P3938436208969598853.Spec : Prop :=
  ∀ n, P3938436208969598853.a n = A284882 (n + 1)

end A284882

/-! ## A284882.P7730076081787534998

`A284880(lt[A189628(n+1), n/A284880(n+1)])`
-/

namespace A284882.P7730076081787534998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189628 (n + 1)

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A284880 (n + 1) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284880 (SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n)

end

end A284882.P7730076081787534998

namespace A284882

/-- `A284880(lt[A189628(n+1), n/A284880(n+1)])` -/
def P7730076081787534998.Spec : Prop :=
  ∀ n, P7730076081787534998.a n = A284882 (n + 1)

end A284882

/-! ## A284882.P2937466961302328407

`3*n+2+A284878(3*(n+1))`
-/

namespace A284882.P2937466961302328407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n + 2 : ℤ) + A284878 (3 * (n + 1))

end

end A284882.P2937466961302328407

namespace A284882

/-- `3*n+2+A284878(3*(n+1))` -/
def P2937466961302328407.Spec : Prop :=
  ∀ n, P2937466961302328407.a n = A284882 (n + 1)

end A284882

/-! ## A284882.P12656697295871029678

`eq[n, A284881(n+2)+n+1]+2`
-/

namespace A284882.P12656697295871029678
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284881 (n + 2) + (n + 1 : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A284882.P12656697295871029678

namespace A284882

/-- `eq[n, A284881(n+2)+n+1]+2` -/
def P12656697295871029678.Spec : Prop :=
  ∀ n, (P12656697295871029678.a n : ℤ) = A284882 (n + 1)

end A284882

/-!
# A284883: Positions of 0 in A284881.

The programs for A284883, the canonical program `A284883.P7296943405471408281` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A284883 has offset 1).

The definition of A284883 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A284883.P17885516336808737609

`2*A284885(n+1)`
-/

namespace A284883.P17885516336808737609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A284885 (n + 1)

end

end A284883.P17885516336808737609

namespace A284883

/-- `2*A284885(n+1)` -/
def P17885516336808737609.Spec : Prop :=
  ∀ n, P17885516336808737609.a n = A284883 (n + 1)

end A284883

/-! ## A284883.P14367440048039189365

`A284885(∑[n+1]-∑[n])+A284885(n+1)`
-/

namespace A284883.P14367440048039189365
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284885 (∑ j ∈ Finset.range (n + 1), f1 j - ∑ j ∈ Finset.range (n + 1), f2 j) + A284885 (n + 1)

end

end A284883.P14367440048039189365

namespace A284883

/-- `A284885(∑[n+1]-∑[n])+A284885(n+1)` -/
def P14367440048039189365.Spec : Prop :=
  ∀ n, P14367440048039189365.a n = A284883 (n + 1)

end A284883

/-! ## A284883.P7296943405471408281

`∪[A189634(2*(n+1)), A189634(2*(n+1))-2]`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A284883

/-- `∪[A189634(2*(n+1)), A189634(2*(n+1))-2]` -/
def P7296943405471408281.Spec : Prop :=
  ∀ n, (P7296943405471408281.a n : ℤ) = A284883 (n + 1)

theorem P7296943405471408281.correct : P7296943405471408281.Spec := by
  intro n
  simp only [A284883, Nat.add_sub_cancel]

end A284883

/-! ## A284883.P3624461048743815053

`∪[A189728(2*(n+1)), A189728(2*(n+1))-2]`
-/

namespace A284883.P3624461048743815053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189728 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189728 (2 * (n + 1)) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A284883.P3624461048743815053

namespace A284883

/-- `∪[A189728(2*(n+1)), A189728(2*(n+1))-2]` -/
def P3624461048743815053.Spec : Prop :=
  ∀ n, (P3624461048743815053.a n : ℤ) = A284883 (n + 1)

end A284883

/-! ## A284883.P9193548713715914102

`A005408(A284885(n+1)-1)+1`
-/

namespace A284883.P9193548713715914102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A284885 (n + 1) - 1).toNat + 1

end

end A284883.P9193548713715914102

namespace A284883

/-- `A005408(A284885(n+1)-1)+1` -/
def P9193548713715914102.Spec : Prop :=
  ∀ n, P9193548713715914102.a n = A284883 (n + 1)

end A284883

/-! ## A284883.P4609123649085953462

`A004277(A284885(n+1))`
-/

namespace A284883.P4609123649085953462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A284885 (n + 1)).toNat

end

end A284883.P4609123649085953462

namespace A284883

/-- `A004277(A284885(n+1))` -/
def P4609123649085953462.Spec : Prop :=
  ∀ n, P4609123649085953462.a n = A284883 (n + 1)

end A284883

/-! ## A284883.P4390116807709624521

`A005843(lt[1, A284879(n+2)%A284880(n+1)]+1)`
-/

namespace A284883.P4390116807709624521
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A284879 (n + 2)) (A284880 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A284883.P4390116807709624521

namespace A284883

/-- `A005843(lt[1, A284879(n+2)%A284880(n+1)]+1)` -/
def P4390116807709624521.Spec : Prop :=
  ∀ n, P4390116807709624521.a n = A284883 (n + 1)

end A284883

/-! ## A284883.P4377865527062898854

`A284775(A284776(n+1))+A284885(n+1)+A284885(n+1)`
-/

namespace A284883.P4377865527062898854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284775 (A284776 (n + 1)).toNat + (A284885 (n + 1) + A284885 (n + 1))

end

end A284883.P4377865527062898854

namespace A284883

/-- `A284775(A284776(n+1))+A284885(n+1)+A284885(n+1)` -/
def P4377865527062898854.Spec : Prop :=
  ∀ n, P4377865527062898854.a n = A284883 (n + 1)

end A284883

/-! ## A284883.P13544726430025590322

`eq[0, A284881(A028310(n))]`
-/

namespace A284883.P13544726430025590322
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284881 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A284883.P13544726430025590322

namespace A284883

/-- `eq[0, A284881(A028310(n))]` -/
def P13544726430025590322.Spec : Prop :=
  ∀ n, (P13544726430025590322.a n : ℤ) = A284883 (n + 1)

end A284883

/-!
# A284884: Positions of 1's in A284881.

The programs for A284884, the canonical program `A284884.P16973292987527739528` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A284884 has offset 1).

The definition of A284884 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A284884.P16973292987527739528

`eq[0, abs(n%3-a(floor(n/3)))]` with `a(0)=1`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A284884

/-- `eq[0, abs(n%3-a(floor(n/3)))]` -/
def P16973292987527739528.Spec : Prop :=
  ∀ n, (P16973292987527739528.a n : ℤ) = A284884 (n + 1)

theorem P16973292987527739528.correct : P16973292987527739528.Spec := by
  intro n
  simp only [A284884, Nat.add_sub_cancel]

end A284884

/-! ## A284884.P9133838139763009128

`2*A189629(n+1)-1`
-/

namespace A284884.P9133838139763009128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A189629 (n + 1) - 1

end

end A284884.P9133838139763009128

namespace A284884

/-- `2*A189629(n+1)-1` -/
def P9133838139763009128.Spec : Prop :=
  ∀ n, P9133838139763009128.a n = A284884 (n + 1)

end A284884

/-! ## A284884.P5300835507641865530

`A284882(n+1)-(A284878(n+1)+1)`
-/

namespace A284884.P5300835507641865530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284882 (n + 1) - (A284878 (n + 1) + 1)

end

end A284884.P5300835507641865530

namespace A284884

/-- `A284882(n+1)-(A284878(n+1)+1)` -/
def P5300835507641865530.Spec : Prop :=
  ∀ n, P5300835507641865530.a n = A284884 (n + 1)

end A284884

/-! ## A284884.P5993562988327411853

`A284882(n+1)-Δ[A189629(n+1)]`
-/

namespace A284884.P5993562988327411853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189629 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284882 (n + 1) - (f1 (n + 1) - f1 n)

end

end A284884.P5993562988327411853

namespace A284884

/-- `A284882(n+1)-Δ[A189629(n+1)]` -/
def P5993562988327411853.Spec : Prop :=
  ∀ n, P5993562988327411853.a n = A284884 (n + 1)

end A284884

/-! ## A284884.P5004610012806773106

`record[xor(1, A284880(n+1)-2)]`
-/

namespace A284884.P5004610012806773106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A284880 (n + 1) - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A284884.P5004610012806773106

namespace A284884

/-- `record[xor(1, A284880(n+1)-2)]` -/
def P5004610012806773106.Spec : Prop :=
  ∀ n, P5004610012806773106.a n = A284884 (n + 1)

end A284884

/-! ## A284884.P17189390368881305839

`2*lt[A189628(n+1), 1]+1`
-/

namespace A284884.P17189390368881305839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189628 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A284884.P17189390368881305839

namespace A284884

/-- `2*lt[A189628(n+1), 1]+1` -/
def P17189390368881305839.Spec : Prop :=
  ∀ n, (P17189390368881305839.a n : ℤ) = A284884 (n + 1)

end A284884

/-! ## A284884.P4060224174039722383

`∩[2*n+1, A284879(n+1)]`
-/

namespace A284884.P4060224174039722383
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284879 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A284884.P4060224174039722383

namespace A284884

/-- `∩[2*n+1, A284879(n+1)]` -/
def P4060224174039722383.Spec : Prop :=
  ∀ n, (P4060224174039722383.a n : ℤ) = A284884 (n + 1)

end A284884

/-! ## A284884.P12667936670843969044

`A004273(A189629(n+1))`
-/

namespace A284884.P12667936670843969044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A189629 (n + 1)).toNat

end

end A284884.P12667936670843969044

namespace A284884

/-- `A004273(A189629(n+1))` -/
def P12667936670843969044.Spec : Prop :=
  ∀ n, P12667936670843969044.a n = A284884 (n + 1)

end A284884

/-! ## A284884.P11016910934507487248

`∩[A284879(n+1), A004273(n)]`
-/

namespace A284884.P11016910934507487248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284879 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A284884.P11016910934507487248

namespace A284884

/-- `∩[A284879(n+1), A004273(n)]` -/
def P11016910934507487248.Spec : Prop :=
  ∀ n, (P11016910934507487248.a n : ℤ) = A284884 (n + 1)

end A284884

/-! ## A284884.P104698927790730895

`A284879(comp[comp[A284879(n+1)]+n])`
-/

namespace A284884.P104698927790730895
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284879 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n + n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284879 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A284884.P104698927790730895

namespace A284884

/-- `A284879(comp[comp[A284879(n+1)]+n])` -/
def P104698927790730895.Spec : Prop :=
  ∀ n, P104698927790730895.a n = A284884 (n + 1)

end A284884

/-! ## A284884.P60469641830571492

`∩[A284879(n+1), A060747(n)]`
-/

namespace A284884.P60469641830571492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284879 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060747 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A284884.P60469641830571492

namespace A284884

/-- `∩[A284879(n+1), A060747(n)]` -/
def P60469641830571492.Spec : Prop :=
  ∀ n, (P60469641830571492.a n : ℤ) = A284884 (n + 1)

end A284884

/-! ## A284884.P8036317116177628460

`∩[A284879(n+1), A004274(n)]`
-/

namespace A284884.P8036317116177628460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284879 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004274 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A284884.P8036317116177628460

namespace A284884

/-- `∩[A284879(n+1), A004274(n)]` -/
def P8036317116177628460.Spec : Prop :=
  ∀ n, (P8036317116177628460.a n : ℤ) = A284884 (n + 1)

end A284884

/-! ## A284884.P2449964344058750281

`∩[A284879(n+1), A004276(n)]`
-/

namespace A284884.P2449964344058750281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284879 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004276 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A284884.P2449964344058750281

namespace A284884

/-- `∩[A284879(n+1), A004276(n)]` -/
def P2449964344058750281.Spec : Prop :=
  ∀ n, (P2449964344058750281.a n : ℤ) = A284884 (n + 1)

end A284884

/-! ## A284884.P4255264199615434531

`∩[A284879(n+1), A004281(n)]`
-/

namespace A284884.P4255264199615434531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284879 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004281 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A284884.P4255264199615434531

namespace A284884

/-- `∩[A284879(n+1), A004281(n)]` -/
def P4255264199615434531.Spec : Prop :=
  ∀ n, (P4255264199615434531.a n : ℤ) = A284884 (n + 1)

end A284884

/-! ## A284884.P22623107483583029

`A284880(A189629(n+1))-A284878(A284880(n+1))`
-/

namespace A284884.P22623107483583029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284880 (A189629 (n + 1)).toNat - A284878 (A284880 (n + 1)).toNat

end

end A284884.P22623107483583029

namespace A284884

/-- `A284880(A189629(n+1))-A284878(A284880(n+1))` -/
def P22623107483583029.Spec : Prop :=
  ∀ n, P22623107483583029.a n = A284884 (n + 1)

end A284884

/-! ## A284884.P10354658400111021878

`lt[A189632(n+1), and(1, n)]`
-/

namespace A284884.P10354658400111021878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189632 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A284884.P10354658400111021878

namespace A284884

/-- `lt[A189632(n+1), and(1, n)]` -/
def P10354658400111021878.Spec : Prop :=
  ∀ n, (P10354658400111021878.a n : ℤ) = A284884 (n + 1)

end A284884

/-!
# A284885: (A284883)/2.

The programs for A284885, the canonical program `A284885.P16570972123802318958` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A284885 has offset 1).

The definition of A284885 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A284885.P16570972123802318958

`A284883(n+1)/2`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A284885

/-- `A284883(n+1)/2` -/
def P16570972123802318958.Spec : Prop :=
  ∀ n, P16570972123802318958.a n = (A284885 (n + 1) : ℚ)

end A284885

/-! ## A284885.P13720348631357750044

`A328399(A284883(n+1)-2)`
-/

namespace A284885.P13720348631357750044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328399 (A284883 (n + 1) - 2).toNat

end

end A284885.P13720348631357750044

namespace A284885

/-- `A328399(A284883(n+1)-2)` -/
def P13720348631357750044.Spec : Prop :=
  ∀ n, P13720348631357750044.a n = A284885 (n + 1)

end A284885

/-! ## A284885.P10952129884823776758

`A284880(A004526(n)+1)+A004526(n+1)`
-/

namespace A284885.P10952129884823776758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284880 (A004526 n + 1).toNat + A004526 (n + 1)

end

end A284885.P10952129884823776758

namespace A284885

/-- `A284880(A004526(n)+1)+A004526(n+1)` -/
def P10952129884823776758.Spec : Prop :=
  ∀ n, P10952129884823776758.a n = A284885 (n + 1)

end A284885

/-! ## A284885.P13311913126778422691

`A189630(A004526(n)+1)-A000035(n+1)`
-/

namespace A284885.P13311913126778422691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189630 (A004526 n + 1).toNat - A000035 (n + 1)

end

end A284885.P13311913126778422691

namespace A284885

/-- `A189630(A004526(n)+1)-A000035(n+1)` -/
def P13311913126778422691.Spec : Prop :=
  ∀ n, P13311913126778422691.a n = A284885 (n + 1)

end A284885

/-! ## A284885.P607459392172995839

`lt[1, A284879(n+2)%A284880(n+1)]+1`
-/

namespace A284885.P607459392172995839
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A284879 (n + 2)) (A284880 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A284885.P607459392172995839

namespace A284885

/-- `lt[1, A284879(n+2)%A284880(n+1)]+1` -/
def P607459392172995839.Spec : Prop :=
  ∀ n, (P607459392172995839.a n : ℤ) = A284885 (n + 1)

end A284885

/-! ## A284885.P1430050242485151970

`lt[1, A271969(a(n-1)+1)+A189628(n+1)]` with `a(0)=1`
-/

namespace A284885.P1430050242485151970
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  A271969 (f2 (n - 1) + 1).toNat + A189628 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A284885.P1430050242485151970

namespace A284885

/-- `lt[1, A271969(a(n-1)+1)+A189628(n+1)]` -/
def P1430050242485151970.Spec : Prop :=
  ∀ n, (P1430050242485151970.a n : ℤ) = A284885 (n + 1)

end A284885

/-! ## A284885.P2316317162743479756

`lt[1, A287520(n+1)+A287520(A028310(n))]`
-/

namespace A284885.P2316317162743479756
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287520 (n + 1) + A287520 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A284885.P2316317162743479756

namespace A284885

/-- `lt[1, A287520(n+1)+A287520(A028310(n))]` -/
def P2316317162743479756.Spec : Prop :=
  ∀ n, (P2316317162743479756.a n : ℤ) = A284885 (n + 1)

end A284885

/-! ## A284885.P7243293163765387271

`A065261(A284883(n+1))`
-/

namespace A284885.P7243293163765387271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065261 (A284883 (n + 1)).toNat

end

end A284885.P7243293163765387271

namespace A284885

/-- `A065261(A284883(n+1))` -/
def P7243293163765387271.Spec : Prop :=
  ∀ n, P7243293163765387271.a n = A284885 (n + 1)

end A284885

/-! ## A284885.P3740820504113701658

`eq[0, A284881(A004277(n))]`
-/

namespace A284885.P3740820504113701658
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284881 (A004277 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A284885.P3740820504113701658

namespace A284885

/-- `eq[0, A284881(A004277(n))]` -/
def P3740820504113701658.Spec : Prop :=
  ∀ n, (P3740820504113701658.a n : ℤ) = A284885 (n + 1)

end A284885

/-! ## A284885.P3336402817182512814

`lt[A284881(A028310(2*n))², 1]`
-/

namespace A284885.P3336402817182512814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284881 (A028310 (2 * n)).toNat ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A284885.P3336402817182512814

namespace A284885

/-- `lt[A284881(A028310(2*n))², 1]` -/
def P3336402817182512814.Spec : Prop :=
  ∀ n, (P3336402817182512814.a n : ℤ) = A284885 (n + 1)

end A284885

/-! ## A284885.P6209041528619589270

`A001281(A284883(n+1)+2)-1`
-/

namespace A284885.P6209041528619589270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A284883 (n + 1) + 2).toNat - 1

end

end A284885.P6209041528619589270

namespace A284885

/-- `A001281(A284883(n+1)+2)-1` -/
def P6209041528619589270.Spec : Prop :=
  ∀ n, P6209041528619589270.a n = A284885 (n + 1)

end A284885

/-! ## A284885.P8076670554325865487

`A189671(A284883(n+1)+A189669(n+1))`
-/

namespace A284885.P8076670554325865487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189671 (A284883 (n + 1) + A189669 (n + 1)).toNat

end

end A284885.P8076670554325865487

namespace A284885

/-- `A189671(A284883(n+1)+A189669(n+1))` -/
def P8076670554325865487.Spec : Prop :=
  ∀ n, P8076670554325865487.a n = A284885 (n + 1)

end A284885

/-! ## A284885.P15777864661495740243

`A189671(A284883(n+1)+A189725(n+1))`
-/

namespace A284885.P15777864661495740243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189671 (A284883 (n + 1) + A189725 (n + 1)).toNat

end

end A284885.P15777864661495740243

namespace A284885

/-- `A189671(A284883(n+1)+A189725(n+1))` -/
def P15777864661495740243.Spec : Prop :=
  ∀ n, P15777864661495740243.a n = A284885 (n + 1)

end A284885

/-!
# A284886: Numbers k such that (14*10^k - 101)/3 is prime.

The programs for A284886, there is no canonical definition to state claims against.
-/

/-! ## A284886.P8907059002378956525

`A225078(n+1)+A172308(A214820(n+1))`
-/

namespace A284886.P8907059002378956525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225078 (n + 1) + A172308 (A214820 (n + 1)).toNat

end

end A284886.P8907059002378956525

/-! ## A284886.P86449122470883977

`A085153(A128169(n+1))%∑[A330949(n+3)]`
-/

namespace A284886.P86449122470883977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330949 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A085153 (A128169 (n + 1)).toNat) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A284886.P86449122470883977

/-!
# A284890: a(1)=2, and then a(n+1) = a(n) + k where prime(k) is the least prime dividing a(n).

The programs for A284890, there is no canonical definition to state claims against.
-/

/-! ## A284890.P3728442990640344287

`A000720(A020639(a(n-1)))+a(n-1)` with `a(0)=2`
-/

namespace A284890.P3728442990640344287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A000720 (A020639 (a (n - 1)).toNat).toNat + a (n - 1)

end

end A284890.P3728442990640344287

/-! ## A284890.P7267660138612166259

`A055396(a(n-1))+a(n-1)` with `a(0)=2`
-/

namespace A284890.P7267660138612166259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A055396 (a (n - 1)).toNat + a (n - 1)

end

end A284890.P7267660138612166259

/-! ## A284890.P1257855154865523460

`A055399(a(n-1)*a(n-1))+a(n-1)` with `a(0)=2`
-/

namespace A284890.P1257855154865523460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A055399 (a (n - 1) * a (n - 1)).toNat + a (n - 1)

end

end A284890.P1257855154865523460

/-! ## A284890.P5628932589285763584

`A286477(a(n-1)*a(n-1))+a(n-1)` with `a(0)=2`
-/

namespace A284890.P5628932589285763584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A286477 (a (n - 1) * a (n - 1)).toNat + a (n - 1)

end

end A284890.P5628932589285763584

/-!
# A284891: Concatenation of the numbers from 3 to n.

The programs for A284891, there is no canonical definition to state claims against.
-/

/-! ## A284891.P5837251680176238236

`A048794(∑[2^(n+2)])`
-/

namespace A284891.P5837251680176238236
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048794 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A284891.P5837251680176238236

/-! ## A284891.P9644420760785168155

`and(-1, A048794(∑[2*a(n-1)]))` with `a(0)=4`
-/

namespace A284891.P9644420760785168155
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [4] fun n f1 =>
  2 * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A048794 (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A284891.P9644420760785168155

/-! ## A284891.P6030646919033688547

`record[A048794(4*A130328(n))]`
-/

namespace A284891.P6030646919033688547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048794 (4 * A130328 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A284891.P6030646919033688547

/-! ## A284891.P10733145102687812158

`record[A048794(A323173(2*(n+2)))]`
-/

namespace A284891.P10733145102687812158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048794 (A323173 (2 * (n + 2))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A284891.P10733145102687812158

/-! ## A284891.P7665498592907772089

`A185264(n)+A048794(∑[2*a(n-1)])` with `a(0)=4`
-/

namespace A284891.P7665498592907772089
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [4] fun n f1 =>
  2 * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185264 n + A048794 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A284891.P7665498592907772089

/-!
# A284892: Numbers n > 1 such that all Hopf algebras of dimension n over algebraically closed fields of characteristic 0 are semisimple.

The programs for A284892, there is no canonical definition to state claims against.
-/

/-! ## A284892.P10619181941460576847

`eq[2, round(∏{e}[n, tan(#)])]`
-/

namespace A284892.P10619181941460576847
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (∏ p ∈ Nat.primeFactors (f3 n), Real.tan (Nat.factorization (f3 n) p : ℝ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A284892.P10619181941460576847

/-! ## A284892.P4357604500908048889

`lt[n, ∑{p}[n, #^ϕ]]`
-/

namespace A284892.P4357604500908048889
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n), (p : ℝ) ^ Real.goldenRatio

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A284892.P4357604500908048889

/-! ## A284892.P2019545244704884118

`lt[∑{p}[n, n-#²], 0]`
-/

namespace A284892.P2019545244704884118
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), ((n : ℤ) - (p ^ 2 : ℤ))

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n

end

end A284892.P2019545244704884118

/-! ## A284892.P16302009479532885431

`record[∏{p}[lt[∏{p}[n, n-#²], 0], #]]`
-/

namespace A284892.P16302009479532885431
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f4 n), ((n : ℤ) - (p ^ 2 : ℤ))

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f3 j < (f5 j : ℤ)) n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A284892.P16302009479532885431

/-!
# A284893: Fixed point of the morphism 0 -> 01, 1 -> 0111.

The programs for A284893, there is no canonical definition to state claims against.
-/

/-! ## A284893.P9812247524066600538

`char[A285343(n+1)]`
-/

namespace A284893.P9812247524066600538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285343 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A284893.P9812247524066600538

/-! ## A284893.P6116103597722567633

`char[A284895(n+1)-1]`
-/

namespace A284893.P6116103597722567633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284895 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A284893.P6116103597722567633

/-! ## A284893.P2264017102325110368

`char[A285341(n+1)+n]`
-/

namespace A284893.P2264017102325110368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285341 (n + 1) + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A284893.P2264017102325110368

/-! ## A284893.P8532283898505767729

`A285341(C(n, a(n-1)))` with `a(0)=0`
-/

namespace A284893.P8532283898505767729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A285341 (Nat.choose n (a (n - 1)).toNat)

end

end A284893.P8532283898505767729

/-! ## A284893.P18280955507976455074

`A285341(lcm(1-n, n-1)+1)`
-/

namespace A284893.P18280955507976455074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285341 (Int.lcm (1 - (n : ℤ)) ((n : ℤ) - 1) + 1)

end

end A284893.P18280955507976455074

/-! ## A284893.P676394716984672106

`A285341((2*n+1)%(n+2)+1)`
-/

namespace A284893.P676394716984672106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285341 ((2 * n + 1) % (n + 2) + 1)

end

end A284893.P676394716984672106

/-! ## A284893.P4351993486738652774

`A284939(A285342(n+1)-A284894(n+1))`
-/

namespace A284893.P4351993486738652774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284939 (A285342 (n + 1) - A284894 (n + 1)).toNat

end

end A284893.P4351993486738652774

/-! ## A284893.P14041005085195626890

`log2(log2(Δ[A284894(n+1)]))`
-/

namespace A284893.P14041005085195626890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284894 (n + 1)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Real.logb 2 (f1 (n + 1) - f1 n : ℝ))

end

end A284893.P14041005085195626890

/-! ## A284893.P13618402493368114190

`A025581(Δ[A284894(n+1)])`
-/

namespace A284893.P13618402493368114190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284894 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (f1 (n + 1) - f1 n).toNat

end

end A284893.P13618402493368114190

/-! ## A284893.P16637582994422430824

`A054686(Δ[A284894(n+1)])`
-/

namespace A284893.P16637582994422430824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284894 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054686 (f1 (n + 1) - f1 n).toNat

end

end A284893.P16637582994422430824

/-! ## A284893.P362013283706379469

`A143841(Δ[A284894(n+1)])`
-/

namespace A284893.P362013283706379469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284894 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143841 (f1 (n + 1) - f1 n).toNat

end

end A284893.P362013283706379469

/-! ## A284893.P13005625241813766510

`A179762(Δ[A284894(n+1)])`
-/

namespace A284893.P13005625241813766510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284894 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179762 (f1 (n + 1) - f1 n).toNat

end

end A284893.P13005625241813766510

/-! ## A284893.P7746097446705864652

`A284932(Δ[A284894(n+1)])`
-/

namespace A284893.P7746097446705864652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284894 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284932 (f1 (n + 1) - f1 n).toNat

end

end A284893.P7746097446705864652

/-! ## A284893.P7777385740430284273

`A000010(Δ[A284894(n+1)])-1`
-/

namespace A284893.P7777385740430284273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284894 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (f1 (n + 1) - f1 n).toNat - 1

end

end A284893.P7777385740430284273

/-! ## A284893.P2439137834058762052

`A001221(Δ[A284894(n+1)]-1)`
-/

namespace A284893.P2439137834058762052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284894 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (f1 (n + 1) - f1 n - 1).toNat

end

end A284893.P2439137834058762052

/-! ## A284893.P15215187075573627342

`A001222(Δ[A284894(n+1)]-1)`
-/

namespace A284893.P15215187075573627342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284894 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (f1 (n + 1) - f1 n - 1).toNat

end

end A284893.P15215187075573627342

/-! ## A284893.P10367761665896572986

`A007318(Δ[A284894(n+1)])-1`
-/

namespace A284893.P10367761665896572986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284894 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (f1 (n + 1) - f1 n).toNat - 1

end

end A284893.P10367761665896572986

/-! ## A284893.P8621679934031698983

`A284909(Δ[A284894(n+1)])-1`
-/

namespace A284893.P8621679934031698983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284894 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284909 (f1 (n + 1) - f1 n).toNat - 1

end

end A284893.P8621679934031698983

/-! ## A284893.P10876171098242946370

`A284918(Δ[A284894(n+1)])-1`
-/

namespace A284893.P10876171098242946370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284894 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284918 (f1 (n + 1) - f1 n).toNat - 1

end

end A284893.P10876171098242946370

/-!
# A284894: Positions of 0 in A284893; complement of A284895.

The programs for A284894, there is no canonical definition to state claims against.
-/

/-! ## A284894.P226797867998730115

`2*comp[A284895(n+1)+n]+1`
-/

namespace A284894.P226797867998730115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284895 (n + 1) + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A284894.P226797867998730115

/-! ## A284894.P9326381538934768137

`2*comp[∑[Δ[A284930(n+1)]-1]]+1`
-/

namespace A284894.P9326381538934768137
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284930 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A284894.P9326381538934768137

/-! ## A284894.P15131151665686905728

`lt[A284893(n+1), 1]+1`
-/

namespace A284894.P15131151665686905728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284893 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A284894.P15131151665686905728

/-! ## A284894.P12938075863992348060

`lt[n*char[A284895(n+1)], n]`
-/

namespace A284894.P12938075863992348060
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284895 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (if ∃ j, f2 j = (n : ℤ) then 1 else 0)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n

end

end A284894.P12938075863992348060

/-! ## A284894.P10129050905732852440

`lt[n*A284893(A028310(n)), n]`
-/

namespace A284894.P10129050905732852440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A284893 (A028310 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A284894.P10129050905732852440

/-! ## A284894.P13920713510963592975

`lt[char[A284895(n+1)], A284939(n+1)]`
-/

namespace A284894.P13920713510963592975
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284895 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284939 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f3 j) n

end

end A284894.P13920713510963592975

/-! ## A284894.P13708439962419688865

`record[n+1-A002061(n)*A284893(n+1)]`
-/

namespace A284894.P13708439962419688865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A002061 n * A284893 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A284894.P13708439962419688865

/-! ## A284894.P3872493347210840422

`record[n+1-A014682(n*A284893(n+1))]`
-/

namespace A284894.P3872493347210840422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A014682 ((n : ℤ) * A284893 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A284894.P3872493347210840422

/-! ## A284894.P2708749391015783448

`record[n+1-A048785(n*A284893(n+1))]`
-/

namespace A284894.P2708749391015783448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A048785 ((n : ℤ) * A284893 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A284894.P2708749391015783448

/-! ## A284894.P17811916450731186016

`record[(n+1)*(A284893(n+2)-A284893(n+1))]`
-/

namespace A284894.P17811916450731186016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A284893 (n + 2) - A284893 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A284894.P17811916450731186016

/-! ## A284894.P12950823433503802099

`eq[A000007(n), A284893(A000007(n)+n)]`
-/

namespace A284894.P12950823433503802099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284893 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A284894.P12950823433503802099

/-! ## A284894.P18413520053091515440

`eq[A000038(n), A284893(A000038(n)+n)]`
-/

namespace A284894.P18413520053091515440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284893 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A284894.P18413520053091515440

/-! ## A284894.P13568611573407639277

`eq[2, Δ[comp[A284895(n+1)]]]`
-/

namespace A284894.P13568611573407639277
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284895 (n + 1)

open Classical in
def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f4 j ≠ (x : ℤ)) n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f3 (n + 1) : ℤ) - (f3 n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A284894.P13568611573407639277

/-!
# A284895: Positions of 1 in A284893; complement of A284894.

The programs for A284895, there is no canonical definition to state claims against.
-/

/-! ## A284895.P13790222114485854152

`A285343(n+1)+1`
-/

namespace A284895.P13790222114485854152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285343 (n + 1) + 1

end

end A284895.P13790222114485854152

/-! ## A284895.P8240397047087120147

`A285359(n+1)-Δ[n²]`
-/

namespace A284895.P8240397047087120147
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285359 (n + 1) - ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A284895.P8240397047087120147

/-! ## A284895.P7721689618991059023

`comp[A284894(n+1)-1]+1`
-/

namespace A284895.P7721689618991059023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284894 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A284895.P7721689618991059023

/-! ## A284895.P17152110265751301386

`A284930(n+2)-2*(n+1)`
-/

namespace A284895.P17152110265751301386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284930 (n + 2) - (2 * (n + 1) : ℤ)

end

end A284895.P17152110265751301386

/-! ## A284895.P4494579855997741876

`∑[A001222(Δ[A284930(n+1)])]+1`
-/

namespace A284895.P4494579855997741876
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284930 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A284895.P4494579855997741876

/-! ## A284895.P16671027608716601136

`eq[1, A285341(n+1)]+2`
-/

namespace A284895.P16671027608716601136
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285341 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A284895.P16671027608716601136

/-! ## A284895.P4186146634557682541

`A020725(A285343(n+1))`
-/

namespace A284895.P4186146634557682541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A285343 (n + 1)).toNat

end

end A284895.P4186146634557682541

/-! ## A284895.P1974963598491880104

`filter[n+1, A284893(#)]`
-/

namespace A284895.P1974963598491880104
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A284893 (f1 j) = 1) n)

end

end A284895.P1974963598491880104

/-! ## A284895.P762015872875642216

`eq[1, A284893(n+1)]+1`
-/

namespace A284895.P762015872875642216
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284893 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A284895.P762015872875642216

/-! ## A284895.P10490719140022799197

`eq[1, A284893(A028310(n))]`
-/

namespace A284895.P10490719140022799197
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284893 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A284895.P10490719140022799197

/-! ## A284895.P9541844869595653186

`eq[1, A284893(A000007(n)+n)]`
-/

namespace A284895.P9541844869595653186
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284893 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A284895.P9541844869595653186

/-! ## A284895.P5479228035540783840

`eq[1, A284893(A130706(n)+n)]`
-/

namespace A284895.P5479228035540783840
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284893 (A130706 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A284895.P5479228035540783840

/-! ## A284895.P5670462480144660074

`lt[char[A284894(n+1)], A241664(n+1)]`
-/

namespace A284895.P5670462480144660074
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284894 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241664 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f3 j) n

end

end A284895.P5670462480144660074

/-! ## A284895.P7721266976181293467

`record[A332204(3*n+2)]-n`
-/

namespace A284895.P7721266976181293467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332204 (3 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - (n : ℤ)

end

end A284895.P7721266976181293467

/-!
# A284896: Expansion of Product_{k>=1} 1/(1+x^k)^(k^2) in powers of x.

The programs for A284896, there is no canonical definition to state claims against.
-/

/-! ## A284896.P1087059299444399924

`A284993(∑[n+3])`
-/

namespace A284896.P1087059299444399924
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284993 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A284896.P1087059299444399924

/-! ## A284896.P4864479122112418384

`A284993(A027379(n+1))%(n+8)!`
-/

namespace A284896.P4864479122112418384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A284993 (A027379 (n + 1)).toNat) (Nat.factorial (n + 8) : ℤ)

end

end A284896.P4864479122112418384

/-! ## A284896.P11497774561154892829

`A284993(A027379(n+1))^A178334(n)`
-/

namespace A284896.P11497774561154892829
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A284993 (A027379 (n + 1)).toNat : ℚ) ^ (A178334 n : ℤ)

end

end A284896.P11497774561154892829

/-! ## A284896.P17531972531983298936

`A284993(A027379(n+1))%A001576(n)`
-/

namespace A284896.P17531972531983298936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A284993 (A027379 (n + 1)).toNat) (A001576 n)

end

end A284896.P17531972531983298936

/-! ## A284896.P15827505995334704659

`A284993(A055998(n+1))%A182462(n)`
-/

namespace A284896.P15827505995334704659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A284993 (A055998 (n + 1)).toNat) (A182462 n)

end

end A284896.P15827505995334704659

/-! ## A284896.P2275891642820159502

`char[A002487(n)]*A284993(A027379(n+1))`
-/

namespace A284896.P2275891642820159502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A284993 (A027379 (n + 1)).toNat

end

end A284896.P2275891642820159502

/-! ## A284896.P13984399436212832294

`A284993(A055998(n+1))+A000007(n+1)`
-/

namespace A284896.P13984399436212832294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284993 (A055998 (n + 1)).toNat + A000007 (n + 1)

end

end A284896.P13984399436212832294

/-!
# A284897: Expansion of Product_{k>=1} 1/(1+x^k)^(k^3) in powers of x.

The programs for A284897, there is no canonical definition to state claims against.
-/

/-! ## A284897.P16898683780791767657

`A284993(∑[n+4]+2)`
-/

namespace A284897.P16898683780791767657
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284993 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A284897.P16898683780791767657

/-!
# A284898: Expansion of Product_{k>=1} 1/(1+x^k)^(k^4) in powers of x.

The programs for A284898, there is no canonical definition to state claims against.
-/

/-! ## A284898.P6890139642448416972

`A284993(A052905(n+2))`
-/

namespace A284898.P6890139642448416972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284993 (A052905 (n + 2)).toNat

end

end A284898.P6890139642448416972

/-! ## A284898.P648508406244042244

`A284993(eq[4, A025581(n)])`
-/

namespace A284898.P648508406244042244
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284993 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A284898.P648508406244042244

/-! ## A284898.P3079820151428404905

`A284993(A000217(n+5)-5)`
-/

namespace A284898.P3079820151428404905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284993 (A000217 (n + 5) - 5).toNat

end

end A284898.P3079820151428404905

/-! ## A284898.P7901902432482390204

`A284993(eq[5, A004736(n+1)])`
-/

namespace A284898.P7901902432482390204
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284993 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A284898.P7901902432482390204

/-! ## A284898.P8774790544880846395

`A284993(2*n+Δ[A008778(n)]+6)`
-/

namespace A284898.P8774790544880846395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284993 ((2 * n : ℤ) + (f1 (n + 1) - f1 n + 6)).toNat

end

end A284898.P8774790544880846395

/-!
# A284899: Expansion of Product_{k>=1} 1/(1+x^k)^(k^5) in powers of x.

The programs for A284899, there is no canonical definition to state claims against.
-/

/-! ## A284899.P13410144742878677730

`A284993(eq[5, A025581(n)])`
-/

namespace A284899.P13410144742878677730
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284993 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A284899.P13410144742878677730

/-! ## A284899.P10806109195074830924

`A284993(Δ[A026054(n+3)])`
-/

namespace A284899.P10806109195074830924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026054 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284993 (f1 (n + 1) - f1 n).toNat

end

end A284899.P10806109195074830924

/-! ## A284899.P4884187272262242692

`A284993(A000217(n+6)-6)`
-/

namespace A284899.P4884187272262242692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284993 (A000217 (n + 6) - 6).toNat

end

end A284899.P4884187272262242692

/-! ## A284899.P2158046244745094124

`A284993(eq[6, A004736(n+1)])`
-/

namespace A284899.P2158046244745094124
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284993 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A284899.P2158046244745094124

/-! ## A284899.P5906402896693778201

`A284993(2*n+A000124(n+4)+4)`
-/

namespace A284899.P5906402896693778201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284993 ((2 * n : ℤ) + (A000124 (n + 4) + 4)).toNat

end

end A284899.P5906402896693778201

