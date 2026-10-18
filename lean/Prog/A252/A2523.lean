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
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C017
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C025
import Seq.B000.C027
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C035
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C007
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C003
import Seq.B003.C000
import Seq.B003.C002
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B006.C000
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
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
import Seq.Opaque.C015
import Seq.Opaque.C016
import Seq.Opaque.C017
import Seq.Opaque.C018
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C023
import Seq.Opaque.C025

/-!
# A252300: Number of (n+2)X(3+2) 0..3 arrays with every 3X3 subblock row and diagonal sum equal to 0 1 3 6 or 7 and every 3X3 column and antidiagonal sum not equal to 0 1 3 6 or 7.

The programs for A252300, there is no canonical definition to state claims against.
-/

/-! ## A252300.P8379141390799616597

`A252305(∑[n+3]+1)`
-/

namespace A252300.P8379141390799616597
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252305 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A252300.P8379141390799616597

/-! ## A252300.P16107992247656574109

`or(char[2], A252305(A034856(n+2)))`
-/

namespace A252300.P16107992247656574109
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A252305 (A034856 (n + 2)).toNat)

end

end A252300.P16107992247656574109

/-! ## A252300.P9254587639572800573

`A252305(A141214(n)+1)+char[24]`
-/

namespace A252300.P9254587639572800573
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  24

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252305 (A141214 n + 1).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A252300.P9254587639572800573

/-! ## A252300.P1962190266560024883

`A252305(A055999(n)+4)%A252309(n+1)`
-/

namespace A252300.P1962190266560024883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A252305 (A055999 n + 4).toNat) (A252309 (n + 1))

end

end A252300.P1962190266560024883

/-! ## A252300.P6420980276409821840

`A007318(C(2, n))*A252305(A141214(n)+1)`
-/

namespace A252300.P6420980276409821840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A252305 (A141214 n + 1).toNat

end

end A252300.P6420980276409821840

/-!
# A252301: Number of (n+2)X(4+2) 0..3 arrays with every 3X3 subblock row and diagonal sum equal to 0 1 3 6 or 7 and every 3X3 column and antidiagonal sum not equal to 0 1 3 6 or 7.

The programs for A252301, there is no canonical definition to state claims against.
-/

/-! ## A252301.P14351030766299689496

`A252305(∑[n+4]+3)`
-/

namespace A252301.P14351030766299689496
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252305 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A252301.P14351030766299689496

/-! ## A252301.P14884978073359095114

`A252305(A141214(n+1))+char[24]`
-/

namespace A252301.P14884978073359095114
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  24

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252305 (A141214 (n + 1)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A252301.P14884978073359095114

/-! ## A252301.P10658813523644751869

`A007318(C(n, 2))*A252305(A141214(n+1))`
-/

namespace A252301.P10658813523644751869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose n 2) * A252305 (A141214 (n + 1)).toNat

end

end A252301.P10658813523644751869

/-! ## A252301.P12296651832097072296

`A000041(C(2, n+2))*A252305(A055998(n+2))`
-/

namespace A252301.P12296651832097072296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose 2 (n + 2)) * A252305 (A055998 (n + 2)).toNat

end

end A252301.P12296651832097072296

/-! ## A252301.P7045258442201447966

`A000041(C(2, n+2))*A252305(A056000(n)+7)`
-/

namespace A252301.P7045258442201447966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose 2 (n + 2)) * A252305 (A056000 n + 7).toNat

end

end A252301.P7045258442201447966

/-!
# A252302: Number of (n+2)X(5+2) 0..3 arrays with every 3X3 subblock row and diagonal sum equal to 0 1 3 6 or 7 and every 3X3 column and antidiagonal sum not equal to 0 1 3 6 or 7.

The programs for A252302, there is no canonical definition to state claims against.
-/

/-! ## A252302.P9458562707965927378

`A252305(∑[n+5]+6)`
-/

namespace A252302.P9458562707965927378
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252305 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A252302.P9458562707965927378

/-! ## A252302.P16535883235169441028

`A252305(A046691(n+3))+char[20]`
-/

namespace A252302.P16535883235169441028
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  20

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252305 (A046691 (n + 3)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A252302.P16535883235169441028

/-! ## A252302.P15188401517170007514

`or(char[1], A252305(A056115(n)+11))`
-/

namespace A252302.P15188401517170007514
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A252305 (A056115 n + 11).toNat)

end

end A252302.P15188401517170007514

/-! ## A252302.P5555431538035555373

`A007318(C(2, n))*A252305(A056115(n)+11)`
-/

namespace A252302.P5555431538035555373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A252305 (A056115 n + 11).toNat

end

end A252302.P5555431538035555373

/-! ## A252302.P12532769229385896612

`A007318(C(n, 64))*A252305(A046691(n+3))`
-/

namespace A252302.P12532769229385896612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose n 64) * A252305 (A046691 (n + 3)).toNat

end

end A252302.P12532769229385896612

/-!
# A252303: Number of (n+2)X(6+2) 0..3 arrays with every 3X3 subblock row and diagonal sum equal to 0 1 3 6 or 7 and every 3X3 column and antidiagonal sum not equal to 0 1 3 6 or 7.

The programs for A252303, there is no canonical definition to state claims against.
-/

/-! ## A252303.P14588792888301727452

`A252305(A052905(n+3))`
-/

namespace A252303.P14588792888301727452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252305 (A052905 (n + 3)).toNat

end

end A252303.P14588792888301727452

/-! ## A252303.P5483922707246621547

`A252305(A056119(n)+16)`
-/

namespace A252303.P5483922707246621547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252305 (A056119 n + 16).toNat

end

end A252303.P5483922707246621547

/-! ## A252303.P13277991249544983717

`A252305(eq[3, A219347(n)])`
-/

namespace A252303.P13277991249544983717
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252305 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A252303.P13277991249544983717

/-! ## A252303.P4226393386347437401

`A252305(eq[5, A193592(n)])`
-/

namespace A252303.P4226393386347437401
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252305 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A252303.P4226393386347437401

/-! ## A252303.P7350989242083703842

`A252305(A055999(n+3)+1)`
-/

namespace A252303.P7350989242083703842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252305 (A055999 (n + 3) + 1).toNat

end

end A252303.P7350989242083703842

/-!
# A252304: Number of (n+2) X (7+2) 0..3 arrays with every 3 X 3 subblock row and diagonal sum equal to 0 1 3 6 or 7 and every 3 X 3 column and antidiagonal sum not equal to 0 1 3 6 or 7.

The programs for A252304, there is no canonical definition to state claims against.
-/

/-! ## A252304.P1198950397736273223

`A252305(A055999(n+4))`
-/

namespace A252304.P1198950397736273223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252305 (A055999 (n + 4)).toNat

end

end A252304.P1198950397736273223

/-! ## A252304.P3500403429756433108

`A252305(eq[4, A219347(n)])`
-/

namespace A252304.P3500403429756433108
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252305 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A252304.P3500403429756433108

/-! ## A252304.P17696400939270868301

`A252305(eq[6, A193592(n)])`
-/

namespace A252304.P17696400939270868301
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252305 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A252304.P17696400939270868301

/-! ## A252304.P18252090642464999994

`A252305(Δ[A023551(n+2)])`
-/

namespace A252304.P18252090642464999994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252305 (f1 (n + 1) - f1 n).toNat

end

end A252304.P18252090642464999994

/-! ## A252304.P11169385261272972576

`A252305(Δ[A026054(n+4)])`
-/

namespace A252304.P11169385261272972576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026054 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252305 (f1 (n + 1) - f1 n).toNat

end

end A252304.P11169385261272972576

/-!
# A252306: Number of (1+2)X(n+2) 0..3 arrays with every 3X3 subblock row and diagonal sum equal to 0 1 3 6 or 7 and every 3X3 column and antidiagonal sum not equal to 0 1 3 6 or 7.

The programs for A252306, there is no canonical definition to state claims against.
-/

/-! ## A252306.P9773586734609485790

`A252305(∑[n]+1)`
-/

namespace A252306.P9773586734609485790
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252305 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A252306.P9773586734609485790

/-! ## A252306.P6057454338062616545

`record[A252305(∑[gcd(1-n, floor(n/2))])]`
-/

namespace A252306.P6057454338062616545
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (1 - (n : ℤ)) ⌊(n : ℚ) / 2⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252305 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252306.P6057454338062616545

/-! ## A252306.P3590106338394731598

`record[A252305(∑[A057979(n)])]`
-/

namespace A252306.P3590106338394731598
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252305 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252306.P3590106338394731598

/-! ## A252306.P11835733333276813742

`record[A252305(record[A114220(n)])]`
-/

namespace A252306.P11835733333276813742
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114220 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252305 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252306.P11835733333276813742

/-! ## A252306.P15716507134263044171

`record[A252305(A114091(n+1))]`
-/

namespace A252306.P15716507134263044171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252305 (A114091 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252306.P15716507134263044171

/-!
# A252307: Number of (2+2)X(n+2) 0..3 arrays with every 3X3 subblock row and diagonal sum equal to 0 1 3 6 or 7 and every 3X3 column and antidiagonal sum not equal to 0 1 3 6 or 7.

The programs for A252307, there is no canonical definition to state claims against.
-/

/-! ## A252307.P4255918609098460932

`A252305(∑[n+1]+2)`
-/

namespace A252307.P4255918609098460932
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252305 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A252307.P4255918609098460932

/-! ## A252307.P10249503457778728995

`A252305(A000096(n)+3)+char[24]`
-/

namespace A252307.P10249503457778728995
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  24

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252305 (A000096 n + 3).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A252307.P10249503457778728995

/-! ## A252307.P6549439668199362901

`lcm((-1)^n, A252305(A133263(n+1)))`
-/

namespace A252307.P6549439668199362901
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (A252305 (A133263 (n + 1)).toNat)

end

end A252307.P6549439668199362901

/-! ## A252307.P1005768696387440220

`abs(A033999(n)*A252305(A133263(n+1)))`
-/

namespace A252307.P1005768696387440220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A033999 n * A252305 (A133263 (n + 1)).toNat|

end

end A252307.P1005768696387440220

/-! ## A252307.P2146753444067104781

`A252305(A133263(n+1))/A272901(n+1)`
-/

namespace A252307.P2146753444067104781
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A252305 (A133263 (n + 1)).toNat : ℚ) / (A272901 (n + 1) : ℚ)

end

end A252307.P2146753444067104781

/-!
# A252308: Number of (3+2)X(n+2) 0..3 arrays with every 3X3 subblock row and diagonal sum equal to 0 1 3 6 or 7 and every 3X3 column and antidiagonal sum not equal to 0 1 3 6 or 7.

The programs for A252308, there is no canonical definition to state claims against.
-/

/-! ## A252308.P9609128404184800880

`A252305(∑[n+2]+4)`
-/

namespace A252308.P9609128404184800880
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252305 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A252308.P9609128404184800880

/-! ## A252308.P18433420391599901815

`A252305(A046691(n)+7)+char[24]`
-/

namespace A252308.P18433420391599901815
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  24

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252305 (A046691 n + 7).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A252308.P18433420391599901815

/-! ## A252308.P3906907635519571889

`lcm((-1)^n, A252305(A167614(n+1)))`
-/

namespace A252308.P3906907635519571889
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (A252305 (A167614 (n + 1)).toNat)

end

end A252308.P3906907635519571889

/-! ## A252308.P12748497028327025440

`A252305(A167614(n+1))+A025443(n)`
-/

namespace A252308.P12748497028327025440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252305 (A167614 (n + 1)).toNat + A025443 n

end

end A252308.P12748497028327025440

/-! ## A252308.P14141607329423331974

`A252305(A167614(n+1))+A025469(n)`
-/

namespace A252308.P14141607329423331974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252305 (A167614 (n + 1)).toNat + A025469 n

end

end A252308.P14141607329423331974

/-!
# A252309: Number of (4+2)X(n+2) 0..3 arrays with every 3X3 subblock row and diagonal sum equal to 0 1 3 6 or 7 and every 3X3 column and antidiagonal sum not equal to 0 1 3 6 or 7.

The programs for A252309, there is no canonical definition to state claims against.
-/

/-! ## A252309.P8593502634594396233

`A252305(∑[n+3]+7)`
-/

namespace A252309.P8593502634594396233
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252305 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A252309.P8593502634594396233

/-! ## A252309.P6429002515826898644

`A252305(A055999(n)+10)+char[22]`
-/

namespace A252309.P6429002515826898644
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  22

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252305 (A055999 n + 10).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A252309.P6429002515826898644

/-! ## A252309.P8506068498411852299

`A252305(A000096(n+2)+5)+char[22]`
-/

namespace A252309.P8506068498411852299
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  22

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252305 (A000096 (n + 2) + 5).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A252309.P8506068498411852299

/-! ## A252309.P3496195621035420402

`A007318(C(n, 2))*A252305(A000096(n+2)+5)`
-/

namespace A252309.P3496195621035420402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose n 2) * A252305 (A000096 (n + 2) + 5).toNat

end

end A252309.P3496195621035420402

/-! ## A252309.P18115703893452658199

`A014963(9*n+6)*A252305(A055999(n)+10)`
-/

namespace A252309.P18115703893452658199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (9 * n + 6) * A252305 (A055999 n + 10).toNat

end

end A252309.P18115703893452658199

/-!
# A252310: Number of (5+2)X(n+2) 0..3 arrays with every 3X3 subblock row and diagonal sum equal to 0 1 3 6 or 7 and every 3X3 column and antidiagonal sum not equal to 0 1 3 6 or 7.

The programs for A252310, there is no canonical definition to state claims against.
-/

/-! ## A252310.P1276154666228455149

`A252305(C(n+6, 2)-n)`
-/

namespace A252310.P1276154666228455149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252305 (Nat.choose (n + 6) 2 - n)

end

end A252310.P1276154666228455149

/-! ## A252310.P6677175993138867209

`A252305(A167499(n+3))`
-/

namespace A252310.P6677175993138867209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252305 (A167499 (n + 3)).toNat

end

end A252310.P6677175993138867209

/-! ## A252310.P11675511556382401571

`A252305(A155212(n)+13)`
-/

namespace A252310.P11675511556382401571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252305 (A155212 n + 13).toNat

end

end A252310.P11675511556382401571

/-! ## A252310.P6939132107585583326

`A252305(A056000(n)+15)`
-/

namespace A252310.P6939132107585583326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252305 (A056000 n + 15).toNat

end

end A252310.P6939132107585583326

/-! ## A252310.P7333131470446230279

`A252305(eq[7, A066657(n)])`
-/

namespace A252310.P7333131470446230279
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252305 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A252310.P7333131470446230279

/-!
# A252311: Number of (6+2)X(n+2) 0..3 arrays with every 3X3 subblock row and diagonal sum equal to 0 1 3 6 or 7 and every 3X3 column and antidiagonal sum not equal to 0 1 3 6 or 7.

The programs for A252311, there is no canonical definition to state claims against.
-/

/-! ## A252311.P15639180355667089404

`A252305(∑[n+5]+16)`
-/

namespace A252311.P15639180355667089404
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252305 (∑ j ∈ Finset.range (n + 1), f1 j + 16)

end

end A252311.P15639180355667089404

/-!
# A252312: Number of (7+2)X(n+2) 0..3 arrays with every 3X3 subblock row and diagonal sum equal to 0 1 3 6 or 7 and every 3X3 column and antidiagonal sum not equal to 0 1 3 6 or 7.

The programs for A252312, there is no canonical definition to state claims against.
-/

/-! ## A252312.P9515767342988236292

`A252305(A056119(n)+28)`
-/

namespace A252312.P9515767342988236292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252305 (A056119 n + 28).toNat

end

end A252312.P9515767342988236292

/-! ## A252312.P8179573096930939430

`A252305(eq[11, A066657(n)])`
-/

namespace A252312.P8179573096930939430
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252305 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A252312.P8179573096930939430

/-! ## A252312.P7264342908285052309

`A252305(A167614(n+5)+4)`
-/

namespace A252312.P7264342908285052309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252305 (A167614 (n + 5) + 4).toNat

end

end A252312.P7264342908285052309

/-! ## A252312.P15255924090983841511

`A252305(A133263(n+6)+5)`
-/

namespace A252312.P15255924090983841511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252305 (A133263 (n + 6) + 5).toNat

end

end A252312.P15255924090983841511

/-! ## A252312.P14625447870790986229

`A252305(A000124(n+6)+6)`
-/

namespace A252312.P14625447870790986229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252305 (A000124 (n + 6) + 6).toNat

end

end A252312.P14625447870790986229

/-!
# A252313: Number of (n+2)X(n+2) 0..3 arrays with every 3X3 subblock row, column, diagonal and antidiagonal sum not equal to 0 1 3 6 or 7.

The programs for A252313, there is no canonical definition to state claims against.
-/

/-! ## A252313.P11438169458067836534

`A252321(∑[4*n]+1)`
-/

namespace A252313.P11438169458067836534
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252321 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A252313.P11438169458067836534

/-! ## A252313.P2364584432057900982

`record[gcd(A049581(n), A252321(n+1))]`
-/

namespace A252313.P2364584432057900982
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A049581 n) (A252321 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252313.P2364584432057900982

/-! ## A252313.P10108163872897677238

`lcm(A047020(n), A252321(A001844(n)))`
-/

namespace A252313.P10108163872897677238
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A047020 n) (A252321 (A001844 n).toNat)

end

end A252313.P10108163872897677238

/-! ## A252313.P5514066093211009068

`or(A016389(n), A252321(A001844(n)))`
-/

namespace A252313.P5514066093211009068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A016389 n) (A252321 (A001844 n).toNat)

end

end A252313.P5514066093211009068

/-! ## A252313.P4675567500499711293

`or(A058348(n), A252321(A001844(n)))`
-/

namespace A252313.P4675567500499711293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A058348 n) (A252321 (A001844 n).toNat)

end

end A252313.P4675567500499711293

/-!
# A252314: Number of (n+2)X(1+2) 0..3 arrays with every 3X3 subblock row, column, diagonal and antidiagonal sum not equal to 0 1 3 6 or 7.

The programs for A252314, there is no canonical definition to state claims against.
-/

/-! ## A252314.P3803896667293720002

`A252321(∑[n]+1)`
-/

namespace A252314.P3803896667293720002
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252321 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A252314.P3803896667293720002

/-! ## A252314.P12441949697601396725

`record[A252321(n+1)/A013612(n)]`
-/

namespace A252314.P12441949697601396725
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A252321 (n + 1) : ℚ) / (A013612 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252314.P12441949697601396725

/-! ## A252314.P3434855195498500053

`record[A252321(n+1)/A013613(n)]`
-/

namespace A252314.P3434855195498500053
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A252321 (n + 1) : ℚ) / (A013613 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252314.P3434855195498500053

/-! ## A252314.P15682176784643337331

`record[A252321(n+1)/A022171(n)]`
-/

namespace A252314.P15682176784643337331
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A252321 (n + 1) : ℚ) / (A022171 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252314.P15682176784643337331

/-! ## A252314.P362146689217314971

`record[gcd(A002262(n), A252321(n+1))]`
-/

namespace A252314.P362146689217314971
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A252321 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252314.P362146689217314971

/-!
# A252315: Number of (n+2)X(2+2) 0..3 arrays with every 3X3 subblock row, column, diagonal and antidiagonal sum not equal to 0 1 3 6 or 7.

The programs for A252315, there is no canonical definition to state claims against.
-/

/-! ## A252315.P10061870694551746579

`A252321(∑[n+1]+2)`
-/

namespace A252315.P10061870694551746579
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252321 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A252315.P10061870694551746579

/-! ## A252315.P18070846900514028929

`A252321(A252460(2*(n+2)))%A017514(n)`
-/

namespace A252315.P18070846900514028929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A252321 (A252460 (2 * (n + 2))).toNat) (A017514 n)

end

end A252315.P18070846900514028929

/-! ## A252315.P15099969666330798059

`A166752(2*n+1)*A252321(A252460(2*(n+2)))`
-/

namespace A252315.P15099969666330798059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166752 (2 * n + 1) * A252321 (A252460 (2 * (n + 2))).toNat

end

end A252315.P15099969666330798059

/-! ## A252315.P13965470372300753775

`A252321(A252460(2*(n+2)))*A307090(A000196(n))`
-/

namespace A252315.P13965470372300753775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252321 (A252460 (2 * (n + 2))).toNat * A307090 (A000196 n).toNat

end

end A252315.P13965470372300753775

/-! ## A252315.P15430216028552274183

`A000196(A151935(n)+1)*A252321(A252460(2*(n+2)))`
-/

namespace A252315.P15430216028552274183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A151935 n + 1).toNat * A252321 (A252460 (2 * (n + 2))).toNat

end

end A252315.P15430216028552274183

/-!
# A252316: Number of (n+2)X(3+2) 0..3 arrays with every 3X3 subblock row, column, diagonal and antidiagonal sum not equal to 0 1 3 6 or 7.

The programs for A252316, there is no canonical definition to state claims against.
-/

/-! ## A252316.P12586169356128864523

`A252321(∑[n+2]+4)`
-/

namespace A252316.P12586169356128864523
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252321 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A252316.P12586169356128864523

/-! ## A252316.P4553677072117751848

`or(A089013(n), A252321(A167614(n+1)))`
-/

namespace A252316.P4553677072117751848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A089013 n) (A252321 (A167614 (n + 1)).toNat)

end

end A252316.P4553677072117751848

/-! ## A252316.P11681572128077438359

`A252321(A167614(n+1))+A052375(n+1)`
-/

namespace A252316.P11681572128077438359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252321 (A167614 (n + 1)).toNat + A052375 (n + 1)

end

end A252316.P11681572128077438359

/-! ## A252316.P15079894790654838894

`A252321(A167614(n+1))-A063524(2*n)`
-/

namespace A252316.P15079894790654838894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252321 (A167614 (n + 1)).toNat - A063524 (2 * n)

end

end A252316.P15079894790654838894

/-! ## A252316.P13906531871508346034

`or(A083918(n+1), A252321(A167614(n+1)))`
-/

namespace A252316.P13906531871508346034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A083918 (n + 1)) (A252321 (A167614 (n + 1)).toNat)

end

end A252316.P13906531871508346034

/-!
# A252317: Number of (n+2)X(4+2) 0..3 arrays with every 3X3 subblock row, column, diagonal and antidiagonal sum not equal to 0 1 3 6 or 7.

The programs for A252317, there is no canonical definition to state claims against.
-/

/-! ## A252317.P13548739840271061796

`A252321(∑[n+3]+7)`
-/

namespace A252317.P13548739840271061796
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252321 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A252317.P13548739840271061796

/-!
# A252318: Number of (n+2)X(5+2) 0..3 arrays with every 3X3 subblock row, column, diagonal and antidiagonal sum not equal to 0 1 3 6 or 7.

The programs for A252318, there is no canonical definition to state claims against.
-/

/-! ## A252318.P10861802035574937310

`A252321(A167499(n+3))`
-/

namespace A252318.P10861802035574937310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252321 (A167499 (n + 3)).toNat

end

end A252318.P10861802035574937310

/-! ## A252318.P1867255481252648931

`A252321(A167614(n+3)+2)`
-/

namespace A252318.P1867255481252648931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252321 (A167614 (n + 3) + 2).toNat

end

end A252318.P1867255481252648931

/-! ## A252318.P143346081408332793

`A252321(A133263(n+4)+3)`
-/

namespace A252318.P143346081408332793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252321 (A133263 (n + 4) + 3).toNat

end

end A252318.P143346081408332793

/-! ## A252318.P852646213076936177

`A252321(A000217(n+4)+5)`
-/

namespace A252318.P852646213076936177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252321 (A000217 (n + 4) + 5).toNat

end

end A252318.P852646213076936177

/-! ## A252318.P12313249072804310751

`A252321(eq[5, A002260(n+1)]+1)`
-/

namespace A252318.P12313249072804310751
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252321 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A252318.P12313249072804310751

/-!
# A252319: Number of (n+2)X(6+2) 0..3 arrays with every 3X3 subblock row, column, diagonal and antidiagonal sum not equal to 0 1 3 6 or 7.

The programs for A252319, there is no canonical definition to state claims against.
-/

/-! ## A252319.P7410436249414007869

`A252321(A167614(n+4)+3)`
-/

namespace A252319.P7410436249414007869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252321 (A167614 (n + 4) + 3).toNat

end

end A252319.P7410436249414007869

/-! ## A252319.P10534294549725402753

`A252321(eq[6, A002260(n+1)]+1)`
-/

namespace A252319.P10534294549725402753
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252321 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A252319.P10534294549725402753

/-! ## A252319.P15198227289897482590

`A252321(A133263(n+2)+A016777(n+5))`
-/

namespace A252319.P15198227289897482590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252321 (A133263 (n + 2) + A016777 (n + 5)).toNat

end

end A252319.P15198227289897482590

/-! ## A252319.P6350282858362755210

`A252321(A005843(n+7)+A000124(n+3))`
-/

namespace A252319.P6350282858362755210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252321 (A005843 (n + 7) + A000124 (n + 3)).toNat

end

end A252319.P6350282858362755210

/-! ## A252319.P9923142291786670378

`A252321(A000124(n+8)-A016777(n+5))`
-/

namespace A252319.P9923142291786670378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252321 (A000124 (n + 8) - A016777 (n + 5)).toNat

end

end A252319.P9923142291786670378

/-!
# A252320: Number of (n+2)X(7+2) 0..3 arrays with every 3X3 subblock row, column, diagonal and antidiagonal sum not equal to 0 1 3 6 or 7.

The programs for A252320, there is no canonical definition to state claims against.
-/

/-! ## A252320.P8202041705140829790

`A252321(eq[8, A131818(n+1)])`
-/

namespace A252320.P8202041705140829790
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252321 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A252320.P8202041705140829790

/-! ## A252320.P15318445811878774542

`A252321(A374008(n+1))`
-/

namespace A252320.P15318445811878774542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252321 (A374008 (n + 1)).toNat

end

end A252320.P15318445811878774542

/-! ## A252320.P6610583707118083480

`A252321(A055999(n+4))`
-/

namespace A252320.P6610583707118083480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252321 (A055999 (n + 4)).toNat

end

end A252320.P6610583707118083480

/-! ## A252320.P7424879921278627071

`A252321(eq[4, A219347(n)])`
-/

namespace A252320.P7424879921278627071
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252321 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A252320.P7424879921278627071

/-! ## A252320.P11658961198851542824

`A252321(eq[6, A193592(n)])`
-/

namespace A252320.P11658961198851542824
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252321 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A252320.P11658961198851542824

/-!
# A252322: Number of (n+2)X(1+2) 0..3 arrays with no row, column, diagonal or antidiagonal in any 3X3 subblock summing to 3 or 6.

The programs for A252322, there is no canonical definition to state claims against.
-/

/-! ## A252322.P8051303784163579023

`A252325(∑[n]+1)`
-/

namespace A252322.P8051303784163579023
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252325 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A252322.P8051303784163579023

/-! ## A252322.P5379798509033928769

`lcm(2, A252325(A000124(n)))`
-/

namespace A252322.P5379798509033928769
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A252325 (A000124 n).toNat)

end

end A252322.P5379798509033928769

/-! ## A252322.P11075869712245352201

`record[A252325(A114091(n+1))]`
-/

namespace A252322.P11075869712245352201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252325 (A114091 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252322.P11075869712245352201

/-! ## A252322.P6210663832432735667

`record[A252325(A246276(n+1))]`
-/

namespace A252322.P6210663832432735667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252325 (A246276 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252322.P6210663832432735667

/-! ## A252322.P9767898287211063367

`record[A010054(n)*A252325(n+1)]`
-/

namespace A252322.P9767898287211063367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A252325 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252322.P9767898287211063367

/-!
# A252323: Number of (n+2)X(2+2) 0..3 arrays with no row, column, diagonal or antidiagonal in any 3X3 subblock summing to 3 or 6.

The programs for A252323, there is no canonical definition to state claims against.
-/

/-! ## A252323.P434549692387000636

`A252325(∑[n+1]+2)`
-/

namespace A252323.P434549692387000636
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252325 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A252323.P434549692387000636

/-! ## A252323.P13519940101067879048

`record[A252325(A114091(n+1)+1)]`
-/

namespace A252323.P13519940101067879048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252325 (A114091 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252323.P13519940101067879048

/-! ## A252323.P1006107818473926427

`record[A010054(n)*A252325(n+2)]`
-/

namespace A252323.P1006107818473926427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A252325 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252323.P1006107818473926427

/-! ## A252323.P318781016049640365

`A332639(n)+A252325(A373662(n+1))`
-/

namespace A252323.P318781016049640365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332639 n + A252325 (A373662 (n + 1)).toNat

end

end A252323.P318781016049640365

/-!
# A252324: Number of (n+2)X(3+2) 0..3 arrays with no row, column, diagonal or antidiagonal in any 3X3 subblock summing to 3 or 6.

The programs for A252324, there is no canonical definition to state claims against.
-/

/-! ## A252324.P12855555299898508055

`A252325(∑[n+2]+4)`
-/

namespace A252324.P12855555299898508055
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252325 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A252324.P12855555299898508055

/-! ## A252324.P4242402615017508236

`lcm(2, A252325(A167614(n+1)))`
-/

namespace A252324.P4242402615017508236
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A252325 (A167614 (n + 1)).toNat)

end

end A252324.P4242402615017508236

/-! ## A252324.P17248389246976263557

`record[A252325(n+4)/A113387(n)]`
-/

namespace A252324.P17248389246976263557
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A252325 (n + 4) : ℚ) / (A113387 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252324.P17248389246976263557

/-!
# A252326: Number of (n+2)X(n+2) 0..3 arrays with every 3X3 subblock row and column sum equal to 0 3 5 6 or 8 and every 3X3 diagonal and antidiagonal sum not equal to 0 3 5 6 or 8.

The programs for A252326, there is no canonical definition to state claims against.
-/

/-! ## A252326.P5035102433665812523

`A252334((n+1)²+n²)`
-/

namespace A252326.P5035102433665812523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252334 ((n + 1) ^ 2 + n ^ 2)

end

end A252326.P5035102433665812523

/-! ## A252326.P4290192044411401709

`record[A003982(n)*A252334(n+1)]`
-/

namespace A252326.P4290192044411401709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A252334 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252326.P4290192044411401709

/-! ## A252326.P2182660437669785058

`record[gcd(A114327(n), A252334(n+1))]`
-/

namespace A252326.P2182660437669785058
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A114327 n) (A252334 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252326.P2182660437669785058

/-! ## A252326.P5506164620385930902

`lcm(A033999(n), A252334(A001844(n)))`
-/

namespace A252326.P5506164620385930902
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A252334 (A001844 n).toNat)

end

end A252326.P5506164620385930902

/-! ## A252326.P9698248480063646281

`A252334(A001844(n))+A082996(n+1)`
-/

namespace A252326.P9698248480063646281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252334 (A001844 n).toNat + A082996 (n + 1)

end

end A252326.P9698248480063646281

/-!
# A252327: Number of (n+2)X(1+2) 0..3 arrays with every 3X3 subblock row and column sum equal to 0 3 5 6 or 8 and every 3X3 diagonal and antidiagonal sum not equal to 0 3 5 6 or 8.

The programs for A252327, there is no canonical definition to state claims against.
-/

/-! ## A252327.P6985871595861470167

`A252334(∑[n]+1)`
-/

namespace A252327.P6985871595861470167
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252334 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A252327.P6985871595861470167

/-! ## A252327.P15923276865338539564

`record[A010054(n)*A252334(n+1)]`
-/

namespace A252327.P15923276865338539564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A252334 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252327.P15923276865338539564

/-! ## A252327.P7211789362632284584

`record[gcd(A002262(n), A252334(n+1))]`
-/

namespace A252327.P7211789362632284584
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A252334 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252327.P7211789362632284584

/-! ## A252327.P8662662566123157744

`record[A252334(n+1)/A008277(n+1)]`
-/

namespace A252327.P8662662566123157744
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A252334 (n + 1) : ℚ) / (A008277 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252327.P8662662566123157744

/-! ## A252327.P6180793616513866371

`record[A252334(n+1)/A163269(n+1)]`
-/

namespace A252327.P6180793616513866371
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A252334 (n + 1) : ℚ) / (A163269 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252327.P6180793616513866371

/-!
# A252328: Number of (n+2)X(2+2) 0..3 arrays with every 3X3 subblock row and column sum equal to 0 3 5 6 or 8 and every 3X3 diagonal and antidiagonal sum not equal to 0 3 5 6 or 8.

The programs for A252328, there is no canonical definition to state claims against.
-/

/-! ## A252328.P15062853011697160594

`A252334(∑[n+1]+2)`
-/

namespace A252328.P15062853011697160594
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252334 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A252328.P15062853011697160594

/-! ## A252328.P9778614055714395023

`record[A010054(n)*A252334(n+2)]`
-/

namespace A252328.P9778614055714395023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A252334 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252328.P9778614055714395023

/-! ## A252328.P11711568908198219276

`record[gcd(A002262(n), A252334(n+2))]`
-/

namespace A252328.P11711568908198219276
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A252334 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252328.P11711568908198219276

/-! ## A252328.P16647406079702112064

`A252334(A252460(2*(n+2)))+char[31]`
-/

namespace A252328.P16647406079702112064
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  31

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252334 (A252460 (2 * (n + 2))).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A252328.P16647406079702112064

/-! ## A252328.P14162737228672138356

`record[A252334(A133263(A110659(n)))]`
-/

namespace A252328.P14162737228672138356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252334 (A133263 (A110659 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252328.P14162737228672138356

/-!
# A252329: Number of (n+2)X(3+2) 0..3 arrays with every 3X3 subblock row and column sum equal to 0 3 5 6 or 8 and every 3X3 diagonal and antidiagonal sum not equal to 0 3 5 6 or 8.

The programs for A252329, there is no canonical definition to state claims against.
-/

/-! ## A252329.P14418445882341168129

`A252334(∑[n+2]+4)`
-/

namespace A252329.P14418445882341168129
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252334 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A252329.P14418445882341168129

/-! ## A252329.P4072511868665504692

`or(A000007(n), A252334(A167614(n+1)))`
-/

namespace A252329.P4072511868665504692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A252334 (A167614 (n + 1)).toNat)

end

end A252329.P4072511868665504692

/-! ## A252329.P9682777012383490033

`or(A000007(n), A252334(A167499(n)+n))`
-/

namespace A252329.P9682777012383490033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A252334 (A167499 n + (n : ℤ)).toNat)

end

end A252329.P9682777012383490033

/-! ## A252329.P13799957287431135577

`or(A014083(n), A252334(A167499(n)+n))`
-/

namespace A252329.P13799957287431135577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A014083 n) (A252334 (A167499 n + (n : ℤ)).toNat)

end

end A252329.P13799957287431135577

/-! ## A252329.P4869445931845904152

`A252334(A167614(n+1))+A000007(n+1)`
-/

namespace A252329.P4869445931845904152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252334 (A167614 (n + 1)).toNat + A000007 (n + 1)

end

end A252329.P4869445931845904152

/-!
# A252330: Number of (n+2)X(4+2) 0..3 arrays with every 3X3 subblock row and column sum equal to 0 3 5 6 or 8 and every 3X3 diagonal and antidiagonal sum not equal to 0 3 5 6 or 8.

The programs for A252330, there is no canonical definition to state claims against.
-/

/-! ## A252330.P11595407537187803962

`A252334(A374004(n+1))`
-/

namespace A252330.P11595407537187803962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252334 (A374004 (n + 1)).toNat

end

end A252330.P11595407537187803962

/-! ## A252330.P17697338690891265175

`A252334(A141214(n)+7)`
-/

namespace A252330.P17697338690891265175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252334 (A141214 n + 7).toNat

end

end A252330.P17697338690891265175

/-! ## A252330.P5897364102130616127

`A252334(A052905(n)+9)`
-/

namespace A252330.P5897364102130616127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252334 (A052905 n + 9).toNat

end

end A252330.P5897364102130616127

/-! ## A252330.P2208552021845178015

`A252334(A055999(n)+10)`
-/

namespace A252330.P2208552021845178015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252334 (A055999 n + 10).toNat

end

end A252330.P2208552021845178015

/-! ## A252330.P15092712523338572876

`A252334(A167614(n+2)+1)`
-/

namespace A252330.P15092712523338572876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252334 (A167614 (n + 2) + 1).toNat

end

end A252330.P15092712523338572876

/-!
# A252331: Number of (n+2)X(5+2) 0..3 arrays with every 3X3 subblock row and column sum equal to 0 3 5 6 or 8 and every 3X3 diagonal and antidiagonal sum not equal to 0 3 5 6 or 8.

The programs for A252331, there is no canonical definition to state claims against.
-/

/-! ## A252331.P15522118563668664082

`A252334(A374005(n+1))`
-/

namespace A252331.P15522118563668664082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252334 (A374005 (n + 1)).toNat

end

end A252331.P15522118563668664082

/-! ## A252331.P4315808863898872595

`A252334(A167499(n+3))`
-/

namespace A252331.P4315808863898872595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252334 (A167499 (n + 3)).toNat

end

end A252331.P4315808863898872595

/-! ## A252331.P16084836290474445832

`A252334(A161680(n+5)+5)`
-/

namespace A252331.P16084836290474445832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252334 (A161680 (n + 5) + 5).toNat

end

end A252331.P16084836290474445832

/-! ## A252331.P14426740355973172874

`A252334(Δ[A006503(n+1)]+8)`
-/

namespace A252331.P14426740355973172874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006503 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252334 (f1 (n + 1) - f1 n + 8).toNat

end

end A252331.P14426740355973172874

/-! ## A252331.P15698945332940286667

`A252334(A038722(Δ[A023545(n+1)]))`
-/

namespace A252331.P15698945332940286667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252334 (A038722 (f1 (n + 1) - f1 n).toNat).toNat

end

end A252331.P15698945332940286667

/-!
# A252332: Number of (n+2)X(6+2) 0..3 arrays with every 3X3 subblock row and column sum equal to 0 3 5 6 or 8 and every 3X3 diagonal and antidiagonal sum not equal to 0 3 5 6 or 8.

The programs for A252332, there is no canonical definition to state claims against.
-/

/-! ## A252332.P14954232415376550710

`A252334(A374007(n+1))`
-/

namespace A252332.P14954232415376550710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252334 (A374007 (n + 1)).toNat

end

end A252332.P14954232415376550710

/-! ## A252332.P6018987691361410426

`A252334(A000217(n+5)+6)`
-/

namespace A252332.P6018987691361410426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252334 (A000217 (n + 5) + 6).toNat

end

end A252332.P6018987691361410426

/-! ## A252332.P13912628560980988106

`A252334(A161680(n+6)+6)`
-/

namespace A252332.P13912628560980988106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252334 (A161680 (n + 6) + 6).toNat

end

end A252332.P13912628560980988106

/-! ## A252332.P14390611256480550677

`A252334(A000124(n+6)-(n+1))`
-/

namespace A252332.P14390611256480550677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252334 (A000124 (n + 6) - (n + 1 : ℤ)).toNat

end

end A252332.P14390611256480550677

/-! ## A252332.P16445315077841988321

`A252334(A141214(n)+A020744(n+5))`
-/

namespace A252332.P16445315077841988321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252334 (A141214 n + A020744 (n + 5)).toNat

end

end A252332.P16445315077841988321

/-!
# A252333: Number of (n+2)X(7+2) 0..3 arrays with every 3X3 subblock row and column sum equal to 0 3 5 6 or 8 and every 3X3 diagonal and antidiagonal sum not equal to 0 3 5 6 or 8.

The programs for A252333, there is no canonical definition to state claims against.
-/

/-! ## A252333.P1445958842465490927

`A252334(A374008(n+1))`
-/

namespace A252333.P1445958842465490927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252334 (A374008 (n + 1)).toNat

end

end A252333.P1445958842465490927

/-! ## A252333.P6593352426224518058

`A252334(A167614(n+5)+4)`
-/

namespace A252333.P6593352426224518058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252334 (A167614 (n + 5) + 4).toNat

end

end A252333.P6593352426224518058

/-! ## A252333.P9935385805693900063

`A252334(A133263(n+6)+5)`
-/

namespace A252333.P9935385805693900063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252334 (A133263 (n + 6) + 5).toNat

end

end A252333.P9935385805693900063

/-! ## A252333.P15928742993920891618

`A252334(A000217(n+6)+7)`
-/

namespace A252333.P15928742993920891618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252334 (A000217 (n + 6) + 7).toNat

end

end A252333.P15928742993920891618

/-! ## A252333.P16404458573529185746

`A252334(A161680(n+7)+7)`
-/

namespace A252333.P16404458573529185746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252334 (A161680 (n + 7) + 7).toNat

end

end A252333.P16404458573529185746

/-!
# A252335: Number of (n+2)X(n+2) 0..2 arrays with every 3X3 subblock row, column, diagonal and antidiagonal sum not equal to 2 3 or 4.

The programs for A252335, there is no canonical definition to state claims against.
-/

/-! ## A252335.P18231019056309258321

`2*A255019(n+1)`
-/

namespace A252335.P18231019056309258321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A255019 (n + 1)

end

end A252335.P18231019056309258321

/-! ## A252335.P20702040968722710

`A252343(∑[4*n]+1)`
-/

namespace A252335.P20702040968722710
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252343 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A252335.P20702040968722710

/-! ## A252335.P12959714699211014430

`2*A255027(record[Δ[A235355(n)]])`
-/

namespace A252335.P12959714699211014430
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235355 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A255027 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A252335.P12959714699211014430

/-! ## A252335.P15806844828851092989

`record[root(A252343(n+1), A143182(n))]`
-/

namespace A252335.P15806844828851092989
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A252343 (n + 1) : ℝ) ^ (1 / (A143182 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252335.P15806844828851092989

/-! ## A252335.P13922633790057257592

`record[2*root(A255027(n+1), A143182(n))]`
-/

namespace A252335.P13922633790057257592
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  2 * (A255027 (n + 1) : ℝ) ^ (1 / (A143182 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252335.P13922633790057257592

/-!
# A252336: Number of (n+2) X (1+2) 0..2 arrays with every 3 X 3 subblock row, column, diagonal and antidiagonal sum not equal to 2 3 or 4.

The programs for A252336, there is no canonical definition to state claims against.
-/

/-! ## A252336.P2791488471474242045

`2*A255020(n+1)`
-/

namespace A252336.P2791488471474242045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A255020 (n + 1)

end

end A252336.P2791488471474242045

/-! ## A252336.P7581549833062121616

`A255020(n+1)+A255020(Δ[n²]-n)`
-/

namespace A252336.P7581549833062121616
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255020 (n + 1) + A255020 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat

end

end A252336.P7581549833062121616

/-! ## A252336.P6701641311365435247

`A255020(n+1)+record[A255020(A027750(n+1))]`
-/

namespace A252336.P6701641311365435247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255020 (A027750 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255020 (n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252336.P6701641311365435247

/-! ## A252336.P13105292515427280102

`A255020(n+1)+record[A255020(A032742(n+1))]`
-/

namespace A252336.P13105292515427280102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255020 (A032742 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255020 (n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252336.P13105292515427280102

/-! ## A252336.P3970204380874444529

`record[2*A255020(A134478(n))]`
-/

namespace A252336.P3970204380874444529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A255020 (A134478 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252336.P3970204380874444529

/-! ## A252336.P1697308561008958245

`A255020(n+1)+record[A255020(A134478(n))]`
-/

namespace A252336.P1697308561008958245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255020 (A134478 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255020 (n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252336.P1697308561008958245

/-! ## A252336.P983339567815662048

`A255020(n+1)+A255020(n+1)%A255021(n+1)`
-/

namespace A252336.P983339567815662048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255020 (n + 1) + Int.tmod (A255020 (n + 1)) (A255021 (n + 1))

end

end A252336.P983339567815662048

/-! ## A252336.P5279310520294326504

`record[2*A255020(A143182(n))]`
-/

namespace A252336.P5279310520294326504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A255020 (A143182 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252336.P5279310520294326504

/-! ## A252336.P9305077383550958896

`A255020(n+1)+record[A255020(A143182(n))]`
-/

namespace A252336.P9305077383550958896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255020 (A143182 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255020 (n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252336.P9305077383550958896

/-!
# A252337: Number of (n+2) X (2+2) 0..2 arrays with every 3 X 3 subblock row, column, diagonal and antidiagonal sum not equal to 2 3 or 4.

The programs for A252337, there is no canonical definition to state claims against.
-/

/-! ## A252337.P15024364655974395657

`2*A255021(n+1)`
-/

namespace A252337.P15024364655974395657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A255021 (n + 1)

end

end A252337.P15024364655974395657

/-! ## A252337.P8385969420702974741

`record[2*A255021(A134478(n))]`
-/

namespace A252337.P8385969420702974741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A255021 (A134478 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252337.P8385969420702974741

/-! ## A252337.P1838808078929020884

`A255021(n+1)+A255021(Δ[n²]-n)`
-/

namespace A252337.P1838808078929020884
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255021 (n + 1) + A255021 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat

end

end A252337.P1838808078929020884

/-! ## A252337.P2185342416945441667

`A255021(n+1)+record[A255021(A134478(n))]`
-/

namespace A252337.P2185342416945441667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255021 (A134478 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255021 (n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252337.P2185342416945441667

/-! ## A252337.P5788983958538195923

`A255021(n+1)+record[A255021(A027750(n+1))]`
-/

namespace A252337.P5788983958538195923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255021 (A027750 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255021 (n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252337.P5788983958538195923

/-! ## A252337.P6807533561791413533

`A255021(n+1)+record[A255021(A032742(n+1))]`
-/

namespace A252337.P6807533561791413533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255021 (A032742 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255021 (n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252337.P6807533561791413533

/-! ## A252337.P17150176574918335880

`A252263(n+1)+A252263(n+1)-A252363(n+1)`
-/

namespace A252337.P17150176574918335880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252263 (n + 1) + (A252263 (n + 1) - A252363 (n + 1))

end

end A252337.P17150176574918335880

/-! ## A252337.P8596858814818140515

`2*A252263(n+1)-A252363(n+1)`
-/

namespace A252337.P8596858814818140515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A252263 (n + 1) - A252363 (n + 1)

end

end A252337.P8596858814818140515

/-! ## A252337.P14461436951369706696

`A255021(n+1)+A255021(n+1)%A255022(n+1)`
-/

namespace A252337.P14461436951369706696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255021 (n + 1) + Int.tmod (A255021 (n + 1)) (A255022 (n + 1))

end

end A252337.P14461436951369706696

/-! ## A252337.P2245150079264780404

`record[2*A255021(A143182(n))]`
-/

namespace A252337.P2245150079264780404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A255021 (A143182 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252337.P2245150079264780404

/-! ## A252337.P12997567797514503689

`A255021(n+1)+record[A255021(A143182(n))]`
-/

namespace A252337.P12997567797514503689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255021 (A143182 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255021 (n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252337.P12997567797514503689

/-!
# A252338: Number of (n+2)X(3+2) 0..2 arrays with every 3X3 subblock row, column, diagonal and antidiagonal sum not equal to 2 3 or 4.

The programs for A252338, there is no canonical definition to state claims against.
-/

/-! ## A252338.P14000448062974987343

`2*A255022(n+1)`
-/

namespace A252338.P14000448062974987343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A255022 (n + 1)

end

end A252338.P14000448062974987343

/-! ## A252338.P12458652559334218531

`lcm(2, A255022(A000027(n+1)))`
-/

namespace A252338.P12458652559334218531
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A255022 (A000027 (n + 1)).toNat)

end

end A252338.P12458652559334218531

/-! ## A252338.P18424804377815140176

`A255022(n+1)+A255022(Δ[n²]-n)`
-/

namespace A252338.P18424804377815140176
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255022 (n + 1) + A255022 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat

end

end A252338.P18424804377815140176

/-! ## A252338.P17632197946249597883

`lcm(A001316(A001316(n)), A255022(n+1))`
-/

namespace A252338.P17632197946249597883
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A001316 (A001316 n).toNat) (A255022 (n + 1))

end

end A252338.P17632197946249597883

/-! ## A252338.P9066937589095434926

`A255022(n+1)+A255022(n+1)/A033999(n)²`
-/

namespace A252338.P9066937589095434926
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A255022 (n + 1) : ℚ) + (A255022 (n + 1) : ℚ) / (A033999 n ^ 2 : ℚ)

end

end A252338.P9066937589095434926

/-!
# A252339: Number of (n+2)X(4+2) 0..2 arrays with every 3X3 subblock row, column, diagonal and antidiagonal sum not equal to 2 3 or 4.

The programs for A252339, there is no canonical definition to state claims against.
-/

/-! ## A252339.P13963767591304601727

`2*A255023(n+1)`
-/

namespace A252339.P13963767591304601727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A255023 (n + 1)

end

end A252339.P13963767591304601727

/-! ## A252339.P18307893740326992420

`A255023(1-(n-2*n))/cot(atan(2))`
-/

namespace A252339.P18307893740326992420
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A255023 (1 - ((n : ℤ) - (2 * n : ℤ))).toNat : ℝ) / Real.cot (Real.arctan (2 : ℝ))

end

end A252339.P18307893740326992420

/-! ## A252339.P15734168495887429262

`record[2*A255023(A134478(n))]`
-/

namespace A252339.P15734168495887429262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A255023 (A134478 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252339.P15734168495887429262

/-! ## A252339.P6938330935207319244

`A255023(n+1)+A255023(Δ[n²]-n)`
-/

namespace A252339.P6938330935207319244
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255023 (n + 1) + A255023 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat

end

end A252339.P6938330935207319244

/-! ## A252339.P11695799970042759067

`A255023(n+1)+record[A255023(A134478(n))]`
-/

namespace A252339.P11695799970042759067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255023 (A134478 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255023 (n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252339.P11695799970042759067

/-! ## A252339.P5557017093695711413

`record[2*A255023(A143182(n))]`
-/

namespace A252339.P5557017093695711413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A255023 (A143182 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252339.P5557017093695711413

/-! ## A252339.P12151965720574882932

`A255023(n+1)+record[A255023(A143182(n))]`
-/

namespace A252339.P12151965720574882932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255023 (A143182 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255023 (n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252339.P12151965720574882932

/-!
# A252340: Number of (n+2)X(5+2) 0..2 arrays with every 3X3 subblock row, column, diagonal and antidiagonal sum not equal to 2 3 or 4.

The programs for A252340, there is no canonical definition to state claims against.
-/

/-! ## A252340.P9307124198432976541

`2*A255024(n+1)`
-/

namespace A252340.P9307124198432976541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A255024 (n + 1)

end

end A252340.P9307124198432976541

/-! ## A252340.P57349569880213894

`A255024(n+1)+A255024(Δ[n²]-n)`
-/

namespace A252340.P57349569880213894
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255024 (n + 1) + A255024 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat

end

end A252340.P57349569880213894

/-! ## A252340.P4840116001739313736

`2*A255027(A374005(n+1))`
-/

namespace A252340.P4840116001739313736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A255027 (A374005 (n + 1)).toNat

end

end A252340.P4840116001739313736

/-! ## A252340.P2722760420929095075

`2*A255027(A056000(n)+15)`
-/

namespace A252340.P2722760420929095075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A255027 (A056000 n + 15).toNat

end

end A252340.P2722760420929095075

/-! ## A252340.P11605567170790932093

`2*A255027(A052905(n+1)+10)`
-/

namespace A252340.P11605567170790932093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A255027 (A052905 (n + 1) + 10).toNat

end

end A252340.P11605567170790932093

/-!
# A252341: Number of (n+2)X(6+2) 0..2 arrays with every 3X3 subblock row, column, diagonal and antidiagonal sum not equal to 2 3 or 4.

The programs for A252341, there is no canonical definition to state claims against.
-/

/-! ## A252341.P11261376105123791747

`2*A255025(n+1)`
-/

namespace A252341.P11261376105123791747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A255025 (n + 1)

end

end A252341.P11261376105123791747

/-! ## A252341.P3483833303729267157

`A255025(n+1)+A255025(Δ[n²]-n)`
-/

namespace A252341.P3483833303729267157
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255025 (n + 1) + A255025 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat

end

end A252341.P3483833303729267157

/-! ## A252341.P18154717044276484068

`A255025(n+1)+record[A255025(A027750(n+1))]`
-/

namespace A252341.P18154717044276484068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255025 (A027750 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255025 (n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252341.P18154717044276484068

/-! ## A252341.P2343676441645728740

`A255025(n+1)+record[A255025(A032742(n+1))]`
-/

namespace A252341.P2343676441645728740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255025 (A032742 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255025 (n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252341.P2343676441645728740

/-! ## A252341.P8946313954099665636

`2*A255027(A374007(n+1))`
-/

namespace A252341.P8946313954099665636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A255027 (A374007 (n + 1)).toNat

end

end A252341.P8946313954099665636

/-!
# A252342: Number of (n+2)X(7+2) 0..2 arrays with every 3X3 subblock row, column, diagonal and antidiagonal sum not equal to 2 3 or 4.

The programs for A252342, there is no canonical definition to state claims against.
-/

/-! ## A252342.P8770157652385941422

`2*A255026(n+1)`
-/

namespace A252342.P8770157652385941422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A255026 (n + 1)

end

end A252342.P8770157652385941422

/-! ## A252342.P9690950348460327057

`A255026(A000027(n+1))+A255026(n+1)`
-/

namespace A252342.P9690950348460327057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255026 (A000027 (n + 1)).toNat + A255026 (n + 1)

end

end A252342.P9690950348460327057

/-! ## A252342.P8941466407645150081

`2*A255027(A374008(n+1))`
-/

namespace A252342.P8941466407645150081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A255027 (A374008 (n + 1)).toNat

end

end A252342.P8941466407645150081

/-! ## A252342.P15703748490988960533

`A252343(eq[11, A066657(n)])`
-/

namespace A252342.P15703748490988960533
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252343 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A252342.P15703748490988960533

/-! ## A252342.P8051251735539414518

`A252343(eq[8, A131818(n+1)])`
-/

namespace A252342.P8051251735539414518
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252343 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A252342.P8051251735539414518

/-!
# A252343: T(n,k)=Number of (n+2)X(k+2) 0..2 arrays with every 3X3 subblock row, column, diagonal and antidiagonal sum not equal to 2 3 or 4.

The programs for A252343, there is no canonical definition to state claims against.
-/

/-! ## A252343.P17137671560952724701

`2*A255027(n+1)`
-/

namespace A252343.P17137671560952724701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A255027 (n + 1)

end

end A252343.P17137671560952724701

/-! ## A252343.P10925732240226292699

`A255027(∑[n+1]-∑[n])+A255027(n+1)`
-/

namespace A252343.P10925732240226292699
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255027 (∑ j ∈ Finset.range (n + 1), f1 j - ∑ j ∈ Finset.range (n + 1), f2 j) + A255027 (n + 1)

end

end A252343.P10925732240226292699

/-! ## A252343.P665764314004831805

`A255027(n+1)+lcm(A020985(n), A255027(n+1))`
-/

namespace A252343.P665764314004831805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255027 (n + 1) + (Int.lcm (A020985 n) (A255027 (n + 1)) : ℤ)

end

end A252343.P665764314004831805

/-! ## A252343.P3174567864804969407

`lcm(A255027(n+1)+A255027(n+1), A054977(n))`
-/

namespace A252343.P3174567864804969407
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A255027 (n + 1) + A255027 (n + 1)) (A054977 n)

end

end A252343.P3174567864804969407

/-! ## A252343.P15152483602850440589

`A255027(n+1)+A255027(n+1)%A255021(n+1)`
-/

namespace A252343.P15152483602850440589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255027 (n + 1) + Int.tmod (A255027 (n + 1)) (A255021 (n + 1))

end

end A252343.P15152483602850440589

/-!
# A252344: Number of (n+2)X(n+2) 0..3 arrays with every 3X3 subblock row and column sum not equal to 0 3 5 6 or 8 and every 3X3 diagonal and antidiagonal sum equal to 0 3 5 6 or 8.

The programs for A252344, there is no canonical definition to state claims against.
-/

/-! ## A252344.P10394341772171590008

`A252352(∑[4*n]+1)`
-/

namespace A252344.P10394341772171590008
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252352 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A252344.P10394341772171590008

/-! ## A252344.P13795215073190434581

`record[gcd(A049581(n), A252352(n+1))]`
-/

namespace A252344.P13795215073190434581
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A049581 n) (A252352 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252344.P13795215073190434581

/-! ## A252344.P15966764737062212420

`A252352(A001844(n))+A185238(n)`
-/

namespace A252344.P15966764737062212420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252352 (A001844 n).toNat + A185238 n

end

end A252344.P15966764737062212420

/-! ## A252344.P455121952354529117

`lcm(A033999(n), A252352(A001844(n)))`
-/

namespace A252344.P455121952354529117
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A252352 (A001844 n).toNat)

end

end A252344.P455121952354529117

/-! ## A252344.P17582309309957451351

`or(A000038(n), A252352(A001844(n)))`
-/

namespace A252344.P17582309309957451351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000038 n) (A252352 (A001844 n).toNat)

end

end A252344.P17582309309957451351

/-!
# A252345: Number of (n+2)X(1+2) 0..3 arrays with every 3X3 subblock row and column sum not equal to 0 3 5 6 or 8 and every 3X3 diagonal and antidiagonal sum equal to 0 3 5 6 or 8.

The programs for A252345, there is no canonical definition to state claims against.
-/

/-! ## A252345.P12689514113276686991

`A252352(∑[n]+1)`
-/

namespace A252345.P12689514113276686991
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252352 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A252345.P12689514113276686991

/-! ## A252345.P5167341503529618957

`record[A252352(A246276(n+1))]`
-/

namespace A252345.P5167341503529618957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252352 (A246276 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252345.P5167341503529618957

/-! ## A252345.P3546088859663663680

`record[gcd(A014473(n), A252352(n+1))]`
-/

namespace A252345.P3546088859663663680
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A014473 n) (A252352 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252345.P3546088859663663680

/-! ## A252345.P4562864826061229646

`lcm(A252352(A000124(n)), A260196(n))`
-/

namespace A252345.P4562864826061229646
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A252352 (A000124 n).toNat) (A260196 n)

end

end A252345.P4562864826061229646

/-! ## A252345.P2976628404276455453

`A007318(∑[n])*A252352(A000124(n))`
-/

namespace A252345.P2976628404276455453
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A252352 (A000124 n).toNat

end

end A252345.P2976628404276455453

/-!
# A252346: Number of (n+2)X(2+2) 0..3 arrays with every 3X3 subblock row and column sum not equal to 0 3 5 6 or 8 and every 3X3 diagonal and antidiagonal sum equal to 0 3 5 6 or 8.

The programs for A252346, there is no canonical definition to state claims against.
-/

/-! ## A252346.P5866083554831818626

`A252352(∑[n+1]+2)`
-/

namespace A252346.P5866083554831818626
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252352 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A252346.P5866083554831818626

/-! ## A252346.P14533757501886125339

`A057979(2*n)*A252352(A167499(n)-3)`
-/

namespace A252346.P14533757501886125339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 (2 * n) * A252352 (A167499 n - 3).toNat

end

end A252346.P14533757501886125339

/-! ## A252346.P17989494611085059976

`A003557(∏{p}[n+1, #])*A252352(A167499(n)-3)`
-/

namespace A252346.P17989494611085059976
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (∏ p ∈ Nat.primeFactors (f1 n), p) * A252352 (A167499 n - 3).toNat

end

end A252346.P17989494611085059976

/-! ## A252346.P14406178451740396314

`record[A252352(A117142(n+2))]`
-/

namespace A252346.P14406178451740396314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252352 (A117142 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252346.P14406178451740396314

/-! ## A252346.P2105032463701551038

`or(char[3], A252352(A000096(n+1)))`
-/

namespace A252346.P2105032463701551038
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A252352 (A000096 (n + 1)).toNat)

end

end A252346.P2105032463701551038

/-!
# A252347: Number of (n+2)X(3+2) 0..3 arrays with every 3X3 subblock row and column sum not equal to 0 3 5 6 or 8 and every 3X3 diagonal and antidiagonal sum equal to 0 3 5 6 or 8.

The programs for A252347, there is no canonical definition to state claims against.
-/

/-! ## A252347.P2665769366750734489

`A252352(∑[n+2]+4)`
-/

namespace A252347.P2665769366750734489
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252352 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A252347.P2665769366750734489

/-! ## A252347.P5702835915129573064

`A252352(A167614(n+1))+A185246(n)`
-/

namespace A252347.P5702835915129573064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252352 (A167614 (n + 1)).toNat + A185246 n

end

end A252347.P5702835915129573064

/-! ## A252347.P11311943251450492938

`A252352(A167614(n+1))%A017047(n)`
-/

namespace A252347.P11311943251450492938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A252352 (A167614 (n + 1)).toNat) (A017047 n)

end

end A252347.P11311943251450492938

/-! ## A252347.P8548971750907030455

`lcm(A130151(n), A252352(A167614(n+1)))`
-/

namespace A252347.P8548971750907030455
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A130151 n) (A252352 (A167614 (n + 1)).toNat)

end

end A252347.P8548971750907030455

/-! ## A252347.P3091669780987601608

`or(A000007(n), A252352(A167614(n+1)))`
-/

namespace A252347.P3091669780987601608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A252352 (A167614 (n + 1)).toNat)

end

end A252347.P3091669780987601608

/-!
# A252348: Number of (n+2)X(4+2) 0..3 arrays with every 3X3 subblock row and column sum not equal to 0 3 5 6 or 8 and every 3X3 diagonal and antidiagonal sum equal to 0 3 5 6 or 8.

The programs for A252348, there is no canonical definition to state claims against.
-/

/-! ## A252348.P7613497660286320531

`A252352(A374004(n+1))`
-/

namespace A252348.P7613497660286320531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252352 (A374004 (n + 1)).toNat

end

end A252348.P7613497660286320531

/-! ## A252348.P7926715265125993005

`A252352(A141214(n)+7)`
-/

namespace A252348.P7926715265125993005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252352 (A141214 n + 7).toNat

end

end A252348.P7926715265125993005

/-! ## A252348.P2354428381942733935

`A252352(A052905(n)+9)`
-/

namespace A252348.P2354428381942733935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252352 (A052905 n + 9).toNat

end

end A252348.P2354428381942733935

/-! ## A252348.P18353500581356340615

`A252352(A055999(n)+10)`
-/

namespace A252348.P18353500581356340615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252352 (A055999 n + 10).toNat

end

end A252348.P18353500581356340615

/-! ## A252348.P16924582421643941574

`A252352(A167614(n+2)+1)`
-/

namespace A252348.P16924582421643941574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252352 (A167614 (n + 2) + 1).toNat

end

end A252348.P16924582421643941574

/-!
# A252349: Number of (n+2)X(5+2) 0..3 arrays with every 3X3 subblock row and column sum not equal to 0 3 5 6 or 8 and every 3X3 diagonal and antidiagonal sum equal to 0 3 5 6 or 8.

The programs for A252349, there is no canonical definition to state claims against.
-/

/-! ## A252349.P15281436836118118083

`A252352(A374005(n+1))`
-/

namespace A252349.P15281436836118118083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252352 (A374005 (n + 1)).toNat

end

end A252349.P15281436836118118083

/-! ## A252349.P17143240194670400429

`A252352(A167499(n+3))`
-/

namespace A252349.P17143240194670400429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252352 (A167499 (n + 3)).toNat

end

end A252349.P17143240194670400429

/-! ## A252349.P7196545565559336951

`A252352(A056000(n)+15)`
-/

namespace A252349.P7196545565559336951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252352 (A056000 n + 15).toNat

end

end A252349.P7196545565559336951

/-! ## A252349.P11728784893769113718

`A252352(A000124(n+5)-(n+1))`
-/

namespace A252349.P11728784893769113718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252352 (A000124 (n + 5) - (n + 1 : ℤ)).toNat

end

end A252349.P11728784893769113718

/-! ## A252349.P11434311393712356226

`A252352(A052905(n+3)-(2*n+1))`
-/

namespace A252349.P11434311393712356226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252352 (A052905 (n + 3) - (2 * n + 1 : ℤ)).toNat

end

end A252349.P11434311393712356226

/-!
# A252350: Number of (n+2) X (6+2) 0..3 arrays with every 3 X 3 subblock row and column sum not equal to 0 3 5 6 or 8 and every 3 X 3 diagonal and antidiagonal sum equal to 0 3 5 6 or 8.

The programs for A252350, there is no canonical definition to state claims against.
-/

/-! ## A252350.P14526745139742481861

`A252352(A374007(n+1))`
-/

namespace A252350.P14526745139742481861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252352 (A374007 (n + 1)).toNat

end

end A252350.P14526745139742481861

/-! ## A252350.P167502176400406716

`A252352(A166136(n+4))`
-/

namespace A252350.P167502176400406716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252352 (A166136 (n + 4)).toNat

end

end A252350.P167502176400406716

/-! ## A252350.P15056098148166188018

`A252352(A167614(n+4)+3)`
-/

namespace A252350.P15056098148166188018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252352 (A167614 (n + 4) + 3).toNat

end

end A252350.P15056098148166188018

/-! ## A252350.P18368590291504577563

`A252352(A005843(n+7)+A000124(n+3))`
-/

namespace A252350.P18368590291504577563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252352 (A005843 (n + 7) + A000124 (n + 3)).toNat

end

end A252350.P18368590291504577563

/-! ## A252350.P4578702245894346059

`A252352(A052905(n+3))`
-/

namespace A252350.P4578702245894346059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252352 (A052905 (n + 3)).toNat

end

end A252350.P4578702245894346059

/-!
# A252351: Number of (n+2)X(7+2) 0..3 arrays with every 3X3 subblock row and column sum not equal to 0 3 5 6 or 8 and every 3X3 diagonal and antidiagonal sum equal to 0 3 5 6 or 8.

The programs for A252351, there is no canonical definition to state claims against.
-/

/-! ## A252351.P10972160235530100200

`A252352(A374008(n+1))`
-/

namespace A252351.P10972160235530100200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252352 (A374008 (n + 1)).toNat

end

end A252351.P10972160235530100200

/-! ## A252351.P4354199694404297231

`A252352(A166136(n+5)+1)`
-/

namespace A252351.P4354199694404297231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252352 (A166136 (n + 5) + 1).toNat

end

end A252351.P4354199694404297231

/-! ## A252351.P16849109214116445279

`A252352(A000124(n+6)+6)`
-/

namespace A252351.P16849109214116445279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252352 (A000124 (n + 6) + 6).toNat

end

end A252351.P16849109214116445279

/-! ## A252351.P14290480878561773010

`A252352(A000217(n+6)+7)`
-/

namespace A252351.P14290480878561773010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252352 (A000217 (n + 6) + 7).toNat

end

end A252351.P14290480878561773010

/-! ## A252351.P13547231193978764277

`A252352(A167614(n+3)+A005408(n+7))`
-/

namespace A252351.P13547231193978764277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252352 (A167614 (n + 3) + A005408 (n + 7)).toNat

end

end A252351.P13547231193978764277

/-!
# A252354: Number of Motzkin paths of length n with no level steps at height 2.

The programs for A252354, there is no canonical definition to state claims against.
-/

/-! ## A252354.P903382407364075109

`A317097(n+1)+A102683(A000111(n))`
-/

namespace A252354.P903382407364075109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317097 (n + 1) + A102683 (A000111 n).toNat

end

end A252354.P903382407364075109

/-! ## A252354.P1342135933375471244

`A317097(n+1)+A165878(A036669(n))`
-/

namespace A252354.P1342135933375471244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317097 (n + 1) + A165878 (A036669 n).toNat

end

end A252354.P1342135933375471244

/-! ## A252354.P3255982610443037344

`A317097(n+1)+A165878(A179006(n))`
-/

namespace A252354.P3255982610443037344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317097 (n + 1) + A165878 (A179006 n).toNat

end

end A252354.P3255982610443037344

/-! ## A252354.P14729847535055741298

`A179391(A000045(n+2))+A085748(n)`
-/

namespace A252354.P14729847535055741298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179391 (A000045 (n + 2)).toNat + A085748 n

end

end A252354.P14729847535055741298

/-! ## A252354.P15417192959963100233

`A317097(n+1)+A121373(A038718(2*n+5))`
-/

namespace A252354.P15417192959963100233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317097 (n + 1) + A121373 (A038718 (2 * n + 5)).toNat

end

end A252354.P15417192959963100233

/-!
# A252355: a(n) = sum_{k = 0..n-1} (-1)^k*C(2*n-1,k)*C(n-1,k), n>0.

The programs for A252355, there is no canonical definition to state claims against.
-/

/-! ## A252355.P18403716305321872020

`A098593(∑[9*n+1])`
-/

namespace A252355.P18403716305321872020
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098593 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A252355.P18403716305321872020

/-! ## A252355.P17639004114784897276

`A117352(∑[A017221(n)])`
-/

namespace A252355.P17639004114784897276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017221 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117352 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A252355.P17639004114784897276

/-! ## A252355.P2163424891769825977

`A117352(A022266(n+1))`
-/

namespace A252355.P2163424891769825977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117352 (A022266 (n + 1)).toNat

end

end A252355.P2163424891769825977

/-! ## A252355.P17957050718287515432

`A117352(A022267(n+1))`
-/

namespace A252355.P17957050718287515432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117352 (A022267 (n + 1)).toNat

end

end A252355.P17957050718287515432

/-! ## A252355.P11156677679645660135

`A117355(2*(2*n+1)²)`
-/

namespace A252355.P11156677679645660135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117355 (2 * (2 * n + 1) ^ 2)

end

end A252355.P11156677679645660135

/-!
# A252357: Numbers n of the form p^m where p is prime and m>0 such that the digit sum of n is p.

The programs for A252357, there is no canonical definition to state claims against.
-/

/-! ## A252357.P5514436792080377265

`∩[A111747(n+1), A212667(n+1)]`
-/

namespace A252357.P5514436792080377265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111747 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212667 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A252357.P5514436792080377265

/-! ## A252357.P12235851383601854498

`A212667(∑[A212390(2*n)])`
-/

namespace A252357.P12235851383601854498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212390 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212667 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A252357.P12235851383601854498

/-! ## A252357.P11271221392483025854

`A212667(A212390(2*n)+n)`
-/

namespace A252357.P11271221392483025854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212667 (A212390 (2 * n) + (n : ℤ)).toNat

end

end A252357.P11271221392483025854

/-!
# A252358: Smallest prime p such that (2^n)^(p-1) == 1 (mod p^2), i.e., smallest Wieferich prime to base 2^n.

The programs for A252358, there is no canonical definition to state claims against.
-/

/-! ## A252358.P11965145541992550872

`A247072(2^n)`
-/

namespace A252358.P11965145541992550872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247072 (2 ^ n)

end

end A252358.P11965145541992550872

/-!
# A252361: Number of (n+2)X(n+2) 0..3 arrays with every 3X3 subblock row, column, diagonal and antidiagonal sum not equal to 1 3 4 6 or 7.

The programs for A252361, there is no canonical definition to state claims against.
-/

/-! ## A252361.P17030996354492464781

`A252369(∑[4*n]+1)`
-/

namespace A252361.P17030996354492464781
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252369 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A252361.P17030996354492464781

/-! ## A252361.P11880564267193962585

`lcm(2, A252369(A001844(n)))`
-/

namespace A252361.P11880564267193962585
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A252369 (A001844 n).toNat)

end

end A252361.P11880564267193962585

/-! ## A252361.P14616591941883098468

`record[A003982(n)*A252369(n+1)]`
-/

namespace A252361.P14616591941883098468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A252369 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252361.P14616591941883098468

/-! ## A252361.P10019825038391726096

`record[gcd(A114327(n), A252369(n+1))]`
-/

namespace A252361.P10019825038391726096
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A114327 n) (A252369 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252361.P10019825038391726096

/-! ## A252361.P8368456649805401272

`A252369(A001844(n))+A178798(n)`
-/

namespace A252361.P8368456649805401272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252369 (A001844 n).toNat + A178798 n

end

end A252361.P8368456649805401272

/-!
# A252362: Number of (n+2) X (1+2) 0..3 arrays with every 3 X 3 subblock row, column, diagonal and antidiagonal sum not equal to 1 3 4 6 or 7.

The programs for A252362, there is no canonical definition to state claims against.
-/

/-! ## A252362.P13420123751024886628

`A252369(∑[n]+1)`
-/

namespace A252362.P13420123751024886628
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252369 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A252362.P13420123751024886628

/-! ## A252362.P13894170014695080221

`lcm(2, A252369(A000124(n)))`
-/

namespace A252362.P13894170014695080221
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A252369 (A000124 n).toNat)

end

end A252362.P13894170014695080221

/-! ## A252362.P4123575656211152415

`record[A010054(n)*A252369(n+1)]`
-/

namespace A252362.P4123575656211152415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A252369 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252362.P4123575656211152415

/-! ## A252362.P14098860172791170174

`record[A252369(n+1)/A063007(n)]`
-/

namespace A252362.P14098860172791170174
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A252369 (n + 1) : ℚ) / (A063007 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252362.P14098860172791170174

/-! ## A252362.P903139158443260506

`record[A252369(n+1)/A008292(n+1)]`
-/

namespace A252362.P903139158443260506
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A252369 (n + 1) : ℚ) / (A008292 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252362.P903139158443260506

/-!
# A252363: Number of (n+2) X (2+2) 0..3 arrays with every 3 X 3 subblock row, column, diagonal and antidiagonal sum not equal to 1 3 4 6 or 7.

The programs for A252363, there is no canonical definition to state claims against.
-/

/-! ## A252363.P17805596238584604233

`2*(A252263(n+1)-A255021(n+1))`
-/

namespace A252363.P17805596238584604233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A252263 (n + 1) - A255021 (n + 1))

end

end A252363.P17805596238584604233

/-! ## A252363.P4188737192351815747

`A252263(n+1)+A252263(n+1)-A252337(n+1)`
-/

namespace A252363.P4188737192351815747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252263 (n + 1) + (A252263 (n + 1) - A252337 (n + 1))

end

end A252363.P4188737192351815747

/-! ## A252363.P12874518119821714363

`2*A252263(n+1)-A252337(n+1)`
-/

namespace A252363.P12874518119821714363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A252263 (n + 1) - A252337 (n + 1)

end

end A252363.P12874518119821714363

/-! ## A252363.P899832799363932356

`A252369(∑[n+1]+2)`
-/

namespace A252363.P899832799363932356
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252369 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A252363.P899832799363932356

/-! ## A252363.P831819223112226946

`record[A252369(A133263(abs(1-n)))]`
-/

namespace A252363.P831819223112226946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252369 (A133263 |1 - (n : ℤ)|.toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252363.P831819223112226946

/-!
# A252364: Number of (n+2)X(3+2) 0..3 arrays with every 3X3 subblock row, column, diagonal and antidiagonal sum not equal to 1 3 4 6 or 7.

The programs for A252364, there is no canonical definition to state claims against.
-/

/-! ## A252364.P2389510976152796735

`2*A252264(n+1)-A252338(n+1)`
-/

namespace A252364.P2389510976152796735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A252264 (n + 1) - A252338 (n + 1)

end

end A252364.P2389510976152796735

/-! ## A252364.P15485218072858776249

`A252369(∑[n+2]+4)`
-/

namespace A252364.P15485218072858776249
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252369 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A252364.P15485218072858776249

/-! ## A252364.P7849127980649246094

`lcm(2, A252369(A167614(n+1)))`
-/

namespace A252364.P7849127980649246094
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A252369 (A167614 (n + 1)).toNat)

end

end A252364.P7849127980649246094

/-! ## A252364.P577247539144636968

`A015936(n)*A252369(A167614(n+1))`
-/

namespace A252364.P577247539144636968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015936 n * A252369 (A167614 (n + 1)).toNat

end

end A252364.P577247539144636968

/-! ## A252364.P12874286060682522485

`A252369(A167614(n+1))%A282919(n)`
-/

namespace A252364.P12874286060682522485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A252369 (A167614 (n + 1)).toNat) (A282919 n)

end

end A252364.P12874286060682522485

/-!
# A252365: Number of (n+2)X(4+2) 0..3 arrays with every 3X3 subblock row, column, diagonal and antidiagonal sum not equal to 1 3 4 6 or 7.

The programs for A252365, there is no canonical definition to state claims against.
-/

/-! ## A252365.P5611080611590315350

`A252369(A052905(n)+9)`
-/

namespace A252365.P5611080611590315350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252369 (A052905 n + 9).toNat

end

end A252365.P5611080611590315350

/-! ## A252365.P12006355640545572004

`A252369(A167614(n+2)+1)`
-/

namespace A252365.P12006355640545572004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252369 (A167614 (n + 2) + 1).toNat

end

end A252365.P12006355640545572004

/-! ## A252365.P16708303863566166996

`A252369(A166136(n+2)-2)`
-/

namespace A252365.P16708303863566166996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252369 (A166136 (n + 2) - 2).toNat

end

end A252365.P16708303863566166996

/-! ## A252365.P15181393955496703008

`A252369(Δ[A264443(n)-n²])`
-/

namespace A252365.P15181393955496703008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252369 (f1 (n + 1) - f1 n).toNat

end

end A252365.P15181393955496703008

/-!
# A252366: Number of (n+2)X(5+2) 0..3 arrays with every 3X3 subblock row, column, diagonal and antidiagonal sum not equal to 1 3 4 6 or 7.

The programs for A252366, there is no canonical definition to state claims against.
-/

/-! ## A252366.P14015662893025775678

`A252369(A167499(n+3))`
-/

namespace A252366.P14015662893025775678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252369 (A167499 (n + 3)).toNat

end

end A252366.P14015662893025775678

/-! ## A252366.P736086724651065331

`A252369(A056000(n)+15)`
-/

namespace A252366.P736086724651065331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252369 (A056000 n + 15).toNat

end

end A252366.P736086724651065331

/-! ## A252366.P12117675890590851300

`A252369(A000124(n+4)+4)`
-/

namespace A252366.P12117675890590851300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252369 (A000124 (n + 4) + 4).toNat

end

end A252366.P12117675890590851300

/-! ## A252366.P11285150170175485424

`A252369(A052905(n+1)+10)`
-/

namespace A252366.P11285150170175485424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252369 (A052905 (n + 1) + 10).toNat

end

end A252366.P11285150170175485424

/-! ## A252366.P1895569540939789927

`A252369(Δ[A264443(n)])`
-/

namespace A252366.P1895569540939789927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252369 (f1 (n + 1) - f1 n).toNat

end

end A252366.P1895569540939789927

/-!
# A252367: Number of (n+2)X(6+2) 0..3 arrays with every 3X3 subblock row, column, diagonal and antidiagonal sum not equal to 1 3 4 6 or 7.

The programs for A252367, there is no canonical definition to state claims against.
-/

/-! ## A252367.P4439176895288568979

`A252369(A166136(n+4))`
-/

namespace A252367.P4439176895288568979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252369 (A166136 (n + 4)).toNat

end

end A252367.P4439176895288568979

/-! ## A252367.P14003438216874405118

`A252369(Δ[A264443(n)]+10)`
-/

namespace A252367.P14003438216874405118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252369 (f1 (n + 1) - f1 n + 10).toNat

end

end A252367.P14003438216874405118

/-! ## A252367.P4333433704836468837

`A252369(A167499(n+4)+1)`
-/

namespace A252367.P4333433704836468837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252369 (A167499 (n + 4) + 1).toNat

end

end A252367.P4333433704836468837

/-! ## A252367.P13757620124172291832

`A252369(A133263(n+5)+4)`
-/

namespace A252367.P13757620124172291832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252369 (A133263 (n + 5) + 4).toNat

end

end A252367.P13757620124172291832

/-! ## A252367.P14405731306508891722

`A252369(A000217(n+5)+6)`
-/

namespace A252367.P14405731306508891722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252369 (A000217 (n + 5) + 6).toNat

end

end A252367.P14405731306508891722

/-!
# A252368: Number of (n+2)X(7+2) 0..3 arrays with every 3X3 subblock row, column, diagonal and antidiagonal sum not equal to 1 3 4 6 or 7.

The programs for A252368, there is no canonical definition to state claims against.
-/

/-! ## A252368.P13974875314797333694

`A252369(A056119(n)+28)`
-/

namespace A252368.P13974875314797333694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252369 (A056119 n + 28).toNat

end

end A252368.P13974875314797333694

/-! ## A252368.P4366184345756201160

`A252369(eq[11, A066657(n)])`
-/

namespace A252368.P4366184345756201160
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252369 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A252368.P4366184345756201160

/-! ## A252368.P7830479636705569864

`A252369(A167614(n+5)+4)`
-/

namespace A252368.P7830479636705569864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252369 (A167614 (n + 5) + 4).toNat

end

end A252368.P7830479636705569864

/-! ## A252368.P7481311475934540811

`A252369(eq[8, A131818(n+1)])`
-/

namespace A252368.P7481311475934540811
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252369 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A252368.P7481311475934540811

/-! ## A252368.P14857933299382175382

`A252369(A374008(n+1))`
-/

namespace A252368.P14857933299382175382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252369 (A374008 (n + 1)).toNat

end

end A252368.P14857933299382175382

/-!
# A252370: a(n) = A243055(A251726(n)).

The programs for A252370, there is no canonical definition to state claims against.
-/

/-! ## A252370.P12784444514240699439

`A243055(A251726(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A252370.P12784444514240699439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243055 (A251726 (n + 1)).toNat

end

end A252370.P12784444514240699439

/-! ## A252370.P13520828620141456157

`A242411(∏{d}[A251726(n+1), A020639(#)])`
-/

namespace A252370.P13520828620141456157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251726 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242411 (∏ d ∈ Nat.divisors (f1 n).natAbs, A020639 d).toNat

end

end A252370.P13520828620141456157

/-! ## A252370.P16800057335861563606

`A242411(A251726(n+1))-A049084(A285109(2*n+5))`
-/

namespace A252370.P16800057335861563606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242411 (A251726 (n + 1)).toNat - A049084 (A285109 (2 * n + 5)).toNat

end

end A252370.P16800057335861563606

/-! ## A252370.P9220341396252500784

`A297173(A101792(n+1))+A297173(A251726(n+1))`
-/

namespace A252370.P9220341396252500784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297173 (A101792 (n + 1)).toNat + A297173 (A251726 (n + 1)).toNat

end

end A252370.P9220341396252500784

/-! ## A252370.P4316406465123932359

`A297173(A251726(n+1)^3)`
-/

namespace A252370.P4316406465123932359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297173 (A251726 (n + 1) ^ 3).toNat

end

end A252370.P4316406465123932359

/-!
# A252371: a(n) = A243055(A251727(n)).

The programs for A252371, there is no canonical definition to state claims against.
-/

/-! ## A252371.P7024407539575237769

`A243055(A251727(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A252371.P7024407539575237769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243055 (A251727 (n + 1)).toNat

end

end A252371.P7024407539575237769

/-! ## A252371.P10767744002937016215

`A243056(∏{p}[A251727(n+1), #])`
-/

namespace A252371.P10767744002937016215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251727 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243056 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A252371.P10767744002937016215

/-! ## A252371.P10479774036224788637

`gcd(A000038(n), A243056(A251727(n+1)))`
-/

namespace A252371.P10479774036224788637
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A243056 (A251727 (n + 1)).toNat)

end

end A252371.P10479774036224788637

/-! ## A252371.P9536934627720705276

`A243056(or(A000038(n), A251727(n+1)))`
-/

namespace A252371.P9536934627720705276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243056 (Int.lor (A000038 n) (A251727 (n + 1))).toNat

end

end A252371.P9536934627720705276

/-! ## A252371.P13519663358513059318

`A243056(A251727(n+1))%A061228(n+1)²`
-/

namespace A252371.P13519663358513059318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A243056 (A251727 (n + 1)).toNat) (A061228 (n + 1) ^ 2)

end

end A252371.P13519663358513059318

/-! ## A252371.P12166356537469821694

`A243055(eq[A006530(n+1)+1, A251725(n+1)]+1)`
-/

namespace A252371.P12166356537469821694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251725 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243055 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A252371.P12166356537469821694

/-! ## A252371.P11128375109781776637

`A243056(A251727(n+1))+A143731(A028233(n+1))`
-/

namespace A252371.P11128375109781776637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243056 (A251727 (n + 1)).toNat + A143731 (A028233 (n + 1)).toNat

end

end A252371.P11128375109781776637

/-! ## A252371.P17274374693718599131

`A243056(A251727(n+1))+A143731(A053585(n+1))`
-/

namespace A252371.P17274374693718599131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243056 (A251727 (n + 1)).toNat + A143731 (A053585 (n + 1)).toNat

end

end A252371.P17274374693718599131

/-! ## A252371.P48127514581294399

`A243056(A251727(n+1)%∑[A151910(n+1)])`
-/

namespace A252371.P48127514581294399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151910 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243056 (Int.tmod (A251727 (n + 1)) (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A252371.P48127514581294399

/-!
# A252372: Characteristic function for A251726: a(n) = 1 if n > 1 and gpf(n) < spf(n)^2, otherwise 0; here spf(n) and gpf(n) (smallest and greatest prime factor of n) are sequences A020639(n) and A006530(n).

The programs for A252372, there is no canonical definition to state claims against.
-/

/-! ## A252372.P5032423650199219068

`char[A251726(n+1)-1]`
-/

namespace A252372.P5032423650199219068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251726 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A252372.P5032423650199219068

/-! ## A252372.P3035372595489434468

`char[A284255(n+2)-1]`
-/

namespace A252372.P3035372595489434468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284255 (n + 2) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A252372.P3035372595489434468

/-! ## A252372.P9570041557250785427

`floor(sqrt(sqrt(A252374(n+1))))`
-/

namespace A252372.P9570041557250785427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt (Real.sqrt (A252374 (n + 1) : ℝ))⌋

end

end A252372.P9570041557250785427

/-! ## A252372.P11972642710372654794

`round((A284255(n+1)-1)/(n+1))`
-/

namespace A252372.P11972642710372654794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A284255 (n + 1) - 1 : ℚ) / (n + 1 : ℚ))

end

end A252372.P11972642710372654794

/-! ## A252372.P9211291850874961839

`C(C(n, C(n, n²)), A284252(n+1))`
-/

namespace A252372.P9211291850874961839
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Nat.choose n (Nat.choose n (n ^ 2))) (A284252 (n + 1)).toNat

end

end A252372.P9211291850874961839

/-! ## A252372.P5567395285084768788

`A252374(2^A252374(n+1))`
-/

namespace A252372.P5567395285084768788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252374 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A252374 (n + 1) : ℤ))).toNat

end

end A252372.P5567395285084768788

/-! ## A252372.P5095364056618016868

`A284254(n+1)%A006530(n+1)`
-/

namespace A252372.P5095364056618016868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A284254 (n + 1)) (A006530 (n + 1))

end

end A252372.P5095364056618016868

/-! ## A252372.P843955202081434342

`ceil(A252374(n+1)/A066048(n+1))`
-/

namespace A252372.P843955202081434342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A252374 (n + 1) : ℚ) / (A066048 (n + 1) : ℚ)⌉

end

end A252372.P843955202081434342

/-! ## A252372.P2546342030720349865

`ceil(A252374(n+1)/A088835(n+1))`
-/

namespace A252372.P2546342030720349865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A252374 (n + 1) : ℚ) / (A088835 (n + 1) : ℚ)⌉

end

end A252372.P2546342030720349865

/-! ## A252372.P12052013499212973810

`ceil(A252374(n+1)/A130065(n+1))`
-/

namespace A252372.P12052013499212973810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A252374 (n + 1) : ℚ) / (A130065 (n + 1) : ℚ)⌉

end

end A252372.P12052013499212973810

/-! ## A252372.P11814362170682977154

`ceil(A252374(n+1)/A251727(n+1))`
-/

namespace A252372.P11814362170682977154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A252374 (n + 1) : ℚ) / (A251727 (n + 1) : ℚ)⌉

end

end A252372.P11814362170682977154

/-! ## A252372.P4252171308536095490

`A057427(n)-A001221(A284252(n+1))`
-/

namespace A252372.P4252171308536095490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n - A001221 (A284252 (n + 1)).toNat

end

end A252372.P4252171308536095490

/-! ## A252372.P2481457588717726328

`A001221(A001222(A252374(n+1)+1)+1)`
-/

namespace A252372.P2481457588717726328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A001222 (A252374 (n + 1) + 1).toNat + 1).toNat

end

end A252372.P2481457588717726328

/-! ## A252372.P16686136850672795648

`1-A057427(A284252(n+1)-A057427(n))`
-/

namespace A252372.P16686136850672795648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A057427 (A284252 (n + 1) - A057427 n).toNat

end

end A252372.P16686136850672795648

/-! ## A252372.P3319565714794377949

`1-A057427(A284254(n+1)-A057427(n))`
-/

namespace A252372.P3319565714794377949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A057427 (A284254 (n + 1) - A057427 n).toNat

end

end A252372.P3319565714794377949

/-! ## A252372.P16909819607491600682

`A057427(n)-A057427(n*A284256(n+1))`
-/

namespace A252372.P16909819607491600682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n - A057427 ((n : ℤ) * A284256 (n + 1)).toNat

end

end A252372.P16909819607491600682

/-! ## A252372.P7326664943885255976

`A001222(A020639(n+1)*A284253(n+1))-A001222(n+1)`
-/

namespace A252372.P7326664943885255976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A020639 (n + 1) * A284253 (n + 1)).toNat - A001222 (n + 1)

end

end A252372.P7326664943885255976

/-! ## A252372.P7205898044003502802

`A353476(A066048(n+1))`
-/

namespace A252372.P7205898044003502802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353476 (A066048 (n + 1)).toNat

end

end A252372.P7205898044003502802

/-! ## A252372.P854138261052438314

`val(A020639(A252757(n+1)), 2)`
-/

namespace A252372.P854138261052438314
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A020639 (A252757 (n + 1)).toNat).toNat 2

end

end A252372.P854138261052438314

/-!
# A252373: Partial sums of A252372, inverse function for A251726.

The programs for A252373, there is no canonical definition to state claims against.
-/

/-! ## A252373.P3426254770351729499

`A252372(n+1)+a(n-1)` with `a(0)=0`
-/

namespace A252373.P3426254770351729499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A252372 (n + 1) + a (n - 1)

end

end A252373.P3426254770351729499

/-! ## A252373.P10909619462104828843

`∑[A252372(n+1)]`
-/

namespace A252373.P10909619462104828843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252372 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A252373.P10909619462104828843

/-! ## A252373.P1150324894597963295

`∑[char[A251726(n+1)-1]]`
-/

namespace A252373.P1150324894597963295
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251726 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A252373.P1150324894597963295

/-! ## A252373.P8607392632647261511

`n-∑[A001222(A284252(n+1))]`
-/

namespace A252373.P8607392632647261511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A284252 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A252373.P8607392632647261511

/-! ## A252373.P4586256338909459433

`n-∑[A016760(n)%A284252(n+1)]`
-/

namespace A252373.P4586256338909459433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016760 n) (A284252 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A252373.P4586256338909459433

/-! ## A252373.P12578234802122320464

`n-∑[A017382(n)%A284252(n+1)]`
-/

namespace A252373.P12578234802122320464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A017382 n) (A284252 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A252373.P12578234802122320464

/-! ## A252373.P17787375987924500592

`n-∑[A000127(n+1)%A284252(n+1)]`
-/

namespace A252373.P17787375987924500592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000127 (n + 1)) (A284252 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A252373.P17787375987924500592

/-! ## A252373.P9206825563263541617

`∑[A001221(A001222(A252374(n+1)+1)+1)]`
-/

namespace A252373.P9206825563263541617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A001222 (A252374 (n + 1) + 1).toNat + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A252373.P9206825563263541617

/-!
# A252374: a(n) = exponent k for the smallest r such that r^k <= spf(n) and gpf(n) < r^(k+1), for some k >= 0, where spf and gpf (smallest and greatest prime factor of n) are given by A020639(n) and A006530(n).

The programs for A252374, there is no canonical definition to state claims against.
-/

/-! ## A252374.P4328565407291176478

`A252372(n+1)*A389616(n+1)`
-/

namespace A252374.P4328565407291176478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252372 (n + 1) * A389616 (n + 1)

end

end A252374.P4328565407291176478

/-! ## A252374.P2197523193353154060

`A238845(n)%A020639(A118870(n))`
-/

namespace A252374.P2197523193353154060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A238845 n) (A020639 (A118870 n).toNat)

end

end A252374.P2197523193353154060

/-! ## A252374.P13410008461662867270

`A093873(n+1)%A020639(A118870(n))`
-/

namespace A252374.P13410008461662867270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A093873 (n + 1)) (A020639 (A118870 n).toNat)

end

end A252374.P13410008461662867270

/-! ## A252374.P7937003879617811329

`A075119(n+1)%A020639(A284482(n))`
-/

namespace A252374.P7937003879617811329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A075119 (n + 1)) (A020639 (A284482 n).toNat)

end

end A252374.P7937003879617811329

/-! ## A252374.P9367946487906672959

`A194218(A097229(n))%A331590(n+1)`
-/

namespace A252374.P9367946487906672959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A194218 (A097229 n).toNat) (A331590 (n + 1))

end

end A252374.P9367946487906672959

/-!
# A252375: a(n) = smallest r such that r^k <= spf(n) and gpf(n) < r^(k+1), for some k >= 0, where spf and gpf (smallest and greatest prime factor of n) are given by A020639(n) and A006530(n).

The programs for A252375, there is no canonical definition to state claims against.
-/

/-! ## A252375.P17765990071657057958

`A251725(n+1)+A010055(n+1)`
-/

namespace A252375.P17765990071657057958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251725 (n + 1) + A010055 (n + 1)

end

end A252375.P17765990071657057958

/-! ## A252375.P3291745912512813958

`A251725(n+1)+A000007(A046665(n+1))`
-/

namespace A252375.P3291745912512813958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251725 (n + 1) + A000007 (A046665 (n + 1)).toNat

end

end A252375.P3291745912512813958

/-! ## A252375.P11836314890271078395

`A251725(n+1)+A128229(A034444(n+1))`
-/

namespace A252375.P11836314890271078395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251725 (n + 1) + A128229 (A034444 (n + 1)).toNat

end

end A252375.P11836314890271078395

/-! ## A252375.P9140201719646649340

`A251725(n+1)+A000007(A251725(n+1)-1)`
-/

namespace A252375.P9140201719646649340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251725 (n + 1) + A000007 (A251725 (n + 1) - 1).toNat

end

end A252375.P9140201719646649340

/-! ## A252375.P16848505600369829496

`A251725(n+1)+∏{p}[A251725(n+1), A104488(#)]`
-/

namespace A252375.P16848505600369829496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251725 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251725 (n + 1) + ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A104488 p

end

end A252375.P16848505600369829496

/-! ## A252375.P2645571793824358505

`A233583(A251725(n+1)+1)`
-/

namespace A252375.P2645571793824358505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (A251725 (n + 1) + 1).toNat

end

end A252375.P2645571793824358505

/-! ## A252375.P14722411241511842967

`A000196(A251725(n+1)²+3)`
-/

namespace A252375.P14722411241511842967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A251725 (n + 1) ^ 2 + 3).toNat

end

end A252375.P14722411241511842967

/-! ## A252375.P12366202972579624998

`A000196(A251725(n+1)*A251725(n+1)+3)`
-/

namespace A252375.P12366202972579624998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A251725 (n + 1) * A251725 (n + 1) + 3).toNat

end

end A252375.P12366202972579624998

/-! ## A252375.P11345385037625374683

`A014963(2*A307273(A251725(n+1)))*A251725(n+1)`
-/

namespace A252375.P11345385037625374683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (2 * A307273 (A251725 (n + 1)).toNat).toNat * A251725 (n + 1)

end

end A252375.P11345385037625374683

/-!
# A252376: Number of (n+2)X(n+2) 0..3 arrays with every 3X3 subblock row and diagonal sum equal to 0 3 5 6 or 7 and every 3X3 column and antidiagonal sum not equal to 0 3 5 6 or 7.

The programs for A252376, there is no canonical definition to state claims against.
-/

/-! ## A252376.P12724076128512227906

`A252384(∑[4*n]+1)`
-/

namespace A252376.P12724076128512227906
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252384 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A252376.P12724076128512227906

/-! ## A252376.P5989117154982163877

`or(char[1], A252384(A001844(n)))`
-/

namespace A252376.P5989117154982163877
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A252384 (A001844 n).toNat)

end

end A252376.P5989117154982163877

/-! ## A252376.P12681165069351447257

`A252384(n²+(n+1)²)%A054321(n+4)`
-/

namespace A252376.P12681165069351447257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A252384 (n ^ 2 + (n + 1) ^ 2)) (A054321 (n + 4))

end

end A252376.P12681165069351447257

/-! ## A252376.P14840401902473819454

`A007318(∑[n])*A252384(A001844(n))`
-/

namespace A252376.P14840401902473819454
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A252384 (A001844 n).toNat

end

end A252376.P14840401902473819454

/-! ## A252376.P13112598715427545423

`A252384(A001844(n))+A000007(n+3)`
-/

namespace A252376.P13112598715427545423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252384 (A001844 n).toNat + A000007 (n + 3)

end

end A252376.P13112598715427545423

/-!
# A252377: Number of (n+2)X(1+2) 0..3 arrays with every 3X3 subblock row and diagonal sum equal to 0 3 5 6 or 7 and every 3X3 column and antidiagonal sum not equal to 0 3 5 6 or 7.

The programs for A252377, there is no canonical definition to state claims against.
-/

/-! ## A252377.P18250388725073307282

`A252384(∑[n+1])`
-/

namespace A252377.P18250388725073307282
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252384 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A252377.P18250388725073307282

/-! ## A252377.P3437174804569795628

`(n%2)!*A252384(Δ[A000292(n)])`
-/

namespace A252377.P3437174804569795628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n % 2) : ℤ) * A252384 (f1 (n + 1) - f1 n).toNat

end

end A252377.P3437174804569795628

/-! ## A252377.P13237914698264559419

`A252384(Δ[A000292(n)])+A025444(n)`
-/

namespace A252377.P13237914698264559419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252384 (f1 (n + 1) - f1 n).toNat + A025444 n

end

end A252377.P13237914698264559419

/-! ## A252377.P5587274006449558180

`A252384(Δ[A000292(n)])/A304042(n)`
-/

namespace A252377.P5587274006449558180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A252384 (f1 (n + 1) - f1 n).toNat : ℚ) / (A304042 n : ℚ)

end

end A252377.P5587274006449558180

/-! ## A252377.P2722169483125504149

`A252384(A000217(n+1))%A107397(n+3)`
-/

namespace A252377.P2722169483125504149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A252384 (A000217 (n + 1)).toNat) (A107397 (n + 3))

end

end A252377.P2722169483125504149

/-!
# A252378: Number of (n+2) X (2+2) 0..3 arrays with every 3 X 3 subblock row and diagonal sum equal to 0 3 5 6 or 7 and every 3 X 3 column and antidiagonal sum not equal to 0 3 5 6 or 7.

The programs for A252378, there is no canonical definition to state claims against.
-/

/-! ## A252378.P7345862111289166478

`A252384(∑[n+2])`
-/

namespace A252378.P7345862111289166478
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252384 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A252378.P7345862111289166478

/-! ## A252378.P17540277290308911612

`or(char[1], A252384(A000096(n+1)))`
-/

namespace A252378.P17540277290308911612
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A252384 (A000096 (n + 1)).toNat)

end

end A252378.P17540277290308911612

/-! ## A252378.P6421434473590917079

`A252384(A000096(n+1))+A025469(n)`
-/

namespace A252378.P6421434473590917079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252384 (A000096 (n + 1)).toNat + A025469 n

end

end A252378.P6421434473590917079

/-! ## A252378.P10537003400110993710

`A252384(A000096(n+1))+A185284(n)`
-/

namespace A252378.P10537003400110993710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252384 (A000096 (n + 1)).toNat + A185284 n

end

end A252378.P10537003400110993710

/-! ## A252378.P14917997856744776791

`A252384(A000096(n+1))^A007318(C(n, 2))`
-/

namespace A252378.P14917997856744776791
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A252384 (A000096 (n + 1)).toNat : ℚ) ^ (A007318 (Nat.choose n 2) : ℤ)

end

end A252378.P14917997856744776791

/-!
# A252379: Number of (n+2) X (3+2) 0..3 arrays with every 3 X 3 subblock row and diagonal sum equal to 0 3 5 6 or 7 and every 3 X 3 column and antidiagonal sum not equal to 0 3 5 6 or 7.

The programs for A252379, there is no canonical definition to state claims against.
-/

/-! ## A252379.P8433189358039976186

`A252384(∑[n+3]+1)`
-/

namespace A252379.P8433189358039976186
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252384 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A252379.P8433189358039976186

/-! ## A252379.P5896432761522786796

`or(char[1], A252384(A141214(n)+1))`
-/

namespace A252379.P5896432761522786796
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A252384 (A141214 n + 1).toNat)

end

end A252379.P5896432761522786796

/-! ## A252379.P13901328757407241975

`A007318(C(2, n))*A252384(A141214(n)+1)`
-/

namespace A252379.P13901328757407241975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A252384 (A141214 n + 1).toNat

end

end A252379.P13901328757407241975

/-! ## A252379.P12566087916526631672

`A000041(C(2, n+2))*A252384(A141214(n)+1)`
-/

namespace A252379.P12566087916526631672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose 2 (n + 2)) * A252384 (A141214 n + 1).toNat

end

end A252379.P12566087916526631672

/-! ## A252379.P9772641260983192901

`A007318(and(3, 1-n))*A252384(A141214(n)+1)`
-/

namespace A252379.P9772641260983192901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Int.land 3 (1 - (n : ℤ))).toNat * A252384 (A141214 n + 1).toNat

end

end A252379.P9772641260983192901

/-!
# A252380: Number of (n+2) X (4+2) 0..3 arrays with every 3 X 3 subblock row and diagonal sum equal to 0 3 5 6 or 7 and every 3 X 3 column and antidiagonal sum not equal to 0 3 5 6 or 7.

The programs for A252380, there is no canonical definition to state claims against.
-/

/-! ## A252380.P9616350972809338459

`A252384(∑[n+4]+3)`
-/

namespace A252380.P9616350972809338459
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252384 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A252380.P9616350972809338459

/-! ## A252380.P15038739369677362491

`or(char[1], A252384(A056000(n)+7))`
-/

namespace A252380.P15038739369677362491
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A252384 (A056000 n + 7).toNat)

end

end A252380.P15038739369677362491

/-! ## A252380.P3334060296092004957

`A252384(A055998(n+2))+char[42]`
-/

namespace A252380.P3334060296092004957
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  42

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252384 (A055998 (n + 2)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A252380.P3334060296092004957

/-! ## A252380.P5383326444202855654

`and(log2(1/2), A252384(A141214(n+1)))`
-/

namespace A252380.P5383326444202855654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (SequenceMachineLib.roundAway (Real.logb 2 ((1 : ℚ) / 2 : ℝ))) (A252384 (A141214 (n + 1)).toNat)

end

end A252380.P5383326444202855654

/-! ## A252380.P5446175645848793403

`A000041(C(n, n²))*A252384(A056000(n)+7)`
-/

namespace A252380.P5446175645848793403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose n (n ^ 2)) * A252384 (A056000 n + 7).toNat

end

end A252380.P5446175645848793403

/-!
# A252381: Number of (n+2) X (5+2) 0..3 arrays with every 3 X 3 subblock row and diagonal sum equal to 0 3 5 6 or 7 and every 3 X 3 column and antidiagonal sum not equal to 0 3 5 6 or 7.

The programs for A252381, there is no canonical definition to state claims against.
-/

/-! ## A252381.P16472880900272269545

`A252384(∑[n+5]+6)`
-/

namespace A252381.P16472880900272269545
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252384 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A252381.P16472880900272269545

/-!
# A252382: Number of (n+2) X (6+2) 0..3 arrays with every 3 X 3 subblock row and diagonal sum equal to 0 3 5 6 or 7 and every 3 X 3 column and antidiagonal sum not equal to 0 3 5 6 or 7.

The programs for A252382, there is no canonical definition to state claims against.
-/

/-! ## A252382.P16865538409420685894

`A252384(A052905(n+3))`
-/

namespace A252382.P16865538409420685894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252384 (A052905 (n + 3)).toNat

end

end A252382.P16865538409420685894

/-! ## A252382.P6412098162190419767

`A252384(A056119(n)+16)`
-/

namespace A252382.P6412098162190419767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252384 (A056119 n + 16).toNat

end

end A252382.P6412098162190419767

/-! ## A252382.P8273807421608224627

`A252384(eq[3, A219347(n)])`
-/

namespace A252382.P8273807421608224627
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252384 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A252382.P8273807421608224627

/-! ## A252382.P14472681986484189417

`A252384(eq[5, A193592(n)])`
-/

namespace A252382.P14472681986484189417
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252384 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A252382.P14472681986484189417

/-! ## A252382.P15400949015793916782

`A252384(A055999(n+3)+1)`
-/

namespace A252382.P15400949015793916782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252384 (A055999 (n + 3) + 1).toNat

end

end A252382.P15400949015793916782

/-!
# A252383: Number of (n+2) X (7+2) 0..3 arrays with every 3 X 3 subblock row and diagonal sum equal to 0 3 5 6 or 7 and every 3 X 3 column and antidiagonal sum not equal to 0 3 5 6 or 7.

The programs for A252383, there is no canonical definition to state claims against.
-/

/-! ## A252383.P1527656983741319124

`A252384(A055999(n+4))`
-/

namespace A252383.P1527656983741319124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252384 (A055999 (n + 4)).toNat

end

end A252383.P1527656983741319124

/-! ## A252383.P10463881432497836485

`A252384(eq[4, A219347(n)])`
-/

namespace A252383.P10463881432497836485
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252384 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A252383.P10463881432497836485

/-! ## A252383.P13811300683906440717

`A252384(eq[6, A193592(n)])`
-/

namespace A252383.P13811300683906440717
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252384 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A252383.P13811300683906440717

/-! ## A252383.P18032524115325909219

`A252384(Δ[A023551(n+2)])`
-/

namespace A252383.P18032524115325909219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252384 (f1 (n + 1) - f1 n).toNat

end

end A252383.P18032524115325909219

/-! ## A252383.P10979386060567355417

`A252384(A052905(n+4)-1)`
-/

namespace A252383.P10979386060567355417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252384 (A052905 (n + 4) - 1).toNat

end

end A252383.P10979386060567355417

/-!
# A252385: Number of (1+2)X(n+2) 0..3 arrays with every 3X3 subblock row and diagonal sum equal to 0 3 5 6 or 7 and every 3X3 column and antidiagonal sum not equal to 0 3 5 6 or 7.

The programs for A252385, there is no canonical definition to state claims against.
-/

/-! ## A252385.P4336245524613388797

`A252384(∑[n]+1)`
-/

namespace A252385.P4336245524613388797
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252384 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A252385.P4336245524613388797

/-! ## A252385.P4405145787663236115

`record[A252384(n+1)]`
-/

namespace A252385.P4405145787663236115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252384 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252385.P4405145787663236115

/-! ## A252385.P7766485884357639528

`and(-1, A252384(A000124(n)))`
-/

namespace A252385.P7766485884357639528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A252384 (A000124 n).toNat)

end

end A252385.P7766485884357639528

/-! ## A252385.P5554729432217118320

`A252384(A000124(n))+A243836(n)`
-/

namespace A252385.P5554729432217118320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252384 (A000124 n).toNat + A243836 n

end

end A252385.P5554729432217118320

/-! ## A252385.P16653663083820878993

`A252384(A000124(n))/A304042(n)`
-/

namespace A252385.P16653663083820878993
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A252384 (A000124 n).toNat : ℚ) / (A304042 n : ℚ)

end

end A252385.P16653663083820878993

/-!
# A252386: Number of (2+2)X(n+2) 0..3 arrays with every 3X3 subblock row and diagonal sum equal to 0 3 5 6 or 7 and every 3X3 column and antidiagonal sum not equal to 0 3 5 6 or 7.

The programs for A252386, there is no canonical definition to state claims against.
-/

/-! ## A252386.P12683867711956342856

`A252384(∑[n+1]+2)`
-/

namespace A252386.P12683867711956342856
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252384 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A252386.P12683867711956342856

/-! ## A252386.P1211022432112619495

`record[gcd(A025581(n), A252384(n+3))]`
-/

namespace A252386.P1211022432112619495
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A025581 n) (A252384 (n + 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252386.P1211022432112619495

/-! ## A252386.P5578533698420515432

`record[A252384(n+3)/A185105(n+1)]`
-/

namespace A252386.P5578533698420515432
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A252384 (n + 3) : ℚ) / (A185105 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252386.P5578533698420515432

/-! ## A252386.P2818859004320111886

`record[root(A252384(n+3), A051537(n+1))]`
-/

namespace A252386.P2818859004320111886
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A252384 (n + 3) : ℝ) ^ (1 / (A051537 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252386.P2818859004320111886

/-! ## A252386.P12685364630419554453

`record[A252384(n+3)%A252384(n+2)]`
-/

namespace A252386.P12685364630419554453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A252384 (n + 3)) (A252384 (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252386.P12685364630419554453

/-!
# A252387: Number of (3+2) X (n+2) 0..3 arrays with every 3 X 3 subblock row and diagonal sum equal to 0 3 5 6 or 7 and every 3 X 3 column and antidiagonal sum not equal to 0 3 5 6 or 7.

The programs for A252387, there is no canonical definition to state claims against.
-/

/-! ## A252387.P17366936319341205769

`A252384(∑[n+2]+4)`
-/

namespace A252387.P17366936319341205769
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252384 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A252387.P17366936319341205769

/-! ## A252387.P13401309121130247222

`or(char[1], A252384(A167614(n+1)))`
-/

namespace A252387.P13401309121130247222
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A252384 (A167614 (n + 1)).toNat)

end

end A252387.P13401309121130247222

/-! ## A252387.P16089986914998433623

`A252384(A167614(n+1))+A178798(n)`
-/

namespace A252387.P16089986914998433623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252384 (A167614 (n + 1)).toNat + A178798 n

end

end A252387.P16089986914998433623

/-! ## A252387.P7170206961292039014

`A252384(A167614(n+1))+A000007(n+1)`
-/

namespace A252387.P7170206961292039014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252384 (A167614 (n + 1)).toNat + A000007 (n + 1)

end

end A252387.P7170206961292039014

/-! ## A252387.P9602859624409402928

`A252384(A167614(n+1))*A330098(n+1)`
-/

namespace A252387.P9602859624409402928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252384 (A167614 (n + 1)).toNat * A330098 (n + 1)

end

end A252387.P9602859624409402928

/-!
# A252388: Number of (4+2) X (n+2) 0..3 arrays with every 3 X 3 subblock row and diagonal sum equal to 0 3 5 6 or 7 and every 3 X 3 column and antidiagonal sum not equal to 0 3 5 6 or 7.

The programs for A252388, there is no canonical definition to state claims against.
-/

/-! ## A252388.P1042145296707097729

`A252384(∑[n+3]+7)`
-/

namespace A252388.P1042145296707097729
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252384 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A252388.P1042145296707097729

/-! ## A252388.P11124775064486414976

`or(char[4], A252384(A141214(n)+7))`
-/

namespace A252388.P11124775064486414976
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A252384 (A141214 n + 7).toNat)

end

end A252388.P11124775064486414976

/-! ## A252388.P7716804300976849419

`or(char[4], A252384(A055999(n)+10))`
-/

namespace A252388.P7716804300976849419
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A252384 (A055999 n + 10).toNat)

end

end A252388.P7716804300976849419

/-! ## A252388.P17243393208103363895

`A007318(C(2, n))*A252384(A055999(n)+10)`
-/

namespace A252388.P17243393208103363895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A252384 (A055999 n + 10).toNat

end

end A252388.P17243393208103363895

/-! ## A252388.P5590364103784087169

`A252384(A055999(n)+10)/A007318(C(2, n+1))`
-/

namespace A252388.P5590364103784087169
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A252384 (A055999 n + 10).toNat : ℚ) / (A007318 (Nat.choose 2 (n + 1)) : ℚ)

end

end A252388.P5590364103784087169

/-!
# A252389: Number of (5+2) X (n+2) 0..3 arrays with every 3 X 3 subblock row and diagonal sum equal to 0 3 5 6 or 7 and every 3 X 3 column and antidiagonal sum not equal to 0 3 5 6 or 7.

The programs for A252389, there is no canonical definition to state claims against.
-/

/-! ## A252389.P10659741835227011190

`A252384(A167499(n+3))`
-/

namespace A252389.P10659741835227011190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252384 (A167499 (n + 3)).toNat

end

end A252389.P10659741835227011190

/-! ## A252389.P10759514677373718064

`A252384(A155212(n)+13)`
-/

namespace A252389.P10759514677373718064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252384 (A155212 n + 13).toNat

end

end A252389.P10759514677373718064

/-! ## A252389.P10049249906983173051

`A252384(A056000(n)+15)`
-/

namespace A252389.P10049249906983173051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252384 (A056000 n + 15).toNat

end

end A252389.P10049249906983173051

/-! ## A252389.P10385143103663418021

`A252384(∑[A020705(n)]+11)`
-/

namespace A252389.P10385143103663418021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020705 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252384 (∑ j ∈ Finset.range (n + 1), f1 j + 11).toNat

end

end A252389.P10385143103663418021

/-!
# A252390: Number of (6+2) X (n+2) 0..3 arrays with every 3 X 3 subblock row and diagonal sum equal to 0 3 5 6 or 7 and every 3 X 3 column and antidiagonal sum not equal to 0 3 5 6 or 7.

The programs for A252390, there is no canonical definition to state claims against.
-/

/-! ## A252390.P11882946387716664267

`A252384(∑[n+5]+16)`
-/

namespace A252390.P11882946387716664267
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252384 (∑ j ∈ Finset.range (n + 1), f1 j + 16)

end

end A252390.P11882946387716664267

/-! ## A252390.P2569343524502106382

`or(char[3], A252384(A000096(n+4)+7))`
-/

namespace A252390.P2569343524502106382
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A252384 (A000096 (n + 4) + 7).toNat)

end

end A252390.P2569343524502106382

/-! ## A252390.P5403957324317650444

`A007318(C(n, 2))*A252384(A000096(n+4)+7)`
-/

namespace A252390.P5403957324317650444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose n 2) * A252384 (A000096 (n + 4) + 7).toNat

end

end A252390.P5403957324317650444

/-! ## A252390.P2637927505430768492

`char[A007318(n)-1]*A252384(A000096(n+4)+7)`
-/

namespace A252390.P2637927505430768492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A252384 (A000096 (n + 4) + 7).toNat

end

end A252390.P2637927505430768492

/-! ## A252390.P9490420951001208553

`A000041(C(2, n+2))*A252384(A000096(n+4)+7)`
-/

namespace A252390.P9490420951001208553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose 2 (n + 2)) * A252384 (A000096 (n + 4) + 7).toNat

end

end A252390.P9490420951001208553

/-!
# A252391: Number of (7+2) X (n+2) 0..3 arrays with every 3 X 3 subblock row and diagonal sum equal to 0 3 5 6 or 7 and every 3 X 3 column and antidiagonal sum not equal to 0 3 5 6 or 7.

The programs for A252391, there is no canonical definition to state claims against.
-/

/-! ## A252391.P18226527022605999998

`A252384(A056119(n)+28)`
-/

namespace A252391.P18226527022605999998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252384 (A056119 n + 28).toNat

end

end A252391.P18226527022605999998

/-! ## A252391.P14319456944283881341

`A252384(A167499(n+5)+2)`
-/

namespace A252391.P14319456944283881341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252384 (A167499 (n + 5) + 2).toNat

end

end A252391.P14319456944283881341

/-! ## A252391.P3463663165883529153

`A252384(A167614(n+5)+4)`
-/

namespace A252391.P3463663165883529153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252384 (A167614 (n + 5) + 4).toNat

end

end A252391.P3463663165883529153

/-! ## A252391.P8405137374403010452

`A252384(A000124(n+6)+6)`
-/

namespace A252391.P8405137374403010452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252384 (A000124 (n + 6) + 6).toNat

end

end A252391.P8405137374403010452

/-! ## A252391.P16612840315942655856

`A252384(A000096(n+5)+8)`
-/

namespace A252391.P16612840315942655856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252384 (A000096 (n + 5) + 8).toNat

end

end A252391.P16612840315942655856

/-!
# A252392: Number of (n+2)X(1+2) 0..2 arrays with every 3X3 subblock row, column, diagonal and antidiagonal sum less than 4.

The programs for A252392, there is no canonical definition to state claims against.
-/

/-! ## A252392.P13216004408489246101

`A252397(∑[n]+1)`
-/

namespace A252392.P13216004408489246101
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252397 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A252392.P13216004408489246101

/-! ## A252392.P1590977797268485978

`record[A252397(n+1)/A118185(n)]`
-/

namespace A252392.P1590977797268485978
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A252397 (n + 1) : ℚ) / (A118185 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252392.P1590977797268485978

/-! ## A252392.P1078584385071130339

`record[gcd(A071920(n), A252397(n+1))]`
-/

namespace A252392.P1078584385071130339
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A071920 n) (A252397 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252392.P1078584385071130339

/-! ## A252392.P293172766415156337

`record[A252397(n+1)/A296827(n+1)]`
-/

namespace A252392.P293172766415156337
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A252397 (n + 1) : ℚ) / (A296827 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252392.P293172766415156337

/-! ## A252392.P4943718899034335964

`record[root(A252397(n+1), A200370(n+1))]`
-/

namespace A252392.P4943718899034335964
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A252397 (n + 1) : ℝ) ^ (1 / (A200370 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252392.P4943718899034335964

/-!
# A252393: Number of (n+2)X(2+2) 0..2 arrays with every 3X3 subblock row, column, diagonal and antidiagonal sum less than 4.

The programs for A252393, there is no canonical definition to state claims against.
-/

/-! ## A252393.P10195503204281280192

`A252397(∑[n+1]+2)`
-/

namespace A252393.P10195503204281280192
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252397 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A252393.P10195503204281280192

/-! ## A252393.P6676072953840946097

`record[A252397(abs(A201163(n)))]`
-/

namespace A252393.P6676072953840946097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252397 |A201163 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252393.P6676072953840946097

/-! ## A252393.P13734026869242283881

`A252397(A000096(n+1))+A035587(n)`
-/

namespace A252393.P13734026869242283881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252397 (A000096 (n + 1)).toNat + A035587 n

end

end A252393.P13734026869242283881

/-! ## A252393.P14615651745843255695

`lcm(A054977(n), A252397(A000096(n+1)))`
-/

namespace A252393.P14615651745843255695
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A054977 n) (A252397 (A000096 (n + 1)).toNat)

end

end A252393.P14615651745843255695

/-! ## A252393.P17098614855724865659

`A054977(n+1)*A252397(A000096(n+1))`
-/

namespace A252393.P17098614855724865659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 (n + 1) * A252397 (A000096 (n + 1)).toNat

end

end A252393.P17098614855724865659

/-!
# A252394: Number of (n+2)X(3+2) 0..2 arrays with every 3X3 subblock row, column, diagonal and antidiagonal sum less than 4.

The programs for A252394, there is no canonical definition to state claims against.
-/

/-! ## A252394.P11666558312655265171

`A252397(∑[n+2]+4)`
-/

namespace A252394.P11666558312655265171
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252397 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A252394.P11666558312655265171

/-! ## A252394.P11828753491032696160

`A252397(A167614(n+1))+A035587(n)`
-/

namespace A252394.P11828753491032696160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252397 (A167614 (n + 1)).toNat + A035587 n

end

end A252394.P11828753491032696160

/-! ## A252394.P3000479258084534932

`lcm(A054977(n), A252397(A167614(n+1)))`
-/

namespace A252394.P3000479258084534932
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A054977 n) (A252397 (A167614 (n + 1)).toNat)

end

end A252394.P3000479258084534932

/-! ## A252394.P5236983856550735990

`or(A048298(n), A252397(A167614(n+1)))`
-/

namespace A252394.P5236983856550735990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A048298 n) (A252397 (A167614 (n + 1)).toNat)

end

end A252394.P5236983856550735990

/-! ## A252394.P493572978394884349

`A136400(n+1)*A252397(A167614(n+1))`
-/

namespace A252394.P493572978394884349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136400 (n + 1) * A252397 (A167614 (n + 1)).toNat

end

end A252394.P493572978394884349

/-!
# A252395: Number of (n+2)X(4+2) 0..2 arrays with every 3X3 subblock row, column, diagonal and antidiagonal sum less than 4.

The programs for A252395, there is no canonical definition to state claims against.
-/

/-! ## A252395.P5586138643734710966

`A252397(∑[n+3]+7)`
-/

namespace A252395.P5586138643734710966
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252397 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A252395.P5586138643734710966

/-! ## A252395.P11760929478884042139

`A054977(n+1)*A252397(A141214(n)+7)`
-/

namespace A252395.P11760929478884042139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 (n + 1) * A252397 (A141214 n + 7).toNat

end

end A252395.P11760929478884042139

/-! ## A252395.P5946193431810640464

`A136400(n+1)*A252397(A141214(n)+7)`
-/

namespace A252395.P5946193431810640464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136400 (n + 1) * A252397 (A141214 n + 7).toNat

end

end A252395.P5946193431810640464

/-! ## A252395.P16711166702593873084

`A252397(A141214(n)+7)+A071920(A007318(n))`
-/

namespace A252395.P16711166702593873084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252397 (A141214 n + 7).toNat + A071920 (A007318 n).toNat

end

end A252395.P16711166702593873084

/-!
# A252396: 

The programs for A252396, there is no canonical definition to state claims against.
-/

/-! ## A252396.P17626754966503268176

`A252397(A167499(n+3))`
-/

namespace A252396.P17626754966503268176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252397 (A167499 (n + 3)).toNat

end

end A252396.P17626754966503268176

/-! ## A252396.P9044993352733867351

`A252397(eq[7, A066657(n)])`
-/

namespace A252396.P9044993352733867351
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252397 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A252396.P9044993352733867351

/-! ## A252396.P3330820219383844364

`A252397(A000124(n+4)+4)`
-/

namespace A252396.P3330820219383844364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252397 (A000124 (n + 4) + 4).toNat

end

end A252396.P3330820219383844364

/-!
# A252399: Number of (n+2)X(n+2) 0..3 arrays with every 3X3 subblock row and diagonal sum equal to 2 3 4 6 or 7 and every 3X3 column and antidiagonal sum not equal to 2 3 4 6 or 7.

The programs for A252399, there is no canonical definition to state claims against.
-/

/-! ## A252399.P13440724597146944503

`A252407((n+1)²+n²)`
-/

namespace A252399.P13440724597146944503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252407 ((n + 1) ^ 2 + n ^ 2)

end

end A252399.P13440724597146944503

/-! ## A252399.P2980054272427450259

`A252407(A001844(n))+A178798(n)`
-/

namespace A252399.P2980054272427450259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252407 (A001844 n).toNat + A178798 n

end

end A252399.P2980054272427450259

/-! ## A252399.P9764260766833370077

`A252407(A001844(n))+A185284(n)`
-/

namespace A252399.P9764260766833370077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252407 (A001844 n).toNat + A185284 n

end

end A252399.P9764260766833370077

/-! ## A252399.P11046435611959859070

`A252407(A001844(n))*A262681(n)`
-/

namespace A252399.P11046435611959859070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252407 (A001844 n).toNat * A262681 n

end

end A252399.P11046435611959859070

/-! ## A252399.P16134088910479042622

`A252407(A001844(n))-A001222(((-1)^n)²)`
-/

namespace A252399.P16134088910479042622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252407 (A001844 n).toNat - A001222 (((-1) ^ n) ^ 2).toNat

end

end A252399.P16134088910479042622

