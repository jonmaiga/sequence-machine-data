import SequenceMachineLib
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
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B001.C000
import Seq.B001.C002
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C008
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
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
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
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
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023
import Seq.Opaque.C024
import Seq.Opaque.C025

/-!
# A194900: Rectangular array, by antidiagonals: row n gives the positions of n in the fractal sequence A194899; an interspersion.

The programs for A194900, there is no canonical definition to state claims against.
-/

/-! ## A194900.P4491761921288898134

`∑[char[∑[n]]]²+1-A194903(n+1)`
-/

namespace A194900.P4491761921288898134
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) + (1 - A194903 (n + 1))

end

end A194900.P4491761921288898134

/-! ## A194900.P11026642377352552622

`A038722(A194903(n+1))`
-/

namespace A194900.P11026642377352552622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038722 (A194903 (n + 1)).toNat

end

end A194900.P11026642377352552622

/-! ## A194900.P12106349976105771755

`A265129(n+1)-A194903(n+1)`
-/

namespace A194900.P12106349976105771755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265129 (n + 1) - A194903 (n + 1)

end

end A194900.P12106349976105771755

/-! ## A194900.P785303705268354590

`∑[A198954(n)]-(A194903(n+1)-1)`
-/

namespace A194900.P785303705268354590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198954 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (A194903 (n + 1) - 1)

end

end A194900.P785303705268354590

/-! ## A194900.P7962221728949045980

`A093995(n+1)+1-A194903(n+1)`
-/

namespace A194900.P7962221728949045980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093995 (n + 1) + 1 - A194903 (n + 1)

end

end A194900.P7962221728949045980

/-! ## A194900.P1796704785677790888

`A002522(A002024(n+1))-A194903(n+1)`
-/

namespace A194900.P1796704785677790888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002522 (A002024 (n + 1)).toNat - A194903 (n + 1)

end

end A194900.P1796704785677790888

/-! ## A194900.P4355580609506840496

`A061579(A194903(n+1)-1)+1`
-/

namespace A194900.P4355580609506840496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061579 (A194903 (n + 1) - 1).toNat + 1

end

end A194900.P4355580609506840496

/-! ## A194900.P1095303403785127094

`A057944(n)+A004736(A194903(n+1))`
-/

namespace A194900.P1095303403785127094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057944 n + A004736 (A194903 (n + 1)).toNat

end

end A194900.P1095303403785127094

/-! ## A194900.P16903705824400703092

`A093995(n+1)+A024000(A194903(n+1))`
-/

namespace A194900.P16903705824400703092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093995 (n + 1) + A024000 (A194903 (n + 1)).toNat

end

end A194900.P16903705824400703092

/-!
# A194901: Inverse permutation of A194900; every positive integer occurs exactly once.

The programs for A194901, there is no canonical definition to state claims against.
-/

/-! ## A194901.P13286774506974592448

`A194899(n+1)+C(∑[char[∑[n]]], 2)`
-/

namespace A194901.P13286774506974592448
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194899 (n + 1) + (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ)

end

end A194901.P13286774506974592448

/-! ## A194901.P7009593587842755476

`A194899(n+1)+A057944(n)`
-/

namespace A194901.P7009593587842755476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194899 (n + 1) + A057944 n

end

end A194901.P7009593587842755476

/-! ## A194901.P17197803363754590432

`A194899(n+1)+n-A002262(n)`
-/

namespace A194901.P17197803363754590432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194899 (n + 1) + ((n : ℤ) - A002262 n)

end

end A194901.P17197803363754590432

/-! ## A194901.P1078813419667747540

`A194899(n+1)+A061885(n)-n`
-/

namespace A194901.P1078813419667747540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194899 (n + 1) + (A061885 n - (n : ℤ))

end

end A194901.P1078813419667747540

/-! ## A194901.P15702544260102313851

`A194899(n+1)+n+1-A002260(n+1)`
-/

namespace A194901.P15702544260102313851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194899 (n + 1) + ((n + 1 : ℤ) - A002260 (n + 1))

end

end A194901.P15702544260102313851

/-! ## A194901.P9624708225487171884

`A194899(n+1)+A161680(round(sqrt(2*(n+1))))`
-/

namespace A194901.P9624708225487171884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194899 (n + 1) + A161680 (SequenceMachineLib.roundAway (Real.sqrt (2 * (n + 1) : ℝ))).toNat

end

end A194901.P9624708225487171884

/-! ## A194901.P8332127887986900269

`A194899(n+1)+A000217(A003056(n))`
-/

namespace A194901.P8332127887986900269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194899 (n + 1) + A000217 (A003056 n).toNat

end

end A194901.P8332127887986900269

/-! ## A194901.P2673396055992883346

`A194834(n+1)+A194899(n+1)-A194832(n+1)`
-/

namespace A194901.P2673396055992883346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194834 (n + 1) + (A194899 (n + 1) - A194832 (n + 1))

end

end A194901.P2673396055992883346

/-! ## A194901.P5060446641763913358

`A194837(n+1)+A194899(n+1)-A194835(n+1)`
-/

namespace A194901.P5060446641763913358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194837 (n + 1) + (A194899 (n + 1) - A194835 (n + 1))

end

end A194901.P5060446641763913358

/-! ## A194901.P7570204459388734507

`A194840(n+1)+A194899(n+1)-A194838(n+1)`
-/

namespace A194901.P7570204459388734507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194840 (n + 1) + (A194899 (n + 1) - A194838 (n + 1))

end

end A194901.P7570204459388734507

/-! ## A194901.P3244128955730699473

`A194846(n+1)+A194899(n+1)-A194844(n+1)`
-/

namespace A194901.P3244128955730699473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194846 (n + 1) + (A194899 (n + 1) - A194844 (n + 1))

end

end A194901.P3244128955730699473

/-! ## A194901.P6790520259703209379

`A194858(n+1)+A194899(n+1)-A194856(n+1)`
-/

namespace A194901.P6790520259703209379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194858 (n + 1) + (A194899 (n + 1) - A194856 (n + 1))

end

end A194901.P6790520259703209379

/-! ## A194901.P12421397940789694573

`A194861(n+1)+A194899(n+1)-A194859(n+1)`
-/

namespace A194901.P12421397940789694573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194861 (n + 1) + (A194899 (n + 1) - A194859 (n + 1))

end

end A194901.P12421397940789694573

/-! ## A194901.P8867932267636148510

`A194864(n+1)+A194899(n+1)-A194865(n+1)`
-/

namespace A194901.P8867932267636148510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194864 (n + 1) + (A194899 (n + 1) - A194865 (n + 1))

end

end A194901.P8867932267636148510

/-! ## A194901.P3707011890300516200

`A194867(n+1)+A194899(n+1)-A194862(n+1)`
-/

namespace A194901.P3707011890300516200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194867 (n + 1) + (A194899 (n + 1) - A194862 (n + 1))

end

end A194901.P3707011890300516200

/-! ## A194901.P12127360868643700446

`A194870(n+1)+A194899(n+1)-A194868(n+1)`
-/

namespace A194901.P12127360868643700446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194870 (n + 1) + (A194899 (n + 1) - A194868 (n + 1))

end

end A194901.P12127360868643700446

/-! ## A194901.P15587673798237042398

`A194876(n+1)+A194899(n+1)-A194874(n+1)`
-/

namespace A194901.P15587673798237042398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194876 (n + 1) + (A194899 (n + 1) - A194874 (n + 1))

end

end A194901.P15587673798237042398

/-! ## A194901.P17112201867459478948

`A194879(n+1)+A194899(n+1)-A194877(n+1)`
-/

namespace A194901.P17112201867459478948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194879 (n + 1) + (A194899 (n + 1) - A194877 (n + 1))

end

end A194901.P17112201867459478948

/-! ## A194901.P17135774885068440820

`A194898(n+1)+A194899(n+1)-A194896(n+1)`
-/

namespace A194901.P17135774885068440820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194898 (n + 1) + (A194899 (n + 1) - A194896 (n + 1))

end

end A194901.P17135774885068440820

/-! ## A194901.P16123701029813985865

`A194899(n+1)+A194904(n+1)-A194902(n+1)`
-/

namespace A194901.P16123701029813985865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194899 (n + 1) + (A194904 (n + 1) - A194902 (n + 1))

end

end A194901.P16123701029813985865

/-!
# A194902: Triangular array (and fractal sequence): row n is the permutation of (1,2,...,n) obtained from the increasing ordering of fractional parts {r}, {2r}, ..., {nr}, where r=-sqrt(12).

The programs for A194902, there is no canonical definition to state claims against.
-/

/-! ## A194902.P1878216108068474395

`A002260(A194904(n+1))`
-/

namespace A194902.P1878216108068474395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A194904 (n + 1)).toNat

end

end A194902.P1878216108068474395

/-! ## A194902.P15029897317994328030

`A194904(n+1)-A057944(n)`
-/

namespace A194902.P15029897317994328030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194904 (n + 1) - A057944 n

end

end A194902.P15029897317994328030

/-! ## A194902.P13762822872779968124

`A194832(n+1)+A194904(n+1)-A194834(n+1)`
-/

namespace A194902.P13762822872779968124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194832 (n + 1) + (A194904 (n + 1) - A194834 (n + 1))

end

end A194902.P13762822872779968124

/-! ## A194902.P12821040899920145117

`A004736(A265129(n+1)-A194904(n+1))`
-/

namespace A194902.P12821040899920145117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (A265129 (n + 1) - A194904 (n + 1)).toNat

end

end A194902.P12821040899920145117

/-! ## A194902.P519399981225429263

`A194899(∑[char[∑[n]]]²-n)`
-/

namespace A194902.P519399981225429263
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194899 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n)

end

end A194902.P519399981225429263

/-! ## A194902.P2712882341772933213

`A194901(A038722(n+1))-A057944(n)`
-/

namespace A194902.P2712882341772933213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194901 (A038722 (n + 1)).toNat - A057944 n

end

end A194902.P2712882341772933213

/-!
# A194903: Rectangular array, by antidiagonals: row n gives the positions of n in the fractal sequence A194902; an interspersion.

The programs for A194903, there is no canonical definition to state claims against.
-/

/-! ## A194903.P17816505564152976910

`∑[char[∑[n]]]²+1-A194900(n+1)`
-/

namespace A194903.P17816505564152976910
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) + (1 - A194900 (n + 1))

end

end A194903.P17816505564152976910

/-! ## A194903.P10120242973674686890

`A038722(A194900(n+1))`
-/

namespace A194903.P10120242973674686890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038722 (A194900 (n + 1)).toNat

end

end A194903.P10120242973674686890

/-! ## A194903.P10583244599210187623

`A265129(n+1)-A194900(n+1)`
-/

namespace A194903.P10583244599210187623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265129 (n + 1) - A194900 (n + 1)

end

end A194903.P10583244599210187623

/-! ## A194903.P8682777023654967722

`A093995(n+1)+1-A194900(n+1)`
-/

namespace A194903.P8682777023654967722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093995 (n + 1) + 1 - A194900 (n + 1)

end

end A194903.P8682777023654967722

/-! ## A194903.P5751081470808062079

`A061579(A194900(n+1)-1)+1`
-/

namespace A194903.P5751081470808062079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061579 (A194900 (n + 1) - 1).toNat + 1

end

end A194903.P5751081470808062079

/-! ## A194903.P4400174512748834951

`A053187(2*(n+1))-(A194900(n+1)-1)`
-/

namespace A194903.P4400174512748834951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053187 (2 * (n + 1)) - (A194900 (n + 1) - 1)

end

end A194903.P4400174512748834951

/-!
# A194904: Inverse permutation of A194903; every positive integer occurs exactly once.

The programs for A194904, there is no canonical definition to state claims against.
-/

/-! ## A194904.P2086688743917548599

`A194902(n+1)+C(∑[char[∑[n]]], 2)`
-/

namespace A194904.P2086688743917548599
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194902 (n + 1) + (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ)

end

end A194904.P2086688743917548599

/-! ## A194904.P8043370097675289217

`A194902(n+1)+A057944(n)`
-/

namespace A194904.P8043370097675289217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194902 (n + 1) + A057944 n

end

end A194904.P8043370097675289217

/-! ## A194904.P13493353759850502776

`A194902(n+1)+n-A002262(n)`
-/

namespace A194904.P13493353759850502776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194902 (n + 1) + ((n : ℤ) - A002262 n)

end

end A194904.P13493353759850502776

/-! ## A194904.P4557243264367918210

`A194902(n+1)+A061885(n)-n`
-/

namespace A194904.P4557243264367918210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194902 (n + 1) + (A061885 n - (n : ℤ))

end

end A194904.P4557243264367918210

/-! ## A194904.P905139780190674988

`A194902(n+1)+n+1-A002260(n+1)`
-/

namespace A194904.P905139780190674988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194902 (n + 1) + ((n + 1 : ℤ) - A002260 (n + 1))

end

end A194904.P905139780190674988

/-! ## A194904.P3980735360494613224

`A194902(n+1)+A161680(round(sqrt(2*(n+1))))`
-/

namespace A194904.P3980735360494613224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194902 (n + 1) + A161680 (SequenceMachineLib.roundAway (Real.sqrt (2 * (n + 1) : ℝ))).toNat

end

end A194904.P3980735360494613224

/-! ## A194904.P15909742358097605345

`A194902(n+1)+A000217(A003056(n))`
-/

namespace A194904.P15909742358097605345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194902 (n + 1) + A000217 (A003056 n).toNat

end

end A194904.P15909742358097605345

/-! ## A194904.P9878962068741517091

`A194902(n+1)+A001971(A131507(n))`
-/

namespace A194904.P9878962068741517091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194902 (n + 1) + A001971 (A131507 n).toNat

end

end A194904.P9878962068741517091

/-! ## A194904.P17887800382241212024

`A194834(n+1)+A194902(n+1)-A194832(n+1)`
-/

namespace A194904.P17887800382241212024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194834 (n + 1) + (A194902 (n + 1) - A194832 (n + 1))

end

end A194904.P17887800382241212024

/-! ## A194904.P2887362477230077404

`A194899(∑[char[∑[n]]]²-n)+C(∑[char[∑[n]]], 2)`
-/

namespace A194904.P2887362477230077404
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f6 j

open Classical in
def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f5 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194899 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n) + (Nat.choose (∑ j ∈ Finset.range (n + 1), f4 j) 2 : ℤ)

end

end A194904.P2887362477230077404

/-! ## A194904.P6462180978582112360

`A194899(A038722(n+1))+A057944(n)`
-/

namespace A194904.P6462180978582112360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194899 (A038722 (n + 1)).toNat + A057944 n

end

end A194904.P6462180978582112360

/-!
# A194905: Triangular array (and fractal sequence): row n is the permutation of (1,2,...,n) obtained from the increasing ordering of fractional parts {r}, {2r}, ..., {nr}, where r=Pi.

The programs for A194905, there is no canonical definition to state claims against.
-/

/-! ## A194905.P12738162383005546886

`A002260(A194907(n+1))`
-/

namespace A194905.P12738162383005546886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A194907 (n + 1)).toNat

end

end A194905.P12738162383005546886

/-! ## A194905.P9891646945552043034

`A194907(n+1)-A057944(n)`
-/

namespace A194905.P9891646945552043034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194907 (n + 1) - A057944 n

end

end A194905.P9891646945552043034

/-! ## A194905.P2255992804364230157

`A194832(n+1)+A194907(n+1)-A194834(n+1)`
-/

namespace A194905.P2255992804364230157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194832 (n + 1) + (A194907 (n + 1) - A194834 (n + 1))

end

end A194905.P2255992804364230157

/-! ## A194905.P11121482785145572353

`A194844(n+1)+A194907(n+1)-A194846(n+1)`
-/

namespace A194905.P11121482785145572353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194844 (n + 1) + (A194907 (n + 1) - A194846 (n + 1))

end

end A194905.P11121482785145572353

/-! ## A194905.P18399946479410221203

`A194856(n+1)+A194907(n+1)-A194858(n+1)`
-/

namespace A194905.P18399946479410221203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194856 (n + 1) + (A194907 (n + 1) - A194858 (n + 1))

end

end A194905.P18399946479410221203

/-! ## A194905.P17756185764765061211

`A194859(n+1)+A194907(n+1)-A194861(n+1)`
-/

namespace A194905.P17756185764765061211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194859 (n + 1) + (A194907 (n + 1) - A194861 (n + 1))

end

end A194905.P17756185764765061211

/-! ## A194905.P8031721162290479906

`A194868(n+1)+A194907(n+1)-A194870(n+1)`
-/

namespace A194905.P8031721162290479906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194868 (n + 1) + (A194907 (n + 1) - A194870 (n + 1))

end

end A194905.P8031721162290479906

/-! ## A194905.P12913573544966663688

`A194871(n+1)+A194907(n+1)-A194873(n+1)`
-/

namespace A194905.P12913573544966663688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194871 (n + 1) + (A194907 (n + 1) - A194873 (n + 1))

end

end A194905.P12913573544966663688

/-! ## A194905.P13488952780841880715

`A194896(n+1)+A194907(n+1)-A194898(n+1)`
-/

namespace A194905.P13488952780841880715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194896 (n + 1) + (A194907 (n + 1) - A194898 (n + 1))

end

end A194905.P13488952780841880715

/-! ## A194905.P2537940648602759370

`A194899(n+1)+A194907(n+1)-A194901(n+1)`
-/

namespace A194905.P2537940648602759370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194899 (n + 1) + (A194907 (n + 1) - A194901 (n + 1))

end

end A194905.P2537940648602759370

/-! ## A194905.P12133255656395310055

`A194902(n+1)+A194907(n+1)-A194904(n+1)`
-/

namespace A194905.P12133255656395310055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194902 (n + 1) + (A194907 (n + 1) - A194904 (n + 1))

end

end A194905.P12133255656395310055

/-! ## A194905.P13605027140876194324

`A194907(n+1)+A194911(n+1)-A194913(n+1)`
-/

namespace A194905.P13605027140876194324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194907 (n + 1) + (A194911 (n + 1) - A194913 (n + 1))

end

end A194905.P13605027140876194324

/-! ## A194905.P664359519129194097

`A194832(A194833(A194907(A194834(A194833(n+1)))))`
-/

namespace A194905.P664359519129194097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194832 (A194833 (A194907 (A194834 (A194833 (n + 1)).toNat).toNat).toNat).toNat

end

end A194905.P664359519129194097

/-! ## A194905.P14176313685175732046

`A194902(A194903(A194907(A194904(A194903(n+1)))))`
-/

namespace A194905.P14176313685175732046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194902 (A194903 (A194907 (A194904 (A194903 (n + 1)).toNat).toNat).toNat).toNat

end

end A194905.P14176313685175732046

/-! ## A194905.P16488669366448055649

`A194868(A194869(A194907(A194870(A194869(n+1)))))`
-/

namespace A194905.P16488669366448055649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194868 (A194869 (A194907 (A194870 (A194869 (n + 1)).toNat).toNat).toNat).toNat

end

end A194905.P16488669366448055649

/-! ## A194905.P8370133585520446928

`A194871(A194872(A194907(A194873(A194872(n+1)))))`
-/

namespace A194905.P8370133585520446928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194871 (A194872 (A194907 (A194873 (A194872 (n + 1)).toNat).toNat).toNat).toNat

end

end A194905.P8370133585520446928

/-! ## A194905.P15602953360802734907

`A194911(A194912(A194907(A194913(A194912(n+1)))))`
-/

namespace A194905.P15602953360802734907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194911 (A194912 (A194907 (A194913 (A194912 (n + 1)).toNat).toNat).toNat).toNat

end

end A194905.P15602953360802734907

/-! ## A194905.P7464183130441390521

`A194911(A194912(A194907(A194907(A194906(n+1)))))`
-/

namespace A194905.P7464183130441390521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194911 (A194912 (A194907 (A194907 (A194906 (n + 1)).toNat).toNat).toNat).toNat

end

end A194905.P7464183130441390521

/-! ## A194905.P5930225479933812283

`A194859(A194860(A194907(A194861(A194860(n+1)))))`
-/

namespace A194905.P5930225479933812283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194859 (A194860 (A194907 (A194861 (A194860 (n + 1)).toNat).toNat).toNat).toNat

end

end A194905.P5930225479933812283

/-! ## A194905.P7111676921022976194

`A194844(A194845(A194907(A194846(A194845(n+1)))))`
-/

namespace A194905.P7111676921022976194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194844 (A194845 (A194907 (A194846 (A194845 (n + 1)).toNat).toNat).toNat).toNat

end

end A194905.P7111676921022976194

/-!
# A194906: Rectangular array, by antidiagonals: row n gives the positions of n in the fractal sequence A194905; an interspersion.

The programs for A194906, there is no canonical definition to state claims against.
-/

/-! ## A194906.P7017307609454140929

`∑[char[∑[n]]]²+1-A194909(n+1)`
-/

namespace A194906.P7017307609454140929
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) + (1 - A194909 (n + 1))

end

end A194906.P7017307609454140929

/-! ## A194906.P6545563612224622962

`A038722(A194909(n+1))`
-/

namespace A194906.P6545563612224622962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038722 (A194909 (n + 1)).toNat

end

end A194906.P6545563612224622962

/-! ## A194906.P2520647676308043015

`A265129(n+1)-A194909(n+1)`
-/

namespace A194906.P2520647676308043015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265129 (n + 1) - A194909 (n + 1)

end

end A194906.P2520647676308043015

/-! ## A194906.P3534506254636118340

`A093995(n+1)+1-A194909(n+1)`
-/

namespace A194906.P3534506254636118340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093995 (n + 1) + 1 - A194909 (n + 1)

end

end A194906.P3534506254636118340

/-! ## A194906.P674678425730049158

`A061579(A194909(n+1)-1)+1`
-/

namespace A194906.P674678425730049158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061579 (A194909 (n + 1) - 1).toNat + 1

end

end A194906.P674678425730049158

/-! ## A194906.P12872528014246462277

`A057944(n)+A004736(A194909(n+1))`
-/

namespace A194906.P12872528014246462277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057944 n + A004736 (A194909 (n + 1)).toNat

end

end A194906.P12872528014246462277

/-! ## A194906.P15139463304820621832

`A024000(A194909(n+1))+∑[A198954(n)]`
-/

namespace A194906.P15139463304820621832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198954 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024000 (A194909 (n + 1)).toNat + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194906.P15139463304820621832

/-! ## A194906.P15538090664997372312

`A093995(n+1)+A024000(A194909(n+1))`
-/

namespace A194906.P15538090664997372312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093995 (n + 1) + A024000 (A194909 (n + 1)).toNat

end

end A194906.P15538090664997372312

/-!
# A194907: Inverse permutation of A194906; every positive integer occurs exactly once.

The programs for A194907, there is no canonical definition to state claims against.
-/

/-! ## A194907.P15656007212092577414

`A194905(n+1)+C(∑[char[∑[n]]], 2)`
-/

namespace A194907.P15656007212092577414
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194905 (n + 1) + (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ)

end

end A194907.P15656007212092577414

/-! ## A194907.P11717455796626279392

`A194905(n+1)+A057944(n)`
-/

namespace A194907.P11717455796626279392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194905 (n + 1) + A057944 n

end

end A194907.P11717455796626279392

/-! ## A194907.P4516309074961151031

`A194905(n+1)+n-A002262(n)`
-/

namespace A194907.P4516309074961151031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194905 (n + 1) + ((n : ℤ) - A002262 n)

end

end A194907.P4516309074961151031

/-! ## A194907.P12292299710230111332

`A194905(n+1)+A061885(n)-n`
-/

namespace A194907.P12292299710230111332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194905 (n + 1) + (A061885 n - (n : ℤ))

end

end A194907.P12292299710230111332

/-! ## A194907.P1289886750124563851

`n+1+A194905(n+1)-A002260(n+1)`
-/

namespace A194907.P1289886750124563851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + (A194905 (n + 1) - A002260 (n + 1))

end

end A194907.P1289886750124563851

/-! ## A194907.P8060965480145922770

`A194905(n+1)+A000217(A003056(n))`
-/

namespace A194907.P8060965480145922770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194905 (n + 1) + A000217 (A003056 n).toNat

end

end A194907.P8060965480145922770

/-! ## A194907.P744918909520005700

`A194905(n+1)+A001971(A131507(n))`
-/

namespace A194907.P744918909520005700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194905 (n + 1) + A001971 (A131507 n).toNat

end

end A194907.P744918909520005700

/-! ## A194907.P15297203850070477595

`A054068(n+1)+A194905(n+1)-A054065(n+1)`
-/

namespace A194907.P15297203850070477595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054068 (n + 1) + (A194905 (n + 1) - A054065 (n + 1))

end

end A194907.P15297203850070477595

/-! ## A194907.P13972245332246638908

`A194834(n+1)+A194905(n+1)-A194832(n+1)`
-/

namespace A194907.P13972245332246638908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194834 (n + 1) + (A194905 (n + 1) - A194832 (n + 1))

end

end A194907.P13972245332246638908

/-! ## A194907.P14637192755843474709

`A194905(n+1)+A194910(n+1)-A194908(n+1)`
-/

namespace A194907.P14637192755843474709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194905 (n + 1) + (A194910 (n + 1) - A194908 (n + 1))

end

end A194907.P14637192755843474709

/-! ## A194907.P15474919487774842892

`A194905(n+1)+A194913(n+1)-A194911(n+1)`
-/

namespace A194907.P15474919487774842892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194905 (n + 1) + (A194913 (n + 1) - A194911 (n + 1))

end

end A194907.P15474919487774842892

/-! ## A194907.P17667963673367964890

`A194910(A038722(n+1))`
-/

namespace A194907.P17667963673367964890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194910 (A038722 (n + 1)).toNat

end

end A194907.P17667963673367964890

/-! ## A194907.P16903294406534736541

`A194910(A194906(A194910(n+1)))`
-/

namespace A194907.P16903294406534736541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194910 (A194906 (A194910 (n + 1)).toNat).toNat

end

end A194907.P16903294406534736541

/-! ## A194907.P1314862545762596122

`A194908(A038722(n+1))+A057944(n)`
-/

namespace A194907.P1314862545762596122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194908 (A038722 (n + 1)).toNat + A057944 n

end

end A194907.P1314862545762596122

/-!
# A194908: Triangular array (and fractal sequence): row n is the permutation of (1,2,...,n) obtained from the increasing ordering of fractional parts {r}, {2r}, ..., {nr}, where r=-Pi.

The programs for A194908, there is no canonical definition to state claims against.
-/

/-! ## A194908.P1315323399700737226

`A002260(A194910(n+1))`
-/

namespace A194908.P1315323399700737226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A194910 (n + 1)).toNat

end

end A194908.P1315323399700737226

/-! ## A194908.P12248672108629854836

`A194910(n+1)-A057944(n)`
-/

namespace A194908.P12248672108629854836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194910 (n + 1) - A057944 n

end

end A194908.P12248672108629854836

/-! ## A194908.P5934499703514769384

`A194832(n+1)+A194910(n+1)-A194834(n+1)`
-/

namespace A194908.P5934499703514769384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194832 (n + 1) + (A194910 (n + 1) - A194834 (n + 1))

end

end A194908.P5934499703514769384

/-! ## A194908.P4242707829950412926

`A194905(∑[char[∑[n]]]²-n)`
-/

namespace A194908.P4242707829950412926
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194905 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n)

end

end A194908.P4242707829950412926

/-! ## A194908.P6588534310656943345

`A194905(∑[2*n]%comp[∑[n]]+1)%(n+10)`
-/

namespace A194908.P6588534310656943345
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A194905 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n + 1)) (n + 10 : ℤ)

end

end A194908.P6588534310656943345

/-! ## A194908.P3924679059023827620

`A194905(A061579(n)+1)%(n+7)`
-/

namespace A194908.P3924679059023827620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A194905 (A061579 n + 1).toNat) (n + 7 : ℤ)

end

end A194908.P3924679059023827620

/-! ## A194908.P8781650079505762669

`A194905(A002024(n+1)²-n)%(n+2)`
-/

namespace A194908.P8781650079505762669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A194905 (A002024 (n + 1) ^ 2 - (n : ℤ)).toNat) (n + 2 : ℤ)

end

end A194908.P8781650079505762669

/-! ## A194908.P6032306960301580920

`∑{d}[A194905(A038722(n+1)), A000010(#)]`
-/

namespace A194908.P6032306960301580920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194905 (A038722 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A194908.P6032306960301580920

/-! ## A194908.P11073713257911928297

`A007318(C(2, n))*A194905(A038722(n+1))`
-/

namespace A194908.P11073713257911928297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A194905 (A038722 (n + 1)).toNat

end

end A194908.P11073713257911928297

/-! ## A194908.P7478953283456303362

`A000041(C(2, n+2))*A194905(A038722(n+1))`
-/

namespace A194908.P7478953283456303362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose 2 (n + 2)) * A194905 (A038722 (n + 1)).toNat

end

end A194908.P7478953283456303362

/-! ## A194908.P13354425478404701439

`A194832(A194833(A194907(A054069(A194834(n+1)))))`
-/

namespace A194908.P13354425478404701439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194832 (A194833 (A194907 (A054069 (A194834 (n + 1)).toNat).toNat).toNat).toNat

end

end A194908.P13354425478404701439

/-! ## A194908.P9964947913100405406

`A014963(12*n+6)*A194905(A038722(n+1))`
-/

namespace A194908.P9964947913100405406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (12 * n + 6) * A194905 (A038722 (n + 1)).toNat

end

end A194908.P9964947913100405406

/-!
# A194909: Rectangular array, by antidiagonals: row n gives the positions of n in the fractal sequence A194905; an interspersion.

The programs for A194909, there is no canonical definition to state claims against.
-/

/-! ## A194909.P18063507232744237077

`∑[char[∑[n]]]²+1-A194906(n+1)`
-/

namespace A194909.P18063507232744237077
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) + (1 - A194906 (n + 1))

end

end A194909.P18063507232744237077

/-! ## A194909.P8651917456647944177

`A038722(A194906(n+1))`
-/

namespace A194909.P8651917456647944177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038722 (A194906 (n + 1)).toNat

end

end A194909.P8651917456647944177

/-! ## A194909.P9432368427657242132

`A265129(n+1)-A194906(n+1)`
-/

namespace A194909.P9432368427657242132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265129 (n + 1) - A194906 (n + 1)

end

end A194909.P9432368427657242132

/-! ## A194909.P5084922914597261644

`A093995(n+1)+1-A194906(n+1)`
-/

namespace A194909.P5084922914597261644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093995 (n + 1) + 1 - A194906 (n + 1)

end

end A194909.P5084922914597261644

/-! ## A194909.P8716848077030211683

`A002522(A002024(n+1))-A194906(n+1)`
-/

namespace A194909.P8716848077030211683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002522 (A002024 (n + 1)).toNat - A194906 (n + 1)

end

end A194909.P8716848077030211683

/-! ## A194909.P13750150111952268299

`A061579(A194906(n+1)-1)+1`
-/

namespace A194909.P13750150111952268299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061579 (A194906 (n + 1) - 1).toNat + 1

end

end A194909.P13750150111952268299

/-! ## A194909.P9484323062037340053

`A057944(n)+A004736(A194906(n+1))`
-/

namespace A194909.P9484323062037340053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057944 n + A004736 (A194906 (n + 1)).toNat

end

end A194909.P9484323062037340053

/-! ## A194909.P835529544047754707

`A024000(A194906(n+1))+∑[A198954(n)]`
-/

namespace A194909.P835529544047754707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198954 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024000 (A194906 (n + 1)).toNat + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194909.P835529544047754707

/-! ## A194909.P18197458911847634826

`A093995(n+1)+A024000(A194906(n+1))`
-/

namespace A194909.P18197458911847634826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093995 (n + 1) + A024000 (A194906 (n + 1)).toNat

end

end A194909.P18197458911847634826

/-! ## A194909.P12288087166529567499

`A194842(A194840(A194906(A194840(A194839(n+1)))))`
-/

namespace A194909.P12288087166529567499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194842 (A194840 (A194906 (A194840 (A194839 (n + 1)).toNat).toNat).toNat).toNat

end

end A194909.P12288087166529567499

/-!
# A194910: Inverse permutation of A194909; every positive integer occurs exactly once.

The programs for A194910, there is no canonical definition to state claims against.
-/

/-! ## A194910.P6808091036595797458

`A194908(n+1)+C(comp[∑[n-1]]-n, 2)`
-/

namespace A194910.P6808091036595797458
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194908 (n + 1) + (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)).toNat 2 : ℤ)

end

end A194910.P6808091036595797458

/-! ## A194910.P14938060895735618933

`A194908(n+1)+A057944(n)`
-/

namespace A194910.P14938060895735618933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194908 (n + 1) + A057944 n

end

end A194910.P14938060895735618933

/-! ## A194910.P16147219247938040053

`A194908(n+1)+n-A002262(n)`
-/

namespace A194910.P16147219247938040053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194908 (n + 1) + ((n : ℤ) - A002262 n)

end

end A194910.P16147219247938040053

/-! ## A194910.P8686635930808290701

`A194908(n+1)+A061885(n)-n`
-/

namespace A194910.P8686635930808290701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194908 (n + 1) + (A061885 n - (n : ℤ))

end

end A194910.P8686635930808290701

/-! ## A194910.P12017777510101450504

`A194908(n+1)+n+1-A002260(n+1)`
-/

namespace A194910.P12017777510101450504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194908 (n + 1) + ((n + 1 : ℤ) - A002260 (n + 1))

end

end A194910.P12017777510101450504

/-! ## A194910.P16442275394815543901

`A194908(n+1)+A000217(A003056(n))`
-/

namespace A194910.P16442275394815543901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194908 (n + 1) + A000217 (A003056 n).toNat

end

end A194910.P16442275394815543901

/-! ## A194910.P16185410539003080553

`A054068(n+1)+A194908(n+1)-A054065(n+1)`
-/

namespace A194910.P16185410539003080553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054068 (n + 1) + (A194908 (n + 1) - A054065 (n + 1))

end

end A194910.P16185410539003080553

/-! ## A194910.P13086498550626885373

`A194834(n+1)+A194908(n+1)-A194832(n+1)`
-/

namespace A194910.P13086498550626885373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194834 (n + 1) + (A194908 (n + 1) - A194832 (n + 1))

end

end A194910.P13086498550626885373

/-! ## A194910.P15953179374850615064

`A194905(∑[char[∑[n]]]²-n)+C(∑[char[∑[n]]], 2)`
-/

namespace A194910.P15953179374850615064
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f6 j

open Classical in
def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f5 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194905 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n) + (Nat.choose (∑ j ∈ Finset.range (n + 1), f4 j) 2 : ℤ)

end

end A194910.P15953179374850615064

/-! ## A194910.P4756116753770469719

`A194907(A038722(n+1))`
-/

namespace A194910.P4756116753770469719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194907 (A038722 (n + 1)).toNat

end

end A194910.P4756116753770469719

/-! ## A194910.P16193624200884360547

`A194907(A054069(A194834(n+1)))`
-/

namespace A194910.P16193624200884360547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194907 (A054069 (A194834 (n + 1)).toNat).toNat

end

end A194910.P16193624200884360547

/-! ## A194910.P11365008592707290695

`A194907(A054077(A194837(n+1)))`
-/

namespace A194910.P11365008592707290695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194907 (A054077 (A194837 (n + 1)).toNat).toNat

end

end A194910.P11365008592707290695

/-! ## A194910.P7279448020758586682

`A194907(A194909(A194907(n+1)))`
-/

namespace A194910.P7279448020758586682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194907 (A194909 (A194907 (n + 1)).toNat).toNat

end

end A194910.P7279448020758586682

/-! ## A194910.P5791997292711250280

`A194905(A038722(n+1))+A057944(n)`
-/

namespace A194910.P5791997292711250280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194905 (A038722 (n + 1)).toNat + A057944 n

end

end A194910.P5791997292711250280

/-!
# A194911: Triangular array (and fractal sequence): row n is the permutation of (1,2,...,n) obtained from the increasing ordering of fractional parts {r}, {2r}, ..., {nr}, where r=2^(1/3).

The programs for A194911, there is no canonical definition to state claims against.
-/

/-! ## A194911.P4530741369972240825

`A002260(A194913(n+1))`
-/

namespace A194911.P4530741369972240825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A194913 (n + 1)).toNat

end

end A194911.P4530741369972240825

/-! ## A194911.P14424883292940253769

`A194913(n+1)-A057944(n)`
-/

namespace A194911.P14424883292940253769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194913 (n + 1) - A057944 n

end

end A194911.P14424883292940253769

/-! ## A194911.P16655709819461418471

`A194832(n+1)+A194913(n+1)-A194834(n+1)`
-/

namespace A194911.P16655709819461418471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194832 (n + 1) + (A194913 (n + 1) - A194834 (n + 1))

end

end A194911.P16655709819461418471

/-! ## A194911.P14698938990491148634

`A194905(n+1)+A194913(n+1)-A194907(n+1)`
-/

namespace A194911.P14698938990491148634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194905 (n + 1) + (A194913 (n + 1) - A194907 (n + 1))

end

end A194911.P14698938990491148634

/-! ## A194911.P11608199472694858496

`A194905(A194906(A194913(A194907(A194906(n+1)))))`
-/

namespace A194911.P11608199472694858496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194905 (A194906 (A194913 (A194907 (A194906 (n + 1)).toNat).toNat).toNat).toNat

end

end A194911.P11608199472694858496

/-!
# A194913: Inverse permutation of A194912; every positive integer occurs exactly once.

The programs for A194913, there is no canonical definition to state claims against.
-/

/-! ## A194913.P15643720421384001219

`A194911(n+1)+A057944(n)`
-/

namespace A194913.P15643720421384001219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194911 (n + 1) + A057944 n

end

end A194913.P15643720421384001219

/-! ## A194913.P3336559981589867864

`A194911(n+1)+A000217(A003056(n))`
-/

namespace A194913.P3336559981589867864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194911 (n + 1) + A000217 (A003056 n).toNat

end

end A194913.P3336559981589867864

/-! ## A194913.P17033997895078393349

`A194834(n+1)+A194911(n+1)-A194832(n+1)`
-/

namespace A194913.P17033997895078393349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194834 (n + 1) + (A194911 (n + 1) - A194832 (n + 1))

end

end A194913.P17033997895078393349

/-!
# A194914: Fractalization of (1+[n/sqrt(8)]), where [ ]=floor.

The programs for A194914, there is no canonical definition to state claims against.
-/

/-! ## A194914.P14545222420940040624

`A194961(n+1)+Δ[A008611(A194961(n+1))]`
-/

namespace A194914.P14545222420940040624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (A194961 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194961 (n + 1) + (f1 (n + 1) - f1 n)

end

end A194914.P14545222420940040624

/-! ## A194914.P12153666285701200481

`A195082(A099375(n)+2+n)-1`
-/

namespace A194914.P12153666285701200481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195082 (A099375 n + 2 + (n : ℤ)).toNat - 1

end

end A194914.P12153666285701200481

/-! ## A194914.P11805050824608077182

`A195082(A061579(comp[∑[n-1]])+1)-1`
-/

namespace A194914.P11805050824608077182
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195082 (A061579 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n) + 1).toNat - 1

end

end A194914.P11805050824608077182

/-! ## A194914.P2940232861346866298

`A195082(A038722(n+1)+comp[∑[n]]-n)-1`
-/

namespace A194914.P2940232861346866298
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195082 (A038722 (n + 1) + ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ))).toNat - 1

end

end A194914.P2940232861346866298

/-! ## A194914.P4626833982938426339

`(A195082(A099375(n)+2+n)+A005408(n))%(2*(n+1))`
-/

namespace A194914.P4626833982938426339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A195082 (A099375 n + 2 + (n : ℤ)).toNat + A005408 n) (2 * (n + 1) : ℤ)

end

end A194914.P4626833982938426339

/-! ## A194914.P4961762076902790358

`A280193(A070179(n+1))+A195082(A099375(n)+2+n)`
-/

namespace A194914.P4961762076902790358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280193 (A070179 (n + 1)).toNat + A195082 (A099375 n + 2 + (n : ℤ)).toNat

end

end A194914.P4961762076902790358

/-! ## A194914.P17679437929616899858

`A002260(A194916(n+1))`
-/

namespace A194914.P17679437929616899858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A194916 (n + 1)).toNat

end

end A194914.P17679437929616899858

/-! ## A194914.P6621587065065910909

`A194916(n+1)-A057944(n)`
-/

namespace A194914.P6621587065065910909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194916 (n + 1) - A057944 n

end

end A194914.P6621587065065910909

/-!
# A194915: Interspersion fractally induced by A194990, a rectangular array, by antidiagonals.

The programs for A194915, there is no canonical definition to state claims against.
-/

/-! ## A194915.P3868116989331725060

`A194918(A194916(A194918(n+1)))`
-/

namespace A194915.P3868116989331725060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194918 (A194916 (A194918 (n + 1)).toNat).toNat

end

end A194915.P3868116989331725060

/-! ## A194915.P6452377805560690055

`A194918(C(A031285(n), n))`
-/

namespace A194915.P6452377805560690055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194918 (Nat.choose (A031285 n).toNat n)

end

end A194915.P6452377805560690055

/-! ## A194915.P11098441147929717999

`A194918(n+1)%A141213(n)²`
-/

namespace A194915.P11098441147929717999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A194918 (n + 1)) (A141213 n ^ 2)

end

end A194915.P11098441147929717999

/-! ## A194915.P8196115442846638244

`gcd(A103517(n)!, A194918(n+1))`
-/

namespace A194915.P8196115442846638244
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (Nat.factorial (A103517 n).toNat : ℤ) (A194918 (n + 1))

end

end A194915.P8196115442846638244

/-! ## A194915.P2682096617376737905

`and(A117060(n+2), A194918(n+1))`
-/

namespace A194915.P2682096617376737905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A117060 (n + 2)) (A194918 (n + 1))

end

end A194915.P2682096617376737905

/-!
# A194916: Inverse permutation of A194915; every positive integer occurs exactly once.

The programs for A194916, there is no canonical definition to state claims against.
-/

/-! ## A194916.P10985636234965216948

`A194914(n+1)+A057944(n)`
-/

namespace A194916.P10985636234965216948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194914 (n + 1) + A057944 n

end

end A194916.P10985636234965216948

/-! ## A194916.P7310451909528697210

`A194914(n+1)+n-A002262(n)`
-/

namespace A194916.P7310451909528697210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194914 (n + 1) + ((n : ℤ) - A002262 n)

end

end A194916.P7310451909528697210

/-! ## A194916.P12209940522551045525

`A194914(n+1)+n-log2(A059268(n))`
-/

namespace A194916.P12209940522551045525
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A194914 (n + 1) : ℝ) + ((n : ℝ) - Real.logb 2 (A059268 n : ℝ))

end

end A194916.P12209940522551045525

/-! ## A194916.P100668992479045771

`A194914(n+1)+C(A002024(n+1), 2)`
-/

namespace A194916.P100668992479045771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194914 (n + 1) + (Nat.choose (A002024 (n + 1)).toNat 2 : ℤ)

end

end A194916.P100668992479045771

/-! ## A194916.P1753620022167909682

`1-A002260(n+1)+A194914(n+1)+n`
-/

namespace A194916.P1753620022167909682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A002260 (n + 1) + (A194914 (n + 1) + (n : ℤ))

end

end A194916.P1753620022167909682

/-! ## A194916.P15550433940533327246

`A194914(n+1)+A161680(round(sqrt(2*(n+1))))`
-/

namespace A194916.P15550433940533327246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194914 (n + 1) + A161680 (SequenceMachineLib.roundAway (Real.sqrt (2 * (n + 1) : ℝ))).toNat

end

end A194916.P15550433940533327246

/-! ## A194916.P13180747350401883889

`A194914(n+1)+A000217(A003056(n))`
-/

namespace A194916.P13180747350401883889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194914 (n + 1) + A000217 (A003056 n).toNat

end

end A194916.P13180747350401883889

/-! ## A194916.P11415886661665112732

`A194914(n+1)+A001971(A131507(n))`
-/

namespace A194916.P11415886661665112732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194914 (n + 1) + A001971 (A131507 n).toNat

end

end A194916.P11415886661665112732

/-! ## A194916.P3399983470815177451

`A194963(n+1)+Δ[A008611(A194961(n+1))]`
-/

namespace A194916.P3399983470815177451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (A194961 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194963 (n + 1) + (f1 (n + 1) - f1 n)

end

end A194916.P3399983470815177451

/-! ## A194916.P2101949829467640247

`1-A194914(A194915(n+1))+A194914(n+1)+n`
-/

namespace A194916.P2101949829467640247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A194914 (A194915 (n + 1)).toNat + (A194914 (n + 1) + (n : ℤ))

end

end A194916.P2101949829467640247

/-!
# A194917: Fractalization of (n-[nr-n]), where [ ]=floor and r=(1+sqrt(5))/2 (the golden ratio).

The programs for A194917, there is no canonical definition to state claims against.
-/

/-! ## A194917.P17907818146947676892

`A195073(n+1)+Δ[A017841(A195073(n+1))]`
-/

namespace A194917.P17907818146947676892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017841 (A195073 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195073 (n + 1) + (f1 (n + 1) - f1 n)

end

end A194917.P17907818146947676892

/-! ## A194917.P3942287056600374742

`A194968(round(sqrt(A285402(n+1)-1))²-n)`
-/

namespace A194917.P3942287056600374742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194968 (SequenceMachineLib.roundAway (Real.sqrt (A285402 (n + 1) - 1 : ℝ)) ^ 2 - (n : ℤ)).toNat

end

end A194917.P3942287056600374742

/-! ## A194917.P10666874179652476743

`A194968(∑[char[∑[n]]]²-n)`
-/

namespace A194917.P10666874179652476743
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194968 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n)

end

end A194917.P10666874179652476743

/-! ## A194917.P9930615924973400066

`A194968(round(sqrt(Δ[n²]))²-n)%14`
-/

namespace A194917.P9930615924973400066
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A194968 (SequenceMachineLib.roundAway (Real.sqrt ((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℝ)) ^ 2 - (n : ℤ)).toNat) 14

end

end A194917.P9930615924973400066

/-! ## A194917.P5871164183138974454

`and(31, A194968(A038722(n+1)))`
-/

namespace A194917.P5871164183138974454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 31 (A194968 (A038722 (n + 1)).toNat)

end

end A194917.P5871164183138974454

/-! ## A194917.P7119671870539444114

`A194968(A038722(n+1))^A178334(n)`
-/

namespace A194917.P7119671870539444114
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A194968 (A038722 (n + 1)).toNat : ℚ) ^ (A178334 n : ℤ)

end

end A194917.P7119671870539444114

/-! ## A194917.P10869047535009218185

`gcd(A000038(n), A194968(A038722(n+1)))`
-/

namespace A194917.P10869047535009218185
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A194968 (A038722 (n + 1)).toNat)

end

end A194917.P10869047535009218185

/-! ## A194917.P2314905911018638374

`lcm(A033999(n), A194968(A038722(n+1)))`
-/

namespace A194917.P2314905911018638374
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A194968 (A038722 (n + 1)).toNat)

end

end A194917.P2314905911018638374

/-! ## A194917.P8735754123859295793

`or(A000007(n), A194968(A038722(n+1)))`
-/

namespace A194917.P8735754123859295793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A194968 (A038722 (n + 1)).toNat)

end

end A194917.P8735754123859295793

/-! ## A194917.P13951659037251497322

`∑{d}[A194968(A038722(n+1)), A000010(#)]`
-/

namespace A194917.P13951659037251497322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194968 (A038722 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A194917.P13951659037251497322

/-!
# A194918: Interspersion fractally induced by A189663, a rectangular array, by antidiagonals.

The programs for A194918, there is no canonical definition to state claims against.
-/

/-! ## A194918.P11080836067641478258

`∑[char[∑[n]]]²+1-A194969(n+1)`
-/

namespace A194918.P11080836067641478258
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) + (1 - A194969 (n + 1))

end

end A194918.P11080836067641478258

/-! ## A194918.P13625095706095312201

`A038722(A194969(n+1))`
-/

namespace A194918.P13625095706095312201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038722 (A194969 (n + 1)).toNat

end

end A194918.P13625095706095312201

/-! ## A194918.P15163685784188743006

`A061579(A194969(n+1)-1)+1`
-/

namespace A194918.P15163685784188743006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061579 (A194969 (n + 1) - 1).toNat + 1

end

end A194918.P15163685784188743006

/-! ## A194918.P1076214233910410221

`A265129(n+1)-A194969(n+1)`
-/

namespace A194918.P1076214233910410221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265129 (n + 1) - A194969 (n + 1)

end

end A194918.P1076214233910410221

/-! ## A194918.P16622471527181577758

`A093995(n+1)+1-A194969(n+1)`
-/

namespace A194918.P16622471527181577758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093995 (n + 1) + 1 - A194969 (n + 1)

end

end A194918.P16622471527181577758

/-! ## A194918.P5629513170846694131

`A057944(n)+A004736(A194969(n+1))`
-/

namespace A194918.P5629513170846694131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057944 n + A004736 (A194969 (n + 1)).toNat

end

end A194918.P5629513170846694131

/-! ## A194918.P1723169818673662495

`A093995(n+1)-A023443(A194969(n+1))`
-/

namespace A194918.P1723169818673662495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093995 (n + 1) - A023443 (A194969 (n + 1)).toNat

end

end A194918.P1723169818673662495

/-! ## A194918.P18132828639741246598

`A127739(n+1)-A025668(A194969(n+1))`
-/

namespace A194918.P18132828639741246598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127739 (n + 1) - A025668 (A194969 (n + 1)).toNat

end

end A194918.P18132828639741246598

/-! ## A194918.P13227814433594556814

`A004736(A194969(n+1))+A000217(A003056(n))`
-/

namespace A194918.P13227814433594556814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (A194969 (n + 1)).toNat + A000217 (A003056 n).toNat

end

end A194918.P13227814433594556814

/-! ## A194918.P8573646896377642410

`A194915(A194919(A194915(n+1)))`
-/

namespace A194918.P8573646896377642410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194915 (A194919 (A194915 (n + 1)).toNat).toNat

end

end A194918.P8573646896377642410

/-!
# A194919: Inverse permutation of A194918; every positive integer occurs exactly once.

The programs for A194919, there is no canonical definition to state claims against.
-/

/-! ## A194919.P11371495912292392016

`A194917(n+1)+C(∑[char[∑[n]]], 2)`
-/

namespace A194919.P11371495912292392016
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194917 (n + 1) + (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ)

end

end A194919.P11371495912292392016

/-! ## A194919.P18310204114958423981

`A194917(n+1)+A057944(n)`
-/

namespace A194919.P18310204114958423981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194917 (n + 1) + A057944 n

end

end A194919.P18310204114958423981

/-! ## A194919.P402135343510815925

`A194917(n+1)+n-A002262(n)`
-/

namespace A194919.P402135343510815925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194917 (n + 1) + ((n : ℤ) - A002262 n)

end

end A194919.P402135343510815925

/-! ## A194919.P4633306823025559230

`A194917(n+1)+n+1-A002260(n+1)`
-/

namespace A194919.P4633306823025559230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194917 (n + 1) + ((n + 1 : ℤ) - A002260 (n + 1))

end

end A194919.P4633306823025559230

/-! ## A194919.P9280996295962768712

`A194917(n+1)+A161680(round(sqrt(2*(n+1))))`
-/

namespace A194919.P9280996295962768712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194917 (n + 1) + A161680 (SequenceMachineLib.roundAway (Real.sqrt (2 * (n + 1) : ℝ))).toNat

end

end A194919.P9280996295962768712

/-! ## A194919.P12045810927133865445

`A194968(A278818(n))+A057944(n)`
-/

namespace A194919.P12045810927133865445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194968 (A278818 n).toNat + A057944 n

end

end A194919.P12045810927133865445

/-! ## A194919.P6876666083134728153

`A194917(n+1)+A000217(A003056(n))`
-/

namespace A194919.P6876666083134728153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194917 (n + 1) + A000217 (A003056 n).toNat

end

end A194919.P6876666083134728153

/-! ## A194919.P8563813787263027159

`A194968(A038722(n+1))+A057944(n)`
-/

namespace A194919.P8563813787263027159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194968 (A038722 (n + 1)).toNat + A057944 n

end

end A194919.P8563813787263027159

/-! ## A194919.P9968428485749231639

`A194916(n+1)+A194917(n+1)-A194914(n+1)`
-/

namespace A194919.P9968428485749231639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194916 (n + 1) + (A194917 (n + 1) - A194914 (n + 1))

end

end A194919.P9968428485749231639

/-! ## A194919.P1843275590827033856

`A194917(n+1)+A194978(n+1)-A194976(n+1)`
-/

namespace A194919.P1843275590827033856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194917 (n + 1) + (A194978 (n + 1) - A194976 (n + 1))

end

end A194919.P1843275590827033856

/-!
# A194920: a(n) = n - floor(n/sqrt(2)).

The programs for A194920, the canonical program `A194920.P12014009252358147368` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A194920 has offset 1).

The definition of A194920 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A194920.P2750463308295581047

`ceil((n+1)/(sqrt(2)+2))`
-/

namespace A194920.P2750463308295581047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 1 : ℝ) / (Real.sqrt (2 : ℝ) + 2)⌉

end

end A194920.P2750463308295581047

namespace A194920

/-- `ceil((n+1)/(sqrt(2)+2))` -/
def P2750463308295581047.Spec : Prop :=
  ∀ n, P2750463308295581047.a n = A194920 (n + 1)

end A194920

/-! ## A194920.P12014009252358147368

`A183138(n+1)+1`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A194920

/-- `A183138(n+1)+1` -/
def P12014009252358147368.Spec : Prop :=
  ∀ n, P12014009252358147368.a n = A194920 (n + 1)

theorem P12014009252358147368.correct : P12014009252358147368.Spec := by
  intro n
  simp only [A194920, Nat.add_sub_cancel]

end A194920

/-! ## A194920.P3821824142196426353

`A187328(n+1)-n`
-/

namespace A194920.P3821824142196426353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187328 (n + 1) - (n : ℤ)

end

end A194920.P3821824142196426353

namespace A194920

/-- `A187328(n+1)-n` -/
def P3821824142196426353.Spec : Prop :=
  ∀ n, P3821824142196426353.a n = A194920 (n + 1)

end A194920

/-! ## A194920.P3220343709082607590

`∑[1-Δ[A049472(n)]]`
-/

namespace A194920.P3220343709082607590
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049472 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194920.P3220343709082607590

namespace A194920

/-- `∑[1-Δ[A049472(n)]]` -/
def P3220343709082607590.Spec : Prop :=
  ∀ n, P3220343709082607590.a n = A194920 (n + 1)

end A194920

/-! ## A194920.P9244384795328173163

`∑[Δ[A195128(n)]-1]`
-/

namespace A194920.P9244384795328173163
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195128 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194920.P9244384795328173163

namespace A194920

/-- `∑[Δ[A195128(n)]-1]` -/
def P9244384795328173163.Spec : Prop :=
  ∀ n, P9244384795328173163.a n = A194920 (n + 1)

end A194920

/-! ## A194920.P9718839498878577289

`∑[1-A188295(n+1)]`
-/

namespace A194920.P9718839498878577289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A188295 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194920.P9718839498878577289

namespace A194920

/-- `∑[1-A188295(n+1)]` -/
def P9718839498878577289.Spec : Prop :=
  ∀ n, P9718839498878577289.a n = A194920 (n + 1)

end A194920

/-! ## A194920.P4570665210292998861

`∑[3-A276869(n+1)]`
-/

namespace A194920.P4570665210292998861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - A276869 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194920.P4570665210292998861

namespace A194920

/-- `∑[3-A276869(n+1)]` -/
def P4570665210292998861.Spec : Prop :=
  ∀ n, P4570665210292998861.a n = A194920 (n + 1)

end A194920

/-! ## A194920.P13385259306519637800

`∑[A036694(n+1)%2]`
-/

namespace A194920.P13385259306519637800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A036694 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194920.P13385259306519637800

namespace A194920

/-- `∑[A036694(n+1)%2]` -/
def P13385259306519637800.Spec : Prop :=
  ∀ n, P13385259306519637800.a n = A194920 (n + 1)

end A194920

/-! ## A194920.P16013133153642018828

`floor(sqrt(∑[A195177(n+1)]))`
-/

namespace A194920.P16013133153642018828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195177 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A194920.P16013133153642018828

namespace A194920

/-- `floor(sqrt(∑[A195177(n+1)]))` -/
def P16013133153642018828.Spec : Prop :=
  ∀ n, P16013133153642018828.a n = A194920 (n + 1)

end A194920

/-! ## A194920.P16346465693054643334

`1-A049472(n+1)+n`
-/

namespace A194920.P16346465693054643334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A049472 (n + 1) + (n : ℤ)

end

end A194920.P16346465693054643334

namespace A194920

/-- `1-A049472(n+1)+n` -/
def P16346465693054643334.Spec : Prop :=
  ∀ n, P16346465693054643334.a n = A194920 (n + 1)

end A194920

/-! ## A194920.P17381972621259993057

`A195128(n+1)-(n+1)`
-/

namespace A194920.P17381972621259993057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195128 (n + 1) - (n + 1 : ℤ)

end

end A194920.P17381972621259993057

namespace A194920

/-- `A195128(n+1)-(n+1)` -/
def P17381972621259993057.Spec : Prop :=
  ∀ n, P17381972621259993057.a n = A194920 (n + 1)

end A194920

/-! ## A194920.P13723222908112618192

`2-A049474(n+1)+n`
-/

namespace A194920.P13723222908112618192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A049474 (n + 1) + (n : ℤ)

end

end A194920.P13723222908112618192

namespace A194920

/-- `2-A049474(n+1)+n` -/
def P13723222908112618192.Spec : Prop :=
  ∀ n, P13723222908112618192.a n = A194920 (n + 1)

end A194920

/-! ## A194920.P4394373554859752401

`A171588(n)+a(n-1)` with `a(0)=1`
-/

namespace A194920.P4394373554859752401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A171588 n + a (n - 1)

end

end A194920.P4394373554859752401

namespace A194920

/-- `A171588(n)+a(n-1)` -/
def P4394373554859752401.Spec : Prop :=
  ∀ n, P4394373554859752401.a n = A194920 (n + 1)

end A194920

/-! ## A194920.P18217725321408230996

`∑[char[A001952(n+1)]]+1`
-/

namespace A194920.P18217725321408230996
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001952 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A194920.P18217725321408230996

namespace A194920

/-- `∑[char[A001952(n+1)]]+1` -/
def P18217725321408230996.Spec : Prop :=
  ∀ n, (P18217725321408230996.a n : ℤ) = A194920 (n + 1)

end A194920

/-! ## A194920.P1839892963254336168

`∑[1-char[A001951(n+1)]]`
-/

namespace A194920.P1839892963254336168
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001951 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194920.P1839892963254336168

namespace A194920

/-- `∑[1-char[A001951(n+1)]]` -/
def P1839892963254336168.Spec : Prop :=
  ∀ n, P1839892963254336168.a n = A194920 (n + 1)

end A194920

/-! ## A194920.P7120711357183768134

`2*(n+1)-A003152(n+1)`
-/

namespace A194920.P7120711357183768134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) - A003152 (n + 1)

end

end A194920.P7120711357183768134

namespace A194920

/-- `2*(n+1)-A003152(n+1)` -/
def P7120711357183768134.Spec : Prop :=
  ∀ n, P7120711357183768134.a n = A194920 (n + 1)

end A194920

/-! ## A194920.P12001370866422323139

`3*(n+1)-A182769(n+1)`
-/

namespace A194920.P12001370866422323139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * (n + 1) : ℤ) - A182769 (n + 1)

end

end A194920.P12001370866422323139

namespace A194920

/-- `3*(n+1)-A182769(n+1)` -/
def P12001370866422323139.Spec : Prop :=
  ∀ n, P12001370866422323139.a n = A194920 (n + 1)

end A194920

/-! ## A194920.P1714426062145651184

`2*n+3-A080755(n+1)`
-/

namespace A194920.P1714426062145651184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 3 : ℤ) - A080755 (n + 1)

end

end A194920.P1714426062145651184

namespace A194920

/-- `2*n+3-A080755(n+1)` -/
def P1714426062145651184.Spec : Prop :=
  ∀ n, P1714426062145651184.a n = A194920 (n + 1)

end A194920

/-! ## A194920.P1980021870976537137

`n+2-A099188(n+1)/2`
-/

namespace A194920.P1980021870976537137
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) - (A099188 (n + 1) : ℚ) / 2

end

end A194920.P1980021870976537137

namespace A194920

/-- `n+2-A099188(n+1)/2` -/
def P1980021870976537137.Spec : Prop :=
  ∀ n, P1980021870976537137.a n = (A194920 (n + 1) : ℚ)

end A194920

/-!
# A194921: Fractalization of (n - [n/sqrt(2)]), where [ ]=floor.

The programs for A194921, there is no canonical definition to state claims against.
-/

/-! ## A194921.P8965902405655126928

`A194976(A278818(n))`
-/

namespace A194921.P8965902405655126928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194976 (A278818 n).toNat

end

end A194921.P8965902405655126928

/-! ## A194921.P16986786200481727703

`A194976(A038722(n+1))`
-/

namespace A194921.P16986786200481727703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194976 (A038722 (n + 1)).toNat

end

end A194921.P16986786200481727703

/-! ## A194921.P14638514031939563994

`A194976(A061579(n)+1)`
-/

namespace A194921.P14638514031939563994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194976 (A061579 n + 1).toNat

end

end A194921.P14638514031939563994

/-! ## A194921.P2803024246759499976

`A002260(A195071(n+1))`
-/

namespace A194921.P2803024246759499976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A195071 (n + 1)).toNat

end

end A194921.P2803024246759499976

/-! ## A194921.P7716820631880065332

`A195071(n+1)-A057944(n)`
-/

namespace A194921.P7716820631880065332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195071 (n + 1) - A057944 n

end

end A194921.P7716820631880065332

/-! ## A194921.P9391675371735430401

`A194961(n+1)+A195071(n+1)-A194963(n+1)`
-/

namespace A194921.P9391675371735430401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194961 (n + 1) + (A195071 (n + 1) - A194963 (n + 1))

end

end A194921.P9391675371735430401

/-! ## A194921.P9411708099333817566

`A195071(n+1)+A195183(n+1)-A195185(n+1)`
-/

namespace A194921.P9411708099333817566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195071 (n + 1) + (A195183 (n + 1) - A195185 (n + 1))

end

end A194921.P9411708099333817566

/-! ## A194921.P7340993174028829496

`A195183(A195184(A195071(A195185(A195184(n+1)))))`
-/

namespace A194921.P7340993174028829496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195183 (A195184 (A195071 (A195185 (A195184 (n + 1)).toNat).toNat).toNat).toNat

end

end A194921.P7340993174028829496

/-! ## A194921.P16059272471883605181

`A194983(n+1)+A195071(n+1)-A194985(n+1)`
-/

namespace A194921.P16059272471883605181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194983 (n + 1) + (A195071 (n + 1) - A194985 (n + 1))

end

end A194921.P16059272471883605181

/-! ## A194921.P2958953712391885899

`A194987(n+1)+A195071(n+1)-A194989(n+1)`
-/

namespace A194921.P2958953712391885899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194987 (n + 1) + (A195071 (n + 1) - A194989 (n + 1))

end

end A194921.P2958953712391885899

/-!
# A194922: Interspersion fractally induced by A194920, a rectangular array, by antidiagonals.

The programs for A194922, there is no canonical definition to state claims against.
-/

/-! ## A194922.P11775925615322893599

`A038722(A194977(n+1))`
-/

namespace A194922.P11775925615322893599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038722 (A194977 (n + 1)).toNat

end

end A194922.P11775925615322893599

/-! ## A194922.P4702047282260899759

`A061579(A194977(n+1)-1)+1`
-/

namespace A194922.P4702047282260899759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061579 (A194977 (n + 1) - 1).toNat + 1

end

end A194922.P4702047282260899759

/-! ## A194922.P16686138861322312011

`A265129(n+1)-A194977(n+1)`
-/

namespace A194922.P16686138861322312011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265129 (n + 1) - A194977 (n + 1)

end

end A194922.P16686138861322312011

/-! ## A194922.P4277751067039054803

`A093995(n+1)+1-A194977(n+1)`
-/

namespace A194922.P4277751067039054803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093995 (n + 1) + (1 - A194977 (n + 1))

end

end A194922.P4277751067039054803

/-! ## A194922.P11967878557560925498

`A057944(n)+A004736(A194977(n+1))`
-/

namespace A194922.P11967878557560925498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057944 n + A004736 (A194977 (n + 1)).toNat

end

end A194922.P11967878557560925498

/-! ## A194922.P2971937553861935351

`A093995(n+1)-A023443(A194977(n+1))`
-/

namespace A194922.P2971937553861935351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093995 (n + 1) - A023443 (A194977 (n + 1)).toNat

end

end A194922.P2971937553861935351

/-! ## A194922.P3818714067729980190

`A195080(A195071(A195080(n+1)))`
-/

namespace A194922.P3818714067729980190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195080 (A195071 (A195080 (n + 1)).toNat).toNat

end

end A194922.P3818714067729980190

/-! ## A194922.P4561172646402772143

`A194981(n+1)+A194988(n+1)-A194977(n+1)`
-/

namespace A194922.P4561172646402772143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194981 (n + 1) + (A194988 (n + 1) - A194977 (n + 1))

end

end A194922.P4561172646402772143

/-! ## A194922.P10560381512458934282

`A038722(A195083(n+1))%A001043(A036561(n))`
-/

namespace A194922.P10560381512458934282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A038722 (A195083 (n + 1)).toNat) (A001043 (A036561 n).toNat)

end

end A194922.P10560381512458934282

/-!
# A194923: The (finite) list of ternary abelian squarefree words.

The programs for A194923, there is no canonical definition to state claims against.
-/

/-! ## A194923.P12537811612901436092

`A060572(A002415(n+3)-ceil(or(n, n+1)/2))`
-/

namespace A194923.P12537811612901436092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060572 (A002415 (n + 3) - ⌈(Nat.lor n (n + 1) : ℚ) / 2⌉).toNat

end

end A194923.P12537811612901436092

/-! ## A194923.P4769480371385187245

`A030341(A072735(n)*A199523(n+1))`
-/

namespace A194923.P4769480371385187245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030341 (A072735 n * A199523 (n + 1)).toNat

end

end A194923.P4769480371385187245

/-! ## A194923.P5966484397282460432

`A304095(A085945(n+1)+A080862(n+1))`
-/

namespace A194923.P5966484397282460432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304095 (A085945 (n + 1) + A080862 (n + 1)).toNat

end

end A194923.P5966484397282460432

/-! ## A194923.P5262303394792407223

`A280827(A280738(n+1)+A280730(n+1))`
-/

namespace A194923.P5262303394792407223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280827 (A280738 (n + 1) + A280730 (n + 1)).toNat

end

end A194923.P5262303394792407223

/-! ## A194923.P6382231112740885897

`A361478(n)%A258091(A011782(n))`
-/

namespace A194923.P6382231112740885897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A361478 n) (A258091 (A011782 n).toNat)

end

end A194923.P6382231112740885897

/-!
# A194924: The number of set partitions of {1,2,...,n} into exactly two subsets A,B such that the greatest common divisor of |A| and |B| = 1.

The programs for A194924, there is no canonical definition to state claims against.
-/

/-! ## A194924.P13527821473024460811

`A000079(n+1)-A056189(n+2)/2`
-/

namespace A194924.P13527821473024460811
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000079 (n + 1) : ℚ) - (A056189 (n + 2) : ℚ) / 2

end

end A194924.P13527821473024460811

/-! ## A194924.P16853830507490692632

`A060546(2*(n+1))-A056189(n+2)/2`
-/

namespace A194924.P16853830507490692632
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A060546 (2 * (n + 1)) : ℚ) - (A056189 (n + 2) : ℚ) / 2

end

end A194924.P16853830507490692632

/-! ## A194924.P678671043457434633

`A056188(n+2)/2`
-/

namespace A194924.P678671043457434633
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056188 (n + 2) : ℚ) / 2

end

end A194924.P678671043457434633

/-! ## A194924.P18423389623292712226

`A280880(∑[n+2]+3)`
-/

namespace A194924.P18423389623292712226
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280880 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A194924.P18423389623292712226

/-! ## A194924.P3456841220415609603

`A280880(A340266(n+1))%A168607(n)`
-/

namespace A194924.P3456841220415609603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A280880 (A340266 (n + 1)).toNat) (A168607 n)

end

end A194924.P3456841220415609603

/-! ## A194924.P13337273975586813882

`gcd(A000038(n), A280880(A340266(n+1)))`
-/

namespace A194924.P13337273975586813882
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A280880 (A340266 (n + 1)).toNat)

end

end A194924.P13337273975586813882

/-! ## A194924.P16880364870673156674

`A280880(A340266(n+1))+A000038(n+1)`
-/

namespace A194924.P16880364870673156674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280880 (A340266 (n + 1)).toNat + A000038 (n + 1)

end

end A194924.P16880364870673156674

/-!
# A194925: Number of lower triangles of an n X n 0..2 array with no element differing from any of its horizontal or vertical neighbors by more than one.

The programs for A194925, there is no canonical definition to state claims against.
-/

/-! ## A194925.P13601898492383119399

`A194931(∑[n+2])`
-/

namespace A194925.P13601898492383119399
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194931 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A194925.P13601898492383119399

/-! ## A194925.P11971501697169617826

`record[A194931(abs(A201163(n)))]`
-/

namespace A194925.P11971501697169617826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194931 |A201163 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A194925.P11971501697169617826

/-! ## A194925.P14279897279300557849

`record[A194931(A256699(n+1))]`
-/

namespace A194925.P14279897279300557849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194931 (A256699 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A194925.P14279897279300557849

/-! ## A194925.P12861950330773432631

`A007318(C(2, n))*A194931(A000096(n+1))`
-/

namespace A194925.P12861950330773432631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A194931 (A000096 (n + 1)).toNat

end

end A194925.P12861950330773432631

/-! ## A194925.P5382405530707652903

`A001222(A000230(n))*A194931(A000096(n+1))`
-/

namespace A194925.P5382405530707652903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A000230 n).toNat * A194931 (A000096 (n + 1)).toNat

end

end A194925.P5382405530707652903

/-!
# A194926: Number of lower triangles of an n X n 0..3 array with no element differing from any of its horizontal or vertical neighbors by more than one.

The programs for A194926, there is no canonical definition to state claims against.
-/

/-! ## A194926.P16035065638638737356

`A194931(∑[n+3]+1)`
-/

namespace A194926.P16035065638638737356
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194931 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A194926.P16035065638638737356

/-!
# A194927: Number of lower triangles of an n X n 0..4 array with no element differing from any of its horizontal or vertical neighbors by more than one.

The programs for A194927, there is no canonical definition to state claims against.
-/

/-! ## A194927.P16931228086314837129

`A194931(A141214(n+1))`
-/

namespace A194927.P16931228086314837129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194931 (A141214 (n + 1)).toNat

end

end A194927.P16931228086314837129

/-! ## A194927.P12762097226438132968

`A194931(A027379(n+2))`
-/

namespace A194927.P12762097226438132968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194931 (A027379 (n + 2)).toNat

end

end A194927.P12762097226438132968

/-! ## A194927.P17211647178541086836

`A194931(A056000(n)+7)`
-/

namespace A194927.P17211647178541086836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194931 (A056000 n + 7).toNat

end

end A194927.P17211647178541086836

/-! ## A194927.P9484704457067949985

`A194931(eq[3, A193592(n)])`
-/

namespace A194927.P9484704457067949985
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194931 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A194927.P9484704457067949985

/-! ## A194927.P10630604224994877933

`A194931(eq[4, A194921(n+1)])`
-/

namespace A194927.P10630604224994877933
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194921 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194931 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A194927.P10630604224994877933

/-!
# A194928: Number of lower triangles of an n X n 0..5 array with no element differing from any of its horizontal or vertical neighbors by more than one.

The programs for A194928, there is no canonical definition to state claims against.
-/

/-! ## A194928.P8817153226622424276

`A194931(Δ[A264443(n)])`
-/

namespace A194928.P8817153226622424276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194931 (f1 (n + 1) - f1 n).toNat

end

end A194928.P8817153226622424276

/-! ## A194928.P3419781601287396051

`A194931(eq[2, A092921(n)])`
-/

namespace A194928.P3419781601287396051
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092921 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194931 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A194928.P3419781601287396051

/-! ## A194928.P8239075187162069129

`A194931(eq[4, A193592(n)])`
-/

namespace A194928.P8239075187162069129
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194931 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A194928.P8239075187162069129

/-! ## A194928.P10369676564411697008

`A194931(Δ[A023545(n+1)])`
-/

namespace A194928.P10369676564411697008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194931 (f1 (n + 1) - f1 n).toNat

end

end A194928.P10369676564411697008

/-! ## A194928.P14487234591678091715

`A194931(eq[5, A194921(n+1)])`
-/

namespace A194928.P14487234591678091715
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194921 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194931 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A194928.P14487234591678091715

/-!
# A194929: Number of lower triangles of an n X n 0..6 array with no element differing from any of its horizontal or vertical neighbors by more than one.

The programs for A194929, there is no canonical definition to state claims against.
-/

/-! ## A194929.P13800031604358816301

`A194931(eq[3, A219347(n)])`
-/

namespace A194929.P13800031604358816301
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194931 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A194929.P13800031604358816301

/-! ## A194929.P11584986116068455132

`A194931(eq[5, A193592(n)])`
-/

namespace A194929.P11584986116068455132
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194931 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A194929.P11584986116068455132

/-! ## A194929.P10097953259733227947

`A194931(eq[8, A185782(n+1)])`
-/

namespace A194929.P10097953259733227947
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194931 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A194929.P10097953259733227947

/-! ## A194929.P11809529441480960684

`A194931(Δ[Δ[A006504(n+1)]])`
-/

namespace A194929.P11809529441480960684
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006504 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194931 (f1 (n + 1) - f1 n).toNat

end

end A194929.P11809529441480960684

/-! ## A194929.P11243811876246052954

`A194931(Δ[A026054(n+3)]+1)`
-/

namespace A194929.P11243811876246052954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026054 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194931 (f1 (n + 1) - f1 n + 1).toNat

end

end A194929.P11243811876246052954

/-!
# A194930: Number of lower triangles of an n X n 0..7 array with no element differing from any of its horizontal or vertical neighbors by more than one.

The programs for A194930, there is no canonical definition to state claims against.
-/

/-! ## A194930.P6066444558989544237

`A194931(A055999(n+4))`
-/

namespace A194930.P6066444558989544237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194931 (A055999 (n + 4)).toNat

end

end A194930.P6066444558989544237

/-!
# A194933: Number of lower triangles of a 4 X 4 0..n array with no element differing from any of its horizontal or vertical neighbors by more than one.

The programs for A194933, there is no canonical definition to state claims against.
-/

/-! ## A194933.P17085075819395774169

`A194931(A055999(n)+10)`
-/

namespace A194933.P17085075819395774169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194931 (A055999 n + 10).toNat

end

end A194933.P17085075819395774169

/-!
# A194934: Number of lower triangles of a 5 X 5 0..n array with no element differing from any of its horizontal or vertical neighbors by more than one.

The programs for A194934, there is no canonical definition to state claims against.
-/

/-! ## A194934.P17319933675294414547

`A194931(A167499(n+3))`
-/

namespace A194934.P17319933675294414547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194931 (A167499 (n + 3)).toNat

end

end A194934.P17319933675294414547

/-!
# A194935: Number of lower triangles of a 6 X 6 0..n array with no element differing from any of its horizontal or vertical neighbors by more than one.

The programs for A194935, there is no canonical definition to state claims against.
-/

/-! ## A194935.P1153367741210236947

`A194931(eq[7, A131818(n+1)])`
-/

namespace A194935.P1153367741210236947
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194931 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A194935.P1153367741210236947

/-!
# A194937: G.f. satisfies: A(x) = Sum_{n>=0} x^n*A(x)^n/sf(n) where A(x) = Sum_{n>=0} a(n)*x^n/sf(n), and sf(n) = Product_{k=0..n} k! is the superfactorial of n (A000178).

The programs for A194937, there is no canonical definition to state claims against.
-/

/-! ## A194937.P6994638719527512939

`A391590(∏[n!])`
-/

namespace A194937.P6994638719527512939
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391590 (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A194937.P6994638719527512939

/-!
# A194938: Triangle read by rows: coefficients of polynomials p(x,n) defined by 1/(1-t-t^2)^x = Sum_{n=1..oo} p(x,n)*t^n/n!.

The programs for A194938, there is no canonical definition to state claims against.
-/

/-! ## A194938.P9058617024962825761

`A118759(abs(A078521(n+1)))`
-/

namespace A194938.P9058617024962825761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 |A078521 (n + 1)|.toNat

end

end A194938.P9058617024962825761

/-! ## A194938.P2468169512129285912

`A351870(abs(A078521(n+1)))`
-/

namespace A194938.P2468169512129285912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351870 |A078521 (n + 1)|.toNat

end

end A194938.P2468169512129285912

/-! ## A194938.P12591316981364302155

`A000194(A078521(n+1)²)`
-/

namespace A194938.P12591316981364302155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A078521 (n + 1) ^ 2).toNat

end

end A194938.P12591316981364302155

/-! ## A194938.P1861449687443106676

`A000196(A078521(n+1)²)`
-/

namespace A194938.P1861449687443106676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A078521 (n + 1) ^ 2).toNat

end

end A194938.P1861449687443106676

/-! ## A194938.P5664834309997495424

`A018851(A078521(n+1)²)`
-/

namespace A194938.P5664834309997495424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018851 (A078521 (n + 1) ^ 2).toNat

end

end A194938.P5664834309997495424

/-!
# A194939: Table T read by rows, where T(n, k) is the sum of the largest k primes up to and including prime(n), for 1 <= k <= n.

The programs for A194939, the canonical program `A194939.P5364823241840886690` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A194939 has offset 1).

The definition of A194939 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5050 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A194939.P8757700849371006456

`A143121(∑[char[∑[n]]]²-n)`
-/

namespace A194939.P8757700849371006456
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143121 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n)

end

end A194939.P8757700849371006456

namespace A194939

/-- `A143121(∑[char[∑[n]]]²-n)` -/
def P8757700849371006456.Spec : Prop :=
  ∀ n, P8757700849371006456.a n = A194939 (n + 1)

end A194939

/-! ## A194939.P8263884465856109021

`A143121(A038722(n+1))+xor(n+1, n+1)`
-/

namespace A194939.P8263884465856109021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143121 (A038722 (n + 1)).toNat + (Nat.xor (n + 1) (n + 1) : ℤ)

end

end A194939.P8263884465856109021

namespace A194939

/-- `A143121(A038722(n+1))+xor(n+1, n+1)` -/
def P8263884465856109021.Spec : Prop :=
  ∀ n, P8263884465856109021.a n = A194939 (n + 1)

end A194939

/-! ## A194939.P2793313085308556665

`A143121(A038722(n+1))%A017041(n)`
-/

namespace A194939.P2793313085308556665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A143121 (A038722 (n + 1)).toNat) (A017041 n)

end

end A194939.P2793313085308556665

namespace A194939

/-- `A143121(A038722(n+1))%A017041(n)` -/
def P2793313085308556665.Spec : Prop :=
  ∀ n, P2793313085308556665.a n = A194939 (n + 1)

end A194939

/-! ## A194939.P1980852706841783306

`or(A000038(n), A143121(A038722(n+1)))`
-/

namespace A194939.P1980852706841783306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000038 n) (A143121 (A038722 (n + 1)).toNat)

end

end A194939.P1980852706841783306

namespace A194939

/-- `or(A000038(n), A143121(A038722(n+1)))` -/
def P1980852706841783306.Spec : Prop :=
  ∀ n, P1980852706841783306.a n = A194939 (n + 1)

end A194939

/-! ## A194939.P10400188989669139216

`xor(A000038(n+1), A143121(A038722(n+1)))`
-/

namespace A194939.P10400188989669139216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000038 (n + 1)) (A143121 (A038722 (n + 1)).toNat)

end

end A194939.P10400188989669139216

namespace A194939

/-- `xor(A000038(n+1), A143121(A038722(n+1)))` -/
def P10400188989669139216.Spec : Prop :=
  ∀ n, P10400188989669139216.a n = A194939 (n + 1)

end A194939

/-! ## A194939.P5345056791647834476

`A227291(3*n+2)+A143121(A038722(n+1))`
-/

namespace A194939.P5345056791647834476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227291 (3 * n + 2) + A143121 (A038722 (n + 1)).toNat

end

end A194939.P5345056791647834476

namespace A194939

/-- `A227291(3*n+2)+A143121(A038722(n+1))` -/
def P5345056791647834476.Spec : Prop :=
  ∀ n, P5345056791647834476.a n = A194939 (n + 1)

end A194939

/-! ## A194939.P15846376762487744759

`A000108(C(2, n+2))*A143121(A038722(n+1))`
-/

namespace A194939.P15846376762487744759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (Nat.choose 2 (n + 2)) * A143121 (A038722 (n + 1)).toNat

end

end A194939.P15846376762487744759

namespace A194939

/-- `A000108(C(2, n+2))*A143121(A038722(n+1))` -/
def P15846376762487744759.Spec : Prop :=
  ∀ n, P15846376762487744759.a n = A194939 (n + 1)

end A194939

/-! ## A194939.P12240019912138750981

`A007318(C(2, n+2))*A143121(A038722(n+1))`
-/

namespace A194939.P12240019912138750981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 (n + 2)) * A143121 (A038722 (n + 1)).toNat

end

end A194939.P12240019912138750981

namespace A194939

/-- `A007318(C(2, n+2))*A143121(A038722(n+1))` -/
def P12240019912138750981.Spec : Prop :=
  ∀ n, P12240019912138750981.a n = A194939 (n + 1)

end A194939

/-! ## A194939.P17747269491430318014

`A143121(A038722(n+1))+A001222(gcd(n, n+1))`
-/

namespace A194939.P17747269491430318014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143121 (A038722 (n + 1)).toNat + A001222 (Nat.gcd n (n + 1))

end

end A194939.P17747269491430318014

namespace A194939

/-- `A143121(A038722(n+1))+A001222(gcd(n, n+1))` -/
def P17747269491430318014.Spec : Prop :=
  ∀ n, P17747269491430318014.a n = A194939 (n + 1)

end A194939

/-! ## A194939.P14112210357833910914

`A143121(A038722(n+1))+A000045(C(n, n+1))`
-/

namespace A194939.P14112210357833910914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143121 (A038722 (n + 1)).toNat + A000045 (Nat.choose n (n + 1))

end

end A194939.P14112210357833910914

namespace A194939

/-- `A143121(A038722(n+1))+A000045(C(n, n+1))` -/
def P14112210357833910914.Spec : Prop :=
  ∀ n, P14112210357833910914.a n = A194939 (n + 1)

end A194939

/-! ## A194939.P5364823241840886690

`A014284(A003057(n+2))-A014284(A004736(n+1))`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A194939

/-- `A014284(A003057(n+2))-A014284(A004736(n+1))` -/
def P5364823241840886690.Spec : Prop :=
  ∀ n, P5364823241840886690.a n = A194939 (n + 1)

theorem P5364823241840886690.correct : P5364823241840886690.Spec := by
  intro n
  simp only [A194939, Nat.add_sub_cancel]

end A194939

/-!
# A194942: List of seven normalized ternary Abelian squarefree words.

The programs for A194942, there is no canonical definition to state claims against.
-/

/-! ## A194942.P2594725513275754600

`A004090(A001612(n))%A265691(n+1)`
-/

namespace A194942.P2594725513275754600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004090 (A001612 n).toNat) (A265691 (n + 1))

end

end A194942.P2594725513275754600

/-! ## A194942.P881765078813922203

`A277142(A052048(n+2))`
-/

namespace A194942.P881765078813922203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277142 (A052048 (n + 2)).toNat

end

end A194942.P881765078813922203

/-! ## A194942.P4412106207533156721

`A008424(A180047(n+1))%A128007(n+1)`
-/

namespace A194942.P4412106207533156721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008424 (A180047 (n + 1)).toNat) (A128007 (n + 1))

end

end A194942.P4412106207533156721

/-! ## A194942.P5198063132110146349

`A151926(A003520(n))%A154958(n)`
-/

namespace A194942.P5198063132110146349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A151926 (A003520 n).toNat) (A154958 n)

end

end A194942.P5198063132110146349

/-! ## A194942.P2013168839196797979

`A093482(n+1)%A036452(A095667(n))`
-/

namespace A194942.P2013168839196797979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A093482 (n + 1)) (A036452 (A095667 n).toNat)

end

end A194942.P2013168839196797979

/-!
# A194943: Greatest d such that d*n+b is the least prime in the arithmetic progression k*n+b for some 0 < b < n with gcd(b, n) = 1.

The programs for A194943, there is no canonical definition to state claims against.
-/

/-! ## A194943.P9938147678799375351

`floor(A085420(n+2)/(n+2))`
-/

namespace A194943.P9938147678799375351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A085420 (n + 2) : ℚ) / (n + 2 : ℚ)⌋

end

end A194943.P9938147678799375351

/-! ## A194943.P38016464400465811

`A246277(A187829(n+3))-A316868(n)`
-/

namespace A194943.P38016464400465811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246277 (A187829 (n + 3)).toNat - A316868 n

end

end A194943.P38016464400465811

/-! ## A194943.P16215851488571183605

`A158416(n)+Δ[A246277(A077168(n)+1)]`
-/

namespace A194943.P16215851488571183605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246277 (A077168 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158416 n + (f1 (n + 1) - f1 n)

end

end A194943.P16215851488571183605

/-! ## A194943.P15919697785901029987

`A000120(A261019(n+3)+A174500(n+1))`
-/

namespace A194943.P15919697785901029987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A261019 (n + 3) + A174500 (n + 1)).toNat

end

end A194943.P15919697785901029987

/-! ## A194943.P6004105932310685396

`A246277(n+3)-A067255(A097979(n+1))`
-/

namespace A194943.P6004105932310685396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246277 (n + 3) - A067255 (A097979 (n + 1)).toNat

end

end A194943.P6004105932310685396

/-!
# A194944: Records in A034693.

The programs for A194944, there is no canonical definition to state claims against.
-/

/-! ## A194944.P7349368979148566671

`floor(A214125(n+1)+atan(n))`
-/

namespace A194944.P7349368979148566671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A214125 (n + 1) : ℝ) + Real.arctan (n : ℝ)⌋

end

end A194944.P7349368979148566671

/-! ## A194944.P10490616606992090226

`A114112(A214125(n+1))`
-/

namespace A194944.P10490616606992090226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114112 (A214125 (n + 1)).toNat

end

end A194944.P10490616606992090226

/-! ## A194944.P17936919351291062514

`A214125(n+1)+A157928(n)`
-/

namespace A194944.P17936919351291062514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214125 (n + 1) + A157928 n

end

end A194944.P17936919351291062514

/-! ## A194944.P12950829525297802479

`A214125(n+1)+A179184(n+1)`
-/

namespace A194944.P12950829525297802479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214125 (n + 1) + A179184 (n + 1)

end

end A194944.P12950829525297802479

/-! ## A194944.P8551804177305130160

`A214125(n+1)+char[A068615(n+1)]`
-/

namespace A194944.P8551804177305130160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068615 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214125 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A194944.P8551804177305130160

/-!
# A194945: Position of records in A034693.

The programs for A194945, there is no canonical definition to state claims against.
-/

/-! ## A194945.P5115159621009275591

`or(1, A214124(n+1)-A000002(n+1))`
-/

namespace A194945.P5115159621009275591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A214124 (n + 1) - A000002 (n + 1))

end

end A194945.P5115159621009275591

/-! ## A194945.P10176716425145272792

`A047980(A194944(n+1))`
-/

namespace A194945.P10176716425145272792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047980 (A194944 (n + 1)).toNat

end

end A194945.P10176716425145272792

/-! ## A194945.P3112380668543706760

`A047980(floor(A214125(n+1)+atan(n)))`
-/

namespace A194945.P3112380668543706760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047980 ⌊(A214125 (n + 1) : ℝ) + Real.arctan (n : ℝ)⌋.toNat

end

end A194945.P3112380668543706760

/-! ## A194945.P16124737770236861413

`A047980(A214125(n+1)+A157928(n))`
-/

namespace A194945.P16124737770236861413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047980 (A214125 (n + 1) + A157928 n).toNat

end

end A194945.P16124737770236861413

/-! ## A194945.P1162079230421586094

`A047980(record[A034693(n+1)])`
-/

namespace A194945.P1162079230421586094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034693 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047980 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A194945.P1162079230421586094

/-!
# A194947: Absolute values of differences of A036274.

The programs for A194947, there is no canonical definition to state claims against.
-/

/-! ## A194947.P12940256348164945292

`abs(Δ[A036274(n)])`
-/

namespace A194947.P12940256348164945292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036274 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A194947.P12940256348164945292

/-! ## A194947.P8016807090498419671

`abs(Δ[abs(Δ[A036273(n)])])`
-/

namespace A194947.P8016807090498419671
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036273 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A194947.P8016807090498419671

/-! ## A194947.P6569753831709166065

`A036261(A052905(n+3))`
-/

namespace A194947.P6569753831709166065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036261 (A052905 (n + 3)).toNat

end

end A194947.P6569753831709166065

/-! ## A194947.P15753832480225204191

`A036261(A056119(n)+16)`
-/

namespace A194947.P15753832480225204191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036261 (A056119 n + 16).toNat

end

end A194947.P15753832480225204191

/-! ## A194947.P4322915003942752270

`A000194(Δ[A036274(n)]²)`
-/

namespace A194947.P4322915003942752270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036274 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 ((f1 (n + 1) - f1 n) ^ 2).toNat

end

end A194947.P4322915003942752270

/-! ## A194947.P5508662849602184030

`A000196(Δ[A036274(n)]²)`
-/

namespace A194947.P5508662849602184030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036274 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 ((f1 (n + 1) - f1 n) ^ 2).toNat

end

end A194947.P5508662849602184030

/-! ## A194947.P10185666239652146619

`gcd(Δ[A036274(n)], A000038(n))`
-/

namespace A194947.P10185666239652146619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036274 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (f1 (n + 1) - f1 n) (A000038 n)

end

end A194947.P10185666239652146619

/-! ## A194947.P11280839186345230156

`∑{d}[Δ[A036274(n)], A000010(#)]`
-/

namespace A194947.P11280839186345230156
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036274 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A194947.P11280839186345230156

/-! ## A194947.P12889764436070028293

`A036261(A000096(n+5)-4)`
-/

namespace A194947.P12889764436070028293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036261 (A000096 (n + 5) - 4).toNat

end

end A194947.P12889764436070028293

/-! ## A194947.P2727115454502051641

`A036261(A000124(n+6)-6)`
-/

namespace A194947.P2727115454502051641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036261 (A000124 (n + 6) - 6).toNat

end

end A194947.P2727115454502051641

/-!
# A194948: Numbers k such that sum of aliquot divisors of k, sigma(k) - k, is a cube.

The programs for A194948, there is no canonical definition to state claims against.
-/

/-! ## A194948.P12288366761301229776

`∪[A000040(n+1), A048698(n+1)]`
-/

namespace A194948.P12288366761301229776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048698 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A194948.P12288366761301229776

/-! ## A194948.P10585194136171682403

`∪[A008578(n+1), A048698(n+1)]`
-/

namespace A194948.P10585194136171682403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048698 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A194948.P10585194136171682403

/-! ## A194948.P2311747523960471760

`record[gcd(∏{p}[n+1, #], A095168(n+1))]`
-/

namespace A194948.P2311747523960471760
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℤ) (A095168 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A194948.P2311747523960471760

/-! ## A194948.P6181039977894350329

`eq[1, A000593(A237984(n+1))]+1`
-/

namespace A194948.P6181039977894350329
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000593 (A237984 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A194948.P6181039977894350329

/-! ## A194948.P16073312886039763494

`eq[A117621(n+1), A389616(n+1)]`
-/

namespace A194948.P16073312886039763494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117621 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389616 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A194948.P16073312886039763494

/-!
# A194950: Column 0 of triangle A194949 = shifted row sums of triangle A194949.

The programs for A194950, there is no canonical definition to state claims against.
-/

/-! ## A194950.P16040572418491575824

`A194949(∑[n])`
-/

namespace A194950.P16040572418491575824
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194949 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A194950.P16040572418491575824

/-! ## A194950.P16045522047542716395

`lcm(gcd(2, ∏{p}[n, #]), A194949(n*(n+1)/2))`
-/

namespace A194950.P16045522047542716395
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (Nat.gcd 2 (∏ p ∈ Nat.primeFactors (f1 n), p) : ℤ) (A194949 (SequenceMachineLib.roundAway ((n : ℚ) * ((n + 1 : ℚ) / 2))).toNat)

end

end A194950.P16045522047542716395

/-! ## A194950.P7818692070642438405

`and(-1, A194949(A000217(n)))`
-/

namespace A194950.P7818692070642438405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A194949 (A000217 n).toNat)

end

end A194950.P7818692070642438405

/-! ## A194950.P1605540482027355411

`A194949(n*(n+1)/2)%A161730(n+1)`
-/

namespace A194950.P1605540482027355411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A194949 (SequenceMachineLib.roundAway ((n : ℚ) * ((n + 1 : ℚ) / 2))).toNat) (A161730 (n + 1))

end

end A194950.P1605540482027355411

/-! ## A194950.P10945736702478277933

`lcm(A082069(n+1), A194949(n*(n+1)/2))`
-/

namespace A194950.P10945736702478277933
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A082069 (n + 1)) (A194949 (SequenceMachineLib.roundAway ((n : ℚ) * ((n + 1 : ℚ) / 2))).toNat)

end

end A194950.P10945736702478277933

/-!
# A194951: Central terms of triangle A194949 = sums of squares of terms in rows of triangle A194949.

The programs for A194951, there is no canonical definition to state claims against.
-/

/-! ## A194951.P17070480604779431744

`A194949(∑[4*n])`
-/

namespace A194951.P17070480604779431744
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194949 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A194951.P17070480604779431744

/-! ## A194951.P15231370611250152127

`record[A003982(n)*A194949(n)]`
-/

namespace A194951.P15231370611250152127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A194949 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A194951.P15231370611250152127

/-!
# A194952: Number of Hamiltonian cycles in C_3 X C_n.

The programs for A194952, there is no canonical definition to state claims against.
-/

/-! ## A194952.P843448953710443303

`A270273(∑[n]+4*(n+3)+1)`
-/

namespace A194952.P843448953710443303
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270273 (∑ j ∈ Finset.range (n + 1), f1 j + (4 * (n + 3) + 1))

end

end A194952.P843448953710443303

/-!
# A194954: Slowest increasing sequence of primes such that a(1)=2, a(n)-a(n-1) is multiple of A000120(n-1).

The programs for A194954, there is no canonical definition to state claims against.
-/

/-! ## A194954.P17545861574744127398

`A000040(A187226(n+1)%A195684(n+2))`
-/

namespace A194954.P17545861574744127398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (Int.tmod (A187226 (n + 1)) (A195684 (n + 2))).toNat

end

end A194954.P17545861574744127398

/-! ## A194954.P18074802842382390458

`record[A000040(A283367(n+1)+A010060(2*n+3))]`
-/

namespace A194954.P18074802842382390458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A283367 (n + 1) + A010060 (2 * n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A194954.P18074802842382390458

/-! ## A194954.P12287156850041795706

`eq[A003415(n), A225630(A008472(n+1))]`
-/

namespace A194954.P12287156850041795706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225630 (A008472 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A194954.P12287156850041795706

/-! ## A194954.P4006583519080189440

`A000040(A187226(n+1))%A067820(n+1)`
-/

namespace A194954.P4006583519080189440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (A187226 (n + 1)).toNat) (A067820 (n + 1))

end

end A194954.P4006583519080189440

/-! ## A194954.P12721928992175266465

`eq[A091799(n+1), A323349(n)]`
-/

namespace A194954.P12721928992175266465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091799 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323349 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A194954.P12721928992175266465

/-!
# A194955: Slowest increasing sequence of primes such that a(1)=2, a(n)-a(n-1) is a multiple of A000120(a(n-1)).

The programs for A194955, there is no canonical definition to state claims against.
-/

/-! ## A194955.P15906919330968916601

`p?[∑[A056898(A220738(n+1))]]`
-/

namespace A194955.P15906919330968916601
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056898 (A220738 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A194955.P15906919330968916601

/-! ## A194955.P15834621266001507244

`∩[A028804(n+1), A153591(n+1)]`
-/

namespace A194955.P15834621266001507244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028804 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153591 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A194955.P15834621266001507244

/-! ## A194955.P11899797699223595027

`∩[A118850(n+1), A347517(n+1)]`
-/

namespace A194955.P11899797699223595027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118850 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347517 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A194955.P11899797699223595027

/-! ## A194955.P5654787653133536512

`∩[A065896(n+1), A255203(n+1)]`
-/

namespace A194955.P5654787653133536512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065896 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255203 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A194955.P5654787653133536512

/-! ## A194955.P15900507277272404737

`∩[A344621(n+1), A347517(n+1)]`
-/

namespace A194955.P15900507277272404737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344621 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347517 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A194955.P15900507277272404737

/-!
# A194956: G.f.: A(x) = INV(x - x*INV(x - x^2*INV(x - x^3*INV(x - x^4*INV(x - ...))))), where INV(F(x)) = series reversion of F(x).

The programs for A194956, there is no canonical definition to state claims against.
-/

/-! ## A194956.P5668097513237684862

`xor(A192497(n), A198318(A294443(n)))`
-/

namespace A194956.P5668097513237684862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A192497 n) (A198318 (A294443 n).toNat)

end

end A194956.P5668097513237684862

/-! ## A194956.P14994947130841885164

`A157466(A050759(n!))`
-/

namespace A194956.P14994947130841885164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157466 (A050759 (Nat.factorial n)).toNat

end

end A194956.P14994947130841885164

/-! ## A194956.P2867562473585694358

`A104632(n^A236308(n+1))`
-/

namespace A194956.P2867562473585694358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104632 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A236308 (n + 1) : ℤ))).toNat

end

end A194956.P2867562473585694358

/-! ## A194956.P7103673956550808268

`A097992(A006443(n)+A000984(n))`
-/

namespace A194956.P7103673956550808268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097992 (A006443 n + A000984 n).toNat

end

end A194956.P7103673956550808268

/-!
# A194957: E.g.f. satisfies: A(x) = cos(x) + x*A(x)^2.

The programs for A194957, there is no canonical definition to state claims against.
-/

/-! ## A194957.P4295174495895719894

`A261221(n^ceil(5*n/4))`
-/

namespace A194957.P4295174495895719894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261221 (SequenceMachineLib.roundAway ((n : ℚ) ^ (⌈5 * ((n : ℚ) / 4)⌉ : ℤ))).toNat

end

end A194957.P4295174495895719894

/-!
# A194958: E.g.f. satisfies: A(x) = cosh(x) + x*A(x)^2.

The programs for A194958, there is no canonical definition to state claims against.
-/

/-! ## A194958.P2986810756726417992

`A102045(A041729(n))`
-/

namespace A194958.P2986810756726417992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102045 (A041729 n).toNat

end

end A194958.P2986810756726417992

/-!
# A194959: Fractalization of (1 + floor(n/2)).

The programs for A194959, the canonical program `A194959.P7468883608781216461` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A194959 has offset 1).

The definition of A194959 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A194959.P10395245267611772462

`abs(ceil(sqrt(Δ[n²]))²-n-comp[∑[n]])`
-/

namespace A194959.P10395245267611772462
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |⌈Real.sqrt ((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℝ)⌉ ^ 2 - (n : ℤ) - (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n : ℤ)|

end

end A194959.P10395245267611772462

namespace A194959

/-- `abs(ceil(sqrt(Δ[n²]))²-n-comp[∑[n]])` -/
def P10395245267611772462.Spec : Prop :=
  ∀ n, P10395245267611772462.a n = A194959 (n + 1)

end A194959

/-! ## A194959.P2148891729342294762

`C(comp[∑[n]]-n, 2)-floor(abs(round(sqrt(2*(n+1)))²-(2*n+1)+γ))-C(∑[char[∑[n]]], 2)`
-/

namespace A194959.P2148891729342294762
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

open Classical in
def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f4 j = n then 1 else 0

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - ⌊|(SequenceMachineLib.roundAway (Real.sqrt (2 * (n + 1) : ℝ)) ^ 2 - (2 * n + 1 : ℤ) : ℝ) + Real.eulerMascheroniConstant|⌋ - (Nat.choose (∑ j ∈ Finset.range (n + 1), f3 j) 2 : ℤ)

end

end A194959.P2148891729342294762

namespace A194959

/-- `C(comp[∑[n]]-n, 2)-floor(abs(round(sqrt(2*(n+1)))²-(2*n+1)+γ))-C(∑[char[∑[n]]], 2)` -/
def P2148891729342294762.Spec : Prop :=
  ∀ n, P2148891729342294762.a n = A194959 (n + 1)

end A194959

/-! ## A194959.P17835798069444942334

`A002260(A064578(n+1))`
-/

namespace A194959.P17835798069444942334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A064578 (n + 1)).toNat

end

end A194959.P17835798069444942334

namespace A194959

/-- `A002260(A064578(n+1))` -/
def P17835798069444942334.Spec : Prop :=
  ∀ n, P17835798069444942334.a n = A194959 (n + 1)

end A194959

/-! ## A194959.P7468883608781216461

`A157458(n)+A101688(n)`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A194959

/-- `A157458(n)+A101688(n)` -/
def P7468883608781216461.Spec : Prop :=
  ∀ n, P7468883608781216461.a n = A194959 (n + 1)

theorem P7468883608781216461.correct : P7468883608781216461.Spec := by
  intro n
  simp only [A194959, Nat.add_sub_cancel]

end A194959

/-! ## A194959.P15103583889594544299

`A101776(n)-A049581(n)`
-/

namespace A194959.P15103583889594544299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101776 n - A049581 n

end

end A194959.P15103583889594544299

namespace A194959

/-- `A101776(n)-A049581(n)` -/
def P15103583889594544299.Spec : Prop :=
  ∀ n, P15103583889594544299.a n = A194959 (n + 1)

end A194959

/-! ## A194959.P18078128960088765745

`A053616(n)+A003983(n+1)`
-/

namespace A194959.P18078128960088765745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053616 n + A003983 (n + 1)

end

end A194959.P18078128960088765745

namespace A194959

/-- `A053616(n)+A003983(n+1)` -/
def P18078128960088765745.Spec : Prop :=
  ∀ n, P18078128960088765745.a n = A194959 (n + 1)

end A194959

/-! ## A194959.P15115516552616277937

`A004197(n)+A053616(n)+1`
-/

namespace A194959.P15115516552616277937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004197 n + (A053616 n + 1)

end

end A194959.P15115516552616277937

namespace A194959

/-- `A004197(n)+A053616(n)+1` -/
def P15115516552616277937.Spec : Prop :=
  ∀ n, P15115516552616277937.a n = A194959 (n + 1)

end A194959

/-! ## A194959.P17310405668662629625

`A203994(n+1)+A172471(n)`
-/

namespace A194959.P17310405668662629625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203994 (n + 1) + A172471 n

end

end A194959.P17310405668662629625

namespace A194959

/-- `A203994(n+1)+A172471(n)` -/
def P17310405668662629625.Spec : Prop :=
  ∀ n, P17310405668662629625.a n = A194959 (n + 1)

end A194959

/-! ## A194959.P10387734302297684677

`A340507(n)+A157454(n+1)`
-/

namespace A194959.P10387734302297684677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340507 n + A157454 (n + 1)

end

end A194959.P10387734302297684677

namespace A194959

/-- `A340507(n)+A157454(n+1)` -/
def P10387734302297684677.Spec : Prop :=
  ∀ n, P10387734302297684677.a n = A194959 (n + 1)

end A194959

/-! ## A194959.P4807415450459710637

`A064578(n+1)-A057944(n)`
-/

namespace A194959.P4807415450459710637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064578 (n + 1) - A057944 n

end

end A194959.P4807415450459710637

namespace A194959

/-- `A064578(n+1)-A057944(n)` -/
def P4807415450459710637.Spec : Prop :=
  ∀ n, P4807415450459710637.a n = A194959 (n + 1)

end A194959

/-! ## A194959.P13505937238014769573

`A274773(n+1)-A340507(n)`
-/

namespace A194959.P13505937238014769573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274773 (n + 1) - A340507 n

end

end A194959.P13505937238014769573

namespace A194959

/-- `A274773(n+1)-A340507(n)` -/
def P13505937238014769573.Spec : Prop :=
  ∀ n, P13505937238014769573.a n = A194959 (n + 1)

end A194959

/-! ## A194959.P12838825950473483289

`A003057(n+2)-A130517(n+1)`
-/

namespace A194959.P12838825950473483289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003057 (n + 2) - A130517 (n + 1)

end

end A194959.P12838825950473483289

namespace A194959

/-- `A003057(n+2)-A130517(n+1)` -/
def P12838825950473483289.Spec : Prop :=
  ∀ n, P12838825950473483289.a n = A194959 (n + 1)

end A194959

/-! ## A194959.P4898310731110489574

`A210535(∑[char[∑[n]]]²-n)`
-/

namespace A194959.P4898310731110489574
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210535 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n)

end

end A194959.P4898310731110489574

namespace A194959

/-- `A210535(∑[char[∑[n]]]²-n)` -/
def P4898310731110489574.Spec : Prop :=
  ∀ n, P4898310731110489574.a n = A194959 (n + 1)

end A194959

/-! ## A194959.P12828560270885803402

`A004736(A064789(n+1))`
-/

namespace A194959.P12828560270885803402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (A064789 (n + 1)).toNat

end

end A194959.P12828560270885803402

namespace A194959

/-- `A004736(A064789(n+1))` -/
def P12828560270885803402.Spec : Prop :=
  ∀ n, P12828560270885803402.a n = A194959 (n + 1)

end A194959

/-! ## A194959.P605228713389763311

`A210535(n+1)+A068344(n)`
-/

namespace A194959.P605228713389763311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210535 (n + 1) + A068344 n

end

end A194959.P605228713389763311

namespace A194959

/-- `A210535(n+1)+A068344(n)` -/
def P605228713389763311.Spec : Prop :=
  ∀ n, P605228713389763311.a n = A194959 (n + 1)

end A194959

/-! ## A194959.P10192896952538420838

`A210535(comp[∑[n]])-1`
-/

namespace A194959.P10192896952538420838
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210535 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) - 1

end

end A194959.P10192896952538420838

namespace A194959

/-- `A210535(comp[∑[n]])-1` -/
def P10192896952538420838.Spec : Prop :=
  ∀ n, P10192896952538420838.a n = A194959 (n + 1)

end A194959

/-! ## A194959.P2751427359843889525

`A008619(A253580(2*n))`
-/

namespace A194959.P2751427359843889525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A253580 (2 * n)).toNat

end

end A194959.P2751427359843889525

namespace A194959

/-- `A008619(A253580(2*n))` -/
def P2751427359843889525.Spec : Prop :=
  ∀ n, P2751427359843889525.a n = A194959 (n + 1)

end A194959

/-! ## A194959.P6959997840643687716

`A110654(A253580(2*n)+1)`
-/

namespace A194959.P6959997840643687716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A253580 (2 * n) + 1).toNat

end

end A194959.P6959997840643687716

namespace A194959

/-- `A110654(A253580(2*n)+1)` -/
def P6959997840643687716.Spec : Prop :=
  ∀ n, P6959997840643687716.a n = A194959 (n + 1)

end A194959

/-! ## A194959.P16349038494239834070

`ceil(A004741(2*n+1)/2)`
-/

namespace A194959.P16349038494239834070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A004741 (2 * n + 1) : ℚ) / 2⌉

end

end A194959.P16349038494239834070

namespace A194959

/-- `ceil(A004741(2*n+1)/2)` -/
def P16349038494239834070.Spec : Prop :=
  ∀ n, P16349038494239834070.a n = A194959 (n + 1)

end A194959

/-! ## A194959.P7794888533819953386

`A071797(A185725(n+1))`
-/

namespace A194959.P7794888533819953386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071797 (A185725 (n + 1)).toNat

end

end A194959.P7794888533819953386

namespace A194959

/-- `A071797(A185725(n+1))` -/
def P7794888533819953386.Spec : Prop :=
  ∀ n, P7794888533819953386.a n = A194959 (n + 1)

end A194959

/-!
# A194960: a(n) = floor((n+2)/3) + ((n-1) mod 3).

The programs for A194960, the canonical program `A194960.P16175288645252624048` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A194960 has offset 1).

The definition of A194960 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A194960.P16175288645252624048

`a(n-3)+1` with `a(0)=1, a(1)=2, a(2)=3`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A194960

/-- `a(n-3)+1` -/
def P16175288645252624048.Spec : Prop :=
  ∀ n, (P16175288645252624048.a n : ℤ) = A194960 (n + 1)

theorem P16175288645252624048.correct : P16175288645252624048.Spec := by
  intro n
  simp only [A194960, Nat.add_sub_cancel]

end A194960

/-! ## A194960.P11630439530035327825

`A006446(n+1)/floor(sqrt(A006446(n+1)))`
-/

namespace A194960.P11630439530035327825
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006446 (n + 1) : ℚ) / (Int.sqrt (A006446 (n + 1)) : ℚ)

end

end A194960.P11630439530035327825

namespace A194960

/-- `A006446(n+1)/floor(sqrt(A006446(n+1)))` -/
def P11630439530035327825.Spec : Prop :=
  ∀ n, P11630439530035327825.a n = (A194960 (n + 1) : ℚ)

end A194960

/-! ## A194960.P14089161741951340765

`∑[2-gcd(3, n)]+2`
-/

namespace A194960.P14089161741951340765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (Nat.gcd 3 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A194960.P14089161741951340765

namespace A194960

/-- `∑[2-gcd(3, n)]+2` -/
def P14089161741951340765.Spec : Prop :=
  ∀ n, P14089161741951340765.a n = A194960 (n + 1)

end A194960

/-! ## A194960.P514763816028586295

`∑[char[3*n]]+n%3`
-/

namespace A194960.P514763816028586295
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + n % 3

end

end A194960.P514763816028586295

namespace A194960

/-- `∑[char[3*n]]+n%3` -/
def P514763816028586295.Spec : Prop :=
  ∀ n, (P514763816028586295.a n : ℤ) = A194960 (n + 1)

end A194960

/-! ## A194960.P15569193003795821463

`1-2*floor(n/3)+n`
-/

namespace A194960.P15569193003795821463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - 2 * ⌊(n : ℚ) / 3⌋ + (n : ℤ)

end

end A194960.P15569193003795821463

namespace A194960

/-- `1-2*floor(n/3)+n` -/
def P15569193003795821463.Spec : Prop :=
  ∀ n, P15569193003795821463.a n = A194960 (n + 1)

end A194960

/-! ## A194960.P10671498575208276891

`∑[floor(a(n-3))]` with `a(0)=1, a(1)=1, a(2)=1, a(3)=-1`

`floor` is left out, it is the identity on integers.
-/

namespace A194960.P10671498575208276891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1, -1] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194960.P10671498575208276891

namespace A194960

/-- `∑[floor(a(n-3))]` -/
def P10671498575208276891.Spec : Prop :=
  ∀ n, P10671498575208276891.a n = A194960 (n + 1)

end A194960

/-! ## A194960.P4708567634706355548

`-xor(-1, a(n-3))` with `a(0)=1, a(1)=2, a(2)=3`
-/

namespace A194960.P4708567634706355548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 3] fun n a =>
  -Int.xor (-1) (a (n - 3))

end

end A194960.P4708567634706355548

namespace A194960

/-- `-xor(-1, a(n-3))` -/
def P4708567634706355548.Spec : Prop :=
  ∀ n, P4708567634706355548.a n = A194960 (n + 1)

end A194960

/-! ## A194960.P4762852074617459516

`((2*n)%6+n+3)/3`
-/

namespace A194960.P4762852074617459516
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 * n % 6 + (n + 3) : ℕ) : ℚ) / 3

end

end A194960.P4762852074617459516

namespace A194960

/-- `((2*n)%6+n+3)/3` -/
def P4762852074617459516.Spec : Prop :=
  ∀ n, P4762852074617459516.a n = (A194960 (n + 1) : ℚ)

end A194960

/-! ## A194960.P14407752184115288487

`∑[1/a(n-3)]` with `a(0)=1, a(1)=1, a(2)=1, a(3)=-1`
-/

namespace A194960.P14407752184115288487
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1, 1, 1, -1] fun n f1 =>
  1 / f1 (n - 3)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194960.P14407752184115288487

namespace A194960

/-- `∑[1/a(n-3)]` -/
def P14407752184115288487.Spec : Prop :=
  ∀ n, P14407752184115288487.a n = (A194960 (n + 1) : ℚ)

end A194960

/-! ## A194960.P3095105134208478514

`∑[a(n-3)^3]` with `a(0)=1, a(1)=1, a(2)=1, a(3)=-1`
-/

namespace A194960.P3095105134208478514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1, -1] fun n f1 =>
  f1 (n - 3) ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194960.P3095105134208478514

namespace A194960

/-- `∑[a(n-3)^3]` -/
def P3095105134208478514.Spec : Prop :=
  ∀ n, P3095105134208478514.a n = A194960 (n + 1)

end A194960

/-! ## A194960.P3938835299155096672

`∑[2-gcd(3*a(n-1), n²)]` with `a(0)=1`
-/

namespace A194960.P3938835299155096672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  2 - (Int.gcd (3 * f1 (n - 1)) (n ^ 2 : ℤ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194960.P3938835299155096672

namespace A194960

/-- `∑[2-gcd(3*a(n-1), n²)]` -/
def P3938835299155096672.Spec : Prop :=
  ∀ n, P3938835299155096672.a n = A194960 (n + 1)

end A194960

/-! ## A194960.P4862008445492710106

`ceil((gcd(n+1, n-2)+n+2)/3)`
-/

namespace A194960.P4862008445492710106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Int.gcd (n + 1 : ℤ) ((n : ℤ) - 2) + (n + 2) : ℚ) / 3⌉

end

end A194960.P4862008445492710106

namespace A194960

/-- `ceil((gcd(n+1, n-2)+n+2)/3)` -/
def P4862008445492710106.Spec : Prop :=
  ∀ n, P4862008445492710106.a n = A194960 (n + 1)

end A194960

/-! ## A194960.P1384816196924548517

`∑[1-a(n-1)-a(n-2)]` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A194960.P1384816196924548517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n f1 =>
  1 - f1 (n - 1) - f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194960.P1384816196924548517

namespace A194960

/-- `∑[1-a(n-1)-a(n-2)]` -/
def P1384816196924548517.Spec : Prop :=
  ∀ n, P1384816196924548517.a n = A194960 (n + 1)

end A194960

/-! ## A194960.P15279481247496473137

`floor(4-(a(n-1)-n)-a(n-2))` with `a(0)=1, a(1)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A194960.P15279481247496473137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  4 - (a (n - 1) - (n : ℤ)) - a (n - 2)

end

end A194960.P15279481247496473137

namespace A194960

/-- `floor(4-(a(n-1)-n)-a(n-2))` -/
def P15279481247496473137.Spec : Prop :=
  ∀ n, P15279481247496473137.a n = A194960 (n + 1)

end A194960

/-! ## A194960.P14713255536008849367

`∑[A131561(abs(1-n))]`
-/

namespace A194960.P14713255536008849367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131561 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194960.P14713255536008849367

namespace A194960

/-- `∑[A131561(abs(1-n))]` -/
def P14713255536008849367.Spec : Prop :=
  ∀ n, P14713255536008849367.a n = A194960 (n + 1)

end A194960

/-! ## A194960.P16209611859520468131

`∑[2*A267208(n)-1]`
-/

namespace A194960.P16209611859520468131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A267208 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194960.P16209611859520468131

namespace A194960

/-- `∑[2*A267208(n)-1]` -/
def P16209611859520468131.Spec : Prop :=
  ∀ n, P16209611859520468131.a n = A194960 (n + 1)

end A194960

/-! ## A194960.P17289495980602328316

`A008619(2*a(n-3))` with `a(0)=1, a(1)=2, a(2)=3`
-/

namespace A194960.P17289495980602328316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 3] fun n a =>
  A008619 (2 * a (n - 3)).toNat

end

end A194960.P17289495980602328316

namespace A194960

/-- `A008619(2*a(n-3))` -/
def P17289495980602328316.Spec : Prop :=
  ∀ n, P17289495980602328316.a n = A194960 (n + 1)

end A194960

/-! ## A194960.P12387862979804510818

`A027656(2*a(n-3))` with `a(0)=1, a(1)=2, a(2)=3`
-/

namespace A194960.P12387862979804510818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 3] fun n a =>
  A027656 (2 * a (n - 3)).toNat

end

end A194960.P12387862979804510818

namespace A194960

/-- `A027656(2*a(n-3))` -/
def P12387862979804510818.Spec : Prop :=
  ∀ n, P12387862979804510818.a n = A194960 (n + 1)

end A194960

/-!
# A194961: Fractalization of A194960.

The programs for A194961, there is no canonical definition to state claims against.
-/

/-! ## A194961.P2730609256706095612

`A194963(n+1)-C(∑[char[∑[n]]], 2)`
-/

namespace A194961.P2730609256706095612
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194963 (n + 1) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ)

end

end A194961.P2730609256706095612

/-! ## A194961.P10580008860133669530

`A002260(A194963(n+1))`
-/

namespace A194961.P10580008860133669530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A194963 (n + 1)).toNat

end

end A194961.P10580008860133669530

/-! ## A194961.P16908063589624356760

`A194963(n+1)-A057944(n)`
-/

namespace A194961.P16908063589624356760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194963 (n + 1) - A057944 n

end

end A194961.P16908063589624356760

/-! ## A194961.P17020546000924694715

`A002262(A194963(n+1)-1)+1`
-/

namespace A194961.P17020546000924694715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (A194963 (n + 1) - 1).toNat + 1

end

end A194961.P17020546000924694715

/-! ## A194961.P5399253363368803293

`A131818(A194963(n+1)+1)-1`
-/

namespace A194961.P5399253363368803293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (A194963 (n + 1) + 1).toNat - 1

end

end A194961.P5399253363368803293

/-! ## A194961.P4198341862469711935

`A194963(n+1)+n-A061885(n)`
-/

namespace A194961.P4198341862469711935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194963 (n + 1) + ((n : ℤ) - A061885 n)

end

end A194961.P4198341862469711935

/-! ## A194961.P4024258631103778455

`A004739(A194963(n+1)+A057944(n))`
-/

namespace A194961.P4024258631103778455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004739 (A194963 (n + 1) + A057944 n).toNat

end

end A194961.P4024258631103778455

/-! ## A194961.P6222656241528472542

`A128227(A194963(n+1)+A003056(n))`
-/

namespace A194961.P6222656241528472542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128227 (A194963 (n + 1) + A003056 n).toNat

end

end A194961.P6222656241528472542

/-! ## A194961.P3017715564109913656

`A194963(n+1)+A194987(n+1)-A194989(n+1)`
-/

namespace A194961.P3017715564109913656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194963 (n + 1) + (A194987 (n + 1) - A194989 (n + 1))

end

end A194961.P3017715564109913656

/-! ## A194961.P6772895373080572839

`A194963(n+1)+A195079(n+1)-A195081(n+1)`
-/

namespace A194961.P6772895373080572839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194963 (n + 1) + (A195079 (n + 1) - A195081 (n + 1))

end

end A194961.P6772895373080572839

/-!
# A194963: Inverse permutation of A194962; every positive integer occurs exactly once.

The programs for A194963, there is no canonical definition to state claims against.
-/

/-! ## A194963.P18104973112891318394

`A194961(n+1)+C(∑[char[∑[n]]], 2)`
-/

namespace A194963.P18104973112891318394
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194961 (n + 1) + (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ)

end

end A194963.P18104973112891318394

/-! ## A194963.P88659063852657000

`A194961(n+1)+A057944(n)`
-/

namespace A194963.P88659063852657000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194961 (n + 1) + A057944 n

end

end A194963.P88659063852657000

/-! ## A194963.P3911376631411776856

`A194961(n+1)+n-A002262(n)`
-/

namespace A194963.P3911376631411776856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194961 (n + 1) + ((n : ℤ) - A002262 n)

end

end A194963.P3911376631411776856

/-! ## A194963.P15806864305554603883

`A194961(n+1)+A061885(n)-n`
-/

namespace A194963.P15806864305554603883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194961 (n + 1) + (A061885 n - (n : ℤ))

end

end A194963.P15806864305554603883

/-! ## A194963.P9302987866974777433

`A194961(n+1)+n+1-A002260(n+1)`
-/

namespace A194963.P9302987866974777433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194961 (n + 1) + ((n + 1 : ℤ) - A002260 (n + 1))

end

end A194963.P9302987866974777433

/-! ## A194963.P8647460266432114911

`A194961(n+1)+A000217(A003056(n))`
-/

namespace A194963.P8647460266432114911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194961 (n + 1) + A000217 (A003056 n).toNat

end

end A194963.P8647460266432114911

/-! ## A194963.P14371709820287261449

`A194961(n+1)+A001971(A131507(n))`
-/

namespace A194963.P14371709820287261449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194961 (n + 1) + A001971 (A131507 n).toNat

end

end A194963.P14371709820287261449

/-! ## A194963.P5170414934021709971

`A194961(n+1)+A161680(A002024(n+1))`
-/

namespace A194963.P5170414934021709971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194961 (n + 1) + A161680 (A002024 (n + 1)).toNat

end

end A194963.P5170414934021709971

/-! ## A194963.P14484701105516899047

`A194916(n+1)+A194961(n+1)-A194914(n+1)`
-/

namespace A194963.P14484701105516899047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194916 (n + 1) + (A194961 (n + 1) - A194914 (n + 1))

end

end A194963.P14484701105516899047

/-!
# A194964: a(n) = 1 + floor(n/sqrt(5)).

The programs for A194964, the canonical program `A194964.P1414659076858298394` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A194964 has offset 1).

The definition of A194964 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A194964.P5443772382091956934

`ceil((n+1)/sqrt(5))`
-/

namespace A194964.P5443772382091956934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 1 : ℝ) / Real.sqrt (5 : ℝ)⌉

end

end A194964.P5443772382091956934

namespace A194964

/-- `ceil((n+1)/sqrt(5))` -/
def P5443772382091956934.Spec : Prop :=
  ∀ n, P5443772382091956934.a n = A194964 (n + 1)

end A194964

/-! ## A194964.P1414659076858298394

`floor(a(n-1)+((n+1)/a(n-1))²/5)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A194964

/-- `floor(a(n-1)+((n+1)/a(n-1))²/5)` -/
def P1414659076858298394.Spec : Prop :=
  ∀ n, P1414659076858298394.a n = A194964 (n + 1)

theorem P1414659076858298394.correct : P1414659076858298394.Spec := by
  intro n
  simp only [A194964, Nat.add_sub_cancel]

end A194964

/-! ## A194964.P9734106599269470303

`comp[A276854(n)]-n`
-/

namespace A194964.P9734106599269470303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276854 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)

end

end A194964.P9734106599269470303

namespace A194964

/-- `comp[A276854(n)]-n` -/
def P9734106599269470303.Spec : Prop :=
  ∀ n, P9734106599269470303.a n = A194964 (n + 1)

end A194964

/-! ## A194964.P3551208501755527830

`comp[A066096(2*n)]-n`
-/

namespace A194964.P3551208501755527830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066096 (2 * n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)

end

end A194964.P3551208501755527830

namespace A194964

/-- `comp[A066096(2*n)]-n` -/
def P3551208501755527830.Spec : Prop :=
  ∀ n, P3551208501755527830.a n = A194964 (n + 1)

end A194964

/-! ## A194964.P12551577095949664324

`comp[A004976(n)-n]-n`
-/

namespace A194964.P12551577095949664324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004976 n - (n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)

end

end A194964.P12551577095949664324

namespace A194964

/-- `comp[A004976(n)-n]-n` -/
def P12551577095949664324.Spec : Prop :=
  ∀ n, P12551577095949664324.a n = A194964 (n + 1)

end A194964

/-! ## A194964.P12306267428507677268

`A285685(n)+a(n-1)` with `a(0)=1`
-/

namespace A194964.P12306267428507677268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A285685 n + a (n - 1)

end

end A194964.P12306267428507677268

namespace A194964

/-- `A285685(n)+a(n-1)` -/
def P12306267428507677268.Spec : Prop :=
  ∀ n, P12306267428507677268.a n = A194964 (n + 1)

end A194964

/-! ## A194964.P10602438704969722495

`∑[char[A022839(n+1)]]+1`
-/

namespace A194964.P10602438704969722495
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022839 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A194964.P10602438704969722495

namespace A194964

/-- `∑[char[A022839(n+1)]]+1` -/
def P10602438704969722495.Spec : Prop :=
  ∀ n, (P10602438704969722495.a n : ℤ) = A194964 (n + 1)

end A194964

/-! ## A194964.P8377335644406134726

`floor(A189934(n+1)/2-n)`
-/

namespace A194964.P8377335644406134726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A189934 (n + 1) : ℚ) / 2 - (n : ℚ)⌋

end

end A194964.P8377335644406134726

namespace A194964

/-- `floor(A189934(n+1)/2-n)` -/
def P8377335644406134726.Spec : Prop :=
  ∀ n, P8377335644406134726.a n = A194964 (n + 1)

end A194964

/-! ## A194964.P4845324012744662328

`(A188258(n+1)-(n-1))/2`
-/

namespace A194964.P4845324012744662328
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A188258 (n + 1) - ((n : ℤ) - 1) : ℚ) / 2

end

end A194964.P4845324012744662328

namespace A194964

/-- `(A188258(n+1)-(n-1))/2` -/
def P4845324012744662328.Spec : Prop :=
  ∀ n, P4845324012744662328.a n = (A194964 (n + 1) : ℚ)

end A194964

/-! ## A194964.P8717525289471668333

`A190506(n+1)-A016777(n)`
-/

namespace A194964.P8717525289471668333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190506 (n + 1) - A016777 n

end

end A194964.P8717525289471668333

namespace A194964

/-- `A190506(n+1)-A016777(n)` -/
def P8717525289471668333.Spec : Prop :=
  ∀ n, P8717525289471668333.a n = A194964 (n + 1)

end A194964

/-! ## A194964.P4530642266380256341

`A004526(A189934(n+1)-2*n)`
-/

namespace A194964.P4530642266380256341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A189934 (n + 1) - (2 * n : ℤ)).toNat

end

end A194964.P4530642266380256341

namespace A194964

/-- `A004526(A189934(n+1)-2*n)` -/
def P4530642266380256341.Spec : Prop :=
  ∀ n, P4530642266380256341.a n = A194964 (n + 1)

end A194964

/-! ## A194964.P2747212561706704365

`A123108(A189934(n+1)-2*n)`
-/

namespace A194964.P2747212561706704365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (A189934 (n + 1) - (2 * n : ℤ)).toNat

end

end A194964.P2747212561706704365

namespace A194964

/-- `A123108(A189934(n+1)-2*n)` -/
def P2747212561706704365.Spec : Prop :=
  ∀ n, P2747212561706704365.a n = A194964 (n + 1)

end A194964

/-! ## A194964.P17922854793474850492

`A004526(A189934(n+1)-n-n)`
-/

namespace A194964.P17922854793474850492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A189934 (n + 1) - (n : ℤ) - (n : ℤ)).toNat

end

end A194964.P17922854793474850492

namespace A194964

/-- `A004526(A189934(n+1)-n-n)` -/
def P17922854793474850492.Spec : Prop :=
  ∀ n, P17922854793474850492.a n = A194964 (n + 1)

end A194964

/-! ## A194964.P10545611446755889928

`A123108(A189934(n+1)-n-n)`
-/

namespace A194964.P10545611446755889928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (A189934 (n + 1) - (n : ℤ) - (n : ℤ)).toNat

end

end A194964.P10545611446755889928

namespace A194964

/-- `A123108(A189934(n+1)-n-n)` -/
def P10545611446755889928.Spec : Prop :=
  ∀ n, P10545611446755889928.a n = A194964 (n + 1)

end A194964

/-! ## A194964.P5834758530021255553

`∑[A285685(n+1)]+1-A285685(n+1)`
-/

namespace A194964.P5834758530021255553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285685 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A285685 (n + 1))

end

end A194964.P5834758530021255553

namespace A194964

/-- `∑[A285685(n+1)]+1-A285685(n+1)` -/
def P5834758530021255553.Spec : Prop :=
  ∀ n, P5834758530021255553.a n = A194964 (n + 1)

end A194964

/-! ## A194964.P13331923731718019981

`(A188190(n+2)-(n+1))/2`
-/

namespace A194964.P13331923731718019981
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A188190 (n + 2) - (n + 1 : ℤ) : ℚ) / 2

end

end A194964.P13331923731718019981

namespace A194964

/-- `(A188190(n+2)-(n+1))/2` -/
def P13331923731718019981.Spec : Prop :=
  ∀ n, P13331923731718019981.a n = (A194964 (n + 1) : ℚ)

end A194964

/-! ## A194964.P9956549359701667821

`A002265(A001961(a(n-1)+n+1)+4)` with `a(0)=1`
-/

namespace A194964.P9956549359701667821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A002265 (A001961 (a (n - 1) + (n : ℤ) + 1).toNat + 4).toNat

end

end A194964.P9956549359701667821

namespace A194964

/-- `A002265(A001961(a(n-1)+n+1)+4)` -/
def P9956549359701667821.Spec : Prop :=
  ∀ n, P9956549359701667821.a n = A194964 (n + 1)

end A194964

/-! ## A194964.P11264416192151165943

`Δ[A022780(n+1)]`
-/

namespace A194964.P11264416192151165943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022780 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A194964.P11264416192151165943

namespace A194964

/-- `Δ[A022780(n+1)]` -/
def P11264416192151165943.Spec : Prop :=
  ∀ n, P11264416192151165943.a n = A194964 (n + 1)

end A194964

/-! ## A194964.P15041384892663776183

`A022780(n+2)-A022780(n+1)`
-/

namespace A194964.P15041384892663776183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022780 (n + 2) - A022780 (n + 1)

end

end A194964.P15041384892663776183

namespace A194964

/-- `A022780(n+2)-A022780(n+1)` -/
def P15041384892663776183.Spec : Prop :=
  ∀ n, P15041384892663776183.a n = A194964 (n + 1)

end A194964

/-!
# A194965: Fractalization of (A053824(n+5)), n>=0.

The programs for A194965, there is no canonical definition to state claims against.
-/

/-! ## A194965.P8786705078272047922

`A194967(n+1)-C(comp[∑[n-1]]-n, 2)`
-/

namespace A194965.P8786705078272047922
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194967 (n + 1) - (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)).toNat 2 : ℤ)

end

end A194965.P8786705078272047922

/-! ## A194965.P14889770260932775314

`A002260(A194967(n+1))`
-/

namespace A194965.P14889770260932775314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A194967 (n + 1)).toNat

end

end A194965.P14889770260932775314

/-! ## A194965.P2735052649194569718

`A194967(n+1)-A057944(n)`
-/

namespace A194965.P2735052649194569718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194967 (n + 1) - A057944 n

end

end A194965.P2735052649194569718

/-! ## A194965.P9323752753642502218

`A002262(A194967(n+1)-1)+1`
-/

namespace A194965.P9323752753642502218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (A194967 (n + 1) - 1).toNat + 1

end

end A194965.P9323752753642502218

/-! ## A194965.P3424919754479178678

`A131818(A194967(n+1)+1)-1`
-/

namespace A194965.P3424919754479178678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (A194967 (n + 1) + 1).toNat - 1

end

end A194965.P3424919754479178678

/-! ## A194965.P3072325605494998382

`A097285(2*A194967(n+1)-1)`
-/

namespace A194965.P3072325605494998382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097285 (2 * A194967 (n + 1) - 1).toNat

end

end A194965.P3072325605494998382

/-! ## A194965.P7832427557394105232

`A004739(A194967(n+1)+A057944(n))`
-/

namespace A194965.P7832427557394105232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004739 (A194967 (n + 1) + A057944 n).toNat

end

end A194965.P7832427557394105232

/-! ## A194965.P8474231814441813867

`A128227(A194967(n+1)+A003056(n))`
-/

namespace A194965.P8474231814441813867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128227 (A194967 (n + 1) + A003056 n).toNat

end

end A194965.P8474231814441813867

/-! ## A194965.P6534768569860843211

`A194967(n+1)-A001971(A131507(n))`
-/

namespace A194965.P6534768569860843211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194967 (n + 1) - A001971 (A131507 n).toNat

end

end A194965.P6534768569860843211

/-! ## A194965.P649308161780125734

`A194967(n+1)-A086165(A140513(n))`
-/

namespace A194965.P649308161780125734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194967 (n + 1) - A086165 (A140513 n).toNat

end

end A194965.P649308161780125734

/-!
# A194967: Inverse permutation of A194966; every positive integer occurs exactly once.

The programs for A194967, there is no canonical definition to state claims against.
-/

/-! ## A194967.P14531610602976036676

`A194965(n+1)+A057944(n)`
-/

namespace A194967.P14531610602976036676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194965 (n + 1) + A057944 n

end

end A194967.P14531610602976036676

/-! ## A194967.P14774026398219194320

`A194965(n+1)+n-A002262(n)`
-/

namespace A194967.P14774026398219194320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194965 (n + 1) + ((n : ℤ) - A002262 n)

end

end A194967.P14774026398219194320

/-! ## A194967.P8177388160482581465

`A194965(n+1)+A061885(n)-n`
-/

namespace A194967.P8177388160482581465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194965 (n + 1) + (A061885 n - (n : ℤ))

end

end A194967.P8177388160482581465

/-! ## A194967.P13612233042954527813

`A194965(n+1)+n-log2(A059268(n))`
-/

namespace A194967.P13612233042954527813
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A194965 (n + 1) : ℝ) + ((n : ℝ) - Real.logb 2 (A059268 n : ℝ))

end

end A194967.P13612233042954527813

/-! ## A194967.P2457113904834805949

`A194965(n+1)-A025668(n+1)+n`
-/

namespace A194967.P2457113904834805949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194965 (n + 1) - A025668 (n + 1) + (n : ℤ)

end

end A194967.P2457113904834805949

/-! ## A194967.P12845314177069613058

`A194965(n+1)+n+1-A057555(Δ[n²])`
-/

namespace A194967.P12845314177069613058
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194965 (n + 1) + ((n + 1 : ℤ) - A057555 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat)

end

end A194967.P12845314177069613058

/-! ## A194967.P17422184483932249530

`A194965(n+1)+A000217(A003056(n))`
-/

namespace A194967.P17422184483932249530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194965 (n + 1) + A000217 (A003056 n).toNat

end

end A194967.P17422184483932249530

/-! ## A194967.P191861109154862213

`A194965(n+1)+A161680(A003056(n)+1)`
-/

namespace A194967.P191861109154862213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194965 (n + 1) + A161680 (A003056 n + 1).toNat

end

end A194967.P191861109154862213

/-! ## A194967.P5131892073688990416

`A194916(n+1)+A194965(n+1)-A194914(n+1)`
-/

namespace A194967.P5131892073688990416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194916 (n + 1) + (A194965 (n + 1) - A194914 (n + 1))

end

end A194967.P5131892073688990416

/-! ## A194967.P622733111813853542

`A194963(n+1)+A194965(n+1)-A194961(n+1)`
-/

namespace A194967.P622733111813853542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194963 (n + 1) + (A194965 (n + 1) - A194961 (n + 1))

end

end A194967.P622733111813853542

/-!
# A194968: Fractalization of (1+[n/r]), where [ ]=floor, r=(1+sqrt(5))/2 (the golden ratio), and n>=1.

The programs for A194968, there is no canonical definition to state claims against.
-/

/-! ## A194968.P6842228666240898373

`A194917(∑[2*n]%A080036(n)+1)`
-/

namespace A194968.P6842228666240898373
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194917 (Int.tmod ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) (A080036 n) + 1).toNat

end

end A194968.P6842228666240898373

/-! ## A194968.P10903111474842326181

`A194917(gcd(A010816(n), A038722(n+1)))`
-/

namespace A194968.P10903111474842326181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194917 (Int.gcd (A010816 n) (A038722 (n + 1)))

end

end A194968.P10903111474842326181

/-! ## A194968.P2518322745284042039

`A194917(∑[char[∑[n]]]²-n)`
-/

namespace A194968.P2518322745284042039
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194917 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n)

end

end A194968.P2518322745284042039

/-! ## A194968.P17954575638356205867

`A194917(A038722(n+1))%14`
-/

namespace A194968.P17954575638356205867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A194917 (A038722 (n + 1)).toNat) 14

end

end A194968.P17954575638356205867

/-! ## A194968.P4610900124407129140

`A194917(A061579(n)+1)%64`
-/

namespace A194968.P4610900124407129140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A194917 (A061579 n + 1).toNat) 64

end

end A194968.P4610900124407129140

/-! ## A194968.P7702017829833575522

`A194917(A038722(n+1))+char[A016831(n)]`
-/

namespace A194968.P7702017829833575522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016831 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194917 (A038722 (n + 1)).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A194968.P7702017829833575522

/-! ## A194968.P3044588683495404803

`A194917(A038722(n+1))+A000038(n+1)`
-/

namespace A194968.P3044588683495404803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194917 (A038722 (n + 1)).toNat + A000038 (n + 1)

end

end A194968.P3044588683495404803

/-! ## A194968.P6636648549308082632

`A007318(C(2, n))*A194917(A038722(n+1))`
-/

namespace A194968.P6636648549308082632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A194917 (A038722 (n + 1)).toNat

end

end A194968.P6636648549308082632

/-! ## A194968.P7201901002354547343

`A194917(A038722(n+1))+char[A000292(n+8)]`
-/

namespace A194968.P7201901002354547343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (n + 8)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194917 (A038722 (n + 1)).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A194968.P7201901002354547343

/-! ## A194968.P2572468518763882354

`A000041(C(2, n+2))*A194917(A038722(n+1))`
-/

namespace A194968.P2572468518763882354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose 2 (n + 2)) * A194917 (A038722 (n + 1)).toNat

end

end A194968.P2572468518763882354

/-!
# A194969: Interspersion fractally induced by A194968, a rectangular array, by antidiagonals.

The programs for A194969, there is no canonical definition to state claims against.
-/

/-! ## A194969.P6216153772948298760

`∑[char[∑[n]]]²+1-A194918(n+1)`
-/

namespace A194969.P6216153772948298760
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) + (1 - A194918 (n + 1))

end

end A194969.P6216153772948298760

/-! ## A194969.P10176375409881395374

`A038722(A194918(n+1))`
-/

namespace A194969.P10176375409881395374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038722 (A194918 (n + 1)).toNat

end

end A194969.P10176375409881395374

/-! ## A194969.P12338059575637677552

`A061579(A194918(n+1)-1)+1`
-/

namespace A194969.P12338059575637677552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061579 (A194918 (n + 1) - 1).toNat + 1

end

end A194969.P12338059575637677552

/-! ## A194969.P18096224837406811854

`A265129(n+1)-A194918(n+1)`
-/

namespace A194969.P18096224837406811854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265129 (n + 1) - A194918 (n + 1)

end

end A194969.P18096224837406811854

/-! ## A194969.P10088089049730401091

`A093995(n+1)+1-A194918(n+1)`
-/

namespace A194969.P10088089049730401091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093995 (n + 1) + 1 - A194918 (n + 1)

end

end A194969.P10088089049730401091

/-! ## A194969.P12727919559464745667

`A057944(n)+A004736(A194918(n+1))`
-/

namespace A194969.P12727919559464745667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057944 n + A004736 (A194918 (n + 1)).toNat

end

end A194969.P12727919559464745667

/-! ## A194969.P2769449895994960892

`A002522(A002024(n+1))-A194918(n+1)`
-/

namespace A194969.P2769449895994960892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002522 (A002024 (n + 1)).toNat - A194918 (n + 1)

end

end A194969.P2769449895994960892

/-! ## A194969.P15351925840417513060

`A004736(A194918(n+1))+A000217(A003056(n))`
-/

namespace A194969.P15351925840417513060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (A194918 (n + 1)).toNat + A000217 (A003056 n).toNat

end

end A194969.P15351925840417513060

/-! ## A194969.P12721480014605378050

`A194981(A194970(A194981(n+1)))`
-/

namespace A194969.P12721480014605378050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194981 (A194970 (A194981 (n + 1)).toNat).toNat

end

end A194969.P12721480014605378050

/-!
# A194970: Inverse permutation of A194969; every positive integer occurs exactly once.

The programs for A194970, there is no canonical definition to state claims against.
-/

/-! ## A194970.P12422830530842369547

`A194968(n+1)+C(comp[∑[n-1]]-n, 2)`
-/

namespace A194970.P12422830530842369547
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194968 (n + 1) + (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)).toNat 2 : ℤ)

end

end A194970.P12422830530842369547

/-! ## A194970.P16399077419764978038

`A194968(n+1)+A057944(n)`
-/

namespace A194970.P16399077419764978038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194968 (n + 1) + A057944 n

end

end A194970.P16399077419764978038

/-! ## A194970.P6430062042043153154

`A194968(n+1)+n-A002262(n)`
-/

namespace A194970.P6430062042043153154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194968 (n + 1) + ((n : ℤ) - A002262 n)

end

end A194970.P6430062042043153154

/-! ## A194970.P11833256210484717599

`A194968(n+1)+A061885(n)-n`
-/

namespace A194970.P11833256210484717599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194968 (n + 1) + (A061885 n - (n : ℤ))

end

end A194970.P11833256210484717599

/-! ## A194970.P13398027116225679439

`A194968(n+1)-A025668(n+1)+n`
-/

namespace A194970.P13398027116225679439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194968 (n + 1) - A025668 (n + 1) + (n : ℤ)

end

end A194970.P13398027116225679439

/-! ## A194970.P11265317977845475395

`A194968(n+1)+A000217(∑[char[∑[n+1]]])`
-/

namespace A194970.P11265317977845475395
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194968 (n + 1) + A000217 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A194970.P11265317977845475395

/-! ## A194970.P18114873844070627888

`A194968(n+1)+n+1-A002260(n+1)`
-/

namespace A194970.P18114873844070627888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194968 (n + 1) + ((n + 1 : ℤ) - A002260 (n + 1))

end

end A194970.P18114873844070627888

/-! ## A194970.P10989446659340449384

`A194917(A038722(n+1))+A057944(n)`
-/

namespace A194970.P10989446659340449384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194917 (A038722 (n + 1)).toNat + A057944 n

end

end A194970.P10989446659340449384

/-! ## A194970.P11854206873248579714

`A194968(n+1)+A001971(A131507(n))`
-/

namespace A194970.P11854206873248579714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194968 (n + 1) + A001971 (A131507 n).toNat

end

end A194970.P11854206873248579714

/-! ## A194970.P7070139621587447302

`A194968(n+1)+A086165(A140513(n))`
-/

namespace A194970.P7070139621587447302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194968 (n + 1) + A086165 (A140513 n).toNat

end

end A194970.P7070139621587447302

/-!
# A194971: a(n) equals the coefficient of x^(2*n-1) in the n-th iteration of x+x^2 for n>=1.

The programs for A194971, there is no canonical definition to state claims against.
-/

/-! ## A194971.P2890862828158631101

`A122888(A131898(n))`
-/

namespace A194971.P2890862828158631101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122888 (A131898 n).toNat

end

end A194971.P2890862828158631101

/-! ## A194971.P15587151845092700965

`A122888(A083706(n)+n)`
-/

namespace A194971.P15587151845092700965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122888 (A083706 n + (n : ℤ)).toNat

end

end A194971.P15587151845092700965

/-! ## A194971.P511803098642835374

`A122888(∑[A052548(n)]-2)`
-/

namespace A194971.P511803098642835374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052548 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122888 (∑ j ∈ Finset.range (n + 1), f1 j - 2).toNat

end

end A194971.P511803098642835374

/-! ## A194971.P7950010860877236628

`A122888(∑[A159475(2^n)])`
-/

namespace A194971.P7950010860877236628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159475 (2 ^ n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122888 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A194971.P7950010860877236628

/-! ## A194971.P17903758487964518679

`A122888(2*A052944(n)+1)`
-/

namespace A194971.P17903758487964518679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122888 (2 * A052944 n + 1).toNat

end

end A194971.P17903758487964518679

/-!
# A194972: a(n) equals the coefficient of x^n in the (2*n-1)-th iteration of x+x^2 for n>=1.

The programs for A194972, there is no canonical definition to state claims against.
-/

/-! ## A194972.P7960557117802919063

`A294603(∏{p}[n+1, #]^(∏{d}[n+1, #]/(n+1)))`
-/

namespace A194972.P7960557117802919063
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294603 (SequenceMachineLib.roundAway (((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℝ) ^ (((∏ d ∈ Nat.divisors (f2 n), d : ℕ) : ℚ) / (n + 1 : ℚ) : ℝ))).toNat

end

end A194972.P7960557117802919063

/-!
# A194973: Fractalization of (A053737(n+4)), n>=0.

The programs for A194973, there is no canonical definition to state claims against.
-/

/-! ## A194973.P1850840183083151108

`A194975(n+1)-C(comp[∑[n-1]]-n, 2)`
-/

namespace A194973.P1850840183083151108
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194975 (n + 1) - (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)).toNat 2 : ℤ)

end

end A194973.P1850840183083151108

/-! ## A194973.P11881829488122594247

`A002260(A194975(n+1))`
-/

namespace A194973.P11881829488122594247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A194975 (n + 1)).toNat

end

end A194973.P11881829488122594247

/-! ## A194973.P18159986056972086407

`A194975(n+1)-A057944(n)`
-/

namespace A194973.P18159986056972086407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194975 (n + 1) - A057944 n

end

end A194973.P18159986056972086407

/-! ## A194973.P126496447657344585

`A002262(A194975(n+1)-1)+1`
-/

namespace A194973.P126496447657344585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (A194975 (n + 1) - 1).toNat + 1

end

end A194973.P126496447657344585

/-! ## A194973.P7693173037317138418

`A131818(A194975(n+1)+1)-1`
-/

namespace A194973.P7693173037317138418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (A194975 (n + 1) + 1).toNat - 1

end

end A194973.P7693173037317138418

/-! ## A194973.P6535161117162115974

`A194975(n+1)+n-A061885(n)`
-/

namespace A194973.P6535161117162115974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194975 (n + 1) + ((n : ℤ) - A061885 n)

end

end A194973.P6535161117162115974

/-! ## A194973.P4075017964293126596

`A004739(A194975(n+1)+A057944(n))`
-/

namespace A194973.P4075017964293126596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004739 (A194975 (n + 1) + A057944 n).toNat

end

end A194973.P4075017964293126596

/-! ## A194973.P1025798881906983294

`A194975(n+1)-A000217(A003056(n))`
-/

namespace A194973.P1025798881906983294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194975 (n + 1) - A000217 (A003056 n).toNat

end

end A194973.P1025798881906983294

/-! ## A194973.P16576403597063098546

`A194975(n+1)-A238952(A137688(n))`
-/

namespace A194973.P16576403597063098546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194975 (n + 1) - A238952 (A137688 n).toNat

end

end A194973.P16576403597063098546

/-!
# A194975: Inverse permutation of A194974; every positive integer occurs exactly once.

The programs for A194975, there is no canonical definition to state claims against.
-/

/-! ## A194975.P9068382598984637413

`A194973(n+1)+C(comp[∑[n-1]]-n, 2)`
-/

namespace A194975.P9068382598984637413
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194973 (n + 1) + (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)).toNat 2 : ℤ)

end

end A194975.P9068382598984637413

/-! ## A194975.P13560003799506109029

`A194973(n+1)+A057944(n)`
-/

namespace A194975.P13560003799506109029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194973 (n + 1) + A057944 n

end

end A194975.P13560003799506109029

/-! ## A194975.P3601943545502425392

`A194973(n+1)+n-A002262(n)`
-/

namespace A194975.P3601943545502425392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194973 (n + 1) + ((n : ℤ) - A002262 n)

end

end A194975.P3601943545502425392

/-! ## A194975.P17005672838045111749

`A194973(n+1)+A061885(n)-n`
-/

namespace A194975.P17005672838045111749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194973 (n + 1) + (A061885 n - (n : ℤ))

end

end A194975.P17005672838045111749

/-! ## A194975.P11772707250190941086

`A194973(n+1)+n+1-A002260(n+1)`
-/

namespace A194975.P11772707250190941086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194973 (n + 1) + ((n + 1 : ℤ) - A002260 (n + 1))

end

end A194975.P11772707250190941086

/-! ## A194975.P5819928070318407315

`A194973(n+1)+A000217(A003056(n))`
-/

namespace A194975.P5819928070318407315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194973 (n + 1) + A000217 (A003056 n).toNat

end

end A194975.P5819928070318407315

/-! ## A194975.P16415237002536423828

`A194973(n+1)+A001971(A131507(n))`
-/

namespace A194975.P16415237002536423828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194973 (n + 1) + A001971 (A131507 n).toNat

end

end A194975.P16415237002536423828

/-! ## A194975.P13325725819756137154

`A194973(n+1)+A086165(A140513(n))`
-/

namespace A194975.P13325725819756137154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194973 (n + 1) + A086165 (A140513 n).toNat

end

end A194975.P13325725819756137154

/-! ## A194975.P4142528545685804833

`A238952(A137688(n))+A194973(n+1)`
-/

namespace A194975.P4142528545685804833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238952 (A137688 n).toNat + A194973 (n + 1)

end

end A194975.P4142528545685804833

/-! ## A194975.P16789736919746359082

`A194973(n+1)+A161680(A002024(n+1))`
-/

namespace A194975.P16789736919746359082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194973 (n + 1) + A161680 (A002024 (n + 1)).toNat

end

end A194975.P16789736919746359082

/-!
# A194976: Fractalization of (1+[n/sqrt(2)]), where [ ]=floor.

The programs for A194976, there is no canonical definition to state claims against.
-/

/-! ## A194976.P15275132827541209138

`A194921(A172471(n+1)²-n)`
-/

namespace A194976.P15275132827541209138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194921 (A172471 (n + 1) ^ 2 - (n : ℤ)).toNat

end

end A194976.P15275132827541209138

/-! ## A194976.P10792193605522587452

`A194921(A038722(n+1))`
-/

namespace A194976.P10792193605522587452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194921 (A038722 (n + 1)).toNat

end

end A194976.P10792193605522587452

/-! ## A194976.P5916086386465729878

`A194921(A061579(n)+1)`
-/

namespace A194976.P5916086386465729878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194921 (A061579 n + 1).toNat

end

end A194976.P5916086386465729878

/-! ## A194976.P13932994842331902121

`A194921(A093995(n+1)-n)`
-/

namespace A194976.P13932994842331902121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194921 (A093995 (n + 1) - (n : ℤ)).toNat

end

end A194976.P13932994842331902121

/-! ## A194976.P10083829369974053341

`A194921(A057944(n)+A004736(n+1))`
-/

namespace A194976.P10083829369974053341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194921 (A057944 n + A004736 (n + 1)).toNat

end

end A194976.P10083829369974053341

/-! ## A194976.P6037385979920291971

`A194921(A000194(2*n+1)²-n)`
-/

namespace A194976.P6037385979920291971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194921 (A000194 (2 * n + 1) ^ 2 - (n : ℤ)).toNat

end

end A194976.P6037385979920291971

/-! ## A194976.P15108205563548730310

`A194921(A194977(A195071(n+1)))`
-/

namespace A194976.P15108205563548730310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194921 (A194977 (A195071 (n + 1)).toNat).toNat

end

end A194976.P15108205563548730310

/-! ## A194976.P13459770734235623815

`A002260(A194978(n+1))`
-/

namespace A194976.P13459770734235623815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A194978 (n + 1)).toNat

end

end A194976.P13459770734235623815

/-! ## A194976.P1271367316575055651

`A194978(n+1)-A057944(n)`
-/

namespace A194976.P1271367316575055651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194978 (n + 1) - A057944 n

end

end A194976.P1271367316575055651

/-! ## A194976.P326971261403153305

`A194914(n+1)+A194978(n+1)-A194916(n+1)`
-/

namespace A194976.P326971261403153305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194914 (n + 1) + (A194978 (n + 1) - A194916 (n + 1))

end

end A194976.P326971261403153305

/-!
# A194977: Interspersion fractally induced by A194976, a rectangular array, by antidiagonals.

The programs for A194977, there is no canonical definition to state claims against.
-/

/-! ## A194977.P382160697780703850

`A038722(A194922(n+1))`
-/

namespace A194977.P382160697780703850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038722 (A194922 (n + 1)).toNat

end

end A194977.P382160697780703850

/-! ## A194977.P6009513844770556365

`A265129(n+1)-A194922(n+1)`
-/

namespace A194977.P6009513844770556365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265129 (n + 1) - A194922 (n + 1)

end

end A194977.P6009513844770556365

/-! ## A194977.P293993445616872302

`A093995(n+1)+1-A194922(n+1)`
-/

namespace A194977.P293993445616872302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093995 (n + 1) + (1 - A194922 (n + 1))

end

end A194977.P293993445616872302

/-! ## A194977.P9583823201732771575

`A002024(n+1)²+1-A194922(n+1)`
-/

namespace A194977.P9583823201732771575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (n + 1) ^ 2 + (1 - A194922 (n + 1))

end

end A194977.P9583823201732771575

/-! ## A194977.P16981512162068328383

`A057944(n)+A004736(A194922(n+1))`
-/

namespace A194977.P16981512162068328383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057944 n + A004736 (A194922 (n + 1)).toNat

end

end A194977.P16981512162068328383

/-! ## A194977.P14806841655024218669

`A002378(n)%A014132(n+1)-A194922(n+1)+n+2`
-/

namespace A194977.P14806841655024218669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002378 n) (A014132 (n + 1)) - A194922 (n + 1) + (n + 2 : ℤ)

end

end A194977.P14806841655024218669

/-! ## A194977.P6437539030203373499

`A195083(n+1)+A000007(A127257(n+1))`
-/

namespace A194977.P6437539030203373499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195083 (n + 1) + A000007 (A127257 (n + 1)).toNat

end

end A194977.P6437539030203373499

/-! ## A194977.P16624435142907341829

`A014963(A090877(n+1))*A195083(n+1)`
-/

namespace A194977.P16624435142907341829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A090877 (n + 1)).toNat * A195083 (n + 1)

end

end A194977.P16624435142907341829

/-!
# A194978: Inverse permutation of A194977; every positive integer occurs exactly once.

The programs for A194978, there is no canonical definition to state claims against.
-/

/-! ## A194978.P6804786773366329411

`A195071(∑[char[∑[n]]]²-n)`
-/

namespace A194978.P6804786773366329411
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195071 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n)

end

end A194978.P6804786773366329411

/-! ## A194978.P10585221578023370446

`A194976(n+1)+C(comp[∑[n-1]]-n, 2)`
-/

namespace A194978.P10585221578023370446
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194976 (n + 1) + (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)).toNat 2 : ℤ)

end

end A194978.P10585221578023370446

/-! ## A194978.P10766874819979068028

`A194976(n+1)+A057944(n)`
-/

namespace A194978.P10766874819979068028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194976 (n + 1) + A057944 n

end

end A194978.P10766874819979068028

/-! ## A194978.P7137671478093659140

`A194976(n+1)+n-A002262(n)`
-/

namespace A194978.P7137671478093659140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194976 (n + 1) + ((n : ℤ) - A002262 n)

end

end A194978.P7137671478093659140

/-! ## A194978.P13142113274839181458

`A194976(n+1)+A061885(n)-n`
-/

namespace A194978.P13142113274839181458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194976 (n + 1) + (A061885 n - (n : ℤ))

end

end A194978.P13142113274839181458

/-! ## A194978.P16638444130085386864

`A194976(n+1)+A000217(A003056(n))`
-/

namespace A194978.P16638444130085386864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194976 (n + 1) + A000217 (A003056 n).toNat

end

end A194978.P16638444130085386864

/-! ## A194978.P16233767659840748669

`A194921(A038722(n+1))+A057944(n)`
-/

namespace A194978.P16233767659840748669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194921 (A038722 (n + 1)).toNat + A057944 n

end

end A194978.P16233767659840748669

/-! ## A194978.P8060971885897207759

`A194921(A061579(n)+1)+A057944(n)`
-/

namespace A194978.P8060971885897207759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194921 (A061579 n + 1).toNat + A057944 n

end

end A194978.P8060971885897207759

/-! ## A194978.P17671613854996530651

`A195071(A038722(n+1))^A178334(n)`
-/

namespace A194978.P17671613854996530651
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A195071 (A038722 (n + 1)).toNat : ℚ) ^ (A178334 n : ℤ)

end

end A194978.P17671613854996530651

/-! ## A194978.P7697632207193811644

`A195071(A038722(n+1))%A155212(n)`
-/

namespace A194978.P7697632207193811644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A195071 (A038722 (n + 1)).toNat) (A155212 n)

end

end A194978.P7697632207193811644

/-!
# A194979: a(n) = 1 + floor(n/sqrt(3)).

The programs for A194979, the canonical program `A194979.P13496315852434882943` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A194979 has offset 1).

The definition of A194979 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A097337, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A194979.P13496315852434882943

`1+A097337(n+1)`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A194979

/-- `1+A097337(n+1)` -/
def P13496315852434882943.Spec : Prop :=
  ∀ n, P13496315852434882943.a n = A194979 (n + 1)

theorem P13496315852434882943.correct : P13496315852434882943.Spec := by
  intro n
  simp only [A194979, Nat.add_sub_cancel]

end A194979

/-! ## A194979.P8862178130876662496

`ceil((n+1)/sqrt(3))`
-/

namespace A194979.P8862178130876662496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 1 : ℝ) / Real.sqrt (3 : ℝ)⌉

end

end A194979.P8862178130876662496

namespace A194979

/-- `ceil((n+1)/sqrt(3))` -/
def P8862178130876662496.Spec : Prop :=
  ∀ n, P8862178130876662496.a n = A194979 (n + 1)

end A194979

/-! ## A194979.P1363457619542509582

`(floor((n+1)/sqrt(3))+1)%(n+9)`
-/

namespace A194979.P1363457619542509582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (⌊(n + 1 : ℝ) / Real.sqrt (3 : ℝ)⌋ + 1) (n + 9 : ℤ)

end

end A194979.P1363457619542509582

namespace A194979

/-- `(floor((n+1)/sqrt(3))+1)%(n+9)` -/
def P1363457619542509582.Spec : Prop :=
  ∀ n, P1363457619542509582.a n = A194979 (n + 1)

end A194979

/-! ## A194979.P16166271196400897401

`floor(a(n-1)+((n+1)/a(n-1))²/3)` with `a(0)=1`
-/

namespace A194979.P16166271196400897401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌊(a (n - 1) : ℚ) + ((n + 1 : ℚ) / (a (n - 1) : ℚ)) ^ 2 / 3⌋

end

end A194979.P16166271196400897401

namespace A194979

/-- `floor(a(n-1)+((n+1)/a(n-1))²/3)` -/
def P16166271196400897401.Spec : Prop :=
  ∀ n, P16166271196400897401.a n = A194979 (n + 1)

end A194979

/-! ## A194979.P14788354111434922171

`A186539(n+1)-n`
-/

namespace A194979.P14788354111434922171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186539 (n + 1) - (n : ℤ)

end

end A194979.P14788354111434922171

namespace A194979

/-- `A186539(n+1)-n` -/
def P14788354111434922171.Spec : Prop :=
  ∀ n, P14788354111434922171.a n = A194979 (n + 1)

end A194979

/-! ## A194979.P14047556717361101740

`floor(sqrt(A032765(n)))+1`
-/

namespace A194979.P14047556717361101740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A032765 n) + 1

end

end A194979.P14047556717361101740

namespace A194979

/-- `floor(sqrt(A032765(n)))+1` -/
def P14047556717361101740.Spec : Prop :=
  ∀ n, P14047556717361101740.a n = A194979 (n + 1)

end A194979

/-! ## A194979.P365427445197827644

`∑[char[comp[A054406(n+1)]]]`
-/

namespace A194979.P365427445197827644
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054406 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194979.P365427445197827644

namespace A194979

/-- `∑[char[comp[A054406(n+1)]]]` -/
def P365427445197827644.Spec : Prop :=
  ∀ n, (P365427445197827644.a n : ℤ) = A194979 (n + 1)

end A194979

/-! ## A194979.P13277380675106162292

`1-A183142(n+1)+n`
-/

namespace A194979.P13277380675106162292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A183142 (n + 1) + (n : ℤ)

end

end A194979.P13277380675106162292

namespace A194979

/-- `1-A183142(n+1)+n` -/
def P13277380675106162292.Spec : Prop :=
  ∀ n, P13277380675106162292.a n = A194979 (n + 1)

end A194979

/-! ## A194979.P11925970201702123109

`2-A195072(n+1)+n`
-/

namespace A194979.P11925970201702123109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A195072 (n + 1) + (n : ℤ)

end

end A194979.P11925970201702123109

namespace A194979

/-- `2-A195072(n+1)+n` -/
def P11925970201702123109.Spec : Prop :=
  ∀ n, P11925970201702123109.a n = A194979 (n + 1)

end A194979

/-! ## A194979.P14196418341771752943

`∑[char[A022838(n+1)]]+1`
-/

namespace A194979.P14196418341771752943
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022838 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A194979.P14196418341771752943

namespace A194979

/-- `∑[char[A022838(n+1)]]+1` -/
def P14196418341771752943.Spec : Prop :=
  ∀ n, (P14196418341771752943.a n : ℤ) = A194979 (n + 1)

end A194979

/-! ## A194979.P18109337707230829933

`A182771(n+1)-Δ[n²]`
-/

namespace A194979.P18109337707230829933
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182771 (n + 1) - ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A194979.P18109337707230829933

namespace A194979

/-- `A182771(n+1)-Δ[n²]` -/
def P18109337707230829933.Spec : Prop :=
  ∀ n, P18109337707230829933.a n = A194979 (n + 1)

end A194979

/-! ## A194979.P15525543255270846218

`comp[A180122(n+1)]+1-n`
-/

namespace A194979.P15525543255270846218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180122 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) + (1 - (n : ℤ))

end

end A194979.P15525543255270846218

namespace A194979

/-- `comp[A180122(n+1)]+1-n` -/
def P15525543255270846218.Spec : Prop :=
  ∀ n, P15525543255270846218.a n = A194979 (n + 1)

end A194979

/-! ## A194979.P16908640880261429335

`(A188073(n+1)-(n+1))/2`
-/

namespace A194979.P16908640880261429335
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A188073 (n + 1) - (n + 1 : ℤ) : ℚ) / 2

end

end A194979.P16908640880261429335

namespace A194979

/-- `(A188073(n+1)-(n+1))/2` -/
def P16908640880261429335.Spec : Prop :=
  ∀ n, P16908640880261429335.a n = (A194979 (n + 1) : ℚ)

end A194979

/-! ## A194979.P10430633520807548046

`(A188085(n+1)-(n-1))/2`
-/

namespace A194979.P10430633520807548046
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A188085 (n + 1) - ((n : ℤ) - 1) : ℚ) / 2

end

end A194979.P10430633520807548046

namespace A194979

/-- `(A188085(n+1)-(n-1))/2` -/
def P10430633520807548046.Spec : Prop :=
  ∀ n, P10430633520807548046.a n = (A194979 (n + 1) : ℚ)

end A194979

/-! ## A194979.P367715808779807485

`2*n+3-A195129(n+1)`
-/

namespace A194979.P367715808779807485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 3 : ℤ) - A195129 (n + 1)

end

end A194979.P367715808779807485

namespace A194979

/-- `2*n+3-A195129(n+1)` -/
def P367715808779807485.Spec : Prop :=
  ∀ n, P367715808779807485.a n = A194979 (n + 1)

end A194979

/-! ## A194979.P7842846974280704179

`a(n-1)+1-A285684(n)` with `a(0)=1`
-/

namespace A194979.P7842846974280704179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (1 - A285684 n)

end

end A194979.P7842846974280704179

namespace A194979

/-- `a(n-1)+1-A285684(n)` -/
def P7842846974280704179.Spec : Prop :=
  ∀ n, P7842846974280704179.a n = A194979 (n + 1)

end A194979

/-! ## A194979.P8080664273691368841

`2-A215781(a(n-1))+n` with `a(0)=1`
-/

namespace A194979.P8080664273691368841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 - A215781 (a (n - 1)).toNat + (n : ℤ)

end

end A194979.P8080664273691368841

namespace A194979

/-- `2-A215781(a(n-1))+n` -/
def P8080664273691368841.Spec : Prop :=
  ∀ n, P8080664273691368841.a n = A194979 (n + 1)

end A194979

/-! ## A194979.P9109027130107096524

`A206908(n+1)-A004767(n)`
-/

namespace A194979.P9109027130107096524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206908 (n + 1) - A004767 n

end

end A194979.P9109027130107096524

namespace A194979

/-- `A206908(n+1)-A004767(n)` -/
def P9109027130107096524.Spec : Prop :=
  ∀ n, P9109027130107096524.a n = A194979 (n + 1)

end A194979

/-! ## A194979.P11716259471014194324

`∑[A000034(Δ[A195129(n)])]-n`
-/

namespace A194979.P11716259471014194324
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195129 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A194979.P11716259471014194324

namespace A194979

/-- `∑[A000034(Δ[A195129(n)])]-n` -/
def P11716259471014194324.Spec : Prop :=
  ∀ n, P11716259471014194324.a n = A194979 (n + 1)

end A194979

/-!
# A194980: Fractalization of (1+[n/sqrt(3)]), where [ ]=floor.

The programs for A194980, there is no canonical definition to state claims against.
-/

/-! ## A194980.P14627583857438958127

`A195073(n+3-A053186(2*n+3))`
-/

namespace A194980.P14627583857438958127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195073 ((n + 3 : ℤ) - A053186 (2 * n + 3)).toNat

end

end A194980.P14627583857438958127

/-! ## A194980.P8358692250663191893

`A195073(∑[2*n]%A080036(n)+1)`
-/

namespace A194980.P8358692250663191893
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195073 (Int.tmod ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) (A080036 n) + 1).toNat

end

end A194980.P8358692250663191893

/-! ## A194980.P1111055681383876317

`A195073(A061579(n%A013619(n))+1)`
-/

namespace A194980.P1111055681383876317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195073 (A061579 (Int.tmod (n : ℤ) (A013619 n)).toNat + 1).toNat

end

end A194980.P1111055681383876317

/-! ## A194980.P10630424414457810051

`A195073(gcd(A038722(n+1), A198954(n)))`
-/

namespace A194980.P10630424414457810051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195073 (Int.gcd (A038722 (n + 1)) (A198954 n))

end

end A194980.P10630424414457810051

/-! ## A194980.P16030464243802700364

`A195073(A038722(n+1)%A060092(n+2))`
-/

namespace A194980.P16030464243802700364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195073 (Int.tmod (A038722 (n + 1)) (A060092 (n + 2))).toNat

end

end A194980.P16030464243802700364

/-! ## A194980.P11073048366876890020

`A195073(A038722(n+1)^A178487(A002262(n)))`
-/

namespace A194980.P11073048366876890020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195073 (SequenceMachineLib.roundAway ((A038722 (n + 1) : ℚ) ^ (A178487 (A002262 n).toNat : ℤ))).toNat

end

end A194980.P11073048366876890020

/-! ## A194980.P10988426686816735503

`A195073(∑[char[∑[n]]]²-n)`
-/

namespace A194980.P10988426686816735503
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195073 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n)

end

end A194980.P10988426686816735503

/-! ## A194980.P4720181925851894015

`A195073(A038722(n+1))%14`
-/

namespace A194980.P4720181925851894015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A195073 (A038722 (n + 1)).toNat) 14

end

end A194980.P4720181925851894015

/-! ## A194980.P7338367095676878423

`lcm(A097807(n), A195073(A038722(n+1)))`
-/

namespace A194980.P7338367095676878423
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A097807 n) (A195073 (A038722 (n + 1)).toNat)

end

end A194980.P7338367095676878423

/-! ## A194980.P10713293248647641693

`or(A151878(n), A195073(A038722(n+1)))`
-/

namespace A194980.P10713293248647641693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A151878 n) (A195073 (A038722 (n + 1)).toNat)

end

end A194980.P10713293248647641693

/-!
# A194981: Interspersion fractally induced by A194979, a rectangular array, by antidiagonals.

The programs for A194981, there is no canonical definition to state claims against.
-/

/-! ## A194981.P6602697501052370031

`∑[char[∑[n]]]²+1-A194988(n+1)`
-/

namespace A194981.P6602697501052370031
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) + (1 - A194988 (n + 1))

end

end A194981.P6602697501052370031

/-! ## A194981.P920704839573446597

`A038722(A194988(n+1))`
-/

namespace A194981.P920704839573446597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038722 (A194988 (n + 1)).toNat

end

end A194981.P920704839573446597

/-! ## A194981.P7335278978369871308

`A061579(A194988(n+1)-1)+1`
-/

namespace A194981.P7335278978369871308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061579 (A194988 (n + 1) - 1).toNat + 1

end

end A194981.P7335278978369871308

/-! ## A194981.P4441561477213294271

`A265129(n+1)-A194988(n+1)`
-/

namespace A194981.P4441561477213294271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265129 (n + 1) - A194988 (n + 1)

end

end A194981.P4441561477213294271

/-! ## A194981.P12826367059461840727

`∑[A198954(n)]+1-A194988(n+1)`
-/

namespace A194981.P12826367059461840727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198954 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1 - A194988 (n + 1)

end

end A194981.P12826367059461840727

/-! ## A194981.P10090060437883465737

`A057944(n)+A004736(A194988(n+1))`
-/

namespace A194981.P10090060437883465737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057944 n + A004736 (A194988 (n + 1)).toNat

end

end A194981.P10090060437883465737

/-! ## A194981.P12201440187368575622

`A093995(n+1)-A023443(A194988(n+1))`
-/

namespace A194981.P12201440187368575622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093995 (n + 1) - A023443 (A194988 (n + 1)).toNat

end

end A194981.P12201440187368575622

/-! ## A194981.P926081080937527573

`A057027(A194982(A057027(n+1)))`
-/

namespace A194981.P926081080937527573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057027 (A194982 (A057027 (n + 1)).toNat).toNat

end

end A194981.P926081080937527573

/-! ## A194981.P2627607956703678748

`A194969(A194982(A194969(n+1)))`
-/

namespace A194981.P2627607956703678748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194969 (A194982 (A194969 (n + 1)).toNat).toNat

end

end A194981.P2627607956703678748

/-!
# A194982: Inverse permutation to A194981; every positive integer occurs exactly once.

The programs for A194982, there is no canonical definition to state claims against.
-/

/-! ## A194982.P2213253518185961064

`A194980(n+1)+C(∑[char[∑[n]]], 2)`
-/

namespace A194982.P2213253518185961064
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194980 (n + 1) + (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ)

end

end A194982.P2213253518185961064

/-! ## A194982.P546586273989355680

`A194980(n+1)+A057944(n)`
-/

namespace A194982.P546586273989355680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194980 (n + 1) + A057944 n

end

end A194982.P546586273989355680

/-! ## A194982.P8169494240533227483

`A194980(n+1)+n-A002262(n)`
-/

namespace A194982.P8169494240533227483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194980 (n + 1) + ((n : ℤ) - A002262 n)

end

end A194982.P8169494240533227483

/-! ## A194982.P14282261727585508009

`A194980(n+1)-A025668(n+1)+n`
-/

namespace A194982.P14282261727585508009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194980 (n + 1) - A025668 (n + 1) + (n : ℤ)

end

end A194982.P14282261727585508009

/-! ## A194982.P13380737639830643581

`A194980(n+1)+n+1-A002260(n+1)`
-/

namespace A194982.P13380737639830643581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194980 (n + 1) + ((n + 1 : ℤ) - A002260 (n + 1))

end

end A194982.P13380737639830643581

/-! ## A194982.P2086737336110949883

`A194980(n+1)-A349520(2*n+1)+n+1`
-/

namespace A194982.P2086737336110949883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194980 (n + 1) - A349520 (2 * n + 1) + (n + 1 : ℤ)

end

end A194982.P2086737336110949883

/-! ## A194982.P9799639700844826379

`A194980(n+1)+A000217(A003056(n))`
-/

namespace A194982.P9799639700844826379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194980 (n + 1) + A000217 (A003056 n).toNat

end

end A194982.P9799639700844826379

/-! ## A194982.P6889183461890810635

`A194987(A038722(n+1))+A057944(n)`
-/

namespace A194982.P6889183461890810635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194987 (A038722 (n + 1)).toNat + A057944 n

end

end A194982.P6889183461890810635

/-! ## A194982.P15082909668004650141

`A194980(n+1)+A001971(A131507(n))`
-/

namespace A194982.P15082909668004650141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194980 (n + 1) + A001971 (A131507 n).toNat

end

end A194982.P15082909668004650141

/-! ## A194982.P11881651467788973775

`A238952(A137688(n))+A194980(n+1)`
-/

namespace A194982.P11881651467788973775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238952 (A137688 n).toNat + A194980 (n + 1)

end

end A194982.P11881651467788973775

/-!
# A194983: Fractalization of (1+[n/sqrt(5)]), where [ ]=floor.

The programs for A194983, there is no canonical definition to state claims against.
-/

/-! ## A194983.P17830514939941270548

`A194985(n+1)-C(∑[char[∑[n]]], 2)`
-/

namespace A194983.P17830514939941270548
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194985 (n + 1) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ)

end

end A194983.P17830514939941270548

/-! ## A194983.P966785406531921369

`A002260(A194985(n+1))`
-/

namespace A194983.P966785406531921369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A194985 (n + 1)).toNat

end

end A194983.P966785406531921369

/-! ## A194983.P8007025260151761118

`A194985(n+1)-A057944(n)`
-/

namespace A194983.P8007025260151761118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194985 (n + 1) - A057944 n

end

end A194983.P8007025260151761118

/-! ## A194983.P10899644645679149784

`A002262(A194985(n+1)-1)+1`
-/

namespace A194983.P10899644645679149784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (A194985 (n + 1) - 1).toNat + 1

end

end A194983.P10899644645679149784

/-! ## A194983.P6747276726210886013

`A131818(A194985(n+1)+1)-1`
-/

namespace A194983.P6747276726210886013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (A194985 (n + 1) + 1).toNat - 1

end

end A194983.P6747276726210886013

/-! ## A194983.P6040071144106825273

`A004739(A194985(n+1)+A057944(n))`
-/

namespace A194983.P6040071144106825273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004739 (A194985 (n + 1) + A057944 n).toNat

end

end A194983.P6040071144106825273

/-! ## A194983.P337173063271445557

`A144328(A194985(n+1))+A023532(n)`
-/

namespace A194983.P337173063271445557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (A194985 (n + 1)).toNat + A023532 n

end

end A194983.P337173063271445557

/-! ## A194983.P8479605584637447504

`A194985(n+1)-A000217(A003056(n))`
-/

namespace A194983.P8479605584637447504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194985 (n + 1) - A000217 (A003056 n).toNat

end

end A194983.P8479605584637447504

/-! ## A194983.P14700664003168341033

`A194985(n+1)-A001971(A131507(n))`
-/

namespace A194983.P14700664003168341033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194985 (n + 1) - A001971 (A131507 n).toNat

end

end A194983.P14700664003168341033

/-! ## A194983.P12978738774417187477

`A002262(A194985(n+1)+A002024(n+1))`
-/

namespace A194983.P12978738774417187477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (A194985 (n + 1) + A002024 (n + 1)).toNat

end

end A194983.P12978738774417187477

/-!
# A194984: Interspersion fractally induced by A194964, a rectangular array, by antidiagonals.

The programs for A194984, there is no canonical definition to state claims against.
-/

/-! ## A194984.P10773111314327923133

`xor(A059399(n+1), A123594(C(n, 64)+3))`
-/

namespace A194984.P10773111314327923133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A059399 (n + 1)) (A123594 (Nat.choose n 64 + 3))

end

end A194984.P10773111314327923133

/-! ## A194984.P5656550570562320901

`A194988(A194985(A194988(n+1)))`
-/

namespace A194984.P5656550570562320901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194988 (A194985 (A194988 (n + 1)).toNat).toNat

end

end A194984.P5656550570562320901

/-! ## A194984.P11547387066575056194

`A059399(A111123(C(n, 64))+n)`
-/

namespace A194984.P11547387066575056194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059399 (A111123 (Nat.choose n 64) + (n : ℤ)).toNat

end

end A194984.P11547387066575056194

/-! ## A194984.P17475981179387537310

`A059399(A000045(C(n, 64))+n+1)`
-/

namespace A194984.P17475981179387537310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059399 (A000045 (Nat.choose n 64) + (n + 1 : ℤ)).toNat

end

end A194984.P17475981179387537310

/-! ## A194984.P9069204046394528912

`or(A059399(n+1), A298271(C(n, 64)))`
-/

namespace A194984.P9069204046394528912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A059399 (n + 1)) (A298271 (Nat.choose n 64))

end

end A194984.P9069204046394528912

/-! ## A194984.P16827255142800928683

`A059399(n+1)+A001222(3^C(n, 64)²)`
-/

namespace A194984.P16827255142800928683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059399 (n + 1) + A001222 (3 ^ Nat.choose n 64 ^ 2)

end

end A194984.P16827255142800928683

/-! ## A194984.P15899091894294716293

`A059399(n+1)+A023969(3^C(n, 64)²)`
-/

namespace A194984.P15899091894294716293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059399 (n + 1) + A023969 (3 ^ Nat.choose n 64 ^ 2)

end

end A194984.P15899091894294716293

/-! ## A194984.P6790517645829121268

`or(A008851(3^C(n, 64)²), A059399(n+1))`
-/

namespace A194984.P6790517645829121268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A008851 (3 ^ Nat.choose n 64 ^ 2)) (A059399 (n + 1))

end

end A194984.P6790517645829121268

/-! ## A194984.P3143576156977406627

`A059399(n+1)+log2(A000002(3^C(n, 64)²))`
-/

namespace A194984.P3143576156977406627
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A059399 (n + 1) : ℝ) + Real.logb 2 (A000002 (3 ^ Nat.choose n 64 ^ 2) : ℝ)

end

end A194984.P3143576156977406627

/-! ## A194984.P8803125143838733625

`A230363(3^C(n, 64)²)+A059399(n+1)-1`
-/

namespace A194984.P8803125143838733625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230363 (3 ^ Nat.choose n 64 ^ 2) + (A059399 (n + 1) - 1)

end

end A194984.P8803125143838733625

/-!
# A194985: Inverse permutation of A194984; every positive integer occurs exactly once.

The programs for A194985, there is no canonical definition to state claims against.
-/

/-! ## A194985.P13338908172123530365

`A194983(n+1)+C(∑[char[∑[n]]], 2)`
-/

namespace A194985.P13338908172123530365
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194983 (n + 1) + (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ)

end

end A194985.P13338908172123530365

/-! ## A194985.P16643797859268957669

`A194983(n+1)+A057944(n)`
-/

namespace A194985.P16643797859268957669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194983 (n + 1) + A057944 n

end

end A194985.P16643797859268957669

/-! ## A194985.P5911830938827725436

`A194983(n+1)+n-A002262(n)`
-/

namespace A194985.P5911830938827725436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194983 (n + 1) + ((n : ℤ) - A002262 n)

end

end A194985.P5911830938827725436

/-! ## A194985.P1523275236816316911

`A194983(n+1)+A061885(n)-n`
-/

namespace A194985.P1523275236816316911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194983 (n + 1) + (A061885 n - (n : ℤ))

end

end A194985.P1523275236816316911

/-! ## A194985.P9200447007731745673

`A194983(n+1)+∑[A130296(n+1)-1]`
-/

namespace A194985.P9200447007731745673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130296 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194983 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194985.P9200447007731745673

/-! ## A194985.P17303280006451736596

`1-A002260(n+1)+A194983(n+1)+n`
-/

namespace A194985.P17303280006451736596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A002260 (n + 1) + (A194983 (n + 1) + (n : ℤ))

end

end A194985.P17303280006451736596

/-! ## A194985.P16842443045958519259

`A194983(n+1)+A000217(A003056(n))`
-/

namespace A194985.P16842443045958519259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194983 (n + 1) + A000217 (A003056 n).toNat

end

end A194985.P16842443045958519259

/-! ## A194985.P3704407643571653043

`A194983(n+1)+A001971(A131507(n))`
-/

namespace A194985.P3704407643571653043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194983 (n + 1) + A001971 (A131507 n).toNat

end

end A194985.P3704407643571653043

/-! ## A194985.P17270970435379965284

`A194983(n+1)+A161680(A002024(n+1))`
-/

namespace A194985.P17270970435379965284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194983 (n + 1) + A161680 (A002024 (n + 1)).toNat

end

end A194985.P17270970435379965284

/-! ## A194985.P4747590407256773606

`A194916(n+1)+A194983(n+1)-A194914(n+1)`
-/

namespace A194985.P4747590407256773606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194916 (n + 1) + (A194983 (n + 1) - A194914 (n + 1))

end

end A194985.P4747590407256773606

/-!
# A194986: a(n) = 1 + floor(n/sqrt(6)).

The programs for A194986, the canonical program `A194986.P11879444513191672628` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A194986 has offset 1).

The definition of A194986 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A194986.P9344469396475689551

`ceil((n+1)/sqrt(6))`
-/

namespace A194986.P9344469396475689551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 1 : ℝ) / Real.sqrt (6 : ℝ)⌉

end

end A194986.P9344469396475689551

namespace A194986

/-- `ceil((n+1)/sqrt(6))` -/
def P9344469396475689551.Spec : Prop :=
  ∀ n, P9344469396475689551.a n = A194986 (n + 1)

end A194986

/-! ## A194986.P14911183770745617391

`∑[char[comp[A138235(n+1)]]]`
-/

namespace A194986.P14911183770745617391
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138235 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194986.P14911183770745617391

namespace A194986

/-- `∑[char[comp[A138235(n+1)]]]` -/
def P14911183770745617391.Spec : Prop :=
  ∀ n, (P14911183770745617391.a n : ℤ) = A194986 (n + 1)

end A194986

/-! ## A194986.P3909762398929174343

`A285686(n)+a(n-1)` with `a(0)=1`
-/

namespace A194986.P3909762398929174343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A285686 n + a (n - 1)

end

end A194986.P3909762398929174343

namespace A194986

/-- `A285686(n)+a(n-1)` -/
def P3909762398929174343.Spec : Prop :=
  ∀ n, P3909762398929174343.a n = A194986 (n + 1)

end A194986

/-! ## A194986.P17073805140289235260

`∑[char[A022840(n+1)]]+1`
-/

namespace A194986.P17073805140289235260
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022840 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A194986.P17073805140289235260

namespace A194986

/-- `∑[char[A022840(n+1)]]+1` -/
def P17073805140289235260.Spec : Prop :=
  ∀ n, (P17073805140289235260.a n : ℤ) = A194986 (n + 1)

end A194986

/-! ## A194986.P4351678699621270892

`∑[char[A277644(2*(n+1))]]+1`
-/

namespace A194986.P4351678699621270892
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277644 (2 * (n + 1))

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A194986.P4351678699621270892

namespace A194986

/-- `∑[char[A277644(2*(n+1))]]+1` -/
def P4351678699621270892.Spec : Prop :=
  ∀ n, (P4351678699621270892.a n : ℤ) = A194986 (n + 1)

end A194986

/-! ## A194986.P16330816658739638621

`floor(sqrt(A000292(n)/(n+1)))+1`
-/

namespace A194986.P16330816658739638621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt ((A000292 n : ℚ) / (n + 1 : ℚ) : ℝ)⌋ + 1

end

end A194986.P16330816658739638621

namespace A194986

/-- `floor(sqrt(A000292(n)/(n+1)))+1` -/
def P16330816658739638621.Spec : Prop :=
  ∀ n, P16330816658739638621.a n = A194986 (n + 1)

end A194986

/-! ## A194986.P11879444513191672628

`A008619(A171974(n+1))`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A194986

/-- `A008619(A171974(n+1))` -/
def P11879444513191672628.Spec : Prop :=
  ∀ n, P11879444513191672628.a n = A194986 (n + 1)

theorem P11879444513191672628.correct : P11879444513191672628.Spec := by
  intro n
  simp only [A194986, Nat.add_sub_cancel]

end A194986

/-! ## A194986.P13714501310121160245

`A065033(A171974(n+1)+1)`
-/

namespace A194986.P13714501310121160245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A171974 (n + 1) + 1).toNat

end

end A194986.P13714501310121160245

namespace A194986

/-- `A065033(A171974(n+1)+1)` -/
def P13714501310121160245.Spec : Prop :=
  ∀ n, P13714501310121160245.a n = A194986 (n + 1)

end A194986

/-! ## A194986.P17317641601311234437

`A110654(A171974(n+1)+1)`
-/

namespace A194986.P17317641601311234437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A171974 (n + 1) + 1).toNat

end

end A194986.P17317641601311234437

namespace A194986

/-- `A110654(A171974(n+1)+1)` -/
def P17317641601311234437.Spec : Prop :=
  ∀ n, P17317641601311234437.a n = A194986 (n + 1)

end A194986

/-! ## A194986.P5367999717547281891

`A123108(A171974(n+1)+2)`
-/

namespace A194986.P5367999717547281891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (A171974 (n + 1) + 2).toNat

end

end A194986.P5367999717547281891

namespace A194986

/-- `A123108(A171974(n+1)+2)` -/
def P5367999717547281891.Spec : Prop :=
  ∀ n, P5367999717547281891.a n = A194986 (n + 1)

end A194986

/-! ## A194986.P5352457509844635686

`A004526(A184808(n+1)+1-n)`
-/

namespace A194986.P5352457509844635686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A184808 (n + 1) + (1 - (n : ℤ))).toNat

end

end A194986.P5352457509844635686

namespace A194986

/-- `A004526(A184808(n+1)+1-n)` -/
def P5352457509844635686.Spec : Prop :=
  ∀ n, P5352457509844635686.a n = A194986 (n + 1)

end A194986

/-! ## A194986.P5161154669191590000

`A172476(n+1)+1`
-/

namespace A194986.P5161154669191590000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172476 (n + 1) + 1

end

end A194986.P5161154669191590000

namespace A194986

/-- `A172476(n+1)+1` -/
def P5161154669191590000.Spec : Prop :=
  ∀ n, P5161154669191590000.a n = A194986 (n + 1)

end A194986

/-! ## A194986.P5646609264668129319

`floor(sqrt(A056827(n+1)))+1`
-/

namespace A194986.P5646609264668129319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A056827 (n + 1)) + 1

end

end A194986.P5646609264668129319

namespace A194986

/-- `floor(sqrt(A056827(n+1)))+1` -/
def P5646609264668129319.Spec : Prop :=
  ∀ n, P5646609264668129319.a n = A194986 (n + 1)

end A194986

/-! ## A194986.P8827012012741314090

`A008620(A277644(n+1))`
-/

namespace A194986.P8827012012741314090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (A277644 (n + 1)).toNat

end

end A194986.P8827012012741314090

namespace A194986

/-- `A008620(A277644(n+1))` -/
def P8827012012741314090.Spec : Prop :=
  ∀ n, P8827012012741314090.a n = A194986 (n + 1)

end A194986

/-! ## A194986.P5671459669217429498

`Δ[A022790(n+1)]`
-/

namespace A194986.P5671459669217429498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022790 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A194986.P5671459669217429498

namespace A194986

/-- `Δ[A022790(n+1)]` -/
def P5671459669217429498.Spec : Prop :=
  ∀ n, P5671459669217429498.a n = A194986 (n + 1)

end A194986

/-! ## A194986.P785800634694176057

`A022790(n+2)-A022790(n+1)`
-/

namespace A194986.P785800634694176057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022790 (n + 2) - A022790 (n + 1)

end

end A194986.P785800634694176057

namespace A194986

/-- `A022790(n+2)-A022790(n+1)` -/
def P785800634694176057.Spec : Prop :=
  ∀ n, P785800634694176057.a n = A194986 (n + 1)

end A194986

/-! ## A194986.P16109838131375716580

`2*A184809(n+1)-A184808(A184809(n+1))`
-/

namespace A194986.P16109838131375716580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A184809 (n + 1) - A184808 (A184809 (n + 1)).toNat

end

end A194986.P16109838131375716580

namespace A194986

/-- `2*A184809(n+1)-A184808(A184809(n+1))` -/
def P16109838131375716580.Spec : Prop :=
  ∀ n, P16109838131375716580.a n = A194986 (n + 1)

end A194986

/-! ## A194986.P1596862031037779842

`A097992(A022840(n+1))`
-/

namespace A194986.P1596862031037779842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097992 (A022840 (n + 1)).toNat

end

end A194986.P1596862031037779842

namespace A194986

/-- `A097992(A022840(n+1))` -/
def P1596862031037779842.Spec : Prop :=
  ∀ n, P1596862031037779842.a n = A194986 (n + 1)

end A194986

/-! ## A194986.P15380691201719723836

`A097992(A198083(n+1)-1)`
-/

namespace A194986.P15380691201719723836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097992 (A198083 (n + 1) - 1).toNat

end

end A194986.P15380691201719723836

namespace A194986

/-- `A097992(A198083(n+1)-1)` -/
def P15380691201719723836.Spec : Prop :=
  ∀ n, P15380691201719723836.a n = A194986 (n + 1)

end A194986

/-! ## A194986.P13892265355798107748

`A101776(A069905(n+1))`
-/

namespace A194986.P13892265355798107748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101776 (A069905 (n + 1)).toNat

end

end A194986.P13892265355798107748

namespace A194986

/-- `A101776(A069905(n+1))` -/
def P13892265355798107748.Spec : Prop :=
  ∀ n, P13892265355798107748.a n = A194986 (n + 1)

end A194986

/-!
# A194987: Fractalization of (1+[n/sqrt(6)]), where [ ]=floor.

The programs for A194987, there is no canonical definition to state claims against.
-/

/-! ## A194987.P3998693797771320388

`A195073(n+1)+A185238(A047996(n))`
-/

namespace A194987.P3998693797771320388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195073 (n + 1) + A185238 (A047996 n).toNat

end

end A194987.P3998693797771320388

/-! ## A194987.P5535252623738058459

`A195073(A002262(∑[4*(n+1)]))`
-/

namespace A194987.P5535252623738058459
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195073 (A002262 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A194987.P5535252623738058459

/-! ## A194987.P3646088756289274468

`A195073(A003983(∑[4*(n+1)]))`
-/

namespace A194987.P3646088756289274468
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195073 (A003983 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A194987.P3646088756289274468

/-! ## A194987.P9386535415061566164

`A195073(A053616(∑[4*(n+1)]))`
-/

namespace A194987.P9386535415061566164
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195073 (A053616 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A194987.P9386535415061566164

/-! ## A194987.P10884761277634339752

`A195073(n+1)%A213954(n+2)`
-/

namespace A194987.P10884761277634339752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A195073 (n + 1)) (A213954 (n + 2))

end

end A194987.P10884761277634339752

/-! ## A194987.P13616044150395074068

`and(1, A224658(n+1))*A195073(n+1)`
-/

namespace A194987.P13616044150395074068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A224658 (n + 1)) * A195073 (n + 1)

end

end A194987.P13616044150395074068

/-! ## A194987.P15530923245234802852

`A108357(2*(n+1)²)*A195073(n+1)`
-/

namespace A194987.P15530923245234802852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108357 (2 * (n + 1) ^ 2) * A195073 (n + 1)

end

end A194987.P15530923245234802852

/-! ## A194987.P11016093813112065993

`A002260(A194989(n+1))`
-/

namespace A194987.P11016093813112065993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A194989 (n + 1)).toNat

end

end A194987.P11016093813112065993

/-! ## A194987.P7303892091601655403

`A194989(n+1)-A057944(n)`
-/

namespace A194987.P7303892091601655403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194989 (n + 1) - A057944 n

end

end A194987.P7303892091601655403

/-! ## A194987.P524136723799273891

`A195073(A000142(n+1)/A000142(n))`
-/

namespace A194987.P524136723799273891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195073 (SequenceMachineLib.roundAway ((A000142 (n + 1) : ℚ) / (A000142 n : ℚ))).toNat

end

end A194987.P524136723799273891

/-!
# A194988: Interspersion fractally induced by A194987, a rectangular array, by antidiagonals.

The programs for A194988, there is no canonical definition to state claims against.
-/

/-! ## A194988.P15178132446492033089

`∑[char[∑[n]]]²+1-A194981(n+1)`
-/

namespace A194988.P15178132446492033089
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) + (1 - A194981 (n + 1))

end

end A194988.P15178132446492033089

/-! ## A194988.P16910132338173378827

`A038722(A194981(n+1))`
-/

namespace A194988.P16910132338173378827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038722 (A194981 (n + 1)).toNat

end

end A194988.P16910132338173378827

/-! ## A194988.P2396009728502610005

`A061579(A194981(n+1)-1)+1`
-/

namespace A194988.P2396009728502610005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061579 (A194981 (n + 1) - 1).toNat + 1

end

end A194988.P2396009728502610005

/-! ## A194988.P7579722684846481130

`A265129(n+1)-A194981(n+1)`
-/

namespace A194988.P7579722684846481130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265129 (n + 1) - A194981 (n + 1)

end

end A194988.P7579722684846481130

/-! ## A194988.P15648945723538480072

`∑[A198954(n)]+1-A194981(n+1)`
-/

namespace A194988.P15648945723538480072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198954 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1 - A194981 (n + 1)

end

end A194988.P15648945723538480072

/-! ## A194988.P10360600620428763226

`A093995(n+1)+1-A194981(n+1)`
-/

namespace A194988.P10360600620428763226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093995 (n + 1) + 1 - A194981 (n + 1)

end

end A194988.P10360600620428763226

/-! ## A194988.P6112755367171184819

`A057944(n)+A004736(A194981(n+1))`
-/

namespace A194988.P6112755367171184819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057944 n + A004736 (A194981 (n + 1)).toNat

end

end A194988.P6112755367171184819

/-! ## A194988.P1064747050537278659

`A004736(n+1)+n+1-A002260(A194981(n+1))`
-/

namespace A194988.P1064747050537278659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1) + ((n + 1 : ℤ) - A002260 (A194981 (n + 1)).toNat)

end

end A194988.P1064747050537278659

/-! ## A194988.P5733213565199253136

`A056023(A056011(A057027(A194982(A057027(n+1)))))`
-/

namespace A194988.P5733213565199253136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056023 (A056011 (A057027 (A194982 (A057027 (n + 1)).toNat).toNat).toNat).toNat

end

end A194988.P5733213565199253136

/-! ## A194988.P18328733972687382504

`A194918(A194989(A194918(n+1)))`
-/

namespace A194988.P18328733972687382504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194918 (A194989 (A194918 (n + 1)).toNat).toNat

end

end A194988.P18328733972687382504

/-!
# A194989: Inverse permutation of A194988; every positive integer occurs exactly once.

The programs for A194989, there is no canonical definition to state claims against.
-/

/-! ## A194989.P177970091409379854

`A195073(n+1)+C(∑[char[∑[n]]], 2)`
-/

namespace A194989.P177970091409379854
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195073 (n + 1) + (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ)

end

end A194989.P177970091409379854

/-! ## A194989.P12134016147300707427

`A194987(n+1)+A057944(n)`
-/

namespace A194989.P12134016147300707427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194987 (n + 1) + A057944 n

end

end A194989.P12134016147300707427

/-! ## A194989.P12245534763637116958

`A195073(n+1)+A057944(n)`
-/

namespace A194989.P12245534763637116958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195073 (n + 1) + A057944 n

end

end A194989.P12245534763637116958

/-! ## A194989.P8624047169258173873

`A194987(n+1)+n-A002262(n)`
-/

namespace A194989.P8624047169258173873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194987 (n + 1) + ((n : ℤ) - A002262 n)

end

end A194989.P8624047169258173873

/-! ## A194989.P17856580193922115894

`A195073(n+1)+n-A002262(n)`
-/

namespace A194989.P17856580193922115894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195073 (n + 1) + ((n : ℤ) - A002262 n)

end

end A194989.P17856580193922115894

/-! ## A194989.P9451400665486962657

`A194987(n+1)+A061885(n)-n`
-/

namespace A194989.P9451400665486962657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194987 (n + 1) + (A061885 n - (n : ℤ))

end

end A194989.P9451400665486962657

/-! ## A194989.P7605919834399220264

`A194987(n+1)+n+1-A002260(n+1)`
-/

namespace A194989.P7605919834399220264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194987 (n + 1) + ((n + 1 : ℤ) - A002260 (n + 1))

end

end A194989.P7605919834399220264

/-! ## A194989.P16664288085043555104

`A194980(A278818(n))+A057944(n)`
-/

namespace A194989.P16664288085043555104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194980 (A278818 n).toNat + A057944 n

end

end A194989.P16664288085043555104

/-! ## A194989.P2080459401662502247

`A194987(n+1)+A000217(A003056(n))`
-/

namespace A194989.P2080459401662502247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194987 (n + 1) + A000217 (A003056 n).toNat

end

end A194989.P2080459401662502247

/-! ## A194989.P6744488485995769392

`A195073(n+1)+A000217(A003056(n))`
-/

namespace A194989.P6744488485995769392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195073 (n + 1) + A000217 (A003056 n).toNat

end

end A194989.P6744488485995769392

/-!
# A194990: a(n) = 1+ floor(n/sqrt(8)).

The programs for A194990, the canonical program `A194990.P2509885675336948499` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A194990 has offset 1).

The definition of A194990 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A194990.P17147290031176449700

`ceil((n+1)/sqrt(8))`
-/

namespace A194990.P17147290031176449700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 1 : ℝ) / Real.sqrt (8 : ℝ)⌉

end

end A194990.P17147290031176449700

namespace A194990

/-- `ceil((n+1)/sqrt(8))` -/
def P17147290031176449700.Spec : Prop :=
  ∀ n, P17147290031176449700.a n = A194990 (n + 1)

end A194990

/-! ## A194990.P10331500253630326236

`∑[char[A001951(2*n)]]`
-/

namespace A194990.P10331500253630326236
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001951 (2 * n)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A194990.P10331500253630326236

namespace A194990

/-- `∑[char[A001951(2*n)]]` -/
def P10331500253630326236.Spec : Prop :=
  ∀ n, (P10331500253630326236.a n : ℤ) = A194990 (n + 1)

end A194990

/-! ## A194990.P2509885675336948499

`round(A049474(n+1)/2)`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A194990

/-- `round(A049474(n+1)/2)` -/
def P2509885675336948499.Spec : Prop :=
  ∀ n, P2509885675336948499.a n = A194990 (n + 1)

theorem P2509885675336948499.correct : P2509885675336948499.Spec := by
  intro n
  simp only [A194990, Nat.add_sub_cancel]

end A194990

/-! ## A194990.P17820024777563662902

`A286655(n)+a(n-1)` with `a(0)=1`
-/

namespace A194990.P17820024777563662902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A286655 n + a (n - 1)

end

end A194990.P17820024777563662902

namespace A194990

/-- `A286655(n)+a(n-1)` -/
def P17820024777563662902.Spec : Prop :=
  ∀ n, P17820024777563662902.a n = A194990 (n + 1)

end A194990

/-! ## A194990.P15847636819697975441

`∑[char[A022842(n+1)]]+1`
-/

namespace A194990.P15847636819697975441
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022842 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A194990.P15847636819697975441

namespace A194990

/-- `∑[char[A022842(n+1)]]+1` -/
def P15847636819697975441.Spec : Prop :=
  ∀ n, (P15847636819697975441.a n : ℤ) = A194990 (n + 1)

end A194990

/-! ## A194990.P13064493859663900693

`round((A003152(n+1)-n)/2)`
-/

namespace A194990.P13064493859663900693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A003152 (n + 1) - (n : ℤ) : ℚ) / 2)

end

end A194990.P13064493859663900693

namespace A194990

/-- `round((A003152(n+1)-n)/2)` -/
def P13064493859663900693.Spec : Prop :=
  ∀ n, P13064493859663900693.a n = A194990 (n + 1)

end A194990

/-! ## A194990.P2161534124285040664

`floor(∑[A188295(n+1)]/2)+1`
-/

namespace A194990.P2161534124285040664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188295 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2⌋ + 1

end

end A194990.P2161534124285040664

namespace A194990

/-- `floor(∑[A188295(n+1)]/2)+1` -/
def P2161534124285040664.Spec : Prop :=
  ∀ n, P2161534124285040664.a n = A194990 (n + 1)

end A194990

/-! ## A194990.P3225137658301783947

`A008619(A049472(n+1))`
-/

namespace A194990.P3225137658301783947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A049472 (n + 1)).toNat

end

end A194990.P3225137658301783947

namespace A194990

/-- `A008619(A049472(n+1))` -/
def P3225137658301783947.Spec : Prop :=
  ∀ n, P3225137658301783947.a n = A194990 (n + 1)

end A194990

/-! ## A194990.P13709272806706953812

`A065033(A049474(n+1))`
-/

namespace A194990.P13709272806706953812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A049474 (n + 1)).toNat

end

end A194990.P13709272806706953812

namespace A194990

/-- `A065033(A049474(n+1))` -/
def P13709272806706953812.Spec : Prop :=
  ∀ n, P13709272806706953812.a n = A194990 (n + 1)

end A194990

/-! ## A194990.P3117264870962105699

`A004526(A049474(n+1)+1)`
-/

namespace A194990.P3117264870962105699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A049474 (n + 1) + 1).toNat

end

end A194990.P3117264870962105699

namespace A194990

/-- `A004526(A049474(n+1)+1)` -/
def P3117264870962105699.Spec : Prop :=
  ∀ n, P3117264870962105699.a n = A194990 (n + 1)

end A194990

/-! ## A194990.P10081449382831058671

`A110654(A049472(n+1)+1)`
-/

namespace A194990.P10081449382831058671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A049472 (n + 1) + 1).toNat

end

end A194990.P10081449382831058671

namespace A194990

/-- `A110654(A049472(n+1)+1)` -/
def P10081449382831058671.Spec : Prop :=
  ∀ n, P10081449382831058671.a n = A194990 (n + 1)

end A194990

/-! ## A194990.P8729901951630166409

`A008619(A049474(n+1)-1)`
-/

namespace A194990.P8729901951630166409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A049474 (n + 1) - 1).toNat

end

end A194990.P8729901951630166409

namespace A194990

/-- `A008619(A049474(n+1)-1)` -/
def P8729901951630166409.Spec : Prop :=
  ∀ n, P8729901951630166409.a n = A194990 (n + 1)

end A194990

/-! ## A194990.P8297038067406162018

`A004526(A080755(n+1)-n)`
-/

namespace A194990.P8297038067406162018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A080755 (n + 1) - (n : ℤ)).toNat

end

end A194990.P8297038067406162018

namespace A194990

/-- `A004526(A080755(n+1)-n)` -/
def P8297038067406162018.Spec : Prop :=
  ∀ n, P8297038067406162018.a n = A194990 (n + 1)

end A194990

/-! ## A194990.P17482500532708102207

`A110654(A003152(n+1)-n)`
-/

namespace A194990.P17482500532708102207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A003152 (n + 1) - (n : ℤ)).toNat

end

end A194990.P17482500532708102207

namespace A194990

/-- `A110654(A003152(n+1)-n)` -/
def P17482500532708102207.Spec : Prop :=
  ∀ n, P17482500532708102207.a n = A194990 (n + 1)

end A194990

/-! ## A194990.P1319564998647128566

`A004526(A003152(n+1)+1-n)`
-/

namespace A194990.P1319564998647128566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A003152 (n + 1) + (1 - (n : ℤ))).toNat

end

end A194990.P1319564998647128566

namespace A194990

/-- `A004526(A003152(n+1)+1-n)` -/
def P1319564998647128566.Spec : Prop :=
  ∀ n, P1319564998647128566.a n = A194990 (n + 1)

end A194990

/-! ## A194990.P7785579652244536271

`A008619(A003152(n+1)-(n+1))`
-/

namespace A194990.P7785579652244536271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A003152 (n + 1) - (n + 1 : ℤ)).toNat

end

end A194990.P7785579652244536271

namespace A194990

/-- `A008619(A003152(n+1)-(n+1))` -/
def P7785579652244536271.Spec : Prop :=
  ∀ n, P7785579652244536271.a n = A194990 (n + 1)

end A194990

/-! ## A194990.P12981927719907333225

`A004526(n-A183138(n+1))+1`
-/

namespace A194990.P12981927719907333225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 ((n : ℤ) - A183138 (n + 1)).toNat + 1

end

end A194990.P12981927719907333225

namespace A194990

/-- `A004526(n-A183138(n+1))+1` -/
def P12981927719907333225.Spec : Prop :=
  ∀ n, P12981927719907333225.a n = A194990 (n + 1)

end A194990

/-! ## A194990.P562236098447702657

`A008619(1-A194920(n+1)+n)`
-/

namespace A194990.P562236098447702657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (1 - A194920 (n + 1) + (n : ℤ)).toNat

end

end A194990.P562236098447702657

namespace A194990

/-- `A008619(1-A194920(n+1)+n)` -/
def P562236098447702657.Spec : Prop :=
  ∀ n, P562236098447702657.a n = A194990 (n + 1)

end A194990

/-! ## A194990.P220134705656539683

`∑[A286655(n+1)]+1-A286655(n+1)`
-/

namespace A194990.P220134705656539683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286655 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A286655 (n + 1))

end

end A194990.P220134705656539683

namespace A194990

/-- `∑[A286655(n+1)]+1-A286655(n+1)` -/
def P220134705656539683.Spec : Prop :=
  ∀ n, P220134705656539683.a n = A194990 (n + 1)

end A194990

/-! ## A194990.P12301138940087986606

`A172474(n+1)+1`
-/

namespace A194990.P12301138940087986606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172474 (n + 1) + 1

end

end A194990.P12301138940087986606

namespace A194990

/-- `A172474(n+1)+1` -/
def P12301138940087986606.Spec : Prop :=
  ∀ n, P12301138940087986606.a n = A194990 (n + 1)

end A194990

/-!
# A194991: Primes whose squares are odious.

The programs for A194991, the canonical program `A194991.P2956389845314371910` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A194991 has offset 1).

The definition of A194991 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3380 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A194991.P2956389845314371910

`p?[n*A228039(n)]`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A194991

/-- `p?[n*A228039(n)]` -/
def P2956389845314371910.Spec : Prop :=
  ∀ n, P2956389845314371910.a n = A194991 (n + 1)

theorem P2956389845314371910.correct : P2956389845314371910.Spec := by
  intro n
  simp only [A194991, Nat.add_sub_cancel]

end A194991

/-! ## A194991.P2377815428973693563

`filter[A000040(n+1), A228039(#)]`
-/

namespace A194991.P2377815428973693563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A228039 (f1 j).toNat = 1) n)

end

end A194991.P2377815428973693563

namespace A194991

/-- `filter[A000040(n+1), A228039(#)]` -/
def P2377815428973693563.Spec : Prop :=
  ∀ n, P2377815428973693563.a n = A194991 (n + 1)

end A194991

/-! ## A194991.P1209163808258139541

`filter[A045344(n+1), A228039(#)]`
-/

namespace A194991.P1209163808258139541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A228039 (f1 j).toNat = 1) n)

end

end A194991.P1209163808258139541

namespace A194991

/-- `filter[A045344(n+1), A228039(#)]` -/
def P1209163808258139541.Spec : Prop :=
  ∀ n, P1209163808258139541.a n = A194991 (n + 1)

end A194991

/-! ## A194991.P7781562273187984590

`filter[A116974(n+1), A228039(#)]`
-/

namespace A194991.P7781562273187984590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116974 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A228039 (f1 j).toNat = 1) n)

end

end A194991.P7781562273187984590

namespace A194991

/-- `filter[A116974(n+1), A228039(#)]` -/
def P7781562273187984590.Spec : Prop :=
  ∀ n, P7781562273187984590.a n = A194991 (n + 1)

end A194991

/-! ## A194991.P9876694799029647480

`filter[A182986(n+1), A228039(#)]`
-/

namespace A194991.P9876694799029647480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A228039 (f1 j).toNat = 1) n)

end

end A194991.P9876694799029647480

namespace A194991

/-- `filter[A182986(n+1), A228039(#)]` -/
def P9876694799029647480.Spec : Prop :=
  ∀ n, P9876694799029647480.a n = A194991 (n + 1)

end A194991

/-! ## A194991.P13643698351841758379

`filter[A008578(n+2), A228039(#)]`
-/

namespace A194991.P13643698351841758379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A228039 (f1 j).toNat = 1) n)

end

end A194991.P13643698351841758379

namespace A194991

/-- `filter[A008578(n+2), A228039(#)]` -/
def P13643698351841758379.Spec : Prop :=
  ∀ n, P13643698351841758379.a n = A194991 (n + 1)

end A194991

/-! ## A194991.P15274560087484171981

`filter[A158611(n+3), A228039(#)]`
-/

namespace A194991.P15274560087484171981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A228039 (f1 j).toNat = 1) n)

end

end A194991.P15274560087484171981

namespace A194991

/-- `filter[A158611(n+3), A228039(#)]` -/
def P15274560087484171981.Spec : Prop :=
  ∀ n, P15274560087484171981.a n = A194991 (n + 1)

end A194991

/-! ## A194991.P15047287636743221316

`filter[A067747(2*n+1), A228039(#)]`
-/

namespace A194991.P15047287636743221316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067747 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A228039 (f1 j).toNat = 1) n)

end

end A194991.P15047287636743221316

namespace A194991

/-- `filter[A067747(2*n+1), A228039(#)]` -/
def P15047287636743221316.Spec : Prop :=
  ∀ n, P15047287636743221316.a n = A194991 (n + 1)

end A194991

/-! ## A194991.P15004474016183769376

`filter[A109763(2*n+1), A228039(#)]`
-/

namespace A194991.P15004474016183769376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109763 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A228039 (f1 j).toNat = 1) n)

end

end A194991.P15004474016183769376

namespace A194991

/-- `filter[A109763(2*n+1), A228039(#)]` -/
def P15004474016183769376.Spec : Prop :=
  ∀ n, P15004474016183769376.a n = A194991 (n + 1)

end A194991

/-! ## A194991.P12772580897276172831

`p?[A235331(n+1)]`
-/

namespace A194991.P12772580897276172831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235331 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A194991.P12772580897276172831

namespace A194991

/-- `p?[A235331(n+1)]` -/
def P12772580897276172831.Spec : Prop :=
  ∀ n, P12772580897276172831.a n = A194991 (n + 1)

end A194991

/-! ## A194991.P10590599773469674754

`record[A006530(A235331(n+2))]`
-/

namespace A194991.P10590599773469674754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A235331 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A194991.P10590599773469674754

namespace A194991

/-- `record[A006530(A235331(n+2))]` -/
def P10590599773469674754.Spec : Prop :=
  ∀ n, P10590599773469674754.a n = A194991 (n + 1)

end A194991

/-! ## A194991.P7038991156171200336

`record[A020639(A235331(n+3))]`
-/

namespace A194991.P7038991156171200336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A235331 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A194991.P7038991156171200336

namespace A194991

/-- `record[A020639(A235331(n+3))]` -/
def P7038991156171200336.Spec : Prop :=
  ∀ n, P7038991156171200336.a n = A194991 (n + 1)

end A194991

/-! ## A194991.P8852678408268079729

`filter[A235331(n+1), A010051(#)]`
-/

namespace A194991.P8852678408268079729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235331 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A194991.P8852678408268079729

namespace A194991

/-- `filter[A235331(n+1), A010051(#)]` -/
def P8852678408268079729.Spec : Prop :=
  ∀ n, P8852678408268079729.a n = A194991 (n + 1)

end A194991

/-! ## A194991.P13342079404712641235

`∩[A000040(n+1), A235331(n+1)]`
-/

namespace A194991.P13342079404712641235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235331 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A194991.P13342079404712641235

namespace A194991

/-- `∩[A000040(n+1), A235331(n+1)]` -/
def P13342079404712641235.Spec : Prop :=
  ∀ n, (P13342079404712641235.a n : ℤ) = A194991 (n + 1)

end A194991

/-! ## A194991.P18424046914230118129

`∩[A045344(n+1), A235331(n+1)]`
-/

namespace A194991.P18424046914230118129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235331 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A194991.P18424046914230118129

namespace A194991

/-- `∩[A045344(n+1), A235331(n+1)]` -/
def P18424046914230118129.Spec : Prop :=
  ∀ n, (P18424046914230118129.a n : ℤ) = A194991 (n + 1)

end A194991

/-! ## A194991.P2768652613626876399

`∩[A116974(n+1), A235331(n+1)]`
-/

namespace A194991.P2768652613626876399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116974 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235331 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A194991.P2768652613626876399

namespace A194991

/-- `∩[A116974(n+1), A235331(n+1)]` -/
def P2768652613626876399.Spec : Prop :=
  ∀ n, (P2768652613626876399.a n : ℤ) = A194991 (n + 1)

end A194991

/-! ## A194991.P15576578311714810563

`∩[A182986(n+1), A235331(n+1)]`
-/

namespace A194991.P15576578311714810563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235331 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A194991.P15576578311714810563

namespace A194991

/-- `∩[A182986(n+1), A235331(n+1)]` -/
def P15576578311714810563.Spec : Prop :=
  ∀ n, (P15576578311714810563.a n : ℤ) = A194991 (n + 1)

end A194991

/-! ## A194991.P14404539687639728820

`eq[A072721(n), A228039(n)]`
-/

namespace A194991.P14404539687639728820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072721 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228039 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A194991.P14404539687639728820

namespace A194991

/-- `eq[A072721(n), A228039(n)]` -/
def P14404539687639728820.Spec : Prop :=
  ∀ n, (P14404539687639728820.a n : ℤ) = A194991 (n + 1)

end A194991

/-! ## A194991.P16336760959793959300

`eq[A210442(n), A228039(n)]`
-/

namespace A194991.P16336760959793959300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210442 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228039 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A194991.P16336760959793959300

namespace A194991

/-- `eq[A210442(n), A228039(n)]` -/
def P16336760959793959300.Spec : Prop :=
  ∀ n, (P16336760959793959300.a n : ℤ) = A194991 (n + 1)

end A194991

/-!
# A194992: Number of lower triangles of an n X n 0..2 array with each element differing from all of its horizontal and vertical neighbors by one.

The programs for A194992, there is no canonical definition to state claims against.
-/

/-! ## A194992.P11889862048587600904

`abs(Δ[∏[-A016116(n+1)]])`
-/

namespace A194992.P11889862048587600904
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A016116 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A194992.P11889862048587600904

/-! ## A194992.P2434321896851796176

`A060656(n+2)+∏[∏[3-a(n-1)]]` with `a(0)=1`
-/

namespace A194992.P2434321896851796176
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  3 - f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060656 (n + 2) + ∏ j ∈ Finset.range (n + 1), f1 j

end

end A194992.P2434321896851796176

/-! ## A194992.P16029458108718015997

`∏[A060546(n)]*A051032(n+2)`
-/

namespace A194992.P16029458108718015997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060546 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) * A051032 (n + 2)

end

end A194992.P16029458108718015997

/-! ## A194992.P17398074062754301027

`∏[A016116(n)]*A005418(n+3)`
-/

namespace A194992.P17398074062754301027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) * A005418 (n + 3)

end

end A194992.P17398074062754301027

/-! ## A194992.P7143721149489515647

`A060656(n+1)+A060656(n+2)`
-/

namespace A194992.P7143721149489515647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060656 (n + 1) + A060656 (n + 2)

end

end A194992.P7143721149489515647

/-!
# A194993: Number of lower triangles of an n X n 0..3 array with each element differing from all of its horizontal and vertical neighbors by one.

The programs for A194993, there is no canonical definition to state claims against.
-/

/-! ## A194993.P4185129206155468364

`A194998(∑[n+3]+1)`
-/

namespace A194993.P4185129206155468364
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194998 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A194993.P4185129206155468364

/-! ## A194993.P12142709349341557294

`2*A180998(n+3)`
-/

namespace A194993.P12142709349341557294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A180998 (n + 3)

end

end A194993.P12142709349341557294

/-! ## A194993.P14398120866988403781

`A180998(n+3)/abs(A008683(A005117(n+1))/2)`
-/

namespace A194993.P14398120866988403781
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A180998 (n + 3) : ℚ) / |(A008683 (A005117 (n + 1)).toNat : ℚ) / 2|

end

end A194993.P14398120866988403781

/-! ## A194993.P15391391321809984898

`A180998(n+3)+A180998(n+3)+A000045(n)%-1`
-/

namespace A194993.P15391391321809984898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180998 (n + 3) + (A180998 (n + 3) + Int.tmod (A000045 n) (-1))

end

end A194993.P15391391321809984898

/-! ## A194993.P14147079270518644602

`A105221(A216771(n+1))+A180998(n+3)+A180998(n+3)`
-/

namespace A194993.P14147079270518644602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105221 (A216771 (n + 1)).toNat + (A180998 (n + 3) + A180998 (n + 3))

end

end A194993.P14147079270518644602

/-!
# A194994: Number of lower triangles of an n X n 0..4 array with each element differing from all of its horizontal and vertical neighbors by one.

The programs for A194994, there is no canonical definition to state claims against.
-/

/-! ## A194994.P338361021606260914

`A194998(A141214(n+1))`
-/

namespace A194994.P338361021606260914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194998 (A141214 (n + 1)).toNat

end

end A194994.P338361021606260914

/-! ## A194994.P6366161642271001129

`A194998(A155212(n)+5)`
-/

namespace A194994.P6366161642271001129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194998 (A155212 n + 5).toNat

end

end A194994.P6366161642271001129

/-! ## A194994.P306027977153140513

`A194998(A056000(n)+7)`
-/

namespace A194994.P306027977153140513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194998 (A056000 n + 7).toNat

end

end A194994.P306027977153140513

/-! ## A194994.P5674287071811320803

`A194998(eq[3, A193592(n)])`
-/

namespace A194994.P5674287071811320803
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194998 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A194994.P5674287071811320803

/-! ## A194994.P15102223620725761500

`A194998(Δ[A034857(n+1)])`
-/

namespace A194994.P15102223620725761500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034857 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194998 (f1 (n + 1) - f1 n).toNat

end

end A194994.P15102223620725761500

/-!
# A194995: Number of lower triangles of an n X n 0..5 array with each element differing from all of its horizontal and vertical neighbors by one.

The programs for A194995, there is no canonical definition to state claims against.
-/

/-! ## A194995.P426260728762136039

`A194998(Δ[A264443(n)])`
-/

namespace A194995.P426260728762136039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194998 (f1 (n + 1) - f1 n).toNat

end

end A194995.P426260728762136039

/-! ## A194995.P11014682389208965930

`A194998(A056115(n)+11)`
-/

namespace A194995.P11014682389208965930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194998 (A056115 n + 11).toNat

end

end A194995.P11014682389208965930

/-! ## A194995.P10373902860353688739

`A194998(eq[2, A092921(n)])`
-/

namespace A194995.P10373902860353688739
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092921 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194998 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A194995.P10373902860353688739

/-! ## A194995.P13433453849531267991

`A194998(eq[4, A193592(n)])`
-/

namespace A194995.P13433453849531267991
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194998 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A194995.P13433453849531267991

/-! ## A194995.P17010538832318285143

`A194998(Δ[A023545(n+1)])`
-/

namespace A194995.P17010538832318285143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194998 (f1 (n + 1) - f1 n).toNat

end

end A194995.P17010538832318285143

/-!
# A194996: Number of lower triangles of an n X n 0..6 array with each element differing from all of its horizontal and vertical neighbors by one.

The programs for A194996, there is no canonical definition to state claims against.
-/

/-! ## A194996.P8528811918062813555

`A194998(eq[3, A219347(n)])`
-/

namespace A194996.P8528811918062813555
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194998 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A194996.P8528811918062813555

/-! ## A194996.P3999915113825114813

`A194998(eq[5, A193592(n)])`
-/

namespace A194996.P3999915113825114813
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194998 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A194996.P3999915113825114813

/-! ## A194996.P18215182764736856209

`A194998(eq[8, A258709(n)])`
-/

namespace A194996.P18215182764736856209
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258709 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194998 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A194996.P18215182764736856209

/-! ## A194996.P15926930364941241422

`A194998(eq[8, A185782(n+1)])`
-/

namespace A194996.P15926930364941241422
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194998 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A194996.P15926930364941241422

/-! ## A194996.P4049244226293662704

`A194998(Δ[Δ[A006504(n+1)]])`
-/

namespace A194996.P4049244226293662704
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006504 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194998 (f1 (n + 1) - f1 n).toNat

end

end A194996.P4049244226293662704

/-!
# A194997: Number of lower triangles of an n X n 0..7 array with each element differing from all of its horizontal and vertical neighbors by one.

The programs for A194997, there is no canonical definition to state claims against.
-/

/-! ## A194997.P4340803731450143414

`A194998(eq[4, A219347(n)])`
-/

namespace A194997.P4340803731450143414
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194998 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A194997.P4340803731450143414

/-! ## A194997.P14977097568388524373

`A194998(eq[6, A193592(n)])`
-/

namespace A194997.P14977097568388524373
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194998 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A194997.P14977097568388524373

/-! ## A194997.P2468040970200931578

`A194998(eq[10, A185782(n+1)])`
-/

namespace A194997.P2468040970200931578
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194998 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A194997.P2468040970200931578

/-! ## A194997.P5560041052946342469

`A194998(eq[32, A057728(n+1)])`
-/

namespace A194997.P5560041052946342469
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  32

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057728 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194998 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A194997.P5560041052946342469

/-! ## A194997.P2058043988063812087

`A194998(eq[7, A200370(n+1)])`
-/

namespace A194997.P2058043988063812087
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194998 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A194997.P2058043988063812087

/-!
# A194998: T(n,k)=Number of lower triangles of an n X n 0..k array with each element differing from all of its horizontal and vertical neighbors by one.

The programs for A194998, there is no canonical definition to state claims against.
-/

/-! ## A194998.P377931514498209035

`A273866(A116469(n+1))+A188211(n+2)`
-/

namespace A194998.P377931514498209035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273866 (A116469 (n + 1)).toNat + A188211 (n + 2)

end

end A194998.P377931514498209035

/-!
# A194999: Number of lower triangles of a 3 X 3 0..n array with each element differing from all of its horizontal and vertical neighbors by one.

The programs for A194999, the canonical program `A194999.P38311086543029073` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A194999 has offset 1).

The definition of A194999 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A194999.P38311086543029073

`a(n-1)+24` with `a(0)=2, a(1)=20, a(2)=42`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A194999

/-- `a(n-1)+24` -/
def P38311086543029073.Spec : Prop :=
  ∀ n, (P38311086543029073.a n : ℤ) = A194999 (n + 1)

theorem P38311086543029073.correct : P38311086543029073.Spec := by
  intro n
  simp only [A194999, Nat.add_sub_cancel]

end A194999

