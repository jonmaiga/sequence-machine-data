import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C032
import Seq.B000.C035
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C004
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B006.C002
import Seq.B007.C000
import Seq.B008.C000
import Seq.B010.C000
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
import Seq.Opaque.C024

/-!
# A032403: Numbers k such that 107*2^k+1 is prime.

The programs for A032403, there is no canonical definition to state claims against.
-/

/-! ## A032403.P16490291203013368937

`or(3, A052273(A104670(n)))`
-/

namespace A032403.P16490291203013368937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 3 (A052273 (A104670 n).toNat)

end

end A032403.P16490291203013368937

/-!
# A032404: Numbers k such that 109*2^k+1 is prime.

The programs for A032404, there is no canonical definition to state claims against.
-/

/-! ## A032404.P6783118038574364625

`A033805(A033832(n+3)+2)`
-/

namespace A032404.P6783118038574364625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033805 (A033832 (n + 3) + 2).toNat

end

end A032404.P6783118038574364625

/-!
# A032406: Numbers k such that 113*2^k+1 is prime.

The programs for A032406, there is no canonical definition to state claims against.
-/

/-! ## A032406.P13912041069301316714

`∑[record[A007739(A292989(n+1))]]`
-/

namespace A032406.P13912041069301316714
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007739 (A292989 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A032406.P13912041069301316714

/-!
# A032407: Numbers k such that 115*2^k+1 is prime.

The programs for A032407, there is no canonical definition to state claims against.
-/

/-! ## A032407.P6152650008910041767

`A137311(A029505(n+1))`
-/

namespace A032407.P6152650008910041767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137311 (A029505 (n + 1)).toNat

end

end A032407.P6152650008910041767

/-! ## A032407.P6328561872674629288

`∑[A117660(A268370(n+4))]`
-/

namespace A032407.P6328561872674629288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117660 (A268370 (n + 4)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A032407.P6328561872674629288

/-!
# A032413: Numbers k such that 127*2^k+1 is prime.

The programs for A032413, there is no canonical definition to state claims against.
-/

/-! ## A032413.P3772405357156329075

`lt[A175306(n+3), A014963(A246201(n+1))]`
-/

namespace A032413.P3772405357156329075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175306 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A246201 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A032413.P3772405357156329075

/-!
# A032416: Numbers k such that 133*2^k+1 is prime.

The programs for A032416, there is no canonical definition to state claims against.
-/

/-! ## A032416.P8813301769486081079

`A361853(A001970(n))+A100484(n+1)`
-/

namespace A032416.P8813301769486081079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361853 (A001970 n).toNat + A100484 (n + 1)

end

end A032416.P8813301769486081079

/-! ## A032416.P8824886825055856165

`∩[A200570(n+1), A280706(n+1)]`
-/

namespace A032416.P8824886825055856165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200570 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280706 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A032416.P8824886825055856165

/-!
# A032417: Numbers k such that 135*2^k+1 is prime.

The programs for A032417, there is no canonical definition to state claims against.
-/

/-! ## A032417.P7995031200783698755

`xor(A171865(n+1), A331195(A038990(n)))`
-/

namespace A032417.P7995031200783698755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A171865 (n + 1)) (A331195 (A038990 n).toNat)

end

end A032417.P7995031200783698755

/-!
# A032420: Numbers k such that 141*2^k+1 is prime.

The programs for A032420, there is no canonical definition to state claims against.
-/

/-! ## A032420.P17020073148643736585

`record[A080098(Δ[A212008(n)])]`
-/

namespace A032420.P17020073148643736585
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212008 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080098 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A032420.P17020073148643736585

/-! ## A032420.P3280936820734120078

`record[A080098(Δ[A220500(n)])]`
-/

namespace A032420.P3280936820734120078
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220500 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080098 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A032420.P3280936820734120078

/-! ## A032420.P6429658346510114623

`A185030(n)+comp[A139030(n)]`
-/

namespace A032420.P6429658346510114623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139030 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185030 n + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)

end

end A032420.P6429658346510114623

/-! ## A032420.P8966379506568483972

`eq[A096852(n), A366785(n+1)]`
-/

namespace A032420.P8966379506568483972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096852 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366785 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A032420.P8966379506568483972

/-!
# A032427: Coefficients of Jacobi elliptic function c(4,m).

The programs for A032427, there is no canonical definition to state claims against.
-/

/-! ## A032427.P18379836799914121761

`A060628(eq[4, A002262(n)])`
-/

namespace A032427.P18379836799914121761
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060628 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A032427.P18379836799914121761

/-! ## A032427.P12277872321117967428

`A060628(eq[4, A025581(n)])`
-/

namespace A032427.P12277872321117967428
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060628 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A032427.P12277872321117967428

/-! ## A032427.P1644296112366000128

`A060628(eq[5, A002260(n+1)])`
-/

namespace A032427.P1644296112366000128
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060628 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A032427.P1644296112366000128

/-! ## A032427.P8109734429466931453

`A060628(Δ[Δ[A022815(n+1)]])`
-/

namespace A032427.P8109734429466931453
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022815 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060628 (f1 (n + 1) - f1 n).toNat

end

end A032427.P8109734429466931453

/-! ## A032427.P8052664916742079551

`A060628(eq[3, A332954(n)])`
-/

namespace A032427.P8052664916742079551
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332954 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060628 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A032427.P8052664916742079551

/-!
# A032428: Coefficients of Jacobi elliptic function c(5,m).

The programs for A032428, there is no canonical definition to state claims against.
-/

/-! ## A032428.P10954056564211684891

`A060628(eq[6, A002260(n+1)])`
-/

namespace A032428.P10954056564211684891
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060628 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A032428.P10954056564211684891

/-!
# A032429: Coefficients of Jacobi elliptic function c(6,m).

The programs for A032429, there is no canonical definition to state claims against.
-/

/-! ## A032429.P11525891032354465607

`A060628(eq[7, A002260(n+1)])`
-/

namespace A032429.P11525891032354465607
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060628 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A032429.P11525891032354465607

/-!
# A032434: Triangle read by rows: last survivors of Josephus elimination process.

The programs for A032434, there is no canonical definition to state claims against.
-/

/-! ## A032434.P5082838844556909714

`A198788(A245300(n)+1)`
-/

namespace A032434.P5082838844556909714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198788 (A245300 n + 1).toNat

end

end A032434.P5082838844556909714

/-! ## A032434.P4713403630312514866

`A198788(round(A214661(n+1)/2))`
-/

namespace A032434.P4713403630312514866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198788 (SequenceMachineLib.roundAway ((A214661 (n + 1) : ℚ) / 2)).toNat

end

end A032434.P4713403630312514866

/-! ## A032434.P10285467647671382605

`A198788((A214661(n+1)+1)/2)`
-/

namespace A032434.P10285467647671382605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198788 (SequenceMachineLib.roundAway ((A214661 (n + 1) + 1 : ℚ) / 2)).toNat

end

end A032434.P10285467647671382605

/-! ## A032434.P6769358471455021461

`A198789(A245300(n)+A004736(n+1))`
-/

namespace A032434.P6769358471455021461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198789 (A245300 n + A004736 (n + 1)).toNat

end

end A032434.P6769358471455021461

/-! ## A032434.P17930398268769270708

`A198788(A008619(A214661(n+1)))`
-/

namespace A032434.P17930398268769270708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198788 (A008619 (A214661 (n + 1)).toNat).toNat

end

end A032434.P17930398268769270708

/-!
# A032435: Triangle of second-to-last man to survive in Josephus problem of n men in a circle with every k-th killed, with 1 <= k <= n and n >= 2.

The programs for A032435, there is no canonical definition to state claims against.
-/

/-! ## A032435.P4052694995929454913

`A338428(A045393(n+1)-1)`
-/

namespace A032435.P4052694995929454913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338428 (A045393 (n + 1) - 1).toNat

end

end A032435.P4052694995929454913

/-! ## A032435.P5055867301206239877

`A338428(A133956(n+2)-1)`
-/

namespace A032435.P5055867301206239877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338428 (A133956 (n + 2) - 1).toNat

end

end A032435.P5055867301206239877

/-! ## A032435.P13830488423414028659

`A338428(A176164(n+2)-1)`
-/

namespace A032435.P13830488423414028659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338428 (A176164 (n + 2) - 1).toNat

end

end A032435.P13830488423414028659

/-! ## A032435.P7841083932781175759

`A302246(A134344(3*n+1)+A001644(n))`
-/

namespace A032435.P7841083932781175759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302246 (A134344 (3 * n + 1) + A001644 n).toNat

end

end A032435.P7841083932781175759

/-! ## A032435.P8789011189380869204

`A340998(A110681(n))+A010783(n+1)`
-/

namespace A032435.P8789011189380869204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340998 ((A110681 n).toNat + 140) + A010783 (n + 1)

end

end A032435.P8789011189380869204

/-!
# A032436: Triangle of third-to-last man to survive in the Josephus problem of n men in a circle with every k-th killed, with 1 <= k <= n and n >= 3.

The programs for A032436, there is no canonical definition to state claims against.
-/

/-! ## A032436.P15202302391649612530

`gcd(A128180(n+1), A232756(A103517(n)))`
-/

namespace A032436.P15202302391649612530
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A128180 (n + 1)) (A232756 (A103517 n).toNat)

end

end A032436.P15202302391649612530

/-! ## A032436.P2656472946843630936

`A034968(gcd(n+3, A132382(3*n+1)))`
-/

namespace A032436.P2656472946843630936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034968 (Int.gcd (n + 3 : ℤ) (A132382 (3 * n + 1)))

end

end A032436.P2656472946843630936

/-! ## A032436.P17404128345000363205

`A057945(A050320(n+3)^A061395(3*n+5))`
-/

namespace A032436.P17404128345000363205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057945 (SequenceMachineLib.roundAway ((A050320 (n + 3) : ℚ) ^ (A061395 (3 * n + 5) : ℤ))).toNat

end

end A032436.P17404128345000363205

/-! ## A032436.P17854702988914659494

`A374629(A008406(3*n+1)-1)`
-/

namespace A032436.P17854702988914659494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374629 (A008406 (3 * n + 1) - 1).toNat

end

end A032436.P17854702988914659494

/-! ## A032436.P8326562334792741531

`A115583(∑[A064866((n+1)²-n²)])`
-/

namespace A032436.P8326562334792741531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064866 ((n + 1) ^ 2 - n ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115583 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A032436.P8326562334792741531

/-!
# A032437: Substrings from the right are prime numbers (using only odd digits different from 5).

The programs for A032437, there is no canonical definition to state claims against.
-/

/-! ## A032437.P18333329561943348457

`∩[A033664(n+1), A091633(n+1)]`
-/

namespace A032437.P18333329561943348457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033664 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091633 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A032437.P18333329561943348457

/-! ## A032437.P9893619821980613364

`∩[A091633(n+1), A308711(n+1)]`
-/

namespace A032437.P9893619821980613364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091633 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308711 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A032437.P9893619821980613364

/-! ## A032437.P9543724451724324435

`∩[A024785(n+1), A091633(n+1)]`
-/

namespace A032437.P9543724451724324435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024785 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091633 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A032437.P9543724451724324435

/-! ## A032437.P9746563349870529518

`∩[A032449(n+1), A091633(n+1)]`
-/

namespace A032437.P9746563349870529518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032449 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091633 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A032437.P9746563349870529518

/-! ## A032437.P17594006715916204192

`∩[A033664(n+1), A136333(n+1)]`
-/

namespace A032437.P17594006715916204192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033664 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136333 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A032437.P17594006715916204192

/-!
# A032438: a(n) = n^2 - floor((n+1)/2)^2.

The programs for A032438, the canonical program `A032438.P7724915198550177205` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A032438 has offset 0).

The definition of A032438 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A032438.P7724915198550177205

`floor(n/2)*ceil(3*n/2)`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A032438

/-- `floor(n/2)*ceil(3*n/2)` -/
def P7724915198550177205.Spec : Prop :=
  ∀ n, P7724915198550177205.a n = A032438 n

theorem P7724915198550177205.correct : P7724915198550177205.Spec := by
  intro n
  simp only [A032438]

end A032438

/-! ## A032438.P2794475953689269873

`a(n-1)+2*a(n-2)-2*a(n-3)-a(n-4)+a(n-5)` with `a(0)=0, a(1)=0, a(2)=3, a(3)=5, a(4)=12`
-/

namespace A032438.P2794475953689269873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 3, 5, 12] fun n a =>
  a (n - 1) + 2 * a (n - 2) - 2 * a (n - 3) - a (n - 4) + a (n - 5)

end

end A032438.P2794475953689269873

namespace A032438

/-- `a(n-1)+2*a(n-2)-2*a(n-3)-a(n-4)+a(n-5)` -/
def P2794475953689269873.Spec : Prop :=
  ∀ n, P2794475953689269873.a n = A032438 n

end A032438

/-! ## A032438.P2888545242899406039

`n²-A008794(n+1)`
-/

namespace A032438.P2888545242899406039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - A008794 (n + 1)

end

end A032438.P2888545242899406039

namespace A032438

/-- `n²-A008794(n+1)` -/
def P2888545242899406039.Spec : Prop :=
  ∀ n, P2888545242899406039.a n = A032438 n

end A032438

/-! ## A032438.P4123692095976134911

`∑[n*gcd(2, n)]-n`
-/

namespace A032438.P4123692095976134911
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Nat.gcd 2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (n : ℤ)

end

end A032438.P4123692095976134911

namespace A032438

/-- `∑[n*gcd(2, n)]-n` -/
def P4123692095976134911.Spec : Prop :=
  ∀ n, P4123692095976134911.a n = A032438 n

end A032438

/-! ## A032438.P5772392329718517902

`∑[-n*or(n, -2)]-n`
-/

namespace A032438.P5772392329718517902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -((n : ℤ) * Int.lor (n : ℤ) (-2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A032438.P5772392329718517902

namespace A032438

/-- `∑[-n*or(n, -2)]-n` -/
def P5772392329718517902.Spec : Prop :=
  ∀ n, P5772392329718517902.a n = A032438 n

end A032438

/-! ## A032438.P12442958385557706669

`∑[n*((n+1)%2+1)]-n`
-/

namespace A032438.P12442958385557706669
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * ((n + 1) % 2 + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (n : ℤ)

end

end A032438.P12442958385557706669

namespace A032438

/-- `∑[n*((n+1)%2+1)]-n` -/
def P12442958385557706669.Spec : Prop :=
  ∀ n, P12442958385557706669.a n = A032438 n

end A032438

/-! ## A032438.P16165086346673941175

`∑[∏{p}[n, #^val(2*n, #)]-1]`
-/

namespace A032438.P16165086346673941175
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f2 n), p ^ SequenceMachineLib.valuation (2 * n) p : ℕ) : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A032438.P16165086346673941175

namespace A032438

/-- `∑[∏{p}[n, #^val(2*n, #)]-1]` -/
def P16165086346673941175.Spec : Prop :=
  ∀ n, P16165086346673941175.a n = A032438 n

end A032438

/-! ## A032438.P3215141702113882106

`∑[lcm(n+1, 2*n)/(n+1)]-n`
-/

namespace A032438.P3215141702113882106
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm (n + 1) (2 * n) : ℚ) / (n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℚ)

end

end A032438.P3215141702113882106

namespace A032438

/-- `∑[lcm(n+1, 2*n)/(n+1)]-n` -/
def P3215141702113882106.Spec : Prop :=
  ∀ n, P3215141702113882106.a n = (A032438 n : ℚ)

end A032438

/-! ## A032438.P10093151985763883538

`abs(n-record[n²%3*floor(n²/3)])`
-/

namespace A032438.P10093151985763883538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n ^ 2 % 3 : ℕ) : ℤ) * ⌊(n ^ 2 : ℚ) / 3⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n : ℤ) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)|

end

end A032438.P10093151985763883538

namespace A032438

/-- `abs(n-record[n²%3*floor(n²/3)])` -/
def P10093151985763883538.Spec : Prop :=
  ∀ n, P10093151985763883538.a n = A032438 n

end A032438

/-! ## A032438.P5338262219618212917

`floor(A354594(n)/2)`
-/

namespace A032438.P5338262219618212917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A354594 n : ℚ) / 2⌋

end

end A032438.P5338262219618212917

namespace A032438

/-- `floor(A354594(n)/2)` -/
def P5338262219618212917.Spec : Prop :=
  ∀ n, P5338262219618212917.a n = A032438 n

end A032438

/-! ## A032438.P7827563745386572272

`∑[A257088(n)-1]`
-/

namespace A032438.P7827563745386572272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257088 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A032438.P7827563745386572272

namespace A032438

/-- `∑[A257088(n)-1]` -/
def P7827563745386572272.Spec : Prop :=
  ∀ n, P7827563745386572272.a n = A032438 n

end A032438

/-! ## A032438.P12295678215123804687

`∑[A022998(n)]-n`
-/

namespace A032438.P12295678215123804687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022998 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A032438.P12295678215123804687

namespace A032438

/-- `∑[A022998(n)]-n` -/
def P12295678215123804687.Spec : Prop :=
  ∀ n, P12295678215123804687.a n = A032438 n

end A032438

/-! ## A032438.P13564033311489325078

`A239767(n)-∑[n]`
-/

namespace A032438.P13564033311489325078
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239767 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A032438.P13564033311489325078

namespace A032438

/-- `A239767(n)-∑[n]` -/
def P13564033311489325078.Spec : Prop :=
  ∀ n, P13564033311489325078.a n = A032438 n

end A032438

/-! ## A032438.P12688090303834655958

`A001082(n+1)-n`
-/

namespace A032438.P12688090303834655958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001082 (n + 1) - (n : ℤ)

end

end A032438.P12688090303834655958

namespace A032438

/-- `A001082(n+1)-n` -/
def P12688090303834655958.Spec : Prop :=
  ∀ n, P12688090303834655958.a n = A032438 n

end A032438

/-! ## A032438.P13268477400273210031

`A257083(n)-(n+1)`
-/

namespace A032438.P13268477400273210031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257083 n - (n + 1 : ℤ)

end

end A032438.P13268477400273210031

namespace A032438

/-- `A257083(n)-(n+1)` -/
def P13268477400273210031.Spec : Prop :=
  ∀ n, P13268477400273210031.a n = A032438 n

end A032438

/-! ## A032438.P6082279758611090005

`∑[abs(A280166(n))-1]`
-/

namespace A032438.P6082279758611090005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A280166 n| - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A032438.P6082279758611090005

namespace A032438

/-- `∑[abs(A280166(n))-1]` -/
def P6082279758611090005.Spec : Prop :=
  ∀ n, P6082279758611090005.a n = A032438 n

end A032438

/-! ## A032438.P2935032960883358409

`n²-A001057(n)²`
-/

namespace A032438.P2935032960883358409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - A001057 n ^ 2

end

end A032438.P2935032960883358409

namespace A032438

/-- `n²-A001057(n)²` -/
def P2935032960883358409.Spec : Prop :=
  ∀ n, P2935032960883358409.a n = A032438 n

end A032438

/-! ## A032438.P15382917043032446011

`n²-A110654(n)²`
-/

namespace A032438.P15382917043032446011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - A110654 n ^ 2

end

end A032438.P15382917043032446011

namespace A032438

/-- `n²-A110654(n)²` -/
def P15382917043032446011.Spec : Prop :=
  ∀ n, P15382917043032446011.a n = A032438 n

end A032438

/-! ## A032438.P7821679274077372513

`n²-A130472(n)²`
-/

namespace A032438.P7821679274077372513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - A130472 n ^ 2

end

end A032438.P7821679274077372513

namespace A032438

/-- `n²-A130472(n)²` -/
def P7821679274077372513.Spec : Prop :=
  ∀ n, P7821679274077372513.a n = A032438 n

end A032438

/-! ## A032438.P10118991530082676764

`A014255(n)-Δ[n²]`
-/

namespace A032438.P10118991530082676764
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014255 n - ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A032438.P10118991530082676764

namespace A032438

/-- `A014255(n)-Δ[n²]` -/
def P10118991530082676764.Spec : Prop :=
  ∀ n, P10118991530082676764.a n = A032438 n

end A032438

/-!
# A032439: a(n) = Sum_{i=0..4} binomial(Fibonacci(n),i).

The programs for A032439, there is no canonical definition to state claims against.
-/

/-! ## A032439.P10657825145110081549

`A000127(round(ϕ^n/sqrt(5))+1)`
-/

namespace A032439.P10657825145110081549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000127 (SequenceMachineLib.roundAway (Real.goldenRatio ^ n / Real.sqrt (5 : ℝ)) + 1).toNat

end

end A032439.P10657825145110081549

/-! ## A032439.P17737109722363078041

`A055795(A001611(n))+1`
-/

namespace A032439.P17737109722363078041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055795 (A001611 n).toNat + 1

end

end A032439.P17737109722363078041

/-! ## A032439.P12285265052334407484

`A055795(A000045(n)+1)+1`
-/

namespace A032439.P12285265052334407484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055795 (A000045 n + 1).toNat + 1

end

end A032439.P12285265052334407484

/-! ## A032439.P11705637510725163692

`A055417(A000045(n))-A000045(n)`
-/

namespace A032439.P11705637510725163692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055417 (A000045 n).toNat - A000045 n

end

end A032439.P11705637510725163692

/-! ## A032439.P11221330102799801018

`A000127(A001611(n))+char[A363107(n+4)]`
-/

namespace A032439.P11221330102799801018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363107 (n + 4)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000127 (A001611 n).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A032439.P11221330102799801018

/-!
# A032440: Sum_{i=0..3} binomial(Fibonacci(n),i).

The programs for A032440, the canonical program `A032440.P7459206147418244554` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A032440 has offset 0).

The definition of A032440 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 162 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A032440.P7459206147418244554

`A001611(n)+C(A001611(n), 3)`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A032440

/-- `A001611(n)+C(A001611(n), 3)` -/
def P7459206147418244554.Spec : Prop :=
  ∀ n, P7459206147418244554.a n = A032440 n

theorem P7459206147418244554.correct : P7459206147418244554.Spec := by
  intro n
  simp only [A032440]

end A032440

/-! ## A032440.P9407019232424953983

`A000045(n)+C(A000045(n)+1, 3)+1`
-/

namespace A032440.P9407019232424953983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n + (Nat.choose (A000045 n + 1).toNat 3 + 1 : ℤ)

end

end A032440.P9407019232424953983

namespace A032440

/-- `A000045(n)+C(A000045(n)+1, 3)+1` -/
def P9407019232424953983.Spec : Prop :=
  ∀ n, P9407019232424953983.a n = A032440 n

end A032440

/-! ## A032440.P7585887982938515063

`A000125(Δ[round(ϕ*a(n-1))])` with `a(0)=1, a(1)=1`
-/

namespace A032440.P7585887982938515063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  SequenceMachineLib.roundAway (Real.goldenRatio * (f1 (n - 1) : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000125 (f1 (n + 1) - f1 n).toNat

end

end A032440.P7585887982938515063

namespace A032440

/-- `A000125(Δ[round(ϕ*a(n-1))])` -/
def P7585887982938515063.Spec : Prop :=
  ∀ n, P7585887982938515063.a n = A032440 n

end A032440

/-! ## A032440.P3021285390160139086

`A000125(∑[a(n-1)-(1-a(n-2))]-n)` with `a(0)=0, a(1)=2`
-/

namespace A032440.P3021285390160139086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 2] fun n f1 =>
  f1 (n - 1) - (1 - f1 (n - 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000125 (∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)).toNat

end

end A032440.P3021285390160139086

namespace A032440

/-- `A000125(∑[a(n-1)-(1-a(n-2))]-n)` -/
def P3021285390160139086.Spec : Prop :=
  ∀ n, P3021285390160139086.a n = A032440 n

end A032440

/-! ## A032440.P7238408442599458781

`A000125(A000045(n))`
-/

namespace A032440.P7238408442599458781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000125 (A000045 n).toNat

end

end A032440.P7238408442599458781

namespace A032440

/-- `A000125(A000045(n))` -/
def P7238408442599458781.Spec : Prop :=
  ∀ n, P7238408442599458781.a n = A032440 n

end A032440

/-!
# A032441: a(n) = Sum_{i=0..2} binomial(Fibonacci(n),i).

The programs for A032441, the canonical program `A032441.P12702803524669002420` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A032441 has offset 0).

The definition of A032441 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 242 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A032441.P1610435470742881743

`A033192(n)+1`
-/

namespace A032441.P1610435470742881743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033192 n + 1

end

end A032441.P1610435470742881743

namespace A032441

/-- `A033192(n)+1` -/
def P1610435470742881743.Spec : Prop :=
  ∀ n, P1610435470742881743.a n = A032441 n

end A032441

/-! ## A032441.P12702803524669002420

`4*a(n-1)-2*a(n-2)-6*a(n-3)+4*a(n-4)+2*a(n-5)-a(n-6)` with `a(0)=1, a(1)=2, a(2)=2, a(3)=4, a(4)=7, a(5)=16`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A032441

/-- `4*a(n-1)-2*a(n-2)-6*a(n-3)+4*a(n-4)+2*a(n-5)-a(n-6)` -/
def P12702803524669002420.Spec : Prop :=
  ∀ n, P12702803524669002420.a n = A032441 n

theorem P12702803524669002420.correct : P12702803524669002420.Spec := by
  intro n
  simp only [A032441]

end A032441

/-! ## A032441.P2966967778626614495

`A005207(n)+2-a(n-1)` with `a(0)=1`
-/

namespace A032441.P2966967778626614495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A005207 n + (2 - a (n - 1))

end

end A032441.P2966967778626614495

namespace A032441

/-- `A005207(n)+2-a(n-1)` -/
def P2966967778626614495.Spec : Prop :=
  ∀ n, P2966967778626614495.a n = A032441 n

end A032441

/-! ## A032441.P11463470712583762465

`A191797(n)+A001611(n)`
-/

namespace A032441.P11463470712583762465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191797 n + A001611 n

end

end A032441.P11463470712583762465

namespace A032441

/-- `A191797(n)+A001611(n)` -/
def P11463470712583762465.Spec : Prop :=
  ∀ n, P11463470712583762465.a n = A032441 n

end A032441

/-! ## A032441.P7287960867940475153

`A000045(n)+A191797(n)+1`
-/

namespace A032441.P7287960867940475153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n + (A191797 n + 1)

end

end A032441.P7287960867940475153

namespace A032441

/-- `A000045(n)+A191797(n)+1` -/
def P7287960867940475153.Spec : Prop :=
  ∀ n, P7287960867940475153.a n = A032441 n

end A032441

/-! ## A032441.P88001090799205373

`A104220(n)*A173173(n)+1`
-/

namespace A032441.P88001090799205373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104220 n * A173173 n + 1

end

end A032441.P88001090799205373

namespace A032441

/-- `A104220(n)*A173173(n)+1` -/
def P88001090799205373.Spec : Prop :=
  ∀ n, P88001090799205373.a n = A032441 n

end A032441

/-! ## A032441.P1261152338236955620

`A191797(n)+abs(A236191(n))+1`
-/

namespace A032441.P1261152338236955620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191797 n + (|A236191 n| + 1)

end

end A032441.P1261152338236955620

namespace A032441

/-- `A191797(n)+abs(A236191(n))+1` -/
def P1261152338236955620.Spec : Prop :=
  ∀ n, P1261152338236955620.a n = A032441 n

end A032441

/-! ## A032441.P14214101929244623143

`Δ[A000071(n+1)]+A191797(n)+1`
-/

namespace A032441.P14214101929244623143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (A191797 n + 1)

end

end A032441.P14214101929244623143

namespace A032441

/-- `Δ[A000071(n+1)]+A191797(n)+1` -/
def P14214101929244623143.Spec : Prop :=
  ∀ n, P14214101929244623143.a n = A032441 n

end A032441

/-! ## A032441.P2452008672598364013

`A103609(A005408(n))+A191797(n)+1`
-/

namespace A032441.P2452008672598364013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103609 (A005408 n).toNat + (A191797 n + 1)

end

end A032441.P2452008672598364013

namespace A032441

/-- `A103609(A005408(n))+A191797(n)+1` -/
def P2452008672598364013.Spec : Prop :=
  ∀ n, P2452008672598364013.a n = A032441 n

end A032441

/-! ## A032441.P13486695983331589434

`A103609(A005843(n))+A191797(n)+1`
-/

namespace A032441.P13486695983331589434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103609 (A005843 n).toNat + (A191797 n + 1)

end

end A032441.P13486695983331589434

namespace A032441

/-- `A103609(A005843(n))+A191797(n)+1` -/
def P13486695983331589434.Spec : Prop :=
  ∀ n, P13486695983331589434.a n = A032441 n

end A032441

/-! ## A032441.P3241774419169980785

`A103609(A014601(n))+A191797(n)+1`
-/

namespace A032441.P3241774419169980785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103609 (A014601 n).toNat + (A191797 n + 1)

end

end A032441.P3241774419169980785

namespace A032441

/-- `A103609(A014601(n))+A191797(n)+1` -/
def P3241774419169980785.Spec : Prop :=
  ∀ n, P3241774419169980785.a n = A032441 n

end A032441

/-! ## A032441.P9992497735341758055

`A103609(A059009(n))+A191797(n)+1`
-/

namespace A032441.P9992497735341758055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103609 (A059009 n).toNat + (A191797 n + 1)

end

end A032441.P9992497735341758055

namespace A032441

/-- `A103609(A059009(n))+A191797(n)+1` -/
def P9992497735341758055.Spec : Prop :=
  ∀ n, P9992497735341758055.a n = A032441 n

end A032441

/-! ## A032441.P5138515420021684702

`A103609(A059010(n))+A191797(n)+1`
-/

namespace A032441.P5138515420021684702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103609 (A059010 n).toNat + (A191797 n + 1)

end

end A032441.P5138515420021684702

namespace A032441

/-- `A103609(A059010(n))+A191797(n)+1` -/
def P5138515420021684702.Spec : Prop :=
  ∀ n, P5138515420021684702.a n = A032441 n

end A032441

/-! ## A032441.P11166379106114199548

`A247309(A055562(n))+A191797(n)+1`
-/

namespace A032441.P11166379106114199548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247309 (A055562 n).toNat + (A191797 n + 1)

end

end A032441.P11166379106114199548

namespace A032441

/-- `A247309(A055562(n))+A191797(n)+1` -/
def P11166379106114199548.Spec : Prop :=
  ∀ n, P11166379106114199548.a n = A032441 n

end A032441

/-! ## A032441.P16775972563892254113

`A004398(n+1)-A004397(n+1)+A191797(n)+1`
-/

namespace A032441.P16775972563892254113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004398 (n + 1) - A004397 (n + 1) + (A191797 n + 1)

end

end A032441.P16775972563892254113

namespace A032441

/-- `A004398(n+1)-A004397(n+1)+A191797(n)+1` -/
def P16775972563892254113.Spec : Prop :=
  ∀ n, P16775972563892254113.a n = A032441 n

end A032441

/-! ## A032441.P1402311872410799529

`A059727(n)/2+1`
-/

namespace A032441.P1402311872410799529
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A059727 n : ℚ) / 2 + 1

end

end A032441.P1402311872410799529

namespace A032441

/-- `A059727(n)/2+1` -/
def P1402311872410799529.Spec : Prop :=
  ∀ n, P1402311872410799529.a n = (A032441 n : ℚ)

end A032441

/-! ## A032441.P661666470492010897

`A382608(n)/4+1`
-/

namespace A032441.P661666470492010897
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A382608 n : ℚ) / 4 + 1

end

end A032441.P661666470492010897

namespace A032441

/-- `A382608(n)/4+1` -/
def P661666470492010897.Spec : Prop :=
  ∀ n, P661666470492010897.a n = (A032441 n : ℚ)

end A032441

/-! ## A032441.P14336151144294599887

`C(∑[A000045(abs(2-n))], 2)+1`
-/

namespace A032441.P14336151144294599887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 |2 - (n : ℤ)|.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j).toNat 2 + 1

end

end A032441.P14336151144294599887

namespace A032441

/-- `C(∑[A000045(abs(2-n))], 2)+1` -/
def P14336151144294599887.Spec : Prop :=
  ∀ n, (P14336151144294599887.a n : ℤ) = A032441 n

end A032441

/-! ## A032441.P573844886666133647

`C(Δ[A000045(n+1)]+1, 2)+1`
-/

namespace A032441.P573844886666133647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (f1 (n + 1) - f1 n + 1).toNat 2 + 1

end

end A032441.P573844886666133647

namespace A032441

/-- `C(Δ[A000045(n+1)]+1, 2)+1` -/
def P573844886666133647.Spec : Prop :=
  ∀ n, (P573844886666133647.a n : ℤ) = A032441 n

end A032441

/-! ## A032441.P13190161309125113645

`C(A000045(abs(n-2*n))+1, 2)+1`
-/

namespace A032441.P13190161309125113645
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A000045 |(n : ℤ) - (2 * n : ℤ)|.toNat + 1).toNat 2 + 1

end

end A032441.P13190161309125113645

namespace A032441

/-- `C(A000045(abs(n-2*n))+1, 2)+1` -/
def P13190161309125113645.Spec : Prop :=
  ∀ n, (P13190161309125113645.a n : ℤ) = A032441 n

end A032441

/-!
# A032442: Expansion of 1 / Product_{k >= 1} (1-q^k)^2*(1-q^(11k))^2.

The programs for A032442, there is no canonical definition to state claims against.
-/

/-! ## A032442.P17312195023992982763

`A180160(A056492(n+1))+A000712(n)`
-/

namespace A032442.P17312195023992982763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180160 (A056492 (n + 1)).toNat + A000712 n

end

end A032442.P17312195023992982763

/-! ## A032442.P3514702823786453525

`A083893(A001006(n))+A000712(n)`
-/

namespace A032442.P3514702823786453525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083893 (A001006 n).toNat + A000712 n

end

end A032442.P3514702823786453525

/-! ## A032442.P14325963390395236629

`A025457(A082582(n))+A000712(n)`
-/

namespace A032442.P14325963390395236629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025457 (A082582 n).toNat + A000712 n

end

end A032442.P14325963390395236629

/-! ## A032442.P18292850959781233093

`A221146(A022186(n))+A000712(n)`
-/

namespace A032442.P18292850959781233093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221146 (A022186 n).toNat + A000712 n

end

end A032442.P18292850959781233093

/-! ## A032442.P5524848731053232252

`A348613(A109001(n))+A000712(n)`
-/

namespace A032442.P5524848731053232252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348613 (A109001 n).toNat + A000712 n

end

end A032442.P5524848731053232252

/-!
# A032443: a(n) = Sum_{i=0..n} binomial(2*n, i).

The programs for A032443, the canonical program `A032443.P9008347100965592758` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A032443 has offset 0).

The definition of A032443 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A032443.P9008347100965592758

`4*a(n-1)-A000108(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A032443

/-- `4*a(n-1)-A000108(n-1)` -/
def P9008347100965592758.Spec : Prop :=
  ∀ n, P9008347100965592758.a n = A032443 n

theorem P9008347100965592758.correct : P9008347100965592758.Spec := by
  intro n
  simp only [A032443]

end A032443

/-! ## A032443.P15103440352333821444

`A027306(2*n)`
-/

namespace A032443.P15103440352333821444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027306 (2 * n)

end

end A032443.P15103440352333821444

namespace A032443

/-- `A027306(2*n)` -/
def P15103440352333821444.Spec : Prop :=
  ∀ n, P15103440352333821444.a n = A032443 n

end A032443

/-! ## A032443.P9005466230866243191

`A116406(Δ[n²])`
-/

namespace A032443.P9005466230866243191
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116406 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A032443.P9005466230866243191

namespace A032443

/-- `A116406(Δ[n²])` -/
def P9005466230866243191.Spec : Prop :=
  ∀ n, P9005466230866243191.a n = A032443 n

end A032443

/-! ## A032443.P12184971432170658412

`A226881(2*n)+1`
-/

namespace A032443.P12184971432170658412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226881 (2 * n) + 1

end

end A032443.P12184971432170658412

namespace A032443

/-- `A226881(2*n)+1` -/
def P12184971432170658412.Spec : Prop :=
  ∀ n, P12184971432170658412.a n = A032443 n

end A032443

/-! ## A032443.P14078798963019604645

`ceil(A081672(2*n)/2)`
-/

namespace A032443.P14078798963019604645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A081672 (2 * n) : ℚ) / 2⌉

end

end A032443.P14078798963019604645

namespace A032443

/-- `ceil(A081672(2*n)/2)` -/
def P14078798963019604645.Spec : Prop :=
  ∀ n, P14078798963019604645.a n = A032443 n

end A032443

/-! ## A032443.P13493240715767697145

`ceil(A261681(2*n)/2)`
-/

namespace A032443.P13493240715767697145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A261681 (2 * n) : ℚ) / 2⌉

end

end A032443.P13493240715767697145

namespace A032443

/-- `ceil(A261681(2*n)/2)` -/
def P13493240715767697145.Spec : Prop :=
  ∀ n, P13493240715767697145.a n = A032443 n

end A032443

/-! ## A032443.P14474123610181793914

`or(ceil(4^n/2), A088218(n))`
-/

namespace A032443.P14474123610181793914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ⌈(4 ^ n : ℚ) / 2⌉ (A088218 n)

end

end A032443.P14474123610181793914

namespace A032443

/-- `or(ceil(4^n/2), A088218(n))` -/
def P14474123610181793914.Spec : Prop :=
  ∀ n, P14474123610181793914.a n = A032443 n

end A032443

/-! ## A032443.P13917918849225707848

`record[gcd(val(n+1, 2), A027306(n))]`
-/

namespace A032443.P13917918849225707848
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.valuation (n + 1) 2 : ℤ) (A027306 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A032443.P13917918849225707848

namespace A032443

/-- `record[gcd(val(n+1, 2), A027306(n))]` -/
def P13917918849225707848.Spec : Prop :=
  ∀ n, (P13917918849225707848.a n : ℤ) = A032443 n

end A032443

/-! ## A032443.P4878067497911585943

`record[A027306(C(n, a(n-1)))]` with `a(0)=1`
-/

namespace A032443.P4878067497911585943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A027306 (Nat.choose n (f1 (n - 1)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A032443.P4878067497911585943

namespace A032443

/-- `record[A027306(C(n, a(n-1)))]` -/
def P4878067497911585943.Spec : Prop :=
  ∀ n, P4878067497911585943.a n = A032443 n

end A032443

/-! ## A032443.P3970650724642376414

`record[A027306(A014681(n))]`
-/

namespace A032443.P3970650724642376414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027306 (A014681 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A032443.P3970650724642376414

namespace A032443

/-- `record[A027306(A014681(n))]` -/
def P3970650724642376414.Spec : Prop :=
  ∀ n, P3970650724642376414.a n = A032443 n

end A032443

/-! ## A032443.P10546729372991751323

`A006516(n)+A005317(n)`
-/

namespace A032443.P10546729372991751323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006516 n + A005317 n

end

end A032443.P10546729372991751323

namespace A032443

/-- `A006516(n)+A005317(n)` -/
def P10546729372991751323.Spec : Prop :=
  ∀ n, P10546729372991751323.a n = A032443 n

end A032443

/-! ## A032443.P6601238782450107159

`A264960(n)+A058621(n)`
-/

namespace A032443.P6601238782450107159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264960 n + A058621 n

end

end A032443.P6601238782450107159

namespace A032443

/-- `A264960(n)+A058621(n)` -/
def P6601238782450107159.Spec : Prop :=
  ∀ n, P6601238782450107159.a n = A032443 n

end A032443

/-! ## A032443.P794283166510920202

`A360168(n)+A002450(n)`
-/

namespace A032443.P794283166510920202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360168 n + A002450 n

end

end A032443.P794283166510920202

namespace A032443

/-- `A360168(n)+A002450(n)` -/
def P794283166510920202.Spec : Prop :=
  ∀ n, P794283166510920202.a n = A032443 n

end A032443

/-! ## A032443.P9627090307027451308

`A277924(n)-A001791(n)`
-/

namespace A032443.P9627090307027451308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277924 n - A001791 n

end

end A032443.P9627090307027451308

namespace A032443

/-- `A277924(n)-A001791(n)` -/
def P9627090307027451308.Spec : Prop :=
  ∀ n, P9627090307027451308.a n = A032443 n

end A032443

/-! ## A032443.P10020585122321178928

`A161168(n)-A246472(n)`
-/

namespace A032443.P10020585122321178928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161168 n - A246472 n

end

end A032443.P10020585122321178928

namespace A032443

/-- `A161168(n)-A246472(n)` -/
def P10020585122321178928.Spec : Prop :=
  ∀ n, P10020585122321178928.a n = A032443 n

end A032443

/-! ## A032443.P3050813214081934311

`A005317(n)+Δ[A006095(n)]`
-/

namespace A032443.P3050813214081934311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006095 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005317 n + (f1 (n + 1) - f1 n)

end

end A032443.P3050813214081934311

namespace A032443

/-- `A005317(n)+Δ[A006095(n)]` -/
def P3050813214081934311.Spec : Prop :=
  ∀ n, P3050813214081934311.a n = A032443 n

end A032443

/-! ## A032443.P3468599897873692209

`A058622(2*n)+A000984(n)`
-/

namespace A032443.P3468599897873692209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058622 (2 * n) + A000984 n

end

end A032443.P3468599897873692209

namespace A032443

/-- `A058622(2*n)+A000984(n)` -/
def P3468599897873692209.Spec : Prop :=
  ∀ n, P3468599897873692209.a n = A032443 n

end A032443

/-! ## A032443.P6614302310984784989

`A191389(2*n)+A001700(n)`
-/

namespace A032443.P6614302310984784989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191389 (2 * n) + A001700 n

end

end A032443.P6614302310984784989

namespace A032443

/-- `A191389(2*n)+A001700(n)` -/
def P6614302310984784989.Spec : Prop :=
  ∀ n, P6614302310984784989.a n = A032443 n

end A032443

/-! ## A032443.P16705939049374140353

`A131577(2*n)+A088218(n)`
-/

namespace A032443.P16705939049374140353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 (2 * n) + A088218 n

end

end A032443.P16705939049374140353

namespace A032443

/-- `A131577(2*n)+A088218(n)` -/
def P16705939049374140353.Spec : Prop :=
  ∀ n, P16705939049374140353.a n = A032443 n

end A032443

/-! ## A032443.P2620571068375481821

`A294175(2*n)+A000984(n)`
-/

namespace A032443.P2620571068375481821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294175 (2 * n) + A000984 n

end

end A032443.P2620571068375481821

namespace A032443

/-- `A294175(2*n)+A000984(n)` -/
def P2620571068375481821.Spec : Prop :=
  ∀ n, P2620571068375481821.a n = A032443 n

end A032443

/-!
# A032445: Number the digits of the decimal expansion of Pi: 3 is the first, 1 is the second, 4 is the third and so on; a(n) gives the starting position of the first occurrence of n.

The programs for A032445, there is no canonical definition to state claims against.
-/

/-! ## A032445.P12382605562019236655

`A176341(n)+1`
-/

namespace A032445.P12382605562019236655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176341 n + 1

end

end A032445.P12382605562019236655

/-! ## A032445.P17883978953777493437

`A333128(n)+1-A055642(n)`
-/

namespace A032445.P17883978953777493437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333128 n + (1 - A055642 n)

end

end A032445.P17883978953777493437

/-! ## A032445.P16625736835468030360

`A328399(2*A176341(n))`
-/

namespace A032445.P16625736835468030360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328399 (2 * A176341 n).toNat

end

end A032445.P16625736835468030360

/-! ## A032445.P12817045727132388522

`A008619(2*A176341(n))`
-/

namespace A032445.P12817045727132388522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (2 * A176341 n).toNat

end

end A032445.P12817045727132388522

/-! ## A032445.P17334287683760181578

`A028242(2*A176341(n))`
-/

namespace A032445.P17334287683760181578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (2 * A176341 n).toNat

end

end A032445.P17334287683760181578

/-! ## A032445.P16992846964303548037

`A052938(2*A176341(n))`
-/

namespace A032445.P16992846964303548037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052938 (2 * A176341 n).toNat

end

end A032445.P16992846964303548037

/-! ## A032445.P2894298872395420185

`A008620(3*A176341(n))`
-/

namespace A032445.P2894298872395420185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (3 * A176341 n).toNat

end

end A032445.P2894298872395420185

/-!
# A032446: Number of solutions to phi(k) = 2n.

The programs for A032446, there is no canonical definition to state claims against.
-/

/-! ## A032446.P11228024301422865882

`A280712(2*(n+1))+A014197(n+1)`
-/

namespace A032446.P11228024301422865882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280712 (2 * (n + 1)) + A014197 (n + 1)

end

end A032446.P11228024301422865882

/-! ## A032446.P11210357170852443834

`A000005(2*(n+1))-A322019(2*(n+1))`
-/

namespace A032446.P11210357170852443834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (2 * (n + 1)) - A322019 (2 * (n + 1))

end

end A032446.P11210357170852443834

/-! ## A032446.P8319569126932881415

`A014197(2*(n+1))`
-/

namespace A032446.P8319569126932881415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014197 (2 * (n + 1))

end

end A032446.P8319569126932881415

/-! ## A032446.P16168984839347195345

`A070243(2*(n+1))-A070243(2*n+1)`
-/

namespace A032446.P16168984839347195345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070243 (2 * (n + 1)) - A070243 (2 * n + 1)

end

end A032446.P16168984839347195345

/-! ## A032446.P13669296754545348870

`Δ[A070243(Δ[n²])]`
-/

namespace A032446.P13669296754545348870
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070243 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A032446.P13669296754545348870

/-! ## A032446.P4092400348996899587

`A307853(2*n+3)/4`
-/

namespace A032446.P4092400348996899587
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A307853 (2 * n + 3) : ℚ) / 4

end

end A032446.P4092400348996899587

/-! ## A032446.P15553764830001712529

`A056239(A322310(2*(n+1)))`
-/

namespace A032446.P15553764830001712529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (A322310 (2 * (n + 1))).toNat

end

end A032446.P15553764830001712529

/-! ## A032446.P3533193190698475675

`A320000((n+1)*(2*n+3))`
-/

namespace A032446.P3533193190698475675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320000 ((n + 1) * (2 * n + 3))

end

end A032446.P3533193190698475675

/-!
# A032448: Smallest prime == -1 modulo prime(n).

The programs for A032448, there is no canonical definition to state claims against.
-/

/-! ## A032448.P11144974155373726929

`A282049(A000040(n+1))`
-/

namespace A032448.P11144974155373726929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282049 (A000040 (n + 1)).toNat

end

end A032448.P11144974155373726929

/-! ## A032448.P8992818132035922789

`A282049(record[A006530(n+2)])`
-/

namespace A032448.P8992818132035922789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282049 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A032448.P8992818132035922789

/-! ## A032448.P11633915184503868058

`A282049(record[A020639(n+2)])`
-/

namespace A032448.P11633915184503868058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282049 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A032448.P11633915184503868058

/-! ## A032448.P11872077997362727555

`A038700(Δ[A007504(n)])`
-/

namespace A032448.P11872077997362727555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038700 (f1 (n + 1) - f1 n).toNat

end

end A032448.P11872077997362727555

/-! ## A032448.P15126944611033822428

`A038700(A008578(n+2))`
-/

namespace A032448.P15126944611033822428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038700 (A008578 (n + 2)).toNat

end

end A032448.P15126944611033822428

/-! ## A032448.P8584582974705963165

`A038700(A182986(n+2))`
-/

namespace A032448.P8584582974705963165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038700 (A182986 (n + 2)).toNat

end

end A032448.P8584582974705963165

/-! ## A032448.P2447151283556173320

`A038700(record[A037225(n)+1])`
-/

namespace A032448.P2447151283556173320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037225 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038700 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A032448.P2447151283556173320

/-! ## A032448.P13925943411982601794

`A038700(record[A006530(n+2)])`
-/

namespace A032448.P13925943411982601794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038700 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A032448.P13925943411982601794

/-! ## A032448.P1527948297190471152

`A038700(record[A020639(n+2)])`
-/

namespace A032448.P1527948297190471152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038700 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A032448.P1527948297190471152

/-! ## A032448.P15739563626201690940

`A038700(A006093(n+1)+1)`
-/

namespace A032448.P15739563626201690940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038700 (A006093 (n + 1) + 1).toNat

end

end A032448.P15739563626201690940

/-! ## A032448.P1912981248732181934

`A038700(A039915(n+1)+1)`
-/

namespace A032448.P1912981248732181934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038700 (A039915 (n + 1) + 1).toNat

end

end A032448.P1912981248732181934

/-! ## A032448.P3410891768801593043

`A038700(A008864(n+1)-1)`
-/

namespace A032448.P3410891768801593043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038700 (A008864 (n + 1) - 1).toNat

end

end A032448.P3410891768801593043

/-! ## A032448.P10502914038845726964

`A038700(A100484(n+1)/2)`
-/

namespace A032448.P10502914038845726964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038700 (SequenceMachineLib.roundAway ((A100484 (n + 1) : ℚ) / 2)).toNat

end

end A032448.P10502914038845726964

/-! ## A032448.P12783405248172221462

`A038700(A001747(n+2)/2)`
-/

namespace A032448.P12783405248172221462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038700 (SequenceMachineLib.roundAway ((A001747 (n + 2) : ℚ) / 2)).toNat

end

end A032448.P12783405248172221462

/-! ## A032448.P6386093842875468425

`A038700(eq[n, A038700(n+1)])`
-/

namespace A032448.P6386093842875468425
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038700 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038700 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A032448.P6386093842875468425

/-! ## A032448.P4561312711562421903

`A038700(record[A000010(n+1)+1])`
-/

namespace A032448.P4561312711562421903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038700 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A032448.P4561312711562421903

/-! ## A032448.P12263896317304327249

`A038700(A038700(A008864(n+1)))`
-/

namespace A032448.P12263896317304327249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038700 (A038700 (A008864 (n + 1)).toNat).toNat

end

end A032448.P12263896317304327249

/-! ## A032448.P12815059180793020230

`A282049(lt[n, A282028(n)])`
-/

namespace A032448.P12815059180793020230
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282028 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282049 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A032448.P12815059180793020230

/-! ## A032448.P8194550655175961013

`A038700(record[A014963(n+2)])`
-/

namespace A032448.P8194550655175961013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038700 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A032448.P8194550655175961013

/-! ## A032448.P14693218520929946482

`A086507(record[A006530(n+2)])`
-/

namespace A032448.P14693218520929946482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086507 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A032448.P14693218520929946482

/-!
# A032449: Every suffix is prime and no digit is 0 or 5.

The programs for A032449, there is no canonical definition to state claims against.
-/

/-! ## A032449.P7903438976742316684

`∩[A033664(n+1), A386323(n+1)]`
-/

namespace A032449.P7903438976742316684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033664 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386323 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A032449.P7903438976742316684

/-! ## A032449.P843072214766645925

`∩[A308711(n+1), A386323(n+1)]`
-/

namespace A032449.P843072214766645925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308711 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386323 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A032449.P843072214766645925

/-! ## A032449.P14478916232870526017

`∩[A024785(n+1), A386323(n+1)]`
-/

namespace A032449.P14478916232870526017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024785 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386323 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A032449.P14478916232870526017

/-! ## A032449.P5071822072280725011

`∩[A024785(n+1), A038613(n+1)]`
-/

namespace A032449.P5071822072280725011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024785 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038613 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A032449.P5071822072280725011

/-! ## A032449.P2653453319245663556

`∩[A033664(n+1), A261189(n+1)]`
-/

namespace A032449.P2653453319245663556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033664 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261189 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A032449.P2653453319245663556

/-! ## A032449.P13643072112033577868

`∩[A261189(n+1), A308711(n+1)]`
-/

namespace A032449.P13643072112033577868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261189 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308711 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A032449.P13643072112033577868

/-! ## A032449.P6425551890770498537

`∩[A024785(n+1), A261189(n+1)]`
-/

namespace A032449.P6425551890770498537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024785 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261189 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A032449.P6425551890770498537

/-! ## A032449.P7482611251491516688

`∩[A024785(n+1), A039116(n+1)]`
-/

namespace A032449.P7482611251491516688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024785 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039116 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A032449.P7482611251491516688

/-! ## A032449.P4206073919720970073

`∩[A024785(n+1), A052413(n+1)]`
-/

namespace A032449.P4206073919720970073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024785 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052413 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A032449.P4206073919720970073

/-!
# A032451: Irregular triangle read by rows: there is a row for each value of n for which the aliquot sequence starting at n eventually reaches 1, giving the part of the sequence from n to 1.

The programs for A032451, there is no canonical definition to state claims against.
-/

/-! ## A032451.P2475054147132673167

`C(A054685(n+4), A202303(3*n+4)%3)`
-/

namespace A032451.P2475054147132673167
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A054685 (n + 4)).toNat (Int.tmod (A202303 (3 * n + 4)) 3).toNat

end

end A032451.P2475054147132673167

/-! ## A032451.P491213187912844587

`A165035(A060338(n)*A203552(n))`
-/

namespace A032451.P491213187912844587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165035 (A060338 n * A203552 n).toNat

end

end A032451.P491213187912844587

/-! ## A032451.P4316569837688393004

`gcd(A251622(n+1), A251632(A237754(n+1)))`
-/

namespace A032451.P4316569837688393004
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A251622 (n + 1)) (A251632 (A237754 (n + 1)).toNat)

end

end A032451.P4316569837688393004

/-! ## A032451.P15245144278544485915

`A332294(A332261(n+4))%A332263(n+1)`
-/

namespace A032451.P15245144278544485915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A332294 (A332261 (n + 4)).toNat) (A332263 (n + 1))

end

end A032451.P15245144278544485915

/-! ## A032451.P7096349051778853893

`A280996(n+5)%A088519(A147298(n+2))`
-/

namespace A032451.P7096349051778853893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A280996 (n + 5)) (A088519 (A147298 (n + 2)).toNat)

end

end A032451.P7096349051778853893

/-!
# A032452: Irregular triangle read by rows: row n >= 1 contains the sequence p(n), s(p(n)), p(s(p(n))), p(p(s(p(n)))), s(p(p(s(p(n))))), ..., repeatedly applying (p,s,p) to n, where p = phi (A000010), s = sigma = (A000203), stopping after the first 1 is reached. If 1 is never reached, row n contains -1.

The programs for A032452, there is no canonical definition to state claims against.
-/

/-! ## A032452.P15535256923554679014

`A334523(record[(n+1)%(A334523(n+1)+n)]+1)`
-/

namespace A032452.P15535256923554679014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A334523 (n + 1) + (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334523 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1).toNat

end

end A032452.P15535256923554679014

/-!
# A032458: Numbers k such that 163*2^k+1 is prime.

The programs for A032458, there is no canonical definition to state claims against.
-/

/-! ## A032458.P3119691626892516963

`record[A054541(A074206(n)+A025473(n+1))]`
-/

namespace A032458.P3119691626892516963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (A074206 n + A025473 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A032458.P3119691626892516963

/-! ## A032458.P8463926096341921924

`A227308(floor(log2(A065605(n))))`
-/

namespace A032458.P8463926096341921924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227308 (Nat.log 2 (A065605 n).toNat)

end

end A032458.P8463926096341921924

/-! ## A032458.P2914443192437715852

`record[A166597(record[A270160(n)])]`
-/

namespace A032458.P2914443192437715852
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270160 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166597 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A032458.P2914443192437715852

/-! ## A032458.P13408345744016885781

`A227308(∑[A025883(n)+1])`
-/

namespace A032458.P13408345744016885781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025883 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227308 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A032458.P13408345744016885781

/-! ## A032458.P9578148399367704618

`∑[A266161(record[A189111(n+1)])]`
-/

namespace A032458.P9578148399367704618
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189111 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266161 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A032458.P9578148399367704618

/-!
# A032459: Numbers k such that 165*2^k+1 is prime.

The programs for A032459, there is no canonical definition to state claims against.
-/

/-! ## A032459.P13523880848945846074

`∑[A046951(A329700(n)²)]`
-/

namespace A032459.P13523880848945846074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046951 (A329700 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A032459.P13523880848945846074

/-! ## A032459.P14626589011833942989

`∑[dr(A002260(A049312(n)))]`
-/

namespace A032459.P14626589011833942989
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A002260 (A049312 n).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A032459.P14626589011833942989

/-! ## A032459.P11267542618393330033

`∑[dr(A056556(A333160(n)))]`
-/

namespace A032459.P11267542618393330033
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A056556 (A333160 n).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A032459.P11267542618393330033

/-! ## A032459.P9447413676096173507

`A000700(floor(log2(A209070(n+4))))`
-/

namespace A032459.P9447413676096173507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000700 (Nat.log 2 (A209070 (n + 4)).toNat)

end

end A032459.P9447413676096173507

/-! ## A032459.P5404557301830899829

`eq[A049763(n+1), A321665(n)]`
-/

namespace A032459.P5404557301830899829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049763 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321665 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A032459.P5404557301830899829

/-!
# A032461: Numbers k such that 169*2^k+1 is prime.

The programs for A032461, there is no canonical definition to state claims against.
-/

/-! ## A032461.P2524967118967627648

`A067340(A233137(n+2)^A102426(n))`
-/

namespace A032461.P2524967118967627648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067340 (SequenceMachineLib.roundAway ((A233137 (n + 2) : ℚ) ^ (A102426 n : ℤ))).toNat

end

end A032461.P2524967118967627648

/-!
# A032462: Numbers k such that 171*2^k+1 is prime.

The programs for A032462, there is no canonical definition to state claims against.
-/

/-! ## A032462.P7976122654290418169

`A332820(A052957(n))+n+2`
-/

namespace A032462.P7976122654290418169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332820 (A052957 n).toNat + (n + 2 : ℤ)

end

end A032462.P7976122654290418169

/-!
# A032465: Numbers k such that 177*2^k+1 is prime.

The programs for A032465, there is no canonical definition to state claims against.
-/

/-! ## A032465.P7561714438482374915

`∑[A171868(n^val(A003064(n+1)+1, 2)+1)]`
-/

namespace A032465.P7561714438482374915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171868 (n ^ SequenceMachineLib.valuation (A003064 (n + 1) + 1).toNat 2 + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A032465.P7561714438482374915

/-!
# A032466: Numbers k such that 179*2^k+1 is prime.

The programs for A032466, there is no canonical definition to state claims against.
-/

/-! ## A032466.P5654982850768041601

`∩[A039083(n+1), A194440(n)]`
-/

namespace A032466.P5654982850768041601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039083 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194440 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A032466.P5654982850768041601

/-! ## A032466.P93216759601910815

`∩[A039083(n+1), A220520(n)]`
-/

namespace A032466.P93216759601910815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039083 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220520 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A032466.P93216759601910815

/-!
# A032467: Numbers k such that 181*2^k+1 is prime.

The programs for A032467, there is no canonical definition to state claims against.
-/

/-! ## A032467.P9485203380547267945

`p?[A304078(A135480(n))]+1`
-/

namespace A032467.P9485203380547267945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304078 (A135480 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 1

end

end A032467.P9485203380547267945

/-!
# A032470: Numbers k such that 187*2^k+1 is prime.

The programs for A032470, there is no canonical definition to state claims against.
-/

/-! ## A032470.P8045528308030412315

`A276073(A164549(n+1))+2`
-/

namespace A032470.P8045528308030412315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276073 (A164549 (n + 1)).toNat + 2

end

end A032470.P8045528308030412315

/-!
# A032476: Numbers k such that 199*2^k+1 is prime.

The programs for A032476, there is no canonical definition to state claims against.
-/

/-! ## A032476.P16997293878041608748

`A215807(A285475(n))`
-/

namespace A032476.P16997293878041608748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215807 (A285475 n).toNat

end

end A032476.P16997293878041608748

/-!
# A032480: Numbers k such that 207*2^k + 1 is prime.

The programs for A032480, there is no canonical definition to state claims against.
-/

/-! ## A032480.P1194870465081323957

`record[A072030(A042962(2*n+1))+1]`
-/

namespace A032480.P1194870465081323957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072030 (A042962 (2 * n + 1)).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A032480.P1194870465081323957

/-! ## A032480.P18072835244946835293

`A210961(A181416(n+1))+A174065(n+2)`
-/

namespace A032480.P18072835244946835293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210961 (A181416 (n + 1)).toNat + A174065 (n + 2)

end

end A032480.P18072835244946835293

/-!
# A032481: Numbers k such that 209*2^k+1 is prime.

The programs for A032481, there is no canonical definition to state claims against.
-/

/-! ## A032481.P12556237027450456961

`record[A300428(A300416(n+1)+2)]`
-/

namespace A032481.P12556237027450456961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300428 (A300416 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A032481.P12556237027450456961

/-! ## A032481.P11243688970256941961

`record[gcd(A130205(n+1), A131098(n+1))]`
-/

namespace A032481.P11243688970256941961
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A130205 (n + 1)) (A131098 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A032481.P11243688970256941961

/-!
# A032493: Numbers k such that 233*2^k+1 is prime.

The programs for A032493, there is no canonical definition to state claims against.
-/

/-! ## A032493.P7007096687636942754

`eq[val(n+1, 2), A080851(A245100(n+1))]`
-/

namespace A032493.P7007096687636942754
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080851 (A245100 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A032493.P7007096687636942754

/-! ## A032493.P1416557107070417500

`∑[gcd(A223176(2*(n+1)), A223181(n+1))]`
-/

namespace A032493.P1416557107070417500
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A223176 (2 * (n + 1))) (A223181 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A032493.P1416557107070417500

/-! ## A032493.P13991483447531424414

`eq[A008425(n), A359602(A359913(n+1))]`
-/

namespace A032493.P13991483447531424414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008425 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359602 (A359913 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A032493.P13991483447531424414

/-! ## A032493.P270578495018198843

`eq[A007814(n+1), A099608(A183391(n+1))]`
-/

namespace A032493.P270578495018198843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099608 (A183391 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A032493.P270578495018198843

/-! ## A032493.P9139851714448089514

`eq[A007814(n+1), A080851(A245100(n+1))]`
-/

namespace A032493.P9139851714448089514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080851 (A245100 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A032493.P9139851714448089514

/-!
# A032494: Numbers k such that 235*2^k+1 is prime.

The programs for A032494, there is no canonical definition to state claims against.
-/

/-! ## A032494.P3280452696156385818

`2*∑[∏{e}[∑[(n%or(1, n))!], #]]`
-/

namespace A032494.P3280452696156385818
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (n % Nat.lor 1 n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A032494.P3280452696156385818

/-! ## A032494.P4671006238482231499

`record[abs(A036263(abs(2-(2*n-3)²)+1))]`
-/

namespace A032494.P4671006238482231499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(A036263 (|2 - ((2 * n : ℤ) - 3) ^ 2| + 1).toNat)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A032494.P4671006238482231499

/-! ## A032494.P5763548499661146209

`∑[A213362(A009766(2*n))]`
-/

namespace A032494.P5763548499661146209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213362 (A009766 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A032494.P5763548499661146209

/-! ## A032494.P5613901578743864749

`eq[A194688(n+1), A271859(n)]`
-/

namespace A032494.P5613901578743864749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194688 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271859 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A032494.P5613901578743864749

/-! ## A032494.P14760128368303984025

`∑[A028641(A000084(n+1))]+2*n`
-/

namespace A032494.P14760128368303984025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028641 (A000084 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (2 * n : ℤ)

end

end A032494.P14760128368303984025

