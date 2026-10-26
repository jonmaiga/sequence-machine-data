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
import Seq.B000.C014
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
import Seq.B000.C028
import Seq.B000.C031
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C011
import Seq.B001.C012
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
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
import Seq.B007.C000
import Seq.B008.C000
import Seq.B011.C000
import Seq.B012.C000
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
# A236600: Number of (n+1)X(4+1) 0..3 arrays colored with the maximum plus the upper median of every 2X2 subblock.

The programs for A236600, there is no canonical definition to state claims against.
-/

/-! ## A236600.P2280011146570346848

`A236601(A167614(n+2)+1)`
-/

namespace A236600.P2280011146570346848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236601 (A167614 (n + 2) + 1).toNat

end

end A236600.P2280011146570346848

/-! ## A236600.P6671812848777505603

`A236601(A020752(n+1))`
-/

namespace A236600.P6671812848777505603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236601 (A020752 (n + 1)).toNat

end

end A236600.P6671812848777505603

/-!
# A236602: Number of canonical Gray cycles of length 2n.

The programs for A236602, there is no canonical definition to state claims against.
-/

/-! ## A236602.P2556834706045879398

`ceil(A350784(n+1)/2)`
-/

namespace A236602.P2556834706045879398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A350784 (n + 1) : ℚ) / 2⌉

end

end A236602.P2556834706045879398

/-! ## A236602.P9421788224254309176

`A350784(n+1)/A005897(n)%3`
-/

namespace A236602.P9421788224254309176
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A350784 (n + 1) : ℚ) / (Int.tmod (A005897 n) 3 : ℚ)

end

end A236602.P9421788224254309176

/-! ## A236602.P9139094546648349031

`A350784(n+1)/A001285(∑{p}[n+1, gcd(n, #)])`
-/

namespace A236602.P9139094546648349031
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A350784 (n + 1) : ℚ) / (A001285 (∑ p ∈ Nat.primeFactors (f1 n), Nat.gcd n p) : ℚ)

end

end A236602.P9139094546648349031

/-! ## A236602.P8617990329940255690

`A350784(n+1)/round(sqrt(A158478(2*n)²+1))`
-/

namespace A236602.P8617990329940255690
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A350784 (n + 1) : ℚ) / (SequenceMachineLib.roundAway (Real.sqrt (A158478 (2 * n) ^ 2 + 1 : ℝ)) : ℚ)

end

end A236602.P8617990329940255690

/-! ## A236602.P12129776327254145375

`A350784(n+1)/A020639(A005897(n))`
-/

namespace A236602.P12129776327254145375
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A350784 (n + 1) : ℚ) / (A020639 (A005897 n).toNat : ℚ)

end

end A236602.P12129776327254145375

/-!
# A236604: Number of (n+1) X (1+1) 0..2 arrays colored with the maximum plus the lower median minus the minimum of every 2 X 2 subblock.

The programs for A236604, there is no canonical definition to state claims against.
-/

/-! ## A236604.P12135208360793300475

`A236610(∑[n]+1)`
-/

namespace A236604.P12135208360793300475
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236610 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A236604.P12135208360793300475

/-! ## A236604.P14168780056642829187

`record[A236610(A246276(n+1))]`
-/

namespace A236604.P14168780056642829187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236610 (A246276 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236604.P14168780056642829187

/-! ## A236604.P11155085677611593789

`record[A236610(A249742(n+1))]`
-/

namespace A236604.P11155085677611593789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236610 (A249742 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236604.P11155085677611593789

/-! ## A236604.P10521024283846895513

`record[A236610(A286235(n+1))]`
-/

namespace A236604.P10521024283846895513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236610 (A286235 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236604.P10521024283846895513

/-! ## A236604.P2322340180330244133

`lcm((-1)^n, A236610(A000124(n)))`
-/

namespace A236604.P2322340180330244133
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (A236610 (A000124 n).toNat)

end

end A236604.P2322340180330244133

/-!
# A236605: Number of (n+1)X(2+1) 0..2 arrays colored with the maximum plus the lower median minus the minimum of every 2X2 subblock.

The programs for A236605, there is no canonical definition to state claims against.
-/

/-! ## A236605.P4254533074731491926

`A236610(∑[n+1]+2)`
-/

namespace A236605.P4254533074731491926
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236610 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A236605.P4254533074731491926

/-! ## A236605.P14557617393050098054

`record[A236610(A286235(n+1)+1)]`
-/

namespace A236605.P14557617393050098054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236610 (A286235 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236605.P14557617393050098054

/-! ## A236605.P10571933202318354763

`record[gcd(A236603(2*n+1), A236610(n+2))]`
-/

namespace A236605.P10571933202318354763
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A236603 (2 * n + 1)) (A236610 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236605.P10571933202318354763

/-! ## A236605.P2908359721512980924

`A353557(2*(n+1))+A236610(A252460(2*(n+2)))`
-/

namespace A236605.P2908359721512980924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353557 (2 * (n + 1)) + A236610 (A252460 (2 * (n + 2))).toNat

end

end A236605.P2908359721512980924

/-! ## A236605.P7812908852192795746

`record[A236610(Δ[A003453(n+5)])]`
-/

namespace A236605.P7812908852192795746
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003453 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236610 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236605.P7812908852192795746

/-!
# A236606: Number of (n+1)X(3+1) 0..2 arrays colored with the maximum plus the lower median minus the minimum of every 2X2 subblock.

The programs for A236606, there is no canonical definition to state claims against.
-/

/-! ## A236606.P16995853674021062656

`A236610(∑[n+2]+4)`
-/

namespace A236606.P16995853674021062656
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236610 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A236606.P16995853674021062656

/-! ## A236606.P2939493072795322912

`abs(1-A236610(A167614(n+1)))+1`
-/

namespace A236606.P2939493072795322912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A236610 (A167614 (n + 1)).toNat| + 1

end

end A236606.P2939493072795322912

/-! ## A236606.P16177747495698197083

`A236610(A167614(n+1))+A025443(n)`
-/

namespace A236606.P16177747495698197083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236610 (A167614 (n + 1)).toNat + A025443 n

end

end A236606.P16177747495698197083

/-! ## A236606.P3240666028330462356

`A236610(A167614(n+1))+A084904(n)`
-/

namespace A236606.P3240666028330462356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236610 (A167614 (n + 1)).toNat + A084904 n

end

end A236606.P3240666028330462356

/-! ## A236606.P14029238354347049111

`A236610(A167614(n+1))+A185284(n)`
-/

namespace A236606.P14029238354347049111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236610 (A167614 (n + 1)).toNat + A185284 n

end

end A236606.P14029238354347049111

/-!
# A236607: Number of (n+1)X(4+1) 0..2 arrays colored with the maximum plus the lower median minus the minimum of every 2X2 subblock.

The programs for A236607, there is no canonical definition to state claims against.
-/

/-! ## A236607.P5625967241573088515

`A236610(A374004(n+1))`
-/

namespace A236607.P5625967241573088515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236610 (A374004 (n + 1)).toNat

end

end A236607.P5625967241573088515

/-! ## A236607.P3355785974477568678

`A236610(A141214(n)+7)`
-/

namespace A236607.P3355785974477568678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236610 (A141214 n + 7).toNat

end

end A236607.P3355785974477568678

/-! ## A236607.P12479327645861922173

`A236610(A052905(n)+9)`
-/

namespace A236607.P12479327645861922173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236610 (A052905 n + 9).toNat

end

end A236607.P12479327645861922173

/-! ## A236607.P6398480508316099829

`A236610(A055999(n)+10)`
-/

namespace A236607.P6398480508316099829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236610 (A055999 n + 10).toNat

end

end A236607.P6398480508316099829

/-! ## A236607.P5796285505542868424

`A236610(eq[5, A066657(n)])`
-/

namespace A236607.P5796285505542868424
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236610 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A236607.P5796285505542868424

/-!
# A236608: Number of (n+1) X (5+1) 0..2 arrays colored with the maximum plus the lower median minus the minimum of every 2 X 2 subblock.

The programs for A236608, there is no canonical definition to state claims against.
-/

/-! ## A236608.P16024205289162376648

`A236610(A374005(n+1))`
-/

namespace A236608.P16024205289162376648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236610 (A374005 (n + 1)).toNat

end

end A236608.P16024205289162376648

/-! ## A236608.P3988979630587714169

`A236610(A167499(n+3))`
-/

namespace A236608.P3988979630587714169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236610 (A167499 (n + 3)).toNat

end

end A236608.P3988979630587714169

/-! ## A236608.P17151421497913428418

`A236610(A077169(n+5))`
-/

namespace A236608.P17151421497913428418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236610 (A077169 (n + 5)).toNat

end

end A236608.P17151421497913428418

/-! ## A236608.P4747110407461901988

`A236610(A155212(n)+13)`
-/

namespace A236608.P4747110407461901988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236610 (A155212 n + 13).toNat

end

end A236608.P4747110407461901988

/-! ## A236608.P1594585021027050192

`A236610(A056000(n)+15)`
-/

namespace A236608.P1594585021027050192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236610 (A056000 n + 15).toNat

end

end A236608.P1594585021027050192

/-!
# A236609: Number of (n+1)X(6+1) 0..2 arrays colored with the maximum plus the lower median minus the minimum of every 2X2 subblock.

The programs for A236609, there is no canonical definition to state claims against.
-/

/-! ## A236609.P3359253442998230682

`A236610(A374007(n+1))`
-/

namespace A236609.P3359253442998230682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236610 (A374007 (n + 1)).toNat

end

end A236609.P3359253442998230682

/-! ## A236609.P4982497267025610249

`A236610(A167499(n+4)+1)`
-/

namespace A236609.P4982497267025610249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236610 (A167499 (n + 4) + 1).toNat

end

end A236609.P4982497267025610249

/-! ## A236609.P13082388461515346958

`A236610(A077169(n+6)+1)`
-/

namespace A236609.P13082388461515346958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236610 (A077169 (n + 6) + 1).toNat

end

end A236609.P13082388461515346958

/-! ## A236609.P9911238254296390681

`A236610(A167614(n+4)+3)`
-/

namespace A236609.P9911238254296390681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236610 (A167614 (n + 4) + 3).toNat

end

end A236609.P9911238254296390681

/-!
# A236611: Number of (n+1)X(1+1) 0..2 arrays colored with the maximum plus the upper median of every 2X2 subblock.

The programs for A236611, there is no canonical definition to state claims against.
-/

/-! ## A236611.P17165054197644856782

`A236618(∑[n]+1)`
-/

namespace A236611.P17165054197644856782
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236618 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A236611.P17165054197644856782

/-! ## A236611.P4964513754665233835

`record[A010054(n)*A236618(n+1)]`
-/

namespace A236611.P4964513754665233835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A236618 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236611.P4964513754665233835

/-! ## A236611.P6872513410821153917

`record[gcd(A002262(n), A236618(n+1))]`
-/

namespace A236611.P6872513410821153917
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A236618 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236611.P6872513410821153917

/-! ## A236611.P11586108316933218752

`record[(1-A229001(n))*A236618(n+1)]`
-/

namespace A236611.P11586108316933218752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A229001 n) * A236618 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236611.P11586108316933218752

/-! ## A236611.P3342196159736074045

`record[root(A236618(n+1), A215520(n+1))]`
-/

namespace A236611.P3342196159736074045
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A236618 (n + 1) : ℝ) ^ (1 / (A215520 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236611.P3342196159736074045

/-!
# A236612: Number of (n+1)X(2+1) 0..2 arrays colored with the maximum plus the upper median of every 2X2 subblock.

The programs for A236612, there is no canonical definition to state claims against.
-/

/-! ## A236612.P11546224799534989267

`A236618(∑[n+1]+2)`
-/

namespace A236612.P11546224799534989267
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236618 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A236612.P11546224799534989267

/-! ## A236612.P12856386369799627095

`record[A236618(A133825(n)+2)]`
-/

namespace A236612.P12856386369799627095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236618 (A133825 n + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236612.P12856386369799627095

/-! ## A236612.P17036041029017847195

`record[A010054(n)*A236618(n+2)]`
-/

namespace A236612.P17036041029017847195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A236618 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236612.P17036041029017847195

/-! ## A236612.P13501766245050996489

`record[root(A236618(n+3), A103316(n))]`
-/

namespace A236612.P13501766245050996489
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A236618 (n + 3) : ℝ) ^ (1 / (A103316 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236612.P13501766245050996489

/-! ## A236612.P5850366874104771960

`record[gcd(A002262(n), A236618(n+2))]`
-/

namespace A236612.P5850366874104771960
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A236618 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236612.P5850366874104771960

/-!
# A236613: Number of (n+1)X(3+1) 0..2 arrays colored with the maximum plus the upper median of every 2X2 subblock.

The programs for A236613, there is no canonical definition to state claims against.
-/

/-! ## A236613.P14195079023640183448

`A236618(∑[n+2]+4)`
-/

namespace A236613.P14195079023640183448
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236618 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A236613.P14195079023640183448

/-! ## A236613.P17054027874321346306

`A236618(A167614(n+1))+A185284(n)`
-/

namespace A236613.P17054027874321346306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236618 (A167614 (n + 1)).toNat + A185284 n

end

end A236613.P17054027874321346306

/-! ## A236613.P6687716493148750879

`lcm(A000034(n), A236618(A167614(n+1)))`
-/

namespace A236613.P6687716493148750879
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000034 n) (A236618 (A167614 (n + 1)).toNat)

end

end A236613.P6687716493148750879

/-! ## A236613.P3983084782301964207

`or(A000007(n), A236618(A167614(n+1)))`
-/

namespace A236613.P3983084782301964207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A236618 (A167614 (n + 1)).toNat)

end

end A236613.P3983084782301964207

/-! ## A236613.P1600913221422538141

`or(A130706(n), A236618(A167614(n+1)))`
-/

namespace A236613.P1600913221422538141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A130706 n) (A236618 (A167614 (n + 1)).toNat)

end

end A236613.P1600913221422538141

/-!
# A236614: Number of (n+1)X(4+1) 0..2 arrays colored with the maximum plus the upper median of every 2X2 subblock.

The programs for A236614, there is no canonical definition to state claims against.
-/

/-! ## A236614.P17649133154400649296

`A236618(A374004(n+1))`
-/

namespace A236614.P17649133154400649296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236618 (A374004 (n + 1)).toNat

end

end A236614.P17649133154400649296

/-! ## A236614.P16287570186028646044

`A236618(A141214(n)+7)`
-/

namespace A236614.P16287570186028646044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236618 (A141214 n + 7).toNat

end

end A236614.P16287570186028646044

/-! ## A236614.P11694963055214749445

`A236618(A052905(n)+9)`
-/

namespace A236614.P11694963055214749445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236618 (A052905 n + 9).toNat

end

end A236614.P11694963055214749445

/-! ## A236614.P5915759986126405236

`A236618(A167614(n+2)+1)`
-/

namespace A236614.P5915759986126405236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236618 (A167614 (n + 2) + 1).toNat

end

end A236614.P5915759986126405236

/-! ## A236614.P416725357064026367

`A236618(eq[5, A131818(n+1)])`
-/

namespace A236614.P416725357064026367
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236618 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A236614.P416725357064026367

/-!
# A236615: Number of (n+1)X(5+1) 0..2 arrays colored with the maximum plus the upper median of every 2X2 subblock.

The programs for A236615, there is no canonical definition to state claims against.
-/

/-! ## A236615.P5839842183160795500

`A236618(A374005(n+1))`
-/

namespace A236615.P5839842183160795500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236618 (A374005 (n + 1)).toNat

end

end A236615.P5839842183160795500

/-! ## A236615.P2262591348047903329

`A236618(eq[6, A131818(n+1)])`
-/

namespace A236615.P2262591348047903329
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236618 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A236615.P2262591348047903329

/-! ## A236615.P2027258821966163672

`A236618(eq[2, A092921(n)])`
-/

namespace A236615.P2027258821966163672
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092921 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236618 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A236615.P2027258821966163672

/-! ## A236615.P6915192973283120696

`A236618(eq[4, A193592(n)])`
-/

namespace A236615.P6915192973283120696
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236618 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A236615.P6915192973283120696

/-! ## A236615.P13943695956841309455

`A236618(eq[8, A140996(n)])`
-/

namespace A236615.P13943695956841309455
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140996 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236618 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A236615.P13943695956841309455

/-!
# A236616: Number of (n+1) X (6+1) 0..2 arrays colored with the maximum plus the upper median of every 2 X 2 subblock.

The programs for A236616, there is no canonical definition to state claims against.
-/

/-! ## A236616.P13275398197935869983

`A236618(A374007(n+1))`
-/

namespace A236616.P13275398197935869983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236618 (A374007 (n + 1)).toNat

end

end A236616.P13275398197935869983

/-! ## A236616.P1066386969121616387

`A236618(A028310(∑[n+5]+15)+1)`
-/

namespace A236616.P1066386969121616387
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236618 (A028310 (∑ j ∈ Finset.range (n + 1), f1 j + 15) + 1).toNat

end

end A236616.P1066386969121616387

/-! ## A236616.P15300080329696818247

`A236618(eq[3, A219347(n)])`
-/

namespace A236616.P15300080329696818247
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236618 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A236616.P15300080329696818247

/-! ## A236616.P11157723251516529938

`A236618(eq[5, A193592(n)])`
-/

namespace A236616.P11157723251516529938
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236618 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A236616.P11157723251516529938

/-! ## A236616.P1497697830063030721

`A236618(eq[8, A258709(n)])`
-/

namespace A236616.P1497697830063030721
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258709 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236618 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A236616.P1497697830063030721

/-!
# A236617: Number of (n+1)X(7+1) 0..2 arrays colored with the maximum plus the upper median of every 2X2 subblock.

The programs for A236617, there is no canonical definition to state claims against.
-/

/-! ## A236617.P211291019872357494

`A236618(A374008(n+1))`
-/

namespace A236617.P211291019872357494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236618 (A374008 (n + 1)).toNat

end

end A236617.P211291019872357494

/-! ## A236617.P3843049189232763611

`A236618(eq[8, A131818(n+1)])`
-/

namespace A236617.P3843049189232763611
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236618 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A236617.P3843049189232763611

/-! ## A236617.P9507249860884246478

`A236618(eq[4, A219347(n)])`
-/

namespace A236617.P9507249860884246478
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236618 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A236617.P9507249860884246478

/-! ## A236617.P4881412379163932076

`A236618(eq[5, A332954(n)])`
-/

namespace A236617.P4881412379163932076
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332954 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236618 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A236617.P4881412379163932076

/-! ## A236617.P14015041404896196409

`A236618(eq[6, A193592(n)])`
-/

namespace A236617.P14015041404896196409
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236618 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A236617.P14015041404896196409

/-!
# A236619: a(n) = |{0 < k < n: prime(m)^3 + 2*m^3 and m^3 + 2*prime(m)^3 are both prime with m = 3*phi(k) + phi(n-k) - 1}|, where phi(.) is Euler's totient function.

The programs for A236619, there is no canonical definition to state claims against.
-/

/-! ## A236619.P11539995845353095515

`C(a(n-3)+2, A017765(n))` with `a(0)=0, a(1)=1, a(2)=2, a(3)=1`
-/

namespace A236619.P11539995845353095515
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 2, 1] fun n a =>
  Nat.choose (a (n - 3) + 2) (A017765 n).toNat

end

end A236619.P11539995845353095515

/-! ## A236619.P12894129859447402648

`and(A020639(A063007(n)), A265552(n))`
-/

namespace A236619.P12894129859447402648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A020639 (A063007 n).toNat) (A265552 n)

end

end A236619.P12894129859447402648

/-! ## A236619.P11590146131899323786

`and(A020639(A063007(n)), A265568(n))`
-/

namespace A236619.P11590146131899323786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A020639 (A063007 n).toNat) (A265568 n)

end

end A236619.P11590146131899323786

/-! ## A236619.P2854475014681816684

`A346758(n+1)%A055640(A350198(n+1))`
-/

namespace A236619.P2854475014681816684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A346758 (n + 1)) (A055640 (A350198 (n + 1)).toNat)

end

end A236619.P2854475014681816684

/-! ## A236619.P4585223904443935561

`A256480(A196222(2*(n+1)))%A006530(n+1)`
-/

namespace A236619.P4585223904443935561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A256480 (A196222 (2 * (n + 1))).toNat) (A006530 (n + 1))

end

end A236619.P4585223904443935561

/-! ## A236619.P1133707109598226929

`A186114(A005384(2*(n+1))*A089929(n+3)+1)`
-/

namespace A236619.P1133707109598226929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186114 (A005384 (2 * (n + 1)) * A089929 (n + 3) + 1).toNat

end

end A236619.P1133707109598226929

/-!
# A236620: Number of (n+1) X (1+1) 0..3 arrays colored with the maximum plus the lower median of every 2 X 2 subblock.

The programs for A236620, there is no canonical definition to state claims against.
-/

/-! ## A236620.P5547937127824028674

`A236624(∑[n]+1)`
-/

namespace A236620.P5547937127824028674
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236624 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A236620.P5547937127824028674

/-! ## A236620.P14054668765994060079

`lcm(2, A236624(A000124(n)))`
-/

namespace A236620.P14054668765994060079
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A236624 (A000124 n).toNat)

end

end A236620.P14054668765994060079

/-! ## A236620.P445912534775120463

`record[A010054(n)*A236624(n+1)]`
-/

namespace A236620.P445912534775120463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A236624 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236620.P445912534775120463

/-! ## A236620.P4110014843784027523

`record[A103451(n)*A236624(n+1)]`
-/

namespace A236620.P4110014843784027523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103451 n * A236624 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236620.P4110014843784027523

/-! ## A236620.P9955861672702597553

`record[A236624(n+1)/A022183(n)]`
-/

namespace A236620.P9955861672702597553
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A236624 (n + 1) : ℚ) / (A022183 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236620.P9955861672702597553

/-!
# A236621: Number of (n+1)X(2+1) 0..3 arrays colored with the maximum plus the lower median of every 2X2 subblock.

The programs for A236621, there is no canonical definition to state claims against.
-/

/-! ## A236621.P4370147184692612767

`A236624(∑[n+1]+2)`
-/

namespace A236621.P4370147184692612767
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236624 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A236621.P4370147184692612767

/-! ## A236621.P14730578177265916651

`record[A010054(n)*A236624(n+2)]`
-/

namespace A236621.P14730578177265916651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A236624 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236621.P14730578177265916651

/-! ## A236621.P10057225068720385249

`record[A236624(n+3)/A039621(n+1)]`
-/

namespace A236621.P10057225068720385249
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A236624 (n + 3) : ℚ) / (A039621 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236621.P10057225068720385249

/-! ## A236621.P12563562074024526730

`record[gcd(A236624(n+3), A279657(n+1))]`
-/

namespace A236621.P12563562074024526730
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A236624 (n + 3)) (A279657 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236621.P12563562074024526730

/-!
# A236622: Number of (n+1)X(3+1) 0..3 arrays colored with the maximum plus the lower median of every 2X2 subblock.

The programs for A236622, there is no canonical definition to state claims against.
-/

/-! ## A236622.P2254920370266423731

`A236624(∑[n+2]+4)`
-/

namespace A236622.P2254920370266423731
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236624 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A236622.P2254920370266423731

/-! ## A236622.P1513560182510662837

`lcm(2, A236624(A167614(n+1)))`
-/

namespace A236622.P1513560182510662837
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A236624 (A167614 (n + 1)).toNat)

end

end A236622.P1513560182510662837

/-! ## A236622.P7133091105324065541

`A236624(A167614(n+1))+A046779(n)`
-/

namespace A236622.P7133091105324065541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236624 (A167614 (n + 1)).toNat + A046779 n

end

end A236622.P7133091105324065541

/-!
# A236623: Number of (n+1)X(4+1) 0..3 arrays colored with the maximum plus the lower median of every 2X2 subblock.

The programs for A236623, there is no canonical definition to state claims against.
-/

/-! ## A236623.P5156368449855908624

`A236624(∑[n+3]+7)`
-/

namespace A236623.P5156368449855908624
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236624 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A236623.P5156368449855908624

/-!
# A236625: Total number of parts in all overcompositions of n.

The programs for A236625, there is no canonical definition to state claims against.
-/

/-! ## A236625.P8272952941932325619

`A181111(A166404(n+1)+A049311(n+2))`
-/

namespace A236625.P8272952941932325619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181111 (A166404 (n + 1) + A049311 (n + 2)).toNat

end

end A236625.P8272952941932325619

/-! ## A236625.P13988058456911190143

`A071215(A115162(2*(n+1)))*A338915(3*(n+1))`
-/

namespace A236625.P13988058456911190143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071215 (A115162 (2 * (n + 1))).toNat * A338915 (3 * (n + 1))

end

end A236625.P13988058456911190143

/-!
# A236626: Sum of all parts of all overcompositions of n.

The programs for A236626, there is no canonical definition to state claims against.
-/

/-! ## A236626.P3661140987476924384

`(n+1)*A236002(n+1)`
-/

namespace A236626.P3661140987476924384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A236002 (n + 1)

end

end A236626.P3661140987476924384

/-! ## A236626.P6304603685113477045

`record[A236002(A238157(n))*A238157(n)]`
-/

namespace A236626.P6304603685113477045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236002 (A238157 n).toNat * A238157 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236626.P6304603685113477045

/-!
# A236627: Number of positive integers <= sqrt(n) not dividing n.

The programs for A236627, the canonical program `A236627.P10038142205825407156` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A236627 has offset 1).

The definition of A236627 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A236627.P10038142205825407156

`A160812(n+1)/2`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A236627

/-- `A160812(n+1)/2` -/
def P10038142205825407156.Spec : Prop :=
  ∀ n, P10038142205825407156.a n = (A236627 (n + 1) : ℚ)

end A236627

/-! ## A236627.P1806267585853152980

`A000196(n+1)-A038548(n+1)`
-/

namespace A236627.P1806267585853152980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (n + 1) - A038548 (n + 1)

end

end A236627.P1806267585853152980

namespace A236627

/-- `A000196(n+1)-A038548(n+1)` -/
def P1806267585853152980.Spec : Prop :=
  ∀ n, P1806267585853152980.a n = A236627 (n + 1)

end A236627

/-! ## A236627.P7626258151393586402

`floor(A046522(n+1)/2)`
-/

namespace A236627.P7626258151393586402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A046522 (n + 1) : ℚ) / 2⌋

end

end A236627.P7626258151393586402

namespace A236627

/-- `floor(A046522(n+1)/2)` -/
def P7626258151393586402.Spec : Prop :=
  ∀ n, P7626258151393586402.a n = A236627 (n + 1)

end A236627

/-! ## A236627.P13758319031742723130

`ceil(A078152(n+1)/2)`
-/

namespace A236627.P13758319031742723130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A078152 (n + 1) : ℚ) / 2⌉

end

end A236627.P13758319031742723130

namespace A236627

/-- `ceil(A078152(n+1)/2)` -/
def P13758319031742723130.Spec : Prop :=
  ∀ n, P13758319031742723130.a n = A236627 (n + 1)

end A236627

/-! ## A236627.P8409721264028919875

`floor(sqrt(n)-A056924(n+1))`
-/

namespace A236627.P8409721264028919875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt (n : ℝ) - (A056924 (n + 1) : ℝ)⌋

end

end A236627.P8409721264028919875

namespace A236627

/-- `floor(sqrt(n)-A056924(n+1))` -/
def P8409721264028919875.Spec : Prop :=
  ∀ n, P8409721264028919875.a n = A236627 (n + 1)

end A236627

/-! ## A236627.P12563464508961183789

`floor(sqrt(n+1)-A000005(n+1)/2)`
-/

namespace A236627.P12563464508961183789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt (n + 1 : ℝ) - ((A000005 (n + 1) : ℚ) / 2 : ℝ)⌋

end

end A236627.P12563464508961183789

namespace A236627

/-- `floor(sqrt(n+1)-A000005(n+1)/2)` -/
def P12563464508961183789.Spec : Prop :=
  ∀ n, P12563464508961183789.a n = A236627 (n + 1)

end A236627

/-! ## A236627.P2794865576570596745

`ceil(A000196(n)-∏{e}[n+1, #+1]/2)`
-/

namespace A236627.P2794865576570596745
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A000196 n : ℚ) - ((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℚ) / 2⌉

end

end A236627.P2794865576570596745

namespace A236627

/-- `ceil(A000196(n)-∏{e}[n+1, #+1]/2)` -/
def P2794865576570596745.Spec : Prop :=
  ∀ n, P2794865576570596745.a n = A236627 (n + 1)

end A236627

/-! ## A236627.P13424714158965769858

`A004526(A046522(n+1))`
-/

namespace A236627.P13424714158965769858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A046522 (n + 1)).toNat

end

end A236627.P13424714158965769858

namespace A236627

/-- `A004526(A046522(n+1))` -/
def P13424714158965769858.Spec : Prop :=
  ∀ n, P13424714158965769858.a n = A236627 (n + 1)

end A236627

/-! ## A236627.P9951953798100000659

`A001281(A160812(n+1))`
-/

namespace A236627.P9951953798100000659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A160812 (n + 1)).toNat

end

end A236627.P9951953798100000659

namespace A236627

/-- `A001281(A160812(n+1))` -/
def P9951953798100000659.Spec : Prop :=
  ∀ n, P9951953798100000659.a n = A236627 (n + 1)

end A236627

/-! ## A236627.P10017708331184028099

`A004526(A078152(n+1)+1)`
-/

namespace A236627.P10017708331184028099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A078152 (n + 1) + 1).toNat

end

end A236627.P10017708331184028099

namespace A236627

/-- `A004526(A078152(n+1)+1)` -/
def P10017708331184028099.Spec : Prop :=
  ∀ n, P10017708331184028099.a n = A236627 (n + 1)

end A236627

/-! ## A236627.P18024279562522073281

`A004524(or(1, A046522(n+1)))`
-/

namespace A236627.P18024279562522073281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (Int.lor 1 (A046522 (n + 1))).toNat

end

end A236627.P18024279562522073281

namespace A236627

/-- `A004524(or(1, A046522(n+1)))` -/
def P18024279562522073281.Spec : Prop :=
  ∀ n, P18024279562522073281.a n = A236627 (n + 1)

end A236627

/-! ## A236627.P15141529989392090480

`A123108(or(1, A046522(n+1)))`
-/

namespace A236627.P15141529989392090480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (Int.lor 1 (A046522 (n + 1))).toNat

end

end A236627.P15141529989392090480

namespace A236627

/-- `A123108(or(1, A046522(n+1)))` -/
def P15141529989392090480.Spec : Prop :=
  ∀ n, P15141529989392090480.a n = A236627 (n + 1)

end A236627

/-! ## A236627.P6741750087736133375

`A000196(n)-A056924(n+1)`
-/

namespace A236627.P6741750087736133375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 n - A056924 (n + 1)

end

end A236627.P6741750087736133375

namespace A236627

/-- `A000196(n)-A056924(n+1)` -/
def P6741750087736133375.Spec : Prop :=
  ∀ n, P6741750087736133375.a n = A236627 (n + 1)

end A236627

/-! ## A236627.P186093183354683212

`sqrt(A048760(n))-A056924(n+1)`
-/

namespace A236627.P186093183354683212
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A048760 n : ℝ) - (A056924 (n + 1) : ℝ)

end

end A236627.P186093183354683212

namespace A236627

/-- `sqrt(A048760(n))-A056924(n+1)` -/
def P186093183354683212.Spec : Prop :=
  ∀ n, P186093183354683212.a n = (A236627 (n + 1) : ℝ)

end A236627

/-! ## A236627.P8949278016844299968

`A338236(n+1)-A262202(n+1)`
-/

namespace A236627.P8949278016844299968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338236 (n + 1) - A262202 (n + 1)

end

end A236627.P8949278016844299968

namespace A236627

/-- `A338236(n+1)-A262202(n+1)` -/
def P8949278016844299968.Spec : Prop :=
  ∀ n, P8949278016844299968.a n = A236627 (n + 1)

end A236627

/-! ## A236627.P4642143381845412971

`(A161205(n+1)-A000005(n+1))/2`
-/

namespace A236627.P4642143381845412971
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A161205 (n + 1) - A000005 (n + 1) : ℚ) / 2

end

end A236627.P4642143381845412971

namespace A236627

/-- `(A161205(n+1)-A000005(n+1))/2` -/
def P4642143381845412971.Spec : Prop :=
  ∀ n, P4642143381845412971.a n = (A236627 (n + 1) : ℚ)

end A236627

/-! ## A236627.P16858227733783258862

`A004526(A316355(n))-A072670(n)`
-/

namespace A236627.P16858227733783258862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A316355 n).toNat - A072670 n

end

end A236627.P16858227733783258862

namespace A236627

/-- `A004526(A316355(n))-A072670(n)` -/
def P16858227733783258862.Spec : Prop :=
  ∀ n, P16858227733783258862.a n = A236627 (n + 1)

end A236627

/-! ## A236627.P12750631554167891029

`A000196(n)-A004526(A000005(n+1))`
-/

namespace A236627.P12750631554167891029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 n - A004526 (A000005 (n + 1)).toNat

end

end A236627.P12750631554167891029

namespace A236627

/-- `A000196(n)-A004526(A000005(n+1))` -/
def P12750631554167891029.Spec : Prop :=
  ∀ n, P12750631554167891029.a n = A236627 (n + 1)

end A236627

/-! ## A236627.P9430238920850699829

`A004526(A000267(n)-A000005(n+1))`
-/

namespace A236627.P9430238920850699829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A000267 n - A000005 (n + 1)).toNat

end

end A236627.P9430238920850699829

namespace A236627

/-- `A004526(A000267(n)-A000005(n+1))` -/
def P9430238920850699829.Spec : Prop :=
  ∀ n, P9430238920850699829.a n = A236627 (n + 1)

end A236627

/-! ## A236627.P2848336608979039914

`A094820(n+1)-(A211264(n+1)+A038548(n+1))`
-/

namespace A236627.P2848336608979039914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094820 (n + 1) - (A211264 (n + 1) + A038548 (n + 1))

end

end A236627.P2848336608979039914

namespace A236627

/-- `A094820(n+1)-(A211264(n+1)+A038548(n+1))` -/
def P2848336608979039914.Spec : Prop :=
  ∀ n, P2848336608979039914.a n = A236627 (n + 1)

end A236627

/-!
# A236630: Irregular triangle T(n,k) of alternating sums of squares of entries in the rows in the triangle of A235791, read by rows.

The programs for A236630, there is no canonical definition to state claims against.
-/

/-! ## A236630.P10800228113521893745

`∑[A236631(n+1)]`
-/

namespace A236630.P10800228113521893745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236631 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A236630.P10800228113521893745

/-! ## A236630.P4220035632787925419

`A236631(n+1)+a(A023443(n))` with `a(0)=1`
-/

namespace A236630.P4220035632787925419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A236631 (n + 1) + a (A023443 n).toNat

end

end A236630.P4220035632787925419

/-!
# A236632: Sum of all divisors of all positive integers <= n minus the total number of divisors of all positive integers <= n.

The programs for A236632, the canonical program `A236632.P7240843620257617603` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A236632 has offset 1).

The definition of A236632 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A236632.P7240843620257617603

`A024916(n+1)-A006218(n+1)`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A236632

/-- `A024916(n+1)-A006218(n+1)` -/
def P7240843620257617603.Spec : Prop :=
  ∀ n, P7240843620257617603.a n = A236632 (n + 1)

theorem P7240843620257617603.correct : P7240843620257617603.Spec := by
  intro n
  simp only [A236632, Nat.add_sub_cancel]

end A236632

/-! ## A236632.P11291645651655866085

`1/2*(A222548(n+1)-A006218(n+1))`
-/

namespace A236632.P11291645651655866085
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 2 * (A222548 (n + 1) - A006218 (n + 1) : ℚ)

end

end A236632.P11291645651655866085

namespace A236632

/-- `1/2*(A222548(n+1)-A006218(n+1))` -/
def P11291645651655866085.Spec : Prop :=
  ∀ n, P11291645651655866085.a n = (A236632 (n + 1) : ℚ)

theorem P11291645651655866085.correct : P11291645651655866085.Spec := by
  intro n
  simp only [A236632, Nat.add_sub_cancel, A236632.P11291645651655866085.a, A236632.P7240843620257617603.a, A006218, A006218.P9218434490128439557.a, A024916, A024916.P6070136297472608546.a, A222548, A222548.P12009654421931561066.a, A000005, A000005.P16091521709108585461.a, A160664, A160664.P14996881624845338289.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A236632

/-! ## A236632.P11425269318056436728

`∑[∑{d}[n+1, #-1]]`
-/

namespace A236632.P11425269318056436728
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), ((d : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A236632.P11425269318056436728

namespace A236632

/-- `∑[∑{d}[n+1, #-1]]` -/
def P11425269318056436728.Spec : Prop :=
  ∀ n, P11425269318056436728.a n = A236632 (n + 1)

end A236632

/-! ## A236632.P3356597348111956621

`∑{d}[n+1, #-1]+a(n-1)` with `a(0)=0`
-/

namespace A236632.P3356597348111956621
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ∑ d ∈ Nat.divisors (f1 n), ((d : ℤ) - 1) + a (n - 1)

end

end A236632.P3356597348111956621

namespace A236632

/-- `∑{d}[n+1, #-1]+a(n-1)` -/
def P3356597348111956621.Spec : Prop :=
  ∀ n, P3356597348111956621.a n = A236632 (n + 1)

end A236632

/-! ## A236632.P9520326111735181464

`∑[A065608(n+1)]`
-/

namespace A236632.P9520326111735181464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065608 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A236632.P9520326111735181464

namespace A236632

/-- `∑[A065608(n+1)]` -/
def P9520326111735181464.Spec : Prop :=
  ∀ n, P9520326111735181464.a n = A236632 (n + 1)

end A236632

/-! ## A236632.P15011014371304053348

`∑[A158901(n+1)-1]`
-/

namespace A236632.P15011014371304053348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158901 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A236632.P15011014371304053348

namespace A236632

/-- `∑[A158901(n+1)-1]` -/
def P15011014371304053348.Spec : Prop :=
  ∀ n, P15011014371304053348.a n = A236632 (n + 1)

end A236632

/-! ## A236632.P8448702081411791447

`∑[A152770(n+1)+n]`
-/

namespace A236632.P8448702081411791447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152770 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A236632.P8448702081411791447

namespace A236632

/-- `∑[A152770(n+1)+n]` -/
def P8448702081411791447.Spec : Prop :=
  ∀ n, P8448702081411791447.a n = A236632 (n + 1)

end A236632

/-! ## A236632.P1899836514616288919

`A152967(n+1)+∑[n]`
-/

namespace A236632.P1899836514616288919
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152967 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A236632.P1899836514616288919

namespace A236632

/-- `A152967(n+1)+∑[n]` -/
def P1899836514616288919.Spec : Prop :=
  ∀ n, P1899836514616288919.a n = A236632 (n + 1)

end A236632

/-! ## A236632.P2469770218206155522

`∑[A137319(n+1)-(n+1)]`
-/

namespace A236632.P2469770218206155522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137319 (n + 1) - (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A236632.P2469770218206155522

namespace A236632

/-- `∑[A137319(n+1)-(n+1)]` -/
def P2469770218206155522.Spec : Prop :=
  ∀ n, P2469770218206155522.a n = A236632 (n + 1)

end A236632

/-! ## A236632.P7775703302562121898

`∑[A330866(n+1)/(n+1)]`
-/

namespace A236632.P7775703302562121898
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A330866 (n + 1) : ℚ) / (n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A236632.P7775703302562121898

namespace A236632

/-- `∑[A330866(n+1)/(n+1)]` -/
def P7775703302562121898.Spec : Prop :=
  ∀ n, P7775703302562121898.a n = (A236632 (n + 1) : ℚ)

end A236632

/-! ## A236632.P7967535197378682627

`(n+1)²-∑[A152864(n+1)]`
-/

namespace A236632.P7967535197378682627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152864 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A236632.P7967535197378682627

namespace A236632

/-- `(n+1)²-∑[A152864(n+1)]` -/
def P7967535197378682627.Spec : Prop :=
  ∀ n, P7967535197378682627.a n = A236632 (n + 1)

end A236632

/-! ## A236632.P9085605002413071524

`A161664(n+1)+A153485(n+1)`
-/

namespace A236632.P9085605002413071524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161664 (n + 1) + A153485 (n + 1)

end

end A236632.P9085605002413071524

namespace A236632

/-- `A161664(n+1)+A153485(n+1)` -/
def P9085605002413071524.Spec : Prop :=
  ∀ n, P9085605002413071524.a n = A236632 (n + 1)

end A236632

/-! ## A236632.P9913301050596394510

`A330476(n+1)+A004125(n+1)`
-/

namespace A236632.P9913301050596394510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330476 (n + 1) + A004125 (n + 1)

end

end A236632.P9913301050596394510

namespace A236632

/-- `A330476(n+1)+A004125(n+1)` -/
def P9913301050596394510.Spec : Prop :=
  ∀ n, P9913301050596394510.a n = A236632 (n + 1)

end A236632

/-! ## A236632.P18421948926072478615

`A292769(n+1)+A063088(n+1)`
-/

namespace A236632.P18421948926072478615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292769 (n + 1) + A063088 (n + 1)

end

end A236632.P18421948926072478615

namespace A236632

/-- `A292769(n+1)+A063088(n+1)` -/
def P18421948926072478615.Spec : Prop :=
  ∀ n, P18421948926072478615.a n = A236632 (n + 1)

end A236632

/-! ## A236632.P3044060327000857273

`A366969(n+1)+A002541(n+1)`
-/

namespace A236632.P3044060327000857273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366969 (n + 1) + A002541 (n + 1)

end

end A236632.P3044060327000857273

namespace A236632

/-- `A366969(n+1)+A002541(n+1)` -/
def P3044060327000857273.Spec : Prop :=
  ∀ n, P3044060327000857273.a n = A236632 (n + 1)

theorem P3044060327000857273.correct : P3044060327000857273.Spec := by
  intro n
  simp only [A236632, Nat.add_sub_cancel, A236632.P3044060327000857273.a, A236632.P7240843620257617603.a, A002541, A002541.P10664040244727747136.a, A006218, A006218.P9218434490128439557.a, A024916, A024916.P6070136297472608546.a, A366969, A366969.P14722931787794667640.a, A000005, A000005.P16091521709108585461.a, A160664, A160664.P14996881624845338289.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A236632

/-! ## A236632.P7619776014021893109

`A160664(n+1)-A054519(n+1)`
-/

namespace A236632.P7619776014021893109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 (n + 1) - A054519 (n + 1)

end

end A236632.P7619776014021893109

namespace A236632

/-- `A160664(n+1)-A054519(n+1)` -/
def P7619776014021893109.Spec : Prop :=
  ∀ n, P7619776014021893109.a n = A236632 (n + 1)

theorem P7619776014021893109.correct : P7619776014021893109.Spec := by
  intro n
  simp only [A236632, Nat.add_sub_cancel, A236632.P7619776014021893109.a, A236632.P7240843620257617603.a, A006218, A006218.P9218434490128439557.a, A024916, A024916.P6070136297472608546.a, A054519, A054519.P3292618312068876157.a, A160664, A160664.P14996881624845338289.a, A000005, A000005.P16091521709108585461.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A236632

/-! ## A236632.P3265724339685531563

`A222548(n+1)-A024916(n+1)`
-/

namespace A236632.P3265724339685531563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222548 (n + 1) - A024916 (n + 1)

end

end A236632.P3265724339685531563

namespace A236632

/-- `A222548(n+1)-A024916(n+1)` -/
def P3265724339685531563.Spec : Prop :=
  ∀ n, P3265724339685531563.a n = A236632 (n + 1)

theorem P3265724339685531563.correct : P3265724339685531563.Spec := by
  intro n
  simp only [A236632, Nat.add_sub_cancel, A236632.P3265724339685531563.a, A236632.P7240843620257617603.a, A006218, A006218.P9218434490128439557.a, A024916, A024916.P6070136297472608546.a, A222548, A222548.P12009654421931561066.a, A000005, A000005.P16091521709108585461.a, A160664, A160664.P14996881624845338289.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A236632

/-! ## A236632.P12086893229793845775

`A143274(n+1)-A355947(n+1)`
-/

namespace A236632.P12086893229793845775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143274 (n + 1) - A355947 (n + 1)

end

end A236632.P12086893229793845775

namespace A236632

/-- `A143274(n+1)-A355947(n+1)` -/
def P12086893229793845775.Spec : Prop :=
  ∀ n, P12086893229793845775.a n = A236632 (n + 1)

end A236632

/-! ## A236632.P9233403264415823399

`A327329(n+1)-A366983(n+1)`
-/

namespace A236632.P9233403264415823399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327329 (n + 1) - A366983 (n + 1)

end

end A236632.P9233403264415823399

namespace A236632

/-- `A327329(n+1)-A366983(n+1)` -/
def P9233403264415823399.Spec : Prop :=
  ∀ n, P9233403264415823399.a n = A236632 (n + 1)

end A236632

/-! ## A236632.P15906686332451340481

`∑[A000203(n+1)-A000005(n+1)]`
-/

namespace A236632.P15906686332451340481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - A000005 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A236632.P15906686332451340481

namespace A236632

/-- `∑[A000203(n+1)-A000005(n+1)]` -/
def P15906686332451340481.Spec : Prop :=
  ∀ n, P15906686332451340481.a n = A236632 (n + 1)

end A236632

/-!
# A236633: Number of overcompositions of n minus the number of compositions of n.

The programs for A236633, there is no canonical definition to state claims against.
-/

/-! ## A236633.P16803137501940217338

`A236002(n)-A011782(n)`
-/

namespace A236633.P16803137501940217338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236002 n - A011782 n

end

end A236633.P16803137501940217338

/-! ## A236633.P15858249350463382643

`A237272(n)+A230441(n)`
-/

namespace A236633.P15858249350463382643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237272 n + A230441 n

end

end A236633.P15858249350463382643

/-! ## A236633.P5241489555773569767

`A237044(n)-A056823(n)`
-/

namespace A236633.P5241489555773569767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237044 n - A056823 n

end

end A236633.P5241489555773569767

/-! ## A236633.P14162007859109880244

`A237045(n)-A237047(n)`
-/

namespace A236633.P14162007859109880244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237045 n - A237047 n

end

end A236633.P14162007859109880244

/-! ## A236633.P5621557023602293941

`A236002(n)-∑[A034008(n)]`
-/

namespace A236633.P5621557023602293941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034008 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236002 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A236633.P5621557023602293941

/-!
# A236634: Number of unbalanced partitions of n: the largest part is not equal to the number of parts.

The programs for A236634, there is no canonical definition to state claims against.
-/

/-! ## A236634.P1730334308251362184

`2*A064173(n+1)`
-/

namespace A236634.P1730334308251362184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A064173 (n + 1)

end

end A236634.P1730334308251362184

/-! ## A236634.P4133061909848948625

`A000041(n+1)-A047993(n+1)`
-/

namespace A236634.P4133061909848948625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 1) - A047993 (n + 1)

end

end A236634.P4133061909848948625

/-! ## A236634.P5330381818393578048

`abs(2*Δ[a(n-1)-A064173(n)])` with `a(0)=1`
-/

namespace A236634.P5330381818393578048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (n - 1) - A064173 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 * (f1 (n + 1) - f1 n)|

end

end A236634.P5330381818393578048

/-! ## A236634.P13070598169318913957

`Δ[A000070(n)]-A047993(n+1)`
-/

namespace A236634.P13070598169318913957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000070 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A047993 (n + 1)

end

end A236634.P13070598169318913957

/-! ## A236634.P11296695402634018992

`record[A035363(n)]-A047993(n+1)`
-/

namespace A236634.P11296695402634018992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A047993 (n + 1)

end

end A236634.P11296695402634018992

/-! ## A236634.P12915392796061316761

`record[A035444(n)]-A047993(n+1)`
-/

namespace A236634.P12915392796061316761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035444 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A047993 (n + 1)

end

end A236634.P12915392796061316761

/-! ## A236634.P2482239610843635222

`A330644(n+1)-A331262(n+1)`
-/

namespace A236634.P2482239610843635222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330644 (n + 1) - A331262 (n + 1)

end

end A236634.P2482239610843635222

/-! ## A236634.P8524669661831141404

`2*(A123975(n+1)+A101198(n+1))`
-/

namespace A236634.P8524669661831141404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A123975 (n + 1) + A101198 (n + 1))

end

end A236634.P8524669661831141404

/-! ## A236634.P6962560440723872571

`2*(A064174(n+1)-A047993(n+1))`
-/

namespace A236634.P6962560440723872571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A064174 (n + 1) - A047993 (n + 1))

end

end A236634.P6962560440723872571

/-! ## A236634.P15121877230164633284

`A064173(A000027(n+1))+A064173(n+1)`
-/

namespace A236634.P15121877230164633284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064173 (A000027 (n + 1)).toNat + A064173 (n + 1)

end

end A236634.P15121877230164633284

/-! ## A236634.P15453545219811713594

`A064173(n+1)+A101708(n+1)+A101707(n+1)`
-/

namespace A236634.P15453545219811713594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064173 (n + 1) + (A101708 (n + 1) + A101707 (n + 1))

end

end A236634.P15453545219811713594

/-! ## A236634.P12132085826800233208

`A003106(n+1)+A325341(n+1)+A064173(n+1)`
-/

namespace A236634.P12132085826800233208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003106 (n + 1) + (A325341 (n + 1) + A064173 (n + 1))

end

end A236634.P12132085826800233208

/-! ## A236634.P17581305340044024694

`A101708(n+1)+A340692(n+1)+A101708(n+1)`
-/

namespace A236634.P17581305340044024694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101708 (n + 1) + (A340692 (n + 1) + A101708 (n + 1))

end

end A236634.P17581305340044024694

/-! ## A236634.P10722114591744464492

`A003106(n+1)+A039900(n+1)-A047993(n+1)`
-/

namespace A236634.P10722114591744464492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003106 (n + 1) + (A039900 (n + 1) - A047993 (n + 1))

end

end A236634.P10722114591744464492

/-! ## A236634.P15103229362713969880

`A000041(n+1)+A064173(n+1)-A064174(n+1)`
-/

namespace A236634.P15103229362713969880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 1) + (A064173 (n + 1) - A064174 (n + 1))

end

end A236634.P15103229362713969880

/-! ## A236634.P7904694425516748448

`A064173(n+1)+A064174(n+1)-A047993(n+1)`
-/

namespace A236634.P7904694425516748448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064173 (n + 1) + (A064174 (n + 1) - A047993 (n + 1))

end

end A236634.P7904694425516748448

/-! ## A236634.P4197956535367753339

`A000041(n+1)+A101708(n+1)-A101709(n+1)`
-/

namespace A236634.P4197956535367753339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 1) + (A101708 (n + 1) - A101709 (n + 1))

end

end A236634.P4197956535367753339

/-! ## A236634.P15017945622194418424

`A000041(n+1)-(A331262(n+1)+A000700(n+1))`
-/

namespace A236634.P15017945622194418424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 1) - (A331262 (n + 1) + A000700 (n + 1))

end

end A236634.P15017945622194418424

/-! ## A236634.P12440192595756220251

`A000701(n+1)+A000701(n+1)-A331262(n+1)`
-/

namespace A236634.P12440192595756220251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000701 (n + 1) + (A000701 (n + 1) - A331262 (n + 1))

end

end A236634.P12440192595756220251

/-! ## A236634.P8108998611689942463

`A000700(n+1)+A330644(n+1)-A047993(n+1)`
-/

namespace A236634.P8108998611689942463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000700 (n + 1) + (A330644 (n + 1) - A047993 (n + 1))

end

end A236634.P8108998611689942463

/-!
# A236635: Number of (n+1)X(1+1) 0..2 arrays colored with the maximum plus the upper median plus the minimum of every 2X2 subblock.

The programs for A236635, there is no canonical definition to state claims against.
-/

/-! ## A236635.P49622336649512670

`A236640(∑[n]+1)`
-/

namespace A236635.P49622336649512670
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236640 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A236635.P49622336649512670

/-! ## A236635.P8386084354426384965

`record[A236640(A246276(n+1))]`
-/

namespace A236635.P8386084354426384965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236640 (A246276 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236635.P8386084354426384965

/-! ## A236635.P8658105523423298789

`record[A236640(A254052(n+1))]`
-/

namespace A236635.P8658105523423298789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236640 (A254052 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236635.P8658105523423298789

/-! ## A236635.P18003120214566189513

`A236640(A000124(n))+char[12]`
-/

namespace A236635.P18003120214566189513
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236640 (A000124 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A236635.P18003120214566189513

/-! ## A236635.P11033243572289920427

`record[A236640(n+1)/A001498(n)]`
-/

namespace A236635.P11033243572289920427
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A236640 (n + 1) : ℚ) / (A001498 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236635.P11033243572289920427

/-!
# A236636: Number of (n+1)X(2+1) 0..2 arrays colored with the maximum plus the upper median plus the minimum of every 2X2 subblock.

The programs for A236636, there is no canonical definition to state claims against.
-/

/-! ## A236636.P16998095277721032192

`A236640(∑[n+1]+2)`
-/

namespace A236636.P16998095277721032192
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236640 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A236636.P16998095277721032192

/-! ## A236636.P9658013420170478301

`record[A236640(A112367(n)+2)]`
-/

namespace A236636.P9658013420170478301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236640 (A112367 n + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236636.P9658013420170478301

/-! ## A236636.P12989775233100484466

`A243830(n)+A236640(A152948(n+3))`
-/

namespace A236636.P12989775233100484466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243830 n + A236640 (A152948 (n + 3)).toNat

end

end A236636.P12989775233100484466

/-! ## A236636.P6585002692813036335

`record[A236640(abs(A201163(n)))]`
-/

namespace A236636.P6585002692813036335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236640 |A201163 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236636.P6585002692813036335

/-! ## A236636.P15869892681460356046

`record[A236640(A246276(2*(n+1))-1)]`
-/

namespace A236636.P15869892681460356046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236640 (A246276 (2 * (n + 1)) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236636.P15869892681460356046

/-!
# A236637: Number of (n+1)X(3+1) 0..2 arrays colored with the maximum plus the upper median plus the minimum of every 2X2 subblock.

The programs for A236637, there is no canonical definition to state claims against.
-/

/-! ## A236637.P12405880945591986767

`A236640(∑[n+2]+4)`
-/

namespace A236637.P12405880945591986767
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236640 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A236637.P12405880945591986767

/-! ## A236637.P1557458970041434181

`A236640(A167614(n+1))+A011736(n)`
-/

namespace A236637.P1557458970041434181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236640 (A167614 (n + 1)).toNat + A011736 n

end

end A236637.P1557458970041434181

/-! ## A236637.P4675772075539482536

`A236640(A167614(n+1))+A025437(n)`
-/

namespace A236637.P4675772075539482536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236640 (A167614 (n + 1)).toNat + A025437 n

end

end A236637.P4675772075539482536

/-! ## A236637.P9614252074216587425

`A236640(A167614(n+1))+A025469(n)`
-/

namespace A236637.P9614252074216587425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236640 (A167614 (n + 1)).toNat + A025469 n

end

end A236637.P9614252074216587425

/-! ## A236637.P1777538091168376739

`A236640(A167614(n+1))+A151795(n)`
-/

namespace A236637.P1777538091168376739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236640 (A167614 (n + 1)).toNat + A151795 n

end

end A236637.P1777538091168376739

/-!
# A236638: Number of (n+1)X(4+1) 0..2 arrays colored with the maximum plus the upper median plus the minimum of every 2X2 subblock.

The programs for A236638, there is no canonical definition to state claims against.
-/

/-! ## A236638.P9259603872009140006

`A236640(∑[n+3]+7)`
-/

namespace A236638.P9259603872009140006
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236640 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A236638.P9259603872009140006

/-! ## A236638.P11349936901061981583

`A236677(2*n+1)+A236640(A055999(n)+10)`
-/

namespace A236638.P11349936901061981583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236677 (2 * n + 1) + A236640 (A055999 n + 10).toNat

end

end A236638.P11349936901061981583

/-!
# A236639: Number of (n+1) X (5+1) 0..2 arrays colored with the maximum plus the upper median plus the minimum of every 2 X 2 subblock.

The programs for A236639, there is no canonical definition to state claims against.
-/

/-! ## A236639.P6376899850149728844

`A236640(A167499(n+3))`
-/

namespace A236639.P6376899850149728844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236640 (A167499 (n + 3)).toNat

end

end A236639.P6376899850149728844

/-! ## A236639.P1412580311849252360

`A236640(A155212(n)+13)`
-/

namespace A236639.P1412580311849252360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236640 (A155212 n + 13).toNat

end

end A236639.P1412580311849252360

/-! ## A236639.P12824816358606902934

`A236640(A056000(n)+15)`
-/

namespace A236639.P12824816358606902934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236640 (A056000 n + 15).toNat

end

end A236639.P12824816358606902934

/-! ## A236639.P15632789568215626118

`A236640(eq[7, A066657(n)])`
-/

namespace A236639.P15632789568215626118
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236640 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A236639.P15632789568215626118

/-!
# A236641: Number of (n+1)X(1+1) 0..2 arrays colored with the maximum plus the upper median plus the lower median minus the minimum of every 2X2 subblock.

The programs for A236641, there is no canonical definition to state claims against.
-/

/-! ## A236641.P5926219516308963440

`A236645(∑[n]+1)`
-/

namespace A236641.P5926219516308963440
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236645 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A236641.P5926219516308963440

/-! ## A236641.P6465278719975092096

`record[A236645(A246276(n+1))]`
-/

namespace A236641.P6465278719975092096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236645 (A246276 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236641.P6465278719975092096

/-! ## A236641.P18033363911333932028

`lcm((-1)^n, A236645(A000124(n)))`
-/

namespace A236641.P18033363911333932028
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (A236645 (A000124 n).toNat)

end

end A236641.P18033363911333932028

/-! ## A236641.P13485939644373087756

`record[A010054(n)*A236645(n+1)]`
-/

namespace A236641.P13485939644373087756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A236645 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236641.P13485939644373087756

/-! ## A236641.P7282264073764881282

`record[A103451(n)*A236645(n+1)]`
-/

namespace A236641.P7282264073764881282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103451 n * A236645 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236641.P7282264073764881282

/-!
# A236642: Number of (n+1)X(2+1) 0..2 arrays colored with the maximum plus the upper median plus the lower median minus the minimum of every 2X2 subblock.

The programs for A236642, there is no canonical definition to state claims against.
-/

/-! ## A236642.P3441708394158544017

`A236645(∑[n+1]+2)`
-/

namespace A236642.P3441708394158544017
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236645 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A236642.P3441708394158544017

/-! ## A236642.P9737746340769748576

`record[A010054(n)*A236645(n+2)]`
-/

namespace A236642.P9737746340769748576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A236645 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236642.P9737746340769748576

/-! ## A236642.P18119511055697642919

`record[root(A236645(n+2), A059268(n))]`
-/

namespace A236642.P18119511055697642919
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A236645 (n + 2) : ℝ) ^ (1 / (A059268 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236642.P18119511055697642919

/-! ## A236642.P13867872352005041750

`record[root(A236645(n+2), A124927(n))]`
-/

namespace A236642.P13867872352005041750
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A236645 (n + 2) : ℝ) ^ (1 / (A124927 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236642.P13867872352005041750

/-!
# A236643: Number of (n+1)X(3+1) 0..2 arrays colored with the maximum plus the upper median plus the lower median minus the minimum of every 2X2 subblock.

The programs for A236643, there is no canonical definition to state claims against.
-/

/-! ## A236643.P14075145350789087980

`A236645(∑[n+2]+4)`
-/

namespace A236643.P14075145350789087980
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236645 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A236643.P14075145350789087980

/-! ## A236643.P5975345523838912232

`record[root(A236645(n+4), A173333(n+1))]`
-/

namespace A236643.P5975345523838912232
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A236645 (n + 4) : ℝ) ^ (1 / (A173333 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236643.P5975345523838912232

/-! ## A236643.P6130743247237892518

`A236645(A167614(n+1))+A025469(n)`
-/

namespace A236643.P6130743247237892518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236645 (A167614 (n + 1)).toNat + A025469 n

end

end A236643.P6130743247237892518

/-! ## A236643.P11156893343569221001

`A236645(A167614(n+1))+A090620(n)`
-/

namespace A236643.P11156893343569221001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236645 (A167614 (n + 1)).toNat + A090620 n

end

end A236643.P11156893343569221001

/-! ## A236643.P13709741669548139012

`A236645(A167614(n+1))+A178798(n)`
-/

namespace A236643.P13709741669548139012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236645 (A167614 (n + 1)).toNat + A178798 n

end

end A236643.P13709741669548139012

/-!
# A236644: Number of (n+1)X(4+1) 0..2 arrays colored with the maximum plus the upper median plus the lower median minus the minimum of every 2X2 subblock.

The programs for A236644, there is no canonical definition to state claims against.
-/

/-! ## A236644.P17161603624406875722

`A236645(A374004(n+1))`
-/

namespace A236644.P17161603624406875722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236645 (A374004 (n + 1)).toNat

end

end A236644.P17161603624406875722

/-! ## A236644.P17365084110155680181

`A236645(A141214(n)+7)`
-/

namespace A236644.P17365084110155680181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236645 (A141214 n + 7).toNat

end

end A236644.P17365084110155680181

/-! ## A236644.P6581426110695133613

`A236645(A052905(n)+9)`
-/

namespace A236644.P6581426110695133613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236645 (A052905 n + 9).toNat

end

end A236644.P6581426110695133613

/-! ## A236644.P8315969129974359922

`A236645(A055999(n)+10)`
-/

namespace A236644.P8315969129974359922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236645 (A055999 n + 10).toNat

end

end A236644.P8315969129974359922

/-!
# A236646: Number of (n+1)X(1+1) 0..2 arrays colored with the maximum plus the upper median minus the lower median minus the minimum of every 2X2 subblock.

The programs for A236646, there is no canonical definition to state claims against.
-/

/-! ## A236646.P14982131611241576277

`A236651(∑[n]+1)`
-/

namespace A236646.P14982131611241576277
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236651 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A236646.P14982131611241576277

/-! ## A236646.P18146698560333230517

`record[A236651(A114091(n+1))]`
-/

namespace A236646.P18146698560333230517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236651 (A114091 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236646.P18146698560333230517

/-! ## A236646.P15646264421977841288

`record[A236651(A249742(n+1))]`
-/

namespace A236646.P15646264421977841288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236651 (A249742 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236646.P15646264421977841288

/-! ## A236646.P14208330634204374106

`record[A236651(A286235(n+1))]`
-/

namespace A236646.P14208330634204374106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236651 (A286235 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236646.P14208330634204374106

/-! ## A236646.P2313086584384756229

`record[A010054(n)*A236651(n+1)]`
-/

namespace A236646.P2313086584384756229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A236651 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236646.P2313086584384756229

/-!
# A236647: Number of (n+1)X(2+1) 0..2 arrays colored with the maximum plus the upper median minus the lower median minus the minimum of every 2X2 subblock.

The programs for A236647, there is no canonical definition to state claims against.
-/

/-! ## A236647.P2690643487783831511

`A236651(∑[n+1]+2)`
-/

namespace A236647.P2690643487783831511
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236651 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A236647.P2690643487783831511

/-! ## A236647.P8944113235896749298

`lcm(2, A236651(A000096(n)+3))`
-/

namespace A236647.P8944113235896749298
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A236651 (A000096 n + 3).toNat)

end

end A236647.P8944113235896749298

/-! ## A236647.P14286358386305494167

`record[A236651(A114091(n+1)+1)]`
-/

namespace A236647.P14286358386305494167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236651 (A114091 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236647.P14286358386305494167

/-! ## A236647.P3942592983671266244

`record[A236651(A286235(n+1)+1)]`
-/

namespace A236647.P3942592983671266244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236651 (A286235 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236647.P3942592983671266244

/-! ## A236647.P4935030170475055757

`record[A010054(n)*A236651(n+2)]`
-/

namespace A236647.P4935030170475055757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A236651 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236647.P4935030170475055757

/-!
# A236648: Number of (n+1)X(3+1) 0..2 arrays colored with the maximum plus the upper median minus the lower median minus the minimum of every 2X2 subblock.

The programs for A236648, there is no canonical definition to state claims against.
-/

/-! ## A236648.P2855614121035520612

`A236651(∑[n+2]+4)`
-/

namespace A236648.P2855614121035520612
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236651 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A236648.P2855614121035520612

/-! ## A236648.P3960938503357181015

`lcm(2, A236651(A167614(n+1)))`
-/

namespace A236648.P3960938503357181015
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A236651 (A167614 (n + 1)).toNat)

end

end A236648.P3960938503357181015

/-! ## A236648.P3340939164937309396

`lcm(4, A236651(A373663(n+1)))`
-/

namespace A236648.P3340939164937309396
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 4 (A236651 (A373663 (n + 1)).toNat)

end

end A236648.P3340939164937309396

/-! ## A236648.P8621544720179071897

`A236651(A167614(n+1))+A097601(n)`
-/

namespace A236648.P8621544720179071897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236651 (A167614 (n + 1)).toNat + A097601 n

end

end A236648.P8621544720179071897

/-! ## A236648.P4051166941781653985

`A236651(A167614(n+1))+A131242(n)`
-/

namespace A236648.P4051166941781653985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236651 (A167614 (n + 1)).toNat + A131242 n

end

end A236648.P4051166941781653985

/-!
# A236649: Number of (n+1)X(4+1) 0..2 arrays colored with the maximum plus the upper median minus the lower median minus the minimum of every 2X2 subblock.

The programs for A236649, there is no canonical definition to state claims against.
-/

/-! ## A236649.P4295843177764634968

`A236651(A374004(n+1))`
-/

namespace A236649.P4295843177764634968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236651 (A374004 (n + 1)).toNat

end

end A236649.P4295843177764634968

/-! ## A236649.P12141363464064749964

`A236651(A145018(n+4))`
-/

namespace A236649.P12141363464064749964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236651 (A145018 (n + 4)).toNat

end

end A236649.P12141363464064749964

/-! ## A236649.P10205814327997215619

`A236651(A141214(n)+7)`
-/

namespace A236649.P10205814327997215619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236651 (A141214 n + 7).toNat

end

end A236649.P10205814327997215619

/-! ## A236649.P9432384063890098600

`A236651(A052905(n)+9)`
-/

namespace A236649.P9432384063890098600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236651 (A052905 n + 9).toNat

end

end A236649.P9432384063890098600

/-!
# A236650: Number of (n+1)X(5+1) 0..2 arrays colored with the maximum plus the upper median minus the lower median minus the minimum of every 2X2 subblock.

The programs for A236650, there is no canonical definition to state claims against.
-/

/-! ## A236650.P10354697964023965946

`A236651(A374005(n+1))`
-/

namespace A236650.P10354697964023965946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236651 (A374005 (n + 1)).toNat

end

end A236650.P10354697964023965946

/-! ## A236650.P9699376626753064211

`A236651(A167499(n+3))`
-/

namespace A236650.P9699376626753064211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236651 (A167499 (n + 3)).toNat

end

end A236650.P9699376626753064211

/-! ## A236650.P11529631129644052540

`A236651(A155212(n)+13)`
-/

namespace A236650.P11529631129644052540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236651 (A155212 n + 13).toNat

end

end A236650.P11529631129644052540

/-!
# A236652: Positive integers n such that n^2 divided by the digital root of n is a square.

The programs for A236652, the canonical program `A236652.P18296035511399507645` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A236652 has offset 1).

The definition of A236652 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A236652.P18296035511399507645

`a(n-1)+a(n-5)-a(n-6)` with `a(0)=1, a(1)=4, a(2)=9, a(3)=10, a(4)=18, a(5)=19`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A236652

/-- `a(n-1)+a(n-5)-a(n-6)` -/
def P18296035511399507645.Spec : Prop :=
  ∀ n, P18296035511399507645.a n = A236652 (n + 1)

theorem P18296035511399507645.correct : P18296035511399507645.Spec := by
  intro n
  simp only [A236652, Nat.add_sub_cancel]

end A236652

/-! ## A236652.P14386540647844394006

`∑[floor(a(n-5))]` with `a(0)=1, a(1)=3, a(2)=5, a(3)=1, a(4)=8`

`floor` is left out, it is the identity on integers.
-/

namespace A236652.P14386540647844394006
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 5, 1, 8] fun n f1 =>
  f1 (n - 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A236652.P14386540647844394006

namespace A236652

/-- `∑[floor(a(n-5))]` -/
def P14386540647844394006.Spec : Prop :=
  ∀ n, (P14386540647844394006.a n : ℤ) = A236652 (n + 1)

end A236652

/-! ## A236652.P1573755884742200897

`record[n+1-lcm(2, dr(lcm(2, n)))]`
-/

namespace A236652.P1573755884742200897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - (Nat.lcm 2 (SequenceMachineLib.digitalRoot (Nat.lcm 2 n : ℤ)) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236652.P1573755884742200897

namespace A236652

/-- `record[n+1-lcm(2, dr(lcm(2, n)))]` -/
def P1573755884742200897.Spec : Prop :=
  ∀ n, P1573755884742200897.a n = A236652 (n + 1)

end A236652

/-! ## A236652.P11319913870833633704

`∑[a(n-5)%n]` with `a(0)=1, a(1)=3, a(2)=5, a(3)=1, a(4)=8`
-/

namespace A236652.P11319913870833633704
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 5, 1, 8] fun n f1 =>
  f1 (n - 5) % n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A236652.P11319913870833633704

namespace A236652

/-- `∑[a(n-5)%n]` -/
def P11319913870833633704.Spec : Prop :=
  ∀ n, (P11319913870833633704.a n : ℤ) = A236652 (n + 1)

end A236652

/-! ## A236652.P11099631443108198833

`A056991(A047545(n+1)+1)`
-/

namespace A236652.P11099631443108198833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056991 (A047545 (n + 1) + 1).toNat

end

end A236652.P11099631443108198833

namespace A236652

/-- `A056991(A047545(n+1)+1)` -/
def P11099631443108198833.Spec : Prop :=
  ∀ n, P11099631443108198833.a n = A236652 (n + 1)

end A236652

/-! ## A236652.P547063638885487632

`A056991(A047614(n+2))`
-/

namespace A236652.P547063638885487632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056991 (A047614 (n + 2)).toNat

end

end A236652.P547063638885487632

namespace A236652

/-- `A056991(A047614(n+2))` -/
def P547063638885487632.Spec : Prop :=
  ∀ n, P547063638885487632.a n = A236652 (n + 1)

end A236652

/-! ## A236652.P11426321130150201903

`A242660(A047449(n+2))`
-/

namespace A236652.P11426321130150201903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242660 (A047449 (n + 2)).toNat

end

end A236652.P11426321130150201903

namespace A236652

/-- `A242660(A047449(n+2))` -/
def P11426321130150201903.Spec : Prop :=
  ∀ n, P11426321130150201903.a n = A236652 (n + 1)

end A236652

/-! ## A236652.P6146699762476625171

`A028837(A047226(n+2))`
-/

namespace A236652.P6146699762476625171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028837 (A047226 (n + 2)).toNat

end

end A236652.P6146699762476625171

namespace A236652

/-- `A028837(A047226(n+2))` -/
def P6146699762476625171.Spec : Prop :=
  ∀ n, P6146699762476625171.a n = A236652 (n + 1)

end A236652

/-! ## A236652.P12467601485919554710

`A028837(A002266(n+1)+n+1)`
-/

namespace A236652.P12467601485919554710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028837 (A002266 (n + 1) + (n + 1 : ℤ)).toNat

end

end A236652.P12467601485919554710

namespace A236652

/-- `A028837(A002266(n+1)+n+1)` -/
def P12467601485919554710.Spec : Prop :=
  ∀ n, P12467601485919554710.a n = A236652 (n + 1)

end A236652

/-! ## A236652.P10394495814669011605

`A004442(A047252(2*n+1))+A004442(A047252(n+2))`
-/

namespace A236652.P10394495814669011605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (A047252 (2 * n + 1)).toNat + A004442 (A047252 (n + 2)).toNat

end

end A236652.P10394495814669011605

namespace A236652

/-- `A004442(A047252(2*n+1))+A004442(A047252(n+2))` -/
def P10394495814669011605.Spec : Prop :=
  ∀ n, P10394495814669011605.a n = A236652 (n + 1)

end A236652

/-! ## A236652.P7010296979203676936

`∑[dr(A265035(A250120(2*(n+1))))]`
-/

namespace A236652.P7010296979203676936
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A265035 (A250120 (2 * (n + 1))).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A236652.P7010296979203676936

namespace A236652

/-- `∑[dr(A265035(A250120(2*(n+1))))]` -/
def P7010296979203676936.Spec : Prop :=
  ∀ n, (P7010296979203676936.a n : ℤ) = A236652 (n + 1)

end A236652

/-!
# A236653: Positive integers n such that n^3 divided by the digital root of n is a cube.

The programs for A236653, the canonical program `A236653.P16358387774222037522` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A236653 has offset 1).

The definition of A236653 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A236653.P16358387774222037522

`a(n-1)+a(n-3)-a(n-4)` with `a(0)=1, a(1)=8, a(2)=10, a(3)=19`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A236653

/-- `a(n-1)+a(n-3)-a(n-4)` -/
def P16358387774222037522.Spec : Prop :=
  ∀ n, P16358387774222037522.a n = A236653 (n + 1)

theorem P16358387774222037522.correct : P16358387774222037522.Spec := by
  intro n
  simp only [A236653, Nat.add_sub_cancel]

end A236653

/-! ## A236653.P14647448064759608939

`record[xor(1, n)-n%9]`
-/

namespace A236653.P14647448064759608939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.xor 1 n : ℤ) - ((n % 9 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236653.P14647448064759608939

namespace A236653

/-- `record[xor(1, n)-n%9]` -/
def P14647448064759608939.Spec : Prop :=
  ∀ n, P14647448064759608939.a n = A236653 (n + 1)

end A236653

/-! ## A236653.P7980281470057301904

`a(n-3)+18` with `a(0)=1, a(1)=8, a(2)=10`
-/

namespace A236653.P7980281470057301904
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 8, 10] fun n a =>
  a (n - 3) + 18

end

end A236653.P7980281470057301904

namespace A236653

/-- `a(n-3)+18` -/
def P7980281470057301904.Spec : Prop :=
  ∀ n, (P7980281470057301904.a n : ℤ) = A236653 (n + 1)

end A236653

/-! ## A236653.P14228132057861803979

`∑[floor(a(n-3))]` with `a(0)=1, a(1)=7, a(2)=2, a(3)=9`

`floor` is left out, it is the identity on integers.
-/

namespace A236653.P14228132057861803979
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 7, 2, 9] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A236653.P14228132057861803979

namespace A236653

/-- `∑[floor(a(n-3))]` -/
def P14228132057861803979.Spec : Prop :=
  ∀ n, (P14228132057861803979.a n : ℤ) = A236653 (n + 1)

end A236653

/-! ## A236653.P8729981971171116563

`∑[a(n-3)%10]` with `a(0)=1, a(1)=7, a(2)=2, a(3)=9`
-/

namespace A236653.P8729981971171116563
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 7, 2, 9] fun n f1 =>
  f1 (n - 3) % 10

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A236653.P8729981971171116563

namespace A236653

/-- `∑[a(n-3)%10]` -/
def P8729981971171116563.Spec : Prop :=
  ∀ n, (P8729981971171116563.a n : ℤ) = A236653 (n + 1)

end A236653

/-! ## A236653.P17605304283310749025

`∑[∑[ogf((1+7x+2x^2+8x^3)/(1+x+x^2))]]`
-/

namespace A236653.P17605304283310749025
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 7, 2, 8] [1, 1, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A236653.P17605304283310749025

namespace A236653

/-- `∑[∑[ogf((1+7x+2x^2+8x^3)/(1+x+x^2))]]` -/
def P17605304283310749025.Spec : Prop :=
  ∀ n, P17605304283310749025.a n = A236653 (n + 1)

end A236653

/-! ## A236653.P716575510720796291

`record[2*n-dr(2*n)-a(n-1)]` with `a(0)=1`
-/

namespace A236653.P716575510720796291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  (2 * n : ℤ) - (SequenceMachineLib.digitalRoot (2 * n : ℤ) : ℤ) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236653.P716575510720796291

namespace A236653

/-- `record[2*n-dr(2*n)-a(n-1)]` -/
def P716575510720796291.Spec : Prop :=
  ∀ n, P716575510720796291.a n = A236653 (n + 1)

end A236653

/-! ## A236653.P4475853836692139347

`6*n+2-(2-A010872(n+1))²`
-/

namespace A236653.P4475853836692139347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (6 * n + 2 : ℤ) - (2 - A010872 (n + 1)) ^ 2

end

end A236653.P4475853836692139347

namespace A236653

/-- `6*n+2-(2-A010872(n+1))²` -/
def P4475853836692139347.Spec : Prop :=
  ∀ n, P4475853836692139347.a n = A236653 (n + 1)

end A236653

/-! ## A236653.P16080382774843307809

`A391163(n)+A047523(n+2)`
-/

namespace A236653.P16080382774843307809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391163 n + A047523 (n + 2)

end

end A236653.P16080382774843307809

namespace A236653

/-- `A391163(n)+A047523(n+2)` -/
def P16080382774843307809.Spec : Prop :=
  ∀ n, P16080382774843307809.a n = A236653 (n + 1)

end A236653

/-! ## A236653.P4022291063206153175

`A056020(A004773(n)+1)`
-/

namespace A236653.P4022291063206153175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056020 (A004773 n + 1).toNat

end

end A236653.P4022291063206153175

namespace A236653

/-- `A056020(A004773(n)+1)` -/
def P4022291063206153175.Spec : Prop :=
  ∀ n, P4022291063206153175.a n = A236653 (n + 1)

end A236653

/-! ## A236653.P6580963631961386557

`A056020(A042968(n+1))`
-/

namespace A236653.P6580963631961386557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056020 (A042968 (n + 1)).toNat

end

end A236653.P6580963631961386557

namespace A236653

/-- `A056020(A042968(n+1))` -/
def P6580963631961386557.Spec : Prop :=
  ∀ n, P6580963631961386557.a n = A236653 (n + 1)

end A236653

/-! ## A236653.P4682161497970583087

`A056020(A004772(n+2)-1)`
-/

namespace A236653.P4682161497970583087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056020 (A004772 (n + 2) - 1).toNat

end

end A236653.P4682161497970583087

namespace A236653

/-- `A056020(A004772(n+2)-1)` -/
def P4682161497970583087.Spec : Prop :=
  ∀ n, P4682161497970583087.a n = A236653 (n + 1)

end A236653

/-! ## A236653.P18161335599385423170

`A056020((A047202(n+1)+n)/2)`
-/

namespace A236653.P18161335599385423170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056020 (SequenceMachineLib.roundAway ((A047202 (n + 1) + (n : ℤ) : ℚ) / 2)).toNat

end

end A236653.P18161335599385423170

namespace A236653

/-- `A056020((A047202(n+1)+n)/2)` -/
def P18161335599385423170.Spec : Prop :=
  ∀ n, P18161335599385423170.a n = A236653 (n + 1)

end A236653

/-! ## A236653.P10497280229214986963

`A350667(A047244(n+1))`
-/

namespace A236653.P10497280229214986963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350667 (A047244 (n + 1)).toNat

end

end A236653.P10497280229214986963

namespace A236653

/-- `A350667(A047244(n+1))` -/
def P10497280229214986963.Spec : Prop :=
  ∀ n, P10497280229214986963.a n = A236653 (n + 1)

end A236653

/-! ## A236653.P14008850052416540792

`A047259(A047245(n+1))+A047258(n+1)`
-/

namespace A236653.P14008850052416540792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047259 (A047245 (n + 1)).toNat + A047258 (n + 1)

end

end A236653.P14008850052416540792

namespace A236653

/-- `A047259(A047245(n+1))+A047258(n+1)` -/
def P14008850052416540792.Spec : Prop :=
  ∀ n, P14008850052416540792.a n = A236653 (n + 1)

end A236653

/-! ## A236653.P10572914729666589780

`A029739(n+1)+xor(1, A029739(A029739(n+1)))`
-/

namespace A236653.P10572914729666589780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029739 (n + 1) + Int.xor 1 (A029739 (A029739 (n + 1)).toNat)

end

end A236653.P10572914729666589780

namespace A236653

/-- `A029739(n+1)+xor(1, A029739(A029739(n+1)))` -/
def P10572914729666589780.Spec : Prop :=
  ∀ n, P10572914729666589780.a n = A236653 (n + 1)

end A236653

/-! ## A236653.P7167948783807051659

`A054966(A047254(n+1))`
-/

namespace A236653.P7167948783807051659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054966 (A047254 (n + 1)).toNat

end

end A236653.P7167948783807051659

namespace A236653

/-- `A054966(A047254(n+1))` -/
def P7167948783807051659.Spec : Prop :=
  ∀ n, P7167948783807051659.a n = A236653 (n + 1)

end A236653

/-! ## A236653.P9895142108873642655

`A054966(A047236(n+1)+1)`
-/

namespace A236653.P9895142108873642655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054966 (A047236 (n + 1) + 1).toNat

end

end A236653.P9895142108873642655

namespace A236653

/-- `A054966(A047236(n+1)+1)` -/
def P9895142108873642655.Spec : Prop :=
  ∀ n, P9895142108873642655.a n = A236653 (n + 1)

end A236653

/-! ## A236653.P14307800846018433019

`A056020(A004523(2*n)+1)`
-/

namespace A236653.P14307800846018433019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056020 (A004523 (2 * n) + 1).toNat

end

end A236653.P14307800846018433019

namespace A236653

/-- `A056020(A004523(2*n)+1)` -/
def P14307800846018433019.Spec : Prop :=
  ∀ n, P14307800846018433019.a n = A236653 (n + 1)

end A236653

/-! ## A236653.P10315058218588408843

`A054966(A092200(2*n+1)-1)`
-/

namespace A236653.P10315058218588408843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054966 (A092200 (2 * n + 1) - 1).toNat

end

end A236653.P10315058218588408843

namespace A236653

/-- `A054966(A092200(2*n+1)-1)` -/
def P10315058218588408843.Spec : Prop :=
  ∀ n, P10315058218588408843.a n = A236653 (n + 1)

end A236653

/-!
# A236654: Number of (n+1)X(1+1) 0..3 arrays colored with the sum of the upper and lower median values of each 2X2 subblock.

The programs for A236654, there is no canonical definition to state claims against.
-/

/-! ## A236654.P5831050634316765666

`A236657(∑[n]+1)`
-/

namespace A236654.P5831050634316765666
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236657 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A236654.P5831050634316765666

/-! ## A236654.P17329658944896747018

`lcm(2, A236657(A000124(n)))`
-/

namespace A236654.P17329658944896747018
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A236657 (A000124 n).toNat)

end

end A236654.P17329658944896747018

/-! ## A236654.P14266858482596063614

`∑{digits}[n, A236657(A000124(#))]`
-/

namespace A236654.P14266858482596063614
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A236657 (A000124 x).toNat).sum

end

end A236654.P14266858482596063614

/-! ## A236654.P1981888752132202737

`record[A236657(A286235(n+1))]`
-/

namespace A236654.P1981888752132202737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236657 (A286235 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236654.P1981888752132202737

/-! ## A236654.P15163367962046980582

`record[A010054(n)*A236657(n+1)]`
-/

namespace A236654.P15163367962046980582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A236657 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236654.P15163367962046980582

/-!
# A236655: Number of (n+1)X(2+1) 0..3 arrays colored with the sum of the upper and lower median values of each 2X2 subblock.

The programs for A236655, there is no canonical definition to state claims against.
-/

/-! ## A236655.P12975959763288271084

`A236657(∑[n+1]+2)`
-/

namespace A236655.P12975959763288271084
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236657 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A236655.P12975959763288271084

/-! ## A236655.P16785938828376934833

`record[A236657(A286235(n+1)+1)]`
-/

namespace A236655.P16785938828376934833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236657 (A286235 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236655.P16785938828376934833

/-! ## A236655.P17776559838995884569

`record[A010054(n)*A236657(n+2)]`
-/

namespace A236655.P17776559838995884569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A236657 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236655.P17776559838995884569

/-!
# A236656: Number of (n+1) X (3+1) 0..3 arrays colored with the sum of the upper and lower median values of each 2 X 2 subblock.

The programs for A236656, there is no canonical definition to state claims against.
-/

/-! ## A236656.P16510991649066095370

`A236657(∑[n+2]+4)`
-/

namespace A236656.P16510991649066095370
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236657 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A236656.P16510991649066095370

/-! ## A236656.P12551971138798899261

`lcm(2, A236657(A167614(n+1)))`
-/

namespace A236656.P12551971138798899261
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A236657 (A167614 (n + 1)).toNat)

end

end A236656.P12551971138798899261

/-! ## A236656.P8119930505316962962

`A236657(A167614(n+1))+A009694(n)`
-/

namespace A236656.P8119930505316962962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236657 (A167614 (n + 1)).toNat + A009694 n

end

end A236656.P8119930505316962962

/-!
# A236658: Number of (n+1)X(1+1) 0..2 arrays colored with the maximum plus the upper median plus the lower median of every 2X2 subblock.

The programs for A236658, there is no canonical definition to state claims against.
-/

/-! ## A236658.P8544028734175721041

`A236663(∑[n]+1)`
-/

namespace A236658.P8544028734175721041
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236663 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A236658.P8544028734175721041

/-! ## A236658.P8433437417726338987

`record[A236663(A267104(n+1))]`
-/

namespace A236658.P8433437417726338987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236663 (A267104 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236658.P8433437417726338987

/-! ## A236658.P15027134575484401865

`record[A236663(A286245(n+1))]`
-/

namespace A236658.P15027134575484401865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236663 (A286245 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236658.P15027134575484401865

/-! ## A236658.P1237941229299062796

`lcm((-1)^n, A236663(A000124(n)))`
-/

namespace A236658.P1237941229299062796
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (A236663 (A000124 n).toNat)

end

end A236658.P1237941229299062796

/-! ## A236658.P1975165978657815961

`record[A010054(n)*A236663(n+1)]`
-/

namespace A236658.P1975165978657815961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A236663 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236658.P1975165978657815961

/-!
# A236659: Number of (n+1)X(2+1) 0..2 arrays colored with the maximum plus the upper median plus the lower median of every 2X2 subblock.

The programs for A236659, there is no canonical definition to state claims against.
-/

/-! ## A236659.P11262146248513944163

`A236663(∑[n+1]+2)`
-/

namespace A236659.P11262146248513944163
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236663 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A236659.P11262146248513944163

/-! ## A236659.P13674409386552987255

`record[A010054(n)*A236663(n+2)]`
-/

namespace A236659.P13674409386552987255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A236663 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236659.P13674409386552987255

/-! ## A236659.P14662427280868596433

`record[gcd(A002262(n), A236663(n+2))]`
-/

namespace A236659.P14662427280868596433
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A236663 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236659.P14662427280868596433

/-! ## A236659.P15888696582679047280

`A236663(A022856(n+5))*A298444(n+1)`
-/

namespace A236659.P15888696582679047280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236663 (A022856 (n + 5)).toNat * A298444 (n + 1)

end

end A236659.P15888696582679047280

/-! ## A236659.P10026907751127092831

`A236663(A152948(n+3))%A253996(n+1)`
-/

namespace A236659.P10026907751127092831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A236663 (A152948 (n + 3)).toNat) (A253996 (n + 1))

end

end A236659.P10026907751127092831

/-!
# A236660: Number of (n+1)X(3+1) 0..2 arrays colored with the maximum plus the upper median plus the lower median of every 2X2 subblock.

The programs for A236660, there is no canonical definition to state claims against.
-/

/-! ## A236660.P4357838572628120340

`A236663(∑[n+2]+4)`
-/

namespace A236660.P4357838572628120340
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236663 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A236660.P4357838572628120340

/-! ## A236660.P3784615721305298844

`A236663(A167614(n+1))+A011738(n)`
-/

namespace A236660.P3784615721305298844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236663 (A167614 (n + 1)).toNat + A011738 n

end

end A236660.P3784615721305298844

/-! ## A236660.P10975156580340720989

`A236663(A167614(n+1))+A014083(n)`
-/

namespace A236660.P10975156580340720989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236663 (A167614 (n + 1)).toNat + A014083 n

end

end A236660.P10975156580340720989

/-! ## A236660.P11733647909412120616

`A236663(A167614(n+1))+A025444(n)`
-/

namespace A236660.P11733647909412120616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236663 (A167614 (n + 1)).toNat + A025444 n

end

end A236660.P11733647909412120616

/-! ## A236660.P502119384431733339

`A236663(A167614(n+1))+A025469(n)`
-/

namespace A236660.P502119384431733339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236663 (A167614 (n + 1)).toNat + A025469 n

end

end A236660.P502119384431733339

/-!
# A236661: Number of (n+1)X(4+1) 0..2 arrays colored with the maximum plus the upper median plus the lower median of every 2X2 subblock.

The programs for A236661, there is no canonical definition to state claims against.
-/

/-! ## A236661.P1493900000911900872

`A236663(∑[n+3]+7)`
-/

namespace A236661.P1493900000911900872
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236663 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A236661.P1493900000911900872

/-! ## A236661.P14293323362797864074

`A236677(2*n+1)+A236663(A055999(n)+10)`
-/

namespace A236661.P14293323362797864074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236677 (2 * n + 1) + A236663 (A055999 n + 10).toNat

end

end A236661.P14293323362797864074

/-! ## A236661.P9832109386341986087

`A236663(A141214(n+1))-A072375(n+1)`
-/

namespace A236661.P9832109386341986087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236663 (A141214 (n + 1)).toNat - A072375 (n + 1)

end

end A236661.P9832109386341986087

/-!
# A236662: Number of (n+1)X(5+1) 0..2 arrays colored with the maximum plus the upper median plus the lower median of every 2X2 subblock.

The programs for A236662, there is no canonical definition to state claims against.
-/

/-! ## A236662.P5120920040130455867

`A236663(C(n+5, 2)+5)`
-/

namespace A236662.P5120920040130455867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236663 (Nat.choose (n + 5) 2 + 5)

end

end A236662.P5120920040130455867

/-! ## A236662.P10440397645663727691

`A236663(A374005(n+1))`
-/

namespace A236662.P10440397645663727691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236663 (A374005 (n + 1)).toNat

end

end A236662.P10440397645663727691

/-! ## A236662.P17202237521440246924

`A236663(A167499(n+3))`
-/

namespace A236662.P17202237521440246924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236663 (A167499 (n + 3)).toNat

end

end A236662.P17202237521440246924

/-!
# A236664: Number of (n+1) X (1+1) 0..2 arrays colored with the maximum plus the lower median minus the upper median minus the minimum of every 2 X 2 subblock.

The programs for A236664, there is no canonical definition to state claims against.
-/

/-! ## A236664.P3194415290757790159

`A236669(∑[n]+1)`
-/

namespace A236664.P3194415290757790159
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236669 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A236664.P3194415290757790159

/-! ## A236664.P3577523840456192743

`and(-1, A236669(A000124(n)))`
-/

namespace A236664.P3577523840456192743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A236669 (A000124 n).toNat)

end

end A236664.P3577523840456192743

/-! ## A236664.P4669519269192303088

`record[A236669(A114091(n+1))]`
-/

namespace A236664.P4669519269192303088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236669 (A114091 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236664.P4669519269192303088

/-! ## A236664.P2110782114807545355

`record[A010054(n)*A236669(n+1)]`
-/

namespace A236664.P2110782114807545355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A236669 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236664.P2110782114807545355

/-! ## A236664.P3008606455595485275

`record[A236669(n+1)/A013613(n)]`
-/

namespace A236664.P3008606455595485275
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A236669 (n + 1) : ℚ) / (A013613 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236664.P3008606455595485275

/-!
# A236665: Number of (n+1)X(2+1) 0..2 arrays colored with the maximum plus the lower median minus the upper median minus the minimum of every 2X2 subblock.

The programs for A236665, there is no canonical definition to state claims against.
-/

/-! ## A236665.P9676461731731316344

`A236669(∑[n+1]+2)`
-/

namespace A236665.P9676461731731316344
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236669 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A236665.P9676461731731316344

/-! ## A236665.P4870177160159142509

`record[A236669(A114091(n+1)+1)]`
-/

namespace A236665.P4870177160159142509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236669 (A114091 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236665.P4870177160159142509

/-! ## A236665.P9025145844930022934

`record[A010054(n)*A236669(n+2)]`
-/

namespace A236665.P9025145844930022934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A236669 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236665.P9025145844930022934

/-! ## A236665.P11245421520482865394

`record[A236669(n+2)/A013613(n)]`
-/

namespace A236665.P11245421520482865394
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A236669 (n + 2) : ℚ) / (A013613 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236665.P11245421520482865394

/-! ## A236665.P17612689484974158368

`record[A236669(n+2)/A013619(n)]`
-/

namespace A236665.P17612689484974158368
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A236669 (n + 2) : ℚ) / (A013619 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236665.P17612689484974158368

/-!
# A236666: Number of (n+1)X(3+1) 0..2 arrays colored with the maximum plus the lower median minus the upper median minus the minimum of every 2X2 subblock.

The programs for A236666, there is no canonical definition to state claims against.
-/

/-! ## A236666.P9584147626501787578

`A236669(∑[n+2]+4)`
-/

namespace A236666.P9584147626501787578
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236669 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A236666.P9584147626501787578

/-! ## A236666.P1531590456668487509

`lcm(2, A236669(A167614(n+1)))`
-/

namespace A236666.P1531590456668487509
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A236669 (A167614 (n + 1)).toNat)

end

end A236666.P1531590456668487509

/-! ## A236666.P5104911610846783421

`record[gcd(A236669(n+4), A357368(n+1))]`
-/

namespace A236666.P5104911610846783421
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A236669 (n + 4)) (A357368 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236666.P5104911610846783421

/-! ## A236666.P3855809742295307746

`A236669(A167614(n+1))+A185044(n)`
-/

namespace A236666.P3855809742295307746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236669 (A167614 (n + 1)).toNat + A185044 n

end

end A236666.P3855809742295307746

/-! ## A236666.P11537885749802502724

`A326686(n)+A236669(A167614(n+1))`
-/

namespace A236666.P11537885749802502724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326686 n + A236669 (A167614 (n + 1)).toNat

end

end A236666.P11537885749802502724

/-!
# A236667: Number of (n+1)X(4+1) 0..2 arrays colored with the maximum plus the lower median minus the upper median minus the minimum of every 2X2 subblock.

The programs for A236667, there is no canonical definition to state claims against.
-/

/-! ## A236667.P942497874335139489

`A236669(A374004(n+1))`
-/

namespace A236667.P942497874335139489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236669 (A374004 (n + 1)).toNat

end

end A236667.P942497874335139489

/-! ## A236667.P5310976122148026193

`A236669(A141214(n)+7)`
-/

namespace A236667.P5310976122148026193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236669 (A141214 n + 7).toNat

end

end A236667.P5310976122148026193

/-! ## A236667.P2658350232479293249

`A236669(A052905(n)+9)`
-/

namespace A236667.P2658350232479293249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236669 (A052905 n + 9).toNat

end

end A236667.P2658350232479293249

/-! ## A236667.P16894252675802902524

`A236669(A055999(n)+10)`
-/

namespace A236667.P16894252675802902524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236669 (A055999 n + 10).toNat

end

end A236667.P16894252675802902524

/-! ## A236667.P342288531119129759

`A236669(eq[5, A066657(n)])`
-/

namespace A236667.P342288531119129759
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236669 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A236667.P342288531119129759

/-!
# A236668: Number of (n+1)X(5+1) 0..2 arrays colored with the maximum plus the lower median minus the upper median minus the minimum of every 2X2 subblock.

The programs for A236668, there is no canonical definition to state claims against.
-/

/-! ## A236668.P1653493348363286185

`A236669(∑[n+4]+11)`
-/

namespace A236668.P1653493348363286185
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236669 (∑ j ∈ Finset.range (n + 1), f1 j + 11)

end

end A236668.P1653493348363286185

/-! ## A236668.P14980396008756590246

`A236669(A167499(n+3))+A000007(3*(n+1))`
-/

namespace A236668.P14980396008756590246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236669 (A167499 (n + 3)).toNat + A000007 (3 * (n + 1))

end

end A236668.P14980396008756590246

/-!
# A236670: Start with 6; thereafter, primes obtained by concatenating to the end of previous term the next smallest number that will produce a prime.

The programs for A236670, there is no canonical definition to state claims against.
-/

/-! ## A236670.P13952667407321948834

`A030665(a(n-1))` with `a(0)=6`
-/

namespace A236670.P13952667407321948834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [6] fun n a =>
  A030665 (a (n - 1)).toNat

end

end A236670.P13952667407321948834

/-!
# A236673: Exponents of powers of 3 that contain all ten decimal digits.

The programs for A236673, there is no canonical definition to state claims against.
-/

/-! ## A236673.P4035159654314942078

`comp[A236674(n+1)]`
-/

namespace A236673.P4035159654314942078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236674 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A236673.P4035159654314942078

/-!
# A236674: Exponents of powers of 3 that do not contain all ten decimal digits.

The programs for A236674, there is no canonical definition to state claims against.
-/

/-! ## A236674.P6367943136493341511

`comp[A236673(A271778(n))]`
-/

namespace A236674.P6367943136493341511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236673 (A271778 n).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A236674.P6367943136493341511

/-! ## A236674.P6611760245755139464

`comp[A236673(A003051(n+1))]`
-/

namespace A236674.P6611760245755139464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236673 (A003051 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A236674.P6611760245755139464

/-! ## A236674.P3458329875242078335

`comp[A236673(A033676(n+1))]`
-/

namespace A236674.P3458329875242078335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236673 (A033676 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A236674.P3458329875242078335

/-! ## A236674.P14183887243188115824

`comp[A236673(A048673(n+1))]`
-/

namespace A236674.P14183887243188115824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236673 (A048673 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A236674.P14183887243188115824

/-! ## A236674.P15411388686900597531

`comp[A236673(A061898(n+1))]`
-/

namespace A236674.P15411388686900597531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236673 (A061898 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A236674.P15411388686900597531

/-! ## A236674.P9096586201181326165

`comp[A236673(A114104(n+1))]`
-/

namespace A236674.P9096586201181326165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236673 (A114104 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A236674.P9096586201181326165

/-! ## A236674.P15599399339160842362

`comp[A236673(A250243(n+1))]`
-/

namespace A236674.P15599399339160842362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236673 (A250243 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A236674.P15599399339160842362

/-! ## A236674.P4565578264129226838

`comp[A236673(A300752(n+1))]`
-/

namespace A236674.P4565578264129226838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236673 (A300752 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A236674.P4565578264129226838

/-! ## A236674.P1551407888745072598

`comp[A236673(A089850(n+1))]`
-/

namespace A236674.P1551407888745072598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236673 (A089850 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A236674.P1551407888745072598

/-!
# A236675: If n is prime, then a(n) is the least composite number not occurring earlier, else a(n) is the least prime not occurring earlier.

The programs for A236675, there is no canonical definition to state claims against.
-/

/-! ## A236675.P7148914391425783652

`A026234(A096457(n+1))`
-/

namespace A236675.P7148914391425783652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026234 (A096457 (n + 1)).toNat

end

end A236675.P7148914391425783652

/-! ## A236675.P1005657871803779608

`A067747(A073898(n+1))`
-/

namespace A236675.P1005657871803779608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067747 (A073898 (n + 1)).toNat

end

end A236675.P1005657871803779608

/-! ## A236675.P12634837597847262305

`A073846(A073898(n+1)+1)`
-/

namespace A236675.P12634837597847262305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073846 (A073898 (n + 1) + 1).toNat

end

end A236675.P12634837597847262305

/-! ## A236675.P12529141980975289583

`A067747(xor(A057427(n), A073897(n+1)))`
-/

namespace A236675.P12529141980975289583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067747 (Int.xor (A057427 n) (A073897 (n + 1))).toNat

end

end A236675.P12529141980975289583

/-! ## A236675.P15250341946297136939

`A067747(xor(A073897(n+1), A178334(n)))`
-/

namespace A236675.P15250341946297136939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067747 (Int.xor (A073897 (n + 1)) (A178334 n)).toNat

end

end A236675.P15250341946297136939

/-! ## A236675.P2360597510452823527

`A067747(A066136(n+1)+A026233(n+1))`
-/

namespace A236675.P2360597510452823527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067747 (A066136 (n + 1) + A026233 (n + 1)).toNat

end

end A236675.P2360597510452823527

/-! ## A236675.P16863707780714538536

`A073846(A010051(n+1)+2*A026233(n+1))`
-/

namespace A236675.P16863707780714538536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073846 (A010051 (n + 1) + 2 * A026233 (n + 1)).toNat

end

end A236675.P16863707780714538536

/-! ## A236675.P9440811889731579126

`A067747(xor(and(1, A000040(n+1)), A073897(n+1)))`
-/

namespace A236675.P9440811889731579126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067747 (Int.xor (Int.land 1 (A000040 (n + 1))) (A073897 (n + 1))).toNat

end

end A236675.P9440811889731579126

/-! ## A236675.P6560794829995312302

`A067747(xor(1, A073897(n+1))-A000032(floor(1/(n+1)))+2)`
-/

namespace A236675.P6560794829995312302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067747 (Int.xor 1 (A073897 (n + 1)) - A000032 ⌊1 / (n + 1 : ℚ)⌋.toNat + 2).toNat

end

end A236675.P6560794829995312302

/-! ## A236675.P10355356424945505112

`A067747(A073897(A073846(A073897(n+1))))`
-/

namespace A236675.P10355356424945505112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067747 (A073897 (A073846 (A073897 (n + 1)).toNat).toNat).toNat

end

end A236675.P10355356424945505112

/-!
# A236676: The n-th term is the n-th composite if n is prime, and the n-th prime if n is not prime.

The programs for A236676, the canonical program `A236676.P1389962155202570512` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A236676 has offset 1).

The definition of A236676 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A236676.P16743311161560793063

`A067747(A014683(n+1)+n)`
-/

namespace A236676.P16743311161560793063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067747 (A014683 (n + 1) + (n : ℤ)).toNat

end

end A236676.P16743311161560793063

namespace A236676

/-- `A067747(A014683(n+1)+n)` -/
def P16743311161560793063.Spec : Prop :=
  ∀ n, P16743311161560793063.a n = A236676 (n + 1)

end A236676

/-! ## A236676.P13786019751788646595

`A067747(A010051(n+1)+2*n+1)`
-/

namespace A236676.P13786019751788646595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067747 (A010051 (n + 1) + (2 * n + 1 : ℤ)).toNat

end

end A236676.P13786019751788646595

namespace A236676

/-- `A067747(A010051(n+1)+2*n+1)` -/
def P13786019751788646595.Spec : Prop :=
  ∀ n, P13786019751788646595.a n = A236676 (n + 1)

end A236676

/-! ## A236676.P555280113980965881

`A073846(2*(n+1)+A010051(n+1))`
-/

namespace A236676.P555280113980965881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073846 ((2 * (n + 1) : ℤ) + A010051 (n + 1)).toNat

end

end A236676.P555280113980965881

namespace A236676

/-- `A073846(2*(n+1)+A010051(n+1))` -/
def P555280113980965881.Spec : Prop :=
  ∀ n, P555280113980965881.a n = A236676 (n + 1)

end A236676

/-! ## A236676.P1389962155202570512

`A073846(A103517(n)+A080339(n+1))`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A236676

/-- `A073846(A103517(n)+A080339(n+1))` -/
def P1389962155202570512.Spec : Prop :=
  ∀ n, P1389962155202570512.a n = A236676 (n + 1)

theorem P1389962155202570512.correct : P1389962155202570512.Spec := by
  intro n
  simp only [A236676, Nat.add_sub_cancel]

end A236676

/-! ## A236676.P13680160850729787244

`A073846(A014683(n+1)-A001478(n+1))`
-/

namespace A236676.P13680160850729787244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073846 (A014683 (n + 1) - A001478 (n + 1)).toNat

end

end A236676.P13680160850729787244

namespace A236676

/-- `A073846(A014683(n+1)-A001478(n+1))` -/
def P13680160850729787244.Spec : Prop :=
  ∀ n, P13680160850729787244.a n = A236676 (n + 1)

end A236676

/-! ## A236676.P16669013624771659707

`floor(A088608(n+1)+acot(n))`
-/

namespace A236676.P16669013624771659707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A088608 (n + 1) : ℝ) + SequenceMachineLib.acot (n : ℝ)⌋

end

end A236676.P16669013624771659707

namespace A236676

/-- `floor(A088608(n+1)+acot(n))` -/
def P16669013624771659707.Spec : Prop :=
  ∀ n, P16669013624771659707.a n = A236676 (n + 1)

end A236676

/-! ## A236676.P3946805903966752870

`A088608(n%a(n-1)+1)` with `a(0)=2`
-/

namespace A236676.P3946805903966752870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A088608 (Int.tmod (n : ℤ) (a (n - 1)) + 1).toNat

end

end A236676.P3946805903966752870

namespace A236676

/-- `A088608(n%a(n-1)+1)` -/
def P3946805903966752870.Spec : Prop :=
  ∀ n, P3946805903966752870.a n = A236676 (n + 1)

end A236676

/-! ## A236676.P10237613637704501693

`A088608(n-C(n, a(n-1))+1)` with `a(0)=2`
-/

namespace A236676.P10237613637704501693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A088608 ((n : ℤ) - (Nat.choose n (a (n - 1)).toNat : ℤ) + 1).toNat

end

end A236676.P10237613637704501693

namespace A236676

/-- `A088608(n-C(n, a(n-1))+1)` -/
def P10237613637704501693.Spec : Prop :=
  ∀ n, P10237613637704501693.a n = A236676 (n + 1)

end A236676

/-! ## A236676.P7842001234592214260

`A181440(A088608(n+1))`
-/

namespace A236676.P7842001234592214260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181440 (A088608 (n + 1)).toNat

end

end A236676.P7842001234592214260

namespace A236676

/-- `A181440(A088608(n+1))` -/
def P7842001234592214260.Spec : Prop :=
  ∀ n, P7842001234592214260.a n = A236676 (n + 1)

end A236676

/-! ## A236676.P3867644099254539643

`A088608(n+1)+A000007(n)`
-/

namespace A236676.P3867644099254539643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088608 (n + 1) + A000007 n

end

end A236676.P3867644099254539643

namespace A236676

/-- `A088608(n+1)+A000007(n)` -/
def P3867644099254539643.Spec : Prop :=
  ∀ n, P3867644099254539643.a n = A236676 (n + 1)

end A236676

/-!
# A236677: a(0)=1; for n>0, a(n) = (1-a(floor(log_2(n)))) * a(n-msb(n)); characteristic function of A079599.

The programs for A236677, there is no canonical definition to state claims against.
-/

/-! ## A236677.P1641380096560791010

`char[A079599(n)]`
-/

namespace A236677.P1641380096560791010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079599 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A236677.P1641380096560791010

/-!
# A236678: Partial sums of the characteristic function of A079599.

The programs for A236678, there is no canonical definition to state claims against.
-/

/-! ## A236678.P11070967660282356039

`a(n-1)+A236677(n)` with `a(0)=1`
-/

namespace A236678.P11070967660282356039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + A236677 n

end

end A236678.P11070967660282356039

/-! ## A236678.P14012946431134788402

`∑[A236677(n)]`
-/

namespace A236678.P14012946431134788402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236677 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A236678.P14012946431134788402

/-! ## A236678.P15368699336580528380

`∑[char[A079599(n)]]`
-/

namespace A236678.P15368699336580528380
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079599 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A236678.P15368699336580528380

/-! ## A236678.P2137754030355977961

`∑[1-A115971(n)]`
-/

namespace A236678.P2137754030355977961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A115971 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A236678.P2137754030355977961

/-! ## A236678.P5112486861531529309

`∑[A320006(A001196(n))]`
-/

namespace A236678.P5112486861531529309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320006 (A001196 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A236678.P5112486861531529309

/-! ## A236678.P821640755986462019

`∑[A320006(A106485(n))]`
-/

namespace A236678.P821640755986462019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320006 (A106485 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A236678.P821640755986462019

/-! ## A236678.P2231938031560692719

`∑[((n+1)*A000217(∑[n+1]))%2]`
-/

namespace A236678.P2231938031560692719
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n + 1 : ℤ) * A000217 (∑ j ∈ Finset.range (n + 1), f2 j)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A236678.P2231938031560692719

/-! ## A236678.P7227867981032935989

`∑[and(1, (n+1)*A000217(A000217(n+1)))]`
-/

namespace A236678.P7227867981032935989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 ((n + 1 : ℤ) * A000217 (A000217 (n + 1)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A236678.P7227867981032935989

/-! ## A236678.P14844082188160421458

`∑[∑[A000217(∑[n+2])]%2]`
-/

namespace A236678.P14844082188160421458
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (∑ j ∈ Finset.range (n + 1), f3 j)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f2 j) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A236678.P14844082188160421458

/-! ## A236678.P7923915020058334609

`∑[((∑[∑[n+1]]%4)^n)%3]`
-/

namespace A236678.P7923915020058334609
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j) % 4) ^ n % 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A236678.P7923915020058334609

/-! ## A236678.P8431728598631683403

`A084359(A039823(n+2))`
-/

namespace A236678.P8431728598631683403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084359 (A039823 (n + 2)).toNat

end

end A236678.P8431728598631683403

/-! ## A236678.P7701978932642166985

`A008726(n)-A002265(A008726(2*n+1))`
-/

namespace A236678.P7701978932642166985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008726 n - A002265 (A008726 (2 * n + 1)).toNat

end

end A236678.P7701978932642166985

/-! ## A236678.P8661931432150723705

`A002264(A096604(n+1-A057361(n+1)))`
-/

namespace A236678.P8661931432150723705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A096604 ((n + 1 : ℤ) - A057361 (n + 1)).toNat).toNat

end

end A236678.P8661931432150723705

/-! ## A236678.P10104741818458440125

`∑[A021913(∑[A003188(n+3)])]`
-/

namespace A236678.P10104741818458440125
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003188 (n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021913 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A236678.P10104741818458440125

/-! ## A236678.P5951422776904917109

`∑[A014577((1-n)²+2)]`
-/

namespace A236678.P5951422776904917109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014577 ((1 - (n : ℤ)) ^ 2 + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A236678.P5951422776904917109

/-!
# A236680: Dimension of the space of spinors in n-dimensional real space.

The programs for A236680, the canonical program `A236680.P16756904524249009442` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A236680 has offset 1).

The definition of A236680 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A236680.P16756904524249009442

`16*a(n-8)` with `a(0)=1, a(1)=2, a(2)=4, a(3)=4, a(4)=4, a(5)=4, a(6)=8, a(7)=8`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A236680

/-- `16*a(n-8)` -/
def P16756904524249009442.Spec : Prop :=
  ∀ n, (P16756904524249009442.a n : ℤ) = A236680 (n + 1)

theorem P16756904524249009442.correct : P16756904524249009442.Spec := by
  intro n
  simp only [A236680, Nat.add_sub_cancel]

end A236680

/-! ## A236680.P11183283971057154563

`2^(∑[ceil(sin((n+1)%8))]-1)`
-/

namespace A236680.P11183283971057154563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sin (((n + 1) % 8 : ℕ) : ℝ)⌉

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (∑ j ∈ Finset.range (n + 1), f1 j - 1 : ℤ)

end

end A236680.P11183283971057154563

namespace A236680

/-- `2^(∑[ceil(sin((n+1)%8))]-1)` -/
def P11183283971057154563.Spec : Prop :=
  ∀ n, P11183283971057154563.a n = (A236680 (n + 1) : ℚ)

end A236680

/-! ## A236680.P3455349806878665542

`2^A236916(n)`
-/

namespace A236680.P3455349806878665542
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A236916 n : ℤ)

end

end A236680.P3455349806878665542

namespace A236680

/-- `2^A236916(n)` -/
def P3455349806878665542.Spec : Prop :=
  ∀ n, P3455349806878665542.a n = (A236680 (n + 1) : ℚ)

end A236680

/-! ## A236680.P3254989782100951555

`2^ceil((A046978(n)+n)/2)`
-/

namespace A236680.P3254989782100951555
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (⌈(A046978 n + (n : ℤ) : ℚ) / 2⌉ : ℤ)

end

end A236680.P3254989782100951555

namespace A236680

/-- `2^ceil((A046978(n)+n)/2)` -/
def P3254989782100951555.Spec : Prop :=
  ∀ n, P3254989782100951555.a n = (A236680 (n + 1) : ℚ)

end A236680

/-! ## A236680.P8454369102981619899

`2^(n+1-A034586(n+2))`
-/

namespace A236680.P8454369102981619899
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n + 1 : ℤ) - A034586 (n + 2) : ℤ)

end

end A236680.P8454369102981619899

namespace A236680

/-- `2^(n+1-A034586(n+2))` -/
def P8454369102981619899.Spec : Prop :=
  ∀ n, P8454369102981619899.a n = (A236680 (n + 1) : ℚ)

end A236680

/-! ## A236680.P3418371508385126413

`A000079(A236916(n))`
-/

namespace A236680.P3418371508385126413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A236916 n).toNat

end

end A236680.P3418371508385126413

namespace A236680

/-- `A000079(A236916(n))` -/
def P3418371508385126413.Spec : Prop :=
  ∀ n, P3418371508385126413.a n = A236680 (n + 1)

end A236680

/-! ## A236680.P17967770615242974847

`A011782(A236916(n)+1)`
-/

namespace A236680.P17967770615242974847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A236916 n + 1).toNat

end

end A236680.P17967770615242974847

namespace A236680

/-- `A011782(A236916(n)+1)` -/
def P17967770615242974847.Spec : Prop :=
  ∀ n, P17967770615242974847.a n = A236680 (n + 1)

end A236680

/-! ## A236680.P18440289591222301737

`A060546(A046978(n)+n)`
-/

namespace A236680.P18440289591222301737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060546 (A046978 n + (n : ℤ)).toNat

end

end A236680.P18440289591222301737

namespace A236680

/-- `A060546(A046978(n)+n)` -/
def P18440289591222301737.Spec : Prop :=
  ∀ n, P18440289591222301737.a n = A236680 (n + 1)

end A236680

/-! ## A236680.P60812975072250790

`A016116(A046978(n)+1+n)`
-/

namespace A236680.P60812975072250790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 (A046978 n + 1 + (n : ℤ)).toNat

end

end A236680.P60812975072250790

namespace A236680

/-- `A016116(A046978(n)+1+n)` -/
def P60812975072250790.Spec : Prop :=
  ∀ n, P60812975072250790.a n = A236680 (n + 1)

end A236680

/-! ## A236680.P3124137719688025318

`A131572(A046978(n)+1+n)`
-/

namespace A236680.P3124137719688025318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131572 (A046978 n + 1 + (n : ℤ)).toNat

end

end A236680.P3124137719688025318

namespace A236680

/-- `A131572(A046978(n)+1+n)` -/
def P3124137719688025318.Spec : Prop :=
  ∀ n, P3124137719688025318.a n = A236680 (n + 1)

end A236680

/-! ## A236680.P11825250640821869749

`A158780(A046978(n)+3+n)`
-/

namespace A236680.P11825250640821869749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158780 (A046978 n + 3 + (n : ℤ)).toNat

end

end A236680.P11825250640821869749

namespace A236680

/-- `A158780(A046978(n)+3+n)` -/
def P11825250640821869749.Spec : Prop :=
  ∀ n, P11825250640821869749.a n = A236680 (n + 1)

end A236680

/-! ## A236680.P9440410280897012219

`A016116(A046978(n)-xor(n, -1))`
-/

namespace A236680.P9440410280897012219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 (A046978 n - Int.xor (n : ℤ) (-1)).toNat

end

end A236680.P9440410280897012219

namespace A236680

/-- `A016116(A046978(n)-xor(n, -1))` -/
def P9440410280897012219.Spec : Prop :=
  ∀ n, P9440410280897012219.a n = A236680 (n + 1)

end A236680

/-! ## A236680.P3539160597620224067

`2^(n+1)/A034585(n+2)`
-/

namespace A236680.P3539160597620224067
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 1) : ℚ) / (A034585 (n + 2) : ℚ)

end

end A236680.P3539160597620224067

namespace A236680

/-- `2^(n+1)/A034585(n+2)` -/
def P3539160597620224067.Spec : Prop :=
  ∀ n, P3539160597620224067.a n = (A236680 (n + 1) : ℚ)

end A236680

/-! ## A236680.P1767381299100032044

`A000079(n+1)/A000079(A034586(n+2))`
-/

namespace A236680.P1767381299100032044
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000079 (n + 1) : ℚ) / (A000079 (A034586 (n + 2)).toNat : ℚ)

end

end A236680.P1767381299100032044

namespace A236680

/-- `A000079(n+1)/A000079(A034586(n+2))` -/
def P1767381299100032044.Spec : Prop :=
  ∀ n, P1767381299100032044.a n = (A236680 (n + 1) : ℚ)

end A236680

/-! ## A236680.P7570788858627418713

`A130321(A000096(A236916(n))+2)`
-/

namespace A236680.P7570788858627418713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130321 (A000096 (A236916 n).toNat + 2).toNat

end

end A236680.P7570788858627418713

namespace A236680

/-- `A130321(A000096(A236916(n))+2)` -/
def P7570788858627418713.Spec : Prop :=
  ∀ n, P7570788858627418713.a n = A236680 (n + 1)

end A236680

/-! ## A236680.P4313053733453412883

`A130321(A000096(n)-A236916(n))`
-/

namespace A236680.P4313053733453412883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130321 (A000096 n - A236916 n).toNat

end

end A236680.P4313053733453412883

namespace A236680

/-- `A130321(A000096(n)-A236916(n))` -/
def P4313053733453412883.Spec : Prop :=
  ∀ n, P4313053733453412883.a n = A236680 (n + 1)

end A236680

/-!
# A236681: Positive integers a such that there exist integers b, c > 0 with 1/a + 1/b + 1/c = 1/2.

The programs for A236681, there is no canonical definition to state claims against.
-/

/-! ## A236681.P4586165244694149556

`A236686(n+2)`
-/

namespace A236681.P4586165244694149556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236686 (n + 2)

end

end A236681.P4586165244694149556

/-! ## A236681.P3799263733663977369

`A248502(n+2)+A225005(n+2)`
-/

namespace A236681.P3799263733663977369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248502 (n + 2) + A225005 (n + 2)

end

end A236681.P3799263733663977369

/-! ## A236681.P9177810963806962169

`A250039(n+2)+A225005(n+2)`
-/

namespace A236681.P9177810963806962169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250039 (n + 2) + A225005 (n + 2)

end

end A236681.P9177810963806962169

/-!
# A236686: Possible values for positive integers a,b,c,d such that 1/a + 1/b + 1/c + 1/d = 1.

The programs for A236686, there is no canonical definition to state claims against.
-/

/-! ## A236686.P1168248656613947174

`A236681(n%a(n-1))` with `a(0)=2`
-/

namespace A236686.P1168248656613947174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A236681 (Int.tmod (n : ℤ) (a (n - 1))).toNat

end

end A236686.P1168248656613947174

/-! ## A236686.P3732870890115749543

`∪[A236681(n+1), (n+2)!]`
-/

namespace A236686.P3732870890115749543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236681 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = x) n

end

end A236686.P3732870890115749543

/-! ## A236686.P6387042868658498205

`A254075(A289351(n+1)+1)`
-/

namespace A236686.P6387042868658498205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254075 (A289351 (n + 1) + 1).toNat

end

end A236686.P6387042868658498205

/-! ## A236686.P15006125859623930239

`∪[A236681(n+1), A067092(n)]`
-/

namespace A236686.P15006125859623930239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236681 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067092 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A236686.P15006125859623930239

/-! ## A236686.P12853687805391122869

`∪[A236681(n+1), A159328(n)]`
-/

namespace A236686.P12853687805391122869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236681 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159328 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A236686.P12853687805391122869

/-!
# A236687: Primes p such that prime(p^2) - 2 is also prime.

The programs for A236687, there is no canonical definition to state claims against.
-/

/-! ## A236687.P16742687041715793550

`A173135(A295734(n)+A173143(n+1))`
-/

namespace A236687.P16742687041715793550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173135 (A295734 n + A173143 (n + 1)).toNat

end

end A236687.P16742687041715793550

/-! ## A236687.P16964071314749366555

`A181580(A000700(2*(n+1))*A331784(n+1))`
-/

namespace A236687.P16964071314749366555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181580 (A000700 (2 * (n + 1)) * A331784 (n + 1)).toNat

end

end A236687.P16964071314749366555

/-!
# A236688: Primes p such that prime(p^2) + 2 is also prime.

The programs for A236688, there is no canonical definition to state claims against.
-/

/-! ## A236688.P4974424137174188346

`p?[A074328(n+1)]`
-/

namespace A236688.P4974424137174188346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A236688.P4974424137174188346

/-! ## A236688.P1000961967446129533

`∩[A106119(n+1), A074328(n+1)]`
-/

namespace A236688.P1000961967446129533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106119 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074328 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A236688.P1000961967446129533

/-! ## A236688.P3620935832166278491

`∩[A000040(n+1), A074328(n+1)]`
-/

namespace A236688.P3620935832166278491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074328 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A236688.P3620935832166278491

/-! ## A236688.P8987705360982780074

`∩[A004139(n+1), A074328(n+1)]`
-/

namespace A236688.P8987705360982780074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074328 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A236688.P8987705360982780074

/-! ## A236688.P7759852876352459320

`∩[A006005(n+1), A074328(n+1)]`
-/

namespace A236688.P7759852876352459320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074328 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A236688.P7759852876352459320

/-! ## A236688.P12815989155185362218

`∩[A008578(n+1), A074328(n+1)]`
-/

namespace A236688.P12815989155185362218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074328 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A236688.P12815989155185362218

/-! ## A236688.P15516835123769298519

`∩[A045319(n+1), A074328(n+1)]`
-/

namespace A236688.P15516835123769298519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074328 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A236688.P15516835123769298519

/-! ## A236688.P14192403435352344001

`∩[A045344(n+1), A074328(n+1)]`
-/

namespace A236688.P14192403435352344001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074328 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A236688.P14192403435352344001

/-! ## A236688.P57686878666407725

`∩[A046022(n+1), A074328(n+1)]`
-/

namespace A236688.P57686878666407725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074328 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A236688.P57686878666407725

/-! ## A236688.P11202816788619384144

`∩[A053813(n+1), A074328(n+1)]`
-/

namespace A236688.P11202816788619384144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053813 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074328 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A236688.P11202816788619384144

/-! ## A236688.P254170200560584791

`∩[A065091(n+1), A074328(n+1)]`
-/

namespace A236688.P254170200560584791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074328 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A236688.P254170200560584791

/-! ## A236688.P3180419749195882847

`∩[A065376(n+1), A074328(n+1)]`
-/

namespace A236688.P3180419749195882847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065376 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074328 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A236688.P3180419749195882847

/-! ## A236688.P14065023305506939799

`∩[A140475(n+1), A074328(n+1)]`
-/

namespace A236688.P14065023305506939799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140475 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074328 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A236688.P14065023305506939799

/-! ## A236688.P5407595704614724053

`∩[A074328(n+1), A075763(n+1)]`
-/

namespace A236688.P5407595704614724053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074328 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075763 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A236688.P5407595704614724053

/-! ## A236688.P13603599216179503851

`filter[A074328(n+1), A010051(#)]`
-/

namespace A236688.P13603599216179503851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A236688.P13603599216179503851

/-! ## A236688.P12719380193284195930

`p?[record[A074328(A052938(n))]]`
-/

namespace A236688.P12719380193284195930
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074328 (A052938 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A236688.P12719380193284195930

/-! ## A236688.P7473140873513610330

`p?[record[A074328(gcd(xor(1, n²), ∑[n]))]]`
-/

namespace A236688.P7473140873513610330
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074328 (Nat.gcd (Nat.xor 1 (n ^ 2)) (∑ j ∈ Finset.range (n + 1), f3 j))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A236688.P7473140873513610330

/-! ## A236688.P15187210127395671937

`filter[A074328(n+1), A323152(#)]`
-/

namespace A236688.P15187210127395671937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323152 (f1 j).toNat = 1) n)

end

end A236688.P15187210127395671937

/-! ## A236688.P747947226394216214

`filter[A074328(n+1), A323153(#)]`
-/

namespace A236688.P747947226394216214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323153 (f1 j).toNat = 1) n)

end

end A236688.P747947226394216214

/-!
# A236690: Number of simple directed paths on an n X n king graph.

The programs for A236690, there is no canonical definition to state claims against.
-/

/-! ## A236690.P12543331181988992879

`2*A288033(n+1)+(n+1)²`
-/

namespace A236690.P12543331181988992879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A288033 (n + 1) + ((n + 1) ^ 2 : ℤ)

end

end A236690.P12543331181988992879

/-!
# A236691: Number of totally symmetric solid partitions which fit in an n X n X n X n box.

The programs for A236691, there is no canonical definition to state claims against.
-/

/-! ## A236691.P13813448524083061790

`A343609((n+1)^(n+1))+1+n`
-/

namespace A236691.P13813448524083061790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343609 ((n + 1) ^ (n + 1)) + 1 + (n : ℤ)

end

end A236691.P13813448524083061790

/-!
# A236692: Numbers k such that k+1, 2*k+1 and k^2+1 are primes.

The programs for A236692, the canonical program `A236692.P11916548767269375173` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A236692 has offset 1).

The definition of A236692 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A236692.P11916548767269375173

`∩[A067720(n+1), A351875(n+1)]`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A236692

/-- `∩[A067720(n+1), A351875(n+1)]` -/
def P11916548767269375173.Spec : Prop :=
  ∀ n, (P11916548767269375173.a n : ℤ) = A236692 (n + 1)

theorem P11916548767269375173.correct : P11916548767269375173.Spec := by
  intro n
  simp only [A236692, Nat.add_sub_cancel]

end A236692

/-! ## A236692.P15099936724317338040

`∩[A070689(n+1), A351875(n+1)]`
-/

namespace A236692.P15099936724317338040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070689 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351875 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A236692.P15099936724317338040

namespace A236692

/-- `∩[A070689(n+1), A351875(n+1)]` -/
def P15099936724317338040.Spec : Prop :=
  ∀ n, (P15099936724317338040.a n : ℤ) = A236692 (n + 1)

end A236692

/-! ## A236692.P60366817791703115

`∩[A005574(n+1), A351875(n+1)]`
-/

namespace A236692.P60366817791703115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005574 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351875 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A236692.P60366817791703115

namespace A236692

/-- `∩[A005574(n+1), A351875(n+1)]` -/
def P60366817791703115.Spec : Prop :=
  ∀ n, (P60366817791703115.a n : ℤ) = A236692 (n + 1)

end A236692

/-! ## A236692.P9143860069680292443

`∩[A226381(n+1), A351875(n+1)]`
-/

namespace A236692.P9143860069680292443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226381 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351875 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A236692.P9143860069680292443

namespace A236692

/-- `∩[A226381(n+1), A351875(n+1)]` -/
def P9143860069680292443.Spec : Prop :=
  ∀ n, (P9143860069680292443.a n : ℤ) = A236692 (n + 1)

end A236692

/-! ## A236692.P4700572485449890544

`filter[A351875(n+1), A295405(#)]`
-/

namespace A236692.P4700572485449890544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351875 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A295405 (f1 j).toNat = 1) n)

end

end A236692.P4700572485449890544

namespace A236692

/-- `filter[A351875(n+1), A295405(#)]` -/
def P4700572485449890544.Spec : Prop :=
  ∀ n, P4700572485449890544.a n = A236692 (n + 1)

end A236692

/-! ## A236692.P14799162682680100741

`∩[A005097(n+1), A070689(n+1)]`
-/

namespace A236692.P14799162682680100741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005097 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070689 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A236692.P14799162682680100741

namespace A236692

/-- `∩[A005097(n+1), A070689(n+1)]` -/
def P14799162682680100741.Spec : Prop :=
  ∀ n, (P14799162682680100741.a n : ℤ) = A236692 (n + 1)

end A236692

/-! ## A236692.P10883212757182977689

`∩[A070689(n+1), A102781(n+1)]`
-/

namespace A236692.P10883212757182977689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070689 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102781 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A236692.P10883212757182977689

namespace A236692

/-- `∩[A070689(n+1), A102781(n+1)]` -/
def P10883212757182977689.Spec : Prop :=
  ∀ n, (P10883212757182977689.a n : ℤ) = A236692 (n + 1)

end A236692

/-! ## A236692.P17423421957652477390

`filter[A070689(n+1), A101264(#)]`
-/

namespace A236692.P17423421957652477390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070689 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A101264 (f1 j).toNat = 1) n)

end

end A236692.P17423421957652477390

namespace A236692

/-- `filter[A070689(n+1), A101264(#)]` -/
def P17423421957652477390.Spec : Prop :=
  ∀ n, P17423421957652477390.a n = A236692 (n + 1)

end A236692

/-! ## A236692.P3380663875184484952

`∩[A070689(n+1), A079111(n+1)]`
-/

namespace A236692.P3380663875184484952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070689 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079111 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A236692.P3380663875184484952

namespace A236692

/-- `∩[A070689(n+1), A079111(n+1)]` -/
def P3380663875184484952.Spec : Prop :=
  ∀ n, (P3380663875184484952.a n : ℤ) = A236692 (n + 1)

end A236692

/-!
# A236693: Numbers k such that 2^sigma(k) == 1 (mod k).

The programs for A236693, the canonical program `A236693.P4114692838688995240` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A236693 has offset 1).

The definition of A236693 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 106 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A236693.P4114692838688995240

`eq[A057427(n), A073816(n+1)]+1`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A236693

/-- `eq[A057427(n), A073816(n+1)]+1` -/
def P4114692838688995240.Spec : Prop :=
  ∀ n, (P4114692838688995240.a n : ℤ) = A236693 (n + 1)

theorem P4114692838688995240.correct : P4114692838688995240.Spec := by
  intro n
  simp only [A236693, Nat.add_sub_cancel]

end A236693

/-! ## A236693.P15225519658832764552

`A004442(eq[n, n*A073816(n+1)])`
-/

namespace A236693.P15225519658832764552
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A073816 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A236693.P15225519658832764552

namespace A236693

/-- `A004442(eq[n, n*A073816(n+1)])` -/
def P15225519658832764552.Spec : Prop :=
  ∀ n, P15225519658832764552.a n = A236693 (n + 1)

end A236693

/-! ## A236693.P18275145993721497467

`A141310(eq[n, n*A073816(n+1)])`
-/

namespace A236693.P18275145993721497467
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A073816 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141310 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A236693.P18275145993721497467

namespace A236693

/-- `A141310(eq[n, n*A073816(n+1)])` -/
def P18275145993721497467.Spec : Prop :=
  ∀ n, P18275145993721497467.a n = A236693 (n + 1)

end A236693

/-! ## A236693.P6717155472976426560

`A004442(eq[A057427(n), A073816(n+1)])`
-/

namespace A236693.P6717155472976426560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073816 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A236693.P6717155472976426560

namespace A236693

/-- `A004442(eq[A057427(n), A073816(n+1)])` -/
def P6717155472976426560.Spec : Prop :=
  ∀ n, P6717155472976426560.a n = A236693 (n + 1)

end A236693

/-! ## A236693.P2970918241827041859

`A141310(eq[A057427(n), A073816(n+1)])`
-/

namespace A236693.P2970918241827041859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073816 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141310 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A236693.P2970918241827041859

namespace A236693

/-- `A141310(eq[A057427(n), A073816(n+1)])` -/
def P2970918241827041859.Spec : Prop :=
  ∀ n, P2970918241827041859.a n = A236693 (n + 1)

end A236693

/-!
# A236694: Fibonacci numbers whose difference between the greatest prime divisor and the smallest prime divisor equals twice a positive Fibonacci number.

The programs for A236694, there is no canonical definition to state claims against.
-/

/-! ## A236694.P9813139954370300094

`A000045(2*A080327(n+1))`
-/

namespace A236694.P9813139954370300094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (2 * A080327 (n + 1)).toNat

end

end A236694.P9813139954370300094

/-! ## A236694.P10982686591080810759

`A053602(4*A080327(n+1))`
-/

namespace A236694.P10982686591080810759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053602 (4 * A080327 (n + 1)).toNat

end

end A236694.P10982686591080810759

/-! ## A236694.P3941212582236272400

`A103609(4*A080327(n+1))`
-/

namespace A236694.P3941212582236272400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103609 (4 * A080327 (n + 1)).toNat

end

end A236694.P3941212582236272400

/-!
# A236695: The n-th prime with n 0-bits in its binary expansion.

The programs for A236695, there is no canonical definition to state claims against.
-/

/-! ## A236695.P6935557541706262325

`A265759(A026390(n)*A361566(n+1))`
-/

namespace A236695.P6935557541706262325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265759 (A026390 n * A361566 (n + 1)).toNat

end

end A236695.P6935557541706262325

/-!
# A236696: Number of forests on n vertices consisting of labeled rooted trees of the same size.

The programs for A236696, there is no canonical definition to state claims against.
-/

/-! ## A236696.P15082906831925430716

`or(∑{d}[n+1, #^n], A211992(∏[n+7]/7))`
-/

namespace A236696.P15082906831925430716
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((∑ d ∈ Nat.divisors (f1 n), d ^ n : ℕ) : ℤ) (A211992 (SequenceMachineLib.roundAway (((∏ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℚ) / 7)).toNat)

end

end A236696.P15082906831925430716

/-!
# A236697: First differences of A131741.

The programs for A236697, there is no canonical definition to state claims against.
-/

/-! ## A236697.P13470648370817977008

`A131741(n+2)-A131741(n+1)`
-/

namespace A236697.P13470648370817977008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131741 (n + 2) - A131741 (n + 1)

end

end A236697.P13470648370817977008

/-! ## A236697.P881072347431252132

`Δ[A131741(n+1)]`
-/

namespace A236697.P881072347431252132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131741 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A236697.P881072347431252132

/-! ## A236697.P17211445474668887676

`Δ[record[A131741(A133310(n))]]`
-/

namespace A236697.P17211445474668887676
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131741 (A133310 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A236697.P17211445474668887676

/-! ## A236697.P16352198844649997078

`Δ[record[A131741(A152271(n))]]`
-/

namespace A236697.P16352198844649997078
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131741 (A152271 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A236697.P16352198844649997078

/-! ## A236697.P8698087835303148538

`Δ[record[A131741(A020986(n))]]`
-/

namespace A236697.P8698087835303148538
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131741 (A020986 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A236697.P8698087835303148538

/-! ## A236697.P6447599597489746536

`Δ[record[A131741(A193738(n))]]`
-/

namespace A236697.P6447599597489746536
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131741 (A193738 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A236697.P6447599597489746536

/-!
# A236698: Number of (n+1)X(1+1) 0..2 arrays colored with the maximum plus the lower median minus the upper median of every 2X2 subblock.

The programs for A236698, there is no canonical definition to state claims against.
-/

/-! ## A236698.P4167033411601862749

`A236704(∑[n]+1)`
-/

namespace A236698.P4167033411601862749
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236704 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A236698.P4167033411601862749

/-! ## A236698.P7686122823177636302

`record[A236704(A114091(n+1))]`
-/

namespace A236698.P7686122823177636302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236704 (A114091 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236698.P7686122823177636302

/-! ## A236698.P4918985537507360840

`record[A236704(A276944(n+1))]`
-/

namespace A236698.P4918985537507360840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236704 (A276944 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236698.P4918985537507360840

/-! ## A236698.P13695690889120593300

`record[A236704(A000124(∑{digits}[n, #]))]`
-/

namespace A236698.P13695690889120593300
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236704 (A000124 ((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => x).sum).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236698.P13695690889120593300

/-! ## A236698.P5668332527887304343

`lcm((-1)^n, A236704(A000124(n)))`
-/

namespace A236698.P5668332527887304343
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (A236704 (A000124 n).toNat)

end

end A236698.P5668332527887304343

/-!
# A236699: Number of (n+1)X(2+1) 0..2 arrays colored with the maximum plus the lower median minus the upper median of every 2X2 subblock.

The programs for A236699, there is no canonical definition to state claims against.
-/

/-! ## A236699.P7031388770635952227

`A236704(∑[n+1]+2)`
-/

namespace A236699.P7031388770635952227
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236704 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A236699.P7031388770635952227

/-! ## A236699.P6811814743756668204

`record[A236704(A114091(n+1)+1)]`
-/

namespace A236699.P6811814743756668204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236704 (A114091 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236699.P6811814743756668204

/-! ## A236699.P3195551259319564212

`record[A010054(n)*A236704(n+2)]`
-/

namespace A236699.P3195551259319564212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A236704 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236699.P3195551259319564212

/-! ## A236699.P15885476213241667762

`record[gcd(A002262(n), A236704(n+2))]`
-/

namespace A236699.P15885476213241667762
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A236704 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236699.P15885476213241667762

/-! ## A236699.P12146315642252999819

`record[A129686(n+1)*A236704(n+3)]`
-/

namespace A236699.P12146315642252999819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129686 (n + 1) * A236704 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236699.P12146315642252999819

