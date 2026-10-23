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
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C039
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
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A137900: Number of partitions of 2*n into distinct products of at least two consecutive positive integers.

The programs for A137900, there is no canonical definition to state claims against.
-/

/-! ## A137900.P14330145194542902402

`A347578(A240808(n)%A069176(n+1))`
-/

namespace A137900.P14330145194542902402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347578 (Int.tmod (A240808 n) (A069176 (n + 1))).toNat

end

end A137900.P14330145194542902402

/-! ## A137900.P3426862476005415838

`A025837(A010051(A011782(n))+n)`
-/

namespace A137900.P3426862476005415838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025837 (A010051 (A011782 n).toNat + (n : ℤ)).toNat

end

end A137900.P3426862476005415838

/-! ## A137900.P2686269379062964998

`A025837(n)+A000007(A035085(n))`
-/

namespace A137900.P2686269379062964998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025837 n + A000007 (A035085 n).toNat

end

end A137900.P2686269379062964998

/-! ## A137900.P16390956550623196366

`gcd(A010815(A145906(3*n)), A025904(2*n))`
-/

namespace A137900.P16390956550623196366
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A010815 (A145906 (3 * n)).toNat) (A025904 (2 * n))

end

end A137900.P16390956550623196366

/-! ## A137900.P7341099419511958207

`A025837(A016079(A018151(n))+n)`
-/

namespace A137900.P7341099419511958207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025837 (A016079 (A018151 n).toNat + (n : ℤ)).toNat

end

end A137900.P7341099419511958207

/-!
# A137901: Limiting sequence when we start with positive integers (A000027) and at step n >= 1 add to the term at position n + a(n) the value 1.

The programs for A137901, there is no canonical definition to state claims against.
-/

/-! ## A137901.P3796970431625952481

`eq[1, (1-a(floor(n/2))+n)%2]-(n+1)` with `a(0)=0`
-/

namespace A137901.P3796970431625952481
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f2 =>
  Int.tmod (1 - f2 ⌊(n : ℚ) / 2⌋.toNat + (n : ℤ)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) - (n + 1 : ℤ)

end

end A137901.P3796970431625952481

/-! ## A137901.P3221678538217080400

`A122497(n+1)+n`
-/

namespace A137901.P3221678538217080400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122497 (n + 1) + (n : ℤ)

end

end A137901.P3221678538217080400

/-! ## A137901.P6970527148016762610

`lt[A242179(n), 0]-n`
-/

namespace A137901.P6970527148016762610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242179 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n : ℤ) - (n : ℤ)

end

end A137901.P6970527148016762610

/-! ## A137901.P12118825055076773386

`∑[Δ[A059009(n)]-1]`
-/

namespace A137901.P12118825055076773386
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059009 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A137901.P12118825055076773386

/-! ## A137901.P1041703021069952588

`round(A059009(n+1)/2)`
-/

namespace A137901.P1041703021069952588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A059009 (n + 1) : ℚ) / 2)

end

end A137901.P1041703021069952588

/-! ## A137901.P5476377046057046569

`comp[A059010(n)-1]-n`
-/

namespace A137901.P5476377046057046569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059010 n - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)

end

end A137901.P5476377046057046569

/-! ## A137901.P3124631135476736735

`gcd(2, ∑[A091090(n)])+n`
-/

namespace A137901.P3124631135476736735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091090 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (∑ j ∈ Finset.range (n + 1), f1 j) + n

end

end A137901.P3124631135476736735

/-! ## A137901.P7768433548875224377

`A059448(n+1)+1+n`
-/

namespace A137901.P7768433548875224377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059448 (n + 1) + 1 + (n : ℤ)

end

end A137901.P7768433548875224377

/-! ## A137901.P7358667525065305372

`2-A298952(n+1)+n`
-/

namespace A137901.P7358667525065305372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A298952 (n + 1) + (n : ℤ)

end

end A137901.P7358667525065305372

/-!
# A137904: Rows 1, 3, 5, 7 of Mendeleyev-Seaborg (extended to 32 columns) periodic table elements.

The programs for A137904, there is no canonical definition to state claims against.
-/

/-! ## A137904.P3757482433462452176

`A138101(n+1)-2`
-/

namespace A137904.P3757482433462452176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138101 (n + 1) - 2

end

end A137904.P3757482433462452176

/-! ## A137904.P17707934923457918215

`lt[val(A058318(n+1), 2), 1]+1`
-/

namespace A137904.P17707934923457918215
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A058318 (n + 1)).toNat 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A137904.P17707934923457918215

/-! ## A137904.P8587037837009110899

`2*n+A168142(n+1)-1`
-/

namespace A137904.P8587037837009110899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) + (A168142 (n + 1) - 1)

end

end A137904.P8587037837009110899

/-! ## A137904.P4417202230808947761

`A023444(A138101(n+1))`
-/

namespace A137904.P4417202230808947761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A138101 (n + 1)).toNat

end

end A137904.P4417202230808947761

/-! ## A137904.P5098118101907588147

`eq[1, A278111(A080513(n))]`
-/

namespace A137904.P5098118101907588147
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278111 (A080513 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A137904.P5098118101907588147

/-! ## A137904.P3674257574735860336

`A023447(A138101(n+1)+3)`
-/

namespace A137904.P3674257574735860336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023447 (A138101 (n + 1) + 3).toNat

end

end A137904.P3674257574735860336

/-! ## A137904.P7985157055965775737

`eq[1, A278111(A008619(n+1))]`
-/

namespace A137904.P7985157055965775737
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278111 (A008619 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A137904.P7985157055965775737

/-! ## A137904.P12141762316108489981

`A168142(n+1)+A060747(n)`
-/

namespace A137904.P12141762316108489981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168142 (n + 1) + A060747 n

end

end A137904.P12141762316108489981

/-! ## A137904.P5878832781028423531

`A137937(n)+A137575(n+1)`
-/

namespace A137904.P5878832781028423531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137937 n + A137575 (n + 1)

end

end A137904.P5878832781028423531

/-! ## A137904.P6495147522049008677

`A168142(n+1)-A165747(n)`
-/

namespace A137904.P6495147522049008677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168142 (n + 1) - A165747 n

end

end A137904.P6495147522049008677

/-!
# A137905: Numbers that appear as binomial coefficients exactly twice.

The programs for A137905, there is no canonical definition to state claims against.
-/

/-! ## A137905.P10409307636383865972

`A185024(n+2)`
-/

namespace A137905.P10409307636383865972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185024 (n + 2)

end

end A137905.P10409307636383865972

/-! ## A137905.P3050140372308873690

`record[(n+3)/A059233(n+3)]`
-/

namespace A137905.P3050140372308873690
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℚ) / (A059233 (n + 3) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A137905.P3050140372308873690

/-! ## A137905.P5918073203146384633

`eq[2, A003016(n)]`
-/

namespace A137905.P5918073203146384633
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003016 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A137905.P5918073203146384633

/-! ## A137905.P14804447008314754842

`record[A058084(n+3)]`
-/

namespace A137905.P14804447008314754842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058084 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A137905.P14804447008314754842

/-! ## A137905.P16039911609901226521

`record[n+4-A003016(n+2)]`
-/

namespace A137905.P16039911609901226521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 4 : ℤ) - A003016 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A137905.P16039911609901226521

/-! ## A137905.P9752500493999237983

`record[A005843(n+3)/A003016(n+3)]`
-/

namespace A137905.P9752500493999237983
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005843 (n + 3) : ℚ) / (A003016 (n + 3) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A137905.P9752500493999237983

/-! ## A137905.P1631202054099995913

`lt[(2-A003016(n))², A060576(n)]`
-/

namespace A137905.P1631202054099995913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A003016 n) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060576 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A137905.P1631202054099995913

/-! ## A137905.P4312819552223216026

`record[A265912(A119629(n+2)+1)]`
-/

namespace A137905.P4312819552223216026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265912 (A119629 (n + 2) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A137905.P4312819552223216026

/-! ## A137905.P8940374890481996329

`eq[A181440(n+1), A265912(A119629(n+1))]+1`
-/

namespace A137905.P8940374890481996329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181440 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265912 (A119629 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A137905.P8940374890481996329

/-! ## A137905.P10656715581011629279

`record[log2(A355391(n+3))]`
-/

namespace A137905.P10656715581011629279
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A355391 (n + 3) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A137905.P10656715581011629279

/-!
# A137910: The game "n-Chicken" is played with a pile of n sticks. Player I may remove 1 or two sticks from the pile. Thereafter players may remove as many sticks as the opposing player removed, or one more stick than the opposing player removed or one fewer (but at least one stick). The first player without a legal move is the loser. The sequence of numbers consists of all n such that player II has a winning strategy for n-chicken.

The programs for A137910, there is no canonical definition to state claims against.
-/

/-! ## A137910.P11354443588731283637

`A000196(A006578(3*n+4)-A000203(n+3))`
-/

namespace A137910.P11354443588731283637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A006578 (3 * n + 4) - A000203 (n + 3)).toNat

end

end A137910.P11354443588731283637

/-! ## A137910.P326357666358283936

`A171970(3*n+5)-A168184(A000290(3*n+2))`
-/

namespace A137910.P326357666358283936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171970 (3 * n + 5) - A168184 (A000290 (3 * n + 2)).toNat

end

end A137910.P326357666358283936

/-! ## A137910.P10168037513985821265

`A004526(A115180(3*n+4)+A004526(3*n+4))`
-/

namespace A137910.P10168037513985821265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A115180 (3 * n + 4) + A004526 (3 * n + 4)).toNat

end

end A137910.P10168037513985821265

/-! ## A137910.P3639926858938689989

`A002024(A246046(3*n+2)+A001318(3*n+1))`
-/

namespace A137910.P3639926858938689989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A246046 (3 * n + 2) + A001318 (3 * n + 1)).toNat

end

end A137910.P3639926858938689989

/-! ## A137910.P8719648809381772988

`∑[p?[A010783(A248987(n+1))]]`
-/

namespace A137910.P8719648809381772988
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010783 (A248987 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A137910.P8719648809381772988

/-!
# A137911: Smallest of at least two consecutive numbers whose product is A045619(n).

The programs for A137911, there is no canonical definition to state claims against.
-/

/-! ## A137911.P7750995861891474480

`A325785(n+1)-A010054(A267604(n))`
-/

namespace A137911.P7750995861891474480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325785 (n + 1) - A010054 (A267604 n).toNat

end

end A137911.P7750995861891474480

/-! ## A137911.P8673166633999536074

`A325785(n+1)-A121373(A361739(n))`
-/

namespace A137911.P8673166633999536074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325785 (n + 1) - A121373 (A361739 n).toNat

end

end A137911.P8673166633999536074

/-! ## A137911.P112126399123883333

`A325785(n+1)-A010051(A042935(n)+1)`
-/

namespace A137911.P112126399123883333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325785 (n + 1) - A010051 (A042935 n + 1).toNat

end

end A137911.P112126399123883333

/-! ## A137911.P13437197448356032937

`A325785(n+1)-A136522(A092295(3*n))`
-/

namespace A137911.P13437197448356032937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325785 (n + 1) - A136522 (A092295 (3 * n)).toNat

end

end A137911.P13437197448356032937

/-!
# A137913: Rows 2, 4, 6 of Mendeleyev-Seaborg (extended to 32 columns) periodic table elements.

The programs for A137913, there is no canonical definition to state claims against.
-/

/-! ## A137913.P9207266143289569137

`A137937(n+2)`
-/

namespace A137913.P9207266143289569137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137937 (n + 2)

end

end A137913.P9207266143289569137

/-! ## A137913.P1131854877788498223

`A138100(n+3)-2`
-/

namespace A137913.P1131854877788498223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138100 (n + 3) - 2

end

end A137913.P1131854877788498223

/-! ## A137913.P15491429277190317025

`record[A137937(abs(2-n))]`
-/

namespace A137913.P15491429277190317025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137937 |2 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A137913.P15491429277190317025

/-! ## A137913.P11103195533748206416

`comp[A137904(n)-1]+1`
-/

namespace A137913.P11103195533748206416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137904 n - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A137913.P11103195533748206416

/-! ## A137913.P17573280968064460939

`∑[abs(Δ[A138100(n+2)])]`
-/

namespace A137913.P17573280968064460939
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138100 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A137913.P17573280968064460939

/-! ## A137913.P10564339502380962007

`comp[A138101(n+1)-3]+1`
-/

namespace A137913.P10564339502380962007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138101 (n + 1) - 3

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A137913.P10564339502380962007

/-! ## A137913.P8516897032529075822

`eq[1, A171712(A171710(n+2))]`
-/

namespace A137913.P8516897032529075822
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171712 (A171710 (n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A137913.P8516897032529075822

/-! ## A137913.P10473353206281972928

`A168142(A138102(n+3))+n`
-/

namespace A137913.P10473353206281972928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168142 (A138102 (n + 3)).toNat + (n : ℤ)

end

end A137913.P10473353206281972928

/-! ## A137913.P11330314515279444679

`A137904(n+2)-A137575(n+3)`
-/

namespace A137913.P11330314515279444679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137904 (n + 2) - A137575 (n + 3)

end

end A137913.P11330314515279444679

/-! ## A137913.P3459293250760743390

`A137904(n+2)-A138102(n+3)`
-/

namespace A137913.P3459293250760743390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137904 (n + 2) - A138102 (n + 3)

end

end A137913.P3459293250760743390

/-!
# A137916: Number of n-node labeled graphs whose components are unicyclic graphs.

The programs for A137916, there is no canonical definition to state claims against.
-/

/-! ## A137916.P3959294132956040055

`A144228(∑[n]+n)`
-/

namespace A137916.P3959294132956040055
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144228 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A137916.P3959294132956040055

/-! ## A137916.P17777823942897615974

`or(char[3], A144228(A000096(n)))`
-/

namespace A137916.P17777823942897615974
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A144228 (A000096 n).toNat)

end

end A137916.P17777823942897615974

/-! ## A137916.P286879511738873226

`A099594(∑[n])*A144228(A000096(n))`
-/

namespace A137916.P286879511738873226
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099594 (∑ j ∈ Finset.range (n + 1), f1 j) * A144228 (A000096 n).toNat

end

end A137916.P286879511738873226

/-! ## A137916.P7328238497082197888

`A144228(∑[n])*A144228(A000096(n))`
-/

namespace A137916.P7328238497082197888
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144228 (∑ j ∈ Finset.range (n + 1), f1 j) * A144228 (A000096 n).toNat

end

end A137916.P7328238497082197888

/-! ## A137916.P2459833325962396921

`A144228(A000096(n))+A000035(2*n)`
-/

namespace A137916.P2459833325962396921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144228 (A000096 n).toNat + A000035 (2 * n)

end

end A137916.P2459833325962396921

/-! ## A137916.P14228729188197484841

`A007318(A000217(n+6))*A144228(A000096(n))`
-/

namespace A137916.P14228729188197484841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A000217 (n + 6)).toNat * A144228 (A000096 n).toNat

end

end A137916.P14228729188197484841

/-! ## A137916.P6403284777212422047

`A368924(∑[n])`
-/

namespace A137916.P6403284777212422047
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368924 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A137916.P6403284777212422047

/-!
# A137917: a(n) is the number of unlabeled graphs on n nodes whose components are unicyclic graphs.

The programs for A137917, there is no canonical definition to state claims against.
-/

/-! ## A137917.P15294284412341279631

`A368926(∑[n])`
-/

namespace A137917.P15294284412341279631
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368926 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A137917.P15294284412341279631

/-! ## A137917.P8738759297544579508

`A001434(n)-A369201(n)`
-/

namespace A137917.P8738759297544579508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001434 n - A369201 n

end

end A137917.P8738759297544579508

/-! ## A137917.P17828244464719697351

`and(-1, A368926(A000217(n)))`
-/

namespace A137917.P17828244464719697351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A368926 (A000217 n).toNat)

end

end A137917.P17828244464719697351

/-! ## A137917.P18185086131684239358

`A368926(A000217(n))%A000302(n+4)`
-/

namespace A137917.P18185086131684239358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A368926 (A000217 n).toNat) (A000302 (n + 4))

end

end A137917.P18185086131684239358

/-! ## A137917.P16533145309182593496

`A368926(A000217(n))+A111983(3*n+2)`
-/

namespace A137917.P16533145309182593496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368926 (A000217 n).toNat + A111983 (3 * n + 2)

end

end A137917.P16533145309182593496

/-! ## A137917.P8807161894968276771

`A054977(A009891(n))*A368926(A000217(n))`
-/

namespace A137917.P8807161894968276771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 (A009891 n).toNat * A368926 (A000217 n).toNat

end

end A137917.P8807161894968276771

/-!
# A137919: (Nextprime(24n)-previousprime(24n))/2.

The programs for A137919, the canonical program `A137919.P9332456221901038334` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A137919 has offset 1).

The definition of A137919 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A137919.P9332456221901038334

`A135368(2*(n+1))`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A137919

/-- `A135368(2*(n+1))` -/
def P9332456221901038334.Spec : Prop :=
  ∀ n, P9332456221901038334.a n = A137919 (n + 1)

theorem P9332456221901038334.correct : P9332456221901038334.Spec := by
  intro n
  simp only [A137919, Nat.add_sub_cancel]

end A137919

/-! ## A137919.P17174774095464283794

`A000027(A135368(n+2+n))`
-/

namespace A137919.P17174774095464283794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A135368 (n + 2 + n)).toNat

end

end A137919.P17174774095464283794

namespace A137919

/-- `A000027(A135368(n+2+n))` -/
def P17174774095464283794.Spec : Prop :=
  ∀ n, P17174774095464283794.a n = A137919 (n + 1)

end A137919

/-! ## A137919.P8889655576341323301

`or(A000007(n), A135368(n+2+n))`
-/

namespace A137919.P8889655576341323301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A135368 (n + 2 + n))

end

end A137919.P8889655576341323301

namespace A137919

/-- `or(A000007(n), A135368(n+2+n))` -/
def P8889655576341323301.Spec : Prop :=
  ∀ n, P8889655576341323301.a n = A137919 (n + 1)

end A137919

/-! ## A137919.P10481826062333079641

`∑{d}[A135368(n+2+n), A000010(#)]`
-/

namespace A137919.P10481826062333079641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135368 (n + 2 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A137919.P10481826062333079641

namespace A137919

/-- `∑{d}[A135368(n+2+n), A000010(#)]` -/
def P10481826062333079641.Spec : Prop :=
  ∀ n, P10481826062333079641.a n = A137919 (n + 1)

end A137919

/-! ## A137919.P12853622260268704394

`lcm(Δ[A008611(n)], A135368(n+2+n))`
-/

namespace A137919.P12853622260268704394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (f1 (n + 1) - f1 n) (A135368 (n + 2 + n))

end

end A137919.P12853622260268704394

namespace A137919

/-- `lcm(Δ[A008611(n)], A135368(n+2+n))` -/
def P12853622260268704394.Spec : Prop :=
  ∀ n, (P12853622260268704394.a n : ℤ) = A137919 (n + 1)

end A137919

/-! ## A137919.P17085368675466654438

`or(char[A000110(n)], A135368(n+2+n))`
-/

namespace A137919.P17085368675466654438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000110 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A135368 (n + 2 + n))

end

end A137919.P17085368675466654438

namespace A137919

/-- `or(char[A000110(n)], A135368(n+2+n))` -/
def P17085368675466654438.Spec : Prop :=
  ∀ n, P17085368675466654438.a n = A137919 (n + 1)

end A137919

/-! ## A137919.P17964965126282748345

`A135368(n+2+n)+A000007(n+1)`
-/

namespace A137919.P17964965126282748345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135368 (n + 2 + n) + A000007 (n + 1)

end

end A137919.P17964965126282748345

namespace A137919

/-- `A135368(n+2+n)+A000007(n+1)` -/
def P17964965126282748345.Spec : Prop :=
  ∀ n, P17964965126282748345.a n = A137919 (n + 1)

end A137919

/-! ## A137919.P2369715922832392490

`A135368(n+2+n)/A001065(A006530(n+2))`
-/

namespace A137919.P2369715922832392490
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A135368 (n + 2 + n) : ℚ) / (A001065 (A006530 (n + 2)).toNat : ℚ)

end

end A137919.P2369715922832392490

namespace A137919

/-- `A135368(n+2+n)/A001065(A006530(n+2))` -/
def P2369715922832392490.Spec : Prop :=
  ∀ n, P2369715922832392490.a n = (A137919 (n + 1) : ℚ)

end A137919

/-! ## A137919.P9750638200620578023

`A060267(12*(n+1))/2`
-/

namespace A137919.P9750638200620578023
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A060267 (12 * (n + 1)) : ℚ) / 2

end

end A137919.P9750638200620578023

namespace A137919

/-- `A060267(12*(n+1))/2` -/
def P9750638200620578023.Spec : Prop :=
  ∀ n, P9750638200620578023.a n = (A137919 (n + 1) : ℚ)

end A137919

/-! ## A137919.P16022472506010850098

`A033559(24*(n+1))`
-/

namespace A137919.P16022472506010850098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033559 (24 * (n + 1))

end

end A137919.P16022472506010850098

namespace A137919

/-- `A033559(24*(n+1))` -/
def P16022472506010850098.Spec : Prop :=
  ∀ n, P16022472506010850098.a n = A137919 (n + 1)

end A137919

/-! ## A137919.P132052394495477439

`A013633(24*(n+1))/2`
-/

namespace A137919.P132052394495477439
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A013633 (24 * (n + 1)) : ℚ) / 2

end

end A137919.P132052394495477439

namespace A137919

/-- `A013633(24*(n+1))/2` -/
def P132052394495477439.Spec : Prop :=
  ∀ n, P132052394495477439.a n = (A137919 (n + 1) : ℚ)

end A137919

/-! ## A137919.P6712587458504195363

`A135023(4*(n+1))`
-/

namespace A137919.P6712587458504195363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135023 (4 * (n + 1))

end

end A137919.P6712587458504195363

namespace A137919

/-- `A135023(4*(n+1))` -/
def P6712587458504195363.Spec : Prop :=
  ∀ n, P6712587458504195363.a n = A137919 (n + 1)

end A137919

/-!
# A137920: Numbers k such that 24*k-1 and 24*k+1 are twin primes.

The programs for A137920, there is no canonical definition to state claims against.
-/

/-! ## A137920.P8747197804021807388

`A124065(n+1)/3`
-/

namespace A137920.P8747197804021807388
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A124065 (n + 1) : ℚ) / 3

end

end A137920.P8747197804021807388

/-! ## A137920.P625481549079639933

`∩[A111174(n+1), A131210(n+1)]`
-/

namespace A137920.P625481549079639933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111174 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131210 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137920.P625481549079639933

/-! ## A137920.P2074831201021916728

`round(p?[A186295(n+1)]/24)`
-/

namespace A137920.P2074831201021916728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186295 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) / 24)

end

end A137920.P2074831201021916728

/-! ## A137920.P1317675681534940554

`A255591(2*A124065(n+1))`
-/

namespace A137920.P1317675681534940554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255591 (2 * A124065 (n + 1)).toNat

end

end A137920.P1317675681534940554

/-! ## A137920.P4379337484733182666

`A255591(A124065(n+1)+A124065(n+1))`
-/

namespace A137920.P4379337484733182666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255591 (A124065 (n + 1) + A124065 (n + 1)).toNat

end

end A137920.P4379337484733182666

/-! ## A137920.P722384890504468167

`record[A078898(A124519(n+3))]`
-/

namespace A137920.P722384890504468167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (A124519 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A137920.P722384890504468167

/-! ## A137920.P236211637068939967

`A002264(A124065(n+1))`
-/

namespace A137920.P236211637068939967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A124065 (n + 1)).toNat

end

end A137920.P236211637068939967

/-! ## A137920.P3605723580424477052

`A008611(A124065(n+1)+1)`
-/

namespace A137920.P3605723580424477052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (A124065 (n + 1) + 1).toNat

end

end A137920.P3605723580424477052

/-! ## A137920.P16464503295504802471

`A008620(A124065(n+1)-1)`
-/

namespace A137920.P16464503295504802471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (A124065 (n + 1) - 1).toNat

end

end A137920.P16464503295504802471

/-! ## A137920.P11900094262777272980

`eq[2, A240697(A017569(n)-2)]`
-/

namespace A137920.P11900094262777272980
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240697 (A017569 n - 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A137920.P11900094262777272980

/-!
# A137921: Number of divisors d of n such that d+1 is not a divisor of n.

The programs for A137921, the canonical program `A137921.P4123784932500151371` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A137921 has offset 1).

The definition of A137921 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A129308, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A137921.P4123784932500151371

`A000005(n+1)-A129308(n+1)`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A137921

/-- `A000005(n+1)-A129308(n+1)` -/
def P4123784932500151371.Spec : Prop :=
  ∀ n, P4123784932500151371.a n = A137921 (n + 1)

theorem P4123784932500151371.correct : P4123784932500151371.Spec := by
  intro n
  simp only [A137921, Nat.add_sub_cancel]

end A137921

/-! ## A137921.P74620686703885861

`A001222(A328166(n+1))`
-/

namespace A137921.P74620686703885861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A328166 (n + 1)).toNat

end

end A137921.P74620686703885861

namespace A137921

/-- `A001222(A328166(n+1))` -/
def P74620686703885861.Spec : Prop :=
  ∀ n, P74620686703885861.a n = A137921 (n + 1)

end A137921

/-! ## A137921.P10444303111625718249

`A195150(n+1)+1`
-/

namespace A137921.P10444303111625718249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195150 (n + 1) + 1

end

end A137921.P10444303111625718249

namespace A137921

/-- `A195150(n+1)+1` -/
def P10444303111625718249.Spec : Prop :=
  ∀ n, P10444303111625718249.a n = A137921 (n + 1)

end A137921

/-! ## A137921.P14477318947278022214

`∑{d}[n+1, A267813(#)]`
-/

namespace A137921.P14477318947278022214
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A267813 d

end

end A137921.P14477318947278022214

namespace A137921

/-- `∑{d}[n+1, A267813(#)]` -/
def P14477318947278022214.Spec : Prop :=
  ∀ n, P14477318947278022214.a n = A137921 (n + 1)

end A137921

/-! ## A137921.P2457771936187159814

`∑{d}[n+1, A267810(#)]+1`
-/

namespace A137921.P2457771936187159814
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A267810 d + 1

end

end A137921.P2457771936187159814

namespace A137921

/-- `∑{d}[n+1, A267810(#)]+1` -/
def P2457771936187159814.Spec : Prop :=
  ∀ n, P2457771936187159814.a n = A137921 (n + 1)

end A137921

/-! ## A137921.P3734274330026923192

`∑{d}[n+1, A267814(#-1)]`
-/

namespace A137921.P3734274330026923192
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A267814 (d - 1)

end

end A137921.P3734274330026923192

namespace A137921

/-- `∑{d}[n+1, A267814(#-1)]` -/
def P3734274330026923192.Spec : Prop :=
  ∀ n, P3734274330026923192.a n = A137921 (n + 1)

end A137921

/-! ## A137921.P11903128636761794293

`A002260(A337362(n+1))`
-/

namespace A137921.P11903128636761794293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A337362 (n + 1)).toNat

end

end A137921.P11903128636761794293

namespace A137921

/-- `A002260(A337362(n+1))` -/
def P11903128636761794293.Spec : Prop :=
  ∀ n, P11903128636761794293.a n = A137921 (n + 1)

end A137921

/-! ## A137921.P3392169952431015777

`A003984(A337363(n+1))+1`
-/

namespace A137921.P3392169952431015777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003984 (A337363 (n + 1)).toNat + 1

end

end A137921.P3392169952431015777

namespace A137921

/-- `A003984(A337363(n+1))+1` -/
def P3392169952431015777.Spec : Prop :=
  ∀ n, P3392169952431015777.a n = A137921 (n + 1)

end A137921

/-! ## A137921.P6084734335403331331

`A076984(n+1)-A088722(n+1)`
-/

namespace A137921.P6084734335403331331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076984 (n + 1) - A088722 (n + 1)

end

end A137921.P6084734335403331331

namespace A137921

/-- `A076984(n+1)-A088722(n+1)` -/
def P6084734335403331331.Spec : Prop :=
  ∀ n, P6084734335403331331.a n = A137921 (n + 1)

end A137921

/-! ## A137921.P13034138058074142228

`A337362(n+1)-A066446(n+1)`
-/

namespace A137921.P13034138058074142228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337362 (n + 1) - A066446 (n + 1)

end

end A137921.P13034138058074142228

namespace A137921

/-- `A337362(n+1)-A066446(n+1)` -/
def P13034138058074142228.Spec : Prop :=
  ∀ n, P13034138058074142228.a n = A137921 (n + 1)

end A137921

/-! ## A137921.P15262765618148324371

`A334954(n+1)-A195155(n+1)`
-/

namespace A137921.P15262765618148324371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334954 (n + 1) - A195155 (n + 1)

end

end A137921.P15262765618148324371

namespace A137921

/-- `A334954(n+1)-A195155(n+1)` -/
def P15262765618148324371.Spec : Prop :=
  ∀ n, P15262765618148324371.a n = A137921 (n + 1)

end A137921

/-! ## A137921.P9322257482663691132

`Δ[A006218(n)]+1-A195155(n+1)`
-/

namespace A137921.P9322257482663691132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (1 - A195155 (n + 1))

end

end A137921.P9322257482663691132

namespace A137921

/-- `Δ[A006218(n)]+1-A195155(n+1)` -/
def P9322257482663691132.Spec : Prop :=
  ∀ n, P9322257482663691132.a n = A137921 (n + 1)

end A137921

/-! ## A137921.P117126413208248079

`A023645(n+1)+1-A088722(n+1)`
-/

namespace A137921.P117126413208248079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023645 (n + 1) + (1 - A088722 (n + 1))

end

end A137921.P117126413208248079

namespace A137921

/-- `A023645(n+1)+1-A088722(n+1)` -/
def P117126413208248079.Spec : Prop :=
  ∀ n, P117126413208248079.a n = A137921 (n + 1)

end A137921

/-! ## A137921.P513594872690923800

`A000005(n+1)+1-A195155(n+1)`
-/

namespace A137921.P513594872690923800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) + (1 - A195155 (n + 1))

end

end A137921.P513594872690923800

namespace A137921

/-- `A000005(n+1)+1-A195155(n+1)` -/
def P513594872690923800.Spec : Prop :=
  ∀ n, P513594872690923800.a n = A137921 (n + 1)

end A137921

/-! ## A137921.P5554874813552234581

`A072627(n+1)+A072628(n+1)-A129308(n+1)`
-/

namespace A137921.P5554874813552234581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072627 (n + 1) + (A072628 (n + 1) - A129308 (n + 1))

end

end A137921.P5554874813552234581

namespace A137921

/-- `A072627(n+1)+A072628(n+1)-A129308(n+1)` -/
def P5554874813552234581.Spec : Prop :=
  ∀ n, P5554874813552234581.a n = A137921 (n + 1)

end A137921

/-! ## A137921.P14576721655969223863

`A184389(n+1)-(A129308(n+1)+A066446(n+1))`
-/

namespace A137921.P14576721655969223863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184389 (n + 1) - (A129308 (n + 1) + A066446 (n + 1))

end

end A137921.P14576721655969223863

namespace A137921

/-- `A184389(n+1)-(A129308(n+1)+A066446(n+1))` -/
def P14576721655969223863.Spec : Prop :=
  ∀ n, P14576721655969223863.a n = A137921 (n + 1)

end A137921

/-! ## A137921.P2588708683867716028

`A132747(n+1)+A132881(n+1)-A129308(n+1)`
-/

namespace A137921.P2588708683867716028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132747 (n + 1) + (A132881 (n + 1) - A129308 (n + 1))

end

end A137921.P2588708683867716028

namespace A137921

/-- `A132747(n+1)+A132881(n+1)-A129308(n+1)` -/
def P2588708683867716028.Spec : Prop :=
  ∀ n, P2588708683867716028.a n = A137921 (n + 1)

end A137921

/-! ## A137921.P5594505470464345772

`A000005(n+1)+A337363(n+1)-A066446(n+1)`
-/

namespace A137921.P5594505470464345772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) + (A337363 (n + 1) - A066446 (n + 1))

end

end A137921.P5594505470464345772

namespace A137921

/-- `A000005(n+1)+A337363(n+1)-A066446(n+1)` -/
def P5594505470464345772.Spec : Prop :=
  ∀ n, P5594505470464345772.a n = A137921 (n + 1)

end A137921

/-! ## A137921.P9783301274892408257

`A000005(n+1)+A337362(n+1)-A184389(n+1)`
-/

namespace A137921.P9783301274892408257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) + (A337362 (n + 1) - A184389 (n + 1))

end

end A137921.P9783301274892408257

namespace A137921

/-- `A000005(n+1)+A337362(n+1)-A184389(n+1)` -/
def P9783301274892408257.Spec : Prop :=
  ∀ n, P9783301274892408257.a n = A137921 (n + 1)

end A137921

/-! ## A137921.P7655271977413070782

`A243865(n+1)+A243917(n+1)-A129308(n+1)`
-/

namespace A137921.P7655271977413070782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243865 (n + 1) + (A243917 (n + 1) - A129308 (n + 1))

end

end A137921.P7655271977413070782

namespace A137921

/-- `A243865(n+1)+A243917(n+1)-A129308(n+1)` -/
def P7655271977413070782.Spec : Prop :=
  ∀ n, P7655271977413070782.a n = A137921 (n + 1)

end A137921

/-!
# A137922: Numbers having exactly two divisors d such that d+1 is not a divisor.

The programs for A137922, there is no canonical definition to state claims against.
-/

/-! ## A137922.P9216072269685311648

`lt[n, ∑{p}[n+3, #]]+3`
-/

namespace A137922.P9216072269685311648
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n), p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 3

end

end A137922.P9216072269685311648

/-! ## A137922.P13017915411725097578

`record[A126800(n+3)]`
-/

namespace A137922.P13017915411725097578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126800 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A137922.P13017915411725097578

/-! ## A137922.P11862690301754830195

`record[A138221(n+3)]`
-/

namespace A137922.P11862690301754830195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138221 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A137922.P11862690301754830195

/-! ## A137922.P4646722458494937463

`record[A245689(n+3)]`
-/

namespace A137922.P4646722458494937463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245689 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A137922.P4646722458494937463

/-! ## A137922.P4811205359025981501

`eq[log(A236937(n)), C(2, n)]`
-/

namespace A137922.P4811205359025981501
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.log (A236937 n : ℝ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℝ)) n

end

end A137922.P4811205359025981501

/-! ## A137922.P8509795959044423581

`eq[1, A195150(n+1)]+1`
-/

namespace A137922.P8509795959044423581
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195150 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A137922.P8509795959044423581

/-! ## A137922.P17755239972652205548

`eq[2, A137921(n+1)]+1`
-/

namespace A137922.P17755239972652205548
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137921 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A137922.P17755239972652205548

/-! ## A137922.P17273306846756434013

`lt[A003415(n+3), 6]+3`
-/

namespace A137922.P17273306846756434013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (n + 3)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 3

end

end A137922.P17273306846756434013

/-! ## A137922.P6149091032572615305

`A151800(a(n-1))` with `a(0)=3, a(1)=4, a(2)=5, a(3)=6`
-/

namespace A137922.P6149091032572615305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 4, 5, 6] fun n a =>
  A151800 (a (n - 1)).toNat

end

end A137922.P6149091032572615305

/-! ## A137922.P9641963598300563120

`lt[n+1, A001414(n+3)]+3`
-/

namespace A137922.P9641963598300563120
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 3

end

end A137922.P9641963598300563120

/-!
# A137924: a(n) = the largest divisor of A002808(n) that is coprime to n. (A002808(n) = the n-th composite.)

The programs for A137924, there is no canonical definition to state claims against.
-/

/-! ## A137924.P7699308913495709879

`lcm(A000169(n+1), A002808(n+1))/A000169(n+1)`
-/

namespace A137924.P7699308913495709879
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A000169 (n + 1)) (A002808 (n + 1)) : ℚ) / (A000169 (n + 1) : ℚ)

end

end A137924.P7699308913495709879

/-! ## A137924.P15096964809917854650

`A171527(n+1)-A079998(A000295(n+2))`
-/

namespace A137924.P15096964809917854650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171527 (n + 1) - A079998 (A000295 (n + 2)).toNat

end

end A137924.P15096964809917854650

/-! ## A137924.P7647162223997981697

`A171527(n+1)-A336355(A335456(n))`
-/

namespace A137924.P7647162223997981697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171527 (n + 1) - A336355 (A335456 n).toNat

end

end A137924.P7647162223997981697

/-! ## A137924.P5890935559957728686

`A171527(n+1)/A051903(A077784(n+1))`
-/

namespace A137924.P5890935559957728686
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A171527 (n + 1) : ℚ) / (A051903 (A077784 (n + 1)).toNat : ℚ)

end

end A137924.P5890935559957728686

/-!
# A137925: a(n) = the largest divisor of n that is coprime to A002808(n). (A002808(n) = the n-th composite.)

The programs for A137925, the canonical program `A137925.P3338572406075972274` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A137925 has offset 1).

The definition of A137925 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A137925.P3338572406075972274

`(n+1)/gcd(n+1, A002808(n+1)^8)`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A137925

/-- `(n+1)/gcd(n+1, A002808(n+1)^8)` -/
def P3338572406075972274.Spec : Prop :=
  ∀ n, P3338572406075972274.a n = (A137925 (n + 1) : ℚ)

end A137925

/-! ## A137925.P14999686439242449208

`gcd(n+1, A038610(Δ[A053767(n)]))`
-/

namespace A137925.P14999686439242449208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053767 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A038610 (f1 (n + 1) - f1 n).toNat)

end

end A137925.P14999686439242449208

namespace A137925

/-- `gcd(n+1, A038610(Δ[A053767(n)]))` -/
def P14999686439242449208.Spec : Prop :=
  ∀ n, (P14999686439242449208.a n : ℤ) = A137925 (n + 1)

end A137925

/-! ## A137925.P8241063657945271649

`gcd(A038610(A002808(n+1)), A171528(n+1))`
-/

namespace A137925.P8241063657945271649
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A038610 (A002808 (n + 1)).toNat) (A171528 (n + 1))

end

end A137925.P8241063657945271649

namespace A137925

/-- `gcd(A038610(A002808(n+1)), A171528(n+1))` -/
def P8241063657945271649.Spec : Prop :=
  ∀ n, (P8241063657945271649.a n : ℤ) = A137925 (n + 1)

end A137925

/-! ## A137925.P2223143766231314107

`A165430(A171528(n+1)+A000217(n))`
-/

namespace A137925.P2223143766231314107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165430 (A171528 (n + 1) + A000217 n).toNat

end

end A137925.P2223143766231314107

namespace A137925

/-- `A165430(A171528(n+1)+A000217(n))` -/
def P2223143766231314107.Spec : Prop :=
  ∀ n, P2223143766231314107.a n = A137925 (n + 1)

end A137925

/-! ## A137925.P13879223421258928329

`A171528(A053165(n+1))+A088194(A131067(n))`
-/

namespace A137925.P13879223421258928329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171528 (A053165 (n + 1)).toNat + A088194 (A131067 n).toNat

end

end A137925.P13879223421258928329

namespace A137925

/-- `A171528(A053165(n+1))+A088194(A131067(n))` -/
def P13879223421258928329.Spec : Prop :=
  ∀ n, P13879223421258928329.a n = A137925 (n + 1)

end A137925

/-!
# A137926: a(n) = the largest divisor of n that is coprime to A000005(n). (A000005(n) = the number of positive divisors of n.)

The programs for A137926, the canonical program `A137926.P10137860299111423263` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A137926 has offset 1).

The definition of A137926 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A137926.P10137860299111423263

`lcm(n+1, A163299(n+1))/A163299(n+1)`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A137926

/-- `lcm(n+1, A163299(n+1))/A163299(n+1)` -/
def P10137860299111423263.Spec : Prop :=
  ∀ n, P10137860299111423263.a n = (A137926 (n + 1) : ℚ)

end A137926

/-! ## A137926.P10833629944193899083

`gcd(n+1, A302975(n+1))`
-/

namespace A137926.P10833629944193899083
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A302975 (n + 1))

end

end A137926.P10833629944193899083

namespace A137926

/-- `gcd(n+1, A302975(n+1))` -/
def P10833629944193899083.Spec : Prop :=
  ∀ n, (P10833629944193899083.a n : ℤ) = A137926 (n + 1)

end A137926

/-! ## A137926.P17910751291645881509

`root(A302975(n+1), Δ[A006218(n)])`
-/

namespace A137926.P17910751291645881509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A302975 (n + 1) : ℝ) ^ (1 / (f1 (n + 1) - f1 n : ℝ))

end

end A137926.P17910751291645881509

namespace A137926

/-- `root(A302975(n+1), Δ[A006218(n)])` -/
def P17910751291645881509.Spec : Prop :=
  ∀ n, P17910751291645881509.a n = (A137926 (n + 1) : ℝ)

end A137926

/-! ## A137926.P3031917859778550763

`root(A302975(n+1), A000005(n+1))`
-/

namespace A137926.P3031917859778550763
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A302975 (n + 1) : ℝ) ^ (1 / (A000005 (n + 1) : ℝ))

end

end A137926.P3031917859778550763

namespace A137926

/-- `root(A302975(n+1), A000005(n+1))` -/
def P3031917859778550763.Spec : Prop :=
  ∀ n, P3031917859778550763.a n = (A137926 (n + 1) : ℝ)

end A137926

/-! ## A137926.P7085083177217340206

`A124332(n+1)^A355384((n+1)/∏{p}[n+1, #])`
-/

namespace A137926.P7085083177217340206
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A124332 (n + 1) : ℚ) ^ (A355384 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ))).toNat : ℤ)

end

end A137926.P7085083177217340206

namespace A137926

/-- `A124332(n+1)^A355384((n+1)/∏{p}[n+1, #])` -/
def P7085083177217340206.Spec : Prop :=
  ∀ n, P7085083177217340206.a n = (A137926 (n + 1) : ℚ)

end A137926

/-!
# A137927: a(n) = the largest divisor of A000005(n) that is coprime to n. (A000005(n) = the number of positive divisors of n.).

The programs for A137927, the canonical program `A137927.P5814170655149962823` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A137927 has offset 1).

The definition of A137927 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5039 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A137927.P815105747946433698

`Δ[A006218(n)]/A306671(n+1)`
-/

namespace A137927.P815105747946433698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (A306671 (n + 1) : ℚ)

end

end A137927.P815105747946433698

namespace A137927

/-- `Δ[A006218(n)]/A306671(n+1)` -/
def P815105747946433698.Spec : Prop :=
  ∀ n, P815105747946433698.a n = (A137927 (n + 1) : ℚ)

end A137927

/-! ## A137927.P15259591317610828950

`A000005(n+1)/A306671(n+1)`
-/

namespace A137927.P15259591317610828950
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000005 (n + 1) : ℚ) / (A306671 (n + 1) : ℚ)

end

end A137927.P15259591317610828950

namespace A137927

/-- `A000005(n+1)/A306671(n+1)` -/
def P15259591317610828950.Spec : Prop :=
  ∀ n, P15259591317610828950.a n = (A137927 (n + 1) : ℚ)

end A137927

/-! ## A137927.P10026945282509061120

`A038040(n+1)/((n+1)*A306671(n+1))`
-/

namespace A137927.P10026945282509061120
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038040 (n + 1) : ℚ) / ((n + 1 : ℤ) * A306671 (n + 1) : ℚ)

end

end A137927.P10026945282509061120

namespace A137927

/-- `A038040(n+1)/((n+1)*A306671(n+1))` -/
def P10026945282509061120.Spec : Prop :=
  ∀ n, P10026945282509061120.a n = (A137927 (n + 1) : ℚ)

end A137927

/-! ## A137927.P15495390841545404091

`A000027(∑{d}[n+1, gcd(n, #)]/A306671(n+1))`
-/

namespace A137927.P15495390841545404091
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.roundAway (((∑ d ∈ Nat.divisors (f1 n), Nat.gcd n d : ℕ) : ℚ) / (A306671 (n + 1) : ℚ))).toNat

end

end A137927.P15495390841545404091

namespace A137927

/-- `A000027(∑{d}[n+1, gcd(n, #)]/A306671(n+1))` -/
def P15495390841545404091.Spec : Prop :=
  ∀ n, P15495390841545404091.a n = A137927 (n + 1)

end A137927

/-! ## A137927.P13481864632474011969

`(∑{d}[n+1, #+1]-A000203(n+1))/A306671(n+1)`
-/

namespace A137927.P13481864632474011969
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((∑ d ∈ Nat.divisors (f1 n), (d + 1) : ℕ) : ℤ) - A000203 (n + 1) : ℚ) / (A306671 (n + 1) : ℚ)

end

end A137927.P13481864632474011969

namespace A137927

/-- `(∑{d}[n+1, #+1]-A000203(n+1))/A306671(n+1)` -/
def P13481864632474011969.Spec : Prop :=
  ∀ n, P13481864632474011969.a n = (A137927 (n + 1) : ℚ)

end A137927

/-! ## A137927.P17578376740587818545

`∑{d}[n+1, A033676(A014963(#))]/A306671(n+1)`
-/

namespace A137927.P17578376740587818545
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), A033676 (A014963 d).toNat : ℤ) : ℚ) / (A306671 (n + 1) : ℚ)

end

end A137927.P17578376740587818545

namespace A137927

/-- `∑{d}[n+1, A033676(A014963(#))]/A306671(n+1)` -/
def P17578376740587818545.Spec : Prop :=
  ∀ n, P17578376740587818545.a n = (A137927 (n + 1) : ℚ)

end A137927

/-! ## A137927.P5589033427018613356

`A064840(n+1)/(A000203(n+1)*A306671(n+1))`
-/

namespace A137927.P5589033427018613356
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064840 (n + 1) : ℚ) / (A000203 (n + 1) * A306671 (n + 1) : ℚ)

end

end A137927.P5589033427018613356

namespace A137927

/-- `A064840(n+1)/(A000203(n+1)*A306671(n+1))` -/
def P5589033427018613356.Spec : Prop :=
  ∀ n, P5589033427018613356.a n = (A137927 (n + 1) : ℚ)

end A137927

/-! ## A137927.P17717707435210907410

`A009205(n+1)*A057021(n+1)/A306671(n+1)`
-/

namespace A137927.P17717707435210907410
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009205 (n + 1) * A057021 (n + 1) : ℚ) / (A306671 (n + 1) : ℚ)

end

end A137927.P17717707435210907410

namespace A137927

/-- `A009205(n+1)*A057021(n+1)/A306671(n+1)` -/
def P17717707435210907410.Spec : Prop :=
  ∀ n, P17717707435210907410.a n = (A137927 (n + 1) : ℚ)

end A137927

/-! ## A137927.P6196468682039311123

`A000027(A038040(n+1)/(n+1))/A306671(n+1)`
-/

namespace A137927.P6196468682039311123
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000027 (SequenceMachineLib.roundAway ((A038040 (n + 1) : ℚ) / (n + 1 : ℚ))).toNat : ℚ) / (A306671 (n + 1) : ℚ)

end

end A137927.P6196468682039311123

namespace A137927

/-- `A000027(A038040(n+1)/(n+1))/A306671(n+1)` -/
def P6196468682039311123.Spec : Prop :=
  ∀ n, P6196468682039311123.a n = (A137927 (n + 1) : ℚ)

end A137927

/-! ## A137927.P10189872989297830868

`A028310(A038040(n+1)/(n+1))/A306671(n+1)`
-/

namespace A137927.P10189872989297830868
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028310 (SequenceMachineLib.roundAway ((A038040 (n + 1) : ℚ) / (n + 1 : ℚ))).toNat : ℚ) / (A306671 (n + 1) : ℚ)

end

end A137927.P10189872989297830868

namespace A137927

/-- `A028310(A038040(n+1)/(n+1))/A306671(n+1)` -/
def P10189872989297830868.Spec : Prop :=
  ∀ n, P10189872989297830868.a n = (A137927 (n + 1) : ℚ)

end A137927

/-! ## A137927.P2982679448667383094

`A000005(n+1)/gcd(A000005(n+1), A017684(n+1))`
-/

namespace A137927.P2982679448667383094
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000005 (n + 1) : ℚ) / (Int.gcd (A000005 (n + 1)) (A017684 (n + 1)) : ℚ)

end

end A137927.P2982679448667383094

namespace A137927

/-- `A000005(n+1)/gcd(A000005(n+1), A017684(n+1))` -/
def P2982679448667383094.Spec : Prop :=
  ∀ n, P2982679448667383094.a n = (A137927 (n + 1) : ℚ)

end A137927

/-! ## A137927.P1921118924657318821

`∑{d}[n+1, A057427(#)]/A306671(n+1)`
-/

namespace A137927.P1921118924657318821
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), A057427 d : ℤ) : ℚ) / (A306671 (n + 1) : ℚ)

end

end A137927.P1921118924657318821

namespace A137927

/-- `∑{d}[n+1, A057427(#)]/A306671(n+1)` -/
def P1921118924657318821.Spec : Prop :=
  ∀ n, P1921118924657318821.a n = (A137927 (n + 1) : ℚ)

end A137927

/-! ## A137927.P364637796691921109

`∑{d}[n+1, A157532(#+4)/3]/A306671(n+1)`
-/

namespace A137927.P364637796691921109
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (∑ d ∈ Nat.divisors (f1 n), (A157532 (d + 4) : ℚ) / 3) / (A306671 (n + 1) : ℚ)

end

end A137927.P364637796691921109

namespace A137927

/-- `∑{d}[n+1, A157532(#+4)/3]/A306671(n+1)` -/
def P364637796691921109.Spec : Prop :=
  ∀ n, P364637796691921109.a n = (A137927 (n + 1) : ℚ)

end A137927

/-! ## A137927.P5814170655149962823

`A307892(n+1)/A007956(n+1)`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A137927

/-- `A307892(n+1)/A007956(n+1)` -/
def P5814170655149962823.Spec : Prop :=
  ∀ n, P5814170655149962823.a n = (A137927 (n + 1) : ℚ)

end A137927

/-! ## A137927.P11457940562972771063

`A324528(n+1)/A007955(n+1)`
-/

namespace A137927.P11457940562972771063
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A324528 (n + 1) : ℚ) / (A007955 (n + 1) : ℚ)

end

end A137927.P11457940562972771063

namespace A137927

/-- `A324528(n+1)/A007955(n+1)` -/
def P11457940562972771063.Spec : Prop :=
  ∀ n, P11457940562972771063.a n = (A137927 (n + 1) : ℚ)

end A137927

/-! ## A137927.P3575628391071202448

`A000005(n+1)/A007955(n+1)*A291186(n+1)`
-/

namespace A137927.P3575628391071202448
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000005 (n + 1) : ℚ) / (A007955 (n + 1) : ℚ) * (A291186 (n + 1) : ℚ)

end

end A137927.P3575628391071202448

namespace A137927

/-- `A000005(n+1)/A007955(n+1)*A291186(n+1)` -/
def P3575628391071202448.Spec : Prop :=
  ∀ n, P3575628391071202448.a n = (A137927 (n + 1) : ℚ)

end A137927

/-! ## A137927.P9194400857171607283

`A394346(n+1)/(A007955(n+1)*A306671(n+1))`
-/

namespace A137927.P9194400857171607283
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A394346 (n + 1) : ℚ) / (A007955 (n + 1) * A306671 (n + 1) : ℚ)

end

end A137927.P9194400857171607283

namespace A137927

/-- `A394346(n+1)/(A007955(n+1)*A306671(n+1))` -/
def P9194400857171607283.Spec : Prop :=
  ∀ n, P9194400857171607283.a n = (A137927 (n + 1) : ℚ)

end A137927

/-! ## A137927.P10054357597788488791

`A009230(n+1)/gcd(A009230(n+1), A056925(n+1))`
-/

namespace A137927.P10054357597788488791
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009230 (n + 1) : ℚ) / (Int.gcd (A009230 (n + 1)) (A056925 (n + 1)) : ℚ)

end

end A137927.P10054357597788488791

namespace A137927

/-- `A009230(n+1)/gcd(A009230(n+1), A056925(n+1))` -/
def P10054357597788488791.Spec : Prop :=
  ∀ n, P10054357597788488791.a n = (A137927 (n + 1) : ℚ)

end A137927

/-! ## A137927.P17510898891249428610

`A307892(n+1)/gcd(A007955(n+1), A307892(n+1))`
-/

namespace A137927.P17510898891249428610
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A307892 (n + 1) : ℚ) / (Int.gcd (A007955 (n + 1)) (A307892 (n + 1)) : ℚ)

end

end A137927.P17510898891249428610

namespace A137927

/-- `A307892(n+1)/gcd(A007955(n+1), A307892(n+1))` -/
def P17510898891249428610.Spec : Prop :=
  ∀ n, P17510898891249428610.a n = (A137927 (n + 1) : ℚ)

end A137927

/-! ## A137927.P5055333969250700765

`lcm(A007955(n+1), A009230(n+1))/A007955(n+1)`
-/

namespace A137927.P5055333969250700765
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A007955 (n + 1)) (A009230 (n + 1)) : ℚ) / (A007955 (n + 1) : ℚ)

end

end A137927.P5055333969250700765

namespace A137927

/-- `lcm(A007955(n+1), A009230(n+1))/A007955(n+1)` -/
def P5055333969250700765.Spec : Prop :=
  ∀ n, P5055333969250700765.a n = (A137927 (n + 1) : ℚ)

end A137927

/-!
# A137928: The even principal diagonal of a 2n X 2n square spiral.

The programs for A137928, the canonical program `A137928.P7743728354966932208` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A137928 has offset 1).

The definition of A137928 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A137928.P10768369855977827282

`2*ceil((n+1)²/2)`
-/

namespace A137928.P10768369855977827282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ⌈((n + 1) ^ 2 : ℚ) / 2⌉

end

end A137928.P10768369855977827282

namespace A137928

/-- `2*ceil((n+1)²/2)` -/
def P10768369855977827282.Spec : Prop :=
  ∀ n, P10768369855977827282.a n = A137928 (n + 1)

end A137928

/-! ## A137928.P7743728354966932208

`2*a(n-1)-2*a(n-3)+a(n-4)` with `a(0)=2, a(1)=4, a(2)=10, a(3)=16`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A137928

/-- `2*a(n-1)-2*a(n-3)+a(n-4)` -/
def P7743728354966932208.Spec : Prop :=
  ∀ n, P7743728354966932208.a n = A137928 (n + 1)

theorem P7743728354966932208.correct : P7743728354966932208.Spec := by
  intro n
  simp only [A137928, Nat.add_sub_cancel]

end A137928

/-! ## A137928.P13462318402656936657

`∑[2*or(1, n)]`
-/

namespace A137928.P13462318402656936657
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.lor 1 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A137928.P13462318402656936657

namespace A137928

/-- `∑[2*or(1, n)]` -/
def P13462318402656936657.Spec : Prop :=
  ∀ n, (P13462318402656936657.a n : ℤ) = A137928 (n + 1)

end A137928

/-! ## A137928.P13699781378910934418

`∑[lcm(2, or(1, n))]`
-/

namespace A137928.P13699781378910934418
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 (Nat.lor 1 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A137928.P13699781378910934418

namespace A137928

/-- `∑[lcm(2, or(1, n))]` -/
def P13699781378910934418.Spec : Prop :=
  ∀ n, (P13699781378910934418.a n : ℤ) = A137928 (n + 1)

end A137928

/-! ## A137928.P15069035594624063153

`∑[or(2, n+n)]`
-/

namespace A137928.P15069035594624063153
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 (n + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A137928.P15069035594624063153

namespace A137928

/-- `∑[or(2, n+n)]` -/
def P15069035594624063153.Spec : Prop :=
  ∀ n, (P15069035594624063153.a n : ℤ) = A137928 (n + 1)

end A137928

/-! ## A137928.P13244807237277471124

`∑[n-xor(n, -2)]`
-/

namespace A137928.P13244807237277471124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - Int.xor (n : ℤ) (-2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A137928.P13244807237277471124

namespace A137928

/-- `∑[n-xor(n, -2)]` -/
def P13244807237277471124.Spec : Prop :=
  ∀ n, P13244807237277471124.a n = A137928 (n + 1)

end A137928

/-! ## A137928.P14888473980845954635

`record[or(2, n)]+n²`
-/

namespace A137928.P14888473980845954635
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + n ^ 2

end

end A137928.P14888473980845954635

namespace A137928

/-- `record[or(2, n)]+n²` -/
def P14888473980845954635.Spec : Prop :=
  ∀ n, (P14888473980845954635.a n : ℤ) = A137928 (n + 1)

end A137928

/-! ## A137928.P12332786469564647323

`record[xor(2, n)]+n²`
-/

namespace A137928.P12332786469564647323
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 2 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + n ^ 2

end

end A137928.P12332786469564647323

namespace A137928

/-- `record[xor(2, n)]+n²` -/
def P12332786469564647323.Spec : Prop :=
  ∀ n, (P12332786469564647323.a n : ℤ) = A137928 (n + 1)

end A137928

/-! ## A137928.P18034481123417455708

`∑[xor(1, n)+1+n]`
-/

namespace A137928.P18034481123417455708
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n + 1 + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A137928.P18034481123417455708

namespace A137928

/-- `∑[xor(1, n)+1+n]` -/
def P18034481123417455708.Spec : Prop :=
  ∀ n, (P18034481123417455708.a n : ℤ) = A137928 (n + 1)

end A137928

/-! ## A137928.P9778092931849058634

`∑[or(2, Δ[n²])-1]`
-/

namespace A137928.P9778092931849058634
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A137928.P9778092931849058634

namespace A137928

/-- `∑[or(2, Δ[n²])-1]` -/
def P9778092931849058634.Spec : Prop :=
  ∀ n, P9778092931849058634.a n = A137928 (n + 1)

end A137928

/-! ## A137928.P17137867358066199844

`Δ[n²]+or(1, n²)`
-/

namespace A137928.P17137867358066199844
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) + (Nat.lor 1 (n ^ 2) : ℤ)

end

end A137928.P17137867358066199844

namespace A137928

/-- `Δ[n²]+or(1, n²)` -/
def P17137867358066199844.Spec : Prop :=
  ∀ n, P17137867358066199844.a n = A137928 (n + 1)

end A137928

/-! ## A137928.P2187846099533636810

`eq[n, or(2, n)]+n²`
-/

namespace A137928.P2187846099533636810
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + n ^ 2

end

end A137928.P2187846099533636810

namespace A137928

/-- `eq[n, or(2, n)]+n²` -/
def P2187846099533636810.Spec : Prop :=
  ∀ n, (P2187846099533636810.a n : ℤ) = A137928 (n + 1)

end A137928

/-! ## A137928.P2982215145743355366

`lt[xor(2, n), n]+n²`
-/

namespace A137928.P2982215145743355366
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 2 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + n ^ 2

end

end A137928.P2982215145743355366

namespace A137928

/-- `lt[xor(2, n), n]+n²` -/
def P2982215145743355366.Spec : Prop :=
  ∀ n, (P2982215145743355366.a n : ℤ) = A137928 (n + 1)

end A137928

/-! ## A137928.P6521677716200760772

`∑[a(n-2)+4]` with `a(0)=2, a(1)=2`
-/

namespace A137928.P6521677716200760772
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 2] fun n f1 =>
  f1 (n - 2) + 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A137928.P6521677716200760772

namespace A137928

/-- `∑[a(n-2)+4]` -/
def P6521677716200760772.Spec : Prop :=
  ∀ n, (P6521677716200760772.a n : ℤ) = A137928 (n + 1)

end A137928

/-! ## A137928.P9029555061263640711

`or(1, n*(n+2))+1`
-/

namespace A137928.P9029555061263640711
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (n * (n + 2)) + 1

end

end A137928.P9029555061263640711

namespace A137928

/-- `or(1, n*(n+2))+1` -/
def P9029555061263640711.Spec : Prop :=
  ∀ n, (P9029555061263640711.a n : ℤ) = A137928 (n + 1)

end A137928

/-! ## A137928.P11354343768495204003

`and((n+1)²+1, -2)`
-/

namespace A137928.P11354343768495204003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((n + 1) ^ 2 + 1 : ℤ) (-2)

end

end A137928.P11354343768495204003

namespace A137928

/-- `and((n+1)²+1, -2)` -/
def P11354343768495204003.Spec : Prop :=
  ∀ n, P11354343768495204003.a n = A137928 (n + 1)

end A137928

/-! ## A137928.P3725902632166300450

`∑[2*and(n, -2)+2]`
-/

namespace A137928.P3725902632166300450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * Int.land (n : ℤ) (-2) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A137928.P3725902632166300450

namespace A137928

/-- `∑[2*and(n, -2)+2]` -/
def P3725902632166300450.Spec : Prop :=
  ∀ n, P3725902632166300450.a n = A137928 (n + 1)

end A137928

/-! ## A137928.P15652509537402233412

`gcd(2, n)+n*(n+2)`
-/

namespace A137928.P15652509537402233412
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 n + n * (n + 2)

end

end A137928.P15652509537402233412

namespace A137928

/-- `gcd(2, n)+n*(n+2)` -/
def P15652509537402233412.Spec : Prop :=
  ∀ n, (P15652509537402233412.a n : ℤ) = A137928 (n + 1)

end A137928

/-! ## A137928.P12997982575993895433

`a(n-2)+4*n` with `a(0)=2, a(1)=4`
-/

namespace A137928.P12997982575993895433
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 4] fun n a =>
  a (n - 2) + 4 * n

end

end A137928.P12997982575993895433

namespace A137928

/-- `a(n-2)+4*n` -/
def P12997982575993895433.Spec : Prop :=
  ∀ n, (P12997982575993895433.a n : ℤ) = A137928 (n + 1)

end A137928

/-! ## A137928.P16098938957825742743

`xor(1, or(1, (n+1)²+1))`
-/

namespace A137928.P16098938957825742743
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (Nat.lor 1 ((n + 1) ^ 2 + 1))

end

end A137928.P16098938957825742743

namespace A137928

/-- `xor(1, or(1, (n+1)²+1))` -/
def P16098938957825742743.Spec : Prop :=
  ∀ n, (P16098938957825742743.a n : ℤ) = A137928 (n + 1)

end A137928

/-!
# A137930: The sum of the principal diagonals of an n X n spiral.

The programs for A137930, the canonical program `A137930.P6808982362370764159` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A137930 has offset 0).

The definition of A137930 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A137930.P6808982362370764159

`(4*n^3+3*n²+8*n-n%2*9)/6`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A137930

/-- `(4*n^3+3*n²+8*n-n%2*9)/6` -/
def P6808982362370764159.Spec : Prop :=
  ∀ n, P6808982362370764159.a n = (A137930 n : ℚ)

end A137930

/-! ## A137930.P8567977356927093693

`2*n^3/3+n²/2+4*n/3+3*((-1)^n-1)/4`
-/

namespace A137930.P8567977356927093693
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * n ^ 3 : ℚ) / 3 + (n ^ 2 : ℚ) / 2 + (4 * n : ℚ) / 3 + (3 * ((-1) ^ n - 1) : ℚ) / 4

end

end A137930.P8567977356927093693

namespace A137930

/-- `2*n^3/3+n²/2+4*n/3+3*((-1)^n-1)/4` -/
def P8567977356927093693.Spec : Prop :=
  ∀ n, P8567977356927093693.a n = (A137930 n : ℚ)

end A137930

/-! ## A137930.P11002009589750801831

`∑[∑[a(n-2)+8]]` with `a(0)=0, a(1)=1, a(2)=8, a(3)=6`
-/

namespace A137930.P11002009589750801831
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 8, 6] fun n f2 =>
  f2 (n - 2) + 8

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A137930.P11002009589750801831

namespace A137930

/-- `∑[∑[a(n-2)+8]]` -/
def P11002009589750801831.Spec : Prop :=
  ∀ n, (P11002009589750801831.a n : ℤ) = A137930 n

end A137930

/-! ## A137930.P841843083982913794

`∪[A114254(n), A137931(n)]`
-/

namespace A137930.P841843083982913794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114254 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137931 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A137930.P841843083982913794

namespace A137930

/-- `∪[A114254(n), A137931(n)]` -/
def P841843083982913794.Spec : Prop :=
  ∀ n, (P841843083982913794.a n : ℤ) = A137930 n

end A137930

/-!
# A137931: Sum of the principal diagonals of a 2n X 2n square spiral.

The programs for A137931, the canonical program `A137931.P546073886784008945` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A137931 has offset 0).

The definition of A137931 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A137931.P7821851278299798389

`2*n*(8*n²+3*n+4)/3`
-/

namespace A137931.P7821851278299798389
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * n * (8 * n ^ 2 + 3 * n + 4) : ℚ) / 3

end

end A137931.P7821851278299798389

namespace A137931

/-- `2*n*(8*n²+3*n+4)/3` -/
def P7821851278299798389.Spec : Prop :=
  ∀ n, P7821851278299798389.a n = (A137931 n : ℚ)

theorem P7821851278299798389.correct : P7821851278299798389.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A137931, Nat.add_sub_cancel, A137931.P7821851278299798389.a, A137931.P546073886784008945.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A137931, Nat.add_sub_cancel, A137931.P7821851278299798389.a, A137931.P546073886784008945.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [← h1, ← h2, ← h3, ← h4]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A137931

/-! ## A137931.P546073886784008945

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=0, a(1)=10, a(2)=56, a(3)=170`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A137931

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` -/
def P546073886784008945.Spec : Prop :=
  ∀ n, P546073886784008945.a n = A137931 n

theorem P546073886784008945.correct : P546073886784008945.Spec := by
  intro n
  simp only [A137931]

end A137931

/-! ## A137931.P5896180209847099023

`Δ[n*(C(2*n, 3)+n-1)]`
-/

namespace A137931.P5896180209847099023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ((Nat.choose (2 * n) 3 : ℤ) + ((n : ℤ) - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A137931.P5896180209847099023

namespace A137931

/-- `Δ[n*(C(2*n, 3)+n-1)]` -/
def P5896180209847099023.Spec : Prop :=
  ∀ n, P5896180209847099023.a n = A137931 n

end A137931

/-! ## A137931.P18309417684637143201

`Δ[n*C(2*n, 3)]+2*n`
-/

namespace A137931.P18309417684637143201
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Nat.choose (2 * n) 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) + (2 * n : ℤ)

end

end A137931.P18309417684637143201

namespace A137931

/-- `Δ[n*C(2*n, 3)]+2*n` -/
def P18309417684637143201.Spec : Prop :=
  ∀ n, P18309417684637143201.a n = A137931 n

end A137931

/-! ## A137931.P3471441664960587073

`Δ[n*A050533(abs(1-n))]`
-/

namespace A137931.P3471441664960587073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A050533 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A137931.P3471441664960587073

namespace A137931

/-- `Δ[n*A050533(abs(1-n))]` -/
def P3471441664960587073.Spec : Prop :=
  ∀ n, P3471441664960587073.a n = A137931 n

end A137931

/-! ## A137931.P10265343417829972294

`A061804(n)+A002492(n)`
-/

namespace A137931.P10265343417829972294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061804 n + A002492 n

end

end A137931.P10265343417829972294

namespace A137931

/-- `A061804(n)+A002492(n)` -/
def P10265343417829972294.Spec : Prop :=
  ∀ n, P10265343417829972294.a n = A137931 n

end A137931

/-! ## A137931.P639779294711903832

`A085474(n)-A001844(n)`
-/

namespace A137931.P639779294711903832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085474 n - A001844 n

end

end A137931.P639779294711903832

namespace A137931

/-- `A085474(n)-A001844(n)` -/
def P639779294711903832.Spec : Prop :=
  ∀ n, P639779294711903832.a n = A137931 n

end A137931

/-! ## A137931.P7478062446790095888

`A114254(n)-A014634(n)`
-/

namespace A137931.P7478062446790095888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114254 n - A014634 n

end

end A137931.P7478062446790095888

namespace A137931

/-- `A114254(n)-A014634(n)` -/
def P7478062446790095888.Spec : Prop :=
  ∀ n, P7478062446790095888.a n = A137931 n

end A137931

/-! ## A137931.P9847858569582232333

`A317297(n+1)+A050533(n)`
-/

namespace A137931.P9847858569582232333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317297 (n + 1) + A050533 n

end

end A137931.P9847858569582232333

namespace A137931

/-- `A317297(n+1)+A050533(n)` -/
def P9847858569582232333.Spec : Prop :=
  ∀ n, P9847858569582232333.a n = A137931 n

end A137931

/-! ## A137931.P3954262298279891545

`A024381(n+1)-A080860(n)`
-/

namespace A137931.P3954262298279891545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024381 (n + 1) - A080860 n

end

end A137931.P3954262298279891545

namespace A137931

/-- `A024381(n+1)-A080860(n)` -/
def P3954262298279891545.Spec : Prop :=
  ∀ n, P3954262298279891545.a n = A137931 n

end A137931

/-! ## A137931.P5816758604253736459

`A200431(n+1)-A033585(n)`
-/

namespace A137931.P5816758604253736459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200431 (n + 1) - A033585 n

end

end A137931.P5816758604253736459

namespace A137931

/-- `A200431(n+1)-A033585(n)` -/
def P5816758604253736459.Spec : Prop :=
  ∀ n, P5816758604253736459.a n = A137931 n

end A137931

/-! ## A137931.P7806696730543504347

`A244725(n)+A077415(n+2)`
-/

namespace A137931.P7806696730543504347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244725 n + A077415 (n + 2)

end

end A137931.P7806696730543504347

namespace A137931

/-- `A244725(n)+A077415(n+2)` -/
def P7806696730543504347.Spec : Prop :=
  ∀ n, P7806696730543504347.a n = A137931 n

end A137931

/-! ## A137931.P16719581344065683474

`A213848(n+1)-A387659(n)`
-/

namespace A137931.P16719581344065683474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213848 (n + 1) - A387659 n

end

end A137931.P16719581344065683474

namespace A137931

/-- `A213848(n+1)-A387659(n)` -/
def P16719581344065683474.Spec : Prop :=
  ∀ n, P16719581344065683474.a n = A137931 n

end A137931

/-! ## A137931.P11340363335859329886

`A063496(n+1)-A136392(n+1)`
-/

namespace A137931.P11340363335859329886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063496 (n + 1) - A136392 (n + 1)

end

end A137931.P11340363335859329886

namespace A137931

/-- `A063496(n+1)-A136392(n+1)` -/
def P11340363335859329886.Spec : Prop :=
  ∀ n, P11340363335859329886.a n = A137931 n

end A137931

/-! ## A137931.P9975386456913652311

`A050492(n+1)+A000447(n)-A053755(n)`
-/

namespace A137931.P9975386456913652311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050492 (n + 1) + (A000447 n - A053755 n)

end

end A137931.P9975386456913652311

namespace A137931

/-- `A050492(n+1)+A000447(n)-A053755(n)` -/
def P9975386456913652311.Spec : Prop :=
  ∀ n, P9975386456913652311.a n = A137931 n

end A137931

/-! ## A137931.P8731514279754039195

`A137930(2*n)`
-/

namespace A137931.P8731514279754039195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137930 (2 * n)

end

end A137931.P8731514279754039195

namespace A137931

/-- `A137930(2*n)` -/
def P8731514279754039195.Spec : Prop :=
  ∀ n, P8731514279754039195.a n = A137931 n

end A137931

/-! ## A137931.P10519940717012243541

`record[A137930(A014681(n))]`
-/

namespace A137931.P10519940717012243541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137930 (A014681 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A137931.P10519940717012243541

namespace A137931

/-- `record[A137930(A014681(n))]` -/
def P10519940717012243541.Spec : Prop :=
  ∀ n, P10519940717012243541.a n = A137931 n

end A137931

/-! ## A137931.P16635871022376283076

`record[A137930(n)/A033999(n)]`
-/

namespace A137931.P16635871022376283076
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A137930 n : ℚ) / (A033999 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A137931.P16635871022376283076

namespace A137931

/-- `record[A137930(n)/A033999(n)]` -/
def P16635871022376283076.Spec : Prop :=
  ∀ n, P16635871022376283076.a n = (A137931 n : ℚ)

end A137931

/-! ## A137931.P2544334600849769546

`A008585(n)+A002412(2*n)`
-/

namespace A137931.P2544334600849769546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 n + A002412 (2 * n)

end

end A137931.P2544334600849769546

namespace A137931

/-- `A008585(n)+A002412(2*n)` -/
def P2544334600849769546.Spec : Prop :=
  ∀ n, P2544334600849769546.a n = A137931 n

end A137931

/-! ## A137931.P9283943732727722029

`A046092(n)+A005900(2*n)`
-/

namespace A137931.P9283943732727722029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046092 n + A005900 (2 * n)

end

end A137931.P9283943732727722029

namespace A137931

/-- `A046092(n)+A005900(2*n)` -/
def P9283943732727722029.Spec : Prop :=
  ∀ n, P9283943732727722029.a n = A137931 n

end A137931

/-!
# A137932: Terms in an n X n spiral that do not lie on its principal diagonals.

The programs for A137932, the canonical program `A137932.P11132925829214669844` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A137932 has offset 0).

The definition of A137932 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A137932.P11132925829214669844

`2*floor((n-1)²/2)`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A137932

/-- `2*floor((n-1)²/2)` -/
def P11132925829214669844.Spec : Prop :=
  ∀ n, P11132925829214669844.a n = A137932 n

theorem P11132925829214669844.correct : P11132925829214669844.Spec := by
  intro n
  simp only [A137932]

end A137932

/-! ## A137932.P14669077330568000832

`n²-(2*n-n%2)`
-/

namespace A137932.P14669077330568000832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - ((2 * n : ℤ) - ((n % 2 : ℕ) : ℤ))

end

end A137932.P14669077330568000832

namespace A137932

/-- `n²-(2*n-n%2)` -/
def P14669077330568000832.Spec : Prop :=
  ∀ n, P14669077330568000832.a n = A137932 n

end A137932

/-! ## A137932.P1576815056844584719

`n²-A042948(n)`
-/

namespace A137932.P1576815056844584719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - A042948 n

end

end A137932.P1576815056844584719

namespace A137932

/-- `n²-A042948(n)` -/
def P1576815056844584719.Spec : Prop :=
  ∀ n, P1576815056844584719.a n = A137932 n

end A137932

/-! ## A137932.P12326406466974364705

`A002378(n)-A047238(n+1)`
-/

namespace A137932.P12326406466974364705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 n - A047238 (n + 1)

end

end A137932.P12326406466974364705

namespace A137932

/-- `A002378(n)-A047238(n+1)` -/
def P12326406466974364705.Spec : Prop :=
  ∀ n, P12326406466974364705.a n = A137932 n

end A137932

/-! ## A137932.P1720980889687798555

`and((1-n)², -2)`
-/

namespace A137932.P1720980889687798555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((1 - (n : ℤ)) ^ 2) (-2)

end

end A137932.P1720980889687798555

namespace A137932

/-- `and((1-n)², -2)` -/
def P1720980889687798555.Spec : Prop :=
  ∀ n, P1720980889687798555.a n = A137932 n

end A137932

/-! ## A137932.P12048805897233127591

`n²-comp[or(2, n)]`
-/

namespace A137932.P12048805897233127591
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ)

end

end A137932.P12048805897233127591

namespace A137932

/-- `n²-comp[or(2, n)]` -/
def P12048805897233127591.Spec : Prop :=
  ∀ n, P12048805897233127591.a n = A137932 n

end A137932

/-! ## A137932.P9733905984510537227

`or(1, (1-n)²)-1`
-/

namespace A137932.P9733905984510537227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 ((1 - (n : ℤ)) ^ 2) - 1

end

end A137932.P9733905984510537227

namespace A137932

/-- `or(1, (1-n)²)-1` -/
def P9733905984510537227.Spec : Prop :=
  ∀ n, P9733905984510537227.a n = A137932 n

end A137932

/-! ## A137932.P12767573381748407676

`n²-lt[n, xor(2, n)]`
-/

namespace A137932.P12767573381748407676
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - (SequenceMachineLib.nth (fun j => f1 j < f2 j) n : ℤ)

end

end A137932.P12767573381748407676

namespace A137932

/-- `n²-lt[n, xor(2, n)]` -/
def P12767573381748407676.Spec : Prop :=
  ∀ n, P12767573381748407676.a n = A137932 n

end A137932

/-! ## A137932.P14898824642116750438

`n²-comp[record[xor(2, n)]]`
-/

namespace A137932.P14898824642116750438
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 2 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ)

end

end A137932.P14898824642116750438

namespace A137932

/-- `n²-comp[record[xor(2, n)]]` -/
def P14898824642116750438.Spec : Prop :=
  ∀ n, P14898824642116750438.a n = A137932 n

end A137932

/-! ## A137932.P4884394923570061698

`1-or(1, n*(2-n))`
-/

namespace A137932.P4884394923570061698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - Int.lor 1 ((n : ℤ) * (2 - (n : ℤ)))

end

end A137932.P4884394923570061698

namespace A137932

/-- `1-or(1, n*(2-n))` -/
def P4884394923570061698.Spec : Prop :=
  ∀ n, P4884394923570061698.a n = A137932 n

end A137932

/-! ## A137932.P15724015753381017874

`n%2+n*(n-2)`
-/

namespace A137932.P15724015753381017874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n % 2 : ℕ) : ℤ) + (n : ℤ) * ((n : ℤ) - 2)

end

end A137932.P15724015753381017874

namespace A137932

/-- `n%2+n*(n-2)` -/
def P15724015753381017874.Spec : Prop :=
  ∀ n, P15724015753381017874.a n = A137932 n

end A137932

/-! ## A137932.P1501253460087035059

`and(1, n)+n*(n-2)`
-/

namespace A137932.P1501253460087035059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.land 1 n : ℤ) + (n : ℤ) * ((n : ℤ) - 2)

end

end A137932.P1501253460087035059

namespace A137932

/-- `and(1, n)+n*(n-2)` -/
def P1501253460087035059.Spec : Prop :=
  ∀ n, P1501253460087035059.a n = A137932 n

end A137932

/-! ## A137932.P6413315561372098271

`abs(and(-2, n*(2-n)))`
-/

namespace A137932.P6413315561372098271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.land (-2) ((n : ℤ) * (2 - (n : ℤ)))|

end

end A137932.P6413315561372098271

namespace A137932

/-- `abs(and(-2, n*(2-n)))` -/
def P6413315561372098271.Spec : Prop :=
  ∀ n, P6413315561372098271.a n = A137932 n

end A137932

/-! ## A137932.P10985439764081460867

`-and(-2, n*(2-n))`
-/

namespace A137932.P10985439764081460867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.land (-2) ((n : ℤ) * (2 - (n : ℤ)))

end

end A137932.P10985439764081460867

namespace A137932

/-- `-and(-2, n*(2-n))` -/
def P10985439764081460867.Spec : Prop :=
  ∀ n, P10985439764081460867.a n = A137932 n

end A137932

/-! ## A137932.P6037685796988926446

`∑[a(n-2)+4]` with `a(0)=0, a(1)=0, a(2)=0`
-/

namespace A137932.P6037685796988926446
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 0] fun n f1 =>
  f1 (n - 2) + 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A137932.P6037685796988926446

namespace A137932

/-- `∑[a(n-2)+4]` -/
def P6037685796988926446.Spec : Prop :=
  ∀ n, (P6037685796988926446.a n : ℤ) = A137932 n

end A137932

/-! ## A137932.P4621490275574536521

`(1-n)²-(n+1)%2`
-/

namespace A137932.P4621490275574536521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (n : ℤ)) ^ 2 - (((n + 1) % 2 : ℕ) : ℤ)

end

end A137932.P4621490275574536521

namespace A137932

/-- `(1-n)²-(n+1)%2` -/
def P4621490275574536521.Spec : Prop :=
  ∀ n, P4621490275574536521.a n = A137932 n

end A137932

/-! ## A137932.P15571365761992232868

`(1-n)²+1-gcd(2, n)`
-/

namespace A137932.P15571365761992232868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (n : ℤ)) ^ 2 + (1 - (Nat.gcd 2 n : ℤ))

end

end A137932.P15571365761992232868

namespace A137932

/-- `(1-n)²+1-gcd(2, n)` -/
def P15571365761992232868.Spec : Prop :=
  ∀ n, P15571365761992232868.a n = A137932 n

end A137932

/-! ## A137932.P7802705017996951523

`∑[xor(1, n-3)+n]+4`
-/

namespace A137932.P7802705017996951523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 ((n : ℤ) - 3) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 4

end

end A137932.P7802705017996951523

namespace A137932

/-- `∑[xor(1, n-3)+n]+4` -/
def P7802705017996951523.Spec : Prop :=
  ∀ n, P7802705017996951523.a n = A137932 n

end A137932

/-! ## A137932.P6305536484212327952

`(1-n)²-C(n, lcm(2, n))`
-/

namespace A137932.P6305536484212327952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (n : ℤ)) ^ 2 - (Nat.choose n (Nat.lcm 2 n) : ℤ)

end

end A137932.P6305536484212327952

namespace A137932

/-- `(1-n)²-C(n, lcm(2, n))` -/
def P6305536484212327952.Spec : Prop :=
  ∀ n, P6305536484212327952.a n = A137932 n

end A137932

/-! ## A137932.P15868075276193027736

`n²-eq[2, xor(n, n+2)]`
-/

namespace A137932.P15868075276193027736
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - (SequenceMachineLib.nth (fun j => f1 j = f2 j) n : ℤ)

end

end A137932.P15868075276193027736

namespace A137932

/-- `n²-eq[2, xor(n, n+2)]` -/
def P15868075276193027736.Spec : Prop :=
  ∀ n, P15868075276193027736.a n = A137932 n

end A137932

/-!
# A137933: Least common multiple of n^2 and 2.

The programs for A137933, the canonical program `A137933.P15299060257872889024` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A137933 has offset 1).

The definition of A137933 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A137933.P8887636763594573566

`lcm((n+1)², 2)`
-/

namespace A137933.P8887636763594573566
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm ((n + 1) ^ 2) 2

end

end A137933.P8887636763594573566

namespace A137933

/-- `lcm((n+1)², 2)` -/
def P8887636763594573566.Spec : Prop :=
  ∀ n, (P8887636763594573566.a n : ℤ) = A137933 (n + 1)

end A137933

/-! ## A137933.P15299060257872889024

`(n+1)*A109043(n+1)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A137933

/-- `(n+1)*A109043(n+1)` -/
def P15299060257872889024.Spec : Prop :=
  ∀ n, P15299060257872889024.a n = A137933 (n + 1)

theorem P15299060257872889024.correct : P15299060257872889024.Spec := by
  intro n
  simp only [A137933, Nat.add_sub_cancel]

end A137933

/-! ## A137933.P6720061646745991213

`sqrt(lcm(4, (n+1)^4))`
-/

namespace A137933.P6720061646745991213
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (Nat.lcm 4 ((n + 1) ^ 4) : ℝ)

end

end A137933.P6720061646745991213

namespace A137933

/-- `sqrt(lcm(4, (n+1)^4))` -/
def P6720061646745991213.Spec : Prop :=
  ∀ n, P6720061646745991213.a n = (A137933 (n + 1) : ℝ)

end A137933

/-! ## A137933.P15530026859206155890

`(n+1)²*gcd(2, n)`
-/

namespace A137933.P15530026859206155890
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2 * Nat.gcd 2 n

end

end A137933.P15530026859206155890

namespace A137933

/-- `(n+1)²*gcd(2, n)` -/
def P15530026859206155890.Spec : Prop :=
  ∀ n, (P15530026859206155890.a n : ℤ) = A137933 (n + 1)

end A137933

/-! ## A137933.P3669062709355128428

`root(lcm(8, (n+1)^6), 3)`
-/

namespace A137933.P3669062709355128428
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 8 ((n + 1) ^ 6) : ℝ) ^ (1 / (3 : ℝ))

end

end A137933.P3669062709355128428

namespace A137933

/-- `root(lcm(8, (n+1)^6), 3)` -/
def P3669062709355128428.Spec : Prop :=
  ∀ n, P3669062709355128428.a n = (A137933 (n + 1) : ℝ)

end A137933

/-! ## A137933.P11418737287237626894

`(2-n%2)*(n+1)²`
-/

namespace A137933.P11418737287237626894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - ((n % 2 : ℕ) : ℤ)) * ((n + 1) ^ 2 : ℤ)

end

end A137933.P11418737287237626894

namespace A137933

/-- `(2-n%2)*(n+1)²` -/
def P11418737287237626894.Spec : Prop :=
  ∀ n, P11418737287237626894.a n = A137933 (n + 1)

end A137933

/-! ## A137933.P8486307583348002750

`(2-and(1, n))*(n+1)²`
-/

namespace A137933.P8486307583348002750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - (Nat.land 1 n : ℤ)) * ((n + 1) ^ 2 : ℤ)

end

end A137933.P8486307583348002750

namespace A137933

/-- `(2-and(1, n))*(n+1)²` -/
def P8486307583348002750.Spec : Prop :=
  ∀ n, P8486307583348002750.a n = A137933 (n + 1)

end A137933

/-! ## A137933.P6158945624720330489

`abs((n+1)²*or(n, -2))`
-/

namespace A137933.P6158945624720330489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((n + 1) ^ 2 : ℤ) * Int.lor (n : ℤ) (-2)|

end

end A137933.P6158945624720330489

namespace A137933

/-- `abs((n+1)²*or(n, -2))` -/
def P6158945624720330489.Spec : Prop :=
  ∀ n, P6158945624720330489.a n = A137933 (n + 1)

end A137933

/-! ## A137933.P12617595315424529069

`-((n+1)²*or(n, -2))`
-/

namespace A137933.P12617595315424529069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(((n + 1) ^ 2 : ℤ) * Int.lor (n : ℤ) (-2))

end

end A137933.P12617595315424529069

namespace A137933

/-- `-((n+1)²*or(n, -2))` -/
def P12617595315424529069.Spec : Prop :=
  ∀ n, P12617595315424529069.a n = A137933 (n + 1)

end A137933

/-! ## A137933.P11968738319641353132

`(n+1)*lcm(n+1, 4/2)`
-/

namespace A137933.P11968738319641353132
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * Int.lcm (n + 1 : ℤ) (SequenceMachineLib.roundAway ((4 : ℚ) / 2))

end

end A137933.P11968738319641353132

namespace A137933

/-- `(n+1)*lcm(n+1, 4/2)` -/
def P11968738319641353132.Spec : Prop :=
  ∀ n, (P11968738319641353132.a n : ℤ) = A137933 (n + 1)

end A137933

/-! ## A137933.P14512507153245576912

`(char[2*n]+1)*(n+1)²`
-/

namespace A137933.P14512507153245576912
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0) + 1) * (n + 1) ^ 2

end

end A137933.P14512507153245576912

namespace A137933

/-- `(char[2*n]+1)*(n+1)²` -/
def P14512507153245576912.Spec : Prop :=
  ∀ n, (P14512507153245576912.a n : ℤ) = A137933 (n + 1)

end A137933

/-! ## A137933.P15604789690736740621

`8*∑[n]²/a(n-1)` with `a(0)=2`
-/

namespace A137933.P15604789690736740621
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.rec [2] fun n a =>
  ((8 * (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℚ) / a (n - 1)

end

end A137933.P15604789690736740621

namespace A137933

/-- `8*∑[n]²/a(n-1)` -/
def P15604789690736740621.Spec : Prop :=
  ∀ n, P15604789690736740621.a n = (A137933 (n + 1) : ℚ)

end A137933

/-! ## A137933.P3783420613125919334

`2/((n²+n)^(-2)*a(n-1))` with `a(0)=2`
-/

namespace A137933.P3783420613125919334
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [2] fun n a =>
  2 / ((n ^ 2 + n : ℚ) ^ (-2 : ℤ) * a (n - 1))

end

end A137933.P3783420613125919334

namespace A137933

/-- `2/((n²+n)^(-2)*a(n-1))` -/
def P3783420613125919334.Spec : Prop :=
  ∀ n, P3783420613125919334.a n = (A137933 (n + 1) : ℚ)

end A137933

/-! ## A137933.P15231260196796226681

`a(n-2)/(1-2/(n+1))²` with `a(0)=2, a(1)=4`
-/

namespace A137933.P15231260196796226681
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [2, 4] fun n a =>
  a (n - 2) / (1 - 2 / (n + 1 : ℚ)) ^ 2

end

end A137933.P15231260196796226681

namespace A137933

/-- `a(n-2)/(1-2/(n+1))²` -/
def P15231260196796226681.Spec : Prop :=
  ∀ n, P15231260196796226681.a n = (A137933 (n + 1) : ℚ)

end A137933

/-! ## A137933.P7595432866243265333

`∑[floor(a(n-2))]/(n+1)^(-2)` with `a(0)=2, a(1)=-1, a(2)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A137933.P7595432866243265333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, -1, 1] fun n f1 =>
  f1 (n - 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (n + 1 : ℚ) ^ (-2 : ℤ)

end

end A137933.P7595432866243265333

namespace A137933

/-- `∑[floor(a(n-2))]/(n+1)^(-2)` -/
def P7595432866243265333.Spec : Prop :=
  ∀ n, P7595432866243265333.a n = (A137933 (n + 1) : ℚ)

end A137933

/-! ## A137933.P5537940464989474623

`A181900(n)+A123167(n+1)`
-/

namespace A137933.P5537940464989474623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181900 n + A123167 (n + 1)

end

end A137933.P5537940464989474623

namespace A137933

/-- `A181900(n)+A123167(n+1)` -/
def P5537940464989474623.Spec : Prop :=
  ∀ n, P5537940464989474623.a n = A137933 (n + 1)

end A137933

/-! ## A137933.P17592967576016057424

`A033581(n+1)/A010704(n)`
-/

namespace A137933.P17592967576016057424
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033581 (n + 1) : ℚ) / (A010704 n : ℚ)

end

end A137933.P17592967576016057424

namespace A137933

/-- `A033581(n+1)/A010704(n)` -/
def P17592967576016057424.Spec : Prop :=
  ∀ n, P17592967576016057424.a n = (A137933 (n + 1) : ℚ)

end A137933

/-! ## A137933.P17614368859065496538

`A179824(n+2)/A045896(n)`
-/

namespace A137933.P17614368859065496538
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A179824 (n + 2) : ℚ) / (A045896 n : ℚ)

end

end A137933.P17614368859065496538

namespace A137933

/-- `A179824(n+2)/A045896(n)` -/
def P17614368859065496538.Spec : Prop :=
  ∀ n, P17614368859065496538.a n = (A137933 (n + 1) : ℚ)

end A137933

/-! ## A137933.P16719167845093434525

`gcd(A099764(n), A106318(n+1))`
-/

namespace A137933.P16719167845093434525
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A099764 n) (A106318 (n + 1))

end

end A137933.P16719167845093434525

namespace A137933

/-- `gcd(A099764(n), A106318(n+1))` -/
def P16719167845093434525.Spec : Prop :=
  ∀ n, (P16719167845093434525.a n : ℤ) = A137933 (n + 1)

end A137933

/-! ## A137933.P10757661533224599919

`gcd(A035287(n+1), A259435(n))`
-/

namespace A137933.P10757661533224599919
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A035287 (n + 1)) (A259435 n)

end

end A137933.P10757661533224599919

namespace A137933

/-- `gcd(A035287(n+1), A259435(n))` -/
def P10757661533224599919.Spec : Prop :=
  ∀ n, (P10757661533224599919.a n : ℤ) = A137933 (n + 1)

end A137933

/-!
# A137934: Period 6: 2,2,2,2,2,0.

The programs for A137934, the canonical program `A137934.P9069368963092737308` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A137934 has offset 1).

The definition of A137934 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A137934.P9069368963092737308

`2*A097325(n+1)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A137934

/-- `2*A097325(n+1)` -/
def P9069368963092737308.Spec : Prop :=
  ∀ n, P9069368963092737308.a n = A137934 (n + 1)

theorem P9069368963092737308.correct : P9069368963092737308.Spec := by
  intro n
  simp only [A137934, Nat.add_sub_cancel]

end A137934

/-!
# A137935: a(n) = 5n + 26*floor(n/5).

The programs for A137935, the canonical program `A137935.P6218293101275807575` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A137935 has offset 0).

The definition of A137935 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `5*n+26*floor(n/5)` (program `A137935.P6218293101275807575`, by `A137935.P6218293101275807575.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A137935.P6218293101275807575

`5*n+26*floor(n/5)`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A137935

/-- `5*n+26*floor(n/5)` -/
def P6218293101275807575.Spec : Prop :=
  ∀ n, P6218293101275807575.a n = A137935 n

theorem P6218293101275807575.correct : P6218293101275807575.Spec := by
  intro n
  simp only [A137935]

end A137935

/-! ## A137935.P12980115601115788944

`eq[A005843(n), A007091(A264995(n))]`
-/

namespace A137935.P12980115601115788944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007091 (A264995 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A137935.P12980115601115788944

namespace A137935

/-- `eq[A005843(n), A007091(A264995(n))]` -/
def P12980115601115788944.Spec : Prop :=
  ∀ n, (P12980115601115788944.a n : ℤ) = A137935 n

end A137935

/-! ## A137935.P7904690763605560516

`eq[A061602(2*n), A061602(A007091(n))]`
-/

namespace A137935.P7904690763605560516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061602 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061602 (A007091 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A137935.P7904690763605560516

namespace A137935

/-- `eq[A061602(2*n), A061602(A007091(n))]` -/
def P7904690763605560516.Spec : Prop :=
  ∀ n, (P7904690763605560516.a n : ℤ) = A137935 n

end A137935

/-! ## A137935.P13619500388170543412

`eq[A010878(A108773(n)), A053824(n)]`
-/

namespace A137935.P13619500388170543412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010878 (A108773 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053824 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A137935.P13619500388170543412

namespace A137935

/-- `eq[A010878(A108773(n)), A053824(n)]` -/
def P13619500388170543412.Spec : Prop :=
  ∀ n, (P13619500388170543412.a n : ℤ) = A137935 n

end A137935

/-!
# A137936: a(n) = 5*mod(n,5) + floor(n/5).

The programs for A137936, the canonical program `A137936.P10521196556186811490` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A137936 has offset 0).

The definition of A137936 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `5*n%5+floor(n/5)` (program `A137936.P10521196556186811490`, by `A137936.P10521196556186811490.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A137936.P10521196556186811490

`5*n%5+floor(n/5)`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A137936

/-- `5*n%5+floor(n/5)` -/
def P10521196556186811490.Spec : Prop :=
  ∀ n, P10521196556186811490.a n = A137936 n

theorem P10521196556186811490.correct : P10521196556186811490.Spec := by
  intro n
  simp only [A137936]

end A137936

/-! ## A137936.P7051056610177359319

`5*A010874(n)+A002266(n)`
-/

namespace A137936.P7051056610177359319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A010874 n + A002266 n

end

end A137936.P7051056610177359319

namespace A137936

/-- `5*A010874(n)+A002266(n)` -/
def P7051056610177359319.Spec : Prop :=
  ∀ n, P7051056610177359319.a n = A137936 n

end A137936

/-! ## A137936.P8470183402142717408

`(24*n%5+n)/5`
-/

namespace A137936.P8470183402142717408
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((24 * (n % 5) + n : ℕ) : ℚ) / 5

end

end A137936.P8470183402142717408

namespace A137936

/-- `(24*n%5+n)/5` -/
def P8470183402142717408.Spec : Prop :=
  ∀ n, P8470183402142717408.a n = (A137936 n : ℚ)

end A137936

/-! ## A137936.P12311051162688819754

`A137935(n)-50*A002266(n)`
-/

namespace A137936.P12311051162688819754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137935 n - 50 * A002266 n

end

end A137936.P12311051162688819754

namespace A137936

/-- `A137935(n)-50*A002266(n)` -/
def P12311051162688819754.Spec : Prop :=
  ∀ n, P12311051162688819754.a n = A137936 n

end A137936

/-! ## A137936.P7589346370245501894

`A008587(n)-A008606(A002266(n))`
-/

namespace A137936.P7589346370245501894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008587 n - A008606 (A002266 n).toNat

end

end A137936.P7589346370245501894

namespace A137936

/-- `A008587(n)-A008606(A002266(n))` -/
def P7589346370245501894.Spec : Prop :=
  ∀ n, P7589346370245501894.a n = A137936 n

end A137936

/-! ## A137936.P15315377992260745569

`A076312(2*n)+A010874(n)`
-/

namespace A137936.P15315377992260745569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076312 (2 * n) + A010874 n

end

end A137936.P15315377992260745569

namespace A137936

/-- `A076312(2*n)+A010874(n)` -/
def P15315377992260745569.Spec : Prop :=
  ∀ n, P15315377992260745569.a n = A137936 n

end A137936

/-! ## A137936.P10439145299508605906

`(A076314(2*n)+A076310(2*n))/2`
-/

namespace A137936.P10439145299508605906
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A076314 (2 * n) + A076310 (2 * n) : ℚ) / 2

end

end A137936.P10439145299508605906

namespace A137936

/-- `(A076314(2*n)+A076310(2*n))/2` -/
def P10439145299508605906.Spec : Prop :=
  ∀ n, P10439145299508605906.a n = (A137936 n : ℚ)

end A137936

/-! ## A137936.P9705501210891357672

`A004526(A076314(2*n)+A076310(2*n))`
-/

namespace A137936.P9705501210891357672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A076314 (2 * n) + A076310 (2 * n)).toNat

end

end A137936.P9705501210891357672

namespace A137936

/-- `A004526(A076314(2*n)+A076310(2*n))` -/
def P9705501210891357672.Spec : Prop :=
  ∀ n, P9705501210891357672.a n = A137936 n

end A137936

/-! ## A137936.P16889336028690160897

`A336483(A293292(n+1))`
-/

namespace A137936.P16889336028690160897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336483 (A293292 (n + 1)).toNat

end

end A137936.P16889336028690160897

namespace A137936

/-- `A336483(A293292(n+1))` -/
def P16889336028690160897.Spec : Prop :=
  ∀ n, P16889336028690160897.a n = A137936 n

end A137936

/-! ## A137936.P10934602545904431065

`A008585(A081594(2*n))-n`
-/

namespace A137936.P10934602545904431065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 (A081594 (2 * n)).toNat - (n : ℤ)

end

end A137936.P10934602545904431065

namespace A137936

/-- `A008585(A081594(2*n))-n` -/
def P10934602545904431065.Spec : Prop :=
  ∀ n, P10934602545904431065.a n = A137936 n

end A137936

/-! ## A137936.P3694562884556458895

`A076312(2*n)+A010879(2*n)/2`
-/

namespace A137936.P3694562884556458895
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A076312 (2 * n) : ℚ) + (A010879 (2 * n) : ℚ) / 2

end

end A137936.P3694562884556458895

namespace A137936

/-- `A076312(2*n)+A010879(2*n)/2` -/
def P3694562884556458895.Spec : Prop :=
  ∀ n, P3694562884556458895.a n = (A137936 n : ℚ)

end A137936

/-!
# A137937: A137904(n) - A137575(n).

The programs for A137937, there is no canonical definition to state claims against.
-/

/-! ## A137937.P5016168800866896410

`A137904(n)-A137575(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A137937.P5016168800866896410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137904 n - A137575 (n + 1)

end

end A137937.P5016168800866896410

/-! ## A137937.P8024642353956082570

`floor(abs(ϕ-A138100(n+1)))`
-/

namespace A137937.P8024642353956082570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊|Real.goldenRatio - (A138100 (n + 1) : ℝ)|⌋

end

end A137937.P8024642353956082570

/-! ## A137937.P1814414374746104652

`A138100(ceil(acot(n)+n))-2`
-/

namespace A137937.P1814414374746104652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138100 ⌈SequenceMachineLib.acot (n : ℝ) + (n : ℝ)⌉.toNat - 2

end

end A137937.P1814414374746104652

/-! ## A137937.P5816623816828988981

`A138100(floor(acot(n)+n)+1)-2`
-/

namespace A137937.P5816623816828988981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138100 (⌊SequenceMachineLib.acot (n : ℝ) + (n : ℝ)⌋ + 1).toNat - 2

end

end A137937.P5816623816828988981

/-! ## A137937.P10290231454573777418

`A137913(floor(n-atan(n)))%Δ[n²]`
-/

namespace A137937.P10290231454573777418
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A137913 ⌊(n : ℝ) - Real.arctan (n : ℝ)⌋.toNat) ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A137937.P10290231454573777418

/-! ## A137937.P8359044629869375061

`A289207(A138100(n+1))`
-/

namespace A137937.P8359044629869375061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 (A138100 (n + 1)).toNat

end

end A137937.P8359044629869375061

/-! ## A137937.P6049883032601906097

`A138100(n+1)-A036453(n+1)`
-/

namespace A137937.P6049883032601906097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138100 (n + 1) - A036453 (n + 1)

end

end A137937.P6049883032601906097

/-! ## A137937.P12423734734312252385

`(A138100(n+1)-2)%A000032(n+1)`
-/

namespace A137937.P12423734734312252385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A138100 (n + 1) - 2) (A000032 (n + 1))

end

end A137937.P12423734734312252385

/-! ## A137937.P3272600385587882974

`A138100(n+1)-A011782(n+1)/A011782(n)`
-/

namespace A137937.P3272600385587882974
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138100 (n + 1) : ℚ) - (A011782 (n + 1) : ℚ) / (A011782 n : ℚ)

end

end A137937.P3272600385587882974

/-!
# A137938: Number of 4-way intersections in the interior of a regular 6n-gon.

The programs for A137938, there is no canonical definition to state claims against.
-/

/-! ## A137938.P15317782055278683956

`A101364(6*(n+1))`
-/

namespace A137938.P15317782055278683956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101364 (6 * (n + 1))

end

end A137938.P15317782055278683956

/-! ## A137938.P6638889014956463772

`A292105(A062123(n+1))`
-/

namespace A137938.P6638889014956463772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292105 (A062123 (n + 1)).toNat

end

end A137938.P6638889014956463772

/-! ## A137938.P11464913455052444716

`A292105(A000217(3*n+4)+1)`
-/

namespace A137938.P11464913455052444716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292105 (A000217 (3 * n + 4) + 1).toNat

end

end A137938.P11464913455052444716

/-!
# A137939: Number of 5-way intersections in the interior of a regular 6n-gon.

The programs for A137939, there is no canonical definition to state claims against.
-/

/-! ## A137939.P3206820315191003844

`A101365(6*(n+1))`
-/

namespace A137939.P3206820315191003844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101365 (6 * (n + 1))

end

end A137939.P3206820315191003844

/-! ## A137939.P15506499134775077299

`lcm(2, A101365(A008458(n+1)))`
-/

namespace A137939.P15506499134775077299
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A101365 (A008458 (n + 1)).toNat)

end

end A137939.P15506499134775077299

/-! ## A137939.P654637137353461538

`A101365(A008458(n+1))^A005195(C(2, n))`
-/

namespace A137939.P654637137353461538
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A101365 (A008458 (n + 1)).toNat : ℚ) ^ (A005195 (Nat.choose 2 n) : ℤ)

end

end A137939.P654637137353461538

/-! ## A137939.P4968889248710664940

`A101365(A008458(n+1))^A007318(C(2, n))`
-/

namespace A137939.P4968889248710664940
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A101365 (A008458 (n + 1)).toNat : ℚ) ^ (A007318 (Nat.choose 2 n) : ℤ)

end

end A137939.P4968889248710664940

/-! ## A137939.P13342115595348338486

`A101365(A008458(n+1))^A015440(C(2, n))`
-/

namespace A137939.P13342115595348338486
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A101365 (A008458 (n + 1)).toNat : ℚ) ^ (A015440 (Nat.choose 2 n) : ℤ)

end

end A137939.P13342115595348338486

/-! ## A137939.P7447121771464562714

`A101365(A008458(n+1))^A001222(A052160(n+1))`
-/

namespace A137939.P7447121771464562714
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A101365 (A008458 (n + 1)).toNat : ℚ) ^ (A001222 (A052160 (n + 1)).toNat : ℤ)

end

end A137939.P7447121771464562714

/-! ## A137939.P6218892217812718525

`A101365(A008458(n+1))^A001222(A001359(n+1))`
-/

namespace A137939.P6218892217812718525
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A101365 (A008458 (n + 1)).toNat : ℚ) ^ (A001222 (A001359 (n + 1)).toNat : ℤ)

end

end A137939.P6218892217812718525

/-! ## A137939.P355584281269896463

`A101365(A008458(n+1))^A001222(A136057(n+1))`
-/

namespace A137939.P355584281269896463
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A101365 (A008458 (n + 1)).toNat : ℚ) ^ (A001222 (A136057 (n + 1)).toNat : ℤ)

end

end A137939.P355584281269896463

/-! ## A137939.P6704340899284579421

`A101365(A008458(n+1))/A007318(∑[n])`
-/

namespace A137939.P6704340899284579421
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A101365 (A008458 (n + 1)).toNat : ℚ) / (A007318 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ)

end

end A137939.P6704340899284579421

/-! ## A137939.P9084149440004522243

`A101365(A008458(n+1))^A007318(∑[n+2])`
-/

namespace A137939.P9084149440004522243
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A101365 (A008458 (n + 1)).toNat : ℚ) ^ (A007318 (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ)

end

end A137939.P9084149440004522243

/-!
# A137940: Triangle read by rows, antidiagonals of an array formed by A000012 * A001263 (transform).

The programs for A137940, there is no canonical definition to state claims against.
-/

/-! ## A137940.P6007552538450850621

`A106396(∑[char[∑[n]]]²-n)`
-/

namespace A137940.P6007552538450850621
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106396 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n)

end

end A137940.P6007552538450850621

/-! ## A137940.P7596994073091863564

`or(char[1], A106396(A038722(n+1)))`
-/

namespace A137940.P7596994073091863564
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A106396 (A038722 (n + 1)).toNat)

end

end A137940.P7596994073091863564

/-! ## A137940.P891439422378237446

`A106396(A038722(n+1))%A020707(n)`
-/

namespace A137940.P891439422378237446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A106396 (A038722 (n + 1)).toNat) (A020707 n)

end

end A137940.P891439422378237446

/-! ## A137940.P13590136786011045947

`gcd(A000038(n), A106396(A038722(n+1)))`
-/

namespace A137940.P13590136786011045947
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A106396 (A038722 (n + 1)).toNat)

end

end A137940.P13590136786011045947

/-! ## A137940.P4977169510408892668

`∑{d}[A106396(A038722(n+1)), A000010(#)]`
-/

namespace A137940.P4977169510408892668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106396 (A038722 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A137940.P4977169510408892668

/-! ## A137940.P3061773097010821353

`A106396(A038722(n+1))^A158388(n)^5`
-/

namespace A137940.P3061773097010821353
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A106396 (A038722 (n + 1)).toNat : ℚ) ^ (A158388 n ^ 5 : ℤ)

end

end A137940.P3061773097010821353

/-! ## A137940.P2467189634109910550

`xor(A000007(n+1), A106396(A038722(n+1)))`
-/

namespace A137940.P2467189634109910550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000007 (n + 1)) (A106396 (A038722 (n + 1)).toNat)

end

end A137940.P2467189634109910550

/-! ## A137940.P7747823323869340698

`A106396(A038722(n+1))^A000010(C(2, n)+1)`
-/

namespace A137940.P7747823323869340698
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A106396 (A038722 (n + 1)).toNat : ℚ) ^ (A000010 (Nat.choose 2 n + 1) : ℤ)

end

end A137940.P7747823323869340698

/-! ## A137940.P4361505890634478331

`A106396(A038722(n+1))+A001222(gcd(n, n+1))`
-/

namespace A137940.P4361505890634478331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106396 (A038722 (n + 1)).toNat + A001222 (Nat.gcd n (n + 1))

end

end A137940.P4361505890634478331

/-!
# A137942: 

The programs for A137942, there is no canonical definition to state claims against.
-/

/-! ## A137942.P17885345395465474434

`A134772(2*n)`
-/

namespace A137942.P17885345395465474434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134772 (2 * n)

end

end A137942.P17885345395465474434

/-!
# A137944: Numbers such that the number of composite divisors is a multiple of the number of prime divisors.

The programs for A137944, there is no canonical definition to state claims against.
-/

/-! ## A137944.P7134678516000133604

`∪[A137945(n+1), A246655(n+1)]`
-/

namespace A137944.P7134678516000133604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137945 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246655 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A137944.P7134678516000133604

/-! ## A137944.P13782473756090309522

`eq[A052409(A019565(n)), A328958(n+1)]+1`
-/

namespace A137944.P13782473756090309522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052409 (A019565 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328958 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A137944.P13782473756090309522

/-! ## A137944.P9992890774236956681

`A323306(n+2)%A324792(n)`
-/

namespace A137944.P9992890774236956681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A323306 (n + 2)) (A324792 n)

end

end A137944.P9992890774236956681

/-! ## A137944.P5107073009790229767

`filter[A374666(n+1), A325964(#)]`
-/

namespace A137944.P5107073009790229767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374666 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A325964 (f1 j).toNat = 1) n)

end

end A137944.P5107073009790229767

/-! ## A137944.P16945575166346934066

`eq[2, A124736(A046523(n+1))]+1`
-/

namespace A137944.P16945575166346934066
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124736 (A046523 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A137944.P16945575166346934066

/-!
# A137945: Non-prime-powers such that the number of composite divisors is a multiple of the number of prime divisors.

The programs for A137945, there is no canonical definition to state claims against.
-/

/-! ## A137945.P9255628160313088490

`∩[A137944(n+1), A320632(n+1)]`
-/

namespace A137945.P9255628160313088490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137944 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320632 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137945.P9255628160313088490

/-! ## A137945.P15675104158549406573

`∩[A137944(n+1), A378878(n+1)]`
-/

namespace A137945.P15675104158549406573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137944 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378878 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137945.P15675104158549406573

/-! ## A137945.P10977643853654667997

`∩[A137944(n+1), A393201(n+1)]`
-/

namespace A137945.P10977643853654667997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137944 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393201 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137945.P10977643853654667997

/-! ## A137945.P536112592500496474

`∩[A109426(n+1), A137944(n+1)]`
-/

namespace A137945.P536112592500496474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109426 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137944 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137945.P536112592500496474

/-! ## A137945.P10873468127114896391

`∩[A137944(n+1), A376271(n+1)]`
-/

namespace A137945.P10873468127114896391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137944 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376271 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137945.P10873468127114896391

/-! ## A137945.P5957583557466170691

`∩[A126706(n+1), A137944(n+1)]`
-/

namespace A137945.P5957583557466170691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126706 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137944 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137945.P5957583557466170691

/-! ## A137945.P8740239426776403752

`∩[A137944(n+1), A376834(n+1)]`
-/

namespace A137945.P8740239426776403752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137944 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376834 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137945.P8740239426776403752

/-! ## A137945.P607293692406801958

`∩[A137944(n+1), A376384(n+1)]`
-/

namespace A137945.P607293692406801958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137944 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376384 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137945.P607293692406801958

/-! ## A137945.P18332469145602934410

`∩[A137944(n+1), A307517(n+1)]`
-/

namespace A137945.P18332469145602934410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137944 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307517 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137945.P18332469145602934410

/-! ## A137945.P1857112082189304114

`∩[A137944(n+1), A346608(n+1)]`
-/

namespace A137945.P1857112082189304114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137944 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346608 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137945.P1857112082189304114

/-! ## A137945.P9186325724849278581

`∩[A024619(n+1), A137944(n+1)]`
-/

namespace A137945.P9186325724849278581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024619 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137944 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137945.P9186325724849278581

/-! ## A137945.P1723135228028685620

`∩[A137944(n+1), A158871(n+1)]`
-/

namespace A137945.P1723135228028685620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137944 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158871 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137945.P1723135228028685620

/-! ## A137945.P14196677746972090821

`∩[A137944(n+1), A361102(n+1)]`
-/

namespace A137945.P14196677746972090821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137944 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361102 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137945.P14196677746972090821

/-! ## A137945.P17056401691869355928

`∩[A137944(n+1), A396265(n+1)]`
-/

namespace A137945.P17056401691869355928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137944 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396265 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137945.P17056401691869355928

/-!
# A137946: Triangle of coefficients associate with the expansion of the K_3 graph matric characteristic polynomial as a Sheffer sequence: M = {{0, 1, 1}, {1, 0, 1}, {1, 1, 0}} f(t)=-t^3+3t+2 p(x,t)=1/(2*t^3+3*t^2-1)^x=1/(t^3*f(1/t))^x.

The programs for A137946, there is no canonical definition to state claims against.
-/

/-! ## A137946.P14885254028772102977

`A276090((val(n+1, 2)+1)*A177539(n))`
-/

namespace A137946.P14885254028772102977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276090 ((SequenceMachineLib.valuation (n + 1) 2 + 1 : ℤ) * A177539 n).toNat

end

end A137946.P14885254028772102977

/-! ## A137946.P6345564719453651389

`and(abs((-2)^n+1)-1, A354767(A199396(n+1)))`
-/

namespace A137946.P6345564719453651389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (|(-2) ^ n + 1| - 1) (A354767 (A199396 (n + 1)).toNat)

end

end A137946.P6345564719453651389

/-! ## A137946.P16487890536249272956

`A181819(A346505(n))*A340622(n)`
-/

namespace A137946.P16487890536249272956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181819 (A346505 n).toNat * A340622 n

end

end A137946.P16487890536249272956

/-! ## A137946.P8659370639768828873

`A096625(n+1)*A357645(A060141(n))`
-/

namespace A137946.P8659370639768828873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096625 (n + 1) * A357645 (A060141 n).toNat

end

end A137946.P8659370639768828873

/-!
# A137947: a(n) = k: k is smallest integer > 1 such that sign(d(1)-d(2)) = sign(d(k)-d(k+1)), sign(d(2)-d(3)) = sign(d(k+1)-d(k+2)),...,sign(d(n)-d(n+1)) = sign(d(k+n-1)-d(k+n)), where sign is (-,0,+) and d(m) = the number of positive divisors of m.

The programs for A137947, there is no canonical definition to state claims against.
-/

/-! ## A137947.P2537025626202024442

`A121921(A347755(n))`
-/

namespace A137947.P2537025626202024442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121921 (A347755 n).toNat

end

end A137947.P2537025626202024442

/-! ## A137947.P18327167550330106636

`A133033(A347755(n)²)`
-/

namespace A137947.P18327167550330106636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133033 (A347755 n ^ 2).toNat

end

end A137947.P18327167550330106636

/-! ## A137947.P9874085855753569729

`A091111(A292189(n))%A091101(n+1)`
-/

namespace A137947.P9874085855753569729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A091111 (A292189 n).toNat) (A091101 (n + 1))

end

end A137947.P9874085855753569729

/-! ## A137947.P11662886762951329615

`A310266(3^A212997(n))`
-/

namespace A137947.P11662886762951329615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310266 (SequenceMachineLib.roundAway ((3 : ℚ) ^ (A212997 n : ℤ))).toNat

end

end A137947.P11662886762951329615

/-! ## A137947.P11696869128635836791

`A008713(a(A137748(n)))` with `a(0)=3`
-/

namespace A137947.P11696869128635836791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A008713 (a (A137748 n).toNat).toNat

end

end A137947.P11696869128635836791

/-!
# A137948: Triangle read by rows, A000012 * A136579.

The programs for A137948, the canonical program `A137948.P13154399146745911954` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A137948 has offset 0).

The definition of A137948 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2555 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A137948.P18357316283730967768

`A137267(n+1)+A073424(n)`
-/

namespace A137948.P18357316283730967768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137267 (n + 1) + A073424 n

end

end A137948.P18357316283730967768

namespace A137948

/-- `A137267(n+1)+A073424(n)` -/
def P18357316283730967768.Spec : Prop :=
  ∀ n, P18357316283730967768.a n = A137948 n

end A137948

/-! ## A137948.P9254504174209108340

`A004736(n+1)*A233543(n)`
-/

namespace A137948.P9254504174209108340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1) * A233543 n

end

end A137948.P9254504174209108340

namespace A137948

/-- `A004736(n+1)*A233543(n)` -/
def P9254504174209108340.Spec : Prop :=
  ∀ n, P9254504174209108340.a n = A137948 n

end A137948

/-! ## A137948.P8611475974122113120

`(A025581(n)+1)*A233543(n)`
-/

namespace A137948.P8611475974122113120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A025581 n + 1) * A233543 n

end

end A137948.P8611475974122113120

namespace A137948

/-- `(A025581(n)+1)*A233543(n)` -/
def P8611475974122113120.Spec : Prop :=
  ∀ n, P8611475974122113120.a n = A137948 n

end A137948

/-! ## A137948.P13154399146745911954

`A002262(n)!*A004736(n+1)`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A137948

/-- `A002262(n)!*A004736(n+1)` -/
def P13154399146745911954.Spec : Prop :=
  ∀ n, P13154399146745911954.a n = A137948 n

theorem P13154399146745911954.correct : P13154399146745911954.Spec := by
  intro n
  simp only [A137948]

end A137948

/-! ## A137948.P16017588266252710692

`A002262(n)!*(A025581(n)+1)`
-/

namespace A137948.P16017588266252710692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A002262 n).toNat : ℤ) * (A025581 n + 1)

end

end A137948.P16017588266252710692

namespace A137948

/-- `A002262(n)!*(A025581(n)+1)` -/
def P16017588266252710692.Spec : Prop :=
  ∀ n, P16017588266252710692.a n = A137948 n

end A137948

/-! ## A137948.P999322197052291077

`A144329(n+1)*A165680(n+1)`
-/

namespace A137948.P999322197052291077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144329 (n + 1) * A165680 (n + 1)

end

end A137948.P999322197052291077

namespace A137948

/-- `A144329(n+1)*A165680(n+1)` -/
def P999322197052291077.Spec : Prop :=
  ∀ n, P999322197052291077.a n = A137948 n

end A137948

/-! ## A137948.P18126240870826595133

`A002262(n)!*A057555(2*(n+1))`
-/

namespace A137948.P18126240870826595133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A002262 n).toNat : ℤ) * A057555 (2 * (n + 1))

end

end A137948.P18126240870826595133

namespace A137948

/-- `A002262(n)!*A057555(2*(n+1))` -/
def P18126240870826595133.Spec : Prop :=
  ∀ n, P18126240870826595133.a n = A137948 n

end A137948

/-! ## A137948.P1305300983697304192

`(A002260(n+1)-1)!*A004736(n+1)`
-/

namespace A137948.P1305300983697304192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A002260 (n + 1) - 1).toNat : ℤ) * A004736 (n + 1)

end

end A137948.P1305300983697304192

namespace A137948

/-- `(A002260(n+1)-1)!*A004736(n+1)` -/
def P1305300983697304192.Spec : Prop :=
  ∀ n, P1305300983697304192.a n = A137948 n

end A137948

/-! ## A137948.P446862881134085544

`A027656(2*A025581(n))*A233543(n)`
-/

namespace A137948.P446862881134085544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027656 (2 * A025581 n).toNat * A233543 n

end

end A137948.P446862881134085544

namespace A137948

/-- `A027656(2*A025581(n))*A233543(n)` -/
def P446862881134085544.Spec : Prop :=
  ∀ n, P446862881134085544.a n = A137948 n

end A137948

/-! ## A137948.P16541727083825741905

`A004736(n+1)*A104150(A002262(n)+1)`
-/

namespace A137948.P16541727083825741905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1) * A104150 (A002262 n + 1).toNat

end

end A137948.P16541727083825741905

namespace A137948

/-- `A004736(n+1)*A104150(A002262(n)+1)` -/
def P16541727083825741905.Spec : Prop :=
  ∀ n, P16541727083825741905.a n = A137948 n

end A137948

/-! ## A137948.P2419097618055366787

`A000142(A002260(n+1)-1)*A004736(n+1)`
-/

namespace A137948.P2419097618055366787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 (A002260 (n + 1) - 1).toNat * A004736 (n + 1)

end

end A137948.P2419097618055366787

namespace A137948

/-- `A000142(A002260(n+1)-1)*A004736(n+1)` -/
def P2419097618055366787.Spec : Prop :=
  ∀ n, P2419097618055366787.a n = A137948 n

end A137948

/-! ## A137948.P9886762914864364351

`(A026100(A026098(n+1))-1)!*A004736(n+1)`
-/

namespace A137948.P9886762914864364351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A026100 (A026098 (n + 1)).toNat - 1).toNat : ℤ) * A004736 (n + 1)

end

end A137948.P9886762914864364351

namespace A137948

/-- `(A026100(A026098(n+1))-1)!*A004736(n+1)` -/
def P9886762914864364351.Spec : Prop :=
  ∀ n, P9886762914864364351.a n = A137948 n

end A137948

/-! ## A137948.P11410784194392730413

`A004736(n+1)/A007318(n)*A008279(n)`
-/

namespace A137948.P11410784194392730413
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004736 (n + 1) : ℚ) / (A007318 n : ℚ) * (A008279 n : ℚ)

end

end A137948.P11410784194392730413

namespace A137948

/-- `A004736(n+1)/A007318(n)*A008279(n)` -/
def P11410784194392730413.Spec : Prop :=
  ∀ n, P11410784194392730413.a n = (A137948 n : ℚ)

end A137948

/-! ## A137948.P16395519482389498791

`A245334(n)/A007318(n)`
-/

namespace A137948.P16395519482389498791
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A245334 n : ℚ) / (A007318 n : ℚ)

end

end A137948.P16395519482389498791

namespace A137948

/-- `A245334(n)/A007318(n)` -/
def P16395519482389498791.Spec : Prop :=
  ∀ n, P16395519482389498791.a n = (A137948 n : ℚ)

end A137948

/-! ## A137948.P8830139638890797449

`A137267(A066182(n+1)+1)`
-/

namespace A137948.P8830139638890797449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137267 (A066182 (n + 1) + 1).toNat

end

end A137948.P8830139638890797449

namespace A137948

/-- `A137267(A066182(n+1)+1)` -/
def P8830139638890797449.Spec : Prop :=
  ∀ n, P8830139638890797449.a n = A137948 n

end A137948

/-! ## A137948.P3213327428645404520

`A288777(n+1)/A002260(n+1)`
-/

namespace A137948.P3213327428645404520
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A288777 (n + 1) : ℚ) / (A002260 (n + 1) : ℚ)

end

end A137948.P3213327428645404520

namespace A137948

/-- `A288777(n+1)/A002260(n+1)` -/
def P3213327428645404520.Spec : Prop :=
  ∀ n, P3213327428645404520.a n = (A137948 n : ℚ)

end A137948

/-! ## A137948.P10190278553359129411

`(A288777(n+1)-A288778(n+1))*A004736(n+1)`
-/

namespace A137948.P10190278553359129411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A288777 (n + 1) - A288778 (n + 1)) * A004736 (n + 1)

end

end A137948.P10190278553359129411

namespace A137948

/-- `(A288777(n+1)-A288778(n+1))*A004736(n+1)` -/
def P10190278553359129411.Spec : Prop :=
  ∀ n, P10190278553359129411.a n = A137948 n

end A137948

/-! ## A137948.P11052941545553815713

`A004736(n+1)/A002260(n+1)*A166350(n+1)`
-/

namespace A137948.P11052941545553815713
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004736 (n + 1) : ℚ) / (A002260 (n + 1) : ℚ) * (A166350 (n + 1) : ℚ)

end

end A137948.P11052941545553815713

namespace A137948

/-- `A004736(n+1)/A002260(n+1)*A166350(n+1)` -/
def P11052941545553815713.Spec : Prop :=
  ∀ n, P11052941545553815713.a n = (A137948 n : ℚ)

end A137948

/-! ## A137948.P1141452849522840643

`A002260(A038722(n+1))/A002260(n+1)*A166350(n+1)`
-/

namespace A137948.P1141452849522840643
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002260 (A038722 (n + 1)).toNat : ℚ) / (A002260 (n + 1) : ℚ) * (A166350 (n + 1) : ℚ)

end

end A137948.P1141452849522840643

namespace A137948

/-- `A002260(A038722(n+1))/A002260(n+1)*A166350(n+1)` -/
def P1141452849522840643.Spec : Prop :=
  ∀ n, P1141452849522840643.a n = (A137948 n : ℚ)

end A137948

/-! ## A137948.P4646824606974638891

`A068424(n+1)/A074909(n)`
-/

namespace A137948.P4646824606974638891
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A068424 (n + 1) : ℚ) / (A074909 n : ℚ)

end

end A137948.P4646824606974638891

namespace A137948

/-- `A068424(n+1)/A074909(n)` -/
def P4646824606974638891.Spec : Prop :=
  ∀ n, P4646824606974638891.a n = (A137948 n : ℚ)

end A137948

/-!
# A137951: Redundant binary representation (A089591) of n interpreted as ternary number.

The programs for A137951, the canonical program `A137951.P11331642743113292686` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A137951 has offset 0).

The definition of A137951 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A137951.P12093128911602593944

`A147991(n+1)-1`
-/

namespace A137951.P12093128911602593944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147991 (n + 1) - 1

end

end A137951.P12093128911602593944

namespace A137951

/-- `A147991(n+1)-1` -/
def P12093128911602593944.Spec : Prop :=
  ∀ n, P12093128911602593944.a n = A137951 n

end A137951

/-! ## A137951.P16102237382133292295

`∑[A061393(A053645(n+1))]-1`
-/

namespace A137951.P16102237382133292295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061393 (A053645 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A137951.P16102237382133292295

namespace A137951

/-- `∑[A061393(A053645(n+1))]-1` -/
def P16102237382133292295.Spec : Prop :=
  ∀ n, P16102237382133292295.a n = A137951 n

end A137951

/-! ## A137951.P11331642743113292686

`∑[A061393(A053646(n+1))]-1`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A137951

/-- `∑[A061393(A053646(n+1))]-1` -/
def P11331642743113292686.Spec : Prop :=
  ∀ n, P11331642743113292686.a n = A137951 n

theorem P11331642743113292686.correct : P11331642743113292686.Spec := by
  intro n
  simp only [A137951]

end A137951

/-! ## A137951.P6403410910231236110

`∑[A006046(A080940(n+1))]+n`
-/

namespace A137951.P6403410910231236110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006046 (A080940 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A137951.P6403410910231236110

namespace A137951

/-- `∑[A006046(A080940(n+1))]+n` -/
def P6403410910231236110.Spec : Prop :=
  ∀ n, P6403410910231236110.a n = A137951 n

end A137951

/-! ## A137951.P17071598583896102904

`A259566(n+1)-A005836(n+2)`
-/

namespace A137951.P17071598583896102904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259566 (n + 1) - A005836 (n + 2)

end

end A137951.P17071598583896102904

namespace A137951

/-- `A259566(n+1)-A005836(n+2)` -/
def P17071598583896102904.Spec : Prop :=
  ∀ n, P17071598583896102904.a n = A137951 n

end A137951

/-! ## A137951.P5177864068845082863

`A191109(n+2)-A003278(n+2)`
-/

namespace A137951.P5177864068845082863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191109 (n + 2) - A003278 (n + 2)

end

end A137951.P5177864068845082863

namespace A137951

/-- `A191109(n+2)-A003278(n+2)` -/
def P5177864068845082863.Spec : Prop :=
  ∀ n, P5177864068845082863.a n = A137951 n

end A137951

/-! ## A137951.P8807053495348083195

`A191109(n+2)-(A005836(n+2)+1)`
-/

namespace A137951.P8807053495348083195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191109 (n + 2) - (A005836 (n + 2) + 1)

end

end A137951.P8807053495348083195

namespace A137951

/-- `A191109(n+2)-(A005836(n+2)+1)` -/
def P8807053495348083195.Spec : Prop :=
  ∀ n, P8807053495348083195.a n = A137951 n

end A137951

/-! ## A137951.P15224949075582532223

`A032924(2*(n+1))-A003278(n+2)`
-/

namespace A137951.P15224949075582532223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032924 (2 * (n + 1)) - A003278 (n + 2)

end

end A137951.P15224949075582532223

namespace A137951

/-- `A032924(2*(n+1))-A003278(n+2)` -/
def P15224949075582532223.Spec : Prop :=
  ∀ n, P15224949075582532223.a n = A137951 n

end A137951

/-! ## A137951.P13171616750493096413

`A032924(2*n+1)-A005836(n+2)`
-/

namespace A137951.P13171616750493096413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032924 (2 * n + 1) - A005836 (n + 2)

end

end A137951.P13171616750493096413

namespace A137951

/-- `A032924(2*n+1)-A005836(n+2)` -/
def P13171616750493096413.Spec : Prop :=
  ∀ n, P13171616750493096413.a n = A137951 n

end A137951

/-! ## A137951.P9102270307101885932

`A147991(2*(n+1))%A147991(n+1)`
-/

namespace A137951.P9102270307101885932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A147991 (2 * (n + 1))) (A147991 (n + 1))

end

end A137951.P9102270307101885932

namespace A137951

/-- `A147991(2*(n+1))%A147991(n+1)` -/
def P9102270307101885932.Spec : Prop :=
  ∀ n, P9102270307101885932.a n = A137951 n

end A137951

/-! ## A137951.P11011186379038582460

`A032924(2*n+1)-A005823(n+2)/2`
-/

namespace A137951.P11011186379038582460
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A032924 (2 * n + 1) : ℚ) - (A005823 (n + 2) : ℚ) / 2

end

end A137951.P11011186379038582460

namespace A137951

/-- `A032924(2*n+1)-A005823(n+2)/2` -/
def P11011186379038582460.Spec : Prop :=
  ∀ n, P11011186379038582460.a n = (A137951 n : ℚ)

end A137951

/-! ## A137951.P11936114352523958161

`A107681(2*n+1)+A107681(A054429(n+2))`
-/

namespace A137951.P11936114352523958161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107681 (2 * n + 1) + A107681 (A054429 (n + 2)).toNat

end

end A137951.P11936114352523958161

namespace A137951

/-- `A107681(2*n+1)+A107681(A054429(n+2))` -/
def P11936114352523958161.Spec : Prop :=
  ∀ n, P11936114352523958161.a n = A137951 n

end A137951

/-! ## A137951.P8527609136708854874

`record[A232798(n+1)-1]`
-/

namespace A137951.P8527609136708854874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232798 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A137951.P8527609136708854874

namespace A137951

/-- `record[A232798(n+1)-1]` -/
def P8527609136708854874.Spec : Prop :=
  ∀ n, P8527609136708854874.a n = A137951 n

end A137951

/-! ## A137951.P5959128900905568973

`lt[n, A308364(n+1)]`
-/

namespace A137951.P5959128900905568973
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308364 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A137951.P5959128900905568973

namespace A137951

/-- `lt[n, A308364(n+1)]` -/
def P5959128900905568973.Spec : Prop :=
  ∀ n, (P5959128900905568973.a n : ℤ) = A137951 n

end A137951

/-! ## A137951.P3007867386025039398

`eq[0, A134023(n+1)]`
-/

namespace A137951.P3007867386025039398
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134023 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A137951.P3007867386025039398

namespace A137951

/-- `eq[0, A134023(n+1)]` -/
def P3007867386025039398.Spec : Prop :=
  ∀ n, (P3007867386025039398.a n : ℤ) = A137951 n

end A137951

/-! ## A137951.P12766105804077098363

`A004483(A147991(n+1))`
-/

namespace A137951.P12766105804077098363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004483 (A147991 (n + 1)).toNat

end

end A137951.P12766105804077098363

namespace A137951

/-- `A004483(A147991(n+1))` -/
def P12766105804077098363.Spec : Prop :=
  ∀ n, P12766105804077098363.a n = A137951 n

end A137951

/-! ## A137951.P6281496986636458765

`eq[A005812(n), A134021(n)]-1`
-/

namespace A137951.P6281496986636458765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005812 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134021 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j = f2 j) n : ℤ) - 1

end

end A137951.P6281496986636458765

namespace A137951

/-- `eq[A005812(n), A134021(n)]-1` -/
def P6281496986636458765.Spec : Prop :=
  ∀ n, P6281496986636458765.a n = A137951 n

end A137951

/-! ## A137951.P2821932445218582808

`eq[n, A308364(A028310(n))]-1`
-/

namespace A137951.P2821932445218582808
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308364 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) - 1

end

end A137951.P2821932445218582808

namespace A137951

/-- `eq[n, A308364(A028310(n))]-1` -/
def P2821932445218582808.Spec : Prop :=
  ∀ n, P2821932445218582808.a n = A137951 n

end A137951

/-! ## A137951.P14634629582665433482

`eq[n, A308364(A257174(n))]-1`
-/

namespace A137951.P14634629582665433482
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308364 (A257174 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) - 1

end

end A137951.P14634629582665433482

namespace A137951

/-- `eq[n, A308364(A257174(n))]-1` -/
def P14634629582665433482.Spec : Prop :=
  ∀ n, P14634629582665433482.a n = A137951 n

end A137951

/-! ## A137951.P7018087659531909781

`eq[A005812(n+1), A134021(n+1)]`
-/

namespace A137951.P7018087659531909781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005812 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134021 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A137951.P7018087659531909781

namespace A137951

/-- `eq[A005812(n+1), A134021(n+1)]` -/
def P7018087659531909781.Spec : Prop :=
  ∀ n, (P7018087659531909781.a n : ℤ) = A137951 n

end A137951

/-!
# A137952: G.f. satisfies A(x) = 1 + x*(1 + x*A(x)^3)^2.

The programs for A137952, there is no canonical definition to state claims against.
-/

/-! ## A137952.P7024261772648030369

`A008615(A150563(n)+A117189(n))`
-/

namespace A137952.P7024261772648030369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (A150563 n + A117189 n).toNat

end

end A137952.P7024261772648030369

/-! ## A137952.P1436105662907225323

`A382717(A165528(n))`
-/

namespace A137952.P1436105662907225323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382717 (A165528 n).toNat

end

end A137952.P1436105662907225323

/-! ## A137952.P2059824276750009491

`A002330(A309676(∑[n]))`
-/

namespace A137952.P2059824276750009491
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002330 (A309676 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A137952.P2059824276750009491

/-!
# A137953: G.f. satisfies A(x) = 1 + x*(1 + x*A(x)^2)^3.

The programs for A137953, there is no canonical definition to state claims against.
-/

/-! ## A137953.P6442192428091345338

`A008611(A149457(n)+A149454(n))`
-/

namespace A137953.P6442192428091345338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (A149457 n + A149454 n).toNat

end

end A137953.P6442192428091345338

/-! ## A137953.P5139182297935569433

`A320536(2*(A150247(n)+1))`
-/

namespace A137953.P5139182297935569433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320536 (2 * (A150247 n + 1)).toNat

end

end A137953.P5139182297935569433

/-! ## A137953.P9508442719266554564

`A103221(2*(A293070(n)-n))`
-/

namespace A137953.P9508442719266554564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103221 (2 * (A293070 n - (n : ℤ))).toNat

end

end A137953.P9508442719266554564

/-!
# A137954: G.f. satisfies A(x) = 1 + x + x^2*A(x)^4.

The programs for A137954, there is no canonical definition to state claims against.
-/

/-! ## A137954.P13825457874332442251

`A104481(A149981(n))`
-/

namespace A137954.P13825457874332442251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104481 (A149981 n).toNat

end

end A137954.P13825457874332442251

/-! ## A137954.P3860293683567226559

`A165190(∑[A001644(n)²])`
-/

namespace A137954.P3860293683567226559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001644 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165190 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A137954.P3860293683567226559

/-! ## A137954.P12250842412083484180

`A241091(n²)-A004525(n)+1`
-/

namespace A137954.P12250842412083484180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241091 (n ^ 2) - A004525 n + 1

end

end A137954.P12250842412083484180

/-! ## A137954.P4450507030634602608

`A039708(A148395(n)-(n-gcd(n, ∑[n])))`
-/

namespace A137954.P4450507030634602608
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039708 (A148395 n - ((n : ℤ) - (Nat.gcd n (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ))).toNat

end

end A137954.P4450507030634602608

/-!
# A137955: G.f. satisfies A(x) = 1 + x*(1 + x*A(x)^4)^2.

The programs for A137955, there is no canonical definition to state claims against.
-/

/-! ## A137955.P15380251294295100436

`A181066(n)-A268038(A129123(n))`
-/

namespace A137955.P15380251294295100436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181066 n - A268038 (A129123 n).toNat

end

end A137955.P15380251294295100436

/-! ## A137955.P11093492006339423161

`A187187(A004148(2*n+1)+A001582(n))`
-/

namespace A137955.P11093492006339423161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187187 (A004148 (2 * n + 1) + A001582 n).toNat

end

end A137955.P11093492006339423161

/-!
# A137956: G.f. satisfies A(x) = 1 + x*(1 + x*A(x)^2)^4.

The programs for A137956, there is no canonical definition to state claims against.
-/

/-! ## A137956.P11986238248354462034

`ceil(sqrt(A061503(n^n)))`
-/

namespace A137956.P11986238248354462034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A061503 (n ^ n) : ℝ)⌉

end

end A137956.P11986238248354462034

/-! ## A137956.P3940529636612696037

`A048865(C(abs(1-3*n), n)-n+3)`
-/

namespace A137956.P3940529636612696037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048865 ((Nat.choose |1 - (3 * n : ℤ)|.toNat n : ℤ) - (n : ℤ) + 3).toNat

end

end A137956.P3940529636612696037

/-!
# A137957: G.f. satisfies A(x) = 1 + x*(1 + x*A(x)^4)^3.

The programs for A137957, there is no canonical definition to state claims against.
-/

/-! ## A137957.P17869188052055294113

`A052755(n)+A025437(A052767(n))`
-/

namespace A137957.P17869188052055294113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052755 n + A025437 (A052767 n).toNat

end

end A137957.P17869188052055294113

/-! ## A137957.P15512360561492604694

`A351982(A090338(n))+A052755(n)`
-/

namespace A137957.P15512360561492604694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351982 (A090338 n).toNat + A052755 n

end

end A137957.P15512360561492604694

/-!
# A137958: G.f. satisfies A(x) = 1 + x*(1 + x*A(x)^3)^4.

The programs for A137958, there is no canonical definition to state claims against.
-/

/-! ## A137958.P9020592036481700948

`A178241(A103685(n)+1)`
-/

namespace A137958.P9020592036481700948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178241 (A103685 n + 1).toNat

end

end A137958.P9020592036481700948

/-! ## A137958.P15634486177683406177

`A008621(A359489(n))-A181835(n)`
-/

namespace A137958.P15634486177683406177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (A359489 n).toNat - A181835 n

end

end A137958.P15634486177683406177

/-!
# A137959: G.f. satisfies A(x) = 1 + x + x^2*A(x)^5.

The programs for A137959, there is no canonical definition to state claims against.
-/

/-! ## A137959.P72466250181555067

`A092339(n)+A008616(A117616(n))`
-/

namespace A137959.P72466250181555067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092339 n + A008616 (A117616 n).toNat

end

end A137959.P72466250181555067

/-! ## A137959.P8461073095312093645

`A195177(or(A030494(n+1), A149694(n)))`
-/

namespace A137959.P8461073095312093645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195177 (Int.lor (A030494 (n + 1)) (A149694 n)).toNat

end

end A137959.P8461073095312093645

/-! ## A137959.P13759838144932146775

`A220413(A270922(n))`
-/

namespace A137959.P13759838144932146775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220413 (A270922 n).toNat

end

end A137959.P13759838144932146775

/-!
# A137960: G.f. satisfies A(x) = 1 + x*(1 + x*A(x)^5)^2.

The programs for A137960, there is no canonical definition to state claims against.
-/

/-! ## A137960.P9993045156056182622

`A300272(a(n-1)+2)` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A137960.P9993045156056182622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2] fun n a =>
  A300272 (a (n - 1) + 2).toNat

end

end A137960.P9993045156056182622

/-! ## A137960.P13615412209675505557

`A298205(A109961(n))`
-/

namespace A137960.P13615412209675505557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298205 (A109961 n).toNat

end

end A137960.P13615412209675505557

/-!
# A137961: G.f. satisfies A(x) = 1 + x*(1 + x*A(x)^2)^5.

The programs for A137961, there is no canonical definition to state claims against.
-/

/-! ## A137961.P12743401861087108640

`A008706(A105515(∏[(n+1)²/∏{p}[n+1, #]]))`
-/

namespace A137961.P12743401861087108640
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008706 (A105515 (SequenceMachineLib.roundAway (∏ j ∈ Finset.range (n + 1), f1 j)).toNat).toNat

end

end A137961.P12743401861087108640

/-! ## A137961.P12866945238745094030

`A305923(n)-A090751(A305923(n))`
-/

namespace A137961.P12866945238745094030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305923 n - A090751 (A305923 n).toNat

end

end A137961.P12866945238745094030

/-!
# A137962: G.f. satisfies A(x) = 1 + x*(1 + x*A(x)^5)^3.

The programs for A137962, there is no canonical definition to state claims against.
-/

/-! ## A137962.P3436805574211259320

`A032742(n!*floor((n/2+1)²)-n*char[2^n])`
-/

namespace A137962.P3436805574211259320
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 ((Nat.factorial n : ℤ) * ⌊((n : ℚ) / 2 + 1) ^ 2⌋ - ((n * (if ∃ j, f1 j = n then 1 else 0) : ℕ) : ℤ)).toNat

end

end A137962.P3436805574211259320

/-! ## A137962.P4880543723724062833

`A078898(n!*floor((n/2+1)²)-n*char[2^n])`
-/

namespace A137962.P4880543723724062833
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 ((Nat.factorial n : ℤ) * ⌊((n : ℚ) / 2 + 1) ^ 2⌋ - ((n * (if ∃ j, f1 j = n then 1 else 0) : ℕ) : ℤ)).toNat

end

end A137962.P4880543723724062833

/-!
# A137963: G.f. satisfies A(x) = 1 + x*(1 + x*A(x)^3)^5.

The programs for A137963, there is no canonical definition to state claims against.
-/

/-! ## A137963.P8642046943338714770

`A260160(A001541(n))+A216839(n)`
-/

namespace A137963.P8642046943338714770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260160 (A001541 n).toNat + A216839 n

end

end A137963.P8642046943338714770

/-! ## A137963.P6210062115109688604

`A248562(A193037(n)+A057361(n))`
-/

namespace A137963.P6210062115109688604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248562 (A193037 n + A057361 n).toNat

end

end A137963.P6210062115109688604

/-!
# A137964: G.f. satisfies A(x) = 1 + x*(1 + x*A(x)^5)^4.

The programs for A137964, there is no canonical definition to state claims against.
-/

/-! ## A137964.P14923883810474731430

`A008620(A052781(n)+A041303(n))`
-/

namespace A137964.P14923883810474731430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (A052781 n + A041303 n).toNat

end

end A137964.P14923883810474731430

/-! ## A137964.P1543911828420224620

`A114611(A000108(n))+A052775(n)`
-/

namespace A137964.P1543911828420224620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114611 (A000108 n).toNat + A052775 n

end

end A137964.P1543911828420224620

/-!
# A137965: G.f. satisfies A(x) = 1 + x*(1 + x*A(x)^4)^5.

The programs for A137965, there is no canonical definition to state claims against.
-/

/-! ## A137965.P16808411457822901105

`A028310(A199877(n)-floor(n/3)*ceil(n/3))`
-/

namespace A137965.P16808411457822901105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A199877 n - ⌊(n : ℚ) / 3⌋ * ⌈(n : ℚ) / 3⌉).toNat

end

end A137965.P16808411457822901105

/-! ## A137965.P16479756016903238944

`A028310(A199877(n))-A004524(n)`
-/

namespace A137965.P16479756016903238944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A199877 n).toNat - A004524 n

end

end A137965.P16479756016903238944

/-!
# A137966: G.f. satisfies A(x) = 1+x + x^2*A(x)^6.

The programs for A137966, there is no canonical definition to state claims against.
-/

/-! ## A137966.P7823776329417469272

`A279568(n)-A187253(A001006(n))`
-/

namespace A137966.P7823776329417469272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279568 n - A187253 (A001006 n).toNat

end

end A137966.P7823776329417469272

/-! ## A137966.P3682542575249576776

`A008612(A268617(n+1)+A039708(n))`
-/

namespace A137966.P3682542575249576776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008612 (A268617 (n + 1) + A039708 n).toNat

end

end A137966.P3682542575249576776

/-! ## A137966.P5927190435875835834

`A008612(A268617(n+1)+A073188(n))`
-/

namespace A137966.P5927190435875835834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008612 (A268617 (n + 1) + A073188 n).toNat

end

end A137966.P5927190435875835834

/-!
# A137967: G.f. satisfies A(x) = 1 + x*(1 + x*A(x)^6)^2.

The programs for A137967, there is no canonical definition to state claims against.
-/

/-! ## A137967.P6355223811249300775

`A126257(Δ[A077365(n)])`
-/

namespace A137967.P6355223811249300775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077365 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126257 (f1 (n + 1) - f1 n).toNat

end

end A137967.P6355223811249300775

/-! ## A137967.P1990002019215210960

`A248565(A321274(round(n²/6)+1))`
-/

namespace A137967.P1990002019215210960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248565 (A321274 (SequenceMachineLib.roundAway ((n ^ 2 : ℚ) / 6) + 1).toNat).toNat

end

end A137967.P1990002019215210960

/-!
# A137968: G.f. satisfies A(x) = 1 + x*(1 + x*A(x)^2)^6.

The programs for A137968, there is no canonical definition to state claims against.
-/

/-! ## A137968.P7856475272837594158

`A244815(A305550(n))+A240916(n)`
-/

namespace A137968.P7856475272837594158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244815 (A305550 n).toNat + A240916 n

end

end A137968.P7856475272837594158

/-! ## A137968.P7426076116696148525

`or(A032299(n), A281264(A088456(n)))`
-/

namespace A137968.P7426076116696148525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A032299 n) (A281264 (A088456 n).toNat)

end

end A137968.P7426076116696148525

/-!
# A137969: G.f. satisfies A(x) = 1 + x*(1 + x*A(x)^6)^3.

The programs for A137969, there is no canonical definition to state claims against.
-/

/-! ## A137969.P518884639870943413

`A006161(A002720(n)-n)`
-/

namespace A137969.P518884639870943413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006161 (A002720 n - (n : ℤ)).toNat

end

end A137969.P518884639870943413

/-! ## A137969.P14029215158670757783

`A005185(A134091(n)-A085787(n))`
-/

namespace A137969.P14029215158670757783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005185 (A134091 n - A085787 n).toNat

end

end A137969.P14029215158670757783

/-!
# A137970: G.f. satisfies A(x) = 1 + x*(1 + x*A(x)^3)^6.

The programs for A137970, there is no canonical definition to state claims against.
-/

/-! ## A137970.P6380191926906330482

`A095683(3*(n+1))+A047380(A270665(n))`
-/

namespace A137970.P6380191926906330482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095683 (3 * (n + 1)) + A047380 (A270665 n).toNat

end

end A137970.P6380191926906330482

/-!
# A137971: G.f. satisfies A(x) = 1 + x*(1 + x*A(x)^6)^4.

The programs for A137971, there is no canonical definition to state claims against.
-/

/-! ## A137971.P10803799910011746561

`A004727(A151343(n))`
-/

namespace A137971.P10803799910011746561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004727 (A151343 n).toNat

end

end A137971.P10803799910011746561

/-! ## A137971.P17359737134964515816

`A151343(n)+A077267(A002294(n))`
-/

namespace A137971.P17359737134964515816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151343 n + A077267 (A002294 n).toNat

end

end A137971.P17359737134964515816

/-!
# A137972: G.f. satisfies A(x) = 1 + x*(1 + x*A(x)^4)^6.

The programs for A137972, there is no canonical definition to state claims against.
-/

/-! ## A137972.P13160372068108781945

`A379304(n)+A379261(A208675(n))`
-/

namespace A137972.P13160372068108781945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379304 n + A379261 (A208675 n).toNat

end

end A137972.P13160372068108781945

/-!
# A137973: G.f. satisfies A(x) = 1 + x*(1 + x*A(x)^6)^5.

The programs for A137973, there is no canonical definition to state claims against.
-/

/-! ## A137973.P16907173805789581185

`A094315(A052805(n))+A052798(n)`
-/

namespace A137973.P16907173805789581185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094315 (A052805 n).toNat + A052798 n

end

end A137973.P16907173805789581185

/-!
# A137974: G.f. satisfies A(x) = 1 + x*(1 + x*A(x)^5)^6.

The programs for A137974, there is no canonical definition to state claims against.
-/

/-! ## A137974.P12626209196979170960

`A063954(A000085(n))*A296122(n)`
-/

namespace A137974.P12626209196979170960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063954 (A000085 n).toNat * A296122 n

end

end A137974.P12626209196979170960

/-!
# A137975: Row sums of A139621, number of connected directed multigraphs with loops, with n arcs.

The programs for A137975, there is no canonical definition to state claims against.
-/

/-! ## A137975.P11999356357974225062

`A129620((n+1)*2*n+2*n+1)`
-/

namespace A137975.P11999356357974225062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129620 ((n + 1) * (2 * n) + (2 * n + 1))

end

end A137975.P11999356357974225062

/-! ## A137975.P7474199854588715000

`record[gcd(A026729(n), A129620(n))]`
-/

namespace A137975.P7474199854588715000
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A026729 n) (A129620 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A137975.P7474199854588715000

/-!
# A137976: Fibonacci numbers (A000045) not in A103311.

The programs for A137976, there is no canonical definition to state claims against.
-/

/-! ## A137976.P1503244641080620559

`A103609(5*n+9)`
-/

namespace A137976.P1503244641080620559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103609 (5 * n + 9)

end

end A137976.P1503244641080620559

/-! ## A137976.P7963526872474591496

`∑[A138298(n+1)]+1`
-/

namespace A137976.P7963526872474591496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138298 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A137976.P7963526872474591496

/-! ## A137976.P11156439058940701826

`record[A209435(5*(n+1))]`
-/

namespace A137976.P11156439058940701826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209435 (5 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A137976.P11156439058940701826

/-! ## A137976.P3244917637225823143

`A000045(ceil(5*n/2)+4)`
-/

namespace A137976.P3244917637225823143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (⌈5 * ((n : ℚ) / 2)⌉ + 4).toNat

end

end A137976.P3244917637225823143

/-! ## A137976.P5945210858096787527

`A020701(∑[4-gcd(2, n)]-2)`
-/

namespace A137976.P5945210858096787527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 - (Nat.gcd 2 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020701 (∑ j ∈ Finset.range (n + 1), f1 j - 2).toNat

end

end A137976.P5945210858096787527

/-!
# A137977: Primes congruent to {0, 2, 4, 6, 8, 10} modulo 11.

The programs for A137977, the canonical program `A137977.P15442719875205939156` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A137977 has offset 1).

The definition of A137977 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8308 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A137977.P15442719875205939156

`p?[ceil(11*n/6)]`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A137977

/-- `p?[ceil(11*n/6)]` -/
def P15442719875205939156.Spec : Prop :=
  ∀ n, P15442719875205939156.a n = A137977 (n + 1)

theorem P15442719875205939156.correct : P15442719875205939156.Spec := by
  intro n
  simp only [A137977, Nat.add_sub_cancel]

end A137977

/-! ## A137977.P17125506163689342871

`A000040(eq[2, gcd(2, A039709(n+1))]+1)`
-/

namespace A137977.P17125506163689342871
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A039709 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A137977.P17125506163689342871

namespace A137977

/-- `A000040(eq[2, gcd(2, A039709(n+1))]+1)` -/
def P17125506163689342871.Spec : Prop :=
  ∀ n, P17125506163689342871.a n = A137977 (n + 1)

end A137977

/-! ## A137977.P8339329305369339377

`record[A020639(A016789(n)-A047303(n+1))]`
-/

namespace A137977.P8339329305369339377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A016789 n - A047303 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A137977.P8339329305369339377

namespace A137977

/-- `record[A020639(A016789(n)-A047303(n+1))]` -/
def P8339329305369339377.Spec : Prop :=
  ∀ n, P8339329305369339377.a n = A137977 (n + 1)

end A137977

/-! ## A137977.P13165368620596054501

`record[A020639(A055649(n+1)%2+n+1)]`
-/

namespace A137977.P13165368620596054501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (Int.tmod (A055649 (n + 1)) 2 + (n + 1 : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A137977.P13165368620596054501

namespace A137977

/-- `record[A020639(A055649(n+1)%2+n+1)]` -/
def P13165368620596054501.Spec : Prop :=
  ∀ n, P13165368620596054501.a n = A137977 (n + 1)

end A137977

/-! ## A137977.P11870882906143645876

`eq[A003415(n), A010169(A168186(n+1))]`
-/

namespace A137977.P11870882906143645876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010169 (A168186 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A137977.P11870882906143645876

namespace A137977

/-- `eq[A003415(n), A010169(A168186(n+1))]` -/
def P11870882906143645876.Spec : Prop :=
  ∀ n, (P11870882906143645876.a n : ℤ) = A137977 (n + 1)

end A137977

/-!
# A137978: Primes congruent to {1, 3, 5, 7, 9} modulo 11.

The programs for A137978, the canonical program `A137978.P4212887697593176342` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A137978 has offset 1).

The definition of A137978 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9798 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A137978.P4212887697593176342

`p?[ceil((n+1)/5)+2*n]`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A137978

/-- `p?[ceil((n+1)/5)+2*n]` -/
def P4212887697593176342.Spec : Prop :=
  ∀ n, P4212887697593176342.a n = A137978 (n + 1)

theorem P4212887697593176342.correct : P4212887697593176342.Spec := by
  intro n
  simp only [A137978, Nat.add_sub_cancel]

end A137978

/-! ## A137978.P10357440636198099476

`or(1, p?[comp[6*(n+1)]+n-1])`
-/

namespace A137978.P10357440636198099476
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n + n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A137978.P10357440636198099476

namespace A137978

/-- `or(1, p?[comp[6*(n+1)]+n-1])` -/
def P10357440636198099476.Spec : Prop :=
  ∀ n, P10357440636198099476.a n = A137978 (n + 1)

end A137978

/-! ## A137978.P17376185561692298690

`record[A020639(comp[6*n-2]+3+n)]`
-/

namespace A137978.P17376185561692298690
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (6 * n : ℤ) - 2

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n + 3 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A137978.P17376185561692298690

namespace A137978

/-- `record[A020639(comp[6*n-2]+3+n)]` -/
def P17376185561692298690.Spec : Prop :=
  ∀ n, P17376185561692298690.a n = A137978 (n + 1)

end A137978

/-! ## A137978.P3160105276381566118

`record[A006530(A047253(n+2)+n+1)]`
-/

namespace A137978.P3160105276381566118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A047253 (n + 2) + (n + 1 : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A137978.P3160105276381566118

namespace A137978

/-- `record[A006530(A047253(n+2)+n+1)]` -/
def P3160105276381566118.Spec : Prop :=
  ∀ n, P3160105276381566118.a n = A137978 (n + 1)

end A137978

/-! ## A137978.P8486174768067525487

`∩[A106118(n+1), A272915(n)]`
-/

namespace A137978.P8486174768067525487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106118 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272915 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137978.P8486174768067525487

namespace A137978

/-- `∩[A106118(n+1), A272915(n)]` -/
def P8486174768067525487.Spec : Prop :=
  ∀ n, (P8486174768067525487.a n : ℤ) = A137978 (n + 1)

end A137978

/-! ## A137978.P10848923084879346694

`filter[A160542(2*n+1), A010051(#)]`
-/

namespace A137978.P10848923084879346694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160542 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A137978.P10848923084879346694

namespace A137978

/-- `filter[A160542(2*n+1), A010051(#)]` -/
def P10848923084879346694.Spec : Prop :=
  ∀ n, P10848923084879346694.a n = A137978 (n + 1)

end A137978

/-! ## A137978.P4560214409649961638

`∩[A047497(2*n+1)-n, A000040(n+2)]`
-/

namespace A137978.P4560214409649961638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047497 (2 * n + 1) - (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137978.P4560214409649961638

namespace A137978

/-- `∩[A047497(2*n+1)-n, A000040(n+2)]` -/
def P4560214409649961638.Spec : Prop :=
  ∀ n, (P4560214409649961638.a n : ℤ) = A137978 (n + 1)

end A137978

/-! ## A137978.P15993042248835204849

`record[A014963(comp[6*n-2]+n+3)]`
-/

namespace A137978.P15993042248835204849
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (6 * n : ℤ) - 2

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n + n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A137978.P15993042248835204849

namespace A137978

/-- `record[A014963(comp[6*n-2]+n+3)]` -/
def P15993042248835204849.Spec : Prop :=
  ∀ n, P15993042248835204849.a n = A137978 (n + 1)

end A137978

/-!
# A137980: Numbers k such that k^0 + (k+1)^1 + (k+2)^2 + (k+3)^3 + (k+4)^4 + (k+5)^5 + (k+6)^6 + (k+7)^7 is a prime.

The programs for A137980, there is no canonical definition to state claims against.
-/

/-! ## A137980.P10807696811555930370

`A234521(A086458(n+1)+1)`
-/

namespace A137980.P10807696811555930370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234521 (A086458 (n + 1) + 1).toNat

end

end A137980.P10807696811555930370

/-!
# A137982: Closest pair of primes p <= q such that p + q = n! Sequence gives the lesser member p of the pair.

The programs for A137982, there is no canonical definition to state claims against.
-/

/-! ## A137982.P7441955686911106253

`A112823((n+3)!/2)`
-/

namespace A137982.P7441955686911106253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112823 (SequenceMachineLib.roundAway ((Nat.factorial (n + 3) : ℚ) / 2)).toNat

end

end A137982.P7441955686911106253

/-! ## A137982.P5055591119210617935

`A078587(A111059(n+1)*A283564(n+1))`
-/

namespace A137982.P5055591119210617935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078587 (A111059 (n + 1) * A283564 (n + 1)).toNat

end

end A137982.P5055591119210617935

/-!
# A137983: G.f.: A(x) = 1/(1 - x*A_0(x)) where A_0(x) = 1/(1 - 2x*A_1(x)^(1/2)) such that A_{n-1}(x) = 1/(1 - 2^n*x*[A_{n}(x)]^(1/2^n)) for n>=1 with A_0(x) equal to the g.f. of A137984.

The programs for A137983, there is no canonical definition to state claims against.
-/

/-! ## A137983.P14229670484645511777

`∏{p}[A302699(n)², #]`
-/

namespace A137983.P14229670484645511777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302699 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A137983.P14229670484645511777

/-! ## A137983.P7842457562138380372

`A100919(ceil(exp(n-1)))`
-/

namespace A137983.P7842457562138380372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100919 ⌈Real.exp ((n : ℤ) - 1 : ℝ)⌉.toNat

end

end A137983.P7842457562138380372

/-!
# A137984: G.f.: A(x) = 1/(1 - 2*x*[A_1(x)]^(1/2)); A_1(x) = 1/(1 - 4*x*[A_2(x)]^(1/4)); ...; where A_{n-1}(x) = 1/(1 - 2^n*x*[A_{n}(x)]^(1/2^n)) for n>=1 with A_0(x)=A(x).

The programs for A137984, there is no canonical definition to state claims against.
-/

/-! ## A137984.P16724366046791366469

`A004277(∑[A121681(n)]-A288338(n))`
-/

namespace A137984.P16724366046791366469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121681 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (∑ j ∈ Finset.range (n + 1), f1 j - A288338 n).toNat

end

end A137984.P16724366046791366469

/-! ## A137984.P5455476583993727462

`A059893(A219864(n+1)+A001515(n))`
-/

namespace A137984.P5455476583993727462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059893 (A219864 (n + 1) + A001515 n).toNat

end

end A137984.P5455476583993727462

/-!
# A137985: Complementing any single bit in the binary representation of these primes does not produce a prime number.

The programs for A137985, there is no canonical definition to state claims against.
-/

/-! ## A137985.P8266603544607987238

`∪[A065092(n+1), A385245(n+1)]`
-/

namespace A137985.P8266603544607987238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065092 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385245 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A137985.P8266603544607987238

/-!
# A137990: Least prime p of the form c*3^n+1 with c not divisible by 3.

The programs for A137990, there is no canonical definition to state claims against.
-/

/-! ## A137990.P18153895490756606773

`A151800(lcm(A000244(n), A279690(n+1)))`
-/

namespace A137990.P18153895490756606773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (Int.lcm (A000244 n) (A279690 (n + 1)))

end

end A137990.P18153895490756606773

/-! ## A137990.P14941389012546788225

`A208241(3^n)`
-/

namespace A137990.P14941389012546788225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208241 (3 ^ n)

end

end A137990.P14941389012546788225

/-! ## A137990.P9692969980395222419

`A070847(floor(a(n-1)/2))` with `a(0)=2`
-/

namespace A137990.P9692969980395222419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A070847 ⌊(a (n - 1) : ℚ) / 2⌋.toNat

end

end A137990.P9692969980395222419

/-! ## A137990.P1941542648689682525

`record[A208241(A106516(n))]`
-/

namespace A137990.P1941542648689682525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208241 (A106516 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A137990.P1941542648689682525

/-! ## A137990.P7781692278400937728

`record[A208241(A130599(n))]`
-/

namespace A137990.P7781692278400937728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208241 (A130599 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A137990.P7781692278400937728

/-!
# A137992: A014137 (= partial sums of Catalan numbers A000108) mod 3.

The programs for A137992, the canonical program `A137992.P6858819124335204496` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A137992 has offset 0).

The definition of A137992 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A137992.P6858819124335204496

`∑[A039969(n)]%3`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A137992

/-- `∑[A039969(n)]%3` -/
def P6858819124335204496.Spec : Prop :=
  ∀ n, P6858819124335204496.a n = A137992 n

theorem P6858819124335204496.correct : P6858819124335204496.Spec := by
  intro n
  simp only [A137992]

end A137992

/-! ## A137992.P1058704210492343351

`∑[A130851(n)]%3`
-/

namespace A137992.P1058704210492343351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130851 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) 3

end

end A137992.P1058704210492343351

namespace A137992

/-- `∑[A130851(n)]%3` -/
def P1058704210492343351.Spec : Prop :=
  ∀ n, P1058704210492343351.a n = A137992 n

end A137992

/-! ## A137992.P15713727361233450608

`∑[A159989(n)]%3`
-/

namespace A137992.P15713727361233450608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159989 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) 3

end

end A137992.P15713727361233450608

namespace A137992

/-- `∑[A159989(n)]%3` -/
def P15713727361233450608.Spec : Prop :=
  ∀ n, P15713727361233450608.a n = A137992 n

end A137992

/-! ## A137992.P13429796285551917535

`∑[A259667(n)]%3`
-/

namespace A137992.P13429796285551917535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259667 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) 3

end

end A137992.P13429796285551917535

namespace A137992

/-- `∑[A259667(n)]%3` -/
def P13429796285551917535.Spec : Prop :=
  ∀ n, P13429796285551917535.a n = A137992 n

end A137992

/-! ## A137992.P934570391078368746

`(A005704(n+1)-1)%3`
-/

namespace A137992.P934570391078368746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005704 (n + 1) - 1) 3

end

end A137992.P934570391078368746

namespace A137992

/-- `(A005704(n+1)-1)%3` -/
def P934570391078368746.Spec : Prop :=
  ∀ n, P934570391078368746.a n = A137992 n

end A137992

/-! ## A137992.P15319538344452839635

`A010872(∑[A039969(n)])`
-/

namespace A137992.P15319538344452839635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039969 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010872 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A137992.P15319538344452839635

namespace A137992

/-- `A010872(∑[A039969(n)])` -/
def P15319538344452839635.Spec : Prop :=
  ∀ n, P15319538344452839635.a n = A137992 n

end A137992

/-! ## A137992.P9756429499442648874

`A100286(A038574(n+1))`
-/

namespace A137992.P9756429499442648874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100286 (A038574 (n + 1)).toNat

end

end A137992.P9756429499442648874

namespace A137992

/-- `A100286(A038574(n+1))` -/
def P9756429499442648874.Spec : Prop :=
  ∀ n, P9756429499442648874.a n = A137992 n

end A137992

/-! ## A137992.P1024206245329605555

`A287520(A308364(n+1)+1)`
-/

namespace A137992.P1024206245329605555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287520 (A308364 (n + 1) + 1).toNat

end

end A137992.P1024206245329605555

namespace A137992

/-- `A287520(A308364(n+1)+1)` -/
def P1024206245329605555.Spec : Prop :=
  ∀ n, P1024206245329605555.a n = A137992 n

end A137992

/-! ## A137992.P12377535134269656774

`A010872(A006047(n+1)-1)`
-/

namespace A137992.P12377535134269656774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010872 (A006047 (n + 1) - 1).toNat

end

end A137992.P12377535134269656774

namespace A137992

/-- `A010872(A006047(n+1)-1)` -/
def P12377535134269656774.Spec : Prop :=
  ∀ n, P12377535134269656774.a n = A137992 n

end A137992

/-! ## A137992.P17382152907499689886

`A010872(∑[A039970(2*n+1)])`
-/

namespace A137992.P17382152907499689886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039970 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010872 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A137992.P17382152907499689886

namespace A137992

/-- `A010872(∑[A039970(2*n+1)])` -/
def P17382152907499689886.Spec : Prop :=
  ∀ n, P17382152907499689886.a n = A137992 n

end A137992

/-! ## A137992.P2460749362327332385

`A151670(A151665(A151668(n+1)))`
-/

namespace A137992.P2460749362327332385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151670 (A151665 (A151668 (n + 1)).toNat).toNat

end

end A137992.P2460749362327332385

namespace A137992

/-- `A151670(A151665(A151668(n+1)))` -/
def P2460749362327332385.Spec : Prop :=
  ∀ n, P2460749362327332385.a n = A137992 n

end A137992

/-! ## A137992.P8612532608730824797

`A151668(A151673(A151668(n+1))²)`
-/

namespace A137992.P8612532608730824797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151668 (A151673 (A151668 (n + 1)).toNat ^ 2).toNat

end

end A137992.P8612532608730824797

namespace A137992

/-- `A151668(A151673(A151668(n+1))²)` -/
def P8612532608730824797.Spec : Prop :=
  ∀ n, P8612532608730824797.a n = A137992 n

end A137992

/-! ## A137992.P6754985253164486019

`2-A006996(A010872(n)+n)`
-/

namespace A137992.P6754985253164486019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A006996 (A010872 n + (n : ℤ)).toNat

end

end A137992.P6754985253164486019

namespace A137992

/-- `2-A006996(A010872(n)+n)` -/
def P6754985253164486019.Spec : Prop :=
  ∀ n, P6754985253164486019.a n = A137992 n

end A137992

/-! ## A137992.P1712886840590081874

`A117939(A059126(A117940(n+1))²)`
-/

namespace A137992.P1712886840590081874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117939 (A059126 (A117940 (n + 1)).toNat ^ 2).toNat

end

end A137992.P1712886840590081874

namespace A137992

/-- `A117939(A059126(A117940(n+1))²)` -/
def P1712886840590081874.Spec : Prop :=
  ∀ n, P1712886840590081874.a n = A137992 n

end A137992

/-! ## A137992.P2400086711774833291

`2-A039964(A007310(n+1))`
-/

namespace A137992.P2400086711774833291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A039964 (A007310 (n + 1)).toNat

end

end A137992.P2400086711774833291

namespace A137992

/-- `2-A039964(A007310(n+1))` -/
def P2400086711774833291.Spec : Prop :=
  ∀ n, P2400086711774833291.a n = A137992 n

end A137992

/-! ## A137992.P1713669105826402848

`2-A039964(A038179(n+2))`
-/

namespace A137992.P1713669105826402848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A039964 (A038179 (n + 2)).toNat

end

end A137992.P1713669105826402848

namespace A137992

/-- `2-A039964(A038179(n+2))` -/
def P1713669105826402848.Spec : Prop :=
  ∀ n, P1713669105826402848.a n = A137992 n

end A137992

/-! ## A137992.P1708319680093166746

`2-A039964(A047269(2*(n+1)))`
-/

namespace A137992.P1708319680093166746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A039964 (A047269 (2 * (n + 1))).toNat

end

end A137992.P1708319680093166746

namespace A137992

/-- `2-A039964(A047269(2*(n+1)))` -/
def P1708319680093166746.Spec : Prop :=
  ∀ n, P1708319680093166746.a n = A137992 n

end A137992

/-! ## A137992.P14892192384461120934

`∑[A130856(n)]%A130848(3*n+2)`
-/

namespace A137992.P14892192384461120934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130856 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A130848 (3 * n + 2))

end

end A137992.P14892192384461120934

namespace A137992

/-- `∑[A130856(n)]%A130848(3*n+2)` -/
def P14892192384461120934.Spec : Prop :=
  ∀ n, P14892192384461120934.a n = A137992 n

end A137992

/-! ## A137992.P10888876239747258105

`2-A006996(3*n+4)`
-/

namespace A137992.P10888876239747258105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A006996 (3 * n + 4)

end

end A137992.P10888876239747258105

namespace A137992

/-- `2-A006996(3*n+4)` -/
def P10888876239747258105.Spec : Prop :=
  ∀ n, P10888876239747258105.a n = A137992 n

end A137992

/-! ## A137992.P17995833520631013889

`2-A039968(n+1)`
-/

namespace A137992.P17995833520631013889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A039968 (n + 1)

end

end A137992.P17995833520631013889

namespace A137992

/-- `2-A039968(n+1)` -/
def P17995833520631013889.Spec : Prop :=
  ∀ n, P17995833520631013889.a n = A137992 n

end A137992

/-!
# A137993: A014138 (= partial sums of Catalan numbers starting with 1,2,5) mod 3.

The programs for A137993, the canonical program `A137993.P8968071889324067760` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A137993 has offset 0).

The definition of A137993 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A137993.P8968071889324067760

`∑[(-1)^n*A039964(n)]`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A137993

/-- `∑[(-1)^n*A039964(n)]` -/
def P8968071889324067760.Spec : Prop :=
  ∀ n, P8968071889324067760.a n = A137993 n

theorem P8968071889324067760.correct : P8968071889324067760.Spec := by
  intro n
  simp only [A137993]

end A137993

/-! ## A137993.P15798057542235359455

`A010872(∑[A039969(n+1)])`
-/

namespace A137993.P15798057542235359455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039969 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010872 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A137993.P15798057542235359455

namespace A137993

/-- `A010872(∑[A039969(n+1)])` -/
def P15798057542235359455.Spec : Prop :=
  ∀ n, P15798057542235359455.a n = A137993 n

end A137993

/-! ## A137993.P16101603171316560926

`∑[A132328(n+2)]%3`
-/

namespace A137993.P16101603171316560926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132328 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) 3

end

end A137993.P16101603171316560926

namespace A137993

/-- `∑[A132328(n+2)]%3` -/
def P16101603171316560926.Spec : Prop :=
  ∀ n, P16101603171316560926.a n = A137993 n

end A137993

/-! ## A137993.P9315672043725572707

`∑[A062051(n+2)]%3`
-/

namespace A137993.P9315672043725572707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062051 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) 3

end

end A137993.P9315672043725572707

namespace A137993

/-- `∑[A062051(n+2)]%3` -/
def P9315672043725572707.Spec : Prop :=
  ∀ n, P9315672043725572707.a n = A137993 n

end A137993

/-! ## A137993.P15665793423124315125

`A151669(A151668(n+2))`
-/

namespace A137993.P15665793423124315125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151669 (A151668 (n + 2)).toNat

end

end A137993.P15665793423124315125

namespace A137993

/-- `A151669(A151668(n+2))` -/
def P15665793423124315125.Spec : Prop :=
  ∀ n, P15665793423124315125.a n = A137993 n

end A137993

/-! ## A137993.P4254082369098041395

`A117963(A059126(A117940(n+2)))`
-/

namespace A137993.P4254082369098041395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117963 (A059126 (A117940 (n + 2)).toNat).toNat

end

end A137993.P4254082369098041395

namespace A137993

/-- `A117963(A059126(A117940(n+2)))` -/
def P4254082369098041395.Spec : Prop :=
  ∀ n, P4254082369098041395.a n = A137993 n

end A137993

/-! ## A137993.P10062799654884630492

`C(2, A039971(2*n+5)²)`
-/

namespace A137993.P10062799654884630492
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A039971 (2 * n + 5) ^ 2).toNat

end

end A137993.P10062799654884630492

namespace A137993

/-- `C(2, A039971(2*n+5)²)` -/
def P10062799654884630492.Spec : Prop :=
  ∀ n, (P10062799654884630492.a n : ℤ) = A137993 n

end A137993

/-! ## A137993.P9310048325133975680

`C(A040001(n), A039971(2*n+5))`
-/

namespace A137993.P9310048325133975680
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A040001 n).toNat (A039971 (2 * n + 5)).toNat

end

end A137993.P9310048325133975680

namespace A137993

/-- `C(A040001(n), A039971(2*n+5))` -/
def P9310048325133975680.Spec : Prop :=
  ∀ n, (P9310048325133975680.a n : ℤ) = A137993 n

end A137993

/-! ## A137993.P12820848633437821002

`sqrt(C(A040005(n), A039971(2*n+5)))`
-/

namespace A137993.P12820848633437821002
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (Nat.choose (A040005 n).toNat (A039971 (2 * n + 5)).toNat : ℝ)

end

end A137993.P12820848633437821002

namespace A137993

/-- `sqrt(C(A040005(n), A039971(2*n+5)))` -/
def P12820848633437821002.Spec : Prop :=
  ∀ n, P12820848633437821002.a n = (A137993 n : ℝ)

end A137993

/-! ## A137993.P2170206279684527227

`∑[A166587(n+1)%3]`
-/

namespace A137993.P2170206279684527227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A166587 (n + 1)) 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A137993.P2170206279684527227

namespace A137993

/-- `∑[A166587(n+1)%3]` -/
def P2170206279684527227.Spec : Prop :=
  ∀ n, P2170206279684527227.a n = A137993 n

end A137993

/-! ## A137993.P5403333159428612972

`A065601(n+1)%3`
-/

namespace A137993.P5403333159428612972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A065601 (n + 1)) 3

end

end A137993.P5403333159428612972

namespace A137993

/-- `A065601(n+1)%3` -/
def P5403333159428612972.Spec : Prop :=
  ∀ n, P5403333159428612972.a n = A137993 n

end A137993

/-! ## A137993.P16764483328458451419

`A014138(n+1)%3`
-/

namespace A137993.P16764483328458451419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A014138 (n + 1)) 3

end

end A137993.P16764483328458451419

namespace A137993

/-- `A014138(n+1)%3` -/
def P16764483328458451419.Spec : Prop :=
  ∀ n, P16764483328458451419.a n = A137993 n

end A137993

/-! ## A137993.P439818427952339748

`∑[A000108(n+1)]%3`
-/

namespace A137993.P439818427952339748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) 3

end

end A137993.P439818427952339748

namespace A137993

/-- `∑[A000108(n+1)]%3` -/
def P439818427952339748.Spec : Prop :=
  ∀ n, P439818427952339748.a n = A137993 n

end A137993

/-! ## A137993.P10307662961038201657

`A014301(n+2)%3`
-/

namespace A137993.P10307662961038201657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A014301 (n + 2)) 3

end

end A137993.P10307662961038201657

namespace A137993

/-- `A014301(n+2)%3` -/
def P10307662961038201657.Spec : Prop :=
  ∀ n, P10307662961038201657.a n = A137993 n

end A137993

/-! ## A137993.P12206157175044215651

`A115112(n+2)%3`
-/

namespace A137993.P12206157175044215651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A115112 (n + 2)) 3

end

end A137993.P12206157175044215651

namespace A137993

/-- `A115112(n+2)%3` -/
def P12206157175044215651.Spec : Prop :=
  ∀ n, P12206157175044215651.a n = A137993 n

end A137993

/-! ## A137993.P8470144769499992934

`A171074(n+2)%3`
-/

namespace A137993.P8470144769499992934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A171074 (n + 2)) 3

end

end A137993.P8470144769499992934

namespace A137993

/-- `A171074(n+2)%3` -/
def P8470144769499992934.Spec : Prop :=
  ∀ n, P8470144769499992934.a n = A137993 n

end A137993

/-! ## A137993.P5450635554723929867

`A244174(n+2)%3`
-/

namespace A137993.P5450635554723929867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A244174 (n + 2)) 3

end

end A137993.P5450635554723929867

namespace A137993

/-- `A244174(n+2)%3` -/
def P5450635554723929867.Spec : Prop :=
  ∀ n, P5450635554723929867.a n = A137993 n

end A137993

/-! ## A137993.P8082220278605648685

`A323230(n+3)%3`
-/

namespace A137993.P8082220278605648685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A323230 (n + 3)) 3

end

end A137993.P8082220278605648685

namespace A137993

/-- `A323230(n+3)%3` -/
def P8082220278605648685.Spec : Prop :=
  ∀ n, P8082220278605648685.a n = A137993 n

end A137993

/-! ## A137993.P12781710676188702144

`A239453(2*n)%3`
-/

namespace A137993.P12781710676188702144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A239453 (2 * n)) 3

end

end A137993.P12781710676188702144

namespace A137993

/-- `A239453(2*n)%3` -/
def P12781710676188702144.Spec : Prop :=
  ∀ n, P12781710676188702144.a n = A137993 n

end A137993

/-! ## A137993.P5769791735428177503

`A008549(n+1)%3`
-/

namespace A137993.P5769791735428177503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008549 (n + 1)) 3

end

end A137993.P5769791735428177503

namespace A137993

/-- `A008549(n+1)%3` -/
def P5769791735428177503.Spec : Prop :=
  ∀ n, P5769791735428177503.a n = A137993 n

end A137993

/-!
# A137994: a(n) is the smallest integer > a(n-1) such that {Pi^a(n)} < {Pi^a(n-1)}, where {x} = x - floor(x), a(1)=1.

The programs for A137994, there is no canonical definition to state claims against.
-/

/-! ## A137994.P58256468420750581

`A153710(∑[xor(1, A323569(n)%3)!])`
-/

namespace A137994.P58256468420750581
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (Int.xor 1 (Int.tmod (A323569 n) 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153710 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A137994.P58256468420750581

/-!
# A137995: Nearest integer to 1/frac(Pi^A137994(n)), where frac(x) = x - floor(x).

The programs for A137995, there is no canonical definition to state claims against.
-/

/-! ## A137995.P3274358435062637046

`A153713(n+1)+A115199(2*n²)`
-/

namespace A137995.P3274358435062637046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153713 (n + 1) + A115199 (2 * n ^ 2)

end

end A137995.P3274358435062637046

/-! ## A137995.P16105788871718042020

`A286106(A000272(n))+A153713(n+1)`
-/

namespace A137995.P16105788871718042020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286106 (A000272 n).toNat + A153713 (n + 1)

end

end A137995.P16105788871718042020

/-! ## A137995.P888482435276046686

`A153713(n+1)+A124762(A261300(n))`
-/

namespace A137995.P888482435276046686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153713 (n + 1) + A124762 (A261300 n).toNat

end

end A137995.P888482435276046686

/-!
# A137998: Least k such that floor(16^n / 10^k) = 1, 2, 4 or 8 (mod 10), or zero if no such k exists.

The programs for A137998, there is no canonical definition to state claims against.
-/

/-! ## A137998.P16867220562133277997

`A302492(A018638(n+1))%6`
-/

namespace A137998.P16867220562133277997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A302492 (A018638 (n + 1)).toNat) 6

end

end A137998.P16867220562133277997

