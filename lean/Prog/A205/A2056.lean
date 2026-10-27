import SequenceMachineLib
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
import Seq.B000.C012
import Seq.B000.C014
import Seq.B000.C016
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
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C037
import Seq.B000.C039
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C012
import Seq.B001.C013
import Seq.B002.C000
import Seq.B002.C002
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C002
import Seq.B003.C003
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
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
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
import Seq.Opaque.C011
import Seq.Opaque.C012
import Seq.Opaque.C013
import Seq.Opaque.C015
import Seq.Opaque.C016
import Seq.Opaque.C017
import Seq.Opaque.C018
import Seq.Opaque.C019
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C024

/-!
# A205600: Start with first run [1,2] then, for n >= 2, the n-th run is a(n) times [a(1),...,a(n-1)].

The programs for A205600, there is no canonical definition to state claims against.
-/

/-! ## A205600.P1118795214260193256

`gcd(2, A305534(A175306(2*n+5)))`
-/

namespace A205600.P1118795214260193256
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A305534 (A175306 (2 * n + 5)).toNat)

end

end A205600.P1118795214260193256

/-! ## A205600.P6593958832425314653

`A171810(gcd(A007089(2*(n+2)), A117762(2*n+3)))`
-/

namespace A205600.P6593958832425314653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171810 (Int.gcd (A007089 (2 * (n + 2))) (A117762 (2 * n + 3)))

end

end A205600.P6593958832425314653

/-! ## A205600.P7099395877276831357

`A334924(xor(2*n, A188259(n+1)))`
-/

namespace A205600.P7099395877276831357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334924 (Int.xor (2 * n : ℤ) (A188259 (n + 1))).toNat

end

end A205600.P7099395877276831357

/-! ## A205600.P9358705791050874939

`A000005(gcd(A119484(n+1), A144459(n)))`
-/

namespace A205600.P9358705791050874939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (Int.gcd (A119484 (n + 1)) (A144459 n))

end

end A205600.P9358705791050874939

/-! ## A205600.P5137335177647976069

`p?[A099244(A171172(n+1))]-1`
-/

namespace A205600.P5137335177647976069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099244 (A171172 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 1

end

end A205600.P5137335177647976069

/-!
# A205602: Number of (n+1)X(n+1) 0..3 arrays with every 2X2 subblock having the same number of equal edges as its horizontal neighbors and a different number from its vertical neighbors, and new values 0..3 introduced in row major order.

The programs for A205602, there is no canonical definition to state claims against.
-/

/-! ## A205602.P570846643259146810

`A205609(∑[4*n]+1)`
-/

namespace A205602.P570846643259146810
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205609 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A205602.P570846643259146810

/-!
# A205603: Number of (n+1)X3 0..3 arrays with every 2X2 subblock having the same number of equal edges as its horizontal neighbors and a different number from its vertical neighbors, and new values 0..3 introduced in row major order.

The programs for A205603, there is no canonical definition to state claims against.
-/

/-! ## A205603.P6846779265565805620

`A205609(∑[n+2])`
-/

namespace A205603.P6846779265565805620
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205609 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A205603.P6846779265565805620

/-! ## A205603.P13460386403757360703

`record[A205609(A000096(val(n+1, 2)+1))]`
-/

namespace A205603.P13460386403757360703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205609 (A000096 (SequenceMachineLib.valuation (n + 1) 2 + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A205603.P13460386403757360703

/-! ## A205603.P14870871225721540549

`record[A205609(n+2)/A048854(n+2)]`
-/

namespace A205603.P14870871225721540549
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A205609 (n + 2) : ℚ) / (A048854 (n + 2) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A205603.P14870871225721540549

/-! ## A205603.P9626904738438818963

`A205609(A000096(n+1))+A000007(n+3)`
-/

namespace A205603.P9626904738438818963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205609 (A000096 (n + 1)).toNat + A000007 (n + 3)

end

end A205603.P9626904738438818963

/-! ## A205603.P1631451792944621337

`A205609(A000096(n+1))%A187422(n+1)`
-/

namespace A205603.P1631451792944621337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A205609 (A000096 (n + 1)).toNat) (A187422 (n + 1))

end

end A205603.P1631451792944621337

/-!
# A205604: Number of (n+1)X4 0..3 arrays with every 2X2 subblock having the same number of equal edges as its horizontal neighbors and a different number from its vertical neighbors, and new values 0..3 introduced in row major order.

The programs for A205604, there is no canonical definition to state claims against.
-/

/-! ## A205604.P6606343655390387274

`A205609(∑[n+3]+1)`
-/

namespace A205604.P6606343655390387274
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205609 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A205604.P6606343655390387274

/-!
# A205605: Number of (n+1)X5 0..3 arrays with every 2X2 subblock having the same number of equal edges as its horizontal neighbors and a different number from its vertical neighbors, and new values 0..3 introduced in row major order.

The programs for A205605, there is no canonical definition to state claims against.
-/

/-! ## A205605.P9951792062902262461

`A205609(A141214(n+1))`
-/

namespace A205605.P9951792062902262461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205609 (A141214 (n + 1)).toNat

end

end A205605.P9951792062902262461

/-! ## A205605.P16636123745124114443

`A205609(A055998(n+2))`
-/

namespace A205605.P16636123745124114443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205609 (A055998 (n + 2)).toNat

end

end A205605.P16636123745124114443

/-! ## A205605.P12916999743245956419

`A205609(A056000(n)+7)`
-/

namespace A205605.P12916999743245956419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205609 (A056000 n + 7).toNat

end

end A205605.P12916999743245956419

/-! ## A205605.P12520807632128734166

`A205609(eq[3, A193592(n)])`
-/

namespace A205605.P12520807632128734166
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205609 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A205605.P12520807632128734166

/-! ## A205605.P17048279660628160165

`A205609(Δ[A006416(n+2)])`
-/

namespace A205605.P17048279660628160165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006416 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205609 (f1 (n + 1) - f1 n).toNat

end

end A205605.P17048279660628160165

/-!
# A205606: Number of (n+1)X6 0..3 arrays with every 2X2 subblock having the same number of equal edges as its horizontal neighbors and a different number from its vertical neighbors, and new values 0..3 introduced in row major order.

The programs for A205606, there is no canonical definition to state claims against.
-/

/-! ## A205606.P17527592158036700090

`A205609(∑[n+5]+6)`
-/

namespace A205606.P17527592158036700090
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205609 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A205606.P17527592158036700090

/-!
# A205607: Number of (n+1) X 7 0..3 arrays with every 2 X 2 subblock having the same number of equal edges as its horizontal neighbors and a different number from its vertical neighbors, and new values 0..3 introduced in row major order.

The programs for A205607, there is no canonical definition to state claims against.
-/

/-! ## A205607.P10638064194419284288

`A205609(eq[3, A219347(n)])`
-/

namespace A205607.P10638064194419284288
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205609 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A205607.P10638064194419284288

/-!
# A205608: Number of (n+1)X8 0..3 arrays with every 2X2 subblock having the same number of equal edges as its horizontal neighbors and a different number from its vertical neighbors, and new values 0..3 introduced in row major order.

The programs for A205608, there is no canonical definition to state claims against.
-/

/-! ## A205608.P17561159850394150849

`A205609(eq[4, A219347(n)])`
-/

namespace A205608.P17561159850394150849
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205609 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A205608.P17561159850394150849

/-!
# A205610: Number of 3 X (n+1) 0..3 arrays with every 2 X 2 subblock having the same number of equal edges as its horizontal neighbors and a different number from its vertical neighbors, and new values 0..3 introduced in row major order.

The programs for A205610, there is no canonical definition to state claims against.
-/

/-! ## A205610.P5877916863068406485

`A205609(∑[n+1]+2)`
-/

namespace A205610.P5877916863068406485
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205609 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A205610.P5877916863068406485

/-! ## A205610.P7076619715674566015

`record[root(A205609(n+3), A059298(n))]`
-/

namespace A205610.P7076619715674566015
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A205609 (n + 3) : ℝ) ^ (1 / (A059298 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A205610.P7076619715674566015

/-! ## A205610.P14901418722546850324

`record[gcd(A141169(n+1), A205609(n+3))]`
-/

namespace A205610.P14901418722546850324
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A141169 (n + 1)) (A205609 (n + 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A205610.P14901418722546850324

/-! ## A205610.P8648352333979306522

`A212619(n+1)+A205609(A022856(n+5))`
-/

namespace A205610.P8648352333979306522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212619 (n + 1) + A205609 (A022856 (n + 5)).toNat

end

end A205610.P8648352333979306522

/-! ## A205610.P814442084010179667

`A205609(A022856(n+5))+A000007(2*(n+2))`
-/

namespace A205610.P814442084010179667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205609 (A022856 (n + 5)).toNat + A000007 (2 * (n + 2))

end

end A205610.P814442084010179667

/-!
# A205611: Number of 4X(n+1) 0..3 arrays with every 2X2 subblock having the same number of equal edges as its horizontal neighbors and a different number from its vertical neighbors, and new values 0..3 introduced in row major order.

The programs for A205611, there is no canonical definition to state claims against.
-/

/-! ## A205611.P3940638180287141608

`A205609(∑[n+2]+4)`
-/

namespace A205611.P3940638180287141608
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205609 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A205611.P3940638180287141608

/-! ## A205611.P11297100595430000582

`A205609(A167614(n+1))+A011737(n)`
-/

namespace A205611.P11297100595430000582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205609 (A167614 (n + 1)).toNat + A011737 n

end

end A205611.P11297100595430000582

/-! ## A205611.P4516783887887872543

`A205609(A167614(n+1))+A084904(n)`
-/

namespace A205611.P4516783887887872543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205609 (A167614 (n + 1)).toNat + A084904 n

end

end A205611.P4516783887887872543

/-! ## A205611.P16631919179161715620

`A205609(A167614(n+1))+A088116(n)`
-/

namespace A205611.P16631919179161715620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205609 (A167614 (n + 1)).toNat + A088116 n

end

end A205611.P16631919179161715620

/-! ## A205611.P4585974942803911539

`A205609(A167614(n+1))+A151795(n)`
-/

namespace A205611.P4585974942803911539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205609 (A167614 (n + 1)).toNat + A151795 n

end

end A205611.P4585974942803911539

/-!
# A205612: Number of 5X(n+1) 0..3 arrays with every 2X2 subblock having the same number of equal edges as its horizontal neighbors and a different number from its vertical neighbors, and new values 0..3 introduced in row major order.

The programs for A205612, there is no canonical definition to state claims against.
-/

/-! ## A205612.P14645390518549283395

`A205609(A141214(n)+7)`
-/

namespace A205612.P14645390518549283395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205609 (A141214 n + 7).toNat

end

end A205612.P14645390518549283395

/-! ## A205612.P8944733960665913384

`A205609(A052905(n)+9)`
-/

namespace A205612.P8944733960665913384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205609 (A052905 n + 9).toNat

end

end A205612.P8944733960665913384

/-! ## A205612.P15544753728756541594

`A205609(A055999(n)+10)`
-/

namespace A205612.P15544753728756541594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205609 (A055999 n + 10).toNat

end

end A205612.P15544753728756541594

/-! ## A205612.P5701074693449673590

`A205609(A167614(n+2)+1)`
-/

namespace A205612.P5701074693449673590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205609 (A167614 (n + 2) + 1).toNat

end

end A205612.P5701074693449673590

/-! ## A205612.P1725823401038883123

`A205609(A166136(n+2)-2)`
-/

namespace A205612.P1725823401038883123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205609 (A166136 (n + 2) - 2).toNat

end

end A205612.P1725823401038883123

/-!
# A205613: Number of 6X(n+1) 0..3 arrays with every 2X2 subblock having the same number of equal edges as its horizontal neighbors and a different number from its vertical neighbors, and new values 0..3 introduced in row major order.

The programs for A205613, there is no canonical definition to state claims against.
-/

/-! ## A205613.P1496936713569815257

`A205609(A167499(n+3))`
-/

namespace A205613.P1496936713569815257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205609 (A167499 (n + 3)).toNat

end

end A205613.P1496936713569815257

/-! ## A205613.P17900910006177228772

`A205609(A155212(n)+13)`
-/

namespace A205613.P17900910006177228772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205609 (A155212 n + 13).toNat

end

end A205613.P17900910006177228772

/-! ## A205613.P14753400616573346881

`A205609(A056000(n)+15)`
-/

namespace A205613.P14753400616573346881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205609 (A056000 n + 15).toNat

end

end A205613.P14753400616573346881

/-! ## A205613.P3690495726404925568

`A205609(eq[7, A066657(n)])`
-/

namespace A205613.P3690495726404925568
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205609 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A205613.P3690495726404925568

/-! ## A205613.P9852885105662135062

`A205609(eq[6, A131818(n+1)])`
-/

namespace A205613.P9852885105662135062
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205609 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A205613.P9852885105662135062

/-!
# A205614: Number of 7X(n+1) 0..3 arrays with every 2X2 subblock having the same number of equal edges as its horizontal neighbors and a different number from its vertical neighbors, and new values 0..3 introduced in row major order.

The programs for A205614, there is no canonical definition to state claims against.
-/

/-! ## A205614.P7007954229334920011

`A205609(A166136(n+4))`
-/

namespace A205614.P7007954229334920011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205609 (A166136 (n + 4)).toNat

end

end A205614.P7007954229334920011

/-! ## A205614.P3559672766839157432

`A205609(eq[7, A131818(n+1)])`
-/

namespace A205614.P3559672766839157432
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205609 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A205614.P3559672766839157432

/-!
# A205615: Number of 8X(n+1) 0..3 arrays with every 2X2 subblock having the same number of equal edges as its horizontal neighbors and a different number from its vertical neighbors, and new values 0..3 introduced in row major order.

The programs for A205615, there is no canonical definition to state claims against.
-/

/-! ## A205615.P8631774015274194523

`A205609(eq[8, A131818(n+1)])`
-/

namespace A205615.P8631774015274194523
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205609 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A205615.P8631774015274194523

/-!
# A205616: Even numbers that are not the sum of two non-Ramanujan primes (A174635).

The programs for A205616, there is no canonical definition to state claims against.
-/

/-! ## A205616.P6502736812840122662

`record[gcd(2*(n+1), A205617(n+1))]`
-/

namespace A205616.P6502736812840122662
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (2 * (n + 1) : ℤ) (A205617 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A205616.P6502736812840122662

/-! ## A205616.P6217267160471599715

`A005843(eq[0, A205617(n+1)]+1)`
-/

namespace A205616.P6217267160471599715
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205617 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A205616.P6217267160471599715

/-!
# A205619: Number of (n+1)X(n+1) 0..2 arrays with every 2X2 subblock in a row having an equal number of equal diagonal or equal antidiagonal elements, adjacent rows differing in this number, and new values 0..2 introduced in row major order.

The programs for A205619, there is no canonical definition to state claims against.
-/

/-! ## A205619.P9587104317920509225

`A205626(∑[4*n]+1)`
-/

namespace A205619.P9587104317920509225
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205626 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A205619.P9587104317920509225

/-! ## A205619.P1693545581680420319

`lcm(2, A205626(A001844(n)))`
-/

namespace A205619.P1693545581680420319
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A205626 (A001844 n).toNat)

end

end A205619.P1693545581680420319

/-! ## A205619.P12551939812476861668

`record[A205626(A330613(n+1))]`
-/

namespace A205619.P12551939812476861668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205626 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A205619.P12551939812476861668

/-! ## A205619.P4097600402618685560

`A205626(A001844(n))+A185037(n)`
-/

namespace A205619.P4097600402618685560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205626 (A001844 n).toNat + A185037 n

end

end A205619.P4097600402618685560

/-!
# A205620: Number of (n+1) X 3 0..2 arrays with every 2 X 2 subblock in a row having an equal number of equal diagonal or equal antidiagonal elements, adjacent rows differing in this number, and new values 0..2 introduced in row major order.

The programs for A205620, there is no canonical definition to state claims against.
-/

/-! ## A205620.P5804990449747328230

`A205626(∑[n+2])`
-/

namespace A205620.P5804990449747328230
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205626 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A205620.P5804990449747328230

/-! ## A205620.P126532497343968919

`record[A205626(abs(A201163(n)))]`
-/

namespace A205620.P126532497343968919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205626 |A201163 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A205620.P126532497343968919

/-! ## A205620.P1226665489605332860

`lcm(2, A205626(A000096(n+1)))`
-/

namespace A205620.P1226665489605332860
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A205626 (A000096 (n + 1)).toNat)

end

end A205620.P1226665489605332860

/-! ## A205620.P427607710433087056

`record[gcd(A205626(n+2), A306814(n+1))]`
-/

namespace A205620.P427607710433087056
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A205626 (n + 2)) (A306814 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A205620.P427607710433087056

/-! ## A205620.P13275436659724297630

`record[A205626(A000096(C(comp[∑[n]]-n, 2)-n))]`
-/

namespace A205620.P13275436659724297630
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205626 (A000096 (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 - n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A205620.P13275436659724297630

/-!
# A205621: Number of (n+1) X 4 0..2 arrays with every 2 X 2 subblock in a row having an equal number of equal diagonal or equal antidiagonal elements, adjacent rows differing in this number, and new values 0..2 introduced in row major order.

The programs for A205621, there is no canonical definition to state claims against.
-/

/-! ## A205621.P506752435784185145

`A205626(∑[n+3]+1)`
-/

namespace A205621.P506752435784185145
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205626 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A205621.P506752435784185145

/-!
# A205622: Number of (n+1)X5 0..2 arrays with every 2X2 subblock in a row having an equal number of equal diagonal or equal antidiagonal elements, adjacent rows differing in this number, and new values 0..2 introduced in row major order.

The programs for A205622, there is no canonical definition to state claims against.
-/

/-! ## A205622.P13582328821487883918

`A205626(A141214(n+1))`
-/

namespace A205622.P13582328821487883918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205626 (A141214 (n + 1)).toNat

end

end A205622.P13582328821487883918

/-! ## A205622.P1323207561672816893

`A205626(A155212(n)+5)`
-/

namespace A205622.P1323207561672816893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205626 (A155212 n + 5).toNat

end

end A205622.P1323207561672816893

/-! ## A205622.P4549754732578745736

`A205626(A056000(n)+7)`
-/

namespace A205622.P4549754732578745736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205626 (A056000 n + 7).toNat

end

end A205622.P4549754732578745736

/-! ## A205622.P8144034652617730644

`A205626(eq[2, A225094(n)])`
-/

namespace A205622.P8144034652617730644
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225094 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205626 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A205622.P8144034652617730644

/-! ## A205622.P6109972032424160215

`A205626(∑[A020705(n)]+3)`
-/

namespace A205622.P6109972032424160215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020705 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205626 (∑ j ∈ Finset.range (n + 1), f1 j + 3).toNat

end

end A205622.P6109972032424160215

/-!
# A205623: Number of (n+1)X6 0..2 arrays with every 2X2 subblock in a row having an equal number of equal diagonal or equal antidiagonal elements, adjacent rows differing in this number, and new values 0..2 introduced in row major order.

The programs for A205623, there is no canonical definition to state claims against.
-/

/-! ## A205623.P8969544100415234187

`A205626(Δ[A264443(n)])`
-/

namespace A205623.P8969544100415234187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205626 (f1 (n + 1) - f1 n).toNat

end

end A205623.P8969544100415234187

/-! ## A205623.P12239233905474322390

`A205626(A056115(n)+11)`
-/

namespace A205623.P12239233905474322390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205626 (A056115 n + 11).toNat

end

end A205623.P12239233905474322390

/-! ## A205623.P12395626641029061519

`A205626(eq[4, A193592(n)])`
-/

namespace A205623.P12395626641029061519
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205626 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A205623.P12395626641029061519

/-! ## A205623.P1461595981009961938

`A205626(Δ[A023545(n+1)])`
-/

namespace A205623.P1461595981009961938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205626 (f1 (n + 1) - f1 n).toNat

end

end A205623.P1461595981009961938

/-! ## A205623.P18352326574255205974

`A205626(A246172(n+1)+10)`
-/

namespace A205623.P18352326574255205974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205626 (A246172 (n + 1) + 10).toNat

end

end A205623.P18352326574255205974

/-!
# A205624: Number of (n+1)X7 0..2 arrays with every 2X2 subblock in a row having an equal number of equal diagonal or equal antidiagonal elements, adjacent rows differing in this number, and new values 0..2 introduced in row major order.

The programs for A205624, there is no canonical definition to state claims against.
-/

/-! ## A205624.P1447068496185323571

`A205626(eq[3, A219347(n)])`
-/

namespace A205624.P1447068496185323571
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205626 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A205624.P1447068496185323571

/-! ## A205624.P12843629386674803041

`A205626(eq[5, A193592(n)])`
-/

namespace A205624.P12843629386674803041
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205626 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A205624.P12843629386674803041

/-! ## A205624.P1119452064370070602

`A205626(eq[8, A185782(n+1)])`
-/

namespace A205624.P1119452064370070602
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205626 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A205624.P1119452064370070602

/-! ## A205624.P12664632154386786721

`A205626(Δ[Δ[A006504(n+1)]])`
-/

namespace A205624.P12664632154386786721
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006504 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205626 (f1 (n + 1) - f1 n).toNat

end

end A205624.P12664632154386786721

/-! ## A205624.P15436964923280111163

`A205626(Δ[A264443(n+1)]-1)`
-/

namespace A205624.P15436964923280111163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205626 (f1 (n + 1) - f1 n - 1).toNat

end

end A205624.P15436964923280111163

/-!
# A205625: Number of (n+1) X 8 0..2 arrays with every 2 X 2 subblock in a row having an equal number of equal diagonal or equal antidiagonal elements, adjacent rows differing in this number, and new values 0..2 introduced in row major order.

The programs for A205625, there is no canonical definition to state claims against.
-/

/-! ## A205625.P17578150350582477688

`A205626(A055999(n+4))`
-/

namespace A205625.P17578150350582477688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205626 (A055999 (n + 4)).toNat

end

end A205625.P17578150350582477688

/-! ## A205625.P17983292182924679781

`A205626(eq[4, A219347(n)])`
-/

namespace A205625.P17983292182924679781
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205626 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A205625.P17983292182924679781

/-! ## A205625.P5725065647526281459

`A205626(eq[6, A193592(n)])`
-/

namespace A205625.P5725065647526281459
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205626 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A205625.P5725065647526281459

/-! ## A205625.P16491571023516715952

`A205626(eq[7, A200370(n+1)])`
-/

namespace A205625.P16491571023516715952
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205626 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A205625.P16491571023516715952

/-! ## A205625.P3537989426739739365

`A205626(eq[10, A185782(n+1)])`
-/

namespace A205625.P3537989426739739365
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205626 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A205625.P3537989426739739365

/-!
# A205627: Number of 3 X (n+1) 0..2 arrays with every 2 X 2 subblock in a row having an equal number of equal diagonal or equal antidiagonal elements, adjacent rows differing in this number, and new values 0..2 introduced in row major order.

The programs for A205627, there is no canonical definition to state claims against.
-/

/-! ## A205627.P12048406729553847189

`A205626(∑[n+1]+2)`
-/

namespace A205627.P12048406729553847189
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205626 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A205627.P12048406729553847189

/-! ## A205627.P1679584459342650921

`lcm(2, A205626(A133263(n+1)))`
-/

namespace A205627.P1679584459342650921
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A205626 (A133263 (n + 1)).toNat)

end

end A205627.P1679584459342650921

/-! ## A205627.P11054690083316897957

`record[A205626(A115017(n+1)+2)]`
-/

namespace A205627.P11054690083316897957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205626 (A115017 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A205627.P11054690083316897957

/-! ## A205627.P2941409675664505143

`record[A205626(n+3)/A078939(n)]`
-/

namespace A205627.P2941409675664505143
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A205626 (n + 3) : ℚ) / (A078939 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A205627.P2941409675664505143

/-! ## A205627.P474119113933556260

`record[A205626(A133263(C(comp[∑[n]]-n, 2)-n))]`
-/

namespace A205627.P474119113933556260
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205626 (A133263 (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 - n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A205627.P474119113933556260

/-!
# A205628: Number of 4X(n+1) 0..2 arrays with every 2X2 subblock in a row having an equal number of equal diagonal or equal antidiagonal elements, adjacent rows differing in this number, and new values 0..2 introduced in row major order.

The programs for A205628, there is no canonical definition to state claims against.
-/

/-! ## A205628.P6135385890789379170

`A205626(∑[n+2]+4)`
-/

namespace A205628.P6135385890789379170
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205626 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A205628.P6135385890789379170

/-! ## A205628.P4378030407224547137

`lcm(2, A205626(A167614(n+1)))`
-/

namespace A205628.P4378030407224547137
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A205626 (A167614 (n + 1)).toNat)

end

end A205628.P4378030407224547137

/-! ## A205628.P18177465319742387989

`record[A205626(A167614(C(comp[∑[n]]-n, 2)-n))]`
-/

namespace A205628.P18177465319742387989
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205626 (A167614 (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 - n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A205628.P18177465319742387989

/-! ## A205628.P6703124434184740816

`A205626(A167614(n+1))+A178798(n)`
-/

namespace A205628.P6703124434184740816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205626 (A167614 (n + 1)).toNat + A178798 n

end

end A205628.P6703124434184740816

/-! ## A205628.P4798551437774405586

`A297244(n+1)+A205626(A167614(n+1))`
-/

namespace A205628.P4798551437774405586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297244 (n + 1) + A205626 (A167614 (n + 1)).toNat

end

end A205628.P4798551437774405586

/-!
# A205629: Number of 5X(n+1) 0..2 arrays with every 2X2 subblock in a row having an equal number of equal diagonal or equal antidiagonal elements, adjacent rows differing in this number, and new values 0..2 introduced in row major order.

The programs for A205629, there is no canonical definition to state claims against.
-/

/-! ## A205629.P8867717613837516544

`A205626(A141214(n)+7)`
-/

namespace A205629.P8867717613837516544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205626 (A141214 n + 7).toNat

end

end A205629.P8867717613837516544

/-! ## A205629.P1825827933195757641

`A205626(A052905(n)+9)`
-/

namespace A205629.P1825827933195757641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205626 (A052905 n + 9).toNat

end

end A205629.P1825827933195757641

/-! ## A205629.P15775963700722856159

`A205626(A055999(n)+10)`
-/

namespace A205629.P15775963700722856159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205626 (A055999 n + 10).toNat

end

end A205629.P15775963700722856159

/-! ## A205629.P13662586275533804494

`A205626(A167614(n+2)+1)`
-/

namespace A205629.P13662586275533804494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205626 (A167614 (n + 2) + 1).toNat

end

end A205629.P13662586275533804494

/-! ## A205629.P2203690287525097011

`A205626(eq[5, A131818(n+1)])`
-/

namespace A205629.P2203690287525097011
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205626 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A205629.P2203690287525097011

/-!
# A205630: Number of 6X(n+1) 0..2 arrays with every 2X2 subblock in a row having an equal number of equal diagonal or equal antidiagonal elements, adjacent rows differing in this number, and new values 0..2 introduced in row major order.

The programs for A205630, there is no canonical definition to state claims against.
-/

/-! ## A205630.P9742252941371637460

`A205626(A167499(n+3))`
-/

namespace A205630.P9742252941371637460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205626 (A167499 (n + 3)).toNat

end

end A205630.P9742252941371637460

/-! ## A205630.P9443998615323499274

`A205626(A155212(n)+13)`
-/

namespace A205630.P9443998615323499274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205626 (A155212 n + 13).toNat

end

end A205630.P9443998615323499274

/-! ## A205630.P1716458412632946094

`A205626(A056000(n)+15)`
-/

namespace A205630.P1716458412632946094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205626 (A056000 n + 15).toNat

end

end A205630.P1716458412632946094

/-! ## A205630.P2189229925087233242

`A205626(eq[7, A066657(n)])`
-/

namespace A205630.P2189229925087233242
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205626 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A205630.P2189229925087233242

/-! ## A205630.P4269299958357972165

`A205626(A000124(n+4)+4)`
-/

namespace A205630.P4269299958357972165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205626 (A000124 (n + 4) + 4).toNat

end

end A205630.P4269299958357972165

/-!
# A205631: Number of 7X(n+1) 0..2 arrays with every 2X2 subblock in a row having an equal number of equal diagonal or equal antidiagonal elements, adjacent rows differing in this number, and new values 0..2 introduced in row major order.

The programs for A205631, there is no canonical definition to state claims against.
-/

/-! ## A205631.P12884634351847911883

`A205626(A056115(n)+21)`
-/

namespace A205631.P12884634351847911883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205626 (A056115 n + 21).toNat

end

end A205631.P12884634351847911883

/-! ## A205631.P554715380419275514

`A205626(A000124(n+5)+5)`
-/

namespace A205631.P554715380419275514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205626 (A000124 (n + 5) + 5).toNat

end

end A205631.P554715380419275514

/-! ## A205631.P925601086586554270

`A205626(A000217(n+5)+6)`
-/

namespace A205631.P925601086586554270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205626 (A000217 (n + 5) + 6).toNat

end

end A205631.P925601086586554270

/-! ## A205631.P17643159326274238184

`A205626(A246172(n+1)+20)`
-/

namespace A205631.P17643159326274238184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205626 (A246172 (n + 1) + 20).toNat

end

end A205631.P17643159326274238184

/-! ## A205631.P14078178175099908098

`A205626(eq[7, A131818(n+1)])`
-/

namespace A205631.P14078178175099908098
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205626 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A205631.P14078178175099908098

/-!
# A205632: Number of 8X(n+1) 0..2 arrays with every 2X2 subblock in a row having an equal number of equal diagonal or equal antidiagonal elements, adjacent rows differing in this number, and new values 0..2 introduced in row major order.

The programs for A205632, there is no canonical definition to state claims against.
-/

/-! ## A205632.P879489349470125209

`A205626(eq[11, A066657(n)])`
-/

namespace A205632.P879489349470125209
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205626 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A205632.P879489349470125209

/-! ## A205632.P15620412601554397996

`A205626(A000217(n+6)+7)`
-/

namespace A205632.P15620412601554397996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205626 (A000217 (n + 6) + 7).toNat

end

end A205632.P15620412601554397996

/-! ## A205632.P8158995844410134129

`A205626(A161680(n+7)+7)`
-/

namespace A205632.P8158995844410134129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205626 (A161680 (n + 7) + 7).toNat

end

end A205632.P8158995844410134129

/-! ## A205632.P12444635176072006903

`A205626(eq[6, A002262(n)]+1)`
-/

namespace A205632.P12444635176072006903
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205626 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A205632.P12444635176072006903

/-! ## A205632.P16818434395584713913

`A205626(eq[8, A131818(n+1)])`
-/

namespace A205632.P16818434395584713913
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205626 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A205632.P16818434395584713913

/-!
# A205633: Expansion of f(x^3, x^7) in powers of x where f() is Ramanujan's two-variable theta function.

The programs for A205633, the canonical program `A205633.P3131482922578761219` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A205633 has offset 0).

The definition of A205633 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A010052, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A205633.P3131482922578761219

`A010052(5*n+1)`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A205633

/-- `A010052(5*n+1)` -/
def P3131482922578761219.Spec : Prop :=
  ∀ n, P3131482922578761219.a n = A205633 n

theorem P3131482922578761219.correct : P3131482922578761219.Spec := by
  intro n
  simp only [A205633]

end A205633

/-! ## A205633.P4508065495226950313

`char[∑[lcm(2, n)+n]]`
-/

namespace A205633.P4508065495226950313
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 n + n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A205633.P4508065495226950313

namespace A205633

/-- `char[∑[lcm(2, n)+n]]` -/
def P4508065495226950313.Spec : Prop :=
  ∀ n, (P4508065495226950313.a n : ℤ) = A205633 n

end A205633

/-! ## A205633.P2643287190698721772

`char[∑[n*(3-char[2*n])]]`
-/

namespace A205633.P2643287190698721772
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (3 - ((if ∃ j, f3 j = n then 1 else 0 : ℕ) : ℤ))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A205633.P2643287190698721772

namespace A205633

/-- `char[∑[n*(3-char[2*n])]]` -/
def P2643287190698721772.Spec : Prop :=
  ∀ n, (P2643287190698721772.a n : ℤ) = A205633 n

end A205633

/-! ## A205633.P7098200584786867192

`A053281(n)%2`
-/

namespace A205633.P7098200584786867192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A053281 n) 2

end

end A205633.P7098200584786867192

namespace A205633

/-- `A053281(n)%2` -/
def P7098200584786867192.Spec : Prop :=
  ∀ n, P7098200584786867192.a n = A205633 n

end A205633

/-! ## A205633.P2925531563381767076

`and(1, A340456(n))`
-/

namespace A205633.P2925531563381767076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A340456 n)

end

end A205633.P2925531563381767076

namespace A205633

/-- `and(1, A340456(n))` -/
def P2925531563381767076.Spec : Prop :=
  ∀ n, P2925531563381767076.a n = A205633 n

end A205633

/-! ## A205633.P6602156179623499521

`A053866(5*n+1)`
-/

namespace A205633.P6602156179623499521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053866 (5 * n + 1)

end

end A205633.P6602156179623499521

namespace A205633

/-- `A053866(5*n+1)` -/
def P6602156179623499521.Spec : Prop :=
  ∀ n, P6602156179623499521.a n = A205633 n

end A205633

/-! ## A205633.P15594549151587851741

`A143259(5*n+1)`
-/

namespace A205633.P15594549151587851741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143259 (5 * n + 1)

end

end A205633.P15594549151587851741

namespace A205633

/-- `A143259(5*n+1)` -/
def P15594549151587851741.Spec : Prop :=
  ∀ n, P15594549151587851741.a n = A205633 n

end A205633

/-! ## A205633.P10110230400296343051

`A000005(5*n+1)%2`
-/

namespace A205633.P10110230400296343051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000005 (5 * n + 1)) 2

end

end A205633.P10110230400296343051

namespace A205633

/-- `A000005(5*n+1)%2` -/
def P10110230400296343051.Spec : Prop :=
  ∀ n, P10110230400296343051.a n = A205633 n

end A205633

/-! ## A205633.P11893280963292769131

`A000203(5*n+1)%2`
-/

namespace A205633.P11893280963292769131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000203 (5 * n + 1)) 2

end

end A205633.P11893280963292769131

namespace A205633

/-- `A000203(5*n+1)%2` -/
def P11893280963292769131.Spec : Prop :=
  ∀ n, P11893280963292769131.a n = A205633 n

end A205633

/-! ## A205633.P2551251633334733944

`∑{d}[1-A016873(n), #]%2`
-/

namespace A205633.P2551251633334733944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A016873 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ d ∈ Nat.divisors (f1 n).natAbs, d) % 2

end

end A205633.P2551251633334733944

namespace A205633

/-- `∑{d}[1-A016873(n), #]%2` -/
def P2551251633334733944.Spec : Prop :=
  ∀ n, (P2551251633334733944.a n : ℤ) = A205633 n

end A205633

/-! ## A205633.P17137701334721395167

`A115356(A017281(n))`
-/

namespace A205633.P17137701334721395167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115356 (A017281 n).toNat

end

end A205633.P17137701334721395167

namespace A205633

/-- `A115356(A017281(n))` -/
def P17137701334721395167.Spec : Prop :=
  ∀ n, P17137701334721395167.a n = A205633 n

end A205633

/-! ## A205633.P6118541468489398332

`and(A014577(n), A053281(n))`
-/

namespace A205633.P6118541468489398332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A014577 n) (A053281 n)

end

end A205633.P6118541468489398332

namespace A205633

/-- `and(A014577(n), A053281(n))` -/
def P6118541468489398332.Spec : Prop :=
  ∀ n, P6118541468489398332.a n = A205633 n

end A205633

/-! ## A205633.P2260410832719522894

`and(A053281(n), A060576(n))`
-/

namespace A205633.P2260410832719522894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A053281 n) (A060576 n)

end

end A205633.P2260410832719522894

namespace A205633

/-- `and(A053281(n), A060576(n))` -/
def P2260410832719522894.Spec : Prop :=
  ∀ n, P2260410832719522894.a n = A205633 n

end A205633

/-! ## A205633.P9869554792826236774

`and(A053281(n), A105234(n))`
-/

namespace A205633.P9869554792826236774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A053281 n) (A105234 n)

end

end A205633.P9869554792826236774

namespace A205633

/-- `and(A053281(n), A105234(n))` -/
def P9869554792826236774.Spec : Prop :=
  ∀ n, P9869554792826236774.a n = A205633 n

end A205633

/-! ## A205633.P13418502525526834727

`and(1, A000005(A016885(n)-2))`
-/

namespace A205633.P13418502525526834727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A000005 (A016885 n - 2).toNat)

end

end A205633.P13418502525526834727

namespace A205633

/-- `and(1, A000005(A016885(n)-2))` -/
def P13418502525526834727.Spec : Prop :=
  ∀ n, P13418502525526834727.a n = A205633 n

end A205633

/-! ## A205633.P12698865042427592861

`and(1, A000203(A016885(n)-2))`
-/

namespace A205633.P12698865042427592861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A000203 (A016885 n - 2).toNat)

end

end A205633.P12698865042427592861

namespace A205633

/-- `and(1, A000203(A016885(n)-2))` -/
def P12698865042427592861.Spec : Prop :=
  ∀ n, P12698865042427592861.a n = A205633 n

end A205633

/-! ## A205633.P12804884011481638000

`A184012(n+1)-A183870(n+1)`
-/

namespace A205633.P12804884011481638000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184012 (n + 1) - A183870 (n + 1)

end

end A205633.P12804884011481638000

namespace A205633

/-- `A184012(n+1)-A183870(n+1)` -/
def P12804884011481638000.Spec : Prop :=
  ∀ n, P12804884011481638000.a n = A205633 n

end A205633

/-! ## A205633.P8750067679275653303

`and(1, A285441(2*n))`
-/

namespace A205633.P8750067679275653303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A285441 (2 * n))

end

end A205633.P8750067679275653303

namespace A205633

/-- `and(1, A285441(2*n))` -/
def P8750067679275653303.Spec : Prop :=
  ∀ n, P8750067679275653303.a n = A205633 n

end A205633

/-! ## A205633.P2094018427875751389

`and(1, A285443(2*n+1))`
-/

namespace A205633.P2094018427875751389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A285443 (2 * n + 1))

end

end A205633.P2094018427875751389

namespace A205633

/-- `and(1, A285443(2*n+1))` -/
def P2094018427875751389.Spec : Prop :=
  ∀ n, P2094018427875751389.a n = A205633 n

end A205633

/-! ## A205633.P14315590845023534814

`floor(acot(A146326(4*n+1+n)))`
-/

namespace A205633.P14315590845023534814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (A146326 (4 * n + 1 + n) : ℝ)⌋

end

end A205633.P14315590845023534814

namespace A205633

/-- `floor(acot(A146326(4*n+1+n)))` -/
def P14315590845023534814.Spec : Prop :=
  ∀ n, P14315590845023534814.a n = A205633 n

end A205633

/-!
# A205634: Number of (n+1)X(n+1) 0..3 arrays with every 2 X 2 subblock having the number of clockwise edge increases equal to the number of counterclockwise edge increases in its adjacent leftward and upward neighbors.

The programs for A205634, there is no canonical definition to state claims against.
-/

/-! ## A205634.P3588186113825433936

`A205642((n+1)²+n²)`
-/

namespace A205634.P3588186113825433936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205642 ((n + 1) ^ 2 + n ^ 2)

end

end A205634.P3588186113825433936

/-! ## A205634.P4799213149106716973

`lcm(2, A205642(A001844(n)))`
-/

namespace A205634.P4799213149106716973
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A205642 (A001844 n).toNat)

end

end A205634.P4799213149106716973

/-! ## A205634.P18140274826590211320

`record[A205642(Δ[A235355(n)])]`
-/

namespace A205634.P18140274826590211320
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235355 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205642 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A205634.P18140274826590211320

/-!
# A205635: Number of (n+1)X2 0..3 arrays with every 2 X 2 subblock having the number of clockwise edge increases equal to the number of counterclockwise edge increases in its adjacent leftward and upward neighbors.

The programs for A205635, there is no canonical definition to state claims against.
-/

/-! ## A205635.P13355605511853090154

`A205642(∑[n]+1)`
-/

namespace A205635.P13355605511853090154
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205642 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A205635.P13355605511853090154

/-! ## A205635.P7538405086542268765

`lcm(2, A205642(A000124(n)))`
-/

namespace A205635.P7538405086542268765
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A205642 (A000124 n).toNat)

end

end A205635.P7538405086542268765

/-! ## A205635.P15075752612143167541

`record[A010054(n)*A205642(n+1)]`
-/

namespace A205635.P15075752612143167541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A205642 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A205635.P15075752612143167541

/-! ## A205635.P13919213665174332844

`record[A205642(n+1)/A333157(n)]`
-/

namespace A205635.P13919213665174332844
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A205642 (n + 1) : ℚ) / (A333157 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A205635.P13919213665174332844

/-! ## A205635.P2455406580850779940

`record[root(A205642(n+1), A193815(n))]`
-/

namespace A205635.P2455406580850779940
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A205642 (n + 1) : ℝ) ^ (1 / (A193815 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A205635.P2455406580850779940

/-!
# A205636: Number of (n+1)X3 0..3 arrays with every 2 X 2 subblock having the number of clockwise edge increases equal to the number of counterclockwise edge increases in its adjacent leftward and upward neighbors.

The programs for A205636, there is no canonical definition to state claims against.
-/

/-! ## A205636.P11860852547295153960

`A205642(∑[n+1]+2)`
-/

namespace A205636.P11860852547295153960
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205642 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A205636.P11860852547295153960

/-! ## A205636.P1411666870571650075

`record[A010054(n)*A205642(n+2)]`
-/

namespace A205636.P1411666870571650075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A205642 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A205636.P1411666870571650075

/-! ## A205636.P8835565916146297120

`A081503(n)!*A205642(A000096(n)+3)`
-/

namespace A205636.P8835565916146297120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A081503 n).toNat : ℤ) * A205642 (A000096 n + 3).toNat

end

end A205636.P8835565916146297120

/-! ## A205636.P17317800319288240421

`record[A205642(Δ[A003453(n+5)])]`
-/

namespace A205636.P17317800319288240421
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003453 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205642 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A205636.P17317800319288240421

/-! ## A205636.P352598378268613360

`record[A205642(A198453(n+1))]`
-/

namespace A205636.P352598378268613360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205642 (A198453 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A205636.P352598378268613360

/-!
# A205637: Number of (n+1)X4 0..3 arrays with every 2 X 2 subblock having the number of clockwise edge increases equal to the number of counterclockwise edge increases in its adjacent leftward and upward neighbors.

The programs for A205637, there is no canonical definition to state claims against.
-/

/-! ## A205637.P3684266682607325417

`A205642(∑[n+2]+4)`
-/

namespace A205637.P3684266682607325417
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205642 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A205637.P3684266682607325417

/-! ## A205637.P5789764765463882101

`lcm(2, A205642(A167614(n+1)))`
-/

namespace A205637.P5789764765463882101
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A205642 (A167614 (n + 1)).toNat)

end

end A205637.P5789764765463882101

/-! ## A205637.P18291629476853930617

`A205642(A167614(n+1))+A025437(n)`
-/

namespace A205637.P18291629476853930617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205642 (A167614 (n + 1)).toNat + A025437 n

end

end A205637.P18291629476853930617

/-! ## A205637.P14974098375934848681

`A205642(A167614(n+1))*A291168(n)`
-/

namespace A205637.P14974098375934848681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205642 (A167614 (n + 1)).toNat * A291168 n

end

end A205637.P14974098375934848681

/-! ## A205637.P3381271764536210808

`A205642(A167614(n+1))+A034528(n+1)`
-/

namespace A205637.P3381271764536210808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205642 (A167614 (n + 1)).toNat + A034528 (n + 1)

end

end A205637.P3381271764536210808

/-!
# A205638: Number of (n+1)X5 0..3 arrays with every 2 X 2 subblock having the number of clockwise edge increases equal to the number of counterclockwise edge increases in its adjacent leftward and upward neighbors.

The programs for A205638, there is no canonical definition to state claims against.
-/

/-! ## A205638.P2107770554171355478

`A205642(A141214(n)+7)`
-/

namespace A205638.P2107770554171355478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205642 (A141214 n + 7).toNat

end

end A205638.P2107770554171355478

/-! ## A205638.P12911339345553455918

`A205642(A052905(n)+9)`
-/

namespace A205638.P12911339345553455918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205642 (A052905 n + 9).toNat

end

end A205638.P12911339345553455918

/-! ## A205638.P9911797466338256883

`A205642(A167614(n+2)+1)`
-/

namespace A205638.P9911797466338256883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205642 (A167614 (n + 2) + 1).toNat

end

end A205638.P9911797466338256883

/-! ## A205638.P12535783310878797030

`A205642(A155212(n)+5)`
-/

namespace A205638.P12535783310878797030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205642 (A155212 n + 5).toNat

end

end A205638.P12535783310878797030

/-! ## A205638.P17612042090993690516

`A205642(A051936(n+4)+6)`
-/

namespace A205638.P17612042090993690516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205642 (A051936 (n + 4) + 6).toNat

end

end A205638.P17612042090993690516

/-!
# A205639: Number of (n+1)X6 0..3 arrays with every 2 X 2 subblock having the number of clockwise edge increases equal to the number of counterclockwise edge increases in its adjacent leftward and upward neighbors.

The programs for A205639, there is no canonical definition to state claims against.
-/

/-! ## A205639.P8770564258059901960

`A205642(A374005(n+1))`
-/

namespace A205639.P8770564258059901960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205642 (A374005 (n + 1)).toNat

end

end A205639.P8770564258059901960

/-! ## A205639.P12658215650930015052

`A205642(A000124(n+5)-(n+1))`
-/

namespace A205639.P12658215650930015052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205642 (A000124 (n + 5) - (n + 1 : ℤ)).toNat

end

end A205639.P12658215650930015052

/-! ## A205639.P13507245475749426238

`A205642(Δ[A264443(n)])`
-/

namespace A205639.P13507245475749426238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205642 (f1 (n + 1) - f1 n).toNat

end

end A205639.P13507245475749426238

/-! ## A205639.P1260405435297631556

`A205642(eq[6, A185782(n+1)])`
-/

namespace A205639.P1260405435297631556
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205642 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A205639.P1260405435297631556

/-!
# A205640: 

The programs for A205640, there is no canonical definition to state claims against.
-/

/-! ## A205640.P18004736229204841418

`A205642(A167499(n+4)+1)`
-/

namespace A205640.P18004736229204841418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205642 (A167499 (n + 4) + 1).toNat

end

end A205640.P18004736229204841418

/-! ## A205640.P10963203609289882746

`A205642(A000124(n+5)+5)`
-/

namespace A205640.P10963203609289882746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205642 (A000124 (n + 5) + 5).toNat

end

end A205640.P10963203609289882746

/-!
# A205646: Number of empty faces in Freij's family of Hansen polytopes.

The programs for A205646, the canonical program `A205646.P14950017872745976362` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A205646 has offset 0).

The definition of A205646 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A205646.P14950017872745976362

`3^n+16`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A205646

/-- `3^n+16` -/
def P14950017872745976362.Spec : Prop :=
  ∀ n, (P14950017872745976362.a n : ℤ) = A205646 n

theorem P14950017872745976362.correct : P14950017872745976362.Spec := by
  intro n
  simp only [A205646]

end A205646

/-!
# A205647: Numbers k such that 3^k + 16 is prime.

The programs for A205647, there is no canonical definition to state claims against.
-/

/-! ## A205647.P3309919050283771712

`eq[A331410(A134283(n+1)), A341974(n+7)]`
-/

namespace A205647.P3309919050283771712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331410 (A134283 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341974 (n + 7)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A205647.P3309919050283771712

/-!
# A205649: Hamming distance between twin primes.

The programs for A205649, the canonical program `A205649.P8452228514460162335` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A205649 has offset 1).

The definition of A205649 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A205649.P8452228514460162335

`val(A014574(n+1), 2)`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A205649

/-- `val(A014574(n+1), 2)` -/
def P8452228514460162335.Spec : Prop :=
  ∀ n, (P8452228514460162335.a n : ℤ) = A205649 (n + 1)

theorem P8452228514460162335.correct : P8452228514460162335.Spec := by
  intro n
  simp only [A205649, Nat.add_sub_cancel]

end A205649

/-! ## A205649.P17682567978339628468

`val(A126248(n+1), 2)`
-/

namespace A205649.P17682567978339628468
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A126248 (n + 1)).toNat 2

end

end A205649.P17682567978339628468

namespace A205649

/-- `val(A126248(n+1), 2)` -/
def P17682567978339628468.Spec : Prop :=
  ∀ n, (P17682567978339628468.a n : ℤ) = A205649 (n + 1)

end A205649

/-! ## A205649.P4448187643789118452

`val(A126251(n+1), 2)`
-/

namespace A205649.P4448187643789118452
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A126251 (n + 1)).toNat 2

end

end A205649.P4448187643789118452

namespace A205649

/-- `val(A126251(n+1), 2)` -/
def P4448187643789118452.Spec : Prop :=
  ∀ n, (P4448187643789118452.a n : ℤ) = A205649 (n + 1)

end A205649

/-! ## A205649.P2442472586565307992

`val(A075369(n+1), 4)`
-/

namespace A205649.P2442472586565307992
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A075369 (n + 1)).toNat 4

end

end A205649.P2442472586565307992

namespace A205649

/-- `val(A075369(n+1), 4)` -/
def P2442472586565307992.Spec : Prop :=
  ∀ n, (P2442472586565307992.a n : ℤ) = A205649 (n + 1)

end A205649

/-! ## A205649.P18171993664246064044

`val(A001359(n+1)+1, 2)`
-/

namespace A205649.P18171993664246064044
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A001359 (n + 1) + 1).toNat 2

end

end A205649.P18171993664246064044

namespace A205649

/-- `val(A001359(n+1)+1, 2)` -/
def P18171993664246064044.Spec : Prop :=
  ∀ n, (P18171993664246064044.a n : ℤ) = A205649 (n + 1)

end A205649

/-! ## A205649.P12772256327939486777

`val(A040040(n+1), 2)+1`
-/

namespace A205649.P12772256327939486777
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A040040 (n + 1)).toNat 2 + 1

end

end A205649.P12772256327939486777

namespace A205649

/-- `val(A040040(n+1), 2)+1` -/
def P12772256327939486777.Spec : Prop :=
  ∀ n, (P12772256327939486777.a n : ℤ) = A205649 (n + 1)

end A205649

/-! ## A205649.P12386476946567490520

`val(A126249(n+1), 2)+1`
-/

namespace A205649.P12386476946567490520
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A126249 (n + 1)).toNat 2 + 1

end

end A205649.P12386476946567490520

namespace A205649

/-- `val(A126249(n+1), 2)+1` -/
def P12386476946567490520.Spec : Prop :=
  ∀ n, (P12386476946567490520.a n : ℤ) = A205649 (n + 1)

end A205649

/-! ## A205649.P13582125652309895260

`val(A006512(n+1)-1, 2)`
-/

namespace A205649.P13582125652309895260
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A006512 (n + 1) - 1).toNat 2

end

end A205649.P13582125652309895260

namespace A205649

/-- `val(A006512(n+1)-1, 2)` -/
def P13582125652309895260.Spec : Prop :=
  ∀ n, (P13582125652309895260.a n : ℤ) = A205649 (n + 1)

end A205649

/-! ## A205649.P14454682650751666917

`val(A054735(n+1), 2)-1`
-/

namespace A205649.P14454682650751666917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (A054735 (n + 1)).toNat 2 : ℤ) - 1

end

end A205649.P14454682650751666917

namespace A205649

/-- `val(A054735(n+1), 2)-1` -/
def P14454682650751666917.Spec : Prop :=
  ∀ n, P14454682650751666917.a n = A205649 (n + 1)

end A205649

/-! ## A205649.P18146041668034297993

`val(A144834(n+1)+2, 2)`
-/

namespace A205649.P18146041668034297993
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A144834 (n + 1) + 2).toNat 2

end

end A205649.P18146041668034297993

namespace A205649

/-- `val(A144834(n+1)+2, 2)` -/
def P18146041668034297993.Spec : Prop :=
  ∀ n, (P18146041668034297993.a n : ℤ) = A205649 (n + 1)

end A205649

/-! ## A205649.P4669752065877605204

`val(A158619(n+1)-1, 2)`
-/

namespace A205649.P4669752065877605204
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A158619 (n + 1) - 1).toNat 2

end

end A205649.P4669752065877605204

namespace A205649

/-- `val(A158619(n+1)-1, 2)` -/
def P4669752065877605204.Spec : Prop :=
  ∀ n, (P4669752065877605204.a n : ℤ) = A205649 (n + 1)

end A205649

/-! ## A205649.P2722095708437183176

`val(A111046(n+1), 2)-2`
-/

namespace A205649.P2722095708437183176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (A111046 (n + 1)).toNat 2 : ℤ) - 2

end

end A205649.P2722095708437183176

namespace A205649

/-- `val(A111046(n+1), 2)-2` -/
def P2722095708437183176.Spec : Prop :=
  ∀ n, P2722095708437183176.a n = A205649 (n + 1)

end A205649

/-! ## A205649.P16051177283670489041

`val(A077800(2*n+1)+1, 2)`
-/

namespace A205649.P16051177283670489041
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A077800 (2 * n + 1) + 1).toNat 2

end

end A205649.P16051177283670489041

namespace A205649

/-- `val(A077800(2*n+1)+1, 2)` -/
def P16051177283670489041.Spec : Prop :=
  ∀ n, (P16051177283670489041.a n : ℤ) = A205649 (n + 1)

end A205649

/-! ## A205649.P8617414384696646548

`val(p?[A040976(n+1)]+1, 2)`
-/

namespace A205649.P8617414384696646548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040976 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 1).toNat 2

end

end A205649.P8617414384696646548

namespace A205649

/-- `val(p?[A040976(n+1)]+1, 2)` -/
def P8617414384696646548.Spec : Prop :=
  ∀ n, (P8617414384696646548.a n : ℤ) = A205649 (n + 1)

end A205649

/-! ## A205649.P2036072168772522226

`val(p?[A000040(n+1)+2]-1, 2)`
-/

namespace A205649.P2036072168772522226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 1).toNat 2

end

end A205649.P2036072168772522226

namespace A205649

/-- `val(p?[A000040(n+1)+2]-1, 2)` -/
def P2036072168772522226.Spec : Prop :=
  ∀ n, (P2036072168772522226.a n : ℤ) = A205649 (n + 1)

end A205649

/-! ## A205649.P17431360901784677972

`A023512(A029707(n+1))`
-/

namespace A205649.P17431360901784677972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023512 (A029707 (n + 1)).toNat

end

end A205649.P17431360901784677972

namespace A205649

/-- `A023512(A029707(n+1))` -/
def P17431360901784677972.Spec : Prop :=
  ∀ n, P17431360901784677972.a n = A205649 (n + 1)

end A205649

/-! ## A205649.P11417106050895598089

`A023506(A107770(n+1))`
-/

namespace A205649.P11417106050895598089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023506 (A107770 (n + 1)).toNat

end

end A205649.P11417106050895598089

namespace A205649

/-- `A023506(A107770(n+1))` -/
def P11417106050895598089.Spec : Prop :=
  ∀ n, P11417106050895598089.a n = A205649 (n + 1)

end A205649

/-! ## A205649.P777833117545578363

`val(A000203(A001359(n+1)), 2)`
-/

namespace A205649.P777833117545578363
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A000203 (A001359 (n + 1)).toNat).toNat 2

end

end A205649.P777833117545578363

namespace A205649

/-- `val(A000203(A001359(n+1)), 2)` -/
def P777833117545578363.Spec : Prop :=
  ∀ n, (P777833117545578363.a n : ℤ) = A205649 (n + 1)

end A205649

/-! ## A205649.P8494886838147535285

`val(A000010(A006512(n+1)), 2)`
-/

namespace A205649.P8494886838147535285
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A000010 (A006512 (n + 1)).toNat).toNat 2

end

end A205649.P8494886838147535285

namespace A205649

/-- `val(A000010(A006512(n+1)), 2)` -/
def P8494886838147535285.Spec : Prop :=
  ∀ n, (P8494886838147535285.a n : ℤ) = A205649 (n + 1)

end A205649

/-! ## A205649.P4189448977341738251

`A336842(A088175(n+1))`
-/

namespace A205649.P4189448977341738251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336842 (A088175 (n + 1)).toNat

end

end A205649.P4189448977341738251

namespace A205649

/-- `A336842(A088175(n+1))` -/
def P4189448977341738251.Spec : Prop :=
  ∀ n, P4189448977341738251.a n = A205649 (n + 1)

end A205649

/-!
# A205650: Period 12: repeat (1, 6, 8, 6, 1, 9, 8, 3, 1, 3, 8, 9).

The programs for A205650, the canonical program `A205650.P6988856271426545041` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A205650 has offset 1).

The definition of A205650 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A205650.P6988856271426545041

`dr(∑[A156637(2*n+1)])`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A205650

/-- `dr(∑[A156637(2*n+1)])` -/
def P6988856271426545041.Spec : Prop :=
  ∀ n, (P6988856271426545041.a n : ℤ) = A205650 (n + 1)

theorem P6988856271426545041.correct : P6988856271426545041.Spec := by
  intro n
  simp only [A205650, Nat.add_sub_cancel]

end A205650

/-!
# A205651: Period 6: repeat [1, 6, 5, 4, 9, 0].

The programs for A205651, the canonical program `A205651.P9301164766259284354` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A205651 has offset 1).

The definition of A205651 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A205651.P9301164766259284354

`a(n-6)` with `a(0)=1, a(1)=6, a(2)=5, a(3)=4, a(4)=9, a(5)=0`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A205651

/-- `a(n-6)` -/
def P9301164766259284354.Spec : Prop :=
  ∀ n, (P9301164766259284354.a n : ℤ) = A205651 (n + 1)

theorem P9301164766259284354.correct : P9301164766259284354.Spec := by
  intro n
  simp only [A205651, Nat.add_sub_cancel]

end A205651

/-!
# A205652: Number of (n+1)X(n+1) 0..3 arrays with every 2 X 2 subblock having the same number of clockwise edge increases as its horizontal neighbors and no 2 X 2 subblock having the same number of counterclockwise edge increases as its vertical neighbors.

The programs for A205652, there is no canonical definition to state claims against.
-/

/-! ## A205652.P3526686686138194804

`A205659(∑[4*n]+1)`
-/

namespace A205652.P3526686686138194804
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205659 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A205652.P3526686686138194804

/-! ## A205652.P15377243842182974588

`lcm(4, A205659(n²+(n+1)²))`
-/

namespace A205652.P15377243842182974588
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 4 (A205659 (n ^ 2 + (n + 1) ^ 2))

end

end A205652.P15377243842182974588

/-! ## A205652.P12657588645258644486

`and(-1, A205659(A001844(n)))`
-/

namespace A205652.P12657588645258644486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A205659 (A001844 n).toNat)

end

end A205652.P12657588645258644486

/-!
# A205653: Number of (n+1)X3 0..3 arrays with every 2 X 2 subblock having the same number of clockwise edge increases as its horizontal neighbors and no 2 X 2 subblock having the same number of counterclockwise edge increases as its vertical neighbors.

The programs for A205653, there is no canonical definition to state claims against.
-/

/-! ## A205653.P8739595041812070242

`A205659(∑[n+2])`
-/

namespace A205653.P8739595041812070242
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205659 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A205653.P8739595041812070242

/-! ## A205653.P16130267375860709528

`record[A205659(abs(A201163(n)))]`
-/

namespace A205653.P16130267375860709528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205659 |A201163 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A205653.P16130267375860709528

/-! ## A205653.P6977691531901200064

`lcm(2, A205659(A000096(n+1)))`
-/

namespace A205653.P6977691531901200064
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A205659 (A000096 (n + 1)).toNat)

end

end A205653.P6977691531901200064

/-! ## A205653.P2058501972962695055

`A033999(2*n)*A205659(A000096(n+1))`
-/

namespace A205653.P2058501972962695055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (2 * n) * A205659 (A000096 (n + 1)).toNat

end

end A205653.P2058501972962695055

/-! ## A205653.P7111505100524925269

`A059841(2*n)*A205659(A000096(n+1))`
-/

namespace A205653.P7111505100524925269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (2 * n) * A205659 (A000096 (n + 1)).toNat

end

end A205653.P7111505100524925269

/-!
# A205654: Number of (n+1)X4 0..3 arrays with every 2 X 2 subblock having the same number of clockwise edge increases as its horizontal neighbors and no 2 X 2 subblock having the same number of counterclockwise edge increases as its vertical neighbors.

The programs for A205654, there is no canonical definition to state claims against.
-/

/-! ## A205654.P4678800355356529752

`A205659(∑[n+3]+1)`
-/

namespace A205654.P4678800355356529752
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205659 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A205654.P4678800355356529752

/-! ## A205654.P18229596842125230235

`lcm(2, A205659(A034856(n+2)))`
-/

namespace A205654.P18229596842125230235
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A205659 (A034856 (n + 2)).toNat)

end

end A205654.P18229596842125230235

/-! ## A205654.P9903277742006648775

`A205659(A034856(n+2))%A034989(n+2)`
-/

namespace A205654.P9903277742006648775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A205659 (A034856 (n + 2)).toNat) (A034989 (n + 2))

end

end A205654.P9903277742006648775

/-!
# A205655: Number of (n+1) X 5 0..3 arrays with every 2 X 2 subblock having the same number of clockwise edge increases as its horizontal neighbors and no 2 X 2 subblock having the same number of counterclockwise edge increases as its vertical neighbors.

The programs for A205655, there is no canonical definition to state claims against.
-/

/-! ## A205655.P3750562872222727799

`A205659(A141214(n+1))`
-/

namespace A205655.P3750562872222727799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205659 (A141214 (n + 1)).toNat

end

end A205655.P3750562872222727799

/-! ## A205655.P12777160802445111676

`A205659(A055998(n+2))`
-/

namespace A205655.P12777160802445111676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205659 (A055998 (n + 2)).toNat

end

end A205655.P12777160802445111676

/-! ## A205655.P13241603285575548121

`A205659(A155212(n)+5)`
-/

namespace A205655.P13241603285575548121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205659 (A155212 n + 5).toNat

end

end A205655.P13241603285575548121

/-! ## A205655.P11374943365138745382

`A205659(A056000(n)+7)`
-/

namespace A205655.P11374943365138745382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205659 (A056000 n + 7).toNat

end

end A205655.P11374943365138745382

/-! ## A205655.P15332013835904172241

`A205659(A052905(n+1)+2)`
-/

namespace A205655.P15332013835904172241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205659 (A052905 (n + 1) + 2).toNat

end

end A205655.P15332013835904172241

/-!
# A205656: Number of (n+1)X6 0..3 arrays with every 2 X 2 subblock having the same number of clockwise edge increases as its horizontal neighbors and no 2 X 2 subblock having the same number of counterclockwise edge increases as its vertical neighbors.

The programs for A205656, there is no canonical definition to state claims against.
-/

/-! ## A205656.P17731273140884922959

`A205659(Δ[A264443(n)])`
-/

namespace A205656.P17731273140884922959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205659 (f1 (n + 1) - f1 n).toNat

end

end A205656.P17731273140884922959

/-! ## A205656.P6803934534997533339

`A205659(A046691(n+3))`
-/

namespace A205656.P6803934534997533339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205659 (A046691 (n + 3)).toNat

end

end A205656.P6803934534997533339

/-! ## A205656.P4988949768474365271

`A205659(eq[4, A193592(n)])`
-/

namespace A205656.P4988949768474365271
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205659 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A205656.P4988949768474365271

/-! ## A205656.P1021316176379654699

`A205659(Δ[A023545(n+1)])`
-/

namespace A205656.P1021316176379654699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205659 (f1 (n + 1) - f1 n).toNat

end

end A205656.P1021316176379654699

/-! ## A205656.P12031808248608214977

`A205659(eq[6, A185782(n+1)])`
-/

namespace A205656.P12031808248608214977
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205659 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A205656.P12031808248608214977

/-!
# A205657: Number of (n+1) X 7 0..3 arrays with every 2 X 2 subblock having the same number of clockwise edge increases as its horizontal neighbors and no 2 X 2 subblock having the same number of counterclockwise edge increases as its vertical neighbors.

The programs for A205657, there is no canonical definition to state claims against.
-/

/-! ## A205657.P8836129192164507967

`A205659(eq[3, A219347(n)])`
-/

namespace A205657.P8836129192164507967
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205659 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A205657.P8836129192164507967

/-! ## A205657.P1866855823780917010

`A205659(eq[5, A193592(n)])`
-/

namespace A205657.P1866855823780917010
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205659 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A205657.P1866855823780917010

/-! ## A205657.P17730632236664101068

`A205659(eq[16, A166065(n)])`
-/

namespace A205657.P17730632236664101068
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166065 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205659 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A205657.P17730632236664101068

/-! ## A205657.P16282598093197320603

`A205659(A055999(n+3)+1)`
-/

namespace A205657.P16282598093197320603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205659 (A055999 (n + 3) + 1).toNat

end

end A205657.P16282598093197320603

/-! ## A205657.P17920381726915191756

`A205659(eq[6, A200370(n+1)])`
-/

namespace A205657.P17920381726915191756
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205659 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A205657.P17920381726915191756

/-!
# A205658: Number of (n+1)X8 0..3 arrays with every 2 X 2 subblock having the same number of clockwise edge increases as its horizontal neighbors and no 2 X 2 subblock having the same number of counterclockwise edge increases as its vertical neighbors.

The programs for A205658, there is no canonical definition to state claims against.
-/

/-! ## A205658.P6806377539568009946

`A205659(A055999(n+4))`
-/

namespace A205658.P6806377539568009946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205659 (A055999 (n + 4)).toNat

end

end A205658.P6806377539568009946

/-! ## A205658.P3532656795137293782

`A205659(eq[4, A219347(n)])`
-/

namespace A205658.P3532656795137293782
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205659 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A205658.P3532656795137293782

/-! ## A205658.P18077716175718266113

`A205659(eq[6, A193592(n)])`
-/

namespace A205658.P18077716175718266113
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205659 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A205658.P18077716175718266113

/-! ## A205658.P5246674002765844917

`A205659(A052905(n+4)-1)`
-/

namespace A205658.P5246674002765844917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205659 (A052905 (n + 4) - 1).toNat

end

end A205658.P5246674002765844917

/-!
# A205660: Number of 3X(n+1) 0..3 arrays with every 2 X 2 subblock having the same number of clockwise edge increases as its horizontal neighbors and no 2 X 2 subblock having the same number of counterclockwise edge increases as its vertical neighbors.

The programs for A205660, there is no canonical definition to state claims against.
-/

/-! ## A205660.P11988146160159314732

`A205659(∑[n+1]+2)`
-/

namespace A205660.P11988146160159314732
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205659 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A205660.P11988146160159314732

/-! ## A205660.P10742212966177831208

`lcm(2, A205659(A133263(n+1)))`
-/

namespace A205660.P10742212966177831208
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A205659 (A133263 (n + 1)).toNat)

end

end A205660.P10742212966177831208

/-! ## A205660.P5015286239658258307

`record[gcd(A008281(n+1), A205659(n+3))]`
-/

namespace A205660.P5015286239658258307
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A008281 (n + 1)) (A205659 (n + 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A205660.P5015286239658258307

/-! ## A205660.P2958479360381231794

`A205659(A133263(n+1))%A206182(n+2)`
-/

namespace A205660.P2958479360381231794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A205659 (A133263 (n + 1)).toNat) (A206182 (n + 2))

end

end A205660.P2958479360381231794

/-! ## A205660.P8023503698666185916

`A055396(2*(n+1))*A205659(A133263(n+1))`
-/

namespace A205660.P8023503698666185916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (2 * (n + 1)) * A205659 (A133263 (n + 1)).toNat

end

end A205660.P8023503698666185916

/-!
# A205661: Number of 4X(n+1) 0..3 arrays with every 2 X 2 subblock having the same number of clockwise edge increases as its horizontal neighbors and no 2 X 2 subblock having the same number of counterclockwise edge increases as its vertical neighbors.

The programs for A205661, there is no canonical definition to state claims against.
-/

/-! ## A205661.P13795757723765077258

`A205659(∑[n+2]+4)`
-/

namespace A205661.P13795757723765077258
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205659 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A205661.P13795757723765077258

/-! ## A205661.P8567774886807469186

`lcm(2, A205659(A167614(n+1)))`
-/

namespace A205661.P8567774886807469186
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A205659 (A167614 (n + 1)).toNat)

end

end A205661.P8567774886807469186

/-! ## A205661.P6844656713518513053

`A205659(A167614(n+1))+A011744(n)`
-/

namespace A205661.P6844656713518513053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205659 (A167614 (n + 1)).toNat + A011744 n

end

end A205661.P6844656713518513053

/-! ## A205661.P5042338321034621822

`A205659(A167614(n+1))+A046786(n)`
-/

namespace A205661.P5042338321034621822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205659 (A167614 (n + 1)).toNat + A046786 n

end

end A205661.P5042338321034621822

/-! ## A205661.P14647243887794903834

`A205659(A167614(n+1))+A185284(n)`
-/

namespace A205661.P14647243887794903834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205659 (A167614 (n + 1)).toNat + A185284 n

end

end A205661.P14647243887794903834

/-!
# A205662: Number of 5X(n+1) 0..3 arrays with every 2 X 2 subblock having the same number of clockwise edge increases as its horizontal neighbors and no 2 X 2 subblock having the same number of counterclockwise edge increases as its vertical neighbors.

The programs for A205662, there is no canonical definition to state claims against.
-/

/-! ## A205662.P6010768032228386755

`A205659(A141214(n)+7)`
-/

namespace A205662.P6010768032228386755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205659 (A141214 n + 7).toNat

end

end A205662.P6010768032228386755

/-! ## A205662.P9566883097437279629

`A205659(A052905(n)+9)`
-/

namespace A205662.P9566883097437279629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205659 (A052905 n + 9).toNat

end

end A205662.P9566883097437279629

/-! ## A205662.P634744018720318158

`A205659(A055999(n)+10)`
-/

namespace A205662.P634744018720318158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205659 (A055999 n + 10).toNat

end

end A205662.P634744018720318158

/-! ## A205662.P279740120952548870

`A205659(A167614(n+2)+1)`
-/

namespace A205662.P279740120952548870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205659 (A167614 (n + 2) + 1).toNat

end

end A205662.P279740120952548870

/-! ## A205662.P9330618544086385555

`A205659(eq[5, A131818(n+1)])`
-/

namespace A205662.P9330618544086385555
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205659 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A205662.P9330618544086385555

/-!
# A205663: Number of 6X(n+1) 0..3 arrays with every 2 X 2 subblock having the same number of clockwise edge increases as its horizontal neighbors and no 2 X 2 subblock having the same number of counterclockwise edge increases as its vertical neighbors.

The programs for A205663, there is no canonical definition to state claims against.
-/

/-! ## A205663.P12646789751402880895

`A205659(A167499(n+3))`
-/

namespace A205663.P12646789751402880895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205659 (A167499 (n + 3)).toNat

end

end A205663.P12646789751402880895

/-! ## A205663.P13196791170696575927

`A205659(A155212(n)+13)`
-/

namespace A205663.P13196791170696575927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205659 (A155212 n + 13).toNat

end

end A205663.P13196791170696575927

/-! ## A205663.P10483419610070057479

`A205659(A056000(n)+15)`
-/

namespace A205663.P10483419610070057479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205659 (A056000 n + 15).toNat

end

end A205663.P10483419610070057479

/-! ## A205663.P10004408288438454800

`A205659(eq[7, A066657(n)])`
-/

namespace A205663.P10004408288438454800
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205659 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A205663.P10004408288438454800

/-! ## A205663.P6919387622232854067

`A205659(A141214(n+1)+8)`
-/

namespace A205663.P6919387622232854067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205659 (A141214 (n + 1) + 8).toNat

end

end A205663.P6919387622232854067

/-!
# A205664: Number of 7X(n+1) 0..3 arrays with every 2 X 2 subblock having the same number of clockwise edge increases as its horizontal neighbors and no 2 X 2 subblock having the same number of counterclockwise edge increases as its vertical neighbors.

The programs for A205664, there is no canonical definition to state claims against.
-/

/-! ## A205664.P9335216315280091192

`A205659(Δ[A264443(n)]+10)`
-/

namespace A205664.P9335216315280091192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205659 (f1 (n + 1) - f1 n + 10).toNat

end

end A205664.P9335216315280091192

/-! ## A205664.P3826945169349500470

`A205659(A167499(n+4)+1)`
-/

namespace A205664.P3826945169349500470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205659 (A167499 (n + 4) + 1).toNat

end

end A205664.P3826945169349500470

/-! ## A205664.P15918247513555993243

`A205659(eq[7, A131818(n+1)])`
-/

namespace A205664.P15918247513555993243
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205659 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A205664.P15918247513555993243

/-! ## A205664.P887817181208075214

`A205659(Δ[A023545(n+1)]+10)`
-/

namespace A205664.P887817181208075214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205659 (f1 (n + 1) - f1 n + 10).toNat

end

end A205664.P887817181208075214

/-! ## A205664.P17937808493054963875

`A205659(A000096(n+5)-(n-1))`
-/

namespace A205664.P17937808493054963875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205659 (A000096 (n + 5) - ((n : ℤ) - 1)).toNat

end

end A205664.P17937808493054963875

/-!
# A205665: Number of 8X(n+1) 0..3 arrays with every 2 X 2 subblock having the same number of clockwise edge increases as its horizontal neighbors and no 2 X 2 subblock having the same number of counterclockwise edge increases as its vertical neighbors.

The programs for A205665, there is no canonical definition to state claims against.
-/

/-! ## A205665.P1204430567129171776

`A205659(A056119(n)+28)`
-/

namespace A205665.P1204430567129171776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205659 (A056119 n + 28).toNat

end

end A205665.P1204430567129171776

/-! ## A205665.P4609428921168203576

`A205659(eq[11, A066657(n)])`
-/

namespace A205665.P4609428921168203576
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205659 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A205665.P4609428921168203576

/-! ## A205665.P1595118823542288736

`A205659(A000096(n+5)+8)`
-/

namespace A205665.P1595118823542288736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205659 (A000096 (n + 5) + 8).toNat

end

end A205665.P1595118823542288736

/-! ## A205665.P14454998174172491818

`A205659(eq[8, A131818(n+1)])`
-/

namespace A205665.P14454998174172491818
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205659 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A205665.P14454998174172491818

/-! ## A205665.P5639075688175674106

`A205659(A000124(n+7)-(n+1))`
-/

namespace A205665.P5639075688175674106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205659 (A000124 (n + 7) - (n + 1 : ℤ)).toNat

end

end A205665.P5639075688175674106

/-!
# A205666: Fixed points of permutations A065306 and A065307.

The programs for A205666, there is no canonical definition to state claims against.
-/

/-! ## A205666.P15775111438818510185

`record[gcd(n+1, A065306(n+1))]`
-/

namespace A205666.P15775111438818510185
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A065306 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A205666.P15775111438818510185

/-! ## A205666.P13599567731383025082

`eq[n, A065306(A028310(n))]`
-/

namespace A205666.P13599567731383025082
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065306 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A205666.P13599567731383025082

/-! ## A205666.P8648935234935093772

`record[gcd(A065306(n+1), A103517(n))]`
-/

namespace A205666.P8648935234935093772
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A065306 (n + 1)) (A103517 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A205666.P8648935234935093772

/-! ## A205666.P11663233318273262458

`record[gcd(A000027(n+1), A065307(n+1))]`
-/

namespace A205666.P11663233318273262458
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000027 (n + 1)) (A065307 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A205666.P11663233318273262458

/-! ## A205666.P16294995606129821443

`eq[A158250(A065306(n+1)), A158250(n+1)]+1`
-/

namespace A205666.P16294995606129821443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158250 (A065306 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158250 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A205666.P16294995606129821443

/-! ## A205666.P7565852911810329957

`eq[n+3, A260580(n+1)]+1`
-/

namespace A205666.P7565852911810329957
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260580 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A205666.P7565852911810329957

/-!
# A205667: Numbers containing exactly one prime in decimal representation.

The programs for A205667, there is no canonical definition to state claims against.
-/

/-! ## A205667.P711913429470616654

`eq[1, A039997(n+1)]+1`
-/

namespace A205667.P711913429470616654
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039997 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A205667.P711913429470616654

/-! ## A205667.P17665548885276288360

`eq[1, A039997(A028310(n))]`
-/

namespace A205667.P17665548885276288360
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039997 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A205667.P17665548885276288360

/-! ## A205667.P8488431777968542664

`eq[A028310(A047814(n)), A211396(n)]`
-/

namespace A205667.P8488431777968542664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A047814 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211396 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A205667.P8488431777968542664

/-! ## A205667.P8801617598057336460

`eq[1, A039997(A017317(n))]`
-/

namespace A205667.P8801617598057336460
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039997 (A017317 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A205667.P8801617598057336460

/-! ## A205667.P15875637445318498455

`eq[1, A039997(A017341(n))]`
-/

namespace A205667.P15875637445318498455
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039997 (A017341 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A205667.P15875637445318498455

/-! ## A205667.P13408457293825993111

`eq[1, A039997(A017365(n))]`
-/

namespace A205667.P13408457293825993111
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039997 (A017365 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A205667.P13408457293825993111

/-!
# A205668: Prime numbers that cannot be expressed as the sum of two lesser primes of twin prime pairs + 1 or two greater primes of twin prime pairs - 1.

The programs for A205668, there is no canonical definition to state claims against.
-/

/-! ## A205668.P11529332011814927281

`p?[A051345(n+1)-ceil(atan(n))]`
-/

namespace A205668.P11529332011814927281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051345 (n + 1) - ⌈Real.arctan (n : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A205668.P11529332011814927281

/-! ## A205668.P2571940331429552559

`p?[A181440(A051345(n+2)-2)]`
-/

namespace A205668.P2571940331429552559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181440 (A051345 (n + 2) - 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A205668.P2571940331429552559

/-! ## A205668.P5059716671929859099

`p?[A051345(n+2)-A000032(C(2, n+2))]`
-/

namespace A205668.P5059716671929859099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051345 (n + 2) - A000032 (Nat.choose 2 (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A205668.P5059716671929859099

/-! ## A205668.P15470963068350390656

`p?[A051345(n+2)-A001221(2*A000040(n+1))]`
-/

namespace A205668.P15470963068350390656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051345 (n + 2) - A001221 (2 * A000040 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A205668.P15470963068350390656

/-!
# A205671: E.g.f. A(x) = Sum_{n>0} a(n)*x^n/n! is the inverse function to exp(2*x)-x-1.

The programs for A205671, there is no canonical definition to state claims against.
-/

/-! ## A205671.P13530695014516337816

`(-2)^n*A112487(n)`
-/

namespace A205671.P13530695014516337816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-2) ^ n * A112487 n

end

end A205671.P13530695014516337816

/-!
# A205673: Prime(A202560(n)), the n-th number s(k) such that 3 divides s(k)-s(j) for some j<k, where s(j)=prime(j).

The programs for A205673, there is no canonical definition to state claims against.
-/

/-! ## A205673.P15886284559859293763

`A000040(A205560(n+1))`
-/

namespace A205673.P15886284559859293763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A205560 (n + 1)).toNat

end

end A205673.P15886284559859293763

/-! ## A205673.P14347176244827639206

`A008578(A205560(n+1)+1)`
-/

namespace A205673.P14347176244827639206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A205560 (n + 1) + 1).toNat

end

end A205673.P14347176244827639206

/-! ## A205673.P13218935853762799320

`A065091(A205560(n+1)-1)`
-/

namespace A205673.P13218935853762799320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (A205560 (n + 1) - 1).toNat

end

end A205673.P13218935853762799320

/-! ## A205673.P3144542084568187266

`A158611(A205560(n+1)+2)`
-/

namespace A205673.P3144542084568187266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (A205560 (n + 1) + 2).toNat

end

end A205673.P3144542084568187266

/-! ## A205673.P13424292237391931382

`A205674(n+1)+A205557(n+1)`
-/

namespace A205673.P13424292237391931382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205674 (n + 1) + A205557 (n + 1)

end

end A205673.P13424292237391931382

/-! ## A205673.P15623324484636400080

`A006005(A205560(n+1)%(12*comp[5*n]))`
-/

namespace A205673.P15623324484636400080
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (Int.tmod (A205560 (n + 1)) (12 * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ)).toNat

end

end A205673.P15623324484636400080

/-! ## A205673.P8144890515205848723

`A205557(n+1)+A000040(A205547(n+1))`
-/

namespace A205673.P8144890515205848723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205557 (n + 1) + A000040 (A205547 (n + 1)).toNat

end

end A205673.P8144890515205848723

/-! ## A205673.P16066183792288145263

`A389809(A205559(n+1))`
-/

namespace A205673.P16066183792288145263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389809 (A205559 (n + 1)).toNat

end

end A205673.P16066183792288145263

/-! ## A205673.P645432652221591489

`A205674(n+1)+A204890(A205559(n+1))`
-/

namespace A205673.P645432652221591489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205674 (n + 1) + A204890 (A205559 (n + 1)).toNat

end

end A205673.P645432652221591489

/-!
# A205674: Prime(A202560(n)), the n-th number s(k) such that 3 divides s(k)-s(j) for some j<k, where s(j)=prime(j).

The programs for A205674, the canonical program `A205674.P5002100609961987848` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A205674 has offset 1).

The definition of A205674 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A205674.P5002100609961987848

`A000040(A205547(n+1))`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A205674

/-- `A000040(A205547(n+1))` -/
def P5002100609961987848.Spec : Prop :=
  ∀ n, P5002100609961987848.a n = A205674 (n + 1)

theorem P5002100609961987848.correct : P5002100609961987848.Spec := by
  intro n
  simp only [A205674, Nat.add_sub_cancel]

end A205674

/-! ## A205674.P4962260396905993143

`A008578(A205547(n+1)+1)`
-/

namespace A205674.P4962260396905993143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A205547 (n + 1) + 1).toNat

end

end A205674.P4962260396905993143

namespace A205674

/-- `A008578(A205547(n+1)+1)` -/
def P4962260396905993143.Spec : Prop :=
  ∀ n, P4962260396905993143.a n = A205674 (n + 1)

end A205674

/-! ## A205674.P3851276813317022063

`A205673(n+1)-A205557(n+1)`
-/

namespace A205674.P3851276813317022063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205673 (n + 1) - A205557 (n + 1)

end

end A205674.P3851276813317022063

namespace A205674

/-- `A205673(n+1)-A205557(n+1)` -/
def P3851276813317022063.Spec : Prop :=
  ∀ n, P3851276813317022063.a n = A205674 (n + 1)

end A205674

/-! ## A205674.P2819229196664780508

`A000040(A205560(n+1))-A205557(n+1)`
-/

namespace A205674.P2819229196664780508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A205560 (n + 1)).toNat - A205557 (n + 1)

end

end A205674.P2819229196664780508

namespace A205674

/-- `A000040(A205560(n+1))-A205557(n+1)` -/
def P2819229196664780508.Spec : Prop :=
  ∀ n, P2819229196664780508.a n = A205674 (n + 1)

end A205674

/-! ## A205674.P10328645512489552554

`A037126(A205559(n+1))`
-/

namespace A205674.P10328645512489552554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037126 (A205559 (n + 1)).toNat

end

end A205674.P10328645512489552554

namespace A205674

/-- `A037126(A205559(n+1))` -/
def P10328645512489552554.Spec : Prop :=
  ∀ n, P10328645512489552554.a n = A205674 (n + 1)

end A205674

/-! ## A205674.P13693711501371446077

`A205673(n+1)-A204890(A205559(n+1))`
-/

namespace A205674.P13693711501371446077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205673 (n + 1) - A204890 (A205559 (n + 1)).toNat

end

end A205674.P13693711501371446077

namespace A205674

/-- `A205673(n+1)-A204890(A205559(n+1))` -/
def P13693711501371446077.Spec : Prop :=
  ∀ n, P13693711501371446077.a n = A205674 (n + 1)

end A205674

/-!
# A205675: (prime(k)-prime(j))/3: (A205557)/3.

The programs for A205675, there is no canonical definition to state claims against.
-/

/-! ## A205675.P16678061436225749496

`A205557(n+1)/3`
-/

namespace A205675.P16678061436225749496
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A205557 (n + 1) : ℚ) / 3

end

end A205675.P16678061436225749496

/-! ## A205675.P10453833749447240686

`A002264(A205557(n+1))`
-/

namespace A205675.P10453833749447240686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A205557 (n + 1)).toNat

end

end A205675.P10453833749447240686

/-! ## A205675.P885573636378528001

`A008611(A205557(n+1)+1)`
-/

namespace A205675.P885573636378528001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (A205557 (n + 1) + 1).toNat

end

end A205675.P885573636378528001

/-! ## A205675.P9388774054180403611

`A008615(2*A205557(n+1))`
-/

namespace A205675.P9388774054180403611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (2 * A205557 (n + 1)).toNat

end

end A205675.P9388774054180403611

/-! ## A205675.P9071218565921057857

`A002264(A205673(n+1)-A205674(n+1))`
-/

namespace A205675.P9071218565921057857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A205673 (n + 1) - A205674 (n + 1)).toNat

end

end A205675.P9071218565921057857

/-! ## A205675.P8028740222359895972

`A008615(A205557(n+1)+A205557(n+1)+1)`
-/

namespace A205675.P8028740222359895972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (A205557 (n + 1) + (A205557 (n + 1) + 1)).toNat

end

end A205675.P8028740222359895972

/-!
# A205676: Positions of multiples of 4 in A204890 (differences of primes).

The programs for A205676, the canonical program `A205676.P6623450324532988599` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A205676 has offset 1).

The definition of A205676 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4896 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A205676.P12622342163323215508

`A205677(n+1)+eq[2, gcd(2, A205558(n+1))]`
-/

namespace A205676.P12622342163323215508
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A205558 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205677 (n + 1) + (SequenceMachineLib.nth (fun j => f1 j = f2 j) n : ℤ)

end

end A205676.P12622342163323215508

namespace A205676

/-- `A205677(n+1)+eq[2, gcd(2, A205558(n+1))]` -/
def P12622342163323215508.Spec : Prop :=
  ∀ n, P12622342163323215508.a n = A205676 (n + 1)

end A205676

/-! ## A205676.P6623450324532988599

`eq[4, gcd(4, A204890(n+1))]+1`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A205676

/-- `eq[4, gcd(4, A204890(n+1))]+1` -/
def P6623450324532988599.Spec : Prop :=
  ∀ n, (P6623450324532988599.a n : ℤ) = A205676 (n + 1)

theorem P6623450324532988599.correct : P6623450324532988599.Spec := by
  intro n
  simp only [A205676, Nat.add_sub_cancel]

end A205676

/-! ## A205676.P10917509071376458070

`lt[2, A040222(A204890(n+1))]+1`
-/

namespace A205676.P10917509071376458070
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040222 (A204890 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A205676.P10917509071376458070

namespace A205676

/-- `lt[2, A040222(A204890(n+1))]+1` -/
def P10917509071376458070.Spec : Prop :=
  ∀ n, (P10917509071376458070.a n : ℤ) = A205676 (n + 1)

end A205676

/-! ## A205676.P11662687501967652922

`eq[1, A087112(comp[∑[n]])%4]+1`
-/

namespace A205676.P11662687501967652922
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

open Classical in
def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A087112 (SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n)) 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A205676.P11662687501967652922

namespace A205676

/-- `eq[1, A087112(comp[∑[n]])%4]+1` -/
def P11662687501967652922.Spec : Prop :=
  ∀ n, (P11662687501967652922.a n : ℤ) = A205676 (n + 1)

end A205676

/-! ## A205676.P10175632765970979984

`eq[1, A247339(A118469(n+1)+1)]+1`
-/

namespace A205676.P10175632765970979984
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247339 (A118469 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A205676.P10175632765970979984

namespace A205676

/-- `eq[1, A247339(A118469(n+1)+1)]+1` -/
def P10175632765970979984.Spec : Prop :=
  ∀ n, (P10175632765970979984.a n : ℤ) = A205676 (n + 1)

end A205676

/-!
# A205677: Numbers k for which 4 divides prime(k)-prime(j) for some j<k; each k occurs once for each such j.

The programs for A205677, there is no canonical definition to state claims against.
-/

/-! ## A205677.P6655767846920010945

`A000720(A205679(n+1))`
-/

namespace A205677.P6655767846920010945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A205679 (n + 1)).toNat

end

end A205677.P6655767846920010945

/-! ## A205677.P14973406987969856311

`A204892(A205679(n+1)-2)`
-/

namespace A205677.P14973406987969856311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204892 (A205679 (n + 1) - 2).toNat

end

end A205677.P14973406987969856311

/-! ## A205677.P12145793393411965139

`A000720(A205681(n+1)+A205680(n+1))`
-/

namespace A205677.P12145793393411965139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A205681 (n + 1) + A205680 (n + 1)).toNat

end

end A205677.P12145793393411965139

/-! ## A205677.P5028266964828239084

`A003963(A205681(n+1)+A205680(n+1))`
-/

namespace A205677.P5028266964828239084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (A205681 (n + 1) + A205680 (n + 1)).toNat

end

end A205677.P5028266964828239084

/-! ## A205677.P16600100307418831617

`A026233(A205681(n+1)+A205680(n+1))`
-/

namespace A205677.P16600100307418831617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026233 (A205681 (n + 1) + A205680 (n + 1)).toNat

end

end A205677.P16600100307418831617

/-! ## A205677.P16889371175418299625

`A049084(A205681(n+1)+A205680(n+1))`
-/

namespace A205677.P16889371175418299625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (A205681 (n + 1) + A205680 (n + 1)).toNat

end

end A205677.P16889371175418299625

/-! ## A205677.P7850522681215081596

`A055396(A205681(n+1)+A205680(n+1))`
-/

namespace A205677.P7850522681215081596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (A205681 (n + 1) + A205680 (n + 1)).toNat

end

end A205677.P7850522681215081596

/-! ## A205677.P2480415267934004678

`A056239(A205681(n+1)+A205680(n+1))`
-/

namespace A205677.P2480415267934004678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (A205681 (n + 1) + A205680 (n + 1)).toNat

end

end A205677.P2480415267934004678

/-! ## A205677.P17280534832068970748

`A058933(A205681(n+1)+A205680(n+1))`
-/

namespace A205677.P17280534832068970748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058933 (A205681 (n + 1) + A205680 (n + 1)).toNat

end

end A205677.P17280534832068970748

/-! ## A205677.P11211850894578810223

`A061395(A205681(n+1)+A205680(n+1))`
-/

namespace A205677.P11211850894578810223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A205681 (n + 1) + A205680 (n + 1)).toNat

end

end A205677.P11211850894578810223

/-! ## A205677.P16699365997952480514

`A003057(A205676(n+1))`
-/

namespace A205677.P16699365997952480514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003057 (A205676 (n + 1)).toNat

end

end A205677.P16699365997952480514

/-!
# A205678: The number j such that 4 divides prime(k)-prime(j), where k(n)=A205677(n).

The programs for A205678, the canonical program `A205678.P13105615205405818687` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A205678 has offset 1).

The definition of A205678 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5554 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A205678.P11811347956071547357

`A000720(A205680(n+1))`
-/

namespace A205678.P11811347956071547357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A205680 (n + 1)).toNat

end

end A205678.P11811347956071547357

namespace A205678

/-- `A000720(A205680(n+1))` -/
def P11811347956071547357.Spec : Prop :=
  ∀ n, P11811347956071547357.a n = A205678 (n + 1)

end A205678

/-! ## A205678.P8251958746144004128

`A204892(A205680(n+1)-2)`
-/

namespace A205678.P8251958746144004128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204892 (A205680 (n + 1) - 2).toNat

end

end A205678.P8251958746144004128

namespace A205678

/-- `A204892(A205680(n+1)-2)` -/
def P8251958746144004128.Spec : Prop :=
  ∀ n, P8251958746144004128.a n = A205678 (n + 1)

end A205678

/-! ## A205678.P8559924312903581138

`A003963(2*A205680(n+1))`
-/

namespace A205678.P8559924312903581138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (2 * A205680 (n + 1)).toNat

end

end A205678.P8559924312903581138

namespace A205678

/-- `A003963(2*A205680(n+1))` -/
def P8559924312903581138.Spec : Prop :=
  ∀ n, P8559924312903581138.a n = A205678 (n + 1)

end A205678

/-! ## A205678.P11504594604564348604

`A061395(2*A205680(n+1))`
-/

namespace A205678.P11504594604564348604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (2 * A205680 (n + 1)).toNat

end

end A205678.P11504594604564348604

namespace A205678

/-- `A061395(2*A205680(n+1))` -/
def P11504594604564348604.Spec : Prop :=
  ∀ n, P11504594604564348604.a n = A205678 (n + 1)

end A205678

/-! ## A205678.P6064871803786849350

`A056239(2*A205680(n+1))-1`
-/

namespace A205678.P6064871803786849350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (2 * A205680 (n + 1)).toNat - 1

end

end A205678.P6064871803786849350

namespace A205678

/-- `A056239(2*A205680(n+1))-1` -/
def P6064871803786849350.Spec : Prop :=
  ∀ n, P6064871803786849350.a n = A205678 (n + 1)

end A205678

/-! ## A205678.P17139659544635702766

`A003963(A205680(n+1)%(n+3)²)`
-/

namespace A205678.P17139659544635702766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (Int.tmod (A205680 (n + 1)) ((n + 3) ^ 2 : ℤ)).toNat

end

end A205678.P17139659544635702766

namespace A205678

/-- `A003963(A205680(n+1)%(n+3)²)` -/
def P17139659544635702766.Spec : Prop :=
  ∀ n, P17139659544635702766.a n = A205678 (n + 1)

end A205678

/-! ## A205678.P10024338131612490233

`A205680(n+1)-A026233(A205680(n+1)-1)`
-/

namespace A205678.P10024338131612490233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205680 (n + 1) - A026233 (A205680 (n + 1) - 1).toNat

end

end A205678.P10024338131612490233

namespace A205678

/-- `A205680(n+1)-A026233(A205680(n+1)-1)` -/
def P10024338131612490233.Spec : Prop :=
  ∀ n, P10024338131612490233.a n = A205678 (n + 1)

end A205678

/-! ## A205678.P11432913866628864286

`A049084(2*A205680(n+1)-A205680(n+1))`
-/

namespace A205678.P11432913866628864286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (2 * A205680 (n + 1) - A205680 (n + 1)).toNat

end

end A205678.P11432913866628864286

namespace A205678

/-- `A049084(2*A205680(n+1)-A205680(n+1))` -/
def P11432913866628864286.Spec : Prop :=
  ∀ n, P11432913866628864286.a n = A205678 (n + 1)

end A205678

/-! ## A205678.P14161619694672624461

`A055396(2*A205680(n+1)-A205680(n+1))`
-/

namespace A205678.P14161619694672624461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (2 * A205680 (n + 1) - A205680 (n + 1)).toNat

end

end A205678.P14161619694672624461

namespace A205678

/-- `A055396(2*A205680(n+1)-A205680(n+1))` -/
def P14161619694672624461.Spec : Prop :=
  ∀ n, P14161619694672624461.a n = A205678 (n + 1)

end A205678

/-! ## A205678.P5198646555117909993

`A058933(2*A205680(n+1)-A205680(n+1))`
-/

namespace A205678.P5198646555117909993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058933 (2 * A205680 (n + 1) - A205680 (n + 1)).toNat

end

end A205678.P5198646555117909993

namespace A205678

/-- `A058933(2*A205680(n+1)-A205680(n+1))` -/
def P5198646555117909993.Spec : Prop :=
  ∀ n, P5198646555117909993.a n = A205678 (n + 1)

end A205678

/-! ## A205678.P16862027314786209330

`A049084(A205680(n+1))+A049084(A205681(n+1))`
-/

namespace A205678.P16862027314786209330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (A205680 (n + 1)).toNat + A049084 (A205681 (n + 1)).toNat

end

end A205678.P16862027314786209330

namespace A205678

/-- `A049084(A205680(n+1))+A049084(A205681(n+1))` -/
def P16862027314786209330.Spec : Prop :=
  ∀ n, P16862027314786209330.a n = A205678 (n + 1)

end A205678

/-! ## A205678.P13105615205405818687

`A002260(A205676(n+1))`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A205678

/-- `A002260(A205676(n+1))` -/
def P13105615205405818687.Spec : Prop :=
  ∀ n, P13105615205405818687.a n = A205678 (n + 1)

theorem P13105615205405818687.correct : P13105615205405818687.Spec := by
  intro n
  simp only [A205678, Nat.add_sub_cancel]

end A205678

/-! ## A205678.P10892557789326190290

`A061395(A205680(n+1)²)`
-/

namespace A205678.P10892557789326190290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A205680 (n + 1) ^ 2).toNat

end

end A205678.P10892557789326190290

namespace A205678

/-- `A061395(A205680(n+1)²)` -/
def P10892557789326190290.Spec : Prop :=
  ∀ n, P10892557789326190290.a n = A205678 (n + 1)

end A205678

/-! ## A205678.P12423069747308309194

`A055396(A205680(n+1)²)`
-/

namespace A205678.P12423069747308309194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (A205680 (n + 1) ^ 2).toNat

end

end A205678.P12423069747308309194

namespace A205678

/-- `A055396(A205680(n+1)²)` -/
def P12423069747308309194.Spec : Prop :=
  ∀ n, P12423069747308309194.a n = A205678 (n + 1)

end A205678

/-! ## A205678.P12016663350856501220

`A056239(A205680(n+1)²)/2`
-/

namespace A205678.P12016663350856501220
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056239 (A205680 (n + 1) ^ 2).toNat : ℚ) / 2

end

end A205678.P12016663350856501220

namespace A205678

/-- `A056239(A205680(n+1)²)/2` -/
def P12016663350856501220.Spec : Prop :=
  ∀ n, P12016663350856501220.a n = (A205678 (n + 1) : ℚ)

end A205678

/-! ## A205678.P6550088337258968294

`A049084(A205680(n+1)²)+A049084(A205680(n+1))`
-/

namespace A205678.P6550088337258968294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (A205680 (n + 1) ^ 2).toNat + A049084 (A205680 (n + 1)).toNat

end

end A205678.P6550088337258968294

namespace A205678

/-- `A049084(A205680(n+1)²)+A049084(A205680(n+1))` -/
def P6550088337258968294.Spec : Prop :=
  ∀ n, P6550088337258968294.a n = A205678 (n + 1)

end A205678

/-! ## A205678.P9966463178698864842

`A055396((A205681(n+1)+A205680(n+1))*A205680(n+1))`
-/

namespace A205678.P9966463178698864842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 ((A205681 (n + 1) + A205680 (n + 1)) * A205680 (n + 1)).toNat

end

end A205678.P9966463178698864842

namespace A205678

/-- `A055396((A205681(n+1)+A205680(n+1))*A205680(n+1))` -/
def P9966463178698864842.Spec : Prop :=
  ∀ n, P9966463178698864842.a n = A205678 (n + 1)

end A205678

/-!
# A205679: Prime(A205677(n)), the n-th number s(k) such that 4 divides s(k)-s(j) for some j<k, where s(j)=prime(j).

The programs for A205679, there is no canonical definition to state claims against.
-/

/-! ## A205679.P2874557896465930956

`A000040(A205677(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A205679.P2874557896465930956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A205677 (n + 1)).toNat

end

end A205679.P2874557896465930956

/-! ## A205679.P12152894114387884714

`A008578(A205677(n+1)+1)`
-/

namespace A205679.P12152894114387884714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A205677 (n + 1) + 1).toNat

end

end A205679.P12152894114387884714

/-! ## A205679.P13169816837766581107

`A065091(A205677(n+1)-1)`
-/

namespace A205679.P13169816837766581107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (A205677 (n + 1) - 1).toNat

end

end A205679.P13169816837766581107

/-! ## A205679.P4346606815174742158

`A158611(A205677(n+1)+2)`
-/

namespace A205679.P4346606815174742158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (A205677 (n + 1) + 2).toNat

end

end A205679.P4346606815174742158

/-! ## A205679.P3357811501453779189

`∑{d}[A205677(n+1), A007444(#)]`
-/

namespace A205679.P3357811501453779189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205677 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A007444 d

end

end A205679.P3357811501453779189

/-! ## A205679.P14146875800732582451

`A205681(n+1)+A205680(n+1)`
-/

namespace A205679.P14146875800732582451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205681 (n + 1) + A205680 (n + 1)

end

end A205679.P14146875800732582451

/-! ## A205679.P14010507866194647518

`A205680(n+1)+4*A205682(n+1)`
-/

namespace A205679.P14010507866194647518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205680 (n + 1) + 4 * A205682 (n + 1)

end

end A205679.P14010507866194647518

/-! ## A205679.P7245144502660060714

`A205681(n+1)+A000040(A205678(n+1))`
-/

namespace A205679.P7245144502660060714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205681 (n + 1) + A000040 (A205678 (n + 1)).toNat

end

end A205679.P7245144502660060714

/-! ## A205679.P3839060080497330012

`A205680(n+1)+A008586(A205682(n+1))`
-/

namespace A205679.P3839060080497330012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205680 (n + 1) + A008586 (A205682 (n + 1)).toNat

end

end A205679.P3839060080497330012

/-! ## A205679.P9947568100522063393

`A389809(A205676(n+1))`
-/

namespace A205679.P9947568100522063393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389809 (A205676 (n + 1)).toNat

end

end A205679.P9947568100522063393

/-! ## A205679.P17439093210242202721

`A205680(n+1)+A204890(A205676(n+1))`
-/

namespace A205679.P17439093210242202721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205680 (n + 1) + A204890 (A205676 (n + 1)).toNat

end

end A205679.P17439093210242202721

/-!
# A205680: Prime(A205678(n)), the n-th number s(j) such that 4 divides s(k)-s(j), where the pairs (k,j) are given by A205677 and A205678.

The programs for A205680, the canonical program `A205680.P15285534464945859236` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A205680 has offset 1).

The definition of A205680 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A205678, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A205680.P15285534464945859236

`A000040(A205678(n+1))`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A205680

/-- `A000040(A205678(n+1))` -/
def P15285534464945859236.Spec : Prop :=
  ∀ n, P15285534464945859236.a n = A205680 (n + 1)

theorem P15285534464945859236.correct : P15285534464945859236.Spec := by
  intro n
  simp only [A205680, Nat.add_sub_cancel]

end A205680

/-! ## A205680.P1001174405234802163

`A008578(A205678(n+1)+1)`
-/

namespace A205680.P1001174405234802163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A205678 (n + 1) + 1).toNat

end

end A205680.P1001174405234802163

namespace A205680

/-- `A008578(A205678(n+1)+1)` -/
def P1001174405234802163.Spec : Prop :=
  ∀ n, P1001174405234802163.a n = A205680 (n + 1)

end A205680

/-! ## A205680.P2392424695917917745

`A065091(A205678(n+1)-1)`
-/

namespace A205680.P2392424695917917745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (A205678 (n + 1) - 1).toNat

end

end A205680.P2392424695917917745

namespace A205680

/-- `A065091(A205678(n+1)-1)` -/
def P2392424695917917745.Spec : Prop :=
  ∀ n, P2392424695917917745.a n = A205680 (n + 1)

end A205680

/-! ## A205680.P16885440732497228655

`A158611(A205678(n+1)+2)`
-/

namespace A205680.P16885440732497228655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (A205678 (n + 1) + 2).toNat

end

end A205680.P16885440732497228655

namespace A205680

/-- `A158611(A205678(n+1)+2)` -/
def P16885440732497228655.Spec : Prop :=
  ∀ n, P16885440732497228655.a n = A205680 (n + 1)

end A205680

/-! ## A205680.P15366150113133600553

`A205679(n+1)-A205681(n+1)`
-/

namespace A205680.P15366150113133600553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205679 (n + 1) - A205681 (n + 1)

end

end A205680.P15366150113133600553

namespace A205680

/-- `A205679(n+1)-A205681(n+1)` -/
def P15366150113133600553.Spec : Prop :=
  ∀ n, P15366150113133600553.a n = A205680 (n + 1)

end A205680

/-! ## A205680.P12836595195679334971

`A006005(A205678(n+1)%(n+4))`
-/

namespace A205680.P12836595195679334971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (Int.tmod (A205678 (n + 1)) (n + 4 : ℤ)).toNat

end

end A205680.P12836595195679334971

namespace A205680

/-- `A006005(A205678(n+1)%(n+4))` -/
def P12836595195679334971.Spec : Prop :=
  ∀ n, P12836595195679334971.a n = A205680 (n + 1)

end A205680

/-! ## A205680.P7347818287293574683

`or(A000035(n), A006005(A205678(n+1)))`
-/

namespace A205680.P7347818287293574683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000035 n) (A006005 (A205678 (n + 1)).toNat)

end

end A205680.P7347818287293574683

namespace A205680

/-- `or(A000035(n), A006005(A205678(n+1)))` -/
def P7347818287293574683.Spec : Prop :=
  ∀ n, P7347818287293574683.a n = A205680 (n + 1)

end A205680

/-! ## A205680.P7245024829132129493

`A000040(A205677(n+1))-A205681(n+1)`
-/

namespace A205680.P7245024829132129493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A205677 (n + 1)).toNat - A205681 (n + 1)

end

end A205680.P7245024829132129493

namespace A205680

/-- `A000040(A205677(n+1))-A205681(n+1)` -/
def P7245024829132129493.Spec : Prop :=
  ∀ n, P7245024829132129493.a n = A205680 (n + 1)

end A205680

/-! ## A205680.P5048479014317440882

`A205679(n+1)-A008586(A205682(n+1))`
-/

namespace A205680.P5048479014317440882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205679 (n + 1) - A008586 (A205682 (n + 1)).toNat

end

end A205680.P5048479014317440882

namespace A205680

/-- `A205679(n+1)-A008586(A205682(n+1))` -/
def P5048479014317440882.Spec : Prop :=
  ∀ n, P5048479014317440882.a n = A205680 (n + 1)

end A205680

/-! ## A205680.P12114507237586294732

`A037126(A205676(n+1))`
-/

namespace A205680.P12114507237586294732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037126 (A205676 (n + 1)).toNat

end

end A205680.P12114507237586294732

namespace A205680

/-- `A037126(A205676(n+1))` -/
def P12114507237586294732.Spec : Prop :=
  ∀ n, P12114507237586294732.a n = A205680 (n + 1)

end A205680

/-! ## A205680.P12551174655555588463

`A205679(n+1)-A204890(A205676(n+1))`
-/

namespace A205680.P12551174655555588463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205679 (n + 1) - A204890 (A205676 (n + 1)).toNat

end

end A205680.P12551174655555588463

namespace A205680

/-- `A205679(n+1)-A204890(A205676(n+1))` -/
def P12551174655555588463.Spec : Prop :=
  ∀ n, P12551174655555588463.a n = A205680 (n + 1)

end A205680

/-!
# A205681: Prime(k)-prime(j), where the pairs (k,j) are given by A205677 and A205678.

The programs for A205681, there is no canonical definition to state claims against.
-/

/-! ## A205681.P348093051692900235

`4*A205682(n+1)`
-/

namespace A205681.P348093051692900235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A205682 (n + 1)

end

end A205681.P348093051692900235

/-! ## A205681.P4026666218842243335

`A008574(A205682(n+1))`
-/

namespace A205681.P4026666218842243335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 (A205682 (n + 1)).toNat

end

end A205681.P4026666218842243335

/-! ## A205681.P16910643138344996567

`A205679(n+1)-A205680(n+1)`
-/

namespace A205681.P16910643138344996567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205679 (n + 1) - A205680 (n + 1)

end

end A205681.P16910643138344996567

/-! ## A205681.P15786251933649093368

`A008586(A205682(n+1)%(n+2))`
-/

namespace A205681.P15786251933649093368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008586 (Int.tmod (A205682 (n + 1)) (n + 2 : ℤ)).toNat

end

end A205681.P15786251933649093368

/-! ## A205681.P9324566987647004723

`A000040(A205677(n+1))-A205680(n+1)`
-/

namespace A205681.P9324566987647004723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A205677 (n + 1)).toNat - A205680 (n + 1)

end

end A205681.P9324566987647004723

/-! ## A205681.P16240084032024948444

`A205679(n+1)-A000040(A205678(n+1))`
-/

namespace A205681.P16240084032024948444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205679 (n + 1) - A000040 (A205678 (n + 1)).toNat

end

end A205681.P16240084032024948444

/-! ## A205681.P11997611369826712680

`filter[A204898(n+1), A011765(#)]`
-/

namespace A205681.P11997611369826712680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204898 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A011765 (f1 j).toNat = 1) n)

end

end A205681.P11997611369826712680

/-! ## A205681.P4646436801675300112

`filter[A204898(n+1), A014577(#)]`
-/

namespace A205681.P4646436801675300112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204898 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A014577 (f1 j).toNat = 1) n)

end

end A205681.P4646436801675300112

/-! ## A205681.P3069335816499775680

`filter[A204898(n+1), A073089(#)]`
-/

namespace A205681.P3069335816499775680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204898 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A073089 (f1 j).toNat = 1) n)

end

end A205681.P3069335816499775680

/-! ## A205681.P10984722067214987773

`filter[A204898(n+1), A106665(#)]`
-/

namespace A205681.P10984722067214987773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204898 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A106665 (f1 j).toNat = 1) n)

end

end A205681.P10984722067214987773

/-! ## A205681.P9623372953820208130

`filter[A204898(n+1), A121262(#)]`
-/

namespace A205681.P9623372953820208130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204898 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A121262 (f1 j).toNat = 1) n)

end

end A205681.P9623372953820208130

/-! ## A205681.P14078737890593447152

`filter[A204898(n+1), A133872(#)]`
-/

namespace A205681.P14078737890593447152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204898 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A133872 (f1 j).toNat = 1) n)

end

end A205681.P14078737890593447152

/-! ## A205681.P12894224746363014739

`filter[A204898(n+1), A152822(#)]`
-/

namespace A205681.P12894224746363014739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204898 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A152822 (f1 j).toNat = 1) n)

end

end A205681.P12894224746363014739

/-! ## A205681.P17875633983308173631

`filter[A204898(n+1), A262808(#)]`
-/

namespace A205681.P17875633983308173631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204898 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A262808 (f1 j).toNat = 1) n)

end

end A205681.P17875633983308173631

/-! ## A205681.P14304651057257068566

`filter[A204898(n+1), A305994(#)]`
-/

namespace A205681.P14304651057257068566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204898 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A305994 (f1 j).toNat = 1) n)

end

end A205681.P14304651057257068566

/-! ## A205681.P1708915132876361958

`filter[A204898(n+1), A319710(#)]`
-/

namespace A205681.P1708915132876361958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204898 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A319710 (f1 j).toNat = 1) n)

end

end A205681.P1708915132876361958

/-! ## A205681.P11227145072119346960

`filter[A204898(n+1), A353494(#)]`
-/

namespace A205681.P11227145072119346960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204898 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353494 (f1 j).toNat = 1) n)

end

end A205681.P11227145072119346960

/-! ## A205681.P3902690332570150297

`filter[A204898(n+1), A358680(#)]`
-/

namespace A205681.P3902690332570150297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204898 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358680 (f1 j).toNat = 1) n)

end

end A205681.P3902690332570150297

/-! ## A205681.P17102548132953759675

`filter[A204898(n+1), A359379(#)]`
-/

namespace A205681.P17102548132953759675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204898 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359379 (f1 j).toNat = 1) n)

end

end A205681.P17102548132953759675

/-! ## A205681.P15864076190212911748

`filter[A204898(n+1), A374036(#)]`
-/

namespace A205681.P15864076190212911748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204898 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374036 (f1 j).toNat = 1) n)

end

end A205681.P15864076190212911748

/-!
# A205682: (prime(k)-prime(j))/4, where the pairs (k,j) are given by A205677 and A205678.

The programs for A205682, there is no canonical definition to state claims against.
-/

/-! ## A205682.P17111691268377619542

`A205681(n+1)/4`
-/

namespace A205682.P17111691268377619542
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A205681 (n + 1) : ℚ) / 4

end

end A205682.P17111691268377619542

/-! ## A205682.P2711386907845808935

`A002265(A205681(n+1))`
-/

namespace A205682.P2711386907845808935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A205681 (n + 1)).toNat

end

end A205682.P2711386907845808935

/-! ## A205682.P2756558660177503496

`A008624(A205681(n+1)+1)`
-/

namespace A205682.P2756558660177503496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008624 (A205681 (n + 1) + 1).toNat

end

end A205682.P2756558660177503496

/-! ## A205682.P4768206683035863670

`A025480(A205681(n+1)+1)`
-/

namespace A205682.P4768206683035863670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A205681 (n + 1) + 1).toNat

end

end A205682.P4768206683035863670

/-! ## A205682.P1092063694722147244

`A008621(A205681(n+1)-1)`
-/

namespace A205682.P1092063694722147244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (A205681 (n + 1) - 1).toNat

end

end A205682.P1092063694722147244

/-! ## A205682.P7266808531572158281

`A110655(A205681(n+1)-1)`
-/

namespace A205682.P7266808531572158281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110655 (A205681 (n + 1) - 1).toNat

end

end A205682.P7266808531572158281

/-! ## A205682.P4935909550459229572

`A003602(A205681(n+1)-2)`
-/

namespace A205682.P4935909550459229572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (A205681 (n + 1) - 2).toNat

end

end A205682.P4935909550459229572

/-!
# A205683: Positions of multiples of 5 in A204890 (differences of primes).

The programs for A205683, the canonical program `A205683.P17912161422184643973` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A205683 has offset 1).

The definition of A205683 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2416 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A205683.P17912161422184643973

`eq[5, gcd(5, A204890(n+1))]+1`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A205683

/-- `eq[5, gcd(5, A204890(n+1))]+1` -/
def P17912161422184643973.Spec : Prop :=
  ∀ n, (P17912161422184643973.a n : ℤ) = A205683 (n + 1)

theorem P17912161422184643973.correct : P17912161422184643973.Spec := by
  intro n
  simp only [A205683, Nat.add_sub_cancel]

end A205683

/-!
# A205684: Numbers k for which 5 divides prime(k)-prime(j) for some j<k; each k occurs once for each such j.

The programs for A205684, there is no canonical definition to state claims against.
-/

/-! ## A205684.P11143101231976132566

`A000720(A205686(n+1))`
-/

namespace A205684.P11143101231976132566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A205686 (n + 1)).toNat

end

end A205684.P11143101231976132566

/-! ## A205684.P1479662454574100992

`A204892(A205686(n+1)-2)`
-/

namespace A205684.P1479662454574100992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204892 (A205686 (n + 1) - 2).toNat

end

end A205684.P1479662454574100992

/-! ## A205684.P887847341819608200

`A061395(2*A205686(n+1))`
-/

namespace A205684.P887847341819608200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (2 * A205686 (n + 1)).toNat

end

end A205684.P887847341819608200

/-! ## A205684.P6230473706260723849

`A000720(A205688(n+1)+A205687(n+1))`
-/

namespace A205684.P6230473706260723849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A205688 (n + 1) + A205687 (n + 1)).toNat

end

end A205684.P6230473706260723849

/-! ## A205684.P17276727700028892116

`A003963(A205688(n+1)+A205687(n+1))`
-/

namespace A205684.P17276727700028892116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (A205688 (n + 1) + A205687 (n + 1)).toNat

end

end A205684.P17276727700028892116

/-! ## A205684.P14518537263117941513

`A026233(A205688(n+1)+A205687(n+1))`
-/

namespace A205684.P14518537263117941513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026233 (A205688 (n + 1) + A205687 (n + 1)).toNat

end

end A205684.P14518537263117941513

/-! ## A205684.P9782605336967606865

`A026238(A205688(n+1)+A205687(n+1))`
-/

namespace A205684.P9782605336967606865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026238 (A205688 (n + 1) + A205687 (n + 1)).toNat

end

end A205684.P9782605336967606865

/-! ## A205684.P15415696105378413018

`A049084(A205688(n+1)+A205687(n+1))`
-/

namespace A205684.P15415696105378413018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (A205688 (n + 1) + A205687 (n + 1)).toNat

end

end A205684.P15415696105378413018

/-! ## A205684.P5074072413394450628

`A056239(A205688(n+1)+A205687(n+1))`
-/

namespace A205684.P5074072413394450628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (A205688 (n + 1) + A205687 (n + 1)).toNat

end

end A205684.P5074072413394450628

/-! ## A205684.P10831210770150062870

`A061395(A205688(n+1)+A205687(n+1))`
-/

namespace A205684.P10831210770150062870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A205688 (n + 1) + A205687 (n + 1)).toNat

end

end A205684.P10831210770150062870

/-! ## A205684.P12426919275490321923

`A080036(A205683(n+1))-A205683(n+1)`
-/

namespace A205684.P12426919275490321923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080036 (A205683 (n + 1)).toNat - A205683 (n + 1)

end

end A205684.P12426919275490321923

/-!
# A205685: The number j such that 5 divides prime(k)-prime(j), where k(n)=A205684(n).

The programs for A205685, there is no canonical definition to state claims against.
-/

/-! ## A205685.P6181991236049864786

`A000720(A205687(n+1))`
-/

namespace A205685.P6181991236049864786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A205687 (n + 1)).toNat

end

end A205685.P6181991236049864786

/-! ## A205685.P3939434368036733376

`A036234(A205687(n+1)-1)`
-/

namespace A205685.P3939434368036733376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036234 (A205687 (n + 1) - 1).toNat

end

end A205685.P3939434368036733376

/-! ## A205685.P6242359010733934752

`A003963(2*A205687(n+1))`
-/

namespace A205685.P6242359010733934752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (2 * A205687 (n + 1)).toNat

end

end A205685.P6242359010733934752

/-! ## A205685.P8053635690806454111

`A055679(2*A205687(n+1))`
-/

namespace A205685.P8053635690806454111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055679 (2 * A205687 (n + 1)).toNat

end

end A205685.P8053635690806454111

/-! ## A205685.P7078515272682860016

`A061395(2*A205687(n+1))`
-/

namespace A205685.P7078515272682860016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (2 * A205687 (n + 1)).toNat

end

end A205685.P7078515272682860016

/-! ## A205685.P18124979766628836766

`A230980(A205687(n+1)-1)+1`
-/

namespace A205685.P18124979766628836766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 (A205687 (n + 1) - 1).toNat + 1

end

end A205685.P18124979766628836766

/-! ## A205685.P15369398341323156934

`A056239(2*A205687(n+1))-1`
-/

namespace A205685.P15369398341323156934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (2 * A205687 (n + 1)).toNat - 1

end

end A205685.P15369398341323156934

/-! ## A205685.P1167462244652475363

`A055679(A205687(n+1)+A205687(n+1)+1)`
-/

namespace A205685.P1167462244652475363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055679 (A205687 (n + 1) + (A205687 (n + 1) + 1)).toNat

end

end A205685.P1167462244652475363

/-! ## A205685.P14338323834584072765

`A205687(n+1)-A026233(A205687(n+1)-1)`
-/

namespace A205685.P14338323834584072765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205687 (n + 1) - A026233 (A205687 (n + 1) - 1).toNat

end

end A205685.P14338323834584072765

/-! ## A205685.P15151023225755404928

`A026238(2*A205687(n+1)-A205687(n+1))`
-/

namespace A205685.P15151023225755404928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026238 (2 * A205687 (n + 1) - A205687 (n + 1)).toNat

end

end A205685.P15151023225755404928

/-! ## A205685.P5883351229439808160

`A049084(2*A205687(n+1)-A205687(n+1))`
-/

namespace A205685.P5883351229439808160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (2 * A205687 (n + 1) - A205687 (n + 1)).toNat

end

end A205685.P5883351229439808160

/-! ## A205685.P6201949158238506208

`A002260(A205683(n+1))`
-/

namespace A205685.P6201949158238506208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A205683 (n + 1)).toNat

end

end A205685.P6201949158238506208

/-! ## A205685.P6501929382274497098

`A061395(A205687(n+1)²)`
-/

namespace A205685.P6501929382274497098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A205687 (n + 1) ^ 2).toNat

end

end A205685.P6501929382274497098

/-!
# A205686: Prime(A205684(n)), the n-th number s(k) such that 5 divides s(k)-s(j) for some j<k, where s(j)=prime(j).

The programs for A205686, there is no canonical definition to state claims against.
-/

/-! ## A205686.P13439784025169000145

`A000040(A205684(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A205686.P13439784025169000145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A205684 (n + 1)).toNat

end

end A205686.P13439784025169000145

/-! ## A205686.P11874480865765682577

`A008578(A205684(n+1)+1)`
-/

namespace A205686.P11874480865765682577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A205684 (n + 1) + 1).toNat

end

end A205686.P11874480865765682577

/-! ## A205686.P1666438718426440505

`A158611(A205684(n+1)+2)`
-/

namespace A205686.P1666438718426440505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (A205684 (n + 1) + 2).toNat

end

end A205686.P1666438718426440505

/-! ## A205686.P10318125255221063180

`A205688(n+1)+A205687(n+1)`
-/

namespace A205686.P10318125255221063180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205688 (n + 1) + A205687 (n + 1)

end

end A205686.P10318125255221063180

/-! ## A205686.P9952912784178579486

`or(A000035(n), A006005(A205684(n+1)))`
-/

namespace A205686.P9952912784178579486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000035 n) (A006005 (A205684 (n + 1)).toNat)

end

end A205686.P9952912784178579486

/-! ## A205686.P18391244444753976457

`A205688(n+1)+A000040(A205685(n+1))`
-/

namespace A205686.P18391244444753976457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205688 (n + 1) + A000040 (A205685 (n + 1)).toNat

end

end A205686.P18391244444753976457

/-! ## A205686.P3793747086166787950

`A389809(A205683(n+1))`
-/

namespace A205686.P3793747086166787950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389809 (A205683 (n + 1)).toNat

end

end A205686.P3793747086166787950

/-! ## A205686.P3340933074809547928

`A205687(n+1)+A204890(A205683(n+1))`
-/

namespace A205686.P3340933074809547928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205687 (n + 1) + A204890 (A205683 (n + 1)).toNat

end

end A205686.P3340933074809547928

/-!
# A205687: Prime(A205685(n)), the n-th number s(j) such that 5 divides s(k)-s(j), where the pairs (k,j) are given by A205684 and A205685.

The programs for A205687, there is no canonical definition to state claims against.
-/

/-! ## A205687.P8048781468249203855

`A000040(A205685(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A205687.P8048781468249203855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A205685 (n + 1)).toNat

end

end A205687.P8048781468249203855

/-! ## A205687.P11572276837377226519

`A008578(A205685(n+1)+1)`
-/

namespace A205687.P11572276837377226519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A205685 (n + 1) + 1).toNat

end

end A205687.P11572276837377226519

/-! ## A205687.P17491776940505342743

`A158611(A205685(n+1)+2)`
-/

namespace A205687.P17491776940505342743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (A205685 (n + 1) + 2).toNat

end

end A205687.P17491776940505342743

/-! ## A205687.P11860094541382249914

`A205686(n+1)-A205688(n+1)`
-/

namespace A205687.P11860094541382249914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205686 (n + 1) - A205688 (n + 1)

end

end A205687.P11860094541382249914

/-! ## A205687.P11462580759143391442

`A000040(A205684(n+1))-A205688(n+1)`
-/

namespace A205687.P11462580759143391442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A205684 (n + 1)).toNat - A205688 (n + 1)

end

end A205687.P11462580759143391442

/-! ## A205687.P17613430937157130990

`A037126(A205683(n+1))`
-/

namespace A205687.P17613430937157130990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037126 (A205683 (n + 1)).toNat

end

end A205687.P17613430937157130990

/-! ## A205687.P2735151409278974529

`A205686(n+1)-A204890(A205683(n+1))`
-/

namespace A205687.P2735151409278974529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205686 (n + 1) - A204890 (A205683 (n + 1)).toNat

end

end A205687.P2735151409278974529

/-! ## A205687.P8181769357798940963

`A006093(A205685(n+1))+A001511(A067793(n+1))`
-/

namespace A205687.P8181769357798940963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (A205685 (n + 1)).toNat + A001511 (A067793 (n + 1)).toNat

end

end A205687.P8181769357798940963

/-! ## A205687.P4565574368354236267

`A006093(A205685(n+1))+A001511(A045807(n+1))`
-/

namespace A205687.P4565574368354236267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (A205685 (n + 1)).toNat + A001511 (A045807 (n + 1)).toNat

end

end A205687.P4565574368354236267

/-!
# A205688: prime(k)-prime(j), where the pairs (k,j) are given by A205684 and A205685.

The programs for A205688, there is no canonical definition to state claims against.
-/

/-! ## A205688.P194316046445163361

`5*A205689(n+1)`
-/

namespace A205688.P194316046445163361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A205689 (n + 1)

end

end A205688.P194316046445163361

/-! ## A205688.P16794899060493643113

`A008587(A205689(n+1))`
-/

namespace A205688.P16794899060493643113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008587 (A205689 (n + 1)).toNat

end

end A205688.P16794899060493643113

/-! ## A205688.P6918376780416693161

`A205686(n+1)-A205687(n+1)`
-/

namespace A205688.P6918376780416693161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205686 (n + 1) - A205687 (n + 1)

end

end A205688.P6918376780416693161

/-! ## A205688.P17474330754053111222

`A008706(A205689(n+1)%(n+2))`
-/

namespace A205688.P17474330754053111222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008706 (Int.tmod (A205689 (n + 1)) (n + 2 : ℤ)).toNat

end

end A205688.P17474330754053111222

/-! ## A205688.P2025658259131092502

`A000040(A205684(n+1))-A205687(n+1)`
-/

namespace A205688.P2025658259131092502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A205684 (n + 1)).toNat - A205687 (n + 1)

end

end A205688.P2025658259131092502

/-! ## A205688.P15111515299151741026

`A205686(n+1)-A000040(A205685(n+1))`
-/

namespace A205688.P15111515299151741026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205686 (n + 1) - A000040 (A205685 (n + 1)).toNat

end

end A205688.P15111515299151741026

/-! ## A205688.P1150070058500942737

`A000040(A205684(n+1))-A000040(A205685(n+1))`
-/

namespace A205688.P1150070058500942737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A205684 (n + 1)).toNat - A000040 (A205685 (n + 1)).toNat

end

end A205688.P1150070058500942737

/-! ## A205688.P3091357242354787949

`A204890(A205683(n+1))`
-/

namespace A205688.P3091357242354787949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204890 (A205683 (n + 1)).toNat

end

end A205688.P3091357242354787949

/-!
# A205689: Prime(A205685(n)), the n-th number s(j) such that 5 divides s(k)-s(j), where the pairs (k,j) are given by A205684 and A205685.

The programs for A205689, there is no canonical definition to state claims against.
-/

/-! ## A205689.P1852342757411105479

`A205688(n+1)/5`
-/

namespace A205689.P1852342757411105479
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A205688 (n + 1) : ℚ) / 5

end

end A205689.P1852342757411105479

/-! ## A205689.P3428765244189604831

`A002266(A205688(n+1))`
-/

namespace A205689.P3428765244189604831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002266 (A205688 (n + 1)).toNat

end

end A205689.P3428765244189604831

/-! ## A205689.P5103802627989871781

`A059995(2*A205688(n+1))`
-/

namespace A205689.P5103802627989871781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059995 (2 * A205688 (n + 1)).toNat

end

end A205689.P5103802627989871781

/-! ## A205689.P14117251299115652151

`A076313(2*A205688(n+1))`
-/

namespace A205689.P14117251299115652151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076313 (2 * A205688 (n + 1)).toNat

end

end A205689.P14117251299115652151

/-! ## A205689.P11158166744737281615

`A059995(A205688(n+1)+A205688(n+1)+1)`
-/

namespace A205689.P11158166744737281615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059995 (A205688 (n + 1) + (A205688 (n + 1) + 1)).toNat

end

end A205689.P11158166744737281615

/-! ## A205689.P186646999699763595

`A204890(A205683(n+1))/5`
-/

namespace A205689.P186646999699763595
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A204890 (A205683 (n + 1)).toNat : ℚ) / 5

end

end A205689.P186646999699763595

/-!
# A205690: Positions of multiples of 6 in A204890 (differences of primes).

The programs for A205690, the canonical program `A205690.P15675749625037910183` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A205690 has offset 1).

The definition of A205690 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4896 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A205690.P15675749625037910183

`∩[A205559(n+1), A080036(n)]`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A205690

/-- `∩[A205559(n+1), A080036(n)]` -/
def P15675749625037910183.Spec : Prop :=
  ∀ n, (P15675749625037910183.a n : ℤ) = A205690 (n + 1)

theorem P15675749625037910183.correct : P15675749625037910183.Spec := by
  intro n
  simp only [A205690, Nat.add_sub_cancel]

end A205690

/-! ## A205690.P3967802068659304146

`eq[1, (A204890(n+1)+1)%6]+1`
-/

namespace A205690.P3967802068659304146
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A204890 (n + 1) + 1) 6

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A205690.P3967802068659304146

namespace A205690

/-- `eq[1, (A204890(n+1)+1)%6]+1` -/
def P3967802068659304146.Spec : Prop :=
  ∀ n, (P3967802068659304146.a n : ℤ) = A205690 (n + 1)

end A205690

/-! ## A205690.P2134608951176443224

`lt[A070435(A204890(n+1)), 1]+1`
-/

namespace A205690.P2134608951176443224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070435 (A204890 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A205690.P2134608951176443224

namespace A205690

/-- `lt[A070435(A204890(n+1)), 1]+1` -/
def P2134608951176443224.Spec : Prop :=
  ∀ n, (P2134608951176443224.a n : ℤ) = A205690 (n + 1)

end A205690

/-! ## A205690.P16495833415273761356

`∩[A137353(n+1), A205559(n+1)]`
-/

namespace A205690.P16495833415273761356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137353 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205559 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A205690.P16495833415273761356

namespace A205690

/-- `∩[A137353(n+1), A205559(n+1)]` -/
def P16495833415273761356.Spec : Prop :=
  ∀ n, (P16495833415273761356.a n : ℤ) = A205690 (n + 1)

end A205690

/-! ## A205690.P5221690937448415833

`lt[A121262(n), A348842(A250261(n))]`
-/

namespace A205690.P5221690937448415833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121262 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348842 (A250261 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A205690.P5221690937448415833

namespace A205690

/-- `lt[A121262(n), A348842(A250261(n))]` -/
def P5221690937448415833.Spec : Prop :=
  ∀ n, (P5221690937448415833.a n : ℤ) = A205690 (n + 1)

end A205690

/-!
# A205691: Numbers k for which 6 divides prime(k)-prime(j) for some j<k; each k occurs once for each such j.

The programs for A205691, there is no canonical definition to state claims against.
-/

/-! ## A205691.P9063647343021475640

`A000720(A205693(n+1))`
-/

namespace A205691.P9063647343021475640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A205693 (n + 1)).toNat

end

end A205691.P9063647343021475640

/-! ## A205691.P17241392355370560755

`A204892(A205693(n+1)-2)`
-/

namespace A205691.P17241392355370560755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204892 (A205693 (n + 1) - 2).toNat

end

end A205691.P17241392355370560755

/-! ## A205691.P5916731101891840520

`A000720(A205695(n+1)+A205694(n+1))`
-/

namespace A205691.P5916731101891840520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A205695 (n + 1) + A205694 (n + 1)).toNat

end

end A205691.P5916731101891840520

/-! ## A205691.P5573708054774103977

`A026233(A205695(n+1)+A205694(n+1))`
-/

namespace A205691.P5573708054774103977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026233 (A205695 (n + 1) + A205694 (n + 1)).toNat

end

end A205691.P5573708054774103977

/-! ## A205691.P15789605515363483550

`A026238(A205695(n+1)+A205694(n+1))`
-/

namespace A205691.P15789605515363483550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026238 (A205695 (n + 1) + A205694 (n + 1)).toNat

end

end A205691.P15789605515363483550

/-! ## A205691.P13548260541811567604

`A049084(A205695(n+1)+A205694(n+1))`
-/

namespace A205691.P13548260541811567604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (A205695 (n + 1) + A205694 (n + 1)).toNat

end

end A205691.P13548260541811567604

/-! ## A205691.P11230902286837119186

`A055396(A205695(n+1)+A205694(n+1))`
-/

namespace A205691.P11230902286837119186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (A205695 (n + 1) + A205694 (n + 1)).toNat

end

end A205691.P11230902286837119186

/-! ## A205691.P861370331975344286

`A056239(A205695(n+1)+A205694(n+1))`
-/

namespace A205691.P861370331975344286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (A205695 (n + 1) + A205694 (n + 1)).toNat

end

end A205691.P861370331975344286

/-! ## A205691.P5841673576130587865

`A061395(A205695(n+1)+A205694(n+1))`
-/

namespace A205691.P5841673576130587865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A205695 (n + 1) + A205694 (n + 1)).toNat

end

end A205691.P5841673576130587865

/-! ## A205691.P4114401420447872814

`A003057(A205690(n+1))`
-/

namespace A205691.P4114401420447872814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003057 (A205690 (n + 1)).toNat

end

end A205691.P4114401420447872814

/-!
# A205692: The number j such that 6 divides prime(k)-prime(j), where k(n)=A205691(n).

The programs for A205692, the canonical program `A205692.P12020917738335032980` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A205692 has offset 1).

The definition of A205692 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5478 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A205692.P9659357628293679622

`A000720(A205694(n+1))`
-/

namespace A205692.P9659357628293679622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A205694 (n + 1)).toNat

end

end A205692.P9659357628293679622

namespace A205692

/-- `A000720(A205694(n+1))` -/
def P9659357628293679622.Spec : Prop :=
  ∀ n, P9659357628293679622.a n = A205692 (n + 1)

end A205692

/-! ## A205692.P11077923598596299703

`A036234(A205694(n+1)-1)`
-/

namespace A205692.P11077923598596299703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036234 (A205694 (n + 1) - 1).toNat

end

end A205692.P11077923598596299703

namespace A205692

/-- `A036234(A205694(n+1)-1)` -/
def P11077923598596299703.Spec : Prop :=
  ∀ n, P11077923598596299703.a n = A205692 (n + 1)

end A205692

/-! ## A205692.P7710743411178523113

`A204892(A205694(n+1)-2)`
-/

namespace A205692.P7710743411178523113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204892 (A205694 (n + 1) - 2).toNat

end

end A205692.P7710743411178523113

namespace A205692

/-- `A204892(A205694(n+1)-2)` -/
def P7710743411178523113.Spec : Prop :=
  ∀ n, P7710743411178523113.a n = A205692 (n + 1)

end A205692

/-! ## A205692.P7632173118352347768

`A055679(2*A205694(n+1))`
-/

namespace A205692.P7632173118352347768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055679 (2 * A205694 (n + 1)).toNat

end

end A205692.P7632173118352347768

namespace A205692

/-- `A055679(2*A205694(n+1))` -/
def P7632173118352347768.Spec : Prop :=
  ∀ n, P7632173118352347768.a n = A205692 (n + 1)

end A205692

/-! ## A205692.P15981513123752431753

`A061395(2*A205694(n+1))`
-/

namespace A205692.P15981513123752431753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (2 * A205694 (n + 1)).toNat

end

end A205692.P15981513123752431753

namespace A205692

/-- `A061395(2*A205694(n+1))` -/
def P15981513123752431753.Spec : Prop :=
  ∀ n, P15981513123752431753.a n = A205692 (n + 1)

end A205692

/-! ## A205692.P13189659638896304463

`A036234(xor(1, A205694(n+1)))`
-/

namespace A205692.P13189659638896304463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036234 (Int.xor 1 (A205694 (n + 1))).toNat

end

end A205692.P13189659638896304463

namespace A205692

/-- `A036234(xor(1, A205694(n+1)))` -/
def P13189659638896304463.Spec : Prop :=
  ∀ n, P13189659638896304463.a n = A205692 (n + 1)

end A205692

/-! ## A205692.P14274365630668495442

`∑{d}[A205694(n+1), A055396(#)]`
-/

namespace A205692.P14274365630668495442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205694 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A055396 d

end

end A205692.P14274365630668495442

namespace A205692

/-- `∑{d}[A205694(n+1), A055396(#)]` -/
def P14274365630668495442.Spec : Prop :=
  ∀ n, P14274365630668495442.a n = A205692 (n + 1)

end A205692

/-! ## A205692.P17574698062663271708

`A056239(2*A205694(n+1))-1`
-/

namespace A205692.P17574698062663271708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (2 * A205694 (n + 1)).toNat - 1

end

end A205692.P17574698062663271708

namespace A205692

/-- `A056239(2*A205694(n+1))-1` -/
def P17574698062663271708.Spec : Prop :=
  ∀ n, P17574698062663271708.a n = A205692 (n + 1)

end A205692

/-! ## A205692.P8895379402469655453

`A055679(A205694(n+1)+A205694(n+1)+1)`
-/

namespace A205692.P8895379402469655453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055679 (A205694 (n + 1) + (A205694 (n + 1) + 1)).toNat

end

end A205692.P8895379402469655453

namespace A205692

/-- `A055679(A205694(n+1)+A205694(n+1)+1)` -/
def P8895379402469655453.Spec : Prop :=
  ∀ n, P8895379402469655453.a n = A205692 (n + 1)

end A205692

/-! ## A205692.P7103384660855621816

`A205694(n+1)-A026238(A205694(n+1)+1)`
-/

namespace A205692.P7103384660855621816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205694 (n + 1) - A026238 (A205694 (n + 1) + 1).toNat

end

end A205692.P7103384660855621816

namespace A205692

/-- `A205694(n+1)-A026238(A205694(n+1)+1)` -/
def P7103384660855621816.Spec : Prop :=
  ∀ n, P7103384660855621816.a n = A205692 (n + 1)

end A205692

/-! ## A205692.P875896691143218214

`A049084(2*A205694(n+1)-A205694(n+1))`
-/

namespace A205692.P875896691143218214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (2 * A205694 (n + 1) - A205694 (n + 1)).toNat

end

end A205692.P875896691143218214

namespace A205692

/-- `A049084(2*A205694(n+1)-A205694(n+1))` -/
def P875896691143218214.Spec : Prop :=
  ∀ n, P875896691143218214.a n = A205692 (n + 1)

end A205692

/-! ## A205692.P10420677115331172408

`A055396(2*A205694(n+1)-A205694(n+1))`
-/

namespace A205692.P10420677115331172408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (2 * A205694 (n + 1) - A205694 (n + 1)).toNat

end

end A205692.P10420677115331172408

namespace A205692

/-- `A055396(2*A205694(n+1)-A205694(n+1))` -/
def P10420677115331172408.Spec : Prop :=
  ∀ n, P10420677115331172408.a n = A205692 (n + 1)

end A205692

/-! ## A205692.P8174025567950378081

`A049084(A205694(n+1))+A049084(A205695(n+1))`
-/

namespace A205692.P8174025567950378081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (A205694 (n + 1)).toNat + A049084 (A205695 (n + 1)).toNat

end

end A205692.P8174025567950378081

namespace A205692

/-- `A049084(A205694(n+1))+A049084(A205695(n+1))` -/
def P8174025567950378081.Spec : Prop :=
  ∀ n, P8174025567950378081.a n = A205692 (n + 1)

end A205692

/-! ## A205692.P12020917738335032980

`A002260(A205690(n+1))`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A205692

/-- `A002260(A205690(n+1))` -/
def P12020917738335032980.Spec : Prop :=
  ∀ n, P12020917738335032980.a n = A205692 (n + 1)

theorem P12020917738335032980.correct : P12020917738335032980.Spec := by
  intro n
  simp only [A205692, Nat.add_sub_cancel]

end A205692

/-! ## A205692.P16119908184668554285

`A061395(A205694(n+1)²)`
-/

namespace A205692.P16119908184668554285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A205694 (n + 1) ^ 2).toNat

end

end A205692.P16119908184668554285

namespace A205692

/-- `A061395(A205694(n+1)²)` -/
def P16119908184668554285.Spec : Prop :=
  ∀ n, P16119908184668554285.a n = A205692 (n + 1)

end A205692

/-! ## A205692.P5696588495759159252

`A055396(A205694(n+1)²)`
-/

namespace A205692.P5696588495759159252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (A205694 (n + 1) ^ 2).toNat

end

end A205692.P5696588495759159252

namespace A205692

/-- `A055396(A205694(n+1)²)` -/
def P5696588495759159252.Spec : Prop :=
  ∀ n, P5696588495759159252.a n = A205692 (n + 1)

end A205692

/-! ## A205692.P4982953535273387400

`A056239(A205694(n+1)²)/2`
-/

namespace A205692.P4982953535273387400
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056239 (A205694 (n + 1) ^ 2).toNat : ℚ) / 2

end

end A205692.P4982953535273387400

namespace A205692

/-- `A056239(A205694(n+1)²)/2` -/
def P4982953535273387400.Spec : Prop :=
  ∀ n, P4982953535273387400.a n = (A205692 (n + 1) : ℚ)

end A205692

/-! ## A205692.P16385295384612320251

`A049084(A205694(n+1)²)+A049084(A205694(n+1))`
-/

namespace A205692.P16385295384612320251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (A205694 (n + 1) ^ 2).toNat + A049084 (A205694 (n + 1)).toNat

end

end A205692.P16385295384612320251

namespace A205692

/-- `A049084(A205694(n+1)²)+A049084(A205694(n+1))` -/
def P16385295384612320251.Spec : Prop :=
  ∀ n, P16385295384612320251.a n = A205692 (n + 1)

end A205692

/-!
# A205693: Prime(A205691(n)), the n-th number s(k) such that 6 divides s(k)-s(j) for some j<k, where s(j)=prime(j).

The programs for A205693, there is no canonical definition to state claims against.
-/

/-! ## A205693.P407546108533504247

`A000040(A205691(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A205693.P407546108533504247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A205691 (n + 1)).toNat

end

end A205693.P407546108533504247

/-! ## A205693.P1874315642712948182

`A008578(A205691(n+1)+1)`
-/

namespace A205693.P1874315642712948182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A205691 (n + 1) + 1).toNat

end

end A205693.P1874315642712948182

/-! ## A205693.P6750826468738024469

`A065091(A205691(n+1)-1)`
-/

namespace A205693.P6750826468738024469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (A205691 (n + 1) - 1).toNat

end

end A205693.P6750826468738024469

/-! ## A205693.P17826220374736457544

`A205695(n+1)+A205694(n+1)`
-/

namespace A205693.P17826220374736457544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205695 (n + 1) + A205694 (n + 1)

end

end A205693.P17826220374736457544

/-! ## A205693.P17627627788343894947

`A205695(n+1)+A000040(A205692(n+1))`
-/

namespace A205693.P17627627788343894947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205695 (n + 1) + A000040 (A205692 (n + 1)).toNat

end

end A205693.P17627627788343894947

/-! ## A205693.P5789747412027462176

`A006005(A205691(n+1)%A025334(n+1))`
-/

namespace A205693.P5789747412027462176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (Int.tmod (A205691 (n + 1)) (A025334 (n + 1))).toNat

end

end A205693.P5789747412027462176

/-! ## A205693.P4803870521747341945

`A389809(A205690(n+1))`
-/

namespace A205693.P4803870521747341945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389809 (A205690 (n + 1)).toNat

end

end A205693.P4803870521747341945

/-! ## A205693.P16302172840544639226

`A205694(n+1)+A204890(A205690(n+1))`
-/

namespace A205693.P16302172840544639226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205694 (n + 1) + A204890 (A205690 (n + 1)).toNat

end

end A205693.P16302172840544639226

/-!
# A205694: Prime(A205692(n)), the n-th number s(j) such that 6 divides s(k)-s(j), where the pairs (k,j) are given by A205691 and A205692.

The programs for A205694, the canonical program `A205694.P16272218153168622312` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A205694 has offset 1).

The definition of A205694 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A205692, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A205694.P16272218153168622312

`A000040(A205692(n+1))`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A205694

/-- `A000040(A205692(n+1))` -/
def P16272218153168622312.Spec : Prop :=
  ∀ n, P16272218153168622312.a n = A205694 (n + 1)

theorem P16272218153168622312.correct : P16272218153168622312.Spec := by
  intro n
  simp only [A205694, Nat.add_sub_cancel]

end A205694

/-! ## A205694.P13619418585542019197

`A008578(A205692(n+1)+1)`
-/

namespace A205694.P13619418585542019197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A205692 (n + 1) + 1).toNat

end

end A205694.P13619418585542019197

namespace A205694

/-- `A008578(A205692(n+1)+1)` -/
def P13619418585542019197.Spec : Prop :=
  ∀ n, P13619418585542019197.a n = A205694 (n + 1)

end A205694

/-! ## A205694.P15473326440226980316

`A065091(A205692(n+1)-1)`
-/

namespace A205694.P15473326440226980316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (A205692 (n + 1) - 1).toNat

end

end A205694.P15473326440226980316

namespace A205694

/-- `A065091(A205692(n+1)-1)` -/
def P15473326440226980316.Spec : Prop :=
  ∀ n, P15473326440226980316.a n = A205694 (n + 1)

end A205694

/-! ## A205694.P5336067484133168896

`A205693(n+1)-A205695(n+1)`
-/

namespace A205694.P5336067484133168896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205693 (n + 1) - A205695 (n + 1)

end

end A205694.P5336067484133168896

namespace A205694

/-- `A205693(n+1)-A205695(n+1)` -/
def P5336067484133168896.Spec : Prop :=
  ∀ n, P5336067484133168896.a n = A205694 (n + 1)

end A205694

/-! ## A205694.P116251399201267763

`A000040(A205691(n+1))-A205695(n+1)`
-/

namespace A205694.P116251399201267763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A205691 (n + 1)).toNat - A205695 (n + 1)

end

end A205694.P116251399201267763

namespace A205694

/-- `A000040(A205691(n+1))-A205695(n+1)` -/
def P116251399201267763.Spec : Prop :=
  ∀ n, P116251399201267763.a n = A205694 (n + 1)

end A205694

/-! ## A205694.P17741920464967008102

`filter[A205674(n+1), A000035(#)]`
-/

namespace A205694.P17741920464967008102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205674 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n)

end

end A205694.P17741920464967008102

namespace A205694

/-- `filter[A205674(n+1), A000035(#)]` -/
def P17741920464967008102.Spec : Prop :=
  ∀ n, P17741920464967008102.a n = A205694 (n + 1)

end A205694

/-! ## A205694.P8643193240332645673

`filter[A205674(n+1), A035263(#)]`
-/

namespace A205694.P8643193240332645673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205674 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A035263 (f1 j).toNat = 1) n)

end

end A205694.P8643193240332645673

namespace A205694

/-- `filter[A205674(n+1), A035263(#)]` -/
def P8643193240332645673.Spec : Prop :=
  ∀ n, P8643193240332645673.a n = A205694 (n + 1)

end A205694

/-! ## A205694.P14261731163911513081

`filter[A205674(n+1), A039982(#)]`
-/

namespace A205694.P14261731163911513081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205674 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A039982 (f1 j).toNat = 1) n)

end

end A205694.P14261731163911513081

namespace A205694

/-- `filter[A205674(n+1), A039982(#)]` -/
def P14261731163911513081.Spec : Prop :=
  ∀ n, P14261731163911513081.a n = A205694 (n + 1)

end A205694

/-! ## A205694.P2749948195316270858

`filter[A205674(n+1), A080545(#)]`
-/

namespace A205694.P2749948195316270858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205674 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080545 (f1 j).toNat = 1) n)

end

end A205694.P2749948195316270858

namespace A205694

/-- `filter[A205674(n+1), A080545(#)]` -/
def P2749948195316270858.Spec : Prop :=
  ∀ n, P2749948195316270858.a n = A205694 (n + 1)

end A205694

/-! ## A205694.P15328726836175424925

`filter[A205674(n+1), A093719(#)]`
-/

namespace A205694.P15328726836175424925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205674 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A093719 (f1 j).toNat = 1) n)

end

end A205694.P15328726836175424925

namespace A205694

/-- `filter[A205674(n+1), A093719(#)]` -/
def P15328726836175424925.Spec : Prop :=
  ∀ n, P15328726836175424925.a n = A205694 (n + 1)

end A205694

/-! ## A205694.P6131757994615692627

`filter[A205674(n+1), A102863(#)]`
-/

namespace A205694.P6131757994615692627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205674 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A102863 (f1 j).toNat = 1) n)

end

end A205694.P6131757994615692627

namespace A205694

/-- `filter[A205674(n+1), A102863(#)]` -/
def P6131757994615692627.Spec : Prop :=
  ∀ n, P6131757994615692627.a n = A205694 (n + 1)

end A205694

/-! ## A205694.P6518271497402243949

`filter[A205674(n+1), A104106(#)]`
-/

namespace A205694.P6518271497402243949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205674 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A104106 (f1 j).toNat = 1) n)

end

end A205694.P6518271497402243949

namespace A205694

/-- `filter[A205674(n+1), A104106(#)]` -/
def P6518271497402243949.Spec : Prop :=
  ∀ n, P6518271497402243949.a n = A205694 (n + 1)

end A205694

/-! ## A205694.P3231510968121861484

`filter[A205674(n+1), A105234(#)]`
-/

namespace A205694.P3231510968121861484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205674 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A105234 (f1 j).toNat = 1) n)

end

end A205694.P3231510968121861484

namespace A205694

/-- `filter[A205674(n+1), A105234(#)]` -/
def P3231510968121861484.Spec : Prop :=
  ∀ n, P3231510968121861484.a n = A205694 (n + 1)

end A205694

/-! ## A205694.P15062407150868242407

`filter[A205674(n+1), A115971(#)]`
-/

namespace A205694.P15062407150868242407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205674 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A115971 (f1 j).toNat = 1) n)

end

end A205694.P15062407150868242407

namespace A205694

/-- `filter[A205674(n+1), A115971(#)]` -/
def P15062407150868242407.Spec : Prop :=
  ∀ n, P15062407150868242407.a n = A205694 (n + 1)

end A205694

/-! ## A205694.P14233091666532826199

`filter[A205674(n+1), A127254(#)]`
-/

namespace A205694.P14233091666532826199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205674 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A127254 (f1 j).toNat = 1) n)

end

end A205694.P14233091666532826199

namespace A205694

/-- `filter[A205674(n+1), A127254(#)]` -/
def P14233091666532826199.Spec : Prop :=
  ∀ n, P14233091666532826199.a n = A205694 (n + 1)

end A205694

/-! ## A205694.P1480246910020639247

`filter[A205674(n+1), A141260(#)]`
-/

namespace A205694.P1480246910020639247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205674 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A141260 (f1 j).toNat = 1) n)

end

end A205694.P1480246910020639247

namespace A205694

/-- `filter[A205674(n+1), A141260(#)]` -/
def P1480246910020639247.Spec : Prop :=
  ∀ n, P1480246910020639247.a n = A205694 (n + 1)

end A205694

/-! ## A205694.P4396535090971769001

`filter[A205674(n+1), A152822(#)]`
-/

namespace A205694.P4396535090971769001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205674 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A152822 (f1 j).toNat = 1) n)

end

end A205694.P4396535090971769001

namespace A205694

/-- `filter[A205674(n+1), A152822(#)]` -/
def P4396535090971769001.Spec : Prop :=
  ∀ n, P4396535090971769001.a n = A205694 (n + 1)

end A205694

/-! ## A205694.P16791177710795400045

`filter[A205674(n+1), A171387(#)]`
-/

namespace A205694.P16791177710795400045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205674 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A171387 (f1 j).toNat = 1) n)

end

end A205694.P16791177710795400045

namespace A205694

/-- `filter[A205674(n+1), A171387(#)]` -/
def P16791177710795400045.Spec : Prop :=
  ∀ n, P16791177710795400045.a n = A205694 (n + 1)

end A205694

/-! ## A205694.P10697555729287353814

`filter[A205674(n+1), A174275(#)]`
-/

namespace A205694.P10697555729287353814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205674 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A174275 (f1 j).toNat = 1) n)

end

end A205694.P10697555729287353814

namespace A205694

/-- `filter[A205674(n+1), A174275(#)]` -/
def P10697555729287353814.Spec : Prop :=
  ∀ n, P10697555729287353814.a n = A205694 (n + 1)

end A205694

/-! ## A205694.P1867617306386064795

`filter[A205674(n+1), A187074(#)]`
-/

namespace A205694.P1867617306386064795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205674 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A187074 (f1 j).toNat = 1) n)

end

end A205694.P1867617306386064795

namespace A205694

/-- `filter[A205674(n+1), A187074(#)]` -/
def P1867617306386064795.Spec : Prop :=
  ∀ n, P1867617306386064795.a n = A205694 (n + 1)

end A205694

/-!
# A205695: prime(k)-prime(j), where the pairs (k,j) are given by A205691 and A205692.

The programs for A205695, there is no canonical definition to state claims against.
-/

/-! ## A205695.P4600348064150110645

`6*A205696(n+1)`
-/

namespace A205695.P4600348064150110645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A205696 (n + 1)

end

end A205695.P4600348064150110645

/-! ## A205695.P11504021434807546870

`A008458(A205696(n+1))`
-/

namespace A205695.P11504021434807546870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 (A205696 (n + 1)).toNat

end

end A205695.P11504021434807546870

/-! ## A205695.P15100761344393344408

`A205693(n+1)-A205694(n+1)`
-/

namespace A205695.P15100761344393344408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205693 (n + 1) - A205694 (n + 1)

end

end A205695.P15100761344393344408

/-! ## A205695.P13393661974033878562

`A000040(A205691(n+1))-A205694(n+1)`
-/

namespace A205695.P13393661974033878562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A205691 (n + 1)).toNat - A205694 (n + 1)

end

end A205695.P13393661974033878562

/-! ## A205695.P13822445078146287824

`A205693(n+1)-A000040(A205692(n+1))`
-/

namespace A205695.P13822445078146287824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205693 (n + 1) - A000040 (A205692 (n + 1)).toNat

end

end A205695.P13822445078146287824

/-! ## A205695.P7884527904299246251

`filter[A205557(n+1), A059841(#)]`
-/

namespace A205695.P7884527904299246251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205557 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A059841 (f1 j).toNat = 1) n)

end

end A205695.P7884527904299246251

/-! ## A205695.P12757058253558299721

`filter[A205557(n+1), A079979(#)]`
-/

namespace A205695.P12757058253558299721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205557 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A079979 (f1 j).toNat = 1) n)

end

end A205695.P12757058253558299721

/-! ## A205695.P17370851766788625975

`filter[A205557(n+1), A088911(#)]`
-/

namespace A205695.P17370851766788625975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205557 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A088911 (f1 j).toNat = 1) n)

end

end A205695.P17370851766788625975

/-! ## A205695.P11025613777440878881

`filter[A205557(n+1), A135528(#)]`
-/

namespace A205695.P11025613777440878881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205557 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A135528 (f1 j).toNat = 1) n)

end

end A205695.P11025613777440878881

/-! ## A205695.P8023643320527344661

`filter[A205557(n+1), A232991(#)]`
-/

namespace A205695.P8023643320527344661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205557 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A232991 (f1 j).toNat = 1) n)

end

end A205695.P8023643320527344661

/-! ## A205695.P4207429040651085608

`filter[A205557(n+1), A266591(#)]`
-/

namespace A205695.P4207429040651085608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205557 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A266591 (f1 j).toNat = 1) n)

end

end A205695.P4207429040651085608

/-! ## A205695.P10781983132375607804

`filter[A205557(n+1), A267043(#)]`
-/

namespace A205695.P10781983132375607804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205557 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267043 (f1 j).toNat = 1) n)

end

end A205695.P10781983132375607804

/-! ## A205695.P7787331977812727970

`filter[A205557(n+1), A374197(#)]`
-/

namespace A205695.P7787331977812727970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205557 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374197 (f1 j).toNat = 1) n)

end

end A205695.P7787331977812727970

/-! ## A205695.P4350881529484005593

`filter[A205557(n+1), A379964(#)]`
-/

namespace A205695.P4350881529484005593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205557 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379964 (f1 j).toNat = 1) n)

end

end A205695.P4350881529484005593

/-! ## A205695.P17918330446641674739

`filter[A204906(n+1), A079978(#)]`
-/

namespace A205695.P17918330446641674739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204906 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A079978 (f1 j).toNat = 1) n)

end

end A205695.P17918330446641674739

/-! ## A205695.P8856898115853331823

`filter[A204906(n+1), A079979(#)]`
-/

namespace A205695.P8856898115853331823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204906 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A079979 (f1 j).toNat = 1) n)

end

end A205695.P8856898115853331823

/-! ## A205695.P17496399788792187016

`filter[A204906(n+1), A093719(#)]`
-/

namespace A205695.P17496399788792187016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204906 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A093719 (f1 j).toNat = 1) n)

end

end A205695.P17496399788792187016

/-! ## A205695.P11097126744146245526

`filter[A204906(n+1), A173857(#)]`
-/

namespace A205695.P11097126744146245526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204906 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A173857 (f1 j).toNat = 1) n)

end

end A205695.P11097126744146245526

/-! ## A205695.P16246890261654230540

`filter[A204906(n+1), A329680(#)]`
-/

namespace A205695.P16246890261654230540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204906 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A329680 (f1 j).toNat = 1) n)

end

end A205695.P16246890261654230540

/-! ## A205695.P5412151594947467180

`filter[A204898(n+1), A079978(#)]`
-/

namespace A205695.P5412151594947467180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204898 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A079978 (f1 j).toNat = 1) n)

end

end A205695.P5412151594947467180

/-!
# A205696: (prime(k)-prime(j))/6, where the pairs (k,j) are given by A205691 and A205692.

The programs for A205696, there is no canonical definition to state claims against.
-/

/-! ## A205696.P18036751661112206163

`A205695(n+1)/6`
-/

namespace A205696.P18036751661112206163
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A205695 (n + 1) : ℚ) / 6

end

end A205696.P18036751661112206163

/-! ## A205696.P5561972577062928962

`A008615(A205695(n+1))`
-/

namespace A205696.P5561972577062928962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (A205695 (n + 1)).toNat

end

end A205696.P5561972577062928962

/-! ## A205696.P12302098376564960069

`A008612(A205695(n+1)+1)`
-/

namespace A205696.P12302098376564960069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008612 (A205695 (n + 1) + 1).toNat

end

end A205696.P12302098376564960069

/-! ## A205696.P9001010446963326753

`A117910(A205695(n+1)-1)`
-/

namespace A205696.P9001010446963326753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117910 (A205695 (n + 1) - 1).toNat

end

end A205696.P9001010446963326753

/-! ## A205696.P3924883394732946207

`A060789(lcm(2, A205695(n+1)))`
-/

namespace A205696.P3924883394732946207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060789 (Int.lcm 2 (A205695 (n + 1)))

end

end A205696.P3924883394732946207

/-! ## A205696.P3471813250231089259

`A204890(A205690(n+1))/6`
-/

namespace A205696.P3471813250231089259
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A204890 (A205690 (n + 1)).toNat : ℚ) / 6

end

end A205696.P3471813250231089259

/-!
# A205697: Positions of multiples of 7 in A204890 (differences of primes).

The programs for A205697, the canonical program `A205697.P9126172670200338830` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A205697 has offset 1).

The definition of A205697 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1589 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A205697.P9126172670200338830

`lt[A204890(n+1)%7, 1]+1`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A205697

/-- `lt[A204890(n+1)%7, 1]+1` -/
def P9126172670200338830.Spec : Prop :=
  ∀ n, (P9126172670200338830.a n : ℤ) = A205697 (n + 1)

theorem P9126172670200338830.correct : P9126172670200338830.Spec := by
  intro n
  simp only [A205697, Nat.add_sub_cancel]

end A205697

/-!
# A205698: Numbers k for which 7 divides prime(k)-prime(j) for some j<k; each k occurs once for each such j.

The programs for A205698, there is no canonical definition to state claims against.
-/

/-! ## A205698.P7129619501349394479

`A000720(A205700(n+1))`
-/

namespace A205698.P7129619501349394479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A205700 (n + 1)).toNat

end

end A205698.P7129619501349394479

/-! ## A205698.P2894361755074257871

`A036234(A205700(n+1)-1)`
-/

namespace A205698.P2894361755074257871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036234 (A205700 (n + 1) - 1).toNat

end

end A205698.P2894361755074257871

/-! ## A205698.P11607878665869335069

`A204892(A205700(n+1)-2)`
-/

namespace A205698.P11607878665869335069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204892 (A205700 (n + 1) - 2).toNat

end

end A205698.P11607878665869335069

/-! ## A205698.P2576678950231012691

`A003963(2*A205700(n+1))`
-/

namespace A205698.P2576678950231012691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (2 * A205700 (n + 1)).toNat

end

end A205698.P2576678950231012691

/-! ## A205698.P13590570601467579392

`A003963(or(1, A205700(n+1)))`
-/

namespace A205698.P13590570601467579392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (Int.lor 1 (A205700 (n + 1))).toNat

end

end A205698.P13590570601467579392

/-! ## A205698.P10031481722691615721

`A284114(2*A205700(n+1)-A205700(n+1))`
-/

namespace A205698.P10031481722691615721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284114 (2 * A205700 (n + 1) - A205700 (n + 1)).toNat

end

end A205698.P10031481722691615721

/-! ## A205698.P5925829026735246813

`A351120(A205697(n+1))`
-/

namespace A205698.P5925829026735246813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351120 (A205697 (n + 1)).toNat

end

end A205698.P5925829026735246813

/-! ## A205698.P14978195504366202991

`A000720(A205702(n+1)+A205701(n+1))`
-/

namespace A205698.P14978195504366202991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A205702 (n + 1) + A205701 (n + 1)).toNat

end

end A205698.P14978195504366202991

/-! ## A205698.P5582222854718929834

`A003963(A205702(n+1)+A205701(n+1))`
-/

namespace A205698.P5582222854718929834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (A205702 (n + 1) + A205701 (n + 1)).toNat

end

end A205698.P5582222854718929834

/-! ## A205698.P5979971782841079733

`A026233(A205702(n+1)+A205701(n+1))`
-/

namespace A205698.P5979971782841079733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026233 (A205702 (n + 1) + A205701 (n + 1)).toNat

end

end A205698.P5979971782841079733

/-!
# A205699: The number j such that 7 divides prime(k)-prime(j), where k(n)=A205698(n).

The programs for A205699, there is no canonical definition to state claims against.
-/

/-! ## A205699.P2510501873587969817

`A000720(A205700(n+1)-A205702(n+1))`
-/

namespace A205699.P2510501873587969817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A205700 (n + 1) - A205702 (n + 1)).toNat

end

end A205699.P2510501873587969817

/-! ## A205699.P3179520863063665637

`A003963(A205700(n+1)-A205702(n+1))`
-/

namespace A205699.P3179520863063665637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (A205700 (n + 1) - A205702 (n + 1)).toNat

end

end A205699.P3179520863063665637

/-! ## A205699.P10688128389088692782

`A284114(A205700(n+1)-A205702(n+1))`
-/

namespace A205699.P10688128389088692782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284114 (A205700 (n + 1) - A205702 (n + 1)).toNat

end

end A205699.P10688128389088692782

/-! ## A205699.P13933506008839968000

`A002260(A205697(n+1))`
-/

namespace A205699.P13933506008839968000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A205697 (n + 1)).toNat

end

end A205699.P13933506008839968000

/-! ## A205699.P16835350470511841659

`A205698(n+1)-A004736(A205697(n+1))`
-/

namespace A205699.P16835350470511841659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205698 (n + 1) - A004736 (A205697 (n + 1)).toNat

end

end A205699.P16835350470511841659

/-! ## A205699.P4326991807115049356

`A000720(A205701(n+1))`
-/

namespace A205699.P4326991807115049356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A205701 (n + 1)).toNat

end

end A205699.P4326991807115049356

/-! ## A205699.P8434939650373294745

`A003963(2*A205701(n+1))`
-/

namespace A205699.P8434939650373294745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (2 * A205701 (n + 1)).toNat

end

end A205699.P8434939650373294745

