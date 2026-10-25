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
import Seq.B000.C010
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C016
import Seq.B000.C019
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C008
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
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
# A208800: Number of n-bead necklaces labeled with numbers -3..3 allowing reversal, with sum zero and three times sum of squares <= n*(3)*(3+1).

The programs for A208800, there is no canonical definition to state claims against.
-/

/-! ## A208800.P5261075320931421795

`A208805(∑[n+3]+1)`
-/

namespace A208800.P5261075320931421795
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208805 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A208800.P5261075320931421795

/-! ## A208800.P69940642711742752

`record[A208805(A198464(n+1))]`
-/

namespace A208800.P69940642711742752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208805 (A198464 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A208800.P69940642711742752

/-! ## A208800.P17561191171271604696

`abs(1-A208805(A034856(n+2)))+1`
-/

namespace A208800.P17561191171271604696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A208805 (A034856 (n + 2)).toNat| + 1

end

end A208800.P17561191171271604696

/-! ## A208800.P4866799795931450305

`record[A010054(n+3)*A208805(n+1)]`
-/

namespace A208800.P4866799795931450305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (n + 3) * A208805 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A208800.P4866799795931450305

/-! ## A208800.P14132038925919722723

`record[A208805(n+1)/A038207(n+2)]`
-/

namespace A208800.P14132038925919722723
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A208805 (n + 1) : ℚ) / (A038207 (n + 2) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A208800.P14132038925919722723

/-!
# A208801: Number of n-bead necklaces labeled with numbers -4..4 allowing reversal, with sum zero and three times sum of squares <= n*(4)*(4+1).

The programs for A208801, there is no canonical definition to state claims against.
-/

/-! ## A208801.P4747004825889683415

`A208805(∑[n+4]+3)`
-/

namespace A208801.P4747004825889683415
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208805 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A208801.P4747004825889683415

/-!
# A208802: Number of n-bead necklaces labeled with numbers -5..5 allowing reversal, with sum zero and three times sum of squares <= n*(5)*(5+1).

The programs for A208802, there is no canonical definition to state claims against.
-/

/-! ## A208802.P9065875313768320329

`A208805(Δ[A264443(n)])`
-/

namespace A208802.P9065875313768320329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208805 (f1 (n + 1) - f1 n).toNat

end

end A208802.P9065875313768320329

/-! ## A208802.P3412322767516455104

`A208805(A056115(n)+11)`
-/

namespace A208802.P3412322767516455104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208805 (A056115 n + 11).toNat

end

end A208802.P3412322767516455104

/-! ## A208802.P9440368886959619551

`A208805(eq[3, A152157(n)])`
-/

namespace A208802.P9440368886959619551
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152157 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208805 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A208802.P9440368886959619551

/-! ## A208802.P13076983632162925329

`A208805(eq[4, A193592(n)])`
-/

namespace A208802.P13076983632162925329
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208805 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A208802.P13076983632162925329

/-! ## A208802.P15527175272168184963

`A208805(eq[8, A140996(n)])`
-/

namespace A208802.P15527175272168184963
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140996 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208805 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A208802.P15527175272168184963

/-!
# A208803: Number of n-bead necklaces labeled with numbers -6..6 allowing reversal, with sum zero and three times sum of squares <= n*(6)*(6+1).

The programs for A208803, there is no canonical definition to state claims against.
-/

/-! ## A208803.P4345788090889157076

`A208805(A056119(n)+16)`
-/

namespace A208803.P4345788090889157076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208805 (A056119 n + 16).toNat

end

end A208803.P4345788090889157076

/-! ## A208803.P7733702132756636607

`A208805(eq[3, A219347(n)])`
-/

namespace A208803.P7733702132756636607
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208805 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A208803.P7733702132756636607

/-! ## A208803.P7293783129471339716

`A208805(eq[5, A152157(n)])`
-/

namespace A208803.P7293783129471339716
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152157 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208805 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A208803.P7293783129471339716

/-! ## A208803.P14608326890645055236

`A208805(eq[5, A193592(n)])`
-/

namespace A208803.P14608326890645055236
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208805 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A208803.P14608326890645055236

/-! ## A208803.P65048715010985980

`A208805(eq[8, A258709(n)])`
-/

namespace A208803.P65048715010985980
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258709 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208805 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A208803.P65048715010985980

/-!
# A208804: Number of n-bead necklaces labeled with numbers -7..7 allowing reversal, with sum zero and three times sum of squares <= n*(7)*(7+1).

The programs for A208804, there is no canonical definition to state claims against.
-/

/-! ## A208804.P14896297020443060291

`A208805(A055999(n+4))`
-/

namespace A208804.P14896297020443060291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208805 (A055999 (n + 4)).toNat

end

end A208804.P14896297020443060291

/-! ## A208804.P2283379809200310141

`A208805(A056121(n)+22)`
-/

namespace A208804.P2283379809200310141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208805 (A056121 n + 22).toNat

end

end A208804.P2283379809200310141

/-! ## A208804.P17391189117898783225

`A208805(eq[4, A219347(n)])`
-/

namespace A208804.P17391189117898783225
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208805 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A208804.P17391189117898783225

/-! ## A208804.P17875595996579470830

`A208805(eq[6, A193592(n)])`
-/

namespace A208804.P17875595996579470830
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208805 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A208804.P17875595996579470830

/-! ## A208804.P1212129098582704923

`A208805(eq[7, A152157(n)])`
-/

namespace A208804.P1212129098582704923
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152157 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208805 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A208804.P1212129098582704923

/-!
# A208805: T(n,k) = number of n-bead necklaces labeled with numbers -k..k allowing reversal, with sum zero and three times sum of squares <= n*k*(k+1).

The programs for A208805, there is no canonical definition to state claims against.
-/

/-! ## A208805.P667347840816627158

`A056556(C(A335409(n+1), A025680(n+1)))`
-/

namespace A208805.P667347840816627158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056556 (Nat.choose (A335409 (n + 1)).toNat (A025680 (n + 1)).toNat)

end

end A208805.P667347840816627158

/-!
# A208806: Number of n-bead necklaces labeled with numbers -n..n not allowing reversal, with sum zero and three times sum of squares <= n^2*(n+1).

The programs for A208806, there is no canonical definition to state claims against.
-/

/-! ## A208806.P6580677086911659871

`A208814(∑[4*n]+1)`
-/

namespace A208806.P6580677086911659871
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208814 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A208806.P6580677086911659871

/-! ## A208806.P12178018449927594194

`record[A208814(A266723(n))]`
-/

namespace A208806.P12178018449927594194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208814 (A266723 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A208806.P12178018449927594194

/-! ## A208806.P15013792533895077810

`record[A208814(∑[A266722(n)])]`
-/

namespace A208806.P15013792533895077810
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266722 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208814 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A208806.P15013792533895077810

/-! ## A208806.P7960685168675874376

`record[A208814(Δ[A235355(n)])]`
-/

namespace A208806.P7960685168675874376
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235355 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208814 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A208806.P7960685168675874376

/-! ## A208806.P13094771268561010342

`or(char[2], A208814(A001844(n)))`
-/

namespace A208806.P13094771268561010342
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A208814 (A001844 n).toNat)

end

end A208806.P13094771268561010342

/-!
# A208807: Number of n-bead necklaces labeled with numbers -1..1 not allowing reversal, with sum zero and three times sum of squares <= n*(1)*(1+1).

The programs for A208807, there is no canonical definition to state claims against.
-/

/-! ## A208807.P7018006770261855573

`A208814(∑[n+1])`
-/

namespace A208807.P7018006770261855573
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208814 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A208807.P7018006770261855573

/-! ## A208807.P4821424426956333164

`A208814(A000096(n)+1)+char[17]`
-/

namespace A208807.P4821424426956333164
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  17

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208814 (A000096 n + 1).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A208807.P4821424426956333164

/-! ## A208807.P2149726285892221595

`A063435(n)*A208814(A000217(n+1))`
-/

namespace A208807.P2149726285892221595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063435 n * A208814 (A000217 (n + 1)).toNat

end

end A208807.P2149726285892221595

/-! ## A208807.P5296851289464783085

`or(A000007(n), A208814(A000217(n+1)))`
-/

namespace A208807.P5296851289464783085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A208814 (A000217 (n + 1)).toNat)

end

end A208807.P5296851289464783085

/-! ## A208807.P1399262258897146320

`A208814(A000217(n+1))%A232970(n+1)`
-/

namespace A208807.P1399262258897146320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A208814 (A000217 (n + 1)).toNat) (A232970 (n + 1))

end

end A208807.P1399262258897146320

/-!
# A208808: Number of n-bead necklaces labeled with numbers -2..2 not allowing reversal, with sum zero and three times sum of squares <= n*(2)*(2+1).

The programs for A208808, there is no canonical definition to state claims against.
-/

/-! ## A208808.P1224409807210106145

`A208814(∑[n+2])`
-/

namespace A208808.P1224409807210106145
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208814 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A208808.P1224409807210106145

/-! ## A208808.P6720111166504968219

`record[A208814(A198455(n+1))]`
-/

namespace A208808.P6720111166504968219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208814 (A198455 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A208808.P6720111166504968219

/-! ## A208808.P10949379375559366823

`A208814(A000096(n+1))+char[23]`
-/

namespace A208808.P10949379375559366823
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  23

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208814 (A000096 (n + 1)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A208808.P10949379375559366823

/-! ## A208808.P17237090920693340978

`record[gcd(A105422(n), A208814(n+1))]`
-/

namespace A208808.P17237090920693340978
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A105422 n) (A208814 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A208808.P17237090920693340978

/-! ## A208808.P10894289724358453517

`record[gcd(A208814(n+2), A300184(n))]`
-/

namespace A208808.P10894289724358453517
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A208814 (n + 2)) (A300184 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A208808.P10894289724358453517

/-!
# A208809: Number of n-bead necklaces labeled with numbers -3..3 not allowing reversal, with sum zero and three times sum of squares <= n*(3)*(3+1).

The programs for A208809, there is no canonical definition to state claims against.
-/

/-! ## A208809.P13379431306699066151

`A208814(∑[n+3]+1)`
-/

namespace A208809.P13379431306699066151
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208814 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A208809.P13379431306699066151

/-! ## A208809.P7119827953161288537

`record[A208814(A198464(n+1))]`
-/

namespace A208809.P7119827953161288537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208814 (A198464 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A208809.P7119827953161288537

/-! ## A208809.P5261524500006646976

`record[A208814(gcd(n, A105422(n)))]`
-/

namespace A208809.P5261524500006646976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208814 (Int.gcd (n : ℤ) (A105422 n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A208809.P5261524500006646976

/-! ## A208809.P9327494209730045757

`record[A208814(Δ[A054974(n+2)])]`
-/

namespace A208809.P9327494209730045757
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054974 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208814 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A208809.P9327494209730045757

/-! ## A208809.P4301558211351906495

`A208814(Δ[A008778(n)])+char[16]`
-/

namespace A208809.P4301558211351906495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208814 (f1 (n + 1) - f1 n).toNat + ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

end

end A208809.P4301558211351906495

/-!
# A208810: Number of n-bead necklaces labeled with numbers -4..4 not allowing reversal, with sum zero and three times sum of squares <= n*(4)*(4+1).

The programs for A208810, there is no canonical definition to state claims against.
-/

/-! ## A208810.P9935208338421072397

`A208814(∑[n+4]+3)`
-/

namespace A208810.P9935208338421072397
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208814 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A208810.P9935208338421072397

/-!
# A208811: Number of n-bead necklaces labeled with numbers -5..5 not allowing reversal, with sum zero and three times sum of squares <= n*(5)*(5+1).

The programs for A208811, there is no canonical definition to state claims against.
-/

/-! ## A208811.P17777548956873020042

`A208814(∑[n+5]+6)`
-/

namespace A208811.P17777548956873020042
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208814 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A208811.P17777548956873020042

/-!
# A208812: Number of n-bead necklaces labeled with numbers -6..6 not allowing reversal, with sum zero and three times sum of squares <= n*(6)*(6+1).

The programs for A208812, there is no canonical definition to state claims against.
-/

/-! ## A208812.P3973849138971629349

`A208814(A056119(n)+16)`
-/

namespace A208812.P3973849138971629349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208814 (A056119 n + 16).toNat

end

end A208812.P3973849138971629349

/-! ## A208812.P16397261000961935846

`A208814(eq[3, A219347(n)])`
-/

namespace A208812.P16397261000961935846
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208814 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A208812.P16397261000961935846

/-! ## A208812.P717380452721231454

`A208814(eq[5, A193592(n)])`
-/

namespace A208812.P717380452721231454
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208814 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A208812.P717380452721231454

/-! ## A208812.P9534731728996714103

`A208814(eq[8, A258709(n)])`
-/

namespace A208812.P9534731728996714103
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258709 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208814 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A208812.P9534731728996714103

/-! ## A208812.P774862649332189710

`A208814(A055999(n+3)+1)`
-/

namespace A208812.P774862649332189710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208814 (A055999 (n + 3) + 1).toNat

end

end A208812.P774862649332189710

/-!
# A208813: Number of n-bead necklaces labeled with numbers -7..7 not allowing reversal, with sum zero and three times sum of squares <= n*(7)*(7+1).

The programs for A208813, there is no canonical definition to state claims against.
-/

/-! ## A208813.P9312885945203175653

`record[A208814(∑[n+4])]`
-/

namespace A208813.P9312885945203175653
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208814 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A208813.P9312885945203175653

/-! ## A208813.P4061697794242257897

`A208814(A055999(n+4))`
-/

namespace A208813.P4061697794242257897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208814 (A055999 (n + 4)).toNat

end

end A208813.P4061697794242257897

/-! ## A208813.P9716454541868248651

`A208814(A134227(n+5))`
-/

namespace A208813.P9716454541868248651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208814 (A134227 (n + 5)).toNat

end

end A208813.P9716454541868248651

/-! ## A208813.P2926750772171441856

`A208814(eq[4, A219347(n)])`
-/

namespace A208813.P2926750772171441856
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208814 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A208813.P2926750772171441856

/-! ## A208813.P1248606526827278553

`A208814(eq[6, A193592(n)])`
-/

namespace A208813.P1248606526827278553
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208814 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A208813.P1248606526827278553

/-!
# A208816: G.f.: Sum_{n>=0} Product_{k=1..n} ((1+2*x)^k - 1)/((1+2*x)^k + 1).

The programs for A208816, there is no canonical definition to state claims against.
-/

/-! ## A208816.P6582705965473787409

`A008620(∑[A124382(n)-1])`
-/

namespace A208816.P6582705965473787409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124382 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A208816.P6582705965473787409

/-! ## A208816.P6788979528763408346

`A265384(A019497(n))`
-/

namespace A208816.P6788979528763408346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265384 (A019497 n).toNat

end

end A208816.P6788979528763408346

/-! ## A208816.P10380760550278754437

`A265384(A091488(n+1))`
-/

namespace A208816.P10380760550278754437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265384 (A091488 (n + 1)).toNat

end

end A208816.P10380760550278754437

/-!
# A208817: Number of n-bead necklaces labeled with numbers -n..n allowing reversal, with sum zero.

The programs for A208817, there is no canonical definition to state claims against.
-/

/-! ## A208817.P1353088890194328421

`A208825(∑[4*n]+1)`
-/

namespace A208817.P1353088890194328421
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208825 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A208817.P1353088890194328421

/-! ## A208817.P10873324057807752392

`record[A208825(A330613(n+1))]`
-/

namespace A208817.P10873324057807752392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208825 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A208817.P10873324057807752392

/-! ## A208817.P16564413468799920836

`A208825(A001844(n))+char[9]`
-/

namespace A208817.P16564413468799920836
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208825 (A001844 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A208817.P16564413468799920836

/-! ## A208817.P7132768159914969342

`record[A003982(n)*A208825(n+1)]`
-/

namespace A208817.P7132768159914969342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A208825 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A208817.P7132768159914969342

/-! ## A208817.P9384407754700546778

`record[gcd(A003987(n), A208825(n+1))]`
-/

namespace A208817.P9384407754700546778
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003987 n) (A208825 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A208817.P9384407754700546778

/-!
# A208818: Number of n-bead necklaces labeled with numbers -1..1 allowing reversal, with sum zero.

The programs for A208818, there is no canonical definition to state claims against.
-/

/-! ## A208818.P14887420027053828398

`A208825(∑[n+1])`
-/

namespace A208818.P14887420027053828398
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208825 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A208818.P14887420027053828398

/-! ## A208818.P6285926532962355643

`or(char[3], A208825(A025747(n)))`
-/

namespace A208818.P6285926532962355643
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A208825 (A025747 n).toNat)

end

end A208818.P6285926532962355643

/-! ## A208818.P16927948126788655255

`A000027(A208825(C(n+2, 2)))`
-/

namespace A208818.P16927948126788655255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A208825 (Nat.choose (n + 2) 2)).toNat

end

end A208818.P16927948126788655255

/-! ## A208818.P12988484529337937870

`A208825(A000217(n+1))+char[22]`
-/

namespace A208818.P12988484529337937870
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  22

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208825 (A000217 (n + 1)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A208818.P12988484529337937870

/-! ## A208818.P11374705106492905347

`A208825(A025747(n))%A266806(n)`
-/

namespace A208818.P11374705106492905347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A208825 (A025747 n).toNat) (A266806 n)

end

end A208818.P11374705106492905347

/-!
# A208819: Number of n-bead necklaces labeled with numbers -2..2 allowing reversal, with sum zero.

The programs for A208819, there is no canonical definition to state claims against.
-/

/-! ## A208819.P16931352335959847548

`A208825(∑[n+2])`
-/

namespace A208819.P16931352335959847548
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208825 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A208819.P16931352335959847548

/-! ## A208819.P15029504673007695460

`record[A208825(A209268(2*(n+2)))]`
-/

namespace A208819.P15029504673007695460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208825 (A209268 (2 * (n + 2))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A208819.P15029504673007695460

/-! ## A208819.P2953489513106866218

`record[gcd(A091867(n), A208825(n+1))]`
-/

namespace A208819.P2953489513106866218
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A091867 n) (A208825 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A208819.P2953489513106866218

/-! ## A208819.P12624393393883091558

`record[and(A167374(n), A208825(n+1))]`
-/

namespace A208819.P12624393393883091558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A167374 n) (A208825 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A208819.P12624393393883091558

/-! ## A208819.P6834786993271288563

`record[A208825(n+1)/A301906(n+1)]`
-/

namespace A208819.P6834786993271288563
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A208825 (n + 1) : ℚ) / (A301906 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A208819.P6834786993271288563

/-!
# A208820: Number of n-bead necklaces labeled with numbers -3..3 allowing reversal, with sum zero.

The programs for A208820, there is no canonical definition to state claims against.
-/

/-! ## A208820.P3809367155640260022

`A208825(∑[n+3]+1)`
-/

namespace A208820.P3809367155640260022
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208825 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A208820.P3809367155640260022

/-! ## A208820.P7725702639471821255

`record[A208825(gcd(n, A091867(n)))]`
-/

namespace A208820.P7725702639471821255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208825 (Int.gcd (n : ℤ) (A091867 n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A208820.P7725702639471821255

/-! ## A208820.P2087738505906910594

`A208825(Δ[A008778(n)])+char[15]`
-/

namespace A208820.P2087738505906910594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  15

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208825 (f1 (n + 1) - f1 n).toNat + ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

end

end A208820.P2087738505906910594

/-! ## A208820.P17667456311492343235

`record[A010054(n+3)*A208825(n+1)]`
-/

namespace A208820.P17667456311492343235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (n + 3) * A208825 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A208820.P17667456311492343235

/-! ## A208820.P13591808891233903781

`record[A208825(n+1)/A109974(n+2)]`
-/

namespace A208820.P13591808891233903781
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A208825 (n + 1) : ℚ) / (A109974 (n + 2) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A208820.P13591808891233903781

/-!
# A208821: Number of n-bead necklaces labeled with numbers -4..4 allowing reversal, with sum zero.

The programs for A208821, there is no canonical definition to state claims against.
-/

/-! ## A208821.P11266254083400475467

`A208825(∑[n+4]+3)`
-/

namespace A208821.P11266254083400475467
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208825 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A208821.P11266254083400475467

/-!
# A208822: Number of n-bead necklaces labeled with numbers -5..5 allowing reversal, with sum zero.

The programs for A208822, there is no canonical definition to state claims against.
-/

/-! ## A208822.P15200559879523233875

`A208825(∑[n+5]+6)`
-/

namespace A208822.P15200559879523233875
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208825 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A208822.P15200559879523233875

/-!
# A208823: Number of n-bead necklaces labeled with numbers -6..6 allowing reversal, with sum zero.

The programs for A208823, there is no canonical definition to state claims against.
-/

/-! ## A208823.P13992264021157924561

`A208825(A056119(n)+16)`
-/

namespace A208823.P13992264021157924561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208825 (A056119 n + 16).toNat

end

end A208823.P13992264021157924561

/-! ## A208823.P3312940894358830976

`A208825(eq[3, A219347(n)])`
-/

namespace A208823.P3312940894358830976
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208825 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A208823.P3312940894358830976

/-! ## A208823.P233701074157919564

`A208825(eq[5, A152157(n)])`
-/

namespace A208823.P233701074157919564
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152157 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208825 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A208823.P233701074157919564

/-! ## A208823.P9976123941515706315

`A208825(eq[5, A193592(n)])`
-/

namespace A208823.P9976123941515706315
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208825 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A208823.P9976123941515706315

/-! ## A208823.P9894546208658060979

`A208825(eq[8, A258709(n)])`
-/

namespace A208823.P9894546208658060979
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258709 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208825 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A208823.P9894546208658060979

/-!
# A208824: Number of n-bead necklaces labeled with numbers -7..7 allowing reversal, with sum zero.

The programs for A208824, there is no canonical definition to state claims against.
-/

/-! ## A208824.P1913993746709091489

`A208825(A055999(n+4))`
-/

namespace A208824.P1913993746709091489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208825 (A055999 (n + 4)).toNat

end

end A208824.P1913993746709091489

/-! ## A208824.P7182001391839154579

`A208825(A056121(n)+22)`
-/

namespace A208824.P7182001391839154579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208825 (A056121 n + 22).toNat

end

end A208824.P7182001391839154579

/-! ## A208824.P5619136848519559686

`A208825(eq[4, A219347(n)])`
-/

namespace A208824.P5619136848519559686
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208825 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A208824.P5619136848519559686

/-! ## A208824.P4592320448126456264

`A208825(eq[6, A193592(n)])`
-/

namespace A208824.P4592320448126456264
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208825 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A208824.P4592320448126456264

/-! ## A208824.P3605223145888395616

`A208825(eq[7, A152157(n)])`
-/

namespace A208824.P3605223145888395616
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152157 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208825 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A208824.P3605223145888395616

/-!
# A208825: T(n,k) is the number of n-bead necklaces labeled with numbers -k..k allowing reversal, with sum zero.

The programs for A208825, there is no canonical definition to state claims against.
-/

/-! ## A208825.P15150933805023773188

`A209344(A151764(n+1))+A001222(A144328(n+1))`
-/

namespace A208825.P15150933805023773188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209344 (A151764 (n + 1)).toNat + A001222 (A144328 (n + 1)).toNat

end

end A208825.P15150933805023773188

/-! ## A208825.P11717211068474437451

`A337788(A144328(n+1)!)+A209344(A151764(n+1))`
-/

namespace A208825.P11717211068474437451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337788 (Nat.factorial (A144328 (n + 1)).toNat) + A209344 (A151764 (n + 1)).toNat

end

end A208825.P11717211068474437451

/-! ## A208825.P15932497866842456212

`A089643((2-char[∑[n]])^(n+2))`
-/

namespace A208825.P15932497866842456212
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089643 ((2 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)) ^ (n + 2)).toNat

end

end A208825.P15932497866842456212

/-! ## A208825.P1649231947783586694

`A285189(A134417(n))`
-/

namespace A208825.P1649231947783586694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285189 (A134417 n).toNat

end

end A208825.P1649231947783586694

/-! ## A208825.P14394581439442957338

`A088519(A137594(n))+char[9]`
-/

namespace A208825.P14394581439442957338
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088519 (A137594 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A208825.P14394581439442957338

/-!
# A208826: Number of 5-bead necklaces labeled with numbers -n..n allowing reversal, with sum zero.

The programs for A208826, there is no canonical definition to state claims against.
-/

/-! ## A208826.P7672732699930034741

`A208825(A167499(n+3))`
-/

namespace A208826.P7672732699930034741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208825 (A167499 (n + 3)).toNat

end

end A208826.P7672732699930034741

/-! ## A208826.P7515786158698726012

`A208825(A155212(n)+13)`
-/

namespace A208826.P7515786158698726012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208825 (A155212 n + 13).toNat

end

end A208826.P7515786158698726012

/-! ## A208826.P12250470293266759579

`A208825(A056000(n)+15)`
-/

namespace A208826.P12250470293266759579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208825 (A056000 n + 15).toNat

end

end A208826.P12250470293266759579

/-! ## A208826.P5067197799966508300

`A208825(eq[7, A066657(n)])`
-/

namespace A208826.P5067197799966508300
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208825 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A208826.P5067197799966508300

/-! ## A208826.P13769209359491925029

`A208825(A166136(n+3)-1)`
-/

namespace A208826.P13769209359491925029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208825 (A166136 (n + 3) - 1).toNat

end

end A208826.P13769209359491925029

/-!
# A208827: Number of 6-bead necklaces labeled with numbers -n..n allowing reversal, with sum zero.

The programs for A208827, there is no canonical definition to state claims against.
-/

/-! ## A208827.P8203724220677345213

`A208825(A056115(n)+21)`
-/

namespace A208827.P8203724220677345213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208825 (A056115 n + 21).toNat

end

end A208827.P8203724220677345213

/-! ## A208827.P16418699601253634475

`A208825(A167499(n+4)+1)`
-/

namespace A208827.P16418699601253634475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208825 (A167499 (n + 4) + 1).toNat

end

end A208827.P16418699601253634475

/-! ## A208827.P9433357155844418874

`A208825(A000096(n+4)+7)`
-/

namespace A208827.P9433357155844418874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208825 (A000096 (n + 4) + 7).toNat

end

end A208827.P9433357155844418874

/-! ## A208827.P5730688220194715791

`A208825(A000217(n+5)+6)`
-/

namespace A208827.P5730688220194715791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208825 (A000217 (n + 5) + 6).toNat

end

end A208827.P5730688220194715791

/-! ## A208827.P10437336595962512914

`A208825(A046691(n+3)+10)`
-/

namespace A208827.P10437336595962512914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208825 (A046691 (n + 3) + 10).toNat

end

end A208827.P10437336595962512914

/-!
# A208828: Number of 7-bead necklaces labeled with numbers -n..n allowing reversal, with sum zero.

The programs for A208828, there is no canonical definition to state claims against.
-/

/-! ## A208828.P7870827968174014685

`A208825(A167487(n+5))`
-/

namespace A208828.P7870827968174014685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208825 (A167487 (n + 5)).toNat

end

end A208828.P7870827968174014685

/-! ## A208828.P3712368758376107916

`A208825(A302537(n)+27)`
-/

namespace A208828.P3712368758376107916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208825 (A302537 n + 27).toNat

end

end A208828.P3712368758376107916

/-! ## A208828.P17753144250051416699

`A208825(A056119(n)+28)`
-/

namespace A208828.P17753144250051416699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208825 (A056119 n + 28).toNat

end

end A208828.P17753144250051416699

/-! ## A208828.P1849116580508450197

`A208825(eq[11, A066657(n)])`
-/

namespace A208828.P1849116580508450197
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208825 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A208828.P1849116580508450197

/-! ## A208828.P7247327122186497773

`A208825(A167499(n+5)+2)`
-/

namespace A208828.P7247327122186497773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208825 (A167499 (n + 5) + 2).toNat

end

end A208828.P7247327122186497773

/-!
# A208829: G.f.: 1/(1-x) = Sum_{n>=0} a(n) * x^n / Product_{k=1..n} (1 + k*x)^2.

The programs for A208829, there is no canonical definition to state claims against.
-/

/-! ## A208829.P16617558598184387198

`A026342(A278991(n)+1)`
-/

namespace A208829.P16617558598184387198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026342 (A278991 n + 1).toNat

end

end A208829.P16617558598184387198

/-! ## A208829.P3731666712382491122

`A004001(A191801(n)+A004396(n))`
-/

namespace A208829.P3731666712382491122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004001 (A191801 n + A004396 n).toNat

end

end A208829.P3731666712382491122

/-!
# A208830: G.f.: 1/(1-x) = Sum_{n>=0} a(n) * x^n / Product_{k=1..2*n-1} (1 + k*x).

The programs for A208830, there is no canonical definition to state claims against.
-/

/-! ## A208830.P8620971591353758039

`A036694(A354045(n)-char[3])`
-/

namespace A208830.P8620971591353758039
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036694 (A354045 n - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)).toNat

end

end A208830.P8620971591353758039

/-! ## A208830.P10784132098195258964

`A132472(n)-A184955(∑[n])`
-/

namespace A208830.P10784132098195258964
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132472 n - A184955 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A208830.P10784132098195258964

/-!
# A208831: G.f.: 1/(1-x) = Sum_{n>=0} a(n) * x^n / Product_{k=1..2*n} (1 + k*x).

The programs for A208831, there is no canonical definition to state claims against.
-/

/-! ## A208831.P4481033021744432260

`∑{d}[n!, A256265(#)]`
-/

namespace A208831.P4481033021744432260
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A256265 d

end

end A208831.P4481033021744432260

/-!
# A208832: G.f.: 1/(1-x) = Sum_{n>=0} a(n) * x^n * Product_{k=1..n} (1 - k*x)/(1 + k*x).

The programs for A208832, there is no canonical definition to state claims against.
-/

/-! ## A208832.P16765883316164540639

`A056010(n)+A004724(A348804(n))`
-/

namespace A208832.P16765883316164540639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056010 n + A004724 (A348804 n).toNat

end

end A208832.P16765883316164540639

/-! ## A208832.P6941590285269030097

`A193161(n)+A002262(A247480(n))`
-/

namespace A208832.P6941590285269030097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193161 n + A002262 (A247480 n).toNat

end

end A208832.P6941590285269030097

/-!
# A208833: G.f.: 1+x = Sum_{n>=0} a(n) * x^n * Product_{k=1..n} (1 - k*x)/(1 + k*x).

The programs for A208833, there is no canonical definition to state claims against.
-/

/-! ## A208833.P14356021774702815694

`A005206(A020554(n))`
-/

namespace A208833.P14356021774702815694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005206 (A020554 n).toNat

end

end A208833.P14356021774702815694

/-! ## A208833.P11003826160033411779

`A048107(A208898(n))`
-/

namespace A208833.P11003826160033411779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048107 (A208898 n).toNat

end

end A208833.P11003826160033411779

/-!
# A208835: Number of n X n 0..1 arrays avoiding 0 0 0 and 0 0 1 horizontally and 0 1 1 and 1 1 0 vertically.

The programs for A208835, there is no canonical definition to state claims against.
-/

/-! ## A208835.P9209565488354417145

`A208840((n+1)²+n²)`
-/

namespace A208835.P9209565488354417145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208840 ((n + 1) ^ 2 + n ^ 2)

end

end A208835.P9209565488354417145

/-! ## A208835.P17957850257607060502

`record[A003982(n)*A208840(n+1)]`
-/

namespace A208835.P17957850257607060502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A208840 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A208835.P17957850257607060502

/-! ## A208835.P8342895112744217042

`record[gcd(A166040(n), A208840(n+1))]`
-/

namespace A208835.P8342895112744217042
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A166040 n) (A208840 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A208835.P8342895112744217042

/-! ## A208835.P14709157920596756469

`lcm(A054977(n), A208840(A001844(n)))`
-/

namespace A208835.P14709157920596756469
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A054977 n) (A208840 (A001844 n).toNat)

end

end A208835.P14709157920596756469

/-! ## A208835.P8791349545232854981

`A007318(∑[n])*A208840(A001844(n))`
-/

namespace A208835.P8791349545232854981
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A208840 (A001844 n).toNat

end

end A208835.P8791349545232854981

/-!
# A208836: Number of n X 4 0..1 arrays avoiding 0 0 0 and 0 0 1 horizontally and 0 1 1 and 1 1 0 vertically.

The programs for A208836, there is no canonical definition to state claims against.
-/

/-! ## A208836.P4436041714940877587

`A208103(n+1)/A208104(n+1)*A208105(n+1)`
-/

namespace A208836.P4436041714940877587
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A208103 (n + 1) : ℚ) / (A208104 (n + 1) : ℚ) * (A208105 (n + 1) : ℚ)

end

end A208836.P4436041714940877587

/-! ## A208836.P18250619061105774208

`A208103(n+1)/A208105(n+1)*A208106(n+1)`
-/

namespace A208836.P18250619061105774208
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A208103 (n + 1) : ℚ) / (A208105 (n + 1) : ℚ) * (A208106 (n + 1) : ℚ)

end

end A208836.P18250619061105774208

/-! ## A208836.P105247120258340532

`A208840(A027379(n+2))`
-/

namespace A208836.P105247120258340532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208840 (A027379 (n + 2)).toNat

end

end A208836.P105247120258340532

/-! ## A208836.P189021339862445647

`A208840(A055998(n+2))`
-/

namespace A208836.P189021339862445647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208840 (A055998 (n + 2)).toNat

end

end A208836.P189021339862445647

/-! ## A208836.P11817792667518926551

`A208840(A056000(n)+7)`
-/

namespace A208836.P11817792667518926551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208840 (A056000 n + 7).toNat

end

end A208836.P11817792667518926551

/-! ## A208836.P1840031016461402255

`A208840(A052905(n+1)+2)`
-/

namespace A208836.P1840031016461402255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208840 (A052905 (n + 1) + 2).toNat

end

end A208836.P1840031016461402255

/-! ## A208836.P1948622404655333052

`A208840(A167614(n+1)+A005408(n))`
-/

namespace A208836.P1948622404655333052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208840 (A167614 (n + 1) + A005408 n).toNat

end

end A208836.P1948622404655333052

/-! ## A208836.P9891157227710742577

`A208840(A167614(n+1)+record[A198954(n)])`
-/

namespace A208836.P9891157227710742577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198954 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208840 (A167614 (n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A208836.P9891157227710742577

/-!
# A208837: Number of nX5 0..1 arrays avoiding 0 0 0 and 0 0 1 horizontally and 0 1 1 and 1 1 0 vertically.

The programs for A208837, there is no canonical definition to state claims against.
-/

/-! ## A208837.P13574277789119041521

`A208103(n+1)/A208105(n+1)*A208107(n+1)`
-/

namespace A208837.P13574277789119041521
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A208103 (n + 1) : ℚ) / (A208105 (n + 1) : ℚ) * (A208107 (n + 1) : ℚ)

end

end A208837.P13574277789119041521

/-! ## A208837.P1335628919290023876

`A208840(A046691(n+3))`
-/

namespace A208837.P1335628919290023876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208840 (A046691 (n + 3)).toNat

end

end A208837.P1335628919290023876

/-! ## A208837.P4866842551340523539

`A208840(Δ[A023545(n+1)])`
-/

namespace A208837.P4866842551340523539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208840 (f1 (n + 1) - f1 n).toNat

end

end A208837.P4866842551340523539

/-! ## A208837.P16268632464384158109

`A208840(A052905(n+2)+1)`
-/

namespace A208837.P16268632464384158109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208840 (A052905 (n + 2) + 1).toNat

end

end A208837.P16268632464384158109

/-! ## A208837.P10559610214956717976

`A208840(A000217(n+5)-4)`
-/

namespace A208837.P10559610214956717976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208840 (A000217 (n + 5) - 4).toNat

end

end A208837.P10559610214956717976

/-!
# A208838: Number of n X 6 0..1 arrays avoiding 0 0 0 and 0 0 1 horizontally and 0 1 1 and 1 1 0 vertically.

The programs for A208838, there is no canonical definition to state claims against.
-/

/-! ## A208838.P16560874004318342900

`A208840(A027379(n+4)-2)`
-/

namespace A208838.P16560874004318342900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208840 (A027379 (n + 4) - 2).toNat

end

end A208838.P16560874004318342900

/-! ## A208838.P16288392553267946239

`A208840(A000096(n+5)-4)`
-/

namespace A208838.P16288392553267946239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208840 (A000096 (n + 5) - 4).toNat

end

end A208838.P16288392553267946239

/-! ## A208838.P4382649518943161755

`A208840(A000217(n+6)-5)`
-/

namespace A208838.P4382649518943161755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208840 (A000217 (n + 6) - 5).toNat

end

end A208838.P4382649518943161755

/-! ## A208838.P12731732960743743593

`A208840(A000124(n+6)-6)`
-/

namespace A208838.P12731732960743743593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208840 (A000124 (n + 6) - 6).toNat

end

end A208838.P12731732960743743593

/-! ## A208838.P7316487161912252309

`A208840(Δ[Δ[A006504(n+1)]])`
-/

namespace A208838.P7316487161912252309
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006504 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208840 (f1 (n + 1) - f1 n).toNat

end

end A208838.P7316487161912252309

/-!
# A208839: Number of nX7 0..1 arrays avoiding 0 0 0 and 0 0 1 horizontally and 0 1 1 and 1 1 0 vertically.

The programs for A208839, there is no canonical definition to state claims against.
-/

/-! ## A208839.P10301455940148020350

`A208840(A055999(n+4))`
-/

namespace A208839.P10301455940148020350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208840 (A055999 (n + 4)).toNat

end

end A208839.P10301455940148020350

/-! ## A208839.P7087042741914120400

`A208840(Δ[A023551(n+2)])`
-/

namespace A208839.P7087042741914120400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208840 (f1 (n + 1) - f1 n).toNat

end

end A208839.P7087042741914120400

/-! ## A208839.P7446016764848978183

`A208840(A000096(n+6)-5)`
-/

namespace A208839.P7446016764848978183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208840 (A000096 (n + 6) - 5).toNat

end

end A208839.P7446016764848978183

/-! ## A208839.P5567904534816077482

`A208840(A000217(n+7)-6)`
-/

namespace A208839.P5567904534816077482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208840 (A000217 (n + 7) - 6).toNat

end

end A208839.P5567904534816077482

/-! ## A208839.P4756271885601726670

`A208840(A000124(n+7)-7)`
-/

namespace A208839.P4756271885601726670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208840 (A000124 (n + 7) - 7).toNat

end

end A208839.P4756271885601726670

/-!
# A208840: T(n,k)=Number of nXk 0..1 arrays avoiding 0 0 0 and 0 0 1 horizontally and 0 1 1 and 1 1 0 vertically.

The programs for A208840, there is no canonical definition to state claims against.
-/

/-! ## A208840.P573522023945436028

`A208688(n+1)-A210709(A067747(n+1))`
-/

namespace A208840.P573522023945436028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208688 (n + 1) - A210709 (A067747 (n + 1)).toNat

end

end A208840.P573522023945436028

/-! ## A208840.P13165726085344003200

`A208688(n+1)-A210709(n+11)`
-/

namespace A208840.P13165726085344003200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208688 (n + 1) - A210709 (n + 11)

end

end A208840.P13165726085344003200

/-!
# A208841: Number of 4 X n 0..1 arrays avoiding 0 0 0 and 0 0 1 horizontally and 0 1 1 and 1 1 0 vertically.

The programs for A208841, the canonical program `A208841.P1912678388067617975` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A208841 has offset 1).

The definition of A208841 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 182 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A208841.P1912678388067617975

`2*a(n-1)+7*a(n-2)-6*a(n-3)` with `a(0)=9, a(1)=81, a(2)=171`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A208841

/-- `2*a(n-1)+7*a(n-2)-6*a(n-3)` -/
def P1912678388067617975.Spec : Prop :=
  ∀ n, P1912678388067617975.a n = A208841 (n + 1)

theorem P1912678388067617975.correct : P1912678388067617975.Spec := by
  intro n
  simp only [A208841, Nat.add_sub_cancel]

end A208841

/-! ## A208841.P4068272477124450884

`Δ[ogf(9/(1-2x-7x^2+6x^3))]`
-/

namespace A208841.P4068272477124450884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [9] [1, -2, -7, 6] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A208841.P4068272477124450884

namespace A208841

/-- `Δ[ogf(9/(1-2x-7x^2+6x^3))]` -/
def P4068272477124450884.Spec : Prop :=
  ∀ n, P4068272477124450884.a n = A208841 (n + 1)

end A208841

/-! ## A208841.P4465642530293986091

`A208840(A052905(n)+9)`
-/

namespace A208841.P4465642530293986091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208840 (A052905 n + 9).toNat

end

end A208841.P4465642530293986091

namespace A208841

/-- `A208840(A052905(n)+9)` -/
def P4465642530293986091.Spec : Prop :=
  ∀ n, P4465642530293986091.a n = A208841 (n + 1)

end A208841

/-! ## A208841.P10679168599591845119

`A208840(A055999(n)+10)`
-/

namespace A208841.P10679168599591845119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208840 (A055999 n + 10).toNat

end

end A208841.P10679168599591845119

namespace A208841

/-- `A208840(A055999(n)+10)` -/
def P10679168599591845119.Spec : Prop :=
  ∀ n, P10679168599591845119.a n = A208841 (n + 1)

end A208841

/-! ## A208841.P4648030868720003911

`A208840(A167614(n+2)+1)`
-/

namespace A208841.P4648030868720003911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208840 (A167614 (n + 2) + 1).toNat

end

end A208841.P4648030868720003911

namespace A208841

/-- `A208840(A167614(n+2)+1)` -/
def P4648030868720003911.Spec : Prop :=
  ∀ n, P4648030868720003911.a n = A208841 (n + 1)

end A208841

/-! ## A208841.P16841195656859249554

`A208840(A167499(n+2)-1)`
-/

namespace A208841.P16841195656859249554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208840 (A167499 (n + 2) - 1).toNat

end

end A208841.P16841195656859249554

namespace A208841

/-- `A208840(A167499(n+2)-1)` -/
def P16841195656859249554.Spec : Prop :=
  ∀ n, P16841195656859249554.a n = A208841 (n + 1)

end A208841

/-! ## A208841.P14499190574249535203

`A208840(A133263(n+3)+2)`
-/

namespace A208841.P14499190574249535203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208840 (A133263 (n + 3) + 2).toNat

end

end A208841.P14499190574249535203

namespace A208841

/-- `A208840(A133263(n+3)+2)` -/
def P14499190574249535203.Spec : Prop :=
  ∀ n, P14499190574249535203.a n = A208841 (n + 1)

end A208841

/-! ## A208841.P15571210102881883719

`A208840(A000096(n+2)+5)`
-/

namespace A208841.P15571210102881883719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208840 (A000096 (n + 2) + 5).toNat

end

end A208841.P15571210102881883719

namespace A208841

/-- `A208840(A000096(n+2)+5)` -/
def P15571210102881883719.Spec : Prop :=
  ∀ n, P15571210102881883719.a n = A208841 (n + 1)

end A208841

/-! ## A208841.P8263987369116868896

`A208840(A000217(n+3)+4)`
-/

namespace A208841.P8263987369116868896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208840 (A000217 (n + 3) + 4).toNat

end

end A208841.P8263987369116868896

namespace A208841

/-- `A208840(A000217(n+3)+4)` -/
def P8263987369116868896.Spec : Prop :=
  ∀ n, P8263987369116868896.a n = A208841 (n + 1)

end A208841

/-! ## A208841.P14780636038554669708

`A208840(A027379(n+1)+7)`
-/

namespace A208841.P14780636038554669708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208840 (A027379 (n + 1) + 7).toNat

end

end A208841.P14780636038554669708

namespace A208841

/-- `A208840(A027379(n+1)+7)` -/
def P14780636038554669708.Spec : Prop :=
  ∀ n, P14780636038554669708.a n = A208841 (n + 1)

end A208841

/-!
# A208842: Number of 5 X n 0..1 arrays avoiding 0 0 0 and 0 0 1 horizontally and 0 1 1 and 1 1 0 vertically.

The programs for A208842, the canonical program `A208842.P15916203501777869877` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A208842 has offset 1).

The definition of A208842 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 158 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A208842.P15613798083285274539

`Δ[ogf(14/(1-2x-12x^2+11x^3))]`
-/

namespace A208842.P15613798083285274539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [14] [1, -2, -12, 11] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A208842.P15613798083285274539

namespace A208842

/-- `Δ[ogf(14/(1-2x-12x^2+11x^3))]` -/
def P15613798083285274539.Spec : Prop :=
  ∀ n, P15613798083285274539.a n = A208842 (n + 1)

end A208842

/-! ## A208842.P15916203501777869877

`2*a(n-1)+12*a(n-2)-11*a(n-3)` with `a(0)=14, a(1)=196, a(2)=406`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A208842

/-- `2*a(n-1)+12*a(n-2)-11*a(n-3)` -/
def P15916203501777869877.Spec : Prop :=
  ∀ n, P15916203501777869877.a n = A208842 (n + 1)

theorem P15916203501777869877.correct : P15916203501777869877.Spec := by
  intro n
  simp only [A208842, Nat.add_sub_cancel]

end A208842

/-! ## A208842.P2391617724199923720

`A208840(A167499(n+3))`
-/

namespace A208842.P2391617724199923720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208840 (A167499 (n + 3)).toNat

end

end A208842.P2391617724199923720

namespace A208842

/-- `A208840(A167499(n+3))` -/
def P2391617724199923720.Spec : Prop :=
  ∀ n, P2391617724199923720.a n = A208842 (n + 1)

end A208842

/-! ## A208842.P9641600400057597361

`A208840(A056000(n)+15)`
-/

namespace A208842.P9641600400057597361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208840 (A056000 n + 15).toNat

end

end A208842.P9641600400057597361

namespace A208842

/-- `A208840(A056000(n)+15)` -/
def P9641600400057597361.Spec : Prop :=
  ∀ n, P9641600400057597361.a n = A208842 (n + 1)

end A208842

/-! ## A208842.P1740035991758538670

`A208840(A133263(n+4)+3)`
-/

namespace A208842.P1740035991758538670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208840 (A133263 (n + 4) + 3).toNat

end

end A208842.P1740035991758538670

namespace A208842

/-- `A208840(A133263(n+4)+3)` -/
def P1740035991758538670.Spec : Prop :=
  ∀ n, P1740035991758538670.a n = A208842 (n + 1)

end A208842

/-! ## A208842.P6137496750604887139

`A208840(A000124(n+4)+4)`
-/

namespace A208842.P6137496750604887139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208840 (A000124 (n + 4) + 4).toNat

end

end A208842.P6137496750604887139

namespace A208842

/-- `A208840(A000124(n+4)+4)` -/
def P6137496750604887139.Spec : Prop :=
  ∀ n, P6137496750604887139.a n = A208842 (n + 1)

end A208842

/-! ## A208842.P1112662947049973327

`A208840(A000217(n+4)+5)`
-/

namespace A208842.P1112662947049973327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208840 (A000217 (n + 4) + 5).toNat

end

end A208842.P1112662947049973327

namespace A208842

/-- `A208840(A000217(n+4)+5)` -/
def P1112662947049973327.Spec : Prop :=
  ∀ n, P1112662947049973327.a n = A208842 (n + 1)

end A208842

/-! ## A208842.P12670311920159286690

`A208840(A052905(n+3)-A005408(n))`
-/

namespace A208842.P12670311920159286690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208840 (A052905 (n + 3) - A005408 n).toNat

end

end A208842.P12670311920159286690

namespace A208842

/-- `A208840(A052905(n+3)-A005408(n))` -/
def P12670311920159286690.Spec : Prop :=
  ∀ n, P12670311920159286690.a n = A208842 (n + 1)

end A208842

/-!
# A208843: Number of 6 X n 0..1 arrays avoiding 0 0 0 and 0 0 1 horizontally and 0 1 1 and 1 1 0 vertically.

The programs for A208843, the canonical program `A208843.P3308331037182928465` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A208843 has offset 1).

The definition of A208843 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 138 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A208843.P3308331037182928465

`2*a(n-1)+20*a(n-2)-19*a(n-3)` with `a(0)=22, a(1)=484, a(2)=990`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A208843

/-- `2*a(n-1)+20*a(n-2)-19*a(n-3)` -/
def P3308331037182928465.Spec : Prop :=
  ∀ n, P3308331037182928465.a n = A208843 (n + 1)

theorem P3308331037182928465.correct : P3308331037182928465.Spec := by
  intro n
  simp only [A208843, Nat.add_sub_cancel]

end A208843

/-! ## A208843.P14942055480618600312

`A208840(A167499(n+4)+1)`
-/

namespace A208843.P14942055480618600312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208840 (A167499 (n + 4) + 1).toNat

end

end A208843.P14942055480618600312

namespace A208843

/-- `A208840(A167499(n+4)+1)` -/
def P14942055480618600312.Spec : Prop :=
  ∀ n, P14942055480618600312.a n = A208843 (n + 1)

end A208843

/-! ## A208843.P2353851117563412976

`A208840(A000217(n+5)+6)`
-/

namespace A208843.P2353851117563412976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208840 (A000217 (n + 5) + 6).toNat

end

end A208843.P2353851117563412976

namespace A208843

/-- `A208840(A000217(n+5)+6)` -/
def P2353851117563412976.Spec : Prop :=
  ∀ n, P2353851117563412976.a n = A208843 (n + 1)

end A208843

/-! ## A208843.P8229337241831402225

`A208840(A046691(n+3)+10)`
-/

namespace A208843.P8229337241831402225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208840 (A046691 (n + 3) + 10).toNat

end

end A208843.P8229337241831402225

namespace A208843

/-- `A208840(A046691(n+3)+10)` -/
def P8229337241831402225.Spec : Prop :=
  ∀ n, P8229337241831402225.a n = A208843 (n + 1)

end A208843

/-! ## A208843.P3880145937886360582

`A208840(A005449(n+7)-A028884(n+5))`
-/

namespace A208843.P3880145937886360582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208840 (A005449 (n + 7) - A028884 (n + 5)).toNat

end

end A208843.P3880145937886360582

namespace A208843

/-- `A208840(A005449(n+7)-A028884(n+5))` -/
def P3880145937886360582.Spec : Prop :=
  ∀ n, P3880145937886360582.a n = A208843 (n + 1)

end A208843

/-!
# A208844: Number of 7 X n 0..1 arrays avoiding 0 0 0 and 0 0 1 horizontally and 0 1 1 and 1 1 0 vertically.

The programs for A208844, there is no canonical definition to state claims against.
-/

/-! ## A208844.P12925768546255945316

`A208840(A167499(n+5)+2)`
-/

namespace A208844.P12925768546255945316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208840 (A167499 (n + 5) + 2).toNat

end

end A208844.P12925768546255945316

/-! ## A208844.P8838113603027357219

`A208840(A167614(n+5)+4)`
-/

namespace A208844.P8838113603027357219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208840 (A167614 (n + 5) + 4).toNat

end

end A208844.P8838113603027357219

/-! ## A208844.P12790666588115963732

`A208840(A000124(n+6)+6)`
-/

namespace A208844.P12790666588115963732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208840 (A000124 (n + 6) + 6).toNat

end

end A208844.P12790666588115963732

/-! ## A208844.P4660883691351775359

`A208840(A000217(n+6)+7)`
-/

namespace A208844.P4660883691351775359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208840 (A000217 (n + 6) + 7).toNat

end

end A208844.P4660883691351775359

/-! ## A208844.P778317895475263691

`A208840(A052905(n+3)+12)`
-/

namespace A208844.P778317895475263691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208840 (A052905 (n + 3) + 12).toNat

end

end A208844.P778317895475263691

/-!
# A208845: Expansion of f(x)^2 in powers of x where f() is a Ramanujan theta function.

The programs for A208845, there is no canonical definition to state claims against.
-/

/-! ## A208845.P7537815569777976800

`(-1)^n*A002107(n)`
-/

namespace A208845.P7537815569777976800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A002107 n

end

end A208845.P7537815569777976800

/-! ## A208845.P12337127263822523416

`A002107(n)*A033999(n)`
-/

namespace A208845.P12337127263822523416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002107 n * A033999 n

end

end A208845.P12337127263822523416

/-! ## A208845.P2513017994824793158

`A002107(n)*A010815(and(1, -n))`
-/

namespace A208845.P2513017994824793158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002107 n * A010815 (Int.land 1 (-(n : ℤ))).toNat

end

end A208845.P2513017994824793158

/-! ## A208845.P16115493368471942599

`A002107(n)*A030203(and(1, -n))`
-/

namespace A208845.P16115493368471942599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002107 n * A030203 (Int.land 1 (-(n : ℤ))).toNat

end

end A208845.P16115493368471942599

/-! ## A208845.P12369406747382249081

`A002107(n)/(-A010892(and(1, -n)))^n`
-/

namespace A208845.P12369406747382249081
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002107 n : ℚ) / ((-A010892 (Int.land 1 (-(n : ℤ))).toNat) ^ n : ℚ)

end

end A208845.P12369406747382249081

/-! ## A208845.P6370063996381402852

`A002107(n)*A010815(Δ[A008619(n)])`
-/

namespace A208845.P6370063996381402852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002107 n * A010815 (f1 (n + 1) - f1 n).toNat

end

end A208845.P6370063996381402852

/-! ## A208845.P10448700543716508586

`(A014681(n+1)-(n+1))*A293388(A034856(n+1))`
-/

namespace A208845.P10448700543716508586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A014681 (n + 1) - (n + 1 : ℤ)) * A293388 (A034856 (n + 1)).toNat

end

end A208845.P10448700543716508586

/-!
# A208848: Number of non-Josephus subsets of n people.

The programs for A208848, there is no canonical definition to state claims against.
-/

/-! ## A208848.P5487403987639332004

`2^n-A208849(n)`
-/

namespace A208848.P5487403987639332004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - A208849 n

end

end A208848.P5487403987639332004

/-! ## A208848.P5945000845252716191

`A000079(n)%A208849(n)`
-/

namespace A208848.P5945000845252716191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000079 n) (A208849 n)

end

end A208848.P5945000845252716191

/-! ## A208848.P10789690286629546060

`A155559(n)%A208849(n)`
-/

namespace A208848.P10789690286629546060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A155559 n) (A208849 n)

end

end A208848.P10789690286629546060

/-! ## A208848.P15536777418478557438

`A171449(n)%A208849(n)`
-/

namespace A208848.P15536777418478557438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A171449 n) (A208849 n)

end

end A208848.P15536777418478557438

/-! ## A208848.P11414361572406673520

`A171559(n)%A208849(n)`
-/

namespace A208848.P11414361572406673520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A171559 n) (A208849 n)

end

end A208848.P11414361572406673520

/-!
# A208849: Number of Josephus subsets of n people.

The programs for A208849, there is no canonical definition to state claims against.
-/

/-! ## A208849.P14236365335156925452

`2^n-A208848(n)`
-/

namespace A208849.P14236365335156925452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - A208848 n

end

end A208849.P14236365335156925452

/-! ## A208849.P4576491421354981525

`A000079(n)-A080227(A362490(2*n))`
-/

namespace A208849.P4576491421354981525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n - A080227 (A362490 (2 * n)).toNat

end

end A208849.P4576491421354981525

/-! ## A208849.P13424390474474110142

`A008621(A289102(n+1))`
-/

namespace A208849.P13424390474474110142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (A289102 (n + 1)).toNat

end

end A208849.P13424390474474110142

/-! ## A208849.P15131974875870459691

`2^n-A358777(A249635(n+1))`
-/

namespace A208849.P15131974875870459691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - A358777 (A249635 (n + 1)).toNat

end

end A208849.P15131974875870459691

/-! ## A208849.P9015116735434639388

`2^n-A006927(A292189(2*n))`
-/

namespace A208849.P9015116735434639388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - A006927 (A292189 (2 * n)).toNat

end

end A208849.P9015116735434639388

/-!
# A208850: Expansion of phi(q^2) / phi(-q) in powers of q where phi() is a Ramanujan theta function.

The programs for A208850, there is no canonical definition to state claims against.
-/

/-! ## A208850.P17348381155681126020

`(A057427(n)+1)*A185083(n)`
-/

namespace A208850.P17348381155681126020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A057427 n + 1) * A185083 n

end

end A208850.P17348381155681126020

/-! ## A208850.P11297488063142347081

`(1-A057428(n))*A185083(n)`
-/

namespace A208850.P11297488063142347081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A057428 n) * A185083 n

end

end A208850.P11297488063142347081

/-! ## A208850.P17491263334567718037

`abs(A210065(n))`
-/

namespace A208850.P17491263334567718037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A210065 n|

end

end A208850.P17491263334567718037

/-! ## A208850.P2977973761341133317

`A033999(n)*A210065(n)`
-/

namespace A208850.P2977973761341133317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A210065 n

end

end A208850.P2977973761341133317

/-! ## A208850.P15522383194004783897

`gcd(A000038(n), A210065(n))`
-/

namespace A208850.P15522383194004783897
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A210065 n)

end

end A208850.P15522383194004783897

/-! ## A208850.P3742520469399839769

`lcm(A000034(n), A210065(n))`
-/

namespace A208850.P3742520469399839769
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000034 n) (A210065 n)

end

end A208850.P3742520469399839769

/-! ## A208850.P4649874950631562614

`A080015(n)/A210030(n)*A210065(n)`
-/

namespace A208850.P4649874950631562614
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A080015 n : ℚ) / (A210030 n : ℚ) * (A210065 n : ℚ)

end

end A208850.P4649874950631562614

/-! ## A208850.P11333857996203382414

`A080054(2*n)`
-/

namespace A208850.P11333857996203382414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080054 (2 * n)

end

end A208850.P11333857996203382414

/-! ## A208850.P18087413754137033786

`record[A108494(n)]`
-/

namespace A208850.P18087413754137033786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108494 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A208850.P18087413754137033786

/-! ## A208850.P2367036377025225996

`A108494(2*n)`
-/

namespace A208850.P2367036377025225996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108494 (2 * n)

end

end A208850.P2367036377025225996

/-! ## A208850.P1899447328444626968

`abs(A080015(2*n))`
-/

namespace A208850.P1899447328444626968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A080015 (2 * n)|

end

end A208850.P1899447328444626968

/-! ## A208850.P5882105307610780749

`abs(A210030(2*n))`
-/

namespace A208850.P5882105307610780749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A210030 (2 * n)|

end

end A208850.P5882105307610780749

/-! ## A208850.P4614980362494700374

`A033999(n)*A080015(2*n)`
-/

namespace A208850.P4614980362494700374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A080015 (2 * n)

end

end A208850.P4614980362494700374

/-! ## A208850.P1747208190523144743

`A033999(n)*A210030(2*n)`
-/

namespace A208850.P1747208190523144743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A210030 (2 * n)

end

end A208850.P1747208190523144743

/-! ## A208850.P133414897365010646

`A185083(n)*A280560(2*n)`
-/

namespace A208850.P133414897365010646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185083 n * A280560 (2 * n)

end

end A208850.P133414897365010646

/-! ## A208850.P5672834021189051694

`A245432(2*n)*A280560(n)`
-/

namespace A208850.P5672834021189051694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245432 (2 * n) * A280560 n

end

end A208850.P5672834021189051694

/-! ## A208850.P14587986833134010987

`gcd(A130706(n), A210030(2*n))`
-/

namespace A208850.P14587986833134010987
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A130706 n) (A210030 (2 * n))

end

end A208850.P14587986833134010987

/-! ## A208850.P7763043655027095330

`lcm(A001468(n), A210030(2*n))`
-/

namespace A208850.P7763043655027095330
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A001468 n) (A210030 (2 * n))

end

end A208850.P7763043655027095330

/-!
# A208851: Partitions of 2*n + 1 into parts not congruent to 0, +-4, +-6, +-10, 16 (mod 32).

The programs for A208851, there is no canonical definition to state claims against.
-/

/-! ## A208851.P9864052532041065483

`A185083(n+1)`
-/

namespace A208851.P9864052532041065483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185083 (n + 1)

end

end A208851.P9864052532041065483

/-! ## A208851.P4704635736384577285

`A208850(n+1)/2`
-/

namespace A208851.P4704635736384577285
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A208850 (n + 1) : ℚ) / 2

end

end A208851.P4704635736384577285

/-! ## A208851.P6650451421351156623

`abs(A210065(n+1)/2)`
-/

namespace A208851.P6650451421351156623
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A210065 (n + 1) : ℚ) / 2|

end

end A208851.P6650451421351156623

/-! ## A208851.P6660394235364063917

`A210065(n+1)/A280560(n+1)`
-/

namespace A208851.P6660394235364063917
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A210065 (n + 1) : ℚ) / (A280560 (n + 1) : ℚ)

end

end A208851.P6660394235364063917

/-! ## A208851.P8032856814756735712

`A033999(n+1)/2*A210065(n+1)`
-/

namespace A208851.P8032856814756735712
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033999 (n + 1) : ℚ) / 2 * (A210065 (n + 1) : ℚ)

end

end A208851.P8032856814756735712

/-! ## A208851.P3360102160636437048

`gcd(A000038(n+1), A210065(n+1))/2`
-/

namespace A208851.P3360102160636437048
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.gcd (A000038 (n + 1)) (A210065 (n + 1)) : ℚ) / 2

end

end A208851.P3360102160636437048

/-! ## A208851.P5325181691926029489

`A208856(Δ[n²])`
-/

namespace A208851.P5325181691926029489
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208856 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A208851.P5325181691926029489

/-! ## A208851.P4290398005732535365

`abs(A224216(2*(n+1)))`
-/

namespace A208851.P4290398005732535365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A224216 (2 * (n + 1))|

end

end A208851.P4290398005732535365

/-! ## A208851.P14549943739919216448

`A080054(2*(n+1))/2`
-/

namespace A208851.P14549943739919216448
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A080054 (2 * (n + 1)) : ℚ) / 2

end

end A208851.P14549943739919216448

/-! ## A208851.P577289384515103899

`gcd(A000038(n), A224216(2*(n+1)))`
-/

namespace A208851.P577289384515103899
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A224216 (2 * (n + 1)))

end

end A208851.P577289384515103899

/-! ## A208851.P9073087925811750462

`lcm(A014709(n), A224216(2*(n+1)))`
-/

namespace A208851.P9073087925811750462
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A014709 n) (A224216 (2 * (n + 1)))

end

end A208851.P9073087925811750462

/-! ## A208851.P2816060817662335396

`A208850(n+1)-A208856(2*n+1)`
-/

namespace A208851.P2816060817662335396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208850 (n + 1) - A208856 (2 * n + 1)

end

end A208851.P2816060817662335396

/-! ## A208851.P17633331354823959073

`A080054(2*(n+1))-A208856(2*n+1)`
-/

namespace A208851.P17633331354823959073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080054 (2 * (n + 1)) - A208856 (2 * n + 1)

end

end A208851.P17633331354823959073

/-! ## A208851.P5596702276440761247

`A087960(2*n+1)*A224216(2*(n+1))`
-/

namespace A208851.P5596702276440761247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087960 (2 * n + 1) * A224216 (2 * (n + 1))

end

end A208851.P5596702276440761247

/-! ## A208851.P9043001819961122671

`A115671(2*(n+1))`
-/

namespace A208851.P9043001819961122671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115671 (2 * (n + 1))

end

end A208851.P9043001819961122671

/-! ## A208851.P5914689705452958118

`A108494(2*(n+1))/2`
-/

namespace A208851.P5914689705452958118
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A108494 (2 * (n + 1)) : ℚ) / 2

end

end A208851.P5914689705452958118

/-! ## A208851.P4821830225255683420

`record[A115671(n)/A135517(n)]`
-/

namespace A208851.P4821830225255683420
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A115671 n : ℚ) / (A135517 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A208851.P4821830225255683420

/-! ## A208851.P8701348918328012371

`record[Δ[abs(A214639(n))]]`
-/

namespace A208851.P8701348918328012371
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A214639 n|

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A208851.P8701348918328012371

/-! ## A208851.P15902419523436411531

`abs(A214639(4*(n+1)))`
-/

namespace A208851.P15902419523436411531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A214639 (4 * (n + 1))|

end

end A208851.P15902419523436411531

/-!
# A208856: Partitions of n into parts not congruent to 0, +-4, +-6, +-10, 16 (mod 32).

The programs for A208856, there is no canonical definition to state claims against.
-/

/-! ## A208856.P7032093817807033473

`A115671(n+1)`
-/

namespace A208856.P7032093817807033473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115671 (n + 1)

end

end A208856.P7032093817807033473

/-! ## A208856.P12522618963607494778

`abs(A224216(n+1))`
-/

namespace A208856.P12522618963607494778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A224216 (n + 1)|

end

end A208856.P12522618963607494778

/-! ## A208856.P12916574199982768440

`A080054(n+1)/2`
-/

namespace A208856.P12916574199982768440
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A080054 (n + 1) : ℚ) / 2

end

end A208856.P12916574199982768440

/-! ## A208856.P15185011963263464102

`A087960(n)*A224216(n+1)`
-/

namespace A208856.P15185011963263464102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087960 n * A224216 (n + 1)

end

end A208856.P15185011963263464102

/-! ## A208856.P13145775349279429889

`gcd(A000038(n), A224216(n+1))`
-/

namespace A208856.P13145775349279429889
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A224216 (n + 1))

end

end A208856.P13145775349279429889

/-! ## A208856.P1123968311617728392

`lcm(A014709(n), A224216(n+1))`
-/

namespace A208856.P1123968311617728392
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A014709 n) (A224216 (n + 1))

end

end A208856.P1123968311617728392

/-! ## A208856.P14504542653855602283

`abs(A245432(n+1))`
-/

namespace A208856.P14504542653855602283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A245432 (n + 1)|

end

end A208856.P14504542653855602283

/-! ## A208856.P1813270765682966781

`abs(A080015(n+1)/2)`
-/

namespace A208856.P1813270765682966781
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A080015 (n + 1) : ℚ) / 2|

end

end A208856.P1813270765682966781

/-! ## A208856.P16589496138799090771

`abs(A108494(n+1)/2)`
-/

namespace A208856.P16589496138799090771
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A108494 (n + 1) : ℚ) / 2|

end

end A208856.P16589496138799090771

/-! ## A208856.P4330069133040119900

`abs(A210030(n+1)/2)`
-/

namespace A208856.P4330069133040119900
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A210030 (n + 1) : ℚ) / 2|

end

end A208856.P4330069133040119900

/-! ## A208856.P4029608595699736190

`lcm(A020985(n), A245432(n+1))`
-/

namespace A208856.P4029608595699736190
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A245432 (n + 1))

end

end A208856.P4029608595699736190

/-! ## A208856.P13824363883898937146

`A057077(n+1)*A245432(n+1)`
-/

namespace A208856.P13824363883898937146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 (n + 1) * A245432 (n + 1)

end

end A208856.P13824363883898937146

/-! ## A208856.P15612458719622726122

`A108494(n+1)/A280560(n+1)`
-/

namespace A208856.P15612458719622726122
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A108494 (n + 1) : ℚ) / (A280560 (n + 1) : ℚ)

end

end A208856.P15612458719622726122

/-! ## A208856.P8275428697971465492

`A057077(n+1)/2*A080015(n+1)`
-/

namespace A208856.P8275428697971465492
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A057077 (n + 1) : ℚ) / 2 * (A080015 (n + 1) : ℚ)

end

end A208856.P8275428697971465492

/-! ## A208856.P5230656364152232675

`A033999(n+1)/2*A108494(n+1)`
-/

namespace A208856.P5230656364152232675
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033999 (n + 1) : ℚ) / 2 * (A108494 (n + 1) : ℚ)

end

end A208856.P5230656364152232675

/-! ## A208856.P8793784849235780276

`A087960(n+1)/2*A210030(n+1)`
-/

namespace A208856.P8793784849235780276
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A087960 (n + 1) : ℚ) / 2 * (A210030 (n + 1) : ℚ)

end

end A208856.P8793784849235780276

/-! ## A208856.P15455790191724365496

`gcd(A000038(n+1), A080015(n+1))/2`
-/

namespace A208856.P15455790191724365496
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.gcd (A000038 (n + 1)) (A080015 (n + 1)) : ℚ) / 2

end

end A208856.P15455790191724365496

/-! ## A208856.P15338602197253988752

`gcd(A130706(n+1), A210030(n+1))/2`
-/

namespace A208856.P15338602197253988752
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.gcd (A130706 (n + 1)) (A210030 (n + 1)) : ℚ) / 2

end

end A208856.P15338602197253988752

/-! ## A208856.P17667420511064494085

`A087960(2*n+1)/2*A108494(n+1)`
-/

namespace A208856.P17667420511064494085
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A087960 (2 * n + 1) : ℚ) / 2 * (A108494 (n + 1) : ℚ)

end

end A208856.P17667420511064494085

/-! ## A208856.P10112759939066610659

`abs(A214639(A103517(n)))`
-/

namespace A208856.P10112759939066610659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A214639 (A103517 n).toNat|

end

end A208856.P10112759939066610659

/-!
# A208857: Number of n X n 0..3 arrays with new values 0..3 introduced in row major order and no element equal to more than one of its immediate leftward or upward or left-upward diagonal neighbors.

The programs for A208857, there is no canonical definition to state claims against.
-/

/-! ## A208857.P16734078569849066232

`A208864((n+1)²+n²)`
-/

namespace A208857.P16734078569849066232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208864 ((n + 1) ^ 2 + n ^ 2)

end

end A208857.P16734078569849066232

/-!
# A208858: Number of n X 2 0..3 arrays with new values 0..3 introduced in row major order and no element equal to more than one of its immediate leftward or upward or left-upward diagonal neighbors.

The programs for A208858, there is no canonical definition to state claims against.
-/

/-! ## A208858.P10282449659615454059

`A208864(∑[n+1]+2)`
-/

namespace A208858.P10282449659615454059
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208864 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A208858.P10282449659615454059

/-! ## A208858.P7151585382251095396

`record[root(A208864(n+2), A208910(n+1))]`
-/

namespace A208858.P7151585382251095396
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A208864 (n + 2) : ℝ) ^ (1 / (A208910 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A208858.P7151585382251095396

/-! ## A208858.P11917733575587222079

`record[root(A208864(n+2), A208916(n+1))]`
-/

namespace A208858.P11917733575587222079
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A208864 (n + 2) : ℝ) ^ (1 / (A208916 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A208858.P11917733575587222079

/-! ## A208858.P17428778216466549234

`A059841(2*n)*A208864(A133263(n+1))`
-/

namespace A208858.P17428778216466549234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (2 * n) * A208864 (A133263 (n + 1)).toNat

end

end A208858.P17428778216466549234

/-!
# A208859: Number of n X 3 0..3 arrays with new values 0..3 introduced in row major order and no element equal to more than one of its immediate leftward or upward or left-upward diagonal neighbors.

The programs for A208859, there is no canonical definition to state claims against.
-/

/-! ## A208859.P1658893085194395805

`A208864(∑[n+2]+4)`
-/

namespace A208859.P1658893085194395805
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208864 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A208859.P1658893085194395805

/-! ## A208859.P9493791242064931138

`lcm((-1)^n, A208864(A167614(n+1)))`
-/

namespace A208859.P9493791242064931138
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (A208864 (A167614 (n + 1)).toNat)

end

end A208859.P9493791242064931138

/-! ## A208859.P7451660371238771780

`A208864(A167614(n+1))%A332149(n)`
-/

namespace A208859.P7451660371238771780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A208864 (A167614 (n + 1)).toNat) (A332149 n)

end

end A208859.P7451660371238771780

/-! ## A208859.P17575473793789977976

`or(A000007(n), A208864(A167614(n+1)))`
-/

namespace A208859.P17575473793789977976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A208864 (A167614 (n + 1)).toNat)

end

end A208859.P17575473793789977976

/-! ## A208859.P11286823668217620582

`A208864(A167614(n+1))+A070141(n+1)`
-/

namespace A208859.P11286823668217620582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208864 (A167614 (n + 1)).toNat + A070141 (n + 1)

end

end A208859.P11286823668217620582

/-!
# A208860: Number of nX4 0..3 arrays with new values 0..3 introduced in row major order and no element equal to more than one of its immediate leftward or upward or left-upward diagonal neighbors.

The programs for A208860, there is no canonical definition to state claims against.
-/

/-! ## A208860.P15073480229595228686

`A208864(A374004(n+1))`
-/

namespace A208860.P15073480229595228686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208864 (A374004 (n + 1)).toNat

end

end A208860.P15073480229595228686

/-! ## A208860.P15500580908077352748

`A208864(A052905(n)+9)`
-/

namespace A208860.P15500580908077352748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208864 (A052905 n + 9).toNat

end

end A208860.P15500580908077352748

/-! ## A208860.P4095182413845645970

`A208864(A055999(n)+10)`
-/

namespace A208860.P4095182413845645970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208864 (A055999 n + 10).toNat

end

end A208860.P4095182413845645970

/-! ## A208860.P3622618901031252905

`A208864(A167614(n+2)+1)`
-/

namespace A208860.P3622618901031252905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208864 (A167614 (n + 2) + 1).toNat

end

end A208860.P3622618901031252905

/-! ## A208860.P4771233325387288795

`A208864(Δ[A023545(n+1)-n²])`
-/

namespace A208860.P4771233325387288795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1) - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208864 (f1 (n + 1) - f1 n).toNat

end

end A208860.P4771233325387288795

/-!
# A208861: Number of nX5 0..3 arrays with new values 0..3 introduced in row major order and no element equal to more than one of its immediate leftward or upward or left-upward diagonal neighbors.

The programs for A208861, there is no canonical definition to state claims against.
-/

/-! ## A208861.P15785087353870329296

`A208864(A374005(n+1))`
-/

namespace A208861.P15785087353870329296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208864 (A374005 (n + 1)).toNat

end

end A208861.P15785087353870329296

/-! ## A208861.P7123869210718509471

`A208864(Δ[A023545(n+1)])`
-/

namespace A208861.P7123869210718509471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208864 (f1 (n + 1) - f1 n).toNat

end

end A208861.P7123869210718509471

/-! ## A208861.P8758146731648534781

`A208864(A055999(n+2)+2)`
-/

namespace A208861.P8758146731648534781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208864 (A055999 (n + 2) + 2).toNat

end

end A208861.P8758146731648534781

/-!
# A208862: Number of nX6 0..3 arrays with new values 0..3 introduced in row major order and no element equal to more than one of its immediate leftward or upward or left-upward diagonal neighbors.

The programs for A208862, there is no canonical definition to state claims against.
-/

/-! ## A208862.P848981088749810009

`A208864(A374007(n+1))`
-/

namespace A208862.P848981088749810009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208864 (A374007 (n + 1)).toNat

end

end A208862.P848981088749810009

/-! ## A208862.P5132291664473612152

`A208864(A000217(n+5)+6)`
-/

namespace A208862.P5132291664473612152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208864 (A000217 (n + 5) + 6).toNat

end

end A208862.P5132291664473612152

/-! ## A208862.P17926142484113495082

`A208864(Δ[A023545(n+2)]-1)`
-/

namespace A208862.P17926142484113495082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208864 (f1 (n + 1) - f1 n - 1).toNat

end

end A208862.P17926142484113495082

/-! ## A208862.P10336716249899181216

`A208864(Δ[A026054(n+3)]+1)`
-/

namespace A208862.P10336716249899181216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026054 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208864 (f1 (n + 1) - f1 n + 1).toNat

end

end A208862.P10336716249899181216

/-!
# A208863: 

The programs for A208863, there is no canonical definition to state claims against.
-/

/-! ## A208863.P164216499950198042

`A208864(A000217(n+6)+n+1)`
-/

namespace A208863.P164216499950198042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208864 (A000217 (n + 6) + (n + 1 : ℤ)).toNat

end

end A208863.P164216499950198042

/-!
# A208864: T(n,k)=Number of nXk 0..3 arrays with new values 0..3 introduced in row major order and no element equal to more than one of its immediate leftward or upward or left-upward diagonal neighbors.

The programs for A208864, there is no canonical definition to state claims against.
-/

/-! ## A208864.P8759344238408500754

`or(A223062(n+1), A239143(A196590(n+1)))`
-/

namespace A208864.P8759344238408500754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A223062 (n + 1)) (A239143 (A196590 (n + 1)).toNat)

end

end A208864.P8759344238408500754

/-! ## A208864.P15780378530954594017

`or(A223062(n+1), A239143(A196802(n+1)))`
-/

namespace A208864.P15780378530954594017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A223062 (n + 1)) (A239143 (A196802 (n + 1)).toNat)

end

end A208864.P15780378530954594017

/-! ## A208864.P2778652027181818533

`or(A223062(n+1), A239143(A197047(n+1)))`
-/

namespace A208864.P2778652027181818533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A223062 (n + 1)) (A239143 (A197047 (n + 1)).toNat)

end

end A208864.P2778652027181818533

/-! ## A208864.P8188181505932197920

`or(A239143(A196590(n+1)), A273964(n+1))`
-/

namespace A208864.P8188181505932197920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A239143 (A196590 (n + 1)).toNat) (A273964 (n + 1))

end

end A208864.P8188181505932197920

/-! ## A208864.P8161687470164627320

`or(A239143(A196590(n+1)), A273968(n+1))`
-/

namespace A208864.P8161687470164627320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A239143 (A196590 (n + 1)).toNat) (A273968 (n + 1))

end

end A208864.P8161687470164627320

/-!
# A208865: Number of n X n 0..3 arrays with new values 0..3 introduced in row major order and no element equal to more than one of its immediate leftward or upward or right-upward antidiagonal neighbors.

The programs for A208865, there is no canonical definition to state claims against.
-/

/-! ## A208865.P3008736751075727279

`A208872((n+1)²+n²)`
-/

namespace A208865.P3008736751075727279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208872 ((n + 1) ^ 2 + n ^ 2)

end

end A208865.P3008736751075727279

/-!
# A208866: Number of n X 2 0..3 arrays with new values 0..3 introduced in row major order and no element equal to more than one of its immediate leftward or upward or right-upward antidiagonal neighbors.

The programs for A208866, there is no canonical definition to state claims against.
-/

/-! ## A208866.P17465315792263257884

`A204678(2*(n+1))`
-/

namespace A208866.P17465315792263257884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204678 (2 * (n + 1))

end

end A208866.P17465315792263257884

/-! ## A208866.P16786323775490766580

`record[A204678(2*A126759(n))]`
-/

namespace A208866.P16786323775490766580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204678 (2 * A126759 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A208866.P16786323775490766580

/-!
# A208867: Number of n X 3 0..3 arrays with new values 0..3 introduced in row major order and no element equal to more than one of its immediate leftward or upward or right-upward antidiagonal neighbors.

The programs for A208867, there is no canonical definition to state claims against.
-/

/-! ## A208867.P11522502072045322527

`A208872(∑[n+3]+1)`
-/

namespace A208867.P11522502072045322527
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208872 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A208867.P11522502072045322527

/-! ## A208867.P5692265251884854262

`A020985(n)²*A208872(Δ[A008778(n)])`
-/

namespace A208867.P5692265251884854262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020985 n ^ 2 * A208872 (f1 (n + 1) - f1 n).toNat

end

end A208867.P5692265251884854262

/-! ## A208867.P1179117554932841239

`A000034(2*n)*A208872(Δ[A008778(n)])`
-/

namespace A208867.P1179117554932841239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (2 * n) * A208872 (f1 (n + 1) - f1 n).toNat

end

end A208867.P1179117554932841239

/-! ## A208867.P12807122476048869963

`A208872(A052905(n)+3)%A208860(n+1)`
-/

namespace A208867.P12807122476048869963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A208872 (A052905 n + 3).toNat) (A208860 (n + 1))

end

end A208867.P12807122476048869963

/-! ## A208867.P6679680862817846952

`A208872(A052905(n)+3)+A028326(n)%2`
-/

namespace A208867.P6679680862817846952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208872 (A052905 n + 3).toNat + Int.tmod (A028326 n) 2

end

end A208867.P6679680862817846952

/-!
# A208868: Number of nX4 0..3 arrays with new values 0..3 introduced in row major order and no element equal to more than one of its immediate leftward or upward or right-upward antidiagonal neighbors.

The programs for A208868, there is no canonical definition to state claims against.
-/

/-! ## A208868.P10317432726846533028

`A208872(A141214(n+1))`
-/

namespace A208868.P10317432726846533028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208872 (A141214 (n + 1)).toNat

end

end A208868.P10317432726846533028

/-! ## A208868.P8167016615684556075

`A208872(A056000(n)+7)`
-/

namespace A208868.P8167016615684556075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208872 (A056000 n + 7).toNat

end

end A208868.P8167016615684556075

/-! ## A208868.P5167866508905881211

`A208872(eq[3, A193592(n)])`
-/

namespace A208868.P5167866508905881211
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208872 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A208868.P5167866508905881211

/-! ## A208868.P2131555961802715581

`A208872(Δ[A006416(n+2)])`
-/

namespace A208868.P2131555961802715581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006416 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208872 (f1 (n + 1) - f1 n).toNat

end

end A208868.P2131555961802715581

/-! ## A208868.P1711467799963327128

`A208872(A052905(n+1)+2)`
-/

namespace A208868.P1711467799963327128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208872 (A052905 (n + 1) + 2).toNat

end

end A208868.P1711467799963327128

/-!
# A208869: Number of nX5 0..3 arrays with new values 0..3 introduced in row major order and no element equal to more than one of its immediate leftward or upward or right-upward antidiagonal neighbors.

The programs for A208869, there is no canonical definition to state claims against.
-/

/-! ## A208869.P18015501356082323477

`A208872(eq[4, A193592(n)])`
-/

namespace A208869.P18015501356082323477
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208872 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A208869.P18015501356082323477

/-! ## A208869.P4974618826216026379

`A208872(Δ[A023545(n+1)])`
-/

namespace A208869.P4974618826216026379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208872 (f1 (n + 1) - f1 n).toNat

end

end A208869.P4974618826216026379

/-! ## A208869.P193179986337508800

`A208872(eq[6, A185782(n+1)])`
-/

namespace A208869.P193179986337508800
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208872 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A208869.P193179986337508800

/-!
# A208870: Number of nX6 0..3 arrays with new values 0..3 introduced in row major order and no element equal to more than one of its immediate leftward or upward or right-upward antidiagonal neighbors.

The programs for A208870, there is no canonical definition to state claims against.
-/

/-! ## A208870.P8336639232608470330

`A208872(eq[5, A193592(n)])`
-/

namespace A208870.P8336639232608470330
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208872 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A208870.P8336639232608470330

/-! ## A208870.P15146868612689546916

`A208872(eq[6, A200370(n+1)])`
-/

namespace A208870.P15146868612689546916
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208872 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A208870.P15146868612689546916

/-!
# A208871: 

The programs for A208871, there is no canonical definition to state claims against.
-/

/-! ## A208871.P15167278588877922305

`A208872(eq[6, A193592(n)])`
-/

namespace A208871.P15167278588877922305
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208872 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A208871.P15167278588877922305

/-! ## A208871.P16531070779765314863

`A208872(eq[7, A200370(n+1)])`
-/

namespace A208871.P16531070779765314863
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208872 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A208871.P16531070779765314863

/-! ## A208871.P14608221389853811392

`A208872(eq[10, A185782(n+1)])`
-/

namespace A208871.P14608221389853811392
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208872 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A208871.P14608221389853811392

/-!
# A208872: T(n,k)=Number of nXk 0..3 arrays with new values 0..3 introduced in row major order and no element equal to more than one of its immediate leftward or upward or right-upward antidiagonal neighbors.

The programs for A208872, there is no canonical definition to state claims against.
-/

/-! ## A208872.P13680228018331073991

`and(A027184(A273612(n)), A208581(n+1))`
-/

namespace A208872.P13680228018331073991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A027184 (A273612 n).toNat) (A208581 (n + 1))

end

end A208872.P13680228018331073991

/-! ## A208872.P18071312863623348949

`A208258(n+1)+A194701(A035038(n))`
-/

namespace A208872.P18071312863623348949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208258 (n + 1) + A194701 (A035038 n).toNat

end

end A208872.P18071312863623348949

/-! ## A208872.P13084854978225144747

`A001068(A240629(n+1)^A178239(n))`
-/

namespace A208872.P13084854978225144747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001068 (SequenceMachineLib.roundAway ((A240629 (n + 1) : ℚ) ^ (A178239 n : ℤ))).toNat

end

end A208872.P13084854978225144747

/-! ## A208872.P12100677131525476862

`A208175(n+1)-A093354(A241328(n+1))`
-/

namespace A208872.P12100677131525476862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208175 (n + 1) - A093354 (A241328 (n + 1)).toNat

end

end A208872.P12100677131525476862

/-!
# A208873: Number of 2 X n 0..3 arrays with new values 0..3 introduced in row major order and no element equal to more than one of its immediate leftward or upward or right-upward antidiagonal neighbors.

The programs for A208873, there is no canonical definition to state claims against.
-/

/-! ## A208873.P15640122852883362555

`A208872(∑[n+1]+2)`
-/

namespace A208873.P15640122852883362555
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208872 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A208873.P15640122852883362555

/-! ## A208873.P3587049995482682520

`lcm(2, A208872(A133263(n+1)))`
-/

namespace A208873.P3587049995482682520
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A208872 (A133263 (n + 1)).toNat)

end

end A208873.P3587049995482682520

/-! ## A208873.P3375434089564809290

`record[A010054(n)*A208872(n+2)]`
-/

namespace A208873.P3375434089564809290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A208872 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A208873.P3375434089564809290

/-! ## A208873.P7169478764158609986

`record[gcd(A208872(n+2), A244130(n))]`
-/

namespace A208873.P7169478764158609986
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A208872 (n + 2)) (A244130 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A208873.P7169478764158609986

/-! ## A208873.P14716782812317894062

`record[A208872(A133263(∑{e}[n+1, #]+1))]`
-/

namespace A208873.P14716782812317894062
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208872 (A133263 (∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A208873.P14716782812317894062

/-!
# A208874: Number of 3Xn 0..3 arrays with new values 0..3 introduced in row major order and no element equal to more than one of its immediate leftward or upward or right-upward antidiagonal neighbors.

The programs for A208874, there is no canonical definition to state claims against.
-/

/-! ## A208874.P15051949071454906345

`A208872(∑[n+2]+4)`
-/

namespace A208874.P15051949071454906345
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208872 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A208874.P15051949071454906345

/-! ## A208874.P18011367630376114282

`A208872(A167614(n+1))+A185238(n)`
-/

namespace A208874.P18011367630376114282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208872 (A167614 (n + 1)).toNat + A185238 n

end

end A208874.P18011367630376114282

/-! ## A208874.P4108889920656057825

`A208872(A167614(n+1))+A185284(n)`
-/

namespace A208874.P4108889920656057825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208872 (A167614 (n + 1)).toNat + A185284 n

end

end A208874.P4108889920656057825

/-! ## A208874.P11460133498403454069

`A208872(A167614(n+1))%A332149(n)`
-/

namespace A208874.P11460133498403454069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A208872 (A167614 (n + 1)).toNat) (A332149 n)

end

end A208874.P11460133498403454069

/-! ## A208874.P6724103069097439257

`lcm(A033999(n), A208872(A167614(n+1)))`
-/

namespace A208874.P6724103069097439257
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A208872 (A167614 (n + 1)).toNat)

end

end A208874.P6724103069097439257

/-!
# A208875: Number of 4Xn 0..3 arrays with new values 0..3 introduced in row major order and no element equal to more than one of its immediate leftward or upward or right-upward antidiagonal neighbors.

The programs for A208875, there is no canonical definition to state claims against.
-/

/-! ## A208875.P5288673906842279256

`A208872(A141214(n)+7)`
-/

namespace A208875.P5288673906842279256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208872 (A141214 n + 7).toNat

end

end A208875.P5288673906842279256

/-! ## A208875.P480400820506109628

`A208872(A052905(n)+9)`
-/

namespace A208875.P480400820506109628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208872 (A052905 n + 9).toNat

end

end A208875.P480400820506109628

/-! ## A208875.P10505164078586068005

`A208872(A055999(n)+10)`
-/

namespace A208875.P10505164078586068005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208872 (A055999 n + 10).toNat

end

end A208875.P10505164078586068005

/-! ## A208875.P17439712070407234741

`A208872(Δ[A008778(n)]+6)`
-/

namespace A208875.P17439712070407234741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208872 (f1 (n + 1) - f1 n + 6).toNat

end

end A208875.P17439712070407234741

/-! ## A208875.P9275863183845453150

`A208872(A167614(n+2)+1)`
-/

namespace A208875.P9275863183845453150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208872 (A167614 (n + 2) + 1).toNat

end

end A208875.P9275863183845453150

/-!
# A208876: Number of 5Xn 0..3 arrays with new values 0..3 introduced in row major order and no element equal to more than one of its immediate leftward or upward or right-upward antidiagonal neighbors.

The programs for A208876, there is no canonical definition to state claims against.
-/

/-! ## A208876.P17673765422381189258

`A208872(A167499(n+3))`
-/

namespace A208876.P17673765422381189258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208872 (A167499 (n + 3)).toNat

end

end A208876.P17673765422381189258

/-!
# A208877: Number of 6Xn 0..3 arrays with new values 0..3 introduced in row major order and no element equal to more than one of its immediate leftward or upward or right-upward antidiagonal neighbors.

The programs for A208877, there is no canonical definition to state claims against.
-/

/-! ## A208877.P6493784152105358473

`A208872(eq[7, A131818(n+1)])`
-/

namespace A208877.P6493784152105358473
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208872 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A208877.P6493784152105358473

/-! ## A208877.P13826872013902988745

`A208872(Δ[A023545(n+1)]+10)`
-/

namespace A208877.P13826872013902988745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208872 (f1 (n + 1) - f1 n + 10).toNat

end

end A208877.P13826872013902988745

/-!
# A208878: 

The programs for A208878, there is no canonical definition to state claims against.
-/

/-! ## A208878.P5492278409701951149

`A208872(A000096(n+5)+8)`
-/

namespace A208878.P5492278409701951149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208872 (A000096 (n + 5) + 8).toNat

end

end A208878.P5492278409701951149

/-! ## A208878.P2434242186970902936

`A208872(A055998(n+4)+10)`
-/

namespace A208878.P2434242186970902936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208872 (A055998 (n + 4) + 10).toNat

end

end A208878.P2434242186970902936

/-!
# A208880: Number of words either empty or beginning with the first letter of the cyclic n-ary alphabet, where each letter of the alphabet occurs twice and letters of neighboring word positions are equal or neighbors in the alphabet.

The programs for A208880, there is no canonical definition to state claims against.
-/

/-! ## A208880.P10173875703661476759

`A208879(∑[n+2]+3)`
-/

namespace A208880.P10173875703661476759
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208879 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A208880.P10173875703661476759

/-! ## A208880.P10859242720701347760

`C(A208879(A340266(n+1)), floor(n^(1/3)))`
-/

namespace A208880.P10859242720701347760
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A208879 (A340266 (n + 1)).toNat).toNat ⌊(n : ℝ) ^ ((1 : ℚ) / 3 : ℝ)⌋.toNat

end

end A208880.P10859242720701347760

/-! ## A208880.P6318031575348931440

`A208879(A340266(n+1))+A054899(n)`
-/

namespace A208880.P6318031575348931440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208879 (A340266 (n + 1)).toNat + A054899 n

end

end A208880.P6318031575348931440

/-! ## A208880.P5779085302438096309

`A208879(A340266(n+1))+A059995(n)`
-/

namespace A208880.P5779085302438096309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208879 (A340266 (n + 1)).toNat + A059995 n

end

end A208880.P5779085302438096309

/-!
# A208881: Number of words either empty or beginning with the first letter of the ternary alphabet, where each letter of the alphabet occurs n times.

The programs for A208881, there is no canonical definition to state claims against.
-/

/-! ## A208881.P1149374763622327325

`ceil(C(2*n, n)*C(3*n, n)/3)`
-/

namespace A208881.P1149374763622327325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.choose (2 * n) n * Nat.choose (3 * n) n : ℚ) / 3⌉

end

end A208881.P1149374763622327325

/-! ## A208881.P4481237780990333125

`ceil(A006480(n)/3)`
-/

namespace A208881.P4481237780990333125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A006480 n : ℚ) / 3⌉

end

end A208881.P4481237780990333125

/-! ## A208881.P15359918037308611174

`A199127(A008486(n))`
-/

namespace A208881.P15359918037308611174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199127 (A008486 n).toNat

end

end A208881.P15359918037308611174

/-! ## A208881.P2148762151446813742

`A199127(A022429(n))`
-/

namespace A208881.P2148762151446813742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199127 (A022429 n).toNat

end

end A208881.P2148762151446813742

/-! ## A208881.P14300660924023855433

`A199127(A022430(n))`
-/

namespace A208881.P14300660924023855433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199127 (A022430 n).toNat

end

end A208881.P14300660924023855433

/-! ## A208881.P17153745319722030279

`A199127(A022433(n))`
-/

namespace A208881.P17153745319722030279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199127 (A022433 n).toNat

end

end A208881.P17153745319722030279

/-! ## A208881.P2931220629565907728

`A199127(A298474(n+1))`
-/

namespace A208881.P2931220629565907728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199127 (A298474 (n + 1)).toNat

end

end A208881.P2931220629565907728

/-! ## A208881.P2182369568887710354

`A022916(A008486(n)-1)`
-/

namespace A208881.P2182369568887710354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022916 (A008486 n - 1).toNat

end

end A208881.P2182369568887710354

/-! ## A208881.P10400673079562783007

`A022916(A004273(n)+n)`
-/

namespace A208881.P10400673079562783007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022916 (A004273 n + (n : ℤ)).toNat

end

end A208881.P10400673079562783007

/-! ## A208881.P2819890726729301128

`A088218(n)*A165817(n)`
-/

namespace A208881.P2819890726729301128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088218 n * A165817 n

end

end A208881.P2819890726729301128

/-!
# A208882: Number of representations of square of prime(n) as a^2 + b^2 + c^2 with 0 < a <= b <= c.

The programs for A208882, the canonical program `A208882.P1883116852521567448` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A208882 has offset 1).

The definition of A208882 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1229 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A208882.P15503920655547338570

`A181786(p?[comp[n²]])`
-/

namespace A208882.P15503920655547338570
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181786 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A208882.P15503920655547338570

namespace A208882

/-- `A181786(p?[comp[n²]])` -/
def P15503920655547338570.Spec : Prop :=
  ∀ n, P15503920655547338570.a n = A208882 (n + 1)

end A208882

/-! ## A208882.P1883116852521567448

`abs(floor(A073579(n+1)/8))`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A208882

/-- `abs(floor(A073579(n+1)/8))` -/
def P1883116852521567448.Spec : Prop :=
  ∀ n, P1883116852521567448.a n = A208882 (n + 1)

theorem P1883116852521567448.correct : P1883116852521567448.Spec := by
  intro n
  simp only [A208882, Nat.add_sub_cancel]

end A208882

/-! ## A208882.P3406571982358995074

`floor((xor(2, A000040(n+1)+1)+2)/8)`
-/

namespace A208882.P3406571982358995074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Int.xor 2 (A000040 (n + 1) + 1) + 2 : ℚ) / 8⌋

end

end A208882.P3406571982358995074

namespace A208882

/-- `floor((xor(2, A000040(n+1)+1)+2)/8)` -/
def P3406571982358995074.Spec : Prop :=
  ∀ n, P3406571982358995074.a n = A208882 (n + 1)

end A208882

/-! ## A208882.P14273423450938451050

`A181786(Δ[A007504(n)])`
-/

namespace A208882.P14273423450938451050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181786 (f1 (n + 1) - f1 n).toNat

end

end A208882.P14273423450938451050

namespace A208882

/-- `A181786(Δ[A007504(n)])` -/
def P14273423450938451050.Spec : Prop :=
  ∀ n, P14273423450938451050.a n = A208882 (n + 1)

end A208882

/-! ## A208882.P17907775264040630083

`A026922(A111333(n+1))`
-/

namespace A208882.P17907775264040630083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026922 (A111333 (n + 1)).toNat

end

end A208882.P17907775264040630083

namespace A208882

/-- `A026922(A111333(n+1))` -/
def P17907775264040630083.Spec : Prop :=
  ∀ n, P17907775264040630083.a n = A208882 (n + 1)

end A208882

/-! ## A208882.P4362690726768898264

`A181786(A000040(n+1))`
-/

namespace A208882.P4362690726768898264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181786 (A000040 (n + 1)).toNat

end

end A208882.P4362690726768898264

namespace A208882

/-- `A181786(A000040(n+1))` -/
def P4362690726768898264.Spec : Prop :=
  ∀ n, P4362690726768898264.a n = A208882 (n + 1)

end A208882

/-! ## A208882.P7394387462243542729

`A181786(A006005(n+1))`
-/

namespace A208882.P7394387462243542729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181786 (A006005 (n + 1)).toNat

end

end A208882.P7394387462243542729

namespace A208882

/-- `A181786(A006005(n+1))` -/
def P7394387462243542729.Spec : Prop :=
  ∀ n, P7394387462243542729.a n = A208882 (n + 1)

end A208882

/-! ## A208882.P8420980986077495821

`A097266(A102781(n+1))`
-/

namespace A208882.P8420980986077495821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097266 (A102781 (n + 1)).toNat

end

end A208882.P8420980986077495821

namespace A208882

/-- `A097266(A102781(n+1))` -/
def P8420980986077495821.Spec : Prop :=
  ∀ n, P8420980986077495821.a n = A208882 (n + 1)

end A208882

/-! ## A208882.P15125818617086356476

`A181786(A063884(n+1))`
-/

namespace A208882.P15125818617086356476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181786 (A063884 (n + 1)).toNat

end

end A208882.P15125818617086356476

namespace A208882

/-- `A181786(A063884(n+1))` -/
def P15125818617086356476.Spec : Prop :=
  ∀ n, P15125818617086356476.a n = A208882 (n + 1)

end A208882

/-! ## A208882.P6839715621516141867

`A181786(A161847(n+1))`
-/

namespace A208882.P6839715621516141867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181786 (A161847 (n + 1)).toNat

end

end A208882.P6839715621516141867

namespace A208882

/-- `A181786(A161847(n+1))` -/
def P6839715621516141867.Spec : Prop :=
  ∀ n, P6839715621516141867.a n = A208882 (n + 1)

end A208882

/-! ## A208882.P1087634364426808708

`A181786(record[A006530(n+2)])`
-/

namespace A208882.P1087634364426808708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181786 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A208882.P1087634364426808708

namespace A208882

/-- `A181786(record[A006530(n+2)])` -/
def P1087634364426808708.Spec : Prop :=
  ∀ n, P1087634364426808708.a n = A208882 (n + 1)

end A208882

/-! ## A208882.P7702367254570133099

`A181786(record[A020639(n+2)])`
-/

namespace A208882.P7702367254570133099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181786 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A208882.P7702367254570133099

namespace A208882

/-- `A181786(record[A020639(n+2)])` -/
def P7702367254570133099.Spec : Prop :=
  ∀ n, P7702367254570133099.a n = A208882 (n + 1)

end A208882

/-! ## A208882.P8233436869613573773

`A181786(A100484(n+1)/2)`
-/

namespace A208882.P8233436869613573773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181786 (SequenceMachineLib.roundAway ((A100484 (n + 1) : ℚ) / 2)).toNat

end

end A208882.P8233436869613573773

namespace A208882

/-- `A181786(A100484(n+1)/2)` -/
def P8233436869613573773.Spec : Prop :=
  ∀ n, P8233436869613573773.a n = A208882 (n + 1)

end A208882

/-! ## A208882.P17773803234778761189

`A181786(A001747(n+2)/2)`
-/

namespace A208882.P17773803234778761189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181786 (SequenceMachineLib.roundAway ((A001747 (n + 2) : ℚ) / 2)).toNat

end

end A208882.P17773803234778761189

namespace A208882

/-- `A181786(A001747(n+2)/2)` -/
def P17773803234778761189.Spec : Prop :=
  ∀ n, P17773803234778761189.a n = A208882 (n + 1)

end A208882

/-! ## A208882.P3883798934097491193

`A026922(record[A006530(2*n+1)-n])`
-/

namespace A208882.P3883798934097491193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (2 * n + 1) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026922 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A208882.P3883798934097491193

namespace A208882

/-- `A026922(record[A006530(2*n+1)-n])` -/
def P3883798934097491193.Spec : Prop :=
  ∀ n, P3883798934097491193.a n = A208882 (n + 1)

end A208882

/-! ## A208882.P14470764444069624361

`A026922(record[A020639(2*n+1)-n])`
-/

namespace A208882.P14470764444069624361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (2 * n + 1) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026922 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A208882.P14470764444069624361

namespace A208882

/-- `A026922(record[A020639(2*n+1)-n])` -/
def P14470764444069624361.Spec : Prop :=
  ∀ n, P14470764444069624361.a n = A208882 (n + 1)

end A208882

/-! ## A208882.P4891320484675738313

`A181786(A100484(n+1))`
-/

namespace A208882.P4891320484675738313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181786 (A100484 (n + 1)).toNat

end

end A208882.P4891320484675738313

namespace A208882

/-- `A181786(A100484(n+1))` -/
def P4891320484675738313.Spec : Prop :=
  ∀ n, P4891320484675738313.a n = A208882 (n + 1)

end A208882

/-! ## A208882.P1518813518316340702

`A181786(A001747(n+2))`
-/

namespace A208882.P1518813518316340702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181786 (A001747 (n + 2)).toNat

end

end A208882.P1518813518316340702

namespace A208882

/-- `A181786(A001747(n+2))` -/
def P1518813518316340702.Spec : Prop :=
  ∀ n, P1518813518316340702.a n = A208882 (n + 1)

end A208882

/-! ## A208882.P8900786388439479013

`A181786(A001749(n+1)/2)`
-/

namespace A208882.P8900786388439479013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181786 (SequenceMachineLib.roundAway ((A001749 (n + 1) : ℚ) / 2)).toNat

end

end A208882.P8900786388439479013

namespace A208882

/-- `A181786(A001749(n+1)/2)` -/
def P8900786388439479013.Spec : Prop :=
  ∀ n, P8900786388439479013.a n = A208882 (n + 1)

end A208882

/-! ## A208882.P4755389027619885935

`A181786(A062876(n+1)/2)`
-/

namespace A208882.P4755389027619885935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181786 (SequenceMachineLib.roundAway ((A062876 (n + 1) : ℚ) / 2)).toNat

end

end A208882.P4755389027619885935

namespace A208882

/-- `A181786(A062876(n+1)/2)` -/
def P4755389027619885935.Spec : Prop :=
  ∀ n, P4755389027619885935.a n = A208882 (n + 1)

end A208882

/-!
# A208884: a(n) = (a(n-1) + n)/2^k where 2^k is the largest power of 2 dividing a(n-1) + n, for n>1 with a(1)=1.

The programs for A208884, the canonical program `A208884.P12628725473157153876` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A208884 has offset 1).

The definition of A208884 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A208884.P12628725473157153876

`(a(n-1)+n+1)/2^val(a(n-1)+n+1, 2)` with `a(0)=1, a(1)=3, a(2)=3, a(3)=7, a(4)=3, a(5)=9, a(6)=1`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A208884

/-- `(a(n-1)+n+1)/2^val(a(n-1)+n+1, 2)` -/
def P12628725473157153876.Spec : Prop :=
  ∀ n, P12628725473157153876.a n = (A208884 (n + 1) : ℚ)

end A208884

/-! ## A208884.P2591176299174833096

`A000265(a(n-1)+1+n)` with `a(0)=1`
-/

namespace A208884.P2591176299174833096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000265 (a (n - 1) + 1 + (n : ℤ)).toNat

end

end A208884.P2591176299174833096

namespace A208884

/-- `A000265(a(n-1)+1+n)` -/
def P2591176299174833096.Spec : Prop :=
  ∀ n, P2591176299174833096.a n = A208884 (n + 1)

end A208884

/-! ## A208884.P7758149002942704388

`A153733(a(n-1)+n)+1` with `a(0)=1`
-/

namespace A208884.P7758149002942704388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A153733 (a (n - 1) + (n : ℤ)).toNat + 1

end

end A208884.P7758149002942704388

namespace A208884

/-- `A153733(a(n-1)+n)+1` -/
def P7758149002942704388.Spec : Prop :=
  ∀ n, P7758149002942704388.a n = A208884 (n + 1)

end A208884

/-! ## A208884.P3582069887189208484

`A166466(a(n-1)+1+n)/3` with `a(0)=1`
-/

namespace A208884.P3582069887189208484
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (A166466 (SequenceMachineLib.roundAway (a (n - 1) + 1 + (n : ℚ))).toNat : ℚ) / 3

end

end A208884.P3582069887189208484

namespace A208884

/-- `A166466(a(n-1)+1+n)/3` -/
def P3582069887189208484.Spec : Prop :=
  ∀ n, P3582069887189208484.a n = (A208884 (n + 1) : ℚ)

end A208884

/-! ## A208884.P15331777193713040144

`2*A003602(a(n-1)+n+1)-1` with `a(0)=1`
-/

namespace A208884.P15331777193713040144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * A003602 (a (n - 1) + (n : ℤ) + 1).toNat - 1

end

end A208884.P15331777193713040144

namespace A208884

/-- `2*A003602(a(n-1)+n+1)-1` -/
def P15331777193713040144.Spec : Prop :=
  ∀ n, P15331777193713040144.a n = A208884 (n + 1)

end A208884

/-! ## A208884.P7167322497274439333

`A030101(A030101(a(n-1)+n+1))` with `a(0)=1`
-/

namespace A208884.P7167322497274439333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A030101 (A030101 (a (n - 1) + (n + 1 : ℤ)).toNat).toNat

end

end A208884.P7167322497274439333

namespace A208884

/-- `A030101(A030101(a(n-1)+n+1))` -/
def P7167322497274439333.Spec : Prop :=
  ∀ n, P7167322497274439333.a n = A208884 (n + 1)

end A208884

/-! ## A208884.P14560829975320641930

`A003961(A064989(a(n-1)+n+1))` with `a(0)=1`
-/

namespace A208884.P14560829975320641930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A003961 (A064989 (a (n - 1) + (n : ℤ) + 1).toNat).toNat

end

end A208884.P14560829975320641930

namespace A208884

/-- `A003961(A064989(a(n-1)+n+1))` -/
def P14560829975320641930.Spec : Prop :=
  ∀ n, P14560829975320641930.a n = A208884 (n + 1)

end A208884

/-! ## A208884.P10115663432045889016

`A056539(A036044(a(n-1)+n))+1` with `a(0)=1`
-/

namespace A208884.P10115663432045889016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A056539 (A036044 (a (n - 1) + (n : ℤ)).toNat).toNat + 1

end

end A208884.P10115663432045889016

namespace A208884

/-- `A056539(A036044(a(n-1)+n))+1` -/
def P10115663432045889016.Spec : Prop :=
  ∀ n, P10115663432045889016.a n = A208884 (n + 1)

end A208884

/-! ## A208884.P116381435597733302

`filter[A347297(n+2), A000035(#)]`
-/

namespace A208884.P116381435597733302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347297 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n)

end

end A208884.P116381435597733302

namespace A208884

/-- `filter[A347297(n+2), A000035(#)]` -/
def P116381435597733302.Spec : Prop :=
  ∀ n, P116381435597733302.a n = A208884 (n + 1)

end A208884

/-!
# A208885: G.f.: Sum_{n>=0} (2*n)! * x^n / Product_{k=1..2*n} (1 + k*x).

The programs for A208885, there is no canonical definition to state claims against.
-/

/-! ## A208885.P17668756216357518942

`A371800(2*n)`
-/

namespace A208885.P17668756216357518942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371800 (2 * n)

end

end A208885.P17668756216357518942

/-! ## A208885.P17596321377015352781

`record[gcd(A060054(n+1), A371800(n))]`
-/

namespace A208885.P17596321377015352781
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A060054 (n + 1)) (A371800 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A208885.P17596321377015352781

/-! ## A208885.P4511184282375482920

`A371800(A005843(n))+A324179(n+1)`
-/

namespace A208885.P4511184282375482920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371800 (A005843 n).toNat + A324179 (n + 1)

end

end A208885.P4511184282375482920

/-! ## A208885.P4126219318665826363

`A371800(A005843(n))+A000007(n+2)`
-/

namespace A208885.P4126219318665826363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371800 (A005843 n).toNat + A000007 (n + 2)

end

end A208885.P4126219318665826363

/-! ## A208885.P14277997711154898742

`lcm(A000120(n+1), A371800(A005843(n)))`
-/

namespace A208885.P14277997711154898742
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000120 (n + 1)) (A371800 (A005843 n).toNat)

end

end A208885.P14277997711154898742

/-!
# A208886: G.f.: Sum_{n>=0} (2*n+1)! * x^n / Product_{k=1..2*n+1} (1 + k*x).

The programs for A208886, there is no canonical definition to state claims against.
-/

/-! ## A208886.P13557451324002388863

`A371800(Δ[n²])`
-/

namespace A208886.P13557451324002388863
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371800 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A208886.P13557451324002388863

/-!
# A208887: G.f. satisfies: A(x) = 1 + x*A(x)*A(-x) + x^2*(A(x) + A(-x)).

The programs for A208887, the canonical program `A208887.P1192936168084603761` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A208887 has offset 0).

The definition of A208887 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 665 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A208887.P164872180158702440

`A182492(n)+2*a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A208887.P164872180158702440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A182492 n + 2 * a (n - 2)

end

end A208887.P164872180158702440

namespace A208887

/-- `A182492(n)+2*a(n-2)` -/
def P164872180158702440.Spec : Prop :=
  ∀ n, P164872180158702440.a n = A208887 n

end A208887

/-! ## A208887.P1192936168084603761

`A090192(A004524(n))+2*a(n-2)` with `a(0)=1, a(1)=1, a(2)=2`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A208887

/-- `A090192(A004524(n))+2*a(n-2)` -/
def P1192936168084603761.Spec : Prop :=
  ∀ n, P1192936168084603761.a n = A208887 n

theorem P1192936168084603761.correct : P1192936168084603761.Spec := by
  intro n
  simp only [A208887]

end A208887

/-! ## A208887.P2621048167939223203

`A000196(A161948(n+1)+A000225(n))`
-/

namespace A208887.P2621048167939223203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A161948 (n + 1) + A000225 n).toNat

end

end A208887.P2621048167939223203

namespace A208887

/-- `A000196(A161948(n+1)+A000225(n))` -/
def P2621048167939223203.Spec : Prop :=
  ∀ n, P2621048167939223203.a n = A208887 n

end A208887

/-! ## A208887.P2260175153043756081

`A000196(A161948(n+1)+A014551(n))`
-/

namespace A208887.P2260175153043756081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A161948 (n + 1) + A014551 n).toNat

end

end A208887.P2260175153043756081

namespace A208887

/-- `A000196(A161948(n+1)+A014551(n))` -/
def P2260175153043756081.Spec : Prop :=
  ∀ n, P2260175153043756081.a n = A208887 n

end A208887

/-! ## A208887.P15509274483819330673

`A000196(A161948(n+1)+A051049(n))`
-/

namespace A208887.P15509274483819330673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A161948 (n + 1) + A051049 n).toNat

end

end A208887.P15509274483819330673

namespace A208887

/-- `A000196(A161948(n+1)+A051049(n))` -/
def P15509274483819330673.Spec : Prop :=
  ∀ n, P15509274483819330673.a n = A208887 n

end A208887

/-!
# A208890: a(n) = A000984(n)*A004981(n), the term-wise product of the coefficients in (1-4*x)^(-1/2) and (1-8*x)^(-1/4).

The programs for A208890, the canonical program `A208890.P15905558347705889732` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A208890 has offset 0).

The definition of A208890 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A004981, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A208890.P15905558347705889732

`A000984(n)*A004981(n)`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A208890

/-- `A000984(n)*A004981(n)` -/
def P15905558347705889732.Spec : Prop :=
  ∀ n, P15905558347705889732.a n = A208890 n

theorem P15905558347705889732.correct : P15905558347705889732.Spec := by
  intro n
  simp only [A208890]

end A208890

/-! ## A208890.P2286839060198484650

`A034385(n)/2^n*record[a(n-1)/(floor(n/2)/n-1)]` with `a(0)=1`
-/

namespace A208890.P2286839060198484650
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (n - 1) / ((⌊(n : ℚ) / 2⌋ : ℚ) / (n : ℚ) - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034385 n : ℚ) / (2 ^ n : ℚ) * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A208890.P2286839060198484650

namespace A208890

/-- `A034385(n)/2^n*record[a(n-1)/(floor(n/2)/n-1)]` -/
def P2286839060198484650.Spec : Prop :=
  ∀ n, P2286839060198484650.a n = (A208890 n : ℚ)

end A208890

/-! ## A208890.P4011283044596475131

`A004985(n)/(4*n+1)*record[a(n-1)/(floor(n/2)/n-1)]` with `a(0)=1`
-/

namespace A208890.P4011283044596475131
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (n - 1) / ((⌊(n : ℚ) / 2⌋ : ℚ) / (n : ℚ) - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004985 n : ℚ) / (4 * n + 1 : ℚ) * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A208890.P4011283044596475131

namespace A208890

/-- `A004985(n)/(4*n+1)*record[a(n-1)/(floor(n/2)/n-1)]` -/
def P4011283044596475131.Spec : Prop :=
  ∀ n, P4011283044596475131.a n = (A208890 n : ℚ)

end A208890

/-! ## A208890.P8168637626087040519

`sqrt(A002894(n))*A004981(n)`
-/

namespace A208890.P8168637626087040519
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A002894 n : ℝ) * (A004981 n : ℝ)

end

end A208890.P8168637626087040519

namespace A208890

/-- `sqrt(A002894(n))*A004981(n)` -/
def P8168637626087040519.Spec : Prop :=
  ∀ n, P8168637626087040519.a n = (A208890 n : ℝ)

end A208890

/-! ## A208890.P2430415263211672494

`record[A068555(n)]*A004981(n)`
-/

namespace A208890.P2430415263211672494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068555 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A004981 n

end

end A208890.P2430415263211672494

namespace A208890

/-- `record[A068555(n)]*A004981(n)` -/
def P2430415263211672494.Spec : Prop :=
  ∀ n, P2430415263211672494.a n = A208890 n

end A208890

/-! ## A208890.P17524802943680057693

`record[A081668(n)]*A004981(n)`
-/

namespace A208890.P17524802943680057693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081668 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A004981 n

end

end A208890.P17524802943680057693

namespace A208890

/-- `record[A081668(n)]*A004981(n)` -/
def P17524802943680057693.Spec : Prop :=
  ∀ n, P17524802943680057693.a n = A208890 n

end A208890

/-! ## A208890.P5277328763355535791

`record[A092392(n)]*A004981(n)`
-/

namespace A208890.P5277328763355535791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092392 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A004981 n

end

end A208890.P5277328763355535791

namespace A208890

/-- `record[A092392(n)]*A004981(n)` -/
def P5277328763355535791.Spec : Prop :=
  ∀ n, P5277328763355535791.a n = A208890 n

end A208890

/-! ## A208890.P8621404700257482037

`A004981(n)*A081668(2*n)`
-/

namespace A208890.P8621404700257482037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004981 n * A081668 (2 * n)

end

end A208890.P8621404700257482037

namespace A208890

/-- `A004981(n)*A081668(2*n)` -/
def P8621404700257482037.Spec : Prop :=
  ∀ n, P8621404700257482037.a n = A208890 n

end A208890

/-!
# A208891: Pascal's triangle matrix augmented with a right border of 1's.

The programs for A208891, the canonical program `A208891.P13459728261934615050` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A208891 has offset 0).

The definition of A208891 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A208891.P4424983107883292210

`A007318(∑[char[comp[∑[n]]]])`
-/

namespace A208891.P4424983107883292210
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A208891.P4424983107883292210

namespace A208891

/-- `A007318(∑[char[comp[∑[n]]]])` -/
def P4424983107883292210.Spec : Prop :=
  ∀ n, P4424983107883292210.a n = A208891 n

end A208891

/-! ## A208891.P13459728261934615050

`floor(sqrt(A071919(n)²+1))`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A208891

/-- `floor(sqrt(A071919(n)²+1))` -/
def P13459728261934615050.Spec : Prop :=
  ∀ n, P13459728261934615050.a n = A208891 n

theorem P13459728261934615050.correct : P13459728261934615050.Spec := by
  intro n
  simp only [A208891]

end A208891

/-! ## A208891.P4469646463046755274

`round(sqrt(A110555(n)²+1))`
-/

namespace A208891.P4469646463046755274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A110555 n ^ 2 + 1 : ℝ))

end

end A208891.P4469646463046755274

namespace A208891

/-- `round(sqrt(A110555(n)²+1))` -/
def P4469646463046755274.Spec : Prop :=
  ∀ n, P4469646463046755274.a n = A208891 n

end A208891

/-! ## A208891.P14428721028778768940

`A071919(char[∑[n-1]]+n)`
-/

namespace A208891.P14428721028778768940
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071919 ((if ∃ j, f1 j = (n : ℤ) then 1 else 0) + n)

end

end A208891.P14428721028778768940

namespace A208891

/-- `A071919(char[∑[n-1]]+n)` -/
def P14428721028778768940.Spec : Prop :=
  ∀ n, P14428721028778768940.a n = A208891 n

end A208891

/-! ## A208891.P8584895826067351259

`A193787(char[∑[n-1]]+n)`
-/

namespace A208891.P8584895826067351259
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193787 ((if ∃ j, f1 j = (n : ℤ) then 1 else 0) + n)

end

end A208891.P8584895826067351259

namespace A208891

/-- `A193787(char[∑[n-1]]+n)` -/
def P8584895826067351259.Spec : Prop :=
  ∀ n, P8584895826067351259.a n = A208891 n

end A208891

/-! ## A208891.P4713017043426204463

`round(sqrt(A097805(n+1)²+1))`
-/

namespace A208891.P4713017043426204463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A097805 (n + 1) ^ 2 + 1 : ℝ))

end

end A208891.P4713017043426204463

namespace A208891

/-- `round(sqrt(A097805(n+1)²+1))` -/
def P4713017043426204463.Spec : Prop :=
  ∀ n, P4713017043426204463.a n = A208891 n

end A208891

/-! ## A208891.P12376413470871961645

`A097805(A023532(n)+n)`
-/

namespace A208891.P12376413470871961645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097805 (A023532 n + (n : ℤ)).toNat

end

end A208891.P12376413470871961645

namespace A208891

/-- `A097805(A023532(n)+n)` -/
def P12376413470871961645.Spec : Prop :=
  ∀ n, P12376413470871961645.a n = A208891 n

end A208891

/-! ## A208891.P16439248269492328048

`A028326(n)-A135226(n)`
-/

namespace A208891.P16439248269492328048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028326 n - A135226 n

end

end A208891.P16439248269492328048

namespace A208891

/-- `A028326(n)-A135226(n)` -/
def P16439248269492328048.Spec : Prop :=
  ∀ n, P16439248269492328048.a n = A208891 n

end A208891

/-! ## A208891.P10946421362525008607

`gcd(A132014(n), A193787(n))`
-/

namespace A208891.P10946421362525008607
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A132014 n) (A193787 n)

end

end A208891.P10946421362525008607

namespace A208891

/-- `gcd(A132014(n), A193787(n))` -/
def P10946421362525008607.Spec : Prop :=
  ∀ n, (P10946421362525008607.a n : ℤ) = A208891 n

end A208891

/-! ## A208891.P8521449360520951737

`abs(A108086(n-A003056(n)))`
-/

namespace A208891.P8521449360520951737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A108086 ((n : ℤ) - A003056 n).toNat|

end

end A208891.P8521449360520951737

namespace A208891

/-- `abs(A108086(n-A003056(n)))` -/
def P8521449360520951737.Spec : Prop :=
  ∀ n, P8521449360520951737.a n = A208891 n

end A208891

/-! ## A208891.P17458512871198359395

`abs(A130595(n-A003056(n)))`
-/

namespace A208891.P17458512871198359395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A130595 ((n : ℤ) - A003056 n).toNat|

end

end A208891.P17458512871198359395

namespace A208891

/-- `abs(A130595(n-A003056(n)))` -/
def P17458512871198359395.Spec : Prop :=
  ∀ n, P17458512871198359395.a n = A208891 n

end A208891

/-! ## A208891.P256451055264922906

`A097805(Δ[A083920(n)]+n)`
-/

namespace A208891.P256451055264922906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083920 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097805 (f1 (n + 1) - f1 n + (n : ℤ)).toNat

end

end A208891.P256451055264922906

namespace A208891

/-- `A097805(Δ[A083920(n)]+n)` -/
def P256451055264922906.Spec : Prop :=
  ∀ n, P256451055264922906.a n = A208891 n

end A208891

/-! ## A208891.P125849916796084032

`A097805(A127648(n)+1+n)`
-/

namespace A208891.P125849916796084032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097805 (A127648 n + 1 + (n : ℤ)).toNat

end

end A208891.P125849916796084032

namespace A208891

/-- `A097805(A127648(n)+1+n)` -/
def P125849916796084032.Spec : Prop :=
  ∀ n, P125849916796084032.a n = A208891 n

end A208891

/-! ## A208891.P6301690997331574746

`A007318(n)+A007318(n)-A135226(n)`
-/

namespace A208891.P6301690997331574746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n + (A007318 n - A135226 n)

end

end A208891.P6301690997331574746

namespace A208891

/-- `A007318(n)+A007318(n)-A135226(n)` -/
def P6301690997331574746.Spec : Prop :=
  ∀ n, P6301690997331574746.a n = A208891 n

end A208891

/-! ## A208891.P17355478763357606631

`A007318(n)-(A135225(n)-A103451(n))`
-/

namespace A208891.P17355478763357606631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n - (A135225 n - A103451 n)

end

end A208891.P17355478763357606631

namespace A208891

/-- `A007318(n)-(A135225(n)-A103451(n))` -/
def P17355478763357606631.Spec : Prop :=
  ∀ n, P17355478763357606631.a n = A208891 n

end A208891

/-! ## A208891.P14625851632235028042

`A135225(n+1)`
-/

namespace A208891.P14625851632235028042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135225 (n + 1)

end

end A208891.P14625851632235028042

namespace A208891

/-- `A135225(n+1)` -/
def P14625851632235028042.Spec : Prop :=
  ∀ n, P14625851632235028042.a n = A208891 n

end A208891

/-! ## A208891.P4595521842689964959

`abs(A177767(n+1))`
-/

namespace A208891.P4595521842689964959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A177767 (n + 1)|

end

end A208891.P4595521842689964959

namespace A208891

/-- `abs(A177767(n+1))` -/
def P4595521842689964959.Spec : Prop :=
  ∀ n, P4595521842689964959.a n = A208891 n

end A208891

/-! ## A208891.P4691062671369603038

`round(sqrt(Δ[A308663(n)]²+1))`
-/

namespace A208891.P4691062671369603038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308663 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt ((f1 (n + 1) - f1 n) ^ 2 + 1 : ℝ))

end

end A208891.P4691062671369603038

namespace A208891

/-- `round(sqrt(Δ[A308663(n)]²+1))` -/
def P4691062671369603038.Spec : Prop :=
  ∀ n, P4691062671369603038.a n = A208891 n

end A208891

/-! ## A208891.P10928153974874106181

`A028326(n+1)-A208510(n+2)`
-/

namespace A208891.P10928153974874106181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028326 (n + 1) - A208510 (n + 2)

end

end A208891.P10928153974874106181

namespace A208891

/-- `A028326(n+1)-A208510(n+2)` -/
def P10928153974874106181.Spec : Prop :=
  ∀ n, P10928153974874106181.a n = A208891 n

end A208891

/-! ## A208891.P5787824990975087251

`A071919(n+1)+A112467(n)-A080234(n+1)`
-/

namespace A208891.P5787824990975087251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071919 (n + 1) + (A112467 n - A080234 (n + 1))

end

end A208891.P5787824990975087251

namespace A208891

/-- `A071919(n+1)+A112467(n)-A080234(n+1)` -/
def P5787824990975087251.Spec : Prop :=
  ∀ n, P5787824990975087251.a n = A208891 n

end A208891

/-!
# A208893: First number in smaller of two distinct sets of n consecutive numbers with identical corresponding prime signatures.

The programs for A208893, there is no canonical definition to state claims against.
-/

/-! ## A208893.P4198628084962835515

`A208892(∑[2*n]+1)`
-/

namespace A208893.P4198628084962835515
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208892 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A208893.P4198628084962835515

/-! ## A208893.P7170189783490266425

`A208892((n+1)²)-n`
-/

namespace A208893.P7170189783490266425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208892 ((n + 1) ^ 2) - (n : ℤ)

end

end A208893.P7170189783490266425

/-!
# A208894: First number in larger of two distinct sets of n consecutive numbers with identical corresponding prime signatures.

The programs for A208894, there is no canonical definition to state claims against.
-/

/-! ## A208894.P13431282789176647309

`A208892((n+1)²+1)`
-/

namespace A208894.P13431282789176647309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208892 ((n + 1) ^ 2 + 1)

end

end A208894.P13431282789176647309

/-! ## A208894.P34170547414117142

`A208892((n+1)*(n+2))-n`
-/

namespace A208894.P34170547414117142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208892 ((n + 1) * (n + 2)) - (n : ℤ)

end

end A208894.P34170547414117142

/-! ## A208894.P5185271487850831820

`A072170(n)*A208892(A002522(n+1))`
-/

namespace A208894.P5185271487850831820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072170 n * A208892 (A002522 (n + 1)).toNat

end

end A208894.P5185271487850831820

/-!
# A208895: Number of non-congruent solutions to x^2 + y^2 + z^2 + t^2 == 1 (mod n).

The programs for A208895, the canonical program `A208895.P1713684876106652713` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A208895 has offset 1).

The definition of A208895 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A208895.P5258794810535147756

`A227499(n+1)/A000010(n+1)`
-/

namespace A208895.P5258794810535147756
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A227499 (n + 1) : ℚ) / (A000010 (n + 1) : ℚ)

end

end A208895.P5258794810535147756

namespace A208895

/-- `A227499(n+1)/A000010(n+1)` -/
def P5258794810535147756.Spec : Prop :=
  ∀ n, P5258794810535147756.a n = (A208895 (n + 1) : ℚ)

end A208895

/-! ## A208895.P1713684876106652713

`∑{d}[n+1, A001158(#)*A327278((n+1)/#)]`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A208895

/-- `∑{d}[n+1, A001158(#)*A327278((n+1)/#)]` -/
def P1713684876106652713.Spec : Prop :=
  ∀ n, P1713684876106652713.a n = A208895 (n + 1)

theorem P1713684876106652713.correct : P1713684876106652713.Spec := by
  intro n
  simp only [A208895, Nat.add_sub_cancel]

end A208895

/-! ## A208895.P12486584781813007226

`∑{d}[n+1, A067856(#)*A350156((n+1)/#)]`
-/

namespace A208895.P12486584781813007226
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A067856 d * A350156 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A208895.P12486584781813007226

namespace A208895

/-- `∑{d}[n+1, A067856(#)*A350156((n+1)/#)]` -/
def P12486584781813007226.Spec : Prop :=
  ∀ n, P12486584781813007226.a n = A208895 (n + 1)

end A208895

/-! ## A208895.P2133663319599048953

`∑{d}[n+1, A326937(#)*A328408((n+1)/#)]`
-/

namespace A208895.P2133663319599048953
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A326937 d * A328408 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A208895.P2133663319599048953

namespace A208895

/-- `∑{d}[n+1, A326937(#)*A328408((n+1)/#)]` -/
def P2133663319599048953.Spec : Prop :=
  ∀ n, P2133663319599048953.a n = A208895 (n + 1)

end A208895

/-! ## A208895.P13219628399554914794

`∑{d}[n+1, A000056(#)*A099894((n+1)/#-1)]`
-/

namespace A208895.P13219628399554914794
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000056 d * A099894 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) - 1)).toNat

end

end A208895.P13219628399554914794

namespace A208895

/-- `∑{d}[n+1, A000056(#)*A099894((n+1)/#-1)]` -/
def P13219628399554914794.Spec : Prop :=
  ∀ n, P13219628399554914794.a n = A208895 (n + 1)

end A208895

/-! ## A208895.P1780342576858197868

`A065430(2*(n+1))/3`
-/

namespace A208895.P1780342576858197868
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A065430 (2 * (n + 1)) : ℚ) / 3

end

end A208895.P1780342576858197868

namespace A208895

/-- `A065430(2*(n+1))/3` -/
def P1780342576858197868.Spec : Prop :=
  ∀ n, P1780342576858197868.a n = (A208895 (n + 1) : ℚ)

end A208895

/-! ## A208895.P13182972716678287951

`A000056(2*(n+1))/6`
-/

namespace A208895.P13182972716678287951
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000056 (2 * (n + 1)) : ℚ) / 6

end

end A208895.P13182972716678287951

namespace A208895

/-- `A000056(2*(n+1))/6` -/
def P13182972716678287951.Spec : Prop :=
  ∀ n, P13182972716678287951.a n = (A208895 (n + 1) : ℚ)

end A208895

/-! ## A208895.P14805430195094644072

`(n+1)/3*A007434(2*(n+1))`
-/

namespace A208895.P14805430195094644072
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / 3 * (A007434 (2 * (n + 1)) : ℚ)

end

end A208895.P14805430195094644072

namespace A208895

/-- `(n+1)/3*A007434(2*(n+1))` -/
def P14805430195094644072.Spec : Prop :=
  ∀ n, P14805430195094644072.a n = (A208895 (n + 1) : ℚ)

end A208895

/-! ## A208895.P6859922532366242126

`(n+1)*A023023(4*(n+1))`
-/

namespace A208895.P6859922532366242126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A023023 (4 * (n + 1))

end

end A208895.P6859922532366242126

namespace A208895

/-- `(n+1)*A023023(4*(n+1))` -/
def P6859922532366242126.Spec : Prop :=
  ∀ n, P6859922532366242126.a n = A208895 (n + 1)

end A208895

/-! ## A208895.P1354978420535324368

`A060968(n+1)*A227553(n+1)`
-/

namespace A208895.P1354978420535324368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060968 (n + 1) * A227553 (n + 1)

end

end A208895.P1354978420535324368

namespace A208895

/-- `A060968(n+1)*A227553(n+1)` -/
def P1354978420535324368.Spec : Prop :=
  ∀ n, P1354978420535324368.a n = A208895 (n + 1)

end A208895

/-! ## A208895.P435425538343573709

`A239613(n+1)/A062355(n+1)`
-/

namespace A208895.P435425538343573709
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A239613 (n + 1) : ℚ) / (A062355 (n + 1) : ℚ)

end

end A208895.P435425538343573709

namespace A208895

/-- `A239613(n+1)/A062355(n+1)` -/
def P435425538343573709.Spec : Prop :=
  ∀ n, P435425538343573709.a n = (A208895 (n + 1) : ℚ)

end A208895

/-! ## A208895.P5697952998084521299

`A000010(2*(n+1)²)*A159634(n+1)`
-/

namespace A208895.P5697952998084521299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (2 * (n + 1) ^ 2) * A159634 (n + 1)

end

end A208895.P5697952998084521299

namespace A208895

/-- `A000010(2*(n+1)²)*A159634(n+1)` -/
def P5697952998084521299.Spec : Prop :=
  ∀ n, P5697952998084521299.a n = A208895 (n + 1)

end A208895

/-!
# A208897: A diagonal of rectangular table A208896: a(n) = A208896(n+1,n).

The programs for A208897, there is no canonical definition to state claims against.
-/

/-! ## A208897.P7331052897942239554

`A208896(A056220(n+1))`
-/

namespace A208897.P7331052897942239554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208896 (A056220 (n + 1)).toNat

end

end A208897.P7331052897942239554

/-! ## A208897.P7888005144585280136

`A208896(eq[1, A114327(n)])`
-/

namespace A208897.P7888005144585280136
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114327 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208896 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A208897.P7888005144585280136

/-! ## A208897.P6388943887768701373

`A208896(record[A120092(n+1)])`
-/

namespace A208897.P6388943887768701373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120092 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208896 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A208897.P6388943887768701373

/-! ## A208897.P8114220432581146297

`A208896(eq[2, A007913(n+1)])`
-/

namespace A208897.P8114220432581146297
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208896 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A208897.P8114220432581146297

/-! ## A208897.P2618796812423268457

`A208896(eq[2, A253146(n+1)])`
-/

namespace A208897.P2618796812423268457
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253146 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208896 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A208897.P2618796812423268457

/-!
# A208898: A diagonal of rectangular table A208896: a(n) = A208896(n+2,n).

The programs for A208898, there is no canonical definition to state claims against.
-/

/-! ## A208898.P14447550080901403408

`A208896(A132209(n+1))`
-/

namespace A208898.P14447550080901403408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208896 (A132209 (n + 1)).toNat

end

end A208898.P14447550080901403408

/-! ## A208898.P11187193022919561350

`A208896(A142463(n+1))`
-/

namespace A208898.P11187193022919561350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208896 (A142463 (n + 1)).toNat

end

end A208898.P11187193022919561350

/-! ## A208898.P432487684720379640

`A208896(eq[2, A114327(n)])`
-/

namespace A208898.P432487684720379640
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114327 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208896 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A208898.P432487684720379640

/-! ## A208898.P6575009691102044862

`A208896(2*A028387(n)+1)`
-/

namespace A208898.P6575009691102044862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208896 (2 * A028387 n + 1).toNat

end

end A208898.P6575009691102044862

/-! ## A208898.P8694502102372416329

`A208896(eq[1, A253146(n+2)])`
-/

namespace A208898.P8694502102372416329
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253146 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208896 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A208898.P8694502102372416329

