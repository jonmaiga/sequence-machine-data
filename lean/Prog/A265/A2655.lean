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
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C038
import Seq.B000.C044
import Seq.B000.C045
import Seq.B000.C047
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C012
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B003.C005
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
import Seq.B008.C000
import Seq.B009.C000
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
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A265500: Balance scale sequence.

The programs for A265500, there is no canonical definition to state claims against.
-/

/-! ## A265500.P6783458086331545331

`A125975(A119970(n+1))`
-/

namespace A265500.P6783458086331545331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125975 (A119970 (n + 1)).toNat

end

end A265500.P6783458086331545331

/-! ## A265500.P16956172685615882101

`A305891(A337564(n))+n`
-/

namespace A265500.P16956172685615882101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305891 (A337564 n).toNat + (n : ℤ)

end

end A265500.P16956172685615882101

/-!
# A265501: Practical numbers that are squarefree.

The programs for A265501, there is no canonical definition to state claims against.
-/

/-! ## A265501.P9945018158668488231

`∩[A267124(n+1), A286652(n+1)]`
-/

namespace A265501.P9945018158668488231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267124 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286652 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A265501.P9945018158668488231

/-! ## A265501.P8931681070591460067

`A286652(record[n/∏{e}[A286652(n+1), #]]+1)`
-/

namespace A265501.P8931681070591460067
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286652 (n + 1)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n).natAbs, Nat.factorization (f2 n).natAbs p : ℕ) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286652 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1)).toNat

end

end A265501.P8931681070591460067

/-! ## A265501.P1894201145844273252

`record[A007913(A286652(n+1))]`
-/

namespace A265501.P1894201145844273252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A286652 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A265501.P1894201145844273252

/-! ## A265501.P3542189437797815017

`record[A007947(A334901(n+1))]`
-/

namespace A265501.P3542189437797815017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A334901 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A265501.P3542189437797815017

/-! ## A265501.P5812801593143901481

`filter[A267124(n+1), A008966(#)]`
-/

namespace A265501.P5812801593143901481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267124 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A265501.P5812801593143901481

/-! ## A265501.P262306968863778164

`filter[A286652(n+1), A008966(#)]`
-/

namespace A265501.P262306968863778164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286652 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A265501.P262306968863778164

/-! ## A265501.P11852293309462128138

`filter[A334901(n+1), A008966(#)]`
-/

namespace A265501.P11852293309462128138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334901 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A265501.P11852293309462128138

/-! ## A265501.P16896141623463380473

`filter[A005117(n+1), A378454(#)]`
-/

namespace A265501.P16896141623463380473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A378454 (f1 j).toNat = 1) n)

end

end A265501.P16896141623463380473

/-! ## A265501.P5687929810345439506

`filter[A286652(n+1), A359834(#)]`
-/

namespace A265501.P5687929810345439506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286652 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359834 (f1 j).toNat = 1) n)

end

end A265501.P5687929810345439506

/-! ## A265501.P16622409091954396562

`filter[A286652(n+1), A373252(#)]`
-/

namespace A265501.P16622409091954396562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286652 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373252 (f1 j).toNat = 1) n)

end

end A265501.P16622409091954396562

/-! ## A265501.P5622852318902935253

`filter[A286652(n+1), A378454(#)]`
-/

namespace A265501.P5622852318902935253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286652 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A378454 (f1 j).toNat = 1) n)

end

end A265501.P5622852318902935253

/-! ## A265501.P17721224459216833185

`record[A007947(A286652(round(n/2)+1))]`
-/

namespace A265501.P17721224459216833185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A286652 (SequenceMachineLib.roundAway ((n : ℚ) / 2) + 1).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A265501.P17721224459216833185

/-! ## A265501.P16743775962910724865

`filter[A005153(n+1), A008966(#)]`
-/

namespace A265501.P16743775962910724865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005153 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A265501.P16743775962910724865

/-! ## A265501.P16009794020557498698

`∩[A005117(n+1), A005153(n+1)]`
-/

namespace A265501.P16009794020557498698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005153 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A265501.P16009794020557498698

/-! ## A265501.P1335096906678648413

`∩[A005117(n+1), A267124(n+1)]`
-/

namespace A265501.P1335096906678648413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267124 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A265501.P1335096906678648413

/-! ## A265501.P12038308854907905962

`∩[A005117(n+1), A286652(n+1)]`
-/

namespace A265501.P12038308854907905962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286652 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A265501.P12038308854907905962

/-! ## A265501.P13255637188579157985

`∩[A005117(n+1), A334901(n+1)]`
-/

namespace A265501.P13255637188579157985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334901 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A265501.P13255637188579157985

/-! ## A265501.P9724204679713555665

`filter[A005117(n+1), A322860(#)]`
-/

namespace A265501.P9724204679713555665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A322860 (f1 j).toNat = 1) n)

end

end A265501.P9724204679713555665

/-! ## A265501.P16428284031069670227

`filter[A267124(n+1), A323154(#)]`
-/

namespace A265501.P16428284031069670227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267124 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323154 (f1 j).toNat = 1) n)

end

end A265501.P16428284031069670227

/-! ## A265501.P11231401737707729662

`filter[A286652(n+1), A323154(#)]`
-/

namespace A265501.P11231401737707729662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286652 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323154 (f1 j).toNat = 1) n)

end

end A265501.P11231401737707729662

/-!
# A265506: Number of pairs (p,q) of partitions of n into distinct parts such that p majorizes q in the dominance order.

The programs for A265506, there is no canonical definition to state claims against.
-/

/-! ## A265506.P4251470949787316262

`A366317(n)-A265508(n)`
-/

namespace A265506.P4251470949787316262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366317 n - A265508 n

end

end A265506.P4251470949787316262

/-! ## A265506.P8231067582770217132

`A000217(A000009(n))-A265508(n)`
-/

namespace A265506.P8231067582770217132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A000009 n).toNat - A265508 n

end

end A265506.P8231067582770217132

/-! ## A265506.P9758652843635555391

`A000217(abs(A081360(n)))-A265508(n)`
-/

namespace A265506.P9758652843635555391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 |A081360 n|.toNat - A265508 n

end

end A265506.P9758652843635555391

/-! ## A265506.P141012475745964498

`A000217(∑[A087897(n)])-A265508(n)`
-/

namespace A265506.P141012475745964498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087897 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (∑ j ∈ Finset.range (n + 1), f1 j).toNat - A265508 n

end

end A265506.P141012475745964498

/-! ## A265506.P17233415659795676058

`A000217(A111133(n)+1)-A265508(n)`
-/

namespace A265506.P17233415659795676058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A111133 n + 1).toNat - A265508 n

end

end A265506.P17233415659795676058

/-! ## A265506.P12628480715635594815

`A000217(ceil(A087135(n)/2))-A265508(n)`
-/

namespace A265506.P12628480715635594815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 ⌈(A087135 n : ℚ) / 2⌉.toNat - A265508 n

end

end A265506.P12628480715635594815

/-! ## A265506.P1294637609558679878

`A000217(A000041(n)-A047967(n))-A265508(n)`
-/

namespace A265506.P1294637609558679878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A000041 n - A047967 n).toNat - A265508 n

end

end A265506.P1294637609558679878

/-! ## A265506.P15213524167807208374

`A000217(A167932(n)-A032741(n))-A265508(n)`
-/

namespace A265506.P15213524167807208374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A167932 n - A032741 n).toNat - A265508 n

end

end A265506.P15213524167807208374

/-!
# A265507: A pyramid T(n,p,k) of square arrays read by rows relating semimeanders(n), positive arches(p) and components(k).

The programs for A265507, there is no canonical definition to state claims against.
-/

/-! ## A265507.P5502327393915854227

`A108286(A328673(n))%3`
-/

namespace A265507.P5502327393915854227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A108286 (A328673 n).toNat) 3

end

end A265507.P5502327393915854227

/-! ## A265507.P17255965381669076019

`A157403(A007933(n+1))%A053989(n+1)`
-/

namespace A265507.P17255965381669076019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A157403 (A007933 (n + 1)).toNat) (A053989 (n + 1))

end

end A265507.P17255965381669076019

/-! ## A265507.P10159652266092813213

`A332275(A101198(n+1))%A053989(n+1)`
-/

namespace A265507.P10159652266092813213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A332275 (A101198 (n + 1)).toNat) (A053989 (n + 1))

end

end A265507.P10159652266092813213

/-! ## A265507.P7205294795254960916

`and(A033088(2*n+1), A359902(A027907(2*n+1)))`
-/

namespace A265507.P7205294795254960916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A033088 (2 * n + 1)) (A359902 (A027907 (2 * n + 1)).toNat)

end

end A265507.P7205294795254960916

/-! ## A265507.P2790179633262805708

`A034365(A328673(n))`
-/

namespace A265507.P2790179633262805708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034365 (A328673 n).toNat

end

end A265507.P2790179633262805708

/-!
# A265508: Number of unordered pairs {p,q} of partitions of n into distinct parts such that p and q are incomparable in the dominance order.

The programs for A265508, there is no canonical definition to state claims against.
-/

/-! ## A265508.P5887917463836845642

`A000217(A000009(n))-A265506(n)`
-/

namespace A265508.P5887917463836845642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A000009 n).toNat - A265506 n

end

end A265508.P5887917463836845642

/-! ## A265508.P11333340138682134911

`A366317(n)-A265506(n)`
-/

namespace A265508.P11333340138682134911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366317 n - A265506 n

end

end A265508.P11333340138682134911

/-! ## A265508.P9765035101136453189

`A366317(n)%(A265506(n)%A034472(n))`
-/

namespace A265508.P9765035101136453189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A366317 n) (Int.tmod (A265506 n) (A034472 n))

end

end A265508.P9765035101136453189

/-! ## A265508.P5644380085588114560

`A000217(A000009(n))%A265506(n)*A057427(n)`
-/

namespace A265508.P5644380085588114560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000217 (A000009 n).toNat) (A265506 n) * A057427 n

end

end A265508.P5644380085588114560

/-!
# A265509: a(n) = largest base-2 palindrome m <= 2n+1 such that every base-2 digit of m is <= the corresponding digit of 2n+1; m is written in base 10.

The programs for A265509, the canonical program `A265509.P6848242209228727454` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A265509 has offset 0).

The definition of A265509 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8192 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A265509.P1163292590785934603

`and(2*n+1, A264619(n))`
-/

namespace A265509.P1163292590785934603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (2 * n + 1 : ℤ) (A264619 n)

end

end A265509.P1163292590785934603

namespace A265509

/-- `and(2*n+1, A264619(n))` -/
def P1163292590785934603.Spec : Prop :=
  ∀ n, P1163292590785934603.a n = A265509 n

end A265509

/-! ## A265509.P6953714018862726703

`and(2*n+1, A145341(n+1))`
-/

namespace A265509.P6953714018862726703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (2 * n + 1 : ℤ) (A145341 (n + 1))

end

end A265509.P6953714018862726703

namespace A265509

/-- `and(2*n+1, A145341(n+1))` -/
def P6953714018862726703.Spec : Prop :=
  ∀ n, P6953714018862726703.a n = A265509 n

end A265509

/-! ## A265509.P3886437981390432714

`and(2*n+1, A057889(2*n+1))`
-/

namespace A265509.P3886437981390432714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (2 * n + 1 : ℤ) (A057889 (2 * n + 1))

end

end A265509.P3886437981390432714

namespace A265509

/-- `and(2*n+1, A057889(2*n+1))` -/
def P3886437981390432714.Spec : Prop :=
  ∀ n, P3886437981390432714.a n = A265509 n

end A265509

/-! ## A265509.P6848242209228727454

`and(2*n+1, A175920(2*n+1))`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A265509

/-- `and(2*n+1, A175920(2*n+1))` -/
def P6848242209228727454.Spec : Prop :=
  ∀ n, P6848242209228727454.a n = A265509 n

theorem P6848242209228727454.correct : P6848242209228727454.Spec := by
  intro n
  simp only [A265509]

end A265509

/-! ## A265509.P15535968905248819789

`and(2*n+1, A264618(2*n+1))`
-/

namespace A265509.P15535968905248819789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (2 * n + 1 : ℤ) (A264618 (2 * n + 1))

end

end A265509.P15535968905248819789

namespace A265509

/-- `and(2*n+1, A264618(2*n+1))` -/
def P15535968905248819789.Spec : Prop :=
  ∀ n, P15535968905248819789.a n = A265509 n

end A265509

/-! ## A265509.P12737013545273468024

`and(A145341(n+1), A346304(n+1))`
-/

namespace A265509.P12737013545273468024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A145341 (n + 1)) (A346304 (n + 1))

end

end A265509.P12737013545273468024

namespace A265509

/-- `and(A145341(n+1), A346304(n+1))` -/
def P12737013545273468024.Spec : Prop :=
  ∀ n, P12737013545273468024.a n = A265509 n

end A265509

/-! ## A265509.P8095197514643151671

`A175920(2*n+1)-A175917(2*n)`
-/

namespace A265509.P8095197514643151671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175920 (2 * n + 1) - A175917 (2 * n)

end

end A265509.P8095197514643151671

namespace A265509

/-- `A175920(2*n+1)-A175917(2*n)` -/
def P8095197514643151671.Spec : Prop :=
  ∀ n, P8095197514643151671.a n = A265509 n

end A265509

/-! ## A265509.P506419141610570674

`A175298(2*n+1)-A175919(2*n+1)`
-/

namespace A265509.P506419141610570674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175298 (2 * n + 1) - A175919 (2 * n + 1)

end

end A265509.P506419141610570674

namespace A265509

/-- `A175298(2*n+1)-A175919(2*n+1)` -/
def P506419141610570674.Spec : Prop :=
  ∀ n, P506419141610570674.a n = A265509 n

end A265509

/-! ## A265509.P10640787115412080119

`A057889(2*n+1)-A370427(2*n+1)`
-/

namespace A265509.P10640787115412080119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057889 (2 * n + 1) - A370427 (2 * n + 1)

end

end A265509.P10640787115412080119

namespace A265509

/-- `A057889(2*n+1)-A370427(2*n+1)` -/
def P10640787115412080119.Spec : Prop :=
  ∀ n, P10640787115412080119.a n = A265509 n

end A265509

/-! ## A265509.P11341037768877646954

`and(A325401(2*n+1), A325402(2*n+1))`
-/

namespace A265509.P11341037768877646954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A325401 (2 * n + 1)) (A325402 (2 * n + 1))

end

end A265509.P11341037768877646954

namespace A265509

/-- `and(A325401(2*n+1), A325402(2*n+1))` -/
def P11341037768877646954.Spec : Prop :=
  ∀ n, P11341037768877646954.a n = A265509 n

end A265509

/-! ## A265509.P6821484258060852639

`A175298(and(A005408(n), A145341(n+1)))`
-/

namespace A265509.P6821484258060852639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175298 (Int.land (A005408 n) (A145341 (n + 1))).toNat

end

end A265509.P6821484258060852639

namespace A265509

/-- `A175298(and(A005408(n), A145341(n+1)))` -/
def P6821484258060852639.Spec : Prop :=
  ∀ n, P6821484258060852639.a n = A265509 n

end A265509

/-! ## A265509.P2234500303427785266

`A003817(A003817(n)+1)-A175918(2*n+1)`
-/

namespace A265509.P2234500303427785266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003817 (A003817 n + 1).toNat - A175918 (2 * n + 1)

end

end A265509.P2234500303427785266

namespace A265509

/-- `A003817(A003817(n)+1)-A175918(2*n+1)` -/
def P2234500303427785266.Spec : Prop :=
  ∀ n, P2234500303427785266.a n = A265509 n

end A265509

/-! ## A265509.P11860491550527392017

`A175920(2*n+1)-A175918(A175298(2*n))`
-/

namespace A265509.P11860491550527392017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175920 (2 * n + 1) - A175918 (A175298 (2 * n)).toNat

end

end A265509.P11860491550527392017

namespace A265509

/-- `A175920(2*n+1)-A175918(A175298(2*n))` -/
def P11860491550527392017.Spec : Prop :=
  ∀ n, P11860491550527392017.a n = A265509 n

end A265509

/-! ## A265509.P11544723883779545166

`A175920(A175920(2*n+1))-A175918(2*n+1)`
-/

namespace A265509.P11544723883779545166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175920 (A175920 (2 * n + 1)).toNat - A175918 (2 * n + 1)

end

end A265509.P11544723883779545166

namespace A265509

/-- `A175920(A175920(2*n+1))-A175918(2*n+1)` -/
def P11544723883779545166.Spec : Prop :=
  ∀ n, P11544723883779545166.a n = A265509 n

end A265509

/-! ## A265509.P4273503487638625700

`A206913(and(A005408(n), A145341(n+1)))`
-/

namespace A265509.P4273503487638625700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206913 (Int.land (A005408 n) (A145341 (n + 1))).toNat

end

end A265509.P4273503487638625700

namespace A265509

/-- `A206913(and(A005408(n), A145341(n+1)))` -/
def P4273503487638625700.Spec : Prop :=
  ∀ n, P4273503487638625700.a n = A265509 n

end A265509

/-! ## A265509.P1256198015039193368

`A206914(and(A005408(n), A145341(n+1)))`
-/

namespace A265509.P1256198015039193368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206914 (Int.land (A005408 n) (A145341 (n + 1))).toNat

end

end A265509.P1256198015039193368

namespace A265509

/-- `A206914(and(A005408(n), A145341(n+1)))` -/
def P1256198015039193368.Spec : Prop :=
  ∀ n, P1256198015039193368.a n = A265509 n

end A265509

/-! ## A265509.P9822270696344114608

`A175297(Δ[n²])`
-/

namespace A265509.P9822270696344114608
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175297 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A265509.P9822270696344114608

namespace A265509

/-- `A175297(Δ[n²])` -/
def P9822270696344114608.Spec : Prop :=
  ∀ n, P9822270696344114608.a n = A265509 n

end A265509

/-! ## A265509.P5877885374227098900

`and(2*n+1, A030101(2*n+1))`
-/

namespace A265509.P5877885374227098900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (2 * n + 1 : ℤ) (A030101 (2 * n + 1))

end

end A265509.P5877885374227098900

namespace A265509

/-- `and(2*n+1, A030101(2*n+1))` -/
def P5877885374227098900.Spec : Prop :=
  ∀ n, P5877885374227098900.a n = A265509 n

end A265509

/-!
# A265510: a(n) = largest base-2 palindrome m <= 2n+1 such that every base-2 digit of m is <= the corresponding digit of 2n+1; m is written in base 2.

The programs for A265510, the canonical program `A265510.P3655784241704673795` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A265510 has offset 0).

The definition of A265510 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8192 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A265510.P3655784241704673795

`A007088(A265509(n))`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A265510

/-- `A007088(A265509(n))` -/
def P3655784241704673795.Spec : Prop :=
  ∀ n, P3655784241704673795.a n = A265510 n

theorem P3655784241704673795.correct : P3655784241704673795.Spec := by
  intro n
  simp only [A265510]

end A265510

/-! ## A265510.P3180149688067620922

`A007088(and(2*n+1, A264619(n)))`
-/

namespace A265510.P3180149688067620922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (Int.land (2 * n + 1 : ℤ) (A264619 n)).toNat

end

end A265510.P3180149688067620922

namespace A265510

/-- `A007088(and(2*n+1, A264619(n)))` -/
def P3180149688067620922.Spec : Prop :=
  ∀ n, P3180149688067620922.a n = A265510 n

end A265510

/-! ## A265510.P9854076760517110233

`A265526(A265509(n)+1)`
-/

namespace A265510.P9854076760517110233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265526 (A265509 n + 1).toNat

end

end A265510.P9854076760517110233

namespace A265510

/-- `A265526(A265509(n)+1)` -/
def P9854076760517110233.Spec : Prop :=
  ∀ n, P9854076760517110233.a n = A265510 n

end A265510

/-! ## A265510.P8462022926287787910

`A265526(A265509(2*n-n))`
-/

namespace A265510.P8462022926287787910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265526 (A265509 (2 * n - n)).toNat

end

end A265510.P8462022926287787910

namespace A265510

/-- `A265526(A265509(2*n-n))` -/
def P8462022926287787910.Spec : Prop :=
  ∀ n, P8462022926287787910.a n = A265510 n

end A265510

/-! ## A265510.P13774031005507154102

`A007088(and(2*n+1, A030101(2*n+1)))`
-/

namespace A265510.P13774031005507154102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (Int.land (2 * n + 1 : ℤ) (A030101 (2 * n + 1))).toNat

end

end A265510.P13774031005507154102

namespace A265510

/-- `A007088(and(2*n+1, A030101(2*n+1)))` -/
def P13774031005507154102.Spec : Prop :=
  ∀ n, P13774031005507154102.a n = A265510 n

end A265510

/-! ## A265510.P12694492988531950297

`A007088(and(2*n+1, A161501(2*n+1)))`
-/

namespace A265510.P12694492988531950297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (Int.land (2 * n + 1 : ℤ) (A161501 (2 * n + 1))).toNat

end

end A265510.P12694492988531950297

namespace A265510

/-- `A007088(and(2*n+1, A161501(2*n+1)))` -/
def P12694492988531950297.Spec : Prop :=
  ∀ n, P12694492988531950297.a n = A265510 n

end A265510

/-! ## A265510.P2591204042088408756

`A185544(2*A265509(n))`
-/

namespace A265510.P2591204042088408756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A265509 n).toNat

end

end A265510.P2591204042088408756

namespace A265510

/-- `A185544(2*A265509(n))` -/
def P2591204042088408756.Spec : Prop :=
  ∀ n, P2591204042088408756.a n = A265510 n

end A265510

/-!
# A265511: a(n) = largest base-3 palindrome m <= n such that every base-3 digit of m is <= the corresponding digit of n; m is written in base 10.

The programs for A265511, there is no canonical definition to state claims against.
-/

/-! ## A265511.P18327845394484472287

`(A055946(n)-A265544(n))*n²%3`
-/

namespace A265511.P18327845394484472287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A055946 n - A265544 n) * ((n ^ 2 % 3 : ℕ) : ℤ)

end

end A265511.P18327845394484472287

/-! ## A265511.P6090099466576762733

`A091684(A055946(n)-A265544(n))`
-/

namespace A265511.P6090099466576762733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091684 (A055946 n - A265544 n).toNat

end

end A265511.P6090099466576762733

/-! ## A265511.P5296284201074686808

`A091684(A265544(n)-A338828(n))`
-/

namespace A265511.P5296284201074686808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091684 (A265544 n - A338828 n).toNat

end

end A265511.P5296284201074686808

/-! ## A265511.P4587088676555363323

`(A055946(n)-A265544(n))*A011655(n)`
-/

namespace A265511.P4587088676555363323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A055946 n - A265544 n) * A011655 n

end

end A265511.P4587088676555363323

/-! ## A265511.P17702206064784101211

`abs((A265544(n)-A338828(n))*A102283(n))`
-/

namespace A265511.P17702206064784101211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(A265544 n - A338828 n) * A102283 n|

end

end A265511.P17702206064784101211

/-! ## A265511.P17752855689267341265

`(A055946(n)-A265544(n))*and(1, A000211(n))`
-/

namespace A265511.P17752855689267341265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A055946 n - A265544 n) * Int.land 1 (A000211 n)

end

end A265511.P17752855689267341265

/-! ## A265511.P7640108512573081148

`A028898(A265512(n))`
-/

namespace A265511.P7640108512573081148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028898 (A265512 n).toNat

end

end A265511.P7640108512573081148

/-!
# A265512: a(n) = largest base-3 palindrome m <= n such that every base-3 digit of m is <= the corresponding digit of n; m is written in base 3.

The programs for A265512, there is no canonical definition to state claims against.
-/

/-! ## A265512.P6729940241931555535

`A007089(A265511(n))`
-/

namespace A265512.P6729940241931555535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 (A265511 n).toNat

end

end A265512.P6729940241931555535

/-! ## A265512.P302631019793992017

`A265525(A007089(n))`
-/

namespace A265512.P302631019793992017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265525 (A007089 n).toNat

end

end A265512.P302631019793992017

/-! ## A265512.P10797713099668053627

`A305877(3*A265511(n))`
-/

namespace A265512.P10797713099668053627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305877 (3 * A265511 n).toNat

end

end A265512.P10797713099668053627

/-! ## A265512.P8553984864388429805

`A305877(lcm(3, A265511(n)))`
-/

namespace A265512.P8553984864388429805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305877 (Int.lcm 3 (A265511 n))

end

end A265512.P8553984864388429805

/-! ## A265512.P6894174071416194058

`A265525(lt[A054055(n), 3])`
-/

namespace A265512.P6894174071416194058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054055 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265525 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A265512.P6894174071416194058

/-! ## A265512.P4451875175633998063

`A305877(A265511(n)%(n+1))`
-/

namespace A265512.P4451875175633998063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305877 (Int.tmod (A265511 n) (n + 1 : ℤ)).toNat

end

end A265512.P4451875175633998063

/-! ## A265512.P15131927776880176749

`A265545(A265511(n)%A265509(n))`
-/

namespace A265512.P15131927776880176749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265545 (Int.tmod (A265511 n) (A265509 n)).toNat

end

end A265512.P15131927776880176749

/-! ## A265512.P8400756255382978223

`A265545(A265511(n))%A265510(n)`
-/

namespace A265512.P8400756255382978223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A265545 (A265511 n).toNat) (A265510 n)

end

end A265512.P8400756255382978223

/-! ## A265512.P15456956094092555700

`A265561(2*A265511(n)-A265511(n))`
-/

namespace A265512.P15456956094092555700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265561 (2 * A265511 n - A265511 n).toNat

end

end A265512.P15456956094092555700

/-!
# A265513: a(n) = largest base-4 palindrome m <= n such that every base-4 digit of m is <= the corresponding digit of n; m is written in base 10.

The programs for A265513, there is no canonical definition to state claims against.
-/

/-! ## A265513.P7006187165353374808

`A190621(A055948(n)-A265546(n))`
-/

namespace A265513.P7006187165353374808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190621 (A055948 n - A265546 n).toNat

end

end A265513.P7006187165353374808

/-! ## A265513.P5059552474925350474

`(A055948(n)-A265546(n))*Δ[A057353(n)]`
-/

namespace A265513.P5059552474925350474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057353 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A055948 n - A265546 n) * (f1 (n + 1) - f1 n)

end

end A265513.P5059552474925350474

/-! ## A265513.P18315142746455906555

`(A055948(n)-A265546(n))*A195043(n)%2`
-/

namespace A265513.P18315142746455906555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A055948 n - A265546 n) * Int.tmod (A195043 n) 2

end

end A265513.P18315142746455906555

/-! ## A265513.P5090624694538420082

`(A030103(n)+n-A265546(n))*Δ[A057353(n)]`
-/

namespace A265513.P5090624694538420082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057353 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A030103 n + (n : ℤ) - A265546 n) * (f1 (n + 1) - f1 n)

end

end A265513.P5090624694538420082

/-! ## A265513.P3687020586002956356

`A028899(A265514(n))`
-/

namespace A265513.P3687020586002956356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028899 (A265514 n).toNat

end

end A265513.P3687020586002956356

/-!
# A265514: a(n) = largest base-4 palindrome m <= n such that every base-4 digit of m is <= the corresponding digit of n; m is written in base 4.

The programs for A265514, there is no canonical definition to state claims against.
-/

/-! ## A265514.P12681337813688410839

`A007090(A265513(n))`
-/

namespace A265514.P12681337813688410839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007090 (A265513 n).toNat

end

end A265514.P12681337813688410839

/-! ## A265514.P16733844230514295905

`A265525(A007090(n))`
-/

namespace A265514.P16733844230514295905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265525 (A007090 n).toNat

end

end A265514.P16733844230514295905

/-! ## A265514.P16473130819446148702

`A265525(record[A064770(n)])`
-/

namespace A265514.P16473130819446148702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064770 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265525 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A265514.P16473130819446148702

/-! ## A265514.P5863007841169900260

`A265525(lt[A102673(n), 1])`
-/

namespace A265514.P5863007841169900260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102673 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265525 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A265514.P5863007841169900260

/-! ## A265514.P11249564997803919397

`A265525(lt[A054055(n), 4])`
-/

namespace A265514.P11249564997803919397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054055 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265525 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A265514.P11249564997803919397

/-! ## A265514.P1979930577283062780

`A265532(A265513(n)+char[3])`
-/

namespace A265514.P1979930577283062780
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265532 (A265513 n + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)).toNat

end

end A265514.P1979930577283062780

/-! ## A265514.P2018813072534809621

`A265547(A265513(n)-char[6])`
-/

namespace A265514.P2018813072534809621
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265547 (A265513 n - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)).toNat

end

end A265514.P2018813072534809621

/-! ## A265514.P9278280801059817924

`A265532(or(char[1], A265513(n)))`
-/

namespace A265514.P9278280801059817924
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265532 (Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A265513 n)).toNat

end

end A265514.P9278280801059817924

/-! ## A265514.P8208787681809760667

`A265563(A265513(2*n-n))`
-/

namespace A265514.P8208787681809760667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265563 (A265513 (2 * n - n)).toNat

end

end A265514.P8208787681809760667

/-!
# A265515: a(n) = largest base-5 palindrome m <= n such that every base-5 digit of m is <= the corresponding digit of n; m is written in base 10.

The programs for A265515, there is no canonical definition to state claims against.
-/

/-! ## A265515.P1896174017410120166

`A091703(A055950(n)-A265548(n))`
-/

namespace A265515.P1896174017410120166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091703 (A055950 n - A265548 n).toNat

end

end A265515.P1896174017410120166

/-! ## A265515.P1812671907234008161

`(A055950(n)-A265548(n))*A001343(A001343(n))`
-/

namespace A265515.P1812671907234008161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A055950 n - A265548 n) * A001343 (A001343 n).toNat

end

end A265515.P1812671907234008161

/-! ## A265515.P14126862239040579593

`A028900(A265516(n))`
-/

namespace A265515.P14126862239040579593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028900 (A265516 n).toNat

end

end A265515.P14126862239040579593

/-! ## A265515.P10214947382186850014

`(A055950(n)-A265548(n))%A167266(n+1)`
-/

namespace A265515.P10214947382186850014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A055950 n - A265548 n) (A167266 (n + 1))

end

end A265515.P10214947382186850014

/-! ## A265515.P13567577902791541101

`(A055950(n)-A265548(n))^A166516(A001343(n)+1)`
-/

namespace A265515.P13567577902791541101
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055950 n - A265548 n : ℚ) ^ (A166516 (A001343 n + 1).toNat : ℤ)

end

end A265515.P13567577902791541101

/-!
# A265516: a(n) = largest base-5 palindrome m <= n such that every base-5 digit of m is <= the corresponding digit of n; m is written in base 5.

The programs for A265516, there is no canonical definition to state claims against.
-/

/-! ## A265516.P9920851368681914902

`A007091(A265515(n))`
-/

namespace A265516.P9920851368681914902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007091 (A265515 n).toNat

end

end A265516.P9920851368681914902

/-! ## A265516.P12744817711648653329

`A265525(A007091(n))`
-/

namespace A265516.P12744817711648653329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265525 (A007091 n).toNat

end

end A265516.P12744817711648653329

/-! ## A265516.P10360843583677289053

`A265525(record[A106747(n)])`
-/

namespace A265516.P10360843583677289053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106747 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265525 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A265516.P10360843583677289053

/-! ## A265516.P18154957799837666993

`A265525(lt[A054055(n), 5])`
-/

namespace A265516.P18154957799837666993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054055 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265525 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A265516.P18154957799837666993

/-! ## A265516.P12865712895492139097

`A265525(eq[n, A167831(n)])`
-/

namespace A265516.P12865712895492139097
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167831 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265525 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A265516.P12865712895492139097

/-! ## A265516.P10150609656975942981

`A265525(record[A001613(n)/2])`
-/

namespace A265516.P10150609656975942981
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001613 n : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265525 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A265516.P10150609656975942981

/-! ## A265516.P8721335341818106976

`A265525(record[n-A107128(n)])`
-/

namespace A265516.P8721335341818106976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A107128 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265525 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A265516.P8721335341818106976

/-! ## A265516.P2054239279379695568

`A265525(A014263(n+1)/2)`
-/

namespace A265516.P2054239279379695568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265525 (SequenceMachineLib.roundAway ((A014263 (n + 1) : ℚ) / 2)).toNat

end

end A265516.P2054239279379695568

/-! ## A265516.P4419541187204908418

`A265525(record[A001613(2*n)-n])`
-/

namespace A265516.P4419541187204908418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001613 (2 * n) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265525 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A265516.P4419541187204908418

/-! ## A265516.P13645614846798851869

`A265525(A004525(record[A001613(n)]))`
-/

namespace A265516.P13645614846798851869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001613 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265525 (A004525 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat).toNat

end

end A265516.P13645614846798851869

/-!
# A265517: a(n) = largest base-6 palindrome m <= n such that every base-6 digit of m is <= the corresponding digit of n; m is written in base 10.

The programs for A265517, there is no canonical definition to state claims against.
-/

/-! ## A265517.P8675152746915505208

`A028901(A265518(n))`
-/

namespace A265517.P8675152746915505208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028901 (A265518 n).toNat

end

end A265517.P8675152746915505208

/-! ## A265517.P5492287118714082149

`A055952(n)-(A265550(n)+A000038(A291085(n)))`
-/

namespace A265517.P5492287118714082149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055952 n - (A265550 n + A000038 (A291085 n).toNat)

end

end A265517.P5492287118714082149

/-! ## A265517.P17640543555540090764

`A055952(n)-A265550(A265550(n))`
-/

namespace A265517.P17640543555540090764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055952 n - A265550 (A265550 n).toNat

end

end A265517.P17640543555540090764

/-!
# A265518: a(n) = largest base-6 palindrome m <= n such that every base-6 digit of m is <= the corresponding digit of n; m is written in base 6.

The programs for A265518, there is no canonical definition to state claims against.
-/

/-! ## A265518.P13998820919455878313

`A007092(A265517(n))`
-/

namespace A265518.P13998820919455878313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007092 (A265517 n).toNat

end

end A265518.P13998820919455878313

/-! ## A265518.P17373480995813533440

`A265525(A007092(n))`
-/

namespace A265518.P17373480995813533440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265525 (A007092 n).toNat

end

end A265518.P17373480995813533440

/-! ## A265518.P2668856075259681030

`A265525(lt[A102677(n), 1])`
-/

namespace A265518.P2668856075259681030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102677 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265525 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A265518.P2668856075259681030

/-! ## A265518.P4379460964457706166

`A265525(lt[A054055(n), 6])`
-/

namespace A265518.P4379460964457706166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054055 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265525 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A265518.P4379460964457706166

/-! ## A265518.P17619206019146049193

`A265525(record[n-A106747(n)])`
-/

namespace A265518.P17619206019146049193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A106747 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265525 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A265518.P17619206019146049193

/-! ## A265518.P7069676006755184831

`A265525(eq[n, A222252(A222251(n))])`
-/

namespace A265518.P7069676006755184831
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222252 (A222251 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265525 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A265518.P7069676006755184831

/-! ## A265518.P6774699687782175117

`A265525(record[A235049(n-A064770(n))])`
-/

namespace A265518.P6774699687782175117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235049 ((n : ℤ) - A064770 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265525 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A265518.P6774699687782175117

/-! ## A265518.P11716611095822571457

`A265551(A265517(n)%A265509(n))`
-/

namespace A265518.P11716611095822571457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265551 (Int.tmod (A265517 n) (A265509 n)).toNat

end

end A265518.P11716611095822571457

/-! ## A265518.P14405702650864578724

`A265551(A265517(n))%A265510(n)`
-/

namespace A265518.P14405702650864578724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A265551 (A265517 n).toNat) (A265510 n)

end

end A265518.P14405702650864578724

/-! ## A265518.P8124531640565168833

`A265567(2*A265517(n)-A265517(n))`
-/

namespace A265518.P8124531640565168833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265567 (2 * A265517 n - A265517 n).toNat

end

end A265518.P8124531640565168833

/-!
# A265519: a(n) = largest base-7 palindrome m <= n such that every base-7 digit of m is <= the corresponding digit of n; m is written in base 10.

The programs for A265519, there is no canonical definition to state claims against.
-/

/-! ## A265519.P5730819114996647091

`A028902(A265520(n))`
-/

namespace A265519.P5730819114996647091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028902 (A265520 n).toNat

end

end A265519.P5730819114996647091

/-! ## A265519.P10748459765258896834

`(A055954(n)-A265552(n))*A109720(n)`
-/

namespace A265519.P10748459765258896834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A055954 n - A265552 n) * A109720 n

end

end A265519.P10748459765258896834

/-! ## A265519.P15620601916130291194

`(A055954(n)-A265552(n))*A175629(n²)`
-/

namespace A265519.P15620601916130291194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A055954 n - A265552 n) * A175629 (n ^ 2)

end

end A265519.P15620601916130291194

/-! ## A265519.P12365462098662276029

`(A055954(n)-A265552(n))%A182244(n+1)`
-/

namespace A265519.P12365462098662276029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A055954 n - A265552 n) (A182244 (n + 1))

end

end A265519.P12365462098662276029

/-! ## A265519.P1582790231844605746

`A055954(n)-A265552(n)-C(n, A137169(n))`
-/

namespace A265519.P1582790231844605746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055954 n - A265552 n - (Nat.choose n (A137169 n).toNat : ℤ)

end

end A265519.P1582790231844605746

/-! ## A265519.P15081781071406360687

`A000007(A098194(n+1))+A055954(n)-A265552(n)`
-/

namespace A265519.P15081781071406360687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A098194 (n + 1)).toNat + (A055954 n - A265552 n)

end

end A265519.P15081781071406360687

/-! ## A265519.P7560216651024986374

`A000038(A117467(n+1))+A055954(n)-A265552(n)`
-/

namespace A265519.P7560216651024986374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (A117467 (n + 1)).toNat + (A055954 n - A265552 n)

end

end A265519.P7560216651024986374

/-! ## A265519.P8616500202318513019

`A000007(A173135(n+1))+A055954(n)-A265552(n)`
-/

namespace A265519.P8616500202318513019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A173135 (n + 1)).toNat + (A055954 n - A265552 n)

end

end A265519.P8616500202318513019

/-! ## A265519.P5515826452585410379

`A000007(A303403(n+1))+A055954(n)-A265552(n)`
-/

namespace A265519.P5515826452585410379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A303403 (n + 1)).toNat + (A055954 n - A265552 n)

end

end A265519.P5515826452585410379

/-! ## A265519.P4617459751597727747

`(A055954(n)-A265552(n))*A317847(A174162(n+1))`
-/

namespace A265519.P4617459751597727747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A055954 n - A265552 n) * A317847 (A174162 (n + 1)).toNat

end

end A265519.P4617459751597727747

/-!
# A265520: a(n) = largest base-7 palindrome m <= n such that every base-7 digit of m is <= the corresponding digit of n; m is written in base 7.

The programs for A265520, there is no canonical definition to state claims against.
-/

/-! ## A265520.P13276990999919759645

`A007093(A265519(n))`
-/

namespace A265520.P13276990999919759645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007093 (A265519 n).toNat

end

end A265520.P13276990999919759645

/-! ## A265520.P2933751144963990033

`A265525(A007093(n))`
-/

namespace A265520.P2933751144963990033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265525 (A007093 n).toNat

end

end A265520.P2933751144963990033

/-! ## A265520.P6302035291809606138

`A265525(lt[A102679(n), 1])`
-/

namespace A265520.P6302035291809606138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102679 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265525 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A265520.P6302035291809606138

/-! ## A265520.P12671355125863164684

`A265525(lt[A054055(n), 7])`
-/

namespace A265520.P12671355125863164684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054055 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265525 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A265520.P12671355125863164684

/-! ## A265520.P2377567472190934893

`A265553(A265519(n)-char[8])`
-/

namespace A265520.P2377567472190934893
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265553 (A265519 n - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)).toNat

end

end A265520.P2377567472190934893

/-! ## A265520.P1148940656868499679

`A265538(or(char[1], A265519(n)))`
-/

namespace A265520.P1148940656868499679
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265538 (Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A265519 n)).toNat

end

end A265520.P1148940656868499679

/-! ## A265520.P13629805538808313720

`A265553(or(char[1], A265519(n)))`
-/

namespace A265520.P13629805538808313720
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265553 (Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A265519 n)).toNat

end

end A265520.P13629805538808313720

/-! ## A265520.P10624617372116022466

`A265525(record[n-A064770(n)])`
-/

namespace A265520.P10624617372116022466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A064770 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265525 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A265520.P10624617372116022466

/-! ## A265520.P17945841952577657274

`A265538(A265519(n)%(n+1))`
-/

namespace A265520.P17945841952577657274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265538 (Int.tmod (A265519 n) (n + 1 : ℤ)).toNat

end

end A265520.P17945841952577657274

/-! ## A265520.P10634489204540474553

`A265525(A222251(record[A222251(n)]))`
-/

namespace A265520.P10634489204540474553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222251 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265525 (A222251 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat).toNat

end

end A265520.P10634489204540474553

/-!
# A265521: a(n) = largest base-8 palindrome m <= n such that every base-8 digit of m is <= the corresponding digit of n; m is written in base 10.

The programs for A265521, there is no canonical definition to state claims against.
-/

/-! ## A265521.P2669713033233765526

`A028903(A265522(n))`
-/

namespace A265521.P2669713033233765526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028903 (A265522 n).toNat

end

end A265521.P2669713033233765526

/-! ## A265521.P3899580581901154194

`(A055956(n)-A265554(n))*A057427(n*(3*n+2-∑{d}[n+1, #]))`
-/

namespace A265521.P3899580581901154194
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A055956 n - A265554 n) * A057427 ((n : ℤ) * ((3 * n : ℤ) + (2 - ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ)))).toNat

end

end A265521.P3899580581901154194

/-! ## A265521.P9812232771389586176

`(A055956(n)-A265554(n))/A327858(A201314(n+1))`
-/

namespace A265521.P9812232771389586176
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055956 n - A265554 n : ℚ) / (A327858 (A201314 (n + 1)).toNat : ℚ)

end

end A265521.P9812232771389586176

/-! ## A265521.P3221462956041520753

`(A055956(n)-A265554(n))%A141557(n+1)`
-/

namespace A265521.P3221462956041520753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A055956 n - A265554 n) (A141557 (n + 1))

end

end A265521.P3221462956041520753

/-! ## A265521.P3700101831069600513

`A055956(n)-A265554(A265554(n))`
-/

namespace A265521.P3700101831069600513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055956 n - A265554 (A265554 n).toNat

end

end A265521.P3700101831069600513

/-! ## A265521.P895693414954072820

`2*n-A055957(n)-A265554(A265554(n))`
-/

namespace A265521.P895693414954072820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - A055957 n - A265554 (A265554 n).toNat

end

end A265521.P895693414954072820

/-! ## A265521.P5279916008178227611

`A030107(n)-A001489(n)-A265554(A265554(n))`
-/

namespace A265521.P5279916008178227611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030107 n - A001489 n - A265554 (A265554 n).toNat

end

end A265521.P5279916008178227611

/-! ## A265521.P2824451444558105024

`A351870(A319656(n)-A165091(n))`
-/

namespace A265521.P2824451444558105024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351870 (A319656 n - A165091 n).toNat

end

end A265521.P2824451444558105024

/-!
# A265522: a(n) = largest base-8 palindrome m <= n such that every base-8 digit of m is <= the corresponding digit of n; m is written in base 8.

The programs for A265522, there is no canonical definition to state claims against.
-/

/-! ## A265522.P5198060257043871579

`A007094(A265521(n))`
-/

namespace A265522.P5198060257043871579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007094 (A265521 n).toNat

end

end A265522.P5198060257043871579

/-! ## A265522.P10374321489659985660

`A265525(A007094(n))`
-/

namespace A265522.P10374321489659985660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265525 (A007094 n).toNat

end

end A265522.P10374321489659985660

/-! ## A265522.P5346211346101265731

`A265525(lt[A054055(n), 8])`
-/

namespace A265522.P5346211346101265731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054055 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265525 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A265522.P5346211346101265731

/-! ## A265522.P6367896896332226472

`A265525(eq[n, A222254(n)])`
-/

namespace A265522.P6367896896332226472
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222254 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265525 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A265522.P6367896896332226472

/-! ## A265522.P9341953292322614811

`A265540(A265521(n)+char[7])`
-/

namespace A265522.P9341953292322614811
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265540 (A265521 n + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)).toNat

end

end A265522.P9341953292322614811

/-! ## A265522.P7296189550423687759

`A265540(or(char[1], A265521(n)))`
-/

namespace A265522.P7296189550423687759
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265540 (Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A265521 n)).toNat

end

end A265522.P7296189550423687759

/-! ## A265522.P1473579716155116207

`A265555(or(char[1], A265521(n)))`
-/

namespace A265522.P1473579716155116207
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265555 (Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A265521 n)).toNat

end

end A265522.P1473579716155116207

/-! ## A265522.P6253631719462673694

`A265571(A265521(2*n-n))`
-/

namespace A265522.P6253631719462673694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265571 (A265521 (2 * n - n)).toNat

end

end A265522.P6253631719462673694

/-! ## A265522.P8144649071674849648

`A265525(eq[0, n*A102681(n)])`
-/

namespace A265522.P8144649071674849648
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A102681 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265525 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A265522.P8144649071674849648

/-! ## A265522.P2003612624019339708

`A265525(eq[n, A102681(n)+n])`
-/

namespace A265522.P2003612624019339708
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102681 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265525 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A265522.P2003612624019339708

/-!
# A265523: a(n) = largest base-9 palindrome m <= n such that every base-9 digit of m is <= the corresponding digit of n; m is written in base 10.

The programs for A265523, there is no canonical definition to state claims against.
-/

/-! ## A265523.P11859412317651092516

`A028904(A265524(n))`
-/

namespace A265523.P11859412317651092516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028904 (A265524 n).toNat

end

end A265523.P11859412317651092516

/-! ## A265523.P12678486613882293356

`A055958(n)-A265556(n)`
-/

namespace A265523.P12678486613882293356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055958 n - A265556 n

end

end A265523.P12678486613882293356

/-! ## A265523.P13503130052617359081

`A319747(n)-A265556(n)`
-/

namespace A265523.P13503130052617359081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319747 n - A265556 n

end

end A265523.P13503130052617359081

/-! ## A265523.P5580500738517735881

`A030108(n)+n-A265556(n)`
-/

namespace A265523.P5580500738517735881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030108 n + ((n : ℤ) - A265556 n)

end

end A265523.P5580500738517735881

/-! ## A265523.P15368995721428157767

`A165110(n)+2*A319657(n)-A265556(n)`
-/

namespace A265523.P15368995721428157767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165110 n + 2 * A319657 n - A265556 n

end

end A265523.P15368995721428157767

/-! ## A265523.P9151929840071134588

`A030108(n)-A001057(2*n)-A265556(n)`
-/

namespace A265523.P9151929840071134588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030108 n - A001057 (2 * n) - A265556 n

end

end A265523.P9151929840071134588

/-! ## A265523.P14021174676554024456

`2*A319726(n)-A165110(n)-A265556(n)`
-/

namespace A265523.P14021174676554024456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A319726 n - A165110 n - A265556 n

end

end A265523.P14021174676554024456

/-! ## A265523.P7210901748004437216

`A265541(A265524(n)%A265509(n))`
-/

namespace A265523.P7210901748004437216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265541 (Int.tmod (A265524 n) (A265509 n)).toNat

end

end A265523.P7210901748004437216

/-! ## A265523.P5697742568371471610

`A265541(A265524(n))%A265510(n)`
-/

namespace A265523.P5697742568371471610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A265541 (A265524 n).toNat) (A265510 n)

end

end A265523.P5697742568371471610

/-! ## A265523.P7362331372731183835

`lcm(A265541(A265524(n)), A270992(n+1))`
-/

namespace A265523.P7362331372731183835
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A265541 (A265524 n).toNat) (A270992 (n + 1))

end

end A265523.P7362331372731183835

/-!
# A265524: a(n) = largest base-9 palindrome m <= n such that every base-9 digit of m is <= the corresponding digit of n; m is written in base 9.

The programs for A265524, there is no canonical definition to state claims against.
-/

/-! ## A265524.P6427098812057067932

`A007095(A265523(n))`
-/

namespace A265524.P6427098812057067932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 (A265523 n).toNat

end

end A265524.P6427098812057067932

/-! ## A265524.P4226623083472793073

`A265525(A007095(n))`
-/

namespace A265524.P4226623083472793073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265525 (A007095 n).toNat

end

end A265524.P4226623083472793073

/-! ## A265524.P7832813935400237712

`A265525(record[A004184(n)])`
-/

namespace A265524.P7832813935400237712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004184 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265525 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A265524.P7832813935400237712

/-! ## A265524.P3045242330344276176

`A265525(record[A235049(n)])`
-/

namespace A265524.P3045242330344276176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235049 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265525 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A265524.P3045242330344276176

/-! ## A265524.P7548093359769595738

`A265525(record[n-A136400(n)])`
-/

namespace A265524.P7548093359769595738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A136400 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265525 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A265524.P7548093359769595738

/-! ## A265524.P8774784965270355554

`A265525(eq[A048379(n), A216556(n)])`
-/

namespace A265524.P8774784965270355554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048379 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216556 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265525 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A265524.P8774784965270355554

/-! ## A265524.P15901535073805612270

`A265525(lt[A262038(n), A048379(n)])`
-/

namespace A265524.P15901535073805612270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048379 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265525 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A265524.P15901535073805612270

/-! ## A265524.P11071067142109900008

`A265525(lt[A342851(n+1), A048379(n)])`
-/

namespace A265524.P11071067142109900008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342851 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048379 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265525 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A265524.P11071067142109900008

/-! ## A265524.P13783085362574043354

`A265542(A265523(n)%A265509(n))`
-/

namespace A265524.P13783085362574043354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265542 (Int.tmod (A265523 n) (A265509 n)).toNat

end

end A265524.P13783085362574043354

/-! ## A265524.P5645245825065770352

`A265542(A265523(n))%A265510(n)`
-/

namespace A265524.P5645245825065770352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A265542 (A265523 n).toNat) (A265510 n)

end

end A265524.P5645245825065770352

/-!
# A265525: a(n) = largest base-10 palindrome m <= n such that every base-10 digit of m is <= the corresponding digit of n.

The programs for A265525, there is no canonical definition to state claims against.
-/

/-! ## A265525.P13555186099094855761

`A355223(A355221(n)%A326083(n))`
-/

namespace A265525.P13555186099094855761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355223 (Int.tmod (A355221 n) (A326083 n)).toNat

end

end A265525.P13555186099094855761

/-! ## A265525.P1603630322728278888

`A004086(n)-A283001(A056142(n))`
-/

namespace A265525.P1603630322728278888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 n - A283001 (A056142 n).toNat

end

end A265525.P1603630322728278888

/-! ## A265525.P15445588625497250285

`A261423(A355223(n)%A298223(n+1))`
-/

namespace A265525.P15445588625497250285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261423 (Int.tmod (A355223 n) (A298223 (n + 1))).toNat

end

end A265525.P15445588625497250285

/-! ## A265525.P16624887335541151275

`A004086(A109014(n²)*A227362(n))-A151950(n)`
-/

namespace A265525.P16624887335541151275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (A109014 (n ^ 2) * A227362 n).toNat - A151950 n

end

end A265525.P16624887335541151275

/-! ## A265525.P13068734502626347040

`A004185(A109014(n²)*A227362(n))-A151950(n)`
-/

namespace A265525.P13068734502626347040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004185 (A109014 (n ^ 2) * A227362 n).toNat - A151950 n

end

end A265525.P13068734502626347040

/-! ## A265525.P18438280833393239411

`A109014(n²)*A227362(n)-A151949(n)-A151950(n)`
-/

namespace A265525.P18438280833393239411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109014 (n ^ 2) * A227362 n - A151949 n - A151950 n

end

end A265525.P18438280833393239411

/-! ## A265525.P4891273979200560118

`A328447(A004086(n))%A238369(n+1)-A151950(n)`
-/

namespace A265525.P4891273979200560118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A328447 (A004086 n).toNat) (A238369 (n + 1)) - A151950 n

end

end A265525.P4891273979200560118

/-! ## A265525.P17937637630956213319

`A355223(A004186(n))%A167845(n+1)`
-/

namespace A265525.P17937637630956213319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A355223 (A004186 n).toNat) (A167845 (n + 1))

end

end A265525.P17937637630956213319

/-!
# A265526: Largest base-2 palindrome m <= n, written in base 2.

The programs for A265526, the canonical program `A265526.P17545732825682694180` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A265526 has offset 0).

The definition of A265526 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A265526.P17545732825682694180

`A007088(A206913(n))`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A265526

/-- `A007088(A206913(n))` -/
def P17545732825682694180.Spec : Prop :=
  ∀ n, P17545732825682694180.a n = A265526 n

theorem P17545732825682694180.correct : P17545732825682694180.Spec := by
  intro n
  simp only [A265526]

end A265526

/-! ## A265526.P6627793656368005928

`A057148(A206915(n))`
-/

namespace A265526.P6627793656368005928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057148 (A206915 n).toNat

end

end A265526.P6627793656368005928

namespace A265526

/-- `A057148(A206915(n))` -/
def P6627793656368005928.Spec : Prop :=
  ∀ n, P6627793656368005928.a n = A265526 n

end A265526

/-! ## A265526.P13071986203971059134

`A057148(∑[A178225(n)])`
-/

namespace A265526.P13071986203971059134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178225 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057148 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A265526.P13071986203971059134

namespace A265526

/-- `A057148(∑[A178225(n)])` -/
def P13071986203971059134.Spec : Prop :=
  ∀ n, P13071986203971059134.a n = A265526 n

end A265526

/-! ## A265526.P18016202175853788744

`A007088(n-A303534(n))`
-/

namespace A265526.P18016202175853788744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 ((n : ℤ) - A303534 n).toNat

end

end A265526.P18016202175853788744

namespace A265526

/-- `A007088(n-A303534(n))` -/
def P18016202175853788744.Spec : Prop :=
  ∀ n, P18016202175853788744.a n = A265526 n

theorem P18016202175853788744.correct : P18016202175853788744.Spec := by
  intro n
  simp only [A265526, Nat.add_sub_cancel, A265526.P18016202175853788744.a, A265526.P17545732825682694180.a, A007088, A007088.P12432121332583687413.a, A206913, A206913.P18136028750856858021.a, A303534, A303534.P18169794156048057215.a, A006995, A006995.P15003658570251687479.f1, A006995.P15003658570251687479.f2, A006995.P15003658570251687479.a, A097256, A097256.P18324559811505528946.a, A206915, A206915.P6576328931929585577.f1, A206915.P6576328931929585577.a, A048700, A048700.P8855454458622307026.a, A048701, A048701.P12021779623566832141.a, A178225, A178225.P3234126825915487550.a, A003817, A003817.P16251594020616633079.a, A030101, A030101.P16184294017372777612.a, A044918, A044918.P15631491038652286374.a, A062383, A062383.P4595411753464333460.a, A175919, A175919.P9342082527365393068.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A265526

/-! ## A265526.P5689568403506475674

`A185544(2*A206913(n))`
-/

namespace A265526.P5689568403506475674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A206913 n).toNat

end

end A265526.P5689568403506475674

namespace A265526

/-- `A185544(2*A206913(n))` -/
def P5689568403506475674.Spec : Prop :=
  ∀ n, P5689568403506475674.a n = A265526 n

end A265526

/-! ## A265526.P8699259271670839859

`A265528(ceil(n/2))`
-/

namespace A265526.P8699259271670839859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265528 ⌈(n : ℚ) / 2⌉.toNat

end

end A265526.P8699259271670839859

namespace A265526

/-- `A265528(ceil(n/2))` -/
def P8699259271670839859.Spec : Prop :=
  ∀ n, P8699259271670839859.a n = A265526 n

end A265526

/-! ## A265526.P18040551094438783468

`A265543(A206913(2*n-n))`
-/

namespace A265526.P18040551094438783468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265543 (A206913 (2 * n - n)).toNat

end

end A265526.P18040551094438783468

namespace A265526

/-- `A265543(A206913(2*n-n))` -/
def P18040551094438783468.Spec : Prop :=
  ∀ n, P18040551094438783468.a n = A265526 n

end A265526

/-!
# A265527: Largest base-2 palindrome m <= 2n, written in base 10.

The programs for A265527, there is no canonical definition to state claims against.
-/

/-! ## A265527.P14310020834609314159

`A206913(2*n)`
-/

namespace A265527.P14310020834609314159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206913 (2 * n)

end

end A265527.P14310020834609314159

/-! ## A265527.P2193421377933511713

`and(-1, A206913(comp[or(2, n)]))`
-/

namespace A265527.P2193421377933511713
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A206913 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n))

end

end A265527.P2193421377933511713

/-! ## A265527.P14807974507925086498

`2*n-A303534(2*n)`
-/

namespace A265527.P14807974507925086498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - A303534 (2 * n)

end

end A265527.P14807974507925086498

/-! ## A265527.P3549936557977598856

`lcm((-1)^n, A206913(record[lcm(2, n)/2]))`
-/

namespace A265527.P3549936557977598856
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 2 n : ℚ) / 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (A206913 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat)

end

end A265527.P3549936557977598856

/-! ## A265527.P8970512416290369039

`A006995(A206915(2*n))`
-/

namespace A265527.P8970512416290369039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006995 (A206915 (2 * n)).toNat

end

end A265527.P8970512416290369039

/-! ## A265527.P2358813732326340288

`A022998(A206913(n+n))`
-/

namespace A265527.P2358813732326340288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022998 (A206913 (n + n)).toNat

end

end A265527.P2358813732326340288

/-! ## A265527.P5086934203558062660

`or(char[1], A206913(A004273(n)))`
-/

namespace A265527.P5086934203558062660
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A206913 (A004273 n).toNat)

end

end A265527.P5086934203558062660

/-! ## A265527.P8068788775064121673

`or(char[1], A206913(A005843(n)))`
-/

namespace A265527.P8068788775064121673
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A206913 (A005843 n).toNat)

end

end A265527.P8068788775064121673

/-! ## A265527.P14413488378604321758

`abs(A303534(2*n)+A001489(2*n))`
-/

namespace A265527.P14413488378604321758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A303534 (2 * n) + A001489 (2 * n)|

end

end A265527.P14413488378604321758

/-! ## A265527.P18376725873511932222

`A030101(A006995(A206915(n+n)))`
-/

namespace A265527.P18376725873511932222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (A006995 (A206915 (n + n)).toNat).toNat

end

end A265527.P18376725873511932222

/-!
# A265528: Largest base-2 palindrome m <= 2n, written in base 2.

The programs for A265528, there is no canonical definition to state claims against.
-/

/-! ## A265528.P16444980213806339544

`A265526(2*n)`
-/

namespace A265528.P16444980213806339544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265526 (2 * n)

end

end A265528.P16444980213806339544

/-! ## A265528.P16779939020531790884

`A007088(A265527(n))`
-/

namespace A265528.P16779939020531790884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A265527 n).toNat

end

end A265528.P16779939020531790884

/-! ## A265528.P15786516149495547101

`A007088(A206913(2*n))`
-/

namespace A265528.P15786516149495547101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A206913 (2 * n)).toNat

end

end A265528.P15786516149495547101

/-! ## A265528.P8047699786240810633

`A057148(A206915(2*n))`
-/

namespace A265528.P8047699786240810633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057148 (A206915 (2 * n)).toNat

end

end A265528.P8047699786240810633

/-! ## A265528.P12928810700681926080

`A185544(2*A265527(n))`
-/

namespace A265528.P12928810700681926080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A265527 n).toNat

end

end A265528.P12928810700681926080

/-!
# A265529: Largest base-3 palindrome m <= n, written in base 10.

The programs for A265529, there is no canonical definition to state claims against.
-/

/-! ## A265529.P17139457115047218851

`A014190(∑[char[A265511(n)]])`
-/

namespace A265529.P17139457115047218851
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265511 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014190 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A265529.P17139457115047218851

/-! ## A265529.P15477251355803449321

`A014190(∑[char[A014190(n+1)]])`
-/

namespace A265529.P15477251355803449321
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014190 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014190 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A265529.P15477251355803449321

/-! ## A265529.P2766459392688612828

`A028898(A265530(n))`
-/

namespace A265529.P2766459392688612828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028898 (A265530 n).toNat

end

end A265529.P2766459392688612828

/-!
# A265530: Largest base-3 palindrome m <= n, written in base 3.

The programs for A265530, there is no canonical definition to state claims against.
-/

/-! ## A265530.P8292013459639216245

`A007089(A265529(n))`
-/

namespace A265530.P8292013459639216245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 (A265529 n).toNat

end

end A265530.P8292013459639216245

/-! ## A265530.P6023894056284330784

`A305877(3*A265529(n))`
-/

namespace A265530.P6023894056284330784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305877 (3 * A265529 n).toNat

end

end A265530.P6023894056284330784

/-! ## A265530.P2747507527951541554

`A305877(lcm(3, A265529(n)))`
-/

namespace A265530.P2747507527951541554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305877 (Int.lcm 3 (A265529 n))

end

end A265530.P2747507527951541554

/-! ## A265530.P15501162482367461254

`A118594(∑[char[A265511(n)]])`
-/

namespace A265530.P15501162482367461254
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265511 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118594 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A265530.P15501162482367461254

/-! ## A265530.P6103712765009322618

`A265512(and(-1, A265529(n)))`
-/

namespace A265530.P6103712765009322618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265512 (Int.land (-1) (A265529 n)).toNat

end

end A265530.P6103712765009322618

/-! ## A265530.P15098508793396518741

`A265545(A265529(char[2]+n))`
-/

namespace A265530.P15098508793396518741
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265545 (A265529 ((if ∃ j, f1 j = n then 1 else 0) + n)).toNat

end

end A265530.P15098508793396518741

/-! ## A265530.P9492103590949017358

`A265512(A265529(n)+char[4])`
-/

namespace A265530.P9492103590949017358
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265512 (A265529 n + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)).toNat

end

end A265530.P9492103590949017358

/-! ## A265530.P14325859521093683042

`A265545(A265529(n)-char[12])`
-/

namespace A265530.P14325859521093683042
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265545 (A265529 n - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)).toNat

end

end A265530.P14325859521093683042

/-! ## A265530.P2318786098654898207

`A265512(xor(char[4], A265529(n)))`
-/

namespace A265530.P2318786098654898207
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265512 (Int.xor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A265529 n)).toNat

end

end A265530.P2318786098654898207

/-! ## A265530.P16383973501908355358

`A118594(∑[char[A014190(n+1)]])`
-/

namespace A265530.P16383973501908355358
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014190 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118594 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A265530.P16383973501908355358

/-!
# A265531: Largest base-4 palindrome m <= n, written in base 10.

The programs for A265531, there is no canonical definition to state claims against.
-/

/-! ## A265531.P3846310052531108509

`A014192(∑[char[A265546(n)]])`
-/

namespace A265531.P3846310052531108509
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265546 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014192 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A265531.P3846310052531108509

/-! ## A265531.P14158068425292139393

`A014192(∑[char[A014192(n+1)]])`
-/

namespace A265531.P14158068425292139393
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014192 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014192 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A265531.P14158068425292139393

/-! ## A265531.P12903168170158465695

`A014192(comp[A014192(n+1)+n]-n)`
-/

namespace A265531.P12903168170158465695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014192 (n + 1) + (n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014192 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n - n)

end

end A265531.P12903168170158465695

/-! ## A265531.P10806380857810537780

`A028899(A265532(n))`
-/

namespace A265531.P10806380857810537780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028899 (A265532 n).toNat

end

end A265531.P10806380857810537780

/-!
# A265532: Largest base-4 palindrome m <= n, written in base 4.

The programs for A265532, there is no canonical definition to state claims against.
-/

/-! ## A265532.P8511236501964822122

`A007090(A265531(n))`
-/

namespace A265532.P8511236501964822122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007090 (A265531 n).toNat

end

end A265532.P8511236501964822122

/-! ## A265532.P16908298431767346592

`A118595(∑[char[A265546(n)]])`
-/

namespace A265532.P16908298431767346592
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265546 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118595 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A265532.P16908298431767346592

/-! ## A265532.P4824436005848070543

`A265547(and(-1, A265531(n)))`
-/

namespace A265532.P4824436005848070543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265547 (Int.land (-1) (A265531 n)).toNat

end

end A265532.P4824436005848070543

/-! ## A265532.P17154349211178208416

`A265547(A265531(n)-char[5])`
-/

namespace A265532.P17154349211178208416
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265547 (A265531 n - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)).toNat

end

end A265532.P17154349211178208416

/-! ## A265532.P10479797351646679210

`A265514(A265531(n)+char[7])`
-/

namespace A265532.P10479797351646679210
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265514 (A265531 n + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)).toNat

end

end A265532.P10479797351646679210

/-! ## A265532.P16937533836712680009

`A265514(or(char[1], A265531(n)))`
-/

namespace A265532.P16937533836712680009
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265514 (Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A265531 n)).toNat

end

end A265532.P16937533836712680009

/-! ## A265532.P9885335620289505878

`A118595(∑[char[A014192(n+1)]])`
-/

namespace A265532.P9885335620289505878
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014192 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118595 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A265532.P9885335620289505878

/-! ## A265532.P7937911093302430210

`A265547(A265531(n)%A000124(n))`
-/

namespace A265532.P7937911093302430210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265547 (Int.tmod (A265531 n) (A000124 n)).toNat

end

end A265532.P7937911093302430210

/-! ## A265532.P14769481230890173914

`A265514(A265531(n))%A017150(n)`
-/

namespace A265532.P14769481230890173914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A265514 (A265531 n).toNat) (A017150 n)

end

end A265532.P14769481230890173914

/-! ## A265532.P12493811106184454152

`A265547(A265531(n))%A027379(n)`
-/

namespace A265532.P12493811106184454152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A265547 (A265531 n).toNat) (A027379 n)

end

end A265532.P12493811106184454152

/-!
# A265533: Largest base-5 palindrome m <= n, written in base 10.

The programs for A265533, there is no canonical definition to state claims against.
-/

/-! ## A265533.P12153724200774969053

`comp[A265564(n)-1+n]-n`
-/

namespace A265533.P12153724200774969053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265564 n - 1 + (n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)

end

end A265533.P12153724200774969053

/-! ## A265533.P9257380951691487208

`A029952(∑[char[A029952(n+1)]])`
-/

namespace A265533.P9257380951691487208
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029952 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029952 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A265533.P9257380951691487208

/-! ## A265533.P842831046497279194

`A029952(∑[char[eq[0, A055951(n)]]])`
-/

namespace A265533.P842831046497279194
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055951 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f3 j : ℤ) = f4 j) n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029952 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A265533.P842831046497279194

/-! ## A265533.P16249708567165038690

`A029952(∑[char[eq[n, A030104(n)]]])`
-/

namespace A265533.P16249708567165038690
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030104 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f3 j : ℤ) = f4 j) n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029952 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A265533.P16249708567165038690

/-! ## A265533.P1507056997749659049

`A029952(∑[char[eq[2*n, A055950(n)]]])`
-/

namespace A265533.P1507056997749659049
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055950 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f3 j : ℤ) = f4 j) n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029952 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A265533.P1507056997749659049

/-! ## A265533.P9064909453591190052

`A028900(A265534(n))`
-/

namespace A265533.P9064909453591190052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028900 (A265534 n).toNat

end

end A265533.P9064909453591190052

/-!
# A265534: Largest base-5 palindrome m <= n, written in base 5.

The programs for A265534, there is no canonical definition to state claims against.
-/

/-! ## A265534.P15213803754719356367

`A007091(A265533(n))`
-/

namespace A265534.P15213803754719356367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007091 (A265533 n).toNat

end

end A265534.P15213803754719356367

/-! ## A265534.P4749878060121445126

`A265565(A265533(n)-char[7])`
-/

namespace A265534.P4749878060121445126
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265565 (A265533 n - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)).toNat

end

end A265534.P4749878060121445126

/-! ## A265534.P7149536989520439416

`A265516(or(char[1], A265533(n)))`
-/

namespace A265534.P7149536989520439416
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265516 (Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A265533 n)).toNat

end

end A265534.P7149536989520439416

/-! ## A265534.P1200496549680715106

`A265565(or(char[1], A265533(n)))`
-/

namespace A265534.P1200496549680715106
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265565 (Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A265533 n)).toNat

end

end A265534.P1200496549680715106

/-! ## A265534.P13255574353778800539

`A265516(A265533(n)%(n+1))`
-/

namespace A265534.P13255574353778800539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265516 (Int.tmod (A265533 n) (n + 1 : ℤ)).toNat

end

end A265534.P13255574353778800539

/-! ## A265534.P3273147588477344840

`A118596(∑[char[A029952(n+1)]])`
-/

namespace A265534.P3273147588477344840
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029952 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118596 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A265534.P3273147588477344840

/-! ## A265534.P7309398805826133371

`A265516(A265533(2*(n+1)-(n+2)))`
-/

namespace A265534.P7309398805826133371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265516 (A265533 (2 * (n + 1) - (n + 2))).toNat

end

end A265534.P7309398805826133371

/-! ## A265534.P496604306497121110

`A265549(2*A265533(n)-A265533(n))`
-/

namespace A265534.P496604306497121110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265549 (2 * A265533 n - A265533 n).toNat

end

end A265534.P496604306497121110

/-! ## A265534.P4512500786920448997

`A265549(A265533(n))%A000045(n+2)`
-/

namespace A265534.P4512500786920448997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A265549 (A265533 n).toNat) (A000045 (n + 2))

end

end A265534.P4512500786920448997

/-!
# A265535: Largest base-6 palindrome m <= n, written in base 10.

The programs for A265535, there is no canonical definition to state claims against.
-/

/-! ## A265535.P10402382530279419871

`comp[A265566(n)-1+n]-n`
-/

namespace A265535.P10402382530279419871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265566 n - 1 + (n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)

end

end A265535.P10402382530279419871

/-! ## A265535.P6178511531942882333

`A029953(∑[char[A029953(n+1)]])`
-/

namespace A265535.P6178511531942882333
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029953 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029953 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A265535.P6178511531942882333

/-! ## A265535.P1978967429451191043

`A029953(∑[char[eq[0, A055953(n)]]])`
-/

namespace A265535.P1978967429451191043
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055953 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f3 j : ℤ) = f4 j) n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029953 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A265535.P1978967429451191043

/-! ## A265535.P12912561276397129738

`A029953(∑[char[eq[n, A030105(n)]]])`
-/

namespace A265535.P12912561276397129738
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030105 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f3 j : ℤ) = f4 j) n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029953 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A265535.P12912561276397129738

/-! ## A265535.P9403128286871819872

`A023443(comp[A265566(n)+n])-n`
-/

namespace A265535.P9403128286871819872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265566 n + (n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n) - (n : ℤ)

end

end A265535.P9403128286871819872

/-! ## A265535.P7028460943169386394

`A029953(∑[char[eq[2*n, A055952(n)]]])`
-/

namespace A265535.P7028460943169386394
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055952 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f3 j : ℤ) = f4 j) n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029953 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A265535.P7028460943169386394

/-! ## A265535.P4613696975956530702

`A028901(A265536(n))`
-/

namespace A265535.P4613696975956530702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028901 (A265536 n).toNat

end

end A265535.P4613696975956530702

/-!
# A265536: Largest base-6 palindrome m <= n, written in base 6.

The programs for A265536, there is no canonical definition to state claims against.
-/

/-! ## A265536.P5601728975524815949

`A007092(A265535(n))`
-/

namespace A265536.P5601728975524815949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007092 (A265535 n).toNat

end

end A265536.P5601728975524815949

/-! ## A265536.P8749657304871448110

`A265518(and(-1, A265535(n)))`
-/

namespace A265536.P8749657304871448110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265518 (Int.land (-1) (A265535 n)).toNat

end

end A265536.P8749657304871448110

/-! ## A265536.P17540455471481910679

`A265551(and(-1, A265535(n)))`
-/

namespace A265536.P17540455471481910679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265551 (Int.land (-1) (A265535 n)).toNat

end

end A265536.P17540455471481910679

/-! ## A265536.P8252911153346917745

`A265518(or(char[1], A265535(n)))`
-/

namespace A265536.P8252911153346917745
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265518 (Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A265535 n)).toNat

end

end A265536.P8252911153346917745

/-! ## A265536.P5583555243421537423

`A265518(A265535(2*n-n))`
-/

namespace A265536.P5583555243421537423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265518 (A265535 (2 * n - n)).toNat

end

end A265536.P5583555243421537423

/-! ## A265536.P12787307719440784901

`A265518(A265535(n)%(n+1))`
-/

namespace A265536.P12787307719440784901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265518 (Int.tmod (A265535 n) (n + 1 : ℤ)).toNat

end

end A265536.P12787307719440784901

/-! ## A265536.P2747863529200038891

`A118597(∑[char[A029953(n+1)]])`
-/

namespace A265536.P2747863529200038891
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029953 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118597 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A265536.P2747863529200038891

/-! ## A265536.P3361598570887438537

`A265551(A265535(n))%A000145(n)`
-/

namespace A265536.P3361598570887438537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A265551 (A265535 n).toNat) (A000145 n)

end

end A265536.P3361598570887438537

/-! ## A265536.P10242037014667429654

`A265551(A265535(n)%A265509(n))`
-/

namespace A265536.P10242037014667429654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265551 (Int.tmod (A265535 n) (A265509 n)).toNat

end

end A265536.P10242037014667429654

/-!
# A265537: Largest base-7 palindrome m <= n, written in base 10.

The programs for A265537, there is no canonical definition to state claims against.
-/

/-! ## A265537.P10143794135553929167

`A029954(∑[char[A029954(n+1)]])`
-/

namespace A265537.P10143794135553929167
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029954 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029954 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A265537.P10143794135553929167

/-! ## A265537.P9858755717485758750

`A028902(A265538(n))`
-/

namespace A265537.P9858755717485758750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028902 (A265538 n).toNat

end

end A265537.P9858755717485758750

/-!
# A265538: Largest base-7 palindrome m <= n, written in base 7.

The programs for A265538, there is no canonical definition to state claims against.
-/

/-! ## A265538.P17542781942374043953

`A007093(A265537(n))`
-/

namespace A265538.P17542781942374043953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007093 (A265537 n).toNat

end

end A265538.P17542781942374043953

/-! ## A265538.P1332363409823995316

`A265520(A265537(n)+char[12])`
-/

namespace A265538.P1332363409823995316
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265520 (A265537 n + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)).toNat

end

end A265538.P1332363409823995316

/-! ## A265538.P10603376163522176183

`A265553(A265537(n)-char[11])`
-/

namespace A265538.P10603376163522176183
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265553 (A265537 n - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)).toNat

end

end A265538.P10603376163522176183

/-! ## A265538.P15197649333338985369

`A265520(or(char[1], A265537(n)))`
-/

namespace A265538.P15197649333338985369
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265520 (Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A265537 n)).toNat

end

end A265538.P15197649333338985369

/-! ## A265538.P6871040147226367777

`A265569(A265537(n)%(n+1))`
-/

namespace A265538.P6871040147226367777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265569 (Int.tmod (A265537 n) (n + 1 : ℤ)).toNat

end

end A265538.P6871040147226367777

/-! ## A265538.P3227535113002208339

`A118598(∑[char[A029954(n+1)]])`
-/

namespace A265538.P3227535113002208339
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029954 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118598 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A265538.P3227535113002208339

/-! ## A265538.P12719388822867407658

`A265553(A265537(n)%A000124(n))`
-/

namespace A265538.P12719388822867407658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265553 (Int.tmod (A265537 n) (A000124 n)).toNat

end

end A265538.P12719388822867407658

/-! ## A265538.P10365344562079523179

`A265569(A265537(n))%A008444(n)`
-/

namespace A265538.P10365344562079523179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A265569 (A265537 n).toNat) (A008444 n)

end

end A265538.P10365344562079523179

/-! ## A265538.P7497218773102698425

`A265553(A265537(n))%A008706(n)`
-/

namespace A265538.P7497218773102698425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A265553 (A265537 n).toNat) (A008706 n)

end

end A265538.P7497218773102698425

/-!
# A265539: Largest base-8 palindrome m <= n, written in base 10.

The programs for A265539, there is no canonical definition to state claims against.
-/

/-! ## A265539.P2832638415859474757

`A029803(∑[char[A029803(n+1)]])`
-/

namespace A265539.P2832638415859474757
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029803 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029803 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A265539.P2832638415859474757

/-! ## A265539.P14928772537612543086

`A029803(comp[A029803(n+1)+n]-n)`
-/

namespace A265539.P14928772537612543086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029803 (n + 1) + (n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029803 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n - n)

end

end A265539.P14928772537612543086

/-! ## A265539.P12319082788205625765

`A028903(A265540(n))`
-/

namespace A265539.P12319082788205625765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028903 (A265540 n).toNat

end

end A265539.P12319082788205625765

/-!
# A265540: Largest base-8 palindrome m <= n, written in base 8.

The programs for A265540, there is no canonical definition to state claims against.
-/

/-! ## A265540.P4454819636639115961

`A007094(A265539(n))`
-/

namespace A265540.P4454819636639115961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007094 (A265539 n).toNat

end

end A265540.P4454819636639115961

/-! ## A265540.P5876919431752504620

`A265555(A265539(n)-char[11])`
-/

namespace A265540.P5876919431752504620
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265555 (A265539 n - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)).toNat

end

end A265540.P5876919431752504620

/-! ## A265540.P7444004207692240815

`A265522(or(char[1], A265539(n)))`
-/

namespace A265540.P7444004207692240815
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265522 (Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A265539 n)).toNat

end

end A265540.P7444004207692240815

/-! ## A265540.P17948323083323821553

`A265522(A265539(2*n-n))`
-/

namespace A265540.P17948323083323821553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265522 (A265539 (2 * n - n)).toNat

end

end A265540.P17948323083323821553

/-! ## A265540.P9854707605006290719

`A265522(A265539(n)%(n+1))`
-/

namespace A265540.P9854707605006290719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265522 (Int.tmod (A265539 n) (n + 1 : ℤ)).toNat

end

end A265540.P9854707605006290719

/-! ## A265540.P13494558563402830660

`A118599(∑[char[A029803(n+1)]])`
-/

namespace A265540.P13494558563402830660
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029803 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118599 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A265540.P13494558563402830660

/-! ## A265540.P15397642282483471178

`A265555(A265539(n))%A000125(n)`
-/

namespace A265540.P15397642282483471178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A265555 (A265539 n).toNat) (A000125 n)

end

end A265540.P15397642282483471178

/-! ## A265540.P9369677424272085154

`A265522(A265539(n))%A017150(n)`
-/

namespace A265540.P9369677424272085154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A265522 (A265539 n).toNat) (A017150 n)

end

end A265540.P9369677424272085154

/-! ## A265540.P3992978265309756007

`A265555(A265539(n)%A265509(n))`
-/

namespace A265540.P3992978265309756007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265555 (Int.tmod (A265539 n) (A265509 n)).toNat

end

end A265540.P3992978265309756007

/-! ## A265540.P4072126640424054885

`A265555(2*A265539(n)-A265539(n))`
-/

namespace A265540.P4072126640424054885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265555 (2 * A265539 n - A265539 n).toNat

end

end A265540.P4072126640424054885

/-!
# A265541: Largest base-9 palindrome m <= n, written in base 10.

The programs for A265541, there is no canonical definition to state claims against.
-/

/-! ## A265541.P10126346428800291440

`A265542(n)-floor(n/10)`
-/

namespace A265541.P10126346428800291440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265542 n - ⌊(n : ℚ) / 10⌋

end

end A265541.P10126346428800291440

/-! ## A265541.P4720493272595207125

`A028904(A265542(n))`
-/

namespace A265541.P4720493272595207125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028904 (A265542 n).toNat

end

end A265541.P4720493272595207125

/-! ## A265541.P6946740103810371522

`n-A054899(A004086(n)+1)`
-/

namespace A265541.P6946740103810371522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A054899 (A004086 n + 1).toNat

end

end A265541.P6946740103810371522

/-! ## A265541.P8923655587774095942

`n-A261424(A260255(n+2))`
-/

namespace A265541.P8923655587774095942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A261424 (A260255 (n + 2)).toNat

end

end A265541.P8923655587774095942

/-! ## A265541.P11645850851331857437

`n-A261424(lt[0, A262087(n)])`
-/

namespace A265541.P11645850851331857437
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262087 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A261424 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A265541.P11645850851331857437

/-! ## A265541.P8217438319912779474

`A029955(∑[char[A029955(n+1)]])`
-/

namespace A265541.P8217438319912779474
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029955 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029955 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A265541.P8217438319912779474

/-! ## A265541.P3140179616927513167

`A048306(∑[char[A043712(n+1)]])`
-/

namespace A265541.P3140179616927513167
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043712 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048306 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A265541.P3140179616927513167

/-! ## A265541.P3248461955010380217

`A048320(∑[char[A043712(n+1)]])`
-/

namespace A265541.P3248461955010380217
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043712 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048320 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A265541.P3248461955010380217

/-! ## A265541.P7293261673985799254

`A048320(∑[char[A048320(n+1)]])`
-/

namespace A265541.P7293261673985799254
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048320 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048320 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A265541.P7293261673985799254

/-! ## A265541.P13398289405899878600

`A048320(comp[A048320(n+1)+n]-n)`
-/

namespace A265541.P13398289405899878600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048320 (n + 1) + (n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048320 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n - n)

end

end A265541.P13398289405899878600

/-!
# A265542: Largest base-9 palindrome m <= n, written in base 9.

The programs for A265542, there is no canonical definition to state claims against.
-/

/-! ## A265542.P6790851474913080227

`(11*floor(n/10)-n)%Δ[(n-9*floor((n-1)/9))*(10^floor((n+8)/9)-1)/9]+n`
-/

namespace A265542.P6790851474913080227
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 9 * ⌊((n : ℤ) - 1 : ℚ) / 9⌋ : ℚ) * (((10 : ℚ) ^ (⌊(n + 8 : ℚ) / 9⌋ : ℤ) - 1) / 9)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (11 * ⌊(n : ℚ) / 10⌋ - (n : ℤ)) (SequenceMachineLib.roundAway (f1 (n + 1) - f1 n)) + (n : ℤ)

end

end A265542.P6790851474913080227

/-! ## A265542.P4022407124194668095

`A261423(comp[10*n]-1)-char[9]`
-/

namespace A265542.P4022407124194668095
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 * n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261423 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n - 1) - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

end

end A265542.P4022407124194668095

/-! ## A265542.P12745743875834604190

`A032762(n)%10+n-n%10-char[9]`
-/

namespace A265542.P12745743875834604190
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A032762 n) 10 + ((n : ℤ) - ((n % 10 : ℕ) : ℤ)) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A265542.P12745743875834604190

/-! ## A265542.P13613956438922905992

`A007095(A265541(n))`
-/

namespace A265542.P13613956438922905992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 (A265541 n).toNat

end

end A265542.P13613956438922905992

/-! ## A265542.P2267626159423309137

`A054899(10*A265541(n))`
-/

namespace A265542.P2267626159423309137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054899 (10 * A265541 n).toNat

end

end A265542.P2267626159423309137

/-! ## A265542.P8577627922768481247

`A059995(11*A265541(n))`
-/

namespace A265542.P8577627922768481247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059995 (11 * A265541 n).toNat

end

end A265542.P8577627922768481247

/-! ## A265542.P6908721563191713473

`A265541(n)+A054899(n)`
-/

namespace A265542.P6908721563191713473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265541 n + A054899 n

end

end A265542.P6908721563191713473

/-! ## A265542.P6723664613674370673

`A265541(n)+A059995(n)`
-/

namespace A265542.P6723664613674370673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265541 n + A059995 n

end

end A265542.P6723664613674370673

/-! ## A265542.P4908109231237863865

`A265557(A265541(2*n-n))`
-/

namespace A265542.P4908109231237863865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265557 (A265541 (2 * n - n)).toNat

end

end A265542.P4908109231237863865

/-! ## A265542.P7967303158717435810

`A262087(A342851(n+1)-A055641(n+1))`
-/

namespace A265542.P7967303158717435810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262087 (A342851 (n + 1) - A055641 (n + 1)).toNat

end

end A265542.P7967303158717435810

/-!
# A265543: a(n) = smallest base-2 palindrome m >= n such that every base-2 digit of n is <= the corresponding digit of m; m is written in base 2.

The programs for A265543, there is no canonical definition to state claims against.
-/

/-! ## A265543.P12421345181739900161

`A007088(A175298(n))`
-/

namespace A265543.P12421345181739900161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A175298 n).toNat

end

end A265543.P12421345181739900161

/-! ## A265543.P15306957278734354450

`A185544(2*A175298(n))`
-/

namespace A265543.P15306957278734354450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A175298 n).toNat

end

end A265543.P15306957278734354450

/-! ## A265543.P3662956550261943867

`A305989(2*A175298(n))`
-/

namespace A265543.P3662956550261943867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305989 (2 * A175298 n).toNat

end

end A265543.P3662956550261943867

/-! ## A265543.P16211986657250396132

`A185544(lcm(2, A175298(n)))`
-/

namespace A265543.P16211986657250396132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (Int.lcm 2 (A175298 n))

end

end A265543.P16211986657250396132

/-! ## A265543.P6198438007963585616

`A007088(A370427(n)+n)`
-/

namespace A265543.P6198438007963585616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A370427 n + (n : ℤ)).toNat

end

end A265543.P6198438007963585616

/-!
# A265544: a(n) = smallest base-3 palindrome m >= n such that every base-3 digit of n is <= the corresponding digit of m; m is written in base 10.

The programs for A265544, there is no canonical definition to state claims against.
-/

/-! ## A265544.P4708741322799820564

`(A338828(n)+A055946(n))/2`
-/

namespace A265544.P4708741322799820564
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A338828 n + A055946 n : ℚ) / 2

end

end A265544.P4708741322799820564

/-! ## A265544.P12464662623246237236

`A001281(A338828(n)+A055946(n))`
-/

namespace A265544.P12464662623246237236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A338828 n + A055946 n).toNat

end

end A265544.P12464662623246237236

/-! ## A265544.P11083041129731539105

`A004525(A338828(n)+A055946(n))`
-/

namespace A265544.P11083041129731539105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A338828 n + A055946 n).toNat

end

end A265544.P11083041129731539105

/-! ## A265544.P11067084580117095572

`A004526(A338828(n)+A055946(n))`
-/

namespace A265544.P11067084580117095572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A338828 n + A055946 n).toNat

end

end A265544.P11067084580117095572

/-! ## A265544.P7948022290383206584

`A006370(A338828(n)+A055946(n))`
-/

namespace A265544.P7948022290383206584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006370 (A338828 n + A055946 n).toNat

end

end A265544.P7948022290383206584

/-! ## A265544.P14447923080841142507

`A014682(A338828(n)+A055946(n))`
-/

namespace A265544.P14447923080841142507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A338828 n + A055946 n).toNat

end

end A265544.P14447923080841142507

/-! ## A265544.P7134709379041134433

`A026741(A338828(n)+A055946(n))`
-/

namespace A265544.P7134709379041134433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A338828 n + A055946 n).toNat

end

end A265544.P7134709379041134433

/-! ## A265544.P16133586322549948486

`abs(A001057(A338828(n)+A055946(n)))`
-/

namespace A265544.P16133586322549948486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A001057 (A338828 n + A055946 n).toNat|

end

end A265544.P16133586322549948486

/-! ## A265544.P8120798910556072709

`A055946(n)+A001057(A055946(n)-A338828(n))`
-/

namespace A265544.P8120798910556072709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055946 n + A001057 (A055946 n - A338828 n).toNat

end

end A265544.P8120798910556072709

/-! ## A265544.P11452115386814571724

`-(A001057(A338828(n)+A055946(n))%A000040(n+1))`
-/

namespace A265544.P11452115386814571724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.tmod (A001057 (A338828 n + A055946 n).toNat) (A000040 (n + 1))

end

end A265544.P11452115386814571724

/-!
# A265545: a(n) = smallest base-3 palindrome m >= n such that every base-3 digit of n is <= the corresponding digit of m; m is written in base 3.

The programs for A265545, there is no canonical definition to state claims against.
-/

/-! ## A265545.P5222000069899771947

`A007089(A265544(n))`
-/

namespace A265545.P5222000069899771947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 (A265544 n).toNat

end

end A265545.P5222000069899771947

/-! ## A265545.P10677918825031137751

`A265558(A007089(n))`
-/

namespace A265545.P10677918825031137751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265558 (A007089 n).toNat

end

end A265545.P10677918825031137751

/-! ## A265545.P11517040995155902449

`A305877(3*A265544(n))`
-/

namespace A265545.P11517040995155902449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305877 (3 * A265544 n).toNat

end

end A265545.P11517040995155902449

/-! ## A265545.P4835245651665428967

`A305877(lcm(3, A265544(n)))`
-/

namespace A265545.P4835245651665428967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305877 (Int.lcm 3 (A265544 n))

end

end A265545.P4835245651665428967

/-! ## A265545.P18006520504962393560

`A305877(A265544(n)%A000124(n))`
-/

namespace A265545.P18006520504962393560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305877 (Int.tmod (A265544 n) (A000124 n)).toNat

end

end A265545.P18006520504962393560

/-! ## A265545.P14402930441628268033

`A305877(A265544(n))%A005898(n)`
-/

namespace A265545.P14402930441628268033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A305877 (A265544 n).toNat) (A005898 n)

end

end A265545.P14402930441628268033

/-! ## A265545.P16102041796369223106

`and(-(A000040(n+1)%2), A305877(A265544(n)))`
-/

namespace A265545.P16102041796369223106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-Int.tmod (A000040 (n + 1)) 2) (A305877 (A265544 n).toNat)

end

end A265545.P16102041796369223106

/-!
# A265546: a(n) = smallest base-4 palindrome m >= n such that every base-4 digit of n is <= the corresponding base-4 digit of m; m is written in base 10.

The programs for A265546, there is no canonical definition to state claims against.
-/

/-! ## A265546.P13543681056637039808

`A028899(A265547(n))`
-/

namespace A265546.P13543681056637039808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028899 (A265547 n).toNat

end

end A265546.P13543681056637039808

/-!
# A265547: a(n) = smallest base-4 palindrome m >= n such that every base-4 digit of n is <= the corresponding digit of m; m is written in base 4.

The programs for A265547, there is no canonical definition to state claims against.
-/

/-! ## A265547.P4473619692216962216

`A007090(A265546(n))`
-/

namespace A265547.P4473619692216962216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007090 (A265546 n).toNat

end

end A265547.P4473619692216962216

/-! ## A265547.P10791245122511884020

`A265558(A007090(n))`
-/

namespace A265547.P10791245122511884020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265558 (A007090 n).toNat

end

end A265547.P10791245122511884020

/-! ## A265547.P11295944643899671764

`A265514(or(n, A265546(n)))`
-/

namespace A265547.P11295944643899671764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265514 (Int.lor (n : ℤ) (A265546 n)).toNat

end

end A265547.P11295944643899671764

/-! ## A265547.P18240550915213167792

`A265514(and(-1, A265546(n)))`
-/

namespace A265547.P18240550915213167792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265514 (Int.land (-1) (A265546 n)).toNat

end

end A265547.P18240550915213167792

/-! ## A265547.P8396312813375090935

`A265532(A265546(n)+char[3])`
-/

namespace A265547.P8396312813375090935
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265532 (A265546 n + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)).toNat

end

end A265547.P8396312813375090935

/-! ## A265547.P14189554852495015701

`A265514(A265546(n)+char[5])`
-/

namespace A265547.P14189554852495015701
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265514 (A265546 n + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)).toNat

end

end A265547.P14189554852495015701

/-! ## A265547.P8331666521868956890

`A265532(or(char[1], A265546(n)))`
-/

namespace A265547.P8331666521868956890
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265532 (Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A265546 n)).toNat

end

end A265547.P8331666521868956890

/-! ## A265547.P9416841007084615080

`A265563(A265546(2*n-n))`
-/

namespace A265547.P9416841007084615080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265563 (A265546 (2 * n - n)).toNat

end

end A265547.P9416841007084615080

/-! ## A265547.P9747407322564163418

`A265514(A265546(n)%A000124(n))`
-/

namespace A265547.P9747407322564163418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265514 (Int.tmod (A265546 n) (A000124 n)).toNat

end

end A265547.P9747407322564163418

/-! ## A265547.P5927500347352608069

`A265514(A265546(n))%A000143(n)`
-/

namespace A265547.P5927500347352608069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A265514 (A265546 n).toNat) (A000143 n)

end

end A265547.P5927500347352608069

/-!
# A265548: a(n) = smallest base-5 palindrome m >= n such that every base-5 digit of n is <= the corresponding digit of m; m is written in base 10.

The programs for A265548, there is no canonical definition to state claims against.
-/

/-! ## A265548.P173107134353358750

`A028900(A265549(n))`
-/

namespace A265548.P173107134353358750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028900 (A265549 n).toNat

end

end A265548.P173107134353358750

/-! ## A265548.P6767189719574626689

`A055950(n)-A007814(A225481(n))*A265515(n)`
-/

namespace A265548.P6767189719574626689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055950 n - A007814 (A225481 n).toNat * A265515 n

end

end A265548.P6767189719574626689

/-! ## A265548.P1653155944295855445

`A055950(n)-A265515(A264995(n))`
-/

namespace A265548.P1653155944295855445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055950 n - A265515 (A264995 n).toNat

end

end A265548.P1653155944295855445

/-! ## A265548.P748078935228861630

`A265515(A055950(n)-A265515(n))`
-/

namespace A265548.P748078935228861630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265515 (A055950 n - A265515 n).toNat

end

end A265548.P748078935228861630

/-! ## A265548.P10517435589149759359

`A165033(5*n)%A131140(n+2)`
-/

namespace A265548.P10517435589149759359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A165033 (5 * n)) (A131140 (n + 2))

end

end A265548.P10517435589149759359

/-!
# A265549: a(n) = smallest base-5 palindrome m >= n such that every base-5 digit of n is <= the corresponding digit of m; m is written in base 5.

The programs for A265549, there is no canonical definition to state claims against.
-/

/-! ## A265549.P4395411435188637419

`A007091(A265548(n))`
-/

namespace A265549.P4395411435188637419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007091 (A265548 n).toNat

end

end A265549.P4395411435188637419

/-! ## A265549.P13165481659686172936

`A265558(A007091(n))`
-/

namespace A265549.P13165481659686172936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265558 (A007091 n).toNat

end

end A265549.P13165481659686172936

/-! ## A265549.P7968530793788634898

`A071241(A265548(n))/(A057427(n)+1)`
-/

namespace A265549.P7968530793788634898
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A071241 (A265548 n).toNat : ℚ) / (A057427 n + 1 : ℚ)

end

end A265549.P7968530793788634898

/-! ## A265549.P981921577384510648

`A071241(A265548(n))/A178815(n+1)`
-/

namespace A265549.P981921577384510648
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A071241 (A265548 n).toNat : ℚ) / (A178815 (n + 1) : ℚ)

end

end A265549.P981921577384510648

/-! ## A265549.P848553548563784396

`A071241(A265548(n))/(1-A057428(n))`
-/

namespace A265549.P848553548563784396
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A071241 (A265548 n).toNat : ℚ) / (1 - A057428 n : ℚ)

end

end A265549.P848553548563784396

/-! ## A265549.P1115727855548983779

`lcm(A062157(n), A071241(A265548(n)))/2`
-/

namespace A265549.P1115727855548983779
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A062157 n) (A071241 (A265548 n).toNat) : ℚ) / 2

end

end A265549.P1115727855548983779

/-! ## A265549.P17195432436189113944

`(A071241(A265548(n))+A000007(n+1))/2`
-/

namespace A265549.P17195432436189113944
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A071241 (A265548 n).toNat + A000007 (n + 1) : ℚ) / 2

end

end A265549.P17195432436189113944

/-! ## A265549.P13942128366622346759

`A071241(A265548(n))/A020639(2*(n+1))`
-/

namespace A265549.P13942128366622346759
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A071241 (A265548 n).toNat : ℚ) / (A020639 (2 * (n + 1)) : ℚ)

end

end A265549.P13942128366622346759

/-! ## A265549.P11863950897159462087

`A071241(A265548(n))/A040001(2*(n+1))`
-/

namespace A265549.P11863950897159462087
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A071241 (A265548 n).toNat : ℚ) / (A040001 (2 * (n + 1)) : ℚ)

end

end A265549.P11863950897159462087

/-!
# A265550: a(n) = smallest base-6 palindrome m >= n such that every base-6 digit of n is <= the corresponding digit of m; m is written in base 10.

The programs for A265550, there is no canonical definition to state claims against.
-/

/-! ## A265550.P10692029763184543179

`A028901(A265551(n))`
-/

namespace A265550.P10692029763184543179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028901 (A265551 n).toNat

end

end A265550.P10692029763184543179

/-! ## A265550.P1847692528484946730

`A165052(6*n)%A114286(n+2)`
-/

namespace A265550.P1847692528484946730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A165052 (6 * n)) (A114286 (n + 2))

end

end A265550.P1847692528484946730

/-! ## A265550.P17011547591009998587

`A165052(6*n)%A055161(n)`
-/

namespace A265550.P17011547591009998587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A165052 (6 * n)) (A055161 n)

end

end A265550.P17011547591009998587

/-! ## A265550.P11239301982073248795

`A165052(C(A008486(2*n), A165022(2*n+3)))`
-/

namespace A265550.P11239301982073248795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165052 (Nat.choose (A008486 (2 * n)).toNat (A165022 (2 * n + 3)).toNat)

end

end A265550.P11239301982073248795

/-! ## A265550.P3815454077399644155

`A165052(A008486(2*n)^A052307(n))`
-/

namespace A265550.P3815454077399644155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165052 (SequenceMachineLib.roundAway ((A008486 (2 * n) : ℚ) ^ (A052307 n : ℤ))).toNat

end

end A265550.P3815454077399644155

/-!
# A265551: a(n) = smallest base-6 palindrome m >= n such that every base-6 digit of n is <= the corresponding digit of m; m is written in base 6.

The programs for A265551, there is no canonical definition to state claims against.
-/

/-! ## A265551.P4076059353630890943

`A007092(A265550(n))`
-/

namespace A265551.P4076059353630890943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007092 (A265550 n).toNat

end

end A265551.P4076059353630890943

/-! ## A265551.P16512354650423979007

`A265558(A007092(n))`
-/

namespace A265551.P16512354650423979007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265558 (A007092 n).toNat

end

end A265551.P16512354650423979007

/-! ## A265551.P14508286275472505483

`A265553(A020657(n+1))`
-/

namespace A265551.P14508286275472505483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265553 (A020657 (n + 1)).toNat

end

end A265551.P14508286275472505483

/-! ## A265551.P17772218473973556583

`A265553(A020658(n+1)-1)`
-/

namespace A265551.P17772218473973556583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265553 (A020658 (n + 1) - 1).toNat

end

end A265551.P17772218473973556583

/-! ## A265551.P14584784525777682961

`A265553((A020658(n+1)+A005836(n+1))%A003278(n+1))`
-/

namespace A265551.P14584784525777682961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265553 (Int.tmod (A020658 (n + 1) + A005836 (n + 1)) (A003278 (n + 1))).toNat

end

end A265551.P14584784525777682961

/-!
# A265552: a(n) = smallest base-7 palindrome m >= n such that every base-7 digit of n is <= the corresponding digit of m; m is written in base 10.

The programs for A265552, there is no canonical definition to state claims against.
-/

/-! ## A265552.P7079524534136195935

`A028902(A265553(n))`
-/

namespace A265552.P7079524534136195935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028902 (A265553 n).toNat

end

end A265552.P7079524534136195935

/-! ## A265552.P3836731189389354558

`(A055954(n)-A265519(n))%∑[A132280(n)]`
-/

namespace A265552.P3836731189389354558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132280 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A055954 n - A265519 n) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A265552.P3836731189389354558

/-! ## A265552.P991184480018278235

`A344601(n+1)%2+A055954(n)-A265519(n)`
-/

namespace A265552.P991184480018278235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A344601 (n + 1)) 2 + (A055954 n - A265519 n)

end

end A265552.P991184480018278235

/-! ## A265552.P17712901082068210836

`A000007(A340105(n+1))+A055954(n)-A265519(n)`
-/

namespace A265552.P17712901082068210836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A340105 (n + 1)).toNat + (A055954 n - A265519 n)

end

end A265552.P17712901082068210836

/-! ## A265552.P16949761355644218647

`A001222(A092195(n+1))*A055954(n)-A265519(n)`
-/

namespace A265552.P16949761355644218647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A092195 (n + 1)).toNat * A055954 n - A265519 n

end

end A265552.P16949761355644218647

/-! ## A265552.P10950471771070845541

`abs(A055954(n)-A265519(n))%A125771(n+1)`
-/

namespace A265552.P10950471771070845541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod |A055954 n - A265519 n| (A125771 (n + 1))

end

end A265552.P10950471771070845541

/-! ## A265552.P13447347163105112622

`A265519(A055954(n)-A265519(n))`
-/

namespace A265552.P13447347163105112622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265519 (A055954 n - A265519 n).toNat

end

end A265552.P13447347163105112622

/-!
# A265553: a(n) = smallest base-7 palindrome m >= n such that every base-7 digit of n is <= the corresponding digit of m; m is written in base 7.

The programs for A265553, there is no canonical definition to state claims against.
-/

/-! ## A265553.P14146526659885279171

`A007093(A265552(n))`
-/

namespace A265553.P14146526659885279171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007093 (A265552 n).toNat

end

end A265553.P14146526659885279171

/-! ## A265553.P15568580265385943405

`A265558(A007093(n))`
-/

namespace A265553.P15568580265385943405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265558 (A007093 n).toNat

end

end A265553.P15568580265385943405

/-! ## A265553.P1155809480341849064

`A265555(A037474(n))`
-/

namespace A265553.P1155809480341849064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265555 (A037474 n).toNat

end

end A265553.P1155809480341849064

/-! ## A265553.P755689677048620950

`A265555(lt[A190597(n), 7])`
-/

namespace A265553.P755689677048620950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190597 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265555 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A265553.P755689677048620950

/-! ## A265553.P10229695024246439496

`A265555(comp[A337239(n+1)])`
-/

namespace A265553.P10229695024246439496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337239 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265555 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A265553.P10229695024246439496

/-! ## A265553.P17326774488216283515

`A265569(A265552(n)-char[7])`
-/

namespace A265553.P17326774488216283515
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265569 (A265552 n - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)).toNat

end

end A265553.P17326774488216283515

/-! ## A265553.P16782729429560412228

`A265538(A265552(n)+char[11])`
-/

namespace A265553.P16782729429560412228
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265538 (A265552 n + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)).toNat

end

end A265553.P16782729429560412228

/-! ## A265553.P1384908760365387765

`A265569(or(char[1], A265552(n)))`
-/

namespace A265553.P1384908760365387765
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265569 (Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A265552 n)).toNat

end

end A265553.P1384908760365387765

/-! ## A265553.P10717325541632984144

`A265569(A265552(n)%(2^n))`
-/

namespace A265553.P10717325541632984144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265569 (Int.tmod (A265552 n) (2 ^ n : ℤ)).toNat

end

end A265553.P10717325541632984144

/-! ## A265553.P3547085645981115362

`A265557(A037475(n))`
-/

namespace A265553.P3547085645981115362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265557 (A037475 n).toNat

end

end A265553.P3547085645981115362

/-!
# A265554: a(n) = smallest base-8 palindrome m >= n such that every base-8 digit of n is <= the corresponding digit of m; m is written in base 10.

The programs for A265554, there is no canonical definition to state claims against.
-/

/-! ## A265554.P4914959601949845504

`A028903(A265555(n))`
-/

namespace A265554.P4914959601949845504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028903 (A265555 n).toNat

end

end A265554.P4914959601949845504

/-! ## A265554.P14777674235863922623

`A265521(A055956(n)-A265521(n))`
-/

namespace A265554.P14777674235863922623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265521 (A055956 n - A265521 n).toNat

end

end A265554.P14777674235863922623

/-! ## A265554.P12422050039400084246

`A319725(n)+A037902(A263635(or(n, n+1))+n)`
-/

namespace A265554.P12422050039400084246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319725 n + A037902 (A263635 (Nat.lor n (n + 1)) + (n : ℤ)).toNat

end

end A265554.P12422050039400084246

/-! ## A265554.P18018516707022400675

`A265570(A082208(n+1))`
-/

namespace A265554.P18018516707022400675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265570 (A082208 (n + 1)).toNat

end

end A265554.P18018516707022400675

/-! ## A265554.P7494696685446275909

`A265570(A201061(n+1))`
-/

namespace A265554.P7494696685446275909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265570 (A201061 (n + 1)).toNat

end

end A265554.P7494696685446275909

/-!
# A265555: a(n) = smallest base-8 palindrome m >= n such that every base-8 digit of n is <= the corresponding digit of m; m is written in base 8.

The programs for A265555, there is no canonical definition to state claims against.
-/

/-! ## A265555.P8069970437332992476

`A007094(A265554(n))`
-/

namespace A265555.P8069970437332992476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007094 (A265554 n).toNat

end

end A265555.P8069970437332992476

/-! ## A265555.P9721590424772185578

`A265558(A007094(n))`
-/

namespace A265555.P9721590424772185578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265558 (A007094 n).toNat

end

end A265555.P9721590424772185578

/-! ## A265555.P14172699564851909375

`A265558(eq[n, A222254(n)])`
-/

namespace A265555.P14172699564851909375
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222254 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265558 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A265555.P14172699564851909375

/-! ## A265555.P14522163446002826440

`A265522(or(n, A265554(n)))`
-/

namespace A265555.P14522163446002826440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265522 (Int.lor (n : ℤ) (A265554 n)).toNat

end

end A265555.P14522163446002826440

/-! ## A265555.P6799922212862586334

`A265540(A265554(n)+char[7])`
-/

namespace A265555.P6799922212862586334
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265540 (A265554 n + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)).toNat

end

end A265555.P6799922212862586334

/-! ## A265555.P11187979652478374923

`A265522(A265554(n)+char[8])`
-/

namespace A265555.P11187979652478374923
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265522 (A265554 n + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)).toNat

end

end A265555.P11187979652478374923

/-! ## A265555.P16288960250751580880

`A265540(or(char[1], A265554(n)))`
-/

namespace A265555.P16288960250751580880
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265540 (Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A265554 n)).toNat

end

end A265555.P16288960250751580880

/-! ## A265555.P13503328719334510243

`A265571(or(char[1], A265554(n)))`
-/

namespace A265555.P13503328719334510243
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265571 (Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A265554 n)).toNat

end

end A265555.P13503328719334510243

/-! ## A265555.P311028228892306764

`A265522(A055956(n)-A265521(n))`
-/

namespace A265555.P311028228892306764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265522 (A055956 n - A265521 n).toNat

end

end A265555.P311028228892306764

/-! ## A265555.P78478834044471397

`A265522(A265554(n)%A000124(n))`
-/

namespace A265555.P78478834044471397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265522 (Int.tmod (A265554 n) (A000124 n)).toNat

end

end A265555.P78478834044471397

/-!
# A265556: a(n) = smallest base-9 palindrome m >= n such that every base-9 digit of n is <= the corresponding digit of m; m is written in base 10.

The programs for A265556, there is no canonical definition to state claims against.
-/

/-! ## A265556.P69520579562181321

`A028904(A265557(n))`
-/

namespace A265556.P69520579562181321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028904 (A265557 n).toNat

end

end A265556.P69520579562181321

/-! ## A265556.P9914876680397637097

`A265572(A319726(n))`
-/

namespace A265556.P9914876680397637097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265572 (A319726 n).toNat

end

end A265556.P9914876680397637097

/-! ## A265556.P4959607134612412511

`A319726(n)+A037903(n)`
-/

namespace A265556.P4959607134612412511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319726 n + A037903 n

end

end A265556.P4959607134612412511

/-! ## A265556.P12590278225069931681

`A055958(n)-A265523(n)`
-/

namespace A265556.P12590278225069931681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055958 n - A265523 n

end

end A265556.P12590278225069931681

/-! ## A265556.P9518529986364145438

`A319747(n)-A265523(n)`
-/

namespace A265556.P9518529986364145438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319747 n - A265523 n

end

end A265556.P9518529986364145438

/-! ## A265556.P17920356193439778493

`A319726(n)+dr(A165111(n))`
-/

namespace A265556.P17920356193439778493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319726 n + (SequenceMachineLib.digitalRoot (A165111 n) : ℤ)

end

end A265556.P17920356193439778493

/-! ## A265556.P17754867694019591889

`A319726(n)+A037841(A233583(n+1))`
-/

namespace A265556.P17754867694019591889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319726 n + A037841 (A233583 (n + 1)).toNat

end

end A265556.P17754867694019591889

/-!
# A265557: a(n) = smallest base-9 palindrome m >= n such that every base-9 digit of n is <= the corresponding digit of m; m is written in base 9.

The programs for A265557, there is no canonical definition to state claims against.
-/

/-! ## A265557.P529999201477104131

`A007095(A265556(n))`
-/

namespace A265557.P529999201477104131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 (A265556 n).toNat

end

end A265557.P529999201477104131

/-! ## A265557.P5220550778715979193

`A265558(A007095(n))`
-/

namespace A265557.P5220550778715979193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265558 (A007095 n).toNat

end

end A265557.P5220550778715979193

/-! ## A265557.P8973073285684655837

`A265573(A319726(n))`
-/

namespace A265557.P8973073285684655837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265573 (A319726 n).toNat

end

end A265557.P8973073285684655837

/-! ## A265557.P14227610252697769405

`A265558(record[A235049(n)])`
-/

namespace A265557.P14227610252697769405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235049 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265558 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A265557.P14227610252697769405

/-! ## A265557.P14698946268061677374

`A265558(eq[n, A004184(n)])`
-/

namespace A265557.P14698946268061677374
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004184 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265558 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A265557.P14698946268061677374

/-! ## A265557.P3888754567726945707

`A265524(A055958(n)-A265523(n))`
-/

namespace A265557.P3888754567726945707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265524 (A055958 n - A265523 n).toNat

end

end A265557.P3888754567726945707

/-! ## A265557.P7566764802239347850

`A265524(A319747(n)-A265523(n))`
-/

namespace A265557.P7566764802239347850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265524 (A319747 n - A265523 n).toNat

end

end A265557.P7566764802239347850

/-! ## A265557.P2844151775559664348

`A007095(A319726(n)+dr(A165111(n)))`
-/

namespace A265557.P2844151775559664348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 (A319726 n + (SequenceMachineLib.digitalRoot (A165111 n) : ℤ)).toNat

end

end A265557.P2844151775559664348

/-!
# A265558: a(n) = smallest base-10 palindrome m >= n such that every base-10 digit of n is <= the corresponding digit of m.

The programs for A265558, there is no canonical definition to state claims against.
-/

/-! ## A265558.P8432745404964453705

`A061816(A056964(n)-A265525(n))`
-/

namespace A265558.P8432745404964453705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061816 (A056964 n - A265525 n).toNat

end

end A265558.P8432745404964453705

/-! ## A265558.P18094462026356378638

`A262038(A004186(n)%A033863(n))`
-/

namespace A265558.P18094462026356378638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262038 (Int.tmod (A004186 n) (A033863 n)).toNat

end

end A265558.P18094462026356378638

/-! ## A265558.P17898514186945060925

`A283001(A056142(n))+n`
-/

namespace A265558.P17898514186945060925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283001 (A056142 n).toNat + (n : ℤ)

end

end A265558.P17898514186945060925

/-! ## A265558.P3554159424221678380

`A118759(A151950(n)+A004186(n))`
-/

namespace A265558.P3554159424221678380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (A151950 n + A004186 n).toNat

end

end A265558.P3554159424221678380

/-! ## A265558.P4803233275056347054

`A265525(n)+A151950(A056142(n))`
-/

namespace A265558.P4803233275056347054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265525 n + A151950 (A056142 n).toNat

end

end A265558.P4803233275056347054

/-! ## A265558.P10894683265051458262

`A118759(A056964(n)-A265525(n))`
-/

namespace A265558.P10894683265051458262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (A056964 n - A265525 n).toNat

end

end A265558.P10894683265051458262

/-! ## A265558.P17016536070777338302

`A118759(A151950(n)+A108782(n)+n)`
-/

namespace A265558.P17016536070777338302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (A151950 n + (A108782 n + (n : ℤ))).toNat

end

end A265558.P17016536070777338302

/-! ## A265558.P16799479449584235616

`A151950(n)+A109014(n²)*A227362(n)`
-/

namespace A265558.P16799479449584235616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151950 n + A109014 (n ^ 2) * A227362 n

end

end A265558.P16799479449584235616

/-! ## A265558.P5633663457140152105

`A118759(A151950(n)+9*A283001(n)+n)`
-/

namespace A265558.P5633663457140152105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (A151950 n + (9 * A283001 n + (n : ℤ))).toNat

end

end A265558.P5633663457140152105

/-! ## A265558.P8987150366759419320

`A118759(A151950(n)+A151949(n)+A004185(n))`
-/

namespace A265558.P8987150366759419320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (A151950 n + (A151949 n + A004185 n)).toNat

end

end A265558.P8987150366759419320

/-! ## A265558.P134229511321103377

`A118759(A151950(n)+A052008(n)-A004185(n))`
-/

namespace A265558.P134229511321103377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (A151950 n + (A052008 n - A004185 n)).toNat

end

end A265558.P134229511321103377

/-!
# A265559: Smallest base-2 palindrome m >= n, written in base 2.

The programs for A265559, there is no canonical definition to state claims against.
-/

/-! ## A265559.P6219044701955658779

`A007088(A206914(n))`
-/

namespace A265559.P6219044701955658779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A206914 n).toNat

end

end A265559.P6219044701955658779

/-! ## A265559.P9980549078120217947

`A057148(A206916(n))`
-/

namespace A265559.P9980549078120217947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057148 (A206916 n).toNat

end

end A265559.P9980549078120217947

/-! ## A265559.P6786781384507309750

`A185544(2*A206914(n))`
-/

namespace A265559.P6786781384507309750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A206914 n).toNat

end

end A265559.P6786781384507309750

/-! ## A265559.P18333654256852114345

`A305989(2*A206914(n))`
-/

namespace A265559.P18333654256852114345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305989 (2 * A206914 n).toNat

end

end A265559.P18333654256852114345

/-! ## A265559.P7039619096805771306

`A185544(lcm(2, A206914(n)))`
-/

namespace A265559.P7039619096805771306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (Int.lcm 2 (A206914 n))

end

end A265559.P7039619096805771306

/-!
# A265560: Smallest base-3 palindrome m >= n, written in base 10.

The programs for A265560, there is no canonical definition to state claims against.
-/

/-! ## A265560.P16372424089214232185

`A014190(∑[char[A014190(n+1)+1]]+1)`
-/

namespace A265560.P16372424089214232185
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014190 (n + 1) + 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014190 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A265560.P16372424089214232185

/-! ## A265560.P7990892836306639573

`A028898(A265561(n))`
-/

namespace A265560.P7990892836306639573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028898 (A265561 n).toNat

end

end A265560.P7990892836306639573

/-!
# A265561: Smallest base-3 palindrome m >= n, written in base 3.

The programs for A265561, there is no canonical definition to state claims against.
-/

/-! ## A265561.P10264631765521699746

`A007089(A265560(n))`
-/

namespace A265561.P10264631765521699746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 (A265560 n).toNat

end

end A265561.P10264631765521699746

/-! ## A265561.P4635358723332971838

`A305877(3*A265560(n))`
-/

namespace A265561.P4635358723332971838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305877 (3 * A265560 n).toNat

end

end A265561.P4635358723332971838

/-! ## A265561.P519391271423205736

`A305877(lcm(3, A265560(n)))`
-/

namespace A265561.P519391271423205736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305877 (Int.lcm 3 (A265560 n))

end

end A265561.P519391271423205736

/-! ## A265561.P11612692009346220110

`A265512(A265560(n)^(char[1]+1))`
-/

namespace A265561.P11612692009346220110
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265512 (A265560 n ^ ((if ∃ j, f1 j = n then 1 else 0) + 1)).toNat

end

end A265561.P11612692009346220110

/-! ## A265561.P5788129446329455405

`A265512(A265560(n)%(2*n+1))`
-/

namespace A265561.P5788129446329455405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265512 (Int.tmod (A265560 n) (2 * n + 1 : ℤ)).toNat

end

end A265561.P5788129446329455405

/-! ## A265561.P16096984380352767076

`A054977(n)*A265512(A265560(n))`
-/

namespace A265561.P16096984380352767076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n * A265512 (A265560 n).toNat

end

end A265561.P16096984380352767076

/-! ## A265561.P10053164699392021129

`A265512(A265560(n))%A001060(n)`
-/

namespace A265561.P10053164699392021129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A265512 (A265560 n).toNat) (A001060 n)

end

end A265561.P10053164699392021129

/-! ## A265561.P11527075546654013496

`lcm(A020985(n), A265512(A265560(n)))`
-/

namespace A265561.P11527075546654013496
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A265512 (A265560 n).toNat)

end

end A265561.P11527075546654013496

/-!
# A265562: Smallest base-4 palindrome m >= n, written in base 10.

The programs for A265562, there is no canonical definition to state claims against.
-/

/-! ## A265562.P17662267004096605604

`A014192(∑[char[A014192(n+1)+1]]+1)`
-/

namespace A265562.P17662267004096605604
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014192 (n + 1) + 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014192 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A265562.P17662267004096605604

/-! ## A265562.P11369689591080298065

`A028899(A265563(n))`
-/

namespace A265562.P11369689591080298065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028899 (A265563 n).toNat

end

end A265562.P11369689591080298065

/-!
# A265563: Smallest base-4 palindrome m >= n, written in base 4.

The programs for A265563, there is no canonical definition to state claims against.
-/

/-! ## A265563.P17324392195991712114

`A007090(A265562(n))`
-/

namespace A265563.P17324392195991712114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007090 (A265562 n).toNat

end

end A265563.P17324392195991712114

/-! ## A265563.P789764784526140443

`A265514(A265562(n)+char[4])`
-/

namespace A265563.P789764784526140443
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265514 (A265562 n + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)).toNat

end

end A265563.P789764784526140443

/-! ## A265563.P17269537181287236024

`A265547(A265562(n)-char[4])`
-/

namespace A265563.P17269537181287236024
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265547 (A265562 n - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)).toNat

end

end A265563.P17269537181287236024

/-! ## A265563.P7500251693867117415

`A265547(or(char[1], A265562(n)))`
-/

namespace A265563.P7500251693867117415
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265547 (Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A265562 n)).toNat

end

end A265563.P7500251693867117415

/-! ## A265563.P3353976677534977321

`A265514(xor(char[8], A265562(n)))`
-/

namespace A265563.P3353976677534977321
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265514 (Int.xor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A265562 n)).toNat

end

end A265563.P3353976677534977321

/-! ## A265563.P9018100738338845580

`A265547(A265562(n)%(2*(n+1)))`
-/

namespace A265563.P9018100738338845580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265547 (Int.tmod (A265562 n) (2 * (n + 1) : ℤ)).toNat

end

end A265563.P9018100738338845580

/-! ## A265563.P18090896995660947789

`A265547(A057427(n)*A265562(n))`
-/

namespace A265563.P18090896995660947789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265547 (A057427 n * A265562 n).toNat

end

end A265563.P18090896995660947789

/-! ## A265563.P7002038299042864256

`A265547(A265562(n))%A001844(n)`
-/

namespace A265563.P7002038299042864256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A265547 (A265562 n).toNat) (A001844 n)

end

end A265563.P7002038299042864256

/-! ## A265563.P5477384807423323816

`A265547(2*A265562(n)-A265562(n))`
-/

namespace A265563.P5477384807423323816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265547 (2 * A265562 n - A265562 n).toNat

end

end A265563.P5477384807423323816

/-!
# A265564: Smallest base-5 palindrome m >= n, written in base 10.

The programs for A265564, there is no canonical definition to state claims against.
-/

/-! ## A265564.P12754010778534389712

`A029952(∑[char[A029952(n+1)+1]]+1)`
-/

namespace A265564.P12754010778534389712
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029952 (n + 1) + 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029952 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A265564.P12754010778534389712

/-! ## A265564.P587865326222276581

`comp[A265533(n)+1+n]-n`
-/

namespace A265564.P587865326222276581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265533 n + 1 + (n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)

end

end A265564.P587865326222276581

/-! ## A265564.P12721580305972534362

`A028900(A265565(n))`
-/

namespace A265564.P12721580305972534362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028900 (A265565 n).toNat

end

end A265564.P12721580305972534362

/-!
# A265565: Smallest base-5 palindrome m >= n, written in base 5.

The programs for A265565, there is no canonical definition to state claims against.
-/

/-! ## A265565.P5345941146285514151

`A007091(A265564(n))`
-/

namespace A265565.P5345941146285514151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007091 (A265564 n).toNat

end

end A265565.P5345941146285514151

/-! ## A265565.P10396602921652797717

`A265516(A265564(char[5]+n))`
-/

namespace A265565.P10396602921652797717
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265516 (A265564 ((if ∃ j, f1 j = n then 1 else 0) + n)).toNat

end

end A265565.P10396602921652797717

/-! ## A265565.P3040534484257916969

`A265516(A265564(n)%(n+7))`
-/

namespace A265565.P3040534484257916969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265516 (Int.tmod (A265564 n) (n + 7 : ℤ)).toNat

end

end A265565.P3040534484257916969

/-! ## A265565.P16990030486536589052

`A265516(A265564(n))%∑[A000041(n)]`
-/

namespace A265565.P16990030486536589052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A265516 (A265564 n).toNat) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A265565.P16990030486536589052

/-! ## A265565.P11991729141015174585

`A265516(A265564(n))+val(A000032(n), 5)`
-/

namespace A265565.P11991729141015174585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265516 (A265564 n).toNat + (SequenceMachineLib.valuation (A000032 n).toNat 5 : ℤ)

end

end A265565.P11991729141015174585

/-! ## A265565.P12273267592673106833

`A007318(C(2, n))*A265516(A265564(n))`
-/

namespace A265565.P12273267592673106833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A265516 (A265564 n).toNat

end

end A265565.P12273267592673106833

/-! ## A265565.P18186675973443516193

`and(1, A000045(n))!*A265516(A265564(n))`
-/

namespace A265565.P18186675973443516193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (Int.land 1 (A000045 n)).toNat : ℤ) * A265516 (A265564 n).toNat

end

end A265565.P18186675973443516193

/-! ## A265565.P11666981873541959684

`A000041(C(n, n²))*A265516(A265564(n))`
-/

namespace A265565.P11666981873541959684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose n (n ^ 2)) * A265516 (A265564 n).toNat

end

end A265565.P11666981873541959684

/-!
# A265566: Smallest base-6 palindrome m >= n, written in base 10.

The programs for A265566, there is no canonical definition to state claims against.
-/

/-! ## A265566.P15964646602654714339

`A028901(A265567(n))`
-/

namespace A265566.P15964646602654714339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028901 (A265567 n).toNat

end

end A265566.P15964646602654714339

/-!
# A265567: Smallest base-6 palindrome m >= n, written in base 6.

The programs for A265567, there is no canonical definition to state claims against.
-/

/-! ## A265567.P10826476108800286280

`A007092(A265566(n))`
-/

namespace A265567.P10826476108800286280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007092 (A265566 n).toNat

end

end A265567.P10826476108800286280

/-! ## A265567.P16243905625548841826

`A265518(A265566(n)+char[11])`
-/

namespace A265567.P16243905625548841826
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265518 (A265566 n + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)).toNat

end

end A265567.P16243905625548841826

/-! ## A265567.P3875786993720297249

`A265518(A265566(or(n, char[1])))`
-/

namespace A265567.P3875786993720297249
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265518 (A265566 (Nat.lor n (if ∃ j, f1 j = n then 1 else 0))).toNat

end

end A265567.P3875786993720297249

/-! ## A265567.P9393269177459141162

`A265518(A265566(2*n-n))`
-/

namespace A265567.P9393269177459141162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265518 (A265566 (2 * n - n)).toNat

end

end A265567.P9393269177459141162

/-! ## A265567.P15182686675089826546

`A265518(A265566(n))%∑[A000032(n)]`
-/

namespace A265567.P15182686675089826546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A265518 (A265566 n).toNat) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A265567.P15182686675089826546

/-! ## A265567.P18142841537397548241

`A265518(A265566(n)%∑[A000041(n)])`
-/

namespace A265567.P18142841537397548241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265518 (Int.tmod (A265566 n) (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A265567.P18142841537397548241

/-! ## A265567.P3892826447352136933

`A007318(C(2, n))*A265518(A265566(n))`
-/

namespace A265567.P3892826447352136933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A265518 (A265566 n).toNat

end

end A265567.P3892826447352136933

/-! ## A265567.P11694173737795657678

`A265518(A265566(n))^A014963(∑[n+1])`
-/

namespace A265567.P11694173737795657678
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A265518 (A265566 n).toNat : ℚ) ^ (A014963 (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ)

end

end A265567.P11694173737795657678

/-! ## A265567.P1167611755364521184

`A265518(A265566(n))+A008683(4*(n+1))`
-/

namespace A265567.P1167611755364521184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265518 (A265566 n).toNat + A008683 (4 * (n + 1))

end

end A265567.P1167611755364521184

/-! ## A265567.P12578957072394654579

`A265569(A020657(n+1))`
-/

namespace A265567.P12578957072394654579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265569 (A020657 (n + 1)).toNat

end

end A265567.P12578957072394654579

/-!
# A265568: Smallest base-7 palindrome m >= n, written in base 10.

The programs for A265568, there is no canonical definition to state claims against.
-/

/-! ## A265568.P10861473964013332835

`A029954(∑[char[A029954(n+1)+1]]+1)`
-/

namespace A265568.P10861473964013332835
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029954 (n + 1) + 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029954 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A265568.P10861473964013332835

/-! ## A265568.P12940023237163312770

`A028902(A265569(n))`
-/

namespace A265568.P12940023237163312770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028902 (A265569 n).toNat

end

end A265568.P12940023237163312770

/-!
# A265569: Smallest base-7 palindrome m >= n, written in base 7.

The programs for A265569, there is no canonical definition to state claims against.
-/

/-! ## A265569.P17929594070287448833

`A262038(A007093(n))`
-/

namespace A265569.P17929594070287448833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262038 (A007093 n).toNat

end

end A265569.P17929594070287448833

/-! ## A265569.P6136623796450467007

`A007093(A265568(n))`
-/

namespace A265569.P6136623796450467007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007093 (A265568 n).toNat

end

end A265569.P6136623796450467007

/-! ## A265569.P4322653836892681860

`A262038(eq[0, A102679(n)])`
-/

namespace A265569.P4322653836892681860
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102679 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262038 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A265569.P4322653836892681860

/-! ## A265569.P8162084226358753749

`A262038(lt[A054055(n), 7])`
-/

namespace A265569.P8162084226358753749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054055 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262038 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A265569.P8162084226358753749

/-! ## A265569.P15257667044341231410

`A262038(record[n-A064770(n)])`
-/

namespace A265569.P15257667044341231410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A064770 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262038 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A265569.P15257667044341231410

/-! ## A265569.P14409347721113055571

`A262038(A222251(record[A222251(n)]))`
-/

namespace A265569.P14409347721113055571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222251 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262038 (A222251 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat).toNat

end

end A265569.P14409347721113055571

/-! ## A265569.P880811982474525027

`A262038(eq[n, A222253(A004183(n))])`
-/

namespace A265569.P880811982474525027
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222253 (A004183 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262038 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A265569.P880811982474525027

/-! ## A265569.P10893866274513233148

`A262038(eq[n, A222254(A222252(n))])`
-/

namespace A265569.P10893866274513233148
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222254 (A222252 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262038 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A265569.P10893866274513233148

/-! ## A265569.P15874764141420442933

`A265520(A265568(n)%A005408(n))`
-/

namespace A265569.P15874764141420442933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265520 (Int.tmod (A265568 n) (A005408 n)).toNat

end

end A265569.P15874764141420442933

/-! ## A265569.P8802668441640975594

`A265538(A265568(n))%A265510(n)`
-/

namespace A265569.P8802668441640975594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A265538 (A265568 n).toNat) (A265510 n)

end

end A265569.P8802668441640975594

/-!
# A265570: Smallest base-8 palindrome m >= n, written in base 10.

The programs for A265570, there is no canonical definition to state claims against.
-/

/-! ## A265570.P6267316946998368721

`A028903(A265571(n))`
-/

namespace A265570.P6267316946998368721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028903 (A265571 n).toNat

end

end A265570.P6267316946998368721

/-! ## A265570.P15100064139447907908

`A265539(A265571(n))%A265551(2*n+3)`
-/

namespace A265570.P15100064139447907908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A265539 (A265571 n).toNat) (A265551 (2 * n + 3))

end

end A265570.P15100064139447907908

/-! ## A265570.P15816490579787044786

`A265539(A265571(n))%A070289(3*n)`
-/

namespace A265570.P15816490579787044786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A265539 (A265571 n).toNat) (A070289 (3 * n))

end

end A265570.P15816490579787044786

/-!
# A265571: Smallest base-8 palindrome m >= n, written in base 8.

The programs for A265571, there is no canonical definition to state claims against.
-/

/-! ## A265571.P8405366722083364349

`A262038(A007094(n))`
-/

namespace A265571.P8405366722083364349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262038 (A007094 n).toNat

end

end A265571.P8405366722083364349

/-! ## A265571.P17941202403903118863

`A007094(A265570(n))`
-/

namespace A265571.P17941202403903118863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007094 (A265570 n).toNat

end

end A265571.P17941202403903118863

/-! ## A265571.P5842892757108582165

`A262038(eq[0, A102681(n)])`
-/

namespace A265571.P5842892757108582165
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102681 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262038 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A265571.P5842892757108582165

/-! ## A265571.P17056195457049059936

`A262038(lt[A054055(n), 8])`
-/

namespace A265571.P17056195457049059936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054055 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262038 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A265571.P17056195457049059936

/-! ## A265571.P1693922095288361493

`A262038(eq[n, A222254(n)])`
-/

namespace A265571.P1693922095288361493
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222254 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262038 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A265571.P1693922095288361493

/-! ## A265571.P3026134746444265981

`A262038(A222253(record[A222253(n)]))`
-/

namespace A265571.P3026134746444265981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222253 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262038 (A222253 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat).toNat

end

end A265571.P3026134746444265981

/-! ## A265571.P16192169958611676561

`A262038(eq[n, A004184(A004183(n))])`
-/

namespace A265571.P16192169958611676561
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004184 (A004183 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262038 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A265571.P16192169958611676561

/-! ## A265571.P15351783071725896969

`A265573(A037477(n))`
-/

namespace A265571.P15351783071725896969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265573 (A037477 n).toNat

end

end A265571.P15351783071725896969

/-!
# A265572: Smallest base-9 palindrome m >= n, written in base 10.

The programs for A265572, there is no canonical definition to state claims against.
-/

/-! ## A265572.P11988934327117467387

`A028904(A265573(n))`
-/

namespace A265572.P11988934327117467387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028904 (A265573 n).toNat

end

end A265572.P11988934327117467387

/-! ## A265572.P17094277057466434880

`A029955(∑[char[A029955(n+1)+1]]+1)`
-/

namespace A265572.P17094277057466434880
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029955 (n + 1) + 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029955 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A265572.P17094277057466434880

/-! ## A265572.P3018549247834555508

`A029955(comp[A029955(n+1)+n+1]-n+1)`
-/

namespace A265572.P3018549247834555508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029955 (n + 1) + (n + 1 : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029955 ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ) + 1).toNat

end

end A265572.P3018549247834555508

/-! ## A265572.P10963965062270561161

`A265541(A265573(n)%A053698(n))`
-/

namespace A265572.P10963965062270561161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265541 (Int.tmod (A265573 n) (A053698 n)).toNat

end

end A265572.P10963965062270561161

/-! ## A265572.P5077532065578386395

`A265541(A265573(n)+A000007(n+1))`
-/

namespace A265572.P5077532065578386395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265541 (A265573 n + A000007 (n + 1)).toNat

end

end A265572.P5077532065578386395

/-! ## A265572.P13062019274600763365

`A265541(A359162(n+1)+A265573(n))`
-/

namespace A265572.P13062019274600763365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265541 (A359162 (n + 1) + A265573 n).toNat

end

end A265572.P13062019274600763365

/-! ## A265572.P17383030567984077135

`A265541(A265573(n))%A005574(n+1)`
-/

namespace A265572.P17383030567984077135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A265541 (A265573 n).toNat) (A005574 (n + 1))

end

end A265572.P17383030567984077135

/-! ## A265572.P41969712487440010

`A265541(A049076(3*(n+1))*A265573(n))`
-/

namespace A265572.P41969712487440010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265541 (A049076 (3 * (n + 1)) * A265573 n).toNat

end

end A265572.P41969712487440010

/-!
# A265573: Smallest base-9 palindrome m >= n, written in base 9.

The programs for A265573, there is no canonical definition to state claims against.
-/

/-! ## A265573.P16144372017179957773

`A262038(A007095(n))`
-/

namespace A265573.P16144372017179957773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262038 (A007095 n).toNat

end

end A265573.P16144372017179957773

/-! ## A265573.P15109082972233588066

`A007095(A265572(n))`
-/

namespace A265573.P15109082972233588066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 (A265572 n).toNat

end

end A265573.P15109082972233588066

/-! ## A265573.P10360611801009041381

`A262038(record[A004184(n)])`
-/

namespace A265573.P10360611801009041381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004184 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262038 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A265573.P10360611801009041381

/-! ## A265573.P10777407563572494029

`A262038(record[A004728(n)])`
-/

namespace A265573.P10777407563572494029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004728 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262038 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A265573.P10777407563572494029

/-! ## A265573.P9219155389496991065

`A262038(record[A235049(n)])`
-/

namespace A265573.P9219155389496991065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235049 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262038 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A265573.P9219155389496991065

/-! ## A265573.P11160928878955865160

`A262038(lt[A054055(n), 9])`
-/

namespace A265573.P11160928878955865160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054055 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262038 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A265573.P11160928878955865160

/-! ## A265573.P5091330143675381191

`A262038(eq[n, A004184(n)])`
-/

namespace A265573.P5091330143675381191
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004184 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262038 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A265573.P5091330143675381191

/-! ## A265573.P13165393494535956121

`A262038(lt[A262038(n), A048379(n)])`
-/

namespace A265573.P13165393494535956121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048379 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262038 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A265573.P13165393494535956121

/-!
# A265574: LCM-transform of triangular numbers.

The programs for A265574, the canonical program `A265574.P12659384579340783874` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A265574 has offset 1).

The definition of A265574 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A265574.P14616595346974496863

`A014963(n+2)-floor(acot(n))`
-/

namespace A265574.P14616595346974496863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2) - ⌊SequenceMachineLib.acot (n : ℝ)⌋

end

end A265574.P14616595346974496863

namespace A265574

/-- `A014963(n+2)-floor(acot(n))` -/
def P14616595346974496863.Spec : Prop :=
  ∀ n, P14616595346974496863.a n = A265574 (n + 1)

end A265574

/-! ## A265574.P12659384579340783874

`gcd(∑[n+1], A020500(n+2))`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A265574

/-- `gcd(∑[n+1], A020500(n+2))` -/
def P12659384579340783874.Spec : Prop :=
  ∀ n, (P12659384579340783874.a n : ℤ) = A265574 (n + 1)

theorem P12659384579340783874.correct : P12659384579340783874.Spec := by
  intro n
  simp only [A265574, Nat.add_sub_cancel]

end A265574

/-! ## A265574.P9224900255077436847

`A014963(A065475(n+1))`
-/

namespace A265574.P9224900255077436847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A065475 (n + 1)).toNat

end

end A265574.P9224900255077436847

namespace A265574

/-- `A014963(A065475(n+1))` -/
def P9224900255077436847.Spec : Prop :=
  ∀ n, P9224900255077436847.a n = A265574 (n + 1)

end A265574

/-! ## A265574.P5119715403200507853

`A014963(A153152(n+1))`
-/

namespace A265574.P5119715403200507853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A153152 (n + 1)).toNat

end

end A265574.P5119715403200507853

namespace A265574

/-- `A014963(A153152(n+1))` -/
def P5119715403200507853.Spec : Prop :=
  ∀ n, P5119715403200507853.a n = A265574 (n + 1)

end A265574

/-! ## A265574.P13945195871365287198

`A014963(A181440(n+2))`
-/

namespace A265574.P13945195871365287198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A181440 (n + 2)).toNat

end

end A265574.P13945195871365287198

namespace A265574

/-- `A014963(A181440(n+2))` -/
def P13945195871365287198.Spec : Prop :=
  ∀ n, P13945195871365287198.a n = A265574 (n + 1)

end A265574

/-! ## A265574.P15067576952462295260

`A014963(A184985(n+2))`
-/

namespace A265574.P15067576952462295260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A184985 (n + 2)).toNat

end

end A265574.P15067576952462295260

namespace A265574

/-- `A014963(A184985(n+2))` -/
def P15067576952462295260.Spec : Prop :=
  ∀ n, P15067576952462295260.a n = A265574 (n + 1)

end A265574

/-! ## A265574.P12848021174151175820

`A014963(n+2-A000007(n))`
-/

namespace A265574.P12848021174151175820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 ((n + 2 : ℤ) - A000007 n).toNat

end

end A265574.P12848021174151175820

namespace A265574

/-- `A014963(n+2-A000007(n))` -/
def P12848021174151175820.Spec : Prop :=
  ∀ n, P12848021174151175820.a n = A265574 (n + 1)

end A265574

/-! ## A265574.P9927871007382871115

`A014963((n+2)/A297382(n+2))`
-/

namespace A265574.P9927871007382871115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (SequenceMachineLib.roundAway ((n + 2 : ℚ) / (A297382 (n + 2) : ℚ))).toNat

end

end A265574.P9927871007382871115

namespace A265574

/-- `A014963((n+2)/A297382(n+2))` -/
def P9927871007382871115.Spec : Prop :=
  ∀ n, P9927871007382871115.a n = A265574 (n + 1)

end A265574

/-! ## A265574.P16095528462775911977

`A014963(n+2)-A010051(2*(n+1))`
-/

namespace A265574.P16095528462775911977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2) - A010051 (2 * (n + 1))

end

end A265574.P16095528462775911977

namespace A265574

/-- `A014963(n+2)-A010051(2*(n+1))` -/
def P16095528462775911977.Spec : Prop :=
  ∀ n, P16095528462775911977.a n = A265574 (n + 1)

end A265574

/-! ## A265574.P8709227243475513246

`A014963(n+2-A209229(2*n+1))`
-/

namespace A265574.P8709227243475513246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 ((n + 2 : ℤ) - A209229 (2 * n + 1)).toNat

end

end A265574.P8709227243475513246

namespace A265574

/-- `A014963(n+2-A209229(2*n+1))` -/
def P8709227243475513246.Spec : Prop :=
  ∀ n, P8709227243475513246.a n = A265574 (n + 1)

end A265574

/-! ## A265574.P7759224178922240634

`A014963((n+2)/A369010(2*n+1))`
-/

namespace A265574.P7759224178922240634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (SequenceMachineLib.roundAway ((n + 2 : ℚ) / (A369010 (2 * n + 1) : ℚ))).toNat

end

end A265574.P7759224178922240634

namespace A265574

/-- `A014963((n+2)/A369010(2*n+1))` -/
def P7759224178922240634.Spec : Prop :=
  ∀ n, P7759224178922240634.a n = A265574 (n + 1)

end A265574

/-! ## A265574.P16969659634560460357

`A020500(n+2)/A369010(2*n+1)`
-/

namespace A265574.P16969659634560460357
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A020500 (n + 2) : ℚ) / (A369010 (2 * n + 1) : ℚ)

end

end A265574.P16969659634560460357

namespace A265574

/-- `A020500(n+2)/A369010(2*n+1)` -/
def P16969659634560460357.Spec : Prop :=
  ∀ n, P16969659634560460357.a n = (A265574 (n + 1) : ℚ)

end A265574

/-! ## A265574.P13249530197501369797

`A014963(A014963(A034444(n+1))+n)`
-/

namespace A265574.P13249530197501369797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A014963 (A034444 (n + 1)).toNat + (n : ℤ)).toNat

end

end A265574.P13249530197501369797

namespace A265574

/-- `A014963(A014963(A034444(n+1))+n)` -/
def P13249530197501369797.Spec : Prop :=
  ∀ n, P13249530197501369797.a n = A265574 (n + 1)

end A265574

/-! ## A265574.P3859433707553395228

`A014963(A001222(A027746(n+1))+n+1)`
-/

namespace A265574.P3859433707553395228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A001222 (A027746 (n + 1)).toNat + (n + 1 : ℤ)).toNat

end

end A265574.P3859433707553395228

namespace A265574

/-- `A014963(A001222(A027746(n+1))+n+1)` -/
def P3859433707553395228.Spec : Prop :=
  ∀ n, P3859433707553395228.a n = A265574 (n + 1)

end A265574

/-! ## A265574.P7388917950418168701

`A014963(A001222(A088387(n+1))+n+1)`
-/

namespace A265574.P7388917950418168701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A001222 (A088387 (n + 1)).toNat + (n + 1 : ℤ)).toNat

end

end A265574.P7388917950418168701

namespace A265574

/-- `A014963(A001222(A088387(n+1))+n+1)` -/
def P7388917950418168701.Spec : Prop :=
  ∀ n, P7388917950418168701.a n = A265574 (n + 1)

end A265574

/-! ## A265574.P15935240315287015606

`A014963(n+2)+A000007(n)*A023900(n+2)`
-/

namespace A265574.P15935240315287015606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2) + A000007 n * A023900 (n + 2)

end

end A265574.P15935240315287015606

namespace A265574

/-- `A014963(n+2)+A000007(n)*A023900(n+2)` -/
def P15935240315287015606.Spec : Prop :=
  ∀ n, P15935240315287015606.a n = A265574 (n + 1)

end A265574

/-! ## A265574.P12356060960638175724

`A014963(n+2)/(A120112(n)+A014963(n+1))`
-/

namespace A265574.P12356060960638175724
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014963 (n + 2) : ℚ) / (A120112 n + A014963 (n + 1) : ℚ)

end

end A265574.P12356060960638175724

namespace A265574

/-- `A014963(n+2)/(A120112(n)+A014963(n+1))` -/
def P12356060960638175724.Spec : Prop :=
  ∀ n, P12356060960638175724.a n = (A265574 (n + 1) : ℚ)

end A265574

/-! ## A265574.P11485327879820794346

`A020500(n+1)+A014963(n+2)-A014963(n+1)`
-/

namespace A265574.P11485327879820794346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020500 (n + 1) + (A014963 (n + 2) - A014963 (n + 1))

end

end A265574.P11485327879820794346

namespace A265574

/-- `A020500(n+1)+A014963(n+2)-A014963(n+1)` -/
def P11485327879820794346.Spec : Prop :=
  ∀ n, P11485327879820794346.a n = A265574 (n + 1)

end A265574

/-! ## A265574.P5356141839869281643

`A014963(A001221(A000961(n+1))+n+1)`
-/

namespace A265574.P5356141839869281643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A001221 (A000961 (n + 1)).toNat + (n + 1 : ℤ)).toNat

end

end A265574.P5356141839869281643

namespace A265574

/-- `A014963(A001221(A000961(n+1))+n+1)` -/
def P5356141839869281643.Spec : Prop :=
  ∀ n, P5356141839869281643.a n = A265574 (n + 1)

end A265574

/-! ## A265574.P11389880920900785527

`A014963(A001222(A307746(n+1))+n+1)`
-/

namespace A265574.P11389880920900785527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A001222 (A307746 (n + 1)).toNat + (n + 1 : ℤ)).toNat

end

end A265574.P11389880920900785527

namespace A265574

/-- `A014963(A001222(A307746(n+1))+n+1)` -/
def P11389880920900785527.Spec : Prop :=
  ∀ n, P11389880920900785527.a n = A265574 (n + 1)

end A265574

/-! ## A265574.P10783027666213081152

`ratio[lcm(a(n-1), ∑[n])]` with `a(0)=1`
-/

namespace A265574.P10783027666213081152
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  Nat.lcm (f1 (n - 1)) (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ)

end

end A265574.P10783027666213081152

namespace A265574

/-- `ratio[lcm(a(n-1), ∑[n])]` -/
def P10783027666213081152.Spec : Prop :=
  ∀ n, P10783027666213081152.a n = (A265574 (n + 1) : ℚ)

end A265574

/-!
# A265575: LCM-transform of Euler totient numbers (A000010).

The programs for A265575, the canonical program `A265575.P11957760273569767814` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A265575 has offset 1).

The definition of A265575 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 982 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A265575.P17484324051410317018

`ratio[lcm(a(n-1), A000010(n))]` with `a(0)=1`
-/

namespace A265575.P17484324051410317018
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  Int.lcm (f1 (n - 1) : ℤ) (A000010 n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ)

end

end A265575.P17484324051410317018

namespace A265575

/-- `ratio[lcm(a(n-1), A000010(n))]` -/
def P17484324051410317018.Spec : Prop :=
  ∀ n, P17484324051410317018.a n = (A265575 (n + 1) : ℚ)

end A265575

/-! ## A265575.P11957760273569767814

`ratio[A051547(A028310(n))]`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A265575

/-- `ratio[A051547(A028310(n))]` -/
def P11957760273569767814.Spec : Prop :=
  ∀ n, P11957760273569767814.a n = (A265575 (n + 1) : ℚ)

end A265575

/-! ## A265575.P4820584230796112427

`ratio[A051547(A233583(n+1))]`
-/

namespace A265575.P4820584230796112427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051547 (A233583 (n + 1)).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ)

end

end A265575.P4820584230796112427

namespace A265575

/-- `ratio[A051547(A233583(n+1))]` -/
def P4820584230796112427.Spec : Prop :=
  ∀ n, P4820584230796112427.a n = (A265575 (n + 1) : ℚ)

end A265575

/-! ## A265575.P2803963529226356395

`ratio[A051547(A065033(2*n))]`
-/

namespace A265575.P2803963529226356395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051547 (A065033 (2 * n)).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ)

end

end A265575.P2803963529226356395

namespace A265575

/-- `ratio[A051547(A065033(2*n))]` -/
def P2803963529226356395.Spec : Prop :=
  ∀ n, P2803963529226356395.a n = (A265575 (n + 1) : ℚ)

end A265575

/-! ## A265575.P10706756801485084091

`A051547(n+1)/A051547(A028310(n))`
-/

namespace A265575.P10706756801485084091
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051547 (n + 1) : ℚ) / (A051547 (A028310 n).toNat : ℚ)

end

end A265575.P10706756801485084091

namespace A265575

/-- `A051547(n+1)/A051547(A028310(n))` -/
def P10706756801485084091.Spec : Prop :=
  ∀ n, P10706756801485084091.a n = (A265575 (n + 1) : ℚ)

end A265575

/-! ## A265575.P131532015471821137

`A051547(n+1)/A051547(A233583(n+1))`
-/

namespace A265575.P131532015471821137
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051547 (n + 1) : ℚ) / (A051547 (A233583 (n + 1)).toNat : ℚ)

end

end A265575.P131532015471821137

namespace A265575

/-- `A051547(n+1)/A051547(A233583(n+1))` -/
def P131532015471821137.Spec : Prop :=
  ∀ n, P131532015471821137.a n = (A265575 (n + 1) : ℚ)

end A265575

/-! ## A265575.P9754841081067721184

`A051547(n+1)/A051547(A065033(2*n))`
-/

namespace A265575.P9754841081067721184
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051547 (n + 1) : ℚ) / (A051547 (A065033 (2 * n)).toNat : ℚ)

end

end A265575.P9754841081067721184

namespace A265575

/-- `A051547(n+1)/A051547(A065033(2*n))` -/
def P9754841081067721184.Spec : Prop :=
  ∀ n, P9754841081067721184.a n = (A265575 (n + 1) : ℚ)

end A265575

/-! ## A265575.P12192564080502927270

`A051547(n+1)/A051547(gcd(n, A003418(n)))`
-/

namespace A265575.P12192564080502927270
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051547 (n + 1) : ℚ) / (A051547 (Int.gcd (n : ℤ) (A003418 n)) : ℚ)

end

end A265575.P12192564080502927270

namespace A265575

/-- `A051547(n+1)/A051547(gcd(n, A003418(n)))` -/
def P12192564080502927270.Spec : Prop :=
  ∀ n, P12192564080502927270.a n = (A265575 (n + 1) : ℚ)

end A265575

/-! ## A265575.P4261395412169043877

`ratio[A051547(gcd(n, A003418(n)))]`
-/

namespace A265575.P4261395412169043877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051547 (Int.gcd (n : ℤ) (A003418 n))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ)

end

end A265575.P4261395412169043877

namespace A265575

/-- `ratio[A051547(gcd(n, A003418(n)))]` -/
def P4261395412169043877.Spec : Prop :=
  ∀ n, P4261395412169043877.a n = (A265575 (n + 1) : ℚ)

end A265575

/-!
# A265576: LCM-transform of EKG sequence A064413.

The programs for A265576, there is no canonical definition to state claims against.
-/

/-! ## A265576.P7823624832482799016

`A008578(A383284(n+1))`
-/

namespace A265576.P7823624832482799016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A383284 (n + 1)).toNat

end

end A265576.P7823624832482799016

/-! ## A265576.P18228294658039285917

`A014963(A251561(A064413(n+1)))`
-/

namespace A265576.P18228294658039285917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A251561 (A064413 (n + 1)).toNat).toNat

end

end A265576.P18228294658039285917

/-! ## A265576.P402252525114982630

`gcd(A002262(A200809(n+1)), A064426(n+1))`
-/

namespace A265576.P402252525114982630
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 (A200809 (n + 1)).toNat) (A064426 (n + 1))

end

end A265576.P402252525114982630

/-! ## A265576.P8668003978153354404

`A377898(A383284(n+1)%A145043(3*n+5))`
-/

namespace A265576.P8668003978153354404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377898 (Int.tmod (A383284 (n + 1)) (A145043 (3 * n + 5))).toNat

end

end A265576.P8668003978153354404

/-!
# A265577: LCM-transform of Yellowstone permutation A098550.

The programs for A265577, there is no canonical definition to state claims against.
-/

/-! ## A265577.P7587552180229171871

`gcd(A055945(A251077(n)), A251103(n+1))`
-/

namespace A265577.P7587552180229171871
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A055945 (A251077 n).toNat) (A251103 (n + 1))

end

end A265577.P7587552180229171871

/-!
# A265578: LCM-transform of number of divisors function (A000005).

The programs for A265578, the canonical program `A265578.P11461218880546600637` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A265578 has offset 1).

The definition of A265578 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A265578.P629554266666370219

`ratio[lcm(a(n-1), A000005(n))]` with `a(0)=1`
-/

namespace A265578.P629554266666370219
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  Int.lcm (f1 (n - 1) : ℤ) (A000005 n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ)

end

end A265578.P629554266666370219

namespace A265578

/-- `ratio[lcm(a(n-1), A000005(n))]` -/
def P629554266666370219.Spec : Prop :=
  ∀ n, P629554266666370219.a n = (A265578 (n + 1) : ℚ)

end A265578

/-! ## A265578.P11461218880546600637

`ratio[lcm(-a(n-1), ∏{e}[n, #+1])]` with `a(0)=1`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A265578

/-- `ratio[lcm(-a(n-1), ∏{e}[n, #+1])]` -/
def P11461218880546600637.Spec : Prop :=
  ∀ n, P11461218880546600637.a n = (A265578 (n + 1) : ℚ)

end A265578

/-! ## A265578.P7531391452282689708

`ratio[A051548(n)]`
-/

namespace A265578.P7531391452282689708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051548 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ)

end

end A265578.P7531391452282689708

namespace A265578

/-- `ratio[A051548(n)]` -/
def P7531391452282689708.Spec : Prop :=
  ∀ n, P7531391452282689708.a n = (A265578 (n + 1) : ℚ)

end A265578

/-! ## A265578.P2842812046163742182

`A051548(n+1)/A051548(n)`
-/

namespace A265578.P2842812046163742182
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051548 (n + 1) : ℚ) / (A051548 n : ℚ)

end

end A265578.P2842812046163742182

namespace A265578

/-- `A051548(n+1)/A051548(n)` -/
def P2842812046163742182.Spec : Prop :=
  ∀ n, P2842812046163742182.a n = (A265578 (n + 1) : ℚ)

end A265578

/-! ## A265578.P5937455334791301747

`gcd(A001511(n+1), A039653(A034867(n)))`
-/

namespace A265578.P5937455334791301747
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001511 (n + 1)) (A039653 (A034867 n).toNat)

end

end A265578.P5937455334791301747

namespace A265578

/-- `gcd(A001511(n+1), A039653(A034867(n)))` -/
def P5937455334791301747.Spec : Prop :=
  ∀ n, (P5937455334791301747.a n : ℤ) = A265578 (n + 1)

end A265578

/-!
# A265579: a(n) = A260643(n) - 1.

The programs for A265579, there is no canonical definition to state claims against.
-/

/-! ## A265579.P3296752124926240034

`A260643(n+1)-1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A265579.P3296752124926240034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260643 (n + 1) - 1

end

end A265579.P3296752124926240034

/-! ## A265579.P12448977457691951226

`A023447(A260643(n+1)+4)`
-/

namespace A265579.P12448977457691951226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023447 (A260643 (n + 1) + 4).toNat

end

end A265579.P12448977457691951226

/-! ## A265579.P12866297651177603050

`(A260643(n+1)+A005563(n))%(n+1)`
-/

namespace A265579.P12866297651177603050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A260643 (n + 1) + A005563 n) (n + 1 : ℤ)

end

end A265579.P12866297651177603050

/-! ## A265579.P18293795214750414765

`A260685(A260684(n+2))+A260643(n+1)`
-/

namespace A265579.P18293795214750414765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260685 (A260684 (n + 2)).toNat + A260643 (n + 1)

end

end A265579.P18293795214750414765

/-! ## A265579.P3561501420825910697

`abs(A260643(n+1)+A033999(2*n+1))`
-/

namespace A265579.P3561501420825910697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A260643 (n + 1) + A033999 (2 * n + 1)|

end

end A265579.P3561501420825910697

/-! ## A265579.P12549980639051689804

`abs(A260643(n+1)+A112187(A006519(2*n+1)))`
-/

namespace A265579.P12549980639051689804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A260643 (n + 1) + A112187 (A006519 (2 * n + 1)).toNat|

end

end A265579.P12549980639051689804

/-! ## A265579.P7882903462180405928

`A193248(A260643(n+1)²)%A260643(n+1)`
-/

namespace A265579.P7882903462180405928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A193248 (A260643 (n + 1) ^ 2).toNat) (A260643 (n + 1))

end

end A265579.P7882903462180405928

/-! ## A265579.P3896462791726207407

`(A260643(n+1)+A000079(n))%A000051(n)`
-/

namespace A265579.P3896462791726207407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A260643 (n + 1) + A000079 n) (A000051 n)

end

end A265579.P3896462791726207407

/-! ## A265579.P16193438708264303218

`A070198(n)%A260643(n+1)`
-/

namespace A265579.P16193438708264303218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A070198 n) (A260643 (n + 1))

end

end A265579.P16193438708264303218

/-! ## A265579.P2022820498291060270

`A079782(n+1)%A260643(n+1)`
-/

namespace A265579.P2022820498291060270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A079782 (n + 1)) (A260643 (n + 1))

end

end A265579.P2022820498291060270

/-! ## A265579.P3888346676214483670

`A083685(n+1)%A260643(n+1)`
-/

namespace A265579.P3888346676214483670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A083685 (n + 1)) (A260643 (n + 1))

end

end A265579.P3888346676214483670

/-! ## A265579.P1361315549105383908

`A121934(n+1)%A260643(n+1)`
-/

namespace A265579.P1361315549105383908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A121934 (n + 1)) (A260643 (n + 1))

end

end A265579.P1361315549105383908

/-!
# A265580: Number of (unlabeled) loopless multigraphs with no isolated vertices such that the sum of the numbers of vertices and edges is n.

The programs for A265580, there is no canonical definition to state claims against.
-/

/-! ## A265580.P6641224511684171947

`A081753(A321410(n)+A001045(n))`
-/

namespace A265580.P6641224511684171947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081753 (A321410 n + A001045 n).toNat

end

end A265580.P6641224511684171947

/-! ## A265580.P10682015799540864589

`A089868(A345195(n)+A067661(n))`
-/

namespace A265580.P10682015799540864589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089868 (A345195 n + A067661 n).toNat

end

end A265580.P10682015799540864589

/-! ## A265580.P16538933394017754092

`A122921(A319790(n)+A239241(n))`
-/

namespace A265580.P16538933394017754092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122921 (A319790 n + A239241 n).toNat

end

end A265580.P16538933394017754092

/-! ## A265580.P16381204521852000081

`A321406(n)+A103221(A321410(n))`
-/

namespace A265580.P16381204521852000081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321406 n + A103221 (A321410 n).toNat

end

end A265580.P16381204521852000081

/-! ## A265580.P8979550025410113833

`A000194((A345195(n)+A067661(n))²)`
-/

namespace A265580.P8979550025410113833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 ((A345195 n + A067661 n) ^ 2).toNat

end

end A265580.P8979550025410113833

/-!
# A265581: Number of (unlabeled) loopless multigraphs such that the sum of the numbers of vertices and edges is n.

The programs for A265581, there is no canonical definition to state claims against.
-/

/-! ## A265581.P15866817371470319030

`∑[A265580(n)]`
-/

namespace A265581.P15866817371470319030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265580 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A265581.P15866817371470319030

/-! ## A265581.P11838834501116755693

`A232746(A294281(n))`
-/

namespace A265581.P11838834501116755693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232746 (A294281 n).toNat

end

end A265581.P11838834501116755693

/-! ## A265581.P4258994855839077618

`A232746(A344490(n+1))`
-/

namespace A265581.P4258994855839077618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232746 (A344490 (n + 1)).toNat

end

end A265581.P4258994855839077618

/-! ## A265581.P10994786688409618219

`A122313(A192804(n))`
-/

namespace A265581.P10994786688409618219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122313 (A192804 n).toNat

end

end A265581.P10994786688409618219

/-! ## A265581.P14410819838386424314

`A180447(A148303(n))`
-/

namespace A265581.P14410819838386424314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180447 (A148303 n).toNat

end

end A265581.P14410819838386424314

/-!
# A265582: Number of (unlabeled) connected loopless multigraphs such that the sum of the numbers of vertices and edges is n.

The programs for A265582, there is no canonical definition to state claims against.
-/

/-! ## A265582.P6596920487886368938

`A351846(A056971(n)-A064875(n))`
-/

namespace A265582.P6596920487886368938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351846 (A056971 n - A064875 n).toNat

end

end A265582.P6596920487886368938

/-! ## A265582.P13599838060366752186

`A351846(A056971(n)-A262676(n))`
-/

namespace A265582.P13599838060366752186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351846 (A056971 n - A262676 n).toNat

end

end A265582.P13599838060366752186

/-!
# A265583: Array T(n,k) = k*(k-1)^(n-1) read by ascending antidiagonals; k,n >= 1.

The programs for A265583, the canonical program `A265583.P7634211700866370062` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A265583 has offset 1).

The definition of A265583 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A265583.P7634211700866370062

`(col(n)+1)*col(n)^(row(n)-col(n))`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A265583

/-- `(col(n)+1)*col(n)^(row(n)-col(n))` -/
def P7634211700866370062.Spec : Prop :=
  ∀ n, P7634211700866370062.a n = (A265583 (n + 1) : ℚ)

end A265583

/-! ## A265583.P7136679294379763437

`col(n)^(row(n)-col(n)+1)+col(n)^(row(n)-col(n))`
-/

namespace A265583.P7136679294379763437
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.triCol n : ℚ) ^ ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) + 1 : ℤ) + (SequenceMachineLib.triCol n : ℚ) ^ ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) : ℤ)

end

end A265583.P7136679294379763437

namespace A265583

/-- `col(n)^(row(n)-col(n)+1)+col(n)^(row(n)-col(n))` -/
def P7136679294379763437.Spec : Prop :=
  ∀ n, P7136679294379763437.a n = (A265583 (n + 1) : ℚ)

end A265583

/-! ## A265583.P17156817646927065916

`(n-C(round(sqrt(2*n+1)), 2)+1)*A004248(n)`
-/

namespace A265583.P17156817646927065916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - (Nat.choose (SequenceMachineLib.roundAway (Real.sqrt (2 * n + 1 : ℝ))).toNat 2 : ℤ) + 1) * A004248 n

end

end A265583.P17156817646927065916

namespace A265583

/-- `(n-C(round(sqrt(2*n+1)), 2)+1)*A004248(n)` -/
def P17156817646927065916.Spec : Prop :=
  ∀ n, P17156817646927065916.a n = A265583 (n + 1)

end A265583

/-! ## A265583.P8899566206510853233

`A002260(n+1)*A004248(n)`
-/

namespace A265583.P8899566206510853233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) * A004248 n

end

end A265583.P8899566206510853233

namespace A265583

/-- `A002260(n+1)*A004248(n)` -/
def P8899566206510853233.Spec : Prop :=
  ∀ n, P8899566206510853233.a n = A265583 (n + 1)

end A265583

/-! ## A265583.P1743359309299028033

`(A002262(n)+1)*A004248(n)`
-/

namespace A265583.P1743359309299028033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002262 n + 1) * A004248 n

end

end A265583.P1743359309299028033

namespace A265583

/-- `(A002262(n)+1)*A004248(n)` -/
def P1743359309299028033.Spec : Prop :=
  ∀ n, P1743359309299028033.a n = A265583 (n + 1)

end A265583

/-! ## A265583.P16977511750880787479

`A004248(n)*A131818(n+1)`
-/

namespace A265583.P16977511750880787479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004248 n * A131818 (n + 1)

end

end A265583.P16977511750880787479

namespace A265583

/-- `A004248(n)*A131818(n+1)` -/
def P16977511750880787479.Spec : Prop :=
  ∀ n, P16977511750880787479.a n = A265583 (n + 1)

end A265583

/-! ## A265583.P16907057763251884178

`A004248(n)*A134868(n+1)`
-/

namespace A265583.P16907057763251884178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004248 n * A134868 (n + 1)

end

end A265583.P16907057763251884178

namespace A265583

/-- `A004248(n)*A134868(n+1)` -/
def P16907057763251884178.Spec : Prop :=
  ∀ n, P16907057763251884178.a n = A265583 (n + 1)

end A265583

/-! ## A265583.P16753644931312842143

`A004248(n)*A135223(n+1)`
-/

namespace A265583.P16753644931312842143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004248 n * A135223 (n + 1)

end

end A265583.P16753644931312842143

namespace A265583

/-- `A004248(n)*A135223(n+1)` -/
def P16753644931312842143.Spec : Prop :=
  ∀ n, P16753644931312842143.a n = A265583 (n + 1)

end A265583

/-! ## A265583.P16082616378137198050

`A004248(n)*A384660(n+1)`
-/

namespace A265583.P16082616378137198050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004248 n * A384660 (n + 1)

end

end A265583.P16082616378137198050

namespace A265583

/-- `A004248(n)*A384660(n+1)` -/
def P16082616378137198050.Spec : Prop :=
  ∀ n, P16082616378137198050.a n = A265583 (n + 1)

end A265583

/-! ## A265583.P16047881815190737213

`A004248(A007401(n+1))+A004248(n)`
-/

namespace A265583.P16047881815190737213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004248 (A007401 (n + 1)).toNat + A004248 n

end

end A265583.P16047881815190737213

namespace A265583

/-- `A004248(A007401(n+1))+A004248(n)` -/
def P16047881815190737213.Spec : Prop :=
  ∀ n, P16047881815190737213.a n = A265583 (n + 1)

end A265583

/-! ## A265583.P13218878078157511474

`(A002262(n)+1)*A003992(A061579(n))`
-/

namespace A265583.P13218878078157511474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002262 n + 1) * A003992 (A061579 n).toNat

end

end A265583.P13218878078157511474

namespace A265583

/-- `(A002262(n)+1)*A003992(A061579(n))` -/
def P13218878078157511474.Spec : Prop :=
  ∀ n, P13218878078157511474.a n = A265583 (n + 1)

end A265583

/-! ## A265583.P5943056671818734006

`(A025581(A061579(n))+1)*A004248(n)`
-/

namespace A265583.P5943056671818734006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A025581 (A061579 n).toNat + 1) * A004248 n

end

end A265583.P5943056671818734006

namespace A265583

/-- `(A025581(A061579(n))+1)*A004248(n)` -/
def P5943056671818734006.Spec : Prop :=
  ∀ n, P5943056671818734006.a n = A265583 (n + 1)

end A265583

/-! ## A265583.P15770682371423648034

`(∑[A010054(n)]-A025581(n))*A004248(n)`
-/

namespace A265583.P15770682371423648034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j - A025581 n) * A004248 n

end

end A265583.P15770682371423648034

namespace A265583

/-- `(∑[A010054(n)]-A025581(n))*A004248(n)` -/
def P15770682371423648034.Spec : Prop :=
  ∀ n, P15770682371423648034.a n = A265583 (n + 1)

end A265583

/-! ## A265583.P4217674963005257380

`A004248(A014132(n+1)-1)+A004248(n)`
-/

namespace A265583.P4217674963005257380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004248 (A014132 (n + 1) - 1).toNat + A004248 n

end

end A265583.P4217674963005257380

namespace A265583

/-- `A004248(A014132(n+1)-1)+A004248(n)` -/
def P4217674963005257380.Spec : Prop :=
  ∀ n, P4217674963005257380.a n = A265583 (n + 1)

end A265583

/-! ## A265583.P2957048000665351026

`A004248(A002024(n+1)+n)+A004248(n)`
-/

namespace A265583.P2957048000665351026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004248 (A002024 (n + 1) + (n : ℤ)).toNat + A004248 n

end

end A265583.P2957048000665351026

namespace A265583

/-- `A004248(A002024(n+1)+n)+A004248(n)` -/
def P2957048000665351026.Spec : Prop :=
  ∀ n, P2957048000665351026.a n = A265583 (n + 1)

end A265583

/-! ## A265583.P17015172757892330774

`A002262(n)^A025581(n)*A002260(n+1)`
-/

namespace A265583.P17015172757892330774
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002262 n : ℚ) ^ (A025581 n : ℤ) * (A002260 (n + 1) : ℚ)

end

end A265583.P17015172757892330774

namespace A265583

/-- `A002262(n)^A025581(n)*A002260(n+1)` -/
def P17015172757892330774.Spec : Prop :=
  ∀ n, P17015172757892330774.a n = (A265583 (n + 1) : ℚ)

end A265583

/-! ## A265583.P563267950352471304

`A051129(n+1)/A009998(n)*A004248(n)`
-/

namespace A265583.P563267950352471304
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051129 (n + 1) : ℚ) / (A009998 n : ℚ) * (A004248 n : ℚ)

end

end A265583.P563267950352471304

namespace A265583

/-- `A051129(n+1)/A009998(n)*A004248(n)` -/
def P563267950352471304.Spec : Prop :=
  ∀ n, P563267950352471304.a n = (A265583 (n + 1) : ℚ)

end A265583

/-!
# A265584: Array T(n,k) counting words with n letters drawn from a k-letter alphabet with no letter appearing thrice in a 3-letter subword.

The programs for A265584, there is no canonical definition to state claims against.
-/

/-! ## A265584.P2131806201620574637

`A130259(C(A091042(n), A130259(n)))`
-/

namespace A265584.P2131806201620574637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130259 (Nat.choose (A091042 n).toNat (A130259 n).toNat)

end

end A265584.P2131806201620574637

/-! ## A265584.P15890814950535606246

`A064515(A245789(n+1)+A073253(n))`
-/

namespace A265584.P15890814950535606246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064515 (A245789 (n + 1) + A073253 n).toNat

end

end A265584.P15890814950535606246

/-! ## A265584.P13119820908855803608

`A162351(A321163(n+1)-A356428(n))`
-/

namespace A265584.P13119820908855803608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162351 (A321163 (n + 1) - A356428 n).toNat

end

end A265584.P13119820908855803608

/-!
# A265585: Number of nX2 0..n*2-1 arrays with upper left zero and lower right n*2-1 and each element differing from its horizontal and antidiagonal neighbors by a power of two.

The programs for A265585, there is no canonical definition to state claims against.
-/

/-! ## A265585.P6728710643843837360

`A265173(2*(n+1))`
-/

namespace A265585.P6728710643843837360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265173 (2 * (n + 1))

end

end A265585.P6728710643843837360

/-! ## A265585.P14218519294209854334

`record[A265173(n+2)/A033999(n)]`
-/

namespace A265585.P14218519294209854334
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A265173 (n + 2) : ℚ) / (A033999 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A265585.P14218519294209854334

/-! ## A265585.P17576940551453127621

`record[root(A265173(n+1), A010156(n))]`
-/

namespace A265585.P17576940551453127621
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A265173 (n + 1) : ℝ) ^ (1 / (A010156 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A265585.P17576940551453127621

/-! ## A265585.P6807270519567902874

`record[gcd(A079981(n), A265173(n+1))]`
-/

namespace A265585.P6807270519567902874
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A079981 n) (A265173 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A265585.P6807270519567902874

/-! ## A265585.P4703933143327898271

`record[and(A033999(n), A265173(n+1))]`
-/

namespace A265585.P4703933143327898271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A033999 n) (A265173 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A265585.P4703933143327898271

/-!
# A265586: Number of nX3 0..n*3-1 arrays with upper left zero and lower right n*3-1 and each element differing from its horizontal and antidiagonal neighbors by a power of two.

The programs for A265586, there is no canonical definition to state claims against.
-/

/-! ## A265586.P6535155694378471116

`A265590(∑[n+3]+1)`
-/

namespace A265586.P6535155694378471116
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265590 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A265586.P6535155694378471116

/-! ## A265586.P17349008220598931862

`record[A265590(A347633(n+1))]`
-/

namespace A265586.P17349008220598931862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265590 (A347633 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A265586.P17349008220598931862

/-! ## A265586.P4588089473882360220

`record[A265590(Δ[A054974(n+2)])]`
-/

namespace A265586.P4588089473882360220
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054974 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265590 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A265586.P4588089473882360220

/-!
# A265587: Number of nX4 0..n*4-1 arrays with upper left zero and lower right n*4-1 and each element differing from its horizontal and antidiagonal neighbors by a power of two.

The programs for A265587, there is no canonical definition to state claims against.
-/

/-! ## A265587.P723874683121415122

`A265590(A141214(n+1))`
-/

namespace A265587.P723874683121415122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265590 (A141214 (n + 1)).toNat

end

end A265587.P723874683121415122

/-! ## A265587.P14308280733531656293

`A265590(A052905(n+1)+2)`
-/

namespace A265587.P14308280733531656293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265590 (A052905 (n + 1) + 2).toNat

end

end A265587.P14308280733531656293

/-!
# A265588: Number of nX5 0..n*5-1 arrays with upper left zero and lower right n*5-1 and each element differing from its horizontal and antidiagonal neighbors by a power of two.

The programs for A265588, there is no canonical definition to state claims against.
-/

/-! ## A265588.P1547897563233574824

`A265590(eq[6, A185782(n+1)])`
-/

namespace A265588.P1547897563233574824
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265590 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A265588.P1547897563233574824

/-!
# A265591: Number of 2Xn 0..2*n-1 arrays with upper left zero and lower right 2*n-1 and each element differing from its horizontal and antidiagonal neighbors by a power of two.

The programs for A265591, there is no canonical definition to state claims against.
-/

/-! ## A265591.P7738182471999109158

`A265590(∑[n+1]+2)`
-/

namespace A265591.P7738182471999109158
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265590 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A265591.P7738182471999109158

/-! ## A265591.P5447781986899021628

`record[root(A265590(n+1), A121207(n))]`
-/

namespace A265591.P5447781986899021628
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A265590 (n + 1) : ℝ) ^ (1 / (A121207 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A265591.P5447781986899021628

/-! ## A265591.P2761183700776971535

`record[root(A265590(n+1), A336573(n))]`
-/

namespace A265591.P2761183700776971535
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A265590 (n + 1) : ℝ) ^ (1 / (A336573 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A265591.P2761183700776971535

/-! ## A265591.P17357463593710665931

`record[gcd(A091866(n), A265590(n+1))]`
-/

namespace A265591.P17357463593710665931
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A091866 n) (A265590 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A265591.P17357463593710665931

/-! ## A265591.P1103675130316517613

`record[ratio[A265590(n+1)]*A265494(n+1)]`
-/

namespace A265591.P1103675130316517613
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265590 (n + 1)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ) * (A265494 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A265591.P1103675130316517613

/-!
# A265592: Number of 3Xn 0..3*n-1 arrays with upper left zero and lower right 3*n-1 and each element differing from its horizontal and antidiagonal neighbors by a power of two.

The programs for A265592, there is no canonical definition to state claims against.
-/

/-! ## A265592.P2248747494365013487

`A265590(∑[n+2]+4)`
-/

namespace A265592.P2248747494365013487
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265590 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A265592.P2248747494365013487

/-! ## A265592.P3088590475505268412

`A265590(A167614(n+1))+A185255(n)`
-/

namespace A265592.P3088590475505268412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265590 (A167614 (n + 1)).toNat + A185255 n

end

end A265592.P3088590475505268412

/-! ## A265592.P15759869690147344710

`or(A000007(n), A265590(A167614(n+1)))`
-/

namespace A265592.P15759869690147344710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A265590 (A167614 (n + 1)).toNat)

end

end A265592.P15759869690147344710

/-! ## A265592.P7824080253602164800

`or(A000038(n), A265590(A167614(n+1)))`
-/

namespace A265592.P7824080253602164800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000038 n) (A265590 (A167614 (n + 1)).toNat)

end

end A265592.P7824080253602164800

/-! ## A265592.P2039195315226515108

`A265590(A167614(n+1))+A070105(n+1)`
-/

namespace A265592.P2039195315226515108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265590 (A167614 (n + 1)).toNat + A070105 (n + 1)

end

end A265592.P2039195315226515108

/-!
# A265593: Number of 4Xn 0..4*n-1 arrays with upper left zero and lower right 4*n-1 and each element differing from its horizontal and antidiagonal neighbors by a power of two.

The programs for A265593, there is no canonical definition to state claims against.
-/

/-! ## A265593.P11755225179678278811

`A265590(A052905(n)+9)`
-/

namespace A265593.P11755225179678278811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265590 (A052905 n + 9).toNat

end

end A265593.P11755225179678278811

/-! ## A265593.P15594400832918731441

`A265590(A167614(n+2)+1)`
-/

namespace A265593.P15594400832918731441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265590 (A167614 (n + 2) + 1).toNat

end

end A265593.P15594400832918731441

/-!
# A265594: Number of n X n 0..n*n-1 arrays with upper left zero and lower right n*n-1 and each element differing from its horizontal, vertical and antidiagonal neighbors by a power of two.

The programs for A265594, there is no canonical definition to state claims against.
-/

/-! ## A265594.P6731198359951135777

`A265601(∑[4*n]+1)`
-/

namespace A265594.P6731198359951135777
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265601 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A265594.P6731198359951135777

/-! ## A265594.P8049955879508802702

`A265601(A001844(n))+char[31]`
-/

namespace A265594.P8049955879508802702
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  31

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265601 (A001844 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A265594.P8049955879508802702

/-! ## A265594.P12814114081050877757

`A326525(n)+A265601(A001844(n))`
-/

namespace A265594.P12814114081050877757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326525 n + A265601 (A001844 n).toNat

end

end A265594.P12814114081050877757

/-! ## A265594.P13518655128812950137

`A265601(A001844(n))*A362078(n)`
-/

namespace A265594.P13518655128812950137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265601 (A001844 n).toNat * A362078 n

end

end A265594.P13518655128812950137

/-!
# A265595: Number of nX2 0..n*2-1 arrays with upper left zero and lower right n*2-1 and each element differing from its horizontal, vertical and antidiagonal neighbors by a power of two.

The programs for A265595, there is no canonical definition to state claims against.
-/

/-! ## A265595.P11509059338204585459

`A265601(∑[n+1]+2)`
-/

namespace A265595.P11509059338204585459
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265601 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A265595.P11509059338204585459

/-! ## A265595.P15479777823850402775

`record[A010054(n)*A265601(n+2)]`
-/

namespace A265595.P15479777823850402775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A265601 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A265595.P15479777823850402775

/-! ## A265595.P14098635088090082218

`record[A265601(n+1)/A156366(n)]`
-/

namespace A265595.P14098635088090082218
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A265601 (n + 1) : ℚ) / (A156366 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A265595.P14098635088090082218

/-! ## A265595.P4657297407486981787

`record[A265601(n+1)/A162975(n)]`
-/

namespace A265595.P4657297407486981787
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A265601 (n + 1) : ℚ) / (A162975 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A265595.P4657297407486981787

/-! ## A265595.P3802009118701655431

`record[gcd(A097230(n), A265601(n+1))]`
-/

namespace A265595.P3802009118701655431
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A097230 n) (A265601 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A265595.P3802009118701655431

/-!
# A265596: Number of nX3 0..n*3-1 arrays with upper left zero and lower right n*3-1 and each element differing from its horizontal, vertical and antidiagonal neighbors by a power of two.

The programs for A265596, there is no canonical definition to state claims against.
-/

/-! ## A265596.P2035019298376042559

`A265601(∑[n+2]+4)`
-/

namespace A265596.P2035019298376042559
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265601 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A265596.P2035019298376042559

/-! ## A265596.P11656798830444627264

`A265601(A167614(n+1))+A025443(n)`
-/

namespace A265596.P11656798830444627264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265601 (A167614 (n + 1)).toNat + A025443 n

end

end A265596.P11656798830444627264

/-! ## A265596.P14486075956560359952

`A265601(A167614(n+1))+A055965(n)`
-/

namespace A265596.P14486075956560359952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265601 (A167614 (n + 1)).toNat + A055965 n

end

end A265596.P14486075956560359952

/-! ## A265596.P9476579441630176720

`A265601(A167614(n+1))+A185255(n)`
-/

namespace A265596.P9476579441630176720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265601 (A167614 (n + 1)).toNat + A185255 n

end

end A265596.P9476579441630176720

/-! ## A265596.P7185707602467670425

`gcd(A000038(n), A265601(A167614(n+1)))`
-/

namespace A265596.P7185707602467670425
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A265601 (A167614 (n + 1)).toNat)

end

end A265596.P7185707602467670425

/-!
# A265597: Number of nX4 0..n*4-1 arrays with upper left zero and lower right n*4-1 and each element differing from its horizontal, vertical and antidiagonal neighbors by a power of two.

The programs for A265597, there is no canonical definition to state claims against.
-/

/-! ## A265597.P12277582491646218476

`A265601(A141214(n)+7)`
-/

namespace A265597.P12277582491646218476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265601 (A141214 n + 7).toNat

end

end A265597.P12277582491646218476

/-! ## A265597.P15169737567200547514

`A265601(A052905(n)+9)`
-/

namespace A265597.P15169737567200547514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265601 (A052905 n + 9).toNat

end

end A265597.P15169737567200547514

/-! ## A265597.P3237176789731221742

`A265601(A055999(n)+10)`
-/

namespace A265597.P3237176789731221742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265601 (A055999 n + 10).toNat

end

end A265597.P3237176789731221742

/-! ## A265597.P402467390563688135

`A265601(eq[5, A066657(n)])`
-/

namespace A265597.P402467390563688135
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265601 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A265597.P402467390563688135

/-! ## A265597.P1560564525971509345

`A265601(A167614(n+2)+1)`
-/

namespace A265597.P1560564525971509345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265601 (A167614 (n + 2) + 1).toNat

end

end A265597.P1560564525971509345

/-!
# A265598: Number of nX5 0..n*5-1 arrays with upper left zero and lower right n*5-1 and each element differing from its horizontal, vertical and antidiagonal neighbors by a power of two.

The programs for A265598, there is no canonical definition to state claims against.
-/

/-! ## A265598.P11315232945712440444

`A265601(eq[7, A066657(n)])`
-/

namespace A265598.P11315232945712440444
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265601 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A265598.P11315232945712440444

/-! ## A265598.P2928149508376574620

`A265601(Δ[A264443(n)])`
-/

namespace A265598.P2928149508376574620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265601 (f1 (n + 1) - f1 n).toNat

end

end A265598.P2928149508376574620

/-! ## A265598.P7815751779583224619

`A265601(A374005(n+1))`
-/

namespace A265598.P7815751779583224619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265601 (A374005 (n + 1)).toNat

end

end A265598.P7815751779583224619

/-! ## A265598.P16575604610558661185

`A265601(eq[4, A193592(n)])`
-/

namespace A265598.P16575604610558661185
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265601 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A265598.P16575604610558661185

/-! ## A265598.P9532238629650396643

`A265601(eq[5, A200370(n+1)])`
-/

namespace A265598.P9532238629650396643
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265601 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A265598.P9532238629650396643

