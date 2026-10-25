import SequenceMachineLib
import Mathlib.Tactic
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
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C014
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
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C008
import Seq.B001.C009
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
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B006.C002
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
# A295600: Number of n X n 0..1 arrays with each 1 horizontally or vertically adjacent to 0, 2, 3 or 4 1's.

The programs for A295600, there is no canonical definition to state claims against.
-/

/-! ## A295600.P4437404426353727683

`A295606(∑[4*n]+1)`
-/

namespace A295600.P4437404426353727683
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295606 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A295600.P4437404426353727683

/-! ## A295600.P3163274218125834554

`record[gcd(A003987(n), A295606(n+1))]`
-/

namespace A295600.P3163274218125834554
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003987 n) (A295606 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A295600.P3163274218125834554

/-! ## A295600.P536167131776458061

`gcd(A000038(n), A295606(A001844(n)))`
-/

namespace A295600.P536167131776458061
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A295606 (A001844 n).toNat)

end

end A295600.P536167131776458061

/-! ## A295600.P2533067268930119827

`A324802(n+1)+A295606(A001844(n))`
-/

namespace A295600.P2533067268930119827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324802 (n + 1) + A295606 (A001844 n).toNat

end

end A295600.P2533067268930119827

/-! ## A295600.P11474507630644615423

`or(A284932(n+1), A295606(A001844(n)))`
-/

namespace A295600.P11474507630644615423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A284932 (n + 1)) (A295606 (A001844 n).toNat)

end

end A295600.P11474507630644615423

/-!
# A295601: Number of n X 3 0..1 arrays with each 1 horizontally or vertically adjacent to 0, 2, 3 or 4 1s.

The programs for A295601, there is no canonical definition to state claims against.
-/

/-! ## A295601.P18256030388041840744

`A295606(∑[n+2]+4)`
-/

namespace A295601.P18256030388041840744
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295606 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A295601.P18256030388041840744

/-! ## A295601.P2975882083614218106

`A295606(A167614(n+1))%((12*n+3)^6)`
-/

namespace A295601.P2975882083614218106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A295606 (A167614 (n + 1)).toNat) ((12 * n + 3) ^ 6 : ℤ)

end

end A295601.P2975882083614218106

/-! ## A295601.P14227693934134947626

`or(A000007(n), A295606(A167614(n+1)))`
-/

namespace A295601.P14227693934134947626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A295606 (A167614 (n + 1)).toNat)

end

end A295601.P14227693934134947626

/-! ## A295601.P17595384409099722539

`or(A151933(n), A295606(A167614(n+1)))`
-/

namespace A295601.P17595384409099722539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A151933 n) (A295606 (A167614 (n + 1)).toNat)

end

end A295601.P17595384409099722539

/-! ## A295601.P8178228119220514736

`A295606(A167614(n+1))+A034535(n+1)`
-/

namespace A295601.P8178228119220514736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295606 (A167614 (n + 1)).toNat + A034535 (n + 1)

end

end A295601.P8178228119220514736

/-!
# A295602: Number of n X 4 0..1 arrays with each 1 horizontally or vertically adjacent to 0, 2, 3 or 4 1's.

The programs for A295602, there is no canonical definition to state claims against.
-/

/-! ## A295602.P5701165045753170590

`A295606(∑[n+3]+7)`
-/

namespace A295602.P5701165045753170590
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295606 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A295602.P5701165045753170590

/-! ## A295602.P9206526495230042170

`A295606(A167614(n+2)+1)%A295603(n+1)`
-/

namespace A295602.P9206526495230042170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A295606 (A167614 (n + 2) + 1).toNat) (A295603 (n + 1))

end

end A295602.P9206526495230042170

/-! ## A295602.P4451120251988894498

`A295606(A141214(n+1))+A000007(2*(n+1))`
-/

namespace A295602.P4451120251988894498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295606 (A141214 (n + 1)).toNat + A000007 (2 * (n + 1))

end

end A295602.P4451120251988894498

/-! ## A295602.P12293744184197783530

`A014963(20*(n+1))*A295606(A055998(n+2))`
-/

namespace A295602.P12293744184197783530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (20 * (n + 1)) * A295606 (A055998 (n + 2)).toNat

end

end A295602.P12293744184197783530

/-!
# A295603: Number of nX5 0..1 arrays with each 1 horizontally or vertically adjacent to 0, 2, 3 or 4 1s.

The programs for A295603, there is no canonical definition to state claims against.
-/

/-! ## A295603.P18307680510053329952

`A295606(A167499(n+3))`
-/

namespace A295603.P18307680510053329952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295606 (A167499 (n + 3)).toNat

end

end A295603.P18307680510053329952

/-! ## A295603.P3137968529747327346

`A295606(A034856(n+3)+7)`
-/

namespace A295603.P3137968529747327346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295606 (A034856 (n + 3) + 7).toNat

end

end A295603.P3137968529747327346

/-! ## A295603.P13674892884963448859

`A295606(A167614(n+1)+2*n+9)`
-/

namespace A295603.P13674892884963448859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295606 (A167614 (n + 1) + (2 * n + 9 : ℤ)).toNat

end

end A295603.P13674892884963448859

/-! ## A295603.P12744686328249678264

`A295606(A374005(n+1))`
-/

namespace A295603.P12744686328249678264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295606 (A374005 (n + 1)).toNat

end

end A295603.P12744686328249678264

/-! ## A295603.P8109168664289596082

`A295606(A046691(n+3))`
-/

namespace A295603.P8109168664289596082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295606 (A046691 (n + 3)).toNat

end

end A295603.P8109168664289596082

/-!
# A295604: Number of nX6 0..1 arrays with each 1 horizontally or vertically adjacent to 0, 2, 3 or 4 1s.

The programs for A295604, there is no canonical definition to state claims against.
-/

/-! ## A295604.P8326247018662945323

`A295606(A166136(n+4))`
-/

namespace A295604.P8326247018662945323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295606 (A166136 (n + 4)).toNat

end

end A295604.P8326247018662945323

/-! ## A295604.P8627981547322051074

`A295606(A167499(n+4)+1)`
-/

namespace A295604.P8627981547322051074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295606 (A167499 (n + 4) + 1).toNat

end

end A295604.P8627981547322051074

/-! ## A295604.P2687919846778762740

`A295606(A000217(n+5)+6)`
-/

namespace A295604.P2687919846778762740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295606 (A000217 (n + 5) + 6).toNat

end

end A295604.P2687919846778762740

/-! ## A295604.P5093478334629461919

`A295606(A046691(n+3)+10)`
-/

namespace A295604.P5093478334629461919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295606 (A046691 (n + 3) + 10).toNat

end

end A295604.P5093478334629461919

/-! ## A295604.P13367949431957544119

`A295606(A374007(n+1))`
-/

namespace A295604.P13367949431957544119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295606 (A374007 (n + 1)).toNat

end

end A295604.P13367949431957544119

/-!
# A295605: Number of nX7 0..1 arrays with each 1 horizontally or vertically adjacent to 0, 2, 3 or 4 1s.

The programs for A295605, there is no canonical definition to state claims against.
-/

/-! ## A295605.P7508568905206706656

`A295606(A167614(n+5)+4)`
-/

namespace A295605.P7508568905206706656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295606 (A167614 (n + 5) + 4).toNat

end

end A295605.P7508568905206706656

/-! ## A295605.P16948383440432201090

`A295606(A161680(n+7)+7)`
-/

namespace A295605.P16948383440432201090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295606 (A161680 (n + 7) + 7).toNat

end

end A295605.P16948383440432201090

/-! ## A295605.P14841214873489387139

`A295606(A374008(n+1))`
-/

namespace A295605.P14841214873489387139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295606 (A374008 (n + 1)).toNat

end

end A295605.P14841214873489387139

/-! ## A295605.P7830975423759926741

`A295606(A055999(n+4))`
-/

namespace A295605.P7830975423759926741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295606 (A055999 (n + 4)).toNat

end

end A295605.P7830975423759926741

/-! ## A295605.P4413291589689043996

`A295606(eq[6, A193592(n)])`
-/

namespace A295605.P4413291589689043996
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295606 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A295605.P4413291589689043996

/-!
# A295606: T(n,k)=Number of nXk 0..1 arrays with each 1 horizontally or vertically adjacent to 0, 2, 3 or 4 1s.

The programs for A295606, there is no canonical definition to state claims against.
-/

/-! ## A295606.P6546507342953152412

`A295352(n+1)+A094263(abs(A141588(n)))`
-/

namespace A295606.P6546507342953152412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295352 (n + 1) + A094263 |A141588 n|.toNat

end

end A295606.P6546507342953152412

/-! ## A295606.P8110831186858052162

`A123068(A295379(n+1))+A065033(A174116(n))`
-/

namespace A295606.P8110831186858052162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123068 (A295379 (n + 1)).toNat + A065033 (A174116 n).toNat

end

end A295606.P8110831186858052162

/-!
# A295607: a(n) = A001567(n) - 2^floor(log_2(A001567(n))).

The programs for A295607, there is no canonical definition to state claims against.
-/

/-! ## A295607.P11085201869969858131

`A001567(n+1)-2^floor(log2(A001567(n+1)))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A295607.P11085201869969858131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001567 (n + 1) - (2 ^ Nat.log 2 (A001567 (n + 1)).toNat : ℤ)

end

end A295607.P11085201869969858131

/-! ## A295607.P2631966726701409235

`A053645(A001567(n+1))`
-/

namespace A295607.P2631966726701409235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053645 (A001567 (n + 1)).toNat

end

end A295607.P2631966726701409235

/-! ## A295607.P9817067439637453703

`A006257(floor(A001567(n+1)/2))`
-/

namespace A295607.P9817067439637453703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006257 ⌊(A001567 (n + 1) : ℚ) / 2⌋.toNat

end

end A295607.P9817067439637453703

/-! ## A295607.P12124227269109982511

`A006257((A001567(n+1)-1)/2)`
-/

namespace A295607.P12124227269109982511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006257 (SequenceMachineLib.roundAway ((A001567 (n + 1) - 1 : ℚ) / 2)).toNat

end

end A295607.P12124227269109982511

/-! ## A295607.P14366405612147717974

`∑{d}[A001567(n+1), A300725(#)]`
-/

namespace A295607.P14366405612147717974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001567 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A300725 d

end

end A295607.P14366405612147717974

/-!
# A295609: a(n) = least prime number p such that p AND n = n (where AND denotes the binary AND operator).

The programs for A295609, there is no canonical definition to state claims against.
-/

/-! ## A295609.P9835952776685580607

`n+A295335(n)`
-/

namespace A295609.P9835952776685580607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) + A295335 n

end

end A295609.P9835952776685580607

/-! ## A295609.P12594027233397446423

`or(n, A295335(or(1, n)-1))`
-/

namespace A295609.P12594027233397446423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (A295335 (Nat.lor 1 n - 1))

end

end A295609.P12594027233397446423

/-! ## A295609.P3638777088608116823

`A295335(n)-A001489(n)`
-/

namespace A295609.P3638777088608116823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295335 n - A001489 n

end

end A295609.P3638777088608116823

/-! ## A295609.P14694904354332126840

`A000027(or(n, A295335(n)))`
-/

namespace A295609.P14694904354332126840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (Int.lor (n : ℤ) (A295335 n)).toNat

end

end A295609.P14694904354332126840

/-! ## A295609.P9767480320478430227

`A007918(or(n, A295335(n)))`
-/

namespace A295609.P9767480320478430227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 (Int.lor (n : ℤ) (A295335 n)).toNat

end

end A295609.P9767480320478430227

/-! ## A295609.P10428482895350072858

`A007947(xor(n, A295335(n)))`
-/

namespace A295609.P10428482895350072858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (Int.xor (n : ℤ) (A295335 n)).toNat

end

end A295609.P10428482895350072858

/-! ## A295609.P35982783231753627

`A014963(xor(n, A295335(n)))`
-/

namespace A295609.P35982783231753627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (Int.xor (n : ℤ) (A295335 n)).toNat

end

end A295609.P35982783231753627

/-! ## A295609.P9842669005389884535

`A020639(xor(n, A295335(n)))`
-/

namespace A295609.P9842669005389884535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (Int.xor (n : ℤ) (A295335 n)).toNat

end

end A295609.P9842669005389884535

/-! ## A295609.P4740695381283511287

`n-(A295335(a(n-1))-A295335(n))` with `a(0)=2`
-/

namespace A295609.P4740695381283511287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  (n : ℤ) - (A295335 (a (n - 1)).toNat - A295335 n)

end

end A295609.P4740695381283511287

/-! ## A295609.P7368455347255106572

`xor(n-record[4*A006257(n)]%2, A295335(n))`
-/

namespace A295609.P7368455347255106572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A006257 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((n : ℤ) - Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) 2) (A295335 n)

end

end A295609.P7368455347255106572

/-! ## A295609.P14098749873552673598

`n-(A007920(A007918(n))-A295335(n))`
-/

namespace A295609.P14098749873552673598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (A007920 (A007918 n).toNat - A295335 n)

end

end A295609.P14098749873552673598

/-!
# A295611: a(n) = Sum_{k=0..n} (-1)^k*binomial(n,k)^k.

The programs for A295611, there is no canonical definition to state claims against.
-/

/-! ## A295611.P16660641209724957560

`∑{d}[n!, (-C(n, #))^#]+1`
-/

namespace A295611.P16660641209724957560
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (-(Nat.choose n d : ℤ)) ^ d + 1

end

end A295611.P16660641209724957560

/-!
# A295613: Solution of the complementary equation a(n) = 2*a(n-1) - a(n-3) + b(n-1), where a(0) = 1, a(1) = 2, a(2) = 3, b(0) = 4, b(1) = 5, b(2) = 6, and (a(n)) and (b(n)) are increasing complementary sequences.

The programs for A295613, there is no canonical definition to state claims against.
-/

/-! ## A295613.P12363654090583780256

`(A305746(n)+A295616(n))/A174857(A068412(n+1))`
-/

namespace A295613.P12363654090583780256
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A305746 n + A295616 n : ℚ) / (A174857 (A068412 (n + 1)).toNat : ℚ)

end

end A295613.P12363654090583780256

/-! ## A295613.P16969680886212907932

`A014682(A305746(n)+A295616(n))`
-/

namespace A295613.P16969680886212907932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A305746 n + A295616 n).toNat

end

end A295613.P16969680886212907932

/-! ## A295613.P681208262096567267

`(A305746(n)+A295616(n))/A000034(A246994(n+3))`
-/

namespace A295613.P681208262096567267
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A305746 n + A295616 n : ℚ) / (A000034 (A246994 (n + 3)).toNat : ℚ)

end

end A295613.P681208262096567267

/-! ## A295613.P811362468460132564

`(A305746(n)+A295616(n))/A020639(A288961(n+8))`
-/

namespace A295613.P811362468460132564
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A305746 n + A295616 n : ℚ) / (A020639 (A288961 (n + 8)).toNat : ℚ)

end

end A295613.P811362468460132564

/-! ## A295613.P7092615332024735005

`(A305746(n)+A295616(n))/A000005(A152008(n+1))`
-/

namespace A295613.P7092615332024735005
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A305746 n + A295616 n : ℚ) / (A000005 (A152008 (n + 1)).toNat : ℚ)

end

end A295613.P7092615332024735005

/-!
# A295614: Solution of the complementary equation a(n) = 2*a(n-1) - a(n-3) + b(n-1), where a(0) = 1, a(1) = 3, a(2) = 5, b(0) = 2, b(1) = 4, b(2) = 6, and (a(n)) and (b(n)) are increasing complementary sequences.

The programs for A295614, there is no canonical definition to state claims against.
-/

/-! ## A295614.P15571903993342118172

`A115060(A305746(n)+n)`
-/

namespace A295614.P15571903993342118172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115060 (A305746 n + (n : ℤ)).toNat

end

end A295614.P15571903993342118172

/-! ## A295614.P40343586066211278

`A305746(A004913(n+1))+n`
-/

namespace A295614.P40343586066211278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305746 (A004913 (n + 1)).toNat + (n : ℤ)

end

end A295614.P40343586066211278

/-! ## A295614.P1764707465756156180

`A305746(n)%A198761(n+2)+n`
-/

namespace A295614.P1764707465756156180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A305746 n) (A198761 (n + 2)) + (n : ℤ)

end

end A295614.P1764707465756156180

/-! ## A295614.P4317241490987543283

`A305746(A001222(A000351(n)))+n`
-/

namespace A295614.P4317241490987543283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305746 (A001222 (A000351 n).toNat).toNat + (n : ℤ)

end

end A295614.P4317241490987543283

/-!
# A295615: Solution of the complementary equation a(n) = 2*a(n-1) - a(n-3) + b(n-1), where a(0) = 2, a(1) = 4, a(2) = 6, b(0) = 1, b(1) = 3, b(2) = 5, and (a(n)) and (b(n)) are increasing complementary sequences.

The programs for A295615, there is no canonical definition to state claims against.
-/

/-! ## A295615.P13246710931590164951

`A164528(A139351(n)+A000079(n))`
-/

namespace A295615.P13246710931590164951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164528 (A139351 n + A000079 n).toNat

end

end A295615.P13246710931590164951

/-! ## A295615.P5289785015841786213

`A164528(A329562(n)+A139351(n))`
-/

namespace A295615.P5289785015841786213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164528 (A329562 n + A139351 n).toNat

end

end A295615.P5289785015841786213

/-! ## A295615.P16343189359004548830

`A164528(or(A000079(n), A139351(n)))`
-/

namespace A295615.P16343189359004548830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164528 (Int.lor (A000079 n) (A139351 n)).toNat

end

end A295615.P16343189359004548830

/-!
# A295616: Solution of the complementary equation a(n) = 2*a(n-1) - a(n-3) + b(n-2), where a(0) = 1, a(1) = 2, a(2) = 3, b(0) = 4, b(1) = 5, b(2) = 6, and (a(n)) and (b(n)) are increasing complementary sequences.

The programs for A295616, there is no canonical definition to state claims against.
-/

/-! ## A295616.P12026774918743427644

`A305746(n)-A005843(A305746(n)-A295613(n))`
-/

namespace A295616.P12026774918743427644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305746 n - A005843 (A305746 n - A295613 n).toNat

end

end A295616.P12026774918743427644

/-! ## A295616.P14821870027460338571

`A004277(A295613(n))-A305746(n)`
-/

namespace A295616.P14821870027460338571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A295613 n).toNat - A305746 n

end

end A295616.P14821870027460338571

/-! ## A295616.P12364067550904494751

`A004277(A295613(n))-(A295614(n)-(A000007(n!)+n))`
-/

namespace A295616.P12364067550904494751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A295613 n).toNat - (A295614 n - (A000007 (Nat.factorial n) + (n : ℤ)))

end

end A295616.P12364067550904494751

/-!
# A295617: Solution of the complementary equation a(n) = 2*a(n-1) - a(n-3) + b(n-2), where a(0) = 1, a(1) = 3, a(2) = 5, b(0) = 2, b(1) = 4, b(2) = 6, and (a(n)) and (b(n)) are increasing complementary sequences.

The programs for A295617, there is no canonical definition to state claims against.
-/

/-! ## A295617.P9125723977381718801

`∑[A210729(A122888(ceil(2^(n-1))))]-1`
-/

namespace A295617.P9125723977381718801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210729 (A122888 ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉.toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A295617.P9125723977381718801

/-! ## A295617.P3514958281977933488

`A184419(∑[A326509(n+8)])`
-/

namespace A295617.P3514958281977933488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326509 (n + 8)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184419 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A295617.P3514958281977933488

/-! ## A295617.P10903839630047507467

`A231014(2^n)+A000022(n)`
-/

namespace A295617.P10903839630047507467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231014 (2 ^ n) + A000022 n

end

end A295617.P10903839630047507467

/-!
# A295618: Solution of the complementary equation a(n) = 2*a(n-1) - a(n-3) + b(n-2), where a(0) = 2, a(1) = 4, a(2) = 6, b(0) = 1, b(1) = 3, b(2) = 5, and (a(n)) and (b(n)) are increasing complementary sequences.

The programs for A295618, there is no canonical definition to state claims against.
-/

/-! ## A295618.P16857214154058024079

`A108602(∑[A287439(Δ[n²])])`
-/

namespace A295618.P16857214154058024079
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287439 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108602 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A295618.P16857214154058024079

/-! ## A295618.P10201741239437217930

`A209232(n)+A097509(A014330(n))`
-/

namespace A295618.P10201741239437217930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209232 n + A097509 (A014330 n).toNat

end

end A295618.P10201741239437217930

/-! ## A295618.P15193237644659825869

`A323023(A001643(n+1))+A001524(2*n+1)`
-/

namespace A295618.P15193237644659825869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323023 (A001643 (n + 1)).toNat + A001524 (2 * n + 1)

end

end A295618.P15193237644659825869

/-!
# A295619: a(n) = a(n-1) + 3*a(n-2) - 2*a(n-3) - 2*a(n-4), where a(0) = 1, a(1) = 2, a(2) = 3, a(3) = 4.

The programs for A295619, the canonical program `A295619.P12942670421641341551` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A295619 has offset 0).

The definition of A295619 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+3*a(n-2)-2*a(n-3)-2*a(n-4)` (program `A295619.P12942670421641341551`, by `A295619.P12942670421641341551.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A295619.P12942670421641341551

`a(n-1)+3*a(n-2)-2*a(n-3)-2*a(n-4)` with `a(0)=1, a(1)=2, a(2)=3, a(3)=4`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A295619

/-- `a(n-1)+3*a(n-2)-2*a(n-3)-2*a(n-4)` -/
def P12942670421641341551.Spec : Prop :=
  ∀ n, P12942670421641341551.a n = A295619 n

theorem P12942670421641341551.correct : P12942670421641341551.Spec := by
  intro n
  simp only [A295619]

end A295619

/-! ## A295619.P18234667027285933324

`A000045(n)+2^floor(n/2)`
-/

namespace A295619.P18234667027285933324
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000045 n : ℚ) + (2 : ℚ) ^ (⌊(n : ℚ) / 2⌋ : ℤ)

end

end A295619.P18234667027285933324

namespace A295619

/-- `A000045(n)+2^floor(n/2)` -/
def P18234667027285933324.Spec : Prop :=
  ∀ n, P18234667027285933324.a n = (A295619 n : ℚ)

end A295619

/-! ## A295619.P18189158755887072692

`A016116(n)+A000045(n)`
-/

namespace A295619.P18189158755887072692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 n + A000045 n

end

end A295619.P18189158755887072692

namespace A295619

/-- `A016116(n)+A000045(n)` -/
def P18189158755887072692.Spec : Prop :=
  ∀ n, P18189158755887072692.a n = A295619 n

end A295619

/-! ## A295619.P1507519414621645333

`A109522(n)+A106624(n)`
-/

namespace A295619.P1507519414621645333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109522 n + A106624 n

end

end A295619.P1507519414621645333

namespace A295619

/-- `A109522(n)+A106624(n)` -/
def P1507519414621645333.Spec : Prop :=
  ∀ n, P1507519414621645333.a n = A295619 n

end A295619

/-! ## A295619.P16479218454047092843

`A174959(n)+A052955(n)`
-/

namespace A295619.P16479218454047092843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174959 n + A052955 n

end

end A295619.P16479218454047092843

namespace A295619

/-- `A174959(n)+A052955(n)` -/
def P16479218454047092843.Spec : Prop :=
  ∀ n, P16479218454047092843.a n = A295619 n

end A295619

/-! ## A295619.P9200634497091623783

`Δ[A052955(n)]+A000045(n)`
-/

namespace A295619.P9200634497091623783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052955 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + A000045 n

end

end A295619.P9200634497091623783

namespace A295619

/-- `Δ[A052955(n)]+A000045(n)` -/
def P9200634497091623783.Spec : Prop :=
  ∀ n, P9200634497091623783.a n = A295619 n

end A295619

/-! ## A295619.P5813732732852241437

`A212804(n+1)+A016116(n)`
-/

namespace A295619.P5813732732852241437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 (n + 1) + A016116 n

end

end A295619.P5813732732852241437

namespace A295619

/-- `A212804(n+1)+A016116(n)` -/
def P5813732732852241437.Spec : Prop :=
  ∀ n, P5813732732852241437.a n = A295619 n

end A295619

/-! ## A295619.P6555341190428365588

`A324969(n+1)+A131572(n)`
-/

namespace A295619.P6555341190428365588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324969 (n + 1) + A131572 n

end

end A295619.P6555341190428365588

namespace A295619

/-- `A324969(n+1)+A131572(n)` -/
def P6555341190428365588.Spec : Prop :=
  ∀ n, P6555341190428365588.a n = A295619 n

end A295619

/-! ## A295619.P2020949026128426685

`A001611(n)+A016116(n)-1`
-/

namespace A295619.P2020949026128426685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001611 n + (A016116 n - 1)

end

end A295619.P2020949026128426685

namespace A295619

/-- `A001611(n)+A016116(n)-1` -/
def P2020949026128426685.Spec : Prop :=
  ∀ n, P2020949026128426685.a n = A295619 n

end A295619

/-! ## A295619.P12886813480490497910

`A028892(n)+A016116(n+2)`
-/

namespace A295619.P12886813480490497910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028892 n + A016116 (n + 2)

end

end A295619.P12886813480490497910

namespace A295619

/-- `A028892(n)+A016116(n+2)` -/
def P12886813480490497910.Spec : Prop :=
  ∀ n, P12886813480490497910.a n = A295619 n

end A295619

/-! ## A295619.P16309246816701319892

`A158780(n+2)+A000045(n)`
-/

namespace A295619.P16309246816701319892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158780 (n + 2) + A000045 n

end

end A295619.P16309246816701319892

namespace A295619

/-- `A158780(n+2)+A000045(n)` -/
def P16309246816701319892.Spec : Prop :=
  ∀ n, P16309246816701319892.a n = A295619 n

end A295619

/-! ## A295619.P11519833864313349965

`A016116(n)-A152163(n+2)`
-/

namespace A295619.P11519833864313349965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 n - A152163 (n + 2)

end

end A295619.P11519833864313349965

namespace A295619

/-- `A016116(n)-A152163(n+2)` -/
def P11519833864313349965.Spec : Prop :=
  ∀ n, P11519833864313349965.a n = A295619 n

end A295619

/-! ## A295619.P420372271691188100

`A103609(2*n)+A016116(n)`
-/

namespace A295619.P420372271691188100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103609 (2 * n) + A016116 n

end

end A295619.P420372271691188100

namespace A295619

/-- `A103609(2*n)+A016116(n)` -/
def P420372271691188100.Spec : Prop :=
  ∀ n, P420372271691188100.a n = A295619 n

end A295619

/-! ## A295619.P5815924981025495601

`A200675(2*n)+A000045(n)`
-/

namespace A295619.P5815924981025495601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200675 (2 * n) + A000045 n

end

end A295619.P5815924981025495601

namespace A295619

/-- `A200675(2*n)+A000045(n)` -/
def P5815924981025495601.Spec : Prop :=
  ∀ n, P5815924981025495601.a n = A295619 n

end A295619

/-! ## A295619.P16454557714113609746

`A131575(or(1, n))+A000045(n)`
-/

namespace A295619.P16454557714113609746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131575 (Nat.lor 1 n) + A000045 n

end

end A295619.P16454557714113609746

namespace A295619

/-- `A131575(or(1, n))+A000045(n)` -/
def P16454557714113609746.Spec : Prop :=
  ∀ n, P16454557714113609746.a n = A295619 n

end A295619

/-! ## A295619.P8086262092046982402

`A000079(floor(n/2))+A000045(n)`
-/

namespace A295619.P8086262092046982402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 ⌊(n : ℚ) / 2⌋.toNat + A000045 n

end

end A295619.P8086262092046982402

namespace A295619

/-- `A000079(floor(n/2))+A000045(n)` -/
def P8086262092046982402.Spec : Prop :=
  ∀ n, P8086262092046982402.a n = A295619 n

end A295619

/-! ## A295619.P11744525756534228385

`Δ[A164090(n+1)]+A000045(n)`
-/

namespace A295619.P11744525756534228385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164090 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + A000045 n

end

end A295619.P11744525756534228385

namespace A295619

/-- `Δ[A164090(n+1)]+A000045(n)` -/
def P11744525756534228385.Spec : Prop :=
  ∀ n, P11744525756534228385.a n = A295619 n

end A295619

/-! ## A295619.P15181013414364023576

`∏[gcd(2, A280193(n))]+A000045(n)`
-/

namespace A295619.P15181013414364023576
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A280193 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + A000045 n

end

end A295619.P15181013414364023576

namespace A295619

/-- `∏[gcd(2, A280193(n))]+A000045(n)` -/
def P15181013414364023576.Spec : Prop :=
  ∀ n, P15181013414364023576.a n = A295619 n

end A295619

/-! ## A295619.P17240293480396263285

`A131577(A110654(n+1))+A000045(n)`
-/

namespace A295619.P17240293480396263285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 (A110654 (n + 1)).toNat + A000045 n

end

end A295619.P17240293480396263285

namespace A295619

/-- `A131577(A110654(n+1))+A000045(n)` -/
def P17240293480396263285.Spec : Prop :=
  ∀ n, P17240293480396263285.a n = A295619 n

end A295619

/-! ## A295619.P8701362196522255358

`A000225(A002265(2*n))+A000045(n)+1`
-/

namespace A295619.P8701362196522255358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (A002265 (2 * n)).toNat + (A000045 n + 1)

end

end A295619.P8701362196522255358

namespace A295619

/-- `A000225(A002265(2*n))+A000045(n)+1` -/
def P8701362196522255358.Spec : Prop :=
  ∀ n, P8701362196522255358.a n = A295619 n

end A295619

/-!
# A295620: Solution of the complementary equation a(n) = a(n-1) + 3*a(n-2) -2*a(n-3) - 2*a(n-4) + b(n-4), where a(0) = 1, a(1) = 2, a(2) = 3, a(3) = 4, b(0) = 5, b(1) = 6, b(2) = 7, b(3) = 8, and (a(n)) and (b(n)) are increasing complementary sequences.

The programs for A295620, there is no canonical definition to state claims against.
-/

/-! ## A295620.P4719166451531325322

`A094759(A295621(n)-A005673(n))`
-/

namespace A295620.P4719166451531325322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094759 (A295621 n - A005673 n).toNat

end

end A295620.P4719166451531325322

/-!
# A295621: Solution of the complementary equation a(n) = a(n-1) + 3*a(n-2) -2*a(n-3) - 2*a(n-4) + b(n-3), where a(0) = 1, a(1) = 2, a(2) = 3, a(3) = 4, b(0) = 5, b(1) = 6, b(2) = 7, b(3) = 8, and (a(n)) and (b(n)) are increasing complementary sequences.

The programs for A295621, there is no canonical definition to state claims against.
-/

/-! ## A295621.P4562654580960198520

`A094759(A295620(n)+A005673(n))`
-/

namespace A295621.P4562654580960198520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094759 (A295620 n + A005673 n).toNat

end

end A295621.P4562654580960198520

/-! ## A295621.P18408031433712108952

`or(A089828(n+1), A171635(A078213(n+1)))`
-/

namespace A295621.P18408031433712108952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A089828 (n + 1)) (A171635 (A078213 (n + 1)).toNat)

end

end A295621.P18408031433712108952

/-!
# A295622: Number of nonequivalent dissections of an n-gon into 3 polygons by nonintersecting diagonals rooted at a cell up to rotation.

The programs for A295622, the canonical program `A295622.P4121011836302950721` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A295622 has offset 5).

The definition of A295622 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A295622.P4121011836302950721

`∑[∑[lcm(2, n)+3]]`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A295622

/-- `∑[∑[lcm(2, n)+3]]` -/
def P4121011836302950721.Spec : Prop :=
  ∀ n, (P4121011836302950721.a n : ℤ) = A295622 (n + 5)

theorem P4121011836302950721.correct : P4121011836302950721.Spec := by
  intro n
  simp only [A295622, Nat.add_sub_cancel]

end A295622

/-! ## A295622.P15184785843942887036

`∑[∑[2*gcd(n, ∑[n])+3]]`
-/

namespace A295622.P15184785843942887036
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.gcd n (∑ j ∈ Finset.range (n + 1), f3 j) + 3

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A295622.P15184785843942887036

namespace A295622

/-- `∑[∑[2*gcd(n, ∑[n])+3]]` -/
def P15184785843942887036.Spec : Prop :=
  ∀ n, (P15184785843942887036.a n : ℤ) = A295622 (n + 5)

end A295622

/-! ## A295622.P15675832129128228382

`∑[∑[n*and(1, n)+n+3]]`
-/

namespace A295622.P15675832129128228382
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Nat.land 1 n + (n + 3)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A295622.P15675832129128228382

namespace A295622

/-- `∑[∑[n*and(1, n)+n+3]]` -/
def P15675832129128228382.Spec : Prop :=
  ∀ n, (P15675832129128228382.a n : ℤ) = A295622 (n + 5)

end A295622

/-! ## A295622.P3601312005418772502

`∑[∑[n+3]+floor((n+1)/2)²]`
-/

namespace A295622.P3601312005418772502
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) + ⌊(n + 1 : ℚ) / 2⌋ ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A295622.P3601312005418772502

namespace A295622

/-- `∑[∑[n+3]+floor((n+1)/2)²]` -/
def P3601312005418772502.Spec : Prop :=
  ∀ n, P3601312005418772502.a n = A295622 (n + 5)

end A295622

/-! ## A295622.P10940072111486861027

`A199771(n+1)+(n+1)*(n+2)`
-/

namespace A295622.P10940072111486861027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199771 (n + 1) + ((n + 1) * (n + 2) : ℤ)

end

end A295622.P10940072111486861027

namespace A295622

/-- `A199771(n+1)+(n+1)*(n+2)` -/
def P10940072111486861027.Spec : Prop :=
  ∀ n, P10940072111486861027.a n = A295622 (n + 5)

end A295622

/-! ## A295622.P18244186255912041334

`(A000982(n)/2+2*n+3)*(n+1)`
-/

namespace A295622.P18244186255912041334
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A000982 n : ℚ) / 2 + (2 * n + 3 : ℚ)) * (n + 1 : ℚ)

end

end A295622.P18244186255912041334

namespace A295622

/-- `(A000982(n)/2+2*n+3)*(n+1)` -/
def P18244186255912041334.Spec : Prop :=
  ∀ n, P18244186255912041334.a n = (A295622 (n + 5) : ℚ)

end A295622

/-! ## A295622.P11317665417352673579

`A037237(n)-A272459(n+1)`
-/

namespace A295622.P11317665417352673579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037237 n - A272459 (n + 1)

end

end A295622.P11317665417352673579

namespace A295622

/-- `A037237(n)-A272459(n+1)` -/
def P11317665417352673579.Spec : Prop :=
  ∀ n, P11317665417352673579.a n = A295622 (n + 5)

end A295622

/-! ## A295622.P9494052592725522045

`A203299(n+2)-A203246(n+2)`
-/

namespace A295622.P9494052592725522045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203299 (n + 2) - A203246 (n + 2)

end

end A295622.P9494052592725522045

namespace A295622

/-- `A203299(n+2)-A203246(n+2)` -/
def P9494052592725522045.Spec : Prop :=
  ∀ n, P9494052592725522045.a n = A295622 (n + 5)

theorem P9494052592725522045.correct : P9494052592725522045.Spec := by
  intro n
  simp only [A295622, Nat.add_sub_cancel, A295622.P9494052592725522045.a, A295622.P4121011836302950721.f2, A295622.P4121011836302950721.f1, A295622.P4121011836302950721.a, A203246, A203246.P15187326274312400021.f1, A203246.P15187326274312400021.a, A203299, A203299.P16754718405884152906.f2, A203299.P16754718405884152906.f1, A203299.P16754718405884152906.a, A199771, A199771.P1769207775715912863.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A295622

/-! ## A295622.P5385436753911807976

`A077043(n+1)+A246695(n+1)-1`
-/

namespace A295622.P5385436753911807976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077043 (n + 1) + (A246695 (n + 1) - 1)

end

end A295622.P5385436753911807976

namespace A295622

/-- `A077043(n+1)+A246695(n+1)-1` -/
def P5385436753911807976.Spec : Prop :=
  ∀ n, P5385436753911807976.a n = A295622 (n + 5)

end A295622

/-! ## A295622.P3556991450819079325

`A032438(n+1)+A143785(n+1)-A002620(n)`
-/

namespace A295622.P3556991450819079325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032438 (n + 1) + (A143785 (n + 1) - A002620 n)

end

end A295622.P3556991450819079325

namespace A295622

/-- `A032438(n+1)+A143785(n+1)-A002620(n)` -/
def P3556991450819079325.Spec : Prop :=
  ∀ n, P3556991450819079325.a n = A295622 (n + 5)

end A295622

/-! ## A295622.P6650615855050077340

`A000217(n+1)+A199771(n+1)+A000217(n+1)`
-/

namespace A295622.P6650615855050077340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n + 1) + (A199771 (n + 1) + A000217 (n + 1))

end

end A295622.P6650615855050077340

namespace A295622

/-- `A000217(n+1)+A199771(n+1)+A000217(n+1)` -/
def P6650615855050077340.Spec : Prop :=
  ∀ n, P6650615855050077340.a n = A295622 (n + 5)

end A295622

/-! ## A295622.P10912664890006306163

`ceil(∑[4*∑[A026741(n+2)]+1]/2)`
-/

namespace A295622.P10912664890006306163
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (∑ j ∈ Finset.range (n + 1), f2 j) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2⌉

end

end A295622.P10912664890006306163

namespace A295622

/-- `ceil(∑[4*∑[A026741(n+2)]+1]/2)` -/
def P10912664890006306163.Spec : Prop :=
  ∀ n, P10912664890006306163.a n = A295622 (n + 5)

end A295622

/-! ## A295622.P5341935283551013764

`A000982(n+1)+A005997(n+2)-1`
-/

namespace A295622.P5341935283551013764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000982 (n + 1) + (A005997 (n + 2) - 1)

end

end A295622.P5341935283551013764

namespace A295622

/-- `A000982(n+1)+A005997(n+2)-1` -/
def P5341935283551013764.Spec : Prop :=
  ∀ n, P5341935283551013764.a n = A295622 (n + 5)

end A295622

/-! ## A295622.P5143064860025407801

`A134479(n+1)+2*A034828(n+1)`
-/

namespace A295622.P5143064860025407801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134479 (n + 1) + 2 * A034828 (n + 1)

end

end A295622.P5143064860025407801

namespace A295622

/-- `A134479(n+1)+2*A034828(n+1)` -/
def P5143064860025407801.Spec : Prop :=
  ∀ n, P5143064860025407801.a n = A295622 (n + 5)

end A295622

/-! ## A295622.P16037891440378831349

`A000096(n+1)+(n+1)*A024206(n+2)`
-/

namespace A295622.P16037891440378831349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000096 (n + 1) + (n + 1 : ℤ) * A024206 (n + 2)

end

end A295622.P16037891440378831349

namespace A295622

/-- `A000096(n+1)+(n+1)*A024206(n+2)` -/
def P16037891440378831349.Spec : Prop :=
  ∀ n, P16037891440378831349.a n = A295622 (n + 5)

end A295622

/-! ## A295622.P10139596653441653030

`A034828(n+1)+A248851(n+1)-A034828(n)`
-/

namespace A295622.P10139596653441653030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034828 (n + 1) + (A248851 (n + 1) - A034828 n)

end

end A295622.P10139596653441653030

namespace A295622

/-- `A034828(n+1)+A248851(n+1)-A034828(n)` -/
def P10139596653441653030.Spec : Prop :=
  ∀ n, P10139596653441653030.a n = A295622 (n + 5)

end A295622

/-! ## A295622.P1069993117737329933

`A000217(n+1)+A008619(n+1)*A092530(n+1)`
-/

namespace A295622.P1069993117737329933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n + 1) + A008619 (n + 1) * A092530 (n + 1)

end

end A295622.P1069993117737329933

namespace A295622

/-- `A000217(n+1)+A008619(n+1)*A092530(n+1)` -/
def P1069993117737329933.Spec : Prop :=
  ∀ n, P1069993117737329933.a n = A295622 (n + 5)

end A295622

/-! ## A295622.P1187376483160392868

`(n+1)/2*A116940(n+2)`
-/

namespace A295622.P1187376483160392868
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / 2 * (A116940 (n + 2) : ℚ)

end

end A295622.P1187376483160392868

namespace A295622

/-- `(n+1)/2*A116940(n+2)` -/
def P1187376483160392868.Spec : Prop :=
  ∀ n, P1187376483160392868.a n = (A295622 (n + 5) : ℚ)

end A295622

/-! ## A295622.P2228929637116531322

`A212561(n+2)+(n+1)*(n+2)`
-/

namespace A295622.P2228929637116531322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212561 (n + 2) + ((n + 1) * (n + 2) : ℤ)

end

end A295622.P2228929637116531322

namespace A295622

/-- `A212561(n+2)+(n+1)*(n+2)` -/
def P2228929637116531322.Spec : Prop :=
  ∀ n, P2228929637116531322.a n = A295622 (n + 5)

end A295622

/-! ## A295622.P2314184287724646477

`A003453(2*(n+3))-A006584(n+1)`
-/

namespace A295622.P2314184287724646477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003453 (2 * (n + 3)) - A006584 (n + 1)

end

end A295622.P2314184287724646477

namespace A295622

/-- `A003453(2*(n+3))-A006584(n+1)` -/
def P2314184287724646477.Spec : Prop :=
  ∀ n, P2314184287724646477.a n = A295622 (n + 5)

end A295622

/-!
# A295623: a(n) = n! * [x^n] exp(n*x*exp(x)).

The programs for A295623, there is no canonical definition to state claims against.
-/

/-! ## A295623.P17762559633139556662

`A187105(A004277(n²))`
-/

namespace A295623.P17762559633139556662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187105 (A004277 (n ^ 2)).toNat

end

end A295623.P17762559633139556662

/-! ## A295623.P4008379516707072540

`A187105(A336489(n+2))`
-/

namespace A295623.P4008379516707072540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187105 (A336489 (n + 2)).toNat

end

end A295623.P4008379516707072540

/-!
# A295629: Number of partitions of n into two parts such that not both are prime.

The programs for A295629, there is no canonical definition to state claims against.
-/

/-! ## A295629.P18345784372025408051

`A004526(n+1)-A061358(n+1)`
-/

namespace A295629.P18345784372025408051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (n + 1) - A061358 (n + 1)

end

end A295629.P18345784372025408051

/-! ## A295629.P10528054129348441256

`∑[n%2-Δ[A061358(n)]]`
-/

namespace A295629.P10528054129348441256
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061358 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n % 2 : ℕ) : ℤ) - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A295629.P10528054129348441256

/-! ## A295629.P6608681439971551206

`ceil((n-A073610(n+1))/2)`
-/

namespace A295629.P6608681439971551206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((n : ℤ) - A073610 (n + 1) : ℚ) / 2⌉

end

end A295629.P6608681439971551206

/-! ## A295629.P9922922430980560629

`A110654(n)-A061358(n+1)`
-/

namespace A295629.P9922922430980560629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 n - A061358 (n + 1)

end

end A295629.P9922922430980560629

/-! ## A295629.P15204689530487469958

`A110654(n-A073610(n+1))`
-/

namespace A295629.P15204689530487469958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 ((n : ℤ) - A073610 (n + 1)).toNat

end

end A295629.P15204689530487469958

/-! ## A295629.P7836566365270379516

`∑[A000035(n)-Δ[A061358(n)]]`
-/

namespace A295629.P7836566365270379516
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061358 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A295629.P7836566365270379516

/-! ## A295629.P11225141651823971694

`abs(A001057(n))-A061358(n+1)`
-/

namespace A295629.P11225141651823971694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A001057 n| - A061358 (n + 1)

end

end A295629.P11225141651823971694

/-! ## A295629.P1074937188965084090

`∑[A000035(n)]-A061358(n+1)`
-/

namespace A295629.P1074937188965084090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A061358 (n + 1)

end

end A295629.P1074937188965084090

/-! ## A295629.P10026364519550524252

`A062610(n+1)+A062602(n+1)`
-/

namespace A295629.P10026364519550524252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062610 (n + 1) + A062602 (n + 1)

end

end A295629.P10026364519550524252

/-! ## A295629.P1417118350664825787

`A004526(n+1-A073610(n+1))`
-/

namespace A295629.P1417118350664825787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 ((n + 1 : ℤ) - A073610 (n + 1)).toNat

end

end A295629.P1417118350664825787

/-! ## A295629.P3395305970238766280

`∑[A001222(2-(-1)^n)]-A061358(n+1)`
-/

namespace A295629.P3395305970238766280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (2 - (-1) ^ n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A061358 (n + 1)

end

end A295629.P3395305970238766280

/-! ## A295629.P16851111286736889447

`A059169(2*n+1)-A061358(n+1)`
-/

namespace A295629.P16851111286736889447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059169 (2 * n + 1) - A061358 (n + 1)

end

end A295629.P16851111286736889447

/-! ## A295629.P4614776181410886610

`floor((n+1)/A020639((n+1)*(n+2))-A061358(n+1))`
-/

namespace A295629.P4614776181410886610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℚ) / (A020639 ((n + 1) * (n + 2)) : ℚ) - (A061358 (n + 1) : ℚ)⌋

end

end A295629.P4614776181410886610

/-!
# A295630: Number of partitions of n into two distinct parts that are not both prime.

The programs for A295630, there is no canonical definition to state claims against.
-/

/-! ## A295630.P16950095714782100680

`floor((n-A073610(n+1))/2)`
-/

namespace A295630.P16950095714782100680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n : ℤ) - A073610 (n + 1) : ℚ) / 2⌋

end

end A295630.P16950095714782100680

/-! ## A295630.P11439430144054282762

`floor(n/2-A117929(n+1))`
-/

namespace A295630.P11439430144054282762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 2 - (A117929 (n + 1) : ℚ)⌋

end

end A295630.P11439430144054282762

/-! ## A295630.P373781689334688218

`floor(n/2)-A117929(-xor(n, -1))`
-/

namespace A295630.P373781689334688218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 2⌋ - A117929 (-Int.xor (n : ℤ) (-1)).toNat

end

end A295630.P373781689334688218

/-! ## A295630.P12960377354779440041

`floor(n/2)-A117929(Δ[n²]-n)`
-/

namespace A295630.P12960377354779440041
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 2⌋ - A117929 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat

end

end A295630.P12960377354779440041

/-! ## A295630.P12954584864016449544

`A004526(n-A073610(n+1))`
-/

namespace A295630.P12954584864016449544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 ((n : ℤ) - A073610 (n + 1)).toNat

end

end A295630.P12954584864016449544

/-! ## A295630.P6209866553746157062

`A302479(n+1)+A062602(n+1)`
-/

namespace A295630.P6209866553746157062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302479 (n + 1) + A062602 (n + 1)

end

end A295630.P6209866553746157062

/-! ## A295630.P6622609227260084266

`A062298(n+1)-A171691(n+1)`
-/

namespace A295630.P6622609227260084266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062298 (n + 1) - A171691 (n + 1)

end

end A295630.P6622609227260084266

/-! ## A295630.P1697881440279001869

`A004526(n-2*A117929(n+1))`
-/

namespace A295630.P1697881440279001869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 ((n : ℤ) - 2 * A117929 (n + 1)).toNat

end

end A295630.P1697881440279001869

/-! ## A295630.P8499733764876535251

`∑[char[A018252(n+1)]]-A062610(n+1)`
-/

namespace A295630.P8499733764876535251
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A062610 (n + 1)

end

end A295630.P8499733764876535251

/-! ## A295630.P14271875142579725451

`A002265(2*(n-A073610(n+1)))`
-/

namespace A295630.P14271875142579725451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (2 * ((n : ℤ) - A073610 (n + 1))).toNat

end

end A295630.P14271875142579725451

/-!
# A295631: Numbers k such that (38*10^k + 187)/9 is prime.

The programs for A295631, there is no canonical definition to state claims against.
-/

/-! ## A295631.P14701501117715485021

`eq[A121481(n), A300239(n+1)]`
-/

namespace A295631.P14701501117715485021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121481 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300239 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A295631.P14701501117715485021

/-! ## A295631.P102499007247806031

`eq[A084115(n+1), A362379(n)]`
-/

namespace A295631.P102499007247806031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084115 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362379 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A295631.P102499007247806031

/-! ## A295631.P5641877869477044813

`eq[A162986(n), A318577(n+1)]`
-/

namespace A295631.P5641877869477044813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162986 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318577 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A295631.P5641877869477044813

/-! ## A295631.P11933919773231833871

`eq[A166291(n), A318577(n+1)]`
-/

namespace A295631.P11933919773231833871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166291 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318577 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A295631.P11933919773231833871

/-! ## A295631.P5245576154574638720

`eq[A211356(n), A347708(n+1)]`
-/

namespace A295631.P5245576154574638720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211356 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347708 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A295631.P5245576154574638720

/-!
# A295632: Write 1/Product_{n > 1}(1 - 1/n^s) in the form Product_{n > 1}(1 + a(n)/n^s).

The programs for A295632, there is no canonical definition to state claims against.
-/

/-! ## A295632.P6286316751828800809

`A068452(A071187(n+2))`
-/

namespace A295632.P6286316751828800809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068452 (A071187 (n + 2)).toNat

end

end A295632.P6286316751828800809

/-! ## A295632.P3549260900090756807

`A220420(A052409(n+2))`
-/

namespace A295632.P3549260900090756807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220420 (A052409 (n + 2)).toNat

end

end A295632.P3549260900090756807

/-! ## A295632.P4214607242067671895

`A117971(A000005(n+2)+1)`
-/

namespace A295632.P4214607242067671895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117971 (A000005 (n + 2) + 1).toNat

end

end A295632.P4214607242067671895

/-! ## A295632.P197678675379996316

`A048298(A071187(n+2)-1)`
-/

namespace A295632.P197678675379996316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048298 (A071187 (n + 2) - 1).toNat

end

end A295632.P197678675379996316

/-! ## A295632.P16744472287560208990

`A117971(A032741(n+2)+2)`
-/

namespace A295632.P16744472287560208990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117971 (A032741 (n + 2) + 2).toNat

end

end A295632.P16744472287560208990

/-! ## A295632.P6829381099937042334

`A099894(A071187(n+2)-2)`
-/

namespace A295632.P6829381099937042334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099894 (A071187 (n + 2) - 2).toNat

end

end A295632.P6829381099937042334

/-! ## A295632.P11324111788951254111

`A001222(xor(65, A100577(n+2)))`
-/

namespace A295632.P11324111788951254111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.xor 65 (A100577 (n + 2))).toNat

end

end A295632.P11324111788951254111

/-! ## A295632.P13665693697240953976

`A220420(A000005(n+2)-1)%6`
-/

namespace A295632.P13665693697240953976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A220420 (A000005 (n + 2) - 1).toNat) 6

end

end A295632.P13665693697240953976

/-!
# A295635: Write 2 - Zeta(s) in the form 1/Product_{n > 1}(1 + a(n)/n^s).

The programs for A295635, there is no canonical definition to state claims against.
-/

/-! ## A295635.P4000895107473836381

`A134488(A339846(n+2)%A306202(2*n+1))`
-/

namespace A295635.P4000895107473836381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134488 (Int.tmod (A339846 (n + 2)) (A306202 (2 * n + 1))).toNat

end

end A295635.P4000895107473836381

/-! ## A295635.P4902983051058272119

`A335079(A065634(A335079(n+2))*A078598(n+1))`
-/

namespace A295635.P4902983051058272119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335079 (A065634 (A335079 (n + 2)).toNat * A078598 (n + 1)).toNat

end

end A295635.P4902983051058272119

/-! ## A295635.P13480815989683455853

`A321451(A000005(n+2)%A086322(n+1))`
-/

namespace A295635.P13480815989683455853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321451 (Int.tmod (A000005 (n + 2)) (A086322 (n + 1))).toNat

end

end A295635.P13480815989683455853

/-! ## A295635.P13115020300284963730

`A321451(A000005(n+2))%A245022(2*n+1)`
-/

namespace A295635.P13115020300284963730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A321451 (A000005 (n + 2)).toNat) (A245022 (2 * n + 1))

end

end A295635.P13115020300284963730

/-! ## A295635.P4752039314181130466

`A318343(A001055(n+2)%A092789(2*n+3))`
-/

namespace A295635.P4752039314181130466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318343 (Int.tmod (A001055 (n + 2)) (A092789 (2 * n + 3))).toNat

end

end A295635.P4752039314181130466

/-!
# A295636: Write 2 - Zeta(s) in the form Product_{n > 1}(1 - a(n)/n^s).

The programs for A295636, there is no canonical definition to state claims against.
-/

/-! ## A295636.P3536651650214269592

`A138768(A342084(n+2))+A000007(A033816(n))`
-/

namespace A295636.P3536651650214269592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138768 (A342084 (n + 2)).toNat + A000007 (A033816 n).toNat

end

end A295636.P3536651650214269592

/-! ## A295636.P16693488617620789106

`A138768(A342084(n+2))+A000038(A293495(n))`
-/

namespace A295636.P16693488617620789106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138768 (A342084 (n + 2)).toNat + A000038 (A293495 n).toNat

end

end A295636.P16693488617620789106

/-! ## A295636.P14873629921319001151

`A006519(A023248(n+1))*A138768(A342084(n+2))`
-/

namespace A295636.P14873629921319001151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (A023248 (n + 1)).toNat * A138768 (A342084 (n + 2)).toNat

end

end A295636.P14873629921319001151

/-! ## A295636.P11908695909227521080

`A000034(A116940(2*n))*A138768(A342084(n+2))`
-/

namespace A295636.P11908695909227521080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A116940 (2 * n)).toNat * A138768 (A342084 (n + 2)).toNat

end

end A295636.P11908695909227521080

/-! ## A295636.P14705374255334586091

`A138768(A342084(n+2))+A049084(A246308(n))`
-/

namespace A295636.P14705374255334586091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138768 (A342084 (n + 2)).toNat + A049084 (A246308 n).toNat

end

end A295636.P14705374255334586091

/-!
# A295637: Maximum k such that there are k nonisomorphic n-vertex trees with the same degree sequence.

The programs for A295637, there is no canonical definition to state claims against.
-/

/-! ## A295637.P16450038160242809567

`A029092(round(sqrt(A319781(n))))`
-/

namespace A295637.P16450038160242809567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029092 (SequenceMachineLib.roundAway (Real.sqrt (A319781 n : ℝ))).toNat

end

end A295637.P16450038160242809567

/-! ## A295637.P6639209819802604159

`ceil(A018749(n+1)/30)`
-/

namespace A295637.P6639209819802604159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A018749 (n + 1) : ℚ) / 30⌉

end

end A295637.P6639209819802604159

/-! ## A295637.P10166438551528457116

`ceil(A180212(n+1)/63)`
-/

namespace A295637.P10166438551528457116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A180212 (n + 1) : ℚ) / 63⌉

end

end A295637.P10166438551528457116

/-! ## A295637.P13605586776180351407

`A112384(A001591(n))`
-/

namespace A295637.P13605586776180351407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112384 (A001591 n).toNat

end

end A295637.P13605586776180351407

/-! ## A295637.P17265298532160925101

`A101906(A023422(n))`
-/

namespace A295637.P17265298532160925101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101906 (A023422 n).toNat

end

end A295637.P17265298532160925101

/-!
# A295638: Take the sequence of nonnegative integers whose decimal digits are not in strictly increasing order. Partition the sequence into subsequences whose elements are consecutive integers. Then a(n) is the number of elements in the n-th partition.

The programs for A295638, there is no canonical definition to state claims against.
-/

/-! ## A295638.P9892904756814955221

`Δ[record[A009993(n+1)-A118759(n)]]`
-/

namespace A295638.P9892904756814955221
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009993 (n + 1) - A118759 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A295638.P9892904756814955221

/-! ## A295638.P18375216152826604822

`record[∑{digits}[A262360(n+2), #]]`
-/

namespace A295638.P18375216152826604822
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262360 (n + 2)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f2 n).natAbs).map fun (x : ℕ) => x).sum

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A295638.P18375216152826604822

/-! ## A295638.P234418583714097704

`A271534(a(n-1)+1)` with `a(0)=2`
-/

namespace A295638.P234418583714097704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A271534 (a (n - 1) + 1).toNat

end

end A295638.P234418583714097704

/-! ## A295638.P666331742423547151

`or(n, A124482(n+1))+2`
-/

namespace A295638.P666331742423547151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (A124482 (n + 1)) + 2

end

end A295638.P666331742423547151

/-! ## A295638.P984787744574552326

`24^A046169(n+1)+n+1`
-/

namespace A295638.P984787744574552326
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (24 : ℚ) ^ (A046169 (n + 1) : ℤ) + (n : ℚ) + 1

end

end A295638.P984787744574552326

/-!
# A295642: Lexicographically earliest sequence of distinct prime numbers such that, for any n > 0, a(n) AND n = n (where AND denotes the binary AND operator).

The programs for A295642, there is no canonical definition to state claims against.
-/

/-! ## A295642.P16756190930653901485

`A000040(A370728(n+1))`
-/

namespace A295642.P16756190930653901485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A370728 (n + 1)).toNat

end

end A295642.P16756190930653901485

/-! ## A295642.P7545730459250301087

`A008578(A370728(n+1)+1)`
-/

namespace A295642.P7545730459250301087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A370728 (n + 1) + 1).toNat

end

end A295642.P7545730459250301087

/-!
# A295643: Squares repeated 4 times; a(n) = floor(n/4)^2.

The programs for A295643, the canonical program `A295643.P11545441958914884330` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A295643 has offset 0).

The definition of A295643 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(n/4)²` (program `A295643.P11545441958914884330`, by `A295643.P11545441958914884330.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A295643.P11545441958914884330

`floor(n/4)²`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A295643

/-- `floor(n/4)²` -/
def P11545441958914884330.Spec : Prop :=
  ∀ n, P11545441958914884330.a n = A295643 n

theorem P11545441958914884330.correct : P11545441958914884330.Spec := by
  intro n
  simp only [A295643]

end A295643

/-! ## A295643.P12658448807835177906

`a(n-1)+2*a(n-4)-2*a(n-5)-a(n-8)+a(n-9)` with `a(0)=0, a(1)=0, a(2)=0, a(3)=0, a(4)=1, a(5)=1, a(6)=1, a(7)=1, a(8)=4`
-/

namespace A295643.P12658448807835177906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 0, 0, 1, 1, 1, 1, 4] fun n a =>
  a (n - 1) + 2 * a (n - 4) - 2 * a (n - 5) - a (n - 8) + a (n - 9)

end

end A295643.P12658448807835177906

namespace A295643

/-- `a(n-1)+2*a(n-4)-2*a(n-5)-a(n-8)+a(n-9)` -/
def P12658448807835177906.Spec : Prop :=
  ∀ n, P12658448807835177906.a n = A295643 n

end A295643

/-! ## A295643.P1166105385653289575

`ceil((and(n, -4)/4)²)`
-/

namespace A295643.P1166105385653289575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((Int.land (n : ℤ) (-4) : ℚ) / 4) ^ 2⌉

end

end A295643.P1166105385653289575

namespace A295643

/-- `ceil((and(n, -4)/4)²)` -/
def P1166105385653289575.Spec : Prop :=
  ∀ n, P1166105385653289575.a n = A295643 n

end A295643

/-! ## A295643.P3846191656728508915

`round((and(n, -4)/4)²)`
-/

namespace A295643.P3846191656728508915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((Int.land (n : ℤ) (-4) : ℚ) / 4) ^ 2)

end

end A295643.P3846191656728508915

namespace A295643

/-- `round((and(n, -4)/4)²)` -/
def P3846191656728508915.Spec : Prop :=
  ∀ n, P3846191656728508915.a n = A295643 n

end A295643

/-! ## A295643.P14257028283166555609

`∑[n%or(1, gcd(n, ∑[n]))]`
-/

namespace A295643.P14257028283166555609
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % Nat.lor 1 (Nat.gcd n (∑ j ∈ Finset.range (n + 1), f2 j))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A295643.P14257028283166555609

namespace A295643

/-- `∑[n%or(1, gcd(n, ∑[n]))]` -/
def P14257028283166555609.Spec : Prop :=
  ∀ n, (P14257028283166555609.a n : ℤ) = A295643 n

end A295643

/-! ## A295643.P148601862882724779

`((or(3, n)-3)/2)²/4`
-/

namespace A295643.P148601862882724779
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((Nat.lor 3 n : ℤ) - 3 : ℚ) / 2) ^ 2 / 4

end

end A295643.P148601862882724779

namespace A295643

/-- `((or(3, n)-3)/2)²/4` -/
def P148601862882724779.Spec : Prop :=
  ∀ n, P148601862882724779.a n = (A295643 n : ℚ)

end A295643

/-! ## A295643.P10439577056383535888

`floor(n/4)^gcd(2, 2*n)`
-/

namespace A295643.P10439577056383535888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 4⌋ ^ Nat.gcd 2 (2 * n)

end

end A295643.P10439577056383535888

namespace A295643

/-- `floor(n/4)^gcd(2, 2*n)` -/
def P10439577056383535888.Spec : Prop :=
  ∀ n, P10439577056383535888.a n = A295643 n

theorem P10439577056383535888.correct : P10439577056383535888.Spec := by
  intro n
  simp only [A295643, Nat.add_sub_cancel, A295643.P10439577056383535888.a, A295643.P11545441958914884330.a, SequenceMachineLib.memo_apply]
  try simp

end A295643

/-! ## A295643.P15728923843364742556

`floor(∑[a(n-4)²]²)` with `a(0)=0, a(1)=0, a(2)=0, a(3)=0, a(4)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A295643.P15728923843364742556
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 0, 0, 1] fun n f1 =>
  f1 (n - 4) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A295643.P15728923843364742556

namespace A295643

/-- `floor(∑[a(n-4)²]²)` -/
def P15728923843364742556.Spec : Prop :=
  ∀ n, (P15728923843364742556.a n : ℤ) = A295643 n

end A295643

/-! ## A295643.P46244640475318008

`A008794(floor(n/2))`
-/

namespace A295643.P46244640475318008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008794 ⌊(n : ℚ) / 2⌋.toNat

end

end A295643.P46244640475318008

namespace A295643

/-- `A008794(floor(n/2))` -/
def P46244640475318008.Spec : Prop :=
  ∀ n, P46244640475318008.a n = A295643 n

end A295643

/-! ## A295643.P8064518463504189327

`A008217(or(1, n)-1)`
-/

namespace A295643.P8064518463504189327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008217 (Nat.lor 1 n - 1)

end

end A295643.P8064518463504189327

namespace A295643

/-- `A008217(or(1, n)-1)` -/
def P8064518463504189327.Spec : Prop :=
  ∀ n, P8064518463504189327.a n = A295643 n

end A295643

/-! ## A295643.P13303547716073886886

`A008217(n-and(1, n))`
-/

namespace A295643.P13303547716073886886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008217 (n - Nat.land 1 n)

end

end A295643.P13303547716073886886

namespace A295643

/-- `A008217(n-and(1, n))` -/
def P13303547716073886886.Spec : Prop :=
  ∀ n, P13303547716073886886.a n = A295643 n

end A295643

/-! ## A295643.P10868323653026146257

`A000290(A002265(n))`
-/

namespace A295643.P10868323653026146257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (A002265 n).toNat

end

end A295643.P10868323653026146257

namespace A295643

/-- `A000290(A002265(n))` -/
def P10868323653026146257.Spec : Prop :=
  ∀ n, P10868323653026146257.a n = A295643 n

end A295643

/-! ## A295643.P6347272868068388602

`A008217(A052928(n))`
-/

namespace A295643.P6347272868068388602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008217 (A052928 n).toNat

end

end A295643.P6347272868068388602

namespace A295643

/-- `A008217(A052928(n))` -/
def P6347272868068388602.Spec : Prop :=
  ∀ n, P6347272868068388602.a n = A295643 n

end A295643

/-! ## A295643.P5439607649302833962

`A002620(A092533(n))`
-/

namespace A295643.P5439607649302833962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (A092533 n).toNat

end

end A295643.P5439607649302833962

namespace A295643

/-- `A002620(A092533(n))` -/
def P5439607649302833962.Spec : Prop :=
  ∀ n, P5439607649302833962.a n = A295643 n

end A295643

/-! ## A295643.P13639745029941147429

`A002620(A122461(n))`
-/

namespace A295643.P13639745029941147429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (A122461 n).toNat

end

end A295643.P13639745029941147429

namespace A295643

/-- `A002620(A122461(n))` -/
def P13639745029941147429.Spec : Prop :=
  ∀ n, P13639745029941147429.a n = A295643 n

end A295643

/-! ## A295643.P11656073649845900056

`A008133(A187321(n))`
-/

namespace A295643.P11656073649845900056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008133 (A187321 n).toNat

end

end A295643.P11656073649845900056

namespace A295643

/-- `A008133(A187321(n))` -/
def P11656073649845900056.Spec : Prop :=
  ∀ n, P11656073649845900056.a n = A295643 n

end A295643

/-! ## A295643.P11873689762040321348

`A211547(A057353(n))`
-/

namespace A295643.P11873689762040321348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211547 (A057353 n).toNat

end

end A295643.P11873689762040321348

namespace A295643

/-- `A211547(A057353(n))` -/
def P11873689762040321348.Spec : Prop :=
  ∀ n, P11873689762040321348.a n = A295643 n

end A295643

/-! ## A295643.P14037390981075517750

`A296141(A267458(n))`
-/

namespace A295643.P14037390981075517750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296141 (A267458 n).toNat

end

end A295643.P14037390981075517750

namespace A295643

/-- `A296141(A267458(n))` -/
def P14037390981075517750.Spec : Prop :=
  ∀ n, P14037390981075517750.a n = A295643 n

end A295643

/-! ## A295643.P8339919627081626136

`A000290(A008621(n)-1)`
-/

namespace A295643.P8339919627081626136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (A008621 n - 1).toNat

end

end A295643.P8339919627081626136

namespace A295643

/-- `A000290(A008621(n)-1)` -/
def P8339919627081626136.Spec : Prop :=
  ∀ n, P8339919627081626136.a n = A295643 n

end A295643

/-! ## A295643.P17164499663398972564

`A002620(2*A002265(n))`
-/

namespace A295643.P17164499663398972564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (2 * A002265 n).toNat

end

end A295643.P17164499663398972564

namespace A295643

/-- `A002620(2*A002265(n))` -/
def P17164499663398972564.Spec : Prop :=
  ∀ n, P17164499663398972564.a n = A295643 n

end A295643

/-!
# A295646: Number of n X n 0..1 arrays with each 1 horizontally or vertically adjacent to 0, 1, 3 or 4 1's.

The programs for A295646, there is no canonical definition to state claims against.
-/

/-! ## A295646.P5728954834820261922

`A295652(∑[4*n]+1)`
-/

namespace A295646.P5728954834820261922
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295652 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A295646.P5728954834820261922

/-! ## A295646.P8101929242753208233

`record[gcd(A003987(n), A295652(n+1))]`
-/

namespace A295646.P8101929242753208233
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003987 n) (A295652 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A295646.P8101929242753208233

/-! ## A295646.P17772371449816634853

`record[A203994(n+1)*A295652(n+1)]`
-/

namespace A295646.P17772371449816634853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203994 (n + 1) * A295652 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A295646.P17772371449816634853

/-! ## A295646.P1708365449368507890

`A295652(A001844(n))+A054900(n)`
-/

namespace A295646.P1708365449368507890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295652 (A001844 n).toNat + A054900 n

end

end A295646.P1708365449368507890

/-! ## A295646.P9572219565687739542

`A295652(A001844(n))+A180472(n)`
-/

namespace A295646.P9572219565687739542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295652 (A001844 n).toNat + A180472 n

end

end A295646.P9572219565687739542

/-!
# A295647: Number of nX3 0..1 arrays with each 1 horizontally or vertically adjacent to 0, 1, 3 or 4 1s.

The programs for A295647, there is no canonical definition to state claims against.
-/

/-! ## A295647.P792737961224130041

`A295652(∑[n+2]+4)`
-/

namespace A295647.P792737961224130041
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295652 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A295647.P792737961224130041

/-! ## A295647.P17194865520328573334

`lcm(A033999(n), A295652(A167614(n+1)))`
-/

namespace A295647.P17194865520328573334
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A295652 (A167614 (n + 1)).toNat)

end

end A295647.P17194865520328573334

/-! ## A295647.P6214189772742421774

`or(A000038(n), A295652(A167614(n+1)))`
-/

namespace A295647.P6214189772742421774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000038 n) (A295652 (A167614 (n + 1)).toNat)

end

end A295647.P6214189772742421774

/-! ## A295647.P4029942506665580861

`A295652(A167614(n+1))+A000035(2*n)`
-/

namespace A295647.P4029942506665580861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295652 (A167614 (n + 1)).toNat + A000035 (2 * n)

end

end A295647.P4029942506665580861

/-! ## A295647.P15875544617382015014

`A295652(A167614(n+1))%A203815(n+1)`
-/

namespace A295647.P15875544617382015014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A295652 (A167614 (n + 1)).toNat) (A203815 (n + 1))

end

end A295647.P15875544617382015014

/-!
# A295648: Number of nX4 0..1 arrays with each 1 horizontally or vertically adjacent to 0, 1, 3 or 4 1s.

The programs for A295648, there is no canonical definition to state claims against.
-/

/-! ## A295648.P785967994371506747

`A295652(A141214(n)+7)`
-/

namespace A295648.P785967994371506747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295652 (A141214 n + 7).toNat

end

end A295648.P785967994371506747

/-! ## A295648.P591529644183112226

`A295652(A052905(n)+9)`
-/

namespace A295648.P591529644183112226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295652 (A052905 n + 9).toNat

end

end A295648.P591529644183112226

/-! ## A295648.P2191078295350888602

`A295652(A055999(n)+10)`
-/

namespace A295648.P2191078295350888602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295652 (A055999 n + 10).toNat

end

end A295648.P2191078295350888602

/-! ## A295648.P3604471699220299691

`A295652(A167614(n+2)+1)`
-/

namespace A295648.P3604471699220299691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295652 (A167614 (n + 2) + 1).toNat

end

end A295648.P3604471699220299691

/-! ## A295648.P3590349799698933857

`A295652(Δ[A264443(n)-n²])`
-/

namespace A295648.P3590349799698933857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295652 (f1 (n + 1) - f1 n).toNat

end

end A295648.P3590349799698933857

/-!
# A295649: Number of n X 5 0..1 arrays with each 1 horizontally or vertically adjacent to 0, 1, 3 or 4 1's.

The programs for A295649, there is no canonical definition to state claims against.
-/

/-! ## A295649.P9322859447854059803

`A295652(A167499(n+3))`
-/

namespace A295649.P9322859447854059803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295652 (A167499 (n + 3)).toNat

end

end A295649.P9322859447854059803

/-! ## A295649.P5617782054806219694

`A295652(A038722(Δ[A023545(n+1)]))`
-/

namespace A295649.P5617782054806219694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295652 (A038722 (f1 (n + 1) - f1 n).toNat).toNat

end

end A295649.P5617782054806219694

/-! ## A295649.P3691843175159054232

`A295652(Δ[A264443(n)])`
-/

namespace A295649.P3691843175159054232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295652 (f1 (n + 1) - f1 n).toNat

end

end A295649.P3691843175159054232

/-! ## A295649.P1395189028580884595

`A295652(A374005(n+1))`
-/

namespace A295649.P1395189028580884595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295652 (A374005 (n + 1)).toNat

end

end A295649.P1395189028580884595

/-! ## A295649.P7651071889070702656

`A295652(A046691(n+3))`
-/

namespace A295649.P7651071889070702656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295652 (A046691 (n + 3)).toNat

end

end A295649.P7651071889070702656

/-!
# A295650: Number of nX6 0..1 arrays with each 1 horizontally or vertically adjacent to 0, 1, 3 or 4 1s.

The programs for A295650, there is no canonical definition to state claims against.
-/

/-! ## A295650.P13667783214073560772

`A295652(eq[7, A131818(n+1)])`
-/

namespace A295650.P13667783214073560772
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295652 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A295650.P13667783214073560772

/-! ## A295650.P9654482752419954254

`A295652(Δ[A023545(n+1)]+10)`
-/

namespace A295650.P9654482752419954254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295652 (f1 (n + 1) - f1 n + 10).toNat

end

end A295650.P9654482752419954254

/-! ## A295650.P2543180737987692077

`A295652(A055999(n+4)-Δ[n²])`
-/

namespace A295650.P2543180737987692077
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295652 (A055999 (n + 4) - ((f1 (n + 1) : ℤ) - (f1 n : ℤ))).toNat

end

end A295650.P2543180737987692077

/-! ## A295650.P16718055276325576483

`A295652(A374007(n+1))`
-/

namespace A295650.P16718055276325576483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295652 (A374007 (n + 1)).toNat

end

end A295650.P16718055276325576483

/-! ## A295650.P17131751266582259013

`A295652(A052905(n+3))`
-/

namespace A295650.P17131751266582259013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295652 (A052905 (n + 3)).toNat

end

end A295650.P17131751266582259013

/-!
# A295651: Number of nX7 0..1 arrays with each 1 horizontally or vertically adjacent to 0, 1, 3 or 4 1s.

The programs for A295651, there is no canonical definition to state claims against.
-/

/-! ## A295651.P16196224368707569421

`A295652(A000124(n+6)+6)`
-/

namespace A295651.P16196224368707569421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295652 (A000124 (n + 6) + 6).toNat

end

end A295651.P16196224368707569421

/-! ## A295651.P271532692912416497

`A295652(eq[6, A002262(n)]+1)`
-/

namespace A295651.P271532692912416497
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295652 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A295651.P271532692912416497

/-! ## A295651.P14161546652496039594

`A295652(A179865(n+9)-8-2*n)`
-/

namespace A295651.P14161546652496039594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295652 (A179865 (n + 9) - 8 - (2 * n : ℤ)).toNat

end

end A295651.P14161546652496039594

/-! ## A295651.P10093251762137565915

`A295652(A374008(n+1))`
-/

namespace A295651.P10093251762137565915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295652 (A374008 (n + 1)).toNat

end

end A295651.P10093251762137565915

/-! ## A295651.P18124193944981385236

`A295652(A055999(n+4))`
-/

namespace A295651.P18124193944981385236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295652 (A055999 (n + 4)).toNat

end

end A295651.P18124193944981385236

/-!
# A295652: T(n,k)=Number of nXk 0..1 arrays with each 1 horizontally or vertically adjacent to 0, 1, 3 or 4 1s.

The programs for A295652, there is no canonical definition to state claims against.
-/

/-! ## A295652.P11373280027307775018

`A295253(n+1)+A285006(A174545(n))`
-/

namespace A295652.P11373280027307775018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295253 (n + 1) + A285006 (A174545 n).toNat

end

end A295652.P11373280027307775018

/-! ## A295652.P10256811981952536680

`A295253(n+1)+A025466(A001296(n))`
-/

namespace A295652.P10256811981952536680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295253 (n + 1) + A025466 (A001296 n).toNat

end

end A295652.P10256811981952536680

/-! ## A295652.P17284294272050326792

`A295253(n+1)+A014707(A022171(n))`
-/

namespace A295652.P17284294272050326792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295253 (n + 1) + A014707 (A022171 n).toNat

end

end A295652.P17284294272050326792

/-! ## A295652.P3811331651702257337

`A295253(n+1)+A025465(A022345(n))`
-/

namespace A295652.P3811331651702257337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295253 (n + 1) + A025465 (A022345 n).toNat

end

end A295652.P3811331651702257337

/-! ## A295652.P15048583320042437614

`A295253(n+1)+A025465(A023105(n))`
-/

namespace A295652.P15048583320042437614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295253 (n + 1) + A025465 (A023105 n).toNat

end

end A295652.P15048583320042437614

/-!
# A295653: Square array T(n, k), n >= 0, k >= 0, read by antidiagonals upwards: T(n, k) = the (k+1)-th nonnegative number m such that n AND m = 0 (where AND denotes the bitwise AND operator).

The programs for A295653, there is no canonical definition to state claims against.
-/

/-! ## A295653.P2550008082304301729

`A002262(n)*A165092(A156137(n))`
-/

namespace A295653.P2550008082304301729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n * A165092 (A156137 n).toNat

end

end A295653.P2550008082304301729

/-! ## A295653.P18182189781265579771

`A246359(A055998(n)*A143396(n))`
-/

namespace A295653.P18182189781265579771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246359 (A055998 n * A143396 n).toNat

end

end A295653.P18182189781265579771

/-! ## A295653.P12686156515262415183

`A165092(A156137(n))*A298486(n)`
-/

namespace A295653.P12686156515262415183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165092 (A156137 n).toNat * A298486 n

end

end A295653.P12686156515262415183

/-! ## A295653.P7416534051649243250

`lcm(A002262(n), A133186(A088810(n)))`
-/

namespace A295653.P7416534051649243250
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A002262 n) (A133186 (A088810 n).toNat)

end

end A295653.P7416534051649243250

/-! ## A295653.P6037779858882219520

`A025668(n+1)*A165092(A156137(n))`
-/

namespace A295653.P6037779858882219520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025668 (n + 1) * A165092 (A156137 n).toNat

end

end A295653.P6037779858882219520

/-!
# A295655: a(n) = A000203(n) / A294896(n) = A000203(n) / gcd(A000203(n), A005187(n)).

The programs for A295655, the canonical program `A295655.P11062722249012159338` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A295655 has offset 1).

The definition of A295655 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A295655.P11062722249012159338

`A000203(n+1)/A294896(n+1)`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A295655

/-- `A000203(n+1)/A294896(n+1)` -/
def P11062722249012159338.Spec : Prop :=
  ∀ n, P11062722249012159338.a n = (A295655 (n + 1) : ℚ)

end A295655

/-! ## A295655.P4586551138197593147

`A000203(n+1)/gcd(A000203(n+1), A005187(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A295655.P4586551138197593147
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (n + 1) : ℚ) / (Int.gcd (A000203 (n + 1)) (A005187 (n + 1)) : ℚ)

end

end A295655.P4586551138197593147

namespace A295655

/-- `A000203(n+1)/gcd(A000203(n+1), A005187(n+1))` -/
def P4586551138197593147.Spec : Prop :=
  ∀ n, P4586551138197593147.a n = (A295655 (n + 1) : ℚ)

end A295655

/-! ## A295655.P6090218294861197557

`(A005187(n+1)-A294898(n+1))/A294896(n+1)`
-/

namespace A295655.P6090218294861197557
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005187 (n + 1) - A294898 (n + 1) : ℚ) / (A294896 (n + 1) : ℚ)

end

end A295655.P6090218294861197557

namespace A295655

/-- `(A005187(n+1)-A294898(n+1))/A294896(n+1)` -/
def P6090218294861197557.Spec : Prop :=
  ∀ n, P6090218294861197557.a n = (A295655 (n + 1) : ℚ)

end A295655

/-! ## A295655.P8428923635529142634

`A295656(n+1)-A294898(n+1)/A294896(n+1)`
-/

namespace A295655.P8428923635529142634
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A295656 (n + 1) : ℚ) - (A294898 (n + 1) : ℚ) / (A294896 (n + 1) : ℚ)

end

end A295655.P8428923635529142634

namespace A295655

/-- `A295656(n+1)-A294898(n+1)/A294896(n+1)` -/
def P8428923635529142634.Spec : Prop :=
  ∀ n, P8428923635529142634.a n = (A295655 (n + 1) : ℚ)

end A295655

/-! ## A295655.P10081528076882438743

`A000203(n+1)/A005187(n+1)*A295656(n+1)`
-/

namespace A295655.P10081528076882438743
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (n + 1) : ℚ) / (A005187 (n + 1) : ℚ) * (A295656 (n + 1) : ℚ)

end

end A295655.P10081528076882438743

namespace A295655

/-- `A000203(n+1)/A005187(n+1)*A295656(n+1)` -/
def P10081528076882438743.Spec : Prop :=
  ∀ n, P10081528076882438743.a n = (A295655 (n + 1) : ℚ)

end A295655

/-!
# A295656: a(n) = A005187(n) / A294896(n) = A005187(n) / gcd(A000203(n), A005187(n)).

The programs for A295656, the canonical program `A295656.P13422451265484002052` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A295656 has offset 1).

The definition of A295656 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A295656.P13422451265484002052

`A005187(n+1)/A294896(n+1)`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A295656

/-- `A005187(n+1)/A294896(n+1)` -/
def P13422451265484002052.Spec : Prop :=
  ∀ n, P13422451265484002052.a n = (A295656 (n + 1) : ℚ)

end A295656

/-! ## A295656.P13338054078034032393

`A005187(n+1)/gcd(A000203(n+1), A005187(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A295656.P13338054078034032393
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005187 (n + 1) : ℚ) / (Int.gcd (A000203 (n + 1)) (A005187 (n + 1)) : ℚ)

end

end A295656.P13338054078034032393

namespace A295656

/-- `A005187(n+1)/gcd(A000203(n+1), A005187(n+1))` -/
def P13338054078034032393.Spec : Prop :=
  ∀ n, P13338054078034032393.a n = (A295656 (n + 1) : ℚ)

end A295656

/-! ## A295656.P15636519686160228874

`∑[A001511(n+1)]/A294896(n+1)`
-/

namespace A295656.P15636519686160228874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A294896 (n + 1) : ℚ)

end

end A295656.P15636519686160228874

namespace A295656

/-- `∑[A001511(n+1)]/A294896(n+1)` -/
def P15636519686160228874.Spec : Prop :=
  ∀ n, P15636519686160228874.a n = (A295656 (n + 1) : ℚ)

end A295656

/-! ## A295656.P11911364172208051486

`(A294898(n+1)+A000203(n+1))/A294896(n+1)`
-/

namespace A295656.P11911364172208051486
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A294898 (n + 1) + A000203 (n + 1) : ℚ) / (A294896 (n + 1) : ℚ)

end

end A295656.P11911364172208051486

namespace A295656

/-- `(A294898(n+1)+A000203(n+1))/A294896(n+1)` -/
def P11911364172208051486.Spec : Prop :=
  ∀ n, P11911364172208051486.a n = (A295656 (n + 1) : ℚ)

end A295656

/-! ## A295656.P1338669197470648448

`A295655(n+1)+A294898(n+1)/A294896(n+1)`
-/

namespace A295656.P1338669197470648448
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A295655 (n + 1) : ℚ) + (A294898 (n + 1) : ℚ) / (A294896 (n + 1) : ℚ)

end

end A295656.P1338669197470648448

namespace A295656

/-- `A295655(n+1)+A294898(n+1)/A294896(n+1)` -/
def P1338669197470648448.Spec : Prop :=
  ∀ n, P1338669197470648448.a n = (A295656 (n + 1) : ℚ)

end A295656

/-! ## A295656.P7326468162958107878

`A005187(n+1)/A000203(n+1)*A295655(n+1)`
-/

namespace A295656.P7326468162958107878
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005187 (n + 1) : ℚ) / (A000203 (n + 1) : ℚ) * (A295655 (n + 1) : ℚ)

end

end A295656.P7326468162958107878

namespace A295656

/-- `A005187(n+1)/A000203(n+1)*A295655(n+1)` -/
def P7326468162958107878.Spec : Prop :=
  ∀ n, P7326468162958107878.a n = (A295656 (n + 1) : ℚ)

end A295656

/-!
# A295657: Multiplicative with a(p^e) = p^floor((e-1)/2).

The programs for A295657, the canonical program `A295657.P6967734593411189466` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A295657 has offset 1).

The definition of A295657 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000188, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A295657.P6967734593411189466

`A000188(A003557(n+1))`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A295657

/-- `A000188(A003557(n+1))` -/
def P6967734593411189466.Spec : Prop :=
  ∀ n, P6967734593411189466.a n = A295657 (n + 1)

theorem P6967734593411189466.correct : P6967734593411189466.Spec := by
  intro n
  simp only [A295657, Nat.add_sub_cancel]

end A295657

/-! ## A295657.P1449505493282583160

`A020639(n+1)^A004526(A067029(n+1)-1)*a(A028234(n+1)-1)` with `a(0)=1, a(1)=1`
-/

namespace A295657.P1449505493282583160
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1] fun n a =>
  (A020639 (n + 1) : ℚ) ^ (A004526 (A067029 (n + 1) - 1).toNat : ℤ) * a (A028234 (n + 1) - 1).toNat

end

end A295657.P1449505493282583160

namespace A295657

/-- `A020639(n+1)^A004526(A067029(n+1)-1)*a(A028234(n+1)-1)` -/
def P1449505493282583160.Spec : Prop :=
  ∀ n, P1449505493282583160.a n = (A295657 (n + 1) : ℚ)

end A295657

/-! ## A295657.P11769065188169320781

`(n+1)/A355261(n+1)`
-/

namespace A295657.P11769065188169320781
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A355261 (n + 1) : ℚ)

end

end A295657.P11769065188169320781

namespace A295657

/-- `(n+1)/A355261(n+1)` -/
def P11769065188169320781.Spec : Prop :=
  ∀ n, P11769065188169320781.a n = (A295657 (n + 1) : ℚ)

end A295657

/-! ## A295657.P5793983050104648439

`sqrt((n+1)/A066990(n+1))`
-/

namespace A295657.P5793983050104648439
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((n + 1 : ℚ) / (A066990 (n + 1) : ℚ) : ℝ)

end

end A295657.P5793983050104648439

namespace A295657

/-- `sqrt((n+1)/A066990(n+1))` -/
def P5793983050104648439.Spec : Prop :=
  ∀ n, P5793983050104648439.a n = (A295657 (n + 1) : ℝ)

end A295657

/-! ## A295657.P442402100306318837

`A000188((n+1)/∏{p}[n+1, #])`
-/

namespace A295657.P442402100306318837
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ))).toNat

end

end A295657.P442402100306318837

namespace A295657

/-- `A000188((n+1)/∏{p}[n+1, #])` -/
def P442402100306318837.Spec : Prop :=
  ∀ n, P442402100306318837.a n = A295657 (n + 1)

theorem P442402100306318837.correct : P442402100306318837.Spec := by
  intro n
  simp only [A295657, Nat.add_sub_cancel, A295657.P442402100306318837.f1, A295657.P442402100306318837.a, A295657.P6967734593411189466.a, A000188, A000188.P7486858720566838181.a, A003557, A003557.P6364735403900941810.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A008833, A008833.P18388074464065390543.a, A007913, A007913.P11359412940648999332.a, A059479, A059479.P17464652159649958448.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A295657

/-! ## A295657.P6337488695498208173

`A003557(A019554(n+1))`
-/

namespace A295657.P6337488695498208173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (A019554 (n + 1)).toNat

end

end A295657.P6337488695498208173

namespace A295657

/-- `A003557(A019554(n+1))` -/
def P6337488695498208173.Spec : Prop :=
  ∀ n, P6337488695498208173.a n = A295657 (n + 1)

end A295657

/-! ## A295657.P8119881827367402476

`A019554(A062378(n+1))`
-/

namespace A295657.P8119881827367402476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019554 (A062378 (n + 1)).toNat

end

end A295657.P8119881827367402476

namespace A295657

/-- `A019554(A062378(n+1))` -/
def P8119881827367402476.Spec : Prop :=
  ∀ n, P8119881827367402476.a n = A295657 (n + 1)

end A295657

/-! ## A295657.P16974179648661095990

`A000188(A350390(n+1))`
-/

namespace A295657.P16974179648661095990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (A350390 (n + 1)).toNat

end

end A295657.P16974179648661095990

namespace A295657

/-- `A000188(A350390(n+1))` -/
def P16974179648661095990.Spec : Prop :=
  ∀ n, P16974179648661095990.a n = A295657 (n + 1)

end A295657

/-! ## A295657.P3409811314965088121

`A000188(A336551(n+1)+1)`
-/

namespace A295657.P3409811314965088121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (A336551 (n + 1) + 1).toNat

end

end A295657.P3409811314965088121

namespace A295657

/-- `A000188(A336551(n+1)+1)` -/
def P3409811314965088121.Spec : Prop :=
  ∀ n, P3409811314965088121.a n = A295657 (n + 1)

theorem P3409811314965088121.correct : P3409811314965088121.Spec := by
  intro n
  simp only [A295657, Nat.add_sub_cancel, A295657.P3409811314965088121.a, A295657.P6967734593411189466.a, A000188, A000188.P7486858720566838181.a, A003557, A003557.P6364735403900941810.a, A336551, A336551.P8666843674191054020.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A008833, A008833.P18388074464065390543.a, A007913, A007913.P11359412940648999332.a, A059479, A059479.P17464652159649958448.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A295657

/-! ## A295657.P16674948354116370189

`A000188(1-A010848(n+1)+n)`
-/

namespace A295657.P16674948354116370189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (1 - A010848 (n + 1) + (n : ℤ)).toNat

end

end A295657.P16674948354116370189

namespace A295657

/-- `A000188(1-A010848(n+1)+n)` -/
def P16674948354116370189.Spec : Prop :=
  ∀ n, P16674948354116370189.a n = A295657 (n + 1)

theorem P16674948354116370189.correct : P16674948354116370189.Spec := by
  intro n
  simp only [A295657, Nat.add_sub_cancel, A295657.P16674948354116370189.a, A295657.P6967734593411189466.a, A000188, A000188.P7486858720566838181.a, A003557, A003557.P6364735403900941810.a, A010848, A010848.P2527659660694357650.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A008833, A008833.P18388074464065390543.a, A007913, A007913.P11359412940648999332.a, A059479, A059479.P17464652159649958448.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A295657

/-! ## A295657.P13758117637749624962

`A003557(A254732(n+1)-(n+1))`
-/

namespace A295657.P13758117637749624962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (A254732 (n + 1) - (n + 1 : ℤ)).toNat

end

end A295657.P13758117637749624962

namespace A295657

/-- `A003557(A254732(n+1)-(n+1))` -/
def P13758117637749624962.Spec : Prop :=
  ∀ n, P13758117637749624962.a n = A295657 (n + 1)

end A295657

/-! ## A295657.P10689102546487257641

`A055229(n+1)*A295658(n+1)`
-/

namespace A295657.P10689102546487257641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055229 (n + 1) * A295658 (n + 1)

end

end A295657.P10689102546487257641

namespace A295657

/-- `A055229(n+1)*A295658(n+1)` -/
def P10689102546487257641.Spec : Prop :=
  ∀ n, P10689102546487257641.a n = A295657 (n + 1)

end A295657

/-! ## A295657.P16843417090500381193

`A000188((n+1)/A007947(n+1))`
-/

namespace A295657.P16843417090500381193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A007947 (n + 1) : ℚ))).toNat

end

end A295657.P16843417090500381193

namespace A295657

/-- `A000188((n+1)/A007947(n+1))` -/
def P16843417090500381193.Spec : Prop :=
  ∀ n, P16843417090500381193.a n = A295657 (n + 1)

end A295657

/-! ## A295657.P1419604080786395662

`A019554(n+1)/A007947(n+1)`
-/

namespace A295657.P1419604080786395662
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A019554 (n + 1) : ℚ) / (A007947 (n + 1) : ℚ)

end

end A295657.P1419604080786395662

namespace A295657

/-- `A019554(n+1)/A007947(n+1)` -/
def P1419604080786395662.Spec : Prop :=
  ∀ n, P1419604080786395662.a n = (A295657 (n + 1) : ℚ)

end A295657

/-! ## A295657.P9115647814943940419

`A000188(n+1)/A336643(n+1)`
-/

namespace A295657.P9115647814943940419
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000188 (n + 1) : ℚ) / (A336643 (n + 1) : ℚ)

end

end A295657.P9115647814943940419

namespace A295657

/-- `A000188(n+1)/A336643(n+1)` -/
def P9115647814943940419.Spec : Prop :=
  ∀ n, P9115647814943940419.a n = (A295657 (n + 1) : ℚ)

end A295657

/-! ## A295657.P2868273873459652394

`A003557(n+1)/sqrt(A008833(n+1))`
-/

namespace A295657.P2868273873459652394
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A003557 (n + 1) : ℝ) / Real.sqrt (A008833 (n + 1) : ℝ)

end

end A295657.P2868273873459652394

namespace A295657

/-- `A003557(n+1)/sqrt(A008833(n+1))` -/
def P2868273873459652394.Spec : Prop :=
  ∀ n, P2868273873459652394.a n = (A295657 (n + 1) : ℝ)

end A295657

/-! ## A295657.P10494142229493699636

`A003557(n+1)/sqrt((n+1)/A007913(n+1))`
-/

namespace A295657.P10494142229493699636
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A003557 (n + 1) : ℝ) / Real.sqrt ((n + 1 : ℚ) / (A007913 (n + 1) : ℚ) : ℝ)

end

end A295657.P10494142229493699636

namespace A295657

/-- `A003557(n+1)/sqrt((n+1)/A007913(n+1))` -/
def P10494142229493699636.Spec : Prop :=
  ∀ n, P10494142229493699636.a n = (A295657 (n + 1) : ℝ)

end A295657

/-! ## A295657.P13118520405075574834

`∑{d}[A003557(A003557(n+1)), A346612(#)]`
-/

namespace A295657.P13118520405075574834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (A003557 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A346612 d

end

end A295657.P13118520405075574834

namespace A295657

/-- `∑{d}[A003557(A003557(n+1)), A346612(#)]` -/
def P13118520405075574834.Spec : Prop :=
  ∀ n, P13118520405075574834.a n = A295657 (n + 1)

end A295657

/-! ## A295657.P3975934292223832210

`A019554(n+1)/A019554(A066990(n+1))`
-/

namespace A295657.P3975934292223832210
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A019554 (n + 1) : ℚ) / (A019554 (A066990 (n + 1)).toNat : ℚ)

end

end A295657.P3975934292223832210

namespace A295657

/-- `A019554(n+1)/A019554(A066990(n+1))` -/
def P3975934292223832210.Spec : Prop :=
  ∀ n, P3975934292223832210.a n = (A295657 (n + 1) : ℚ)

end A295657

/-! ## A295657.P8056498115145954868

`A000188(gcd(A060789(n+1), A085731(n+1)))`
-/

namespace A295657.P8056498115145954868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (Int.gcd (A060789 (n + 1)) (A085731 (n + 1)))

end

end A295657.P8056498115145954868

namespace A295657

/-- `A000188(gcd(A060789(n+1), A085731(n+1)))` -/
def P8056498115145954868.Spec : Prop :=
  ∀ n, P8056498115145954868.a n = A295657 (n + 1)

end A295657

/-!
# A295658: Multiplicative with a(p^e) = p^max(0,(floor(e/2)-1)).

The programs for A295658, the canonical program `A295658.P31959927982178384` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A295658 has offset 1).

The definition of A295658 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000188, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A295658.P31959927982178384

`A003557(A000188(n+1))`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A295658

/-- `A003557(A000188(n+1))` -/
def P31959927982178384.Spec : Prop :=
  ∀ n, P31959927982178384.a n = A295658 (n + 1)

theorem P31959927982178384.correct : P31959927982178384.Spec := by
  intro n
  simp only [A295658, Nat.add_sub_cancel]

end A295658

/-! ## A295658.P5958790794441871219

`A295657(floor(n/∏{p}[n+1, #])+1)`
-/

namespace A295658.P5958790794441871219
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295657 (⌊(n : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ)⌋ + 1).toNat

end

end A295658.P5958790794441871219

namespace A295658

/-- `A295657(floor(n/∏{p}[n+1, #])+1)` -/
def P5958790794441871219.Spec : Prop :=
  ∀ n, P5958790794441871219.a n = A295658 (n + 1)

end A295658

/-! ## A295658.P4407444438898412723

`A000188(A062378(n+1))`
-/

namespace A295658.P4407444438898412723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (A062378 (n + 1)).toNat

end

end A295658.P4407444438898412723

namespace A295658

/-- `A000188(A062378(n+1))` -/
def P4407444438898412723.Spec : Prop :=
  ∀ n, P4407444438898412723.a n = A295658 (n + 1)

end A295658

/-! ## A295658.P448709039035282435

`A295657(A003557(n+1))`
-/

namespace A295658.P448709039035282435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295657 (A003557 (n + 1)).toNat

end

end A295658.P448709039035282435

namespace A295658

/-- `A295657(A003557(n+1))` -/
def P448709039035282435.Spec : Prop :=
  ∀ n, P448709039035282435.a n = A295658 (n + 1)

end A295658

/-! ## A295658.P16016132753575241749

`A062378(A355261(n+1))`
-/

namespace A295658.P16016132753575241749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062378 (A355261 (n + 1)).toNat

end

end A295658.P16016132753575241749

namespace A295658

/-- `A062378(A355261(n+1))` -/
def P16016132753575241749.Spec : Prop :=
  ∀ n, P16016132753575241749.a n = A295658 (n + 1)

end A295658

/-! ## A295658.P17913798422648368708

`A295657(A000188(n+1)²)`
-/

namespace A295658.P17913798422648368708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295657 (A000188 (n + 1) ^ 2).toNat

end

end A295658.P17913798422648368708

namespace A295658

/-- `A295657(A000188(n+1)²)` -/
def P17913798422648368708.Spec : Prop :=
  ∀ n, P17913798422648368708.a n = A295658 (n + 1)

end A295658

/-! ## A295658.P3822732718073930878

`A003557(sqrt(A008833(n+1)))`
-/

namespace A295658.P3822732718073930878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (SequenceMachineLib.roundAway (Real.sqrt (A008833 (n + 1) : ℝ))).toNat

end

end A295658.P3822732718073930878

namespace A295658

/-- `A003557(sqrt(A008833(n+1)))` -/
def P3822732718073930878.Spec : Prop :=
  ∀ n, P3822732718073930878.a n = A295658 (n + 1)

end A295658

/-! ## A295658.P5444161713826166891

`A003557(sqrt((n+1)/A007913(n+1)))`
-/

namespace A295658.P5444161713826166891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (SequenceMachineLib.roundAway (Real.sqrt ((n + 1 : ℚ) / (A007913 (n + 1) : ℚ) : ℝ))).toNat

end

end A295658.P5444161713826166891

namespace A295658

/-- `A003557(sqrt((n+1)/A007913(n+1)))` -/
def P5444161713826166891.Spec : Prop :=
  ∀ n, P5444161713826166891.a n = A295658 (n + 1)

end A295658

/-! ## A295658.P11172157306608074603

`A000188(n+1)/A007947(n+1)*A055231(n+1)`
-/

namespace A295658.P11172157306608074603
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000188 (n + 1) : ℚ) / (A007947 (n + 1) : ℚ) * (A055231 (n + 1) : ℚ)

end

end A295658.P11172157306608074603

namespace A295658

/-- `A000188(n+1)/A007947(n+1)*A055231(n+1)` -/
def P11172157306608074603.Spec : Prop :=
  ∀ n, P11172157306608074603.a n = (A295658 (n + 1) : ℚ)

end A295658

/-! ## A295658.P9521791978561581078

`A000188(n+1)/A007947((n+1)/A007913(n+1))`
-/

namespace A295658.P9521791978561581078
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000188 (n + 1) : ℚ) / (A007947 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A007913 (n + 1) : ℚ))).toNat : ℚ)

end

end A295658.P9521791978561581078

namespace A295658

/-- `A000188(n+1)/A007947((n+1)/A007913(n+1))` -/
def P9521791978561581078.Spec : Prop :=
  ∀ n, P9521791978561581078.a n = (A295658 (n + 1) : ℚ)

end A295658

/-!
# A295659: Number of exponents larger than 2 in the prime factorization of n.

The programs for A295659, the canonical program `A295659.P13397304505922019688` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A295659 has offset 1).

The definition of A295659 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001221, A053150, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A295659.P13397304505922019688

`A001221(A053150(n+1))`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A295659

/-- `A001221(A053150(n+1))` -/
def P13397304505922019688.Spec : Prop :=
  ∀ n, P13397304505922019688.a n = A295659 (n + 1)

theorem P13397304505922019688.correct : P13397304505922019688.Spec := by
  intro n
  simp only [A295659, Nat.add_sub_cancel]

end A295659

/-! ## A295659.P746681503728565643

`A056170(A003557(n+1))`
-/

namespace A295659.P746681503728565643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056170 (A003557 (n + 1)).toNat

end

end A295659.P746681503728565643

namespace A295659

/-- `A056170(A003557(n+1))` -/
def P746681503728565643.Spec : Prop :=
  ∀ n, P746681503728565643.a n = A295659 (n + 1)

end A295659

/-! ## A295659.P10915333410214599986

`A295883(n+1)+A295884(n+1)`
-/

namespace A295659.P10915333410214599986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295883 (n + 1) + A295884 (n + 1)

end

end A295659.P10915333410214599986

namespace A295659

/-- `A295883(n+1)+A295884(n+1)` -/
def P10915333410214599986.Spec : Prop :=
  ∀ n, P10915333410214599986.a n = A295659 (n + 1)

theorem P10915333410214599986.correct : P10915333410214599986.Spec := by
  intro n
  simp only [A295659, Nat.add_sub_cancel, A295659.P10915333410214599986.a, A295659.P13397304505922019688.a, A001221, A001221.P10258181745752134128.a, A053150, A053150.P12506958821739849534.a, A295883, A295883.P17471904832755178086.a, A295884, A295884.P5953786868987589474.a, A000188, A000188.P7486858720566838181.a, A000189, A000189.P11210685475351648118.a, A005089, A005089.P4329807401814625450.f1, A005089.P4329807401814625450.a, A005091, A005091.P2802037195389751204.f1, A005091.P2802037195389751204.a, A050985, A050985.P12411912326700818488.f1, A050985.P12411912326700818488.a, A056170, A056170.P910878729848546389.a, A059841, A059841.P2666504972441551157.a, A062378, A062378.P530133715863786862.a, A003557, A003557.P6364735403900941810.a, A008833, A008833.P18388074464065390543.a, A053149, A053149.P4125189005957149122.a, A056169, A056169.P17430176249366647977.a, A073185, A073185.P13146702220439815820.a, A210826, A210826.P1982609276010569986.f1, A210826.P1982609276010569986.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A007913, A007913.P11359412940648999332.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A007948, A007948.P9205423498154585874.a, A048798, A048798.P11871248388947828360.a, A055231, A055231.P8962300905713718501.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A295659

/-! ## A295659.P11832384507262500772

`∑{e}[n+1, 2%#]/2`
-/

namespace A295659.P11832384507262500772
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ p ∈ Nat.primeFactors (f1 n), 2 % Nat.factorization (f1 n) p : ℕ) : ℚ) / 2

end

end A295659.P11832384507262500772

namespace A295659

/-- `∑{e}[n+1, 2%#]/2` -/
def P11832384507262500772.Spec : Prop :=
  ∀ n, P11832384507262500772.a n = (A295659 (n + 1) : ℚ)

end A295659

/-! ## A295659.P8526667308163083660

`∑{e}[n+1, 1-round(1/#)]`
-/

namespace A295659.P8526667308163083660
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), (1 - SequenceMachineLib.roundAway (1 / (Nat.factorization (f1 n) p : ℚ)))

end

end A295659.P8526667308163083660

namespace A295659

/-- `∑{e}[n+1, 1-round(1/#)]` -/
def P8526667308163083660.Spec : Prop :=
  ∀ n, P8526667308163083660.a n = A295659 (n + 1)

end A295659

/-! ## A295659.P13678653690466614755

`log2(A368248(n+1))`
-/

namespace A295659.P13678653690466614755
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A368248 (n + 1) : ℝ)

end

end A295659.P13678653690466614755

namespace A295659

/-- `log2(A368248(n+1))` -/
def P13678653690466614755.Spec : Prop :=
  ∀ n, P13678653690466614755.a n = (A295659 (n + 1) : ℝ)

end A295659

/-! ## A295659.P14182859918512349687

`val(A380922(n+1), 3)`
-/

namespace A295659.P14182859918512349687
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A380922 (n + 1)).toNat 3

end

end A295659.P14182859918512349687

namespace A295659

/-- `val(A380922(n+1), 3)` -/
def P14182859918512349687.Spec : Prop :=
  ∀ n, (P14182859918512349687.a n : ℤ) = A295659 (n + 1)

end A295659

/-! ## A295659.P8718317214716690382

`val(A383292(n+1), 3)`
-/

namespace A295659.P8718317214716690382
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A383292 (n + 1)).toNat 3

end

end A295659.P8718317214716690382

namespace A295659

/-- `val(A383292(n+1), 3)` -/
def P8718317214716690382.Spec : Prop :=
  ∀ n, (P8718317214716690382.a n : ℤ) = A295659 (n + 1)

end A295659

/-! ## A295659.P16576656356191987303

`val(A124859(n+1), 5)`
-/

namespace A295659.P16576656356191987303
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A124859 (n + 1)).toNat 5

end

end A295659.P16576656356191987303

namespace A295659

/-- `val(A124859(n+1), 5)` -/
def P16576656356191987303.Spec : Prop :=
  ∀ n, (P16576656356191987303.a n : ℤ) = A295659 (n + 1)

end A295659

/-! ## A295659.P14407844886969195856

`log2(abs(A307428(n+1)))`
-/

namespace A295659.P14407844886969195856
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (|A307428 (n + 1)| : ℝ)

end

end A295659.P14407844886969195856

namespace A295659

/-- `log2(abs(A307428(n+1)))` -/
def P14407844886969195856.Spec : Prop :=
  ∀ n, P14407844886969195856.a n = (A295659 (n + 1) : ℝ)

end A295659

/-! ## A295659.P4338021043888326031

`A001221(A008834(n+1))`
-/

namespace A295659.P4338021043888326031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A008834 (n + 1)).toNat

end

end A295659.P4338021043888326031

namespace A295659

/-- `A001221(A008834(n+1))` -/
def P4338021043888326031.Spec : Prop :=
  ∀ n, P4338021043888326031.a n = A295659 (n + 1)

end A295659

/-! ## A295659.P7628958516456645556

`A056170(A000189(n+1))`
-/

namespace A295659.P7628958516456645556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056170 (A000189 (n + 1)).toNat

end

end A295659.P7628958516456645556

namespace A295659

/-- `A056170(A000189(n+1))` -/
def P7628958516456645556.Spec : Prop :=
  ∀ n, P7628958516456645556.a n = A295659 (n + 1)

end A295659

/-! ## A295659.P15355270819926626698

`A056170(A000190(n+1))`
-/

namespace A295659.P15355270819926626698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056170 (A000190 (n + 1)).toNat

end

end A295659.P15355270819926626698

namespace A295659

/-- `A056170(A000190(n+1))` -/
def P15355270819926626698.Spec : Prop :=
  ∀ n, P15355270819926626698.a n = A295659 (n + 1)

end A295659

/-! ## A295659.P18268903466042875747

`A001221(A062378(n+1))`
-/

namespace A295659.P18268903466042875747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A062378 (n + 1)).toNat

end

end A295659.P18268903466042875747

namespace A295659

/-- `A001221(A062378(n+1))` -/
def P18268903466042875747.Spec : Prop :=
  ∀ n, P18268903466042875747.a n = A295659 (n + 1)

end A295659

/-! ## A295659.P15467553745474687953

`A001221(A295657(n+1))`
-/

namespace A295659.P15467553745474687953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A295657 (n + 1)).toNat

end

end A295659.P15467553745474687953

namespace A295659

/-- `A001221(A295657(n+1))` -/
def P15467553745474687953.Spec : Prop :=
  ∀ n, P15467553745474687953.a n = A295659 (n + 1)

end A295659

/-! ## A295659.P2836401267144535259

`A001221(A360540(n+1))`
-/

namespace A295659.P2836401267144535259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A360540 (n + 1)).toNat

end

end A295659.P2836401267144535259

namespace A295659

/-- `A001221(A360540(n+1))` -/
def P2836401267144535259.Spec : Prop :=
  ∀ n, P2836401267144535259.a n = A295659 (n + 1)

end A295659

/-! ## A295659.P14732329478086446728

`A001221(n+1)-A366078(n+1)`
-/

namespace A295659.P14732329478086446728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1) - A366078 (n + 1)

end

end A295659.P14732329478086446728

namespace A295659

/-- `A001221(n+1)-A366078(n+1)` -/
def P14732329478086446728.Spec : Prop :=
  ∀ n, P14732329478086446728.a n = A295659 (n + 1)

theorem P14732329478086446728.correct : P14732329478086446728.Spec := by
  intro n
  simp only [A295659, Nat.add_sub_cancel, A295659.P14732329478086446728.a, A295659.P13397304505922019688.a, A001221, A001221.P10258181745752134128.a, A053150, A053150.P12506958821739849534.a, A366078, A366078.P11404734746980857531.a, A000188, A000188.P7486858720566838181.a, A000189, A000189.P11210685475351648118.a, A005089, A005089.P4329807401814625450.f1, A005089.P4329807401814625450.a, A005091, A005091.P2802037195389751204.f1, A005091.P2802037195389751204.a, A050985, A050985.P12411912326700818488.f1, A050985.P12411912326700818488.a, A059841, A059841.P2666504972441551157.a, A008833, A008833.P18388074464065390543.a, A053149, A053149.P4125189005957149122.a, A073185, A073185.P13146702220439815820.a, A210826, A210826.P1982609276010569986.f1, A210826.P1982609276010569986.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A007913, A007913.P11359412940648999332.a, A007948, A007948.P9205423498154585874.a, A048798, A048798.P11871248388947828360.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A295659

/-! ## A295659.P16812502038890069087

`A001221(A003557(A396938(n+1)))`
-/

namespace A295659.P16812502038890069087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A003557 (A396938 (n + 1)).toNat).toNat

end

end A295659.P16812502038890069087

namespace A295659

/-- `A001221(A003557(A396938(n+1)))` -/
def P16812502038890069087.Spec : Prop :=
  ∀ n, P16812502038890069087.a n = A295659 (n + 1)

end A295659

/-! ## A295659.P6352282067133243257

`A001222(∏{e}[n+1, A006530(A000010(#))])`
-/

namespace A295659.P6352282067133243257
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (∏ p ∈ Nat.primeFactors (f1 n), A006530 (A000010 (Nat.factorization (f1 n) p)).toNat).toNat

end

end A295659.P6352282067133243257

namespace A295659

/-- `A001222(∏{e}[n+1, A006530(A000010(#))])` -/
def P6352282067133243257.Spec : Prop :=
  ∀ n, P6352282067133243257.a n = A295659 (n + 1)

end A295659

/-! ## A295659.P18224607592094184441

`A001221(A053149(n+1)/A056551(n+1))`
-/

namespace A295659.P18224607592094184441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (SequenceMachineLib.roundAway ((A053149 (n + 1) : ℚ) / (A056551 (n + 1) : ℚ))).toNat

end

end A295659.P18224607592094184441

namespace A295659

/-- `A001221(A053149(n+1)/A056551(n+1))` -/
def P18224607592094184441.Spec : Prop :=
  ∀ n, P18224607592094184441.a n = A295659 (n + 1)

end A295659

/-!
# A295660: Binary weight of Euler phi: a(n) = A000120(A000010(n)).

The programs for A295660, the canonical program `A295660.P1297563117309372631` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A295660 has offset 1).

The definition of A295660 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A295660.P1297563117309372631

`A000120(A000010(n+1))`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A295660

/-- `A000120(A000010(n+1))` -/
def P1297563117309372631.Spec : Prop :=
  ∀ n, P1297563117309372631.a n = A295660 (n + 1)

theorem P1297563117309372631.correct : P1297563117309372631.Spec := by
  intro n
  simp only [A295660, Nat.add_sub_cancel]

end A295660

/-! ## A295660.P8783807919490904188

`A000120((n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1])`
-/

namespace A295660.P8783807919490904188
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1) : ℤ) : ℚ))).toNat

end

end A295660.P8783807919490904188

namespace A295660

/-- `A000120((n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1])` -/
def P8783807919490904188.Spec : Prop :=
  ∀ n, P8783807919490904188.a n = A295660 (n + 1)

end A295660

/-! ## A295660.P5395036156042772591

`A000120(Δ[A002088(n)])`
-/

namespace A295660.P5395036156042772591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (f1 (n + 1) - f1 n).toNat

end

end A295660.P5395036156042772591

namespace A295660

/-- `A000120(Δ[A002088(n)])` -/
def P5395036156042772591.Spec : Prop :=
  ∀ n, P5395036156042772591.a n = A295660 (n + 1)

end A295660

/-! ## A295660.P6228735923793385997

`A000120(Δ[A005728(n)])`
-/

namespace A295660.P6228735923793385997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (f1 (n + 1) - f1 n).toNat

end

end A295660.P6228735923793385997

namespace A295660

/-- `A000120(Δ[A005728(n)])` -/
def P6228735923793385997.Spec : Prop :=
  ∀ n, P6228735923793385997.a n = A295660 (n + 1)

end A295660

/-! ## A295660.P7482503283158023495

`A000120(A046073(n+1))`
-/

namespace A295660.P7482503283158023495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A046073 (n + 1)).toNat

end

end A295660.P7482503283158023495

namespace A295660

/-- `A000120(A046073(n+1))` -/
def P7482503283158023495.Spec : Prop :=
  ∀ n, P7482503283158023495.a n = A295660 (n + 1)

end A295660

/-! ## A295660.P5463117384616033681

`A000120(A053575(n+1))`
-/

namespace A295660.P5463117384616033681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A053575 (n + 1)).toNat

end

end A295660.P5463117384616033681

namespace A295660

/-- `A000120(A053575(n+1))` -/
def P5463117384616033681.Spec : Prop :=
  ∀ n, P5463117384616033681.a n = A295660 (n + 1)

end A295660

/-! ## A295660.P8702219384356186025

`A000120(A055034(n+1))`
-/

namespace A295660.P8702219384356186025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A055034 (n + 1)).toNat

end

end A295660.P8702219384356186025

namespace A295660

/-- `A000120(A055034(n+1))` -/
def P8702219384356186025.Spec : Prop :=
  ∀ n, P8702219384356186025.a n = A295660 (n + 1)

end A295660

/-! ## A295660.P2432543987820041496

`A000120(A055035(n+1))`
-/

namespace A295660.P2432543987820041496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A055035 (n + 1)).toNat

end

end A295660.P2432543987820041496

namespace A295660

/-- `A000120(A055035(n+1))` -/
def P2432543987820041496.Spec : Prop :=
  ∀ n, P2432543987820041496.a n = A295660 (n + 1)

end A295660

/-! ## A295660.P17812366980159368367

`A000120(A062570(n+1))`
-/

namespace A295660.P17812366980159368367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A062570 (n + 1)).toNat

end

end A295660.P17812366980159368367

namespace A295660

/-- `A000120(A062570(n+1))` -/
def P17812366980159368367.Spec : Prop :=
  ∀ n, P17812366980159368367.a n = A295660 (n + 1)

end A295660

/-! ## A295660.P9316830473894829539

`A000120(A070306(n+1))`
-/

namespace A295660.P9316830473894829539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A070306 (n + 1)).toNat

end

end A295660.P9316830473894829539

namespace A295660

/-- `A000120(A070306(n+1))` -/
def P9316830473894829539.Spec : Prop :=
  ∀ n, P9316830473894829539.a n = A295660 (n + 1)

end A295660

/-! ## A295660.P13295639163005435786

`A000120(A089692(n+1))`
-/

namespace A295660.P13295639163005435786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A089692 (n + 1)).toNat

end

end A295660.P13295639163005435786

namespace A295660

/-- `A000120(A089692(n+1))` -/
def P13295639163005435786.Spec : Prop :=
  ∀ n, P13295639163005435786.a n = A295660 (n + 1)

end A295660

/-! ## A295660.P108857663009399641

`A000120(A232626(n+1))`
-/

namespace A295660.P108857663009399641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A232626 (n + 1)).toNat

end

end A295660.P108857663009399641

namespace A295660

/-- `A000120(A232626(n+1))` -/
def P108857663009399641.Spec : Prop :=
  ∀ n, P108857663009399641.a n = A295660 (n + 1)

end A295660

/-! ## A295660.P10175646298067082535

`A000120(A250207(n+1))`
-/

namespace A295660.P10175646298067082535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A250207 (n + 1)).toNat

end

end A295660.P10175646298067082535

namespace A295660

/-- `A000120(A250207(n+1))` -/
def P10175646298067082535.Spec : Prop :=
  ∀ n, P10175646298067082535.a n = A295660 (n + 1)

end A295660

/-! ## A295660.P14420147603615343736

`A000120(A293485(n+1))`
-/

namespace A295660.P14420147603615343736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A293485 (n + 1)).toNat

end

end A295660.P14420147603615343736

namespace A295660

/-- `A000120(A293485(n+1))` -/
def P14420147603615343736.Spec : Prop :=
  ∀ n, P14420147603615343736.a n = A295660 (n + 1)

end A295660

/-! ## A295660.P11647701397387967347

`A000120(A109606(n+1)+1)`
-/

namespace A295660.P11647701397387967347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A109606 (n + 1) + 1).toNat

end

end A295660.P11647701397387967347

namespace A295660

/-- `A000120(A109606(n+1)+1)` -/
def P11647701397387967347.Spec : Prop :=
  ∀ n, P11647701397387967347.a n = A295660 (n + 1)

theorem P11647701397387967347.correct : P11647701397387967347.Spec := by
  intro n
  simp only [A295660, Nat.add_sub_cancel, A295660.P11647701397387967347.a, A295660.P1297563117309372631.a, A000010, A000010.P4673923239450215316.a, A000120, A000120.P2816527436160941581.a, A109606, A109606.P2415810041766612210.a, A003557, A003557.P6364735403900941810.a, A005187, A005187.P3874015513960485494.a, A173557, A173557.P15666735857375843373.a, A001221, A001221.P10258181745752134128.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A023900, A023900.P6802385856234332486.f1, A023900.P6802385856234332486.a, A005089, A005089.P4329807401814625450.f1, A005089.P4329807401814625450.a, A005091, A005091.P2802037195389751204.f1, A005091.P2802037195389751204.a, A059841, A059841.P2666504972441551157.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A295660

/-! ## A295660.P9484635001584321879

`A000120(A039649(n+1)-1)`
-/

namespace A295660.P9484635001584321879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A039649 (n + 1) - 1).toNat

end

end A295660.P9484635001584321879

namespace A295660

/-- `A000120(A039649(n+1)-1)` -/
def P9484635001584321879.Spec : Prop :=
  ∀ n, P9484635001584321879.a n = A295660 (n + 1)

theorem P9484635001584321879.correct : P9484635001584321879.Spec := by
  intro n
  simp only [A295660, Nat.add_sub_cancel, A295660.P9484635001584321879.a, A295660.P1297563117309372631.a, A000010, A000010.P4673923239450215316.a, A000120, A000120.P2816527436160941581.a, A039649, A039649.P16717312505280968063.a, A003557, A003557.P6364735403900941810.a, A005187, A005187.P3874015513960485494.a, A173557, A173557.P15666735857375843373.a, A001221, A001221.P10258181745752134128.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A023900, A023900.P6802385856234332486.f1, A023900.P6802385856234332486.a, A005089, A005089.P4329807401814625450.f1, A005089.P4329807401814625450.a, A005091, A005091.P2802037195389751204.f1, A005091.P2802037195389751204.a, A059841, A059841.P2666504972441551157.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A295660

/-! ## A295660.P7153429734412343757

`A048881(A000010(n+1)-1)+1`
-/

namespace A295660.P7153429734412343757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048881 (A000010 (n + 1) - 1).toNat + 1

end

end A295660.P7153429734412343757

namespace A295660

/-- `A048881(A000010(n+1)-1)+1` -/
def P7153429734412343757.Spec : Prop :=
  ∀ n, P7153429734412343757.a n = A295660 (n + 1)

end A295660

/-! ## A295660.P12041051218027676460

`A081743(A000010(n+1)+1)-1`
-/

namespace A295660.P12041051218027676460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081743 (A000010 (n + 1) + 1).toNat - 1

end

end A295660.P12041051218027676460

namespace A295660

/-- `A081743(A000010(n+1)+1)-1` -/
def P12041051218027676460.Spec : Prop :=
  ∀ n, P12041051218027676460.a n = A295660 (n + 1)

end A295660

/-! ## A295660.P14713659976723220774

`A000120(n+1-A051953(n+1))`
-/

namespace A295660.P14713659976723220774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 ((n + 1 : ℤ) - A051953 (n + 1)).toNat

end

end A295660.P14713659976723220774

namespace A295660

/-- `A000120(n+1-A051953(n+1))` -/
def P14713659976723220774.Spec : Prop :=
  ∀ n, P14713659976723220774.a n = A295660 (n + 1)

end A295660

/-! ## A295660.P18132872157131698108

`∑{digits}[A007088(2*A000010(n+1)), #]`
-/

namespace A295660.P18132872157131698108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (2 * A000010 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A295660.P18132872157131698108

namespace A295660

/-- `∑{digits}[A007088(2*A000010(n+1)), #]` -/
def P18132872157131698108.Spec : Prop :=
  ∀ n, (P18132872157131698108.a n : ℤ) = A295660 (n + 1)

end A295660

/-!
# A295661: Numbers with at least one odd exponent larger than one in their prime factorization.

The programs for A295661, the canonical program `A295661.P311646455530732485` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A295661 has offset 1).

The definition of A295661 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2328 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A295661.P4408663790624762700

`lt[A055231(n+1), A007913(n+1)]+1`
-/

namespace A295661.P4408663790624762700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055231 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A295661.P4408663790624762700

namespace A295661

/-- `lt[A055231(n+1), A007913(n+1)]+1` -/
def P4408663790624762700.Spec : Prop :=
  ∀ n, (P4408663790624762700.a n : ℤ) = A295661 (n + 1)

end A295661

/-! ## A295661.P311646455530732485

`lt[1, A056191(n+1)]+1`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A295661

/-- `lt[1, A056191(n+1)]+1` -/
def P311646455530732485.Spec : Prop :=
  ∀ n, (P311646455530732485.a n : ℤ) = A295661 (n + 1)

theorem P311646455530732485.correct : P311646455530732485.Spec := by
  intro n
  simp only [A295661, Nat.add_sub_cancel]

end A295661

/-! ## A295661.P13833351521346999420

`lt[1, A055229(n+1)]+1`
-/

namespace A295661.P13833351521346999420
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055229 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A295661.P13833351521346999420

namespace A295661

/-- `lt[1, A055229(n+1)]+1` -/
def P13833351521346999420.Spec : Prop :=
  ∀ n, (P13833351521346999420.a n : ℤ) = A295661 (n + 1)

end A295661

/-! ## A295661.P14884803587068067090

`lt[A056192(n+1), n]+1`
-/

namespace A295661.P14884803587068067090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056192 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A295661.P14884803587068067090

namespace A295661

/-- `lt[A056192(n+1), n]+1` -/
def P14884803587068067090.Spec : Prop :=
  ∀ n, (P14884803587068067090.a n : ℤ) = A295661 (n + 1)

end A295661

/-! ## A295661.P4066624768784085855

`lt[1, A056191(A028310(n))]`
-/

namespace A295661.P4066624768784085855
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056191 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A295661.P4066624768784085855

namespace A295661

/-- `lt[1, A056191(A028310(n))]` -/
def P4066624768784085855.Spec : Prop :=
  ∀ n, (P4066624768784085855.a n : ℤ) = A295661 (n + 1)

end A295661

/-! ## A295661.P18127509630397214392

`lt[A066990(n+1), A007948(n+1)]+1`
-/

namespace A295661.P18127509630397214392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066990 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007948 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A295661.P18127509630397214392

namespace A295661

/-- `lt[A066990(n+1), A007948(n+1)]+1` -/
def P18127509630397214392.Spec : Prop :=
  ∀ n, (P18127509630397214392.a n : ℤ) = A295661 (n + 1)

end A295661

/-! ## A295661.P17080873139967283241

`eq[2, A020639(A005361(A003557(n+1)))]+1`
-/

namespace A295661.P17080873139967283241
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A005361 (A003557 (n + 1)).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A295661.P17080873139967283241

namespace A295661

/-- `eq[2, A020639(A005361(A003557(n+1)))]+1` -/
def P17080873139967283241.Spec : Prop :=
  ∀ n, (P17080873139967283241.a n : ℤ) = A295661 (n + 1)

end A295661

/-! ## A295661.P10293434054894170933

`A020725(lt[A066990(n+1), A007948(n+1)])`
-/

namespace A295661.P10293434054894170933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066990 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007948 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A295661.P10293434054894170933

namespace A295661

/-- `A020725(lt[A066990(n+1), A007948(n+1)])` -/
def P10293434054894170933.Spec : Prop :=
  ∀ n, P10293434054894170933.a n = A295661 (n + 1)

end A295661

/-! ## A295661.P9593475459395049647

`lt[1, A295663(A233583(n+1))+1]`
-/

namespace A295661.P9593475459395049647
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295663 (A233583 (n + 1)).toNat + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A295661.P9593475459395049647

namespace A295661

/-- `lt[1, A295663(A233583(n+1))+1]` -/
def P9593475459395049647.Spec : Prop :=
  ∀ n, (P9593475459395049647.a n : ℤ) = A295661 (n + 1)

end A295661

/-! ## A295661.P2687342478092297231

`filter[A325990(n+1), A049240(#)]`
-/

namespace A295661.P2687342478092297231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325990 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A049240 (f1 j).toNat = 1) n)

end

end A295661.P2687342478092297231

namespace A295661

/-- `filter[A325990(n+1), A049240(#)]` -/
def P2687342478092297231.Spec : Prop :=
  ∀ n, P2687342478092297231.a n = A295661 (n + 1)

end A295661

/-!
# A295662: Number of odd exponents larger than one in the canonical prime factorization of n.

The programs for A295662, the canonical program `A295662.P12288310833318385704` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A295662 has offset 1).

The definition of A295662 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056169, A162642, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A295662.P12288310833318385704

`A162642(n+1)-A056169(n+1)`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A295662

/-- `A162642(n+1)-A056169(n+1)` -/
def P12288310833318385704.Spec : Prop :=
  ∀ n, P12288310833318385704.a n = A295662 (n + 1)

theorem P12288310833318385704.correct : P12288310833318385704.Spec := by
  intro n
  simp only [A295662, Nat.add_sub_cancel]

end A295662

/-! ## A295662.P10234100558799453513

`∑{e}[n+1, (#%#²)%2]`
-/

namespace A295662.P10234100558799453513
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p % Nat.factorization (f1 n) p ^ 2 % 2

end

end A295662.P10234100558799453513

namespace A295662

/-- `∑{e}[n+1, (#%#²)%2]` -/
def P10234100558799453513.Spec : Prop :=
  ∀ n, (P10234100558799453513.a n : ℤ) = A295662 (n + 1)

end A295662

/-! ## A295662.P6592810849187059153

`log2(A368168(n+1))`
-/

namespace A295662.P6592810849187059153
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A368168 (n + 1) : ℝ)

end

end A295662.P6592810849187059153

namespace A295662

/-- `log2(A368168(n+1))` -/
def P6592810849187059153.Spec : Prop :=
  ∀ n, P6592810849187059153.a n = (A295662 (n + 1) : ℝ)

end A295662

/-! ## A295662.P16640016030538191831

`∑{e}[A055229(n+1), #]`
-/

namespace A295662.P16640016030538191831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055229 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A295662.P16640016030538191831

namespace A295662

/-- `∑{e}[A055229(n+1), #]` -/
def P16640016030538191831.Spec : Prop :=
  ∀ n, (P16640016030538191831.a n : ℤ) = A295662 (n + 1)

end A295662

/-! ## A295662.P6548524262434056992

`∑{e}[n+1, A072927(#)]`
-/

namespace A295662.P6548524262434056992
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A072927 (Nat.factorization (f1 n) p)

end

end A295662.P6548524262434056992

namespace A295662

/-- `∑{e}[n+1, A072927(#)]` -/
def P6548524262434056992.Spec : Prop :=
  ∀ n, P6548524262434056992.a n = A295662 (n + 1)

end A295662

/-! ## A295662.P12350742872082159974

`∑{e}[n+1, (#*A000040(#))%2]`
-/

namespace A295662.P12350742872082159974
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), Int.tmod ((Nat.factorization (f1 n) p : ℤ) * A000040 (Nat.factorization (f1 n) p)) 2

end

end A295662.P12350742872082159974

namespace A295662

/-- `∑{e}[n+1, (#*A000040(#))%2]` -/
def P12350742872082159974.Spec : Prop :=
  ∀ n, P12350742872082159974.a n = A295662 (n + 1)

end A295662

/-! ## A295662.P4590300622831400933

`A001221(A055229(n+1))`
-/

namespace A295662.P4590300622831400933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A055229 (n + 1)).toNat

end

end A295662.P4590300622831400933

namespace A295662

/-- `A001221(A055229(n+1))` -/
def P4590300622831400933.Spec : Prop :=
  ∀ n, P4590300622831400933.a n = A295662 (n + 1)

end A295662

/-! ## A295662.P4765681235646837055

`A001221(A056191(n+1))`
-/

namespace A295662.P4765681235646837055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A056191 (n + 1)).toNat

end

end A295662.P4765681235646837055

namespace A295662

/-- `A001221(A056191(n+1))` -/
def P4765681235646837055.Spec : Prop :=
  ∀ n, P4765681235646837055.a n = A295662 (n + 1)

end A295662

/-! ## A295662.P5891204060836238248

`A162641(A003557(n+1))`
-/

namespace A295662.P5891204060836238248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162641 (A003557 (n + 1)).toNat

end

end A295662.P5891204060836238248

namespace A295662

/-- `A162641(A003557(n+1))` -/
def P5891204060836238248.Spec : Prop :=
  ∀ n, P5891204060836238248.a n = A295662 (n + 1)

end A295662

/-! ## A295662.P13086156341551717172

`A001221(A368167(n+1))`
-/

namespace A295662.P13086156341551717172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A368167 (n + 1)).toNat

end

end A295662.P13086156341551717172

namespace A295662

/-- `A001221(A368167(n+1))` -/
def P13086156341551717172.Spec : Prop :=
  ∀ n, P13086156341551717172.a n = A295662 (n + 1)

end A295662

/-! ## A295662.P1457738836899959710

`A162641(A055229(n+1)²)`
-/

namespace A295662.P1457738836899959710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162641 (A055229 (n + 1) ^ 2).toNat

end

end A295662.P1457738836899959710

namespace A295662

/-- `A162641(A055229(n+1)²)` -/
def P1457738836899959710.Spec : Prop :=
  ∀ n, P1457738836899959710.a n = A295662 (n + 1)

end A295662

/-! ## A295662.P11898550358259589369

`A001222(gcd(∑{p}[n+1, (n+1)/#], A007913(n+1)))`
-/

namespace A295662.P11898550358259589369
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.gcd (SequenceMachineLib.roundAway (∑ p ∈ Nat.primeFactors (f1 n), (n + 1 : ℚ) / (p : ℚ))) (A007913 (n + 1)))

end

end A295662.P11898550358259589369

namespace A295662

/-- `A001222(gcd(∑{p}[n+1, (n+1)/#], A007913(n+1)))` -/
def P11898550358259589369.Spec : Prop :=
  ∀ n, P11898550358259589369.a n = A295662 (n + 1)

end A295662

/-! ## A295662.P10152551763889554463

`A056169(A007913(A057521(n+1)))`
-/

namespace A295662.P10152551763889554463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056169 (A007913 (A057521 (n + 1)).toNat).toNat

end

end A295662.P10152551763889554463

namespace A295662

/-- `A056169(A007913(A057521(n+1)))` -/
def P10152551763889554463.Spec : Prop :=
  ∀ n, P10152551763889554463.a n = A295662 (n + 1)

end A295662

/-! ## A295662.P8269258079788180173

`A001222(∏{e}[n+1, A000045(A014963(#))])`
-/

namespace A295662.P8269258079788180173
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (∏ p ∈ Nat.primeFactors (f1 n), A000045 (A014963 (Nat.factorization (f1 n) p)).toNat).toNat

end

end A295662.P8269258079788180173

namespace A295662

/-- `A001222(∏{e}[n+1, A000045(A014963(#))])` -/
def P8269258079788180173.Spec : Prop :=
  ∀ n, P8269258079788180173.a n = A295662 (n + 1)

end A295662

/-! ## A295662.P1053788647501176324

`A001222(∏{e}[n+1, A000045(A020639(#))])`
-/

namespace A295662.P1053788647501176324
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (∏ p ∈ Nat.primeFactors (f1 n), A000045 (A020639 (Nat.factorization (f1 n) p)).toNat).toNat

end

end A295662.P1053788647501176324

namespace A295662

/-- `A001222(∏{e}[n+1, A000045(A020639(#))])` -/
def P1053788647501176324.Spec : Prop :=
  ∀ n, P1053788647501176324.a n = A295662 (n + 1)

end A295662

/-! ## A295662.P5638467106701200723

`A001222(gcd(A007913(n+1), A057521(n+1)))`
-/

namespace A295662.P5638467106701200723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.gcd (A007913 (n + 1)) (A057521 (n + 1)))

end

end A295662.P5638467106701200723

namespace A295662

/-- `A001222(gcd(A007913(n+1), A057521(n+1)))` -/
def P5638467106701200723.Spec : Prop :=
  ∀ n, P5638467106701200723.a n = A295662 (n + 1)

end A295662

/-! ## A295662.P13080563328972331994

`gcd(A007462(n), A366145(n+1))-1`
-/

namespace A295662.P13080563328972331994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd (A007462 n) (A366145 (n + 1)) : ℤ) - 1

end

end A295662.P13080563328972331994

namespace A295662

/-- `gcd(A007462(n), A366145(n+1))-1` -/
def P13080563328972331994.Spec : Prop :=
  ∀ n, P13080563328972331994.a n = A295662 (n + 1)

end A295662

/-! ## A295662.P1017275766627792518

`A019321(n)%A055229(n+1)`
-/

namespace A295662.P1017275766627792518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A019321 n) (A055229 (n + 1))

end

end A295662.P1017275766627792518

namespace A295662

/-- `A019321(n)%A055229(n+1)` -/
def P1017275766627792518.Spec : Prop :=
  ∀ n, P1017275766627792518.a n = A295662 (n + 1)

end A295662

/-! ## A295662.P12023069481634637492

`A020502(n)%A055229(n+1)`
-/

namespace A295662.P12023069481634637492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A020502 n) (A055229 (n + 1))

end

end A295662.P12023069481634637492

namespace A295662

/-- `A020502(n)%A055229(n+1)` -/
def P12023069481634637492.Spec : Prop :=
  ∀ n, P12023069481634637492.a n = A295662 (n + 1)

end A295662

/-! ## A295662.P1233184051535161425

`and(A025172(n), A123391(n+1))`
-/

namespace A295662.P1233184051535161425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A025172 n) (A123391 (n + 1))

end

end A295662.P1233184051535161425

namespace A295662

/-- `and(A025172(n), A123391(n+1))` -/
def P1233184051535161425.Spec : Prop :=
  ∀ n, P1233184051535161425.a n = A295662 (n + 1)

end A295662

/-!
# A295663: a(n) = A295664(n) - A056169(n); 2-adic valuation of tau(n) minus the number of unitary prime divisors of n.

The programs for A295663, the canonical program `A295663.P17834831274286769221` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A295663 has offset 1).

The definition of A295663 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056169, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A295663.P17834831274286769221

`A295664(n+1)-A056169(n+1)`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A295663

/-- `A295664(n+1)-A056169(n+1)` -/
def P17834831274286769221.Spec : Prop :=
  ∀ n, P17834831274286769221.a n = A295663 (n + 1)

theorem P17834831274286769221.correct : P17834831274286769221.Spec := by
  intro n
  simp only [A295663, Nat.add_sub_cancel]

end A295663

/-! ## A295663.P7899088616712636378

`val(A357669(n+1), 2)`
-/

namespace A295663.P7899088616712636378
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A357669 (n + 1)).toNat 2

end

end A295663.P7899088616712636378

namespace A295663

/-- `val(A357669(n+1), 2)` -/
def P7899088616712636378.Spec : Prop :=
  ∀ n, (P7899088616712636378.a n : ℤ) = A295663 (n + 1)

end A295663

/-! ## A295663.P1542778867070109855

`val(A366145(n+1), 2)`
-/

namespace A295663.P1542778867070109855
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A366145 (n + 1)).toNat 2

end

end A295663.P1542778867070109855

namespace A295663

/-- `val(A366145(n+1), 2)` -/
def P1542778867070109855.Spec : Prop :=
  ∀ n, (P1542778867070109855.a n : ℤ) = A295663 (n + 1)

end A295663

/-! ## A295663.P11571628273245444083

`val(A368169(n+1), 2)`
-/

namespace A295663.P11571628273245444083
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A368169 (n + 1)).toNat 2

end

end A295663.P11571628273245444083

namespace A295663

/-- `val(A368169(n+1), 2)` -/
def P11571628273245444083.Spec : Prop :=
  ∀ n, (P11571628273245444083.a n : ℤ) = A295663 (n + 1)

end A295663

/-! ## A295663.P7917691811526215283

`val(A369716(n+1), 2)`
-/

namespace A295663.P7917691811526215283
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A369716 (n + 1)).toNat 2

end

end A295663.P7917691811526215283

namespace A295663

/-- `val(A369716(n+1), 2)` -/
def P7917691811526215283.Spec : Prop :=
  ∀ n, (P7917691811526215283.a n : ℤ) = A295663 (n + 1)

end A295663

/-! ## A295663.P15588583486430213076

`∑{e}[n+1, A007814(#+1)%#]`
-/

namespace A295663.P15588583486430213076
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), Int.tmod (A007814 (Nat.factorization (f1 n) p + 1)) (Nat.factorization (f1 n) p : ℤ)

end

end A295663.P15588583486430213076

namespace A295663

/-- `∑{e}[n+1, A007814(#+1)%#]` -/
def P15588583486430213076.Spec : Prop :=
  ∀ n, P15588583486430213076.a n = A295663 (n + 1)

end A295663

/-! ## A295663.P8387092757454577394

`A295664(A057521(n+1))`
-/

namespace A295663.P8387092757454577394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295664 (A057521 (n + 1)).toNat

end

end A295663.P8387092757454577394

namespace A295663

/-- `A295664(A057521(n+1))` -/
def P8387092757454577394.Spec : Prop :=
  ∀ n, P8387092757454577394.a n = A295663 (n + 1)

end A295663

/-! ## A295663.P8763617093807315709

`A007814(A357669(n+1))`
-/

namespace A295663.P8763617093807315709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A357669 (n + 1)).toNat

end

end A295663.P8763617093807315709

namespace A295663

/-- `A007814(A357669(n+1))` -/
def P8763617093807315709.Spec : Prop :=
  ∀ n, P8763617093807315709.a n = A295663 (n + 1)

end A295663

/-! ## A295663.P1266002982816065447

`val(A343443(A292589(n+1)), 2)`
-/

namespace A295663.P1266002982816065447
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A343443 (A292589 (n + 1)).toNat).toNat 2

end

end A295663.P1266002982816065447

namespace A295663

/-- `val(A343443(A292589(n+1)), 2)` -/
def P1266002982816065447.Spec : Prop :=
  ∀ n, (P1266002982816065447.a n : ℤ) = A295663 (n + 1)

end A295663

/-! ## A295663.P9886153168827091481

`∑{e}[n+1, val(A044917(#+1), A101777(#+1))]`
-/

namespace A295663.P9886153168827091481
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), SequenceMachineLib.valuation (A044917 (Nat.factorization (f1 n) p + 1)).toNat (A101777 (Nat.factorization (f1 n) p + 1)).toNat

end

end A295663.P9886153168827091481

namespace A295663

/-- `∑{e}[n+1, val(A044917(#+1), A101777(#+1))]` -/
def P9886153168827091481.Spec : Prop :=
  ∀ n, (P9886153168827091481.a n : ℤ) = A295663 (n + 1)

end A295663

/-! ## A295663.P15712326048598219574

`A007814(A000005(n+1))-A056169(n+1)`
-/

namespace A295663.P15712326048598219574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A000005 (n + 1)).toNat - A056169 (n + 1)

end

end A295663.P15712326048598219574

namespace A295663

/-- `A007814(A000005(n+1))-A056169(n+1)` -/
def P15712326048598219574.Spec : Prop :=
  ∀ n, P15712326048598219574.a n = A295663 (n + 1)

end A295663

/-! ## A295663.P3241126478100985663

`A295664(n+1)-A295664(A007948(n+1))`
-/

namespace A295663.P3241126478100985663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295664 (n + 1) - A295664 (A007948 (n + 1)).toNat

end

end A295663.P3241126478100985663

namespace A295663

/-- `A295664(n+1)-A295664(A007948(n+1))` -/
def P3241126478100985663.Spec : Prop :=
  ∀ n, P3241126478100985663.a n = A295663 (n + 1)

end A295663

/-! ## A295663.P16709908894497187055

`A295664(n+1)-A007814(A295878(n+1))`
-/

namespace A295663.P16709908894497187055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295664 (n + 1) - A007814 (A295878 (n + 1)).toNat

end

end A295663.P16709908894497187055

namespace A295663

/-- `A295664(n+1)-A007814(A295878(n+1))` -/
def P16709908894497187055.Spec : Prop :=
  ∀ n, P16709908894497187055.a n = A295663 (n + 1)

end A295663

/-! ## A295663.P14525370005817903745

`A295662(n+1)+A295664(n+1)-A162642(n+1)`
-/

namespace A295663.P14525370005817903745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295662 (n + 1) + (A295664 (n + 1) - A162642 (n + 1))

end

end A295663.P14525370005817903745

namespace A295663

/-- `A295662(n+1)+A295664(n+1)-A162642(n+1)` -/
def P14525370005817903745.Spec : Prop :=
  ∀ n, P14525370005817903745.a n = A295663 (n + 1)

theorem P14525370005817903745.correct : P14525370005817903745.Spec := by
  intro n
  simp only [A295663, Nat.add_sub_cancel, A295663.P14525370005817903745.a, A295663.P17834831274286769221.a, A056169, A056169.P17430176249366647977.a, A162642, A162642.P6212984874729219521.a, A295662, A295662.P12288310833318385704.a, A295664, A295664.P6712857258460992871.a, A000005, A000005.P16091521709108585461.a, A001221, A001221.P10258181745752134128.a, A007814, A007814.P13537437864234730737.a, A055231, A055231.P8962300905713718501.a, A162641, A162641.P7922189454188814525.a, A001511, A001511.P17146462531039486101.a, A005089, A005089.P4329807401814625450.f1, A005089.P4329807401814625450.a, A005091, A005091.P2802037195389751204.f1, A005091.P2802037195389751204.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, A059841, A059841.P2666504972441551157.a, A071773, A071773.P10459083202328690793.a, A336643, A336643.P7928680159681903247.a, A006519, A006519.P10435570611646570274.a, A007913, A007913.P11359412940648999332.a, A057521, A057521.P7284310941140114823.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A295663

/-! ## A295663.P1512261270940366262

`∑{e}[n+1, A051628(#+1)*A113080(A233777(#)+1)]`
-/

namespace A295663.P1512261270940366262
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A051628 (Nat.factorization (f1 n) p + 1) * A113080 (A233777 (Nat.factorization (f1 n) p) + 1).toNat

end

end A295663.P1512261270940366262

namespace A295663

/-- `∑{e}[n+1, A051628(#+1)*A113080(A233777(#)+1)]` -/
def P1512261270940366262.Spec : Prop :=
  ∀ n, P1512261270940366262.a n = A295663 (n + 1)

end A295663

/-! ## A295663.P2136306226653080544

`val(A000005(∏{e}[n+1, #^#]), 2)`
-/

namespace A295663.P2136306226653080544
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A000005 (∏ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p ^ Nat.factorization (f1 n) p)).toNat 2

end

end A295663.P2136306226653080544

namespace A295663

/-- `val(A000005(∏{e}[n+1, #^#]), 2)` -/
def P2136306226653080544.Spec : Prop :=
  ∀ n, (P2136306226653080544.a n : ℤ) = A295663 (n + 1)

end A295663

/-! ## A295663.P10019090185726086331

`val(A000005(A112622(n+1)), 2)`
-/

namespace A295663.P10019090185726086331
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A000005 (A112622 (n + 1)).toNat).toNat 2

end

end A295663.P10019090185726086331

namespace A295663

/-- `val(A000005(A112622(n+1)), 2)` -/
def P10019090185726086331.Spec : Prop :=
  ∀ n, (P10019090185726086331.a n : ℤ) = A295663 (n + 1)

end A295663

/-! ## A295663.P8738956768803901052

`A212613(n)%A115568(n+1)`
-/

namespace A295663.P8738956768803901052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A212613 n) (A115568 (n + 1))

end

end A295663.P8738956768803901052

namespace A295663

/-- `A212613(n)%A115568(n+1)` -/
def P8738956768803901052.Spec : Prop :=
  ∀ n, P8738956768803901052.a n = A295663 (n + 1)

end A295663

/-!
# A295664: Exponent of the highest power of 2 dividing number of divisors of n: a(n) = A007814(A000005(n)); 2-adic valuation of tau(n).

The programs for A295664, the canonical program `A295664.P6712857258460992871` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A295664 has offset 1).

The definition of A295664 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A007814(A000005(n+1))` (program `A295664.P6712857258460992871`, by `A295664.P6712857258460992871.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A295664.P6712857258460992871

`A007814(A000005(n+1))`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A295664

/-- `A007814(A000005(n+1))` -/
def P6712857258460992871.Spec : Prop :=
  ∀ n, P6712857258460992871.a n = A295664 (n + 1)

theorem P6712857258460992871.correct : P6712857258460992871.Spec := by
  intro n
  simp only [A295664, Nat.add_sub_cancel]

end A295664

/-! ## A295664.P3982653310089555785

`A007814(1+A067029(n+1))+a(A028234(n+1)-1)` with `a(0)=0, a(1)=1`
-/

namespace A295664.P3982653310089555785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A007814 (1 + A067029 (n + 1)).toNat + a (A028234 (n + 1) - 1).toNat

end

end A295664.P3982653310089555785

namespace A295664

/-- `A007814(1+A067029(n+1))+a(A028234(n+1)-1)` -/
def P3982653310089555785.Spec : Prop :=
  ∀ n, P3982653310089555785.a n = A295664 (n + 1)

end A295664

/-! ## A295664.P12319209041644068423

`∑{e}[n+1, val(#+1, 2)]`
-/

namespace A295664.P12319209041644068423
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), SequenceMachineLib.valuation (Nat.factorization (f1 n) p + 1) 2

end

end A295664.P12319209041644068423

namespace A295664

/-- `∑{e}[n+1, val(#+1, 2)]` -/
def P12319209041644068423.Spec : Prop :=
  ∀ n, (P12319209041644068423.a n : ℤ) = A295664 (n + 1)

end A295664

/-! ## A295664.P2883865193922443092

`val(∏{e}[n+1, #+1], 2)`
-/

namespace A295664.P2883865193922443092
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1)) 2

end

end A295664.P2883865193922443092

namespace A295664

/-- `val(∏{e}[n+1, #+1], 2)` -/
def P2883865193922443092.Spec : Prop :=
  ∀ n, (P2883865193922443092.a n : ℤ) = A295664 (n + 1)

end A295664

/-! ## A295664.P2225341029422264727

`val(∑{d}[n+1, gcd(n, #)], 2)`
-/

namespace A295664.P2225341029422264727
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (∑ d ∈ Nat.divisors (f1 n), Nat.gcd n d) 2

end

end A295664.P2225341029422264727

namespace A295664

/-- `val(∑{d}[n+1, gcd(n, #)], 2)` -/
def P2225341029422264727.Spec : Prop :=
  ∀ n, (P2225341029422264727.a n : ℤ) = A295664 (n + 1)

end A295664

/-! ## A295664.P9332071460336869937

`val(Δ[A006218(n)], 2)`
-/

namespace A295664.P9332071460336869937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (f1 (n + 1) - f1 n).toNat 2

end

end A295664.P9332071460336869937

namespace A295664

/-- `val(Δ[A006218(n)], 2)` -/
def P9332071460336869937.Spec : Prop :=
  ∀ n, (P9332071460336869937.a n : ℤ) = A295664 (n + 1)

end A295664

/-! ## A295664.P18037821769556087538

`val(Δ[A054519(n)], 2)`
-/

namespace A295664.P18037821769556087538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054519 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (f1 (n + 1) - f1 n).toNat 2

end

end A295664.P18037821769556087538

namespace A295664

/-- `val(Δ[A054519(n)], 2)` -/
def P18037821769556087538.Spec : Prop :=
  ∀ n, (P18037821769556087538.a n : ℤ) = A295664 (n + 1)

end A295664

/-! ## A295664.P13984476161968638589

`val(A072695(n+1), 2)`
-/

namespace A295664.P13984476161968638589
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A072695 (n + 1)).toNat 2

end

end A295664.P13984476161968638589

namespace A295664

/-- `val(A072695(n+1), 2)` -/
def P13984476161968638589.Spec : Prop :=
  ∀ n, (P13984476161968638589.a n : ℤ) = A295664 (n + 1)

end A295664

/-! ## A295664.P8053219246614432571

`val(A336845(n+1), 2)`
-/

namespace A295664.P8053219246614432571
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A336845 (n + 1)).toNat 2

end

end A295664.P8053219246614432571

namespace A295664

/-- `val(A336845(n+1), 2)` -/
def P8053219246614432571.Spec : Prop :=
  ∀ n, (P8053219246614432571.a n : ℤ) = A295664 (n + 1)

end A295664

/-! ## A295664.P18387352613185346641

`val(A336846(n+1), 2)`
-/

namespace A295664.P18387352613185346641
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A336846 (n + 1)).toNat 2

end

end A295664.P18387352613185346641

namespace A295664

/-- `val(A336846(n+1), 2)` -/
def P18387352613185346641.Spec : Prop :=
  ∀ n, (P18387352613185346641.a n : ℤ) = A295664 (n + 1)

end A295664

/-! ## A295664.P2585560549975297417

`val(A336856(n+1), 2)`
-/

namespace A295664.P2585560549975297417
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A336856 (n + 1)).toNat 2

end

end A295664.P2585560549975297417

namespace A295664

/-- `val(A336856(n+1), 2)` -/
def P2585560549975297417.Spec : Prop :=
  ∀ n, (P2585560549975297417.a n : ℤ) = A295664 (n + 1)

end A295664

/-! ## A295664.P657806370845105180

`val(A351346(n+1), 2)`
-/

namespace A295664.P657806370845105180
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A351346 (n + 1)).toNat 2

end

end A295664.P657806370845105180

namespace A295664

/-- `val(A351346(n+1), 2)` -/
def P657806370845105180.Spec : Prop :=
  ∀ n, (P657806370845105180.a n : ℤ) = A295664 (n + 1)

end A295664

/-! ## A295664.P7545765943943445231

`val(A356574(n+1), 2)`
-/

namespace A295664.P7545765943943445231
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A356574 (n + 1)).toNat 2

end

end A295664.P7545765943943445231

namespace A295664

/-- `val(A356574(n+1), 2)` -/
def P7545765943943445231.Spec : Prop :=
  ∀ n, (P7545765943943445231.a n : ℤ) = A295664 (n + 1)

end A295664

/-! ## A295664.P10288560518995335709

`val(A365402(n+1), 2)`
-/

namespace A295664.P10288560518995335709
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A365402 (n + 1)).toNat 2

end

end A295664.P10288560518995335709

namespace A295664

/-- `val(A365402(n+1), 2)` -/
def P10288560518995335709.Spec : Prop :=
  ∀ n, (P10288560518995335709.a n : ℤ) = A295664 (n + 1)

end A295664

/-! ## A295664.P10204181734102291808

`val(A035116(n+1), 4)`
-/

namespace A295664.P10204181734102291808
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A035116 (n + 1)).toNat 4

end

end A295664.P10204181734102291808

namespace A295664

/-- `val(A035116(n+1), 4)` -/
def P10204181734102291808.Spec : Prop :=
  ∀ n, (P10204181734102291808.a n : ℤ) = A295664 (n + 1)

end A295664

/-! ## A295664.P13347236603277195401

`val(A319089(n+1), 8)`
-/

namespace A295664.P13347236603277195401
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A319089 (n + 1)).toNat 8

end

end A295664.P13347236603277195401

namespace A295664

/-- `val(A319089(n+1), 8)` -/
def P13347236603277195401.Spec : Prop :=
  ∀ n, (P13347236603277195401.a n : ℤ) = A295664 (n + 1)

end A295664

/-! ## A295664.P10878373187675849280

`∑{e}[n+1, A254990(#)]`
-/

namespace A295664.P10878373187675849280
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A254990 (Nat.factorization (f1 n) p)

end

end A295664.P10878373187675849280

namespace A295664

/-- `∑{e}[n+1, A254990(#)]` -/
def P10878373187675849280.Spec : Prop :=
  ∀ n, P10878373187675849280.a n = A295664 (n + 1)

end A295664

/-! ## A295664.P12847423198333055098

`val(A032741(n+1)+1, 2)`
-/

namespace A295664.P12847423198333055098
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A032741 (n + 1) + 1).toNat 2

end

end A295664.P12847423198333055098

namespace A295664

/-- `val(A032741(n+1)+1, 2)` -/
def P12847423198333055098.Spec : Prop :=
  ∀ n, (P12847423198333055098.a n : ℤ) = A295664 (n + 1)

end A295664

/-! ## A295664.P6870620075295034022

`val(A062011(n+1), 2)-1`
-/

namespace A295664.P6870620075295034022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (A062011 (n + 1)).toNat 2 : ℤ) - 1

end

end A295664.P6870620075295034022

namespace A295664

/-- `val(A062011(n+1), 2)-1` -/
def P6870620075295034022.Spec : Prop :=
  ∀ n, P6870620075295034022.a n = A295664 (n + 1)

end A295664

/-! ## A295664.P6996801090867240801

`val(A334954(n+1)-1, 2)`
-/

namespace A295664.P6996801090867240801
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A334954 (n + 1) - 1).toNat 2

end

end A295664.P6996801090867240801

namespace A295664

/-- `val(A334954(n+1)-1, 2)` -/
def P6996801090867240801.Spec : Prop :=
  ∀ n, (P6996801090867240801.a n : ℤ) = A295664 (n + 1)

end A295664

/-!
# A295665: Fully multiplicative with a(prime(m)) = prime(k) when m = prime(k), and a(prime(m)) = 1 when m is not a prime.

The programs for A295665, the canonical program `A295665.P8386356158588358576` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A295665 has offset 1).

The definition of A295665 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A295665.P8386356158588358576

`A003963(A360325(n+1))`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A295665

/-- `A003963(A360325(n+1))` -/
def P8386356158588358576.Spec : Prop :=
  ∀ n, P8386356158588358576.a n = A295665 (n + 1)

theorem P8386356158588358576.correct : P8386356158588358576.Spec := by
  intro n
  simp only [A295665, Nat.add_sub_cancel]

end A295665

/-! ## A295665.P13610682784389156300

`A003963((n+1)/A360329(n+1))`
-/

namespace A295665.P13610682784389156300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A360329 (n + 1) : ℚ))).toNat

end

end A295665.P13610682784389156300

namespace A295665

/-- `A003963((n+1)/A360329(n+1))` -/
def P13610682784389156300.Spec : Prop :=
  ∀ n, P13610682784389156300.a n = A295665 (n + 1)

end A295665

/-! ## A295665.P17225331951111649465

`∏{e}[A181821(n+1), A080305(#)]`
-/

namespace A295665.P17225331951111649465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181821 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A080305 (Nat.factorization (f1 n).natAbs p)

end

end A295665.P17225331951111649465

namespace A295665

/-- `∏{e}[A181821(n+1), A080305(#)]` -/
def P17225331951111649465.Spec : Prop :=
  ∀ n, P17225331951111649465.a n = A295665 (n + 1)

end A295665

/-! ## A295665.P6468191586428141513

`∏{e}[A181821(n+1), A089026(#)]`
-/

namespace A295665.P6468191586428141513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181821 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A089026 (Nat.factorization (f1 n).natAbs p)

end

end A295665.P6468191586428141513

namespace A295665

/-- `∏{e}[A181821(n+1), A089026(#)]` -/
def P6468191586428141513.Spec : Prop :=
  ∀ n, P6468191586428141513.a n = A295665 (n + 1)

end A295665

/-! ## A295665.P14378193118114868996

`∏{e}[A181821(n+1), A014963(A003968(#))]`
-/

namespace A295665.P14378193118114868996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181821 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A014963 (A003968 (Nat.factorization (f1 n).natAbs p)).toNat

end

end A295665.P14378193118114868996

namespace A295665

/-- `∏{e}[A181821(n+1), A014963(A003968(#))]` -/
def P14378193118114868996.Spec : Prop :=
  ∀ n, P14378193118114868996.a n = A295665 (n + 1)

end A295665

/-! ## A295665.P1833311125514236997

`∏{e}[A181821(n+1), A028310(A061397(#))]`
-/

namespace A295665.P1833311125514236997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181821 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A028310 (A061397 (Nat.factorization (f1 n).natAbs p)).toNat

end

end A295665.P1833311125514236997

namespace A295665

/-- `∏{e}[A181821(n+1), A028310(A061397(#))]` -/
def P1833311125514236997.Spec : Prop :=
  ∀ n, P1833311125514236997.a n = A295665 (n + 1)

end A295665

/-! ## A295665.P6435211728841927836

`∏{e}[A181821(n+1), A032742(A074828(#))]`
-/

namespace A295665.P6435211728841927836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181821 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A032742 (A074828 (Nat.factorization (f1 n).natAbs p)).toNat

end

end A295665.P6435211728841927836

namespace A295665

/-- `∏{e}[A181821(n+1), A032742(A074828(#))]` -/
def P6435211728841927836.Spec : Prop :=
  ∀ n, P6435211728841927836.a n = A295665 (n + 1)

end A295665

/-! ## A295665.P17562898638874969994

`∏{e}[A181821(n+1), A014963(A332462(#))]`
-/

namespace A295665.P17562898638874969994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181821 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A014963 (A332462 (Nat.factorization (f1 n).natAbs p)).toNat

end

end A295665.P17562898638874969994

namespace A295665

/-- `∏{e}[A181821(n+1), A014963(A332462(#))]` -/
def P17562898638874969994.Spec : Prop :=
  ∀ n, P17562898638874969994.a n = A295665 (n + 1)

end A295665

/-!
# A295666: a(n) = Product_{d|n, gcd(d,n/d) is prime} gcd(d,n/d).

The programs for A295666, the canonical program `A295666.P10284647198696941857` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A295666 has offset 1).

The definition of A295666 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A295666.P17755419896915090388

`A295665(A294876(n+1))`
-/

namespace A295666.P17755419896915090388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295665 (A294876 (n + 1)).toNat

end

end A295666.P17755419896915090388

namespace A295666

/-- `A295665(A294876(n+1))` -/
def P17755419896915090388.Spec : Prop :=
  ∀ n, P17755419896915090388.a n = A295666 (n + 1)

end A295666

/-! ## A295666.P16879789355494218918

`A322020(A058035(n+1))`
-/

namespace A295666.P16879789355494218918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322020 (A058035 (n + 1)).toNat

end

end A295666.P16879789355494218918

namespace A295666

/-- `A322020(A058035(n+1))` -/
def P16879789355494218918.Spec : Prop :=
  ∀ n, P16879789355494218918.a n = A295666 (n + 1)

end A295666

/-! ## A295666.P10284647198696941857

`∏{d}[A058035(n+1), A014963(A003557(#))]`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A295666

/-- `∏{d}[A058035(n+1), A014963(A003557(#))]` -/
def P10284647198696941857.Spec : Prop :=
  ∀ n, P10284647198696941857.a n = A295666 (n + 1)

theorem P10284647198696941857.correct : P10284647198696941857.Spec := by
  intro n
  simp only [A295666, Nat.add_sub_cancel]

end A295666

/-! ## A295666.P9169080035081578582

`∏{d}[A058035(n+1), A014963(A071773(#))]`
-/

namespace A295666.P9169080035081578582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058035 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A014963 (A071773 d).toNat

end

end A295666.P9169080035081578582

namespace A295666

/-- `∏{d}[A058035(n+1), A014963(A071773(#))]` -/
def P9169080035081578582.Spec : Prop :=
  ∀ n, P9169080035081578582.a n = A295666 (n + 1)

end A295666

/-! ## A295666.P5122977689773998342

`A007948(A003557(n+1))^A003557(A034444(n+1))`
-/

namespace A295666.P5122977689773998342
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007948 (A003557 (n + 1)).toNat : ℚ) ^ (A003557 (A034444 (n + 1)).toNat : ℤ)

end

end A295666.P5122977689773998342

namespace A295666

/-- `A007948(A003557(n+1))^A003557(A034444(n+1))` -/
def P5122977689773998342.Spec : Prop :=
  ∀ n, P5122977689773998342.a n = (A295666 (n + 1) : ℚ)

end A295666

/-! ## A295666.P3014025868604389322

`gcd(A078599(n+1)², A322020(n+1))`
-/

namespace A295666.P3014025868604389322
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A078599 (n + 1) ^ 2) (A322020 (n + 1))

end

end A295666.P3014025868604389322

namespace A295666

/-- `gcd(A078599(n+1)², A322020(n+1))` -/
def P3014025868604389322.Spec : Prop :=
  ∀ n, (P3014025868604389322.a n : ℤ) = A295666 (n + 1)

end A295666

/-!
# A295668: Numbers k such that (14*10^k + 79)/3 is prime.

The programs for A295668, there is no canonical definition to state claims against.
-/

/-! ## A295668.P11515333282086870754

`A056657(n+1)+A055668(A036673(n+1))`
-/

namespace A295668.P11515333282086870754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056657 (n + 1) + A055668 (A036673 (n + 1)).toNat

end

end A295668.P11515333282086870754

/-!
# A295670: Numbers that have exactly one representation as a sum of six positive squares.

The programs for A295670, there is no canonical definition to state claims against.
-/

/-! ## A295670.P17983625182626607678

`eq[1, A025430(n)]`
-/

namespace A295670.P17983625182626607678
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025430 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A295670.P17983625182626607678

/-! ## A295670.P4473191690820184908

`lt[A253180(A025430(n)²), 1]`
-/

namespace A295670.P4473191690820184908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253180 (A025430 n ^ 2).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A295670.P4473191690820184908

/-! ## A295670.P8644085834162062199

`lt[A000032(A025430(n)²), 2]`
-/

namespace A295670.P8644085834162062199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (A025430 n ^ 2).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A295670.P8644085834162062199

/-! ## A295670.P2824469926695894356

`lt[A073675(A025430(n)+1), 2]`
-/

namespace A295670.P2824469926695894356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073675 (A025430 n + 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A295670.P2824469926695894356

/-!
# A295671: a(n) = a(n-1) + a(n-3) + a(n-4), where a(0) = 1, a(1) = 1, a(2) = 1, a(3) = -1.

The programs for A295671, the canonical program `A295671.P5336275724757938247` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A295671 has offset 0).

The definition of A295671 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+a(n-3)+a(n-4)` (program `A295671.P5336275724757938247`, by `A295671.P5336275724757938247.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A295671.P5336275724757938247

`a(n-1)+a(n-3)+a(n-4)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=-1`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A295671

/-- `a(n-1)+a(n-3)+a(n-4)` -/
def P5336275724757938247.Spec : Prop :=
  ∀ n, P5336275724757938247.a n = A295671 n

theorem P5336275724757938247.correct : P5336275724757938247.Spec := by
  intro n
  simp only [A295671]

end A295671

/-! ## A295671.P7519299232124958025

`ogf((-1+3x^3)/(-1+x+x^3+x^4))`
-/

namespace A295671.P7519299232124958025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, 0, -3] [1, -1, 0, -1, -1] n

end

end A295671.P7519299232124958025

namespace A295671

/-- `ogf((-1+3x^3)/(-1+x+x^3+x^4))` -/
def P7519299232124958025.Spec : Prop :=
  ∀ n, P7519299232124958025.a n = A295671 n

end A295671

/-! ## A295671.P10333606695092227250

`A295675(n)+A295675(n)-A295676(n)`
-/

namespace A295671.P10333606695092227250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295675 n + (A295675 n - A295676 n)

end

end A295671.P10333606695092227250

namespace A295671

/-- `A295675(n)+A295675(n)-A295676(n)` -/
def P10333606695092227250.Spec : Prop :=
  ∀ n, P10333606695092227250.a n = A295671 n

end A295671

/-! ## A295671.P5466200120454752349

`2*A000045(n-3)-a(n-2)` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A295671.P5466200120454752349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  2 * A000045 (n - 3) - a (n - 2)

end

end A295671.P5466200120454752349

namespace A295671

/-- `2*A000045(n-3)-a(n-2)` -/
def P5466200120454752349.Spec : Prop :=
  ∀ n, P5466200120454752349.a n = A295671 n

end A295671

/-! ## A295671.P7520705743367016909

`2*A295675(n)-A295676(n)`
-/

namespace A295671.P7520705743367016909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A295675 n - A295676 n

end

end A295671.P7520705743367016909

namespace A295671

/-- `2*A295675(n)-A295676(n)` -/
def P7520705743367016909.Spec : Prop :=
  ∀ n, P7520705743367016909.a n = A295671 n

end A295671

/-! ## A295671.P6243298209724675073

`A126116(n)-A295680(n)`
-/

namespace A295671.P6243298209724675073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126116 n - A295680 n

end

end A295671.P6243298209724675073

namespace A295671

/-- `A126116(n)-A295680(n)` -/
def P6243298209724675073.Spec : Prop :=
  ∀ n, P6243298209724675073.a n = A295671 n

end A295671

/-! ## A295671.P8867348520280371128

`A295685(n)-A236165(n+1)`
-/

namespace A295671.P8867348520280371128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295685 n - A236165 (n + 1)

end

end A295671.P8867348520280371128

namespace A295671

/-- `A295685(n)-A236165(n+1)` -/
def P8867348520280371128.Spec : Prop :=
  ∀ n, P8867348520280371128.a n = A295671 n

end A295671

/-! ## A295671.P11480151434073882128

`A000032(n-2)-(A000045(n-2)+a(n-2))` with `a(0)=1, a(1)=1`
-/

namespace A295671.P11480151434073882128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A000032 (n - 2) - (A000045 (n - 2) + a (n - 2))

end

end A295671.P11480151434073882128

namespace A295671

/-- `A000032(n-2)-(A000045(n-2)+a(n-2))` -/
def P11480151434073882128.Spec : Prop :=
  ∀ n, P11480151434073882128.a n = A295671 n

end A295671

/-! ## A295671.P10650573489191673204

`A295685(n)-A236165(n)-Δ[A236165(n)]`
-/

namespace A295671.P10650573489191673204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236165 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295685 n - A236165 n - (f1 (n + 1) - f1 n)

end

end A295671.P10650573489191673204

namespace A295671

/-- `A295685(n)-A236165(n)-Δ[A236165(n)]` -/
def P10650573489191673204.Spec : Prop :=
  ∀ n, P10650573489191673204.a n = A295671 n

end A295671

/-! ## A295671.P2723352025096355373

`A295687(n)-A000045(n)`
-/

namespace A295671.P2723352025096355373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295687 n - A000045 n

end

end A295671.P2723352025096355373

namespace A295671

/-- `A295687(n)-A000045(n)` -/
def P2723352025096355373.Spec : Prop :=
  ∀ n, P2723352025096355373.a n = A295671 n

end A295671

/-! ## A295671.P11135054740484030069

`A295691(n)-A006498(n)`
-/

namespace A295671.P11135054740484030069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295691 n - A006498 n

end

end A295671.P11135054740484030069

namespace A295671

/-- `A295691(n)-A006498(n)` -/
def P11135054740484030069.Spec : Prop :=
  ∀ n, P11135054740484030069.a n = A295671 n

end A295671

/-! ## A295671.P1392393693004989726

`(A295687(n)-Δ[A295685(n)])/2`
-/

namespace A295671.P1392393693004989726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295685 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A295687 n - (f1 (n + 1) - f1 n) : ℚ) / 2

end

end A295671.P1392393693004989726

namespace A295671

/-- `(A295687(n)-Δ[A295685(n)])/2` -/
def P1392393693004989726.Spec : Prop :=
  ∀ n, P1392393693004989726.a n = (A295671 n : ℚ)

end A295671

/-! ## A295671.P2265738524715672927

`A126116(n)+A126116(n)-A126116(n+1)`
-/

namespace A295671.P2265738524715672927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126116 n + (A126116 n - A126116 (n + 1))

end

end A295671.P2265738524715672927

namespace A295671

/-- `A126116(n)+A126116(n)-A126116(n+1)` -/
def P2265738524715672927.Spec : Prop :=
  ∀ n, P2265738524715672927.a n = A295671 n

end A295671

/-! ## A295671.P4595461632274257842

`A000045(n)+A295685(n)-A295685(n+1)`
-/

namespace A295671.P4595461632274257842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n + (A295685 n - A295685 (n + 1))

end

end A295671.P4595461632274257842

namespace A295671

/-- `A000045(n)+A295685(n)-A295685(n+1)` -/
def P4595461632274257842.Spec : Prop :=
  ∀ n, P4595461632274257842.a n = A295671 n

end A295671

/-! ## A295671.P2278655246243634673

`A000032(n)-A295688(n+1)`
-/

namespace A295671.P2278655246243634673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 n - A295688 (n + 1)

end

end A295671.P2278655246243634673

namespace A295671

/-- `A000032(n)-A295688(n+1)` -/
def P2278655246243634673.Spec : Prop :=
  ∀ n, P2278655246243634673.a n = A295671 n

end A295671

/-! ## A295671.P12607311323032288387

`A000032(n)-(A056594(n+1)+A006498(n+1))`
-/

namespace A295671.P12607311323032288387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 n - (A056594 (n + 1) + A006498 (n + 1))

end

end A295671.P12607311323032288387

namespace A295671

/-- `A000032(n)-(A056594(n+1)+A006498(n+1))` -/
def P12607311323032288387.Spec : Prop :=
  ∀ n, P12607311323032288387.a n = A295671 n

end A295671

/-! ## A295671.P2843744948038694355

`A000071(n+1)+A295687(n)-A000071(n+2)`
-/

namespace A295671.P2843744948038694355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 (n + 1) + (A295687 n - A000071 (n + 2))

end

end A295671.P2843744948038694355

namespace A295671

/-- `A000071(n+1)+A295687(n)-A000071(n+2)` -/
def P2843744948038694355.Spec : Prop :=
  ∀ n, P2843744948038694355.a n = A295671 n

end A295671

/-! ## A295671.P11976649573980625806

`Δ[A295682(n+2)]-A000045(n)`
-/

namespace A295671.P11976649573980625806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295682 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A000045 n

end

end A295671.P11976649573980625806

namespace A295671

/-- `Δ[A295682(n+2)]-A000045(n)` -/
def P11976649573980625806.Spec : Prop :=
  ∀ n, P11976649573980625806.a n = A295671 n

end A295671

/-! ## A295671.P11426377981494660989

`A195971(n+1)-(A295681(n)+A195971(n))`
-/

namespace A295671.P11426377981494660989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195971 (n + 1) - (A295681 n + A195971 n)

end

end A295671.P11426377981494660989

namespace A295671

/-- `A195971(n+1)-(A295681(n)+A195971(n))` -/
def P11426377981494660989.Spec : Prop :=
  ∀ n, P11426377981494660989.a n = A295671 n

end A295671

/-!
# A295672: a(n) = a(n-1) + a(n-3) + a(n-4), where a(0) = 1, a(1) = 1, a(2) = 1, a(3) = -2.

The programs for A295672, the canonical program `A295672.P15413690860780717966` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A295672 has offset 0).

The definition of A295672 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+a(n-3)+a(n-4)` (program `A295672.P15413690860780717966`, by `A295672.P15413690860780717966.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A295672.P15413690860780717966

`a(n-1)+a(n-3)+a(n-4)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=-2`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A295672

/-- `a(n-1)+a(n-3)+a(n-4)` -/
def P15413690860780717966.Spec : Prop :=
  ∀ n, P15413690860780717966.a n = A295672 n

theorem P15413690860780717966.correct : P15413690860780717966.Spec := by
  intro n
  simp only [A295672]

end A295672

/-! ## A295672.P11760761760954520789

`ogf((-1+4x^3)/(-1+x+x^3+x^4))`
-/

namespace A295672.P11760761760954520789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, 0, -4] [1, -1, 0, -1, -1] n

end

end A295672.P11760761760954520789

namespace A295672

/-- `ogf((-1+4x^3)/(-1+x+x^3+x^4))` -/
def P11760761760954520789.Spec : Prop :=
  ∀ n, P11760761760954520789.a n = A295672 n

end A295672

/-! ## A295672.P2649237711670544917

`A295671(n)-A295680(n)/2`
-/

namespace A295672.P2649237711670544917
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A295671 n : ℚ) - (A295680 n : ℚ) / 2

end

end A295672.P2649237711670544917

namespace A295672

/-- `A295671(n)-A295680(n)/2` -/
def P2649237711670544917.Spec : Prop :=
  ∀ n, P2649237711670544917.a n = (A295672 n : ℚ)

end A295672

/-! ## A295672.P13644781978573622570

`A074677(n)-Δ[A295685(n)]`
-/

namespace A295672.P13644781978573622570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295685 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074677 n - (f1 (n + 1) - f1 n)

end

end A295672.P13644781978573622570

namespace A295672

/-- `A074677(n)-Δ[A295685(n)]` -/
def P13644781978573622570.Spec : Prop :=
  ∀ n, P13644781978573622570.a n = A295672 n

end A295672

/-! ## A295672.P18184097233995526306

`A295691(n)-A126116(n+1)`
-/

namespace A295672.P18184097233995526306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295691 n - A126116 (n + 1)

end

end A295672.P18184097233995526306

namespace A295672

/-- `A295691(n)-A126116(n+1)` -/
def P18184097233995526306.Spec : Prop :=
  ∀ n, P18184097233995526306.a n = A295672 n

end A295672

/-! ## A295672.P1377431907059590803

`A295687(n)-A295684(n+1)`
-/

namespace A295672.P1377431907059590803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295687 n - A295684 (n + 1)

end

end A295672.P1377431907059590803

namespace A295672

/-- `A295687(n)-A295684(n+1)` -/
def P1377431907059590803.Spec : Prop :=
  ∀ n, P1377431907059590803.a n = A295672 n

end A295672

/-! ## A295672.P4446302939378150740

`A006498(n)-2*A295680(n)`
-/

namespace A295672.P4446302939378150740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006498 n - 2 * A295680 n

end

end A295672.P4446302939378150740

namespace A295672

/-- `A006498(n)-2*A295680(n)` -/
def P4446302939378150740.Spec : Prop :=
  ∀ n, P4446302939378150740.a n = A295672 n

end A295672

/-! ## A295672.P10627766559118285611

`A126116(n)+A295671(n)-A006498(n)`
-/

namespace A295672.P10627766559118285611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126116 n + (A295671 n - A006498 n)

end

end A295672.P10627766559118285611

namespace A295672

/-- `A126116(n)+A295671(n)-A006498(n)` -/
def P10627766559118285611.Spec : Prop :=
  ∀ n, P10627766559118285611.a n = A295672 n

end A295672

/-! ## A295672.P8114193738241915905

`A295687(n)-(A295680(n)+A074677(n))`
-/

namespace A295672.P8114193738241915905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295687 n - (A295680 n + A074677 n)

end

end A295672.P8114193738241915905

namespace A295672

/-- `A295687(n)-(A295680(n)+A074677(n))` -/
def P8114193738241915905.Spec : Prop :=
  ∀ n, P8114193738241915905.a n = A295672 n

end A295672

/-! ## A295672.P8556217348661990376

`A295682(n)-Δ[A295686(n)]`
-/

namespace A295672.P8556217348661990376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295686 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295682 n - (f1 (n + 1) - f1 n)

end

end A295672.P8556217348661990376

namespace A295672

/-- `A295682(n)-Δ[A295686(n)]` -/
def P8556217348661990376.Spec : Prop :=
  ∀ n, P8556217348661990376.a n = A295672 n

end A295672

/-! ## A295672.P18145243134981278188

`A295691(n)-Δ[A293411(n)]`
-/

namespace A295672.P18145243134981278188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293411 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295691 n - (f1 (n + 1) - f1 n)

end

end A295672.P18145243134981278188

namespace A295672

/-- `A295691(n)-Δ[A293411(n)]` -/
def P18145243134981278188.Spec : Prop :=
  ∀ n, P18145243134981278188.a n = A295672 n

end A295672

/-! ## A295672.P14736251578605248141

`A111573(n+1)+A111574(n)-A001638(n+1)`
-/

namespace A295672.P14736251578605248141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111573 (n + 1) + (A111574 n - A001638 (n + 1))

end

end A295672.P14736251578605248141

namespace A295672

/-- `A111573(n+1)+A111574(n)-A001638(n+1)` -/
def P14736251578605248141.Spec : Prop :=
  ∀ n, P14736251578605248141.a n = A295672 n

end A295672

/-!
# A295673: a(n) = a(n-1) + a(n-3) + a(n-4), where a(0) = 4, a(1) = 3, a(2) = 2, a(3) = 1.

The programs for A295673, the canonical program `A295673.P11032630198221566488` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A295673 has offset 0).

The definition of A295673 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+a(n-3)+a(n-4)` (program `A295673.P11032630198221566488`, by `A295673.P11032630198221566488.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A295673.P11032630198221566488

`a(n-1)+a(n-3)+a(n-4)` with `a(0)=4, a(1)=3, a(2)=2, a(3)=1`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A295673

/-- `a(n-1)+a(n-3)+a(n-4)` -/
def P11032630198221566488.Spec : Prop :=
  ∀ n, (P11032630198221566488.a n : ℤ) = A295673 n

theorem P11032630198221566488.correct : P11032630198221566488.Spec := by
  intro n
  simp only [A295673]

end A295673

/-! ## A295673.P7939730402607951590

`ogf((-4+x+x^2+5x^3)/(-1+x+x^3+x^4))`
-/

namespace A295673.P7939730402607951590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4, -1, -1, -5] [1, -1, 0, -1, -1] n

end

end A295673.P7939730402607951590

namespace A295673

/-- `ogf((-4+x+x^2+5x^3)/(-1+x+x^3+x^4))` -/
def P7939730402607951590.Spec : Prop :=
  ∀ n, P7939730402607951590.a n = A295673 n

end A295673

/-! ## A295673.P15545061680887250727

`A057077(n)+A295687(n)+A295684(n)`
-/

namespace A295673.P15545061680887250727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 n + (A295687 n + A295684 n)

end

end A295673.P15545061680887250727

namespace A295673

/-- `A057077(n)+A295687(n)+A295684(n)` -/
def P15545061680887250727.Spec : Prop :=
  ∀ n, P15545061680887250727.a n = A295673 n

end A295673

/-! ## A295673.P69992472795252378

`A126116(n)+A295683(n)+A295671(n)`
-/

namespace A295673.P69992472795252378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126116 n + (A295683 n + A295671 n)

end

end A295673.P69992472795252378

namespace A295673

/-- `A126116(n)+A295683(n)+A295671(n)` -/
def P69992472795252378.Spec : Prop :=
  ∀ n, P69992472795252378.a n = A295673 n

end A295673

/-! ## A295673.P6158575170046361025

`A236144(n)+A295685(n)-A295680(n)`
-/

namespace A295673.P6158575170046361025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236144 n + (A295685 n - A295680 n)

end

end A295673.P6158575170046361025

namespace A295673

/-- `A236144(n)+A295685(n)-A295680(n)` -/
def P6158575170046361025.Spec : Prop :=
  ∀ n, P6158575170046361025.a n = A295673 n

end A295673

/-! ## A295673.P10149943824102657887

`A295688(n)+A295691(n)-A295680(n)`
-/

namespace A295673.P10149943824102657887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295688 n + (A295691 n - A295680 n)

end

end A295673.P10149943824102657887

namespace A295673

/-- `A295688(n)+A295691(n)-A295680(n)` -/
def P10149943824102657887.Spec : Prop :=
  ∀ n, P10149943824102657887.a n = A295673 n

end A295673

/-! ## A295673.P1786420751520561034

`5*A126116(n)-A293411(n)`
-/

namespace A295673.P1786420751520561034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A126116 n - A293411 n

end

end A295673.P1786420751520561034

namespace A295673

/-- `5*A126116(n)-A293411(n)` -/
def P1786420751520561034.Spec : Prop :=
  ∀ n, P1786420751520561034.a n = A295673 n

end A295673

/-!
# A295674: a(n) = a(n-1) + a(n-3) + a(n-4), where a(0) = 1, a(1) = 2, a(2) = 4, a(3) = 8.

The programs for A295674, the canonical program `A295674.P17045650962625968213` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A295674 has offset 0).

The definition of A295674 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+a(n-3)+a(n-4)` (program `A295674.P17045650962625968213`, by `A295674.P17045650962625968213.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A295674.P17045650962625968213

`a(n-1)+a(n-3)+a(n-4)` with `a(0)=1, a(1)=2, a(2)=4, a(3)=8`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A295674

/-- `a(n-1)+a(n-3)+a(n-4)` -/
def P17045650962625968213.Spec : Prop :=
  ∀ n, (P17045650962625968213.a n : ℤ) = A295674 n

theorem P17045650962625968213.correct : P17045650962625968213.Spec := by
  intro n
  simp only [A295674]

end A295674

/-! ## A295674.P11424905584213765487

`ogf((1+x+2x^2+3x^3)/(1-x-x^3-x^4))`
-/

namespace A295674.P11424905584213765487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, 2, 3] [1, -1, 0, -1, -1] n

end

end A295674.P11424905584213765487

namespace A295674

/-- `ogf((1+x+2x^2+3x^3)/(1-x-x^3-x^4))` -/
def P11424905584213765487.Spec : Prop :=
  ∀ n, P11424905584213765487.a n = A295674 n

end A295674

/-! ## A295674.P8813570018412124385

`A301653(n)+A093148(n)`
-/

namespace A295674.P8813570018412124385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301653 n + A093148 n

end

end A295674.P8813570018412124385

namespace A295674

/-- `A301653(n)+A093148(n)` -/
def P8813570018412124385.Spec : Prop :=
  ∀ n, P8813570018412124385.a n = A295674 n

end A295674

/-! ## A295674.P10209919804896581209

`A074662(n+1)+A000045(n)`
-/

namespace A295674.P10209919804896581209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074662 (n + 1) + A000045 n

end

end A295674.P10209919804896581209

namespace A295674

/-- `A074662(n+1)+A000045(n)` -/
def P10209919804896581209.Spec : Prop :=
  ∀ n, P10209919804896581209.a n = A295674 n

end A295674

/-! ## A295674.P15903656580061748732

`A000204(n+1)-A101455(n)`
-/

namespace A295674.P15903656580061748732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000204 (n + 1) - A101455 n

end

end A295674.P15903656580061748732

namespace A295674

/-- `A000204(n+1)-A101455(n)` -/
def P15903656580061748732.Spec : Prop :=
  ∀ n, P15903656580061748732.a n = A295674 n

end A295674

/-! ## A295674.P8681898658105827274

`A080023(n+1)-A117569(n)`
-/

namespace A295674.P8681898658105827274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080023 (n + 1) - A117569 n

end

end A295674.P8681898658105827274

namespace A295674

/-- `A080023(n+1)-A117569(n)` -/
def P8681898658105827274.Spec : Prop :=
  ∀ n, P8681898658105827274.a n = A295674 n

end A295674

/-! ## A295674.P7732352320999993476

`A295680(n)+A006498(n+2)`
-/

namespace A295674.P7732352320999993476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295680 n + A006498 (n + 2)

end

end A295674.P7732352320999993476

namespace A295674

/-- `A295680(n)+A006498(n+2)` -/
def P7732352320999993476.Spec : Prop :=
  ∀ n, P7732352320999993476.a n = A295674 n

end A295674

/-! ## A295674.P12743635948251659024

`A115008(n)+2*A000045(n)`
-/

namespace A295674.P12743635948251659024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115008 n + 2 * A000045 n

end

end A295674.P12743635948251659024

namespace A295674

/-- `A115008(n)+2*A000045(n)` -/
def P12743635948251659024.Spec : Prop :=
  ∀ n, P12743635948251659024.a n = A295674 n

end A295674

/-! ## A295674.P6169604839356552884

`A056594(n+1)+A000032(n+1)`
-/

namespace A295674.P6169604839356552884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 (n + 1) + A000032 (n + 1)

end

end A295674.P6169604839356552884

namespace A295674

/-- `A056594(n+1)+A000032(n+1)` -/
def P6169604839356552884.Spec : Prop :=
  ∀ n, P6169604839356552884.a n = A295674 n

end A295674

/-! ## A295674.P10961689719290630390

`A056594(n+1)+A000204(n+1)`
-/

namespace A295674.P10961689719290630390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 (n + 1) + A000204 (n + 1)

end

end A295674.P10961689719290630390

namespace A295674

/-- `A056594(n+1)+A000204(n+1)` -/
def P10961689719290630390.Spec : Prop :=
  ∀ n, P10961689719290630390.a n = A295674 n

end A295674

/-! ## A295674.P4690752335870182996

`A074662(n+1)+A212804(n+1)`
-/

namespace A295674.P4690752335870182996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074662 (n + 1) + A212804 (n + 1)

end

end A295674.P4690752335870182996

namespace A295674

/-- `A074662(n+1)+A212804(n+1)` -/
def P4690752335870182996.Spec : Prop :=
  ∀ n, P4690752335870182996.a n = A295674 n

end A295674

/-! ## A295674.P2005284327683349212

`A001638(n+1)-A056594(n+1)`
-/

namespace A295674.P2005284327683349212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001638 (n + 1) - A056594 (n + 1)

end

end A295674.P2005284327683349212

namespace A295674

/-- `A001638(n+1)-A056594(n+1)` -/
def P2005284327683349212.Spec : Prop :=
  ∀ n, P2005284327683349212.a n = A295674 n

end A295674

/-! ## A295674.P6387096115836325251

`A074662(n+1)+A001611(n)-1`
-/

namespace A295674.P6387096115836325251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074662 (n + 1) + (A001611 n - 1)

end

end A295674.P6387096115836325251

namespace A295674

/-- `A074662(n+1)+A001611(n)-1` -/
def P6387096115836325251.Spec : Prop :=
  ∀ n, P6387096115836325251.a n = A295674 n

end A295674

/-! ## A295674.P17734743925193611001

`A056594(n+3)+A001638(n+1)`
-/

namespace A295674.P17734743925193611001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 (n + 3) + A001638 (n + 1)

end

end A295674.P17734743925193611001

namespace A295674

/-- `A056594(n+3)+A001638(n+1)` -/
def P17734743925193611001.Spec : Prop :=
  ∀ n, P17734743925193611001.a n = A295674 n

end A295674

/-! ## A295674.P14172163157381569027

`A000204(n+1)-A163805(n+2)`
-/

namespace A295674.P14172163157381569027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000204 (n + 1) - A163805 (n + 2)

end

end A295674.P14172163157381569027

namespace A295674

/-- `A000204(n+1)-A163805(n+2)` -/
def P14172163157381569027.Spec : Prop :=
  ∀ n, P14172163157381569027.a n = A295674 n

end A295674

/-! ## A295674.P8345504875696562737

`A000032(n+1)-A132380(2*n)`
-/

namespace A295674.P8345504875696562737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (n + 1) - A132380 (2 * n)

end

end A295674.P8345504875696562737

namespace A295674

/-- `A000032(n+1)-A132380(2*n)` -/
def P8345504875696562737.Spec : Prop :=
  ∀ n, P8345504875696562737.a n = A295674 n

end A295674

/-! ## A295674.P13538385464030893642

`A074662(n+1)+Δ[A000071(n+1)]`
-/

namespace A295674.P13538385464030893642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074662 (n + 1) + (f1 (n + 1) - f1 n)

end

end A295674.P13538385464030893642

namespace A295674

/-- `A074662(n+1)+Δ[A000071(n+1)]` -/
def P13538385464030893642.Spec : Prop :=
  ∀ n, P13538385464030893642.a n = A295674 n

end A295674

/-! ## A295674.P9834640406818905548

`A000032(n+1)+A176742(n+1)/2`
-/

namespace A295674.P9834640406818905548
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000032 (n + 1) : ℚ) + (A176742 (n + 1) : ℚ) / 2

end

end A295674.P9834640406818905548

namespace A295674

/-- `A000032(n+1)+A176742(n+1)/2` -/
def P9834640406818905548.Spec : Prop :=
  ∀ n, P9834640406818905548.a n = (A295674 n : ℚ)

end A295674

/-! ## A295674.P10988451777896940200

`A000032(n+1)-(2*A004525(n)-n)`
-/

namespace A295674.P10988451777896940200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (n + 1) - (2 * A004525 n - (n : ℤ))

end

end A295674.P10988451777896940200

namespace A295674

/-- `A000032(n+1)-(2*A004525(n)-n)` -/
def P10988451777896940200.Spec : Prop :=
  ∀ n, P10988451777896940200.a n = A295674 n

end A295674

/-! ## A295674.P5934378247768110098

`A000032(n+1)+A000032(n-1)-a(n-2)` with `a(0)=1, a(1)=2`
-/

namespace A295674.P5934378247768110098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A000032 (n + 1) + (A000032 (n - 1) - a (n - 2))

end

end A295674.P5934378247768110098

namespace A295674

/-- `A000032(n+1)+A000032(n-1)-a(n-2)` -/
def P5934378247768110098.Spec : Prop :=
  ∀ n, P5934378247768110098.a n = A295674 n

end A295674

/-!
# A295675: a(n) = a(n-1) + a(n-3) + a(n-4), where a(0) = 1, a(1) = 1, a(2) = 2, a(3) = -2.

The programs for A295675, the canonical program `A295675.P15394959444931336772` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A295675 has offset 0).

The definition of A295675 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+a(n-3)+a(n-4)` (program `A295675.P15394959444931336772`, by `A295675.P15394959444931336772.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A295675.P15394959444931336772

`a(n-1)+a(n-3)+a(n-4)` with `a(0)=1, a(1)=1, a(2)=2, a(3)=-2`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A295675

/-- `a(n-1)+a(n-3)+a(n-4)` -/
def P15394959444931336772.Spec : Prop :=
  ∀ n, P15394959444931336772.a n = A295675 n

theorem P15394959444931336772.correct : P15394959444931336772.Spec := by
  intro n
  simp only [A295675]

end A295675

/-! ## A295675.P10388398609740817596

`ogf((-1-x^2+5x^3)/(-1+x+x^3+x^4))`
-/

namespace A295675.P10388398609740817596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, 1, -5] [1, -1, 0, -1, -1] n

end

end A295675.P10388398609740817596

namespace A295675

/-- `ogf((-1-x^2+5x^3)/(-1+x+x^3+x^4))` -/
def P10388398609740817596.Spec : Prop :=
  ∀ n, P10388398609740817596.a n = A295675 n

end A295675

/-! ## A295675.P16977436734794324886

`A236165(n)-Δ[A295671(n)]`
-/

namespace A295675.P16977436734794324886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295671 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236165 n - (f1 (n + 1) - f1 n)

end

end A295675.P16977436734794324886

namespace A295675

/-- `A236165(n)-Δ[A295671(n)]` -/
def P16977436734794324886.Spec : Prop :=
  ∀ n, P16977436734794324886.a n = A295675 n

end A295675

/-! ## A295675.P6930769690755280069

`A295672(n)+Δ[A295671(n)-A295672(n)]`
-/

namespace A295675.P6930769690755280069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295671 n - A295672 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295672 n + (f1 (n + 1) - f1 n)

end

end A295675.P6930769690755280069

namespace A295675

/-- `A295672(n)+Δ[A295671(n)-A295672(n)]` -/
def P6930769690755280069.Spec : Prop :=
  ∀ n, P6930769690755280069.a n = A295675 n

end A295675

/-! ## A295675.P16762052024647644300

`A074677(n)+A295671(n)-A295681(n)`
-/

namespace A295675.P16762052024647644300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074677 n + (A295671 n - A295681 n)

end

end A295675.P16762052024647644300

namespace A295675

/-- `A074677(n)+A295671(n)-A295681(n)` -/
def P16762052024647644300.Spec : Prop :=
  ∀ n, P16762052024647644300.a n = A295675 n

end A295675

/-! ## A295675.P9688389451970060524

`A295671(n)+A295691(n)-A236144(n)`
-/

namespace A295675.P9688389451970060524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295671 n + (A295691 n - A236144 n)

end

end A295675.P9688389451970060524

namespace A295675

/-- `A295671(n)+A295691(n)-A236144(n)` -/
def P9688389451970060524.Spec : Prop :=
  ∀ n, P9688389451970060524.a n = A295675 n

end A295675

/-! ## A295675.P9472853376690806850

`A006498(n)-Δ[A295691(n)]`
-/

namespace A295675.P9472853376690806850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295691 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006498 n - (f1 (n + 1) - f1 n)

end

end A295675.P9472853376690806850

namespace A295675

/-- `A006498(n)-Δ[A295691(n)]` -/
def P9472853376690806850.Spec : Prop :=
  ∀ n, P9472853376690806850.a n = A295675 n

end A295675

/-! ## A295675.P4163825413172026626

`A295685(n)-Δ[A295687(n)]`
-/

namespace A295675.P4163825413172026626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295687 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295685 n - (f1 (n + 1) - f1 n)

end

end A295675.P4163825413172026626

namespace A295675

/-- `A295685(n)-Δ[A295687(n)]` -/
def P4163825413172026626.Spec : Prop :=
  ∀ n, P4163825413172026626.a n = A295675 n

end A295675

/-!
# A295676: a(n) = a(n-1) + a(n-3) + a(n-4), where a(0) = 1, a(1) = 1, a(2) = 3, a(3) = -3.

The programs for A295676, the canonical program `A295676.P6771112323069188827` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A295676 has offset 0).

The definition of A295676 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+a(n-3)+a(n-4)` (program `A295676.P6771112323069188827`, by `A295676.P6771112323069188827.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A295676.P6771112323069188827

`a(n-1)+a(n-3)+a(n-4)` with `a(0)=1, a(1)=1, a(2)=3, a(3)=-3`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A295676

/-- `a(n-1)+a(n-3)+a(n-4)` -/
def P6771112323069188827.Spec : Prop :=
  ∀ n, P6771112323069188827.a n = A295676 n

theorem P6771112323069188827.correct : P6771112323069188827.Spec := by
  intro n
  simp only [A295676]

end A295676

/-! ## A295676.P8425776009553656863

`A295675(n)+A295675(n)-A295671(n)`
-/

namespace A295676.P8425776009553656863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295675 n + (A295675 n - A295671 n)

end

end A295676.P8425776009553656863

namespace A295676

/-- `A295675(n)+A295675(n)-A295671(n)` -/
def P8425776009553656863.Spec : Prop :=
  ∀ n, P8425776009553656863.a n = A295676 n

end A295676

/-! ## A295676.P49776512625426253

`A295671(n)-Δ[A295671(n)]`
-/

namespace A295676.P49776512625426253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295671 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295671 n - (f1 (n + 1) - f1 n)

end

end A295676.P49776512625426253

namespace A295676

/-- `A295671(n)-Δ[A295671(n)]` -/
def P49776512625426253.Spec : Prop :=
  ∀ n, P49776512625426253.a n = A295676 n

end A295676

/-! ## A295676.P16024444486771715202

`2*A295675(n)-A295671(n)`
-/

namespace A295676.P16024444486771715202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A295675 n - A295671 n

end

end A295676.P16024444486771715202

namespace A295676

/-- `2*A295675(n)-A295671(n)` -/
def P16024444486771715202.Spec : Prop :=
  ∀ n, P16024444486771715202.a n = A295676 n

end A295676

/-! ## A295676.P4245868940944537736

`A295671(n)+A295671(n)-A295671(n+1)`
-/

namespace A295676.P4245868940944537736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295671 n + (A295671 n - A295671 (n + 1))

end

end A295676.P4245868940944537736

namespace A295676

/-- `A295671(n)+A295671(n)-A295671(n+1)` -/
def P4245868940944537736.Spec : Prop :=
  ∀ n, P4245868940944537736.a n = A295676 n

end A295676

/-! ## A295676.P12108610711402496577

`2*A295671(n)-A295671(n+1)`
-/

namespace A295676.P12108610711402496577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A295671 n - A295671 (n + 1)

end

end A295676.P12108610711402496577

namespace A295676

/-- `2*A295671(n)-A295671(n+1)` -/
def P12108610711402496577.Spec : Prop :=
  ∀ n, P12108610711402496577.a n = A295676 n

end A295676

/-! ## A295676.P5521297527313059473

`Δ[Δ[A295685(n)]-A236165(n)]`
-/

namespace A295676.P5521297527313059473
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295685 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - A236165 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A295676.P5521297527313059473

namespace A295676

/-- `Δ[Δ[A295685(n)]-A236165(n)]` -/
def P5521297527313059473.Spec : Prop :=
  ∀ n, P5521297527313059473.a n = A295676 n

end A295676

/-! ## A295676.P772451378368950833

`Δ[Δ[A236144(n)]-A295684(n)]`
-/

namespace A295676.P772451378368950833
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236144 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - A295684 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A295676.P772451378368950833

namespace A295676

/-- `Δ[Δ[A236144(n)]-A295684(n)]` -/
def P772451378368950833.Spec : Prop :=
  ∀ n, P772451378368950833.a n = A295676 n

end A295676

/-!
# A295677: a(n) = a(n-1) + a(n-3) + a(n-4), where a(0) = 1, a(1) = 1, a(2) = 4, a(3) = -3.

The programs for A295677, the canonical program `A295677.P13632768299261669161` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A295677 has offset 0).

The definition of A295677 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+a(n-3)+a(n-4)` (program `A295677.P13632768299261669161`, by `A295677.P13632768299261669161.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A295677.P13632768299261669161

`a(n-1)+a(n-3)+a(n-4)` with `a(0)=1, a(1)=1, a(2)=4, a(3)=-3`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A295677

/-- `a(n-1)+a(n-3)+a(n-4)` -/
def P13632768299261669161.Spec : Prop :=
  ∀ n, P13632768299261669161.a n = A295677 n

theorem P13632768299261669161.correct : P13632768299261669161.Spec := by
  intro n
  simp only [A295677]

end A295677

/-! ## A295677.P17443648815842716166

`A295671(n)-Δ[A295672(n)]`
-/

namespace A295677.P17443648815842716166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295672 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295671 n - (f1 (n + 1) - f1 n)

end

end A295677.P17443648815842716166

namespace A295677

/-- `A295671(n)-Δ[A295672(n)]` -/
def P17443648815842716166.Spec : Prop :=
  ∀ n, P17443648815842716166.a n = A295677 n

end A295677

/-! ## A295677.P12702032618651255022

`A295675(n)+A295676(n)-A295672(n)`
-/

namespace A295677.P12702032618651255022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295675 n + (A295676 n - A295672 n)

end

end A295677.P12702032618651255022

namespace A295677

/-- `A295675(n)+A295676(n)-A295672(n)` -/
def P12702032618651255022.Spec : Prop :=
  ∀ n, P12702032618651255022.a n = A295677 n

end A295677

/-! ## A295677.P16958318107178436792

`A295676(n)+A295685(n)-A295683(n)`
-/

namespace A295677.P16958318107178436792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295676 n + (A295685 n - A295683 n)

end

end A295677.P16958318107178436792

namespace A295677

/-- `A295676(n)+A295685(n)-A295683(n)` -/
def P16958318107178436792.Spec : Prop :=
  ∀ n, P16958318107178436792.a n = A295677 n

end A295677

/-! ## A295677.P7998911146455931039

`A295676(n)+A295689(n)-A295684(n)`
-/

namespace A295677.P7998911146455931039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295676 n + (A295689 n - A295684 n)

end

end A295677.P7998911146455931039

namespace A295677

/-- `A295676(n)+A295689(n)-A295684(n)` -/
def P7998911146455931039.Spec : Prop :=
  ∀ n, P7998911146455931039.a n = A295677 n

end A295677

/-! ## A295677.P1222161581593436910

`A295675(n)+A295686(n)-A295688(n)`
-/

namespace A295677.P1222161581593436910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295675 n + (A295686 n - A295688 n)

end

end A295677.P1222161581593436910

namespace A295677

/-- `A295675(n)+A295686(n)-A295688(n)` -/
def P1222161581593436910.Spec : Prop :=
  ∀ n, P1222161581593436910.a n = A295677 n

end A295677

/-! ## A295677.P5314234138836362253

`A295676(n)+A295686(n)-A295685(n)`
-/

namespace A295677.P5314234138836362253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295676 n + (A295686 n - A295685 n)

end

end A295677.P5314234138836362253

namespace A295677

/-- `A295676(n)+A295686(n)-A295685(n)` -/
def P5314234138836362253.Spec : Prop :=
  ∀ n, P5314234138836362253.a n = A295677 n

end A295677

/-! ## A295677.P8493135173536508761

`A295676(n)+A295691(n)-A295690(n)`
-/

namespace A295677.P8493135173536508761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295676 n + (A295691 n - A295690 n)

end

end A295677.P8493135173536508761

namespace A295677

/-- `A295676(n)+A295691(n)-A295690(n)` -/
def P8493135173536508761.Spec : Prop :=
  ∀ n, P8493135173536508761.a n = A295677 n

end A295677

/-! ## A295677.P15623249789986569710

`Δ[Δ[A295684(n)+A057077(n)]]`
-/

namespace A295677.P15623249789986569710
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295684 n + A057077 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A295677.P15623249789986569710

namespace A295677

/-- `Δ[Δ[A295684(n)+A057077(n)]]` -/
def P15623249789986569710.Spec : Prop :=
  ∀ n, P15623249789986569710.a n = A295677 n

end A295677

/-! ## A295677.P13355294317040842793

`Δ[Δ[A295673(n)-A295687(n)]]`
-/

namespace A295677.P13355294317040842793
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295673 n - A295687 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A295677.P13355294317040842793

namespace A295677

/-- `Δ[Δ[A295673(n)-A295687(n)]]` -/
def P13355294317040842793.Spec : Prop :=
  ∀ n, P13355294317040842793.a n = A295677 n

end A295677

/-!
# A295678: a(n) = a(n-1) + a(n-3) + a(n-4), where a(0) = 1, a(1) = 2, a(2) = 1, a(3) = 3.

The programs for A295678, the canonical program `A295678.P8216307058503240857` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A295678 has offset 0).

The definition of A295678 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+a(n-3)+a(n-4)` (program `A295678.P8216307058503240857`, by `A295678.P8216307058503240857.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A295678.P8216307058503240857

`a(n-1)+a(n-3)+a(n-4)` with `a(0)=1, a(1)=2, a(2)=1, a(3)=3`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A295678

/-- `a(n-1)+a(n-3)+a(n-4)` -/
def P8216307058503240857.Spec : Prop :=
  ∀ n, (P8216307058503240857.a n : ℤ) = A295678 n

theorem P8216307058503240857.correct : P8216307058503240857.Spec := by
  intro n
  simp only [A295678]

end A295678

/-! ## A295678.P3834436351468577812

`ogf((1+x-x^2+x^3)/(1-x-x^3-x^4))`
-/

namespace A295678.P3834436351468577812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, -1, 1] [1, -1, 0, -1, -1] n

end

end A295678.P3834436351468577812

namespace A295678

/-- `ogf((1+x-x^2+x^3)/(1-x-x^3-x^4))` -/
def P3834436351468577812.Spec : Prop :=
  ∀ n, P3834436351468577812.a n = A295678 n

end A295678

/-! ## A295678.P12936641027787473185

`A111574(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A295678.P12936641027787473185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A111574 (n - 1) + a (n - 1)

end

end A295678.P12936641027787473185

namespace A295678

/-- `A111574(n-1)+a(n-1)` -/
def P12936641027787473185.Spec : Prop :=
  ∀ n, P12936641027787473185.a n = A295678 n

end A295678

/-! ## A295678.P9191251466679336434

`A295681(n)+A126116(n)`
-/

namespace A295678.P9191251466679336434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295681 n + A126116 n

end

end A295678.P9191251466679336434

namespace A295678

/-- `A295681(n)+A126116(n)` -/
def P9191251466679336434.Spec : Prop :=
  ∀ n, P9191251466679336434.a n = A295678 n

end A295678

/-! ## A295678.P10565595678987359888

`A111574(n+1)+2*A056594(n)`
-/

namespace A295678.P10565595678987359888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111574 (n + 1) + 2 * A056594 n

end

end A295678.P10565595678987359888

namespace A295678

/-- `A111574(n+1)+2*A056594(n)` -/
def P10565595678987359888.Spec : Prop :=
  ∀ n, P10565595678987359888.a n = A295678 n

end A295678

/-! ## A295678.P13508068526620505581

`A000032(n-1)+A000045(n)-a(n-2)` with `a(0)=1, a(1)=2`
-/

namespace A295678.P13508068526620505581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A000032 (n - 1) + (A000045 n - a (n - 2))

end

end A295678.P13508068526620505581

namespace A295678

/-- `A000032(n-1)+A000045(n)-a(n-2)` -/
def P13508068526620505581.Spec : Prop :=
  ∀ n, P13508068526620505581.a n = A295678 n

end A295678

/-! ## A295678.P7214111906636856075

`A000045(n)+A074677(n)+A056594(n)`
-/

namespace A295678.P7214111906636856075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n + (A074677 n + A056594 n)

end

end A295678.P7214111906636856075

namespace A295678

/-- `A000045(n)+A074677(n)+A056594(n)` -/
def P7214111906636856075.Spec : Prop :=
  ∀ n, P7214111906636856075.a n = A295678 n

end A295678

/-! ## A295678.P4372057955790846523

`A006498(n)+A006498(n)-Δ[A000045(n)]`
-/

namespace A295678.P4372057955790846523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006498 n + (A006498 n - (f1 (n + 1) - f1 n))

end

end A295678.P4372057955790846523

namespace A295678

/-- `A006498(n)+A006498(n)-Δ[A000045(n)]` -/
def P4372057955790846523.Spec : Prop :=
  ∀ n, P4372057955790846523.a n = A295678 n

end A295678

/-! ## A295678.P8548487708589687343

`A000045(n+1)+A000045(n)-A295680(n+1)`
-/

namespace A295678.P8548487708589687343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) + (A000045 n - A295680 (n + 1))

end

end A295678.P8548487708589687343

namespace A295678

/-- `A000045(n+1)+A000045(n)-A295680(n+1)` -/
def P8548487708589687343.Spec : Prop :=
  ∀ n, P8548487708589687343.a n = A295678 n

end A295678

/-! ## A295678.P4750909367255834119

`A195971(n)+A111571(n)`
-/

namespace A295678.P4750909367255834119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195971 n + A111571 n

end

end A295678.P4750909367255834119

namespace A295678

/-- `A195971(n)+A111571(n)` -/
def P4750909367255834119.Spec : Prop :=
  ∀ n, P4750909367255834119.a n = A295678 n

end A295678

/-! ## A295678.P1145554720658322814

`∑[A111574(n)]+1-A111574(n)`
-/

namespace A295678.P1145554720658322814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111574 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A111574 n)

end

end A295678.P1145554720658322814

namespace A295678

/-- `∑[A111574(n)]+1-A111574(n)` -/
def P1145554720658322814.Spec : Prop :=
  ∀ n, P1145554720658322814.a n = A295678 n

end A295678

/-! ## A295678.P14707082699919079277

`2*A006498(n)-Δ[A000045(n)]`
-/

namespace A295678.P14707082699919079277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A006498 n - (f1 (n + 1) - f1 n)

end

end A295678.P14707082699919079277

namespace A295678

/-- `2*A006498(n)-Δ[A000045(n)]` -/
def P14707082699919079277.Spec : Prop :=
  ∀ n, P14707082699919079277.a n = A295678 n

end A295678

/-! ## A295678.P7025578349815886898

`A000045(n+2)-A295680(n+1)`
-/

namespace A295678.P7025578349815886898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 2) - A295680 (n + 1)

end

end A295678.P7025578349815886898

namespace A295678

/-- `A000045(n+2)-A295680(n+1)` -/
def P7025578349815886898.Spec : Prop :=
  ∀ n, P7025578349815886898.a n = A295678 n

end A295678

/-! ## A295678.P18283072431588162071

`A000071(n+2)+1-A295680(n+1)`
-/

namespace A295678.P18283072431588162071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 (n + 2) + (1 - A295680 (n + 1))

end

end A295678.P18283072431588162071

namespace A295678

/-- `A000071(n+2)+1-A295680(n+1)` -/
def P18283072431588162071.Spec : Prop :=
  ∀ n, P18283072431588162071.a n = A295678 n

end A295678

/-! ## A295678.P7198158859874634224

`A000032(n)+A295681(n)-A295681(n+1)`
-/

namespace A295678.P7198158859874634224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 n + (A295681 n - A295681 (n + 1))

end

end A295678.P7198158859874634224

namespace A295678

/-- `A000032(n)+A295681(n)-A295681(n+1)` -/
def P7198158859874634224.Spec : Prop :=
  ∀ n, P7198158859874634224.a n = A295678 n

end A295678

/-! ## A295678.P4418192482100305390

`A126116(n+1)+A070550(n)-A000045(n+1)`
-/

namespace A295678.P4418192482100305390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126116 (n + 1) + (A070550 n - A000045 (n + 1))

end

end A295678.P4418192482100305390

namespace A295678

/-- `A126116(n+1)+A070550(n)-A000045(n+1)` -/
def P4418192482100305390.Spec : Prop :=
  ∀ n, P4418192482100305390.a n = A295678 n

end A295678

/-! ## A295678.P4606847783663530712

`A000032(n+1)-A195971(n)`
-/

namespace A295678.P4606847783663530712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (n + 1) - A195971 n

end

end A295678.P4606847783663530712

namespace A295678

/-- `A000032(n+1)-A195971(n)` -/
def P4606847783663530712.Spec : Prop :=
  ∀ n, P4606847783663530712.a n = A295678 n

end A295678

/-! ## A295678.P13535141106670087374

`A000204(n+1)-A195971(n)`
-/

namespace A295678.P13535141106670087374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000204 (n + 1) - A195971 n

end

end A295678.P13535141106670087374

namespace A295678

/-- `A000204(n+1)-A195971(n)` -/
def P13535141106670087374.Spec : Prop :=
  ∀ n, P13535141106670087374.a n = A295678 n

end A295678

/-! ## A295678.P8263535453539375025

`A001610(n)+1-A195971(n)`
-/

namespace A295678.P8263535453539375025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001610 n + (1 - A195971 n)

end

end A295678.P8263535453539375025

namespace A295678

/-- `A001610(n)+1-A195971(n)` -/
def P8263535453539375025.Spec : Prop :=
  ∀ n, P8263535453539375025.a n = A295678 n

end A295678

/-! ## A295678.P14486401896883185330

`A111570(n)-A111573(n+1)`
-/

namespace A295678.P14486401896883185330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111570 n - A111573 (n + 1)

end

end A295678.P14486401896883185330

namespace A295678

/-- `A111570(n)-A111573(n+1)` -/
def P14486401896883185330.Spec : Prop :=
  ∀ n, P14486401896883185330.a n = A295678 n

end A295678

/-!
# A295679: Array read by antidiagonals: T(n,k) = k-Modular Catalan numbers C_{n,k} (n >= 0, k > 0).

The programs for A295679, there is no canonical definition to state claims against.
-/

/-! ## A295679.P14596239594608021204

`A287214(n)-A260813(A287214(n))`
-/

namespace A295679.P14596239594608021204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287214 n - A260813 (A287214 n).toNat

end

end A295679.P14596239594608021204

/-! ## A295679.P7449512232183869219

`A080934(A007401(n+1)%A092047(n+1))`
-/

namespace A295679.P7449512232183869219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080934 (Int.tmod (A007401 (n + 1)) (A092047 (n + 1))).toNat

end

end A295679.P7449512232183869219

/-!
# A295680: a(n) = a(n-1) + a(n-3) + a(n-4), where a(0) = 0, a(1) = 0, a(2) = 0, a(3) = 2.

The programs for A295680, the canonical program `A295680.P249188820151412069` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A295680 has offset 0).

The definition of A295680 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+a(n-3)+a(n-4)` (program `A295680.P249188820151412069`, by `A295680.P249188820151412069.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A295680.P249188820151412069

`a(n-1)+a(n-3)+a(n-4)` with `a(0)=0, a(1)=0, a(2)=0, a(3)=2`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A295680

/-- `a(n-1)+a(n-3)+a(n-4)` -/
def P249188820151412069.Spec : Prop :=
  ∀ n, (P249188820151412069.a n : ℤ) = A295680 n

theorem P249188820151412069.correct : P249188820151412069.Spec := by
  intro n
  simp only [A295680]

end A295680

/-! ## A295680.P15119613253253950122

`ogf(-2x^3/(-1+x+x^3+x^4))`
-/

namespace A295680.P15119613253253950122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 0, 2] [1, -1, 0, -1, -1] n

end

end A295680.P15119613253253950122

namespace A295680

/-- `ogf(-2x^3/(-1+x+x^3+x^4))` -/
def P15119613253253950122.Spec : Prop :=
  ∀ n, P15119613253253950122.a n = A295680 n

end A295680

/-! ## A295680.P8143265554414510430

`A103609(n)*A214927(n+1)`
-/

namespace A295680.P8143265554414510430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103609 n * A214927 (n + 1)

end

end A295680.P8143265554414510430

namespace A295680

/-- `A103609(n)*A214927(n+1)` -/
def P8143265554414510430.Spec : Prop :=
  ∀ n, P8143265554414510430.a n = A295680 n

end A295680

/-! ## A295680.P12197586070426950668

`2*(A295671(n)-A295672(n))`
-/

namespace A295680.P12197586070426950668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A295671 n - A295672 n)

end

end A295680.P12197586070426950668

namespace A295680

/-- `2*(A295671(n)-A295672(n))` -/
def P12197586070426950668.Spec : Prop :=
  ∀ n, P12197586070426950668.a n = A295680 n

end A295680

/-! ## A295680.P3732951971046006155

`2*A000045(∑[char[2*n+3]])*A103609(n)`
-/

namespace A295680.P3732951971046006155
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 3

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000045 (∑ j ∈ Finset.range (n + 1), f1 j) * A103609 n

end

end A295680.P3732951971046006155

namespace A295680

/-- `2*A000045(∑[char[2*n+3]])*A103609(n)` -/
def P3732951971046006155.Spec : Prop :=
  ∀ n, P3732951971046006155.a n = A295680 n

end A295680

/-! ## A295680.P15564932915321141995

`A000045(A004526(n))*A214927(n+1)`
-/

namespace A295680.P15564932915321141995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A004526 n).toNat * A214927 (n + 1)

end

end A295680.P15564932915321141995

namespace A295680

/-- `A000045(A004526(n))*A214927(n+1)` -/
def P15564932915321141995.Spec : Prop :=
  ∀ n, P15564932915321141995.a n = A295680 n

end A295680

/-! ## A295680.P2333879072443338786

`A006355((3*n)%A001068(2*n+1)+1)*A103609(n)`
-/

namespace A295680.P2333879072443338786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006355 (Int.tmod (3 * n : ℤ) (A001068 (2 * n + 1)) + 1).toNat * A103609 n

end

end A295680.P2333879072443338786

namespace A295680

/-- `A006355((3*n)%A001068(2*n+1)+1)*A103609(n)` -/
def P2333879072443338786.Spec : Prop :=
  ∀ n, P2333879072443338786.a n = A295680 n

end A295680

/-! ## A295680.P8134710057436874517

`A103609(n)*A118658(A004277(n)-A032766(n))`
-/

namespace A295680.P8134710057436874517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103609 n * A118658 (A004277 n - A032766 n).toNat

end

end A295680.P8134710057436874517

namespace A295680

/-- `A103609(n)*A118658(A004277(n)-A032766(n))` -/
def P8134710057436874517.Spec : Prop :=
  ∀ n, P8134710057436874517.a n = A295680 n

end A295680

/-! ## A295680.P7433598795100490742

`A198834(n)-a(n-2)` with `a(0)=0, a(1)=0`
-/

namespace A295680.P7433598795100490742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n a =>
  A198834 n - a (n - 2)

end

end A295680.P7433598795100490742

namespace A295680

/-- `A198834(n)-a(n-2)` -/
def P7433598795100490742.Spec : Prop :=
  ∀ n, P7433598795100490742.a n = A295680 n

end A295680

/-! ## A295680.P16276378916612809456

`2*A000045(n-2)-a(n-2)` with `a(0)=0, a(1)=0`
-/

namespace A295680.P16276378916612809456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n a =>
  2 * A000045 (n - 2) - a (n - 2)

end

end A295680.P16276378916612809456

namespace A295680

/-- `2*A000045(n-2)-a(n-2)` -/
def P16276378916612809456.Spec : Prop :=
  ∀ n, P16276378916612809456.a n = A295680 n

end A295680

/-! ## A295680.P1076380455774941176

`A126116(n)-A295671(n)`
-/

namespace A295680.P1076380455774941176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126116 n - A295671 n

end

end A295680.P1076380455774941176

namespace A295680

/-- `A126116(n)-A295671(n)` -/
def P1076380455774941176.Spec : Prop :=
  ∀ n, P1076380455774941176.a n = A295680 n

end A295680

/-! ## A295680.P5581304531895472044

`2*(A000045(n)-A074677(n))`
-/

namespace A295680.P5581304531895472044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A000045 n - A074677 n)

end

end A295680.P5581304531895472044

namespace A295680

/-- `2*(A000045(n)-A074677(n))` -/
def P5581304531895472044.Spec : Prop :=
  ∀ n, P5581304531895472044.a n = A295680 n

end A295680

/-! ## A295680.P17829340036683939239

`2*round(ϕ^(n-1)/5)`
-/

namespace A295680.P17829340036683939239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.roundAway (Real.goldenRatio ^ ((n : ℤ) - 1 : ℤ) / 5)

end

end A295680.P17829340036683939239

namespace A295680

/-- `2*round(ϕ^(n-1)/5)` -/
def P17829340036683939239.Spec : Prop :=
  ∀ n, P17829340036683939239.a n = A295680 n

end A295680

/-! ## A295680.P15272931064798813431

`Δ[A126116(n)]`
-/

namespace A295680.P15272931064798813431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126116 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A295680.P15272931064798813431

namespace A295680

/-- `Δ[A126116(n)]` -/
def P15272931064798813431.Spec : Prop :=
  ∀ n, P15272931064798813431.a n = A295680 n

end A295680

/-! ## A295680.P10366858908357111196

`A074662(n)-A295685(n)`
-/

namespace A295680.P10366858908357111196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074662 n - A295685 n

end

end A295680.P10366858908357111196

namespace A295680

/-- `A074662(n)-A295685(n)` -/
def P10366858908357111196.Spec : Prop :=
  ∀ n, P10366858908357111196.a n = A295680 n

end A295680

/-! ## A295680.P13728736262478290555

`A126116(n+1)-A126116(n)`
-/

namespace A295680.P13728736262478290555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126116 (n + 1) - A126116 n

end

end A295680.P13728736262478290555

namespace A295680

/-- `A126116(n+1)-A126116(n)` -/
def P13728736262478290555.Spec : Prop :=
  ∀ n, P13728736262478290555.a n = A295680 n

end A295680

/-! ## A295680.P11174047172230752217

`A295682(n+1)-A295684(n)`
-/

namespace A295680.P11174047172230752217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295682 (n + 1) - A295684 n

end

end A295680.P11174047172230752217

namespace A295680

/-- `A295682(n+1)-A295684(n)` -/
def P11174047172230752217.Spec : Prop :=
  ∀ n, P11174047172230752217.a n = A295680 n

end A295680

/-! ## A295680.P2544701428726481276

`A295685(n+1)-A074677(n+1)`
-/

namespace A295680.P2544701428726481276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295685 (n + 1) - A074677 (n + 1)

end

end A295680.P2544701428726481276

namespace A295680

/-- `A295685(n+1)-A074677(n+1)` -/
def P2544701428726481276.Spec : Prop :=
  ∀ n, P2544701428726481276.a n = A295680 n

end A295680

/-! ## A295680.P11188045149676540971

`A000045(n+1)-(A000032(n-2)+a(n-2))` with `a(0)=0, a(1)=0`
-/

namespace A295680.P11188045149676540971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n a =>
  A000045 (n + 1) - (A000032 (n - 2) + a (n - 2))

end

end A295680.P11188045149676540971

namespace A295680

/-- `A000045(n+1)-(A000032(n-2)+a(n-2))` -/
def P11188045149676540971.Spec : Prop :=
  ∀ n, P11188045149676540971.a n = A295680 n

end A295680

/-! ## A295680.P16777979805551842568

`A295681(n+1)+A295681(n)-A000045(n+1)`
-/

namespace A295680.P16777979805551842568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295681 (n + 1) + (A295681 n - A000045 (n + 1))

end

end A295680.P16777979805551842568

namespace A295680

/-- `A295681(n+1)+A295681(n)-A000045(n+1)` -/
def P16777979805551842568.Spec : Prop :=
  ∀ n, P16777979805551842568.a n = A295680 n

end A295680

/-!
# A295681: a(n) = a(n-1) + a(n-3) + a(n-4), where a(0) = 0, a(1) = 1, a(2) = 0, a(3) = 2.

The programs for A295681, the canonical program `A295681.P12058988207523952313` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A295681 has offset 0).

The definition of A295681 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+a(n-3)+a(n-4)` (program `A295681.P12058988207523952313`, by `A295681.P12058988207523952313.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A295681.P12058988207523952313

`a(n-1)+a(n-3)+a(n-4)` with `a(0)=0, a(1)=1, a(2)=0, a(3)=2`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A295681

/-- `a(n-1)+a(n-3)+a(n-4)` -/
def P12058988207523952313.Spec : Prop :=
  ∀ n, (P12058988207523952313.a n : ℤ) = A295681 n

theorem P12058988207523952313.correct : P12058988207523952313.Spec := by
  intro n
  simp only [A295681]

end A295681

/-! ## A295681.P11671419098794469500

`ogf((-x+x^2-2x^3)/(-1+x+x^3+x^4))`
-/

namespace A295681.P11671419098794469500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, -1, 2] [1, -1, 0, -1, -1] n

end

end A295681.P11671419098794469500

namespace A295681

/-- `ogf((-x+x^2-2x^3)/(-1+x+x^3+x^4))` -/
def P11671419098794469500.Spec : Prop :=
  ∀ n, P11671419098794469500.a n = A295681 n

end A295681

/-! ## A295681.P9238491928154570966

`a(n-1)+a(n-2)+(-1)^∑[n]` with `a(0)=0, a(1)=1`
-/

namespace A295681.P9238491928154570966
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 1) + (a (n - 2) + (-1) ^ (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A295681.P9238491928154570966

namespace A295681

/-- `a(n-1)+a(n-2)+(-1)^∑[n]` -/
def P9238491928154570966.Spec : Prop :=
  ∀ n, P9238491928154570966.a n = A295681 n

end A295681

/-! ## A295681.P18123441291115013013

`A295682(n)-A101455(n)`
-/

namespace A295681.P18123441291115013013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295682 n - A101455 n

end

end A295681.P18123441291115013013

namespace A295681

/-- `A295682(n)-A101455(n)` -/
def P18123441291115013013.Spec : Prop :=
  ∀ n, P18123441291115013013.a n = A295681 n

end A295681

/-! ## A295681.P10798963525042391046

`A000045(n)-Δ[A295680(n)/2]`
-/

namespace A295681.P10798963525042391046
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A295680 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000045 n : ℚ) - (f1 (n + 1) - f1 n)

end

end A295681.P10798963525042391046

namespace A295681

/-- `A000045(n)-Δ[A295680(n)/2]` -/
def P10798963525042391046.Spec : Prop :=
  ∀ n, P10798963525042391046.a n = (A295681 n : ℚ)

end A295681

/-! ## A295681.P8995635315244226893

`3*A000045(n-2)-a(n-2)` with `a(0)=0, a(1)=1`
-/

namespace A295681.P8995635315244226893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  3 * A000045 (n - 2) - a (n - 2)

end

end A295681.P8995635315244226893

namespace A295681

/-- `3*A000045(n-2)-a(n-2)` -/
def P8995635315244226893.Spec : Prop :=
  ∀ n, P8995635315244226893.a n = A295681 n

end A295681

/-! ## A295681.P17489362142769060365

`A074662(n)-A295684(n)`
-/

namespace A295681.P17489362142769060365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074662 n - A295684 n

end

end A295681.P17489362142769060365

namespace A295681

/-- `A074662(n)-A295684(n)` -/
def P17489362142769060365.Spec : Prop :=
  ∀ n, P17489362142769060365.a n = A295681 n

end A295681

/-! ## A295681.P5394896869789754176

`A295678(n)-A126116(n)`
-/

namespace A295681.P5394896869789754176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295678 n - A126116 n

end

end A295681.P5394896869789754176

namespace A295681

/-- `A295678(n)-A126116(n)` -/
def P5394896869789754176.Spec : Prop :=
  ∀ n, P5394896869789754176.a n = A295681 n

end A295681

/-! ## A295681.P12833836910806550773

`A126116(n+1)-Δ[A000045(n)]`
-/

namespace A295681.P12833836910806550773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126116 (n + 1) - (f1 (n + 1) - f1 n)

end

end A295681.P12833836910806550773

namespace A295681

/-- `A126116(n+1)-Δ[A000045(n)]` -/
def P12833836910806550773.Spec : Prop :=
  ∀ n, P12833836910806550773.a n = A295681 n

end A295681

/-! ## A295681.P12530290413511054563

`A126116(n)-Δ[A000045(n)-A126116(n)]`
-/

namespace A295681.P12530290413511054563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n - A126116 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126116 n - (f1 (n + 1) - f1 n)

end

end A295681.P12530290413511054563

namespace A295681

/-- `A126116(n)-Δ[A000045(n)-A126116(n)]` -/
def P12530290413511054563.Spec : Prop :=
  ∀ n, P12530290413511054563.a n = A295681 n

end A295681

/-! ## A295681.P5953619189262502746

`A111569(n+1)+A000045(n)-A295687(n)`
-/

namespace A295681.P5953619189262502746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111569 (n + 1) + (A000045 n - A295687 n)

end

end A295681.P5953619189262502746

namespace A295681

/-- `A111569(n+1)+A000045(n)-A295687(n)` -/
def P5953619189262502746.Spec : Prop :=
  ∀ n, P5953619189262502746.a n = A295681 n

end A295681

/-! ## A295681.P1919023155891905025

`A126116(n+1)+A000045(n)-A000045(n+1)`
-/

namespace A295681.P1919023155891905025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126116 (n + 1) + (A000045 n - A000045 (n + 1))

end

end A295681.P1919023155891905025

namespace A295681

/-- `A126116(n+1)+A000045(n)-A000045(n+1)` -/
def P1919023155891905025.Spec : Prop :=
  ∀ n, P1919023155891905025.a n = A295681 n

end A295681

/-! ## A295681.P6801427906392057499

`Δ[A000071(n+1)-A295680(n)/2]`
-/

namespace A295681.P6801427906392057499
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000071 (n + 1) : ℚ) - (A295680 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A295681.P6801427906392057499

namespace A295681

/-- `Δ[A000071(n+1)-A295680(n)/2]` -/
def P6801427906392057499.Spec : Prop :=
  ∀ n, P6801427906392057499.a n = (A295681 n : ℚ)

end A295681

/-! ## A295681.P6740918224506824800

`A006498(n+1)+A006498(n)-A000032(n)`
-/

namespace A295681.P6740918224506824800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006498 (n + 1) + (A006498 n - A000032 n)

end

end A295681.P6740918224506824800

namespace A295681

/-- `A006498(n+1)+A006498(n)-A000032(n)` -/
def P6740918224506824800.Spec : Prop :=
  ∀ n, P6740918224506824800.a n = A295681 n

end A295681

/-! ## A295681.P5952991539582232254

`A006355(n+1)-A053602(n+1)*A053602(n)`
-/

namespace A295681.P5952991539582232254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006355 (n + 1) - A053602 (n + 1) * A053602 n

end

end A295681.P5952991539582232254

namespace A295681

/-- `A006355(n+1)-A053602(n+1)*A053602(n)` -/
def P5952991539582232254.Spec : Prop :=
  ∀ n, P5952991539582232254.a n = A295681 n

end A295681

/-! ## A295681.P10953204613762337660

`A295685(n+1)+A295685(n+1)-A236144(n+1)`
-/

namespace A295681.P10953204613762337660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295685 (n + 1) + (A295685 (n + 1) - A236144 (n + 1))

end

end A295681.P10953204613762337660

namespace A295681

/-- `A295685(n+1)+A295685(n+1)-A236144(n+1)` -/
def P10953204613762337660.Spec : Prop :=
  ∀ n, P10953204613762337660.a n = A295681 n

end A295681

/-! ## A295681.P8461369233794282772

`A070550(n+1)-A000032(n)`
-/

namespace A295681.P8461369233794282772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070550 (n + 1) - A000032 n

end

end A295681.P8461369233794282772

namespace A295681

/-- `A070550(n+1)-A000032(n)` -/
def P8461369233794282772.Spec : Prop :=
  ∀ n, P8461369233794282772.a n = A295681 n

end A295681

/-! ## A295681.P7052349897319752494

`A295674(n)-A295685(n+2)`
-/

namespace A295681.P7052349897319752494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295674 n - A295685 (n + 2)

end

end A295681.P7052349897319752494

namespace A295681

/-- `A295674(n)-A295685(n+2)` -/
def P7052349897319752494.Spec : Prop :=
  ∀ n, P7052349897319752494.a n = A295681 n

end A295681

/-! ## A295681.P15005125590742728438

`2*A295685(n+1)-A236144(n+1)`
-/

namespace A295681.P15005125590742728438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A295685 (n + 1) - A236144 (n + 1)

end

end A295681.P15005125590742728438

namespace A295681

/-- `2*A295685(n+1)-A236144(n+1)` -/
def P15005125590742728438.Spec : Prop :=
  ∀ n, P15005125590742728438.a n = A295681 n

end A295681

/-! ## A295681.P18293569524869717216

`A123231(n+1)*A123231(n+2)-A000032(n)`
-/

namespace A295681.P18293569524869717216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123231 (n + 1) * A123231 (n + 2) - A000032 n

end

end A295681.P18293569524869717216

namespace A295681

/-- `A123231(n+1)*A123231(n+2)-A000032(n)` -/
def P18293569524869717216.Spec : Prop :=
  ∀ n, P18293569524869717216.a n = A295681 n

end A295681

/-!
# A295682: a(n) = a(n-1) + a(n-3) + a(n-4), where a(0) = 0, a(1) = 2, a(2) = 0, a(3) = 1.

The programs for A295682, the canonical program `A295682.P3928248033482246929` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A295682 has offset 0).

The definition of A295682 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+a(n-3)+a(n-4)` (program `A295682.P3928248033482246929`, by `A295682.P3928248033482246929.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A295682.P3928248033482246929

`a(n-1)+a(n-3)+a(n-4)` with `a(0)=0, a(1)=2, a(2)=0, a(3)=1`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A295682

/-- `a(n-1)+a(n-3)+a(n-4)` -/
def P3928248033482246929.Spec : Prop :=
  ∀ n, (P3928248033482246929.a n : ℤ) = A295682 n

theorem P3928248033482246929.correct : P3928248033482246929.Spec := by
  intro n
  simp only [A295682]

end A295682

/-! ## A295682.P10921842719310756328

`ogf((-2x+2x^2-x^3)/(-1+x+x^3+x^4))`
-/

namespace A295682.P10921842719310756328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 2, -2, 1] [1, -1, 0, -1, -1] n

end

end A295682.P10921842719310756328

namespace A295682

/-- `ogf((-2x+2x^2-x^3)/(-1+x+x^3+x^4))` -/
def P10921842719310756328.Spec : Prop :=
  ∀ n, P10921842719310756328.a n = A295682 n

end A295682

/-! ## A295682.P15895765084748821776

`A295681(n)+A101455(n)`
-/

namespace A295682.P15895765084748821776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295681 n + A101455 n

end

end A295682.P15895765084748821776

namespace A295682

/-- `A295681(n)+A101455(n)` -/
def P15895765084748821776.Spec : Prop :=
  ∀ n, P15895765084748821776.a n = A295682 n

end A295682

/-! ## A295682.P11771946570270953327

`A236165(n)-A152163(n)`
-/

namespace A295682.P11771946570270953327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236165 n - A152163 n

end

end A295682.P11771946570270953327

namespace A295682

/-- `A236165(n)-A152163(n)` -/
def P11771946570270953327.Spec : Prop :=
  ∀ n, P11771946570270953327.a n = A295682 n

end A295682

/-! ## A295682.P4230421955606270344

`3*A000045(n-2)-a(n-2)` with `a(0)=0, a(1)=2`
-/

namespace A295682.P4230421955606270344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2] fun n a =>
  3 * A000045 (n - 2) - a (n - 2)

end

end A295682.P4230421955606270344

namespace A295682

/-- `3*A000045(n-2)-a(n-2)` -/
def P4230421955606270344.Spec : Prop :=
  ∀ n, P4230421955606270344.a n = A295682 n

end A295682

/-! ## A295682.P498599330556727385

`A236144(n)-A295684(n)`
-/

namespace A295682.P498599330556727385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236144 n - A295684 n

end

end A295682.P498599330556727385

namespace A295682

/-- `A236144(n)-A295684(n)` -/
def P498599330556727385.Spec : Prop :=
  ∀ n, P498599330556727385.a n = A295682 n

end A295682

/-! ## A295682.P11601314815354438774

`A236165(n)+Δ[A295685(n)-A236165(n)]`
-/

namespace A295682.P11601314815354438774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295685 n - A236165 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236165 n + (f1 (n + 1) - f1 n)

end

end A295682.P11601314815354438774

namespace A295682

/-- `A236165(n)+Δ[A295685(n)-A236165(n)]` -/
def P11601314815354438774.Spec : Prop :=
  ∀ n, P11601314815354438774.a n = A295682 n

end A295682

/-! ## A295682.P5911424678069677175

`A000032(n+1)-A295685(n+2)`
-/

namespace A295682.P5911424678069677175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (n + 1) - A295685 (n + 2)

end

end A295682.P5911424678069677175

namespace A295682

/-- `A000032(n+1)-A295685(n+2)` -/
def P5911424678069677175.Spec : Prop :=
  ∀ n, P5911424678069677175.a n = A295682 n

end A295682

/-! ## A295682.P13062726824879806192

`A000032(n+1)-(A295680(n+1)+A006498(n+1))`
-/

namespace A295682.P13062726824879806192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (n + 1) - (A295680 (n + 1) + A006498 (n + 1))

end

end A295682.P13062726824879806192

namespace A295682

/-- `A000032(n+1)-(A295680(n+1)+A006498(n+1))` -/
def P13062726824879806192.Spec : Prop :=
  ∀ n, P13062726824879806192.a n = A295682 n

end A295682

/-!
# A295683: a(n) = a(n-1) + a(n-3) + a(n-4), where a(0) = 2, a(1) = 1, a(2) = 0, a(3) = 1.

The programs for A295683, the canonical program `A295683.P7772582486834711019` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A295683 has offset 0).

The definition of A295683 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+a(n-3)+a(n-4)` (program `A295683.P7772582486834711019`, by `A295683.P7772582486834711019.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A295683.P7772582486834711019

`a(n-1)+a(n-3)+a(n-4)` with `a(0)=2, a(1)=1, a(2)=0, a(3)=1`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A295683

/-- `a(n-1)+a(n-3)+a(n-4)` -/
def P7772582486834711019.Spec : Prop :=
  ∀ n, (P7772582486834711019.a n : ℤ) = A295683 n

theorem P7772582486834711019.correct : P7772582486834711019.Spec := by
  intro n
  simp only [A295683]

end A295683

/-! ## A295683.P14030340033425411713

`ogf((-2+x+x^2+x^3)/(-1+x+x^3+x^4))`
-/

namespace A295683.P14030340033425411713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -1, -1, -1] [1, -1, 0, -1, -1] n

end

end A295683.P14030340033425411713

namespace A295683

/-- `ogf((-2+x+x^2+x^3)/(-1+x+x^3+x^4))` -/
def P14030340033425411713.Spec : Prop :=
  ∀ n, P14030340033425411713.a n = A295683 n

end A295683

/-! ## A295683.P3742835768423991669

`A126116(n)+A056594(n)`
-/

namespace A295683.P3742835768423991669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126116 n + A056594 n

end

end A295683.P3742835768423991669

namespace A295683

/-- `A126116(n)+A056594(n)` -/
def P3742835768423991669.Spec : Prop :=
  ∀ n, P3742835768423991669.a n = A295683 n

end A295683

/-! ## A295683.P5275607860252717015

`A111571(n)+A111574(n)-A056594(n+1)`
-/

namespace A295683.P5275607860252717015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111571 n + (A111574 n - A056594 (n + 1))

end

end A295683.P5275607860252717015

namespace A295683

/-- `A111571(n)+A111574(n)-A056594(n+1)` -/
def P5275607860252717015.Spec : Prop :=
  ∀ n, P5275607860252717015.a n = A295683 n

end A295683

/-! ## A295683.P15078094451531542874

`A006355(n)-a(n-2)` with `a(0)=2, a(1)=1`
-/

namespace A295683.P15078094451531542874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 1] fun n a =>
  A006355 n - a (n - 2)

end

end A295683.P15078094451531542874

namespace A295683

/-- `A006355(n)-a(n-2)` -/
def P15078094451531542874.Spec : Prop :=
  ∀ n, P15078094451531542874.a n = A295683 n

end A295683

/-! ## A295683.P13154970616845964204

`2*A000045(n-1)-a(n-2)` with `a(0)=2, a(1)=1`
-/

namespace A295683.P13154970616845964204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 1] fun n a =>
  2 * A000045 (n - 1) - a (n - 2)

end

end A295683.P13154970616845964204

namespace A295683

/-- `2*A000045(n-1)-a(n-2)` -/
def P13154970616845964204.Spec : Prop :=
  ∀ n, P13154970616845964204.a n = A295683 n

end A295683

/-! ## A295683.P15826888554804570140

`A236144(n)-A074677(n)`
-/

namespace A295683.P15826888554804570140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236144 n - A074677 n

end

end A295683.P15826888554804570140

namespace A295683

/-- `A236144(n)-A074677(n)` -/
def P15826888554804570140.Spec : Prop :=
  ∀ n, P15826888554804570140.a n = A295683 n

end A295683

/-! ## A295683.P8124625831348743234

`A295688(n)-A295680(n)/2`
-/

namespace A295683.P8124625831348743234
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A295688 n : ℚ) - (A295680 n : ℚ) / 2

end

end A295683.P8124625831348743234

namespace A295683

/-- `A295688(n)-A295680(n)/2` -/
def P8124625831348743234.Spec : Prop :=
  ∀ n, P8124625831348743234.a n = (A295683 n : ℚ)

end A295683

/-! ## A295683.P17923005334526852607

`A295688(n)-Δ[A126116(n)/2]`
-/

namespace A295683.P17923005334526852607
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A126116 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A295688 n : ℚ) - (f1 (n + 1) - f1 n)

end

end A295683.P17923005334526852607

namespace A295683

/-- `A295688(n)-Δ[A126116(n)/2]` -/
def P17923005334526852607.Spec : Prop :=
  ∀ n, P17923005334526852607.a n = (A295683 n : ℚ)

end A295683

/-! ## A295683.P13674559206752159132

`A000045(n+1)-(A000045(n-2)+a(n-2))` with `a(0)=2, a(1)=1`
-/

namespace A295683.P13674559206752159132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 1] fun n a =>
  A000045 (n + 1) - (A000045 (n - 2) + a (n - 2))

end

end A295683.P13674559206752159132

namespace A295683

/-- `A000045(n+1)-(A000045(n-2)+a(n-2))` -/
def P13674559206752159132.Spec : Prop :=
  ∀ n, P13674559206752159132.a n = A295683 n

end A295683

/-! ## A295683.P11993446892457035402

`A295685(n)+A295685(n)-A295686(n)`
-/

namespace A295683.P11993446892457035402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295685 n + (A295685 n - A295686 n)

end

end A295683.P11993446892457035402

namespace A295683

/-- `A295685(n)+A295685(n)-A295686(n)` -/
def P11993446892457035402.Spec : Prop :=
  ∀ n, P11993446892457035402.a n = A295683 n

end A295683

/-! ## A295683.P1282137450741025024

`A074662(n)-(A074677(n)+A056594(n+1))`
-/

namespace A295683.P1282137450741025024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074662 n - (A074677 n + A056594 (n + 1))

end

end A295683.P1282137450741025024

namespace A295683

/-- `A074662(n)-(A074677(n)+A056594(n+1))` -/
def P1282137450741025024.Spec : Prop :=
  ∀ n, P1282137450741025024.a n = A295683 n

end A295683

/-! ## A295683.P14138901753969623406

`A111569(n+1)+A111571(n+1)-A056594(n+1)`
-/

namespace A295683.P14138901753969623406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111569 (n + 1) + (A111571 (n + 1) - A056594 (n + 1))

end

end A295683.P14138901753969623406

namespace A295683

/-- `A111569(n+1)+A111571(n+1)-A056594(n+1)` -/
def P14138901753969623406.Spec : Prop :=
  ∀ n, P14138901753969623406.a n = A295683 n

end A295683

/-! ## A295683.P8955317433335007648

`2*A295685(n)-A295686(n)`
-/

namespace A295683.P8955317433335007648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A295685 n - A295686 n

end

end A295683.P8955317433335007648

namespace A295683

/-- `2*A295685(n)-A295686(n)` -/
def P8955317433335007648.Spec : Prop :=
  ∀ n, P8955317433335007648.a n = A295683 n

end A295683

/-! ## A295683.P8119749031547419122

`A074662(n)-Δ[A074677(n+1)]`
-/

namespace A295683.P8119749031547419122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074677 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074662 n - (f1 (n + 1) - f1 n)

end

end A295683.P8119749031547419122

namespace A295683

/-- `A074662(n)-Δ[A074677(n+1)]` -/
def P8119749031547419122.Spec : Prop :=
  ∀ n, P8119749031547419122.a n = A295683 n

end A295683

/-! ## A295683.P3030385170657198003

`A111573(n+1)-A111574(n+1)`
-/

namespace A295683.P3030385170657198003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111573 (n + 1) - A111574 (n + 1)

end

end A295683.P3030385170657198003

namespace A295683

/-- `A111573(n+1)-A111574(n+1)` -/
def P3030385170657198003.Spec : Prop :=
  ∀ n, P3030385170657198003.a n = A295683 n

end A295683

/-! ## A295683.P17133702839893438146

`A295687(n+1)-A295684(n+1)`
-/

namespace A295683.P17133702839893438146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295687 (n + 1) - A295684 (n + 1)

end

end A295683.P17133702839893438146

namespace A295683

/-- `A295687(n+1)-A295684(n+1)` -/
def P17133702839893438146.Spec : Prop :=
  ∀ n, P17133702839893438146.a n = A295683 n

end A295683

/-! ## A295683.P16450374755816333587

`A074677(n+1)-Δ[Δ[A074677(n)]]`
-/

namespace A295683.P16450374755816333587
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074677 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074677 (n + 1) - (f1 (n + 1) - f1 n)

end

end A295683.P16450374755816333587

namespace A295683

/-- `A074677(n+1)-Δ[Δ[A074677(n)]]` -/
def P16450374755816333587.Spec : Prop :=
  ∀ n, P16450374755816333587.a n = A295683 n

end A295683

/-! ## A295683.P403234295196801263

`A000032(n)-(A000045(n)+a(n-2))` with `a(0)=2, a(1)=1`
-/

namespace A295683.P403234295196801263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 1] fun n a =>
  A000032 n - (A000045 n + a (n - 2))

end

end A295683.P403234295196801263

namespace A295683

/-- `A000032(n)-(A000045(n)+a(n-2))` -/
def P403234295196801263.Spec : Prop :=
  ∀ n, P403234295196801263.a n = A295683 n

end A295683

/-! ## A295683.P2247267568534866460

`A111573(n+1)-(A111569(n)+A000045(n))`
-/

namespace A295683.P2247267568534866460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111573 (n + 1) - (A111569 n + A000045 n)

end

end A295683.P2247267568534866460

namespace A295683

/-- `A111573(n+1)-(A111569(n)+A000045(n))` -/
def P2247267568534866460.Spec : Prop :=
  ∀ n, P2247267568534866460.a n = A295683 n

end A295683

/-!
# A295684: a(n) = a(n-1) + a(n-3) + a(n-4), where a(0) = 2, a(1) = 0, a(2) = 1, a(3) = 1.

The programs for A295684, the canonical program `A295684.P11596021738330589088` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A295684 has offset 0).

The definition of A295684 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+a(n-3)+a(n-4)` (program `A295684.P11596021738330589088`, by `A295684.P11596021738330589088.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A295684.P11596021738330589088

`a(n-1)+a(n-3)+a(n-4)` with `a(0)=2, a(1)=0, a(2)=1, a(3)=1`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A295684

/-- `a(n-1)+a(n-3)+a(n-4)` -/
def P11596021738330589088.Spec : Prop :=
  ∀ n, (P11596021738330589088.a n : ℤ) = A295684 n

theorem P11596021738330589088.correct : P11596021738330589088.Spec := by
  intro n
  simp only [A295684]

end A295684

/-! ## A295684.P4880241214531392988

`ogf((-2+2x-x^2+2x^3)/(-1+x+x^3+x^4))`
-/

namespace A295684.P4880241214531392988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -2, 1, -2] [1, -1, 0, -1, -1] n

end

end A295684.P4880241214531392988

namespace A295684

/-- `ogf((-2+2x-x^2+2x^3)/(-1+x+x^3+x^4))` -/
def P4880241214531392988.Spec : Prop :=
  ∀ n, P4880241214531392988.a n = A295684 n

end A295684

/-! ## A295684.P9050358939957652017

`A152163(n)+A006498(n)`
-/

namespace A295684.P9050358939957652017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152163 n + A006498 n

end

end A295684.P9050358939957652017

namespace A295684

/-- `A152163(n)+A006498(n)` -/
def P9050358939957652017.Spec : Prop :=
  ∀ n, P9050358939957652017.a n = A295684 n

end A295684

/-! ## A295684.P15629540516179355057

`A074662(n)-A295681(n)`
-/

namespace A295684.P15629540516179355057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074662 n - A295681 n

end

end A295684.P15629540516179355057

namespace A295684

/-- `A074662(n)-A295681(n)` -/
def P15629540516179355057.Spec : Prop :=
  ∀ n, P15629540516179355057.a n = A295684 n

end A295684

/-! ## A295684.P7868479067111928535

`A236144(n)-A295682(n)`
-/

namespace A295684.P7868479067111928535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236144 n - A295682 n

end

end A295684.P7868479067111928535

namespace A295684

/-- `A236144(n)-A295682(n)` -/
def P7868479067111928535.Spec : Prop :=
  ∀ n, P7868479067111928535.a n = A295684 n

end A295684

/-! ## A295684.P12498656573184074662

`Δ[A000045(n)]+A006498(n)-A000045(n)`
-/

namespace A295684.P12498656573184074662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (A006498 n - A000045 n)

end

end A295684.P12498656573184074662

namespace A295684

/-- `Δ[A000045(n)]+A006498(n)-A000045(n)` -/
def P12498656573184074662.Spec : Prop :=
  ∀ n, P12498656573184074662.a n = A295684 n

end A295684

/-! ## A295684.P13450179507052466652

`A006498(n)-Δ[Δ[A000045(n)]]`
-/

namespace A295684.P13450179507052466652
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006498 n - (f1 (n + 1) - f1 n)

end

end A295684.P13450179507052466652

namespace A295684

/-- `A006498(n)-Δ[Δ[A000045(n)]]` -/
def P13450179507052466652.Spec : Prop :=
  ∀ n, P13450179507052466652.a n = A295684 n

end A295684

/-! ## A295684.P11475860520513949916

`A000032(n)+A126116(n)-A293411(n)`
-/

namespace A295684.P11475860520513949916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 n + (A126116 n - A293411 n)

end

end A295684.P11475860520513949916

namespace A295684

/-- `A000032(n)+A126116(n)-A293411(n)` -/
def P11475860520513949916.Spec : Prop :=
  ∀ n, P11475860520513949916.a n = A295684 n

end A295684

/-! ## A295684.P1295378661891409440

`A000045(n+1)+A006498(n)-A006355(n+1)`
-/

namespace A295684.P1295378661891409440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) + (A006498 n - A006355 (n + 1))

end

end A295684.P1295378661891409440

namespace A295684

/-- `A000045(n+1)+A006498(n)-A006355(n+1)` -/
def P1295378661891409440.Spec : Prop :=
  ∀ n, P1295378661891409440.a n = A295684 n

end A295684

/-!
# A295685: a(n) = a(n-1) + a(n-3) + a(n-4), where a(0) = 2, a(1) = 1, a(2) = 1, a(3) = 1.

The programs for A295685, the canonical program `A295685.P6256682598477964099` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A295685 has offset 0).

The definition of A295685 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+a(n-3)+a(n-4)` (program `A295685.P6256682598477964099`, by `A295685.P6256682598477964099.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A295685.P6256682598477964099

`a(n-1)+a(n-3)+a(n-4)` with `a(0)=2, a(1)=1, a(2)=1, a(3)=1`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A295685

/-- `a(n-1)+a(n-3)+a(n-4)` -/
def P6256682598477964099.Spec : Prop :=
  ∀ n, (P6256682598477964099.a n : ℤ) = A295685 n

theorem P6256682598477964099.correct : P6256682598477964099.Spec := by
  intro n
  simp only [A295685]

end A295685

/-! ## A295685.P982662208634997661

`ogf((-2+x+2x^3)/(-1+x+x^3+x^4))`
-/

namespace A295685.P982662208634997661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -1, 0, -2] [1, -1, 0, -1, -1] n

end

end A295685.P982662208634997661

namespace A295685

/-- `ogf((-2+x+2x^3)/(-1+x+x^3+x^4))` -/
def P982662208634997661.Spec : Prop :=
  ∀ n, P982662208634997661.a n = A295685 n

end A295685

/-! ## A295685.P14282757186580266310

`A236165(n)+A212804(n)`
-/

namespace A295685.P14282757186580266310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236165 n + A212804 n

end

end A295685.P14282757186580266310

namespace A295685

/-- `A236165(n)+A212804(n)` -/
def P14282757186580266310.Spec : Prop :=
  ∀ n, P14282757186580266310.a n = A295685 n

end A295685

/-! ## A295685.P10752289590806709456

`A295671(n)+A236165(n+1)`
-/

namespace A295685.P10752289590806709456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295671 n + A236165 (n + 1)

end

end A295685.P10752289590806709456

namespace A295685

/-- `A295671(n)+A236165(n+1)` -/
def P10752289590806709456.Spec : Prop :=
  ∀ n, P10752289590806709456.a n = A295685 n

end A295685

/-! ## A295685.P9511553951945141889

`A236165(n)-A152163(n+1)`
-/

namespace A295685.P9511553951945141889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236165 n - A152163 (n + 1)

end

end A295685.P9511553951945141889

namespace A295685

/-- `A236165(n)-A152163(n+1)` -/
def P9511553951945141889.Spec : Prop :=
  ∀ n, P9511553951945141889.a n = A295685 n

end A295685

/-! ## A295685.P13975065337807785098

`A000045(n-1)+A000032(n-2)-a(n-2)` with `a(0)=2, a(1)=1`
-/

namespace A295685.P13975065337807785098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 1] fun n a =>
  A000045 (n - 1) + (A000032 (n - 2) - a (n - 2))

end

end A295685.P13975065337807785098

namespace A295685

/-- `A000045(n-1)+A000032(n-2)-a(n-2)` -/
def P13975065337807785098.Spec : Prop :=
  ∀ n, P13975065337807785098.a n = A295685 n

end A295685

/-! ## A295685.P949321495439252988

`A013655(n-2)-a(n-2)` with `a(0)=2, a(1)=1`
-/

namespace A295685.P949321495439252988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 1] fun n a =>
  A013655 (n - 2) - a (n - 2)

end

end A295685.P949321495439252988

namespace A295685

/-- `A013655(n-2)-a(n-2)` -/
def P949321495439252988.Spec : Prop :=
  ∀ n, P949321495439252988.a n = A295685 n

end A295685

/-! ## A295685.P12350120594776903007

`A074662(n)-A295680(n)`
-/

namespace A295685.P12350120594776903007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074662 n - A295680 n

end

end A295685.P12350120594776903007

namespace A295685

/-- `A074662(n)-A295680(n)` -/
def P12350120594776903007.Spec : Prop :=
  ∀ n, P12350120594776903007.a n = A295685 n

end A295685

/-! ## A295685.P9855599080564462025

`A000045(n+1)+A236165(n)-A000045(n)`
-/

namespace A295685.P9855599080564462025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) + (A236165 n - A000045 n)

end

end A295685.P9855599080564462025

namespace A295685

/-- `A000045(n+1)+A236165(n)-A000045(n)` -/
def P9855599080564462025.Spec : Prop :=
  ∀ n, P9855599080564462025.a n = A295685 n

end A295685

/-! ## A295685.P10298614839057781755

`A111569(n+1)+A111573(n)-A111574(n+1)`
-/

namespace A295685.P10298614839057781755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111569 (n + 1) + (A111573 n - A111574 (n + 1))

end

end A295685.P10298614839057781755

namespace A295685

/-- `A111569(n+1)+A111573(n)-A111574(n+1)` -/
def P10298614839057781755.Spec : Prop :=
  ∀ n, P10298614839057781755.a n = A295685 n

end A295685

/-! ## A295685.P5625750132556136162

`A000032(n)-A236165(n+2)`
-/

namespace A295685.P5625750132556136162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 n - A236165 (n + 2)

end

end A295685.P5625750132556136162

namespace A295685

/-- `A000032(n)-A236165(n+2)` -/
def P5625750132556136162.Spec : Prop :=
  ∀ n, P5625750132556136162.a n = A295685 n

end A295685

/-! ## A295685.P15673737647437193191

`A006498(n)+Δ[A000045(n)-A006498(n)]`
-/

namespace A295685.P15673737647437193191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n - A006498 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006498 n + (f1 (n + 1) - f1 n)

end

end A295685.P15673737647437193191

namespace A295685

/-- `A006498(n)+Δ[A000045(n)-A006498(n)]` -/
def P15673737647437193191.Spec : Prop :=
  ∀ n, P15673737647437193191.a n = A295685 n

end A295685

/-! ## A295685.P6172631318227928471

`A295691(n)-Δ[Δ[A006498(n)]]`
-/

namespace A295685.P6172631318227928471
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006498 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295691 n - (f1 (n + 1) - f1 n)

end

end A295685.P6172631318227928471

namespace A295685

/-- `A295691(n)-Δ[Δ[A006498(n)]]` -/
def P6172631318227928471.Spec : Prop :=
  ∀ n, P6172631318227928471.a n = A295685 n

end A295685

/-! ## A295685.P7721463975010631848

`A293411(n+1)+A126116(n)-A000032(n+1)`
-/

namespace A295685.P7721463975010631848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293411 (n + 1) + (A126116 n - A000032 (n + 1))

end

end A295685.P7721463975010631848

namespace A295685

/-- `A293411(n+1)+A126116(n)-A000032(n+1)` -/
def P7721463975010631848.Spec : Prop :=
  ∀ n, P7721463975010631848.a n = A295685 n

end A295685

/-!
# A295686: a(n) = a(n-1) + a(n-3) + a(n-4), where a(0) = 2, a(1) = 1, a(2) = 2, a(3) = 1.

The programs for A295686, the canonical program `A295686.P9894288124872868918` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A295686 has offset 0).

The definition of A295686 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+a(n-3)+a(n-4)` (program `A295686.P9894288124872868918`, by `A295686.P9894288124872868918.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A295686.P9894288124872868918

`a(n-1)+a(n-3)+a(n-4)` with `a(0)=2, a(1)=1, a(2)=2, a(3)=1`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A295686

/-- `a(n-1)+a(n-3)+a(n-4)` -/
def P9894288124872868918.Spec : Prop :=
  ∀ n, (P9894288124872868918.a n : ℤ) = A295686 n

theorem P9894288124872868918.correct : P9894288124872868918.Spec := by
  intro n
  simp only [A295686]

end A295686

/-! ## A295686.P16094557856553705679

`ogf((-2+x-x^2+3x^3)/(-1+x+x^3+x^4))`
-/

namespace A295686.P16094557856553705679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -1, 1, -3] [1, -1, 0, -1, -1] n

end

end A295686.P16094557856553705679

namespace A295686

/-- `ogf((-2+x-x^2+3x^3)/(-1+x+x^3+x^4))` -/
def P16094557856553705679.Spec : Prop :=
  ∀ n, P16094557856553705679.a n = A295686 n

end A295686

/-! ## A295686.P2602698028980837937

`2*A000032(n-2)-a(n-2)` with `a(0)=2, a(1)=1`
-/

namespace A295686.P2602698028980837937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 1] fun n a =>
  2 * A000032 (n - 2) - a (n - 2)

end

end A295686.P2602698028980837937

namespace A295686

/-- `2*A000032(n-2)-a(n-2)` -/
def P2602698028980837937.Spec : Prop :=
  ∀ n, P2602698028980837937.a n = A295686 n

end A295686

/-! ## A295686.P18271946038895540798

`A117569(n)+A006355(n)`
-/

namespace A295686.P18271946038895540798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117569 n + A006355 n

end

end A295686.P18271946038895540798

namespace A295686

/-- `A117569(n)+A006355(n)` -/
def P18271946038895540798.Spec : Prop :=
  ∀ n, P18271946038895540798.a n = A295686 n

end A295686

/-! ## A295686.P14834897661688768773

`A118658(n)+A101455(n)`
-/

namespace A295686.P14834897661688768773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118658 n + A101455 n

end

end A295686.P14834897661688768773

namespace A295686

/-- `A118658(n)+A101455(n)` -/
def P14834897661688768773.Spec : Prop :=
  ∀ n, P14834897661688768773.a n = A295686 n

end A295686

/-! ## A295686.P4872758882815472676

`A118658(n)-A056594(n+1)`
-/

namespace A295686.P4872758882815472676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118658 n - A056594 (n + 1)

end

end A295686.P4872758882815472676

namespace A295686

/-- `A118658(n)-A056594(n+1)` -/
def P4872758882815472676.Spec : Prop :=
  ∀ n, P4872758882815472676.a n = A295686 n

end A295686

/-! ## A295686.P25023927412088318

`A295685(n)+A295685(n)-A295683(n)`
-/

namespace A295686.P25023927412088318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295685 n + (A295685 n - A295683 n)

end

end A295686.P25023927412088318

namespace A295686

/-- `A295685(n)+A295685(n)-A295683(n)` -/
def P25023927412088318.Spec : Prop :=
  ∀ n, P25023927412088318.a n = A295686 n

end A295686

/-! ## A295686.P230449365313137494

`2*A295685(n)-A295683(n)`
-/

namespace A295686.P230449365313137494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A295685 n - A295683 n

end

end A295686.P230449365313137494

namespace A295686

/-- `2*A295685(n)-A295683(n)` -/
def P230449365313137494.Spec : Prop :=
  ∀ n, P230449365313137494.a n = A295686 n

end A295686

/-! ## A295686.P3998263547257968385

`A000032(n)-(A056594(n+1)+A000045(n))`
-/

namespace A295686.P3998263547257968385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 n - (A056594 (n + 1) + A000045 n)

end

end A295686.P3998263547257968385

namespace A295686

/-- `A000032(n)-(A056594(n+1)+A000045(n))` -/
def P3998263547257968385.Spec : Prop :=
  ∀ n, P3998263547257968385.a n = A295686 n

end A295686

/-! ## A295686.P16944659408791168065

`A000032(n)-A303427(n+1)*A303427(n)`
-/

namespace A295686.P16944659408791168065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 n - A303427 (n + 1) * A303427 n

end

end A295686.P16944659408791168065

namespace A295686

/-- `A000032(n)-A303427(n+1)*A303427(n)` -/
def P16944659408791168065.Spec : Prop :=
  ∀ n, P16944659408791168065.a n = A295686 n

end A295686

/-! ## A295686.P14593129079424280675

`A104449(n)-A115008(n)`
-/

namespace A295686.P14593129079424280675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104449 n - A115008 n

end

end A295686.P14593129079424280675

namespace A295686

/-- `A104449(n)-A115008(n)` -/
def P14593129079424280675.Spec : Prop :=
  ∀ n, P14593129079424280675.a n = A295686 n

end A295686

/-! ## A295686.P11854569206618263098

`Δ[A166012(n)-A102560(n)]`
-/

namespace A295686.P11854569206618263098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166012 n - A102560 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A295686.P11854569206618263098

namespace A295686

/-- `Δ[A166012(n)-A102560(n)]` -/
def P11854569206618263098.Spec : Prop :=
  ∀ n, P11854569206618263098.a n = A295686 n

end A295686

/-! ## A295686.P17484893798686282729

`Δ[A006355(n+1)+A102560(n+1)²]`
-/

namespace A295686.P17484893798686282729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006355 (n + 1) + A102560 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A295686.P17484893798686282729

namespace A295686

/-- `Δ[A006355(n+1)+A102560(n+1)²]` -/
def P17484893798686282729.Spec : Prop :=
  ∀ n, P17484893798686282729.a n = A295686 n

end A295686

/-! ## A295686.P4174178813970937323

`A295683(2*n)/A000045(n+1)-A056594(n+1)`
-/

namespace A295686.P4174178813970937323
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A295683 (2 * n) : ℚ) / (A000045 (n + 1) : ℚ) - (A056594 (n + 1) : ℚ)

end

end A295686.P4174178813970937323

namespace A295686

/-- `A295683(2*n)/A000045(n+1)-A056594(n+1)` -/
def P4174178813970937323.Spec : Prop :=
  ∀ n, P4174178813970937323.a n = (A295686 n : ℚ)

end A295686

/-!
# A295687: a(n) = a(n-1) + a(n-3) + a(n-4), where a(0) = 1, a(1) = 2, a(2) = 2, a(3) = 1.

The programs for A295687, the canonical program `A295687.P7666936744210132041` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A295687 has offset 0).

The definition of A295687 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+a(n-3)+a(n-4)` (program `A295687.P7666936744210132041`, by `A295687.P7666936744210132041.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A295687.P7666936744210132041

`a(n-1)+a(n-3)+a(n-4)` with `a(0)=1, a(1)=2, a(2)=2, a(3)=1`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A295687

/-- `a(n-1)+a(n-3)+a(n-4)` -/
def P7666936744210132041.Spec : Prop :=
  ∀ n, (P7666936744210132041.a n : ℤ) = A295687 n

theorem P7666936744210132041.correct : P7666936744210132041.Spec := by
  intro n
  simp only [A295687]

end A295687

/-! ## A295687.P11069440372371806525

`ogf((-1-x+2x^3)/(-1+x+x^3+x^4))`
-/

namespace A295687.P11069440372371806525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, 0, -2] [1, -1, 0, -1, -1] n

end

end A295687.P11069440372371806525

namespace A295687

/-- `ogf((-1-x+2x^3)/(-1+x+x^3+x^4))` -/
def P11069440372371806525.Spec : Prop :=
  ∀ n, P11069440372371806525.a n = A295687 n

end A295687

/-! ## A295687.P1228266121924091279

`A295671(n)+A000045(n)`
-/

namespace A295687.P1228266121924091279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295671 n + A000045 n

end

end A295687.P1228266121924091279

namespace A295687

/-- `A295671(n)+A000045(n)` -/
def P1228266121924091279.Spec : Prop :=
  ∀ n, P1228266121924091279.a n = A295687 n

end A295687

/-! ## A295687.P8017339456808087974

`A295690(n)-A056594(n)`
-/

namespace A295687.P8017339456808087974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295690 n - A056594 n

end

end A295687.P8017339456808087974

namespace A295687

/-- `A295690(n)-A056594(n)` -/
def P8017339456808087974.Spec : Prop :=
  ∀ n, P8017339456808087974.a n = A295687 n

end A295687

/-! ## A295687.P18084278398846621679

`A295684(n+1)+A295672(n)`
-/

namespace A295687.P18084278398846621679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295684 (n + 1) + A295672 n

end

end A295687.P18084278398846621679

namespace A295687

/-- `A295684(n+1)+A295672(n)` -/
def P18084278398846621679.Spec : Prop :=
  ∀ n, P18084278398846621679.a n = A295687 n

end A295687

/-! ## A295687.P1746049157678516079

`A000032(n-2)+A000045(n)-a(n-2)` with `a(0)=1, a(1)=2`
-/

namespace A295687.P1746049157678516079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A000032 (n - 2) + (A000045 n - a (n - 2))

end

end A295687.P1746049157678516079

namespace A295687

/-- `A000032(n-2)+A000045(n)-a(n-2)` -/
def P1746049157678516079.Spec : Prop :=
  ∀ n, P1746049157678516079.a n = A295687 n

end A295687

/-! ## A295687.P2810051384949292713

`A000045(n)+A295691(n)-A006498(n)`
-/

namespace A295687.P2810051384949292713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n + (A295691 n - A006498 n)

end

end A295687.P2810051384949292713

namespace A295687

/-- `A000045(n)+A295691(n)-A006498(n)` -/
def P2810051384949292713.Spec : Prop :=
  ∀ n, P2810051384949292713.a n = A295687 n

end A295687

/-! ## A295687.P7477144206053287822

`A000045(n)+A126116(n)-Δ[A126116(n)]`
-/

namespace A295687.P7477144206053287822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126116 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n + (A126116 n - (f1 (n + 1) - f1 n))

end

end A295687.P7477144206053287822

namespace A295687

/-- `A000045(n)+A126116(n)-Δ[A126116(n)]` -/
def P7477144206053287822.Spec : Prop :=
  ∀ n, P7477144206053287822.a n = A295687 n

end A295687

/-! ## A295687.P15441700410937250726

`A074677(n)+A295685(n)-Δ[A074677(n)]`
-/

namespace A295687.P15441700410937250726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074677 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074677 n + (A295685 n - (f1 (n + 1) - f1 n))

end

end A295687.P15441700410937250726

namespace A295687

/-- `A074677(n)+A295685(n)-Δ[A074677(n)]` -/
def P15441700410937250726.Spec : Prop :=
  ∀ n, P15441700410937250726.a n = A295687 n

end A295687

/-! ## A295687.P837754743947050029

`A000045(n+1)+A236165(n)-A236165(n+1)`
-/

namespace A295687.P837754743947050029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) + (A236165 n - A236165 (n + 1))

end

end A295687.P837754743947050029

namespace A295687

/-- `A000045(n+1)+A236165(n)-A236165(n+1)` -/
def P837754743947050029.Spec : Prop :=
  ∀ n, P837754743947050029.a n = A295687 n

end A295687

/-! ## A295687.P5755792918633777934

`A000045(n)+A126116(n)+A126116(n)-A126116(n+1)`
-/

namespace A295687.P5755792918633777934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n + (A126116 n + (A126116 n - A126116 (n + 1)))

end

end A295687.P5755792918633777934

namespace A295687

/-- `A000045(n)+A126116(n)+A126116(n)-A126116(n+1)` -/
def P5755792918633777934.Spec : Prop :=
  ∀ n, P5755792918633777934.a n = A295687 n

end A295687

/-! ## A295687.P6910851440522698793

`3*A000045(n-1)-a(n-2)` with `a(0)=1, a(1)=2`
-/

namespace A295687.P6910851440522698793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  3 * A000045 (n - 1) - a (n - 2)

end

end A295687.P6910851440522698793

namespace A295687

/-- `3*A000045(n-1)-a(n-2)` -/
def P6910851440522698793.Spec : Prop :=
  ∀ n, P6910851440522698793.a n = A295687 n

end A295687

/-! ## A295687.P8077661593108533982

`A070550(n)-A295680(n)`
-/

namespace A295687.P8077661593108533982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070550 n - A295680 n

end

end A295687.P8077661593108533982

namespace A295687

/-- `A070550(n)-A295680(n)` -/
def P8077661593108533982.Spec : Prop :=
  ∀ n, P8077661593108533982.a n = A295687 n

end A295687

/-! ## A295687.P3463786088606688761

`A000032(n)-A295671(n+2)`
-/

namespace A295687.P3463786088606688761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 n - A295671 (n + 2)

end

end A295687.P3463786088606688761

namespace A295687

/-- `A000032(n)-A295671(n+2)` -/
def P3463786088606688761.Spec : Prop :=
  ∀ n, P3463786088606688761.a n = A295687 n

end A295687

/-! ## A295687.P13832078166046775295

`A000032(n)-a(n-2)-A000045(n-2)` with `a(0)=1, a(1)=2`
-/

namespace A295687.P13832078166046775295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A000032 n - a (n - 2) - A000045 (n - 2)

end

end A295687.P13832078166046775295

namespace A295687

/-- `A000032(n)-a(n-2)-A000045(n-2)` -/
def P13832078166046775295.Spec : Prop :=
  ∀ n, P13832078166046775295.a n = A295687 n

end A295687

/-! ## A295687.P10248286930514356675

`A000032(n)+A000045(n)-A295688(n+1)`
-/

namespace A295687.P10248286930514356675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 n + (A000045 n - A295688 (n + 1))

end

end A295687.P10248286930514356675

namespace A295687

/-- `A000032(n)+A000045(n)-A295688(n+1)` -/
def P10248286930514356675.Spec : Prop :=
  ∀ n, P10248286930514356675.a n = A295687 n

end A295687

/-! ## A295687.P10052825365983022145

`A070550(n)+A126116(n)-A126116(n+1)`
-/

namespace A295687.P10052825365983022145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070550 n + (A126116 n - A126116 (n + 1))

end

end A295687.P10052825365983022145

namespace A295687

/-- `A070550(n)+A126116(n)-A126116(n+1)` -/
def P10052825365983022145.Spec : Prop :=
  ∀ n, P10052825365983022145.a n = A295687 n

end A295687

/-! ## A295687.P14989448017537513735

`A126116(n)+Δ[A000071(n+1)-A126116(n)]`
-/

namespace A295687.P14989448017537513735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 (n + 1) - A126116 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126116 n + (f1 (n + 1) - f1 n)

end

end A295687.P14989448017537513735

namespace A295687

/-- `A126116(n)+Δ[A000071(n+1)-A126116(n)]` -/
def P14989448017537513735.Spec : Prop :=
  ∀ n, P14989448017537513735.a n = A295687 n

end A295687

/-! ## A295687.P15073500703094550931

`A000071(n+2)+A295671(n)-A000071(n+1)`
-/

namespace A295687.P15073500703094550931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 (n + 2) + (A295671 n - A000071 (n + 1))

end

end A295687.P15073500703094550931

namespace A295687

/-- `A000071(n+2)+A295671(n)-A000071(n+1)` -/
def P15073500703094550931.Spec : Prop :=
  ∀ n, P15073500703094550931.a n = A295687 n

end A295687

/-! ## A295687.P5233153390743589598

`A000045(n+1)+A000045(n+1)-A295688(n+1)`
-/

namespace A295687.P5233153390743589598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) + (A000045 (n + 1) - A295688 (n + 1))

end

end A295687.P5233153390743589598

namespace A295687

/-- `A000045(n+1)+A000045(n+1)-A295688(n+1)` -/
def P5233153390743589598.Spec : Prop :=
  ∀ n, P5233153390743589598.a n = A295687 n

end A295687

/-!
# A295688: a(n) = a(n-1) + a(n-3) + a(n-4), where a(0) = 2, a(1) = 1, a(2) = 0, a(3) = 2.

The programs for A295688, the canonical program `A295688.P841708712634053802` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A295688 has offset 0).

The definition of A295688 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+a(n-3)+a(n-4)` (program `A295688.P841708712634053802`, by `A295688.P841708712634053802.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A295688.P841708712634053802

`a(n-1)+a(n-3)+a(n-4)` with `a(0)=2, a(1)=1, a(2)=0, a(3)=2`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A295688

/-- `a(n-1)+a(n-3)+a(n-4)` -/
def P841708712634053802.Spec : Prop :=
  ∀ n, (P841708712634053802.a n : ℤ) = A295688 n

theorem P841708712634053802.correct : P841708712634053802.Spec := by
  intro n
  simp only [A295688]

end A295688

/-! ## A295688.P3400235792025102547

`ogf((-2+x+x^2)/(-1+x+x^3+x^4))`
-/

namespace A295688.P3400235792025102547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -1, -1] [1, -1, 0, -1, -1] n

end

end A295688.P3400235792025102547

namespace A295688

/-- `ogf((-2+x+x^2)/(-1+x+x^3+x^4))` -/
def P3400235792025102547.Spec : Prop :=
  ∀ n, P3400235792025102547.a n = A295688 n

end A295688

/-! ## A295688.P11532603759102091404

`∑[A212804(n)]-a(n-2)` with `a(0)=2, a(1)=1`
-/

namespace A295688.P11532603759102091404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 n

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 1] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j - a (n - 2)

end

end A295688.P11532603759102091404

namespace A295688

/-- `∑[A212804(n)]-a(n-2)` -/
def P11532603759102091404.Spec : Prop :=
  ∀ n, P11532603759102091404.a n = A295688 n

end A295688

/-! ## A295688.P1772883035265748171

`A000045(n)+a(n-4)` with `a(0)=2, a(1)=1, a(2)=0, a(3)=2`
-/

namespace A295688.P1772883035265748171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 1, 0, 2] fun n a =>
  A000045 n + a (n - 4)

end

end A295688.P1772883035265748171

namespace A295688

/-- `A000045(n)+a(n-4)` -/
def P1772883035265748171.Spec : Prop :=
  ∀ n, P1772883035265748171.a n = A295688 n

end A295688

/-! ## A295688.P1311462282433487893

`A056594(n)+A006498(n)`
-/

namespace A295688.P1311462282433487893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 n + A006498 n

end

end A295688.P1311462282433487893

namespace A295688

/-- `A056594(n)+A006498(n)` -/
def P1311462282433487893.Spec : Prop :=
  ∀ n, P1311462282433487893.a n = A295688 n

end A295688

/-! ## A295688.P14662430603322914042

`A074677(n+1)+A056594(n)`
-/

namespace A295688.P14662430603322914042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074677 (n + 1) + A056594 n

end

end A295688.P14662430603322914042

namespace A295688

/-- `A074677(n+1)+A056594(n)` -/
def P14662430603322914042.Spec : Prop :=
  ∀ n, P14662430603322914042.a n = A295688 n

end A295688

/-! ## A295688.P1165271948710900554

`A236165(n+1)+A236165(n)`
-/

namespace A295688.P1165271948710900554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236165 (n + 1) + A236165 n

end

end A295688.P1165271948710900554

namespace A295688

/-- `A236165(n+1)+A236165(n)` -/
def P1165271948710900554.Spec : Prop :=
  ∀ n, P1165271948710900554.a n = A295688 n

end A295688

/-! ## A295688.P17951029249058622078

`A111569(n+1)+A057077(n+1)`
-/

namespace A295688.P17951029249058622078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111569 (n + 1) + A057077 (n + 1)

end

end A295688.P17951029249058622078

namespace A295688

/-- `A111569(n+1)+A057077(n+1)` -/
def P17951029249058622078.Spec : Prop :=
  ∀ n, P17951029249058622078.a n = A295688 n

end A295688

/-! ## A295688.P17579264588885385649

`A074677(n+1)-A163805(n+1)`
-/

namespace A295688.P17579264588885385649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074677 (n + 1) - A163805 (n + 1)

end

end A295688.P17579264588885385649

namespace A295688

/-- `A074677(n+1)-A163805(n+1)` -/
def P17579264588885385649.Spec : Prop :=
  ∀ n, P17579264588885385649.a n = A295688 n

end A295688

/-! ## A295688.P10379577296304577652

`A163805(n+3)+A074677(n+1)`
-/

namespace A295688.P10379577296304577652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163805 (n + 3) + A074677 (n + 1)

end

end A295688.P10379577296304577652

namespace A295688

/-- `A163805(n+3)+A074677(n+1)` -/
def P10379577296304577652.Spec : Prop :=
  ∀ n, P10379577296304577652.a n = A295688 n

end A295688

/-! ## A295688.P14252175799940458711

`A074677(n+1)-A112299(2*(n+1))`
-/

namespace A295688.P14252175799940458711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074677 (n + 1) - A112299 (2 * (n + 1))

end

end A295688.P14252175799940458711

namespace A295688

/-- `A074677(n+1)-A112299(2*(n+1))` -/
def P14252175799940458711.Spec : Prop :=
  ∀ n, P14252175799940458711.a n = A295688 n

end A295688

/-! ## A295688.P8484057176209646296

`A000045(n-1)-(a(n-2)-A000045(n))` with `a(0)=2, a(1)=1`
-/

namespace A295688.P8484057176209646296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 1] fun n a =>
  A000045 (n - 1) - (a (n - 2) - A000045 n)

end

end A295688.P8484057176209646296

namespace A295688

/-- `A000045(n-1)-(a(n-2)-A000045(n))` -/
def P8484057176209646296.Spec : Prop :=
  ∀ n, P8484057176209646296.a n = A295688 n

end A295688

/-! ## A295688.P11841454116671146410

`A074677(n+1)+A074677(n)-A111569(n)`
-/

namespace A295688.P11841454116671146410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074677 (n + 1) + (A074677 n - A111569 n)

end

end A295688.P11841454116671146410

namespace A295688

/-- `A074677(n+1)+A074677(n)-A111569(n)` -/
def P11841454116671146410.Spec : Prop :=
  ∀ n, P11841454116671146410.a n = A295688 n

end A295688

/-! ## A295688.P14849082808683796490

`A295682(n+1)+A295682(n)-A000045(n)`
-/

namespace A295688.P14849082808683796490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295682 (n + 1) + (A295682 n - A000045 n)

end

end A295688.P14849082808683796490

namespace A295688

/-- `A295682(n+1)+A295682(n)-A000045(n)` -/
def P14849082808683796490.Spec : Prop :=
  ∀ n, P14849082808683796490.a n = A295688 n

end A295688

/-! ## A295688.P5575651087356833237

`A056594(n+1)+A111569(n+1)+A056594(n)`
-/

namespace A295688.P5575651087356833237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 (n + 1) + (A111569 (n + 1) + A056594 n)

end

end A295688.P5575651087356833237

namespace A295688

/-- `A056594(n+1)+A111569(n+1)+A056594(n)` -/
def P5575651087356833237.Spec : Prop :=
  ∀ n, P5575651087356833237.a n = A295688 n

end A295688

/-! ## A295688.P3683451492572098005

`A000045(n+1)+A295671(n+1)-A000045(n)`
-/

namespace A295688.P3683451492572098005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) + (A295671 (n + 1) - A000045 n)

end

end A295688.P3683451492572098005

namespace A295688

/-- `A000045(n+1)+A295671(n+1)-A000045(n)` -/
def P3683451492572098005.Spec : Prop :=
  ∀ n, P3683451492572098005.a n = A295688 n

end A295688

/-! ## A295688.P15214614222339685031

`A295685(n+1)+A295685(n)-A000045(n+1)`
-/

namespace A295688.P15214614222339685031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295685 (n + 1) + (A295685 n - A000045 (n + 1))

end

end A295688.P15214614222339685031

namespace A295688

/-- `A295685(n+1)+A295685(n)-A000045(n+1)` -/
def P15214614222339685031.Spec : Prop :=
  ∀ n, P15214614222339685031.a n = A295688 n

end A295688

/-! ## A295688.P12102861779976150995

`(A123231(n+1)-A053602(n))*A123231(n+2)`
-/

namespace A295688.P12102861779976150995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A123231 (n + 1) - A053602 n) * A123231 (n + 2)

end

end A295688.P12102861779976150995

namespace A295688

/-- `(A123231(n+1)-A053602(n))*A123231(n+2)` -/
def P12102861779976150995.Spec : Prop :=
  ∀ n, P12102861779976150995.a n = A295688 n

end A295688

/-! ## A295688.P10740263931033048303

`A070550(n)-A111569(n)`
-/

namespace A295688.P10740263931033048303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070550 n - A111569 n

end

end A295688.P10740263931033048303

namespace A295688

/-- `A070550(n)-A111569(n)` -/
def P10740263931033048303.Spec : Prop :=
  ∀ n, P10740263931033048303.a n = A295688 n

end A295688

/-! ## A295688.P4412755377016660581

`A295687(n+1)-A000045(n)`
-/

namespace A295688.P4412755377016660581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295687 (n + 1) - A000045 n

end

end A295688.P4412755377016660581

namespace A295688

/-- `A295687(n+1)-A000045(n)` -/
def P4412755377016660581.Spec : Prop :=
  ∀ n, P4412755377016660581.a n = A295688 n

end A295688

/-!
# A295689: a(n) = a(n-1) + a(n-3) + a(n-4), where a(0) = 2, a(1) = 0, a(2) = 2, a(3) = 1.

The programs for A295689, the canonical program `A295689.P18396355586052542752` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A295689 has offset 0).

The definition of A295689 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+a(n-3)+a(n-4)` (program `A295689.P18396355586052542752`, by `A295689.P18396355586052542752.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A295689.P18396355586052542752

`a(n-1)+a(n-3)+a(n-4)` with `a(0)=2, a(1)=0, a(2)=2, a(3)=1`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A295689

/-- `a(n-1)+a(n-3)+a(n-4)` -/
def P18396355586052542752.Spec : Prop :=
  ∀ n, (P18396355586052542752.a n : ℤ) = A295689 n

theorem P18396355586052542752.correct : P18396355586052542752.Spec := by
  intro n
  simp only [A295689]

end A295689

/-! ## A295689.P12567436061057554115

`ogf((-2+2x-2x^2+3x^3)/(-1+x+x^3+x^4))`
-/

namespace A295689.P12567436061057554115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -2, 2, -3] [1, -1, 0, -1, -1] n

end

end A295689.P12567436061057554115

namespace A295689

/-- `ogf((-2+2x-2x^2+3x^3)/(-1+x+x^3+x^4))` -/
def P12567436061057554115.Spec : Prop :=
  ∀ n, P12567436061057554115.a n = A295689 n

end A295689

/-! ## A295689.P15076131156951923548

`A295672(n)+A295671(n+2)`
-/

namespace A295689.P15076131156951923548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295672 n + A295671 (n + 2)

end

end A295689.P15076131156951923548

namespace A295689

/-- `A295672(n)+A295671(n+2)` -/
def P15076131156951923548.Spec : Prop :=
  ∀ n, P15076131156951923548.a n = A295689 n

end A295689

/-! ## A295689.P8507409456785341800

`A000032(n)-A295684(n+1)`
-/

namespace A295689.P8507409456785341800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 n - A295684 (n + 1)

end

end A295689.P8507409456785341800

namespace A295689

/-- `A000032(n)-A295684(n+1)` -/
def P8507409456785341800.Spec : Prop :=
  ∀ n, P8507409456785341800.a n = A295689 n

end A295689

/-! ## A295689.P8059670464855337979

`A000032(n)+A293411(n)-A000032(n+1)`
-/

namespace A295689.P8059670464855337979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 n + (A293411 n - A000032 (n + 1))

end

end A295689.P8059670464855337979

namespace A295689

/-- `A000032(n)+A293411(n)-A000032(n+1)` -/
def P8059670464855337979.Spec : Prop :=
  ∀ n, P8059670464855337979.a n = A295689 n

end A295689

/-! ## A295689.P6405653361440817827

`A000204(n+2)-(A295684(n+1)+A000204(n+1))`
-/

namespace A295689.P6405653361440817827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000204 (n + 2) - (A295684 (n + 1) + A000204 (n + 1))

end

end A295689.P6405653361440817827

namespace A295689

/-- `A000204(n+2)-(A295684(n+1)+A000204(n+1))` -/
def P6405653361440817827.Spec : Prop :=
  ∀ n, P6405653361440817827.a n = A295689 n

end A295689

/-! ## A295689.P3969868488395350612

`Δ[A000285(n)]-A006498(n+1)`
-/

namespace A295689.P3969868488395350612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000285 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A006498 (n + 1)

end

end A295689.P3969868488395350612

namespace A295689

/-- `Δ[A000285(n)]-A006498(n+1)` -/
def P3969868488395350612.Spec : Prop :=
  ∀ n, P3969868488395350612.a n = A295689 n

end A295689

/-! ## A295689.P6541879192956921910

`Δ[A000285(n)-A097083(n+1)]`
-/

namespace A295689.P6541879192956921910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000285 n - A097083 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A295689.P6541879192956921910

namespace A295689

/-- `Δ[A000285(n)-A097083(n+1)]` -/
def P6541879192956921910.Spec : Prop :=
  ∀ n, P6541879192956921910.a n = A295689 n

end A295689

/-! ## A295689.P13156395470671039542

`Δ[A000285(n)-A006498(n)]-A006498(n)`
-/

namespace A295689.P13156395470671039542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000285 n - A006498 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A006498 n

end

end A295689.P13156395470671039542

namespace A295689

/-- `Δ[A000285(n)-A006498(n)]-A006498(n)` -/
def P13156395470671039542.Spec : Prop :=
  ∀ n, P13156395470671039542.a n = A295689 n

end A295689

/-!
# A295690: a(n) = a(n-1) + a(n-3) + a(n-4), where a(0) = 2, a(1) = 2, a(2) = 1, a(3) = 1.

The programs for A295690, the canonical program `A295690.P5472035401144896907` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A295690 has offset 0).

The definition of A295690 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+a(n-3)+a(n-4)` (program `A295690.P5472035401144896907`, by `A295690.P5472035401144896907.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A295690.P5472035401144896907

`a(n-1)+a(n-3)+a(n-4)` with `a(0)=2, a(1)=2, a(2)=1, a(3)=1`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A295690

/-- `a(n-1)+a(n-3)+a(n-4)` -/
def P5472035401144896907.Spec : Prop :=
  ∀ n, (P5472035401144896907.a n : ℤ) = A295690 n

theorem P5472035401144896907.correct : P5472035401144896907.Spec := by
  intro n
  simp only [A295690]

end A295690

/-! ## A295690.P5848355466808568716

`ogf((-2+x^2+2x^3)/(-1+x+x^3+x^4))`
-/

namespace A295690.P5848355466808568716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 0, -1, -2] [1, -1, 0, -1, -1] n

end

end A295690.P5848355466808568716

namespace A295690

/-- `ogf((-2+x^2+2x^3)/(-1+x+x^3+x^4))` -/
def P5848355466808568716.Spec : Prop :=
  ∀ n, P5848355466808568716.a n = A295690 n

end A295690

/-! ## A295690.P7070534111408132650

`A295687(n)+A056594(n)`
-/

namespace A295690.P7070534111408132650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295687 n + A056594 n

end

end A295690.P7070534111408132650

namespace A295690

/-- `A295687(n)+A056594(n)` -/
def P7070534111408132650.Spec : Prop :=
  ∀ n, P7070534111408132650.a n = A295690 n

end A295690

/-! ## A295690.P17888645406391029539

`A236165(n)+A126116(n)`
-/

namespace A295690.P17888645406391029539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236165 n + A126116 n

end

end A295690.P17888645406391029539

namespace A295690

/-- `A236165(n)+A126116(n)` -/
def P17888645406391029539.Spec : Prop :=
  ∀ n, P17888645406391029539.a n = A295690 n

end A295690

/-! ## A295690.P12922710356898400210

`A236144(n)-A295680(n)/2`
-/

namespace A295690.P12922710356898400210
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A236144 n : ℚ) - (A295680 n : ℚ) / 2

end

end A295690.P12922710356898400210

namespace A295690

/-- `A236144(n)-A295680(n)/2` -/
def P12922710356898400210.Spec : Prop :=
  ∀ n, P12922710356898400210.a n = (A295690 n : ℚ)

end A295690

/-! ## A295690.P1924089461842439532

`A000032(n-2)+A000045(n)-a(n-2)` with `a(0)=2, a(1)=2`
-/

namespace A295690.P1924089461842439532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 2] fun n a =>
  A000032 (n - 2) + (A000045 n - a (n - 2))

end

end A295690.P1924089461842439532

namespace A295690

/-- `A000032(n-2)+A000045(n)-a(n-2)` -/
def P1924089461842439532.Spec : Prop :=
  ∀ n, P1924089461842439532.a n = A295690 n

end A295690

/-! ## A295690.P16096986540233135559

`A022086(n-1)-a(n-2)` with `a(0)=2, a(1)=2`
-/

namespace A295690.P16096986540233135559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 2] fun n a =>
  A022086 (n - 1) - a (n - 2)

end

end A295690.P16096986540233135559

namespace A295690

/-- `A022086(n-1)-a(n-2)` -/
def P16096986540233135559.Spec : Prop :=
  ∀ n, P16096986540233135559.a n = A295690 n

end A295690

/-! ## A295690.P2808767513593193875

`3*A212804(n)-a(n-2)` with `a(0)=2, a(1)=2`
-/

namespace A295690.P2808767513593193875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 2] fun n a =>
  3 * A212804 n - a (n - 2)

end

end A295690.P2808767513593193875

namespace A295690

/-- `3*A212804(n)-a(n-2)` -/
def P2808767513593193875.Spec : Prop :=
  ∀ n, P2808767513593193875.a n = A295690 n

end A295690

/-! ## A295690.P7515733719896892239

`3*A000045(n-1)-a(n-2)` with `a(0)=2, a(1)=2`
-/

namespace A295690.P7515733719896892239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 2] fun n a =>
  3 * A000045 (n - 1) - a (n - 2)

end

end A295690.P7515733719896892239

namespace A295690

/-- `3*A000045(n-1)-a(n-2)` -/
def P7515733719896892239.Spec : Prop :=
  ∀ n, P7515733719896892239.a n = A295690 n

end A295690

/-! ## A295690.P8575619600495786509

`A000032(n)-a(n-2)-A000045(n-2)` with `a(0)=2, a(1)=2`
-/

namespace A295690.P8575619600495786509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 2] fun n a =>
  A000032 n - a (n - 2) - A000045 (n - 2)

end

end A295690.P8575619600495786509

namespace A295690

/-- `A000032(n)-a(n-2)-A000045(n-2)` -/
def P8575619600495786509.Spec : Prop :=
  ∀ n, P8575619600495786509.a n = A295690 n

end A295690

/-! ## A295690.P4983657356926653013

`A111570(n)-A022086(n)`
-/

namespace A295690.P4983657356926653013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111570 n - A022086 n

end

end A295690.P4983657356926653013

namespace A295690

/-- `A111570(n)-A022086(n)` -/
def P4983657356926653013.Spec : Prop :=
  ∀ n, P4983657356926653013.a n = A295690 n

end A295690

/-!
# A295691: a(n) = a(n-1) + a(n-3) + a(n-4), where a(0) = 2, a(1) = 2, a(2) = 2, a(3) = 1.

The programs for A295691, the canonical program `A295691.P5693066324386341107` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A295691 has offset 0).

The definition of A295691 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+a(n-3)+a(n-4)` (program `A295691.P5693066324386341107`, by `A295691.P5693066324386341107.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A295691.P5693066324386341107

`a(n-1)+a(n-3)+a(n-4)` with `a(0)=2, a(1)=2, a(2)=2, a(3)=1`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A295691

/-- `a(n-1)+a(n-3)+a(n-4)` -/
def P5693066324386341107.Spec : Prop :=
  ∀ n, (P5693066324386341107.a n : ℤ) = A295691 n

theorem P5693066324386341107.correct : P5693066324386341107.Spec := by
  intro n
  simp only [A295691]

end A295691

/-! ## A295691.P7976853803633591282

`ogf((-2+3x^3)/(-1+x+x^3+x^4))`
-/

namespace A295691.P7976853803633591282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 0, 0, -3] [1, -1, 0, -1, -1] n

end

end A295691.P7976853803633591282

namespace A295691

/-- `ogf((-2+3x^3)/(-1+x+x^3+x^4))` -/
def P7976853803633591282.Spec : Prop :=
  ∀ n, P7976853803633591282.a n = A295691 n

end A295691

/-! ## A295691.P10890001417212634447

`A295671(n)+A006498(n)`
-/

namespace A295691.P10890001417212634447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295671 n + A006498 n

end

end A295691.P10890001417212634447

namespace A295691

/-- `A295671(n)+A006498(n)` -/
def P10890001417212634447.Spec : Prop :=
  ∀ n, P10890001417212634447.a n = A295691 n

end A295691

/-! ## A295691.P6948556549749282503

`A295671(n)+A074677(n+1)`
-/

namespace A295691.P6948556549749282503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295671 n + A074677 (n + 1)

end

end A295691.P6948556549749282503

namespace A295691

/-- `A295671(n)+A074677(n+1)` -/
def P6948556549749282503.Spec : Prop :=
  ∀ n, P6948556549749282503.a n = A295691 n

end A295691

/-! ## A295691.P1043244065005053543

`A006498(n)+A126116(n)-A295680(n)`
-/

namespace A295691.P1043244065005053543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006498 n + (A126116 n - A295680 n)

end

end A295691.P1043244065005053543

namespace A295691

/-- `A006498(n)+A126116(n)-A295680(n)` -/
def P1043244065005053543.Spec : Prop :=
  ∀ n, P1043244065005053543.a n = A295691 n

end A295691

/-! ## A295691.P7625832732945623476

`A236144(n)+A295685(n)-A295688(n)`
-/

namespace A295691.P7625832732945623476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236144 n + (A295685 n - A295688 n)

end

end A295691.P7625832732945623476

namespace A295691

/-- `A236144(n)+A295685(n)-A295688(n)` -/
def P7625832732945623476.Spec : Prop :=
  ∀ n, P7625832732945623476.a n = A295691 n

end A295691

/-! ## A295691.P17662528681228998118

`A295687(n)+A295690(n)-A111569(n+1)`
-/

namespace A295691.P17662528681228998118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295687 n + (A295690 n - A111569 (n + 1))

end

end A295691.P17662528681228998118

namespace A295691

/-- `A295687(n)+A295690(n)-A111569(n+1)` -/
def P17662528681228998118.Spec : Prop :=
  ∀ n, P17662528681228998118.a n = A295691 n

end A295691

/-! ## A295691.P8616412757352041135

`3*A126116(n)-A006498(n)`
-/

namespace A295691.P8616412757352041135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A126116 n - A006498 n

end

end A295691.P8616412757352041135

namespace A295691

/-- `3*A126116(n)-A006498(n)` -/
def P8616412757352041135.Spec : Prop :=
  ∀ n, P8616412757352041135.a n = A295691 n

end A295691

/-! ## A295691.P4291649822825153711

`A295671(n)+A058071(A194274(n))`
-/

namespace A295691.P4291649822825153711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295671 n + A058071 (A194274 n).toNat

end

end A295691.P4291649822825153711

namespace A295691

/-- `A295671(n)+A058071(A194274(n))` -/
def P4291649822825153711.Spec : Prop :=
  ∀ n, P4291649822825153711.a n = A295691 n

end A295691

/-!
# A295693: Numbers that have exactly three representations as a sum of six positive squares.

The programs for A295693, there is no canonical definition to state claims against.
-/

/-! ## A295693.P15459253394402020171

`eq[3, A025430(n)]`
-/

namespace A295693.P15459253394402020171
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025430 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A295693.P15459253394402020171

/-! ## A295693.P1807838183210414056

`lt[A003137(A025430(n)+1), 1]`
-/

namespace A295693.P1807838183210414056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003137 (A025430 n + 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A295693.P1807838183210414056

/-! ## A295693.P2401232192583468427

`lt[1, A299173(A025430(n)+2)]`
-/

namespace A295693.P2401232192583468427
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299173 (A025430 n + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A295693.P2401232192583468427

/-! ## A295693.P2443919869310999459

`lt[2, A052409(A025430(n)+5)]`
-/

namespace A295693.P2443919869310999459
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052409 (A025430 n + 5).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A295693.P2443919869310999459

/-! ## A295693.P13438463911357152261

`lt[2, A072411(A025430(n)+5)]`
-/

namespace A295693.P13438463911357152261
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072411 (A025430 n + 5).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A295693.P13438463911357152261

/-!
# A295696: Numbers that have exactly six representations as a sum of six positive squares.

The programs for A295696, there is no canonical definition to state claims against.
-/

/-! ## A295696.P13426282263879094997

`eq[6, A025430(n)]`
-/

namespace A295696.P13426282263879094997
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025430 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A295696.P13426282263879094997

/-! ## A295696.P192274312600328905

`lt[A212793(A025430(n)+2), 1]`
-/

namespace A295696.P192274312600328905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212793 (A025430 n + 2).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A295696.P192274312600328905

/-! ## A295696.P15463810758771354539

`lt[2, A052409(A025430(n)+2)]`
-/

namespace A295696.P15463810758771354539
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052409 (A025430 n + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A295696.P15463810758771354539

/-! ## A295696.P4359816477562888300

`lt[2, A072411(A025430(n)+2)]`
-/

namespace A295696.P4359816477562888300
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072411 (A025430 n + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A295696.P4359816477562888300

/-! ## A295696.P1987083665096942850

`lt[A218622(A025430(n)+5), 1]`
-/

namespace A295696.P1987083665096942850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218622 (A025430 n + 5).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A295696.P1987083665096942850

/-!
# A295697: Numbers that have exactly seven representations as a sum of six positive squares.

The programs for A295697, there is no canonical definition to state claims against.
-/

/-! ## A295697.P10964850318122008029

`eq[7, A025430(n)]`
-/

namespace A295697.P10964850318122008029
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025430 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A295697.P10964850318122008029

/-! ## A295697.P16208314427463807276

`eq[A000174(n)+7, A000177(n)]`
-/

namespace A295697.P16208314427463807276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000174 n + 7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000177 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A295697.P16208314427463807276

/-! ## A295697.P7461512549483866677

`lt[2, A299173(A025430(n)²+1)]`
-/

namespace A295697.P7461512549483866677
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299173 (A025430 n ^ 2 + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A295697.P7461512549483866677

/-!
# A295698: Numbers that have exactly eight representations as a sum of six positive squares.

The programs for A295698, there is no canonical definition to state claims against.
-/

/-! ## A295698.P2403798573051763832

`eq[8, A025430(n)]`
-/

namespace A295698.P2403798573051763832
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025430 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A295698.P2403798573051763832

/-! ## A295698.P11044478122841197119

`lt[1, A290081(A025430(n)+2)]`
-/

namespace A295698.P11044478122841197119
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290081 (A025430 n + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A295698.P11044478122841197119

/-! ## A295698.P18421643794662802179

`lt[2, A082660(A025430(n)+2)]`
-/

namespace A295698.P18421643794662802179
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082660 (A025430 n + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A295698.P18421643794662802179

