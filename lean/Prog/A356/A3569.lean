import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
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
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C037
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C006
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
import Seq.B007.C001
import Seq.B008.C000
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
# A356900: a(n) = P(n, 1/2) where P(n, x) = x^(-n)*Sum_{k=0..n} A241171(n, k)*x^k.

The programs for A356900, there is no canonical definition to state claims against.
-/

/-! ## A356900.P17532357018914138255

`A006154(2*n)/A000079(n)`
-/

namespace A356900.P17532357018914138255
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006154 (2 * n) : ℚ) / (A000079 n : ℚ)

end

end A356900.P17532357018914138255

/-! ## A356900.P17668259633099729131

`A006154(2*n)/∑[A011782(n)]`
-/

namespace A356900.P17668259633099729131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006154 (2 * n) : ℚ) / ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ)

end

end A356900.P17668259633099729131

/-! ## A356900.P12837934975916493133

`A006154(2*n)/record[A059268(n)]`
-/

namespace A356900.P12837934975916493133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006154 (2 * n) : ℚ) / (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ)

end

end A356900.P12837934975916493133

/-! ## A356900.P14700985857844168192

`A006154(2*n)/A011782(n+1)`
-/

namespace A356900.P14700985857844168192
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006154 (2 * n) : ℚ) / (A011782 (n + 1) : ℚ)

end

end A356900.P14700985857844168192

/-! ## A356900.P2428945201945159662

`A006154(2*n)/A059268(A046092(n))`
-/

namespace A356900.P2428945201945159662
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006154 (2 * n) : ℚ) / (A059268 (A046092 n).toNat : ℚ)

end

end A356900.P2428945201945159662

/-!
# A356901: a(n) = (2*n)! * [x^(2*n)] arctan(x / sqrt(2))^2.

The programs for A356901, there is no canonical definition to state claims against.
-/

/-! ## A356901.P3884789855991372349

`A039757(A000124(n))*A104150(n)`
-/

namespace A356901.P3884789855991372349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039757 (A000124 n).toNat * A104150 n

end

end A356901.P3884789855991372349

/-!
# A356904: E.g.f. satisfies A(x)^2 * log(A(x)) = x * (exp(x) - 1).

The programs for A356904, there is no canonical definition to state claims against.
-/

/-! ## A356904.P6357070135152450629

`A118032(n+4)-A113340(A000669(n+1))`
-/

namespace A356904.P6357070135152450629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118032 (n + 4) - A113340 (A000669 (n + 1)).toNat

end

end A356904.P6357070135152450629

/-!
# A356905: E.g.f. satisfies A(x)^A(x) = 1/(1 - x)^x.

The programs for A356905, there is no canonical definition to state claims against.
-/

/-! ## A356905.P9104786226808180738

`A322391(A107845(n+1))-A012874(n+1)`
-/

namespace A356905.P9104786226808180738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322391 (A107845 (n + 1)).toNat - A012874 (n + 1)

end

end A356905.P9104786226808180738

/-!
# A356906: E.g.f. satisfies A(x)^(A(x)^2) = 1/(1 - x)^x.

The programs for A356906, there is no canonical definition to state claims against.
-/

/-! ## A356906.P12586543721835392235

`A000038(A001652(n))-A354611(n)`
-/

namespace A356906.P12586543721835392235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (A001652 n).toNat - A354611 n

end

end A356906.P12586543721835392235

/-! ## A356906.P298014201104890851

`A000122(A002457(n))-A354611(n)`
-/

namespace A356906.P298014201104890851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 (A002457 n).toNat - A354611 n

end

end A356906.P298014201104890851

/-!
# A356908: E.g.f. satisfies A(x)^A(x) = 1/(1 - x)^2.

The programs for A356908, there is no canonical definition to state claims against.
-/

/-! ## A356908.P5211937296990236836

`A354419(n)+A352129(A052863(n))`
-/

namespace A356908.P5211937296990236836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354419 n + A352129 (A052863 n).toNat

end

end A356908.P5211937296990236836

/-!
# A356909: E.g.f. satisfies A(x)^A(x) = 1/(1 - 2*x)^(1/2).

The programs for A356909, there is no canonical definition to state claims against.
-/

/-! ## A356909.P3116302656450023497

`A305194(A001452(n+1))`
-/

namespace A356909.P3116302656450023497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305194 (A001452 (n + 1)).toNat

end

end A356909.P3116302656450023497

/-! ## A356909.P1742882223786008496

`A337634(A059849(n))+1`
-/

namespace A356909.P1742882223786008496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337634 (A059849 n).toNat + 1

end

end A356909.P1742882223786008496

/-!
# A356910: E.g.f. satisfies A(x)^A(x) = 1/(1 - x)^(x^2).

The programs for A356910, there is no canonical definition to state claims against.
-/

/-! ## A356910.P6514162221165428853

`A007121(n)*A099443(A002577(n))`
-/

namespace A356910.P6514162221165428853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007121 n * A099443 (A002577 n).toNat

end

end A356910.P6514162221165428853

/-! ## A356910.P5732391844956742449

`A007121(n)*A355684(A193282(n))`
-/

namespace A356910.P5732391844956742449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007121 n * A355684 (A193282 n).toNat

end

end A356910.P5732391844956742449

/-! ## A356910.P9785777780394158025

`A007121(n)*A057077(A007178(n+1))`
-/

namespace A356910.P9785777780394158025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007121 n * A057077 (A007178 (n + 1)).toNat

end

end A356910.P9785777780394158025

/-!
# A356912: E.g.f. satisfies A(x)^A(x) = 1/(1 - x)^(x^2/2).

The programs for A356912, there is no canonical definition to state claims against.
-/

/-! ## A356912.P15454552514916084494

`A380339(n)+A036987(A000302(n))`
-/

namespace A356912.P15454552514916084494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380339 n + A036987 (A000302 n).toNat

end

end A356912.P15454552514916084494

/-! ## A356912.P17403125338019379336

`A380339(n)+A000035(A157004(n))`
-/

namespace A356912.P17403125338019379336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380339 n + A000035 (A157004 n).toNat

end

end A356912.P17403125338019379336

/-! ## A356912.P6569953429791390125

`A380339(n)+A274719(A005061(n))`
-/

namespace A356912.P6569953429791390125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380339 n + A274719 (A005061 n).toNat

end

end A356912.P6569953429791390125

/-! ## A356912.P5908936553870372967

`A380339(n)+A000035(A351493(n))`
-/

namespace A356912.P5908936553870372967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380339 n + A000035 (A351493 n).toNat

end

end A356912.P5908936553870372967

/-! ## A356912.P2737860242574820675

`A380339(n)+A000035(A351506(n))`
-/

namespace A356912.P2737860242574820675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380339 n + A000035 (A351506 n).toNat

end

end A356912.P2737860242574820675

/-!
# A356913: E.g.f. satisfies A(x)^A(x) = 1/(1 - x)^(x^3/6).

The programs for A356913, there is no canonical definition to state claims against.
-/

/-! ## A356913.P2737498264719488762

`A351506(n)%A320506(A000204(n+1))`
-/

namespace A356913.P2737498264719488762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A351506 n) (A320506 (A000204 (n + 1)).toNat)

end

end A356913.P2737498264719488762

/-!
# A356914: E.g.f. satisfies: A(x) = 1/(1 - x * A(x)^2)^A(x).

The programs for A356914, there is no canonical definition to state claims against.
-/

/-! ## A356914.P3323081642144427617

`A188092(A006120(n)-xor(n, floor(n/2)))`
-/

namespace A356914.P3323081642144427617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188092 (A006120 n - Int.xor (n : ℤ) ⌊(n : ℚ) / 2⌋).toNat

end

end A356914.P3323081642144427617

/-!
# A356915: Number of partitions of n into 4 parts that divide n.

The programs for A356915, there is no canonical definition to state claims against.
-/

/-! ## A356915.P9974111809163290625

`A340734(A152271(n))`
-/

namespace A356915.P9974111809163290625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340734 (A152271 n).toNat

end

end A356915.P9974111809163290625

/-! ## A356915.P9675138320238721124

`A340734(A142150(n+1))`
-/

namespace A356915.P9675138320238721124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340734 (A142150 (n + 1)).toNat

end

end A356915.P9675138320238721124

/-! ## A356915.P15798013586181503524

`A340734(A166514(n+1))`
-/

namespace A356915.P15798013586181503524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340734 (A166514 (n + 1)).toNat

end

end A356915.P15798013586181503524

/-! ## A356915.P11491077422393486046

`A340734(A133265(n)/2)`
-/

namespace A356915.P11491077422393486046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340734 (SequenceMachineLib.roundAway ((A133265 n : ℚ) / 2)).toNat

end

end A356915.P11491077422393486046

/-! ## A356915.P11958574597604219622

`A340734(gcd(n+1, A008619(n)))`
-/

namespace A356915.P11958574597604219622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340734 (Int.gcd (n + 1 : ℤ) (A008619 n))

end

end A356915.P11958574597604219622

/-!
# A356917: Irregular triangle read by rows where row n lists the Colijn-Plazzotta subtree numbers, in ascending order, of each vertex of the rooted binary tree with their tree number n.

The programs for A356917, there is no canonical definition to state claims against.
-/

/-! ## A356917.P8327709395294864372

`A026791(lt[A267990(n+1), A336506(n+1)])`
-/

namespace A356917.P8327709395294864372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267990 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336506 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026791 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A356917.P8327709395294864372

/-!
# A356918: Triangle read by rows where T(n,k) is Colijn and Plazzotta's distance metric d_1(n,k) between rooted binary tree numbers n and k, for 1 <= k <= n.

The programs for A356918, there is no canonical definition to state claims against.
-/

/-! ## A356918.P7280837233907590405

`A033715(A001227(n+1))*A322028(A126454(n))`
-/

namespace A356918.P7280837233907590405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033715 (A001227 (n + 1)).toNat * A322028 (A126454 n).toNat

end

end A356918.P7280837233907590405

/-! ## A356918.P11425475419550024478

`∑{e}[A325544(n+2)^A131335(n+1), #%#²]`
-/

namespace A356918.P11425475419550024478
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A325544 (n + 2) : ℚ) ^ (A131335 (n + 1) : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (SequenceMachineLib.roundAway (f1 n)).natAbs, Nat.factorization (SequenceMachineLib.roundAway (f1 n)).natAbs p % Nat.factorization (SequenceMachineLib.roundAway (f1 n)).natAbs p ^ 2

end

end A356918.P11425475419550024478

/-! ## A356918.P17484984930657886051

`A005811(A130403(n)*A183622(n+1))`
-/

namespace A356918.P17484984930657886051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005811 (A130403 n * A183622 (n + 1)).toNat

end

end A356918.P17484984930657886051

/-! ## A356918.P18231835381279385537

`A001222(A092392(n))*A001227(A028491(n+1))`
-/

namespace A356918.P18231835381279385537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A092392 n).toNat * A001227 (A028491 (n + 1)).toNat

end

end A356918.P18231835381279385537

/-!
# A356919: Number of partitions of n into 5 parts that divide n.

The programs for A356919, there is no canonical definition to state claims against.
-/

/-! ## A356919.P8260612397284092355

`A044940(A201631(n+1))*A258709(n)`
-/

namespace A356919.P8260612397284092355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044940 (A201631 (n + 1)).toNat * A258709 n

end

end A356919.P8260612397284092355

/-! ## A356919.P10840309728073294829

`A004185(A000079(n))%A194738(n+1)`
-/

namespace A356919.P10840309728073294829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004185 (A000079 n).toNat) (A194738 (n + 1))

end

end A356919.P10840309728073294829

/-! ## A356919.P15175700124583949776

`A319264(n+1)%A342527(A000005(n+1))`
-/

namespace A356919.P15175700124583949776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A319264 (n + 1)) (A342527 (A000005 (n + 1)).toNat)

end

end A356919.P15175700124583949776

/-!
# A356920: Number of partitions of n into 6 parts that divide n.

The programs for A356920, there is no canonical definition to state claims against.
-/

/-! ## A356920.P2971136406827092398

`A386888(A280685(n+1))`
-/

namespace A356920.P2971136406827092398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386888 (A280685 (n + 1)).toNat

end

end A356920.P2971136406827092398

/-! ## A356920.P8513781916278580107

`and(A117788(n+4), A287417(A051424(n+2)))`
-/

namespace A356920.P8513781916278580107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A117788 (n + 4)) (A287417 (A051424 (n + 2)).toNat)

end

end A356920.P8513781916278580107

/-! ## A356920.P15897976162010333323

`A130709(2*n+3)%A004395(A083902(n+1))`
-/

namespace A356920.P15897976162010333323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A130709 (2 * n + 3)) (A004395 (A083902 (n + 1)).toNat)

end

end A356920.P15897976162010333323

/-! ## A356920.P6761519637187428270

`A126309(n%2*∑[and(n, -2)])`
-/

namespace A356920.P6761519637187428270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126309 (((n % 2 : ℕ) : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A356920.P6761519637187428270

/-! ## A356920.P7653776095178297118

`A126309(and((-1)^n, ∑[and(n, -2)]))`
-/

namespace A356920.P7653776095178297118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126309 (Int.land ((-1) ^ n) (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A356920.P7653776095178297118

/-!
# A356921: Irregular table read by rows: necklaces on the alphabet {0,1} sorted by length then by lexicographic order of minimum rotation.

The programs for A356921, there is no canonical definition to state claims against.
-/

/-! ## A356921.P4163119700716519584

`A244992(A165575(3*n+2)*A263296(n+1)+1)`
-/

namespace A356921.P4163119700716519584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244992 (A165575 (3 * n + 2) * A263296 (n + 1) + 1).toNat

end

end A356921.P4163119700716519584

/-! ## A356921.P4772565905876778886

`A260446(A181735(n+1)+A102478(2*n+3))`
-/

namespace A356921.P4772565905876778886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260446 (A181735 (n + 1) + A102478 (2 * n + 3)).toNat

end

end A356921.P4772565905876778886

/-!
# A356923: Irregular table read by rows: invertible necklaces on the alphabet {0,1} sorted by length then by lexicographic order of minimum presentation.

The programs for A356923, there is no canonical definition to state claims against.
-/

/-! ## A356923.P14323845962638642754

`A001222(gcd(A000001(n), A184050(n)))`
-/

namespace A356923.P14323845962638642754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.gcd (A000001 n) (A184050 n))

end

end A356923.P14323845962638642754

/-! ## A356923.P16092346125996107212

`A226066(A226066(n+1))%A033264(2*(n+1))`
-/

namespace A356923.P16092346125996107212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A226066 (A226066 (n + 1)).toNat) (A033264 (2 * (n + 1)))

end

end A356923.P16092346125996107212

/-! ## A356923.P16440506626781783012

`A379117(A015897(n+2))`
-/

namespace A356923.P16440506626781783012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379117 (A015897 (n + 2)).toNat

end

end A356923.P16440506626781783012

/-! ## A356923.P11664737098928657492

`A105966(A008292(n+1)*A105933(n))`
-/

namespace A356923.P11664737098928657492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105966 (A008292 (n + 1) * A105933 n).toNat

end

end A356923.P11664737098928657492

/-! ## A356923.P3642074743149646322

`A043052(A043016(2*n+5))%A277315(n+1)`
-/

namespace A356923.P3642074743149646322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A043052 (A043016 (2 * n + 5)).toNat) (A277315 (n + 1))

end

end A356923.P3642074743149646322

/-!
# A356925: E.g.f. satisfies A(x) = 1/(1 - x)^(exp(x) * A(x)).

The programs for A356925, there is no canonical definition to state claims against.
-/

/-! ## A356925.P11485876132077880088

`A072750(C(2*n, n)²)+1`
-/

namespace A356925.P11485876132077880088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072750 (Nat.choose (2 * n) n ^ 2) + 1

end

end A356925.P11485876132077880088

/-!
# A356926: E.g.f. satisfies A(x)^A(x) = 1/(1 - x)^exp(x).

The programs for A356926, there is no canonical definition to state claims against.
-/

/-! ## A356926.P5468894308000164340

`A099523(A177487(n))`
-/

namespace A356926.P5468894308000164340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099523 (A177487 n).toNat

end

end A356926.P5468894308000164340

/-! ## A356926.P7468709578544287377

`A175515(A332885(n))`
-/

namespace A356926.P7468709578544287377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175515 (A332885 n).toNat

end

end A356926.P7468709578544287377

/-! ## A356926.P14062405081672783782

`A137313(A091487(n+1))`
-/

namespace A356926.P14062405081672783782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137313 (A091487 (n + 1)).toNat

end

end A356926.P14062405081672783782

/-!
# A356927: E.g.f. satisfies A(x) = 1/(1 - x)^(A(x)/(1 - x)).

The programs for A356927, there is no canonical definition to state claims against.
-/

/-! ## A356927.P355168085787147534

`A072034(n)-A342720(A269303(2*(n+2)))`
-/

namespace A356927.P355168085787147534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072034 n - A342720 (A269303 (2 * (n + 2))).toNat

end

end A356927.P355168085787147534

/-!
# A356928: a(n) is the number of solutions, j >= 0 and 1 <= m_1 <= ... <= m_n, of the equation Sum_{k=1..n} F(m_k) = 2^j where F(i) is the i-th Fibonacci number.

The programs for A356928, there is no canonical definition to state claims against.
-/

/-! ## A356928.P5478343321193692015

`A008854(∑[∑[A022186(n)]])`
-/

namespace A356928.P5478343321193692015
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022186 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008854 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A356928.P5478343321193692015

/-!
# A356929: Integers with an even number of even digits.

The programs for A356929, the canonical program `A356929.P9029674034270489886` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A356929 has offset 1).

The definition of A356929 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A356929.P9029674034270489886

`lt[0, tan(A308005(n))]`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A356929

/-- `lt[0, tan(A308005(n))]` -/
def P9029674034270489886.Spec : Prop :=
  ∀ n, (P9029674034270489886.a n : ℤ) = A356929 (n + 1)

theorem P9029674034270489886.correct : P9029674034270489886.Spec := by
  intro n
  simp only [A356929, Nat.add_sub_cancel]

end A356929

/-! ## A356929.P6051133874459725626

`lt[A000007(n), A375389(A392220(n))]`
-/

namespace A356929.P6051133874459725626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375389 (A392220 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A356929.P6051133874459725626

namespace A356929

/-- `lt[A000007(n), A375389(A392220(n))]` -/
def P6051133874459725626.Spec : Prop :=
  ∀ n, (P6051133874459725626.a n : ℤ) = A356929 (n + 1)

end A356929

/-! ## A356929.P2666874393833722856

`lt[A057428(n), A375389(A392220(n))]`
-/

namespace A356929.P2666874393833722856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375389 (A392220 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A356929.P2666874393833722856

namespace A356929

/-- `lt[A057428(n), A375389(A392220(n))]` -/
def P2666874393833722856.Spec : Prop :=
  ∀ n, (P2666874393833722856.a n : ℤ) = A356929 (n + 1)

end A356929

/-! ## A356929.P12502033573215884416

`lt[A099837(n), A375389(A392220(n))]`
-/

namespace A356929.P12502033573215884416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099837 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375389 (A392220 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A356929.P12502033573215884416

namespace A356929

/-- `lt[A099837(n), A375389(A392220(n))]` -/
def P12502033573215884416.Spec : Prop :=
  ∀ n, (P12502033573215884416.a n : ℤ) = A356929 (n + 1)

end A356929

/-! ## A356929.P11917157919456399972

`lt[A260196(n), A375389(A392220(n))]`
-/

namespace A356929.P11917157919456399972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260196 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375389 (A392220 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A356929.P11917157919456399972

namespace A356929

/-- `lt[A260196(n), A375389(A392220(n))]` -/
def P11917157919456399972.Spec : Prop :=
  ∀ n, (P11917157919456399972.a n : ℤ) = A356929 (n + 1)

end A356929

/-! ## A356929.P3874802514406236951

`lt[A377208(n+1), A375389(A392220(n))]`
-/

namespace A356929.P3874802514406236951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377208 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375389 (A392220 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A356929.P3874802514406236951

namespace A356929

/-- `lt[A377208(n+1), A375389(A392220(n))]` -/
def P3874802514406236951.Spec : Prop :=
  ∀ n, (P3874802514406236951.a n : ℤ) = A356929 (n + 1)

end A356929

/-! ## A356929.P14032758276754647768

`lt[A295819(n+4), A375389(A392220(n))]`
-/

namespace A356929.P14032758276754647768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295819 (n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375389 (A392220 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A356929.P14032758276754647768

namespace A356929

/-- `lt[A295819(n+4), A375389(A392220(n))]` -/
def P14032758276754647768.Spec : Prop :=
  ∀ n, (P14032758276754647768.a n : ℤ) = A356929 (n + 1)

end A356929

/-! ## A356929.P6127726332790412158

`xor(1, A118070(n+1))`
-/

namespace A356929.P6127726332790412158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A118070 (n + 1))

end

end A356929.P6127726332790412158

namespace A356929

/-- `xor(1, A118070(n+1))` -/
def P6127726332790412158.Spec : Prop :=
  ∀ n, P6127726332790412158.a n = A356929 (n + 1)

end A356929

/-! ## A356929.P10028136304121831053

`A004442(A118070(n+1))`
-/

namespace A356929.P10028136304121831053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (A118070 (n + 1)).toNat

end

end A356929.P10028136304121831053

namespace A356929

/-- `A004442(A118070(n+1))` -/
def P10028136304121831053.Spec : Prop :=
  ∀ n, P10028136304121831053.a n = A356929 (n + 1)

end A356929

/-! ## A356929.P5278721549806153762

`A016813(n)-A118070(n+1)`
-/

namespace A356929.P5278721549806153762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 n - A118070 (n + 1)

end

end A356929.P5278721549806153762

namespace A356929

/-- `A016813(n)-A118070(n+1)` -/
def P5278721549806153762.Spec : Prop :=
  ∀ n, P5278721549806153762.a n = A356929 (n + 1)

end A356929

/-!
# A356930: Numbers whose prime indices have all odd prime indices. MM-numbers of finite multisets of finite multisets of odd numbers.

The programs for A356930, there is no canonical definition to state claims against.
-/

/-! ## A356930.P17387589186244321013

`eq[1, A325032(n+1)%2]+1`
-/

namespace A356930.P17387589186244321013
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A325032 (n + 1)) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A356930.P17387589186244321013

/-! ## A356930.P17169226267226066739

`eq[1, A003963(A003963(n+1))%2]+1`
-/

namespace A356930.P17169226267226066739
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003963 (A003963 (n + 1)).toNat) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A356930.P17169226267226066739

/-! ## A356930.P14507710357300815288

`eq[1, and(1, A003963(2*A003963(n+1)))]+1`
-/

namespace A356930.P14507710357300815288
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A003963 (2 * A003963 (n + 1)).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A356930.P14507710357300815288

/-! ## A356930.P311189203032517552

`lt[-A011647(2*n+1), A011616(n)]`
-/

namespace A356930.P311189203032517552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A011647 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011616 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A356930.P311189203032517552

/-! ## A356930.P5028795645246854498

`record[gcd(A002024(n+2), A274280(2*n+1))]`
-/

namespace A356930.P5028795645246854498
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002024 (n + 2)) (A274280 (2 * n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A356930.P5028795645246854498

/-!
# A356931: Number of multiset partitions of the prime indices of n into multisets of odd numbers. Number of factorizations of n into members of A066208.

The programs for A356931, there is no canonical definition to state claims against.
-/

/-! ## A356931.P17159810440247053786

`A353373(A166624(n+1))`
-/

namespace A356931.P17159810440247053786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353373 (A166624 (n + 1)).toNat

end

end A356931.P17159810440247053786

/-! ## A356931.P6672701710354720441

`A003963(n+1)%2*A001055(n+1)`
-/

namespace A356931.P6672701710354720441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003963 (n + 1)) 2 * A001055 (n + 1)

end

end A356931.P6672701710354720441

/-! ## A356931.P10655104420620177415

`A156061(n+1)%2*A001055(n+1)`
-/

namespace A356931.P10655104420620177415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A156061 (n + 1)) 2 * A001055 (n + 1)

end

end A356931.P10655104420620177415

/-! ## A356931.P4256649266995038040

`A290103(n+1)%2*A001055(n+1)`
-/

namespace A356931.P4256649266995038040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A290103 (n + 1)) 2 * A001055 (n + 1)

end

end A356931.P4256649266995038040

/-! ## A356931.P5309765806622046361

`C(A001055(n+1), C(24, A257992(n+1)))`
-/

namespace A356931.P5309765806622046361
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A001055 (n + 1)).toNat (Nat.choose 24 (A257992 (n + 1)).toNat)

end

end A356931.P5309765806622046361

/-! ## A356931.P14245024213555108294

`A000035(A003963(n+1))*A001055(n+1)`
-/

namespace A356931.P14245024213555108294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A003963 (n + 1)).toNat * A001055 (n + 1)

end

end A356931.P14245024213555108294

/-! ## A356931.P5719659101010626006

`A000035(A156061(n+1))*A001055(n+1)`
-/

namespace A356931.P5719659101010626006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A156061 (n + 1)).toNat * A001055 (n + 1)

end

end A356931.P5719659101010626006

/-! ## A356931.P285038057233391095

`A000035(A290103(n+1))*A001055(n+1)`
-/

namespace A356931.P285038057233391095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A290103 (n + 1)).toNat * A001055 (n + 1)

end

end A356931.P285038057233391095

/-!
# A356932: Number of multiset partitions of integer partitions of n such that all blocks have odd size.

The programs for A356932, there is no canonical definition to state claims against.
-/

/-! ## A356932.P4841420795332583342

`A052146(A052156(n)+3)`
-/

namespace A356932.P4841420795332583342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052146 (A052156 n + 3).toNat

end

end A356932.P4841420795332583342

/-! ## A356932.P18140517923898785025

`A052146(or(3, A052156(n)))`
-/

namespace A356932.P18140517923898785025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052146 (Int.lor 3 (A052156 n)).toNat

end

end A356932.P18140517923898785025

/-! ## A356932.P4855962215536609677

`A052146(A025579(n+1)+3)`
-/

namespace A356932.P4855962215536609677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052146 (A025579 (n + 1) + 3).toNat

end

end A356932.P4855962215536609677

/-! ## A356932.P14991280508911151163

`A257639(xor(2, A357453(2*n+1)))`
-/

namespace A356932.P14991280508911151163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257639 (Int.xor 2 (A357453 (2 * n + 1))).toNat

end

end A356932.P14991280508911151163

/-! ## A356932.P3217304210059970455

`A257639(A357453(2*n+1)-n)`
-/

namespace A356932.P3217304210059970455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257639 (A357453 (2 * n + 1) - (n : ℤ)).toNat

end

end A356932.P3217304210059970455

/-!
# A356933: Number of multisets of multisets, each of odd size, whose multiset union is a size-n multiset covering an initial interval.

The programs for A356933, there is no canonical definition to state claims against.
-/

/-! ## A356933.P11343613297254473920

`ceil(A154643(n)/12)`
-/

namespace A356933.P11343613297254473920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A154643 n : ℚ) / 12⌉

end

end A356933.P11343613297254473920

/-! ## A356933.P6692037355249063165

`A055086(C(∑[n], n))`
-/

namespace A356933.P6692037355249063165
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055086 (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) n)

end

end A356933.P6692037355249063165

/-!
# A356934: Number of multisets of odd-size multisets whose multiset union is a size-n multiset covering an initial interval with weakly decreasing multiplicities.

The programs for A356934, there is no canonical definition to state claims against.
-/

/-! ## A356934.P471157226434790555

`A302597(A266462(n))`
-/

namespace A356934.P471157226434790555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302597 (A266462 n).toNat

end

end A356934.P471157226434790555

/-! ## A356934.P6315350899770346535

`A167865(A324522(n!))`
-/

namespace A356934.P6315350899770346535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167865 (A324522 (Nat.factorial n)).toNat

end

end A356934.P6315350899770346535

/-! ## A356934.P15942380505314162836

`A358637(A099495(n+1)+n)`
-/

namespace A356934.P15942380505314162836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358637 (A099495 (n + 1) + (n : ℤ)).toNat

end

end A356934.P15942380505314162836

/-!
# A356935: Numbers whose prime indices all have odd bigomega (number of prime factors with multiplicity). Products of primes indexed by elements of A026424. MM-numbers of finite multisets of finite odd-length multisets of positive integers.

The programs for A356935, there is no canonical definition to state claims against.
-/

/-! ## A356935.P4533356465721208018

`eq[1, A355742(n+1)%2]+1`
-/

namespace A356935.P4533356465721208018
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A355742 (n + 1)) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A356935.P4533356465721208018

/-! ## A356935.P477343909552074722

`∑[A054541(∑{e}[A142459(2*n+3)+1, #]!+n+1)]`
-/

namespace A356935.P477343909552074722
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142459 (2 * n + 3) + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (Nat.factorial (∑ p ∈ Nat.primeFactors (f2 n).natAbs, Nat.factorization (f2 n).natAbs p) + n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A356935.P477343909552074722

/-! ## A356935.P10102100730844515610

`or(A040630(A000079(n)), A129260(n+1))`
-/

namespace A356935.P10102100730844515610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A040630 (A000079 n).toNat) (A129260 (n + 1))

end

end A356935.P10102100730844515610

/-! ## A356935.P8187959393515512931

`or(A043545(A000537(n)), A129260(n+1))`
-/

namespace A356935.P8187959393515512931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A043545 (A000537 n).toNat) (A129260 (n + 1))

end

end A356935.P8187959393515512931

/-! ## A356935.P17196420987246187751

`or(A129252(A006721(n)), A129260(n+1))`
-/

namespace A356935.P17196420987246187751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A129252 (A006721 n).toNat) (A129260 (n + 1))

end

end A356935.P17196420987246187751

/-!
# A356936: Number of multiset partitions of the multiset of prime indices of n into intervals. Number of factorizations of n into members of A073485.

The programs for A356936, there is no canonical definition to state claims against.
-/

/-! ## A356936.P12037305694354195891

`∏{e}[A322361(n+1), #+1]`
-/

namespace A356936.P12037305694354195891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322361 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1)

end

end A356936.P12037305694354195891

/-! ## A356936.P9218268119608892361

`∏{e}[A330749(n+1), #+1]`
-/

namespace A356936.P9218268119608892361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330749 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1)

end

end A356936.P9218268119608892361

/-! ## A356936.P15029349861766015937

`∏{e}[(n+1)/A348990(n+1), #+1]`
-/

namespace A356936.P15029349861766015937
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A348990 (n + 1) : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (SequenceMachineLib.roundAway (f1 n)).natAbs, (Nat.factorization (SequenceMachineLib.roundAway (f1 n)).natAbs p + 1)

end

end A356936.P15029349861766015937

/-! ## A356936.P3770646969092155121

`∏{e}[gcd(n+1, A003961(n+1)), #+1]`
-/

namespace A356936.P3770646969092155121
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A003961 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1)

end

end A356936.P3770646969092155121

/-! ## A356936.P2103937871562563394

`A000005(A322361(n+1))`
-/

namespace A356936.P2103937871562563394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A322361 (n + 1)).toNat

end

end A356936.P2103937871562563394

/-! ## A356936.P14339938114309383995

`A000005(A330749(n+1))`
-/

namespace A356936.P14339938114309383995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A330749 (n + 1)).toNat

end

end A356936.P14339938114309383995

/-! ## A356936.P10598668997612693797

`A046951(A322361((n+1)²))`
-/

namespace A356936.P10598668997612693797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046951 (A322361 ((n + 1) ^ 2)).toNat

end

end A356936.P10598668997612693797

/-! ## A356936.P5854571628420628088

`A239930(A322361(n+1)²)`
-/

namespace A356936.P5854571628420628088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239930 (A322361 (n + 1) ^ 2).toNat

end

end A356936.P5854571628420628088

/-! ## A356936.P1551883086332664336

`A038548(7*A330749(n+1))`
-/

namespace A356936.P1551883086332664336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038548 (7 * A330749 (n + 1)).toNat

end

end A356936.P1551883086332664336

/-! ## A356936.P15128449419711612589

`A280363(7*A322361(n+1))`
-/

namespace A356936.P15128449419711612589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280363 (7 * A322361 (n + 1)).toNat

end

end A356936.P15128449419711612589

/-!
# A356937: Number of multisets of intervals whose multiset union is of size n and covers an initial interval of positive integers.

The programs for A356937, there is no canonical definition to state claims against.
-/

/-! ## A356937.P17856895240696941415

`A097992(A329673(n)+A089068(2*n+1))`
-/

namespace A356937.P17856895240696941415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097992 (A329673 n + A089068 (2 * n + 1)).toNat

end

end A356937.P17856895240696941415

/-! ## A356937.P2086053003473442591

`A289496(A051736(n))`
-/

namespace A356937.P2086053003473442591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289496 (A051736 n).toNat

end

end A356937.P2086053003473442591

/-! ## A356937.P18442882305063802074

`A001462(A199475(n))-A329976(n)`
-/

namespace A356937.P18442882305063802074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 (A199475 n).toNat - A329976 n

end

end A356937.P18442882305063802074

/-!
# A356938: Number of multisets of intervals whose multiset union is of size n and covers an initial interval of positive integers with weakly decreasing multiplicities.

The programs for A356938, there is no canonical definition to state claims against.
-/

/-! ## A356938.P9559684710422931484

`A323670(∑[record[2-xor(1, -n)]+1])`
-/

namespace A356938.P9559684710422931484
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - Int.xor 1 (-(n : ℤ))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323670 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A356938.P9559684710422931484

/-! ## A356938.P7989301741085816307

`A095274(A006951(n))`
-/

namespace A356938.P7989301741085816307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095274 (A006951 n).toNat

end

end A356938.P7989301741085816307

/-! ## A356938.P17526515180340369927

`A364882(A033482(n))`
-/

namespace A356938.P17526515180340369927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364882 (A033482 n).toNat

end

end A356938.P17526515180340369927

/-!
# A356939: MM-numbers of multisets of intervals. Products of primes indexed by members of A073485.

The programs for A356939, there is no canonical definition to state claims against.
-/

/-! ## A356939.P4941484565790057280

`∩[A302478(n+1), A356944(n+1)]`
-/

namespace A356939.P4941484565790057280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302478 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356944 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A356939.P4941484565790057280

/-! ## A356939.P17282823792904221487

`A302478(∑[A349797(3*n+4)!])`
-/

namespace A356939.P17282823792904221487
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A349797 (3 * n + 4)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302478 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A356939.P17282823792904221487

/-! ## A356939.P2247298128635585233

`record[A302478(n+1)%A175966(n+1)]`
-/

namespace A356939.P2247298128635585233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A302478 (n + 1)) (A175966 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A356939.P2247298128635585233

/-! ## A356939.P15306676832963494953

`A302478(n+1)-A057428(A185203(n))`
-/

namespace A356939.P15306676832963494953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302478 (n + 1) - A057428 (A185203 n).toNat

end

end A356939.P15306676832963494953

/-! ## A356939.P17815428190332440062

`eq[A109720(n), A330098(A178862(n+3))]`
-/

namespace A356939.P17815428190332440062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109720 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330098 (A178862 (n + 3)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A356939.P17815428190332440062

/-!
# A356940: MM-numbers of multisets of initial intervals. Products of elements of A062447 (primes indexed by primorials A002110).

The programs for A356940, there is no canonical definition to state claims against.
-/

/-! ## A356940.P5440174016139859876

`∩[A308299(n+1), A356939(n+1)]`
-/

namespace A356940.P5440174016139859876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308299 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356939 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A356940.P5440174016139859876

/-! ## A356940.P4263550230537565408

`∩[A356939(n+1), A356955(n+1)]`
-/

namespace A356940.P4263550230537565408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356939 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356955 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A356940.P4263550230537565408

/-! ## A356940.P5360076260458388770

`∩[A308299(n+1), A359415(n+1)]`
-/

namespace A356940.P5360076260458388770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308299 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359415 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A356940.P5360076260458388770

/-! ## A356940.P16541732400022088842

`∩[A308299(n+1), A385489(n+1)]`
-/

namespace A356940.P16541732400022088842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308299 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385489 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A356940.P16541732400022088842

/-! ## A356940.P5355404098198167709

`∩[A085736(n+1), A308299(n+1)]`
-/

namespace A356940.P5355404098198167709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085736 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308299 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A356940.P5355404098198167709

/-!
# A356941: Number of multiset partitions of integer partitions of n such that all blocks are gapless.

The programs for A356941, there is no canonical definition to state claims against.
-/

/-! ## A356941.P9286632339871157424

`A108611(A002995(n))+A000219(n)`
-/

namespace A356941.P9286632339871157424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108611 (A002995 n).toNat + A000219 n

end

end A356941.P9286632339871157424

/-! ## A356941.P1793194534475095813

`A285461(n)-A277007(A007716(n))`
-/

namespace A356941.P1793194534475095813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285461 n - A277007 (A007716 n).toNat

end

end A356941.P1793194534475095813

/-! ## A356941.P6212482051880443137

`A285461(n)-A353514(A001710(n))`
-/

namespace A356941.P6212482051880443137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285461 n - A353514 (A001710 n).toNat

end

end A356941.P6212482051880443137

/-! ## A356941.P15808288337628314576

`A285461(n)-A025469(A221066(n+1))`
-/

namespace A356941.P15808288337628314576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285461 n - A025469 (A221066 (n + 1)).toNat

end

end A356941.P15808288337628314576

/-! ## A356941.P2866094351601608187

`A285461(n)-A046080(A304196(n+1))`
-/

namespace A356941.P2866094351601608187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285461 n - A046080 (A304196 (n + 1)).toNat

end

end A356941.P2866094351601608187

/-!
# A356942: Number of multisets of gapless multisets whose multiset union is a size-n multiset covering an initial interval.

The programs for A356942, there is no canonical definition to state claims against.
-/

/-! ## A356942.P1001732726909491294

`A087866(A149671(n+1))`
-/

namespace A356942.P1001732726909491294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087866 (A149671 (n + 1)).toNat

end

end A356942.P1001732726909491294

/-! ## A356942.P17354442980627297677

`A337254(a(n-1))` with `a(0)=1, a(1)=1, a(2)=4`
-/

namespace A356942.P17354442980627297677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 4] fun n a =>
  A337254 (a (n - 1)).toNat

end

end A356942.P17354442980627297677

/-!
# A356943: Number of multiset partitions into gapless blocks of a size-n multiset covering an initial interval with weakly decreasing multiplicities.

The programs for A356943, there is no canonical definition to state claims against.
-/

/-! ## A356943.P920759547521458875

`A361395(A007716(n)%A107952(2*(n+2)))`
-/

namespace A356943.P920759547521458875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361395 (Int.tmod (A007716 n) (A107952 (2 * (n + 2)))).toNat

end

end A356943.P920759547521458875

/-! ## A356943.P1982051678199213513

`A130676(A000293(n))`
-/

namespace A356943.P1982051678199213513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130676 (A000293 n).toNat

end

end A356943.P1982051678199213513

/-!
# A356944: MM-numbers of multisets of gapless multisets of positive integers. Products of primes indexed by elements of A073491.

The programs for A356944, there is no canonical definition to state claims against.
-/

/-! ## A356944.P18403875876320222572

`comp[(n-2)*a(n-1)]` with `a(0)=0, a(1)=43, a(2)=29`
-/

namespace A356944.P18403875876320222572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 43, 29] fun n f1 =>
  ((n : ℤ) - 2) * f1 (n - 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A356944.P18403875876320222572

/-! ## A356944.P7968640076181061597

`comp[a(n-1)+a(n-dr(n))]` with `a(0)=0, a(1)=43, a(2)=29`
-/

namespace A356944.P7968640076181061597
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 43, 29] fun n f1 =>
  f1 (n - 1) + f1 (n - SequenceMachineLib.digitalRoot (n : ℤ))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A356944.P7968640076181061597

/-! ## A356944.P15818767618805137101

`comp[∑{e}[n, A042969(#)]]`
-/

namespace A356944.P15818767618805137101
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), A042969 (Nat.factorization (f2 n) p)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A356944.P15818767618805137101

/-! ## A356944.P12145668756467280116

`comp[A101424(n+3)]+1`
-/

namespace A356944.P12145668756467280116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101424 (n + 3)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A356944.P12145668756467280116

/-! ## A356944.P10542397553997291647

`comp[A346620(n+3)]+1`
-/

namespace A356944.P10542397553997291647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346620 (n + 3)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A356944.P10542397553997291647

/-! ## A356944.P12482221898293295813

`comp[A035528(n+9)]+1`
-/

namespace A356944.P12482221898293295813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035528 (n + 9)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A356944.P12482221898293295813

/-! ## A356944.P17944481196700916057

`comp[A028437(2*(n+2))]+1`
-/

namespace A356944.P17944481196700916057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028437 (2 * (n + 2))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A356944.P17944481196700916057

/-! ## A356944.P16818616225052063715

`comp[A062198(n+4)-1]+1`
-/

namespace A356944.P16818616225052063715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062198 (n + 4) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A356944.P16818616225052063715

/-! ## A356944.P7379617058748144532

`comp[A187395(2*(n+2))]+1`
-/

namespace A356944.P7379617058748144532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187395 (2 * (n + 2))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A356944.P7379617058748144532

/-! ## A356944.P3904049466434632549

`comp[A190372(2*(n+2))]+1`
-/

namespace A356944.P3904049466434632549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190372 (2 * (n + 2))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A356944.P3904049466434632549

/-!
# A356945: Number of multiset partitions of the prime indices of n such that each block covers an initial interval. Number of factorizations of n into members of A055932.

The programs for A356945, there is no canonical definition to state claims against.
-/

/-! ## A356945.P12515644471546544218

`A322585(∏{p}[n+1, #])*A349906(A199343(n))`
-/

namespace A356945.P12515644471546544218
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322585 (∏ p ∈ Nat.primeFactors (f1 n), p) * A349906 (A199343 n).toNat

end

end A356945.P12515644471546544218

/-! ## A356945.P17241103975486439477

`∏{e}[A079068(n+1), 1-#]*A349906(A199343(n))`
-/

namespace A356945.P17241103975486439477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079068 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ p ∈ Nat.primeFactors (f1 n).natAbs, (1 - (Nat.factorization (f1 n).natAbs p : ℤ))) * A349906 (A199343 n).toNat

end

end A356945.P17241103975486439477

/-! ## A356945.P1563198499584458639

`A322585(A064989(n+1))*A349906(A199343(n))`
-/

namespace A356945.P1563198499584458639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322585 (A064989 (n + 1)).toNat * A349906 (A199343 n).toNat

end

end A356945.P1563198499584458639

/-! ## A356945.P15557585036389702405

`A349906(A199343(n))*A349906(A079068(n+1))`
-/

namespace A356945.P15557585036389702405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349906 (A199343 n).toNat * A349906 (A079068 (n + 1)).toNat

end

end A356945.P15557585036389702405

/-! ## A356945.P3360079322812732287

`A341629(n+1)*A349906(A085908(n+1))`
-/

namespace A356945.P3360079322812732287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341629 (n + 1) * A349906 (A085908 (n + 1)).toNat

end

end A356945.P3360079322812732287

/-!
# A356948: Sequence of scores adding to maximum break in snooker.

The programs for A356948, there is no canonical definition to state claims against.
-/

/-! ## A356948.P7709048550464069201

`A071625(A321902(2*n+3))+6*n%2`
-/

namespace A356948.P7709048550464069201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071625 (A321902 (2 * n + 3)).toNat + ((6 * (n % 2) : ℕ) : ℤ)

end

end A356948.P7709048550464069201

/-! ## A356948.P16108015828427889517

`A010688(n)+A010051(A176491(n))`
-/

namespace A356948.P16108015828427889517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010688 n + A010051 (A176491 n).toNat

end

end A356948.P16108015828427889517

/-! ## A356948.P3739492750300478791

`A101638(A157523(n))+A010688(n)`
-/

namespace A356948.P3739492750300478791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101638 (A157523 n).toNat + A010688 n

end

end A356948.P3739492750300478791

/-! ## A356948.P13425649706168905659

`A340998(A099597(n))+A010688(n)`
-/

namespace A356948.P13425649706168905659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340998 ((A099597 n).toNat + 140) + A010688 n

end

end A356948.P13425649706168905659

/-! ## A356948.P7289162138206706882

`A000689(2*n+1)-A276950(A361948(n))`
-/

namespace A356948.P7289162138206706882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000689 (2 * n + 1) - A276950 (A361948 n).toNat

end

end A356948.P7289162138206706882

/-!
# A356949: E.g.f. satisfies log(A(x)) = x^2 * (exp(x) - 1) * A(x).

The programs for A356949, there is no canonical definition to state claims against.
-/

/-! ## A356949.P16517287462419028841

`A014682(lcm(2, A375662(n)))`
-/

namespace A356949.P16517287462419028841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (Int.lcm 2 (A375662 n))

end

end A356949.P16517287462419028841

/-! ## A356949.P2647082637769338858

`A038572(A375662(n))`
-/

namespace A356949.P2647082637769338858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038572 (A375662 n).toNat

end

end A356949.P2647082637769338858

/-! ## A356949.P10490197377935940946

`A375662(n)/A000034(A007489(n))`
-/

namespace A356949.P10490197377935940946
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A375662 n : ℚ) / (A000034 (A007489 n).toNat : ℚ)

end

end A356949.P10490197377935940946

/-! ## A356949.P14218879986402146753

`A375662(n)/A001055(A375658(n+1))`
-/

namespace A356949.P14218879986402146753
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A375662 n : ℚ) / (A001055 (A375658 (n + 1)).toNat : ℚ)

end

end A356949.P14218879986402146753

/-!
# A356951: E.g.f. satisfies log(A(x)) = x^2/2 * (exp(x) - 1) * A(x).

The programs for A356951, there is no canonical definition to state claims against.
-/

/-! ## A356951.P16736334022083230920

`A014682(2*A375715(n))`
-/

namespace A356951.P16736334022083230920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (2 * A375715 n).toNat

end

end A356951.P16736334022083230920

/-! ## A356951.P5629599570233921408

`filter[A375715(n), A071026(#)]`
-/

namespace A356951.P5629599570233921408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375715 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A071026 (f1 j).toNat = 1) n)

end

end A356951.P5629599570233921408

/-! ## A356951.P7778023344176202449

`filter[A375715(n), A071027(#)]`
-/

namespace A356951.P7778023344176202449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375715 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A071027 (f1 j).toNat = 1) n)

end

end A356951.P7778023344176202449

/-! ## A356951.P14443821423177219524

`filter[A375715(n), A071037(#)]`
-/

namespace A356951.P14443821423177219524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375715 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A071037 (f1 j).toNat = 1) n)

end

end A356951.P14443821423177219524

/-! ## A356951.P2516191108657727954

`filter[A375715(n), A071038(#)]`
-/

namespace A356951.P2516191108657727954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375715 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A071038 (f1 j).toNat = 1) n)

end

end A356951.P2516191108657727954

/-!
# A356953: Least nonzero starting number in the first run of exactly n consecutive numbers having the same number of prime factors counted with multiplicity, or -1 if no such number exists.

The programs for A356953, there is no canonical definition to state claims against.
-/

/-! ## A356953.P17073032288482985126

`A246159(A014983(2*n+1))+A045984(n+1)`
-/

namespace A356953.P17073032288482985126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246159 (A014983 (2 * n + 1)).toNat + A045984 (n + 1)

end

end A356953.P17073032288482985126

/-!
# A356954: Number of multisets of multisets, each covering an initial interval, whose multiset union is of size n and has weakly decreasing multiplicities.

The programs for A356954, there is no canonical definition to state claims against.
-/

/-! ## A356954.P15062868548137256906

`A248170(A149518(n))`
-/

namespace A356954.P15062868548137256906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248170 (A149518 n).toNat

end

end A356954.P15062868548137256906

/-! ## A356954.P18391965665024478933

`A248170(A149519(n))`
-/

namespace A356954.P18391965665024478933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248170 (A149519 n).toNat

end

end A356954.P18391965665024478933

/-! ## A356954.P9208776018600041949

`A006961(n)-A348325(A188048(n))/2`
-/

namespace A356954.P9208776018600041949
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006961 n : ℚ) - (A348325 (A188048 n).toNat : ℚ) / 2

end

end A356954.P9208776018600041949

/-!
# A356955: MM-numbers of multisets of multisets, each covering an initial interval. Products of primes indexed by elements of A055932.

The programs for A356955, there is no canonical definition to state claims against.
-/

/-! ## A356955.P8187143238611352538

`A004526(A316470(n+2))%A352434(3*n+5)`
-/

namespace A356955.P8187143238611352538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004526 (A316470 (n + 2)).toNat) (A352434 (3 * n + 5))

end

end A356955.P8187143238611352538

/-! ## A356955.P1561647086537771694

`A036445(A316470(n+2))`
-/

namespace A356955.P1561647086537771694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036445 (A316470 (n + 2)).toNat

end

end A356955.P1561647086537771694

/-! ## A356955.P11310908053530312572

`A316470(n+2)/A216022(A327329(n+1))`
-/

namespace A356955.P11310908053530312572
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A316470 (n + 2) : ℚ) / (A216022 (A327329 (n + 1)).toNat : ℚ)

end

end A356955.P11310908053530312572

/-! ## A356955.P6547935674065305552

`A316470(n+2)/A342309(A003961(n+1))`
-/

namespace A356955.P6547935674065305552
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A316470 (n + 2) : ℚ) / (A342309 (A003961 (n + 1)).toNat : ℚ)

end

end A356955.P6547935674065305552

/-!
# A356956: Numbers k such that the k-th composition in standard order is a gapless interval (in increasing order).

The programs for A356956, there is no canonical definition to state claims against.
-/

/-! ## A356956.P1086580090811983764

`∩[A333255(n+1), A356841(n+1)]`
-/

namespace A356956.P1086580090811983764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333255 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356841 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A356956.P1086580090811983764

/-! ## A356956.P1591827689773265169

`eq[A010060(A122319(n)), A124768(n)]`
-/

namespace A356956.P1591827689773265169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (A122319 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124768 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A356956.P1591827689773265169

/-! ## A356956.P1084923900099833126

`A333255(lt[A213106(2*(n+1)), A004934(n)])`
-/

namespace A356956.P1084923900099833126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213106 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004934 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333255 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A356956.P1084923900099833126

/-! ## A356956.P13819156644382752419

`A333255(lt[A335405(2*n+1), A331968(n+1)])`
-/

namespace A356956.P13819156644382752419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335405 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331968 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333255 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A356956.P13819156644382752419

/-! ## A356956.P2875791964818837814

`A333255(lt[A003114(n+4), A002034(2*n+1)])`
-/

namespace A356956.P2875791964818837814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003114 (n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002034 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333255 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A356956.P2875791964818837814

/-!
# A356958: Triangle read by rows: if n has weakly increasing prime indices (a,b,...,y,z) then row n is (b-a+1, ..., y-a+1, z-a+1).

The programs for A356958, there is no canonical definition to state claims against.
-/

/-! ## A356958.P3576556032496945271

`A355536(n+2)+A284562(A078308(n+1))`
-/

namespace A356958.P3576556032496945271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355536 (n + 2) + A284562 (A078308 (n + 1)).toNat

end

end A356958.P3576556032496945271

/-! ## A356958.P1741612475420158232

`A355536(n+2)+A053150(A089408(n))`
-/

namespace A356958.P1741612475420158232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355536 (n + 2) + A053150 (A089408 n).toNat

end

end A356958.P1741612475420158232

/-! ## A356958.P11134483926948177444

`A355536(n+2)+A244226(A070991(2*(n+1)))`
-/

namespace A356958.P11134483926948177444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355536 (n + 2) + A244226 (A070991 (2 * (n + 1))).toNat

end

end A356958.P11134483926948177444

/-! ## A356958.P12463512742415376435

`A355536(n+2)+A115573(A366168(3*n+1))`
-/

namespace A356958.P12463512742415376435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355536 (n + 2) + A115573 (A366168 (3 * n + 1)).toNat

end

end A356958.P12463512742415376435

/-! ## A356958.P15426520557492604475

`A355536(n+2)+A333254(A008517(n+5))`
-/

namespace A356958.P15426520557492604475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355536 (n + 2) + A333254 (A008517 (n + 5)).toNat

end

end A356958.P15426520557492604475

/-!
# A356959: Number of length-n binary strings that can be infinitely extended to the right to form an overlap-free string.

The programs for A356959, there is no canonical definition to state claims against.
-/

/-! ## A356959.P1674810974575893883

`∑[∑{p}[A128066(n+1)+A006666(n+4), 2%#²]]`
-/

namespace A356959.P1674810974575893883
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128066 (n + 1) + A006666 (n + 4)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n).natAbs, 2 % p ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A356959.P1674810974575893883

/-! ## A356959.P8150157492211161870

`∑[A000120(A063438(n+5)*A238874(2*(n+1)))]`
-/

namespace A356959.P8150157492211161870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A063438 (n + 5) * A238874 (2 * (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A356959.P8150157492211161870

/-! ## A356959.P1745410446153370891

`2*A036042(A027929(n+3))`
-/

namespace A356959.P1745410446153370891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A036042 (A027929 (n + 3)).toNat

end

end A356959.P1745410446153370891

/-! ## A356959.P16068201311291437834

`∑[A099774(A168264(n+5)+A081702(2*n+3))]`
-/

namespace A356959.P16068201311291437834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099774 (A168264 (n + 5) + A081702 (2 * n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A356959.P16068201311291437834

/-! ## A356959.P13031468769235703930

`∑[A192099(record[A192100(n+5)])]`
-/

namespace A356959.P13031468769235703930
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192100 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192099 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A356959.P13031468769235703930

/-!
# A356960: E.g.f. satisfies: A(x) = 1/(1 - x * A(x)^3)^A(x).

The programs for A356960, there is no canonical definition to state claims against.
-/

/-! ## A356960.P2149640347990054703

`A106612(A012598(n)-A012590(n))`
-/

namespace A356960.P2149640347990054703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106612 (A012598 n - A012590 n).toNat

end

end A356960.P2149640347990054703

/-!
# A356962: E.g.f. satisfies log(A(x)) = x^2/2 * (exp(x*A(x)) - 1) * A(x).

The programs for A356962, there is no canonical definition to state claims against.
-/

/-! ## A356962.P8756179824372268075

`A078898(A370989(n))%A342806(n+1)`
-/

namespace A356962.P8756179824372268075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A078898 (A370989 n).toNat) (A342806 (n + 1))

end

end A356962.P8756179824372268075

/-! ## A356962.P8891659075312338202

`C(A218293(n), A000002(A007489(n+1)))`
-/

namespace A356962.P8891659075312338202
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A218293 n).toNat (A000002 (A007489 (n + 1)).toNat).toNat

end

end A356962.P8891659075312338202

/-!
# A356963: E.g.f. satisfies log(A(x)) = x^3/6 * (exp(x*A(x)) - 1) * A(x).

The programs for A356963, there is no canonical definition to state claims against.
-/

/-! ## A356963.P12830779523372835635

`A055643(A356952(n))`
-/

namespace A356963.P12830779523372835635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055643 (A356952 n).toNat

end

end A356963.P12830779523372835635

/-!
# A356964: Replace 2^k in binary expansion of n with tribonacci(k+3) (where tribonacci corresponds to A000073).

The programs for A356964, there is no canonical definition to state claims against.
-/

/-! ## A356964.P9294860128868781833

`n-A007814(floor(n/4)!)`
-/

namespace A356964.P9294860128868781833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A007814 (Nat.factorial ⌊(n : ℚ) / 4⌋.toNat)

end

end A356964.P9294860128868781833

/-! ## A356964.P1010459664752900124

`A353090(A029931(n)+Δ[n²])`
-/

namespace A356964.P1010459664752900124
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353090 (A029931 n + ((f1 (n + 1) : ℤ) - (f1 n : ℤ))).toNat

end

end A356964.P1010459664752900124

/-! ## A356964.P15593286062929300272

`∑[∏{e}[A323361(n), A008683(n+1)^(#-1)]]-1`
-/

namespace A356964.P15593286062929300272
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323361 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, (A008683 (n + 1) : ℚ) ^ ((Nat.factorization (f2 n).natAbs p : ℤ) - 1 : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A356964.P15593286062929300272

/-! ## A356964.P15809684522508754128

`A029917(A029931(n)+A029905(n))`
-/

namespace A356964.P15809684522508754128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029917 (A029931 n + A029905 n).toNat

end

end A356964.P15809684522508754128

/-!
# A356965: a(n) is the sum of the tribonacci numbers in common in the greedy and lazy tribonacci representations of n.

The programs for A356965, there is no canonical definition to state claims against.
-/

/-! ## A356965.P6148429456255564534

`A356964(and(A003726(n+1), A003796(n+1)))`
-/

namespace A356965.P6148429456255564534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356964 (Int.land (A003726 (n + 1)) (A003796 (n + 1))).toNat

end

end A356965.P6148429456255564534

/-!
# A356966: Numbers with no common terms in their greedy and lazy tribonacci representations.

The programs for A356966, there is no canonical definition to state claims against.
-/

/-! ## A356966.P6407047681269969238

`eq[0, A356965(n)]`
-/

namespace A356966.P6407047681269969238
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356965 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A356966.P6407047681269969238

/-! ## A356966.P15987047732283949701

`record[n+1-A356965(n+1)]`
-/

namespace A356966.P15987047732283949701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A356965 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A356966.P15987047732283949701

/-! ## A356966.P5377222843380389339

`lt[A356965(n), abs(A033999(n))]`
-/

namespace A356966.P5377222843380389339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356965 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A033999 n|

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A356966.P5377222843380389339

/-! ## A356966.P5164104929745847121

`lt[A356965(n), acot(A004779(n))]`
-/

namespace A356966.P5164104929745847121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356965 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.acot (A004779 n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A356966.P5164104929745847121

/-! ## A356966.P10596793320472601689

`lt[A356965(n), acot(A007088(n))]`
-/

namespace A356966.P10596793320472601689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356965 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.acot (A007088 n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A356966.P10596793320472601689

/-!
# A356967: E.g.f. satisfies A(x) = 1/(1 - x * A(x))^(x^2/2 * A(x)).

The programs for A356967, there is no canonical definition to state claims against.
-/

/-! ## A356967.P1413086036259202198

`A351492(n)+A004525(A052785(n))`
-/

namespace A356967.P1413086036259202198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351492 n + A004525 (A052785 n).toNat

end

end A356967.P1413086036259202198

/-! ## A356967.P5114455745157073802

`A002487(A006821(n))*A072706(n)`
-/

namespace A356967.P5114455745157073802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (A006821 n).toNat * A072706 n

end

end A356967.P5114455745157073802

/-! ## A356967.P3063931959849971019

`A002487(A006821(n))*A117433(n)`
-/

namespace A356967.P3063931959849971019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (A006821 n).toNat * A117433 n

end

end A356967.P3063931959849971019

/-!
# A356969: A(n, k) is the sum of the terms in common in the dual Zeckendorf representations of n and of k; square array A(n, k) read by antidiagonals, n, k >= 0.

The programs for A356969, there is no canonical definition to state claims against.
-/

/-! ## A356969.P12989744652153366976

`∑[char[∑[n+1]]]-A361789(n)`
-/

namespace A356969.P12989744652153366976
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A361789 n

end

end A356969.P12989744652153366976

/-! ## A356969.P15931066986173021854

`A344612(n)%A343806(A088699(n))`
-/

namespace A356969.P15931066986173021854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A344612 n) (A343806 (A088699 n).toNat)

end

end A356969.P15931066986173021854

/-! ## A356969.P6300608865898719082

`xor(A004198(n), A293162(A185316(n)))`
-/

namespace A356969.P6300608865898719082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A004198 n) (A293162 (A185316 n).toNat)

end

end A356969.P6300608865898719082

/-! ## A356969.P11940324021814430559

`A289813(A261911(2*(n+1))%A144464(n))`
-/

namespace A356969.P11940324021814430559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289813 (Int.tmod (A261911 (2 * (n + 1))) (A144464 n)).toNat

end

end A356969.P11940324021814430559

/-! ## A356969.P7355929445881197933

`A107279(A157147(n))`
-/

namespace A356969.P7355929445881197933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107279 (A157147 n).toNat

end

end A356969.P7355929445881197933

/-!
# A356970: E.g.f. satisfies A(x) = 1/(1 - x * A(x))^(x^2 * A(x)).

The programs for A356970, there is no canonical definition to state claims against.
-/

/-! ## A356970.P13958506183306504459

`A057889(A355287(n)+A052785(n))`
-/

namespace A356970.P13958506183306504459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057889 (A355287 n + A052785 n).toNat

end

end A356970.P13958506183306504459

/-! ## A356970.P610137901775301893

`A004526(A370994(n)+A351503(n))`
-/

namespace A356970.P610137901775301893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A370994 n + A351503 n).toNat

end

end A356970.P610137901775301893

/-! ## A356970.P11795618558567098389

`A004526(A371118(n)+A370994(n))`
-/

namespace A356970.P11795618558567098389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A371118 n + A370994 n).toNat

end

end A356970.P11795618558567098389

/-!
# A356972: E.g.f. satisfies log(A(x)) = (exp(x * A(x)^2) - 1) * A(x).

The programs for A356972, there is no canonical definition to state claims against.
-/

/-! ## A356972.P15317327207646163271

`A310186(A368389(n+1))-2`
-/

namespace A356972.P15317327207646163271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310186 (A368389 (n + 1)).toNat - 2

end

end A356972.P15317327207646163271

/-!
# A356975: a(n) is the number of n-celled pseudo-polyominoes with holes.

The programs for A356975, there is no canonical definition to state claims against.
-/

/-! ## A356975.P2242482039296445402

`A027870(A302335(n+1))`
-/

namespace A356975.P2242482039296445402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027870 (A302335 (n + 1)).toNat

end

end A356975.P2242482039296445402

/-! ## A356975.P1106496639216608449

`A218585(or(1, A000311(n)))`
-/

namespace A356975.P1106496639216608449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218585 (Int.lor 1 (A000311 n)).toNat

end

end A356975.P1106496639216608449

/-! ## A356975.P14519845087297015132

`A085862(A244884(2*n)+n)`
-/

namespace A356975.P14519845087297015132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085862 (A244884 (2 * n) + (n : ℤ)).toNat

end

end A356975.P14519845087297015132

/-!
# A356976: Least positive integer m such that the numbers k^3 + 3*k (k = 1..n) are pairwise distinct modulo m.

The programs for A356976, there is no canonical definition to state claims against.
-/

/-! ## A356976.P1633205397557029972

`or(A066099(A052945(n)), A068626(n+1))`
-/

namespace A356976.P1633205397557029972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A066099 (A052945 n).toNat) (A068626 (n + 1))

end

end A356976.P1633205397557029972

/-! ## A356976.P12126557045670581290

`or(A068626(n+1), A307200(A063049(n+1)))`
-/

namespace A356976.P12126557045670581290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A068626 (n + 1)) (A307200 (A063049 (n + 1)).toNat)

end

end A356976.P12126557045670581290

/-! ## A356976.P16803137269639879621

`or(A068626(n+1), A350090(A221792(n+1)))`
-/

namespace A356976.P16803137269639879621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A068626 (n + 1)) (A350090 (A221792 (n + 1)).toNat)

end

end A356976.P16803137269639879621

/-! ## A356976.P13334473403219700384

`or(A055640(A054415(n+2)), A068626(n+1))`
-/

namespace A356976.P13334473403219700384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A055640 (A054415 (n + 2)).toNat) (A068626 (n + 1))

end

end A356976.P13334473403219700384

/-!
# A356981: Numbers k such that the sum of distinct digits of k equals the sum of the prime divisors of k.

The programs for A356981, there is no canonical definition to state claims against.
-/

/-! ## A356981.P16804829945171212854

`eq[A008472(A233583(n+1)), A217928(n)]`
-/

namespace A356981.P16804829945171212854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (A233583 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217928 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A356981.P16804829945171212854

/-! ## A356981.P7345917928823630396

`∑{p}[A106604(A257113(n+1)), #]`
-/

namespace A356981.P7345917928823630396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106604 (A257113 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A356981.P7345917928823630396

/-!
# A356982: Fixed point of the morphism 0->010, 1->000.

The programs for A356982, the canonical program `A356982.P13695142345406903021` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A356982 has offset 1).

The definition of A356982 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A356982.P13695142345406903021

`val(Δ[n²], 3)%2`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A356982

/-- `val(Δ[n²], 3)%2` -/
def P13695142345406903021.Spec : Prop :=
  ∀ n, (P13695142345406903021.a n : ℤ) = A356982 (n + 1)

theorem P13695142345406903021.correct : P13695142345406903021.Spec := by
  intro n
  simp only [A356982, Nat.add_sub_cancel]

end A356982

/-! ## A356982.P1510871523911415009

`and(1, val(Δ[n²], 3))`
-/

namespace A356982.P1510871523911415009
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (SequenceMachineLib.valuation ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat 3)

end

end A356982.P1510871523911415009

namespace A356982

/-- `and(1, val(Δ[n²], 3))` -/
def P1510871523911415009.Spec : Prop :=
  ∀ n, (P1510871523911415009.a n : ℤ) = A356982 (n + 1)

theorem P1510871523911415009.correct : P1510871523911415009.Spec := by
  intro n
  simp only [A356982, Nat.add_sub_cancel, A356982.P1510871523911415009.f1, A356982.P1510871523911415009.a, A356982.P13695142345406903021.f1, A356982.P13695142345406903021.a, SequenceMachineLib.memo_apply]
  try simp

end A356982

/-! ## A356982.P213292278186022418

`2-gcd(2, val(Δ[n²], 3))`
-/

namespace A356982.P213292278186022418
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (Nat.gcd 2 (SequenceMachineLib.valuation ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat 3) : ℤ)

end

end A356982.P213292278186022418

namespace A356982

/-- `2-gcd(2, val(Δ[n²], 3))` -/
def P213292278186022418.Spec : Prop :=
  ∀ n, P213292278186022418.a n = A356982 (n + 1)

end A356982

/-! ## A356982.P11872651025593733977

`(val(2*n+1, 3)%2)²`
-/

namespace A356982.P11872651025593733977
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (2 * n + 1) 3 % 2) ^ 2

end

end A356982.P11872651025593733977

namespace A356982

/-- `(val(2*n+1, 3)%2)²` -/
def P11872651025593733977.Spec : Prop :=
  ∀ n, (P11872651025593733977.a n : ℤ) = A356982 (n + 1)

end A356982

/-! ## A356982.P8979498113603869214

`and(1, -val(2*n+1, 3))`
-/

namespace A356982.P8979498113603869214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (-(SequenceMachineLib.valuation (2 * n + 1) 3 : ℤ))

end

end A356982.P8979498113603869214

namespace A356982

/-- `and(1, -val(2*n+1, 3))` -/
def P8979498113603869214.Spec : Prop :=
  ∀ n, P8979498113603869214.a n = A356982 (n + 1)

end A356982

/-! ## A356982.P17068319823062724938

`and(1, val(2*n+1, 3)²)`
-/

namespace A356982.P17068319823062724938
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (SequenceMachineLib.valuation (2 * n + 1) 3 ^ 2)

end

end A356982.P17068319823062724938

namespace A356982

/-- `and(1, val(2*n+1, 3)²)` -/
def P17068319823062724938.Spec : Prop :=
  ∀ n, (P17068319823062724938.a n : ℤ) = A356982 (n + 1)

end A356982

/-! ## A356982.P16300351125314006269

`sqrt(and(1, val(2*n+1, 3)))`
-/

namespace A356982.P16300351125314006269
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (Nat.land 1 (SequenceMachineLib.valuation (2 * n + 1) 3) : ℝ)

end

end A356982.P16300351125314006269

namespace A356982

/-- `sqrt(and(1, val(2*n+1, 3)))` -/
def P16300351125314006269.Spec : Prop :=
  ∀ n, P16300351125314006269.a n = (A356982 (n + 1) : ℝ)

end A356982

/-! ## A356982.P6761383946440265131

`dr(val(2*n+1, 3))%2`
-/

namespace A356982.P6761383946440265131
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (SequenceMachineLib.valuation (2 * n + 1) 3 : ℤ) % 2

end

end A356982.P6761383946440265131

namespace A356982

/-- `dr(val(2*n+1, 3))%2` -/
def P6761383946440265131.Spec : Prop :=
  ∀ n, (P6761383946440265131.a n : ℤ) = A356982 (n + 1)

end A356982

/-! ## A356982.P13069697391605416461

`dr(and(1, val(2*n+1, 3)))`
-/

namespace A356982.P13069697391605416461
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (Nat.land 1 (SequenceMachineLib.valuation (2 * n + 1) 3) : ℤ)

end

end A356982.P13069697391605416461

namespace A356982

/-- `dr(and(1, val(2*n+1, 3)))` -/
def P13069697391605416461.Spec : Prop :=
  ∀ n, (P13069697391605416461.a n : ℤ) = A356982 (n + 1)

end A356982

/-! ## A356982.P12798867472981921883

`and(1, val(n+1+n, 3))²`
-/

namespace A356982.P12798867472981921883
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (SequenceMachineLib.valuation (n + 1 + n) 3) ^ 2

end

end A356982.P12798867472981921883

namespace A356982

/-- `and(1, val(n+1+n, 3))²` -/
def P12798867472981921883.Spec : Prop :=
  ∀ n, (P12798867472981921883.a n : ℤ) = A356982 (n + 1)

end A356982

/-! ## A356982.P899317119046942983

`(val(2*n+1, 3)+2)%2`
-/

namespace A356982.P899317119046942983
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (2 * n + 1) 3 + 2) % 2

end

end A356982.P899317119046942983

namespace A356982

/-- `(val(2*n+1, 3)+2)%2` -/
def P899317119046942983.Spec : Prop :=
  ∀ n, (P899317119046942983.a n : ℤ) = A356982 (n + 1)

end A356982

/-! ## A356982.P14914149484714938965

`and(1, val(2*n+1, 3)+2)`
-/

namespace A356982.P14914149484714938965
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (SequenceMachineLib.valuation (2 * n + 1) 3 + 2)

end

end A356982.P14914149484714938965

namespace A356982

/-- `and(1, val(2*n+1, 3)+2)` -/
def P14914149484714938965.Spec : Prop :=
  ∀ n, (P14914149484714938965.a n : ℤ) = A356982 (n + 1)

end A356982

/-! ## A356982.P16868363301154642155

`val(val(2*n+1, 3)²+1, 2)`
-/

namespace A356982.P16868363301154642155
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (SequenceMachineLib.valuation (2 * n + 1) 3 ^ 2 + 1) 2

end

end A356982.P16868363301154642155

namespace A356982

/-- `val(val(2*n+1, 3)²+1, 2)` -/
def P16868363301154642155.Spec : Prop :=
  ∀ n, (P16868363301154642155.a n : ℤ) = A356982 (n + 1)

end A356982

/-! ## A356982.P14413913563786971929

`a(2*a(floor(n/3))+n-3*floor(n/3))` with `a(0)=0, a(1)=1, a(2)=0`
-/

namespace A356982.P14413913563786971929
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 0] fun n a =>
  a ((2 * a ⌊(n : ℚ) / 3⌋.toNat : ℤ) + ((n : ℤ) - 3 * ⌊(n : ℚ) / 3⌋)).toNat

end

end A356982.P14413913563786971929

namespace A356982

/-- `a(2*a(floor(n/3))+n-3*floor(n/3))` -/
def P14413913563786971929.Spec : Prop :=
  ∀ n, (P14413913563786971929.a n : ℤ) = A356982 (n + 1)

end A356982

/-! ## A356982.P1997585292252887468

`A182581(Δ[n²])`
-/

namespace A356982.P1997585292252887468
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182581 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A356982.P1997585292252887468

namespace A356982

/-- `A182581(Δ[n²])` -/
def P1997585292252887468.Spec : Prop :=
  ∀ n, P1997585292252887468.a n = A356982 (n + 1)

end A356982

/-! ## A356982.P11757644875569550948

`A182582(Δ[n²])`
-/

namespace A356982.P11757644875569550948
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182582 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A356982.P11757644875569550948

namespace A356982

/-- `A182582(Δ[n²])` -/
def P11757644875569550948.Spec : Prop :=
  ∀ n, P11757644875569550948.a n = A356982 (n + 1)

end A356982

/-! ## A356982.P6010862541060762620

`abs(A163533(Δ[n²]))`
-/

namespace A356982.P6010862541060762620
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A163533 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat|

end

end A356982.P6010862541060762620

namespace A356982

/-- `abs(A163533(Δ[n²]))` -/
def P6010862541060762620.Spec : Prop :=
  ∀ n, P6010862541060762620.a n = A356982 (n + 1)

end A356982

/-! ## A356982.P10441540842827169237

`A253786(n+1)%2`
-/

namespace A356982.P10441540842827169237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A253786 (n + 1)) 2

end

end A356982.P10441540842827169237

namespace A356982

/-- `A253786(n+1)%2` -/
def P10441540842827169237.Spec : Prop :=
  ∀ n, P10441540842827169237.a n = A356982 (n + 1)

end A356982

/-! ## A356982.P1956435118155040207

`A365722(2*n)%2`
-/

namespace A356982.P1956435118155040207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A365722 (2 * n)) 2

end

end A356982.P1956435118155040207

namespace A356982

/-- `A365722(2*n)%2` -/
def P1956435118155040207.Spec : Prop :=
  ∀ n, P1956435118155040207.a n = A356982 (n + 1)

end A356982

/-!
# A356984: Number of regions in an equilateral triangle when n internal equilateral triangles are drawn between the 3n points that divide each side into n+1 equal parts.

The programs for A356984, there is no canonical definition to state claims against.
-/

/-! ## A356984.P13981023693429595724

`A357008(n)-A357007(n)+1`
-/

namespace A356984.P13981023693429595724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357008 n - A357007 n + 1

end

end A356984.P13981023693429595724

/-! ## A356984.P16356929877631625937

`A357008(n)+A024000(A357007(n))`
-/

namespace A356984.P16356929877631625937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357008 n + A024000 (A357007 n).toNat

end

end A356984.P16356929877631625937

/-! ## A356984.P7002534818602992008

`2-A024000(A357008(n)-A357007(n))`
-/

namespace A356984.P7002534818602992008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A024000 (A357008 n - A357007 n).toNat

end

end A356984.P7002534818602992008

/-! ## A356984.P15680803789794212438

`A357216(∑[n]+3)`
-/

namespace A356984.P15680803789794212438
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357216 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A356984.P15680803789794212438

/-! ## A356984.P8246941381647821476

`record[A010054(n)*A357216(n+3)]`
-/

namespace A356984.P8246941381647821476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A357216 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A356984.P8246941381647821476

/-!
# A356986: a(n) = (A283869(n)-1)/60.

The programs for A356986, the canonical program `A356986.P9479318731163578880` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A356986 has offset 1).

The definition of A356986 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A283869, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A356986.P9479318731163578880

`(A283869(n+1)-1)/60`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A356986

/-- `(A283869(n+1)-1)/60` -/
def P9479318731163578880.Spec : Prop :=
  ∀ n, P9479318731163578880.a n = (A356986 (n + 1) : ℚ)

end A356986

/-!
# A356987: Primes whose decimal expansion is 1, zero or more 0's, then a single digit.

The programs for A356987, there is no canonical definition to state claims against.
-/

/-! ## A356987.P4814624638422554565

`∩[A069675(n+1), A088265(n+1)]`
-/

namespace A356987.P4814624638422554565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069675 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088265 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A356987.P4814624638422554565

/-! ## A356987.P18196323711735888021

`∩[A088265(n+1), A139054(n+1)]`
-/

namespace A356987.P18196323711735888021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088265 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139054 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A356987.P18196323711735888021

/-! ## A356987.P4445096083675054243

`p?[A088265(n+1)]`
-/

namespace A356987.P4445096083675054243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088265 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A356987.P4445096083675054243

/-! ## A356987.P13204210530792541353

`filter[A088265(n+1), A324290(#)]`
-/

namespace A356987.P13204210530792541353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088265 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A324290 (f1 j).toNat = 1) n)

end

end A356987.P13204210530792541353

/-! ## A356987.P17573144263156316113

`p?[record[A228915(n+1)+1]]`
-/

namespace A356987.P17573144263156316113
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228915 (n + 1) + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A356987.P17573144263156316113

/-!
# A356988: a(n) = n - a^[2](n - a^[3](n-1)) with a(1) = 1, where a^[2](n) = a(a(n)) and a^[3](n) = a(a(a(n))).

The programs for A356988, the canonical program `A356988.P14338126487253963338` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A356988 has offset 1).

The definition of A356988 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A356988.P14338126487253963338

`n+1-a(a(n-a(a(a(n-1)-1)-1))-1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A356988

/-- `n+1-a(a(n-a(a(a(n-1)-1)-1))-1)` -/
def P14338126487253963338.Spec : Prop :=
  ∀ n, P14338126487253963338.a n = A356988 (n + 1)

theorem P14338126487253963338.correct : P14338126487253963338.Spec := by
  intro n
  simp only [A356988, Nat.add_sub_cancel]

end A356988

/-! ## A356988.P3356334174262695605

`∑[a(A019586(n))²]` with `a(0)=1, a(1)=0`
-/

namespace A356988.P3356334174262695605
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 0] fun n f1 =>
  f1 (A019586 n).toNat ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A356988.P3356334174262695605

namespace A356988

/-- `∑[a(A019586(n))²]` -/
def P3356334174262695605.Spec : Prop :=
  ∀ n, (P3356334174262695605.a n : ℤ) = A356988 (n + 1)

end A356988

/-! ## A356988.P11001625041079745511

`∑[A005614(A056018(n))]`
-/

namespace A356988.P11001625041079745511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005614 (A056018 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A356988.P11001625041079745511

namespace A356988

/-- `∑[A005614(A056018(n))]` -/
def P11001625041079745511.Spec : Prop :=
  ∀ n, P11001625041079745511.a n = A356988 (n + 1)

end A356988

/-! ## A356988.P2984871309725137112

`∑[A000045(a(A019586(n)))]` with `a(0)=1, a(1)=0`
-/

namespace A356988.P2984871309725137112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n f1 =>
  A000045 (f1 (A019586 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A356988.P2984871309725137112

namespace A356988

/-- `∑[A000045(a(A019586(n)))]` -/
def P2984871309725137112.Spec : Prop :=
  ∀ n, P2984871309725137112.a n = A356988 (n + 1)

end A356988

/-! ## A356988.P7951532138217674060

`∑[A000081(a(A019586(n)))]` with `a(0)=1, a(1)=0`
-/

namespace A356988.P7951532138217674060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n f1 =>
  A000081 (f1 (A019586 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A356988.P7951532138217674060

namespace A356988

/-- `∑[A000081(a(A019586(n)))]` -/
def P7951532138217674060.Spec : Prop :=
  ∀ n, P7951532138217674060.a n = A356988 (n + 1)

end A356988

/-! ## A356988.P4053715577628840190

`∑[A000120(a(A019586(n)))]` with `a(0)=1, a(1)=0`
-/

namespace A356988.P4053715577628840190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n f1 =>
  A000120 (f1 (A019586 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A356988.P4053715577628840190

namespace A356988

/-- `∑[A000120(a(A019586(n)))]` -/
def P4053715577628840190.Spec : Prop :=
  ∀ n, P4053715577628840190.a n = A356988 (n + 1)

end A356988

/-! ## A356988.P4983722538919511399

`∑[A000225(a(A019586(n)))]` with `a(0)=1, a(1)=0`
-/

namespace A356988.P4983722538919511399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n f1 =>
  A000225 (f1 (A019586 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A356988.P4983722538919511399

namespace A356988

/-- `∑[A000225(a(A019586(n)))]` -/
def P4983722538919511399.Spec : Prop :=
  ∀ n, P4983722538919511399.a n = A356988 (n + 1)

end A356988

/-! ## A356988.P8890352582501626662

`∑[A010049(a(A019586(n)))]` with `a(0)=1, a(1)=0`
-/

namespace A356988.P8890352582501626662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n f1 =>
  A010049 (f1 (A019586 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A356988.P8890352582501626662

namespace A356988

/-- `∑[A010049(a(A019586(n)))]` -/
def P8890352582501626662.Spec : Prop :=
  ∀ n, P8890352582501626662.a n = A356988 (n + 1)

end A356988

/-! ## A356988.P18083504560619117598

`∑[A000166(a(A019586(n))+1)]` with `a(0)=1, a(1)=0`
-/

namespace A356988.P18083504560619117598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n f1 =>
  A000166 (f1 (A019586 n).toNat + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A356988.P18083504560619117598

namespace A356988

/-- `∑[A000166(a(A019586(n))+1)]` -/
def P18083504560619117598.Spec : Prop :=
  ∀ n, P18083504560619117598.a n = A356988 (n + 1)

end A356988

/-! ## A356988.P193264442224420253

`∑[A000720(a(A019586(n))+1)]` with `a(0)=1, a(1)=0`
-/

namespace A356988.P193264442224420253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n f1 =>
  A000720 (f1 (A019586 n).toNat + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A356988.P193264442224420253

namespace A356988

/-- `∑[A000720(a(A019586(n))+1)]` -/
def P193264442224420253.Spec : Prop :=
  ∀ n, P193264442224420253.a n = A356988 (n + 1)

end A356988

/-! ## A356988.P8375467316340396532

`∑[A001222(a(A019586(n))+1)]` with `a(0)=1, a(1)=0`
-/

namespace A356988.P8375467316340396532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n f1 =>
  A001222 (f1 (A019586 n).toNat + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A356988.P8375467316340396532

namespace A356988

/-- `∑[A001222(a(A019586(n))+1)]` -/
def P8375467316340396532.Spec : Prop :=
  ∀ n, P8375467316340396532.a n = A356988 (n + 1)

end A356988

/-!
# A356989: a(n) = n - a^[3](n - a^[4](n-1)) with a(1) = 1, where a^[3](n) = a(a(a(n))) and a^[4](n) = a(a(a(a(n)))).

The programs for A356989, the canonical program `A356989.P9387832226812397217` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A356989 has offset 1).

The definition of A356989 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A356989.P9387832226812397217

`n+1-a(a(a(n-a(a(a(a(n-1)-1)-1)-1))-1)-1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A356989

/-- `n+1-a(a(a(n-a(a(a(a(n-1)-1)-1)-1))-1)-1)` -/
def P9387832226812397217.Spec : Prop :=
  ∀ n, P9387832226812397217.a n = A356989 (n + 1)

theorem P9387832226812397217.correct : P9387832226812397217.Spec := by
  intro n
  simp only [A356989, Nat.add_sub_cancel]

end A356989

/-! ## A356989.P12967950721736793304

`∑[A068432(A138879(n+1)+1)]`
-/

namespace A356989.P12967950721736793304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068432 (A138879 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A356989.P12967950721736793304

namespace A356989

/-- `∑[A068432(A138879(n+1)+1)]` -/
def P12967950721736793304.Spec : Prop :=
  ∀ n, P12967950721736793304.a n = A356989 (n + 1)

end A356989

/-! ## A356989.P11058371644071481283

`A048766(A327125(n)+A180118(n))`
-/

namespace A356989.P11058371644071481283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (A327125 n + A180118 n).toNat

end

end A356989.P11058371644071481283

namespace A356989

/-- `A048766(A327125(n)+A180118(n))` -/
def P11058371644071481283.Spec : Prop :=
  ∀ n, P11058371644071481283.a n = A356989 (n + 1)

end A356989

/-! ## A356989.P14038026193821537843

`A048766(A327069(n)+A077415(n+2))`
-/

namespace A356989.P14038026193821537843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (A327069 n + A077415 (n + 2)).toNat

end

end A356989.P14038026193821537843

namespace A356989

/-- `A048766(A327069(n)+A077415(n+2))` -/
def P14038026193821537843.Spec : Prop :=
  ∀ n, P14038026193821537843.a n = A356989 (n + 1)

end A356989

/-!
# A356990: a(n) = n - a^[4](n - a^[5](n-1)) with a(1) = 1, where a^[4](n) = a(a(a(a(n)))) and a^[5](n) = a(a(a(a(a(n))))).

The programs for A356990, the canonical program `A356990.P760752887853315880` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A356990 has offset 1).

The definition of A356990 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A356990.P760752887853315880

`n+1-a(a(a(a(n-a(a(a(a(a(n-1)-1)-1)-1)-1))-1)-1)-1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A356990

/-- `n+1-a(a(a(a(n-a(a(a(a(a(n-1)-1)-1)-1)-1))-1)-1)-1)` -/
def P760752887853315880.Spec : Prop :=
  ∀ n, P760752887853315880.a n = A356990 (n + 1)

theorem P760752887853315880.correct : P760752887853315880.Spec := by
  intro n
  simp only [A356990, Nat.add_sub_cancel]

end A356990

/-! ## A356990.P4960561772706883541

`∑[A250235(A009194(n+3)*A064652(n+2))%4]`
-/

namespace A356990.P4960561772706883541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A250235 (A009194 (n + 3) * A064652 (n + 2)).toNat) 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A356990.P4960561772706883541

namespace A356990

/-- `∑[A250235(A009194(n+3)*A064652(n+2))%4]` -/
def P4960561772706883541.Spec : Prop :=
  ∀ n, P4960561772706883541.a n = A356990 (n + 1)

end A356990

/-! ## A356990.P16312924142955430381

`∑[A071028(A243065(n+1))]`
-/

namespace A356990.P16312924142955430381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071028 (A243065 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A356990.P16312924142955430381

namespace A356990

/-- `∑[A071028(A243065(n+1))]` -/
def P16312924142955430381.Spec : Prop :=
  ∀ n, P16312924142955430381.a n = A356990 (n + 1)

end A356990

/-! ## A356990.P6335983993744052337

`ceil((ceil((A124766(A109069(n+1))+n)/2)+n)/2)`
-/

namespace A356990.P6335983993744052337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(⌈(A124766 (A109069 (n + 1)).toNat + (n : ℤ) : ℚ) / 2⌉ + (n : ℤ) : ℚ) / 2⌉

end

end A356990.P6335983993744052337

namespace A356990

/-- `ceil((ceil((A124766(A109069(n+1))+n)/2)+n)/2)` -/
def P6335983993744052337.Spec : Prop :=
  ∀ n, P6335983993744052337.a n = A356990 (n + 1)

end A356990

/-! ## A356990.P10831911965020833782

`∑[A285274(A004606(n+1)+A000578(n))]`
-/

namespace A356990.P10831911965020833782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285274 (A004606 (n + 1) + A000578 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A356990.P10831911965020833782

namespace A356990

/-- `∑[A285274(A004606(n+1)+A000578(n))]` -/
def P10831911965020833782.Spec : Prop :=
  ∀ n, P10831911965020833782.a n = A356990 (n + 1)

end A356990

/-!
# A356991: a(n) = b(n) + b(n - b(n)) for n >= 2, where b(n) = A356988(n).

The programs for A356991, there is no canonical definition to state claims against.
-/

/-! ## A356991.P17774095655593178880

`A356988(n+2)+A356988(A356993(n+2))`
-/

namespace A356991.P17774095655593178880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356988 (n + 2) + A356988 (A356993 (n + 2)).toNat

end

end A356991.P17774095655593178880

/-! ## A356991.P13575544836359156954

`A356988(n+2)+A356988(n+2)-A356998(n+2)`
-/

namespace A356991.P13575544836359156954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356988 (n + 2) + (A356988 (n + 2) - A356998 (n + 2))

end

end A356991.P13575544836359156954

/-! ## A356991.P11469081922569631841

`∑[A316829(A051432(n))]+1`
-/

namespace A356991.P11469081922569631841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316829 (A051432 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A356991.P11469081922569631841

/-!
# A356994: a(n) = n - b(b(b(n))), where b(n) = A356988(n).

The programs for A356994, the canonical program `A356994.P10220854931459512587` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A356994 has offset 1).

The definition of A356994 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A356994.P14731005864054109991

`∑[a(A019586(n))²]` with `a(0)=0, a(1)=1, a(2)=1, a(3)=1`
-/

namespace A356994.P14731005864054109991
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 1, 1] fun n f1 =>
  f1 (A019586 n).toNat ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A356994.P14731005864054109991

namespace A356994

/-- `∑[a(A019586(n))²]` -/
def P14731005864054109991.Spec : Prop :=
  ∀ n, (P14731005864054109991.a n : ℤ) = A356994 (n + 1)

end A356994

/-! ## A356994.P8651821076710284453

`∑[A000290(a(A019586(n)))]` with `a(0)=0, a(1)=1, a(2)=1, a(3)=1`
-/

namespace A356994.P8651821076710284453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 1, 1] fun n f1 =>
  A000290 (f1 (A019586 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A356994.P8651821076710284453

namespace A356994

/-- `∑[A000290(a(A019586(n)))]` -/
def P8651821076710284453.Spec : Prop :=
  ∀ n, P8651821076710284453.a n = A356994 (n + 1)

end A356994

/-! ## A356994.P10286438793699748760

`∑[A001590(a(A019586(n)))]` with `a(0)=0, a(1)=1, a(2)=1, a(3)=1`
-/

namespace A356994.P10286438793699748760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 1, 1] fun n f1 =>
  A001590 (f1 (A019586 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A356994.P10286438793699748760

namespace A356994

/-- `∑[A001590(a(A019586(n)))]` -/
def P10286438793699748760.Spec : Prop :=
  ∀ n, P10286438793699748760.a n = A356994 (n + 1)

end A356994

/-! ## A356994.P7051285305998886242

`∑[A007954(a(A019586(n)))]` with `a(0)=0, a(1)=1, a(2)=1, a(3)=1`
-/

namespace A356994.P7051285305998886242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 1, 1] fun n f1 =>
  A007954 (f1 (A019586 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A356994.P7051285305998886242

namespace A356994

/-- `∑[A007954(a(A019586(n)))]` -/
def P7051285305998886242.Spec : Prop :=
  ∀ n, P7051285305998886242.a n = A356994 (n + 1)

end A356994

/-! ## A356994.P3283855703509048826

`∑[A015518(a(A019586(n)))]` with `a(0)=0, a(1)=1, a(2)=1, a(3)=1`
-/

namespace A356994.P3283855703509048826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 1, 1] fun n f1 =>
  A015518 (f1 (A019586 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A356994.P3283855703509048826

namespace A356994

/-- `∑[A015518(a(A019586(n)))]` -/
def P3283855703509048826.Spec : Prop :=
  ∀ n, P3283855703509048826.a n = A356994 (n + 1)

end A356994

/-! ## A356994.P10220854931459512587

`n+1-A356988(A356988(A356988(n+1)))`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A356994

/-- `n+1-A356988(A356988(A356988(n+1)))` -/
def P10220854931459512587.Spec : Prop :=
  ∀ n, P10220854931459512587.a n = A356994 (n + 1)

theorem P10220854931459512587.correct : P10220854931459512587.Spec := by
  intro n
  simp only [A356994, Nat.add_sub_cancel]

end A356994

/-!
# A356996: a(n) = b(n) - b(b(n)) - b(n - b(n)) for n >= 3, where b(n) = A356989(n).

The programs for A356996, there is no canonical definition to state claims against.
-/

/-! ## A356996.P15923608828900572208

`and(A001222(2*(n+1)), A113685(A113685(3*(n+1))))`
-/

namespace A356996.P15923608828900572208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001222 (2 * (n + 1))) (A113685 (A113685 (3 * (n + 1))).toNat)

end

end A356996.P15923608828900572208

/-! ## A356996.P17819562791279286856

`A120896(n)%A003989(A015771(n+1))`
-/

namespace A356996.P17819562791279286856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A120896 n) (A003989 (A015771 (n + 1)).toNat)

end

end A356996.P17819562791279286856

/-! ## A356996.P11015918325039473915

`A187080(A141261(3*n+2))%A119502(n+2)`
-/

namespace A356996.P11015918325039473915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A187080 (A141261 (3 * n + 2)).toNat) (A119502 (n + 2))

end

end A356996.P11015918325039473915

/-! ## A356996.P8621456263734581574

`A086342(A099733(n+2)%A160326(n))`
-/

namespace A356996.P8621456263734581574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086342 (Int.tmod (A099733 (n + 2)) (A160326 n)).toNat

end

end A356996.P8621456263734581574

/-! ## A356996.P13129867121880183644

`and(A000217(A359903(n+1)), A333382(n))`
-/

namespace A356996.P13129867121880183644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000217 (A359903 (n + 1)).toNat) (A333382 n)

end

end A356996.P13129867121880183644

/-!
# A356998: a(n) = b(n) - b(n - b(n)) for n >= 2, where b(n) = A356988(n).

The programs for A356998, there is no canonical definition to state claims against.
-/

/-! ## A356998.P12218274265699668595

`A356988(n+2)-A356988(A356993(n+2))`
-/

namespace A356998.P12218274265699668595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356988 (n + 2) - A356988 (A356993 (n + 2)).toNat

end

end A356998.P12218274265699668595

/-! ## A356998.P2309177944999743033

`A356988(n+2)+A356988(n+2)-A356991(n+2)`
-/

namespace A356998.P2309177944999743033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356988 (n + 2) + (A356988 (n + 2) - A356991 (n + 2))

end

end A356998.P2309177944999743033

/-!
# A356999: a(n) = 2*A356988(n) - n.

The programs for A356999, the canonical program `A356999.P7694641287098064366` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A356999 has offset 1).

The definition of A356999 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A356999.P7694641287098064366

`2*A356988(n+1)-(n+1)`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A356999

/-- `2*A356988(n+1)-(n+1)` -/
def P7694641287098064366.Spec : Prop :=
  ∀ n, P7694641287098064366.a n = A356999 (n + 1)

theorem P7694641287098064366.correct : P7694641287098064366.Spec := by
  intro n
  simp only [A356999, Nat.add_sub_cancel]

end A356999

/-! ## A356999.P9089316011333132110

`∑[A057077(A277331(n))]`
-/

namespace A356999.P9089316011333132110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 (A277331 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A356999.P9089316011333132110

namespace A356999

/-- `∑[A057077(A277331(n))]` -/
def P9089316011333132110.Spec : Prop :=
  ∀ n, P9089316011333132110.a n = A356999 (n + 1)

end A356999

/-! ## A356999.P10098645975732138932

`A004273(A356988(n+1))-n`
-/

namespace A356999.P10098645975732138932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A356988 (n + 1)).toNat - (n : ℤ)

end

end A356999.P10098645975732138932

namespace A356999

/-- `A004273(A356988(n+1))-n` -/
def P10098645975732138932.Spec : Prop :=
  ∀ n, P10098645975732138932.a n = A356999 (n + 1)

end A356999

/-! ## A356999.P2020525211916638789

`∑[2*A005614(A056018(n))-1]`
-/

namespace A356999.P2020525211916638789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A005614 (A056018 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A356999.P2020525211916638789

namespace A356999

/-- `∑[2*A005614(A056018(n))-1]` -/
def P2020525211916638789.Spec : Prop :=
  ∀ n, P2020525211916638789.a n = A356999 (n + 1)

end A356999

/-! ## A356999.P14173140710220689825

`A000007(n)+A057077(A277331(n))+a(n-1)` with `a(0)=1`
-/

namespace A356999.P14173140710220689825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000007 n + (A057077 (A277331 n).toNat + a (n - 1))

end

end A356999.P14173140710220689825

namespace A356999

/-- `A000007(n)+A057077(A277331(n))+a(n-1)` -/
def P14173140710220689825.Spec : Prop :=
  ∀ n, P14173140710220689825.a n = A356999 (n + 1)

end A356999

