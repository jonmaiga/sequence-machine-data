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
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C036
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C008
import Seq.B001.C011
import Seq.B001.C012
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B002.C007
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
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B009.C000
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A112800: Number of ways of representing 2n-1 as sum of three integers with 1 distinct prime factor.

The programs for A112800, there is no canonical definition to state claims against.
-/

/-! ## A112800.P9684967090760706654

`A307727(Δ[n²])`
-/

namespace A112800.P9684967090760706654
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307727 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A112800.P9684967090760706654

/-! ## A112800.P12849345001908450604

`char[floor(n/(xor(n, n+1)+1))+1]*A307727(2*n+1)`
-/

namespace A112800.P12849345001908450604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / (Nat.xor n (n + 1) + 1 : ℚ)⌋ + 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A307727 (2 * n + 1)

end

end A112800.P12849345001908450604

/-! ## A112800.P2395929913991513827

`A307727(2*n+1)%A000041(n)`
-/

namespace A112800.P2395929913991513827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A307727 (2 * n + 1)) (A000041 n)

end

end A112800.P2395929913991513827

/-! ## A112800.P12777716989991272464

`A307727(2*n+1)/A014963(A016825(n))`
-/

namespace A112800.P12777716989991272464
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A307727 (2 * n + 1) : ℚ) / (A014963 (A016825 n).toNat : ℚ)

end

end A112800.P12777716989991272464

/-! ## A112800.P15766824503424491558

`A307727(n+1+n)/A006257(A001316(n))`
-/

namespace A112800.P15766824503424491558
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A307727 (n + 1 + n) : ℚ) / (A006257 (A001316 n).toNat : ℚ)

end

end A112800.P15766824503424491558

/-! ## A112800.P3689609631977041162

`A307727(n+1+n)/A014963(A017137(n))`
-/

namespace A112800.P3689609631977041162
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A307727 (n + 1 + n) : ℚ) / (A014963 (A017137 n).toNat : ℚ)

end

end A112800.P3689609631977041162

/-! ## A112800.P15042268639374790938

`A307727(n+1+n)/A006257(A059268(n))`
-/

namespace A112800.P15042268639374790938
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A307727 (n + 1 + n) : ℚ) / (A006257 (A059268 n).toNat : ℚ)

end

end A112800.P15042268639374790938

/-! ## A112800.P5208734046547748787

`A307727(n+1+n)+A004197(∑[n])`
-/

namespace A112800.P5208734046547748787
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307727 (n + 1 + n) + A004197 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A112800.P5208734046547748787

/-!
# A112802: Number of ways of representing 2n-1 as sum of three integers with 3 distinct prime factors.

The programs for A112802, there is no canonical definition to state claims against.
-/

/-! ## A112802.P16339755449138161473

`floor(floor(floor(A184242(2*n+1)/9)/9)/9)`
-/

namespace A112802.P16339755449138161473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(⌊(⌊(A184242 (2 * n + 1) : ℚ) / 9⌋ : ℚ) / 9⌋ : ℚ) / 9⌋

end

end A112802.P16339755449138161473

/-! ## A112802.P17266499598094536581

`A185284(A244544(n)+A117910(n))`
-/

namespace A112802.P17266499598094536581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 (A244544 n + A117910 n).toNat

end

end A112802.P17266499598094536581

/-! ## A112802.P10795938154327202544

`A185284(A117910(n)+A049107(n+1))`
-/

namespace A112802.P10795938154327202544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 (A117910 n + A049107 (n + 1)).toNat

end

end A112802.P10795938154327202544

/-! ## A112802.P7702150429367763628

`A180160(A126304(n+2)^A025443(2*n+1))`
-/

namespace A112802.P7702150429367763628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180160 (SequenceMachineLib.roundAway ((A126304 (n + 2) : ℚ) ^ (A025443 (2 * n + 1) : ℤ))).toNat

end

end A112802.P7702150429367763628

/-! ## A112802.P6678390830233843578

`A051731(lcm(A088838(n²+1), A132399(n+1))+1)`
-/

namespace A112802.P6678390830233843578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051731 (Int.lcm (A088838 (n ^ 2 + 1)) (A132399 (n + 1)) + 1)

end

end A112802.P6678390830233843578

/-! ## A112802.P5416439125402809835

`and(A035377(A266685(n)), A266669(n))`
-/

namespace A112802.P5416439125402809835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A035377 (A266685 n).toNat) (A266669 n)

end

end A112802.P5416439125402809835

/-! ## A112802.P2722561739976666824

`and(A044948(n+1), A266672(A266685(n)))`
-/

namespace A112802.P2722561739976666824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A044948 (n + 1)) (A266672 (A266685 n).toNat)

end

end A112802.P2722561739976666824

/-! ## A112802.P7553107398272581330

`val(A099384(A130481(n)), 12)`
-/

namespace A112802.P7553107398272581330
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A099384 (A130481 n).toNat).toNat 12

end

end A112802.P7553107398272581330

/-! ## A112802.P14359905574545825287

`and(n+1, A045701(A099384(n)))`
-/

namespace A112802.P14359905574545825287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n + 1 : ℤ) (A045701 (A099384 n).toNat)

end

end A112802.P14359905574545825287

/-!
# A112803: Expansion of 1 + k(q) = 1 + r(q) * r(q^2)^2 in powers of q where r() is the Rogers-Ramanujan continued fraction.

The programs for A112803, there is no canonical definition to state claims against.
-/

/-! ## A112803.P17801793898586233217

`A112274((2*n)%(n+1)+1)`
-/

namespace A112803.P17801793898586233217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112274 (2 * n % (n + 1) + 1)

end

end A112803.P17801793898586233217

/-! ## A112803.P14012777956765822440

`A112274(n-n²²%(n+1)+1)`
-/

namespace A112803.P14012777956765822440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112274 ((n : ℤ) - (((n ^ 2) ^ 2 % (n + 1) : ℕ) : ℤ) + 1).toNat

end

end A112803.P14012777956765822440

/-! ## A112803.P8643135134093370305

`A112274(A028310(n))`
-/

namespace A112803.P8643135134093370305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112274 (A028310 n).toNat

end

end A112803.P8643135134093370305

/-! ## A112803.P6985088078387136359

`A112274(A000007(n)+n)`
-/

namespace A112803.P6985088078387136359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112274 (A000007 n + (n : ℤ)).toNat

end

end A112803.P6985088078387136359

/-! ## A112803.P5836546808252887687

`A000038(n)-A124242(n)`
-/

namespace A112803.P5836546808252887687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n - A124242 n

end

end A112803.P5836546808252887687

/-! ## A112803.P12281886576816184475

`A124242(n)*A153881(n+1)`
-/

namespace A112803.P12281886576816184475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124242 n * A153881 (n + 1)

end

end A112803.P12281886576816184475

/-! ## A112803.P17053345019759771941

`A124242(n)*A124242(n²%(n+1))`
-/

namespace A112803.P17053345019759771941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124242 n * A124242 (n ^ 2 % (n + 1))

end

end A112803.P17053345019759771941

/-! ## A112803.P2178518193095351474

`A000122(A000122(n)+n)-A124242(n)`
-/

namespace A112803.P2178518193095351474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 (A000122 n + (n : ℤ)).toNat - A124242 n

end

end A112803.P2178518193095351474

/-! ## A112803.P14402163098259052686

`A057077(2*A005145(n+1))*A124242(n)`
-/

namespace A112803.P14402163098259052686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 (2 * A005145 (n + 1)).toNat * A124242 n

end

end A112803.P14402163098259052686

/-!
# A112805: Expansion of solution of functional equation.

The programs for A112805, there is no canonical definition to state claims against.
-/

/-! ## A112805.P7453461605045677110

`A132016(A365252(n))`
-/

namespace A112805.P7453461605045677110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132016 (A365252 n).toNat

end

end A112805.P7453461605045677110

/-! ## A112805.P15560319882486747002

`A000196(A268598(n)+1)`
-/

namespace A112805.P15560319882486747002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A268598 n + 1).toNat

end

end A112805.P15560319882486747002

/-! ## A112805.P14940016032683173036

`A000196(or(1, A268598(n)))`
-/

namespace A112805.P14940016032683173036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (Int.lor 1 (A268598 n)).toNat

end

end A112805.P14940016032683173036

/-! ## A112805.P4945840001351345623

`A000196(xor(1, A268598(n)))`
-/

namespace A112805.P4945840001351345623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (Int.xor 1 (A268598 n)).toNat

end

end A112805.P4945840001351345623

/-! ## A112805.P16557258827223098928

`A075119(A268598(n)+A007318(n))`
-/

namespace A112805.P16557258827223098928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075119 (A268598 n + A007318 n).toNat

end

end A112805.P16557258827223098928

/-!
# A112806: Expansion of solution of functional equation.

The programs for A112806, there is no canonical definition to state claims against.
-/

/-! ## A112806.P15919358468647442839

`A097724(A046092(n))/(n+1)`
-/

namespace A112806.P15919358468647442839
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A097724 (A046092 n).toNat : ℚ) / (n + 1 : ℚ)

end

end A112806.P15919358468647442839

/-! ## A112806.P1667594325686249224

`A300763(A246657(n+1))`
-/

namespace A112806.P1667594325686249224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300763 (A246657 (n + 1)).toNat

end

end A112806.P1667594325686249224

/-! ## A112806.P1807325154147856268

`A342854(A342854(n))+A257562(n)`
-/

namespace A112806.P1807325154147856268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342854 (A342854 n).toNat + A257562 n

end

end A112806.P1807325154147856268

/-! ## A112806.P14767936038396212569

`A287211(A004891(n+1))+A036420(n)`
-/

namespace A112806.P14767936038396212569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287211 (A004891 (n + 1)).toNat + A036420 n

end

end A112806.P14767936038396212569

/-!
# A112807: Expansion of solution of functional equation.

The programs for A112807, there is no canonical definition to state claims against.
-/

/-! ## A112807.P1726322186274961374

`A097724(A062728(n))/Δ[n²]`
-/

namespace A112807.P1726322186274961374
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A097724 (A062728 n).toNat : ℚ) / ((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℚ)

end

end A112807.P1726322186274961374

/-! ## A112807.P17052224456580682967

`A097724(A062728(n))%(5-A086940(n+1))/(2*n+1)`
-/

namespace A112807.P17052224456580682967
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.tmod (A097724 (A062728 n).toNat) (5 - A086940 (n + 1)) : ℚ) / (2 * n + 1 : ℚ)

end

end A112807.P17052224456580682967

/-! ## A112807.P3857624971420466561

`A008619(floor(floor(A105480(n+4)/2)/2))`
-/

namespace A112807.P3857624971420466561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 ⌊(⌊(A105480 (n + 4) : ℚ) / 2⌋ : ℚ) / 2⌋.toNat

end

end A112807.P3857624971420466561

/-!
# A112808: Expansion of solution of functional equation.

The programs for A112808, there is no canonical definition to state claims against.
-/

/-! ## A112808.P5785836423000809551

`A004526(A124303(n)+A086581(n))`
-/

namespace A112808.P5785836423000809551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A124303 n + A086581 n).toNat

end

end A112808.P5785836423000809551

/-! ## A112808.P4796693291469149512

`A035349(n)-A011738(A191814(n))`
-/

namespace A112808.P4796693291469149512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035349 n - A011738 (A191814 n).toNat

end

end A112808.P4796693291469149512

/-! ## A112808.P5892441746036565319

`A035349(n)-A011738(A202059(n))`
-/

namespace A112808.P5892441746036565319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035349 n - A011738 (A202059 n).toNat

end

end A112808.P5892441746036565319

/-! ## A112808.P2057559111967866648

`A035349(n)-A342019(A001764(n))`
-/

namespace A112808.P2057559111967866648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035349 n - A342019 (A001764 n).toNat

end

end A112808.P2057559111967866648

/-! ## A112808.P6410954485362264825

`A035349(n)-A270417(A150819(n))`
-/

namespace A112808.P6410954485362264825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035349 n - A270417 (A150819 n).toNat

end

end A112808.P6410954485362264825

/-!
# A112809: Positions of records in A110566.

The programs for A112809, there is no canonical definition to state claims against.
-/

/-! ## A112809.P17646025858531871432

`record[A126262(∑[n+1])]`
-/

namespace A112809.P17646025858531871432
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126262 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A112809.P17646025858531871432

/-! ## A112809.P11122434301119915718

`record[gcd(A089840(n), A126262(n+1))]`
-/

namespace A112809.P11122434301119915718
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A089840 n) (A126262 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A112809.P11122434301119915718

/-!
# A112810: Records in A110566 (lcm{1,2,...,n}/denominator of harmonic number H(n)).

The programs for A112810, there is no canonical definition to state claims against.
-/

/-! ## A112810.P13722725205787240243

`A110566(A112809(n+1))`
-/

namespace A112810.P13722725205787240243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110566 (A112809 (n + 1)).toNat

end

end A112810.P13722725205787240243

/-! ## A112810.P13573745554841484415

`record[A110566(n+1)]`
-/

namespace A112810.P13573745554841484415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110566 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A112810.P13573745554841484415

/-! ## A112810.P1877118376617160104

`record[or(1, A110566(A103517(n)))]`
-/

namespace A112810.P1877118376617160104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A110566 (A103517 n).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A112810.P1877118376617160104

/-! ## A112810.P6505055953428687040

`record[A110566(A008619(n))]%(4*9^n)`
-/

namespace A112810.P6505055953428687040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110566 (A008619 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (4 * 9 ^ n : ℤ)

end

end A112810.P6505055953428687040

/-! ## A112810.P12624420258557211983

`record[(-1)^n*A110566(A123108(2*n))]`
-/

namespace A112810.P12624420258557211983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A110566 (A123108 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A112810.P12624420258557211983

/-!
# A112811: Terms of A110566 grouped.

The programs for A112811, there is no canonical definition to state claims against.
-/

/-! ## A112811.P15308271670266105207

`A110566(∑[A112812(n+1)])`
-/

namespace A112811.P15308271670266105207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112812 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110566 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A112811.P15308271670266105207

/-!
# A112813: Numbers k such that lcm(1,2,3,...,k)/3 equals the denominator of the k-th harmonic number H(k).

The programs for A112813, the canonical program `A112813.P6439457678955944330` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A112813 has offset 1).

The definition of A112813 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 588 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A112813.P6439457678955944330

`eq[3, A110566(n+1)]+1`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A112813

/-- `eq[3, A110566(n+1)]+1` -/
def P6439457678955944330.Spec : Prop :=
  ∀ n, (P6439457678955944330.a n : ℤ) = A112813 (n + 1)

theorem P6439457678955944330.correct : P6439457678955944330.Spec := by
  intro n
  simp only [A112813, Nat.add_sub_cancel]

end A112813

/-! ## A112813.P1434584149989342168

`eq[3, A110566(n^floor(atan(n)))]`
-/

namespace A112813.P1434584149989342168
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110566 (SequenceMachineLib.roundAway ((n : ℚ) ^ (⌊Real.arctan (n : ℝ)⌋ : ℤ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A112813.P1434584149989342168

namespace A112813

/-- `eq[3, A110566(n^floor(atan(n)))]` -/
def P1434584149989342168.Spec : Prop :=
  ∀ n, (P1434584149989342168.a n : ℤ) = A112813 (n + 1)

end A112813

/-! ## A112813.P6247610742524587905

`eq[3, A110566(A028310(n))]`
-/

namespace A112813.P6247610742524587905
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110566 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A112813.P6247610742524587905

namespace A112813

/-- `eq[3, A110566(A028310(n))]` -/
def P6247610742524587905.Spec : Prop :=
  ∀ n, (P6247610742524587905.a n : ℤ) = A112813 (n + 1)

end A112813

/-! ## A112813.P13317873317357017266

`eq[3, A110566(A000007(n)+n)]`
-/

namespace A112813.P13317873317357017266
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110566 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A112813.P13317873317357017266

namespace A112813

/-- `eq[3, A110566(A000007(n)+n)]` -/
def P13317873317357017266.Spec : Prop :=
  ∀ n, (P13317873317357017266.a n : ℤ) = A112813 (n + 1)

end A112813

/-! ## A112813.P11570013713662362147

`eq[3, A110566(A000038(n)+n)]`
-/

namespace A112813.P11570013713662362147
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110566 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A112813.P11570013713662362147

namespace A112813

/-- `eq[3, A110566(A000038(n)+n)]` -/
def P11570013713662362147.Spec : Prop :=
  ∀ n, (P11570013713662362147.a n : ℤ) = A112813 (n + 1)

end A112813

/-! ## A112813.P17818555775203349863

`eq[3, A110566(A123108(2*n))]`
-/

namespace A112813.P17818555775203349863
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110566 (A123108 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A112813.P17818555775203349863

namespace A112813

/-- `eq[3, A110566(A123108(2*n))]` -/
def P17818555775203349863.Spec : Prop :=
  ∀ n, (P17818555775203349863.a n : ℤ) = A112813 (n + 1)

end A112813

/-! ## A112813.P11319228186503254162

`eq[3, A110566(A233583(n+1))]`
-/

namespace A112813.P11319228186503254162
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110566 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A112813.P11319228186503254162

namespace A112813

/-- `eq[3, A110566(A233583(n+1))]` -/
def P11319228186503254162.Spec : Prop :=
  ∀ n, (P11319228186503254162.a n : ℤ) = A112813 (n + 1)

end A112813

/-!
# A112815: Numbers k such that lcm(1,2,3,...,k)/7 equals the denominator of the k-th harmonic number H(k).

The programs for A112815, there is no canonical definition to state claims against.
-/

/-! ## A112815.P15097476556392709580

`A341294(A247970(n+3))+n-4`
-/

namespace A112815.P15097476556392709580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341294 (A247970 (n + 3)).toNat + ((n : ℤ) - 4)

end

end A112815.P15097476556392709580

/-!
# A112816: Numbers k such that lcm(1,2,3,...,k)/9 equals the denominator of the k-th harmonic number H(k).

The programs for A112816, the canonical program `A112816.P6858448339143821751` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A112816 has offset 1).

The definition of A112816 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 446 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A112816.P6858448339143821751

`eq[9, A110566(n+1)]+1`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A112816

/-- `eq[9, A110566(n+1)]+1` -/
def P6858448339143821751.Spec : Prop :=
  ∀ n, (P6858448339143821751.a n : ℤ) = A112816 (n + 1)

theorem P6858448339143821751.correct : P6858448339143821751.Spec := by
  intro n
  simp only [A112816, Nat.add_sub_cancel]

end A112816

/-! ## A112816.P1506330950176447593

`eq[9, A110566(A028310(n))]`
-/

namespace A112816.P1506330950176447593
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110566 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A112816.P1506330950176447593

namespace A112816

/-- `eq[9, A110566(A028310(n))]` -/
def P1506330950176447593.Spec : Prop :=
  ∀ n, (P1506330950176447593.a n : ℤ) = A112816 (n + 1)

end A112816

/-! ## A112816.P4934188580998435989

`A020725(eq[9, A110566(n+1)])`
-/

namespace A112816.P4934188580998435989
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110566 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A112816.P4934188580998435989

namespace A112816

/-- `A020725(eq[9, A110566(n+1)])` -/
def P4934188580998435989.Spec : Prop :=
  ∀ n, P4934188580998435989.a n = A112816 (n + 1)

end A112816

/-! ## A112816.P5839679272796462895

`eq[9, A110566(A138153(n+1))]`
-/

namespace A112816.P5839679272796462895
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110566 (A138153 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A112816.P5839679272796462895

namespace A112816

/-- `eq[9, A110566(A138153(n+1))]` -/
def P5839679272796462895.Spec : Prop :=
  ∀ n, (P5839679272796462895.a n : ℤ) = A112816 (n + 1)

end A112816

/-! ## A112816.P4608676781568438471

`eq[9, A110566(A000007(n)+n)]`
-/

namespace A112816.P4608676781568438471
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110566 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A112816.P4608676781568438471

namespace A112816

/-- `eq[9, A110566(A000007(n)+n)]` -/
def P4608676781568438471.Spec : Prop :=
  ∀ n, (P4608676781568438471.a n : ℤ) = A112816 (n + 1)

end A112816

/-! ## A112816.P3190118591489697728

`eq[9, A110566(A000038(n)+n)]`
-/

namespace A112816.P3190118591489697728
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110566 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A112816.P3190118591489697728

namespace A112816

/-- `eq[9, A110566(A000038(n)+n)]` -/
def P3190118591489697728.Spec : Prop :=
  ∀ n, (P3190118591489697728.a n : ℤ) = A112816 (n + 1)

end A112816

/-! ## A112816.P3173919564369444579

`eq[9, A110566(A123108(2*n))]`
-/

namespace A112816.P3173919564369444579
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110566 (A123108 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A112816.P3173919564369444579

namespace A112816

/-- `eq[9, A110566(A123108(2*n))]` -/
def P3173919564369444579.Spec : Prop :=
  ∀ n, (P3173919564369444579.a n : ℤ) = A112816 (n + 1)

end A112816

/-!
# A112817: Numbers k such that lcm(1,2,3,...,k)/11 equals the denominator of the k-th harmonic number H(k).

The programs for A112817, the canonical program `A112817.P8263414269983312733` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A112817 has offset 1).

The definition of A112817 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 614 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A112817.P8263414269983312733

`eq[11, A110566(A028310(n))]`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A112817

/-- `eq[11, A110566(A028310(n))]` -/
def P8263414269983312733.Spec : Prop :=
  ∀ n, (P8263414269983312733.a n : ℤ) = A112817 (n + 1)

theorem P8263414269983312733.correct : P8263414269983312733.Spec := by
  intro n
  simp only [A112817, Nat.add_sub_cancel]

end A112817

/-! ## A112817.P13627930281713408738

`A065475(eq[11, A110566(n+1)])`
-/

namespace A112817.P13627930281713408738
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110566 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A112817.P13627930281713408738

namespace A112817

/-- `A065475(eq[11, A110566(n+1)])` -/
def P13627930281713408738.Spec : Prop :=
  ∀ n, P13627930281713408738.a n = A112817 (n + 1)

end A112817

/-! ## A112817.P17154810908336169911

`eq[11, A110566(A233583(n+1))]`
-/

namespace A112817.P17154810908336169911
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110566 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A112817.P17154810908336169911

namespace A112817

/-- `eq[11, A110566(A233583(n+1))]` -/
def P17154810908336169911.Spec : Prop :=
  ∀ n, (P17154810908336169911.a n : ℤ) = A112817 (n + 1)

end A112817

/-! ## A112817.P14615559049715686805

`A124107(n+1)%57+32`
-/

namespace A112817.P14615559049715686805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A124107 (n + 1)) 57 + 32

end

end A112817.P14615559049715686805

namespace A112817

/-- `A124107(n+1)%57+32` -/
def P14615559049715686805.Spec : Prop :=
  ∀ n, P14615559049715686805.a n = A112817 (n + 1)

end A112817

/-!
# A112823: Greatest p less than or equal to n with p and q both prime, p+q = 2n.

The programs for A112823, there is no canonical definition to state claims against.
-/

/-! ## A112823.P7571529216412419971

`n+2-A047160(n+2)`
-/

namespace A112823.P7571529216412419971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) - A047160 (n + 2)

end

end A112823.P7571529216412419971

/-! ## A112823.P15752700824380545207

`2*(n+2)-A234345(n+2)`
-/

namespace A112823.P15752700824380545207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 2) : ℤ) - A234345 (n + 2)

end

end A112823.P15752700824380545207

/-! ## A112823.P1879810258800295215

`2-A066285(n+2)/2+n`
-/

namespace A112823.P1879810258800295215
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 - (A066285 (n + 2) : ℚ) / 2 + (n : ℚ)

end

end A112823.P1879810258800295215

/-! ## A112823.P11902523777370639350

`A022958(A047160(n+2))+n`
-/

namespace A112823.P11902523777370639350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022958 (A047160 (n + 2)).toNat + (n : ℤ)

end

end A112823.P11902523777370639350

/-! ## A112823.P17858031950413952986

`A112824(n+2)+A020481(n+2)`
-/

namespace A112823.P17858031950413952986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112824 (n + 2) + A020481 (n + 2)

end

end A112823.P17858031950413952986

/-! ## A112823.P7521563486932099684

`2-A001281(A066285(n+2))+n`
-/

namespace A112823.P7521563486932099684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A001281 (A066285 (n + 2)).toNat + (n : ℤ)

end

end A112823.P7521563486932099684

/-! ## A112823.P4442317524477728186

`A234345(n+2)-A066285(n+2)`
-/

namespace A112823.P4442317524477728186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234345 (n + 2) - A066285 (n + 2)

end

end A112823.P4442317524477728186

/-! ## A112823.P11316186458123011626

`2-A325142(n+2)+n`
-/

namespace A112823.P11316186458123011626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A325142 (n + 2) + (n : ℤ)

end

end A112823.P11316186458123011626

/-! ## A112823.P11111949711909680372

`A331634(2*(n+2))`
-/

namespace A112823.P11111949711909680372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331634 (2 * (n + 2))

end

end A112823.P11111949711909680372

/-! ## A112823.P17041857467743673552

`A184995(A045919(n+2)+1)`
-/

namespace A112823.P17041857467743673552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184995 (A045919 (n + 2) + 1).toNat

end

end A112823.P17041857467743673552

/-! ## A112823.P10254044311366998281

`A184995(A045922(n+2)+2)`
-/

namespace A112823.P10254044311366998281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184995 (A045922 (n + 2) + 2).toNat

end

end A112823.P10254044311366998281

/-! ## A112823.P9902693800137601892

`A355250(2*(n+3))`
-/

namespace A112823.P9902693800137601892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355250 (2 * (n + 3))

end

end A112823.P9902693800137601892

/-! ## A112823.P13561870326297417455

`A020639(A102084(n+2))`
-/

namespace A112823.P13561870326297417455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A102084 (n + 2)).toNat

end

end A112823.P13561870326297417455

/-! ## A112823.P11725968893727888015

`A020639(A099303(Δ[A028552(n)]))`
-/

namespace A112823.P11725968893727888015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028552 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A099303 (f1 (n + 1) - f1 n).toNat).toNat

end

end A112823.P11725968893727888015

/-! ## A112823.P14480050787343041468

`A020639(A099303(2*(n+1))+Δ[A099303(2*(n+1))])`
-/

namespace A112823.P14480050787343041468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099303 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A099303 (2 * (n + 1)) + (f1 (n + 1) - f1 n)).toNat

end

end A112823.P14480050787343041468

/-!
# A112824: Consider the Goldbach conjecture that every even number 2n=p+p' with p<=p'. Consider all such Goldbach partitions; a(n) is the difference between the largest p and the smallest p. Call this difference the Goldbach gap.

The programs for A112824, there is no canonical definition to state claims against.
-/

/-! ## A112824.P7216773955529710225

`A047949(n+2)-A047160(n+2)`
-/

namespace A112824.P7216773955529710225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047949 (n + 2) - A047160 (n + 2)

end

end A112824.P7216773955529710225

/-! ## A112824.P4597407224888970430

`A112823(n+2)-A020481(n+2)`
-/

namespace A112824.P4597407224888970430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112823 (n + 2) - A020481 (n + 2)

end

end A112824.P4597407224888970430

/-! ## A112824.P16987201980417569147

`A020482(n+2)-A234345(n+2)`
-/

namespace A112824.P16987201980417569147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020482 (n + 2) - A234345 (n + 2)

end

end A112824.P16987201980417569147

/-! ## A112824.P8287890905654635189

`A047949(n+2)-A066285(n+2)/2`
-/

namespace A112824.P8287890905654635189
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A047949 (n + 2) : ℚ) - (A066285 (n + 2) : ℚ) / 2

end

end A112824.P8287890905654635189

/-! ## A112824.P1590437881485750842

`A020482(n+2)-(A047160(n+2)+2+n)`
-/

namespace A112824.P1590437881485750842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020482 (n + 2) - (A047160 (n + 2) + 2 + (n : ℤ))

end

end A112824.P1590437881485750842

/-! ## A112824.P11526848180282277464

`A020482(n+2)-(A112823(n+2)+A066285(n+2))`
-/

namespace A112824.P11526848180282277464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020482 (n + 2) - (A112823 (n + 2) + A066285 (n + 2))

end

end A112824.P11526848180282277464

/-! ## A112824.P2272200173533911876

`A234345(n+2)-(A066285(n+2)+A020481(n+2))`
-/

namespace A112824.P2272200173533911876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234345 (n + 2) - (A066285 (n + 2) + A020481 (n + 2))

end

end A112824.P2272200173533911876

/-! ## A112824.P4296593108435321744

`A047949(n+2)-A325142(n+2)`
-/

namespace A112824.P4296593108435321744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047949 (n + 2) - A325142 (n + 2)

end

end A112824.P4296593108435321744

/-! ## A112824.P12392774389426703363

`A303603(n+2)/2-A047160(n+2)`
-/

namespace A112824.P12392774389426703363
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A303603 (n + 2) : ℚ) / 2 - (A047160 (n + 2) : ℚ)

end

end A112824.P12392774389426703363

/-! ## A112824.P4916941171712982129

`(A303603(n+2)-A066285(n+2))/2`
-/

namespace A112824.P4916941171712982129
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A303603 (n + 2) - A066285 (n + 2) : ℚ) / 2

end

end A112824.P4916941171712982129

/-!
# A112826: Conjectured values of A112825 which are 0.

The programs for A112826, there is no canonical definition to state claims against.
-/

/-! ## A112826.P5169407792681122776

`2*eq[0, A112825(n)]`
-/

namespace A112826.P5169407792681122776
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112825 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A112826.P5169407792681122776

/-! ## A112826.P2666265099552694799

`A004277(eq[0, A112825(n)])`
-/

namespace A112826.P2666265099552694799
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112825 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A112826.P2666265099552694799

/-! ## A112826.P10263294113026638021

`A005843(eq[0, A112825(n)])`
-/

namespace A112826.P10263294113026638021
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112825 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A112826.P10263294113026638021

/-! ## A112826.P8581148633278312675

`A004273(eq[0, A112825(n)])+1`
-/

namespace A112826.P8581148633278312675
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112825 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) + 1

end

end A112826.P8581148633278312675

/-! ## A112826.P9940172219117109117

`A004274(eq[0, A112825(n)])+3`
-/

namespace A112826.P9940172219117109117
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112825 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004274 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) + 3

end

end A112826.P9940172219117109117

/-! ## A112826.P14610853015423090971

`A008574(eq[0, A112825(n)])/2`
-/

namespace A112826.P14610853015423090971
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112825 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008574 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) : ℚ) / 2

end

end A112826.P14610853015423090971

/-! ## A112826.P14816964491891111404

`2*lt[A112825(n), A000005(or(1, n))]`
-/

namespace A112826.P14816964491891111404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112825 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (Nat.lor 1 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A112826.P14816964491891111404

/-!
# A112828: a(n) is the decimal period of the fractional part of BernoulliB(2n).

The programs for A112828, there is no canonical definition to state claims against.
-/

/-! ## A112828.P9107449634149981359

`A051626(A002445(n))`
-/

namespace A112828.P9107449634149981359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051626 (A002445 n).toNat

end

end A112828.P9107449634149981359

/-! ## A112828.P18222292900642850181

`2*n/A112829(abs(1-n)+1)`
-/

namespace A112828.P18222292900642850181
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * n : ℚ) / (A112829 (|1 - (n : ℤ)| + 1).toNat : ℚ)

end

end A112828.P18222292900642850181

/-! ## A112828.P2870365952034713654

`2*n/A112829(A028310(n))`
-/

namespace A112828.P2870365952034713654
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * ((n : ℚ) / (A112829 (A028310 n).toNat : ℚ))

end

end A112828.P2870365952034713654

/-! ## A112828.P13904144067222936933

`floor(A004277(n)/A112829(A028310(n)))`
-/

namespace A112828.P13904144067222936933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A004277 n : ℚ) / (A112829 (A028310 n).toNat : ℚ)⌋

end

end A112828.P13904144067222936933

/-! ## A112828.P359115885336350399

`A051626(A001897(n))`
-/

namespace A112828.P359115885336350399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051626 (A001897 n).toNat

end

end A112828.P359115885336350399

/-!
# A112829: a(n) is 2n divided by A112828(n).

The programs for A112829, there is no canonical definition to state claims against.
-/

/-! ## A112829.P4268315212222693060

`2*(n+1)/A051626(A002445(n+1))`
-/

namespace A112829.P4268315212222693060
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℚ) / (A051626 (A002445 (n + 1)).toNat : ℚ)

end

end A112829.P4268315212222693060

/-! ## A112829.P11745893841595412864

`2*(n+1)/A112828(n+1)`
-/

namespace A112829.P11745893841595412864
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * ((n + 1 : ℚ) / (A112828 (n + 1) : ℚ))

end

end A112829.P11745893841595412864

/-! ## A112829.P17140436875608537114

`Δ[A002378(n)]/A112828(n+1)`
-/

namespace A112829.P17140436875608537114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (A112828 (n + 1) : ℚ)

end

end A112829.P17140436875608537114

/-! ## A112829.P13857883203745324615

`Δ[A014206(n)]/A112828(n+1)`
-/

namespace A112829.P13857883203745324615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014206 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (A112828 (n + 1) : ℚ)

end

end A112829.P13857883203745324615

/-! ## A112829.P4556217103929854652

`Δ[A027689(n)]/A112828(n+1)`
-/

namespace A112829.P4556217103929854652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027689 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (A112828 (n + 1) : ℚ)

end

end A112829.P4556217103929854652

/-! ## A112829.P18088073593854549754

`Δ[A027691(n)]/A112828(n+1)`
-/

namespace A112829.P18088073593854549754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027691 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (A112828 (n + 1) : ℚ)

end

end A112829.P18088073593854549754

/-! ## A112829.P14563818075683028929

`record[A133265(n)]/A112828(n+1)`
-/

namespace A112829.P14563818075683028929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133265 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / (A112828 (n + 1) : ℚ)

end

end A112829.P14563818075683028929

/-! ## A112829.P5293250459667837069

`A004277(n+1)/A112828(n+1)`
-/

namespace A112829.P5293250459667837069
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004277 (n + 1) : ℚ) / (A112828 (n + 1) : ℚ)

end

end A112829.P5293250459667837069

/-! ## A112829.P7147911203930212579

`A005843(n+1)/A112828(n+1)`
-/

namespace A112829.P7147911203930212579
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005843 (n + 1) : ℚ) / (A112828 (n + 1) : ℚ)

end

end A112829.P7147911203930212579

/-! ## A112829.P3286695775958018696

`A004275(n+2)/A112828(n+1)`
-/

namespace A112829.P3286695775958018696
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004275 (n + 2) : ℚ) / (A112828 (n + 1) : ℚ)

end

end A112829.P3286695775958018696

/-!
# A112830: Table of number of domino tilings of generalized Aztec pillows of type (1, ..., 1, 3, 1, ..., 1)_n.

The programs for A112830, there is no canonical definition to state claims against.
-/

/-! ## A112830.P9631248967747718273

`(A008459(n)+A054143(n)²)/2`
-/

namespace A112830.P9631248967747718273
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008459 n + A054143 n ^ 2 : ℚ) / 2

end

end A112830.P9631248967747718273

/-! ## A112830.P13690611052511123546

`(A007318(n)²+A054143(n)²)/2`
-/

namespace A112830.P13690611052511123546
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007318 n ^ 2 + A054143 n ^ 2 : ℚ) / 2

end

end A112830.P13690611052511123546

/-! ## A112830.P6518192431109130412

`(A130595(n)²+A054143(n)²)/2`
-/

namespace A112830.P6518192431109130412
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A130595 n ^ 2 + A054143 n ^ 2 : ℚ) / 2

end

end A112830.P6518192431109130412

/-! ## A112830.P2747837459463843840

`(A007318(n)-A008949(n))²+A008949(n)²`
-/

namespace A112830.P2747837459463843840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A007318 n - A008949 n) ^ 2 + A008949 n ^ 2

end

end A112830.P2747837459463843840

/-! ## A112830.P729799026483745921

`A014682(A008459(n)+A054143(n)²)`
-/

namespace A112830.P729799026483745921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A008459 n + A054143 n ^ 2).toNat

end

end A112830.P729799026483745921

/-!
# A112831: Number of non-intersecting cycle systems in a particular directed graph.

The programs for A112831, the canonical program `A112831.P8253818387917039439` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A112831 has offset 0).

The definition of A112831 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A112831.P8253818387917039439

`7*a(n-1)-9*a(n-2)` with `a(0)=1, a(1)=2`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A112831

/-- `7*a(n-1)-9*a(n-2)` -/
def P8253818387917039439.Spec : Prop :=
  ∀ n, P8253818387917039439.a n = A112831 n

theorem P8253818387917039439.correct : P8253818387917039439.Spec := by
  intro n
  simp only [A112831]

end A112831

/-! ## A112831.P7753364078491129315

`ogf((1-5x)/(1-7x+9x^2))`
-/

namespace A112831.P7753364078491129315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -5] [1, -7, 9] n

end

end A112831.P7753364078491129315

namespace A112831

/-- `ogf((1-5x)/(1-7x+9x^2))` -/
def P7753364078491129315.Spec : Prop :=
  ∀ n, P7753364078491129315.a n = A112831 n

end A112831

/-! ## A112831.P14172850013619593610

`record[3*a(n-2)-a(n-1)]` with `a(0)=1, a(1)=1`
-/

namespace A112831.P14172850013619593610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  3 * f1 (n - 2) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A112831.P14172850013619593610

namespace A112831

/-- `record[3*a(n-2)-a(n-1)]` -/
def P14172850013619593610.Spec : Prop :=
  ∀ n, P14172850013619593610.a n = A112831 n

end A112831

/-! ## A112831.P17474252747009140286

`record[A140165(n+1)]`
-/

namespace A112831.P17474252747009140286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140165 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A112831.P17474252747009140286

namespace A112831

/-- `record[A140165(n+1)]` -/
def P17474252747009140286.Spec : Prop :=
  ∀ n, P17474252747009140286.a n = A112831 n

end A112831

/-! ## A112831.P5888292745357557292

`A165310(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A112831.P5888292745357557292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A165310 (n - 1) + a (n - 1)

end

end A112831.P5888292745357557292

namespace A112831

/-- `A165310(n-1)+a(n-1)` -/
def P5888292745357557292.Spec : Prop :=
  ∀ n, P5888292745357557292.a n = A112831 n

end A112831

/-! ## A112831.P3115653994090143057

`A140165(A004277(n))`
-/

namespace A112831.P3115653994090143057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140165 (A004277 n).toNat

end

end A112831.P3115653994090143057

namespace A112831

/-- `A140165(A004277(n))` -/
def P3115653994090143057.Spec : Prop :=
  ∀ n, P3115653994090143057.a n = A112831 n

end A112831

/-! ## A112831.P4967384042150918314

`A140165(A004275(n+1))`
-/

namespace A112831.P4967384042150918314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140165 (A004275 (n + 1)).toNat

end

end A112831.P4967384042150918314

namespace A112831

/-- `A140165(A004275(n+1))` -/
def P4967384042150918314.Spec : Prop :=
  ∀ n, P4967384042150918314.a n = A112831 n

end A112831

/-! ## A112831.P6741838725486209332

`A140165(A000007(n)+2*n)`
-/

namespace A112831.P6741838725486209332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140165 (A000007 n + (2 * n : ℤ)).toNat

end

end A112831.P6741838725486209332

namespace A112831

/-- `A140165(A000007(n)+2*n)` -/
def P6741838725486209332.Spec : Prop :=
  ∀ n, P6741838725486209332.a n = A112831 n

end A112831

/-! ## A112831.P8064579997081266772

`A140165(A000007(n)+n+n)`
-/

namespace A112831.P8064579997081266772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140165 (A000007 n + (n : ℤ) + (n : ℤ)).toNat

end

end A112831.P8064579997081266772

namespace A112831

/-- `A140165(A000007(n)+n+n)` -/
def P8064579997081266772.Spec : Prop :=
  ∀ n, P8064579997081266772.a n = A112831 n

end A112831

/-! ## A112831.P13640279125691339796

`A140165(lt[A140165(n+2), 3]+1)`
-/

namespace A112831.P13640279125691339796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140165 (n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140165 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1)

end

end A112831.P13640279125691339796

namespace A112831

/-- `A140165(lt[A140165(n+2), 3]+1)` -/
def P13640279125691339796.Spec : Prop :=
  ∀ n, P13640279125691339796.a n = A112831 n

end A112831

/-! ## A112831.P17527361668997926123

`A140165(A008683((n+1)²)+2*n)`
-/

namespace A112831.P17527361668997926123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140165 (A008683 ((n + 1) ^ 2) + (2 * n : ℤ)).toNat

end

end A112831.P17527361668997926123

namespace A112831

/-- `A140165(A008683((n+1)²)+2*n)` -/
def P17527361668997926123.Spec : Prop :=
  ∀ n, P17527361668997926123.a n = A112831 n

end A112831

/-! ## A112831.P1219909186684444982

`record[∑[A182228(n)]+1]`
-/

namespace A112831.P1219909186684444982
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182228 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A112831.P1219909186684444982

namespace A112831

/-- `record[∑[A182228(n)]+1]` -/
def P1219909186684444982.Spec : Prop :=
  ∀ n, P1219909186684444982.a n = A112831 n

end A112831

/-! ## A112831.P3417711583864657455

`record[a(n-1)-A140167(n)]` with `a(0)=1, a(1)=2`
-/

namespace A112831.P3417711583864657455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  f1 (n - 1) - A140167 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A112831.P3417711583864657455

namespace A112831

/-- `record[a(n-1)-A140167(n)]` -/
def P3417711583864657455.Spec : Prop :=
  ∀ n, P3417711583864657455.a n = A112831 n

end A112831

/-! ## A112831.P938662174319437877

`A182228(2*n)+A052533(2*n)`
-/

namespace A112831.P938662174319437877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182228 (2 * n) + A052533 (2 * n)

end

end A112831.P938662174319437877

namespace A112831

/-- `A182228(2*n)+A052533(2*n)` -/
def P938662174319437877.Spec : Prop :=
  ∀ n, P938662174319437877.a n = A112831 n

end A112831

/-! ## A112831.P2826220679727497821

`A075118(2*n)-A006138(2*n)`
-/

namespace A112831.P2826220679727497821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075118 (2 * n) - A006138 (2 * n)

end

end A112831.P2826220679727497821

namespace A112831

/-- `A075118(2*n)-A006138(2*n)` -/
def P2826220679727497821.Spec : Prop :=
  ∀ n, P2826220679727497821.a n = A112831 n

end A112831

/-! ## A112831.P5331263604786418944

`A140165(2*n+1)+A099579(2*n)`
-/

namespace A112831.P5331263604786418944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140165 (2 * n + 1) + A099579 (2 * n)

end

end A112831.P5331263604786418944

namespace A112831

/-- `A140165(2*n+1)+A099579(2*n)` -/
def P5331263604786418944.Spec : Prop :=
  ∀ n, P5331263604786418944.a n = A112831 n

end A112831

/-! ## A112831.P14849405284855609730

`A006138(2*n)-A052533(2*n+1)`
-/

namespace A112831.P14849405284855609730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006138 (2 * n) - A052533 (2 * n + 1)

end

end A112831.P14849405284855609730

namespace A112831

/-- `A006138(2*n)-A052533(2*n+1)` -/
def P14849405284855609730.Spec : Prop :=
  ∀ n, P14849405284855609730.a n = A112831 n

end A112831

/-! ## A112831.P2135804841315298335

`A140165(2*(n+1))-A052533(2*n)`
-/

namespace A112831.P2135804841315298335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140165 (2 * (n + 1)) - A052533 (2 * n)

end

end A112831.P2135804841315298335

namespace A112831

/-- `A140165(2*(n+1))-A052533(2*n)` -/
def P2135804841315298335.Spec : Prop :=
  ∀ n, P2135804841315298335.a n = A112831 n

end A112831

/-! ## A112831.P3447382693080212558

`A140165(2*n+1)-A182228(2*n)`
-/

namespace A112831.P3447382693080212558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140165 (2 * n + 1) - A182228 (2 * n)

end

end A112831.P3447382693080212558

namespace A112831

/-- `A140165(2*n+1)-A182228(2*n)` -/
def P3447382693080212558.Spec : Prop :=
  ∀ n, P3447382693080212558.a n = A112831 n

end A112831

/-! ## A112831.P2925501501092605511

`A006130(2*n)+2*A182228(2*n)`
-/

namespace A112831.P2925501501092605511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006130 (2 * n) + 2 * A182228 (2 * n)

end

end A112831.P2925501501092605511

namespace A112831

/-- `A006130(2*n)+2*A182228(2*n)` -/
def P2925501501092605511.Spec : Prop :=
  ∀ n, P2925501501092605511.a n = A112831 n

end A112831

/-!
# A112832: Number of non-intersecting cycle systems in a particular directed graph.

The programs for A112832, the canonical program `A112832.P15269968286075821072` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A112832 has offset 0).

The definition of A112832 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 176 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A112832.P12804748632892157724

`ogf((1-2x-3x^2+x^3)/(1-4x+4x^3-x^4))`
-/

namespace A112832.P12804748632892157724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2, -3, 1] [1, -4, 0, 4, -1] n

end

end A112832.P12804748632892157724

namespace A112832

/-- `ogf((1-2x-3x^2+x^3)/(1-4x+4x^3-x^4))` -/
def P12804748632892157724.Spec : Prop :=
  ∀ n, P12804748632892157724.a n = A112832 n

end A112832

/-! ## A112832.P15269968286075821072

`4*a(n-1)-(a(n-2)+gcd(2, n))` with `a(0)=1, a(1)=2`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A112832

/-- `4*a(n-1)-(a(n-2)+gcd(2, n))` -/
def P15269968286075821072.Spec : Prop :=
  ∀ n, P15269968286075821072.a n = A112832 n

theorem P15269968286075821072.correct : P15269968286075821072.Spec := by
  intro n
  simp only [A112832]

end A112832

/-! ## A112832.P17567680913386322834

`floor((sqrt(3)+2)*a(n-1))+n%2-2` with `a(0)=1`
-/

namespace A112832.P17567680913386322834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌊(Real.sqrt (3 : ℝ) + 2) * (a (n - 1) : ℝ)⌋ + ((n % 2 : ℕ) : ℤ) - 2

end

end A112832.P17567680913386322834

namespace A112832

/-- `floor((sqrt(3)+2)*a(n-1))+n%2-2` -/
def P17567680913386322834.Spec : Prop :=
  ∀ n, P17567680913386322834.a n = A112832 n

end A112832

/-! ## A112832.P14793423846024988943

`∑[3*(a(n-1)+a(n-2))-a(n-3)]+1` with `a(0)=0, a(1)=1, a(2)=3`
-/

namespace A112832.P14793423846024988943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 3] fun n f1 =>
  3 * (f1 (n - 1) + f1 (n - 2)) - f1 (n - 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A112832.P14793423846024988943

namespace A112832

/-- `∑[3*(a(n-1)+a(n-2))-a(n-3)]+1` -/
def P14793423846024988943.Spec : Prop :=
  ∀ n, P14793423846024988943.a n = A112832 n

end A112832

/-! ## A112832.P11707051052166902674

`∑[A109437(n)]+1`
-/

namespace A112832.P11707051052166902674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109437 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A112832.P11707051052166902674

namespace A112832

/-- `∑[A109437(n)]+1` -/
def P11707051052166902674.Spec : Prop :=
  ∀ n, P11707051052166902674.a n = A112832 n

end A112832

/-! ## A112832.P18013549386126192054

`floor(A006253(n)/2)+1`
-/

namespace A112832.P18013549386126192054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A006253 n : ℚ) / 2⌋ + 1

end

end A112832.P18013549386126192054

namespace A112832

/-- `floor(A006253(n)/2)+1` -/
def P18013549386126192054.Spec : Prop :=
  ∀ n, P18013549386126192054.a n = A112832 n

end A112832

/-! ## A112832.P17408673391910157008

`A001353(n)+a(n-2)` with `a(0)=1, a(1)=2`
-/

namespace A112832.P17408673391910157008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A001353 n + a (n - 2)

end

end A112832.P17408673391910157008

namespace A112832

/-- `A001353(n)+a(n-2)` -/
def P17408673391910157008.Spec : Prop :=
  ∀ n, P17408673391910157008.a n = A112832 n

end A112832

/-! ## A112832.P8898361159086017842

`2-(a(n-1)-A061278(n))` with `a(0)=1`
-/

namespace A112832.P8898361159086017842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 - (a (n - 1) - A061278 n)

end

end A112832.P8898361159086017842

namespace A112832

/-- `2-(a(n-1)-A061278(n))` -/
def P8898361159086017842.Spec : Prop :=
  ∀ n, P8898361159086017842.a n = A112832 n

end A112832

/-! ## A112832.P12646011770104794214

`a(n-2)+A052530(n)/2` with `a(0)=1, a(1)=2`
-/

namespace A112832.P12646011770104794214
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 2) + (A052530 n : ℚ) / 2

end

end A112832.P12646011770104794214

namespace A112832

/-- `a(n-2)+A052530(n)/2` -/
def P12646011770104794214.Spec : Prop :=
  ∀ n, P12646011770104794214.a n = (A112832 n : ℚ)

end A112832

/-! ## A112832.P15506453897344020171

`A249578(3*n)+a(n-2)` with `a(0)=1, a(1)=2`
-/

namespace A112832.P15506453897344020171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A249578 (3 * n) + a (n - 2)

end

end A112832.P15506453897344020171

namespace A112832

/-- `A249578(3*n)+a(n-2)` -/
def P15506453897344020171.Spec : Prop :=
  ∀ n, P15506453897344020171.a n = A112832 n

end A112832

/-! ## A112832.P9054041501202638879

`a(n-2)+∑[A001835(n)]-1` with `a(0)=1, a(1)=2`
-/

namespace A112832.P9054041501202638879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001835 n

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 2) + (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A112832.P9054041501202638879

namespace A112832

/-- `a(n-2)+∑[A001835(n)]-1` -/
def P9054041501202638879.Spec : Prop :=
  ∀ n, P9054041501202638879.a n = A112832 n

end A112832

/-! ## A112832.P14428277271968557476

`∑[A109437(A028310(n))]`
-/

namespace A112832.P14428277271968557476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109437 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112832.P14428277271968557476

namespace A112832

/-- `∑[A109437(A028310(n))]` -/
def P14428277271968557476.Spec : Prop :=
  ∀ n, P14428277271968557476.a n = A112832 n

end A112832

/-! ## A112832.P7634587687183571701

`A121401(n)-A242725(n)`
-/

namespace A112832.P7634587687183571701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121401 n - A242725 n

end

end A112832.P7634587687183571701

namespace A112832

/-- `A121401(n)-A242725(n)` -/
def P7634587687183571701.Spec : Prop :=
  ∀ n, P7634587687183571701.a n = A112832 n

end A112832

/-! ## A112832.P2598819487705228714

`∑[A109437(A004277(n)-n)]`
-/

namespace A112832.P2598819487705228714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109437 (A004277 n - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112832.P2598819487705228714

namespace A112832

/-- `∑[A109437(A004277(n)-n)]` -/
def P2598819487705228714.Spec : Prop :=
  ∀ n, P2598819487705228714.a n = A112832 n

end A112832

/-! ## A112832.P2308172244462999193

`A072335(n-A057427(n))+A057427(n)`
-/

namespace A112832.P2308172244462999193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072335 ((n : ℤ) - A057427 n).toNat + A057427 n

end

end A112832.P2308172244462999193

namespace A112832

/-- `A072335(n-A057427(n))+A057427(n)` -/
def P2308172244462999193.Spec : Prop :=
  ∀ n, P2308172244462999193.a n = A112832 n

end A112832

/-! ## A112832.P8636200817094082297

`∑[A002530(A123108(2*n))*A002530(n+1)]`
-/

namespace A112832.P8636200817094082297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002530 (A123108 (2 * n)).toNat * A002530 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112832.P8636200817094082297

namespace A112832

/-- `∑[A002530(A123108(2*n))*A002530(n+1)]` -/
def P8636200817094082297.Spec : Prop :=
  ∀ n, P8636200817094082297.a n = A112832 n

end A112832

/-! ## A112832.P3313918139202990188

`abs(A097947(n)+1)`
-/

namespace A112832.P3313918139202990188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A097947 n + 1|

end

end A112832.P3313918139202990188

namespace A112832

/-- `abs(A097947(n)+1)` -/
def P3313918139202990188.Spec : Prop :=
  ∀ n, P3313918139202990188.a n = A112832 n

end A112832

/-! ## A112832.P4885980821586523318

`ceil(Δ[A001571(n)/6])`
-/

namespace A112832.P4885980821586523318
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001571 n : ℚ) / 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈f1 (n + 1) - f1 n⌉

end

end A112832.P4885980821586523318

namespace A112832

/-- `ceil(Δ[A001571(n)/6])` -/
def P4885980821586523318.Spec : Prop :=
  ∀ n, P4885980821586523318.a n = A112832 n

end A112832

/-! ## A112832.P60335848976874612

`ceil(A001075(n+1)/6)`
-/

namespace A112832.P60335848976874612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A001075 (n + 1) : ℚ) / 6⌉

end

end A112832.P60335848976874612

namespace A112832

/-- `ceil(A001075(n+1)/6)` -/
def P60335848976874612.Spec : Prop :=
  ∀ n, P60335848976874612.a n = A112832 n

end A112832

/-! ## A112832.P2919969909335307057

`A242728(n+1)-∑[∑[A001835(n+1)]]`
-/

namespace A112832.P2919969909335307057
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001835 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242728 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112832.P2919969909335307057

namespace A112832

/-- `A242728(n+1)-∑[∑[A001835(n+1)]]` -/
def P2919969909335307057.Spec : Prop :=
  ∀ n, P2919969909335307057.a n = A112832 n

end A112832

/-!
# A112833: Number of domino tilings of a 3-pillow of order n.

The programs for A112833, there is no canonical definition to state claims against.
-/

/-! ## A112833.P8058920370089672945

`A112834(n)²*A112835(n)`
-/

namespace A112833.P8058920370089672945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112834 n ^ 2 * A112835 n

end

end A112833.P8058920370089672945

/-! ## A112833.P17249982652997923703

`A112834(n)²*A206625(n+3)`
-/

namespace A112833.P17249982652997923703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112834 n ^ 2 * A206625 (n + 3)

end

end A112833.P17249982652997923703

/-!
# A112834: Large-number statistic from the enumeration of domino tilings of a 3-pillow of order n.

The programs for A112834, there is no canonical definition to state claims against.
-/

/-! ## A112834.P7368453380871572256

`sqrt(A112833(n)/A112835(n))`
-/

namespace A112834.P7368453380871572256
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((A112833 n : ℚ) / (A112835 n : ℚ) : ℝ)

end

end A112834.P7368453380871572256

/-! ## A112834.P9789965979850835512

`(A112833(n)/A112835(n))^(A057427(n)/2)`
-/

namespace A112834.P9789965979850835512
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((A112833 n : ℚ) / (A112835 n : ℚ) : ℝ) ^ ((A057427 n : ℚ) / 2 : ℝ)

end

end A112834.P9789965979850835512

/-! ## A112834.P16769533749659557162

`(A112833(n)/A112835(n))^(A033999(n)²/2)`
-/

namespace A112834.P16769533749659557162
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((A112833 n : ℚ) / (A112835 n : ℚ) : ℝ) ^ ((A033999 n ^ 2 : ℚ) / 2 : ℝ)

end

end A112834.P16769533749659557162

/-! ## A112834.P8764469644153043160

`(A112833(n)/A112835(n))^(A001222(A340865(n+1))/2)`
-/

namespace A112834.P8764469644153043160
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((A112833 n : ℚ) / (A112835 n : ℚ) : ℝ) ^ ((A001222 (A340865 (n + 1)).toNat : ℚ) / 2 : ℝ)

end

end A112834.P8764469644153043160

/-!
# A112835: Small-number statistic from the enumeration of domino tilings of a 3-pillow of order n.

The programs for A112835, the canonical program `A112835.P12094844374488030953` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A112835 has offset 0).

The definition of A112835 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A112835.P12094844374488030953

`2*a(n-2)+2*a(n-4)+2*a(n-6)-a(n-8)` with `a(0)=1, a(1)=2, a(2)=5, a(3)=5, a(4)=13, a(5)=16, a(6)=37, a(7)=45`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A112835

/-- `2*a(n-2)+2*a(n-4)+2*a(n-6)-a(n-8)` -/
def P12094844374488030953.Spec : Prop :=
  ∀ n, P12094844374488030953.a n = A112835 n

theorem P12094844374488030953.correct : P12094844374488030953.Spec := by
  intro n
  simp only [A112835]

end A112835

/-! ## A112835.P8543783084746899819

`A206625(n+3)`
-/

namespace A112835.P8543783084746899819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206625 (n + 3)

end

end A112835.P8543783084746899819

namespace A112835

/-- `A206625(n+3)` -/
def P8543783084746899819.Spec : Prop :=
  ∀ n, P8543783084746899819.a n = A112835 n

end A112835

/-! ## A112835.P7321277402362963983

`A112833(n)/A112834(n)²`
-/

namespace A112835.P7321277402362963983
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A112833 n : ℚ) / (A112834 n ^ 2 : ℚ)

end

end A112835.P7321277402362963983

namespace A112835

/-- `A112833(n)/A112834(n)²` -/
def P7321277402362963983.Spec : Prop :=
  ∀ n, P7321277402362963983.a n = (A112835 n : ℚ)

end A112835

/-!
# A112836: Number of domino tilings of a 5-pillow of order n.

The programs for A112836, there is no canonical definition to state claims against.
-/

/-! ## A112836.P11732526590072848433

`A112837(n)²*A112838(n)`
-/

namespace A112836.P11732526590072848433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112837 n ^ 2 * A112838 n

end

end A112836.P11732526590072848433

/-! ## A112836.P4907423446983829797

`A055256(ceil(2^(n-1))^A101183(n+1))²*A112838(n)`
-/

namespace A112836.P4907423446983829797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055256 (SequenceMachineLib.roundAway ((⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉ : ℚ) ^ (A101183 (n + 1) : ℤ))).toNat ^ 2 * A112838 n

end

end A112836.P4907423446983829797

/-!
# A112837: Large-number statistic from the enumeration of domino tilings of a 5-pillow of order n.

The programs for A112837, there is no canonical definition to state claims against.
-/

/-! ## A112837.P8184045369773951272

`sqrt(A112836(n)/A112838(n))`
-/

namespace A112837.P8184045369773951272
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((A112836 n : ℚ) / (A112838 n : ℚ) : ℝ)

end

end A112837.P8184045369773951272

/-! ## A112837.P13925871060924480900

`A267597(A027341(n))`
-/

namespace A112837.P13925871060924480900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267597 (A027341 n).toNat

end

end A112837.P13925871060924480900

/-! ## A112837.P482384090932467204

`A267597(A035985(n))`
-/

namespace A112837.P482384090932467204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267597 (A035985 n).toNat

end

end A112837.P482384090932467204

/-! ## A112837.P8537537446865168455

`A267597(A112581(n))`
-/

namespace A112837.P8537537446865168455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267597 (A112581 n).toNat

end

end A112837.P8537537446865168455

/-! ## A112837.P13860947708884616735

`A267597(A184640(n))`
-/

namespace A112837.P13860947708884616735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267597 (A184640 n).toNat

end

end A112837.P13860947708884616735

/-!
# A112838: Small-number statistic from the enumeration of domino tilings of a 5-pillow of order n.

The programs for A112838, there is no canonical definition to state claims against.
-/

/-! ## A112838.P17870354773429880371

`A112836(n)/A112837(n)²`
-/

namespace A112838.P17870354773429880371
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A112836 n : ℚ) / (A112837 n ^ 2 : ℚ)

end

end A112838.P17870354773429880371

/-! ## A112838.P3693025732417713270

`A112836(n)/A055256(ceil(2^(n-1))^A101183(n+1))²`
-/

namespace A112838.P3693025732417713270
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A112836 n : ℚ) / (A055256 (SequenceMachineLib.roundAway ((⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉ : ℚ) ^ (A101183 (n + 1) : ℤ))).toNat ^ 2 : ℚ)

end

end A112838.P3693025732417713270

/-!
# A112839: Number of domino tilings of a 7-pillow of order n.

The programs for A112839, there is no canonical definition to state claims against.
-/

/-! ## A112839.P9867613337766500783

`A112840(n)²*A112841(n)`
-/

namespace A112839.P9867613337766500783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112840 n ^ 2 * A112841 n

end

end A112839.P9867613337766500783

/-! ## A112839.P14299723524360665382

`A342750(A036493(n))`
-/

namespace A112839.P14299723524360665382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342750 (A036493 n).toNat

end

end A112839.P14299723524360665382

/-!
# A112840: Large-number statistic from the enumeration of domino tilings of a 7-pillow of order n.

The programs for A112840, there is no canonical definition to state claims against.
-/

/-! ## A112840.P15965640324029044614

`sqrt(A112839(n)/A112841(n))`
-/

namespace A112840.P15965640324029044614
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((A112839 n : ℚ) / (A112841 n : ℚ) : ℝ)

end

end A112840.P15965640324029044614

/-! ## A112840.P17977295085570250814

`A262689(A112839(n)/A112841(n))`
-/

namespace A112840.P17977295085570250814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262689 (SequenceMachineLib.roundAway ((A112839 n : ℚ) / (A112841 n : ℚ))).toNat

end

end A112840.P17977295085570250814

/-! ## A112840.P13412711918357277338

`A000189(A112839(n)/A112841(n))`
-/

namespace A112840.P13412711918357277338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000189 (SequenceMachineLib.roundAway ((A112839 n : ℚ) / (A112841 n : ℚ))).toNat

end

end A112840.P13412711918357277338

/-!
# A112841: Small-number statistic from the enumeration of domino tilings of a 7-pillow of order n.

The programs for A112841, there is no canonical definition to state claims against.
-/

/-! ## A112841.P1569828791530158497

`A112839(n)/A112840(n)²`
-/

namespace A112841.P1569828791530158497
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A112839 n : ℚ) / (A112840 n ^ 2 : ℚ)

end

end A112841.P1569828791530158497

/-! ## A112841.P10349521399350940728

`A007913(A112839(n))`
-/

namespace A112841.P10349521399350940728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A112839 n).toNat

end

end A112841.P10349521399350940728

/-!
# A112842: Number of domino tilings of a 9-pillow of order n.

The programs for A112842, there is no canonical definition to state claims against.
-/

/-! ## A112842.P12168454568223889646

`A112843(n)²*A112844(n)`
-/

namespace A112842.P12168454568223889646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112843 n ^ 2 * A112844 n

end

end A112842.P12168454568223889646

/-! ## A112842.P6903844070429784340

`A147293(A071609(n+1))`
-/

namespace A112842.P6903844070429784340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147293 (A071609 (n + 1)).toNat

end

end A112842.P6903844070429784340

/-! ## A112842.P7148704246438618440

`record[A125585(∑[A322198(n)])]`
-/

namespace A112842.P7148704246438618440
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322198 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125585 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A112842.P7148704246438618440

/-!
# A112843: Large-number statistic from the enumeration of domino tilings of a 9-pillow of order n.

The programs for A112843, there is no canonical definition to state claims against.
-/

/-! ## A112843.P3173341050716468073

`sqrt(A112842(n)/A112844(n))`
-/

namespace A112843.P3173341050716468073
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((A112842 n : ℚ) / (A112844 n : ℚ) : ℝ)

end

end A112843.P3173341050716468073

/-! ## A112843.P9632421997915515019

`(A112842(n)/A112844(n))^(A002033(n)/A067824(n+1))`
-/

namespace A112843.P9632421997915515019
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((A112842 n : ℚ) / (A112844 n : ℚ) : ℝ) ^ ((A002033 n : ℚ) / (A067824 (n + 1) : ℚ) : ℝ)

end

end A112843.P9632421997915515019

/-! ## A112843.P9041531837351387866

`A262689(A112842(n)/A112844(n))`
-/

namespace A112843.P9041531837351387866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262689 (SequenceMachineLib.roundAway ((A112842 n : ℚ) / (A112844 n : ℚ))).toNat

end

end A112843.P9041531837351387866

/-! ## A112843.P16464382148882627544

`A000189(A112842(n)/A112844(n))`
-/

namespace A112843.P16464382148882627544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000189 (SequenceMachineLib.roundAway ((A112842 n : ℚ) / (A112844 n : ℚ))).toNat

end

end A112843.P16464382148882627544

/-! ## A112843.P3395744001022896908

`A000194(A112842(n)/A112844(n))`
-/

namespace A112843.P3395744001022896908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (SequenceMachineLib.roundAway ((A112842 n : ℚ) / (A112844 n : ℚ))).toNat

end

end A112843.P3395744001022896908

/-!
# A112844: Small-number statistic from the enumeration of domino tilings of a 9-pillow of order n.

The programs for A112844, there is no canonical definition to state claims against.
-/

/-! ## A112844.P12281577536329947297

`A112842(n)/A112843(n)²`
-/

namespace A112844.P12281577536329947297
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A112842 n : ℚ) / (A112843 n ^ 2 : ℚ)

end

end A112844.P12281577536329947297

/-! ## A112844.P14692025855670700472

`A007913(A112842(n))`
-/

namespace A112844.P14692025855670700472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A112842 n).toNat

end

end A112844.P14692025855670700472

/-! ## A112844.P4980235183212701708

`A055231(A112842(n)+A025443(n))`
-/

namespace A112844.P4980235183212701708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055231 (A112842 n + A025443 n).toNat

end

end A112844.P4980235183212701708

/-! ## A112844.P10577850710135839407

`A055231(A014788(n)*A112842(n))`
-/

namespace A112844.P10577850710135839407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055231 (A014788 n * A112842 n).toNat

end

end A112844.P10577850710135839407

/-! ## A112844.P97037172451575517

`A055231(A027828(n)*A112842(n))`
-/

namespace A112844.P97037172451575517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055231 (A027828 n * A112842 n).toNat

end

end A112844.P97037172451575517

/-!
# A112845: 

The programs for A112845, there is no canonical definition to state claims against.
-/

/-! ## A112845.P6905275236787063853

`floor((a(n-1)²-2)^(3/2))` with `a(0)=6`
-/

namespace A112845.P6905275236787063853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [6] fun n a =>
  ⌊(a (n - 1) ^ 2 - 2 : ℝ) ^ ((3 : ℚ) / 2 : ℝ)⌋

end

end A112845.P6905275236787063853

/-!
# A112846: Number of riffs on n or fewer nodes. Number of rotes on 2n+1 or fewer nodes.

The programs for A112846, there is no canonical definition to state claims against.
-/

/-! ## A112846.P13957721785274505639

`∑[A061396(A065770(2^n))]`
-/

namespace A112846.P13957721785274505639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061396 (A065770 (2 ^ n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112846.P13957721785274505639

/-! ## A112846.P16160878724935439578

`∑[A061396(A087179(2^n))]`
-/

namespace A112846.P16160878724935439578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061396 (A087179 (2 ^ n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112846.P16160878724935439578

/-! ## A112846.P4807119554748153240

`∑[A061396(A187829(n+1)-1)]`
-/

namespace A112846.P4807119554748153240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061396 (A187829 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112846.P4807119554748153240

/-! ## A112846.P11018869407321921730

`∑[A061396(n)%A085285(n+1)]`
-/

namespace A112846.P11018869407321921730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A061396 n) (A085285 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112846.P11018869407321921730

/-! ## A112846.P8964292612966221035

`∑[A061396(n)]%A351550(n+1)`
-/

namespace A112846.P8964292612966221035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061396 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A351550 (n + 1))

end

end A112846.P8964292612966221035

/-!
# A112847: Primes such that the sum of the predecessor and successor primes is divisible by 23.

The programs for A112847, there is no canonical definition to state claims against.
-/

/-! ## A112847.P3924930258690391507

`p?[∑[A202149(A020190(n+1))]]`
-/

namespace A112847.P3924930258690391507
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202149 (A020190 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A112847.P3924930258690391507

/-!
# A112848: Expansion of eta(q)*eta(q^2)*eta(q^18)^2/(eta(q^6)*eta(q^9)) in powers of q.

The programs for A112848, the canonical program `A112848.P9414413279454382001` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A112848 has offset 1).

The definition of A112848 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A112848.P10739850073515641956

`A177702(n)*A261884(n+1)`
-/

namespace A112848.P10739850073515641956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177702 n * A261884 (n + 1)

end

end A112848.P10739850073515641956

namespace A112848

/-- `A177702(n)*A261884(n+1)` -/
def P10739850073515641956.Spec : Prop :=
  ∀ n, P10739850073515641956.a n = A112848 (n + 1)

end A112848

/-! ## A112848.P16676683453540825770

`A061347(n+1)*A093829(n+1)`
-/

namespace A112848.P16676683453540825770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061347 (n + 1) * A093829 (n + 1)

end

end A112848.P16676683453540825770

namespace A112848

/-- `A061347(n+1)*A093829(n+1)` -/
def P16676683453540825770.Spec : Prop :=
  ∀ n, P16676683453540825770.a n = A112848 (n + 1)

end A112848

/-! ## A112848.P6566817116432449852

`(2-A010892(n)²)*A261884(n+1)`
-/

namespace A112848.P6566817116432449852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A010892 n ^ 2) * A261884 (n + 1)

end

end A112848.P6566817116432449852

namespace A112848

/-- `(2-A010892(n)²)*A261884(n+1)` -/
def P6566817116432449852.Spec : Prop :=
  ∀ n, P6566817116432449852.a n = A112848 (n + 1)

end A112848

/-! ## A112848.P10575777678551532072

`(2-A049347(n)²)*A261884(n+1)`
-/

namespace A112848.P10575777678551532072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A049347 n ^ 2) * A261884 (n + 1)

end

end A112848.P10575777678551532072

namespace A112848

/-- `(2-A049347(n)²)*A261884(n+1)` -/
def P10575777678551532072.Spec : Prop :=
  ∀ n, P10575777678551532072.a n = A112848 (n + 1)

end A112848

/-! ## A112848.P568947308507462188

`∑{d}[n+1, A061347(#)*A112300((n+1)/#)]`
-/

namespace A112848.P568947308507462188
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A061347 d * A112300 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A112848.P568947308507462188

namespace A112848

/-- `∑{d}[n+1, A061347(#)*A112300((n+1)/#)]` -/
def P568947308507462188.Spec : Prop :=
  ∀ n, P568947308507462188.a n = A112848 (n + 1)

end A112848

/-! ## A112848.P9414413279454382001

`∑{d}[n+1, A049347(#-1)*A117188((n+1)/#-1)]`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A112848

/-- `∑{d}[n+1, A049347(#-1)*A117188((n+1)/#-1)]` -/
def P9414413279454382001.Spec : Prop :=
  ∀ n, P9414413279454382001.a n = A112848 (n + 1)

theorem P9414413279454382001.correct : P9414413279454382001.Spec := by
  intro n
  simp only [A112848, Nat.add_sub_cancel]

end A112848

/-! ## A112848.P15903878581292125515

`A226535(n+1)-(A260945(n+1)+A097109(n+1))`
-/

namespace A112848.P15903878581292125515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226535 (n + 1) - (A260945 (n + 1) + A097109 (n + 1))

end

end A112848.P15903878581292125515

namespace A112848

/-- `A226535(n+1)-(A260945(n+1)+A097109(n+1))` -/
def P15903878581292125515.Spec : Prop :=
  ∀ n, P15903878581292125515.a n = A112848 (n + 1)

end A112848

/-! ## A112848.P6817112736799839189

`A193426(2*(n+1))-A193426(n+1)`
-/

namespace A112848.P6817112736799839189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193426 (2 * (n + 1)) - A193426 (n + 1)

end

end A112848.P6817112736799839189

namespace A112848

/-- `A193426(2*(n+1))-A193426(n+1)` -/
def P6817112736799839189.Spec : Prop :=
  ∀ n, P6817112736799839189.a n = A112848 (n + 1)

end A112848

/-! ## A112848.P10567978135679550887

`(A131719(2*n+1)-2)*A261884(2*(n+1))`
-/

namespace A112848.P10567978135679550887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A131719 (2 * n + 1) - 2) * A261884 (2 * (n + 1))

end

end A112848.P10567978135679550887

namespace A112848

/-- `(A131719(2*n+1)-2)*A261884(2*(n+1))` -/
def P10567978135679550887.Spec : Prop :=
  ∀ n, P10567978135679550887.a n = A112848 (n + 1)

end A112848

/-! ## A112848.P426575097234086465

`(A128834(2*n+1)+A128834(2*n))*A113447(2*(n+1))`
-/

namespace A112848.P426575097234086465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A128834 (2 * n + 1) + A128834 (2 * n)) * A113447 (2 * (n + 1))

end

end A112848.P426575097234086465

namespace A112848

/-- `(A128834(2*n+1)+A128834(2*n))*A113447(2*(n+1))` -/
def P426575097234086465.Spec : Prop :=
  ∀ n, P426575097234086465.a n = A112848 (n + 1)

end A112848

/-! ## A112848.P4638053236085702284

`(A102283(2*n)-A102283(2*n+1))*A093829(2*(n+1))`
-/

namespace A112848.P4638053236085702284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A102283 (2 * n) - A102283 (2 * n + 1)) * A093829 (2 * (n + 1))

end

end A112848.P4638053236085702284

namespace A112848

/-- `(A102283(2*n)-A102283(2*n+1))*A093829(2*(n+1))` -/
def P4638053236085702284.Spec : Prop :=
  ∀ n, P4638053236085702284.a n = A112848 (n + 1)

end A112848

/-! ## A112848.P6985924640588966839

`A260945(2*(n+1))`
-/

namespace A112848.P6985924640588966839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260945 (2 * (n + 1))

end

end A112848.P6985924640588966839

namespace A112848

/-- `A260945(2*(n+1))` -/
def P6985924640588966839.Spec : Prop :=
  ∀ n, P6985924640588966839.a n = A112848 (n + 1)

end A112848

/-! ## A112848.P10970558798883014401

`A260945(2*n)-Δ[A260945(4*n)]`
-/

namespace A112848.P10970558798883014401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260945 (4 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260945 (2 * n) - (f1 (n + 1) - f1 n)

end

end A112848.P10970558798883014401

namespace A112848

/-- `A260945(2*n)-Δ[A260945(4*n)]` -/
def P10970558798883014401.Spec : Prop :=
  ∀ n, P10970558798883014401.a n = A112848 (n + 1)

end A112848

/-! ## A112848.P5991716456880767988

`∑{d}[n+1, A123477(#)*A154955((n+1)/#)]`
-/

namespace A112848.P5991716456880767988
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A123477 d * A154955 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A112848.P5991716456880767988

namespace A112848

/-- `∑{d}[n+1, A123477(#)*A154955((n+1)/#)]` -/
def P5991716456880767988.Spec : Prop :=
  ∀ n, P5991716456880767988.a n = A112848 (n + 1)

end A112848

/-! ## A112848.P9597210308874138002

`A123477(n+1)-A123477(2*(n+1))`
-/

namespace A112848.P9597210308874138002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123477 (n + 1) - A123477 (2 * (n + 1))

end

end A112848.P9597210308874138002

namespace A112848

/-- `A123477(n+1)-A123477(2*(n+1))` -/
def P9597210308874138002.Spec : Prop :=
  ∀ n, P9597210308874138002.a n = A112848 (n + 1)

end A112848

/-!
# A112849: Number of congruence classes (epimorphisms/vertex partitionings induced by graph endomorphisms) of undirected cycles of even length: |C(C_{2*n})|.

The programs for A112849, the canonical program `A112849.P15650256239364234113` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A112849 has offset 1).

The definition of A112849 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A112849.P16054678719198272094

`ceil(abs(sin(n)))+∏[4-2/(n+1)]/2`
-/

namespace A112849.P16054678719198272094
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  4 - 2 / (n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (⌈|Real.sin (n : ℝ)|⌉ : ℚ) + (∏ j ∈ Finset.range (n + 1), f1 j) / 2

end

end A112849.P16054678719198272094

namespace A112849

/-- `ceil(abs(sin(n)))+∏[4-2/(n+1)]/2` -/
def P16054678719198272094.Spec : Prop :=
  ∀ n, P16054678719198272094.a n = (A112849 (n + 1) : ℚ)

end A112849

/-! ## A112849.P5281517204909616383

`ceil(sin(n)²)+∏[4-2/(n+1)]/2`
-/

namespace A112849.P5281517204909616383
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  4 - 2 / (n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (⌈Real.sin (n : ℝ) ^ 2⌉ : ℚ) + (∏ j ∈ Finset.range (n + 1), f1 j) / 2

end

end A112849.P5281517204909616383

namespace A112849

/-- `ceil(sin(n)²)+∏[4-2/(n+1)]/2` -/
def P5281517204909616383.Spec : Prop :=
  ∀ n, P5281517204909616383.a n = (A112849 (n + 1) : ℚ)

end A112849

/-! ## A112849.P4765744771097427309

`∏[4-2/(n+1)]/2-(floor(acot(n))-1)`
-/

namespace A112849.P4765744771097427309
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  4 - 2 / (n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) / 2 - (⌊SequenceMachineLib.acot (n : ℝ)⌋ - 1 : ℚ)

end

end A112849.P4765744771097427309

namespace A112849

/-- `∏[4-2/(n+1)]/2-(floor(acot(n))-1)` -/
def P4765744771097427309.Spec : Prop :=
  ∀ n, P4765744771097427309.a n = (A112849 (n + 1) : ℚ)

end A112849

/-! ## A112849.P11621736027017420040

`ceil(cosh(sin(n)))+∏[4-2/(n+1)]/2-1`
-/

namespace A112849.P11621736027017420040
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  4 - 2 / (n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (⌈Real.cosh (Real.sin (n : ℝ))⌉ : ℚ) + ((∏ j ∈ Finset.range (n + 1), f1 j) / 2 - 1)

end

end A112849.P11621736027017420040

namespace A112849

/-- `ceil(cosh(sin(n)))+∏[4-2/(n+1)]/2-1` -/
def P11621736027017420040.Spec : Prop :=
  ∀ n, P11621736027017420040.a n = (A112849 (n + 1) : ℚ)

end A112849

/-! ## A112849.P12985621514192221171

`A007007(Δ[n²])+1`
-/

namespace A112849.P12985621514192221171
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007007 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + 1

end

end A112849.P12985621514192221171

namespace A112849

/-- `A007007(Δ[n²])+1` -/
def P12985621514192221171.Spec : Prop :=
  ∀ n, P12985621514192221171.a n = A112849 (n + 1)

end A112849

/-! ## A112849.P4402962969898282235

`record[A138364(n+2)+1]`
-/

namespace A112849.P4402962969898282235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138364 (n + 2) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A112849.P4402962969898282235

namespace A112849

/-- `record[A138364(n+2)+1]` -/
def P4402962969898282235.Spec : Prop :=
  ∀ n, P4402962969898282235.a n = A112849 (n + 1)

end A112849

/-! ## A112849.P8012924861436959032

`abs(floor(acot(n))-1-A001700(n))`
-/

namespace A112849.P8012924861436959032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |⌊SequenceMachineLib.acot (n : ℝ)⌋ - 1 - A001700 n|

end

end A112849.P8012924861436959032

namespace A112849

/-- `abs(floor(acot(n))-1-A001700(n))` -/
def P8012924861436959032.Spec : Prop :=
  ∀ n, P8012924861436959032.a n = A112849 (n + 1)

end A112849

/-! ## A112849.P11544350460609234478

`A006481(A103517(n))`
-/

namespace A112849.P11544350460609234478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006481 (A103517 n).toNat

end

end A112849.P11544350460609234478

namespace A112849

/-- `A006481(A103517(n))` -/
def P11544350460609234478.Spec : Prop :=
  ∀ n, P11544350460609234478.a n = A112849 (n + 1)

end A112849

/-! ## A112849.P15650256239364234113

`A057427(n)+A001700(n)`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A112849

/-- `A057427(n)+A001700(n)` -/
def P15650256239364234113.Spec : Prop :=
  ∀ n, P15650256239364234113.a n = A112849 (n + 1)

theorem P15650256239364234113.correct : P15650256239364234113.Spec := by
  intro n
  simp only [A112849, Nat.add_sub_cancel]

end A112849

/-! ## A112849.P12179733112216822072

`A244174(n)+A001791(n)`
-/

namespace A112849.P12179733112216822072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244174 n + A001791 n

end

end A112849.P12179733112216822072

namespace A112849

/-- `A244174(n)+A001791(n)` -/
def P12179733112216822072.Spec : Prop :=
  ∀ n, P12179733112216822072.a n = A112849 (n + 1)

end A112849

/-! ## A112849.P2349682387927725616

`A162551(n)+A141351(n)`
-/

namespace A112849.P2349682387927725616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162551 n + A141351 n

end

end A112849.P2349682387927725616

namespace A112849

/-- `A162551(n)+A141351(n)` -/
def P2349682387927725616.Spec : Prop :=
  ∀ n, P2349682387927725616.a n = A112849 (n + 1)

end A112849

/-! ## A112849.P15403861767994273070

`A001700(n)-A057428(n)`
-/

namespace A112849.P15403861767994273070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001700 n - A057428 n

end

end A112849.P15403861767994273070

namespace A112849

/-- `A001700(n)-A057428(n)` -/
def P15403861767994273070.Spec : Prop :=
  ∀ n, P15403861767994273070.a n = A112849 (n + 1)

theorem P15403861767994273070.correct : P15403861767994273070.Spec := by
  intro n
  simp only [A112849, Nat.add_sub_cancel, A112849.P15403861767994273070.a, A112849.P15650256239364234113.a, A001700, A001700.P11212155124506223364.a, A057427, A057427.P3058147525557661423.a, A057428, A057428.P2999489532230392221.a, A000007, A000007.P6599383543502402472.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A112849

/-! ## A112849.P3736873039821958478

`A028329(n)-A141364(n)`
-/

namespace A112849.P3736873039821958478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028329 n - A141364 n

end

end A112849.P3736873039821958478

namespace A112849

/-- `A028329(n)-A141364(n)` -/
def P3736873039821958478.Spec : Prop :=
  ∀ n, P3736873039821958478.a n = A112849 (n + 1)

end A112849

/-! ## A112849.P15791475295128927711

`A001700(n)+A062157(n)²`
-/

namespace A112849.P15791475295128927711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001700 n + A062157 n ^ 2

end

end A112849.P15791475295128927711

namespace A112849

/-- `A001700(n)+A062157(n)²` -/
def P15791475295128927711.Spec : Prop :=
  ∀ n, P15791475295128927711.a n = A112849 (n + 1)

end A112849

/-! ## A112849.P1071187734442139462

`A037952(A131738(2*n))+1`
-/

namespace A112849.P1071187734442139462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037952 (A131738 (2 * n)).toNat + 1

end

end A112849.P1071187734442139462

namespace A112849

/-- `A037952(A131738(2*n))+1` -/
def P1071187734442139462.Spec : Prop :=
  ∀ n, P1071187734442139462.a n = A112849 (n + 1)

end A112849

/-! ## A112849.P6652272066412348382

`A036453(n+1)+A010763(n)`
-/

namespace A112849.P6652272066412348382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036453 (n + 1) + A010763 n

end

end A112849.P6652272066412348382

namespace A112849

/-- `A036453(n+1)+A010763(n)` -/
def P6652272066412348382.Spec : Prop :=
  ∀ n, P6652272066412348382.a n = A112849 (n + 1)

end A112849

/-! ## A112849.P12662025002825453401

`A088218(n+1)+A057427(n)`
-/

namespace A112849.P12662025002825453401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088218 (n + 1) + A057427 n

end

end A112849.P12662025002825453401

namespace A112849

/-- `A088218(n+1)+A057427(n)` -/
def P12662025002825453401.Spec : Prop :=
  ∀ n, P12662025002825453401.a n = A112849 (n + 1)

end A112849

/-! ## A112849.P10035393583501505457

`A108958(n+1)+A083318(n)`
-/

namespace A112849.P10035393583501505457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108958 (n + 1) + A083318 n

end

end A112849.P10035393583501505457

namespace A112849

/-- `A108958(n+1)+A083318(n)` -/
def P10035393583501505457.Spec : Prop :=
  ∀ n, P10035393583501505457.a n = A112849 (n + 1)

end A112849

/-! ## A112849.P2300407766309726095

`A001700(n)+1-A000007(n)`
-/

namespace A112849.P2300407766309726095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001700 n + (1 - A000007 n)

end

end A112849.P2300407766309726095

namespace A112849

/-- `A001700(n)+1-A000007(n)` -/
def P2300407766309726095.Spec : Prop :=
  ∀ n, P2300407766309726095.a n = A112849 (n + 1)

theorem P2300407766309726095.correct : P2300407766309726095.Spec := by
  intro n
  simp only [A112849, Nat.add_sub_cancel, A112849.P2300407766309726095.a, A112849.P15650256239364234113.a, A000007, A000007.P6599383543502402472.a, A001700, A001700.P11212155124506223364.a, A057427, A057427.P3058147525557661423.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A112849

/-!
# A112850: Number of graph endomorphisms of undirected cycles of even length: |End(C_2n)|.

The programs for A112850, the canonical program `A112850.P878508428398291890` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A112850 has offset 1).

The definition of A112850 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 164 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A112850.P878508428398291890

`2*A112849(n+1)*A103517(n)`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A112850

/-- `2*A112849(n+1)*A103517(n)` -/
def P878508428398291890.Spec : Prop :=
  ∀ n, P878508428398291890.a n = A112850 (n + 1)

theorem P878508428398291890.correct : P878508428398291890.Spec := by
  intro n
  simp only [A112850, Nat.add_sub_cancel]

end A112850

/-! ## A112850.P3210927953513006397

`(A002457(n)+1+n)*A123932(n)`
-/

namespace A112850.P3210927953513006397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002457 n + 1 + (n : ℤ)) * A123932 n

end

end A112850.P3210927953513006397

namespace A112850

/-- `(A002457(n)+1+n)*A123932(n)` -/
def P3210927953513006397.Spec : Prop :=
  ∀ n, P3210927953513006397.a n = A112850 (n + 1)

end A112850

/-! ## A112850.P16453192714053247375

`(A014495(2*n+1)+2)*A256420(2*(n+1))`
-/

namespace A112850.P16453192714053247375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A014495 (2 * n + 1) + 2) * A256420 (2 * (n + 1))

end

end A112850.P16453192714053247375

namespace A112850

/-- `(A014495(2*n+1)+2)*A256420(2*(n+1))` -/
def P16453192714053247375.Spec : Prop :=
  ∀ n, P16453192714053247375.a n = A112850 (n + 1)

end A112850

/-! ## A112850.P12455271457974480293

`A004277(A103517(n))*A112849(n+1)`
-/

namespace A112850.P12455271457974480293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A103517 n).toNat * A112849 (n + 1)

end

end A112850.P12455271457974480293

namespace A112850

/-- `A004277(A103517(n))*A112849(n+1)` -/
def P12455271457974480293.Spec : Prop :=
  ∀ n, P12455271457974480293.a n = A112850 (n + 1)

end A112850

/-! ## A112850.P14547221101278222376

`A004277(A103517(n))*A006481(A103517(n))`
-/

namespace A112850.P14547221101278222376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A103517 n).toNat * A006481 (A103517 n).toNat

end

end A112850.P14547221101278222376

namespace A112850

/-- `A004277(A103517(n))*A006481(A103517(n))` -/
def P14547221101278222376.Spec : Prop :=
  ∀ n, P14547221101278222376.a n = A112850 (n + 1)

end A112850

/-! ## A112850.P13839907695327714584

`A029600(∑[n])²*A156052(∑[n])`
-/

namespace A112850.P13839907695327714584
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029600 (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 * A156052 (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A112850.P13839907695327714584

namespace A112850

/-- `A029600(∑[n])²*A156052(∑[n])` -/
def P13839907695327714584.Spec : Prop :=
  ∀ n, P13839907695327714584.a n = A112850 (n + 1)

end A112850

/-! ## A112850.P16012933676896982231

`A006530(A001316(n))²*A156052(∑[n])`
-/

namespace A112850.P16012933676896982231
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A001316 n).toNat ^ 2 * A156052 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A112850.P16012933676896982231

namespace A112850

/-- `A006530(A001316(n))²*A156052(∑[n])` -/
def P16012933676896982231.Spec : Prop :=
  ∀ n, P16012933676896982231.a n = A112850 (n + 1)

end A112850

/-!
# A112851: a(n) = (n-1)*n*(n+1)*(n+2)*(2*n+1)/40.

The programs for A112851, the canonical program `A112851.P3509678247836955067` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A112851 has offset 0).

The definition of A112851 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n-1)*n*(n+1)*(n+2)*(2*n+1)/40` (program `A112851.P9189772974642193550`, by `A112851.P9189772974642193550.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A112851.P9189772974642193550

`(n-1)*n*(n+1)*(n+2)*(2*n+1)/40`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A112851.P9189772974642193550
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((n : ℤ) - 1) * (n : ℤ) * (n + 1 : ℤ) * (n + 2 : ℤ) * (2 * n + 1 : ℤ) : ℚ) / 40

end

end A112851.P9189772974642193550

namespace A112851

/-- `(n-1)*n*(n+1)*(n+2)*(2*n+1)/40` -/
def P9189772974642193550.Spec : Prop :=
  ∀ n, P9189772974642193550.a n = (A112851 n : ℚ)

theorem P9189772974642193550.correct : P9189772974642193550.Spec := by
  intro n
  simp only [A112851, Nat.add_sub_cancel, A112851.P9189772974642193550.a, A112851.P3509678247836955067.f1, A112851.P3509678247836955067.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A112851

/-! ## A112851.P16601556102008976170

`∑[C(n², 2)/2]`
-/

namespace A112851.P16601556102008976170
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n ^ 2) 2 : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112851.P16601556102008976170

namespace A112851

/-- `∑[C(n², 2)/2]` -/
def P16601556102008976170.Spec : Prop :=
  ∀ n, P16601556102008976170.a n = (A112851 n : ℚ)

end A112851

/-! ## A112851.P5980375319345076001

`∑[C(n, 2)*∑[n]]`
-/

namespace A112851.P5980375319345076001
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2 * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112851.P5980375319345076001

namespace A112851

/-- `∑[C(n, 2)*∑[n]]` -/
def P5980375319345076001.Spec : Prop :=
  ∀ n, (P5980375319345076001.a n : ℤ) = A112851 n

end A112851

/-! ## A112851.P3509678247836955067

`Δ[n*C(n+2, 5)]`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A112851

/-- `Δ[n*C(n+2, 5)]` -/
def P3509678247836955067.Spec : Prop :=
  ∀ n, P3509678247836955067.a n = A112851 n

theorem P3509678247836955067.correct : P3509678247836955067.Spec := by
  intro n
  simp only [A112851]

end A112851

/-! ## A112851.P3162066085184681404

`a(n-1)+C(n², 2)/2` with `a(0)=0`
-/

namespace A112851.P3162066085184681404
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + (Nat.choose (n ^ 2) 2 : ℚ) / 2

end

end A112851.P3162066085184681404

namespace A112851

/-- `a(n-1)+C(n², 2)/2` -/
def P3162066085184681404.Spec : Prop :=
  ∀ n, P3162066085184681404.a n = (A112851 n : ℚ)

end A112851

/-! ## A112851.P3230617741612923509

`∑[A006011(n)]`
-/

namespace A112851.P3230617741612923509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006011 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112851.P3230617741612923509

namespace A112851

/-- `∑[A006011(n)]` -/
def P3230617741612923509.Spec : Prop :=
  ∀ n, P3230617741612923509.a n = A112851 n

end A112851

/-! ## A112851.P16219326182289124585

`∑[3*A002415(n)]`
-/

namespace A112851.P16219326182289124585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A002415 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112851.P16219326182289124585

namespace A112851

/-- `∑[3*A002415(n)]` -/
def P16219326182289124585.Spec : Prop :=
  ∀ n, P16219326182289124585.a n = A112851 n

end A112851

/-! ## A112851.P18197359560088913645

`∑[∑[n]²]-A001296(n)`
-/

namespace A112851.P18197359560088913645
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A001296 n

end

end A112851.P18197359560088913645

namespace A112851

/-- `∑[∑[n]²]-A001296(n)` -/
def P18197359560088913645.Spec : Prop :=
  ∀ n, P18197359560088913645.a n = A112851 n

end A112851

/-! ## A112851.P17670324165435491607

`A164938(n)-a(n-1)` with `a(0)=0`
-/

namespace A112851.P17670324165435491607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A164938 n - a (n - 1)

end

end A112851.P17670324165435491607

namespace A112851

/-- `A164938(n)-a(n-1)` -/
def P17670324165435491607.Spec : Prop :=
  ∀ n, P17670324165435491607.a n = A112851 n

end A112851

/-! ## A112851.P12893847123933684419

`A008499(n)-A001845(n)`
-/

namespace A112851.P12893847123933684419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008499 n - A001845 n

end

end A112851.P12893847123933684419

namespace A112851

/-- `A008499(n)-A001845(n)` -/
def P12893847123933684419.Spec : Prop :=
  ∀ n, P12893847123933684419.a n = A112851 n

end A112851

/-! ## A112851.P8328220963502619132

`A253942(n+1)+A253942(n+2)`
-/

namespace A112851.P8328220963502619132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253942 (n + 1) + A253942 (n + 2)

end

end A112851.P8328220963502619132

namespace A112851

/-- `A253942(n+1)+A253942(n+2)` -/
def P8328220963502619132.Spec : Prop :=
  ∀ n, P8328220963502619132.a n = A112851 n

theorem P8328220963502619132.correct : P8328220963502619132.Spec := by
  intro n
  simp only [A112851, Nat.add_sub_cancel, A112851.P8328220963502619132.a, A112851.P3509678247836955067.f1, A112851.P3509678247836955067.a, A253942, A253942.P11522209056307406865.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A112851

/-! ## A112851.P2589309651340900059

`Δ[n*∑[A000332(n+1)]]`
-/

namespace A112851.P2589309651340900059
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000332 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A112851.P2589309651340900059

namespace A112851

/-- `Δ[n*∑[A000332(n+1)]]` -/
def P2589309651340900059.Spec : Prop :=
  ∀ n, P2589309651340900059.a n = A112851 n

end A112851

/-! ## A112851.P15078381831086193777

`Δ[n*A000389(n+2)]`
-/

namespace A112851.P15078381831086193777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A000389 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A112851.P15078381831086193777

namespace A112851

/-- `Δ[n*A000389(n+2)]` -/
def P15078381831086193777.Spec : Prop :=
  ∀ n, P15078381831086193777.a n = A112851 n

theorem P15078381831086193777.correct : P15078381831086193777.Spec := by
  intro n
  simp only [A112851, Nat.add_sub_cancel, A112851.P15078381831086193777.f1, A112851.P15078381831086193777.a, A112851.P3509678247836955067.f1, A112851.P3509678247836955067.a, A000389, A000389.P15450220129395289428.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A112851

/-! ## A112851.P17057048316324536209

`∑[∑[A011890(2*n)]]`
-/

namespace A112851.P17057048316324536209
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011890 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112851.P17057048316324536209

namespace A112851

/-- `∑[∑[A011890(2*n)]]` -/
def P17057048316324536209.Spec : Prop :=
  ∀ n, P17057048316324536209.a n = A112851 n

end A112851

/-! ## A112851.P1436842646044369013

`∑[A000241(2*(n+1))]`
-/

namespace A112851.P1436842646044369013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000241 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112851.P1436842646044369013

namespace A112851

/-- `∑[A000241(2*(n+1))]` -/
def P1436842646044369013.Spec : Prop :=
  ∀ n, P1436842646044369013.a n = A112851 n

end A112851

/-! ## A112851.P5839455282578145541

`∑[A054925(n²)]`
-/

namespace A112851.P5839455282578145541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054925 (n ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112851.P5839455282578145541

namespace A112851

/-- `∑[A054925(n²)]` -/
def P5839455282578145541.Spec : Prop :=
  ∀ n, P5839455282578145541.a n = A112851 n

end A112851

/-! ## A112851.P5286336982694417077

`∑[3*A011865(n²)]`
-/

namespace A112851.P5286336982694417077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A011865 (n ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112851.P5286336982694417077

namespace A112851

/-- `∑[3*A011865(n²)]` -/
def P5286336982694417077.Spec : Prop :=
  ∀ n, P5286336982694417077.a n = A112851 n

end A112851

/-! ## A112851.P3041703897893050507

`∑[A161680(n²)/2]`
-/

namespace A112851.P3041703897893050507
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A161680 (n ^ 2) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112851.P3041703897893050507

namespace A112851

/-- `∑[A161680(n²)/2]` -/
def P3041703897893050507.Spec : Prop :=
  ∀ n, P3041703897893050507.a n = (A112851 n : ℚ)

end A112851

/-! ## A112851.P9955990338175723504

`∑[A011848(n²)]`
-/

namespace A112851.P9955990338175723504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011848 (n ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112851.P9955990338175723504

namespace A112851

/-- `∑[A011848(n²)]` -/
def P9955990338175723504.Spec : Prop :=
  ∀ n, P9955990338175723504.a n = A112851 n

end A112851

/-! ## A112851.P17977235651350595420

`∑[A368052(n²+1)]`
-/

namespace A112851.P17977235651350595420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368052 (n ^ 2 + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112851.P17977235651350595420

namespace A112851

/-- `∑[A368052(n²+1)]` -/
def P17977235651350595420.Spec : Prop :=
  ∀ n, P17977235651350595420.a n = A112851 n

end A112851

/-!
# A112853: Numbers k such that (2*k)!/k!-1 is prime.

The programs for A112853, there is no canonical definition to state claims against.
-/

/-! ## A112853.P18295485771742286245

`record[A003602(A085147(n+1))]`
-/

namespace A112853.P18295485771742286245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (A085147 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A112853.P18295485771742286245

/-!
# A112857: Triangle T(n,k) read by rows: number of Green's R-classes in the semigroup of order-preserving partial transformations (of an n-element chain) consisting of elements of height k (height(alpha) = |Im(alpha)|).

The programs for A112857, the canonical program `A112857.P9246049942416849065` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A112857 has offset 0).

The definition of A112857 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A112857.P7275536951178509212

`abs(A118801(n))`
-/

namespace A112857.P7275536951178509212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A118801 n|

end

end A112857.P7275536951178509212

namespace A112857

/-- `abs(A118801(n))` -/
def P7275536951178509212.Spec : Prop :=
  ∀ n, P7275536951178509212.a n = A112857 n

end A112857

/-! ## A112857.P9246049942416849065

`A193844(A056943(n))`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A112857

/-- `A193844(A056943(n))` -/
def P9246049942416849065.Spec : Prop :=
  ∀ n, P9246049942416849065.a n = A112857 n

theorem P9246049942416849065.correct : P9246049942416849065.Spec := by
  intro n
  simp only [A112857]

end A112857

/-! ## A112857.P17661027940367715944

`gcd(A000038(n), A118801(n))`
-/

namespace A112857.P17661027940367715944
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A118801 n)

end

end A112857.P17661027940367715944

namespace A112857

/-- `gcd(A000038(n), A118801(n))` -/
def P17661027940367715944.Spec : Prop :=
  ∀ n, (P17661027940367715944.a n : ℤ) = A112857 n

end A112857

/-! ## A112857.P11758922043267416644

`gcd(A073423(n), A135233(n))`
-/

namespace A112857.P11758922043267416644
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A073423 n) (A135233 n)

end

end A112857.P11758922043267416644

namespace A112857

/-- `gcd(A073423(n), A135233(n))` -/
def P11758922043267416644.Spec : Prop :=
  ∀ n, (P11758922043267416644.a n : ℤ) = A112857 n

end A112857

/-! ## A112857.P15868589338987049986

`lcm(A020985(n), A118801(n))`
-/

namespace A112857.P15868589338987049986
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A118801 n)

end

end A112857.P15868589338987049986

namespace A112857

/-- `lcm(A020985(n), A118801(n))` -/
def P15868589338987049986.Spec : Prop :=
  ∀ n, (P15868589338987049986.a n : ℤ) = A112857 n

end A112857

/-! ## A112857.P514766524772544174

`A135233(n*(1-A073423(n)))`
-/

namespace A112857.P514766524772544174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135233 ((n : ℤ) * (1 - A073423 n)).toNat

end

end A112857.P514766524772544174

namespace A112857

/-- `A135233(n*(1-A073423(n)))` -/
def P514766524772544174.Spec : Prop :=
  ∀ n, P514766524772544174.a n = A112857 n

end A112857

/-! ## A112857.P11135279951328678166

`2*A038207(n)-A193845(n)`
-/

namespace A112857.P11135279951328678166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A038207 n - A193845 n

end

end A112857.P11135279951328678166

namespace A112857

/-- `2*A038207(n)-A193845(n)` -/
def P11135279951328678166.Spec : Prop :=
  ∀ n, P11135279951328678166.a n = A112857 n

end A112857

/-! ## A112857.P13698190221493188556

`A193844(2*A057944(n)-n)`
-/

namespace A112857.P13698190221493188556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193844 (2 * A057944 n - (n : ℤ)).toNat

end

end A112857.P13698190221493188556

namespace A112857

/-- `A193844(2*A057944(n)-n)` -/
def P13698190221493188556.Spec : Prop :=
  ∀ n, P13698190221493188556.a n = A112857 n

end A112857

/-! ## A112857.P17458898730129059224

`A193844(A057944(n)+A057944(n)-n)`
-/

namespace A112857.P17458898730129059224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193844 (A057944 n + (A057944 n - (n : ℤ))).toNat

end

end A112857.P17458898730129059224

namespace A112857

/-- `A193844(A057944(n)+A057944(n)-n)` -/
def P17458898730129059224.Spec : Prop :=
  ∀ n, P17458898730129059224.a n = A112857 n

end A112857

/-! ## A112857.P9109896622093490878

`A193844(A057944(n)-(n-A057944(n)))`
-/

namespace A112857.P9109896622093490878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193844 (A057944 n - ((n : ℤ) - A057944 n)).toNat

end

end A112857.P9109896622093490878

namespace A112857

/-- `A193844(A057944(n)-(n-A057944(n)))` -/
def P9109896622093490878.Spec : Prop :=
  ∀ n, P9109896622093490878.a n = A112857 n

end A112857

/-! ## A112857.P5998460757186081060

`A135233(n)/A135233(n*A073423(n))`
-/

namespace A112857.P5998460757186081060
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A135233 n : ℚ) / (A135233 ((n : ℤ) * A073423 n).toNat : ℚ)

end

end A112857.P5998460757186081060

namespace A112857

/-- `A135233(n)/A135233(n*A073423(n))` -/
def P5998460757186081060.Spec : Prop :=
  ∀ n, P5998460757186081060.a n = (A112857 n : ℚ)

end A112857

/-! ## A112857.P5249461408542475366

`A118800(n)/A200139(n)*A118801(n)`
-/

namespace A112857.P5249461408542475366
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A118800 n : ℚ) / (A200139 n : ℚ) * (A118801 n : ℚ)

end

end A112857.P5249461408542475366

namespace A112857

/-- `A118800(n)/A200139(n)*A118801(n)` -/
def P5249461408542475366.Spec : Prop :=
  ∀ n, P5249461408542475366.a n = (A112857 n : ℚ)

end A112857

/-! ## A112857.P14376116451589942337

`gcd(A106459(n), A135233(A106459(n)+n))`
-/

namespace A112857.P14376116451589942337
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A106459 n) (A135233 (A106459 n + (n : ℤ)).toNat)

end

end A112857.P14376116451589942337

namespace A112857

/-- `gcd(A106459(n), A135233(A106459(n)+n))` -/
def P14376116451589942337.Spec : Prop :=
  ∀ n, (P14376116451589942337.a n : ℤ) = A112857 n

end A112857

/-! ## A112857.P15017605626460436617

`gcd(A010816(n)-A118801(n), A010816(n))`
-/

namespace A112857.P15017605626460436617
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A010816 n - A118801 n) (A010816 n)

end

end A112857.P15017605626460436617

namespace A112857

/-- `gcd(A010816(n)-A118801(n), A010816(n))` -/
def P15017605626460436617.Spec : Prop :=
  ∀ n, (P15017605626460436617.a n : ℤ) = A112857 n

end A112857

/-! ## A112857.P4936433691950992960

`A105728(n+1)+A038207(n)-A115068(n+1)`
-/

namespace A112857.P4936433691950992960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105728 (n + 1) + (A038207 n - A115068 (n + 1))

end

end A112857.P4936433691950992960

namespace A112857

/-- `A105728(n+1)+A038207(n)-A115068(n+1)` -/
def P4936433691950992960.Spec : Prop :=
  ∀ n, P4936433691950992960.a n = A112857 n

theorem P4936433691950992960.correct : P4936433691950992960.Spec := by
  intro n
  simp only [A112857, Nat.add_sub_cancel, A112857.P4936433691950992960.a, A112857.P9246049942416849065.a, A038207, A038207.P8041717625759374227.a, A056943, A056943.P2657344456391598982.a, A105728, A105728.P9423552014688535179.a, A115068, A115068.P17894343994682237628.a, A193844, A193844.P14945394421984348747.a, A059268, A059268.P15217573790077737885.a, A061579, A061579.P7462537595056690109.a, A074909, A074909.P6402560185863182536.a, A276985, A276985.P13607945102415289488.a, A018900, A018900.P2868698677378612256.a, A140513, A140513.P13579608035938851890.a, A002024, A002024.P11700297927830783882.a, A002262, A002262.P17823619022233514403.a, A137688, A137688.P9746695207037186753.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A112857

/-! ## A112857.P17248992704403170386

`A119258(A061579(n))`
-/

namespace A112857.P17248992704403170386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119258 (A061579 n).toNat

end

end A112857.P17248992704403170386

namespace A112857

/-- `A119258(A061579(n))` -/
def P17248992704403170386.Spec : Prop :=
  ∀ n, P17248992704403170386.a n = A112857 n

end A112857

/-! ## A112857.P424847046981229070

`A119258(A038722(n+1)-1)`
-/

namespace A112857.P424847046981229070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119258 (A038722 (n + 1) - 1).toNat

end

end A112857.P424847046981229070

namespace A112857

/-- `A119258(A038722(n+1)-1)` -/
def P424847046981229070.Spec : Prop :=
  ∀ n, P424847046981229070.a n = A112857 n

end A112857

/-! ## A112857.P17721151794165602193

`A119258(A038722(n+2))`
-/

namespace A112857.P17721151794165602193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119258 (A038722 (n + 2)).toNat

end

end A112857.P17721151794165602193

namespace A112857

/-- `A119258(A038722(n+2))` -/
def P17721151794165602193.Spec : Prop :=
  ∀ n, P17721151794165602193.a n = A112857 n

end A112857

/-! ## A112857.P1164778521323898167

`A144066(n)/A007318(n)`
-/

namespace A112857.P1164778521323898167
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A144066 n : ℚ) / (A007318 n : ℚ)

end

end A112857.P1164778521323898167

namespace A112857

/-- `A144066(n)/A007318(n)` -/
def P1164778521323898167.Spec : Prop :=
  ∀ n, P1164778521323898167.a n = (A112857 n : ℚ)

end A112857

/-!
# A112860: 2 together with A053032.

The programs for A112860, there is no canonical definition to state claims against.
-/

/-! ## A112860.P6810055942875001156

`p?[A053031(n+1)]`
-/

namespace A112860.P6810055942875001156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053031 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A112860.P6810055942875001156

/-! ## A112860.P10445165952384825238

`∩[A045348(n+1), A053031(n+1)]`
-/

namespace A112860.P10445165952384825238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045348 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053031 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A112860.P10445165952384825238

/-! ## A112860.P6435519692903054458

`∩[A045371(n+1), A053031(n+1)]`
-/

namespace A112860.P6435519692903054458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045371 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053031 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A112860.P6435519692903054458

/-! ## A112860.P14914852935441816852

`∩[A053031(n+1), A064739(n+1)]`
-/

namespace A112860.P14914852935441816852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053031 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064739 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A112860.P14914852935441816852

/-! ## A112860.P17516721037325684834

`∩[A053031(n+1), A140409(n+1)]`
-/

namespace A112860.P17516721037325684834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053031 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140409 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A112860.P17516721037325684834

/-! ## A112860.P9682859916134058754

`∩[A000040(n+1), A053031(n+1)]`
-/

namespace A112860.P9682859916134058754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053031 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A112860.P9682859916134058754

/-! ## A112860.P1799239823861498864

`∩[A045319(n+1), A053031(n+1)]`
-/

namespace A112860.P1799239823861498864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053031 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A112860.P1799239823861498864

/-! ## A112860.P15204609367415170122

`∩[A045344(n+1), A053031(n+1)]`
-/

namespace A112860.P15204609367415170122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053031 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A112860.P15204609367415170122

/-! ## A112860.P15893567222450845526

`∩[A053031(n+1), A116974(n+1)]`
-/

namespace A112860.P15893567222450845526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053031 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116974 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A112860.P15893567222450845526

/-! ## A112860.P7230934755980773664

`∩[A053031(n+1), A182986(n+1)]`
-/

namespace A112860.P7230934755980773664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053031 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A112860.P7230934755980773664

/-! ## A112860.P14955796988293876804

`∩[A053031(n+1), A053813(n+1)]`
-/

namespace A112860.P14955796988293876804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053031 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053813 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A112860.P14955796988293876804

/-! ## A112860.P17309648597113009959

`∩[A053031(n+1), A132630(n+1)]`
-/

namespace A112860.P17309648597113009959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053031 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132630 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A112860.P17309648597113009959

/-! ## A112860.P1110278161340932718

`∩[A053031(n+1), A301987(n+1)]`
-/

namespace A112860.P1110278161340932718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053031 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301987 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A112860.P1110278161340932718

/-! ## A112860.P13227335685189876787

`A053032(n)^A001222(a(n-1))` with `a(0)=2`
-/

namespace A112860.P13227335685189876787
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [2] fun n a =>
  (A053032 n : ℚ) ^ (A001222 (SequenceMachineLib.roundAway (a (n - 1))).toNat : ℤ)

end

end A112860.P13227335685189876787

/-! ## A112860.P18002992385548814051

`record[A006530(A053031(n+2))]`
-/

namespace A112860.P18002992385548814051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A053031 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A112860.P18002992385548814051

/-! ## A112860.P16823220577821761617

`record[A020639(A053031(n+3))]`
-/

namespace A112860.P16823220577821761617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A053031 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A112860.P16823220577821761617

/-! ## A112860.P92535750817057285

`filter[A053031(n+1), A010051(#)]`
-/

namespace A112860.P92535750817057285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053031 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A112860.P92535750817057285

/-! ## A112860.P4521416032040201730

`∩[A353393(n+1), A053031(n+1)]`
-/

namespace A112860.P4521416032040201730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353393 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053031 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A112860.P4521416032040201730

/-! ## A112860.P3124278728497936443

`filter[A053031(n+1), A323153(#)]`
-/

namespace A112860.P3124278728497936443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053031 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323153 (f1 j).toNat = 1) n)

end

end A112860.P3124278728497936443

/-! ## A112860.P3580922217699324395

`filter[A053031(n+2), A323152(#)]`
-/

namespace A112860.P3580922217699324395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053031 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323152 (f1 j).toNat = 1) n)

end

end A112860.P3580922217699324395

/-!
# A112862: 

The programs for A112862, there is no canonical definition to state claims against.
-/

/-! ## A112862.P12742040999942515822

`A010763(A112861(n+1)-1)`
-/

namespace A112862.P12742040999942515822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010763 (A112861 (n + 1) - 1).toNat

end

end A112862.P12742040999942515822

/-!
# A112863: Numbers k such that (2*k)!/(2*(k!)^2)+1 is prime.

The programs for A112863, there is no canonical definition to state claims against.
-/

/-! ## A112863.P17026228736919074200

`record[A152271(A067366(n+1))]`
-/

namespace A112863.P17026228736919074200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152271 (A067366 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A112863.P17026228736919074200

/-! ## A112863.P11812239633140144824

`record[A001057(A067366(n+2))]`
-/

namespace A112863.P11812239633140144824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (A067366 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A112863.P11812239633140144824

/-! ## A112863.P7587705463761055842

`record[A003602(A067366(n+3))]`
-/

namespace A112863.P7587705463761055842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (A067366 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A112863.P7587705463761055842

/-! ## A112863.P3876125724249206962

`record[A025480(A067366(n+2)+1)]`
-/

namespace A112863.P3876125724249206962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A067366 (n + 2) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A112863.P3876125724249206962

/-! ## A112863.P15789333475741199192

`A008619(record[A093178(A067366(n+1))])`
-/

namespace A112863.P15789333475741199192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093178 (A067366 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A112863.P15789333475741199192

/-!
# A112864: Primes of the form (2*n)!/(2*(n!)^2)+1.

The programs for A112864, there is no canonical definition to state claims against.
-/

/-! ## A112864.P17168211754902468348

`A260878(A112863(n+1))`
-/

namespace A112864.P17168211754902468348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260878 (A112863 (n + 1)).toNat

end

end A112864.P17168211754902468348

/-! ## A112864.P4401462615822028372

`A006481(2*A112863(n+1))`
-/

namespace A112864.P4401462615822028372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006481 (2 * A112863 (n + 1)).toNat

end

end A112864.P4401462615822028372

/-! ## A112864.P5521909873268640261

`A112849(A112863(n+1))+A000007(n)`
-/

namespace A112864.P5521909873268640261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112849 (A112863 (n + 1)).toNat + A000007 n

end

end A112864.P5521909873268640261

/-! ## A112864.P6011674030452401408

`A014963(A112861(n+1))*A112849(A112863(n+1))`
-/

namespace A112864.P6011674030452401408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A112861 (n + 1)).toNat * A112849 (A112863 (n + 1)).toNat

end

end A112864.P6011674030452401408

/-!
# A112865: a(n) = (-1)^(n + floor(n/4) + floor(n/4^2) + ...).

The programs for A112865, the canonical program `A112865.P9931685587358820780` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A112865 has offset 0).

The definition of A112865 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A112865.P9931685587358820780

`1-2*A341389(n)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A112865

/-- `1-2*A341389(n)` -/
def P9931685587358820780.Spec : Prop :=
  ∀ n, P9931685587358820780.a n = A112865 n

theorem P9931685587358820780.correct : P9931685587358820780.Spec := by
  intro n
  simp only [A112865]

end A112865

/-! ## A112865.P7626184109828862087

`∏[-a(n-1)^val(n, 4)]` with `a(0)=1`
-/

namespace A112865.P7626184109828862087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  -(f1 (n - 1) ^ SequenceMachineLib.valuation n 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A112865.P7626184109828862087

namespace A112865

/-- `∏[-a(n-1)^val(n, 4)]` -/
def P7626184109828862087.Spec : Prop :=
  ∀ n, P7626184109828862087.a n = A112865 n

end A112865

/-! ## A112865.P16973461701499787258

`(and(34, val(n, 2))-1)*a(n-1)` with `a(0)=1`
-/

namespace A112865.P16973461701499787258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ((Nat.land 34 (SequenceMachineLib.valuation n 2) : ℤ) - 1) * a (n - 1)

end

end A112865.P16973461701499787258

namespace A112865

/-- `(and(34, val(n, 2))-1)*a(n-1)` -/
def P16973461701499787258.Spec : Prop :=
  ∀ n, P16973461701499787258.a n = A112865 n

end A112865

/-! ## A112865.P10981794174843732079

`(-1)^A029931(n)`
-/

namespace A112865.P10981794174843732079
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-1 : ℚ) ^ (A029931 n : ℤ)

end

end A112865.P10981794174843732079

namespace A112865

/-- `(-1)^A029931(n)` -/
def P10981794174843732079.Spec : Prop :=
  ∀ n, P10981794174843732079.a n = (A112865 n : ℚ)

end A112865

/-! ## A112865.P7557284968487792615

`(-1)^A053737(n)`
-/

namespace A112865.P7557284968487792615
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-1 : ℚ) ^ (A053737 n : ℤ)

end

end A112865.P7557284968487792615

namespace A112865

/-- `(-1)^A053737(n)` -/
def P7557284968487792615.Spec : Prop :=
  ∀ n, P7557284968487792615.a n = (A112865 n : ℚ)

end A112865

/-! ## A112865.P1152752801796136288

`(-1)^A053839(n)`
-/

namespace A112865.P1152752801796136288
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-1 : ℚ) ^ (A053839 n : ℤ)

end

end A112865.P1152752801796136288

namespace A112865

/-- `(-1)^A053839(n)` -/
def P1152752801796136288.Spec : Prop :=
  ∀ n, P1152752801796136288.a n = (A112865 n : ℚ)

end A112865

/-! ## A112865.P8961874947304140679

`(-1)^A139351(n)`
-/

namespace A112865.P8961874947304140679
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-1 : ℚ) ^ (A139351 n : ℤ)

end

end A112865.P8961874947304140679

namespace A112865

/-- `(-1)^A139351(n)` -/
def P8961874947304140679.Spec : Prop :=
  ∀ n, P8961874947304140679.a n = (A112865 n : ℚ)

end A112865

/-! ## A112865.P5177357890031935217

`or(1, -A341389(n))`
-/

namespace A112865.P5177357890031935217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (-A341389 n)

end

end A112865.P5177357890031935217

namespace A112865

/-- `or(1, -A341389(n))` -/
def P5177357890031935217.Spec : Prop :=
  ∀ n, P5177357890031935217.a n = A112865 n

end A112865

/-! ## A112865.P8032484688684729737

`2*A112539(n+1)-1`
-/

namespace A112865.P8032484688684729737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A112539 (n + 1) - 1

end

end A112865.P8032484688684729737

namespace A112865

/-- `2*A112539(n+1)-1` -/
def P8032484688684729737.Spec : Prop :=
  ∀ n, P8032484688684729737.a n = A112865 n

end A112865

/-! ## A112865.P8415582738035616476

`1-and(2, A004718(n)+1)`
-/

namespace A112865.P8415582738035616476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - Int.land 2 (A004718 n + 1)

end

end A112865.P8415582738035616476

namespace A112865

/-- `1-and(2, A004718(n)+1)` -/
def P8415582738035616476.Spec : Prop :=
  ∀ n, P8415582738035616476.a n = A112865 n

end A112865

/-! ## A112865.P105611009315568694

`1-and(2, A323908(n)+1)`
-/

namespace A112865.P105611009315568694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - Int.land 2 (A323908 n + 1)

end

end A112865.P105611009315568694

namespace A112865

/-- `1-and(2, A323908(n)+1)` -/
def P105611009315568694.Spec : Prop :=
  ∀ n, P105611009315568694.a n = A112865 n

end A112865

/-! ## A112865.P18319496447070020939

`1-and(2, A323908(2*n))`
-/

namespace A112865.P18319496447070020939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - Int.land 2 (A323908 (2 * n))

end

end A112865.P18319496447070020939

namespace A112865

/-- `1-and(2, A323908(2*n))` -/
def P18319496447070020939.Spec : Prop :=
  ∀ n, P18319496447070020939.a n = A112865 n

end A112865

/-! ## A112865.P11196441769362849937

`1-2*char[A158705(n+1)]`
-/

namespace A112865.P11196441769362849937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158705 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((2 * (if ∃ j, f1 j = (n : ℤ) then 1 else 0) : ℕ) : ℤ)

end

end A112865.P11196441769362849937

namespace A112865

/-- `1-2*char[A158705(n+1)]` -/
def P11196441769362849937.Spec : Prop :=
  ∀ n, P11196441769362849937.a n = A112865 n

end A112865

/-! ## A112865.P9866775832242433349

`2*char[A158704(n+1)]-1`
-/

namespace A112865.P9866775832242433349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158704 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * (if ∃ j, f1 j = (n : ℤ) then 1 else 0) : ℕ) : ℤ) - 1

end

end A112865.P9866775832242433349

namespace A112865

/-- `2*char[A158704(n+1)]-1` -/
def P9866775832242433349.Spec : Prop :=
  ∀ n, P9866775832242433349.a n = A112865 n

end A112865

/-! ## A112865.P152622596595789878

`A106400(A059905(n))`
-/

namespace A112865.P152622596595789878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106400 (A059905 n).toNat

end

end A112865.P152622596595789878

namespace A112865

/-- `A106400(A059905(n))` -/
def P152622596595789878.Spec : Prop :=
  ∀ n, P152622596595789878.a n = A112865 n

end A112865

/-! ## A112865.P16631217237693527042

`A106400(A063694(n))`
-/

namespace A112865.P16631217237693527042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106400 (A063694 n).toNat

end

end A112865.P16631217237693527042

namespace A112865

/-- `A106400(A063694(n))` -/
def P16631217237693527042.Spec : Prop :=
  ∀ n, P16631217237693527042.a n = A112865 n

end A112865

/-! ## A112865.P6714283897154670935

`1-A010873(2*A053737(n))`
-/

namespace A112865.P6714283897154670935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A010873 (2 * A053737 n).toNat

end

end A112865.P6714283897154670935

namespace A112865

/-- `1-A010873(2*A053737(n))` -/
def P6714283897154670935.Spec : Prop :=
  ∀ n, P6714283897154670935.a n = A112865 n

end A112865

/-! ## A112865.P14995989007722626276

`1-A010873(2*A087069(n))`
-/

namespace A112865.P14995989007722626276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A010873 (2 * A087069 n).toNat

end

end A112865.P14995989007722626276

namespace A112865

/-- `1-A010873(2*A087069(n))` -/
def P14995989007722626276.Spec : Prop :=
  ∀ n, P14995989007722626276.a n = A112865 n

end A112865

/-! ## A112865.P11905598057378112611

`2-A010883(2*A053737(n))`
-/

namespace A112865.P11905598057378112611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A010883 (2 * A053737 n).toNat

end

end A112865.P11905598057378112611

namespace A112865

/-- `2-A010883(2*A053737(n))` -/
def P11905598057378112611.Spec : Prop :=
  ∀ n, P11905598057378112611.a n = A112865 n

end A112865

/-! ## A112865.P16545339565946520169

`A112539(n+1)-A341389(n)`
-/

namespace A112865.P16545339565946520169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112539 (n + 1) - A341389 n

end

end A112865.P16545339565946520169

namespace A112865

/-- `A112539(n+1)-A341389(n)` -/
def P16545339565946520169.Spec : Prop :=
  ∀ n, P16545339565946520169.a n = A112865 n

end A112865

/-!
# A112866: If a(n-1) is the i-th Fibonacci number then a(n)=Fibonacci(i+a(n-2)); with a(1)=1, a(2)=2 and where we use the following nonstandard indexing for the Fibonacci numbers: f(n)=f(n-1)+f(n-2), f(1)=1, f(2)=2 (cf. A000045).

The programs for A112866, there is no canonical definition to state claims against.
-/

/-! ## A112866.P14377405483520051289

`Δ[A000045(a(n-2))+a(n-1)]` with `a(0)=3, a(1)=4`
-/

namespace A112866.P14377405483520051289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3, 4] fun n f1 =>
  A000045 (f1 (n - 2)).toNat + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A112866.P14377405483520051289

/-! ## A112866.P4154237160953097940

`record[A000045(A241356(∏{digits}[n, #+1]))]`
-/

namespace A112866.P4154237160953097940
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A241356 ((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => x + 1).prod).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A112866.P4154237160953097940

/-! ## A112866.P14962860635204619273

`A000045(A328388(n)+A064526(n))`
-/

namespace A112866.P14962860635204619273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A328388 n + A064526 n).toNat

end

end A112866.P14962860635204619273

/-!
# A112867: Greater of two ternary (base 3) numbers (each using only 0's and 1's, the latter's positions never coinciding) such that the decimal representation of their difference is n.

The programs for A112867, there is no canonical definition to state claims against.
-/

/-! ## A112867.P8150945540895064461

`A007089(A060372(n))`
-/

namespace A112867.P8150945540895064461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 (A060372 n).toNat

end

end A112867.P8150945540895064461

/-! ## A112867.P8555012004154251716

`A007088(A343228(n))`
-/

namespace A112867.P8555012004154251716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A343228 n).toNat

end

end A112867.P8555012004154251716

/-! ## A112867.P10403320568181103635

`A185544(2*A343228(n))`
-/

namespace A112867.P10403320568181103635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A343228 n).toNat

end

end A112867.P10403320568181103635

/-! ## A112867.P9804005781742272996

`A007089(A060373(n)+n)`
-/

namespace A112867.P9804005781742272996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 (A060373 n + (n : ℤ)).toNat

end

end A112867.P9804005781742272996

/-! ## A112867.P14919580875537602441

`A046031(A060373(n)+n)`
-/

namespace A112867.P14919580875537602441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046031 (A060373 n + (n : ℤ)).toNat

end

end A112867.P14919580875537602441

/-!
# A112872: First differences of A061396.

The programs for A112872, there is no canonical definition to state claims against.
-/

/-! ## A112872.P7260882887823948134

`Δ[A061396(n)]`
-/

namespace A112872.P7260882887823948134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061396 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A112872.P7260882887823948134

/-! ## A112872.P6244059397746437285

`A061396(n+1)-A061396(n)`
-/

namespace A112872.P6244059397746437285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061396 (n + 1) - A061396 n

end

end A112872.P6244059397746437285

/-! ## A112872.P9887394278397563562

`record[A061396(A065648(n))]-A061396(n)`
-/

namespace A112872.P9887394278397563562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061396 (A065648 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A061396 n

end

end A112872.P9887394278397563562

/-! ## A112872.P1599070050290426538

`record[A061396(A025581(n))]-A061396(n)`
-/

namespace A112872.P1599070050290426538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061396 (A025581 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A061396 n

end

end A112872.P1599070050290426538

/-! ## A112872.P10733711519502369648

`record[A061396(A002262(n))]-A061396(n)`
-/

namespace A112872.P10733711519502369648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061396 (A002262 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A061396 n

end

end A112872.P10733711519502369648

/-!
# A112873: Partial sums of A032378.

The programs for A112873, there is no canonical definition to state claims against.
-/

/-! ## A112873.P11624549811538324646

`∑[A032378(n+1)]`
-/

namespace A112873.P11624549811538324646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032378 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112873.P11624549811538324646

/-! ## A112873.P1689566330629814678

`A066353(n+1)-1`
-/

namespace A112873.P1689566330629814678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066353 (n + 1) - 1

end

end A112873.P1689566330629814678

/-! ## A112873.P7986897966449411785

`∑[record[A032378(A324343(n))]]`
-/

namespace A112873.P7986897966449411785
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032378 (A324343 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112873.P7986897966449411785

/-! ## A112873.P15105845202705887521

`∑[record[A032378(A344180(n))]]`
-/

namespace A112873.P15105845202705887521
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032378 (A344180 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112873.P15105845202705887521

/-! ## A112873.P4471444982010214346

`∑[record[A032378(A286544(n))]]`
-/

namespace A112873.P4471444982010214346
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032378 (A286544 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112873.P4471444982010214346

/-! ## A112873.P3844710249277962429

`∑[record[A032378(A152271(n))]]`
-/

namespace A112873.P3844710249277962429
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032378 (A152271 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112873.P3844710249277962429

/-! ## A112873.P15125057489577794515

`∑[record[A032378(A158416(n))]]`
-/

namespace A112873.P15125057489577794515
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032378 (A158416 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112873.P15125057489577794515

/-! ## A112873.P8926761422456999452

`∑[record[A032378(A134478(n))]]`
-/

namespace A112873.P8926761422456999452
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032378 (A134478 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112873.P8926761422456999452

/-! ## A112873.P11576273516398093254

`A023443(A066353(n+1))`
-/

namespace A112873.P11576273516398093254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A066353 (n + 1)).toNat

end

end A112873.P11576273516398093254

/-!
# A112875: Product of digits of n-th base 10 palindrome.

The programs for A112875, there is no canonical definition to state claims against.
-/

/-! ## A112875.P6342827615767599781

`A007954(A002113(n+1))`
-/

namespace A112875.P6342827615767599781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007954 (A002113 (n + 1)).toNat

end

end A112875.P6342827615767599781

/-! ## A112875.P10411277644388609199

`∏{digits}[A002113(A000027(n+1)), #]`
-/

namespace A112875.P10411277644388609199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (A000027 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).prod

end

end A112875.P10411277644388609199

/-! ## A112875.P6706970540535326649

`∏{digits}[A002113(n+1), A004086(#)]`
-/

namespace A112875.P6706970540535326649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A004086 x).prod

end

end A112875.P6706970540535326649

/-! ## A112875.P18087120792266276026

`∏{digits}[A002113(n+1), A004185(#)]`
-/

namespace A112875.P18087120792266276026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A004185 x).prod

end

end A112875.P18087120792266276026

/-! ## A112875.P12563770615745603714

`∏{digits}[A002113(n+1), A007953(#)]`
-/

namespace A112875.P12563770615745603714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A007953 x).prod

end

end A112875.P12563770615745603714

/-! ## A112875.P15912622506340176440

`∏{digits}[A002113(n+1), A054055(#)]`
-/

namespace A112875.P15912622506340176440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A054055 x).prod

end

end A112875.P15912622506340176440

/-! ## A112875.P15150231608866873749

`A007954(record[A047813(n)])`
-/

namespace A112875.P15150231608866873749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047813 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007954 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A112875.P15150231608866873749

/-! ## A112875.P17492544526979642254

`A007954(eq[n, A004086(n)])`
-/

namespace A112875.P17492544526979642254
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007954 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A112875.P17492544526979642254

/-! ## A112875.P2095069180402147608

`A007954(eq[A256756(n)², A256756(n)])`
-/

namespace A112875.P2095069180402147608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256756 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256756 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007954 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A112875.P2095069180402147608

/-!
# A112877: Zeros in Cald's sequence: positions k such that A006509(k) = 0.

The programs for A112877, there is no canonical definition to state claims against.
-/

/-! ## A112877.P8187356680074155045

`eq[0, A006509(A028310(n))]`
-/

namespace A112877.P8187356680074155045
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006509 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A112877.P8187356680074155045

/-! ## A112877.P1834350911735645961

`eq[0, A006509(A093178(n))]`
-/

namespace A112877.P1834350911735645961
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006509 (A093178 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A112877.P1834350911735645961

/-! ## A112877.P13978649307239167731

`A000720(A117129(n+1))+1`
-/

namespace A112877.P13978649307239167731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A117129 (n + 1)).toNat + 1

end

end A112877.P13978649307239167731

/-! ## A112877.P13721347118231976487

`A004442(eq[0, A006509(n+1)])`
-/

namespace A112877.P13721347118231976487
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006509 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A112877.P13721347118231976487

/-! ## A112877.P2554665139211397049

`A061395(A117129(n+1))+A055642(n)`
-/

namespace A112877.P2554665139211397049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A117129 (n + 1)).toNat + A055642 n

end

end A112877.P2554665139211397049

/-!
# A112881: Indices of prime Perrin numbers; values of n such that A001608(n) is prime.

The programs for A112881, there is no canonical definition to state claims against.
-/

/-! ## A112881.P7078437450150201678

`eq[2, A278248(n+1)]+1`
-/

namespace A112881.P7078437450150201678
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278248 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A112881.P7078437450150201678

/-! ## A112881.P1157917611778440488

`eq[2, A278248(A028310(n))]`
-/

namespace A112881.P1157917611778440488
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278248 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A112881.P1157917611778440488

/-! ## A112881.P3541206567776392251

`eq[A130130(n), A278248(n)]`
-/

namespace A112881.P3541206567776392251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130130 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278248 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A112881.P3541206567776392251

/-! ## A112881.P6778496844129336051

`eq[A036452(n+1), A278248(n)]`
-/

namespace A112881.P6778496844129336051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036452 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278248 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A112881.P6778496844129336051

/-!
# A112882: Indices of prime Padovan numbers: values of k such that A000931(k+5) is prime.

The programs for A112882, there is no canonical definition to state claims against.
-/

/-! ## A112882.P7861559041807864279

`A152870(n+1)-5`
-/

namespace A112882.P7861559041807864279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152870 (n + 1) - 5

end

end A112882.P7861559041807864279

/-! ## A112882.P135482414693360827

`A023447(A152870(n+1))`
-/

namespace A112882.P135482414693360827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023447 (A152870 (n + 1)).toNat

end

end A112882.P135482414693360827

/-! ## A112882.P10600882830751259802

`A023449(A152870(n+1)+2)`
-/

namespace A112882.P10600882830751259802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023449 (A152870 (n + 1) + 2).toNat

end

end A112882.P10600882830751259802

/-! ## A112882.P6354182208370257067

`record[A152870(A290021(n))-5]`
-/

namespace A112882.P6354182208370257067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152870 (A290021 n).toNat - 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A112882.P6354182208370257067

/-! ## A112882.P13957417448421586104

`eq[1, ∑{e}[a(n-2)+a(n-3), #]]` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A112882.P13957417448421586104
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 1] fun n f3 =>
  f3 (n - 2) + f3 (n - 3)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n), Nat.factorization (f3 n) p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A112882.P13957417448421586104

/-!
# A112883: A skew Jacobsthal-Pascal matrix.

The programs for A112883, there is no canonical definition to state claims against.
-/

/-! ## A112883.P2363912287938055747

`ceil(sqrt(8*(n+1)))%2*A113308(A077168(n))`
-/

namespace A112883.P2363912287938055747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌈Real.sqrt (8 * (n + 1) : ℝ)⌉ 2 * A113308 (A077168 n).toNat

end

end A112883.P2363912287938055747

/-! ## A112883.P9804659834941368656

`A351831(A101021(n)+A026729(n))`
-/

namespace A112883.P9804659834941368656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351831 (A101021 n + A026729 n).toNat

end

end A112883.P9804659834941368656

/-! ## A112883.P12576673879355334296

`A053398(A000051(n))*A101688(n)`
-/

namespace A112883.P12576673879355334296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053398 (A000051 n).toNat * A101688 n

end

end A112883.P12576673879355334296

/-! ## A112883.P9260458469741670529

`A305438(n+1)%A066005(A291451(n))`
-/

namespace A112883.P9260458469741670529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A305438 (n + 1)) (A066005 (A291451 n).toNat)

end

end A112883.P9260458469741670529

/-! ## A112883.P1431815570146088694

`A000265(n+1)%A367902(A020474(n+2))`
-/

namespace A112883.P1431815570146088694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000265 (n + 1)) (A367902 (A020474 (n + 2)).toNat)

end

end A112883.P1431815570146088694

/-!
# A112884: Number of bits required to represent binomial(2^n, 2^(n-1)).

The programs for A112884, the canonical program `A112884.P14443215877967918486` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A112884 has offset 0).

The definition of A112884 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A112884.P14443215877967918486

`2^n-floor(n/2)`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A112884

/-- `2^n-floor(n/2)` -/
def P14443215877967918486.Spec : Prop :=
  ∀ n, P14443215877967918486.a n = A112884 n

theorem P14443215877967918486.correct : P14443215877967918486.Spec := by
  intro n
  simp only [A112884]

end A112884

/-! ## A112884.P16926127526288729018

`ogf((1-x-2x^2+3x^3)/(1-3x+x^2+3x^3-2x^4))`
-/

namespace A112884.P16926127526288729018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1, -2, 3] [1, -3, 1, 3, -2] n

end

end A112884.P16926127526288729018

namespace A112884

/-- `ogf((1-x-2x^2+3x^3)/(1-3x+x^2+3x^3-2x^4))` -/
def P16926127526288729018.Spec : Prop :=
  ∀ n, P16926127526288729018.a n = A112884 n

end A112884

/-! ## A112884.P7780787038618620824

`∑[A051049(abs(1-n))]`
-/

namespace A112884.P7780787038618620824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051049 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112884.P7780787038618620824

namespace A112884

/-- `∑[A051049(abs(1-n))]` -/
def P7780787038618620824.Spec : Prop :=
  ∀ n, P7780787038618620824.a n = A112884 n

end A112884

/-! ## A112884.P1559907566308699568

`(or(1, ∑[2^n]-n)+1)/2`
-/

namespace A112884.P1559907566308699568
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lor 1 (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (n : ℤ)) + 1 : ℚ) / 2

end

end A112884.P1559907566308699568

namespace A112884

/-- `(or(1, ∑[2^n]-n)+1)/2` -/
def P1559907566308699568.Spec : Prop :=
  ∀ n, P1559907566308699568.a n = (A112884 n : ℚ)

end A112884

/-! ## A112884.P5308030415001384465

`ceil(A084173(n)/2)`
-/

namespace A112884.P5308030415001384465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A084173 n : ℚ) / 2⌉

end

end A112884.P5308030415001384465

namespace A112884

/-- `ceil(A084173(n)/2)` -/
def P5308030415001384465.Spec : Prop :=
  ∀ n, P5308030415001384465.a n = A112884 n

end A112884

/-! ## A112884.P12345543315916195309

`ceil(A132045(n+1)/2)`
-/

namespace A112884.P12345543315916195309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A132045 (n + 1) : ℚ) / 2⌉

end

end A112884.P12345543315916195309

namespace A112884

/-- `ceil(A132045(n+1)/2)` -/
def P12345543315916195309.Spec : Prop :=
  ∀ n, P12345543315916195309.a n = A112884 n

end A112884

/-! ## A112884.P14852367998363195207

`(A052531(n+1)-n)/2`
-/

namespace A112884.P14852367998363195207
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052531 (n + 1) - (n : ℤ) : ℚ) / 2

end

end A112884.P14852367998363195207

namespace A112884

/-- `(A052531(n+1)-n)/2` -/
def P14852367998363195207.Spec : Prop :=
  ∀ n, P14852367998363195207.a n = (A112884 n : ℚ)

end A112884

/-! ## A112884.P3717554262629570886

`A134353(n)%A000051(n)`
-/

namespace A112884.P3717554262629570886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A134353 n) (A000051 n)

end

end A112884.P3717554262629570886

namespace A112884

/-- `A134353(n)%A000051(n)` -/
def P3717554262629570886.Spec : Prop :=
  ∀ n, P3717554262629570886.a n = A112884 n

end A112884

/-! ## A112884.P15129758897004370162

`ceil(sqrt(A186947(n)))`
-/

namespace A112884.P15129758897004370162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A186947 n : ℝ)⌉

end

end A112884.P15129758897004370162

namespace A112884

/-- `ceil(sqrt(A186947(n)))` -/
def P15129758897004370162.Spec : Prop :=
  ∀ n, P15129758897004370162.a n = A112884 n

end A112884

/-!
# A112885: Primes of the form k + prime(k-1).

The programs for A112885, the canonical program `A112885.P13468112583777318676` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A112885 has offset 1).

The definition of A112885 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 909 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A112885.P13468112583777318676

`p?[p?[2*n+1]+3+n]`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A112885

/-- `p?[p?[2*n+1]+3+n]` -/
def P13468112583777318676.Spec : Prop :=
  ∀ n, (P13468112583777318676.a n : ℤ) = A112885 (n + 1)

theorem P13468112583777318676.correct : P13468112583777318676.Spec := by
  intro n
  simp only [A112885, Nat.add_sub_cancel]

end A112885

/-! ## A112885.P14072818424112444729

`p?[A090178(n+2)]`
-/

namespace A112885.P14072818424112444729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090178 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A112885.P14072818424112444729

namespace A112885

/-- `p?[A090178(n+2)]` -/
def P14072818424112444729.Spec : Prop :=
  ∀ n, P14072818424112444729.a n = A112885 (n + 1)

end A112885

/-! ## A112885.P8627704033167803870

`p?[A014688(n+1)+1]`
-/

namespace A112885.P8627704033167803870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014688 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A112885.P8627704033167803870

namespace A112885

/-- `p?[A014688(n+1)+1]` -/
def P8627704033167803870.Spec : Prop :=
  ∀ n, P8627704033167803870.a n = A112885 (n + 1)

end A112885

/-! ## A112885.P16171382958194819156

`p?[A014690(n+1)+2]`
-/

namespace A112885.P16171382958194819156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014690 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A112885.P16171382958194819156

namespace A112885

/-- `p?[A014690(n+1)+2]` -/
def P16171382958194819156.Spec : Prop :=
  ∀ n, P16171382958194819156.a n = A112885 (n + 1)

end A112885

/-! ## A112885.P8623508720571870565

`p?[A095116(n+1)+2]`
-/

namespace A112885.P8623508720571870565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095116 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A112885.P8623508720571870565

namespace A112885

/-- `p?[A095116(n+1)+2]` -/
def P8623508720571870565.Spec : Prop :=
  ∀ n, P8623508720571870565.a n = A112885 (n + 1)

end A112885

/-! ## A112885.P1251506020495257543

`p?[A167136(n+2)+1]`
-/

namespace A112885.P1251506020495257543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167136 (n + 2) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A112885.P1251506020495257543

namespace A112885

/-- `p?[A167136(n+2)+1]` -/
def P1251506020495257543.Spec : Prop :=
  ∀ n, P1251506020495257543.a n = A112885 (n + 1)

end A112885

/-! ## A112885.P2653235555736060983

`p?[A052147(n+1)+n]`
-/

namespace A112885.P2653235555736060983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052147 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A112885.P2653235555736060983

namespace A112885

/-- `p?[A052147(n+1)+n]` -/
def P2653235555736060983.Spec : Prop :=
  ∀ n, P2653235555736060983.a n = A112885 (n + 1)

end A112885

/-! ## A112885.P6606583299649956503

`p?[A299763(n+1)+n]`
-/

namespace A112885.P6606583299649956503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299763 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A112885.P6606583299649956503

namespace A112885

/-- `p?[A299763(n+1)+n]` -/
def P6606583299649956503.Spec : Prop :=
  ∀ n, P6606583299649956503.a n = A112885 (n + 1)

end A112885

/-! ## A112885.P348474740137550398

`p?[A078916(n+1)-n]`
-/

namespace A112885.P348474740137550398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078916 (n + 1) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A112885.P348474740137550398

namespace A112885

/-- `p?[A078916(n+1)-n]` -/
def P348474740137550398.Spec : Prop :=
  ∀ n, P348474740137550398.a n = A112885 (n + 1)

end A112885

/-! ## A112885.P3281925549387333776

`p?[A113935(n+2)+n]`
-/

namespace A112885.P3281925549387333776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113935 (n + 2) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A112885.P3281925549387333776

namespace A112885

/-- `p?[A113935(n+2)+n]` -/
def P3281925549387333776.Spec : Prop :=
  ∀ n, P3281925549387333776.a n = A112885 (n + 1)

end A112885

/-! ## A112885.P10854469299382081597

`p?[∑[A230847(n+1)]+1]`
-/

namespace A112885.P10854469299382081597
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230847 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A112885.P10854469299382081597

namespace A112885

/-- `p?[∑[A230847(n+1)]+1]` -/
def P10854469299382081597.Spec : Prop :=
  ∀ n, P10854469299382081597.a n = A112885 (n + 1)

end A112885

/-! ## A112885.P12004163405584162135

`p?[A173137(2*n+1)-1]`
-/

namespace A112885.P12004163405584162135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173137 (2 * n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A112885.P12004163405584162135

namespace A112885

/-- `p?[A173137(2*n+1)-1]` -/
def P12004163405584162135.Spec : Prop :=
  ∀ n, P12004163405584162135.a n = A112885 (n + 1)

end A112885

/-! ## A112885.P12126498756494544575

`p?[A008578(n+2)+n+2]`
-/

namespace A112885.P12126498756494544575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 2) + (n + 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A112885.P12126498756494544575

namespace A112885

/-- `p?[A008578(n+2)+n+2]` -/
def P12126498756494544575.Spec : Prop :=
  ∀ n, P12126498756494544575.a n = A112885 (n + 1)

end A112885

/-! ## A112885.P16971434905345322023

`p?[A008864(n+1)+A004442(n)]`
-/

namespace A112885.P16971434905345322023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (n + 1) + A004442 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A112885.P16971434905345322023

namespace A112885

/-- `p?[A008864(n+1)+A004442(n)]` -/
def P16971434905345322023.Spec : Prop :=
  ∀ n, P16971434905345322023.a n = A112885 (n + 1)

end A112885

/-! ## A112885.P133867457977885213

`p?[A014681(n)+A008578(n+1)]`
-/

namespace A112885.P133867457977885213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 n + A008578 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A112885.P133867457977885213

namespace A112885

/-- `p?[A014681(n)+A008578(n+1)]` -/
def P133867457977885213.Spec : Prop :=
  ∀ n, P133867457977885213.a n = A112885 (n + 1)

end A112885

/-! ## A112885.P4427967602516156752

`∩[A076757(n+1), A090178(n+1)]`
-/

namespace A112885.P4427967602516156752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076757 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090178 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A112885.P4427967602516156752

namespace A112885

/-- `∩[A076757(n+1), A090178(n+1)]` -/
def P4427967602516156752.Spec : Prop :=
  ∀ n, (P4427967602516156752.a n : ℤ) = A112885 (n + 1)

end A112885

/-! ## A112885.P4095076902407424005

`∩[A090178(n+1), A106119(n+1)]`
-/

namespace A112885.P4095076902407424005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090178 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106119 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A112885.P4095076902407424005

namespace A112885

/-- `∩[A090178(n+1), A106119(n+1)]` -/
def P4095076902407424005.Spec : Prop :=
  ∀ n, (P4095076902407424005.a n : ℤ) = A112885 (n + 1)

end A112885

/-! ## A112885.P8574803316736137750

`∩[A065396(n+1), A090178(n+1)]`
-/

namespace A112885.P8574803316736137750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065396 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090178 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A112885.P8574803316736137750

namespace A112885

/-- `∩[A065396(n+1), A090178(n+1)]` -/
def P8574803316736137750.Spec : Prop :=
  ∀ n, (P8574803316736137750.a n : ℤ) = A112885 (n + 1)

end A112885

/-! ## A112885.P3552013352928633046

`∩[A078138(n+1), A090178(n+1)]`
-/

namespace A112885.P3552013352928633046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078138 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090178 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A112885.P3552013352928633046

namespace A112885

/-- `∩[A078138(n+1), A090178(n+1)]` -/
def P3552013352928633046.Spec : Prop :=
  ∀ n, (P3552013352928633046.a n : ℤ) = A112885 (n + 1)

end A112885

/-! ## A112885.P17922457359617676054

`∩[A090178(n+1), A108719(n+1)]`
-/

namespace A112885.P17922457359617676054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090178 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108719 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A112885.P17922457359617676054

namespace A112885

/-- `∩[A090178(n+1), A108719(n+1)]` -/
def P17922457359617676054.Spec : Prop :=
  ∀ n, (P17922457359617676054.a n : ℤ) = A112885 (n + 1)

end A112885

/-!
# A112886: Positive integers that have no triangular divisors > 1.

The programs for A112886, the canonical program `A112886.P13448642729938480381` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A112886 has offset 1).

The definition of A112886 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A112886.P8234650647339785702

`A132895(n+1)/2`
-/

namespace A112886.P8234650647339785702
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A132895 (n + 1) : ℚ) / 2

end

end A112886.P8234650647339785702

namespace A112886

/-- `A132895(n+1)/2` -/
def P8234650647339785702.Spec : Prop :=
  ∀ n, P8234650647339785702.a n = (A112886 (n + 1) : ℚ)

theorem P8234650647339785702.correct : P8234650647339785702.Spec := by
  intro n
  simp only [A112886, Nat.add_sub_cancel, A112886.P8234650647339785702.a, A112886.P13448642729938480381.f1, A112886.P13448642729938480381.f2, A112886.P13448642729938480381.a, A132895, A132895.P15394333494377494833.a, A325334, A325334.P3560407124782299478.a, A007862, A007862.P13725744150973773245.f1, A007862.P13725744150973773245.a, A010054, A010054.P18347828677204923252.a, A005369, A005369.P10796159359873341658.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A112886

/-! ## A112886.P13448642729938480381

`lt[n*A325334(n), n]`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A112886

/-- `lt[n*A325334(n), n]` -/
def P13448642729938480381.Spec : Prop :=
  ∀ n, (P13448642729938480381.a n : ℤ) = A112886 (n + 1)

theorem P13448642729938480381.correct : P13448642729938480381.Spec := by
  intro n
  simp only [A112886, Nat.add_sub_cancel]

end A112886

/-! ## A112886.P6109580674641502179

`eq[1, A069972(n+1)]+1`
-/

namespace A112886.P6109580674641502179
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069972 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A112886.P6109580674641502179

namespace A112886

/-- `eq[1, A069972(n+1)]+1` -/
def P6109580674641502179.Spec : Prop :=
  ∀ n, (P6109580674641502179.a n : ℤ) = A112886 (n + 1)

end A112886

/-! ## A112886.P6346901308239950771

`eq[1, A083312(n+1)]+1`
-/

namespace A112886.P6346901308239950771
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083312 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A112886.P6346901308239950771

namespace A112886

/-- `eq[1, A083312(n+1)]+1` -/
def P6346901308239950771.Spec : Prop :=
  ∀ n, (P6346901308239950771.a n : ℤ) = A112886 (n + 1)

end A112886

/-! ## A112886.P1297103912037712166

`lt[A325334(n+1), 1]+1`
-/

namespace A112886.P1297103912037712166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325334 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A112886.P1297103912037712166

namespace A112886

/-- `lt[A325334(n+1), 1]+1` -/
def P1297103912037712166.Spec : Prop :=
  ∀ n, (P1297103912037712166.a n : ℤ) = A112886 (n + 1)

end A112886

/-! ## A112886.P3802363092302201609

`lt[A294334(n), atan(n+1)]`
-/

namespace A112886.P3802363092302201609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294334 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.arctan (n + 1 : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A112886.P3802363092302201609

namespace A112886

/-- `lt[A294334(n), atan(n+1)]` -/
def P3802363092302201609.Spec : Prop :=
  ∀ n, (P3802363092302201609.a n : ℤ) = A112886 (n + 1)

end A112886

/-! ## A112886.P9859676291757841284

`eq[1, A007862(n+1)]+1`
-/

namespace A112886.P9859676291757841284
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007862 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A112886.P9859676291757841284

namespace A112886

/-- `eq[1, A007862(n+1)]+1` -/
def P9859676291757841284.Spec : Prop :=
  ∀ n, (P9859676291757841284.a n : ℤ) = A112886 (n + 1)

end A112886

/-! ## A112886.P11654193483655806099

`eq[1, A185027(n+1)]+1`
-/

namespace A112886.P11654193483655806099
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185027 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A112886.P11654193483655806099

namespace A112886

/-- `eq[1, A185027(n+1)]+1` -/
def P11654193483655806099.Spec : Prop :=
  ∀ n, (P11654193483655806099.a n : ℤ) = A112886 (n + 1)

end A112886

/-! ## A112886.P16621046215168837302

`eq[1, A294334(n+1)]+1`
-/

namespace A112886.P16621046215168837302
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294334 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A112886.P16621046215168837302

namespace A112886

/-- `eq[1, A294334(n+1)]+1` -/
def P16621046215168837302.Spec : Prop :=
  ∀ n, (P16621046215168837302.a n : ℤ) = A112886 (n + 1)

end A112886

/-! ## A112886.P5807320281725302101

`eq[A010176(n), A294334(n)]`
-/

namespace A112886.P5807320281725302101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010176 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294334 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A112886.P5807320281725302101

namespace A112886

/-- `eq[A010176(n), A294334(n)]` -/
def P5807320281725302101.Spec : Prop :=
  ∀ n, (P5807320281725302101.a n : ℤ) = A112886 (n + 1)

end A112886

/-! ## A112886.P7372454522101153317

`eq[A010225(n), A294334(n)]`
-/

namespace A112886.P7372454522101153317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010225 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294334 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A112886.P7372454522101153317

namespace A112886

/-- `eq[A010225(n), A294334(n)]` -/
def P7372454522101153317.Spec : Prop :=
  ∀ n, (P7372454522101153317.a n : ℤ) = A112886 (n + 1)

end A112886

/-! ## A112886.P8945489594412891334

`eq[A011655(n), A294334(n)]`
-/

namespace A112886.P8945489594412891334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011655 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294334 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A112886.P8945489594412891334

namespace A112886

/-- `eq[A011655(n), A294334(n)]` -/
def P8945489594412891334.Spec : Prop :=
  ∀ n, (P8945489594412891334.a n : ℤ) = A112886 (n + 1)

end A112886

/-! ## A112886.P903412602780677654

`eq[A014578(n), A294334(n)]`
-/

namespace A112886.P903412602780677654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014578 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294334 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A112886.P903412602780677654

namespace A112886

/-- `eq[A014578(n), A294334(n)]` -/
def P903412602780677654.Spec : Prop :=
  ∀ n, (P903412602780677654.a n : ℤ) = A112886 (n + 1)

end A112886

/-! ## A112886.P9940241276303522633

`eq[A000007(n), A325334(n)]`
-/

namespace A112886.P9940241276303522633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325334 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A112886.P9940241276303522633

namespace A112886

/-- `eq[A000007(n), A325334(n)]` -/
def P9940241276303522633.Spec : Prop :=
  ∀ n, (P9940241276303522633.a n : ℤ) = A112886 (n + 1)

end A112886

/-! ## A112886.P17668518531887970568

`eq[A000038(n), A325334(n)]`
-/

namespace A112886.P17668518531887970568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325334 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A112886.P17668518531887970568

namespace A112886

/-- `eq[A000038(n), A325334(n)]` -/
def P17668518531887970568.Spec : Prop :=
  ∀ n, (P17668518531887970568.a n : ℤ) = A112886 (n + 1)

end A112886

/-! ## A112886.P17078915433703639928

`eq[A040577(n), A294334(n)]`
-/

namespace A112886.P17078915433703639928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040577 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294334 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A112886.P17078915433703639928

namespace A112886

/-- `eq[A040577(n), A294334(n)]` -/
def P17078915433703639928.Spec : Prop :=
  ∀ n, (P17078915433703639928.a n : ℤ) = A112886 (n + 1)

end A112886

/-! ## A112886.P13434822234743369156

`eq[A040790(n), A294334(n)]`
-/

namespace A112886.P13434822234743369156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040790 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294334 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A112886.P13434822234743369156

namespace A112886

/-- `eq[A040790(n), A294334(n)]` -/
def P13434822234743369156.Spec : Prop :=
  ∀ n, (P13434822234743369156.a n : ℤ) = A112886 (n + 1)

end A112886

/-! ## A112886.P13941263493310049112

`eq[A040962(n), A294334(n)]`
-/

namespace A112886.P13941263493310049112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040962 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294334 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A112886.P13941263493310049112

namespace A112886

/-- `eq[A040962(n), A294334(n)]` -/
def P13941263493310049112.Spec : Prop :=
  ∀ n, (P13941263493310049112.a n : ℤ) = A112886 (n + 1)

end A112886

/-! ## A112886.P13890317218025037879

`eq[A014045(n), A325334(n)]`
-/

namespace A112886.P13890317218025037879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014045 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325334 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A112886.P13890317218025037879

namespace A112886

/-- `eq[A014045(n), A325334(n)]` -/
def P13890317218025037879.Spec : Prop :=
  ∀ n, (P13890317218025037879.a n : ℤ) = A112886 (n + 1)

end A112886

/-! ## A112886.P13598505476695330788

`eq[A014189(n), A325334(n)]`
-/

namespace A112886.P13598505476695330788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014189 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325334 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A112886.P13598505476695330788

namespace A112886

/-- `eq[A014189(n), A325334(n)]` -/
def P13598505476695330788.Spec : Prop :=
  ∀ n, (P13598505476695330788.a n : ℤ) = A112886 (n + 1)

end A112886

/-!
# A112887: Semiprime(n) - composite(n).

The programs for A112887, there is no canonical definition to state claims against.
-/

/-! ## A112887.P1609817657747884179

`A001358(n+1)-(comp[p?[2*n+1]-3]+3)`
-/

namespace A112887.P1609817657747884179
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n) : ℤ) - 3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1) - (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 3 : ℤ)

end

end A112887.P1609817657747884179

/-! ## A112887.P10690273710930993346

`A001358(n+1)-Δ[A053767(n)]`
-/

namespace A112887.P10690273710930993346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053767 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1) - (f1 (n + 1) - f1 n)

end

end A112887.P10690273710930993346

/-! ## A112887.P15881577149567184704

`A001358(n+1)-comp[A020513(n)]`
-/

namespace A112887.P15881577149567184704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020513 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1) - (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)

end

end A112887.P15881577149567184704

/-! ## A112887.P10787801837958222745

`A001358(n+1)-comp[A327968(n)]`
-/

namespace A112887.P10787801837958222745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327968 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1) - (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)

end

end A112887.P10787801837958222745

/-! ## A112887.P7733803789490266275

`A001358(n+1)-comp[A351078(n)]`
-/

namespace A112887.P7733803789490266275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351078 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1) - (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)

end

end A112887.P7733803789490266275

/-! ## A112887.P903965473657607955

`A001358(n+1)-A002808(n+1)`
-/

namespace A112887.P903965473657607955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1) - A002808 (n + 1)

end

end A112887.P903965473657607955

/-! ## A112887.P7212872658087978726

`A038529(n+1)-A065870(n+1)`
-/

namespace A112887.P7212872658087978726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038529 (n + 1) - A065870 (n + 1)

end

end A112887.P7212872658087978726

/-! ## A112887.P11523192578116571285

`A088707(n+1)-A079696(n+1)`
-/

namespace A112887.P11523192578116571285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088707 (n + 1) - A079696 (n + 1)

end

end A112887.P11523192578116571285

/-! ## A112887.P8841814722152120742

`A133796(n+1)-A064799(n+1)`
-/

namespace A112887.P8841814722152120742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133796 (n + 1) - A064799 (n + 1)

end

end A112887.P8841814722152120742

/-! ## A112887.P2092123781326775158

`A175708(n+1)-A073169(n+1)`
-/

namespace A112887.P2092123781326775158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175708 (n + 1) - A073169 (n + 1)

end

end A112887.P2092123781326775158

/-!
# A112888: Least semiprime of a cluster of just n semiprimes.

The programs for A112888, there is no canonical definition to state claims against.
-/

/-! ## A112888.P957740539024098722

`A319046(ceil(sqrt(∑[2*n]))+5)`
-/

namespace A112888.P957740539024098722
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319046 (⌈Real.sqrt ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ)⌉ + 5).toNat

end

end A112888.P957740539024098722

/-!
# A112889: a(n) is the least nonnegative integer in base 10 containing n zeros that is divisible by n.

The programs for A112889, there is no canonical definition to state claims against.
-/

/-! ## A112889.P8626508841632781753

`(n+1)*A112890(n+1)`
-/

namespace A112889.P8626508841632781753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A112890 (n + 1)

end

end A112889.P8626508841632781753

/-! ## A112889.P17650706544703982265

`A112890(n+1)*A348553(n)`
-/

namespace A112889.P17650706544703982265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112890 (n + 1) * A348553 n

end

end A112889.P17650706544703982265

/-! ## A112889.P3666222413936941255

`lcm(n+1, A048529(2*n+1))`
-/

namespace A112889.P3666222413936941255
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n + 1 : ℤ) (A048529 (2 * n + 1))

end

end A112889.P3666222413936941255

/-! ## A112889.P17033460364960945959

`lcm(A048529(2*n+1), A132271(n))`
-/

namespace A112889.P17033460364960945959
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A048529 (2 * n + 1)) (A132271 n)

end

end A112889.P17033460364960945959

/-! ## A112889.P4099427281977744601

`lcm(comp[A001487(n+9)], A048365(3*(n+1)))`
-/

namespace A112889.P4099427281977744601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001487 (n + 9)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) (A048365 (3 * (n + 1)))

end

end A112889.P4099427281977744601

/-!
# A112890: a(n) = A112889(n)/n.

The programs for A112890, there is no canonical definition to state claims against.
-/

/-! ## A112890.P12862242551050693268

`A112889(n+1)/(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A112890.P12862242551050693268
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A112889 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A112890.P12862242551050693268

/-! ## A112890.P8585157799497218265

`ceil(A112889(A348553(n))/A348553(n))`
-/

namespace A112890.P8585157799497218265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A112889 (A348553 n).toNat : ℚ) / (A348553 n : ℚ)⌉

end

end A112890.P8585157799497218265

/-! ## A112890.P16922488202861179543

`lcm(n+1, A048529(2*n+1))/A132271(n)`
-/

namespace A112890.P16922488202861179543
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (n + 1 : ℤ) (A048529 (2 * n + 1)) : ℚ) / (A132271 n : ℚ)

end

end A112890.P16922488202861179543

/-! ## A112890.P17732363694898916456

`lcm(A048529(2*n+1), A132271(n))/A132271(n)`
-/

namespace A112890.P17732363694898916456
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A048529 (2 * n + 1)) (A132271 n) : ℚ) / (A132271 n : ℚ)

end

end A112890.P17732363694898916456

/-!
# A112891: a(n) is the least positive integer in base 10 containing n ones that is divisible by n.

The programs for A112891, there is no canonical definition to state claims against.
-/

/-! ## A112891.P9189526415851725159

`(n+1)*A112892(n+1)`
-/

namespace A112891.P9189526415851725159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A112892 (n + 1)

end

end A112891.P9189526415851725159

/-! ## A112891.P16572115017671228031

`A112892(n+1)*A291769(n)`
-/

namespace A112891.P16572115017671228031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112892 (n + 1) * A291769 n

end

end A112891.P16572115017671228031

/-! ## A112891.P721752859861308231

`A112892(n+1)*A348553(n)`
-/

namespace A112891.P721752859861308231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112892 (n + 1) * A348553 n

end

end A112891.P721752859861308231

/-! ## A112891.P1613012788500657445

`A112892(n+1)/(n+1)^A308778(n²)`
-/

namespace A112891.P1613012788500657445
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A112892 (n + 1) : ℚ) / (n + 1 : ℚ) ^ (A308778 (n ^ 2) : ℤ)

end

end A112891.P1613012788500657445

/-! ## A112891.P166475138530531585

`A112892(A132271(n))*A132271(n)`
-/

namespace A112891.P166475138530531585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112892 (A132271 n).toNat * A132271 n

end

end A112891.P166475138530531585

/-!
# A112892: a(n)*n = A112891(n).

The programs for A112892, there is no canonical definition to state claims against.
-/

/-! ## A112892.P16944403899873783996

`A112891(n+1)/(n+1)`
-/

namespace A112892.P16944403899873783996
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A112891 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A112892.P16944403899873783996

/-! ## A112892.P471123346794399842

`ceil(A112891(A291769(n))/A291769(n))`
-/

namespace A112892.P471123346794399842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A112891 (A291769 n).toNat : ℚ) / (A291769 n : ℚ)⌉

end

end A112892.P471123346794399842

/-! ## A112892.P15227708705012135764

`A112891(A291769(n))/A291769(n)*A033999(n)²`
-/

namespace A112892.P15227708705012135764
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A112891 (A291769 n).toNat : ℚ) / (A291769 n : ℚ) * (A033999 n ^ 2 : ℚ)

end

end A112892.P15227708705012135764

/-! ## A112892.P9176647187530863942

`A112891(A291769(n))/A291769(n)*A010893(n)!`
-/

namespace A112892.P9176647187530863942
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A112891 (A291769 n).toNat : ℚ) / (A291769 n : ℚ) * (Nat.factorial (A010893 (n + 13)).toNat : ℚ)

end

end A112892.P9176647187530863942

/-!
# A112893: a(n) is the least positive integer in base 10 containing n twos that is divisible by n.

The programs for A112893, there is no canonical definition to state claims against.
-/

/-! ## A112893.P18408038646485654309

`(n+1)*A112894(n+1)`
-/

namespace A112893.P18408038646485654309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A112894 (n + 1)

end

end A112893.P18408038646485654309

/-! ## A112893.P16980437297759312710

`A112894(n+1)*A291769(n)`
-/

namespace A112893.P16980437297759312710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112894 (n + 1) * A291769 n

end

end A112893.P16980437297759312710

/-! ## A112893.P3875387823087180182

`A112894(n+1)*A348553(n)`
-/

namespace A112893.P3875387823087180182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112894 (n + 1) * A348553 n

end

end A112893.P3875387823087180182

/-! ## A112893.P9359774029016320751

`A112894(A132271(n))*A132271(n)`
-/

namespace A112893.P9359774029016320751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112894 (A132271 n).toNat * A132271 n

end

end A112893.P9359774029016320751

/-! ## A112893.P10724609611727440029

`A112894(A216556(n))*A216556(n)`
-/

namespace A112893.P10724609611727440029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112894 (A216556 n).toNat * A216556 n

end

end A112893.P10724609611727440029

/-!
# A112894: a(n)*n = A112893(n).

The programs for A112894, there is no canonical definition to state claims against.
-/

/-! ## A112894.P8411835169313923217

`A112893(n+1)/(n+1)`
-/

namespace A112894.P8411835169313923217
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A112893 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A112894.P8411835169313923217

/-! ## A112894.P1985142291544398289

`ceil(A112893(A291769(n))/A291769(n))`
-/

namespace A112894.P1985142291544398289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A112893 (A291769 n).toNat : ℚ) / (A291769 n : ℚ)⌉

end

end A112894.P1985142291544398289

/-! ## A112894.P4115193455329886662

`ceil(A112893(A348553(n))/A348553(n))`
-/

namespace A112894.P4115193455329886662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A112893 (A348553 n).toNat : ℚ) / (A348553 n : ℚ)⌉

end

end A112894.P4115193455329886662

/-! ## A112894.P15031431314641637102

`round(A112893(A291769(n))/A348553(n))`
-/

namespace A112894.P15031431314641637102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A112893 (A291769 n).toNat : ℚ) / (A348553 n : ℚ))

end

end A112894.P15031431314641637102

/-! ## A112894.P4211713867758551310

`A112893(A291769(n))/A291769(n)-n*A000038(n)`
-/

namespace A112894.P4211713867758551310
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A112893 (A291769 n).toNat : ℚ) / (A291769 n : ℚ) - ((n : ℤ) * A000038 n : ℚ)

end

end A112894.P4211713867758551310

/-!
# A112895: a(n) is the least positive integer in base 10 containing n threes that is divisible by n.

The programs for A112895, there is no canonical definition to state claims against.
-/

/-! ## A112895.P208579107988680855

`(n+1)*A112896(n+1)`
-/

namespace A112895.P208579107988680855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A112896 (n + 1)

end

end A112895.P208579107988680855

/-! ## A112895.P8234773341901618323

`A112896(n+1)*A291769(n)`
-/

namespace A112895.P8234773341901618323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112896 (n + 1) * A291769 n

end

end A112895.P8234773341901618323

/-! ## A112895.P6999308977965857121

`A112896(n+1)*A348553(n)`
-/

namespace A112895.P6999308977965857121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112896 (n + 1) * A348553 n

end

end A112895.P6999308977965857121

/-! ## A112895.P4493246565603547085

`A112896(A132271(n))*A132271(n)`
-/

namespace A112895.P4493246565603547085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112896 (A132271 n).toNat * A132271 n

end

end A112895.P4493246565603547085

/-! ## A112895.P16252535612264750716

`A112896(A216556(n))*A216556(n)`
-/

namespace A112895.P16252535612264750716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112896 (A216556 n).toNat * A216556 n

end

end A112895.P16252535612264750716

/-!
# A112896: a(n)*n = A112895(n).

The programs for A112896, there is no canonical definition to state claims against.
-/

/-! ## A112896.P1892229494145482150

`A112895(n+1)/(n+1)`
-/

namespace A112896.P1892229494145482150
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A112895 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A112896.P1892229494145482150

/-! ## A112896.P530912068400696803

`A112910(3*(n+1))%A038444(A001844(n))`
-/

namespace A112896.P530912068400696803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A112910 (3 * (n + 1))) (A038444 (A001844 n).toNat)

end

end A112896.P530912068400696803

/-!
# A112897: a(n) is the least positive integer in base 10 containing n fours that is divisible by n.

The programs for A112897, there is no canonical definition to state claims against.
-/

/-! ## A112897.P9666009667007197781

`(n+1)*A112898(n+1)`
-/

namespace A112897.P9666009667007197781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A112898 (n + 1)

end

end A112897.P9666009667007197781

/-! ## A112897.P8635246454955929571

`A112898(n+1)*A291769(n)`
-/

namespace A112897.P8635246454955929571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112898 (n + 1) * A291769 n

end

end A112897.P8635246454955929571

/-! ## A112897.P360446022944331472

`A112898(n+1)*A348553(n)`
-/

namespace A112897.P360446022944331472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112898 (n + 1) * A348553 n

end

end A112897.P360446022944331472

/-! ## A112897.P3122402915349258095

`A112898(n+1)/(n+1)^A008683(A151800(n))`
-/

namespace A112897.P3122402915349258095
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A112898 (n + 1) : ℚ) / (n + 1 : ℚ) ^ (A008683 (A151800 n).toNat : ℤ)

end

end A112897.P3122402915349258095

/-! ## A112897.P15221011272448470518

`A112898(A132271(n))*A132271(n)`
-/

namespace A112897.P15221011272448470518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112898 (A132271 n).toNat * A132271 n

end

end A112897.P15221011272448470518

/-!
# A112898: a(n)*n = A112897(n).

The programs for A112898, there is no canonical definition to state claims against.
-/

/-! ## A112898.P7662027519585960527

`A112897(n+1)/(n+1)`
-/

namespace A112898.P7662027519585960527
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A112897 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A112898.P7662027519585960527

/-! ## A112898.P10970949882366210728

`ceil(A112897(A291769(n))/A291769(n))`
-/

namespace A112898.P10970949882366210728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A112897 (A291769 n).toNat : ℚ) / (A291769 n : ℚ)⌉

end

end A112898.P10970949882366210728

/-! ## A112898.P18395196240142695394

`ceil(A112897(A348553(n))/A348553(n))`
-/

namespace A112898.P18395196240142695394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A112897 (A348553 n).toNat : ℚ) / (A348553 n : ℚ)⌉

end

end A112898.P18395196240142695394

/-! ## A112898.P6298939203475347215

`round(A112897(A291769(n))/A348553(n))`
-/

namespace A112898.P6298939203475347215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A112897 (A291769 n).toNat : ℚ) / (A348553 n : ℚ))

end

end A112898.P6298939203475347215

/-! ## A112898.P2057688009374128684

`A262681(n)/A291769(n)*A112897(A291769(n))`
-/

namespace A112898.P2057688009374128684
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A262681 n : ℚ) / (A291769 n : ℚ) * (A112897 (A291769 n).toNat : ℚ)

end

end A112898.P2057688009374128684

/-!
# A112899: A skew Pell-Pascal triangle.

The programs for A112899, there is no canonical definition to state claims against.
-/

/-! ## A112899.P15793284053854084804

`A209341(n+1)%A132171(A099097(n))`
-/

namespace A112899.P15793284053854084804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A209341 (n + 1)) (A132171 (A099097 n).toNat)

end

end A112899.P15793284053854084804

/-! ## A112899.P17363779558009414574

`A000001(A067774(3*n+4)*A372873(n+1))`
-/

namespace A112899.P17363779558009414574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000001 (A067774 (3 * n + 4) * A372873 (n + 1)).toNat

end

end A112899.P17363779558009414574

/-! ## A112899.P3602098039407768414

`A029922(A209437(n+1)^A123895(n))`
-/

namespace A112899.P3602098039407768414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029922 (SequenceMachineLib.roundAway ((A209437 (n + 1) : ℚ) ^ (A123895 n : ℤ))).toNat

end

end A112899.P3602098039407768414

/-! ## A112899.P569324144595690691

`A209687(n+1)-A325817(A287022(n+1))`
-/

namespace A112899.P569324144595690691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209687 (n + 1) - A325817 (A287022 (n + 1)).toNat

end

end A112899.P569324144595690691

