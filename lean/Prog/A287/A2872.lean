import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C008
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C003
import Seq.B002.C004
import Seq.B003.C000
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
import Seq.B009.C000
import Seq.B010.C000
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

/-!
# A287200: 2-limiting word of the morphism 0->10, 1->22, 2->0, starting with 0.

The programs for A287200, there is no canonical definition to state claims against.
-/

/-! ## A287200.P8913745270454356973

`and(A157665(n+1), A287368(A008619(n)))`
-/

namespace A287200.P8913745270454356973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A157665 (n + 1)) (A287368 (A008619 n).toNat)

end

end A287200.P8913745270454356973

/-! ## A287200.P14225291888530763913

`A287368(A008619(n))-char[A287202(n+1)]`
-/

namespace A287200.P14225291888530763913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287202 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287368 (A008619 n).toNat - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A287200.P14225291888530763913

/-! ## A287200.P8997049420812672599

`A000296(a(n-1))*A287368(A008619(n))` with `a(0)=2`
-/

namespace A287200.P8997049420812672599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A000296 (a (n - 1)).toNat * A287368 (A008619 n).toNat

end

end A287200.P8997049420812672599

/-! ## A287200.P942394011983000538

`A008615(a(n-1)+2)*A287368(A008619(n))` with `a(0)=2`
-/

namespace A287200.P942394011983000538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A008615 (a (n - 1) + 2).toNat * A287368 (A008619 n).toNat

end

end A287200.P942394011983000538

/-! ## A287200.P3397068885526667726

`A008616(a(n-1)+2)*A287368(A008619(n))` with `a(0)=2`
-/

namespace A287200.P3397068885526667726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A008616 (a (n - 1) + 2).toNat * A287368 (A008619 n).toNat

end

end A287200.P3397068885526667726

/-! ## A287200.P4073304093914633492

`and(A237930(n), A287368(A008619(n)))`
-/

namespace A287200.P4073304093914633492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A237930 n) (A287368 (A008619 n).toNat)

end

end A287200.P4073304093914633492

/-!
# A287201: Positions of 0 in A287200.

The programs for A287201, there is no canonical definition to state claims against.
-/

/-! ## A287201.P11391892822004044698

`A287367(n+1)-n`
-/

namespace A287201.P11391892822004044698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287367 (n + 1) - (n : ℤ)

end

end A287201.P11391892822004044698

/-! ## A287201.P17081449043711580268

`(A287369(n+1)-(n-1))/2`
-/

namespace A287201.P17081449043711580268
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A287369 (n + 1) - ((n : ℤ) - 1) : ℚ) / 2

end

end A287201.P17081449043711580268

/-! ## A287201.P9775675734902164609

`A014682(A287369(n+1)+1-n)`
-/

namespace A287201.P9775675734902164609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A287369 (n + 1) + (1 - (n : ℤ))).toNat

end

end A287201.P9775675734902164609

/-! ## A287201.P7118430532148366033

`A287369(n+1)%A287367(n+1)+1`
-/

namespace A287201.P7118430532148366033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A287369 (n + 1)) (A287367 (n + 1)) + 1

end

end A287201.P7118430532148366033

/-! ## A287201.P8595265740014919314

`A328399(A287369(n+1)-(n+1))`
-/

namespace A287201.P8595265740014919314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328399 (A287369 (n + 1) - (n + 1 : ℤ)).toNat

end

end A287201.P8595265740014919314

/-! ## A287201.P9324366103730180542

`A287334(2*(n+1))/2-n`
-/

namespace A287201.P9324366103730180542
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A287334 (2 * (n + 1)) : ℚ) / 2 - (n : ℚ)

end

end A287201.P9324366103730180542

/-! ## A287201.P16432157718626469416

`A024000(n+1)+A287334(2*(n+1))/2`
-/

namespace A287201.P16432157718626469416
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A024000 (n + 1) : ℚ) + (A287334 (2 * (n + 1)) : ℚ) / 2

end

end A287201.P16432157718626469416

/-! ## A287201.P12943353034855333875

`lt[A287200(n+1), 1]+1`
-/

namespace A287201.P12943353034855333875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287200 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A287201.P12943353034855333875

/-! ## A287201.P2539273315963235231

`record[A287200(n+2)^A287200(n+1)+n]`
-/

namespace A287201.P2539273315963235231
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A287200 (n + 2) : ℚ) ^ (A287200 (n + 1) : ℤ) + (n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A287201.P2539273315963235231

/-! ## A287201.P2429317360751387033

`lt[1, A287364(n+1)]+1-n`
-/

namespace A287201.P2429317360751387033
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287364 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1 : ℤ) - (n : ℤ)

end

end A287201.P2429317360751387033

/-! ## A287201.P2275617621817012034

`lt[1, A287364(A028310(n))]-n`
-/

namespace A287201.P2275617621817012034
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287364 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n : ℤ) - (n : ℤ)

end

end A287201.P2275617621817012034

/-! ## A287201.P7208986935514534160

`A110654(A287369(n+1)-n)`
-/

namespace A287201.P7208986935514534160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A287369 (n + 1) - (n : ℤ)).toNat

end

end A287201.P7208986935514534160

/-! ## A287201.P9067985274308474809

`A004526(A287369(n+1)+1-n)`
-/

namespace A287201.P9067985274308474809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A287369 (n + 1) + (1 - (n : ℤ))).toNat

end

end A287201.P9067985274308474809

/-! ## A287201.P3527980272285435545

`A001281(A287334(2*(n+1)))-n`
-/

namespace A287201.P3527980272285435545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A287334 (2 * (n + 1))).toNat - (n : ℤ)

end

end A287201.P3527980272285435545

/-! ## A287201.P3419948792279308666

`A060681(A287334(2*n+1)+1)-n`
-/

namespace A287201.P3419948792279308666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060681 (A287334 (2 * n + 1) + 1).toNat - (n : ℤ)

end

end A287201.P3419948792279308666

/-! ## A287201.P11495285925490782432

`eq[A161436(5*A109613(n)+4), A287200(n+1)]+1`
-/

namespace A287201.P11495285925490782432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161436 (5 * A109613 n + 4).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287200 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A287201.P11495285925490782432

/-!
# A287202: Positions of 1 in A287200.

The programs for A287202, there is no canonical definition to state claims against.
-/

/-! ## A287202.P14380900665251170624

`2*A287370(n+1)-1`
-/

namespace A287202.P14380900665251170624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A287370 (n + 1) - 1

end

end A287202.P14380900665251170624

/-! ## A287202.P11819775714725941687

`2*eq[1, A287368(n+1)]+1`
-/

namespace A287202.P11819775714725941687
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287368 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A287202.P11819775714725941687

/-! ## A287202.P13239806289227380608

`A004273(A287370(n+1))`
-/

namespace A287202.P13239806289227380608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A287370 (n + 1)).toNat

end

end A287202.P13239806289227380608

/-! ## A287202.P3809781670728355611

`A287370(n+1)+eq[1, A287368(n+1)]`
-/

namespace A287202.P3809781670728355611
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287368 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287370 (n + 1) + (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ)

end

end A287202.P3809781670728355611

/-! ## A287202.P719146402361898616

`eq[1, A287200(n+1)]+1`
-/

namespace A287202.P719146402361898616
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287200 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A287202.P719146402361898616

/-! ## A287202.P1608823091591697813

`A004442(eq[1, A287200(n+1)])`
-/

namespace A287202.P1608823091591697813
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287200 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A287202.P1608823091591697813

/-! ## A287202.P12729023850165614952

`A109613(eq[1, A287200(n+1)])`
-/

namespace A287202.P12729023850165614952
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287200 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A287202.P12729023850165614952

/-! ## A287202.P2253979728181765719

`eq[n, A109613(n)*A287200(A109613(n))]`
-/

namespace A287202.P2253979728181765719
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 n * A287200 (A109613 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A287202.P2253979728181765719

/-!
# A287203: Positions of 2 in A287200.

The programs for A287203, there is no canonical definition to state claims against.
-/

/-! ## A287203.P16582380876897758866

`lt[1, A287200(n+1)]+1`
-/

namespace A287203.P16582380876897758866
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287200 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A287203.P16582380876897758866

/-! ## A287203.P12415515090183421323

`A014682(record[(n+1)*A287200(n+1)])`
-/

namespace A287203.P12415515090183421323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A287200 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A287203.P12415515090183421323

/-! ## A287203.P17421334238089315388

`record[gcd(n+1, A287200(n+1)+A005843(n))]`
-/

namespace A287203.P17421334238089315388
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A287200 (n + 1) + A005843 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A287203.P17421334238089315388

/-! ## A287203.P8008762138856173704

`A008619(record[n*A287200(n+1)])`
-/

namespace A287203.P8008762138856173704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A287200 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A287203.P8008762138856173704

/-! ## A287203.P8134875165204065199

`A025480(record[(n+1)*A287200(n+1)])`
-/

namespace A287203.P8134875165204065199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A287200 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A287203.P8134875165204065199

/-! ## A287203.P9736936280975969242

`A110654(record[(n+1)*A287200(n+1)])`
-/

namespace A287203.P9736936280975969242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A287200 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A287203.P9736936280975969242

/-!
# A287204: Number of independent vertex sets and vertex covers in the n-triangular honeycomb acute knight graph.

The programs for A287204, there is no canonical definition to state claims against.
-/

/-! ## A287204.P18328705819794466174

`A292663(A292632(n))+A028387(n)`
-/

namespace A287204.P18328705819794466174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292663 (A292632 n).toNat + A028387 n

end

end A287204.P18328705819794466174

/-!
# A287207: Numbers k such that k![6] + 2 is prime, where k![6] = A085158(k) = sextuple factorial.

The programs for A287207, there is no canonical definition to state claims against.
-/

/-! ## A287207.P9799610412243684599

`A206914(eq[1, A100247(n)])`
-/

namespace A287207.P9799610412243684599
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100247 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206914 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A287207.P9799610412243684599

/-! ## A287207.P3500069974323548607

`A206914(record[n/A100265(n)])`
-/

namespace A287207.P3500069974323548607
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A100265 n : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206914 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A287207.P3500069974323548607

/-! ## A287207.P16544662801430552101

`record[A206913(n)/A229288(n+1)]`
-/

namespace A287207.P16544662801430552101
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A206913 n : ℚ) / (A229288 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A287207.P16544662801430552101

/-! ## A287207.P13350188187544838808

`A206914(eq[A040001(n), A098233(n)])`
-/

namespace A287207.P13350188187544838808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098233 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206914 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A287207.P13350188187544838808

/-!
# A287208: Numbers k such that 8*10^k - 13 is prime.

The programs for A287208, there is no canonical definition to state claims against.
-/

/-! ## A287208.P7765278029007393318

`A207034(A014137(n))+A007661(A005185(n+1))`
-/

namespace A287208.P7765278029007393318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207034 (A014137 n).toNat + A007661 (A005185 (n + 1)).toNat

end

end A287208.P7765278029007393318

/-! ## A287208.P18192163463918465441

`A185216(A007089(n))+A036469(n)`
-/

namespace A287208.P18192163463918465441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185216 (A007089 n).toNat + A036469 n

end

end A287208.P18192163463918465441

/-! ## A287208.P13501808890461462872

`A387118(n+3)+A333755(A073431(n))`
-/

namespace A287208.P13501808890461462872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387118 (n + 3) + A333755 (A073431 n).toNat

end

end A287208.P13501808890461462872

/-!
# A287209: a(1)=4, a(2)=5, a(n) = sum of digits of a(n-1) + sum of digits of a(n-2), n>=3.

The programs for A287209, the canonical program `A287209.P8429490988732924028` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A287209 has offset 1).

The definition of A287209 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A287209.P8429490988732924028

`a(n-1)+a(n-2)-9*(floor(a(n-1)/10)+floor(a(n-2)/10))` with `a(0)=4, a(1)=5`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A287209

/-- `a(n-1)+a(n-2)-9*(floor(a(n-1)/10)+floor(a(n-2)/10))` -/
def P8429490988732924028.Spec : Prop :=
  ∀ n, P8429490988732924028.a n = A287209 (n + 1)

theorem P8429490988732924028.correct : P8429490988732924028.Spec := by
  intro n
  simp only [A287209, Nat.add_sub_cancel]

end A287209

/-!
# A287211: The number of plane rooted complete ternary trees with 2n+1 unlabeled leaves (hence n internal nodes including the root where n starts at 0) satisfying these two conditions: (1) if one of the three children of any internal node is the greatest in deglex order then that child is not the leftmost child; (2) if one of the three children of any internal node is the smallest in deglex order then that child is not the rightmost child. Deglex order refers to degree-lexicographical order defined inductively on the number of leaves (see details under Comments).

The programs for A287211, there is no canonical definition to state claims against.
-/

/-! ## A287211.P2784061914814525157

`A357538(n)+char[14]`
-/

namespace A287211.P2784061914814525157
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  14

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357538 n + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A287211.P2784061914814525157

/-! ## A287211.P13898437739542492913

`A357538(comp[(n+4)²+n])`
-/

namespace A287211.P13898437739542492913
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 4) ^ 2 + n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357538 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A287211.P13898437739542492913

/-! ## A287211.P1739879600844574813

`A362425(n)+A357538(n)`
-/

namespace A287211.P1739879600844574813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362425 n + A357538 n

end

end A287211.P1739879600844574813

/-! ## A287211.P7071968271854323892

`A363517(n)+A357538(n)`
-/

namespace A287211.P7071968271854323892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363517 n + A357538 n

end

end A287211.P7071968271854323892

/-! ## A287211.P818947078839601095

`A370653(n)+A357538(n)`
-/

namespace A287211.P818947078839601095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370653 n + A357538 n

end

end A287211.P818947078839601095

/-!
# A287212: Ulam numbers k such that k/3 is also an Ulam number.

The programs for A287212, there is no canonical definition to state claims against.
-/

/-! ## A287212.P5379528864084616915

`3*A285885(n+1)`
-/

namespace A287212.P5379528864084616915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A285885 (n + 1)

end

end A287212.P5379528864084616915

/-! ## A287212.P16473368971958496951

`∩[A002858(n+1), A048951(n+1)+A002858(n+1)]`
-/

namespace A287212.P16473368971958496951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002858 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048951 (n + 1) + A002858 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A287212.P16473368971958496951

/-! ## A287212.P9178132548156732690

`A008486(A285885(n+1))`
-/

namespace A287212.P9178132548156732690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (A285885 (n + 1)).toNat

end

end A287212.P9178132548156732690

/-! ## A287212.P5431838856404077006

`A008585(A285885(n+1)%A020449(n+1))`
-/

namespace A287212.P5431838856404077006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 (Int.tmod (A285885 (n + 1)) (A020449 (n + 1))).toNat

end

end A287212.P5431838856404077006

/-! ## A287212.P3567062856643256712

`A008585(A285885(n+1))%A068390(n+1)`
-/

namespace A287212.P3567062856643256712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008585 (A285885 (n + 1)).toNat) (A068390 (n + 1))

end

end A287212.P3567062856643256712

/-!
# A287214: Number A(n,k) of set partitions of [n] such that for each block all absolute differences between consecutive elements are <= k; square array A(n,k), n>=0, k>=0, read by antidiagonals.

The programs for A287214, there is no canonical definition to state claims against.
-/

/-! ## A287214.P6197738706778181829

`A085516(A295679(n))`
-/

namespace A287214.P6197738706778181829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085516 (A295679 n).toNat

end

end A287214.P6197738706778181829

/-! ## A287214.P10404405473017363636

`A295679(n)%A087651(n)`
-/

namespace A287214.P10404405473017363636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A295679 n) (A087651 n)

end

end A287214.P10404405473017363636

/-! ## A287214.P11966603716220997220

`gcd(A036484(n), A295679(n))`
-/

namespace A287214.P11966603716220997220
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A036484 n) (A295679 n)

end

end A287214.P11966603716220997220

/-! ## A287214.P11988411989264919616

`A295679(n%p?[A053251(n)])`
-/

namespace A287214.P11988411989264919616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053251 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295679 (Int.tmod (n : ℤ) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))).toNat

end

end A287214.P11988411989264919616

/-! ## A287214.P9882489654099348696

`and(A179612(n+1), A295679(n))`
-/

namespace A287214.P9882489654099348696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A179612 (n + 1)) (A295679 n)

end

end A287214.P9882489654099348696

/-!
# A287216: Number A(n,k) of set partitions of [n] such that all absolute differences between least elements of consecutive blocks are <= k; square array A(n,k), n>=0, k>=0, read by antidiagonals.

The programs for A287216, there is no canonical definition to state claims against.
-/

/-! ## A287216.P5299381691481085773

`A328029(A293718(n))`
-/

namespace A287216.P5299381691481085773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328029 (A293718 n).toNat

end

end A287216.P5299381691481085773

/-! ## A287216.P8567133966962767208

`A007496(A287214(n)+1)`
-/

namespace A287216.P8567133966962767208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007496 (A287214 n + 1).toNat

end

end A287216.P8567133966962767208

/-! ## A287216.P4370454389157995458

`A007496(A295679(n)+1)`
-/

namespace A287216.P4370454389157995458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007496 (A295679 n + 1).toNat

end

end A287216.P4370454389157995458

/-! ## A287216.P836422521050410999

`A065603(A267383(n))+1`
-/

namespace A287216.P836422521050410999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065603 (A267383 n).toNat + 1

end

end A287216.P836422521050410999

/-! ## A287216.P11915975193677111306

`A072966(A295679(n)+1)`
-/

namespace A287216.P11915975193677111306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072966 (A295679 n + 1).toNat

end

end A287216.P11915975193677111306

/-!
# A287217: Primes p where A196202 reaches a new local minimum, i.e., the value of A196202 is strictly smaller than the value for both the previous prime and the next prime.

The programs for A287217, there is no canonical definition to state claims against.
-/

/-! ## A287217.P6147854448794047257

`p?[and(A045344(n+1), A339145(n+2))]`
-/

namespace A287217.P6147854448794047257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A045344 (n + 1)) (A339145 (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A287217.P6147854448794047257

/-! ## A287217.P10024346794996403291

`p?[and(A065091(n+1), A339145(n+2))]`
-/

namespace A287217.P10024346794996403291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A065091 (n + 1)) (A339145 (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A287217.P10024346794996403291

/-! ## A287217.P3619446725451322994

`A223036(A079411(3*n+4)%A079385(n+1))`
-/

namespace A287217.P3619446725451322994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223036 (Int.tmod (A079411 (3 * n + 4)) (A079385 (n + 1))).toNat

end

end A287217.P3619446725451322994

/-! ## A287217.P5700059748042307456

`A253969(lt[A000700(n), A007305(n)])`
-/

namespace A287217.P5700059748042307456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000700 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007305 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253969 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A287217.P5700059748042307456

/-! ## A287217.P9360251157390091706

`A223036(A079411(3*n+4)^A280865(3*n))`
-/

namespace A287217.P9360251157390091706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223036 (SequenceMachineLib.roundAway ((A079411 (3 * n + 4) : ℚ) ^ (A280865 (3 * n) : ℤ))).toNat

end

end A287217.P9360251157390091706

/-!
# A287218: a(n) = smallest k such that (6*k-3)*2^prime(n) - 1 is prime.

The programs for A287218, there is no canonical definition to state claims against.
-/

/-! ## A287218.P12315832769868211371

`A285808(A000040(n+1))`
-/

namespace A287218.P12315832769868211371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285808 (A000040 (n + 1)).toNat

end

end A287218.P12315832769868211371

/-! ## A287218.P12309595821291340550

`A285808(A006005(n+1))`
-/

namespace A287218.P12309595821291340550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285808 (A006005 (n + 1)).toNat

end

end A287218.P12309595821291340550

/-! ## A287218.P7016653059688908462

`A285808(A008578(n+2))`
-/

namespace A287218.P7016653059688908462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285808 (A008578 (n + 2)).toNat

end

end A287218.P7016653059688908462

/-! ## A287218.P2548567810477461256

`A285808(A075643(n+2))`
-/

namespace A287218.P2548567810477461256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285808 (A075643 (n + 2)).toNat

end

end A287218.P2548567810477461256

/-! ## A287218.P1179818686982211288

`A285808(A171525(n+2))`
-/

namespace A287218.P1179818686982211288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285808 (A171525 (n + 2)).toNat

end

end A287218.P1179818686982211288

/-! ## A287218.P16187890202870847652

`A285808(A175787(n+2))`
-/

namespace A287218.P16187890202870847652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285808 (A175787 (n + 2)).toNat

end

end A287218.P16187890202870847652

/-! ## A287218.P13844677651587317812

`A285808(A182986(n+2))`
-/

namespace A287218.P13844677651587317812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285808 (A182986 (n + 2)).toNat

end

end A287218.P13844677651587317812

/-! ## A287218.P14437355023077200474

`A285808(record[A006530(n+2)])`
-/

namespace A287218.P14437355023077200474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285808 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A287218.P14437355023077200474

/-! ## A287218.P4376326501180783698

`A285808(record[A020639(n+2)])`
-/

namespace A287218.P4376326501180783698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285808 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A287218.P4376326501180783698

/-! ## A287218.P14042582429205344261

`A285808(p?[A207790(n+1)])`
-/

namespace A287218.P14042582429205344261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207790 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285808 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A287218.P14042582429205344261

/-! ## A287218.P11343578284575548990

`A285808(A207790(2*(n+1)))`
-/

namespace A287218.P11343578284575548990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285808 (A207790 (2 * (n + 1))).toNat

end

end A287218.P11343578284575548990

/-! ## A287218.P4539584017725640140

`A285808(eq[2, A000005(n+1)]+1)`
-/

namespace A287218.P4539584017725640140
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285808 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A287218.P4539584017725640140

/-! ## A287218.P441240696516195866

`A285808(record[A014963(n+2)])`
-/

namespace A287218.P441240696516195866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285808 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A287218.P441240696516195866

/-!
# A287220: Number of single-crossing partitions on n nodes.

The programs for A287220, there is no canonical definition to state claims against.
-/

/-! ## A287220.P242480980486958727

`A001462(A260146(n))-A055980(n+1)`
-/

namespace A287220.P242480980486958727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 (A260146 n).toNat - A055980 (n + 1)

end

end A287220.P242480980486958727

/-! ## A287220.P18026284582197543051

`A001462(A260146(n))-A218379(n+2)`
-/

namespace A287220.P18026284582197543051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 (A260146 n).toNat - A218379 (n + 2)

end

end A287220.P18026284582197543051

/-! ## A287220.P13318150009743364417

`A001462(A260146(n))-A023193(A001462(n+1))`
-/

namespace A287220.P13318150009743364417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 (A260146 n).toNat - A023193 (A001462 (n + 1)).toNat

end

end A287220.P13318150009743364417

/-!
# A287221: Number of twice-crossing partitions on n nodes.

The programs for A287221, there is no canonical definition to state claims against.
-/

/-! ## A287221.P4695826783968110515

`A062112(n)*A162200(A319559(n))`
-/

namespace A287221.P4695826783968110515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062112 n * A162200 (A319559 n).toNat

end

end A287221.P4695826783968110515

/-! ## A287221.P15964893698732714877

`A044217(A346559(n+1))%A276725(n)`
-/

namespace A287221.P15964893698732714877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A044217 (A346559 (n + 1)).toNat) (A276725 n)

end

end A287221.P15964893698732714877

/-! ## A287221.P3095275647470785958

`∑{p}[A367863(∑[∑{e}[n, #]]), #]`
-/

namespace A287221.P3095275647470785958
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n), Nat.factorization (f3 n) p

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367863 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A287221.P3095275647470785958

/-!
# A287222: Number of 3-time self-crossing partitions on n nodes.

The programs for A287222, there is no canonical definition to state claims against.
-/

/-! ## A287222.P412405737306627543

`floor(A202293(n)/45)`
-/

namespace A287222.P412405737306627543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A202293 n : ℚ) / 45⌋

end

end A287222.P412405737306627543

/-! ## A287222.P7803271990942016406

`floor(A202294(n)/45)`
-/

namespace A287222.P7803271990942016406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A202294 n : ℚ) / 45⌋

end

end A287222.P7803271990942016406

/-! ## A287222.P9893467510051905470

`∏{e}[n+1, #+1]*A217930((1-n)²+n)`
-/

namespace A287222.P9893467510051905470
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℤ) * A217930 ((1 - (n : ℤ)) ^ 2 + (n : ℤ)).toNat

end

end A287222.P9893467510051905470

/-!
# A287223: Numbers of tree alignments.

The programs for A287223, there is no canonical definition to state claims against.
-/

/-! ## A287223.P7372894037987413481

`A002264(A149623(n)+A026741(n))`
-/

namespace A287223.P7372894037987413481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A149623 n + A026741 n).toNat

end

end A287223.P7372894037987413481

/-! ## A287223.P18053050485191007806

`A002264(A227140(n)+A149623(n))`
-/

namespace A287223.P18053050485191007806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A227140 n + A149623 n).toNat

end

end A287223.P18053050485191007806

/-! ## A287223.P5985417019127014001

`A002264(A325401(n)+A149623(n))`
-/

namespace A287223.P5985417019127014001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A325401 n + A149623 n).toNat

end

end A287223.P5985417019127014001

/-! ## A287223.P13733274560108163873

`A365246(n)-A257585(A365229(n))`
-/

namespace A287223.P13733274560108163873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365246 n - A257585 (A365229 n).toNat

end

end A287223.P13733274560108163873

/-!
# A287227: Number of independent vertex sets and vertex covers in the n X n queen graph.

The programs for A287227, there is no canonical definition to state claims against.
-/

/-! ## A287227.P9365065461047758504

`A225395(∑[A352648(n)])`
-/

namespace A287227.P9365065461047758504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352648 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225395 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A287227.P9365065461047758504

/-!
# A287228: Number of matchings in the n-triangular honeycomb obtuse knight graph.

The programs for A287228, there is no canonical definition to state claims against.
-/

/-! ## A287228.P1073802307675218507

`∏[A245328(∏[ceil(10^(n/3))])]`
-/

namespace A287228.P1073802307675218507
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(10 : ℝ) ^ ((n : ℚ) / 3 : ℝ)⌉

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245328 (∏ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A287228.P1073802307675218507

/-!
# A287229: Number of independent vertex sets and vertex covers in the n-triangular honeycomb obtuse knight graph.

The programs for A287229, there is no canonical definition to state claims against.
-/

/-! ## A287229.P7149604139840360719

`A228354(A294555(n))+A113742(n+1)`
-/

namespace A287229.P7149604139840360719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228354 (A294555 n).toNat + A113742 (n + 1)

end

end A287229.P7149604139840360719

/-!
# A287230: Number of matchings in the n-triangular honeycomb acute knight graph.

The programs for A287230, there is no canonical definition to state claims against.
-/

/-! ## A287230.P11887483549693531420

`(A000196(a(n-1))+n-1)^3` with `a(0)=1`
-/

namespace A287230.P11887483549693531420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (A000196 (a (n - 1)).toNat + ((n : ℤ) - 1)) ^ 3

end

end A287230.P11887483549693531420

/-! ## A287230.P12291896729267955618

`A002024(A004102(n))^3`
-/

namespace A287230.P12291896729267955618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A004102 n).toNat ^ 3

end

end A287230.P12291896729267955618

/-!
# A287232: Number of independent vertex sets and vertex covers in the n-tetrahedral graph.

The programs for A287232, there is no canonical definition to state claims against.
-/

/-! ## A287232.P9553554854098324816

`A323293(n+6)`
-/

namespace A287232.P9553554854098324816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323293 (n + 6)

end

end A287232.P9553554854098324816

/-!
# A287234: 0-limiting word of the morphism 0->01, 1->20, 2->1, with initial term 1.

The programs for A287234, there is no canonical definition to state claims against.
-/

/-! ## A287234.P2429641136859393823

`A287002(A134496(n+1)+28)`
-/

namespace A287234.P2429641136859393823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287002 (A134496 (n + 1) + 28).toNat

end

end A287234.P2429641136859393823

/-! ## A287234.P8916313998011533832

`A341670(A094275(n+1))%A103682(n+5)`
-/

namespace A287234.P8916313998011533832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A341670 (A094275 (n + 1)).toNat) (A103682 (n + 5))

end

end A287234.P8916313998011533832

/-! ## A287234.P3427086717353579845

`A007401(n+1)%A083953(∑[A248470(n+3)])`
-/

namespace A287234.P3427086717353579845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248470 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007401 (n + 1)) (A083953 (∑ j ∈ Finset.range (n + 1), f1 j).toNat)

end

end A287234.P3427086717353579845

/-! ## A287234.P13134330855226303232

`A148452(A233543(n))%A082743(A238123(n))²`
-/

namespace A287234.P13134330855226303232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A148452 (A233543 n).toNat) (A082743 (A238123 n).toNat ^ 2)

end

end A287234.P13134330855226303232

/-!
# A287235: Positions of 0 in A287234.

The programs for A287235, there is no canonical definition to state claims against.
-/

/-! ## A287235.P1860056286740037335

`eq[0, A287234(n+1)]+1`
-/

namespace A287235.P1860056286740037335
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287234 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A287235.P1860056286740037335

/-! ## A287235.P16905946205136734684

`A020725(eq[0, A287234(n+1)])`
-/

namespace A287235.P16905946205136734684
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287234 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A287235.P16905946205136734684

/-! ## A287235.P17649858881114621617

`eq[1, A287234(A028310(n))+1]`
-/

namespace A287235.P17649858881114621617
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287234 (A028310 n).toNat + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A287235.P17649858881114621617

/-! ## A287235.P54928904532792898

`eq[0, A287234(1-(n-A004273(n)))]`
-/

namespace A287235.P54928904532792898
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287234 (1 - ((n : ℤ) - A004273 n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A287235.P54928904532792898

/-! ## A287235.P17907227598833180643

`eq[0, A287234(A065033(2*n))]`
-/

namespace A287235.P17907227598833180643
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287234 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A287235.P17907227598833180643

/-! ## A287235.P8186091903625582383

`eq[0, A287234(A123108(2*n))]`
-/

namespace A287235.P8186091903625582383
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287234 (A123108 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A287235.P8186091903625582383

/-!
# A287236: Positions of 1 in A287234.

The programs for A287236, there is no canonical definition to state claims against.
-/

/-! ## A287236.P8699762983499640966

`eq[1, A287234(n+1)]+1`
-/

namespace A287236.P8699762983499640966
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287234 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A287236.P8699762983499640966

/-! ## A287236.P12085823500922760967

`A325328(2*(n+1))+A302050(A181354(n+1))`
-/

namespace A287236.P12085823500922760967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325328 (2 * (n + 1)) + A302050 (A181354 (n + 1)).toNat

end

end A287236.P12085823500922760967

/-! ## A287236.P2760811919938071593

`A353862(A040044(n+1))+n`
-/

namespace A287236.P2760811919938071593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353862 (A040044 (n + 1)).toNat + (n : ℤ)

end

end A287236.P2760811919938071593

/-! ## A287236.P17069769700790597126

`∑[A336664(A007980(n)²)]`
-/

namespace A287236.P17069769700790597126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336664 (A007980 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A287236.P17069769700790597126

/-!
# A287237: Positions of 2 in A287234.

The programs for A287237, there is no canonical definition to state claims against.
-/

/-! ## A287237.P12163891857172607472

`lt[1, A287234(n+1)]+1`
-/

namespace A287237.P12163891857172607472
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287234 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A287237.P12163891857172607472

/-! ## A287237.P14553113926319481303

`eq[2, A287234(n+2)]+2`
-/

namespace A287237.P14553113926319481303
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287234 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A287237.P14553113926319481303

/-! ## A287237.P2754845504493741887

`eq[2, A287234(A028310(n))]`
-/

namespace A287237.P2754845504493741887
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287234 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A287237.P2754845504493741887

/-! ## A287237.P8170675257071091527

`A020725(eq[2, A287234(n+1)])`
-/

namespace A287237.P8170675257071091527
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287234 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A287237.P8170675257071091527

/-! ## A287237.P16456176682461854306

`A153152(eq[2, A287234(n+1)])`
-/

namespace A287237.P16456176682461854306
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287234 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A287237.P16456176682461854306

/-! ## A287237.P11482852049121666042

`eq[2, A287234(A065033(2*n))]`
-/

namespace A287237.P11482852049121666042
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287234 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A287237.P11482852049121666042

/-! ## A287237.P13638914124907713682

`eq[2, A287234(A123108(2*n))]`
-/

namespace A287237.P13638914124907713682
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287234 (A123108 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A287237.P13638914124907713682

/-! ## A287237.P5219289574773226561

`eq[2, A287234(A233583(n+1))]`
-/

namespace A287237.P5219289574773226561
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287234 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A287237.P5219289574773226561

/-!
# A287240: 1-limiting word of the morphism 0->01, 1->20, 2->1, with initial term 1.

The programs for A287240, there is no canonical definition to state claims against.
-/

/-! ## A287240.P9158436890539849511

`A191250(A062036(3*(n+1))+4)`
-/

namespace A287240.P9158436890539849511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191250 (A062036 (3 * (n + 1)) + 4).toNat

end

end A287240.P9158436890539849511

/-! ## A287240.P17128720749197526320

`A204427(A023431(n)+A000330(n))`
-/

namespace A287240.P17128720749197526320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204427 (A023431 n + A000330 n).toNat

end

end A287240.P17128720749197526320

/-! ## A287240.P1325121799727466097

`A071858(A371171(2*n+3)+A027748(n+4))`
-/

namespace A287240.P1325121799727466097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071858 (A371171 (2 * n + 3) + A027748 (n + 4)).toNat

end

end A287240.P1325121799727466097

/-! ## A287240.P13542378500168515532

`A244075(A266930(n+2))`
-/

namespace A287240.P13542378500168515532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244075 (A266930 (n + 2)).toNat

end

end A287240.P13542378500168515532

/-!
# A287241: Positions of 0 in A287240.

The programs for A287241, there is no canonical definition to state claims against.
-/

/-! ## A287241.P14048408992404776480

`eq[0, A287240(A028310(n))]`
-/

namespace A287241.P14048408992404776480
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287240 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A287241.P14048408992404776480

/-! ## A287241.P7279733938060827210

`eq[A000038(n), A287240(A000038(n)+n)]`
-/

namespace A287241.P7279733938060827210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287240 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A287241.P7279733938060827210

/-! ## A287241.P4128367896623118626

`eq[A000007(n), A287240(A000007(n)+n)]`
-/

namespace A287241.P4128367896623118626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287240 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A287241.P4128367896623118626

/-! ## A287241.P14142363303562246496

`eq[A130706(n), A287240(A130706(n)+n)]`
-/

namespace A287241.P14142363303562246496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130706 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287240 (A130706 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A287241.P14142363303562246496

/-! ## A287241.P2627511401667716745

`eq[A169585(n), A287240(A169585(n)+n)]`
-/

namespace A287241.P2627511401667716745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169585 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287240 (A169585 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A287241.P2627511401667716745

/-! ## A287241.P6696374052392629880

`eq[0, A287240(A065033(2*n))]`
-/

namespace A287241.P6696374052392629880
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287240 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A287241.P6696374052392629880

/-! ## A287241.P2889964651163591423

`eq[0, A287240(A123108(2*n))]`
-/

namespace A287241.P2889964651163591423
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287240 (A123108 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A287241.P2889964651163591423

/-! ## A287241.P4643067536321296705

`eq[A287240(A233583(n+1))+n, A233583(n+1)]`
-/

namespace A287241.P4643067536321296705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287240 (A233583 (n + 1)).toNat + (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A287241.P4643067536321296705

/-!
# A287242: Positions of 1 in A287240.

The programs for A287242, there is no canonical definition to state claims against.
-/

/-! ## A287242.P10408256554111126513

`eq[1, A287240(C(2, n+1)+n)]`
-/

namespace A287242.P10408256554111126513
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287240 (Nat.choose 2 (n + 1) + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A287242.P10408256554111126513

/-! ## A287242.P4265960242049386721

`eq[1, A287240(A028310(n))]`
-/

namespace A287242.P4265960242049386721
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287240 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A287242.P4265960242049386721

/-! ## A287242.P729099111857010749

`eq[1, A287240(A000007(n)+n)]`
-/

namespace A287242.P729099111857010749
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287240 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A287242.P729099111857010749

/-! ## A287242.P729669741015588096

`eq[1, A287240(A000038(n)+n)]`
-/

namespace A287242.P729669741015588096
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287240 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A287242.P729669741015588096

/-! ## A287242.P17100863803037386603

`eq[1, A287240(A130706(n)+n)]`
-/

namespace A287242.P17100863803037386603
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287240 (A130706 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A287242.P17100863803037386603

/-! ## A287242.P3867325272814803682

`eq[1, A287240(abs(n-A000038(n)))]`
-/

namespace A287242.P3867325272814803682
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287240 |(n : ℤ) - A000038 n|.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A287242.P3867325272814803682

/-! ## A287242.P5063821408954946052

`eq[1, A287240(A065033(2*n))]`
-/

namespace A287242.P5063821408954946052
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287240 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A287242.P5063821408954946052

/-! ## A287242.P16468496984191587566

`eq[1, A287240(A123108(2*n))]`
-/

namespace A287242.P16468496984191587566
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287240 (A123108 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A287242.P16468496984191587566

/-! ## A287242.P8944532006153956805

`eq[1, A287240(A101279(2*n+1))]`
-/

namespace A287242.P8944532006153956805
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287240 (A101279 (2 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A287242.P8944532006153956805

/-! ## A287242.P11451621585530968928

`eq[1, A287240(A233583(n+1))]`
-/

namespace A287242.P11451621585530968928
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287240 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A287242.P11451621585530968928

/-!
# A287243: Positions of 2 in A287240.

The programs for A287243, there is no canonical definition to state claims against.
-/

/-! ## A287243.P15071775784871823700

`eq[2, A287240(A000038(n)+n)]`
-/

namespace A287243.P15071775784871823700
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287240 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A287243.P15071775784871823700

/-! ## A287243.P2694947225647762167

`eq[2, A287240(abs(n-A000038(n)))]`
-/

namespace A287243.P2694947225647762167
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287240 |(n : ℤ) - A000038 n|.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A287243.P2694947225647762167

/-! ## A287243.P18225274731655254057

`eq[1, A287240(A065033(2*n))-(1-A000007(n))]`
-/

namespace A287243.P18225274731655254057
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287240 (A065033 (2 * n)).toNat - (1 - A000007 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A287243.P18225274731655254057

/-!
# A287244: Indices n for which concatenation of the numbers from n to n + 9 is prime.

The programs for A287244, there is no canonical definition to state claims against.
-/

/-! ## A287244.P13484401922248575154

`A336208(A336219(n+1))-2*n`
-/

namespace A287244.P13484401922248575154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336208 (A336219 (n + 1)).toNat - (2 * n : ℤ)

end

end A287244.P13484401922248575154

/-!
# A287252: Number of set partitions of [n] such that all absolute differences between least elements of consecutive blocks are <= two.

The programs for A287252, there is no canonical definition to state claims against.
-/

/-! ## A287252.P14309805221447976973

`A287216(∑[n+3])`
-/

namespace A287252.P14309805221447976973
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287216 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A287252.P14309805221447976973

/-! ## A287252.P9358446416581778633

`A287216(A055998(n+1))^and(3, 1-10^n)`
-/

namespace A287252.P9358446416581778633
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A287216 (A055998 (n + 1)).toNat : ℚ) ^ (Int.land 3 (1 - (10 ^ n : ℤ)) : ℤ)

end

end A287252.P9358446416581778633

/-! ## A287252.P17818776664186500148

`A287216(A055998(n+1))+A000007(n+1)`
-/

namespace A287252.P17818776664186500148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287216 (A055998 (n + 1)).toNat + A000007 (n + 1)

end

end A287252.P17818776664186500148

/-! ## A287252.P6618748519887221540

`A287216(A055998(n+1))+A000038(n+1)`
-/

namespace A287252.P6618748519887221540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287216 (A055998 (n + 1)).toNat + A000038 (n + 1)

end

end A287252.P6618748519887221540

/-! ## A287252.P1427588673740877757

`A060576(2*n)*A287216(A055998(n+1))`
-/

namespace A287252.P1427588673740877757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060576 (2 * n) * A287216 (A055998 (n + 1)).toNat

end

end A287252.P1427588673740877757

/-! ## A287252.P149417596451122381

`A000035(2*n+3)*A287216(A055998(n+1))`
-/

namespace A287252.P149417596451122381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (2 * n + 3) * A287216 (A055998 (n + 1)).toNat

end

end A287252.P149417596451122381

/-! ## A287252.P1665805543329001714

`A287216(A055998(n+1))*A324198(A067690(n+1))`
-/

namespace A287252.P1665805543329001714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287216 (A055998 (n + 1)).toNat * A324198 (A067690 (n + 1)).toNat

end

end A287252.P1665805543329001714

/-! ## A287252.P4239151955716173543

`A287216(A055998(n+1))^A014963(A000203(3*n+2))`
-/

namespace A287252.P4239151955716173543
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A287216 (A055998 (n + 1)).toNat : ℚ) ^ (A014963 (A000203 (3 * n + 2)).toNat : ℤ)

end

end A287252.P4239151955716173543

/-! ## A287252.P9510274272849062968

`A000034(2*(n²+1))*A287216(A055998(n+1))`
-/

namespace A287252.P9510274272849062968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (2 * (n ^ 2 + 1)) * A287216 (A055998 (n + 1)).toNat

end

end A287252.P9510274272849062968

/-! ## A287252.P3374293098772132019

`A294080(A006094(n+1))+A287216(A055998(n+1))`
-/

namespace A287252.P3374293098772132019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294080 (A006094 (n + 1)).toNat + A287216 (A055998 (n + 1)).toNat

end

end A287252.P3374293098772132019

/-!
# A287253: Number of set partitions of [n] such that all absolute differences between least elements of consecutive blocks are <= three.

The programs for A287253, there is no canonical definition to state claims against.
-/

/-! ## A287253.P8361455935404852805

`A287216(∑[n+4]+2)`
-/

namespace A287253.P8361455935404852805
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287216 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A287253.P8361455935404852805

/-! ## A287253.P7881179083631316939

`lcm(A033999(n), A287216(A046691(n+2)))`
-/

namespace A287253.P7881179083631316939
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A287216 (A046691 (n + 2)).toNat)

end

end A287253.P7881179083631316939

/-! ## A287253.P2003371317153290721

`or(A000007(n), A287216(A046691(n+2)))`
-/

namespace A287253.P2003371317153290721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A287216 (A046691 (n + 2)).toNat)

end

end A287253.P2003371317153290721

/-! ## A287253.P6052792884668979100

`A287216(A046691(n+2))+A000007(3*n+2)`
-/

namespace A287253.P6052792884668979100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287216 (A046691 (n + 2)).toNat + A000007 (3 * n + 2)

end

end A287253.P6052792884668979100

/-! ## A287253.P405198174551773877

`A287216(A046691(n+2))+A057427(3*(n+1))-1`
-/

namespace A287253.P405198174551773877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287216 (A046691 (n + 2)).toNat + A057427 (3 * (n + 1)) - 1

end

end A287253.P405198174551773877

/-! ## A287253.P12771945863271418410

`A287216(A046691(n+2))%A100388(n+1)`
-/

namespace A287253.P12771945863271418410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A287216 (A046691 (n + 2)).toNat) (A100388 (n + 1))

end

end A287253.P12771945863271418410

/-!
# A287254: Number of set partitions of [n] such that all absolute differences between least elements of consecutive blocks are <= four.

The programs for A287254, there is no canonical definition to state claims against.
-/

/-! ## A287254.P7068708711209921586

`A287216(A052905(n+2))`
-/

namespace A287254.P7068708711209921586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287216 (A052905 (n + 2)).toNat

end

end A287254.P7068708711209921586

/-! ## A287254.P15895985527374476219

`A287216(eq[4, A025581(n)])`
-/

namespace A287254.P15895985527374476219
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287216 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A287254.P15895985527374476219

/-! ## A287254.P4200948196478089868

`A287216(A055998(n+3)-2)`
-/

namespace A287254.P4200948196478089868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287216 (A055998 (n + 3) - 2).toNat

end

end A287254.P4200948196478089868

/-! ## A287254.P9705670878461863273

`A287216(A000096(n+4)-4)`
-/

namespace A287254.P9705670878461863273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287216 (A000096 (n + 4) - 4).toNat

end

end A287254.P9705670878461863273

/-! ## A287254.P14737331610126226460

`A287216(A000217(n+5)-5)`
-/

namespace A287254.P14737331610126226460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287216 (A000217 (n + 5) - 5).toNat

end

end A287254.P14737331610126226460

/-! ## A287254.P6978573584984807693

`A287216(Δ[A023545(n+1)]-1)`
-/

namespace A287254.P6978573584984807693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287216 (f1 (n + 1) - f1 n - 1).toNat

end

end A287254.P6978573584984807693

/-! ## A287254.P1404435781055339489

`A287216(4*n+10+A000096(n))`
-/

namespace A287254.P1404435781055339489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287216 ((4 * n + 10 : ℤ) + A000096 n).toNat

end

end A287254.P1404435781055339489

/-! ## A287254.P16656450570204886078

`A287216(A046691(n+1)+2*(n+4))`
-/

namespace A287254.P16656450570204886078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287216 (A046691 (n + 1) + (2 * (n + 4) : ℤ)).toNat

end

end A287254.P16656450570204886078

/-!
# A287255: Number of set partitions of [n] such that all absolute differences between least elements of consecutive blocks are <= five.

The programs for A287255, there is no canonical definition to state claims against.
-/

/-! ## A287255.P14171464958052156965

`A287216(A055999(n+3))`
-/

namespace A287255.P14171464958052156965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287216 (A055999 (n + 3)).toNat

end

end A287255.P14171464958052156965

/-! ## A287255.P2162747702788314764

`A287216(eq[5, A025581(n)])`
-/

namespace A287255.P2162747702788314764
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287216 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A287255.P2162747702788314764

/-! ## A287255.P16771613633849801169

`A287216(Δ[A026054(n+3)])`
-/

namespace A287255.P16771613633849801169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026054 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287216 (f1 (n + 1) - f1 n).toNat

end

end A287255.P16771613633849801169

/-! ## A287255.P6404451556486327107

`A287216(A052905(n+3)-1)`
-/

namespace A287255.P6404451556486327107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287216 (A052905 (n + 3) - 1).toNat

end

end A287255.P6404451556486327107

/-! ## A287255.P9595317755720086680

`A287216(A000217(n+6)-6)`
-/

namespace A287255.P9595317755720086680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287216 (A000217 (n + 6) - 6).toNat

end

end A287255.P9595317755720086680

/-! ## A287255.P4842342797013292280

`A287216(A000124(n+6)-7)`
-/

namespace A287255.P4842342797013292280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287216 (A000124 (n + 6) - 7).toNat

end

end A287255.P4842342797013292280

/-! ## A287255.P13103566137762283659

`A287216(eq[6, A004736(n+1)])`
-/

namespace A287255.P13103566137762283659
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287216 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A287255.P13103566137762283659

/-! ## A287255.P9754454620137491747

`A287216(Δ[A023545(n+2)]-2)`
-/

namespace A287255.P9754454620137491747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287216 (f1 (n + 1) - f1 n - 2).toNat

end

end A287255.P9754454620137491747

/-! ## A287255.P4993987896638894453

`A287216(n+1+A000096(n+4))`
-/

namespace A287255.P4993987896638894453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287216 ((n + 1 : ℤ) + A000096 (n + 4)).toNat

end

end A287255.P4993987896638894453

/-!
# A287256: Number of set partitions of [n] such that all absolute differences between least elements of consecutive blocks are <= six.

The programs for A287256, there is no canonical definition to state claims against.
-/

/-! ## A287256.P919371083449515722

`A287216(eq[6, A025581(n)])`
-/

namespace A287256.P919371083449515722
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287216 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A287256.P919371083449515722

/-! ## A287256.P10471785841406431590

`A287216(A034856(n+6)-5)`
-/

namespace A287256.P10471785841406431590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287216 (A034856 (n + 6) - 5).toNat

end

end A287256.P10471785841406431590

/-! ## A287256.P17398128643754520821

`A287216(A000217(n+7)-7)`
-/

namespace A287256.P17398128643754520821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287216 (A000217 (n + 7) - 7).toNat

end

end A287256.P17398128643754520821

/-! ## A287256.P9546720806979490706

`A287216(A000124(n+7)-8)`
-/

namespace A287256.P9546720806979490706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287216 (A000124 (n + 7) - 8).toNat

end

end A287256.P9546720806979490706

/-! ## A287256.P655079291096141339

`A287216(eq[7, A004736(n+1)])`
-/

namespace A287256.P655079291096141339
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287216 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A287256.P655079291096141339

/-! ## A287256.P16972867906992971700

`A287216(Δ[A026054(n+4)]-1)`
-/

namespace A287256.P16972867906992971700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026054 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287216 (f1 (n + 1) - f1 n - 1).toNat

end

end A287256.P16972867906992971700

/-! ## A287256.P13992550500622127302

`A287216(A016945(n+3)+A000096(n))`
-/

namespace A287256.P13992550500622127302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287216 (A016945 (n + 3) + A000096 n).toNat

end

end A287256.P13992550500622127302

/-!
# A287257: Number of set partitions of [n] such that all absolute differences between least elements of consecutive blocks are <= seven.

The programs for A287257, there is no canonical definition to state claims against.
-/

/-! ## A287257.P13924744399917720683

`A287216(A155212(n+4))`
-/

namespace A287257.P13924744399917720683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287216 (A155212 (n + 4)).toNat

end

end A287257.P13924744399917720683

/-! ## A287257.P15266646620598664924

`A287216(eq[7, A025581(n)])`
-/

namespace A287257.P15266646620598664924
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287216 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A287257.P15266646620598664924

/-! ## A287257.P11763515697054410762

`A287216(A000217(n+8)-8)`
-/

namespace A287257.P11763515697054410762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287216 (A000217 (n + 8) - 8).toNat

end

end A287257.P11763515697054410762

/-! ## A287257.P8257023627917724644

`A287216(A161680(n+9)-8)`
-/

namespace A287257.P8257023627917724644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287216 (A161680 (n + 9) - 8).toNat

end

end A287257.P8257023627917724644

/-! ## A287257.P11768825634986749889

`A287216(eq[8, A004736(n+1)])`
-/

namespace A287257.P11768825634986749889
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287216 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A287257.P11768825634986749889

/-! ## A287257.P1153913553492266542

`A287216(A005843(n+3)+A000124(n+6))`
-/

namespace A287257.P1153913553492266542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287216 (A005843 (n + 3) + A000124 (n + 6)).toNat

end

end A287257.P1153913553492266542

/-!
# A287258: Number of set partitions of [n] such that all absolute differences between least elements of consecutive blocks are <= eight.

The programs for A287258, there is no canonical definition to state claims against.
-/

/-! ## A287258.P11598603805270779526

`A287216(A052905(n+6)-4)`
-/

namespace A287258.P11598603805270779526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287216 (A052905 (n + 6) - 4).toNat

end

end A287258.P11598603805270779526

/-! ## A287258.P16794077667136945875

`A287216(A000217(n+9)-9)`
-/

namespace A287258.P16794077667136945875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287216 (A000217 (n + 9) - 9).toNat

end

end A287258.P16794077667136945875

/-! ## A287258.P1145227411243754597

`A287216(A000096(n+7)+n+1)`
-/

namespace A287258.P1145227411243754597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287216 (A000096 (n + 7) + (n + 1 : ℤ)).toNat

end

end A287258.P1145227411243754597

/-! ## A287258.P11728585678634750497

`A287216(2*(n+1)+A000124(n+7)+5)`
-/

namespace A287258.P11728585678634750497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287216 ((2 * (n + 1) : ℤ) + (A000124 (n + 7) + 5)).toNat

end

end A287258.P11728585678634750497

/-! ## A287258.P4017349043443158704

`A287216(A046691(A020719(n))-5)`
-/

namespace A287258.P4017349043443158704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287216 (A046691 (A020719 n).toNat - 5).toNat

end

end A287258.P4017349043443158704

/-!
# A287259: Number of set partitions of [n] such that all absolute differences between least elements of consecutive blocks are <= nine.

The programs for A287259, there is no canonical definition to state claims against.
-/

/-! ## A287259.P7138909981301651707

`A287216(eq[9, A025581(n)])`
-/

namespace A287259.P7138909981301651707
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287216 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A287259.P7138909981301651707

/-! ## A287259.P1103030692877409065

`A287216(A055998(n+8)-7)`
-/

namespace A287259.P1103030692877409065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287216 (A055998 (n + 8) - 7).toNat

end

end A287259.P1103030692877409065

/-! ## A287259.P5321693441148694787

`A287216(A000096(n+9)-9)`
-/

namespace A287259.P5321693441148694787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287216 (A000096 (n + 9) - 9).toNat

end

end A287259.P5321693441148694787

/-! ## A287259.P12381899737842855034

`A287216(A000217(n+10)-10)`
-/

namespace A287259.P12381899737842855034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287216 (A000217 (n + 10) - 10).toNat

end

end A287259.P12381899737842855034

/-! ## A287259.P3123686367455312485

`A287216(eq[10, A004736(n+1)])`
-/

namespace A287259.P3123686367455312485
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287216 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A287259.P3123686367455312485

/-!
# A287260: Number of set partitions of [n] such that all absolute differences between least elements of consecutive blocks are <= ten.

The programs for A287260, there is no canonical definition to state claims against.
-/

/-! ## A287260.P12879961369984556179

`A287216(eq[10, A025581(n)])`
-/

namespace A287260.P12879961369984556179
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287216 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A287260.P12879961369984556179

/-! ## A287260.P6730174222599215598

`A287216(A000217(n+11)-11)`
-/

namespace A287260.P6730174222599215598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287216 (A000217 (n + 11) - 11).toNat

end

end A287260.P6730174222599215598

/-! ## A287260.P16114559919790419099

`A287216(A167614(n+10)-14)`
-/

namespace A287260.P16114559919790419099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287216 (A167614 (n + 10) - 14).toNat

end

end A287260.P16114559919790419099

/-! ## A287260.P14110018969524040203

`A287216(A000096(n+9)+n+1)`
-/

namespace A287260.P14110018969524040203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287216 (A000096 (n + 9) + (n + 1 : ℤ)).toNat

end

end A287260.P14110018969524040203

/-! ## A287260.P4244937262612921239

`A287216(A028310(n)+A000217(n+10))`
-/

namespace A287260.P4244937262612921239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287216 (A028310 n + A000217 (n + 10)).toNat

end

end A287260.P4244937262612921239

/-!
# A287263: 0-limiting word of the morphism 0->11, 1->02, 2->0.

The programs for A287263, there is no canonical definition to state claims against.
-/

/-! ## A287263.P10399994152722638217

`A287345(A096582(n+1)+12)`
-/

namespace A287263.P10399994152722638217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287345 (A096582 (n + 1) + 12).toNat

end

end A287263.P10399994152722638217

/-! ## A287263.P5211171201454993841

`A176405(A010785(2*n+3))+A000035(n)`
-/

namespace A287263.P5211171201454993841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176405 (A010785 (2 * n + 3)).toNat + A000035 n

end

end A287263.P5211171201454993841

/-! ## A287263.P9359187068310586734

`A361123(A361107(2*n+1))+A361123(n+1)`
-/

namespace A287263.P9359187068310586734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361123 (A361107 (2 * n + 1)).toNat + A361123 (n + 1)

end

end A287263.P9359187068310586734

/-! ## A287263.P14020560085059213579

`A292342(A074483(n+1))`
-/

namespace A287263.P14020560085059213579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292342 (A074483 (n + 1)).toNat

end

end A287263.P14020560085059213579

/-!
# A287264: Positions of 0 in A287263.

The programs for A287264, there is no canonical definition to state claims against.
-/

/-! ## A287264.P5191828535068616255

`eq[0, A287263(A000038(n)+n)]`
-/

namespace A287264.P5191828535068616255
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287263 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A287264.P5191828535068616255

/-! ## A287264.P1064164884978183327

`eq[A000038(n), A287263(A028310(n))]`
-/

namespace A287264.P1064164884978183327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287263 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A287264.P1064164884978183327

/-! ## A287264.P13219471416010449923

`eq[A000007(n), A287263(A000007(n)+n)]`
-/

namespace A287264.P13219471416010449923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287263 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A287264.P13219471416010449923

/-! ## A287264.P13070145786041009232

`record[A001057(2*n+1-A287263(n+1))]`
-/

namespace A287264.P13070145786041009232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 ((2 * n + 1 : ℤ) - A287263 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A287264.P13070145786041009232

/-! ## A287264.P4078307712285917562

`record[A001057(xor(2*n+1, A287263(n+1)))]`
-/

namespace A287264.P4078307712285917562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (Int.xor (2 * n + 1 : ℤ) (A287263 (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A287264.P4078307712285917562

/-! ## A287264.P11933908791455771362

`record[A078898(A103517(n)-A287263(n+1))]`
-/

namespace A287264.P11933908791455771362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (A103517 n - A287263 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A287264.P11933908791455771362

/-! ## A287264.P8868526178854510348

`eq[C(2, n), A287263(A233583(n+1))]`
-/

namespace A287264.P8868526178854510348
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287263 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A287264.P8868526178854510348

/-!
# A287265: Positions of 1 in A287263.

The programs for A287265, there is no canonical definition to state claims against.
-/

/-! ## A287265.P5104249282406238090

`eq[1, A287263(n+2)]+2`
-/

namespace A287265.P5104249282406238090
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287263 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A287265.P5104249282406238090

/-! ## A287265.P12049688118964391870

`eq[1, A287263(A028310(n))]`
-/

namespace A287265.P12049688118964391870
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287263 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A287265.P12049688118964391870

/-! ## A287265.P12010843482398920546

`eq[1, A287263(A000007(n)+n)]`
-/

namespace A287265.P12010843482398920546
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287263 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A287265.P12010843482398920546

/-! ## A287265.P8598696268909427700

`eq[1, A287263(A000038(n)+n)]`
-/

namespace A287265.P8598696268909427700
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287263 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A287265.P8598696268909427700

/-! ## A287265.P5386991062172195667

`eq[1, A287263(gcd(n, A008458(n)))]`
-/

namespace A287265.P5386991062172195667
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287263 (Int.gcd (n : ℤ) (A008458 n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A287265.P5386991062172195667

/-! ## A287265.P9581471843180093250

`eq[1, A287263(A233583(n+1))]`
-/

namespace A287265.P9581471843180093250
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287263 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A287265.P9581471843180093250

/-! ## A287265.P4189863139656881279

`eq[1, A287263(A007318(A000124(n)))]`
-/

namespace A287265.P4189863139656881279
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287263 (A007318 (A000124 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A287265.P4189863139656881279

/-!
# A287266: Positions of 2 in A287263.

The programs for A287266, there is no canonical definition to state claims against.
-/

/-! ## A287266.P5756124779233582973

`record[(n+1)*A287263(2*(n+1))]`
-/

namespace A287266.P5756124779233582973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A287263 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A287266.P5756124779233582973

/-! ## A287266.P13878874120855844190

`eq[A287263(n+1), A328579(n)]+1`
-/

namespace A287266.P13878874120855844190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287263 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328579 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A287266.P13878874120855844190

/-! ## A287266.P4229921748395336598

`eq[A141310(n), A287263(n+1)]+1`
-/

namespace A287266.P4229921748395336598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141310 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287263 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A287266.P4229921748395336598

/-! ## A287266.P18103126669261830527

`lt[1, A287263(A028310(n))]`
-/

namespace A287266.P18103126669261830527
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287263 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A287266.P18103126669261830527

/-! ## A287266.P14437968673218651534

`lt[A010123(2*n)-A287263(n+1), 1]+1`
-/

namespace A287266.P14437968673218651534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010123 (2 * n) - A287263 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A287266.P14437968673218651534

/-! ## A287266.P12336986860909538938

`lt[1, A287263(A065190(n+1))]`
-/

namespace A287266.P12336986860909538938
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287263 (A065190 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A287266.P12336986860909538938

/-! ## A287266.P17144556189006291558

`eq[2, A287263(A000007(n)+n)]`
-/

namespace A287266.P17144556189006291558
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287263 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A287266.P17144556189006291558

/-! ## A287266.P4782879984539177649

`eq[2, A287263(gcd(n, A008458(n)))]`
-/

namespace A287266.P4782879984539177649
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287263 (Int.gcd (n : ℤ) (A008458 n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A287266.P4782879984539177649

/-! ## A287266.P14888526544462851685

`eq[2, A287263(A334998(n+1))]`
-/

namespace A287266.P14888526544462851685
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287263 (A334998 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A287266.P14888526544462851685

/-!
# A287267: 1-limiting word of the morphism 0->11, 1->02, 2->0.

The programs for A287267, there is no canonical definition to state claims against.
-/

/-! ## A287267.P12166130581584609072

`A287337(2*A096582(n+1)+n)`
-/

namespace A287267.P12166130581584609072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287337 (2 * A096582 (n + 1) + (n : ℤ)).toNat

end

end A287267.P12166130581584609072

/-! ## A287267.P9045584141430510372

`A287337(A096582(n+1)+4/(1/5)²)`
-/

namespace A287267.P9045584141430510372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287337 (SequenceMachineLib.roundAway ((A096582 (n + 1) : ℚ) + 4 / ((1 : ℚ) / 5) ^ 2)).toNat

end

end A287267.P9045584141430510372

/-! ## A287267.P9892801725330969266

`A287263(A096582(n+2)+A005843(n+7))`
-/

namespace A287267.P9892801725330969266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287263 (A096582 (n + 2) + A005843 (n + 7)).toNat

end

end A287267.P9892801725330969266

/-! ## A287267.P8192065418757727130

`A287263(A159781(C(n, 90)+1)+n)`
-/

namespace A287267.P8192065418757727130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287263 (A159781 (Nat.choose n 90 + 1) + (n : ℤ)).toNat

end

end A287267.P8192065418757727130

/-!
# A287268: Positions of 0 in A287267.

The programs for A287268, there is no canonical definition to state claims against.
-/

/-! ## A287268.P13007758903125368805

`A287270(2*n+1)-(A287265(2*n+1)+n)`
-/

namespace A287268.P13007758903125368805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287270 (2 * n + 1) - (A287265 (2 * n + 1) + (n : ℤ))

end

end A287268.P13007758903125368805

/-! ## A287268.P8252919100800015272

`eq[0, A287267(n+1)]+1`
-/

namespace A287268.P8252919100800015272
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287267 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A287268.P8252919100800015272

/-! ## A287268.P1220427818852315650

`lt[A287267(A028310(n)), 1]`
-/

namespace A287268.P1220427818852315650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287267 (A028310 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A287268.P1220427818852315650

/-! ## A287268.P8727816411041616776

`eq[0, A287267(A000007(n)+n)]`
-/

namespace A287268.P8727816411041616776
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287267 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A287268.P8727816411041616776

/-! ## A287268.P262990411974487860

`eq[0, A287267(A000038(n)+n)]`
-/

namespace A287268.P262990411974487860
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287267 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A287268.P262990411974487860

/-! ## A287268.P18007350243071273784

`eq[0, A287267(A065033(2*n))]`
-/

namespace A287268.P18007350243071273784
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287267 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A287268.P18007350243071273784

/-! ## A287268.P13092448376663481493

`eq[0, A287267(A233583(n+1))]`
-/

namespace A287268.P13092448376663481493
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287267 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A287268.P13092448376663481493

/-!
# A287269: Positions of 1 in A287267.

The programs for A287269, there is no canonical definition to state claims against.
-/

/-! ## A287269.P8287449569766535916

`eq[1, A287267(n+1)]+1`
-/

namespace A287269.P8287449569766535916
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287267 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A287269.P8287449569766535916

/-! ## A287269.P14454522060213288175

`record[A001057(A287267(n+1)+2*n)]`
-/

namespace A287269.P14454522060213288175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (A287267 (n + 1) + (2 * n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A287269.P14454522060213288175

/-! ## A287269.P1625459320667417201

`record[A078898(A287267(n+1)+2*n+1)]`
-/

namespace A287269.P1625459320667417201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (A287267 (n + 1) + (2 * n + 1 : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A287269.P1625459320667417201

/-! ## A287269.P13427977248027427866

`record[A057979(A287267(n+1)+A103517(n))]`
-/

namespace A287269.P13427977248027427866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 (A287267 (n + 1) + A103517 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A287269.P13427977248027427866

/-! ## A287269.P73696458520212921

`record[A001057(A005408(n)*A287267(n+1))]`
-/

namespace A287269.P73696458520212921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (A005408 n * A287267 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A287269.P73696458520212921

/-!
# A287270: Positions of 2 in A287267.

The programs for A287270, there is no canonical definition to state claims against.
-/

/-! ## A287270.P12520643728758567482

`1+eq[2, A287267(n+1)]`
-/

namespace A287270.P12520643728758567482
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287267 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A287270.P12520643728758567482

/-! ## A287270.P1498306784855913431

`lt[1, A287267(A028310(n))]`
-/

namespace A287270.P1498306784855913431
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287267 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A287270.P1498306784855913431

/-! ## A287270.P16355373259352365486

`A014681(lt[1, A287267(n+1)])`
-/

namespace A287270.P16355373259352365486
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287267 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A287270.P16355373259352365486

/-! ## A287270.P9606493139939536842

`A014681(eq[2, A287267(n+1)])`
-/

namespace A287270.P9606493139939536842
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287267 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A287270.P9606493139939536842

/-! ## A287270.P12432488739885378152

`A015906(eq[2, A287267(n+1)])`
-/

namespace A287270.P12432488739885378152
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287267 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015906 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A287270.P12432488739885378152

/-! ## A287270.P7366326208250215428

`A285326(eq[2, A287267(n+1)])`
-/

namespace A287270.P7366326208250215428
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287267 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285326 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A287270.P7366326208250215428

/-! ## A287270.P16720665006655700256

`lt[1, A287267(A000038(n)+n)]`
-/

namespace A287270.P16720665006655700256
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287267 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A287270.P16720665006655700256

/-! ## A287270.P6991232189043680110

`eq[2, A287267(A065190(n+1))]`
-/

namespace A287270.P6991232189043680110
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287267 (A065190 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A287270.P6991232189043680110

/-! ## A287270.P13683145544220178148

`lt[1, A287267(A000007(n)+n)]`
-/

namespace A287270.P13683145544220178148
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287267 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A287270.P13683145544220178148

/-! ## A287270.P5429687308003971184

`eq[2, A287267(A060000(n+1))]`
-/

namespace A287270.P5429687308003971184
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287267 (A060000 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A287270.P5429687308003971184

/-! ## A287270.P10679483120344070098

`eq[2, A287267(A065033(2*n))]`
-/

namespace A287270.P10679483120344070098
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287267 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A287270.P10679483120344070098

/-! ## A287270.P14370099078870828357

`eq[2, A287267(A233583(n+1))]`
-/

namespace A287270.P14370099078870828357
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287267 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A287270.P14370099078870828357

/-!
# A287271: a(n) is the number of zeros of the Bernoulli B(n, x) polynomial in the open interval (-1, +1).

The programs for A287271, there is no canonical definition to state claims against.
-/

/-! ## A287271.P13987763103115535535

`A284849(A094937(n)%A332366(2*(n+2)))`
-/

namespace A287271.P13987763103115535535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284849 (Int.tmod (A094937 n) (A332366 (2 * (n + 2)))).toNat

end

end A287271.P13987763103115535535

/-!
# A287272: a(n) is the number of zeros of the Laguerre L(n, x) polynomial in the open interval (-1, +1).

The programs for A287272, there is no canonical definition to state claims against.
-/

/-! ## A287272.P10242021192519446026

`floor((n/ϕ)^(5/11))`
-/

namespace A287272.P10242021192519446026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n : ℝ) / Real.goldenRatio) ^ ((5 : ℚ) / 11 : ℝ)⌋

end

end A287272.P10242021192519446026

/-! ## A287272.P13769658392158009078

`dr(comp[∑[5*n+2]]-n)`
-/

namespace A287272.P13769658392158009078
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * n + 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ))

end

end A287272.P13769658392158009078

/-! ## A287272.P537303954475832433

`comp[∑[record[lcm(5, n)]+2]]-n`
-/

namespace A287272.P537303954475832433
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 5 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n) + 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)

end

end A287272.P537303954475832433

/-! ## A287272.P17456254946021640175

`round(sqrt(n²/∑[gcd(3, n)!]))`
-/

namespace A287272.P17456254946021640175
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (Nat.gcd 3 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt ((n ^ 2 : ℚ) / ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) : ℝ))

end

end A287272.P17456254946021640175

/-! ## A287272.P14758041618383144376

`∑[char[∑[a(n-1)+5]]]` with `a(0)=2, a(1)=6`
-/

namespace A287272.P14758041618383144376
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.rec [2, 6] fun n f3 =>
  f3 (n - 1) + 5

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A287272.P14758041618383144376

/-! ## A287272.P10489715070090662431

`(comp[∑[5*n+2]]-n)%6`
-/

namespace A287272.P10489715070090662431
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * n + 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)) 6

end

end A287272.P10489715070090662431

/-! ## A287272.P2285112841878829834

`comp[∑[a(n-1)+5]]-n` with `a(0)=2`
-/

namespace A287272.P2285112841878829834
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [2] fun n f2 =>
  f2 (n - 1) + 5

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)

end

end A287272.P2285112841878829834

/-! ## A287272.P10444443290046852761

`∑{digits}[comp[∑[5*n+2]]-n, #]`
-/

namespace A287272.P10444443290046852761
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * n + 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n : ℤ) - (n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A287272.P10444443290046852761

/-! ## A287272.P11346008496799202455

`∑[char[C(n, 2)+2*(n+1)²]]`
-/

namespace A287272.P11346008496799202455
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2 + 2 * (n + 1) ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A287272.P11346008496799202455

/-! ## A287272.P13631718948523750480

`∑[char[Δ[n^3-C(n, 3)+n]]]`
-/

namespace A287272.P13631718948523750480
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 3 : ℤ) - (Nat.choose n 3 : ℤ) + (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A287272.P13631718948523750480

/-!
# A287273: Consider all ways of writing the composite Fibonacci number A090206(n+3) as product of two divisors d1*d2 = d3*d4 = ... The sequence a(n) gives the minimum sums of {d1+d2, d3+d4,...}.

The programs for A287273, there is no canonical definition to state claims against.
-/

/-! ## A287273.P13794509986640797702

`A063655(A090206(n+4))`
-/

namespace A287273.P13794509986640797702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063655 (A090206 (n + 4)).toNat

end

end A287273.P13794509986640797702

/-!
# A287274: Array read by antidiagonals: T(m,n) = number of dominating sets in the lattice (rook) graph K_m X K_n.

The programs for A287274, there is no canonical definition to state claims against.
-/

/-! ## A287274.P8541640802667959821

`A228986(n+1)-A072089(A143007(n))`
-/

namespace A287274.P8541640802667959821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228986 (n + 1) - A072089 (A143007 n).toNat

end

end A287274.P8541640802667959821

/-! ## A287274.P10454771905775374948

`A087275(A297094(n+1))`
-/

namespace A287274.P10454771905775374948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087275 (A297094 (n + 1)).toNat

end

end A287274.P10454771905775374948

/-! ## A287274.P13482537269113381521

`A213508(A184761(n+1))`
-/

namespace A287274.P13482537269113381521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213508 (A184761 (n + 1)).toNat

end

end A287274.P13482537269113381521

/-! ## A287274.P9457005581355255464

`A213508(A208269(n+1))`
-/

namespace A287274.P9457005581355255464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213508 (A208269 (n + 1)).toNat

end

end A287274.P9457005581355255464

/-! ## A287274.P8361814960145107382

`A262220(A240347(n+1))`
-/

namespace A287274.P8361814960145107382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262220 (A240347 (n + 1)).toNat

end

end A287274.P8361814960145107382

/-!
# A287275: Number of set partitions of [n] such that for each block all absolute differences between consecutive elements are <= three.

The programs for A287275, the canonical program `A287275.P18306877186696749891` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A287275 has offset 0).

The definition of A287275 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 199 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A287275.P16030665385931100131

`ogf((1-3x+x^3)/(1-4x+2x^2+2x^3-x^4))`
-/

namespace A287275.P16030665385931100131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -3, 0, 1] [1, -4, 2, 2, -1] n

end

end A287275.P16030665385931100131

namespace A287275

/-- `ogf((1-3x+x^3)/(1-4x+2x^2+2x^3-x^4))` -/
def P16030665385931100131.Spec : Prop :=
  ∀ n, P16030665385931100131.a n = A287275 n

end A287275

/-! ## A287275.P18306877186696749891

`∑[3*a(n-1)+a(n-2)-a(n-3)]` with `a(0)=1, a(1)=0, a(2)=1, a(3)=3, a(4)=10`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A287275

/-- `∑[3*a(n-1)+a(n-2)-a(n-3)]` -/
def P18306877186696749891.Spec : Prop :=
  ∀ n, P18306877186696749891.a n = A287275 n

theorem P18306877186696749891.correct : P18306877186696749891.Spec := by
  intro n
  simp only [A287275]

end A287275

/-! ## A287275.P10535329676797810152

`A033505(n-2)+a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A287275.P10535329676797810152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A033505 (n - 2) + a (n - 1)

end

end A287275.P10535329676797810152

namespace A287275

/-- `A033505(n-2)+a(n-1)` -/
def P10535329676797810152.Spec : Prop :=
  ∀ n, P10535329676797810152.a n = A287275 n

end A287275

/-! ## A287275.P17316733987034659369

`∑[A033505(n)-A061534(n)]+1`
-/

namespace A287275.P17316733987034659369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033505 n - A061534 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A287275.P17316733987034659369

namespace A287275

/-- `∑[A033505(n)-A061534(n)]+1` -/
def P17316733987034659369.Spec : Prop :=
  ∀ n, P17316733987034659369.a n = A287275 n

end A287275

/-! ## A287275.P5326384588228236106

`∑[∑[A030186(n)]-A061534(n)]+1`
-/

namespace A287275.P5326384588228236106
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030186 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A061534 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A287275.P5326384588228236106

namespace A287275

/-- `∑[∑[A030186(n)]-A061534(n)]+1` -/
def P5326384588228236106.Spec : Prop :=
  ∀ n, P5326384588228236106.a n = A287275 n

end A287275

/-! ## A287275.P6750922771585605867

`∑[A033505(n)-∑[A181301(n)]]+1`
-/

namespace A287275.P6750922771585605867
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181301 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033505 n - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A287275.P6750922771585605867

namespace A287275

/-- `∑[A033505(n)-∑[A181301(n)]]+1` -/
def P6750922771585605867.Spec : Prop :=
  ∀ n, P6750922771585605867.a n = A287275 n

end A287275

/-! ## A287275.P10416042854241044347

`1-∑[A061534(n)-A181301(n+1)/2]`
-/

namespace A287275.P10416042854241044347
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A061534 n : ℚ) - (A181301 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A287275.P10416042854241044347

namespace A287275

/-- `1-∑[A061534(n)-A181301(n+1)/2]` -/
def P10416042854241044347.Spec : Prop :=
  ∀ n, P10416042854241044347.a n = (A287275 n : ℚ)

end A287275

/-!
# A287276: Number of set partitions of [n] such that for each block all absolute differences between consecutive elements are <= four.

The programs for A287276, there is no canonical definition to state claims against.
-/

/-! ## A287276.P15594710931940064893

`A287214(∑[n+5]+5)`
-/

namespace A287276.P15594710931940064893
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287214 (∑ j ∈ Finset.range (n + 1), f1 j + 5)

end

end A287276.P15594710931940064893

/-! ## A287276.P11001539557347799749

`A287214(A055998(n+3)-2)%A001348(n+1)`
-/

namespace A287276.P11001539557347799749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A287214 (A055998 (n + 3) - 2).toNat) (A001348 (n + 1))

end

end A287276.P11001539557347799749

/-! ## A287276.P8973976073406701563

`A287214(A000096(n+4)-4)%A000108(n+2)`
-/

namespace A287276.P8973976073406701563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A287214 (A000096 (n + 4) - 4).toNat) (A000108 (n + 2))

end

end A287276.P8973976073406701563

/-! ## A287276.P18065121175636211934

`A046854(val(n+1, 2))*A287214(A000096(n+4)-4)`
-/

namespace A287276.P18065121175636211934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046854 (SequenceMachineLib.valuation (n + 1) 2) * A287214 (A000096 (n + 4) - 4).toNat

end

end A287276.P18065121175636211934

/-! ## A287276.P11078603944016391725

`A001222(A080174(n+1))*A287214(A000096(n+4)-4)`
-/

namespace A287276.P11078603944016391725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A080174 (n + 1)).toNat * A287214 (A000096 (n + 4) - 4).toNat

end

end A287276.P11078603944016391725

/-!
# A287277: Number of set partitions of [n] such that for each block all absolute differences between consecutive elements are <= five.

The programs for A287277, there is no canonical definition to state claims against.
-/

/-! ## A287277.P3303348231597755572

`A287214(A055999(n+3))`
-/

namespace A287277.P3303348231597755572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287214 (A055999 (n + 3)).toNat

end

end A287277.P3303348231597755572

/-! ## A287277.P18294971058587599101

`A287214(Δ[A026054(n+3)])`
-/

namespace A287277.P18294971058587599101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026054 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287214 (f1 (n + 1) - f1 n).toNat

end

end A287277.P18294971058587599101

/-! ## A287277.P16905137425156098779

`A287214(A000217(n+6)-6)`
-/

namespace A287277.P16905137425156098779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287214 (A000217 (n + 6) - 6).toNat

end

end A287277.P16905137425156098779

/-! ## A287277.P3543355162894604382

`A287214(A000124(n+6)-7)`
-/

namespace A287277.P3543355162894604382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287214 (A000124 (n + 6) - 7).toNat

end

end A287277.P3543355162894604382

/-! ## A287277.P11517203004473538875

`A287214(2*n+A155212(n)+13)`
-/

namespace A287277.P11517203004473538875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287214 ((2 * n : ℤ) + (A155212 n + 13)).toNat

end

end A287277.P11517203004473538875

/-!
# A287278: Number of set partitions of [n] such that for each block all absolute differences between consecutive elements are <= six.

The programs for A287278, there is no canonical definition to state claims against.
-/

/-! ## A287278.P16027299680544108999

`A287214(A000217(n+7)-7)`
-/

namespace A287278.P16027299680544108999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287214 (A000217 (n + 7) - 7).toNat

end

end A287278.P16027299680544108999

/-! ## A287278.P18227286736391321584

`A287214(eq[7, A004736(n+1)])`
-/

namespace A287278.P18227286736391321584
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287214 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A287278.P18227286736391321584

/-! ## A287278.P17872139395502749346

`A287214(Δ[A026054(n+4)]-1)`
-/

namespace A287278.P17872139395502749346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026054 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287214 (f1 (n + 1) - f1 n - 1).toNat

end

end A287278.P17872139395502749346

/-! ## A287278.P15712619888577013121

`A287214(A000096(n+5)+n+1)`
-/

namespace A287278.P15712619888577013121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287214 (A000096 (n + 5) + (n + 1 : ℤ)).toNat

end

end A287278.P15712619888577013121

/-! ## A287278.P5894008192976594007

`A287214(A000124(n+6)+n-1)`
-/

namespace A287278.P5894008192976594007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287214 (A000124 (n + 6) + ((n : ℤ) - 1)).toNat

end

end A287278.P5894008192976594007

/-!
# A287279: Number of set partitions of [n] such that for each block all absolute differences between consecutive elements are <= seven.

The programs for A287279, there is no canonical definition to state claims against.
-/

/-! ## A287279.P7170501446665846335

`A287214(eq[7, A025581(n)])`
-/

namespace A287279.P7170501446665846335
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287214 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A287279.P7170501446665846335

/-! ## A287279.P10278089493884143286

`A287214(A000217(n+8)-8)`
-/

namespace A287279.P10278089493884143286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287214 (A000217 (n + 8) - 8).toNat

end

end A287279.P10278089493884143286

/-! ## A287279.P2966730662680003504

`A287214(A161680(n+9)-8)`
-/

namespace A287279.P2966730662680003504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287214 (A161680 (n + 9) - 8).toNat

end

end A287279.P2966730662680003504

/-! ## A287279.P13465072152700525117

`A287214(eq[8, A004736(n+1)])`
-/

namespace A287279.P13465072152700525117
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287214 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A287279.P13465072152700525117

/-! ## A287279.P2870584312090074458

`A287214(A000124(n+7)+n-1)`
-/

namespace A287279.P2870584312090074458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287214 (A000124 (n + 7) + ((n : ℤ) - 1)).toNat

end

end A287279.P2870584312090074458

/-!
# A287280: Number of set partitions of [n] such that for each block all absolute differences between consecutive elements are <= eight.

The programs for A287280, there is no canonical definition to state claims against.
-/

/-! ## A287280.P10257745179064940147

`A287214(A052905(n+6)-4)`
-/

namespace A287280.P10257745179064940147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287214 (A052905 (n + 6) - 4).toNat

end

end A287280.P10257745179064940147

/-! ## A287280.P10349591559039890763

`A287214(A000217(n+9)-9)`
-/

namespace A287280.P10349591559039890763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287214 (A000217 (n + 9) - 9).toNat

end

end A287280.P10349591559039890763

/-! ## A287280.P14241667220042819362

`A287214(A000096(n+7)+n+1)`
-/

namespace A287280.P14241667220042819362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287214 (A000096 (n + 7) + (n + 1 : ℤ)).toNat

end

end A287280.P14241667220042819362

/-! ## A287280.P6866344068840083351

`A287214(n+4+A046691(n+6))`
-/

namespace A287280.P6866344068840083351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287214 ((n + 4 : ℤ) + A046691 (n + 6)).toNat

end

end A287280.P6866344068840083351

/-! ## A287280.P3629582660397542032

`A287214(eq[8, A002260(n+1)]+2*n+1)`
-/

namespace A287280.P3629582660397542032
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287214 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + (2 * n + 1))

end

end A287280.P3629582660397542032

/-!
# A287281: Number of set partitions of [n] such that for each block all absolute differences between consecutive elements are <= nine.

The programs for A287281, there is no canonical definition to state claims against.
-/

/-! ## A287281.P17598525075844519606

`A287214(A046691(n+8)-6)`
-/

namespace A287281.P17598525075844519606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287214 (A046691 (n + 8) - 6).toNat

end

end A287281.P17598525075844519606

/-! ## A287281.P9830691617082931748

`A287214(A000217(n+10)-10)`
-/

namespace A287281.P9830691617082931748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287214 (A000217 (n + 10) - 10).toNat

end

end A287281.P9830691617082931748

/-! ## A287281.P7527075818090951182

`A287214(n+4+A046691(n+7))`
-/

namespace A287281.P7527075818090951182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287214 ((n + 4 : ℤ) + A046691 (n + 7)).toNat

end

end A287281.P7527075818090951182

/-! ## A287281.P6388804844789091051

`A287214(A133263(n+3)+A017005(n+5))`
-/

namespace A287281.P6388804844789091051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287214 (A133263 (n + 3) + A017005 (n + 5)).toNat

end

end A287281.P6388804844789091051

/-! ## A287281.P13713541417962993812

`A287214(A167499(n+3)+A008458(n+5))`
-/

namespace A287281.P13713541417962993812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287214 (A167499 (n + 3) + A008458 (n + 5)).toNat

end

end A287281.P13713541417962993812

/-!
# A287282: Number of set partitions of [n] such that for each block all absolute differences between consecutive elements are <= ten.

The programs for A287282, there is no canonical definition to state claims against.
-/

/-! ## A287282.P14715987585753351732

`A287214(A046691(n+9)-7)`
-/

namespace A287282.P14715987585753351732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287214 (A046691 (n + 9) - 7).toNat

end

end A287282.P14715987585753351732

/-! ## A287282.P12595533905013130586

`A287214(A000217(n+11)-11)`
-/

namespace A287282.P12595533905013130586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287214 (A000217 (n + 11) - 11).toNat

end

end A287282.P12595533905013130586

/-! ## A287282.P11399194725464321952

`A287214(n+4+A046691(n+8))`
-/

namespace A287282.P11399194725464321952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287214 ((n + 4 : ℤ) + A046691 (n + 8)).toNat

end

end A287282.P11399194725464321952

/-! ## A287282.P16247563296129850910

`A287214(2*n+A167487(n+8)+3)`
-/

namespace A287282.P16247563296129850910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287214 ((2 * n : ℤ) + (A167487 (n + 8) + 3)).toNat

end

end A287282.P16247563296129850910

/-! ## A287282.P7768290417223674121

`A287214(A008590(n+6)+A000124(n+3))`
-/

namespace A287282.P7768290417223674121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287214 (A008590 (n + 6) + A000124 (n + 3)).toNat

end

end A287282.P7768290417223674121

/-!
# A287283: Binary representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 260", based on the 5-celled von Neumann neighborhood.

The programs for A287283, there is no canonical definition to state claims against.
-/

/-! ## A287283.P16689191983498701727

`log2(gcd(2, n))*A286702(n)`
-/

namespace A287283.P16689191983498701727
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Nat.gcd 2 n : ℝ) * (A286702 n : ℝ)

end

end A287283.P16689191983498701727

/-! ## A287283.P16585158350749788787

`A059841(n)*A286702(n)`
-/

namespace A287283.P16585158350749788787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 n * A286702 n

end

end A287283.P16585158350749788787

/-! ## A287283.P13986088799441578047

`lcm(A056594(n), A286702(n))`
-/

namespace A287283.P13986088799441578047
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A056594 n) (A286702 n)

end

end A287283.P13986088799441578047

/-! ## A287283.P2993102416700900693

`Δ[A110654(n)]*A286702(n)`
-/

namespace A287283.P2993102416700900693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A286702 n

end

end A287283.P2993102416700900693

/-! ## A287283.P2016244115547356067

`char[A005843(n)]*A286702(n)`
-/

namespace A287283.P2016244115547356067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A286702 n

end

end A287283.P2016244115547356067

/-! ## A287283.P14691287985750312285

`char[A109043(n)]*A286702(n)`
-/

namespace A287283.P14691287985750312285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109043 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A286702 n

end

end A287283.P14691287985750312285

/-! ## A287283.P16290073654444656678

`A000035(n+1)*A286702(n)`
-/

namespace A287283.P16290073654444656678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (n + 1) * A286702 n

end

end A287283.P16290073654444656678

/-! ## A287283.P15983816060059717412

`(1-A000035(n))*A286702(n)`
-/

namespace A287283.P15983816060059717412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A000035 n) * A286702 n

end

end A287283.P15983816060059717412

/-! ## A287283.P8201099990144456929

`A290234(n)%2*A286702(n)`
-/

namespace A287283.P8201099990144456929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A290234 n) 2 * A286702 n

end

end A287283.P8201099990144456929

/-! ## A287283.P18088401155983218150

`A286702(n)%or(2, A286703(n))`
-/

namespace A287283.P18088401155983218150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A286702 n) (Int.lor 2 (A286703 n))

end

end A287283.P18088401155983218150

/-! ## A287283.P8493656953779796044

`A056594(A014601(n))*A286702(n)`
-/

namespace A287283.P8493656953779796044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 (A014601 n).toNat * A286702 n

end

end A287283.P8493656953779796044

/-! ## A287283.P15376204941926286349

`A056594(A042948(n))*A286702(n)`
-/

namespace A287283.P15376204941926286349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 (A042948 n).toNat * A286702 n

end

end A287283.P15376204941926286349

/-! ## A287283.P6246621162834420327

`and(A056594(A267354(n)), A286702(n))`
-/

namespace A287283.P6246621162834420327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A056594 (A267354 n).toNat) (A286702 n)

end

end A287283.P6246621162834420327

/-! ## A287283.P5899845069176032175

`A286702(n)*A287284(n*A000035(n))`
-/

namespace A287283.P5899845069176032175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286702 n * A287284 ((n : ℤ) * A000035 n).toNat

end

end A287283.P5899845069176032175

/-! ## A287283.P17685303297201360445

`A287284(n)^A277936(n)*A286702(n)`
-/

namespace A287283.P17685303297201360445
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A287284 n : ℚ) ^ (A277936 n : ℤ) * (A286702 n : ℚ)

end

end A287283.P17685303297201360445

/-! ## A287283.P895514922371063436

`A287285(n)^A277936(n)*A286702(n)`
-/

namespace A287283.P895514922371063436
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A287285 n : ℚ) ^ (A277936 n : ℤ) * (A286702 n : ℚ)

end

end A287283.P895514922371063436

/-! ## A287283.P1107056836733639291

`A287287(n)^A277936(n)*A286702(n)`
-/

namespace A287283.P1107056836733639291
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A287287 n : ℚ) ^ (A277936 n : ℤ) * (A286702 n : ℚ)

end

end A287283.P1107056836733639291

/-! ## A287283.P13307243930979945918

`A056594(and(n, A286702(n)))*A286702(n)`
-/

namespace A287283.P13307243930979945918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 (Int.land (n : ℤ) (A286702 n)).toNat * A286702 n

end

end A287283.P13307243930979945918

/-! ## A287283.P17549537824710084579

`xor(A000035(n)*A286703(n), A286702(n))`
-/

namespace A287283.P17549537824710084579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000035 n * A286703 n) (A286702 n)

end

end A287283.P17549537824710084579

/-! ## A287283.P1843777855384526146

`A056594(n²)*A286702(n)`
-/

namespace A287283.P1843777855384526146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 (n ^ 2) * A286702 n

end

end A287283.P1843777855384526146

/-!
# A287284: Binary representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 260", based on the 5-celled von Neumann neighborhood.

The programs for A287284, there is no canonical definition to state claims against.
-/

/-! ## A287284.P2836685204102139883

`lcm(A117188(n), A286703(floor(n/(n%2+1))))`
-/

namespace A287284.P2836685204102139883
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A117188 n) (A286703 ⌊(n : ℚ) / ((n % 2 + 1 : ℕ) : ℚ)⌋.toNat)

end

end A287284.P2836685204102139883

/-! ## A287284.P8732597548804567222

`log2(gcd(2, n))*A286703(n)`
-/

namespace A287284.P8732597548804567222
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Nat.gcd 2 n : ℝ) * (A286703 n : ℝ)

end

end A287284.P8732597548804567222

/-! ## A287284.P16576785043379550465

`A059841(n)*A286703(n)`
-/

namespace A287284.P16576785043379550465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 n * A286703 n

end

end A287284.P16576785043379550465

/-! ## A287284.P6202254961158523781

`lcm(A056594(n), A286703(n))`
-/

namespace A287284.P6202254961158523781
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A056594 n) (A286703 n)

end

end A287284.P6202254961158523781

/-! ## A287284.P9271072266636997533

`and(A115634(n), A286703(n))`
-/

namespace A287284.P9271072266636997533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A115634 n) (A286703 n)

end

end A287284.P9271072266636997533

/-! ## A287284.P11832650404960550072

`and(-A287285(n), A286703(n))`
-/

namespace A287284.P11832650404960550072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-A287285 n) (A286703 n)

end

end A287284.P11832650404960550072

/-! ## A287284.P13944037062799871266

`Δ[A110654(n)]*A286703(n)`
-/

namespace A287284.P13944037062799871266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A286703 n

end

end A287284.P13944037062799871266

/-! ## A287284.P451254378053787173

`char[A005843(n)]*A286703(n)`
-/

namespace A287284.P451254378053787173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A286703 n

end

end A287284.P451254378053787173

/-! ## A287284.P6484273896496922349

`char[A109043(n)]*A286703(n)`
-/

namespace A287284.P6484273896496922349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109043 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A286703 n

end

end A287284.P6484273896496922349

/-! ## A287284.P8190955811345856699

`A000035(n+1)*A286703(n)`
-/

namespace A287284.P8190955811345856699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (n + 1) * A286703 n

end

end A287284.P8190955811345856699

/-! ## A287284.P10429202920511551548

`(1-A000035(n))*A286703(n)`
-/

namespace A287284.P10429202920511551548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A000035 n) * A286703 n

end

end A287284.P10429202920511551548

/-! ## A287284.P17425705009511992713

`A290234(n)%2*A286703(n)`
-/

namespace A287284.P17425705009511992713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A290234 n) 2 * A286703 n

end

end A287284.P17425705009511992713

/-! ## A287284.P10351265610442567007

`A056594(A014601(n))*A286703(n)`
-/

namespace A287284.P10351265610442567007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 (A014601 n).toNat * A286703 n

end

end A287284.P10351265610442567007

/-! ## A287284.P2810371305735893365

`A056594(A042948(n))*A286703(n)`
-/

namespace A287284.P2810371305735893365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 (A042948 n).toNat * A286703 n

end

end A287284.P2810371305735893365

/-! ## A287284.P17321667493563902389

`A286703(n)+A287283(n)-A286702(n)`
-/

namespace A287284.P17321667493563902389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286703 n + (A287283 n - A286702 n)

end

end A287284.P17321667493563902389

/-! ## A287284.P4955353109409286663

`A286703(n)*A287283(n*A000035(n))`
-/

namespace A287284.P4955353109409286663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286703 n * A287283 ((n : ℤ) * A000035 n).toNat

end

end A287284.P4955353109409286663

/-! ## A287284.P12897572835002116608

`A287283(n)^A277936(n)*A286703(n)`
-/

namespace A287284.P12897572835002116608
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A287283 n : ℚ) ^ (A277936 n : ℤ) * (A286703 n : ℚ)

end

end A287284.P12897572835002116608

/-! ## A287284.P14371903488273269589

`A287285(n)^A277936(n)*A286703(n)`
-/

namespace A287284.P14371903488273269589
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A287285 n : ℚ) ^ (A277936 n : ℤ) * (A286703 n : ℚ)

end

end A287284.P14371903488273269589

/-! ## A287284.P7389059427459278407

`A287287(n)^A277936(n)*A286703(n)`
-/

namespace A287284.P7389059427459278407
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A287287 n : ℚ) ^ (A277936 n : ℤ) * (A286703 n : ℚ)

end

end A287284.P7389059427459278407

/-! ## A287284.P6950630691256572734

`A286703(n)*A287285(and(n, A286703(n)))`
-/

namespace A287284.P6950630691256572734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286703 n * A287285 (Int.land (n : ℤ) (A286703 n)).toNat

end

end A287284.P6950630691256572734

/-!
# A287285: Decimal representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 260", based on the 5-celled von Neumann neighborhood.

The programs for A287285, there is no canonical definition to state claims against.
-/

/-! ## A287285.P13615953099693567946

`A059841(n)*A286704(n*A059841(n))`
-/

namespace A287285.P13615953099693567946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 n * A286704 ((n : ℤ) * A059841 n).toNat

end

end A287285.P13615953099693567946

/-! ## A287285.P427800666535432962

`(n+1)%2*A286704(n)`
-/

namespace A287285.P427800666535432962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((n + 1) % 2 : ℕ) : ℤ) * A286704 n

end

end A287285.P427800666535432962

/-! ## A287285.P13960084363093509539

`A059841(n)*A286704(n)`
-/

namespace A287285.P13960084363093509539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 n * A286704 n

end

end A287285.P13960084363093509539

/-! ## A287285.P2335179000238992168

`A286704(n)%A052552(n)`
-/

namespace A287285.P2335179000238992168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A286704 n) (A052552 n)

end

end A287285.P2335179000238992168

/-! ## A287285.P9162302277984207439

`lcm(A056594(n), A286704(n))`
-/

namespace A287285.P9162302277984207439
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A056594 n) (A286704 n)

end

end A287285.P9162302277984207439

/-! ## A287285.P15050215513069376261

`and(A077896(n), A286704(n))`
-/

namespace A287285.P15050215513069376261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A077896 n) (A286704 n)

end

end A287285.P15050215513069376261

/-! ## A287285.P8272434173616745217

`A000035(n+1)*A286704(n)`
-/

namespace A287285.P8272434173616745217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (n + 1) * A286704 n

end

end A287285.P8272434173616745217

/-! ## A287285.P14383586457598852926

`(1-A000035(n))*A286704(n)`
-/

namespace A287285.P14383586457598852926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A000035 n) * A286704 n

end

end A287285.P14383586457598852926

/-! ## A287285.P2423822445355962679

`A286704(n)*A287287(n*A000035(n))`
-/

namespace A287285.P2423822445355962679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286704 n * A287287 ((n : ℤ) * A000035 n).toNat

end

end A287285.P2423822445355962679

/-! ## A287285.P17725144810323388364

`and(A279872(n), A286704(n))`
-/

namespace A287285.P17725144810323388364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A279872 n) (A286704 n)

end

end A287285.P17725144810323388364

/-! ## A287285.P11084986923684137323

`A126646(n+1)-A286861(n+1)`
-/

namespace A287285.P11084986923684137323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126646 (n + 1) - A286861 (n + 1)

end

end A287285.P11084986923684137323

/-! ## A287285.P3675390261283796080

`A056594(n²)*A286704(n)`
-/

namespace A287285.P3675390261283796080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 (n ^ 2) * A286704 n

end

end A287285.P3675390261283796080

/-!
# A287286: a(n) = smallest integer s such that every element of the ring of integers mod t for any t can be written as a sum of s n-th powers.

The programs for A287286, there is no canonical definition to state claims against.
-/

/-! ## A287286.P11138896055691611864

`A040004(n+1)-char[3]`
-/

namespace A287286.P11138896055691611864
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040004 (n + 1) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A287286.P11138896055691611864

/-! ## A287286.P8665735989371705153

`A054525(A331763(n+1))+A040004(n+1)`
-/

namespace A287286.P8665735989371705153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054525 (A331763 (n + 1)).toNat + A040004 (n + 1)

end

end A287286.P8665735989371705153

/-!
# A287287: Decimal representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 260", based on the 5-celled von Neumann neighborhood.

The programs for A287287, there is no canonical definition to state claims against.
-/

/-! ## A287287.P10301674620385356445

`and(1, n+1)*A286705(and(n, n+1))`
-/

namespace A287287.P10301674620385356445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.land 1 (n + 1) : ℤ) * A286705 (Nat.land n (n + 1))

end

end A287287.P10301674620385356445

/-! ## A287287.P4944096465103398482

`A059841(n)*A286705(n*A059841(n))`
-/

namespace A287287.P4944096465103398482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 n * A286705 ((n : ℤ) * A059841 n).toNat

end

end A287287.P4944096465103398482

/-! ## A287287.P11966762972860177275

`A286705(n)*and(1, n+1)`
-/

namespace A287287.P11966762972860177275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286705 n * (Nat.land 1 (n + 1) : ℤ)

end

end A287287.P11966762972860177275

/-! ## A287287.P13843263064449112246

`A059841(n)*A286705(n)`
-/

namespace A287287.P13843263064449112246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 n * A286705 n

end

end A287287.P13843263064449112246

/-! ## A287287.P1075968844895592313

`lcm(A056594(n), A286705(n))`
-/

namespace A287287.P1075968844895592313
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A056594 n) (A286705 n)

end

end A287287.P1075968844895592313

/-! ## A287287.P12579381488816106197

`and(A115634(n), A286705(n))`
-/

namespace A287287.P12579381488816106197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A115634 n) (A286705 n)

end

end A287287.P12579381488816106197

/-! ## A287287.P769968346523097130

`A000035(n+1)*A286705(n)`
-/

namespace A287287.P769968346523097130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (n + 1) * A286705 n

end

end A287287.P769968346523097130

/-! ## A287287.P6262789085380824113

`(1-A000035(n))*A286705(n)`
-/

namespace A287287.P6262789085380824113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A000035 n) * A286705 n

end

end A287287.P6262789085380824113

/-! ## A287287.P9260393914209253128

`A003815(2*n+1)*A286705(n)`
-/

namespace A287287.P9260393914209253128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003815 (2 * n + 1) * A286705 n

end

end A287287.P9260393914209253128

/-! ## A287287.P10723823535182701554

`A286705(n)*A287285(n*A000035(n))`
-/

namespace A287287.P10723823535182701554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286705 n * A287285 ((n : ℤ) * A000035 n).toNat

end

end A287287.P10723823535182701554

/-! ## A287287.P15620411018375089907

`A286705(n)*A287470(and(n, A286705(n)))`
-/

namespace A287287.P15620411018375089907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286705 n * A287470 (Int.land (n : ℤ) (A286705 n)).toNat

end

end A287287.P15620411018375089907

/-! ## A287287.P18150166506318569629

`A286705(n)%A281500(n)`
-/

namespace A287287.P18150166506318569629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A286705 n) (A281500 n)

end

end A287287.P18150166506318569629

/-! ## A287287.P2554857927998940671

`and(A279872(n), A286705(n))`
-/

namespace A287287.P2554857927998940671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A279872 n) (A286705 n)

end

end A287287.P2554857927998940671

/-! ## A287287.P13270803119535090024

`and(A286705(n), A287470(n))`
-/

namespace A287287.P13270803119535090024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A286705 n) (A287470 n)

end

end A287287.P13270803119535090024

/-! ## A287287.P2652589458183053123

`A056594(n²)*A286705(n)`
-/

namespace A287287.P2652589458183053123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 (n ^ 2) * A286705 n

end

end A287287.P2652589458183053123

/-!
# A287288: Binary representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 262", based on the 5-celled von Neumann neighborhood.

The programs for A287288, there is no canonical definition to state claims against.
-/

/-! ## A287288.P7769822443742870770

`A007088(A287290(n))`
-/

namespace A287288.P7769822443742870770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A287290 n).toNat

end

end A287288.P7769822443742870770

/-! ## A287288.P8417400683575569035

`A185544(2*A287290(n))`
-/

namespace A287288.P8417400683575569035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A287290 n).toNat

end

end A287288.P8417400683575569035

/-! ## A287288.P17618851079803109280

`A185544(A287290(n)+A287290(n))`
-/

namespace A287288.P17618851079803109280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (A287290 n + A287290 n).toNat

end

end A287288.P17618851079803109280

/-! ## A287288.P1420520565059800215

`A007088(A126646(n+1)-A290068(n+1))`
-/

namespace A287288.P1420520565059800215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A126646 (n + 1) - A290068 (n + 1)).toNat

end

end A287288.P1420520565059800215

/-! ## A287288.P9517292334244582429

`A007088(A000225(n+2)-A290068(n+1))`
-/

namespace A287288.P9517292334244582429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A000225 (n + 2) - A290068 (n + 1)).toNat

end

end A287288.P9517292334244582429

/-!
# A287289: Binary representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 262", based on the 5-celled von Neumann neighborhood.

The programs for A287289, there is no canonical definition to state claims against.
-/

/-! ## A287289.P12923412776434165592

`A007088(A287291(n))`
-/

namespace A287289.P12923412776434165592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A287291 n).toNat

end

end A287289.P12923412776434165592

/-! ## A287289.P11484254142677150052

`A287980(A122200(∑[n]))`
-/

namespace A287289.P11484254142677150052
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287980 (A122200 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A287289.P11484254142677150052

/-! ## A287289.P2039973852374751763

`A287980(A122284(∑[n]))`
-/

namespace A287289.P2039973852374751763
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287980 (A122284 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A287289.P2039973852374751763

/-! ## A287289.P17312840805625628446

`A287980(A077168(n)-1)`
-/

namespace A287289.P17312840805625628446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287980 (A077168 n - 1).toNat

end

end A287289.P17312840805625628446

/-! ## A287289.P4691745419946417218

`A287980(A007814(2^n))`
-/

namespace A287289.P4691745419946417218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287980 (A007814 (2 ^ n)).toNat

end

end A287289.P4691745419946417218

/-!
# A287290: Decimal representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 262", based on the 5-celled von Neumann neighborhood.

The programs for A287290, there is no canonical definition to state claims against.
-/

/-! ## A287290.P5190167998526121058

`A126646(n+1)-A290068(n+1)`
-/

namespace A287290.P5190167998526121058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126646 (n + 1) - A290068 (n + 1)

end

end A287290.P5190167998526121058

/-! ## A287290.P5613855884966585289

`A000225(n+2)-A290068(n+1)`
-/

namespace A287290.P5613855884966585289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (n + 2) - A290068 (n + 1)

end

end A287290.P5613855884966585289

/-! ## A287290.P10548557884009629165

`∑[A000079(n+1)-Δ[A290068(n)]]`
-/

namespace A287290.P10548557884009629165
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290068 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (n + 1) - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A287290.P10548557884009629165

/-! ## A287290.P3487263554417967017

`A052551(2*(n+1))-A290068(n+1)`
-/

namespace A287290.P3487263554417967017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052551 (2 * (n + 1)) - A290068 (n + 1)

end

end A287290.P3487263554417967017

/-! ## A287290.P16370013688789753386

`A052955(2*(n+1))-A290068(n+1)`
-/

namespace A287290.P16370013688789753386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052955 (2 * (n + 1)) - A290068 (n + 1)

end

end A287290.P16370013688789753386

/-! ## A287290.P846831554440343107

`A290069(n)-and(A290068(n+1), A290069(n))`
-/

namespace A287290.P846831554440343107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290069 n - Int.land (A290068 (n + 1)) (A290069 n)

end

end A287290.P846831554440343107

/-!
# A287291: Decimal representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 262", based on the 5-celled von Neumann neighborhood.

The programs for A287291, there is no canonical definition to state claims against.
-/

/-! ## A287291.P157042470561493644

`and(A279608(A011782(n)), A287982(n))`
-/

namespace A287291.P157042470561493644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A279608 (A011782 n).toNat) (A287982 n)

end

end A287291.P157042470561493644

/-! ## A287291.P16379680602833049450

`A057889(A287982(n))`
-/

namespace A287291.P16379680602833049450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057889 (A287982 n).toNat

end

end A287291.P16379680602833049450

/-! ## A287291.P17829786906127819946

`A287982(A122200(∑[n]))`
-/

namespace A287291.P17829786906127819946
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287982 (A122200 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A287291.P17829786906127819946

/-! ## A287291.P11501687707606888513

`A287982(A122204(∑[n]))`
-/

namespace A287291.P11501687707606888513
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287982 (A122204 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A287291.P11501687707606888513

/-! ## A287291.P11788523440644849721

`A287982(A122284(∑[n]))`
-/

namespace A287291.P11788523440644849721
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287982 (A122284 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A287291.P11788523440644849721

/-!
# A287292: a(1) = 1, a(2) = 2; a(n) = a(n-a(n-1)+1) + a(n-a(n-2)-1) for n > 2.

The programs for A287292, the canonical program `A287292.P8754538252983757480` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A287292 has offset 1).

The definition of A287292 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-a(n-1)+1)+a(n-a(n-2)-1)` (program `A287292.P8754538252983757480`, by `A287292.P8754538252983757480.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A287292.P8754538252983757480

`a(n-a(n-1)+1)+a(n-a(n-2)-1)` with `a(0)=1, a(1)=2`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A287292

/-- `a(n-a(n-1)+1)+a(n-a(n-2)-1)` -/
def P8754538252983757480.Spec : Prop :=
  ∀ n, (P8754538252983757480.a n : ℤ) = A287292 (n + 1)

theorem P8754538252983757480.correct : P8754538252983757480.Spec := by
  intro n
  simp only [A287292, Nat.add_sub_cancel]

end A287292

/-! ## A287292.P7163900723267971101

`A054725(or(A022099(n), A213999(n)))`
-/

namespace A287292.P7163900723267971101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054725 (Int.lor (A022099 n) (A213999 n)).toNat

end

end A287292.P7163900723267971101

namespace A287292

/-- `A054725(or(A022099(n), A213999(n)))` -/
def P7163900723267971101.Spec : Prop :=
  ∀ n, P7163900723267971101.a n = A287292 (n + 1)

end A287292

/-! ## A287292.P3346521395325903816

`A222249(∑[A284912(A223975(n+1))])`
-/

namespace A287292.P3346521395325903816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284912 (A223975 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222249 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A287292.P3346521395325903816

namespace A287292

/-- `A222249(∑[A284912(A223975(n+1))])` -/
def P3346521395325903816.Spec : Prop :=
  ∀ n, P3346521395325903816.a n = A287292 (n + 1)

end A287292

/-! ## A287292.P6850899656562940664

`A000720(2*(n+2))-A038548(A332216(n+3))`
-/

namespace A287292.P6850899656562940664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (2 * (n + 2)) - A038548 (A332216 (n + 3)).toNat

end

end A287292.P6850899656562940664

namespace A287292

/-- `A000720(2*(n+2))-A038548(A332216(n+3))` -/
def P6850899656562940664.Spec : Prop :=
  ∀ n, P6850899656562940664.a n = A287292 (n + 1)

end A287292

/-! ## A287292.P11022414386769897079

`A000720(2*(n+2))-A318434(A346517(n+4))`
-/

namespace A287292.P11022414386769897079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (2 * (n + 2)) - A318434 (A346517 (n + 4)).toNat

end

end A287292.P11022414386769897079

namespace A287292

/-- `A000720(2*(n+2))-A318434(A346517(n+4))` -/
def P11022414386769897079.Spec : Prop :=
  ∀ n, P11022414386769897079.a n = A287292 (n + 1)

end A287292

/-!
# A287293: Golomb's sequence with powers of 2.

The programs for A287293, there is no canonical definition to state claims against.
-/

/-! ## A287293.P6146293981007835071

`A137688(or(xor(1, n), A351014(2*n+1)))`
-/

namespace A287293.P6146293981007835071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137688 (Int.lor (Nat.xor 1 n : ℤ) (A351014 (2 * n + 1))).toNat

end

end A287293.P6146293981007835071

/-! ## A287293.P3393848135301076649

`A062383(A051661(n)-A000120(n))`
-/

namespace A287293.P3393848135301076649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062383 (A051661 n - A000120 n).toNat

end

end A287293.P3393848135301076649

/-! ## A287293.P2181554441043627157

`A062383(A008642(n)%A090324(n+1))`
-/

namespace A287293.P2181554441043627157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062383 (Int.tmod (A008642 n) (A090324 (n + 1))).toNat

end

end A287293.P2181554441043627157

/-! ## A287293.P12143639777877975280

`A053644(A341140(2*(n+3))+A190718(n))`
-/

namespace A287293.P12143639777877975280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053644 (A341140 (2 * (n + 3)) + A190718 n).toNat

end

end A287293.P12143639777877975280

/-! ## A287293.P8867224394989570376

`A062383(A294937(A285068(n))+A008642(n))`
-/

namespace A287293.P8867224394989570376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062383 (A294937 (A285068 n).toNat + A008642 n).toNat

end

end A287293.P8867224394989570376

/-!
# A287294: Concatenation of sequence (2n-1,2n-3,..,3,1,3,..,2n-3,2n-1).

The programs for A287294, there is no canonical definition to state claims against.
-/

/-! ## A287294.P8887241990739217355

`A053064(A316492(n+1))+floor(10^n/9)`
-/

namespace A287294.P8887241990739217355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053064 (A316492 (n + 1)).toNat + ⌊(10 ^ n : ℚ) / 9⌋

end

end A287294.P8887241990739217355

/-!
# A287295: a(2n-1) is concatenation of sequence (1,3,..,2n-3,2n-1,2n-3,..3,1) and a(2n) is concatenation of sequence (1,3,..,2n-3,2n-1,2n-1,2n-3,..3,1).

The programs for A287295, there is no canonical definition to state claims against.
-/

/-! ## A287295.P7568304228144655768

`A261914(A333095(n)+A011557(n))`
-/

namespace A287295.P7568304228144655768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261914 (A333095 n + A011557 n).toNat

end

end A287295.P7568304228144655768

/-!
# A287296: Numbers k such that 8*10^k + 51 is prime.

The programs for A287296, there is no canonical definition to state claims against.
-/

/-! ## A287296.P12082872077689413353

`A039770(n+1)-A022300(A000110(n))`
-/

namespace A287296.P12082872077689413353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039770 (n + 1) - A022300 (A000110 n).toNat

end

end A287296.P12082872077689413353

/-! ## A287296.P11035366239996724809

`A039770(n+1)-A089723(A346106(n+1))`
-/

namespace A287296.P11035366239996724809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039770 (n + 1) - A089723 (A346106 (n + 1)).toNat

end

end A287296.P11035366239996724809

/-! ## A287296.P18428295266023102636

`A039770(n+1)-A026517(A361148(n+4))`
-/

namespace A287296.P18428295266023102636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039770 (n + 1) - A026517 (A361148 (n + 4)).toNat

end

end A287296.P18428295266023102636

/-! ## A287296.P13400839786880746182

`A039770(n+1)-A260516(A113711(3*n+2))`
-/

namespace A287296.P13400839786880746182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039770 (n + 1) - A260516 (A113711 (3 * n + 2)).toNat

end

end A287296.P13400839786880746182

/-!
# A287299: Number of ways of writing n as a sum of a proper prime power (A246547) and a nonprime squarefree number (A000469).

The programs for A287299, there is no canonical definition to state claims against.
-/

/-! ## A287299.P16171974789087463636

`A001899(A063178(n+1))`
-/

namespace A287299.P16171974789087463636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001899 (A063178 (n + 1)).toNat

end

end A287299.P16171974789087463636

/-! ## A287299.P14116481925615845904

`A086076(n)+A086076(A332759(n))`
-/

namespace A287299.P14116481925615845904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086076 n + A086076 (A332759 n).toNat

end

end A287299.P14116481925615845904

/-! ## A287299.P13237622087910743163

`A003341(A099577(n))%A066657(n)`
-/

namespace A287299.P13237622087910743163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003341 (A099577 n).toNat) (A066657 n)

end

end A287299.P13237622087910743163

/-! ## A287299.P16530950686215193591

`A010872(A248231(n+1)*A294156(n+1))`
-/

namespace A287299.P16530950686215193591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010872 (A248231 (n + 1) * A294156 (n + 1)).toNat

end

end A287299.P16530950686215193591

/-! ## A287299.P2550758540265748437

`A056558(13^A037835(n+1))`
-/

namespace A287299.P2550758540265748437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056558 (SequenceMachineLib.roundAway ((13 : ℚ) ^ (A037835 (n + 1) : ℤ))).toNat

end

end A287299.P2550758540265748437

