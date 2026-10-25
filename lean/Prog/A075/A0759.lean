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
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C028
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
import Seq.B010.C000
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
import Seq.Opaque.C013
import Seq.Opaque.C014
import Seq.Opaque.C015
import Seq.Opaque.C017
import Seq.Opaque.C018
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A075900: Expansion of g.f.: Product_{n>0} 1/(1 - 2^(n-1)*x^n).

The programs for A075900, there is no canonical definition to state claims against.
-/

/-! ## A075900.P18239128530382132506

`A008618(A026551(n+1))`
-/

namespace A075900.P18239128530382132506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008618 (A026551 (n + 1)).toNat

end

end A075900.P18239128530382132506

/-! ## A075900.P17020686368742621108

`A246850(A094023(n))-1`
-/

namespace A075900.P17020686368742621108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246850 (A094023 n).toNat - 1

end

end A075900.P17020686368742621108

/-! ## A075900.P16446602805011972859

`A032913(A000041(n)^A288681(n+3))`
-/

namespace A075900.P16446602805011972859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032913 (SequenceMachineLib.roundAway ((A000041 n : ℚ) ^ (A288681 (n + 3) : ℤ))).toNat

end

end A075900.P16446602805011972859

/-! ## A075900.P1243105591080576727

`or(A000203(A245898(n+1)), A050603(n))`
-/

namespace A075900.P1243105591080576727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000203 (A245898 (n + 1)).toNat) (A050603 n)

end

end A075900.P1243105591080576727

/-!
# A075902: Primes p = prime(k) such that the decimal representation of p contains k as a substring.

The programs for A075902, there is no canonical definition to state claims against.
-/

/-! ## A075902.P15956856334178352464

`∪[A046883(n+1), A000040(A068575(n+1))]`
-/

namespace A075902.P15956856334178352464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046883 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A068575 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A075902.P15956856334178352464

/-! ## A075902.P5737659222516296999

`∪[A046883(n+1), A008578(A068575(n+1)+1)]`
-/

namespace A075902.P5737659222516296999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046883 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A068575 (n + 1) + 1).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A075902.P5737659222516296999

/-! ## A075902.P6107821100275149586

`∪[A046883(n+1), A065091(A068575(n+1)-1)]`
-/

namespace A075902.P6107821100275149586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046883 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (A068575 (n + 1) - 1).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A075902.P6107821100275149586

/-!
# A075904: Numbers k such that k^4 has k as a substring of its decimal expansion.

The programs for A075904, there is no canonical definition to state claims against.
-/

/-! ## A075904.P2102461227109748122

`eq[A008611(A045537(n)), A157928(3*n+4)]`
-/

namespace A075904.P2102461227109748122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (A045537 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157928 (3 * n + 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A075904.P2102461227109748122

/-! ## A075904.P3451918943411892147

`eq[1, A302728(A045537(n))]`
-/

namespace A075904.P3451918943411892147
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302728 (A045537 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A075904.P3451918943411892147

/-! ## A075904.P12957147546658798273

`eq[1, A106617(A045537(n)²)]`
-/

namespace A075904.P12957147546658798273
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106617 (A045537 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A075904.P12957147546658798273

/-! ## A075904.P2924789097355392449

`eq[6, A051248(A045537(n)²)]`
-/

namespace A075904.P2924789097355392449
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051248 (A045537 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A075904.P2924789097355392449

/-! ## A075904.P15172377330783672739

`eq[A001202(A045537(n)²), A045537(n)]`
-/

namespace A075904.P15172377330783672739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001202 (A045537 n ^ 2).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045537 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A075904.P15172377330783672739

/-!
# A075905: Numbers k such that k^5 has k as a substring of its representation.

The programs for A075905, there is no canonical definition to state claims against.
-/

/-! ## A075905.P17316131746134103760

`eq[A094404(2*n+1), A117910(A045537(n))]`
-/

namespace A075905.P17316131746134103760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094404 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117910 (A045537 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A075905.P17316131746134103760

/-! ## A075905.P8161296053785999980

`lt[A000579(A045537(n)), A094404(2*(n+1))]`
-/

namespace A075905.P8161296053785999980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000579 (A045537 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094404 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A075905.P8161296053785999980

/-! ## A075905.P5533201001955045225

`lt[A045537(A160755(n+1)), 6]`
-/

namespace A075905.P5533201001955045225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045537 (A160755 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A075905.P5533201001955045225

/-! ## A075905.P14029685288961759101

`lt[A007582(A045537(n)), A090232(n+1)]`
-/

namespace A075905.P14029685288961759101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007582 (A045537 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090232 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A075905.P14029685288961759101

/-! ## A075905.P8731630780746104241

`eq[A000579(A045537(n)), A034441(n+1)]`
-/

namespace A075905.P8731630780746104241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000579 (A045537 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034441 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A075905.P8731630780746104241

/-!
# A075906: Seventh column of triangle A075498.

The programs for A075906, there is no canonical definition to state claims against.
-/

/-! ## A075906.P6904799116949896023

`3^n*A000771(n+7)`
-/

namespace A075906.P6904799116949896023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℤ) * A000771 (n + 7)

end

end A075906.P6904799116949896023

/-! ## A075906.P10500925232700787791

`A000771(n+7)*A075498(A000124(n))`
-/

namespace A075906.P10500925232700787791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000771 (n + 7) * A075498 (A000124 n).toNat

end

end A075906.P10500925232700787791

/-! ## A075906.P7349972431930310037

`A075498(A056119(n)+28)`
-/

namespace A075906.P7349972431930310037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075498 (A056119 n + 28).toNat

end

end A075906.P7349972431930310037

/-! ## A075906.P17043233284948044662

`A075920(n)/A000079(n)`
-/

namespace A075906.P17043233284948044662
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A075920 n : ℚ) / (A000079 n : ℚ)

end

end A075906.P17043233284948044662

/-! ## A075906.P2111302902365096656

`A075920(n)/A011782(n+1)`
-/

namespace A075906.P2111302902365096656
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A075920 n : ℚ) / (A011782 (n + 1) : ℚ)

end

end A075906.P2111302902365096656

/-! ## A075906.P7154432925311399033

`A076013(n)/A000244(n)`
-/

namespace A075906.P7154432925311399033
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A076013 n : ℚ) / (A000244 n : ℚ)

end

end A075906.P7154432925311399033

/-! ## A075906.P11288720515271978501

`A076013(n)/sqrt(A001019(n))`
-/

namespace A075906.P11288720515271978501
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A076013 n : ℝ) / Real.sqrt (A001019 n : ℝ)

end

end A075906.P11288720515271978501

/-! ## A075906.P17164628101891415815

`A076013(n)/Δ[A003462(n)]`
-/

namespace A075906.P17164628101891415815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003462 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A076013 n : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A075906.P17164628101891415815

/-! ## A075906.P11151474438115988735

`A076013(n)/Δ[A115098(n)]`
-/

namespace A075906.P11151474438115988735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115098 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A076013 n : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A075906.P11151474438115988735

/-!
# A075907: Fourth column of triangle A075499.

The programs for A075907, there is no canonical definition to state claims against.
-/

/-! ## A075907.P1199071426993346975

`4^n*∑[A016269(n)]`
-/

namespace A075907.P1199071426993346975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016269 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 ^ n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A075907.P1199071426993346975

/-! ## A075907.P5340702820503334420

`4^n*A000453(n+4)`
-/

namespace A075907.P5340702820503334420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 ^ n : ℤ) * A000453 (n + 4)

end

end A075907.P5340702820503334420

/-! ## A075907.P16860223570270432065

`A000079(n)*A025966(n)`
-/

namespace A075907.P16860223570270432065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n * A025966 n

end

end A075907.P16860223570270432065

/-! ## A075907.P17553715886271451146

`∑[A016269(n)]*A000302(n)`
-/

namespace A075907.P17553715886271451146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016269 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A000302 n

end

end A075907.P17553715886271451146

/-! ## A075907.P9061122074391154152

`A011782(n+1)*A025966(n)`
-/

namespace A075907.P9061122074391154152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (n + 1) * A025966 n

end

end A075907.P9061122074391154152

/-! ## A075907.P16769513361135119568

`lcm(A000453(n+4), A107906(n))`
-/

namespace A075907.P16769513361135119568
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000453 (n + 4)) (A107906 n)

end

end A075907.P16769513361135119568

/-! ## A075907.P1571215937682485314

`∑[A016269(n)]*A000079(n)²`
-/

namespace A075907.P1571215937682485314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016269 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A000079 n ^ 2

end

end A075907.P1571215937682485314

/-! ## A075907.P1737422222587554022

`∑[A016269(n)]*A000079(2*n)`
-/

namespace A075907.P1737422222587554022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016269 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A000079 (2 * n)

end

end A075907.P1737422222587554022

/-! ## A075907.P10940577382198954743

`A000079(n)²*∑[∑[A027650(n)]]`
-/

namespace A075907.P10940577382198954743
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027650 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n ^ 2 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A075907.P10940577382198954743

/-! ## A075907.P11281537424412761836

`A000453(n+4)*A056450(2*n)`
-/

namespace A075907.P11281537424412761836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000453 (n + 4) * A056450 (2 * n)

end

end A075907.P11281537424412761836

/-!
# A075908: Fifth column of triangle A075499.

The programs for A075908, there is no canonical definition to state claims against.
-/

/-! ## A075908.P566788026114810595

`2^n*A075510(n)`
-/

namespace A075908.P566788026114810595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A075510 n

end

end A075908.P566788026114810595

/-! ## A075908.P5447787267801582902

`4^n*∑[A025211(n)]`
-/

namespace A075908.P5447787267801582902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025211 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 ^ n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A075908.P5447787267801582902

/-! ## A075908.P14488963227784610693

`4^n*A000481(n+5)`
-/

namespace A075908.P14488963227784610693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 ^ n : ℤ) * A000481 (n + 5)

end

end A075908.P14488963227784610693

/-! ## A075908.P9637641815456407864

`2^n*A056511(2*n+9)*2^n`
-/

namespace A075908.P9637641815456407864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A056511 (2 * n + 9) * (2 ^ n : ℤ)

end

end A075908.P9637641815456407864

/-! ## A075908.P18365050580899477843

`Δ[A000225(n)]*A075497(A167499(n+3))`
-/

namespace A075908.P18365050580899477843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A075497 (A167499 (n + 3)).toNat

end

end A075908.P18365050580899477843

/-! ## A075908.P15969957963990348185

`A000079(n)²/A000351(n)*A075913(n)`
-/

namespace A075908.P15969957963990348185
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000079 n ^ 2 : ℚ) / (A000351 n : ℚ) * (A075913 n : ℚ)

end

end A075908.P15969957963990348185

/-! ## A075908.P7005256405649995446

`A075499(A167499(n+3))`
-/

namespace A075908.P7005256405649995446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075499 (A167499 (n + 3)).toNat

end

end A075908.P7005256405649995446

/-! ## A075908.P7961859651023341512

`A075499(A055999(n+1)+11)`
-/

namespace A075908.P7961859651023341512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075499 (A055999 (n + 1) + 11).toNat

end

end A075908.P7961859651023341512

/-! ## A075908.P7392649577333661430

`A076005(n)/2^n`
-/

namespace A075908.P7392649577333661430
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A076005 n : ℚ) / (2 ^ n : ℚ)

end

end A075908.P7392649577333661430

/-!
# A075909: Sixth column of triangle A075499.

The programs for A075909, there is no canonical definition to state claims against.
-/

/-! ## A075909.P4392278276562231368

`2^n*A075511(n)`
-/

namespace A075909.P4392278276562231368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A075511 n

end

end A075909.P4392278276562231368

/-! ## A075909.P17708840015809660537

`4^n*A000770(n+6)`
-/

namespace A075909.P17708840015809660537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 ^ n : ℤ) * A000770 (n + 6)

end

end A075909.P17708840015809660537

/-! ## A075909.P14417320372809235450

`A000770(n+6)*A011782(n+1)²`
-/

namespace A075909.P14417320372809235450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000770 (n + 6) * A011782 (n + 1) ^ 2

end

end A075909.P14417320372809235450

/-! ## A075909.P803625182834855615

`A000770(n+6)*A011782(2*n+1)`
-/

namespace A075909.P803625182834855615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000770 (n + 6) * A011782 (2 * n + 1)

end

end A075909.P803625182834855615

/-! ## A075909.P8676424557721883811

`A000770(n+6)*A016116(2*n)*A000079(n)`
-/

namespace A075909.P8676424557721883811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000770 (n + 6) * A016116 (2 * n) * A000079 n

end

end A075909.P8676424557721883811

/-! ## A075909.P13359349521510635580

`A075499(A055999(n+2)+12)`
-/

namespace A075909.P13359349521510635580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075499 (A055999 (n + 2) + 12).toNat

end

end A075909.P13359349521510635580

/-! ## A075909.P15728819619439773355

`A076006(n)/2^n`
-/

namespace A075909.P15728819619439773355
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A076006 n : ℚ) / (2 ^ n : ℚ)

end

end A075909.P15728819619439773355

/-!
# A075910: Seventh column of triangle A075499.

The programs for A075910, there is no canonical definition to state claims against.
-/

/-! ## A075910.P8096785787202323818

`2^n*A075512(n)`
-/

namespace A075910.P8096785787202323818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A075512 n

end

end A075910.P8096785787202323818

/-! ## A075910.P1158930848931883606

`4^n*A000771(n+7)`
-/

namespace A075910.P1158930848931883606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 ^ n : ℤ) * A000771 (n + 7)

end

end A075910.P1158930848931883606

/-! ## A075910.P3391697594119704054

`A000771(n+7)*A262616(∑[n])`
-/

namespace A075910.P3391697594119704054
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000771 (n + 7) * A262616 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A075910.P3391697594119704054

/-! ## A075910.P17986301728135286140

`A000771(n+7)*A075499(A000124(n))`
-/

namespace A075910.P17986301728135286140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000771 (n + 7) * A075499 (A000124 n).toNat

end

end A075910.P17986301728135286140

/-! ## A075910.P2380949668756244506

`A000079(n)*A075497(A056119(n)+28)`
-/

namespace A075910.P2380949668756244506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n * A075497 (A056119 n + 28).toNat

end

end A075910.P2380949668756244506

/-! ## A075910.P13673808473824279845

`A016116(2*n)*A075497(A056119(n)+28)`
-/

namespace A075910.P13673808473824279845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 (2 * n) * A075497 (A056119 n + 28).toNat

end

end A075910.P13673808473824279845

/-! ## A075910.P3568816812810706940

`A000771(n+7)*A075497(A000124(n))*A016116(2*n)`
-/

namespace A075910.P3568816812810706940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000771 (n + 7) * A075497 (A000124 n).toNat * A016116 (2 * n)

end

end A075910.P3568816812810706940

/-! ## A075910.P4090883369370277425

`A075499(A056119(n)+28)`
-/

namespace A075910.P4090883369370277425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075499 (A056119 n + 28).toNat

end

end A075910.P4090883369370277425

/-! ## A075910.P7403479386819211764

`A076007(n)/2^n`
-/

namespace A075910.P7403479386819211764
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A076007 n : ℚ) / (2 ^ n : ℚ)

end

end A075910.P7403479386819211764

/-!
# A075911: Third column of triangle A075500.

The programs for A075911, the canonical program `A075911.P18399373886857800327` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A075911 has offset 0).

The definition of A075911 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A075911.P15731953858163145685

`(5^n-8*10^n+9*15^n)/2`
-/

namespace A075911.P15731953858163145685
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((5 ^ n : ℤ) - (8 * 10 ^ n : ℤ) + (9 * 15 ^ n : ℤ) : ℚ) / 2

end

end A075911.P15731953858163145685

namespace A075911

/-- `(5^n-8*10^n+9*15^n)/2` -/
def P15731953858163145685.Spec : Prop :=
  ∀ n, P15731953858163145685.a n = (A075911 n : ℚ)

theorem P15731953858163145685.correct : P15731953858163145685.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A075911, Nat.add_sub_cancel, A075911.P15731953858163145685.a, A075911.P18399373886857800327.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A075911, Nat.add_sub_cancel, A075911.P15731953858163145685.a, A075911.P18399373886857800327.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [← h1, ← h2, ← h3]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A075911

/-! ## A075911.P18399373886857800327

`30*a(n-1)-275*a(n-2)+750*a(n-3)` with `a(0)=1, a(1)=30, a(2)=625`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A075911

/-- `30*a(n-1)-275*a(n-2)+750*a(n-3)` -/
def P18399373886857800327.Spec : Prop :=
  ∀ n, P18399373886857800327.a n = A075911 n

theorem P18399373886857800327.correct : P18399373886857800327.Spec := by
  intro n
  simp only [A075911]

end A075911

/-! ## A075911.P1505602471565871584

`5^n*A000392(n+3)`
-/

namespace A075911.P1505602471565871584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (5 ^ n : ℤ) * A000392 (n + 3)

end

end A075911.P1505602471565871584

namespace A075911

/-- `5^n*A000392(n+3)` -/
def P1505602471565871584.Spec : Prop :=
  ∀ n, P1505602471565871584.a n = A075911 n

end A075911

/-! ## A075911.P16607314347229101499

`5^n*∑[∑[A027649(n)]]`
-/

namespace A075911.P16607314347229101499
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027649 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (5 ^ n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A075911.P16607314347229101499

namespace A075911

/-- `5^n*∑[∑[A027649(n)]]` -/
def P16607314347229101499.Spec : Prop :=
  ∀ n, P16607314347229101499.a n = A075911 n

end A075911

/-! ## A075911.P2118540995108089648

`5^n*∑[A001047(n+1)]`
-/

namespace A075911.P2118540995108089648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001047 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (5 ^ n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A075911.P2118540995108089648

namespace A075911

/-- `5^n*∑[A001047(n+1)]` -/
def P2118540995108089648.Spec : Prop :=
  ∀ n, P2118540995108089648.a n = A075911 n

end A075911

/-! ## A075911.P18417428493075540388

`A016164(n)+15*a(n-1)` with `a(0)=1`
-/

namespace A075911.P18417428493075540388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A016164 n + 15 * a (n - 1)

end

end A075911.P18417428493075540388

namespace A075911

/-- `A016164(n)+15*a(n-1)` -/
def P18417428493075540388.Spec : Prop :=
  ∀ n, P18417428493075540388.a n = A075911 n

end A075911

/-! ## A075911.P565634350166558533

`5^n*A008277(∑[n+2]+4)`
-/

namespace A075911.P565634350166558533
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (5 ^ n : ℤ) * A008277 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A075911.P565634350166558533

namespace A075911

/-- `5^n*A008277(∑[n+2]+4)` -/
def P565634350166558533.Spec : Prop :=
  ∀ n, P565634350166558533.a n = A075911 n

end A075911

/-! ## A075911.P14839649492580686379

`A075500(∑[n+2]+4)`
-/

namespace A075911.P14839649492580686379
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075500 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A075911.P14839649492580686379

namespace A075911

/-- `A075500(∑[n+2]+4)` -/
def P14839649492580686379.Spec : Prop :=
  ∀ n, P14839649492580686379.a n = A075911 n

end A075911

/-! ## A075911.P7460804612666733301

`or(A037912(n+1), A075500(A167614(n+1)))`
-/

namespace A075911.P7460804612666733301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A037912 (n + 1)) (A075500 (A167614 (n + 1)).toNat)

end

end A075911.P7460804612666733301

namespace A075911

/-- `or(A037912(n+1), A075500(A167614(n+1)))` -/
def P7460804612666733301.Spec : Prop :=
  ∀ n, P7460804612666733301.a n = A075911 n

end A075911

/-!
# A075912: Fourth column of triangle A075500.

The programs for A075912, there is no canonical definition to state claims against.
-/

/-! ## A075912.P12770217355608673594

`5^n*∑[A016269(n)]`
-/

namespace A075912.P12770217355608673594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016269 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (5 ^ n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A075912.P12770217355608673594

/-! ## A075912.P3486833278724944382

`5^n*A000453(n+4)`
-/

namespace A075912.P3486833278724944382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (5 ^ n : ℤ) * A000453 (n + 4)

end

end A075912.P3486833278724944382

/-! ## A075912.P3699349975133460128

`5^n*∑[∑[A027650(n)]]`
-/

namespace A075912.P3699349975133460128
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027650 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (5 ^ n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A075912.P3699349975133460128

/-! ## A075912.P2212197985211624389

`∑[A016269(n)]*A000351(n)`
-/

namespace A075912.P2212197985211624389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016269 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A000351 n

end

end A075912.P2212197985211624389

/-! ## A075912.P13263796655675083640

`A000453(n+4)*A013612(A000096(n))`
-/

namespace A075912.P13263796655675083640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000453 (n + 4) * A013612 (A000096 n).toNat

end

end A075912.P13263796655675083640

/-! ## A075912.P1936026820776409793

`A000453(n+4)*A193685(A000217(n))`
-/

namespace A075912.P1936026820776409793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000453 (n + 4) * A193685 (A000217 n).toNat

end

end A075912.P1936026820776409793

/-! ## A075912.P5620027190146650736

`A000453(n+4)*A075500(A000124(n))`
-/

namespace A075912.P5620027190146650736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000453 (n + 4) * A075500 (A000124 n).toNat

end

end A075912.P5620027190146650736

/-! ## A075912.P14706075228858776909

`A075500(A052905(n)+9)`
-/

namespace A075912.P14706075228858776909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075500 (A052905 n + 9).toNat

end

end A075912.P14706075228858776909

/-! ## A075912.P7134582005032294508

`A075500(A055999(n)+10)`
-/

namespace A075912.P7134582005032294508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075500 (A055999 n + 10).toNat

end

end A075912.P7134582005032294508

/-! ## A075912.P17905221717532090131

`A075500(A167614(n+2)+1)`
-/

namespace A075912.P17905221717532090131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075500 (A167614 (n + 2) + 1).toNat

end

end A075912.P17905221717532090131

/-!
# A075913: Fifth column of triangle A075500.

The programs for A075913, there is no canonical definition to state claims against.
-/

/-! ## A075913.P14493192986315711623

`5^n*∑[A025211(n)]`
-/

namespace A075913.P14493192986315711623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025211 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (5 ^ n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A075913.P14493192986315711623

/-! ## A075913.P611645146799284302

`5^n*A000481(n+5)`
-/

namespace A075913.P611645146799284302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (5 ^ n : ℤ) * A000481 (n + 5)

end

end A075913.P611645146799284302

/-! ## A075913.P5047370097531952742

`5^n*A056511(2*n+9)`
-/

namespace A075913.P5047370097531952742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (5 ^ n : ℤ) * A056511 (2 * n + 9)

end

end A075913.P5047370097531952742

/-! ## A075913.P2128268649836393259

`∑[A025211(n)]*A000351(n)`
-/

namespace A075913.P2128268649836393259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025211 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A000351 n

end

end A075913.P2128268649836393259

/-! ## A075913.P629557257607700463

`∑[A025211(n)]*Δ[A003463(n)]`
-/

namespace A075913.P629557257607700463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025211 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003463 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * (f2 (n + 1) - f2 n)

end

end A075913.P629557257607700463

/-! ## A075913.P11754516077760534581

`A000481(n+5)*A013612(A000096(n))`
-/

namespace A075913.P11754516077760534581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000481 (n + 5) * A013612 (A000096 n).toNat

end

end A075913.P11754516077760534581

/-! ## A075913.P7562267374296487567

`A000481(n+5)*A218016(A000217(n))`
-/

namespace A075913.P7562267374296487567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000481 (n + 5) * A218016 (A000217 n).toNat

end

end A075913.P7562267374296487567

/-! ## A075913.P4710896815854251294

`A075500(A055999(n+1)+11)`
-/

namespace A075913.P4710896815854251294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075500 (A055999 (n + 1) + 11).toNat

end

end A075913.P4710896815854251294

/-!
# A075914: Sixth column of triangle A075500.

The programs for A075914, there is no canonical definition to state claims against.
-/

/-! ## A075914.P10405494833822981973

`A000351(n)*A000770(n+6)`
-/

namespace A075914.P10405494833822981973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000351 n * A000770 (n + 6)

end

end A075914.P10405494833822981973

/-! ## A075914.P17636992926562922840

`A000770(n+6)*A193685(∑[n])`
-/

namespace A075914.P17636992926562922840
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000770 (n + 6) * A193685 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A075914.P17636992926562922840

/-! ## A075914.P15829152429515675431

`Δ[A003463(n)]*A000770(n+6)`
-/

namespace A075914.P15829152429515675431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003463 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A000770 (n + 6)

end

end A075914.P15829152429515675431

/-! ## A075914.P18403324094784535278

`5^n*A008277(A000124(n+5)+5)`
-/

namespace A075914.P18403324094784535278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (5 ^ n : ℤ) * A008277 (A000124 (n + 5) + 5).toNat

end

end A075914.P18403324094784535278

/-! ## A075914.P18338828628707905558

`A000770(n+6)*A013612(A000096(n))`
-/

namespace A075914.P18338828628707905558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000770 (n + 6) * A013612 (A000096 n).toNat

end

end A075914.P18338828628707905558

/-! ## A075914.P7839803024624149568

`A000770(n+6)*A075500(A000124(n))`
-/

namespace A075914.P7839803024624149568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000770 (n + 6) * A075500 (A000124 n).toNat

end

end A075914.P7839803024624149568

/-! ## A075914.P6453163205550476630

`A075500(A166136(n+4))`
-/

namespace A075914.P6453163205550476630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075500 (A166136 (n + 4)).toNat

end

end A075914.P6453163205550476630

/-! ## A075914.P4471678328812944458

`A075500(A055999(n+2)+12)`
-/

namespace A075914.P4471678328812944458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075500 (A055999 (n + 2) + 12).toNat

end

end A075914.P4471678328812944458

/-! ## A075914.P7601751678269193706

`A075500(A000096(n+6)-5-comp[2*n])`
-/

namespace A075914.P7601751678269193706
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075500 (A000096 (n + 6) - 5 - (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ)).toNat

end

end A075914.P7601751678269193706

/-!
# A075915: Seventh column of triangle A075500.

The programs for A075915, there is no canonical definition to state claims against.
-/

/-! ## A075915.P3742658526198790693

`5^n*A000771(n+7)`
-/

namespace A075915.P3742658526198790693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (5 ^ n : ℤ) * A000771 (n + 7)

end

end A075915.P3742658526198790693

/-! ## A075915.P2741145616907024055

`A000771(n+7)*A013612(A000096(n))`
-/

namespace A075915.P2741145616907024055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000771 (n + 7) * A013612 (A000096 n).toNat

end

end A075915.P2741145616907024055

/-! ## A075915.P7674311533511166155

`A000771(n+7)*A075500(A000124(n))`
-/

namespace A075915.P7674311533511166155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000771 (n + 7) * A075500 (A000124 n).toNat

end

end A075915.P7674311533511166155

/-! ## A075915.P6924822674440095603

`A075500(A167487(n+5))`
-/

namespace A075915.P6924822674440095603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075500 (A167487 (n + 5)).toNat

end

end A075915.P6924822674440095603

/-! ## A075915.P2592106190196136254

`A075500(A056119(n)+28)`
-/

namespace A075915.P2592106190196136254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075500 (A056119 n + 28).toNat

end

end A075915.P2592106190196136254

/-! ## A075915.P18153772281764875505

`A075500(A167499(n+5)+2)`
-/

namespace A075915.P18153772281764875505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075500 (A167499 (n + 5) + 2).toNat

end

end A075915.P18153772281764875505

/-!
# A075916: Third column of triangle A075501.

The programs for A075916, the canonical program `A075916.P16094316540513297804` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A075916 has offset 0).

The definition of A075916 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A075916.P16094316540513297804

`(6^n-8*12^n+9*18^n)/2`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A075916

/-- `(6^n-8*12^n+9*18^n)/2` -/
def P16094316540513297804.Spec : Prop :=
  ∀ n, P16094316540513297804.a n = (A075916 n : ℚ)

end A075916

/-! ## A075916.P12554522995824362508

`2^n*A017933(n)`
-/

namespace A075916.P12554522995824362508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A017933 n

end

end A075916.P12554522995824362508

namespace A075916

/-- `2^n*A017933(n)` -/
def P12554522995824362508.Spec : Prop :=
  ∀ n, P12554522995824362508.a n = A075916 n

end A075916

/-! ## A075916.P15503247201059884722

`6^n*∑[A001047(n+1)]`
-/

namespace A075916.P15503247201059884722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001047 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (6 ^ n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A075916.P15503247201059884722

namespace A075916

/-- `6^n*∑[A001047(n+1)]` -/
def P15503247201059884722.Spec : Prop :=
  ∀ n, P15503247201059884722.a n = A075916 n

end A075916

/-! ## A075916.P9198957560039139328

`A016175(n)+18*a(n-1)` with `a(0)=1`
-/

namespace A075916.P9198957560039139328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A016175 n + 18 * a (n - 1)

end

end A075916.P9198957560039139328

namespace A075916

/-- `A016175(n)+18*a(n-1)` -/
def P9198957560039139328.Spec : Prop :=
  ∀ n, P9198957560039139328.a n = A075916 n

end A075916

/-! ## A075916.P16671638100068166246

`A000244(n)*A000392(n+3)*2^n`
-/

namespace A075916.P16671638100068166246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 n * A000392 (n + 3) * (2 ^ n : ℤ)

end

end A075916.P16671638100068166246

namespace A075916

/-- `A000244(n)*A000392(n+3)*2^n` -/
def P16671638100068166246.Spec : Prop :=
  ∀ n, P16671638100068166246.a n = A075916 n

end A075916

/-! ## A075916.P14575245887262039597

`A017933(n)*A114192(A000217(n))`
-/

namespace A075916.P14575245887262039597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017933 n * A114192 (A000217 n).toNat

end

end A075916.P14575245887262039597

namespace A075916

/-- `A017933(n)*A114192(A000217(n))` -/
def P14575245887262039597.Spec : Prop :=
  ∀ n, P14575245887262039597.a n = A075916 n

end A075916

/-! ## A075916.P429639036713925231

`A000400(n)*A008277(A167614(n+1))`
-/

namespace A075916.P429639036713925231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000400 n * A008277 (A167614 (n + 1)).toNat

end

end A075916.P429639036713925231

namespace A075916

/-- `A000400(n)*A008277(A167614(n+1))` -/
def P429639036713925231.Spec : Prop :=
  ∀ n, P429639036713925231.a n = A075916 n

end A075916

/-! ## A075916.P2557562835252608869

`A075501(A167614(n+1))`
-/

namespace A075916.P2557562835252608869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075501 (A167614 (n + 1)).toNat

end

end A075916.P2557562835252608869

namespace A075916

/-- `A075501(A167614(n+1))` -/
def P2557562835252608869.Spec : Prop :=
  ∀ n, P2557562835252608869.a n = A075916 n

end A075916

/-! ## A075916.P13072210459978846329

`A075501(A167499(n)+n)`
-/

namespace A075916.P13072210459978846329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075501 (A167499 n + (n : ℤ)).toNat

end

end A075916.P13072210459978846329

namespace A075916

/-- `A075501(A167499(n)+n)` -/
def P13072210459978846329.Spec : Prop :=
  ∀ n, P13072210459978846329.a n = A075916 n

end A075916

/-!
# A075917: Fourth column of triangle A075501.

The programs for A075917, there is no canonical definition to state claims against.
-/

/-! ## A075917.P6914473763435173846

`2^n*A028085(n)`
-/

namespace A075917.P6914473763435173846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A028085 n

end

end A075917.P6914473763435173846

/-! ## A075917.P6615128753551103991

`6^n*∑[A016269(n)]`
-/

namespace A075917.P6615128753551103991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016269 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (6 ^ n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A075917.P6615128753551103991

/-! ## A075917.P3035551163967628270

`6^n*A000453(n+4)`
-/

namespace A075917.P3035551163967628270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (6 ^ n : ℤ) * A000453 (n + 4)

end

end A075917.P3035551163967628270

/-! ## A075917.P1472683282206864697

`6^n*∑[∑[A027650(n)]]`
-/

namespace A075917.P1472683282206864697
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027650 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (6 ^ n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A075917.P1472683282206864697

/-! ## A075917.P9810890284926592640

`A025966(n)*A166552(2*n+1)`
-/

namespace A075917.P9810890284926592640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025966 n * A166552 (2 * n + 1)

end

end A075917.P9810890284926592640

/-! ## A075917.P5905044804626352323

`A028085(n)*A075497(A000124(n))`
-/

namespace A075917.P5905044804626352323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028085 n * A075497 (A000124 n).toNat

end

end A075917.P5905044804626352323

/-! ## A075917.P329696292157583855

`A028085(n)*A175840(A000096(n))`
-/

namespace A075917.P329696292157583855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028085 n * A175840 (A000096 n).toNat

end

end A075917.P329696292157583855

/-! ## A075917.P9887889839051671916

`A075916(n)/A076003(n)*A076004(n)`
-/

namespace A075917.P9887889839051671916
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A075916 n : ℚ) / (A076003 n : ℚ) * (A076004 n : ℚ)

end

end A075917.P9887889839051671916

/-! ## A075917.P18421826000951629230

`A075501(A052905(n)+9)`
-/

namespace A075917.P18421826000951629230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075501 (A052905 n + 9).toNat

end

end A075917.P18421826000951629230

/-! ## A075917.P4224280875116055508

`A075501(A055999(n)+10)`
-/

namespace A075917.P4224280875116055508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075501 (A055999 n + 10).toNat

end

end A075917.P4224280875116055508

/-!
# A075918: Fifth column of triangle A075501.

The programs for A075918, there is no canonical definition to state claims against.
-/

/-! ## A075918.P7837673783829632482

`2^n*A075515(n)`
-/

namespace A075918.P7837673783829632482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A075515 n

end

end A075918.P7837673783829632482

/-! ## A075918.P6304812515129426896

`6^n*A000481(n+5)`
-/

namespace A075918.P6304812515129426896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (6 ^ n : ℤ) * A000481 (n + 5)

end

end A075918.P6304812515129426896

/-! ## A075918.P17645782539280336239

`xor(4, A000079(n)*A075515(n)+4)`
-/

namespace A075918.P17645782539280336239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 4 (A000079 n * A075515 n + 4)

end

end A075918.P17645782539280336239

/-! ## A075918.P714366310016051365

`A075501(A167499(n+3))`
-/

namespace A075918.P714366310016051365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075501 (A167499 (n + 3)).toNat

end

end A075918.P714366310016051365

/-! ## A075918.P14817575944069818071

`A075501(A056000(n)+15)`
-/

namespace A075918.P14817575944069818071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075501 (A056000 n + 15).toNat

end

end A075918.P14817575944069818071

/-! ## A075918.P3886766573084806724

`A075501(A055999(n+1)+11)`
-/

namespace A075918.P3886766573084806724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075501 (A055999 (n + 1) + 11).toNat

end

end A075918.P3886766573084806724

/-!
# A075919: Sixth column of triangle A075501.

The programs for A075919, there is no canonical definition to state claims against.
-/

/-! ## A075919.P9839932248294640210

`2^n*A075516(n)`
-/

namespace A075919.P9839932248294640210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A075516 n

end

end A075919.P9839932248294640210

/-! ## A075919.P869024005888713408

`3^n*A075511(n)`
-/

namespace A075919.P869024005888713408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℤ) * A075511 n

end

end A075919.P869024005888713408

/-! ## A075919.P17180579319185396241

`6^n*A000770(n+6)`
-/

namespace A075919.P17180579319185396241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (6 ^ n : ℤ) * A000770 (n + 6)

end

end A075919.P17180579319185396241

/-! ## A075919.P16495594668441654337

`lcm(A075511(n), A075516(n))`
-/

namespace A075919.P16495594668441654337
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A075511 n) (A075516 n)

end

end A075919.P16495594668441654337

/-! ## A075919.P1581630279145148713

`A000770(n+6)*A056452(2*n)`
-/

namespace A075919.P1581630279145148713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000770 (n + 6) * A056452 (2 * n)

end

end A075919.P1581630279145148713

/-!
# A075920: Seventh column of triangle A075501.

The programs for A075920, there is no canonical definition to state claims against.
-/

/-! ## A075920.P9185697500299187712

`2^n*A075906(n)`
-/

namespace A075920.P9185697500299187712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A075906 n

end

end A075920.P9185697500299187712

/-! ## A075920.P16087750376752819071

`3^n*A075512(n)`
-/

namespace A075920.P16087750376752819071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℤ) * A075512 n

end

end A075920.P16087750376752819071

/-! ## A075920.P2264734916492433503

`6^n*A000771(n+7)`
-/

namespace A075920.P2264734916492433503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (6 ^ n : ℤ) * A000771 (n + 7)

end

end A075920.P2264734916492433503

/-! ## A075920.P9372291377946740602

`lcm(A075512(n), A075906(n))`
-/

namespace A075920.P9372291377946740602
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A075512 n) (A075906 n)

end

end A075920.P9372291377946740602

/-! ## A075920.P8292308955899331290

`abs(A075906(n)*A122803(n))`
-/

namespace A075920.P8292308955899331290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A075906 n * A122803 n|

end

end A075920.P8292308955899331290

/-! ## A075920.P11584964113404627668

`A000771(n+7)*A075501(A000124(n))`
-/

namespace A075920.P11584964113404627668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000771 (n + 7) * A075501 (A000124 n).toNat

end

end A075920.P11584964113404627668

/-! ## A075920.P5464988646870846363

`A075915(n)/A075911(n)*A075916(n)`
-/

namespace A075920.P5464988646870846363
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A075915 n : ℚ) / (A075911 n : ℚ) * (A075916 n : ℚ)

end

end A075920.P5464988646870846363

/-! ## A075920.P6337900455427292892

`A075501(A056119(n)+28)`
-/

namespace A075920.P6337900455427292892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075501 (A056119 n + 28).toNat

end

end A075920.P6337900455427292892

/-!
# A075921: Second column of triangle A075502.

The programs for A075921, the canonical program `A075921.P11626681100708336688` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A075921 has offset 0).

The definition of A075921 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A075921.P11626681100708336688

`21*a(n-1)-98*a(n-2)` with `a(0)=1, a(1)=21`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A075921

/-- `21*a(n-1)-98*a(n-2)` -/
def P11626681100708336688.Spec : Prop :=
  ∀ n, P11626681100708336688.a n = A075921 n

theorem P11626681100708336688.correct : P11626681100708336688.Spec := by
  intro n
  simp only [A075921]

end A075921

/-! ## A075921.P8517296290205774748

`7^n*∑[2^n]`
-/

namespace A075921.P8517296290205774748
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 ^ n * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A075921.P8517296290205774748

namespace A075921

/-- `7^n*∑[2^n]` -/
def P8517296290205774748.Spec : Prop :=
  ∀ n, (P8517296290205774748.a n : ℤ) = A075921 n

end A075921

/-! ## A075921.P6100617635644294728

`lcm(2, 7*a(n-1))+7^n` with `a(0)=1`
-/

namespace A075921.P6100617635644294728
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.lcm 2 (7 * a (n - 1)) + 7 ^ n

end

end A075921.P6100617635644294728

namespace A075921

/-- `lcm(2, 7*a(n-1))+7^n` -/
def P6100617635644294728.Spec : Prop :=
  ∀ n, (P6100617635644294728.a n : ℤ) = A075921 n

end A075921

/-! ## A075921.P16855559605177071705

`or(1, 7^n*A126646(n))`
-/

namespace A075921.P16855559605177071705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 ((7 ^ n : ℤ) * A126646 n)

end

end A075921.P16855559605177071705

namespace A075921

/-- `or(1, 7^n*A126646(n))` -/
def P16855559605177071705.Spec : Prop :=
  ∀ n, P16855559605177071705.a n = A075921 n

end A075921

/-! ## A075921.P1137929765838046231

`A001023(n)+14^n-7^n`
-/

namespace A075921.P1137929765838046231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001023 n + (14 ^ n : ℤ) - (7 ^ n : ℤ)

end

end A075921.P1137929765838046231

namespace A075921

/-- `A001023(n)+14^n-7^n` -/
def P1137929765838046231.Spec : Prop :=
  ∀ n, P1137929765838046231.a n = A075921 n

end A075921

/-! ## A075921.P7180670800666169096

`abs(7^n*A052955(2*n)-n)+n`
-/

namespace A075921.P7180670800666169096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(7 ^ n : ℤ) * A052955 (2 * n) - (n : ℤ)| + (n : ℤ)

end

end A075921.P7180670800666169096

namespace A075921

/-- `abs(7^n*A052955(2*n)-n)+n` -/
def P7180670800666169096.Spec : Prop :=
  ∀ n, P7180670800666169096.a n = A075921 n

end A075921

/-! ## A075921.P11559283729843072543

`∑[A000079(n)]*A208704(n+1)/4`
-/

namespace A075921.P11559283729843072543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j) * A208704 (n + 1) : ℤ) : ℚ) / 4

end

end A075921.P11559283729843072543

namespace A075921

/-- `∑[A000079(n)]*A208704(n+1)/4` -/
def P11559283729843072543.Spec : Prop :=
  ∀ n, P11559283729843072543.a n = (A075921 n : ℚ)

end A075921

/-! ## A075921.P13853429149408136890

`A000079(n+1)*A000420(n)-A000420(n)`
-/

namespace A075921.P13853429149408136890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (n + 1) * A000420 n - A000420 n

end

end A075921.P13853429149408136890

namespace A075921

/-- `A000079(n+1)*A000420(n)-A000420(n)` -/
def P13853429149408136890.Spec : Prop :=
  ∀ n, P13853429149408136890.a n = A075921 n

end A075921

/-! ## A075921.P9101179959963817591

`A000225(n+1)+A000225(n+1)*A024075(n)`
-/

namespace A075921.P9101179959963817591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (n + 1) + A000225 (n + 1) * A024075 n

end

end A075921.P9101179959963817591

namespace A075921

/-- `A000225(n+1)+A000225(n+1)*A024075(n)` -/
def P9101179959963817591.Spec : Prop :=
  ∀ n, P9101179959963817591.a n = A075921 n

end A075921

/-! ## A075921.P6564763187448956461

`A123752(2*n+1)*A163864(2*n+1)-A123752(2*n)`
-/

namespace A075921.P6564763187448956461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123752 (2 * n + 1) * A163864 (2 * n + 1) - A123752 (2 * n)

end

end A075921.P6564763187448956461

namespace A075921

/-- `A123752(2*n+1)*A163864(2*n+1)-A123752(2*n)` -/
def P6564763187448956461.Spec : Prop :=
  ∀ n, P6564763187448956461.a n = A075921 n

end A075921

/-!
# A075922: Third column of triangle A075502.

The programs for A075922, the canonical program `A075922.P538227484057598856` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A075922 has offset 0).

The definition of A075922 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A075922.P538227484057598856

`(7^n-8*14^n+9*21^n)/2`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A075922

/-- `(7^n-8*14^n+9*21^n)/2` -/
def P538227484057598856.Spec : Prop :=
  ∀ n, P538227484057598856.a n = (A075922 n : ℚ)

end A075922

/-! ## A075922.P10711184959372813979

`7^n*A000392(n+3)`
-/

namespace A075922.P10711184959372813979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (7 ^ n : ℤ) * A000392 (n + 3)

end

end A075922.P10711184959372813979

namespace A075922

/-- `7^n*A000392(n+3)` -/
def P10711184959372813979.Spec : Prop :=
  ∀ n, P10711184959372813979.a n = A075922 n

end A075922

/-! ## A075922.P7237944606180358756

`7^n*∑[A001047(n+1)]`
-/

namespace A075922.P7237944606180358756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001047 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (7 ^ n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A075922.P7237944606180358756

namespace A075922

/-- `7^n*∑[A001047(n+1)]` -/
def P7237944606180358756.Spec : Prop :=
  ∀ n, P7237944606180358756.a n = A075922 n

end A075922

/-! ## A075922.P5052238085720878454

`A075921(n)+21*a(n-1)` with `a(0)=1`
-/

namespace A075922.P5052238085720878454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A075921 n + 21 * a (n - 1)

end

end A075922.P5052238085720878454

namespace A075922

/-- `A075921(n)+21*a(n-1)` -/
def P5052238085720878454.Spec : Prop :=
  ∀ n, P5052238085720878454.a n = A075922 n

end A075922

/-! ## A075922.P4176441928338429427

`∑[A001047(n+1)]*A000420(n)`
-/

namespace A075922.P4176441928338429427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001047 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A000420 n

end

end A075922.P4176441928338429427

namespace A075922

/-- `∑[A001047(n+1)]*A000420(n)` -/
def P4176441928338429427.Spec : Prop :=
  ∀ n, P4176441928338429427.a n = A075922 n

end A075922

/-! ## A075922.P17569112479601043042

`A075502(∑[n+2]+4)`
-/

namespace A075922.P17569112479601043042
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075502 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A075922.P17569112479601043042

namespace A075922

/-- `A075502(∑[n+2]+4)` -/
def P17569112479601043042.Spec : Prop :=
  ∀ n, P17569112479601043042.a n = A075922 n

end A075922

/-! ## A075922.P6974584918422500999

`lcm(A033999(n), A075502(A167614(n+1)))`
-/

namespace A075922.P6974584918422500999
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A075502 (A167614 (n + 1)).toNat)

end

end A075922.P6974584918422500999

namespace A075922

/-- `lcm(A033999(n), A075502(A167614(n+1)))` -/
def P6974584918422500999.Spec : Prop :=
  ∀ n, (P6974584918422500999.a n : ℤ) = A075922 n

end A075922

/-! ## A075922.P4401403419363504742

`A010685(2*n)*A075502(A167614(n+1))`
-/

namespace A075922.P4401403419363504742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010685 (2 * n) * A075502 (A167614 (n + 1)).toNat

end

end A075922.P4401403419363504742

namespace A075922

/-- `A010685(2*n)*A075502(A167614(n+1))` -/
def P4401403419363504742.Spec : Prop :=
  ∀ n, P4401403419363504742.a n = A075922 n

end A075922

/-! ## A075922.P16009816585596095199

`A040019(2*n+1)*A075502(A167614(n+1))`
-/

namespace A075922.P16009816585596095199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040019 (2 * n + 1) * A075502 (A167614 (n + 1)).toNat

end

end A075922.P16009816585596095199

namespace A075922

/-- `A040019(2*n+1)*A075502(A167614(n+1))` -/
def P16009816585596095199.Spec : Prop :=
  ∀ n, P16009816585596095199.a n = A075922 n

end A075922

/-!
# A075923: Fourth column of triangle A075502.

The programs for A075923, there is no canonical definition to state claims against.
-/

/-! ## A075923.P13640298038140118460

`7^n*A000453(n+4)`
-/

namespace A075923.P13640298038140118460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (7 ^ n : ℤ) * A000453 (n + 4)

end

end A075923.P13640298038140118460

/-! ## A075923.P5385001244508705090

`∑[A016269(n)]*A000420(n)`
-/

namespace A075923.P5385001244508705090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016269 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A000420 n

end

end A075923.P5385001244508705090

/-! ## A075923.P2949628922588043300

`A075502(A052905(n)+9)`
-/

namespace A075923.P2949628922588043300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075502 (A052905 n + 9).toNat

end

end A075923.P2949628922588043300

/-! ## A075923.P1325677143640445404

`A075502(A055999(n)+10)`
-/

namespace A075923.P1325677143640445404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075502 (A055999 n + 10).toNat

end

end A075923.P1325677143640445404

/-! ## A075923.P5206145092149846356

`A075502(A167614(n+2)+1)`
-/

namespace A075923.P5206145092149846356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075502 (A167614 (n + 2) + 1).toNat

end

end A075923.P5206145092149846356

/-! ## A075923.P3885337511392609543

`A075502(A167487(n+2)-3)`
-/

namespace A075923.P3885337511392609543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075502 (A167487 (n + 2) - 3).toNat

end

end A075923.P3885337511392609543

/-!
# A075924: Fifth column of triangle A075502.

The programs for A075924, there is no canonical definition to state claims against.
-/

/-! ## A075924.P15530947470698222428

`7^n*∑[A025211(n)]`
-/

namespace A075924.P15530947470698222428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025211 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (7 ^ n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A075924.P15530947470698222428

/-! ## A075924.P15851086499666558139

`7^n*A000481(n+5)`
-/

namespace A075924.P15851086499666558139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (7 ^ n : ℤ) * A000481 (n + 5)

end

end A075924.P15851086499666558139

/-! ## A075924.P298474447684530289

`∑[A025211(n)]*A208704(n+1)/4`
-/

namespace A075924.P298474447684530289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025211 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j) * A208704 (n + 1) : ℤ) : ℚ) / 4

end

end A075924.P298474447684530289

/-! ## A075924.P410462604760112392

`A075502(A167499(n+3))`
-/

namespace A075924.P410462604760112392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075502 (A167499 (n + 3)).toNat

end

end A075924.P410462604760112392

/-! ## A075924.P5432117061802917248

`A075502(A155212(n)+13)`
-/

namespace A075924.P5432117061802917248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075502 (A155212 n + 13).toNat

end

end A075924.P5432117061802917248

/-! ## A075924.P10738867696173299953

`A075502(A167614(n+3)+2)`
-/

namespace A075924.P10738867696173299953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075502 (A167614 (n + 3) + 2).toNat

end

end A075924.P10738867696173299953

/-! ## A075924.P10320765317719047332

`A075502(A055999(n+1)+11)`
-/

namespace A075924.P10320765317719047332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075502 (A055999 (n + 1) + 11).toNat

end

end A075924.P10320765317719047332

/-! ## A075924.P12732995815671286026

`A076002(n)/A076007(n)*A076005(n)`
-/

namespace A075924.P12732995815671286026
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A076002 n : ℚ) / (A076007 n : ℚ) * (A076005 n : ℚ)

end

end A075924.P12732995815671286026

/-! ## A075924.P10020546770058386676

`A076002(n)/A076013(n)*A076011(n)`
-/

namespace A075924.P10020546770058386676
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A076002 n : ℚ) / (A076013 n : ℚ) * (A076011 n : ℚ)

end

end A075924.P10020546770058386676

/-!
# A075925: Sixth column of triangle A075502.

The programs for A075925, there is no canonical definition to state claims against.
-/

/-! ## A075925.P5042030955702069488

`7^n*A000770(n+6)`
-/

namespace A075925.P5042030955702069488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (7 ^ n : ℤ) * A000770 (n + 6)

end

end A075925.P5042030955702069488

/-! ## A075925.P6648059769513721461

`A075502(A056115(n)+21)`
-/

namespace A075925.P6648059769513721461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075502 (A056115 n + 21).toNat

end

end A075925.P6648059769513721461

/-! ## A075925.P6401633654516309577

`A075502(A167499(n+4)+1)`
-/

namespace A075925.P6401633654516309577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075502 (A167499 (n + 4) + 1).toNat

end

end A075925.P6401633654516309577

/-! ## A075925.P1779207141094919354

`A075502(A253145(n+4)+6)`
-/

namespace A075925.P1779207141094919354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075502 (A253145 (n + 4) + 6).toNat

end

end A075925.P1779207141094919354

/-! ## A075925.P1163860425002550383

`A075502(A000217(n+5)+6)`
-/

namespace A075925.P1163860425002550383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075502 (A000217 (n + 5) + 6).toNat

end

end A075925.P1163860425002550383

/-! ## A075925.P5531720423841876295

`A075502(A246172(n+1)+20)`
-/

namespace A075925.P5531720423841876295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075502 (A246172 (n + 1) + 20).toNat

end

end A075925.P5531720423841876295

/-! ## A075925.P1211265694289897333

`A076002(n)/A076007(n)*A076006(n)`
-/

namespace A075925.P1211265694289897333
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A076002 n : ℚ) / (A076007 n : ℚ) * (A076006 n : ℚ)

end

end A075925.P1211265694289897333

/-!
# A075926: List of codewords in binary lexicode with Hamming distance 3 written as decimal numbers.

The programs for A075926, the canonical program `A075926.P12171091474890289077` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A075926 has offset 0).

The definition of A075926 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2048 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A075926.P12171091474890289077

`eq[n, A341273(n)]`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A075926

/-- `eq[n, A341273(n)]` -/
def P12171091474890289077.Spec : Prop :=
  ∀ n, (P12171091474890289077.a n : ℤ) = A075926 n

theorem P12171091474890289077.correct : P12171091474890289077.Spec := by
  intro n
  simp only [A075926]

end A075926

/-! ## A075926.P15495100502508327782

`eq[0, A261283(n)]`
-/

namespace A075926.P15495100502508327782
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261283 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A075926.P15495100502508327782

namespace A075926

/-- `eq[0, A261283(n)]` -/
def P15495100502508327782.Spec : Prop :=
  ∀ n, (P15495100502508327782.a n : ℤ) = A075926 n

end A075926

/-! ## A075926.P13012853871397173886

`record[n-A075931(A261283(n)²)²]`
-/

namespace A075926.P13012853871397173886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A075931 (A261283 n ^ 2).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A075926.P13012853871397173886

namespace A075926

/-- `record[n-A075931(A261283(n)²)²]` -/
def P13012853871397173886.Spec : Prop :=
  ∀ n, P13012853871397173886.a n = A075926 n

end A075926

/-! ## A075926.P10770491882998405131

`A004526(A075928(n))`
-/

namespace A075926.P10770491882998405131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A075928 n).toNat

end

end A075926.P10770491882998405131

namespace A075926

/-- `A004526(A075928(n))` -/
def P10770491882998405131.Spec : Prop :=
  ∀ n, P10770491882998405131.a n = A075926 n

end A075926

/-! ## A075926.P662723474216922777

`eq[A253315(n), A355340(n)]`
-/

namespace A075926.P662723474216922777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253315 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355340 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A075926.P662723474216922777

namespace A075926

/-- `eq[A253315(n), A355340(n)]` -/
def P662723474216922777.Spec : Prop :=
  ∀ n, (P662723474216922777.a n : ℤ) = A075926 n

end A075926

/-! ## A075926.P16555771197656908179

`eq[0, A253315(2*n)]`
-/

namespace A075926.P16555771197656908179
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253315 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A075926.P16555771197656908179

namespace A075926

/-- `eq[0, A253315(2*n)]` -/
def P16555771197656908179.Spec : Prop :=
  ∀ n, (P16555771197656908179.a n : ℤ) = A075926 n

end A075926

/-! ## A075926.P15224512416529834180

`lt[A253315(A005843(n)), 1]`
-/

namespace A075926.P15224512416529834180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253315 (A005843 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A075926.P15224512416529834180

namespace A075926

/-- `lt[A253315(A005843(n)), 1]` -/
def P15224512416529834180.Spec : Prop :=
  ∀ n, (P15224512416529834180.a n : ℤ) = A075926 n

end A075926

/-! ## A075926.P15012460210845121822

`eq[1, 1-A253315(A004277(n))]`
-/

namespace A075926.P15012460210845121822
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A253315 (A004277 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A075926.P15012460210845121822

namespace A075926

/-- `eq[1, 1-A253315(A004277(n))]` -/
def P15012460210845121822.Spec : Prop :=
  ∀ n, (P15012460210845121822.a n : ℤ) = A075926 n

end A075926

/-! ## A075926.P13228209284380929965

`lt[A253315(n+1), A000035(n+1)]/2`
-/

namespace A075926.P13228209284380929965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253315 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j < f2 j) n : ℚ) / 2

end

end A075926.P13228209284380929965

namespace A075926

/-- `lt[A253315(n+1), A000035(n+1)]/2` -/
def P13228209284380929965.Spec : Prop :=
  ∀ n, P13228209284380929965.a n = (A075926 n : ℚ)

end A075926

/-! ## A075926.P3491353938720827796

`lt[A253315(n+1), A165326(n+1)]/2`
-/

namespace A075926.P3491353938720827796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253315 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165326 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j < f2 j) n : ℚ) / 2

end

end A075926.P3491353938720827796

namespace A075926

/-- `lt[A253315(n+1), A165326(n+1)]/2` -/
def P3491353938720827796.Spec : Prop :=
  ∀ n, P3491353938720827796.a n = (A075926 n : ℚ)

end A075926

/-! ## A075926.P4624619781667592939

`A285779(eq[A102394(n), A253315(n)])`
-/

namespace A075926.P4624619781667592939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102394 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253315 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285779 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A075926.P4624619781667592939

namespace A075926

/-- `A285779(eq[A102394(n), A253315(n)])` -/
def P4624619781667592939.Spec : Prop :=
  ∀ n, P4624619781667592939.a n = A075926 n

end A075926

/-!
# A075927: Basis for code in A075926.

The programs for A075927, there is no canonical definition to state claims against.
-/

/-! ## A075927.P15084224808854147156

`floor(A075929(n)/2)`
-/

namespace A075927.P15084224808854147156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A075929 n : ℚ) / 2⌋

end

end A075927.P15084224808854147156

/-! ## A075927.P13150911687458117090

`round((A075929(n)-A154272(n+1)-1)/2)`
-/

namespace A075927.P13150911687458117090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A075929 n - A154272 (n + 1) - 1 : ℚ) / 2)

end

end A075927.P13150911687458117090

/-! ## A075927.P17952454576940523211

`ceil((A075929(n)-A035263(2*n+5))/2)`
-/

namespace A075927.P17952454576940523211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A075929 n - A035263 (2 * n + 5) : ℚ) / 2⌉

end

end A075927.P17952454576940523211

/-! ## A075927.P12330569818513464678

`A075926(2^n)`
-/

namespace A075927.P12330569818513464678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075926 (2 ^ n)

end

end A075927.P12330569818513464678

/-! ## A075927.P14099525367043313068

`record[A075926(A034008(n))]`
-/

namespace A075927.P14099525367043313068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075926 (A034008 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A075927.P14099525367043313068

/-!
# A075928: List of codewords in binary lexicode with Hamming distance 4 written as decimal numbers.

The programs for A075928, the canonical program `A075928.P14773802074895312158` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A075928 has offset 0).

The definition of A075928 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 626 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A075928.P14773802074895312158

`A001969(A075926(n)+1)`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A075928

/-- `A001969(A075926(n)+1)` -/
def P14773802074895312158.Spec : Prop :=
  ∀ n, P14773802074895312158.a n = A075928 n

theorem P14773802074895312158.correct : P14773802074895312158.Spec := by
  intro n
  simp only [A075928]

end A075928

/-! ## A075928.P1839292603648094923

`A115384(4*A075926(n))`
-/

namespace A075928.P1839292603648094923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115384 (4 * A075926 n).toNat

end

end A075928.P1839292603648094923

namespace A075928

/-- `A115384(4*A075926(n))` -/
def P1839292603648094923.Spec : Prop :=
  ∀ n, P1839292603648094923.a n = A075928 n

end A075928

/-! ## A075928.P12510955459811101162

`eq[A102390(n), A253315(n)]`
-/

namespace A075928.P12510955459811101162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102390 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253315 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A075928.P12510955459811101162

namespace A075928

/-- `eq[A102390(n), A253315(n)]` -/
def P12510955459811101162.Spec : Prop :=
  ∀ n, (P12510955459811101162.a n : ℤ) = A075928 n

end A075928

/-! ## A075928.P1859345384294773347

`eq[A102392(n), A253315(n)]`
-/

namespace A075928.P1859345384294773347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102392 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253315 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A075928.P1859345384294773347

namespace A075928

/-- `eq[A102392(n), A253315(n)]` -/
def P1859345384294773347.Spec : Prop :=
  ∀ n, (P1859345384294773347.a n : ℤ) = A075928 n

end A075928

/-! ## A075928.P10717306525957318722

`eq[A102394(n), A253315(n)]`
-/

namespace A075928.P10717306525957318722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102394 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253315 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A075928.P10717306525957318722

namespace A075928

/-- `eq[A102394(n), A253315(n)]` -/
def P10717306525957318722.Spec : Prop :=
  ∀ n, (P10717306525957318722.a n : ℤ) = A075928 n

end A075928

/-! ## A075928.P14023693348441892544

`lt[A253315(n)+A010060(n), 1]`
-/

namespace A075928.P14023693348441892544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253315 n + A010060 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A075928.P14023693348441892544

namespace A075928

/-- `lt[A253315(n)+A010060(n), 1]` -/
def P14023693348441892544.Spec : Prop :=
  ∀ n, (P14023693348441892544.a n : ℤ) = A075928 n

end A075928

/-! ## A075928.P989505995083520440

`lt[A253315(n)+A001285(n), 2]`
-/

namespace A075928.P989505995083520440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253315 n + A001285 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A075928.P989505995083520440

namespace A075928

/-- `lt[A253315(n)+A001285(n), 2]` -/
def P989505995083520440.Spec : Prop :=
  ∀ n, (P989505995083520440.a n : ℤ) = A075928 n

end A075928

/-!
# A075929: Basis for code in A075928.

The programs for A075929, there is no canonical definition to state claims against.
-/

/-! ## A075929.P11013658860846390929

`A075928(2^n)`
-/

namespace A075929.P11013658860846390929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075928 (2 ^ n)

end

end A075929.P11013658860846390929

/-! ## A075929.P17890040774951178379

`record[A075928(A048483(n))]`
-/

namespace A075929.P17890040774951178379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075928 (A048483 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A075929.P17890040774951178379

/-! ## A075929.P7690591831597198106

`record[A075928(A055248(n))]`
-/

namespace A075929.P7690591831597198106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075928 (A055248 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A075929.P7690591831597198106

/-! ## A075929.P17046091425446163543

`record[A075928(A088975(n))]`
-/

namespace A075929.P17046091425446163543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075928 (A088975 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A075929.P17046091425446163543

/-! ## A075929.P18210843402749871824

`record[A075928(A119332(n))]`
-/

namespace A075929.P18210843402749871824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075928 (A119332 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A075929.P18210843402749871824

/-!
# A075930: Positions of check bits in code in A075928.

The programs for A075930, the canonical program `A075930.P8531539854800035933` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A075930 has offset 0).

The definition of A075930 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A075930.P8531539854800035933

`eq[1, C(7, a(and(n, n-1)))]` with `a(0)=2`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A075930

/-- `eq[1, C(7, a(and(n, n-1)))]` -/
def P8531539854800035933.Spec : Prop :=
  ∀ n, (P8531539854800035933.a n : ℤ) = A075930 n

theorem P8531539854800035933.correct : P8531539854800035933.Spec := by
  intro n
  simp only [A075930]

end A075930

/-! ## A075930.P18305105472583764917

`lt[tan(-a(and(n, n-1))), 0]` with `a(0)=2`
-/

namespace A075930.P18305105472583764917
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.rec [2] fun n f1 =>
  Real.tan (-f1 (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n

end

end A075930.P18305105472583764917

namespace A075930

/-- `lt[tan(-a(and(n, n-1))), 0]` -/
def P18305105472583764917.Spec : Prop :=
  ∀ n, (P18305105472583764917.a n : ℤ) = A075930 n

end A075930

/-! ## A075930.P2876963965459698378

`eq[0, abs(1-a(and(n, n-1)))]` with `a(0)=3`
-/

namespace A075930.P2876963965459698378
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f2 =>
  |1 - f2 (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat|

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A075930.P2876963965459698378

namespace A075930

/-- `eq[0, abs(1-a(and(n, n-1)))]` -/
def P2876963965459698378.Spec : Prop :=
  ∀ n, (P2876963965459698378.a n : ℤ) = A075930 n

end A075930

/-! ## A075930.P9520568643856441641

`lt[abs(1-a(and(n, n-1))), 1]` with `a(0)=3`
-/

namespace A075930.P9520568643856441641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f1 =>
  |1 - f1 (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat|

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A075930.P9520568643856441641

namespace A075930

/-- `lt[abs(1-a(and(n, n-1))), 1]` -/
def P9520568643856441641.Spec : Prop :=
  ∀ n, (P9520568643856441641.a n : ℤ) = A075930 n

end A075930

/-! ## A075930.P11721559722146775873

`eq[0, dr(1-a(and(n, n-1)))]` with `a(0)=3`
-/

namespace A075930.P11721559722146775873
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℕ := SequenceMachineLib.rec [3] fun n f2 =>
  SequenceMachineLib.digitalRoot (1 - (f2 (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat : ℤ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A075930.P11721559722146775873

namespace A075930

/-- `eq[0, dr(1-a(and(n, n-1)))]` -/
def P11721559722146775873.Spec : Prop :=
  ∀ n, (P11721559722146775873.a n : ℤ) = A075930 n

end A075930

/-! ## A075930.P10103635105984518362

`lt[1, xor(1, -a(and(n, n-1)))]` with `a(0)=0`
-/

namespace A075930.P10103635105984518362
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f2 =>
  Int.xor 1 (-f2 (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A075930.P10103635105984518362

namespace A075930

/-- `lt[1, xor(1, -a(and(n, n-1)))]` -/
def P10103635105984518362.Spec : Prop :=
  ∀ n, (P10103635105984518362.a n : ℤ) = A075930 n

end A075930

/-! ## A075930.P11031428340390984012

`eq[3, A020639(a(and(n, n-1))+1)]` with `a(0)=0`
-/

namespace A075930.P11031428340390984012
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f2 =>
  A020639 (f2 (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A075930.P11031428340390984012

namespace A075930

/-- `eq[3, A020639(a(and(n, n-1))+1)]` -/
def P11031428340390984012.Spec : Prop :=
  ∀ n, (P11031428340390984012.a n : ℤ) = A075930 n

end A075930

/-! ## A075930.P16747948037471694565

`eq[1, A008683(a(and(n, n-1))+2)]` with `a(0)=2`
-/

namespace A075930.P16747948037471694565
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f2 =>
  A008683 (f2 (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A075930.P16747948037471694565

namespace A075930

/-- `eq[1, A008683(a(and(n, n-1))+2)]` -/
def P16747948037471694565.Spec : Prop :=
  ∀ n, (P16747948037471694565.a n : ℤ) = A075930 n

end A075930

/-! ## A075930.P17980075976008610198

`filter[A000069(n+2), A347523(#)]`
-/

namespace A075930.P17980075976008610198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000069 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A347523 (f1 j).toNat = 1) n)

end

end A075930.P17980075976008610198

namespace A075930

/-- `filter[A000069(n+2), A347523(#)]` -/
def P17980075976008610198.Spec : Prop :=
  ∀ n, P17980075976008610198.a n = A075930 n

end A075930

/-! ## A075930.P13321096582001926378

`eq[A010060(n), A293668(n)]`
-/

namespace A075930.P13321096582001926378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293668 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A075930.P13321096582001926378

namespace A075930

/-- `eq[A010060(n), A293668(n)]` -/
def P13321096582001926378.Spec : Prop :=
  ∀ n, (P13321096582001926378.a n : ℤ) = A075930 n

end A075930

/-! ## A075930.P3705296993419758960

`eq[A277822(n), A293668(n)]`
-/

namespace A075930.P3705296993419758960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277822 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293668 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A075930.P3705296993419758960

namespace A075930

/-- `eq[A277822(n), A293668(n)]` -/
def P3705296993419758960.Spec : Prop :=
  ∀ n, (P3705296993419758960.a n : ℤ) = A075930 n

end A075930

/-! ## A075930.P2497962690080388236

`eq[A277822(n), A347523(n)]`
-/

namespace A075930.P2497962690080388236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277822 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347523 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A075930.P2497962690080388236

namespace A075930

/-- `eq[A277822(n), A347523(n)]` -/
def P2497962690080388236.Spec : Prop :=
  ∀ n, (P2497962690080388236.a n : ℤ) = A075930 n

end A075930

/-! ## A075930.P14474302662859790368

`filter[A271499(n+1), A010060(#)]`
-/

namespace A075930.P14474302662859790368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271499 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010060 (f1 j).toNat = 1) n)

end

end A075930.P14474302662859790368

namespace A075930

/-- `filter[A271499(n+1), A010060(#)]` -/
def P14474302662859790368.Spec : Prop :=
  ∀ n, P14474302662859790368.a n = A075930 n

end A075930

/-! ## A075930.P3393585645744717937

`∩[A000069(n+1), A271499(n+1)]`
-/

namespace A075930.P3393585645744717937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000069 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271499 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A075930.P3393585645744717937

namespace A075930

/-- `∩[A000069(n+1), A271499(n+1)]` -/
def P3393585645744717937.Spec : Prop :=
  ∀ n, (P3393585645744717937.a n : ℤ) = A075930 n

end A075930

/-! ## A075930.P16513761520595623389

`filter[A072823(n+2), A010060(#)]`
-/

namespace A075930.P16513761520595623389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072823 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010060 (f1 j).toNat = 1) n)

end

end A075930.P16513761520595623389

namespace A075930

/-- `filter[A072823(n+2), A010060(#)]` -/
def P16513761520595623389.Spec : Prop :=
  ∀ n, P16513761520595623389.a n = A075930 n

end A075930

/-! ## A075930.P13256467304892448701

`filter[A004169(n+1), A010060(#)]`
-/

namespace A075930.P13256467304892448701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004169 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010060 (f1 j).toNat = 1) n)

end

end A075930.P13256467304892448701

namespace A075930

/-- `filter[A004169(n+1), A010060(#)]` -/
def P13256467304892448701.Spec : Prop :=
  ∀ n, P13256467304892448701.a n = A075930 n

end A075930

/-! ## A075930.P8944164194575549705

`∩[A000069(n+1), A004169(n+1)]`
-/

namespace A075930.P8944164194575549705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000069 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004169 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A075930.P8944164194575549705

namespace A075930

/-- `∩[A000069(n+1), A004169(n+1)]` -/
def P8944164194575549705.Spec : Prop :=
  ∀ n, (P8944164194575549705.a n : ℤ) = A075930 n

end A075930

/-! ## A075930.P15044222273997145589

`filter[A175382(n+1), A010060(#)]`
-/

namespace A075930.P15044222273997145589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175382 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010060 (f1 j).toNat = 1) n)

end

end A075930.P15044222273997145589

namespace A075930

/-- `filter[A175382(n+1), A010060(#)]` -/
def P15044222273997145589.Spec : Prop :=
  ∀ n, P15044222273997145589.a n = A075930 n

end A075930

/-! ## A075930.P13933612730239597703

`∩[A000069(n+1), A175382(n+1)]`
-/

namespace A075930.P13933612730239597703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000069 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175382 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A075930.P13933612730239597703

namespace A075930

/-- `∩[A000069(n+1), A175382(n+1)]` -/
def P13933612730239597703.Spec : Prop :=
  ∀ n, (P13933612730239597703.a n : ℤ) = A075930 n

end A075930

/-! ## A075930.P16643506812968858337

`filter[A161992(n+1), A010060(#)]`
-/

namespace A075930.P16643506812968858337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161992 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010060 (f1 j).toNat = 1) n)

end

end A075930.P16643506812968858337

namespace A075930

/-- `filter[A161992(n+1), A010060(#)]` -/
def P16643506812968858337.Spec : Prop :=
  ∀ n, P16643506812968858337.a n = A075930 n

end A075930

/-!
# A075931: List of codewords in binary lexicode with Hamming distance 5 written as decimal numbers.

The programs for A075931, there is no canonical definition to state claims against.
-/

/-! ## A075931.P12752424630034403844

`floor(A075934(n)/2)`
-/

namespace A075931.P12752424630034403844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A075934 n : ℚ) / 2⌋

end

end A075931.P12752424630034403844

/-! ## A075931.P6594553946019149525

`A273943(and(-2, A075934(n)))`
-/

namespace A075931.P6594553946019149525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (Int.land (-2) (A075934 n)).toNat

end

end A075931.P6594553946019149525

/-! ## A075931.P7043425913669507468

`A023443(round((A075934(n)+1)/2))`
-/

namespace A075931.P7043425913669507468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (SequenceMachineLib.roundAway ((A075934 n + 1 : ℚ) / 2)).toNat

end

end A075931.P7043425913669507468

/-! ## A075931.P2799213189111585107

`A038572(A075934(n)-A010060(n))`
-/

namespace A075931.P2799213189111585107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038572 (A075934 n - A010060 n).toNat

end

end A075931.P2799213189111585107

/-! ## A075931.P17418578017766262657

`A175126(A075934(n)-A010060(n))`
-/

namespace A075931.P17418578017766262657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175126 (A075934 n - A010060 n).toNat

end

end A075931.P17418578017766262657

/-!
# A075932: Basis for code in A075931.

The programs for A075932, there is no canonical definition to state claims against.
-/

/-! ## A075932.P1481804562582820763

`floor(A075935(n)/2)`
-/

namespace A075932.P1481804562582820763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A075935 n : ℚ) / 2⌋

end

end A075932.P1481804562582820763

/-! ## A075932.P7943489158613084857

`floor(2^A321804(A001222(n+1))*A075935(n))`
-/

namespace A075932.P7943489158613084857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 : ℚ) ^ (A321804 (A001222 (n + 1)).toNat : ℤ) * (A075935 n : ℚ)⌋

end

end A075932.P7943489158613084857

/-! ## A075932.P2709823318129042757

`A075931(2^n)`
-/

namespace A075932.P2709823318129042757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075931 (2 ^ n)

end

end A075932.P2709823318129042757

/-! ## A075932.P14405146313873444971

`record[A075931(A034008(n))]`
-/

namespace A075932.P14405146313873444971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075931 (A034008 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A075932.P14405146313873444971

/-! ## A075932.P17084333827715477867

`record[A075931(A055248(n))]`
-/

namespace A075932.P17084333827715477867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075931 (A055248 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A075932.P17084333827715477867

/-!
# A075933: Positions of check bits in code in A075931.

The programs for A075933, there is no canonical definition to state claims against.
-/

/-! ## A075933.P15924221789641328648

`floor(A075936(n)/2)`
-/

namespace A075933.P15924221789641328648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A075936 n : ℚ) / 2⌋

end

end A075933.P15924221789641328648

/-! ## A075933.P16060582187711773037

`filter[A033623(n+1), A347523(#)]`
-/

namespace A075933.P16060582187711773037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033623 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A347523 (f1 j).toNat = 1) n)

end

end A075933.P16060582187711773037

/-! ## A075933.P9840243652186485921

`∩[A033623(n+1), A116451(n)]`
-/

namespace A075933.P9840243652186485921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033623 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116451 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A075933.P9840243652186485921

/-! ## A075933.P13800072294549943844

`∩[A028983(n+1), A033623(n+1)]`
-/

namespace A075933.P13800072294549943844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028983 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033623 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A075933.P13800072294549943844

/-! ## A075933.P2067881586535693217

`∩[A033623(n+1), A059485(n+1)]`
-/

namespace A075933.P2067881586535693217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033623 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059485 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A075933.P2067881586535693217

/-! ## A075933.P11035889125677241974

`∩[A033623(n+1), A067715(n+1)]`
-/

namespace A075933.P11035889125677241974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033623 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067715 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A075933.P11035889125677241974

/-! ## A075933.P4617733836211495640

`∩[A033623(n+1), A085837(n+1)]`
-/

namespace A075933.P4617733836211495640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033623 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085837 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A075933.P4617733836211495640

/-! ## A075933.P12299110442709901992

`∩[A033623(n+1), A093373(n+1)]`
-/

namespace A075933.P12299110442709901992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033623 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093373 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A075933.P12299110442709901992

/-! ## A075933.P13698646324643324531

`∩[A033623(n+1), A136492(n+1)]`
-/

namespace A075933.P13698646324643324531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033623 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136492 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A075933.P13698646324643324531

/-! ## A075933.P3867922659861630348

`∩[A033623(n+1), A161992(n+1)]`
-/

namespace A075933.P3867922659861630348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033623 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161992 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A075933.P3867922659861630348

/-!
# A075934: List of codewords in binary lexicode with Hamming distance 6 written as decimal numbers.

The programs for A075934, there is no canonical definition to state claims against.
-/

/-! ## A075934.P2258314439088558862

`A010060(A075931(n))+2*A075931(n)`
-/

namespace A075934.P2258314439088558862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (A075931 n).toNat + 2 * A075931 n

end

end A075934.P2258314439088558862

/-! ## A075934.P18082726463137452772

`A001969(A075931(n)+1)`
-/

namespace A075934.P18082726463137452772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001969 (A075931 n + 1).toNat

end

end A075934.P18082726463137452772

/-! ## A075934.P8450805222676776629

`A010060(n)+A005843(A075931(n))`
-/

namespace A075934.P8450805222676776629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 n + A005843 (A075931 n).toNat

end

end A075934.P8450805222676776629

/-! ## A075934.P2113356771423309060

`A005408(A075931(n))-A010059(n)`
-/

namespace A075934.P2113356771423309060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A075931 n).toNat - A010059 n

end

end A075934.P2113356771423309060

/-! ## A075934.P5280098324559238793

`A005408(A075931(n))-A010060(A005408(n))`
-/

namespace A075934.P5280098324559238793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A075931 n).toNat - A010060 (A005408 n).toNat

end

end A075934.P5280098324559238793

/-!
# A075935: Basis for code in A075934.

The programs for A075935, there is no canonical definition to state claims against.
-/

/-! ## A075935.P14566000850417078943

`A075934(2^n)`
-/

namespace A075935.P14566000850417078943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075934 (2 ^ n)

end

end A075935.P14566000850417078943

/-! ## A075935.P16648168084865550906

`record[A075934(Δ[∏[char[∑[n+1]]+1]])]`
-/

namespace A075935.P16648168084865550906
noncomputable section

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

open Classical in
def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f4 j = n then 1 else 0) + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075934 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A075935.P16648168084865550906

/-! ## A075935.P1150901710856265939

`A075934(A000079(n))*A211666(n+3)`
-/

namespace A075935.P1150901710856265939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075934 (A000079 n).toNat * A211666 (n + 3)

end

end A075935.P1150901710856265939

/-! ## A075935.P12959977806651889049

`A075934(A000079(n))%A164772(n+1)`
-/

namespace A075935.P12959977806651889049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A075934 (A000079 n).toNat) (A164772 (n + 1))

end

end A075935.P12959977806651889049

/-! ## A075935.P1662883540463456758

`C(A075934(A000079(n)), A335078(n+2))`
-/

namespace A075935.P1662883540463456758
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A075934 (A000079 n).toNat).toNat (A335078 (n + 2)).toNat

end

end A075935.P1662883540463456758

/-!
# A075936: Positions of check bits in code in A075934.

The programs for A075936, there is no canonical definition to state claims against.
-/

/-! ## A075936.P2210235791381287691

`filter[A054016(n+1), A295297(#)]`
-/

namespace A075936.P2210235791381287691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054016 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A295297 (f1 j).toNat = 1) n)

end

end A075936.P2210235791381287691

/-! ## A075936.P11322776589623319931

`filter[A054016(n+1), A347523(#)]`
-/

namespace A075936.P11322776589623319931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054016 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A347523 (f1 j).toNat = 1) n)

end

end A075936.P11322776589623319931

/-! ## A075936.P1114470063650857925

`∩[A054016(n+1), A295299(n+1)]`
-/

namespace A075936.P1114470063650857925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054016 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295299 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A075936.P1114470063650857925

/-! ## A075936.P2723040128999915425

`A000069(A075933(n)+1)`
-/

namespace A075936.P2723040128999915425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000069 (A075933 n + 1).toNat

end

end A075936.P2723040128999915425

/-! ## A075936.P6478727029970608980

`∩[A054016(n+1), A075930(n)]`
-/

namespace A075936.P6478727029970608980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054016 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075930 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A075936.P6478727029970608980

/-!
# A075937: List of codewords in binary lexicode with Hamming distance 7 written as decimal numbers.

The programs for A075937, there is no canonical definition to state claims against.
-/

/-! ## A075937.P9865056489581316192

`floor(A075940(n)/2)`
-/

namespace A075937.P9865056489581316192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A075940 n : ℚ) / 2⌋

end

end A075937.P9865056489581316192

/-! ## A075937.P416778007084863037

`A014682(and(-2, A075940(n)))`
-/

namespace A075937.P416778007084863037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (Int.land (-2) (A075940 n)).toNat

end

end A075937.P416778007084863037

/-! ## A075937.P8786284601748804362

`A273943(and(-2, A075940(n)))`
-/

namespace A075937.P8786284601748804362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (Int.land (-2) (A075940 n)).toNat

end

end A075937.P8786284601748804362

/-! ## A075937.P6178591798292517157

`A014682(A075940(n)-A010060(n))`
-/

namespace A075937.P6178591798292517157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A075940 n - A010060 n).toNat

end

end A075937.P6178591798292517157

/-! ## A075937.P8298020565046097171

`A273943(A075940(n)-A010060(n))`
-/

namespace A075937.P8298020565046097171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (A075940 n - A010060 n).toNat

end

end A075937.P8298020565046097171

/-!
# A075938: Basis for code in A075937.

The programs for A075938, there is no canonical definition to state claims against.
-/

/-! ## A075938.P1838106732119722077

`floor(A075941(n)/2)`
-/

namespace A075938.P1838106732119722077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A075941 n : ℚ) / 2⌋

end

end A075938.P1838106732119722077

/-! ## A075938.P16924547461539734650

`A075937(2^n)`
-/

namespace A075938.P16924547461539734650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075937 (2 ^ n)

end

end A075938.P16924547461539734650

/-! ## A075938.P2714577665912517223

`record[A075937(A034008(n))]`
-/

namespace A075938.P2714577665912517223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075937 (A034008 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A075938.P2714577665912517223

/-! ## A075938.P6362381582081579580

`record[A075937(A055248(n))]`
-/

namespace A075938.P6362381582081579580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075937 (A055248 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A075938.P6362381582081579580

/-!
# A075939: Positions of check bits in code in A075937.

The programs for A075939, there is no canonical definition to state claims against.
-/

/-! ## A075939.P9252360960121482821

`floor(A075942(n)/2)`
-/

namespace A075939.P9252360960121482821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A075942 n : ℚ) / 2⌋

end

end A075939.P9252360960121482821

/-! ## A075939.P1446030912417476811

`and(-2, A075942(n))/A020639(2*(n+1))`
-/

namespace A075939.P1446030912417476811
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land (-2) (A075942 n) : ℚ) / (A020639 (2 * (n + 1)) : ℚ)

end

end A075939.P1446030912417476811

/-! ## A075939.P9990267416014997132

`and(-2, A075942(n))/A000005(A075580(n))`
-/

namespace A075939.P9990267416014997132
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land (-2) (A075942 n) : ℚ) / (A000005 (A075580 n).toNat : ℚ)

end

end A075939.P9990267416014997132

/-! ## A075939.P6726097280719121982

`and(-A001223(A084126(n+1)), A075942(n))/2`
-/

namespace A075939.P6726097280719121982
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land (-A001223 (A084126 (n + 1)).toNat) (A075942 n) : ℚ) / 2

end

end A075939.P6726097280719121982

/-! ## A075939.P450083609059789219

`and(-2, A075942(n))/A000040(A000041(((-1)^n)²))`
-/

namespace A075939.P450083609059789219
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land (-2) (A075942 n) : ℚ) / (A000040 (A000041 (((-1) ^ n) ^ 2).toNat).toNat : ℚ)

end

end A075939.P450083609059789219

/-!
# A075940: List of codewords in binary lexicode with Hamming distance 8 written as decimal numbers.

The programs for A075940, there is no canonical definition to state claims against.
-/

/-! ## A075940.P3523523713928319471

`and(A075967(2*n), A075968(A025443(n)))`
-/

namespace A075940.P3523523713928319471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A075967 (2 * n)) (A075968 (A025443 n).toNat)

end

end A075940.P3523523713928319471

/-! ## A075940.P3643108618136410299

`A014601(A075937(n))`
-/

namespace A075940.P3643108618136410299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014601 (A075937 n).toNat

end

end A075940.P3643108618136410299

/-! ## A075940.P3997990686593349057

`A001969(A075937(n)+1)`
-/

namespace A075940.P3997990686593349057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001969 (A075937 n + 1).toNat

end

end A075940.P3997990686593349057

/-!
# A075941: Basis for code in A075940.

The programs for A075941, there is no canonical definition to state claims against.
-/

/-! ## A075941.P13969432312907391783

`A075940(2^n)`
-/

namespace A075941.P13969432312907391783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075940 (2 ^ n)

end

end A075941.P13969432312907391783

/-! ## A075941.P12043464501041399417

`record[A075940(Δ[∏[char[∑[n+1]]+1]])]`
-/

namespace A075941.P12043464501041399417
noncomputable section

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

open Classical in
def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f4 j = n then 1 else 0) + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075940 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A075941.P12043464501041399417

/-! ## A075941.P12914257395187232043

`A178798(n)+A075940(A000079(n))`
-/

namespace A075941.P12914257395187232043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178798 n + A075940 (A000079 n).toNat

end

end A075941.P12914257395187232043

/-! ## A075941.P8771068825246924295

`A185284(n)+A075940(A000079(n))`
-/

namespace A075941.P8771068825246924295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 n + A075940 (A000079 n).toNat

end

end A075941.P8771068825246924295

/-! ## A075941.P1730177420107151280

`A085121(n²)+A075940(A000079(n))`
-/

namespace A075941.P1730177420107151280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085121 (n ^ 2) + A075940 (A000079 n).toNat

end

end A075941.P1730177420107151280

/-!
# A075942: Positions of check bits in code in A075940.

The programs for A075942, there is no canonical definition to state claims against.
-/

/-! ## A075942.P10202309631664341667

`filter[A054044(n+2), A361023(#)]`
-/

namespace A075942.P10202309631664341667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054044 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A361023 (f1 j).toNat = 1) n)

end

end A075942.P10202309631664341667

/-! ## A075942.P4075977232284559261

`filter[A054044(n+1), A295297(#)]`
-/

namespace A075942.P4075977232284559261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054044 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A295297 (f1 j).toNat = 1) n)

end

end A075942.P4075977232284559261

/-! ## A075942.P7178482799305322834

`filter[A054044(n+1), A347523(#)]`
-/

namespace A075942.P7178482799305322834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054044 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A347523 (f1 j).toNat = 1) n)

end

end A075942.P7178482799305322834

/-! ## A075942.P15882845240359700220

`filter[A054044(n+1), A353760(#)]`
-/

namespace A075942.P15882845240359700220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054044 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353760 (f1 j).toNat = 1) n)

end

end A075942.P15882845240359700220

/-! ## A075942.P14718030335708164226

`A000069(A075939(n)+1)`
-/

namespace A075942.P14718030335708164226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000069 (A075939 n + 1).toNat

end

end A075942.P14718030335708164226

/-!
# A075943: List of codewords in binary lexicode with Hamming distance 9 written as decimal numbers.

The programs for A075943, there is no canonical definition to state claims against.
-/

/-! ## A075943.P8037864111909679870

`floor(A075946(n)/2)`
-/

namespace A075943.P8037864111909679870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A075946 n : ℚ) / 2⌋

end

end A075943.P8037864111909679870

/-! ## A075943.P4035639473034390757

`ceil((A075946(n)+A000007(n)-1)/2)`
-/

namespace A075943.P4035639473034390757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A075946 n + A000007 n - 1 : ℚ) / 2⌉

end

end A075943.P4035639473034390757

/-! ## A075943.P11291829473682546621

`ceil((A154272(n+3)+A075946(n)-1)/2)`
-/

namespace A075943.P11291829473682546621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A154272 (n + 3) + A075946 n - 1 : ℚ) / 2⌉

end

end A075943.P11291829473682546621

/-!
# A075944: Basis for code in A075943.

The programs for A075944, there is no canonical definition to state claims against.
-/

/-! ## A075944.P1022379208863288123

`floor(A075947(n)/2)`
-/

namespace A075944.P1022379208863288123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A075947 n : ℚ) / 2⌋

end

end A075944.P1022379208863288123

/-! ## A075944.P4704788888510912623

`A075943(2^n)`
-/

namespace A075944.P4704788888510912623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075943 (2 ^ n)

end

end A075944.P4704788888510912623

/-! ## A075944.P18265151200725287852

`record[A075943(A001316(n))]`
-/

namespace A075944.P18265151200725287852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075943 (A001316 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A075944.P18265151200725287852

/-! ## A075944.P2815874199610223866

`record[A075943(A054842(n))]`
-/

namespace A075944.P2815874199610223866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075943 (A054842 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A075944.P2815874199610223866

/-! ## A075944.P5046327246438133406

`floor(A075946(A000079(n))/2)`
-/

namespace A075944.P5046327246438133406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A075946 (A000079 n).toNat : ℚ) / 2⌋

end

end A075944.P5046327246438133406

/-!
# A075945: Positions of check bits in code in A075943.

The programs for A075945, there is no canonical definition to state claims against.
-/

/-! ## A075945.P5307680267681193314

`floor(A075948(n)/2)`
-/

namespace A075945.P5307680267681193314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A075948 n : ℚ) / 2⌋

end

end A075945.P5307680267681193314

/-! ## A075945.P10043536606586683449

`filter[A054045(n+1), A324903(#)]`
-/

namespace A075945.P10043536606586683449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054045 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A324903 (f1 j).toNat = 1) n)

end

end A075945.P10043536606586683449

/-! ## A075945.P13235444448972317109

`filter[A054045(n+2), A361023(#)]`
-/

namespace A075945.P13235444448972317109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054045 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A361023 (f1 j).toNat = 1) n)

end

end A075945.P13235444448972317109

/-!
# A075947: Basis for code in A075946.

The programs for A075947, there is no canonical definition to state claims against.
-/

/-! ## A075947.P10872155564946684475

`A075946(2^n)`
-/

namespace A075947.P10872155564946684475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075946 (2 ^ n)

end

end A075947.P10872155564946684475

/-! ## A075947.P14151891804029324503

`record[A075946(A054842(n))]`
-/

namespace A075947.P14151891804029324503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075946 (A054842 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A075947.P14151891804029324503

/-! ## A075947.P1631636806007746769

`record[A075946(A077957(n))]`
-/

namespace A075947.P1631636806007746769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075946 (A077957 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A075947.P1631636806007746769

/-! ## A075947.P1800673186479853487

`record[A075946(A279352(n+1))]`
-/

namespace A075947.P1800673186479853487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075946 (A279352 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A075947.P1800673186479853487

/-! ## A075947.P16457593061890257469

`A075946(A000079(n))+A025469(n)`
-/

namespace A075947.P16457593061890257469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075946 (A000079 n).toNat + A025469 n

end

end A075947.P16457593061890257469

/-!
# A075948: Positions of check bits in code in A075946.

The programs for A075948, there is no canonical definition to state claims against.
-/

/-! ## A075948.P12575063658025729841

`filter[A054046(n+1), A324903(#)]`
-/

namespace A075948.P12575063658025729841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054046 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A324903 (f1 j).toNat = 1) n)

end

end A075948.P12575063658025729841

/-!
# A075949: List of codewords in binary lexicode with Hamming distance 11 written as decimal numbers.

The programs for A075949, there is no canonical definition to state claims against.
-/

/-! ## A075949.P11323553924683260631

`floor(A075952(n)/2)`
-/

namespace A075949.P11323553924683260631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A075952 n : ℚ) / 2⌋

end

end A075949.P11323553924683260631

/-!
# A075950: Basis for code in A075949.

The programs for A075950, there is no canonical definition to state claims against.
-/

/-! ## A075950.P13796484445712093418

`floor(A075953(n)/2)`
-/

namespace A075950.P13796484445712093418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A075953 n : ℚ) / 2⌋

end

end A075950.P13796484445712093418

/-! ## A075950.P17133857668264397143

`A075949(2^n)`
-/

namespace A075950.P17133857668264397143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075949 (2 ^ n)

end

end A075950.P17133857668264397143

/-! ## A075950.P13457702625748995871

`record[A075949(A001316(n))]`
-/

namespace A075950.P13457702625748995871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075949 (A001316 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A075950.P13457702625748995871

/-! ## A075950.P14174873552994463514

`record[A075949(A109168(n+1))]`
-/

namespace A075950.P14174873552994463514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075949 (A109168 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A075950.P14174873552994463514

/-! ## A075950.P16355534502795123509

`record[A075949(Δ[A023758(n+1)])]`
-/

namespace A075950.P16355534502795123509
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023758 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075949 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A075950.P16355534502795123509

/-!
# A075951: Positions of check bits in code in A075949.

The programs for A075951, there is no canonical definition to state claims against.
-/

/-! ## A075951.P5313779376263991892

`floor(A075954(n)/2)`
-/

namespace A075951.P5313779376263991892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A075954 n : ℚ) / 2⌋

end

end A075951.P5313779376263991892

/-! ## A075951.P10162117943815299762

`round(A075954(n)/2-A016949(n)/A016950(n))`
-/

namespace A075951.P10162117943815299762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A075954 n : ℚ) / 2 - (A016949 n : ℚ) / (A016950 n : ℚ))

end

end A075951.P10162117943815299762

/-!
# A075953: Basis for code in A075952.

The programs for A075953, there is no canonical definition to state claims against.
-/

/-! ## A075953.P1607520175808390999

`A075952(2^n)`
-/

namespace A075953.P1607520175808390999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075952 (2 ^ n)

end

end A075953.P1607520175808390999

/-! ## A075953.P16753028396089211780

`record[A075952(A001316(n))]`
-/

namespace A075953.P16753028396089211780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075952 (A001316 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A075953.P16753028396089211780

/-! ## A075953.P3927084153187974097

`record[A075952(A153281(n))]`
-/

namespace A075953.P3927084153187974097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075952 (A153281 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A075953.P3927084153187974097

/-! ## A075953.P17740250372473651871

`A326460(n)+A075952(A000079(n))`
-/

namespace A075953.P17740250372473651871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326460 n + A075952 (A000079 n).toNat

end

end A075953.P17740250372473651871

/-!
# A075955: List of codewords in binary lexicode with Hamming distance 13 written as decimal numbers.

The programs for A075955, there is no canonical definition to state claims against.
-/

/-! ## A075955.P11101907255469762884

`floor(A075958(n)/2)`
-/

namespace A075955.P11101907255469762884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A075958 n : ℚ) / 2⌋

end

end A075955.P11101907255469762884

/-!
# A075956: Basis for code in A075955.

The programs for A075956, there is no canonical definition to state claims against.
-/

/-! ## A075956.P12760677496999467973

`floor(A075959(n)/2)`
-/

namespace A075956.P12760677496999467973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A075959 n : ℚ) / 2⌋

end

end A075956.P12760677496999467973

/-! ## A075956.P892440314229032043

`A075955(2^n)`
-/

namespace A075956.P892440314229032043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075955 (2 ^ n)

end

end A075956.P892440314229032043

/-! ## A075956.P10259584092553084013

`and(-1, A075955(A000079(n)))`
-/

namespace A075956.P10259584092553084013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A075955 (A000079 n).toNat)

end

end A075956.P10259584092553084013

/-!
# A075957: Positions of check bits in code in A075955.

The programs for A075957, there is no canonical definition to state claims against.
-/

/-! ## A075957.P5774758978823745041

`floor(A075960(n)/2)`
-/

namespace A075957.P5774758978823745041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A075960 n : ℚ) / 2⌋

end

end A075957.P5774758978823745041

/-!
# A075959: Basis for code in A075958.

The programs for A075959, there is no canonical definition to state claims against.
-/

/-! ## A075959.P2692663185134301977

`A075958(2^n)`
-/

namespace A075959.P2692663185134301977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075958 (2 ^ n)

end

end A075959.P2692663185134301977

/-! ## A075959.P1096198372701619430

`record[A075958(n+1)/∑{d}[n+1, #*#%2]]`
-/

namespace A075959.P1096198372701619430
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A075958 (n + 1) : ℚ) / ((∑ d ∈ Nat.divisors (f2 n), d * (d % 2) : ℕ) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A075959.P1096198372701619430

/-! ## A075959.P8017654877576218752

`and(-1, A075958(A000079(n)))`
-/

namespace A075959.P8017654877576218752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A075958 (A000079 n).toNat)

end

end A075959.P8017654877576218752

/-!
# A075961: List of codewords in binary lexicode with Hamming distance 15 written as decimal numbers.

The programs for A075961, there is no canonical definition to state claims against.
-/

/-! ## A075961.P14162868481044632082

`floor(A075964(n)/2)`
-/

namespace A075961.P14162868481044632082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A075964 n : ℚ) / 2⌋

end

end A075961.P14162868481044632082

/-!
# A075962: Basis for code in A075961.

The programs for A075962, there is no canonical definition to state claims against.
-/

/-! ## A075962.P14949950133647497004

`floor(A075965(n)/2)`
-/

namespace A075962.P14949950133647497004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A075965 n : ℚ) / 2⌋

end

end A075962.P14949950133647497004

/-! ## A075962.P7377938626707954781

`A075961(2^n)`
-/

namespace A075962.P7377938626707954781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075961 (2 ^ n)

end

end A075962.P7377938626707954781

/-!
# A075963: Positions of check bits in code in A075958.

The programs for A075963, there is no canonical definition to state claims against.
-/

/-! ## A075963.P8566151811759453567

`floor(A075966(n)/2)`
-/

namespace A075963.P8566151811759453567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A075966 n : ℚ) / 2⌋

end

end A075963.P8566151811759453567

/-!
# A075965: Basis for code in A075964.

The programs for A075965, there is no canonical definition to state claims against.
-/

/-! ## A075965.P6401957218413150919

`A075964(2^n)`
-/

namespace A075965.P6401957218413150919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075964 (2 ^ n)

end

end A075965.P6401957218413150919

/-! ## A075965.P9962896571896114417

`record[A075964(A300622(n))]`
-/

namespace A075965.P9962896571896114417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075964 (A300622 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A075965.P9962896571896114417

/-!
# A075967: List of codewords in binary lexicode with Hamming distance 17 written as decimal numbers.

The programs for A075967, there is no canonical definition to state claims against.
-/

/-! ## A075967.P2932334040407177566

`floor(A075970(n)/2)`
-/

namespace A075967.P2932334040407177566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A075970 n : ℚ) / 2⌋

end

end A075967.P2932334040407177566

/-! ## A075967.P4283454830812787383

`(A075970(n)-A010060(n))/2`
-/

namespace A075967.P4283454830812787383
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A075970 n - A010060 n : ℚ) / 2

end

end A075967.P4283454830812787383

/-!
# A075968: Basis for code in A075967.

The programs for A075968, there is no canonical definition to state claims against.
-/

/-! ## A075968.P701795335843881653

`floor(A075971(n)/2)`
-/

namespace A075968.P701795335843881653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A075971 n : ℚ) / 2⌋

end

end A075968.P701795335843881653

/-! ## A075968.P11140321007105558675

`(A075971(n)-A057427(A237779(n+5)))/2`
-/

namespace A075968.P11140321007105558675
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A075971 n - A057427 (A237779 (n + 5)).toNat : ℚ) / 2

end

end A075968.P11140321007105558675

/-!
# A075969: Positions of check bits in code in A075967.

The programs for A075969, there is no canonical definition to state claims against.
-/

/-! ## A075969.P5466540898290526657

`floor(A075972(n)/2)`
-/

namespace A075969.P5466540898290526657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A075972 n : ℚ) / 2⌋

end

end A075969.P5466540898290526657

/-! ## A075969.P12409647646352520092

`ceil((A075972(n)-A290105(A028310(n)))/2)`
-/

namespace A075969.P12409647646352520092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A075972 n - A290105 (A028310 n).toNat : ℚ) / 2⌉

end

end A075969.P12409647646352520092

/-!
# A075970: List of codewords in binary lexicode with Hamming distance 18 written as decimal numbers.

The programs for A075970, there is no canonical definition to state claims against.
-/

/-! ## A075970.P15378383495852847538

`A010060(n)+2*A075967(n)`
-/

namespace A075970.P15378383495852847538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 n + 2 * A075967 n

end

end A075970.P15378383495852847538

/-!
# A075971: Basis for code in A075970.

The programs for A075971, there is no canonical definition to state claims against.
-/

/-! ## A075971.P17539305676979186785

`A075970(2^n)`
-/

namespace A075971.P17539305676979186785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075970 (2 ^ n)

end

end A075971.P17539305676979186785

/-!
# A075972: Positions of check bits in code in A075970.

The programs for A075972, there is no canonical definition to state claims against.
-/

/-! ## A075972.P15799351165604455673

`2*A045544(A014312(n+1))+1`
-/

namespace A075972.P15799351165604455673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A045544 (A014312 (n + 1)).toNat + 1

end

end A075972.P15799351165604455673

/-!
# A075973: List of codewords in binary lexicode with Hamming distance 19 written as decimal numbers.

The programs for A075973, there is no canonical definition to state claims against.
-/

/-! ## A075973.P11364903653817754789

`floor(A075976(n)/2)`
-/

namespace A075973.P11364903653817754789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A075976 n : ℚ) / 2⌋

end

end A075973.P11364903653817754789

/-!
# A075974: Basis for code in A075973.

The programs for A075974, there is no canonical definition to state claims against.
-/

/-! ## A075974.P6144287159388335346

`floor(A075977(n)/2)`
-/

namespace A075974.P6144287159388335346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A075977 n : ℚ) / 2⌋

end

end A075974.P6144287159388335346

/-!
# A075975: Positions of check bits in code in A075973.

The programs for A075975, there is no canonical definition to state claims against.
-/

/-! ## A075975.P7328869033469437689

`floor(A075978(n)/2)`
-/

namespace A075975.P7328869033469437689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A075978 n : ℚ) / 2⌋

end

end A075975.P7328869033469437689

/-!
# A075977: Basis for code in A075976.

The programs for A075977, there is no canonical definition to state claims against.
-/

/-! ## A075977.P2924675516435022553

`A075976(2^n)`
-/

namespace A075977.P2924675516435022553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075976 (2 ^ n)

end

end A075977.P2924675516435022553

/-!
# A075979: Numbers k such that k^5 + 2^k is prime.

The programs for A075979, there is no canonical definition to state claims against.
-/

/-! ## A075979.P12644462631784254218

`p?[record[A322530(2*(n+1))]]-2`
-/

namespace A075979.P12644462631784254218
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322530 (2 * (n + 1))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 2

end

end A075979.P12644462631784254218

/-!
# A075985: Numbers k such that k^5 + 6^k is prime.

The programs for A075985, there is no canonical definition to state claims against.
-/

/-! ## A075985.P9542709881327289426

`A316094(comp[∑[n-1]]*A316094(n+1))`
-/

namespace A075985.P9542709881327289426
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316094 ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) * A316094 (n + 1)).toNat

end

end A075985.P9542709881327289426

/-!
# A075986: Numerator of 1+1/prime(1)^2+ ... + 1/prime(n)^2 where prime(k) is the k-th prime.

The programs for A075986, there is no canonical definition to state claims against.
-/

/-! ## A075986.P14461546132534814857

`A322078(A002110(n))+A061742(n)`
-/

namespace A075986.P14461546132534814857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322078 (A002110 n).toNat + A061742 n

end

end A075986.P14461546132534814857

/-! ## A075986.P5276553268878556921

`A322078(A121281(∑[n]))+A061742(n)`
-/

namespace A075986.P5276553268878556921
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322078 (A121281 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat + A061742 n

end

end A075986.P5276553268878556921

/-!
# A075988: Number of integers k satisfying 1 <= k <= n and 0 < frac(n/k) < 1/2, where frac(n/k) is the fractional part of n/k; i.e., frac(n/k) = n/k - floor(n,k).

The programs for A075988, the canonical program `A075988.P11951307643143853652` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A075988 has offset 1).

The definition of A075988 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A075988.P1727699269849112047

`A077026(n+1)-∏{e}[n+1, #+1]`
-/

namespace A075988.P1727699269849112047
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077026 (n + 1) - ((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℤ)

end

end A075988.P1727699269849112047

namespace A075988

/-- `A077026(n+1)-∏{e}[n+1, #+1]` -/
def P1727699269849112047.Spec : Prop :=
  ∀ n, P1727699269849112047.a n = A075988 (n + 1)

end A075988

/-! ## A075988.P4604461485689515668

`∑[∑{d}[n, ceil(1/#)]]-A077025(n+1)`
-/

namespace A075988.P4604461485689515668
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), ⌈1 / (d : ℚ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A077025 (n + 1)

end

end A075988.P4604461485689515668

namespace A075988

/-- `∑[∑{d}[n, ceil(1/#)]]-A077025(n+1)` -/
def P4604461485689515668.Spec : Prop :=
  ∀ n, P4604461485689515668.a n = A075988 (n + 1)

end A075988

/-! ## A075988.P9303672402886401964

`∑[∏{e}[n, #+1]]+n-A077024(n+1)`
-/

namespace A075988.P9303672402886401964
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j + n : ℕ) : ℤ) - A077024 (n + 1)

end

end A075988.P9303672402886401964

namespace A075988

/-- `∑[∏{e}[n, #+1]]+n-A077024(n+1)` -/
def P9303672402886401964.Spec : Prop :=
  ∀ n, P9303672402886401964.a n = A075988 (n + 1)

end A075988

/-! ## A075988.P13239342424124753037

`n-∑{d}[n+1, n²%#]-A075989(n+1)`
-/

namespace A075988.P13239342424124753037
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ((∑ d ∈ Nat.divisors (f1 n), n ^ 2 % d : ℕ) : ℤ) - A075989 (n + 1)

end

end A075988.P13239342424124753037

namespace A075988

/-- `n-∑{d}[n+1, n²%#]-A075989(n+1)` -/
def P13239342424124753037.Spec : Prop :=
  ∀ n, P13239342424124753037.a n = A075988 (n + 1)

end A075988

/-! ## A075988.P7457798712895955000

`A006218(n)-A077025(n+1)`
-/

namespace A075988.P7457798712895955000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n - A077025 (n + 1)

end

end A075988.P7457798712895955000

namespace A075988

/-- `A006218(n)-A077025(n+1)` -/
def P7457798712895955000.Spec : Prop :=
  ∀ n, P7457798712895955000.a n = A075988 (n + 1)

end A075988

/-! ## A075988.P17716483407948604096

`A077026(n+1)-Δ[A006218(n)]`
-/

namespace A075988.P17716483407948604096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077026 (n + 1) - (f1 (n + 1) - f1 n)

end

end A075988.P17716483407948604096

namespace A075988

/-- `A077026(n+1)-Δ[A006218(n)]` -/
def P17716483407948604096.Spec : Prop :=
  ∀ n, P17716483407948604096.a n = A075988 (n + 1)

end A075988

/-! ## A075988.P2162075301541043342

`A077026(n+1)-A000005(n+1)`
-/

namespace A075988.P2162075301541043342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077026 (n + 1) - A000005 (n + 1)

end

end A075988.P2162075301541043342

namespace A075988

/-- `A077026(n+1)-A000005(n+1)` -/
def P2162075301541043342.Spec : Prop :=
  ∀ n, P2162075301541043342.a n = A075988 (n + 1)

end A075988

/-! ## A075988.P15617341121421451804

`A006590(n+1)-A077024(n+1)`
-/

namespace A075988.P15617341121421451804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006590 (n + 1) - A077024 (n + 1)

end

end A075988.P15617341121421451804

namespace A075988

/-- `A006590(n+1)-A077024(n+1)` -/
def P15617341121421451804.Spec : Prop :=
  ∀ n, P15617341121421451804.a n = A075988 (n + 1)

end A075988

/-! ## A075988.P15027173014857661696

`A049820(n+1)-A075989(n+1)`
-/

namespace A075988.P15027173014857661696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049820 (n + 1) - A075989 (n + 1)

end

end A075988.P15027173014857661696

namespace A075988

/-- `A049820(n+1)-A075989(n+1)` -/
def P15027173014857661696.Spec : Prop :=
  ∀ n, P15027173014857661696.a n = A075988 (n + 1)

end A075988

/-! ## A075988.P6018033875846410523

`A006218(n+1)+A006218(n)-A339217(n+1)`
-/

namespace A075988.P6018033875846410523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 (n + 1) + (A006218 n - A339217 (n + 1))

end

end A075988.P6018033875846410523

namespace A075988

/-- `A006218(n+1)+A006218(n)-A339217(n+1)` -/
def P6018033875846410523.Spec : Prop :=
  ∀ n, P6018033875846410523.a n = A075988 (n + 1)

end A075988

/-! ## A075988.P9633583022526295453

`A177236(2*(n+1))`
-/

namespace A075988.P9633583022526295453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177236 (2 * (n + 1))

end

end A075988.P9633583022526295453

namespace A075988

/-- `A177236(2*(n+1))` -/
def P9633583022526295453.Spec : Prop :=
  ∀ n, P9633583022526295453.a n = A075988 (n + 1)

end A075988

/-! ## A075988.P11202319809071678235

`∑[∏{e}[n, #+1]%(n+1)]-A248517(2*(n+1))`
-/

namespace A075988.P11202319809071678235
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∏ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1)) % (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A248517 (2 * (n + 1))

end

end A075988.P11202319809071678235

namespace A075988

/-- `∑[∏{e}[n, #+1]%(n+1)]-A248517(2*(n+1))` -/
def P11202319809071678235.Spec : Prop :=
  ∀ n, P11202319809071678235.a n = A075988 (n + 1)

end A075988

/-! ## A075988.P18067323918823637027

`A049820(2*(n+1))-A177235(2*(n+1))`
-/

namespace A075988.P18067323918823637027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049820 (2 * (n + 1)) - A177235 (2 * (n + 1))

end

end A075988.P18067323918823637027

namespace A075988

/-- `A049820(2*(n+1))-A177235(2*(n+1))` -/
def P18067323918823637027.Spec : Prop :=
  ∀ n, P18067323918823637027.a n = A075988 (n + 1)

end A075988

/-! ## A075988.P9218715551730339741

`A330926(2*(n+1))-A001227(2*(n+1))`
-/

namespace A075988.P9218715551730339741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330926 (2 * (n + 1)) - A001227 (2 * (n + 1))

end

end A075988.P9218715551730339741

namespace A075988

/-- `A330926(2*(n+1))-A001227(2*(n+1))` -/
def P9218715551730339741.Spec : Prop :=
  ∀ n, P9218715551730339741.a n = A075988 (n + 1)

end A075988

/-! ## A075988.P11951307643143853652

`A347286(2*(n+1))-A059851(2*n+1)`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A075988

/-- `A347286(2*(n+1))-A059851(2*n+1)` -/
def P11951307643143853652.Spec : Prop :=
  ∀ n, P11951307643143853652.a n = A075988 (n + 1)

theorem P11951307643143853652.correct : P11951307643143853652.Spec := by
  intro n
  simp only [A075988, Nat.add_sub_cancel]

end A075988

/-!
# A075989: Number of k satisfying 1<=k<=n and {n/k} >= 1/2, where {n/k} is the fractional part of n/k, i.e., {n/k} = n/k - floor(n/k).

The programs for A075989, the canonical program `A075989.P4483249775475525588` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A075989 has offset 1).

The definition of A075989 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A075989.P13298136464365559462

`1-A077026(n+1)+n`
-/

namespace A075989.P13298136464365559462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A077026 (n + 1) + (n : ℤ)

end

end A075989.P13298136464365559462

namespace A075989

/-- `1-A077026(n+1)+n` -/
def P13298136464365559462.Spec : Prop :=
  ∀ n, P13298136464365559462.a n = A075989 (n + 1)

theorem P13298136464365559462.correct : P13298136464365559462.Spec := by
  intro n
  simp only [A075989, Nat.add_sub_cancel, A075989.P13298136464365559462.a, A075989.P4483249775475525588.f2, A075989.P4483249775475525588.f1, A075989.P4483249775475525588.a, A059851, A059851.P8165731397206128111.a, A077026, A077026.P1798448941674800563.a, A271860, A271860.P9320768908146729078.f2, A271860.P9320768908146729078.f1, A271860.P9320768908146729078.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A075989

/-! ## A075989.P5785215037748046215

`A077025(n+1)-A002541(n+1)`
-/

namespace A075989.P5785215037748046215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077025 (n + 1) - A002541 (n + 1)

end

end A075989.P5785215037748046215

namespace A075989

/-- `A077025(n+1)-A002541(n+1)` -/
def P5785215037748046215.Spec : Prop :=
  ∀ n, P5785215037748046215.a n = A075989 (n + 1)

end A075989

/-! ## A075989.P13026509357657170863

`A077024(n+1)-A006218(n+1)`
-/

namespace A075989.P13026509357657170863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077024 (n + 1) - A006218 (n + 1)

end

end A075989.P13026509357657170863

namespace A075989

/-- `A077024(n+1)-A006218(n+1)` -/
def P13026509357657170863.Spec : Prop :=
  ∀ n, P13026509357657170863.a n = A075989 (n + 1)

end A075989

/-! ## A075989.P1157811591028622641

`A049820(n+1)-A075988(n+1)`
-/

namespace A075989.P1157811591028622641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049820 (n + 1) - A075988 (n + 1)

end

end A075989.P1157811591028622641

namespace A075989

/-- `A049820(n+1)-A075988(n+1)` -/
def P1157811591028622641.Spec : Prop :=
  ∀ n, P1157811591028622641.a n = A075989 (n + 1)

end A075989

/-! ## A075989.P17993211338116427808

`A000027(n+1)%A077026(n+1)`
-/

namespace A075989.P17993211338116427808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000027 (n + 1)) (A077026 (n + 1))

end

end A075989.P17993211338116427808

namespace A075989

/-- `A000027(n+1)%A077026(n+1)` -/
def P17993211338116427808.Spec : Prop :=
  ∀ n, P17993211338116427808.a n = A075989 (n + 1)

end A075989

/-! ## A075989.P18166056779339952180

`A087156(n+1)%A077026(n+1)`
-/

namespace A075989.P18166056779339952180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A087156 (n + 1)) (A077026 (n + 1))

end

end A075989.P18166056779339952180

namespace A075989

/-- `A087156(n+1)%A077026(n+1)` -/
def P18166056779339952180.Spec : Prop :=
  ∀ n, P18166056779339952180.a n = A075989 (n + 1)

end A075989

/-! ## A075989.P1772633360492910143

`A006591(n+1)+A069283(n+1)-A006218(n+1)`
-/

namespace A075989.P1772633360492910143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006591 (n + 1) + (A069283 (n + 1) - A006218 (n + 1))

end

end A075989.P1772633360492910143

namespace A075989

/-- `A006591(n+1)+A069283(n+1)-A006218(n+1)` -/
def P1772633360492910143.Spec : Prop :=
  ∀ n, P1772633360492910143.a n = A075989 (n + 1)

end A075989

/-! ## A075989.P15798188314360847393

`A062550(n+1)-(A156745(n+1)+A006218(n+1))`
-/

namespace A075989.P15798188314360847393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062550 (n + 1) - (A156745 (n + 1) + A006218 (n + 1))

end

end A075989.P15798188314360847393

namespace A075989

/-- `A062550(n+1)-(A156745(n+1)+A006218(n+1))` -/
def P15798188314360847393.Spec : Prop :=
  ∀ n, P15798188314360847393.a n = A075989 (n + 1)

end A075989

/-! ## A075989.P8743562951604908581

`A056549(n+1)-A156745(n+1)`
-/

namespace A075989.P8743562951604908581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056549 (n + 1) - A156745 (n + 1)

end

end A075989.P8743562951604908581

namespace A075989

/-- `A056549(n+1)-A156745(n+1)` -/
def P8743562951604908581.Spec : Prop :=
  ∀ n, P8743562951604908581.a n = A075989 (n + 1)

end A075989

/-! ## A075989.P2293419492534058284

`A056549(n+1)-(A054519(n+1)+n)`
-/

namespace A075989.P2293419492534058284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056549 (n + 1) - (A054519 (n + 1) + (n : ℤ))

end

end A075989.P2293419492534058284

namespace A075989

/-- `A056549(n+1)-(A054519(n+1)+n)` -/
def P2293419492534058284.Spec : Prop :=
  ∀ n, P2293419492534058284.a n = A075989 (n + 1)

end A075989

/-! ## A075989.P7391568386873210335

`A056549(n+1)+A077024(n+1)-A062550(n+1)`
-/

namespace A075989.P7391568386873210335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056549 (n + 1) + (A077024 (n + 1) - A062550 (n + 1))

end

end A075989.P7391568386873210335

namespace A075989

/-- `A056549(n+1)+A077024(n+1)-A062550(n+1)` -/
def P7391568386873210335.Spec : Prop :=
  ∀ n, P7391568386873210335.a n = A075989 (n + 1)

end A075989

/-! ## A075989.P7035683958268156827

`A339217(n+1)-(A006218(n+1)+A002541(n+1))`
-/

namespace A075989.P7035683958268156827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339217 (n + 1) - (A006218 (n + 1) + A002541 (n + 1))

end

end A075989.P7035683958268156827

namespace A075989

/-- `A339217(n+1)-(A006218(n+1)+A002541(n+1))` -/
def P7035683958268156827.Spec : Prop :=
  ∀ n, P7035683958268156827.a n = A075989 (n + 1)

end A075989

/-! ## A075989.P4674096738656190937

`A056548(n+1)-(A347286(n+1)+A006218(n+1))`
-/

namespace A075989.P4674096738656190937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056548 (n + 1) - (A347286 (n + 1) + A006218 (n + 1))

end

end A075989.P4674096738656190937

namespace A075989

/-- `A056548(n+1)-(A347286(n+1)+A006218(n+1))` -/
def P4674096738656190937.Spec : Prop :=
  ∀ n, P4674096738656190937.a n = A075989 (n + 1)

end A075989

/-! ## A075989.P16115080495997259658

`A271860(2*(n+1))/2`
-/

namespace A075989.P16115080495997259658
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A271860 (2 * (n + 1)) : ℚ) / 2

end

end A075989.P16115080495997259658

namespace A075989

/-- `A271860(2*(n+1))/2` -/
def P16115080495997259658.Spec : Prop :=
  ∀ n, P16115080495997259658.a n = (A075989 (n + 1) : ℚ)

end A075989

/-! ## A075989.P4483249775475525588

`∑[Δ[A059851(2*n)]-1]`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A075989

/-- `∑[Δ[A059851(2*n)]-1]` -/
def P4483249775475525588.Spec : Prop :=
  ∀ n, P4483249775475525588.a n = A075989 (n + 1)

theorem P4483249775475525588.correct : P4483249775475525588.Spec := by
  intro n
  simp only [A075989, Nat.add_sub_cancel]

end A075989

/-! ## A075989.P8962355852811970296

`A059851(2*(n+1))-(n+1)`
-/

namespace A075989.P8962355852811970296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059851 (2 * (n + 1)) - (n + 1 : ℤ)

end

end A075989.P8962355852811970296

namespace A075989

/-- `A059851(2*(n+1))-(n+1)` -/
def P8962355852811970296.Spec : Prop :=
  ∀ n, P8962355852811970296.a n = A075989 (n + 1)

end A075989

/-! ## A075989.P4362314810349704379

`A275495(2*(n+1))-(n+1)`
-/

namespace A075989.P4362314810349704379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275495 (2 * (n + 1)) - (n + 1 : ℤ)

end

end A075989.P4362314810349704379

namespace A075989

/-- `A275495(2*(n+1))-(n+1)` -/
def P4362314810349704379.Spec : Prop :=
  ∀ n, P4362314810349704379.a n = A075989 (n + 1)

end A075989

/-! ## A075989.P7128462733673354167

`A110654(A271860(2*(n+1)))`
-/

namespace A075989.P7128462733673354167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A271860 (2 * (n + 1))).toNat

end

end A075989.P7128462733673354167

namespace A075989

/-- `A110654(A271860(2*(n+1)))` -/
def P7128462733673354167.Spec : Prop :=
  ∀ n, P7128462733673354167.a n = A075989 (n + 1)

end A075989

/-! ## A075989.P10925188950848901029

`A049820(n+1)-A177236(2*(n+1))`
-/

namespace A075989.P10925188950848901029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049820 (n + 1) - A177236 (2 * (n + 1))

end

end A075989.P10925188950848901029

namespace A075989

/-- `A049820(n+1)-A177236(2*(n+1))` -/
def P10925188950848901029.Spec : Prop :=
  ∀ n, P10925188950848901029.a n = A075989 (n + 1)

end A075989

/-! ## A075989.P10956008084677450891

`A248517(2*(n+1))-A002541(n+1)`
-/

namespace A075989.P10956008084677450891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248517 (2 * (n + 1)) - A002541 (n + 1)

end

end A075989.P10956008084677450891

namespace A075989

/-- `A248517(2*(n+1))-A002541(n+1)` -/
def P10956008084677450891.Spec : Prop :=
  ∀ n, P10956008084677450891.a n = A075989 (n + 1)

end A075989

/-!
# A075990: Positions of records in A075988.

The programs for A075990, there is no canonical definition to state claims against.
-/

/-! ## A075990.P3262754301689882697

`record[A311692(n)%A274933(2*n+5)]`
-/

namespace A075990.P3262754301689882697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A311692 n) (A274933 (2 * n + 5))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A075990.P3262754301689882697

/-! ## A075990.P7855108459642416346

`A346951(n+1)+A020639(A309864(n))`
-/

namespace A075990.P7855108459642416346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346951 (n + 1) + A020639 (A309864 n).toNat

end

end A075990.P7855108459642416346

/-! ## A075990.P152669117577413192

`A346951(n+1)+A031278(A147400(n+1))`
-/

namespace A075990.P152669117577413192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346951 (n + 1) + A031278 (A147400 (n + 1)).toNat

end

end A075990.P152669117577413192

/-! ## A075990.P15369500254096442540

`A346951(n+1)+A033630(A324094(n+1))`
-/

namespace A075990.P15369500254096442540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346951 (n + 1) + A033630 (A324094 (n + 1)).toNat

end

end A075990.P15369500254096442540

/-!
# A075991: Indices where record values of A075989 occur.

The programs for A075991, there is no canonical definition to state claims against.
-/

/-! ## A075991.P15777048953267369710

`A104635(n+1)-A056674(A001333(n))`
-/

namespace A075991.P15777048953267369710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104635 (n + 1) - A056674 (A001333 n).toNat

end

end A075991.P15777048953267369710

/-! ## A075991.P16770629440728144257

`A104635(n+1)-A221836(A097110(n))`
-/

namespace A075991.P16770629440728144257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104635 (n + 1) - A221836 (A097110 n).toNat

end

end A075991.P16770629440728144257

/-! ## A075991.P3426745977679775667

`eq[A000035(n), A101021(A047266(n+1))]`
-/

namespace A075991.P3426745977679775667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101021 (A047266 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A075991.P3426745977679775667

/-! ## A075991.P3245998795135724358

`eq[A040029(n), A101021(A047266(n+1))]`
-/

namespace A075991.P3245998795135724358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040029 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101021 (A047266 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A075991.P3245998795135724358

/-! ## A075991.P13403542152932776074

`∑[A053735(A334806(n+1))]`
-/

namespace A075991.P13403542152932776074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053735 (A334806 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A075991.P13403542152932776074

/-!
# A075993: Triangle read by rows: T(n,m) is the number of integers k such that floor(n/k) = m, n >= 1, k = 1..n.

The programs for A075993, the canonical program `A075993.P7614292244844846049` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A075993 has offset 1).

The definition of A075993 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A075993.P8193719796938113357

`gcd(Δ[A010766(n+1)], A115359(n))`
-/

namespace A075993.P8193719796938113357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010766 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (f1 (n + 1) - f1 n) (A115359 n)

end

end A075993.P8193719796938113357

namespace A075993

/-- `gcd(Δ[A010766(n+1)], A115359(n))` -/
def P8193719796938113357.Spec : Prop :=
  ∀ n, (P8193719796938113357.a n : ℤ) = A075993 (n + 1)

end A075993

/-! ## A075993.P18089751402812367399

`Δ[A010766(n+1)]/Δ[A025581(n)]`
-/

namespace A075993.P18089751402812367399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010766 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (f2 (n + 1) - f2 n : ℚ)

end

end A075993.P18089751402812367399

namespace A075993

/-- `Δ[A010766(n+1)]/Δ[A025581(n)]` -/
def P18089751402812367399.Spec : Prop :=
  ∀ n, P18089751402812367399.a n = (A075993 (n + 1) : ℚ)

end A075993

/-! ## A075993.P7614292244844846049

`Δ[A127739(n+1)-A010766(n+1)]`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A075993

/-- `Δ[A127739(n+1)-A010766(n+1)]` -/
def P7614292244844846049.Spec : Prop :=
  ∀ n, P7614292244844846049.a n = A075993 (n + 1)

theorem P7614292244844846049.correct : P7614292244844846049.Spec := by
  intro n
  simp only [A075993, Nat.add_sub_cancel]

end A075993

/-! ## A075993.P4037747979433904526

`Δ[A010766(n+1)]/Δ[A004736(n+1)]`
-/

namespace A075993.P4037747979433904526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010766 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (f2 (n + 1) - f2 n : ℚ)

end

end A075993.P4037747979433904526

namespace A075993

/-- `Δ[A010766(n+1)]/Δ[A004736(n+1)]` -/
def P4037747979433904526.Spec : Prop :=
  ∀ n, P4037747979433904526.a n = (A075993 (n + 1) : ℚ)

end A075993

/-! ## A075993.P14094111047371463096

`Δ[A038722(A057944(n)+A010766(n+1))]`
-/

namespace A075993.P14094111047371463096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038722 (A057944 n + A010766 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A075993.P14094111047371463096

namespace A075993

/-- `Δ[A038722(A057944(n)+A010766(n+1))]` -/
def P14094111047371463096.Spec : Prop :=
  ∀ n, P14094111047371463096.a n = A075993 (n + 1)

end A075993

/-! ## A075993.P13937419475279422884

`Δ[A000096(A003056(n))-A010766(n+1)]`
-/

namespace A075993.P13937419475279422884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000096 (A003056 n).toNat - A010766 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A075993.P13937419475279422884

namespace A075993

/-- `Δ[A000096(A003056(n))-A010766(n+1)]` -/
def P13937419475279422884.Spec : Prop :=
  ∀ n, P13937419475279422884.a n = A075993 (n + 1)

end A075993

/-! ## A075993.P5333765890488854582

`Δ[A000124(A002024(n+1))-A010766(n+1)]`
-/

namespace A075993.P5333765890488854582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 (A002024 (n + 1)).toNat - A010766 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A075993.P5333765890488854582

namespace A075993

/-- `Δ[A000124(A002024(n+1))-A010766(n+1)]` -/
def P5333765890488854582.Spec : Prop :=
  ∀ n, P5333765890488854582.a n = A075993 (n + 1)

end A075993

/-! ## A075993.P13991240560048301647

`A010766(n+1)-A010766(n+2)%A002024(n+2)`
-/

namespace A075993.P13991240560048301647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010766 (n + 1) - Int.tmod (A010766 (n + 2)) (A002024 (n + 2))

end

end A075993.P13991240560048301647

namespace A075993

/-- `A010766(n+1)-A010766(n+2)%A002024(n+2)` -/
def P13991240560048301647.Spec : Prop :=
  ∀ n, P13991240560048301647.a n = A075993 (n + 1)

end A075993

/-! ## A075993.P10371049341479140087

`Δ[A004736(A010766(n+1)+n)]+1`
-/

namespace A075993.P10371049341479140087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (A010766 (n + 1) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1

end

end A075993.P10371049341479140087

namespace A075993

/-- `Δ[A004736(A010766(n+1)+n)]+1` -/
def P10371049341479140087.Spec : Prop :=
  ∀ n, P10371049341479140087.a n = A075993 (n + 1)

end A075993

/-! ## A075993.P13440687212057041487

`Δ[A057944(A080036(n))-A010766(n+1)]`
-/

namespace A075993.P13440687212057041487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057944 (A080036 n).toNat - A010766 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A075993.P13440687212057041487

namespace A075993

/-- `Δ[A057944(A080036(n))-A010766(n+1)]` -/
def P13440687212057041487.Spec : Prop :=
  ∀ n, P13440687212057041487.a n = A075993 (n + 1)

end A075993

/-! ## A075993.P7693679212571663504

`Δ[A127739(n+1)-A010783(A278818(n))]`
-/

namespace A075993.P7693679212571663504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127739 (n + 1) - A010783 (A278818 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A075993.P7693679212571663504

namespace A075993

/-- `Δ[A127739(n+1)-A010783(A278818(n))]` -/
def P7693679212571663504.Spec : Prop :=
  ∀ n, P7693679212571663504.a n = A075993 (n + 1)

end A075993

/-!
# A075994: Irregular triangle T(n,k) = floor(n/k) for k = 1, 2, ..., floor(n/2) for n>=2 and T(1,1)=1.

The programs for A075994, the canonical program `A075994.P16345749398604770429` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A075994 has offset 1).

The definition of A075994 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4971 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A075994.P16345749398604770429

`A010766(record[n*(1-A101688(n))]+1)`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A075994

/-- `A010766(record[n*(1-A101688(n))]+1)` -/
def P16345749398604770429.Spec : Prop :=
  ∀ n, P16345749398604770429.a n = A075994 (n + 1)

theorem P16345749398604770429.correct : P16345749398604770429.Spec := by
  intro n
  simp only [A075994, Nat.add_sub_cancel]

end A075994

/-! ## A075994.P5642710592495220079

`A010766(record[gcd(n+1, A004199(n+1))])`
-/

namespace A075994.P5642710592495220079
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A004199 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010766 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A075994.P5642710592495220079

namespace A075994

/-- `A010766(record[gcd(n+1, A004199(n+1))])` -/
def P5642710592495220079.Spec : Prop :=
  ∀ n, P5642710592495220079.a n = A075994 (n + 1)

end A075994

/-! ## A075994.P1206941741120186566

`A010766(A232091(A028310(n))+n)`
-/

namespace A075994.P1206941741120186566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010766 (A232091 (A028310 n).toNat + (n : ℤ)).toNat

end

end A075994.P1206941741120186566

namespace A075994

/-- `A010766(A232091(A028310(n))+n)` -/
def P1206941741120186566.Spec : Prop :=
  ∀ n, P1206941741120186566.a n = A075994 (n + 1)

end A075994

/-! ## A075994.P13462402921297723086

`A010766(eq[A002260(n+1)%(n+1), A051126(n+1)]+1)`
-/

namespace A075994.P13462402921297723086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002260 (n + 1)) (n + 1 : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051126 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010766 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A075994.P13462402921297723086

namespace A075994

/-- `A010766(eq[A002260(n+1)%(n+1), A051126(n+1)]+1)` -/
def P13462402921297723086.Spec : Prop :=
  ∀ n, P13462402921297723086.a n = A075994 (n + 1)

end A075994

/-! ## A075994.P5645866328446293519

`A010766(record[A032742(A004201(n+1))])`
-/

namespace A075994.P5645866328446293519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A004201 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010766 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A075994.P5645866328446293519

namespace A075994

/-- `A010766(record[A032742(A004201(n+1))])` -/
def P5645866328446293519.Spec : Prop :=
  ∀ n, P5645866328446293519.a n = A075994 (n + 1)

end A075994

/-! ## A075994.P5507281877002422196

`A010766(record[A117358(A001614(n+1))])`
-/

namespace A075994.P5507281877002422196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117358 (A001614 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010766 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A075994.P5507281877002422196

namespace A075994

/-- `A010766(record[A117358(A001614(n+1))])` -/
def P5507281877002422196.Spec : Prop :=
  ∀ n, P5507281877002422196.a n = A075994 (n + 1)

end A075994

/-!
# A075995: a(n) = Sum_{k=1..floor(n/2)} floor(n/k) for n >= 2, with a(1) = 1.

The programs for A075995, the canonical program `A075995.P3167992725925544611` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A075995 has offset 1).

The definition of A075995 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A075995.P3167992725925544611

`∑[∏{e}[n+1, #+1]+Δ[round((2-n)/2)]]`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A075995

/-- `∑[∏{e}[n+1, #+1]+Δ[round((2-n)/2)]]` -/
def P3167992725925544611.Spec : Prop :=
  ∀ n, P3167992725925544611.a n = A075995 (n + 1)

theorem P3167992725925544611.correct : P3167992725925544611.Spec := by
  intro n
  simp only [A075995, Nat.add_sub_cancel]

end A075995

/-! ## A075995.P7748095815770202612

`∑[∏{e}[n+1, #+1]-∏{d}[1-n, #%2]]+1`
-/

namespace A075995.P7748095815770202612
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1) : ℕ) : ℤ) - ((∏ d ∈ Nat.divisors (f3 n).natAbs, d % 2 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A075995.P7748095815770202612

namespace A075995

/-- `∑[∏{e}[n+1, #+1]-∏{d}[1-n, #%2]]+1` -/
def P7748095815770202612.Spec : Prop :=
  ∀ n, P7748095815770202612.a n = A075995 (n + 1)

end A075995

/-! ## A075995.P6995356520424543025

`∑[∑{d}[n+1, 2%#/2]]+(n%2)^n+n`
-/

namespace A075995.P6995356520424543025
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), ((2 % d : ℕ) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (((n % 2) ^ n + n : ℕ) : ℚ)

end

end A075995.P6995356520424543025

namespace A075995

/-- `∑[∑{d}[n+1, 2%#/2]]+(n%2)^n+n` -/
def P6995356520424543025.Spec : Prop :=
  ∀ n, P6995356520424543025.a n = (A075995 (n + 1) : ℚ)

end A075995

/-! ## A075995.P17802915565055307922

`∏{e}[n+1, #+1]+∑[∏{e}[n, #+1]]-(round((n-1)/2)+2)`
-/

namespace A075995.P17802915565055307922
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n), (Nat.factorization (f3 n) p + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℤ) + (((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - (SequenceMachineLib.roundAway (((n : ℤ) - 1 : ℚ) / 2) + 2))

end

end A075995.P17802915565055307922

namespace A075995

/-- `∏{e}[n+1, #+1]+∑[∏{e}[n, #+1]]-(round((n-1)/2)+2)` -/
def P17802915565055307922.Spec : Prop :=
  ∀ n, P17802915565055307922.a n = A075995 (n + 1)

end A075995

/-! ## A075995.P10210636884142236020

`∑[A000005(n+1)]-ceil(sinh(log(n+1)))`
-/

namespace A075995.P10210636884142236020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - ⌈Real.sinh (Real.log (n + 1 : ℝ))⌉

end

end A075995.P10210636884142236020

namespace A075995

/-- `∑[A000005(n+1)]-ceil(sinh(log(n+1)))` -/
def P10210636884142236020.Spec : Prop :=
  ∀ n, P10210636884142236020.a n = A075995 (n + 1)

end A075995

/-! ## A075995.P38055569955267299

`∑[A000005(1-char[1]+n)]-floor(n/2)`
-/

namespace A075995.P38055569955267299
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (1 - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - ⌊(n : ℚ) / 2⌋

end

end A075995.P38055569955267299

namespace A075995

/-- `∑[A000005(1-char[1]+n)]-floor(n/2)` -/
def P38055569955267299.Spec : Prop :=
  ∀ n, P38055569955267299.a n = A075995 (n + 1)

end A075995

/-! ## A075995.P17954535715135741362

`A065033(n)+A002541(n+1)`
-/

namespace A075995.P17954535715135741362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 n + A002541 (n + 1)

end

end A075995.P17954535715135741362

namespace A075995

/-- `A065033(n)+A002541(n+1)` -/
def P17954535715135741362.Spec : Prop :=
  ∀ n, P17954535715135741362.a n = A075995 (n + 1)

end A075995

/-! ## A075995.P6454714576190836497

`A156745(n+1)-A114119(n)`
-/

namespace A075995.P6454714576190836497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156745 (n + 1) - A114119 n

end

end A075995.P6454714576190836497

namespace A075995

/-- `A156745(n+1)-A114119(n)` -/
def P6454714576190836497.Spec : Prop :=
  ∀ n, P6454714576190836497.a n = A075995 (n + 1)

end A075995

/-! ## A075995.P8327590493700752429

`A366968(n+1)+A131055(n+1)`
-/

namespace A075995.P8327590493700752429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366968 (n + 1) + A131055 (n + 1)

end

end A075995.P8327590493700752429

namespace A075995

/-- `A366968(n+1)+A131055(n+1)` -/
def P8327590493700752429.Spec : Prop :=
  ∀ n, P8327590493700752429.a n = A075995 (n + 1)

end A075995

/-! ## A075995.P9346158609259125175

`A080476(n+1)-A161664(n+1)`
-/

namespace A075995.P9346158609259125175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080476 (n + 1) - A161664 (n + 1)

end

end A075995.P9346158609259125175

namespace A075995

/-- `A080476(n+1)-A161664(n+1)` -/
def P9346158609259125175.Spec : Prop :=
  ∀ n, P9346158609259125175.a n = A075995 (n + 1)

end A075995

/-!
# A075997: a(n) = [n/2] - [n/3] + [n/4] - [n/5] + [n/6] - ..., where [n/k] = floor(n/k).

The programs for A075997, the canonical program `A075997.P4978135503421497941` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A075997 has offset 0).

The definition of A075997 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A059851, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A075997.P4978135503421497941

`n-A059851(n)`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A075997

/-- `n-A059851(n)` -/
def P4978135503421497941.Spec : Prop :=
  ∀ n, P4978135503421497941.a n = A075997 n

theorem P4978135503421497941.correct : P4978135503421497941.Spec := by
  intro n
  simp only [A075997]

end A075997

/-! ## A075997.P16165813240188032344

`n-A006218(n)+2*A006218(floor(n/2))`
-/

namespace A075997.P16165813240188032344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A006218 n + 2 * A006218 ⌊(n : ℚ) / 2⌋.toNat

end

end A075997.P16165813240188032344

namespace A075997

/-- `n-A006218(n)+2*A006218(floor(n/2))` -/
def P16165813240188032344.Spec : Prop :=
  ∀ n, P16165813240188032344.a n = A075997 n

end A075997

/-! ## A075997.P3391116155109229093

`∑[∑{d}[n, (-1)^#]]+n`
-/

namespace A075997.P3391116155109229093
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), (-1) ^ d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A075997.P3391116155109229093

namespace A075997

/-- `∑[∑{d}[n, (-1)^#]]+n` -/
def P3391116155109229093.Spec : Prop :=
  ∀ n, P3391116155109229093.a n = A075997 n

end A075997

/-! ## A075997.P6495404478190179131

`∑[∑{d}[n, ((-1)^#)%#]]`
-/

namespace A075997.P6495404478190179131
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), Int.tmod ((-1) ^ d) (d : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A075997.P6495404478190179131

namespace A075997

/-- `∑[∑{d}[n, ((-1)^#)%#]]` -/
def P6495404478190179131.Spec : Prop :=
  ∀ n, P6495404478190179131.a n = A075997 n

end A075997

/-! ## A075997.P4662092702739778150

`n-abs(∑[∑{d}[n, (-1)^#]])`
-/

namespace A075997.P4662092702739778150
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), (-1) ^ d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A075997.P4662092702739778150

namespace A075997

/-- `n-abs(∑[∑{d}[n, (-1)^#]])` -/
def P4662092702739778150.Spec : Prop :=
  ∀ n, P4662092702739778150.a n = A075997 n

end A075997

/-! ## A075997.P6890244159342445832

`n-∑[∑{d}[n, -(-1)^#]]`
-/

namespace A075997.P6890244159342445832
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), (-((-1) ^ d))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A075997.P6890244159342445832

namespace A075997

/-- `n-∑[∑{d}[n, -(-1)^#]]` -/
def P6890244159342445832.Spec : Prop :=
  ∀ n, P6890244159342445832.a n = A075997 n

end A075997

/-! ## A075997.P811679264075750016

`∑[∑{d}[n, ((#-(n+1))%#)^#]]`
-/

namespace A075997.P811679264075750016
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), Int.tmod ((d : ℤ) - (n + 1 : ℤ)) (d : ℤ) ^ d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A075997.P811679264075750016

namespace A075997

/-- `∑[∑{d}[n, ((#-(n+1))%#)^#]]` -/
def P811679264075750016.Spec : Prop :=
  ∀ n, P811679264075750016.a n = A075997 n

end A075997

/-! ## A075997.P8970377690812550815

`A330926(n+1)-1`
-/

namespace A075997.P8970377690812550815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330926 (n + 1) - 1

end

end A075997.P8970377690812550815

namespace A075997

/-- `A330926(n+1)-1` -/
def P8970377690812550815.Spec : Prop :=
  ∀ n, P8970377690812550815.a n = A075997 n

theorem P8970377690812550815.correct : P8970377690812550815.Spec := by
  intro n
  simp only [A075997, Nat.add_sub_cancel, A075997.P8970377690812550815.a, A075997.P4978135503421497941.a, A059851, A059851.P8165731397206128111.a, A330926, A330926.P15371824115560739582.a, A271860, A271860.P9320768908146729078.f2, A271860.P9320768908146729078.f1, A271860.P9320768908146729078.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A075997

/-! ## A075997.P2018633350611251381

`(n-A271860(n))/2`
-/

namespace A075997.P2018633350611251381
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - A271860 n : ℚ) / 2

end

end A075997.P2018633350611251381

namespace A075997

/-- `(n-A271860(n))/2` -/
def P2018633350611251381.Spec : Prop :=
  ∀ n, P2018633350611251381.a n = (A075997 n : ℚ)

end A075997

/-! ## A075997.P12630780044708956455

`A325939(n)+a(n-1)` with `a(0)=0`
-/

namespace A075997.P12630780044708956455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A325939 n + a (n - 1)

end

end A075997.P12630780044708956455

namespace A075997

/-- `A325939(n)+a(n-1)` -/
def P12630780044708956455.Spec : Prop :=
  ∀ n, P12630780044708956455.a n = A075997 n

end A075997

/-! ## A075997.P5068990659388943032

`a(n-1)+1-A048272(n)` with `a(0)=0`
-/

namespace A075997.P5068990659388943032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + (1 - A048272 n)

end

end A075997.P5068990659388943032

namespace A075997

/-- `a(n-1)+1-A048272(n)` -/
def P5068990659388943032.Spec : Prop :=
  ∀ n, P5068990659388943032.a n = A075997 n

end A075997

/-! ## A075997.P13325152606411011348

`A001281(n-A271860(n))`
-/

namespace A075997.P13325152606411011348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 ((n : ℤ) - A271860 n).toNat

end

end A075997.P13325152606411011348

namespace A075997

/-- `A001281(n-A271860(n))` -/
def P13325152606411011348.Spec : Prop :=
  ∀ n, P13325152606411011348.a n = A075997 n

end A075997

/-! ## A075997.P18246448982396052326

`A004525(n-A271860(n))`
-/

namespace A075997.P18246448982396052326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 ((n : ℤ) - A271860 n).toNat

end

end A075997.P18246448982396052326

namespace A075997

/-- `A004525(n-A271860(n))` -/
def P18246448982396052326.Spec : Prop :=
  ∀ n, P18246448982396052326.a n = A075997 n

end A075997

/-! ## A075997.P6422637423572246649

`A004526(n-A271860(n))`
-/

namespace A075997.P6422637423572246649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 ((n : ℤ) - A271860 n).toNat

end

end A075997.P6422637423572246649

namespace A075997

/-- `A004526(n-A271860(n))` -/
def P6422637423572246649.Spec : Prop :=
  ∀ n, P6422637423572246649.a n = A075997 n

end A075997

/-! ## A075997.P13116652732250270371

`A110654(n-A271860(n))`
-/

namespace A075997.P13116652732250270371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 ((n : ℤ) - A271860 n).toNat

end

end A075997.P13116652732250270371

namespace A075997

/-- `A110654(n-A271860(n))` -/
def P13116652732250270371.Spec : Prop :=
  ∀ n, P13116652732250270371.a n = A075997 n

end A075997

/-! ## A075997.P3833073098277781164

`A109613(n)-A332682(n+1)`
-/

namespace A075997.P3833073098277781164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 n - A332682 (n + 1)

end

end A075997.P3833073098277781164

namespace A075997

/-- `A109613(n)-A332682(n+1)` -/
def P3833073098277781164.Spec : Prop :=
  ∀ n, P3833073098277781164.a n = A075997 n

end A075997

/-! ## A075997.P2280677145961170784

`A008619(n-A271860(n))-1`
-/

namespace A075997.P2280677145961170784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 ((n : ℤ) - A271860 n).toNat - 1

end

end A075997.P2280677145961170784

namespace A075997

/-- `A008619(n-A271860(n))-1` -/
def P2280677145961170784.Spec : Prop :=
  ∀ n, P2280677145961170784.a n = A075997 n

end A075997

/-! ## A075997.P7080807850934721160

`A063196(n+1)%A332682(n+1)`
-/

namespace A075997.P7080807850934721160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A063196 (n + 1)) (A332682 (n + 1))

end

end A075997.P7080807850934721160

namespace A075997

/-- `A063196(n+1)%A332682(n+1)` -/
def P7080807850934721160.Spec : Prop :=
  ∀ n, P7080807850934721160.a n = A075997 n

end A075997

/-! ## A075997.P8551852056799621955

`∑[A325939(n+1)]-A325939(n+1)`
-/

namespace A075997.P8551852056799621955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325939 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A325939 (n + 1)

end

end A075997.P8551852056799621955

namespace A075997

/-- `∑[A325939(n+1)]-A325939(n+1)` -/
def P8551852056799621955.Spec : Prop :=
  ∀ n, P8551852056799621955.a n = A075997 n

end A075997

/-! ## A075997.P9600309867361952574

`A048272(n+1)-∑[A048272(n+1)]+n`
-/

namespace A075997.P9600309867361952574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048272 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048272 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A075997.P9600309867361952574

namespace A075997

/-- `A048272(n+1)-∑[A048272(n+1)]+n` -/
def P9600309867361952574.Spec : Prop :=
  ∀ n, P9600309867361952574.a n = A075997 n

end A075997

/-!
# A075998: Product{: k=1,2,...,n}, where denotes the integer second nearest to x. (For x=(2h+1)/2, is defined to be h, not h+1; if x is an integer, then is defined to be x+1.)

The programs for A075998, there is no canonical definition to state claims against.
-/

/-! ## A075998.P15445413716333623899

`2*A076001(n+1)`
-/

namespace A075998.P15445413716333623899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A076001 (n + 1)

end

end A075998.P15445413716333623899

/-! ## A075998.P5333639335778865824

`A076001(C(n+1, n))+A076001(n+1)`
-/

namespace A075998.P5333639335778865824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076001 (Nat.choose (n + 1) n) + A076001 (n + 1)

end

end A075998.P5333639335778865824

/-! ## A075998.P7641934534396462527

`A076001(n+1)+A076001(Δ[n²]-n)`
-/

namespace A075998.P7641934534396462527
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076001 (n + 1) + A076001 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat

end

end A075998.P7641934534396462527

/-! ## A075998.P15924481758217930520

`A076001(Δ[n²]-n)*A138287(A017281(n))`
-/

namespace A075998.P15924481758217930520
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076001 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat * A138287 (A017281 n).toNat

end

end A075998.P15924481758217930520

/-! ## A075998.P5216300125946185649

`A076001(n+1)+A076001(n+1)%A004171(n)`
-/

namespace A075998.P5216300125946185649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076001 (n + 1) + Int.tmod (A076001 (n + 1)) (A004171 n)

end

end A075998.P5216300125946185649

/-!
# A075999: Product{[n/k + 1/2]: k=1,2,...,n}, where [x + 1/2] denotes the integer nearest to x.

The programs for A075999, there is no canonical definition to state claims against.
-/

/-! ## A075999.P4301631827279282891

`record[A145119(n+1)/A122803(n)]`
-/

namespace A075999.P4301631827279282891
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A145119 (n + 1) : ℚ) / (A122803 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A075999.P4301631827279282891

/-! ## A075999.P12354185985732011716

`(n+1)*A227355(A300626(n))`
-/

namespace A075999.P12354185985732011716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A227355 (A300626 n).toNat

end

end A075999.P12354185985732011716

/-! ## A075999.P9556200020879219820

`A096852(A114299(n))*A132269(n)`
-/

namespace A075999.P9556200020879219820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096852 (A114299 n).toNat * A132269 n

end

end A075999.P9556200020879219820

/-! ## A075999.P8938340359275679299

`A007734(A000142(n))*A093005(n+1)`
-/

namespace A075999.P8938340359275679299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007734 (A000142 n).toNat * A093005 (n + 1)

end

end A075999.P8938340359275679299

