import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
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
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C034
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
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
import Seq.B003.C003
import Seq.B003.C004
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
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
import Seq.B009.C001
import Seq.B010.C000
import Seq.B011.C000
import Seq.B011.C001
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
# A335201: Unitary Zumkeller numbers (A290466) that are not squarefree.

The programs for A335201, there is no canonical definition to state claims against.
-/

/-! ## A335201.P12682122822283279079

`filter[A290466(n+1), A355447(#)]`
-/

namespace A335201.P12682122822283279079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290466 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355447 (f1 j).toNat = 1) n)

end

end A335201.P12682122822283279079

/-! ## A335201.P17495229323651594103

`∩[A290466(n+1), A389216(n+1)]`
-/

namespace A335201.P17495229323651594103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290466 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389216 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A335201.P17495229323651594103

/-! ## A335201.P12133104213934197191

`filter[A290466(n+1), A087049(#)]`
-/

namespace A335201.P12133104213934197191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290466 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A087049 (f1 j).toNat = 1) n)

end

end A335201.P12133104213934197191

/-! ## A335201.P15547043383709326898

`filter[A290466(n+1), A326072(#)]`
-/

namespace A335201.P15547043383709326898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290466 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A326072 (f1 j).toNat = 1) n)

end

end A335201.P15547043383709326898

/-! ## A335201.P3369622905463359588

`filter[A290466(n+1), A389905(#)]`
-/

namespace A335201.P3369622905463359588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290466 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A389905 (f1 j).toNat = 1) n)

end

end A335201.P3369622905463359588

/-! ## A335201.P8162296896550858530

`∩[A290466(n+1), A326071(n+1)]`
-/

namespace A335201.P8162296896550858530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290466 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326071 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A335201.P8162296896550858530

/-! ## A335201.P491934948658190859

`∩[A087245(n+1), A290466(n+1)]`
-/

namespace A335201.P491934948658190859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087245 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290466 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A335201.P491934948658190859

/-! ## A335201.P1456531582201304519

`∩[A290466(n+1), A389212(n+1)]`
-/

namespace A335201.P1456531582201304519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290466 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389212 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A335201.P1456531582201304519

/-! ## A335201.P17982104270994149890

`∩[A290466(n+1), A389214(n+1)]`
-/

namespace A335201.P17982104270994149890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290466 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389214 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A335201.P17982104270994149890

/-! ## A335201.P12221738699727427861

`∩[A290466(n+1), A368715(n+1)]`
-/

namespace A335201.P12221738699727427861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290466 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368715 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A335201.P12221738699727427861

/-! ## A335201.P10338996089425009660

`∩[A290466(n+1), A392288(n+1)]`
-/

namespace A335201.P10338996089425009660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290466 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392288 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A335201.P10338996089425009660

/-! ## A335201.P13553817537350928901

`∩[A137257(n+1), A290466(n+1)]`
-/

namespace A335201.P13553817537350928901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137257 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290466 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A335201.P13553817537350928901

/-! ## A335201.P14919611616123298382

`∩[A290466(n+1), A375055(n+1)]`
-/

namespace A335201.P14919611616123298382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290466 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375055 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A335201.P14919611616123298382

/-! ## A335201.P11696320549981326614

`∩[A290466(n+1), A391026(n+1)]`
-/

namespace A335201.P11696320549981326614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290466 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391026 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A335201.P11696320549981326614

/-! ## A335201.P9094448961839610703

`∩[A290466(n+1), A363101(n+1)]`
-/

namespace A335201.P9094448961839610703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290466 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363101 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A335201.P9094448961839610703

/-! ## A335201.P17881652884845817319

`∩[A290466(n+1), A379336(n+1)]`
-/

namespace A335201.P17881652884845817319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290466 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379336 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A335201.P17881652884845817319

/-! ## A335201.P1742072281067921525

`∩[A290466(n+1), A376271(n+1)]`
-/

namespace A335201.P1742072281067921525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290466 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376271 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A335201.P1742072281067921525

/-!
# A335202: Unitary Zumkeller numbers (A290466) whose set of unitary divisors can be partitioned into two disjoint sets of equal sum in a single way.

The programs for A335202, there is no canonical definition to state claims against.
-/

/-! ## A335202.P7735701765193895033

`filter[A335217(n+1), A212793(#)]`
-/

namespace A335202.P7735701765193895033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335217 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A212793 (f1 j).toNat = 1) n)

end

end A335202.P7735701765193895033

/-! ## A335202.P11782478594536996571

`filter[A335217(n+1), A359471(#)]`
-/

namespace A335202.P11782478594536996571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335217 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359471 (f1 j).toNat = 1) n)

end

end A335202.P11782478594536996571

/-! ## A335202.P6023564927166680056

`filter[A335199(n+1), A168181(#)]`
-/

namespace A335202.P6023564927166680056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335199 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A168181 (f1 j).toNat = 1) n)

end

end A335202.P6023564927166680056

/-! ## A335202.P1811242169985511513

`filter[A335217(n+1), A168181(#)]`
-/

namespace A335202.P1811242169985511513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335217 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A168181 (f1 j).toNat = 1) n)

end

end A335202.P1811242169985511513

/-! ## A335202.P9123641323165190996

`filter[A335199(n+1), A212793(#)]`
-/

namespace A335202.P9123641323165190996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335199 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A212793 (f1 j).toNat = 1) n)

end

end A335202.P9123641323165190996

/-!
# A335205: Numbers of m digits which are equal to the absolute value of the sum of the m-th powers of their digits, with alternating signs.

The programs for A335205, there is no canonical definition to state claims against.
-/

/-! ## A335205.P600161270566177979

`record[A349251(n+1)%(n+1)]`
-/

namespace A335205.P600161270566177979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A349251 (n + 1)) (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A335205.P600161270566177979

/-! ## A335205.P17323871996502309486

`A219326(2*a(n-1)-a(n-2))` with `a(0)=0, a(1)=1`
-/

namespace A335205.P17323871996502309486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A219326 (2 * a (n - 1) - a (n - 2)).toNat

end

end A335205.P17323871996502309486

/-! ## A335205.P8842639451864553359

`A349190(2*a(n-1)-a(n-2))` with `a(0)=0, a(1)=1`
-/

namespace A335205.P8842639451864553359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A349190 (2 * a (n - 1) - a (n - 2)).toNat

end

end A335205.P8842639451864553359

/-! ## A335205.P9086834910636101674

`A071281((∑{digits}[n, #]+1+n)^2^∑{digits}[n, #%C(n, #)])`
-/

namespace A335205.P9086834910636101674
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071281 ((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum + 1 + n) ^ 2 ^ ((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => x % Nat.choose n x).sum)

end

end A335205.P9086834910636101674

/-! ## A335205.P7462964489622722129

`A122639(A048410(n))`
-/

namespace A335205.P7462964489622722129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122639 (A048410 n).toNat

end

end A335205.P7462964489622722129

/-!
# A335206: a(n) is the total binary weight of all persolus bitstrings of length n.

The programs for A335206, there is no canonical definition to state claims against.
-/

/-! ## A335206.P15343250560467633548

`A000032(n)-A138066(A002522(n))`
-/

namespace A335206.P15343250560467633548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 n - A138066 (A002522 n).toNat

end

end A335206.P15343250560467633548

/-! ## A335206.P3738694953548961299

`A000032(n)-A198393(A193147(n))`
-/

namespace A335206.P3738694953548961299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 n - A198393 (A193147 n).toNat

end

end A335206.P3738694953548961299

/-! ## A335206.P14540637235457979065

`A000196(xor(A005248(n), A048647(n)))`
-/

namespace A335206.P14540637235457979065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (Int.xor (A005248 n) (A048647 n)).toNat

end

end A335206.P14540637235457979065

/-! ## A335206.P9319464713422117238

`A000032(n)-A344606(A008486(3*n))`
-/

namespace A335206.P9319464713422117238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 n - A344606 (A008486 (3 * n)).toNat

end

end A335206.P9319464713422117238

/-! ## A335206.P10899959970795532811

`A324015(n)+A049347(n)%A261895(n)`
-/

namespace A335206.P10899959970795532811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324015 n + Int.tmod (A049347 n) (A261895 n)

end

end A335206.P10899959970795532811

/-!
# A335208: Number of Heronian triangles with perimeter A335101(n) whose middle side length is a square.

The programs for A335208, there is no canonical definition to state claims against.
-/

/-! ## A335208.P4632418396722795014

`A139128(A142139(n+2))`
-/

namespace A335208.P4632418396722795014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139128 (A142139 (n + 2)).toNat

end

end A335208.P4632418396722795014

/-! ## A335208.P12419209179489519464

`gcd(2, A321592(A336706(n)))`
-/

namespace A335208.P12419209179489519464
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A321592 (A336706 n).toNat)

end

end A335208.P12419209179489519464

/-! ## A335208.P4760409084847261136

`A186715(A336706(n)+1)+1`
-/

namespace A335208.P4760409084847261136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186715 (A336706 n + 1).toNat + 1

end

end A335208.P4760409084847261136

/-! ## A335208.P4776741668819593546

`gcd(A273907(n+1), A392106(n))`
-/

namespace A335208.P4776741668819593546
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A273907 (n + 1)) (A392106 n)

end

end A335208.P4776741668819593546

/-! ## A335208.P7663535698578212548

`A073203(A268040(n)^A333768(n))`
-/

namespace A335208.P7663535698578212548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073203 (SequenceMachineLib.roundAway ((A268040 n : ℚ) ^ (A333768 n : ℤ))).toNat

end

end A335208.P7663535698578212548

/-!
# A335209: Numbers k such that binomial(2*k,k) has more distinct prime factors than binomial(2*k,i) for 0 <= i < k.

The programs for A335209, there is no canonical definition to state claims against.
-/

/-! ## A335209.P11993714831653339162

`eq[1, A020733(2*(n+1))]+1`
-/

namespace A335209.P11993714831653339162
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020733 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A335209.P11993714831653339162

/-! ## A335209.P18356042916464973567

`A008619(eq[1, A020733(n+1)])`
-/

namespace A335209.P18356042916464973567
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020733 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A335209.P18356042916464973567

/-! ## A335209.P8003511158890793355

`record[A078898(A048486(n+1))]`
-/

namespace A335209.P8003511158890793355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (A048486 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A335209.P8003511158890793355

/-! ## A335209.P9762809261473668111

`record[A025480(A048486(n+2))]`
-/

namespace A335209.P9762809261473668111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A048486 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A335209.P9762809261473668111

/-! ## A335209.P6437140239097550086

`record[A057979(A048486(n+1)+1)]`
-/

namespace A335209.P6437140239097550086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 (A048486 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A335209.P6437140239097550086

/-!
# A335210: Numbers L such that there is a prime p <= L for which v_p(H'(L) - 1) > 0, where v_p(x) is the p-adic valuation of x and H'(L) is the L-th alternating harmonic number.

The programs for A335210, there is no canonical definition to state claims against.
-/

/-! ## A335210.P8307845220940187526

`A340046(A289529(n))-A295535(n)`
-/

namespace A335210.P8307845220940187526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340046 (A289529 n).toNat - A295535 n

end

end A335210.P8307845220940187526

/-!
# A335211: Number of Heronian triangles with perimeter A335104(n) whose largest side length is a square.

The programs for A335211, there is no canonical definition to state claims against.
-/

/-! ## A335211.P17032727948801136220

`gcd(A000027(A245397(n)), A088569(2*n+3))`
-/

namespace A335211.P17032727948801136220
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000027 (A245397 n).toNat) (A088569 (2 * n + 3))

end

end A335211.P17032727948801136220

/-! ## A335211.P11535100303837928867

`A092111(A121594(n+1))`
-/

namespace A335211.P11535100303837928867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092111 (A121594 (n + 1)).toNat

end

end A335211.P11535100303837928867

/-! ## A335211.P8791928649498870556

`A049419(A130517(2*n+5)^A297030(n+1)+1)`
-/

namespace A335211.P8791928649498870556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049419 (SequenceMachineLib.roundAway ((A130517 (2 * n + 5) : ℚ) ^ (A297030 (n + 1) : ℤ) + 1)).toNat

end

end A335211.P8791928649498870556

/-! ## A335211.P3501798048336034978

`A090329(A320140(n)+1)`
-/

namespace A335211.P3501798048336034978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090329 (A320140 n + 1).toNat

end

end A335211.P3501798048336034978

/-! ## A335211.P11087517422224126381

`A349236(A261327(3*(n+1)))`
-/

namespace A335211.P11087517422224126381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349236 (A261327 (3 * (n + 1))).toNat

end

end A335211.P11087517422224126381

/-!
# A335212: a(n) = C(n) * d(n), where C(n) is the Catalan number and d(n) is the sorting probability of the Catalan poset P_n.

The programs for A335212, there is no canonical definition to state claims against.
-/

/-! ## A335212.P15152688370303853028

`A333384(A002135(and(n, 2*n))+n)`
-/

namespace A335212.P15152688370303853028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333384 (A002135 (Nat.land n (2 * n)) + (n : ℤ)).toNat

end

end A335212.P15152688370303853028

/-! ## A335212.P16726287805382742426

`A056239(A222470(n+1))*A226290(n)`
-/

namespace A335212.P16726287805382742426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (A222470 (n + 1)).toNat * A226290 n

end

end A335212.P16726287805382742426

/-! ## A335212.P1636412827180236340

`A079218(n)*A237706(A002694(n+2))`
-/

namespace A335212.P1636412827180236340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079218 n * A237706 (A002694 (n + 2)).toNat

end

end A335212.P1636412827180236340

/-!
# A335213: a(n) = C(n)*b(n), where C(n) is the n-th Catalan number and b(n) is the probability p_n(x

The programs for A335213, there is no canonical definition to state claims against.
-/

/-! ## A335213.P17292344429471283386

`A249031(A000108(n)*A082852(n+1))`
-/

namespace A335213.P17292344429471283386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249031 (A000108 n * A082852 (n + 1)).toNat

end

end A335213.P17292344429471283386

/-! ## A335213.P1853630798199681285

`A069739(∏[A018032((n+1)/∏{p}[n+1, #])])`
-/

namespace A335213.P1853630798199681285
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018032 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069739 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A335213.P1853630798199681285

/-!
# A335215: Bi-unitary Zumkeller numbers: numbers whose set of bi-unitary divisors can be partitioned into two disjoint sets of equal sum.

The programs for A335215, there is no canonical definition to state claims against.
-/

/-! ## A335215.P8288403394123649683

`lt[A151878(A289508(n+1))+n, A331970(n+1)]+1`
-/

namespace A335215.P8288403394123649683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151878 (A289508 (n + 1)).toNat + (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331970 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A335215.P8288403394123649683

/-! ## A335215.P5171929371481863483

`A255852(2*(n+1))+lt[n, A331970(n+1)]`
-/

namespace A335215.P5171929371481863483
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331970 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255852 (2 * (n + 1)) + (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n : ℤ)

end

end A335215.P5171929371481863483

/-! ## A335215.P16094331656700423050

`A204825(n+2)%A080978(A166921(n))`
-/

namespace A335215.P16094331656700423050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A204825 (n + 2)) (A080978 (A166921 n).toNat)

end

end A335215.P16094331656700423050

/-!
# A335216: Bi-unitary Zumkeller numbers (A335215) that are not exponentially odd numbers (A268335).

The programs for A335216, there is no canonical definition to state claims against.
-/

/-! ## A335216.P17761324793076888683

`∩[A335938(n+1), A080036(n)]`
-/

namespace A335216.P17761324793076888683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335938 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080036 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A335216.P17761324793076888683

/-! ## A335216.P10623427491248277076

`∩[A335938(n+1), A265413(n)]`
-/

namespace A335216.P10623427491248277076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335938 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265413 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A335216.P10623427491248277076

/-! ## A335216.P5769893002076647314

`∩[A063977(n+1), A335938(n+1)]`
-/

namespace A335216.P5769893002076647314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063977 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335938 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A335216.P5769893002076647314

/-! ## A335216.P10752739079261324122

`∩[A072587(n+1), A335215(n+1)]`
-/

namespace A335216.P10752739079261324122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072587 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335215 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A335216.P10752739079261324122

/-! ## A335216.P17124287580012784590

`∩[A331728(n+1), A335938(n+1)]`
-/

namespace A335216.P17124287580012784590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331728 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335938 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A335216.P17124287580012784590

/-! ## A335216.P13824086534776256144

`∩[A335215(n+1), A335938(n+1)]`
-/

namespace A335216.P13824086534776256144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335215 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335938 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A335216.P13824086534776256144

/-! ## A335216.P4650315835900962095

`A335938(comp[A296263(n)-A117845(n+1)]+1)`
-/

namespace A335216.P4650315835900962095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296263 n - A117845 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335938 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1)

end

end A335216.P4650315835900962095

/-!
# A335218: Exponential Zumkeller numbers: numbers whose exponential divisors can be partitioned into two disjoint subsets of equal sum.

The programs for A335218, there is no canonical definition to state claims against.
-/

/-! ## A335218.P4324016979640188246

`∪[A054979(n+1), A129575(n+1)]`
-/

namespace A335218.P4324016979640188246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054979 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129575 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A335218.P4324016979640188246

/-! ## A335218.P17348359213066341825

`∪[A129575(n+1), A318100(n+1)]`
-/

namespace A335218.P17348359213066341825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129575 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318100 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A335218.P17348359213066341825

/-! ## A335218.P18343949906294258062

`∪[A129575(n+1), A335219(n+1)]`
-/

namespace A335218.P18343949906294258062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129575 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335219 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A335218.P18343949906294258062

/-! ## A335218.P9234992678952746399

`∪[A318100(n+1), A321146(n+1)]`
-/

namespace A335218.P9234992678952746399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318100 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321146 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A335218.P9234992678952746399

/-! ## A335218.P119956091100008637

`∪[A318100(n+1), A335219(n+1)]`
-/

namespace A335218.P119956091100008637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318100 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335219 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A335218.P119956091100008637

/-! ## A335218.P4362333355768648439

`∪[A318100(n+1), A336680(n+1)]`
-/

namespace A335218.P4362333355768648439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318100 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336680 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A335218.P4362333355768648439

/-! ## A335218.P14316673318059752868

`∪[A318100(n+1), A383693(n+1)]`
-/

namespace A335218.P14316673318059752868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318100 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383693 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A335218.P14316673318059752868

/-! ## A335218.P18067607318283317079

`∪[A318100(n+1), A383697(n+1)]`
-/

namespace A335218.P18067607318283317079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318100 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383697 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A335218.P18067607318283317079

/-!
# A335219: Exponential Zumkeller numbers (A335218) whose set of exponential divisors can be partitioned into two disjoint sets of equal sum in a single way.

The programs for A335219, there is no canonical definition to state claims against.
-/

/-! ## A335219.P5379756926379809819

`∪[A054979(n+1), A321146(n+1)]`
-/

namespace A335219.P5379756926379809819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054979 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321146 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A335219.P5379756926379809819

/-!
# A335220: Exponential Zumkeller numbers (A335218) whose set of exponential divisors can be partitioned into two disjoint sets of equal sum in a record number of ways.

The programs for A335220, there is no canonical definition to state claims against.
-/

/-! ## A335220.P13937025070880434836

`∩[A003601(n+1), A317089(n+1)]²`
-/

namespace A335220.P13937025070880434836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003601 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317089 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A335220.P13937025070880434836

/-!
# A335221: Number of Heronian triangles with perimeter A330869(n) whose side lengths are squarefree.

The programs for A335221, there is no canonical definition to state claims against.
-/

/-! ## A335221.P11302565740442505746

`gcd(Δ[A079006(n)], A131481(n+1))`
-/

namespace A335221.P11302565740442505746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079006 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (f1 (n + 1) - f1 n) (A131481 (n + 1))

end

end A335221.P11302565740442505746

/-! ## A335221.P1315747351472205645

`gcd(A001222(A080880(n)), A064553(n+1))`
-/

namespace A335221.P1315747351472205645
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001222 (A080880 n).toNat) (A064553 (n + 1))

end

end A335221.P1315747351472205645

/-! ## A335221.P6799035244528647284

`gcd(A210763(A061781(n+1)), A254637(n+2))`
-/

namespace A335221.P6799035244528647284
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A210763 (A061781 (n + 1)).toNat) (A254637 (n + 2))

end

end A335221.P6799035244528647284

/-! ## A335221.P9740267335937062301

`A095999(A068013(n)+A006530(floor(e*(n+1))))`
-/

namespace A335221.P9740267335937062301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095999 (A068013 n + A006530 ⌊Real.exp 1 * (n + 1 : ℝ)⌋.toNat).toNat

end

end A335221.P9740267335937062301

/-! ## A335221.P3786146435601244158

`A378725(A114806(n))`
-/

namespace A335221.P3786146435601244158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378725 (A114806 n).toNat

end

end A335221.P3786146435601244158

/-!
# A335222: Perimeters of Heronian triangles whose smallest side length is squarefree.

The programs for A335222, there is no canonical definition to state claims against.
-/

/-! ## A335222.P313883298264672138

`A051518(record[A084928(3*(n+1))+1])`
-/

namespace A335222.P313883298264672138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084928 (3 * (n + 1)) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051518 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A335222.P313883298264672138

/-! ## A335222.P7648441539484046245

`A051518(lt[A110731(n+4), A151543(2*n+5)]+1)`
-/

namespace A335222.P7648441539484046245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110731 (n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151543 (2 * n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051518 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1)

end

end A335222.P7648441539484046245

/-! ## A335222.P3238813386758341460

`A037291(A000040(n+1))*A051518(A270428(n+1))`
-/

namespace A335222.P3238813386758341460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037291 (A000040 (n + 1)).toNat * A051518 (A270428 (n + 1)).toNat

end

end A335222.P3238813386758341460

/-! ## A335222.P10496539258224516642

`A051518(A270428(n+1)%A334538(3*n+5))`
-/

namespace A335222.P10496539258224516642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051518 (Int.tmod (A270428 (n + 1)) (A334538 (3 * n + 5))).toNat

end

end A335222.P10496539258224516642

/-! ## A335222.P8579239206529073476

`A051518(∑[A296412((n+1)/∏{p}[n+1, #])])`
-/

namespace A335222.P8579239206529073476
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296412 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051518 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A335222.P8579239206529073476

/-!
# A335223: Perimeters of Heronian triangles whose middle side length is squarefree.

The programs for A335223, there is no canonical definition to state claims against.
-/

/-! ## A335223.P13028327747335925641

`∪[A334453(n+1), A335243(n+1)]`
-/

namespace A335223.P13028327747335925641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334453 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335243 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A335223.P13028327747335925641

/-! ## A335223.P8076987608973610148

`∪[A335243(n+1), A335246(n+1)]%A335246(3*n+2)`
-/

namespace A335223.P8076987608973610148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335243 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335246 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n : ℤ) (A335246 (3 * n + 2))

end

end A335223.P8076987608973610148

/-! ## A335223.P10198884894518273328

`∪[A335243(A151543(n+1)), A335246(n+4)]`
-/

namespace A335223.P10198884894518273328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335243 (A151543 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335246 (n + 4)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A335223.P10198884894518273328

/-! ## A335223.P9840045544285924172

`A334453(n+1)-A333840(3*n+5)%A335221(n+1)`
-/

namespace A335223.P9840045544285924172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334453 (n + 1) - Int.tmod (A333840 (3 * n + 5)) (A335221 (n + 1))

end

end A335223.P9840045544285924172

/-! ## A335223.P13588387847397723118

`A269394(A334453(n+1))`
-/

namespace A335223.P13588387847397723118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269394 (A334453 (n + 1)).toNat

end

end A335223.P13588387847397723118

/-!
# A335224: Perimeters of Heronian triangles whose largest side length is squarefree.

The programs for A335224, there is no canonical definition to state claims against.
-/

/-! ## A335224.P9126533578852645761

`∪[A335244(n+1), A335246(n+1)]%A334560(2*(n+2))`
-/

namespace A335224.P9126533578852645761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335244 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335246 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n : ℤ) (A334560 (2 * (n + 2)))

end

end A335224.P9126533578852645761

/-! ## A335224.P11253987732265739319

`∪[A334560(n+1)%A333840(3*n+5), A335244(n+1)]`
-/

namespace A335224.P11253987732265739319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A334560 (n + 1)) (A333840 (3 * n + 5))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335244 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A335224.P11253987732265739319

/-! ## A335224.P13003584644110407761

`∪[A006793(A287522(n+1)), A334560(n+1)]`
-/

namespace A335224.P13003584644110407761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006793 (A287522 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334560 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A335224.P13003584644110407761

/-! ## A335224.P71834363688909757

`∪[A334560(A001104(n+1)), A335244(n+1)]`
-/

namespace A335224.P71834363688909757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334560 (A001104 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335244 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A335224.P71834363688909757

/-! ## A335224.P1858564944512291930

`lt[A196113(n+3), A089259(A074206(n))]`
-/

namespace A335224.P1858564944512291930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196113 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089259 (A074206 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A335224.P1858564944512291930

/-!
# A335225: Partitions of a stronger form of Goldbach Conjecture: the number of decompositions of an even number 2n into the sum of two odd prime numbers p and q with 0 <= q-p < n.

The programs for A335225, there is no canonical definition to state claims against.
-/

/-! ## A335225.P14289190553180521414

`A279792(n+1)+A257531(n+1)`
-/

namespace A335225.P14289190553180521414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279792 (n + 1) + A257531 (n + 1)

end

end A335225.P14289190553180521414

/-! ## A335225.P8003694210089663080

`A002375(n+1)-A279794(n+1)`
-/

namespace A335225.P8003694210089663080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002375 (n + 1) - A279794 (n + 1)

end

end A335225.P8003694210089663080

/-! ## A335225.P4864390688679338073

`A240708(n+1)-A279794(n+1)`
-/

namespace A335225.P4864390688679338073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240708 (n + 1) - A279794 (n + 1)

end

end A335225.P4864390688679338073

/-! ## A335225.P115346352555787807

`A190353(2*(n+1))-A279794(n+1)`
-/

namespace A335225.P115346352555787807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190353 (2 * (n + 1)) - A279794 (n + 1)

end

end A335225.P115346352555787807

/-! ## A335225.P17655939407106811301

`ceil(A002372(n+1)/2-A279794(n+1))`
-/

namespace A335225.P17655939407106811301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A002372 (n + 1) : ℚ) / 2 - (A279794 (n + 1) : ℚ)⌉

end

end A335225.P17655939407106811301

/-! ## A335225.P14294500115203827793

`A045917(n+1)-(A279794(n+1)+char[1])`
-/

namespace A335225.P14294500115203827793
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045917 (n + 1) - (A279794 (n + 1) + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ))

end

end A335225.P14294500115203827793

/-! ## A335225.P17037995597611096836

`(n+1)%A227065(n+1)-A279794(n+1)`
-/

namespace A335225.P17037995597611096836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A227065 (n + 1)) - A279794 (n + 1)

end

end A335225.P17037995597611096836

/-! ## A335225.P13949005623295669431

`A110654(A002372(n+1))-A279794(n+1)`
-/

namespace A335225.P13949005623295669431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A002372 (n + 1)).toNat - A279794 (n + 1)

end

end A335225.P13949005623295669431

/-! ## A335225.P11125028291733339828

`A004526(A002372(n+1)+1)-A279794(n+1)`
-/

namespace A335225.P11125028291733339828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A002372 (n + 1) + 1).toNat - A279794 (n + 1)

end

end A335225.P11125028291733339828

/-! ## A335225.P3820252876696442644

`(A023036(n)+A002375(n+1))%(A279794(n+1)+A023036(n))`
-/

namespace A335225.P3820252876696442644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A023036 n + A002375 (n + 1)) (A279794 (n + 1) + A023036 n)

end

end A335225.P3820252876696442644

/-! ## A335225.P6909829699437845151

`(A002375(n+1)+A002373(n+3))%(A279794(n+1)+A002373(n+3))`
-/

namespace A335225.P6909829699437845151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002375 (n + 1) + A002373 (n + 3)) (A279794 (n + 1) + A002373 (n + 3))

end

end A335225.P6909829699437845151

/-! ## A335225.P16975363940627590432

`(A002375(n+1)+A002374(n+3))%(A279794(n+1)+A002374(n+3))`
-/

namespace A335225.P16975363940627590432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002375 (n + 1) + A002374 (n + 3)) (A279794 (n + 1) + A002374 (n + 3))

end

end A335225.P16975363940627590432

/-!
# A335229: Numbers expressible as the sum of two terms of A001950.

The programs for A335229, there is no canonical definition to state claims against.
-/

/-! ## A335229.P12580350637793616688

`lt[0, A080844(n)]+2`
-/

namespace A335229.P12580350637793616688
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080844 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 2

end

end A335229.P12580350637793616688

/-! ## A335229.P11795711346059662353

`lt[0, A080844(A289207(n))]`
-/

namespace A335229.P11795711346059662353
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080844 (A289207 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A335229.P11795711346059662353

/-! ## A335229.P2154749953569928195

`lt[A001950(A295540(n)), n]`
-/

namespace A335229.P2154749953569928195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001950 (A295540 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A335229.P2154749953569928195

/-! ## A335229.P11997679057077230234

`comp[A066628(A002251(n))+n]`
-/

namespace A335229.P11997679057077230234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066628 (A002251 n).toNat + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A335229.P11997679057077230234

/-! ## A335229.P3674377408527112836

`2-A001478(lt[0, A080844(n)])`
-/

namespace A335229.P3674377408527112836
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080844 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A001478 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A335229.P3674377408527112836

/-! ## A335229.P10602400903000410045

`lt[A295540(n), A189663(n+1)]`
-/

namespace A335229.P10602400903000410045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295540 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189663 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A335229.P10602400903000410045

/-! ## A335229.P304619818185687818

`lt[n*A295540(n), A005206(n)²]`
-/

namespace A335229.P304619818185687818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A295540 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005206 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A335229.P304619818185687818

/-! ## A335229.P2143506257834696213

`lt[A000201(A295540(n)), A005206(n)]`
-/

namespace A335229.P2143506257834696213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000201 (A295540 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005206 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A335229.P2143506257834696213

/-!
# A335231: Numbers that are the sum of 3 refactorable numbers in exactly one way.

The programs for A335231, there is no canonical definition to state claims against.
-/

/-! ## A335231.P13495132304978851894

`eq[1, A335230(n)]`
-/

namespace A335231.P13495132304978851894
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335230 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A335231.P13495132304978851894

/-!
# A335232: Number of largest subsets of the set of points in an n X n square grid, such that no two points are at the same distance.

The programs for A335232, there is no canonical definition to state claims against.
-/

/-! ## A335232.P8770355301653498625

`A262968(n)*A326699(A010845(n))`
-/

namespace A335232.P8770355301653498625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262968 n * A326699 (A010845 n).toNat

end

end A335232.P8770355301653498625

/-!
# A335233: Numbers m such that m!*i + 1 is composite for i = 1..m.

The programs for A335233, there is no canonical definition to state claims against.
-/

/-! ## A335233.P15534136059815543503

`lt[n+1, A035093(n+1)]+1`
-/

namespace A335233.P15534136059815543503
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035093 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A335233.P15534136059815543503

/-! ## A335233.P9309005852154186110

`lt[A028310(n), A035093(A028310(n))]`
-/

namespace A335233.P9309005852154186110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035093 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A335233.P9309005852154186110

/-!
# A335234: Number of partitions of k_n into two parts (s,t) such that k_n | s*t, where k_n is the n-th nonsquarefree number (A013929).

The programs for A335234, there is no canonical definition to state claims against.
-/

/-! ## A335234.P15000247270678588099

`floor(A087050(n+1)/2)`
-/

namespace A335234.P15000247270678588099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A087050 (n + 1) : ℚ) / 2⌋

end

end A335234.P15000247270678588099

/-! ## A335234.P16783780361410056536

`A064727(A013929(n+1))`
-/

namespace A335234.P16783780361410056536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064727 (A013929 (n + 1)).toNat

end

end A335234.P16783780361410056536

/-! ## A335234.P425556066118496861

`A004526(A087050(n+1))`
-/

namespace A335234.P425556066118496861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A087050 (n + 1)).toNat

end

end A335234.P425556066118496861

/-! ## A335234.P8829723018176021014

`A064727(A368040(n+1))`
-/

namespace A335234.P8829723018176021014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064727 (A368040 (n + 1)).toNat

end

end A335234.P8829723018176021014

/-! ## A335234.P6751341258664133409

`A064727(A162966(n+2))`
-/

namespace A335234.P6751341258664133409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064727 (A162966 (n + 2)).toNat

end

end A335234.P6751341258664133409

/-! ## A335234.P10229360830364004330

`A064727(lt[0, A105570(n)])`
-/

namespace A335234.P10229360830364004330
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105570 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064727 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A335234.P10229360830364004330

/-! ## A335234.P4748021485045137076

`A064727(eq[1, A249442(n)])`
-/

namespace A335234.P4748021485045137076
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249442 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064727 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A335234.P4748021485045137076

/-! ## A335234.P4140755006621331358

`filter[A064727(n+1), A079421(#)]`
-/

namespace A335234.P4140755006621331358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064727 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A079421 (f1 j).toNat = 1) n)

end

end A335234.P4140755006621331358

/-! ## A335234.P16594156371183084119

`filter[A064727(n+1), A145568(#)]`
-/

namespace A335234.P16594156371183084119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064727 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A145568 (f1 j).toNat = 1) n)

end

end A335234.P16594156371183084119

/-! ## A335234.P4402196180054801448

`A064727(eq[0, A008683(n+1)]+1)`
-/

namespace A335234.P4402196180054801448
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064727 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A335234.P4402196180054801448

/-!
# A335235: Numbers k such that the k-th composition in standard order (A066099) is pairwise coprime, where a singleton is always considered coprime.

The programs for A335235, there is no canonical definition to state claims against.
-/

/-! ## A335235.P15486401123201318095

`comp[A335236(n+1)]`
-/

namespace A335235.P15486401123201318095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335236 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A335235.P15486401123201318095

/-! ## A335235.P2209588872821213076

`comp[record[A335236(A193592(n))]]`
-/

namespace A335235.P2209588872821213076
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335236 (A193592 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A335235.P2209588872821213076

/-! ## A335235.P1384873933476225024

`comp[record[A335236(A193739(n))]]`
-/

namespace A335235.P1384873933476225024
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335236 (A193739 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A335235.P1384873933476225024

/-! ## A335235.P292781346045404641

`comp[record[A335236(A195663(n))]]`
-/

namespace A335235.P292781346045404641
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335236 (A195663 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A335235.P292781346045404641

/-! ## A335235.P3650697953805733857

`comp[record[A335236(A286544(n))]]`
-/

namespace A335235.P3650697953805733857
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335236 (A286544 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A335235.P3650697953805733857

/-! ## A335235.P5696175809614290623

`comp[record[A335236(A291769(n))]]`
-/

namespace A335235.P5696175809614290623
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335236 (A291769 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A335235.P5696175809614290623

/-! ## A335235.P6274765778471111205

`comp[record[A335236(A324347(n))]]`
-/

namespace A335235.P6274765778471111205
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335236 (A324347 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A335235.P6274765778471111205

/-! ## A335235.P16126865723537224517

`∪[A333227(n+1), A000079(n)]`
-/

namespace A335235.P16126865723537224517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333227 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A335235.P16126865723537224517

/-! ## A335235.P7132740876738057486

`∪[A333227(n+1), A008859(n)]`
-/

namespace A335235.P7132740876738057486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333227 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008859 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A335235.P7132740876738057486

/-! ## A335235.P6163727299178918494

`∪[A333227(n+1), A008860(n)]`
-/

namespace A335235.P6163727299178918494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333227 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008860 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A335235.P6163727299178918494

/-!
# A335236: Numbers k such that the k-th composition in standard order (A066099) is not a singleton nor pairwise coprime.

The programs for A335236, there is no canonical definition to state claims against.
-/

/-! ## A335236.P286584408726323427

`filter[A335239(n+1), A267579(#)]`
-/

namespace A335236.P286584408726323427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335239 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267579 (f1 j).toNat = 1) n)

end

end A335236.P286584408726323427

/-! ## A335236.P127968668809764164

`filter[A335239(n+1), A347523(#)]`
-/

namespace A335236.P127968668809764164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335239 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A347523 (f1 j).toNat = 1) n)

end

end A335236.P127968668809764164

/-! ## A335236.P1730662749532234469

`∩[comp[A335235(n+1)], A335239(n+1)]`
-/

namespace A335236.P1730662749532234469
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335235 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335239 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f3 j = (x : ℤ)) n

end

end A335236.P1730662749532234469

/-! ## A335236.P3652683947574661160

`comp[A335235(n+1)]%A103473(n+3)`
-/

namespace A335236.P3652683947574661160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335235 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) (A103473 (n + 3))

end

end A335236.P3652683947574661160

/-! ## A335236.P13242325238702694579

`comp[A335235(n+1)]%A178228(A124418(n))`
-/

namespace A335236.P13242325238702694579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335235 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) (A178228 (A124418 n).toNat)

end

end A335236.P13242325238702694579

/-!
# A335237: Numbers whose binary indices are not a singleton nor pairwise coprime.

The programs for A335237, there is no canonical definition to state claims against.
-/

/-! ## A335237.P9177118631458700984

`comp[A087087(n+1)]`
-/

namespace A335237.P9177118631458700984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087087 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A335237.P9177118631458700984

/-! ## A335237.P4078634562149155892

`comp[A087087(n)-floor(acot(n))]`
-/

namespace A335237.P4078634562149155892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087087 n - ⌊SequenceMachineLib.acot (n : ℝ)⌋

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A335237.P4078634562149155892

/-! ## A335237.P8557239619757280620

`comp[∪[2^n, A326675(n+1)]]`
-/

namespace A335237.P8557239619757280620
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326675 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = x) ∨ ∃ j, f3 j = (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A335237.P8557239619757280620

/-! ## A335237.P7712020737296502262

`comp[A028310(A087087(n))]`
-/

namespace A335237.P7712020737296502262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A087087 n).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A335237.P7712020737296502262

/-! ## A335237.P6158139240844339624

`eq[0, char[A087087(A008619(n))]]`
-/

namespace A335237.P6158139240844339624
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087087 (A008619 n).toNat

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A335237.P6158139240844339624

/-! ## A335237.P7064443082390899425

`comp[A087087(n)-A000007(n)]`
-/

namespace A335237.P7064443082390899425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087087 n - A000007 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A335237.P7064443082390899425

/-! ## A335237.P7406284615036528127

`comp[A087087(n)-A000038(n)]`
-/

namespace A335237.P7406284615036528127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087087 n - A000038 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A335237.P7406284615036528127

/-! ## A335237.P9036819227508737290

`eq[0, char[A087087(A166133(n+1))]]`
-/

namespace A335237.P9036819227508737290
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087087 (A166133 (n + 1)).toNat

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A335237.P9036819227508737290

/-! ## A335237.P10145919558201368492

`eq[0, char[A087087(A112798(n+2))]]`
-/

namespace A335237.P10145919558201368492
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087087 (A112798 (n + 2)).toNat

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A335237.P10145919558201368492

/-!
# A335238: Numbers k such that the distinct parts of the k-th composition in standard order (A066099) are not pairwise coprime, where a singleton is not coprime unless it is (1).

The programs for A335238, there is no canonical definition to state claims against.
-/

/-! ## A335238.P4300833827154869260

`∪[A337666(n+1), A337695(n+1)]`
-/

namespace A335238.P4300833827154869260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337666 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337695 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A335238.P4300833827154869260

/-! ## A335238.P816260008484983518

`∩[2*n, A337666(n+1)]`
-/

namespace A335238.P816260008484983518
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337666 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A335238.P816260008484983518

/-! ## A335238.P7097508361269999052

`A337666(gcd((n+1)*∑{d}[n+1, #], (n+1)*Δ[n^3]))`
-/

namespace A335238.P7097508361269999052
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337666 (Int.gcd (((n + 1) * (∑ d ∈ Nat.divisors (f1 n), d) : ℕ) : ℤ) ((n + 1 : ℤ) * ((f2 (n + 1) : ℤ) - (f2 n : ℤ))))

end

end A335238.P7097508361269999052

/-! ## A335238.P862166575086149800

`A337666(A043317(n+1))`
-/

namespace A335238.P862166575086149800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337666 (A043317 (n + 1)).toNat

end

end A335238.P862166575086149800

/-! ## A335238.P17207487432279827733

`A337666(A044914(n+1))`
-/

namespace A335238.P17207487432279827733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337666 (A044914 (n + 1)).toNat

end

end A335238.P17207487432279827733

/-!
# A335239: Numbers k such that the k-th composition in standard-order (A066099) does not have all pairwise coprime parts, where a singleton is not coprime unless it is (1).

The programs for A335239, there is no canonical definition to state claims against.
-/

/-! ## A335239.P3855970326241668509

`∪[and(-2, 2^n), A335236(n+1)]`
-/

namespace A335239.P3855970326241668509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-2) (2 ^ n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335236 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A335239.P3855970326241668509

/-! ## A335239.P14970440277699746532

`∪[A335236(n+1), A155559(n)]`
-/

namespace A335239.P14970440277699746532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335236 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155559 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A335239.P14970440277699746532

/-! ## A335239.P6397886877467927144

`∪[A115213(n+1), A335236(n+1)]`
-/

namespace A335239.P6397886877467927144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115213 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335236 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A335239.P6397886877467927144

/-! ## A335239.P17404843831854498808

`∪[A291165(n+1), A335236(n+1)]`
-/

namespace A335239.P17404843831854498808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291165 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335236 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A335239.P17404843831854498808

/-! ## A335239.P15368743754114277202

`∪[A335236(n+1), A335238(n+1)]`
-/

namespace A335239.P15368743754114277202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335236 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335238 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A335239.P15368743754114277202

/-! ## A335239.P12531747591736718586

`∪[A335236(n+1), A337666(n+1)]`
-/

namespace A335239.P12531747591736718586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335236 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337666 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A335239.P12531747591736718586

/-!
# A335240: Number of integer partitions of n that are not pairwise coprime, where a singleton is not coprime unless it is (1).

The programs for A335240, there is no canonical definition to state claims against.
-/

/-! ## A335240.P7465113223462831127

`A058984(n)+A123108(n)-A327516(n)`
-/

namespace A335240.P7465113223462831127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058984 n + (A123108 n - A327516 n)

end

end A335240.P7465113223462831127

/-! ## A335240.P1091377674891803012

`A000041(n)-(A327516(n)-A000007(n))`
-/

namespace A335240.P1091377674891803012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - (A327516 n - A000007 n)

end

end A335240.P1091377674891803012

/-! ## A335240.P12511160743352881054

`A052810(A028310(n)-char[1])-A051424(n)`
-/

namespace A335240.P12511160743352881054
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052810 (A028310 n - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)).toNat - A051424 n

end

end A335240.P12511160743352881054

/-! ## A335240.P12498030336740628030

`A052810(A181440(n+1)-1)-A051424(n)`
-/

namespace A335240.P12498030336740628030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052810 (A181440 (n + 1) - 1).toNat - A051424 n

end

end A335240.P12498030336740628030

/-! ## A335240.P7159134509734972839

`A185706(3*(n+1))+A000041(n)-A327516(n)`
-/

namespace A335240.P7159134509734972839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185706 (3 * (n + 1)) + (A000041 n - A327516 n)

end

end A335240.P7159134509734972839

/-!
# A335241: Numbers whose prime indices are not pairwise coprime, where a singleton is not coprime unless it is {1}.

The programs for A335241, there is no canonical definition to state claims against.
-/

/-! ## A335241.P4560213097632718657

`comp[A302696(n+2)-1]+1`
-/

namespace A335241.P4560213097632718657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302696 (n + 2) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A335241.P4560213097632718657

/-! ## A335241.P1734280249445965163

`or(C(2, n), comp[A302696(n+1)])`
-/

namespace A335241.P1734280249445965163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302696 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor (Nat.choose 2 n) (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A335241.P1734280249445965163

/-! ## A335241.P3069309727950399541

`or(C(2, n), comp[A327512(n+1)])`
-/

namespace A335241.P3069309727950399541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327512 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor (Nat.choose 2 n) (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A335241.P3069309727950399541

/-! ## A335241.P8366110175305541577

`comp[A327512(n+2)]+floor(acot(n))`
-/

namespace A335241.P8366110175305541577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327512 (n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) + ⌊SequenceMachineLib.acot (n : ℝ)⌋

end

end A335241.P8366110175305541577

/-! ## A335241.P11526806994621569937

`A028310(comp[A302696(n+1)])`
-/

namespace A335241.P11526806994621569937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302696 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A335241.P11526806994621569937

/-! ## A335241.P18324512234705713318

`A028310(comp[A327512(n+1)])`
-/

namespace A335241.P18324512234705713318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327512 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A335241.P18324512234705713318

/-! ## A335241.P3682480166309378053

`∪[A316438(n+1), A061345(n)]`
-/

namespace A335241.P3682480166309378053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316438 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061345 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A335241.P3682480166309378053

/-! ## A335241.P12197826324433426231

`∪[A316438(n+1), A109860(n)]`
-/

namespace A335241.P12197826324433426231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316438 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109860 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A335241.P12197826324433426231

/-! ## A335241.P15360589109800239685

`A028310(eq[0, char[A327512(n+1)]])`
-/

namespace A335241.P15360589109800239685
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327512 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A335241.P15360589109800239685

/-! ## A335241.P14865645436138754556

`∪[A006005(n+1), A316438(n+1)]`
-/

namespace A335241.P14865645436138754556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316438 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A335241.P14865645436138754556

/-!
# A335242: a(n) = 2*a(n-1) + a(n-3) for n >= 4, with initial values a(0) = 1, a(1) = 0, a(2) = 2, and a(3) = 3.

The programs for A335242, the canonical program `A335242.P13167726634393333400` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A335242 has offset 0).

The definition of A335242 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*a(n-1)+a(n-3)` (program `A335242.P13167726634393333400`, by `A335242.P13167726634393333400.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A335242.P13167726634393333400

`2*a(n-1)+a(n-3)` with `a(0)=1, a(1)=0, a(2)=2, a(3)=3`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A335242

/-- `2*a(n-1)+a(n-3)` -/
def P13167726634393333400.Spec : Prop :=
  ∀ n, (P13167726634393333400.a n : ℤ) = A335242 n

theorem P13167726634393333400.correct : P13167726634393333400.Spec := by
  intro n
  simp only [A335242]

end A335242

/-! ## A335242.P2389663394454186627

`a(n-1)+a(n-1)+a(n-3)` with `a(0)=1, a(1)=0, a(2)=2, a(3)=3`
-/

namespace A335242.P2389663394454186627
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 2, 3] fun n a =>
  a (n - 1) + (a (n - 1) + a (n - 3))

end

end A335242.P2389663394454186627

namespace A335242

/-- `a(n-1)+a(n-1)+a(n-3)` -/
def P2389663394454186627.Spec : Prop :=
  ∀ n, (P2389663394454186627.a n : ℤ) = A335242 n

theorem P2389663394454186627.correct : P2389663394454186627.Spec := by
  intro n
  simp only [A335242, Nat.add_sub_cancel, A335242.P2389663394454186627.a, A335242.P13167726634393333400.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A335242

/-! ## A335242.P4891393527161133846

`3*a(n-1)-(a(n-1)-a(n-3))` with `a(0)=1, a(1)=0, a(2)=2, a(3)=3`
-/

namespace A335242.P4891393527161133846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 2, 3] fun n a =>
  3 * a (n - 1) - (a (n - 1) - a (n - 3))

end

end A335242.P4891393527161133846

namespace A335242

/-- `3*a(n-1)-(a(n-1)-a(n-3))` -/
def P4891393527161133846.Spec : Prop :=
  ∀ n, P4891393527161133846.a n = A335242 n

end A335242

/-! ## A335242.P1243939206415924086

`abs(A052980(n)-A335274(n))`
-/

namespace A335242.P1243939206415924086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A052980 n - A335274 n|

end

end A335242.P1243939206415924086

namespace A335242

/-- `abs(A052980(n)-A335274(n))` -/
def P1243939206415924086.Spec : Prop :=
  ∀ n, P1243939206415924086.a n = A335242 n

end A335242

/-! ## A335242.P18231592528707289414

`abs(abs(A110513(n))-A335274(n))`
-/

namespace A335242.P18231592528707289414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(|A110513 n| - A335274 n)|

end

end A335242.P18231592528707289414

namespace A335242

/-- `abs(abs(A110513(n))-A335274(n))` -/
def P18231592528707289414.Spec : Prop :=
  ∀ n, P18231592528707289414.a n = A335242 n

end A335242

/-!
# A335243: Perimeters of Heronian triangles whose smallest and middle side lengths are squarefree.

The programs for A335243, there is no canonical definition to state claims against.
-/

/-! ## A335243.P11887920751883323581

`∪[A330869(n+1), A334586(A002998(n+2))]`
-/

namespace A335243.P11887920751883323581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330869 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334586 (A002998 (n + 2)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A335243.P11887920751883323581

/-! ## A335243.P16268920715607142806

`∪[A334538(n+1), A334586(A002998(n+2))]`
-/

namespace A335243.P16268920715607142806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334538 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334586 (A002998 (n + 2)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A335243.P16268920715607142806

/-! ## A335243.P11714750215615580841

`∪[A334538(n+1), A334586(A334542(n+2))]`
-/

namespace A335243.P11714750215615580841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334538 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334586 (A334542 (n + 2)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A335243.P11714750215615580841

/-! ## A335243.P2807679901009729991

`∩[A090864(n+1), A334453(n+1)]`
-/

namespace A335243.P2807679901009729991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090864 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334453 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A335243.P2807679901009729991

/-! ## A335243.P17582664324098857186

`∩[A109234(n+1), A334453(n+1)]`
-/

namespace A335243.P17582664324098857186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109234 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334453 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A335243.P17582664324098857186

/-!
# A335244: Perimeters of Heronian triangles whose smallest and largest side lengths are squarefree.

The programs for A335244, there is no canonical definition to state claims against.
-/

/-! ## A335244.P7184264490560290156

`A006793(A287522(n+1))`
-/

namespace A335244.P7184264490560290156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006793 (A287522 (n + 1)).toNat

end

end A335244.P7184264490560290156

/-! ## A335244.P14696796376594574658

`A016921(n+2)-A080426(A152579(n))`
-/

namespace A335244.P14696796376594574658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016921 (n + 2) - A080426 (A152579 n).toNat

end

end A335244.P14696796376594574658

/-! ## A335244.P15014974344758602958

`A016789(2*n+3)-A186032(A077499(n+1))`
-/

namespace A335244.P15014974344758602958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016789 (2 * n + 3) - A186032 (A077499 (n + 1)).toNat

end

end A335244.P15014974344758602958

/-! ## A335244.P15665264339750000645

`A278481(A250120(2*n+1))+A103517(3*n+2)`
-/

namespace A335244.P15665264339750000645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278481 (A250120 (2 * n + 1)).toNat + A103517 (3 * n + 2)

end

end A335244.P15665264339750000645

/-! ## A335244.P2851319416200608083

`A096604(A096604(3*n+4))-A096604(3*n+4)`
-/

namespace A335244.P2851319416200608083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096604 (A096604 (3 * n + 4)).toNat - A096604 (3 * n + 4)

end

end A335244.P2851319416200608083

/-!
# A335247: a(n) is the number of binary (0,1) sequences of length n that have at least two ones in each window of eight consecutive symbols.

The programs for A335247, there is no canonical definition to state claims against.
-/

/-! ## A335247.P4502956412433752125

`A014375(A089408(n))+A008859(n)`
-/

namespace A335247.P4502956412433752125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014375 (A089408 n).toNat + A008859 n

end

end A335247.P4502956412433752125

/-!
# A335248: Perimeters of isosceles Heronian triangles whose smallest two side lengths are equal.

The programs for A335248, there is no canonical definition to state claims against.
-/

/-! ## A335248.P1957006591911527430

`2*A046790(n+1)`
-/

namespace A335248.P1957006591911527430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A046790 (n + 1)

end

end A335248.P1957006591911527430

/-! ## A335248.P3056193204304224170

`∩[2*n, A335437(n+1)]`
-/

namespace A335248.P3056193204304224170
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335437 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A335248.P3056193204304224170

/-! ## A335248.P5752194153180761811

`2*comp[C(A000026(n+1), n)]`
-/

namespace A335248.P5752194153180761811
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A000026 (n + 1)).toNat n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A335248.P5752194153180761811

/-! ## A335248.P16786462717367630311

`2*comp[C(A038387(n+1), n)]`
-/

namespace A335248.P16786462717367630311
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A038387 (n + 1)).toNat n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A335248.P16786462717367630311

/-! ## A335248.P6177655025717934733

`2*comp[C(A038388(n+1), n)]`
-/

namespace A335248.P6177655025717934733
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A038388 (n + 1)).toNat n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A335248.P6177655025717934733

/-! ## A335248.P460839566731472858

`2*comp[C(A038389(n+1), n)]`
-/

namespace A335248.P460839566731472858
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A038389 (n + 1)).toNat n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A335248.P460839566731472858

/-! ## A335248.P8581111200723224615

`2*(eq[0, A086831(n+1)]+1)`
-/

namespace A335248.P8581111200723224615
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086831 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A335248.P8581111200723224615

/-! ## A335248.P4652652017029843099

`2*(lt[0, A078771(n+1)]+1)`
-/

namespace A335248.P4652652017029843099
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078771 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A335248.P4652652017029843099

/-! ## A335248.P6715799937479375438

`2*(lt[1, A292380(n+1)]+1)`
-/

namespace A335248.P6715799937479375438
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292380 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A335248.P6715799937479375438

/-! ## A335248.P17891297380460475254

`A004277(A046790(n+1))`
-/

namespace A335248.P17891297380460475254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A046790 (n + 1)).toNat

end

end A335248.P17891297380460475254

/-!
# A335249: Perimeters of isosceles Heronian triangles whose largest two side lengths are equal.

The programs for A335249, there is no canonical definition to state claims against.
-/

/-! ## A335249.P16087023436304298414

`lt[1, A070139(n+1)]+1`
-/

namespace A335249.P16087023436304298414
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070139 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A335249.P16087023436304298414

/-! ## A335249.P10967079567405726466

`2*lt[A067722(2*n), n]`
-/

namespace A335249.P10967079567405726466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067722 (2 * n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A335249.P10967079567405726466

/-! ## A335249.P2192847342491623514

`lt[1, A070139(A028310(n))]`
-/

namespace A335249.P2192847342491623514
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070139 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A335249.P2192847342491623514

/-! ## A335249.P7574357413612143617

`lt[1, A070139(A233583(n+1))]`
-/

namespace A335249.P7574357413612143617
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070139 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A335249.P7574357413612143617

/-! ## A335249.P16209828758228044893

`lt[1, A309395(A152271(n))]+1`
-/

namespace A335249.P16209828758228044893
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309395 (A152271 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A335249.P16209828758228044893

/-! ## A335249.P7977601955346186780

`lt[A057979(n), A309395(A065033(n))]`
-/

namespace A335249.P7977601955346186780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309395 (A065033 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A335249.P7977601955346186780

/-! ## A335249.P15351910313545004238

`lt[A152271(n), A309395(A065033(n))]`
-/

namespace A335249.P15351910313545004238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152271 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309395 (A065033 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A335249.P15351910313545004238

/-!
# A335250: Numbers m such that twice the number of unordered Goldbach partitions of 2m equals the number of unordered Goldbach partitions of 4m.

The programs for A335250, there is no canonical definition to state claims against.
-/

/-! ## A335250.P10146863618535768579

`A294448(A327698(n+1))+A156031(2*(n+1))`
-/

namespace A335250.P10146863618535768579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294448 (A327698 (n + 1)).toNat + A156031 (2 * (n + 1))

end

end A335250.P10146863618535768579

/-!
# A335251: Numbers k such that k and k+1 have the same unitary abundance (A129468).

The programs for A335251, there is no canonical definition to state claims against.
-/

/-! ## A335251.P6050669431031497444

`eq[A034460(n+1)+1, A034460(n+2)]+1`
-/

namespace A335251.P6050669431031497444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034460 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034460 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A335251.P6050669431031497444

/-! ## A335251.P17896070897205791670

`eq[2, A064992(n+1)]+1`
-/

namespace A335251.P17896070897205791670
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064992 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A335251.P17896070897205791670

/-! ## A335251.P16419191366780991770

`eq[A129468(n+1), A129468(n+2)]+1`
-/

namespace A335251.P16419191366780991770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129468 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129468 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A335251.P16419191366780991770

/-!
# A335253: Numbers k such that the abundance (A033880) of k is equal to the deficiency (A033879) of k+2.

The programs for A335253, there is no canonical definition to state claims against.
-/

/-! ## A335253.P11700422221690829846

`A186103(A199343(n))-1`
-/

namespace A335253.P11700422221690829846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186103 (A199343 n).toNat - 1

end

end A335253.P11700422221690829846

/-! ## A335253.P16081330362795843214

`A186103(A032555(n+1))-1`
-/

namespace A335253.P16081330362795843214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186103 (A032555 (n + 1)).toNat - 1

end

end A335253.P16081330362795843214

/-! ## A335253.P7506183607164271088

`A186103(A032559(n+1))-1`
-/

namespace A335253.P7506183607164271088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186103 (A032559 (n + 1)).toNat - 1

end

end A335253.P7506183607164271088

/-! ## A335253.P13338881826395670073

`A186103(A034710(n+1))-1`
-/

namespace A335253.P13338881826395670073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186103 (A034710 (n + 1)).toNat - 1

end

end A335253.P13338881826395670073

/-! ## A335253.P16212048387587290552

`A186103(A045910(n+1))-1`
-/

namespace A335253.P16212048387587290552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186103 (A045910 (n + 1)).toNat - 1

end

end A335253.P16212048387587290552

/-!
# A335256: Irregular triangle read by rows: row n gives the coefficients of the n-th complete exponential Bell polynomial B_n(x_1, x_2, ..., x_n) with monomials sorted into standard order.

The programs for A335256, there is no canonical definition to state claims against.
-/

/-! ## A335256.P6734415262586406620

`A178867(∑[A181340(n+1)!])`
-/

namespace A335256.P6734415262586406620
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A181340 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178867 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A335256.P6734415262586406620

/-! ## A335256.P6959495349348096453

`A211350(∑[A181340(n+1)!])`
-/

namespace A335256.P6959495349348096453
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A181340 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211350 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A335256.P6959495349348096453

/-!
# A335257: Numerators of expansion of arctanh(tan(x)) (odd powers only).

The programs for A335257, there is no canonical definition to state claims against.
-/

/-! ## A335257.P1358160318508392258

`A001316(n)*A091912(n)`
-/

namespace A335257.P1358160318508392258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 n * A091912 n

end

end A335257.P1358160318508392258

/-! ## A335257.P14546867019492250100

`A091912(n)*A335247(A000120(n))`
-/

namespace A335257.P14546867019492250100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091912 n * A335247 (A000120 n).toNat

end

end A335257.P14546867019492250100

/-! ## A335257.P3680659884540083749

`lcm(A001316(A005843(n)), A091912(n))`
-/

namespace A335257.P3680659884540083749
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A001316 (A005843 n).toNat) (A091912 n)

end

end A335257.P3680659884540083749

/-! ## A335257.P12094839294060447991

`lcm(A001316(n), A091912(A028310(n)))`
-/

namespace A335257.P12094839294060447991
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A001316 n) (A091912 (A028310 n).toNat)

end

end A335257.P12094839294060447991

/-! ## A335257.P6051531427133153999

`A000831(2*n)/gcd(A000142(2*n+1), A000831(2*n))`
-/

namespace A335257.P6051531427133153999
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000831 (2 * n) : ℚ) / (Int.gcd (A000142 (2 * n + 1)) (A000831 (2 * n)) : ℚ)

end

end A335257.P6051531427133153999

/-!
# A335258: Denominators of expansion of arctanh(tan(x)) (odd powers only).

The programs for A335258, there is no canonical definition to state claims against.
-/

/-! ## A335258.P13569945405493807790

`A049606(2*n+1)/gcd(A000111(2*n), A049606(2*n+1))`
-/

namespace A335258.P13569945405493807790
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049606 (2 * n + 1) : ℚ) / (Int.gcd (A000111 (2 * n)) (A049606 (2 * n + 1)) : ℚ)

end

end A335258.P13569945405493807790

/-! ## A335258.P8709981856435281597

`A000142(2*n+1)/gcd(A000142(2*n+1), A000831(2*n))`
-/

namespace A335258.P8709981856435281597
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 (2 * n + 1) : ℚ) / (Int.gcd (A000142 (2 * n + 1)) (A000831 (2 * n)) : ℚ)

end

end A335258.P8709981856435281597

/-! ## A335258.P1485686133528985166

`gcd(A013523(A028310(n)), A049606(2*(n+1)))`
-/

namespace A335258.P1485686133528985166
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A013523 (A028310 n).toNat) (A049606 (2 * (n + 1)))

end

end A335258.P1485686133528985166

/-! ## A335258.P5571817757901788383

`gcd(∏[A016756(n)], A013523(n))`
-/

namespace A335258.P5571817757901788383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016756 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (∏ j ∈ Finset.range (n + 1), f1 j) (A013523 n)

end

end A335258.P5571817757901788383

/-! ## A335258.P3882132099414458599

`gcd(record[(1-n)*a(n-2)], A136606(n+1))` with `a(0)=2, a(1)=1, a(2)=1, a(3)=0`
-/

namespace A335258.P3882132099414458599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, 1, 1, 0] fun n f1 =>
  (1 - (n : ℤ)) * f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A136606 (n + 1))

end

end A335258.P3882132099414458599

/-!
# A335259: Triangle read by rows: T(n,k) = k^ceiling(n/k) for 1 <= k <= n.

The programs for A335259, there is no canonical definition to state claims against.
-/

/-! ## A335259.P984906729820717646

`(1-C(∑[char[∑[n]]], 2)+n)^ceil(∑[char[∑[n]]]/(1-C(∑[char[∑[n]]], 2)+n))`
-/

namespace A335259.P984906729820717646
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f6 j

open Classical in
def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f5 j = n then 1 else 0

def f9 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f8 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f9 j

open Classical in
def f7 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f8 j = n then 1 else 0

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ) + (n : ℤ) : ℚ) ^ (⌈((∑ j ∈ Finset.range (n + 1), f4 j : ℕ) : ℚ) / (1 - (Nat.choose (∑ j ∈ Finset.range (n + 1), f7 j) 2 : ℤ) + (n : ℤ) : ℚ)⌉ : ℤ)

end

end A335259.P984906729820717646

/-! ## A335259.P14157817039083106336

`(1-C(∑[char[∑[n]]], 2)+n)^A120885(n+1)`
-/

namespace A335259.P14157817039083106336
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ) + (n : ℤ) : ℚ) ^ (A120885 (n + 1) : ℤ)

end

end A335259.P14157817039083106336

/-! ## A335259.P16729181453666664336

`A002260(n+1)^A120885(n+1)`
-/

namespace A335259.P16729181453666664336
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002260 (n + 1) : ℚ) ^ (A120885 (n + 1) : ℤ)

end

end A335259.P16729181453666664336

/-! ## A335259.P16587389137541555058

`(A002262(n)+1)^A120885(n+1)`
-/

namespace A335259.P16587389137541555058
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002262 n + 1 : ℚ) ^ (A120885 (n + 1) : ℤ)

end

end A335259.P16587389137541555058

/-! ## A335259.P5112559878262549659

`sqrt(A133819(n+1)^A120885(n+1))`
-/

namespace A335259.P5112559878262549659
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((A133819 (n + 1) : ℚ) ^ (A120885 (n + 1) : ℤ) : ℝ)

end

end A335259.P5112559878262549659

/-! ## A335259.P16685957438226742054

`A002260(n+1)^ceil(sqrt(A085383(n+1)))`
-/

namespace A335259.P16685957438226742054
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002260 (n + 1) : ℚ) ^ (⌈Real.sqrt (A085383 (n + 1) : ℝ)⌉ : ℤ)

end

end A335259.P16685957438226742054

/-! ## A335259.P2802966908822442752

`A002260(n+1)^ceil(sqrt(A331145(n+1)))`
-/

namespace A335259.P2802966908822442752
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002260 (n + 1) : ℚ) ^ (⌈Real.sqrt (A331145 (n + 1) : ℝ)⌉ : ℤ)

end

end A335259.P2802966908822442752

/-! ## A335259.P17377334453630910978

`A005496(A002262(n))^A120885(n+1)`
-/

namespace A335259.P17377334453630910978
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005496 (A002262 n).toNat : ℚ) ^ (A120885 (n + 1) : ℤ)

end

end A335259.P17377334453630910978

/-! ## A335259.P2496357474751469549

`A000005(A059268(n))^A120885(n+1)`
-/

namespace A335259.P2496357474751469549
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000005 (A059268 n).toNat : ℚ) ^ (A120885 (n + 1) : ℤ)

end

end A335259.P2496357474751469549

/-! ## A335259.P4584215950609741674

`A002260(n+1)^ceil(A074909(n+1)/A007318(n))`
-/

namespace A335259.P4584215950609741674
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002260 (n + 1) : ℚ) ^ (⌈(A074909 (n + 1) : ℚ) / (A007318 n : ℚ)⌉ : ℤ)

end

end A335259.P4584215950609741674

/-!
# A335261: Irregular triangle S(n,k) = denominators of k*A002110(n)/A005867(n) for 1 <= k <= A005867(n).

The programs for A335261, there is no canonical definition to state claims against.
-/

/-! ## A335261.P8355278545975108388

`gcd(A128099(A055500(n)), A265027(n+5))`
-/

namespace A335261.P8355278545975108388
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A128099 (A055500 n).toNat) (A265027 (n + 5))

end

end A335261.P8355278545975108388

/-! ## A335261.P10817974864812052061

`A160385(n+1)^A194823(A005578(n))`
-/

namespace A335261.P10817974864812052061
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A160385 (n + 1) : ℚ) ^ (A194823 (A005578 n).toNat : ℤ)

end

end A335261.P10817974864812052061

/-! ## A335261.P17225506452876819584

`A173410(A173387(n+1)*A183025(n+1))`
-/

namespace A335261.P17225506452876819584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173410 (A173387 (n + 1) * A183025 (n + 1)).toNat

end

end A335261.P17225506452876819584

/-! ## A335261.P14151504546582711072

`A011782(A093873(n+5)%A146822(n+1))`
-/

namespace A335261.P14151504546582711072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (Int.tmod (A093873 (n + 5)) (A146822 (n + 1))).toNat

end

end A335261.P14151504546582711072

/-! ## A335261.P7745108918536384465

`gcd(A160595(A208893(n+1)), A208887(n))`
-/

namespace A335261.P7745108918536384465
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A160595 (A208893 (n + 1)).toNat) (A208887 n)

end

end A335261.P7745108918536384465

/-!
# A335262: Triangle of triangular numbers, read by rows, constructed like this: Given a sequence t, start row 0 with t(0). Compute row n for n > 0 by reversing row n-1 and prepending t(n). The sequence t is here chosen as the triangular numbers.

The programs for A335262, the canonical program `A335262.P797207076152892983` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A335262 has offset 0).

The definition of A335262 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A335262.P18142856359904833780

`C(n²+1, 2)%comp[∑[n]]`
-/

namespace A335262.P18142856359904833780
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n ^ 2 + 1) 2 % SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A335262.P18142856359904833780

namespace A335262

/-- `C(n²+1, 2)%comp[∑[n]]` -/
def P18142856359904833780.Spec : Prop :=
  ∀ n, (P18142856359904833780.a n : ℤ) = A335262 n

end A335262

/-! ## A335262.P10767671501188446882

`((n^4+n²)/2)%comp[∑[n]]`
-/

namespace A335262.P10767671501188446882
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((n ^ 4 + n ^ 2 : ℚ) / 2)) (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ)

end

end A335262.P10767671501188446882

namespace A335262

/-- `((n^4+n²)/2)%comp[∑[n]]` -/
def P10767671501188446882.Spec : Prop :=
  ∀ n, P10767671501188446882.a n = A335262 n

end A335262

/-! ## A335262.P2718839898332681197

`2*∑[2*n-round(sqrt(2*n))²]-n`
-/

namespace A335262.P2718839898332681197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - SequenceMachineLib.roundAway (Real.sqrt (2 * n : ℝ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j) - (n : ℤ)

end

end A335262.P2718839898332681197

namespace A335262

/-- `2*∑[2*n-round(sqrt(2*n))²]-n` -/
def P2718839898332681197.Spec : Prop :=
  ∀ n, P2718839898332681197.a n = A335262 n

end A335262

/-! ## A335262.P6736940511187411776

`abs((n+1-C(comp[∑[n]]-n, 2))²+(n-C(∑[char[∑[n]]], 2))²-∑[char[comp[∑[n]]]])`
-/

namespace A335262.P6736940511187411776
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

open Classical in
def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f4 j = n then 1 else 0

def f9 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f8 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f9 j

open Classical in
def f7 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f8 j ≠ x) n

open Classical in
def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f7 j = n then 1 else 0

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((n + 1 : ℤ) - (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ)) ^ 2 + ((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f3 j) 2 : ℤ)) ^ 2 - ((∑ j ∈ Finset.range (n + 1), f6 j : ℕ) : ℤ)|

end

end A335262.P6736940511187411776

namespace A335262

/-- `abs((n+1-C(comp[∑[n]]-n, 2))²+(n-C(∑[char[∑[n]]], 2))²-∑[char[comp[∑[n]]]])` -/
def P6736940511187411776.Spec : Prop :=
  ∀ n, P6736940511187411776.a n = A335262 n

end A335262

/-! ## A335262.P1967505783108445319

`C(A130517(n+1), 2)`
-/

namespace A335262.P1967505783108445319
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A130517 (n + 1)).toNat 2

end

end A335262.P1967505783108445319

namespace A335262

/-- `C(A130517(n+1), 2)` -/
def P1967505783108445319.Spec : Prop :=
  ∀ n, (P1967505783108445319.a n : ℤ) = A335262 n

end A335262

/-! ## A335262.P797207076152892983

`C(abs(A056951(n+1)), 2)`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A335262

/-- `C(abs(A056951(n+1)), 2)` -/
def P797207076152892983.Spec : Prop :=
  ∀ n, (P797207076152892983.a n : ℤ) = A335262 n

theorem P797207076152892983.correct : P797207076152892983.Spec := by
  intro n
  simp only [A335262]

end A335262

/-! ## A335262.P6936960474656982197

`A130519(A162630(n+1))`
-/

namespace A335262.P6936960474656982197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130519 (A162630 (n + 1)).toNat

end

end A335262.P6936960474656982197

namespace A335262

/-- `A130519(A162630(n+1))` -/
def P6936960474656982197.Spec : Prop :=
  ∀ n, P6936960474656982197.a n = A335262 n

end A335262

/-! ## A335262.P16626214145429919228

`A000217(A130517(n+1)-1)`
-/

namespace A335262.P16626214145429919228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A130517 (n + 1) - 1).toNat

end

end A335262.P16626214145429919228

namespace A335262

/-- `A000217(A130517(n+1)-1)` -/
def P16626214145429919228.Spec : Prop :=
  ∀ n, P16626214145429919228.a n = A335262 n

end A335262

/-! ## A335262.P13754101283728981652

`C(A220073(comp[∑[n]]), 2)`
-/

namespace A335262.P13754101283728981652
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A220073 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)).toNat 2

end

end A335262.P13754101283728981652

namespace A335262

/-- `C(A220073(comp[∑[n]]), 2)` -/
def P13754101283728981652.Spec : Prop :=
  ∀ n, (P13754101283728981652.a n : ℤ) = A335262 n

end A335262

/-! ## A335262.P4951549192921773125

`C(A004737(2*n+1), 2)`
-/

namespace A335262.P4951549192921773125
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A004737 (2 * n + 1)).toNat 2

end

end A335262.P4951549192921773125

namespace A335262

/-- `C(A004737(2*n+1), 2)` -/
def P4951549192921773125.Spec : Prop :=
  ∀ n, (P4951549192921773125.a n : ℤ) = A335262 n

end A335262

/-! ## A335262.P12579703904404531402

`A161680(A004737(2*n+1))`
-/

namespace A335262.P12579703904404531402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 (A004737 (2 * n + 1)).toNat

end

end A335262.P12579703904404531402

namespace A335262

/-- `A161680(A004737(2*n+1))` -/
def P12579703904404531402.Spec : Prop :=
  ∀ n, P12579703904404531402.a n = A335262 n

end A335262

/-! ## A335262.P17289968368417951180

`A000217(A004737(2*n+1)-1)`
-/

namespace A335262.P17289968368417951180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A004737 (2 * n + 1) - 1).toNat

end

end A335262.P17289968368417951180

namespace A335262

/-- `A000217(A004737(2*n+1)-1)` -/
def P17289968368417951180.Spec : Prop :=
  ∀ n, P17289968368417951180.a n = A335262 n

end A335262

/-! ## A335262.P742628163740821056

`C(A181940(n)+1, 2)`
-/

namespace A335262.P742628163740821056
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A181940 n + 1).toNat 2

end

end A335262.P742628163740821056

namespace A335262

/-- `C(A181940(n)+1, 2)` -/
def P742628163740821056.Spec : Prop :=
  ∀ n, (P742628163740821056.a n : ℤ) = A335262 n

end A335262

/-! ## A335262.P10126840732960165086

`A000217(A181940(n))`
-/

namespace A335262.P10126840732960165086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A181940 n).toNat

end

end A335262.P10126840732960165086

namespace A335262

/-- `A000217(A181940(n))` -/
def P10126840732960165086.Spec : Prop :=
  ∀ n, P10126840732960165086.a n = A335262 n

end A335262

/-! ## A335262.P6621419754244817976

`A112367(2*A181940(n)²)`
-/

namespace A335262.P6621419754244817976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112367 (2 * A181940 n ^ 2).toNat

end

end A335262.P6621419754244817976

namespace A335262

/-- `A112367(2*A181940(n)²)` -/
def P6621419754244817976.Spec : Prop :=
  ∀ n, P6621419754244817976.a n = A335262 n

end A335262

/-! ## A335262.P1479805603135274412

`A112367(A181940(n)+A057944(n))`
-/

namespace A335262.P1479805603135274412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112367 (A181940 n + A057944 n).toNat

end

end A335262.P1479805603135274412

namespace A335262

/-- `A112367(A181940(n)+A057944(n))` -/
def P1479805603135274412.Spec : Prop :=
  ∀ n, P1479805603135274412.a n = A335262 n

end A335262

/-!
# A335265: a(n) = Denominator(-4*n^2*Zeta(1 - n)^2*(1 - 2^n)) for n >= 1, a(0) = 1.

The programs for A335265, there is no canonical definition to state claims against.
-/

/-! ## A335265.P2609642548029661088

`gcd(A100650(n), A141459(n))`
-/

namespace A335265.P2609642548029661088
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A100650 n) (A141459 n)

end

end A335265.P2609642548029661088

/-! ## A335265.P3743657880630589575

`A176289(n)/gcd(n, A027642(n))`
-/

namespace A335265.P3743657880630589575
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A176289 n : ℚ) / (Int.gcd (n : ℤ) (A027642 n) : ℚ)

end

end A335265.P3743657880630589575

/-! ## A335265.P10875624316039454319

`A141056(n)/gcd(2*n, A141056(n))`
-/

namespace A335265.P10875624316039454319
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A141056 n : ℚ) / (Int.gcd (2 * n : ℤ) (A141056 n) : ℚ)

end

end A335265.P10875624316039454319

/-! ## A335265.P9770121046542532760

`A306821(n)/gcd(2*n², A306821(n))`
-/

namespace A335265.P9770121046542532760
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A306821 n : ℚ) / (Int.gcd (2 * n ^ 2 : ℤ) (A306821 n) : ℚ)

end

end A335265.P9770121046542532760

/-! ## A335265.P5482517189167982757

`A027642(n)/A225821(C(3, n²)+n)`
-/

namespace A335265.P5482517189167982757
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027642 n : ℚ) / (A225821 (Nat.choose 3 (n ^ 2) + n) : ℚ)

end

end A335265.P5482517189167982757

/-!
# A335266: Numbers k such that b(n) = 2*b(n - 1) + k is prime, where b(0) = 1 and k is the smallest positive number.

The programs for A335266, there is no canonical definition to state claims against.
-/

/-! ## A335266.P17792322106210932863

`Δ[A110930(n+1)]-A110930(n+1)`
-/

namespace A335266.P17792322106210932863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110930 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A110930 (n + 1)

end

end A335266.P17792322106210932863

/-! ## A335266.P17484440336524814395

`A065545(n+1)-2*A110930(n+1)`
-/

namespace A335266.P17484440336524814395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065545 (n + 1) - 2 * A110930 (n + 1)

end

end A335266.P17484440336524814395

/-! ## A335266.P9495808236021426946

`A110930(n+2)-2*A110930(n+1)`
-/

namespace A335266.P9495808236021426946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110930 (n + 2) - 2 * A110930 (n + 1)

end

end A335266.P9495808236021426946

/-! ## A335266.P2837184131335580613

`A093178(A065545(n+1)%A110930(n+1))`
-/

namespace A335266.P2837184131335580613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093178 (Int.tmod (A065545 (n + 1)) (A110930 (n + 1))).toNat

end

end A335266.P2837184131335580613

/-! ## A335266.P15477194731405945799

`A257088(Δ[A110930(n+1)]%A110930(n+1))`
-/

namespace A335266.P15477194731405945799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110930 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257088 (Int.tmod (f1 (n + 1) - f1 n) (A110930 (n + 1))).toNat

end

end A335266.P15477194731405945799

/-! ## A335266.P8842895233108620610

`A093178(A065545(n+1)-A110930(n+1)-A110930(n+1))`
-/

namespace A335266.P8842895233108620610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093178 (A065545 (n + 1) - A110930 (n + 1) - A110930 (n + 1)).toNat

end

end A335266.P8842895233108620610

/-!
# A335267: Composite numbers whose harmonic mean of their divisors that are larger than 1 is an integer.

The programs for A335267, there is no canonical definition to state claims against.
-/

/-! ## A335267.P16582665199355851429

`A320142(A288804(n))`
-/

namespace A335267.P16582665199355851429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320142 (A288804 n).toNat

end

end A335267.P16582665199355851429

/-! ## A335267.P14284202513103856730

`A320142(or(A006882(n), A008279(3*n+2)))`
-/

namespace A335267.P14284202513103856730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320142 (Int.lor (A006882 n) (A008279 (3 * n + 2))).toNat

end

end A335267.P14284202513103856730

/-!
# A335272: For m to be a term there must exist three Euclidean divisions of m by d, d', and d", m = d*q + r = d'*q' + r' = d"*q" + r", such that (r, q, d), (r', d', q'), and (q", r", d") are three geometric progressions.

The programs for A335272, there is no canonical definition to state claims against.
-/

/-! ## A335272.P4173516028313758

`∩[A127629(n+1), n²+n]`
-/

namespace A335272.P4173516028313758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127629 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 + n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A335272.P4173516028313758

/-! ## A335272.P4733857441779131248

`∩[n*(n+1), A127629(n+4)]`
-/

namespace A335272.P4733857441779131248
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127629 (n + 4)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A335272.P4733857441779131248

/-!
# A335273: Even side of primitive triples for integer-sided triangles that have two perpendicular medians, the triples being ordered by increasing perimeter.

The programs for A335273, there is no canonical definition to state claims against.
-/

/-! ## A335273.P11106843353066462329

`A335035(n+1)-(A335418(n+1)+A335036(n+1))`
-/

namespace A335273.P11106843353066462329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335035 (n + 1) - (A335418 (n + 1) + A335036 (n + 1))

end

end A335273.P11106843353066462329

/-! ## A335273.P12375411763889887979

`A335347(n+1)+A335348(n+1)-A335418(n+1)`
-/

namespace A335273.P12375411763889887979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335347 (n + 1) + (A335348 (n + 1) - A335418 (n + 1))

end

end A335273.P12375411763889887979

/-! ## A335273.P7926511551785760612

`filter[A335034(n+1), A059841(#)]`
-/

namespace A335273.P7926511551785760612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335034 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A059841 (f1 j).toNat = 1) n)

end

end A335273.P7926511551785760612

/-! ## A335273.P10972726646004056506

`filter[A335034(n+1), A120325(#)]`
-/

namespace A335273.P10972726646004056506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335034 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A120325 (f1 j).toNat = 1) n)

end

end A335273.P10972726646004056506

/-! ## A335273.P9300190620106735295

`filter[A335034(n+1), A135528(#)]`
-/

namespace A335273.P9300190620106735295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335034 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A135528 (f1 j).toNat = 1) n)

end

end A335273.P9300190620106735295

/-!
# A335274: a(n) = 2*a(n-1) + a(n-3), where a(0) = 0, a(1) = 1, a(2) = 4.

The programs for A335274, the canonical program `A335274.P16387569500275717687` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A335274 has offset 0).

The definition of A335274 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*a(n-1)+a(n-3)` (program `A335274.P16387569500275717687`, by `A335274.P16387569500275717687.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A335274.P16387569500275717687

`2*a(n-1)+a(n-3)` with `a(0)=0, a(1)=1, a(2)=4`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A335274

/-- `2*a(n-1)+a(n-3)` -/
def P16387569500275717687.Spec : Prop :=
  ∀ n, (P16387569500275717687.a n : ℤ) = A335274 n

theorem P16387569500275717687.correct : P16387569500275717687.Spec := by
  intro n
  simp only [A335274]

end A335274

/-! ## A335274.P4928192708830904765

`a(n-1)+a(n-1)+a(n-3)` with `a(0)=0, a(1)=1, a(2)=4`
-/

namespace A335274.P4928192708830904765
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 4] fun n a =>
  a (n - 1) + (a (n - 1) + a (n - 3))

end

end A335274.P4928192708830904765

namespace A335274

/-- `a(n-1)+a(n-1)+a(n-3)` -/
def P4928192708830904765.Spec : Prop :=
  ∀ n, (P4928192708830904765.a n : ℤ) = A335274 n

theorem P4928192708830904765.correct : P4928192708830904765.Spec := by
  intro n
  simp only [A335274, Nat.add_sub_cancel, A335274.P4928192708830904765.a, A335274.P16387569500275717687.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A335274

/-! ## A335274.P18136027016958379019

`3*a(n-1)-(a(n-1)-a(n-3))` with `a(0)=0, a(1)=1, a(2)=4`
-/

namespace A335274.P18136027016958379019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 4] fun n a =>
  3 * a (n - 1) - (a (n - 1) - a (n - 3))

end

end A335274.P18136027016958379019

namespace A335274

/-- `3*a(n-1)-(a(n-1)-a(n-3))` -/
def P18136027016958379019.Spec : Prop :=
  ∀ n, P18136027016958379019.a n = A335274 n

end A335274

/-! ## A335274.P13353226700914784111

`A052980(n+1)+A214260(n)-A008998(n)`
-/

namespace A335274.P13353226700914784111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052980 (n + 1) + (A214260 n - A008998 n)

end

end A335274.P13353226700914784111

namespace A335274

/-- `A052980(n+1)+A214260(n)-A008998(n)` -/
def P13353226700914784111.Spec : Prop :=
  ∀ n, P13353226700914784111.a n = A335274 n

end A335274

/-! ## A335274.P9601893910505154322

`A183304(n+1)-A285184(n)`
-/

namespace A335274.P9601893910505154322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183304 (n + 1) - A285184 n

end

end A335274.P9601893910505154322

namespace A335274

/-- `A183304(n+1)-A285184(n)` -/
def P9601893910505154322.Spec : Prop :=
  ∀ n, P9601893910505154322.a n = A335274 n

end A335274

/-! ## A335274.P16598750992706258104

`A332647(n+1)-(A190512(n)+A052980(n))`
-/

namespace A335274.P16598750992706258104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332647 (n + 1) - (A190512 n + A052980 n)

end

end A335274.P16598750992706258104

namespace A335274

/-- `A332647(n+1)-(A190512(n)+A052980(n))` -/
def P16598750992706258104.Spec : Prop :=
  ∀ n, P16598750992706258104.a n = A335274 n

end A335274

/-! ## A335274.P17467564584829631122

`A332647(n+1)-(A052980(n+1)+A052980(n))`
-/

namespace A335274.P17467564584829631122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332647 (n + 1) - (A052980 (n + 1) + A052980 n)

end

end A335274.P17467564584829631122

namespace A335274

/-- `A332647(n+1)-(A052980(n+1)+A052980(n))` -/
def P17467564584829631122.Spec : Prop :=
  ∀ n, P17467564584829631122.a n = A335274 n

end A335274

/-! ## A335274.P1233868867791911388

`A193641(n+1)+A214260(n)-A214260(n+1)`
-/

namespace A335274.P1233868867791911388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193641 (n + 1) + (A214260 n - A214260 (n + 1))

end

end A335274.P1233868867791911388

namespace A335274

/-- `A193641(n+1)+A214260(n)-A214260(n+1)` -/
def P1233868867791911388.Spec : Prop :=
  ∀ n, P1233868867791911388.a n = A335274 n

end A335274

/-! ## A335274.P13858789760651472179

`A020708(n)%A052910(n+1)`
-/

namespace A335274.P13858789760651472179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A020708 n) (A052910 (n + 1))

end

end A335274.P13858789760651472179

namespace A335274

/-- `A020708(n)%A052910(n+1)` -/
def P13858789760651472179.Spec : Prop :=
  ∀ n, P13858789760651472179.a n = A335274 n

end A335274

/-! ## A335274.P15484470263569755325

`Δ[A052980(n)+A008998(n)]-A008998(n)`
-/

namespace A335274.P15484470263569755325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052980 n + A008998 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A008998 n

end

end A335274.P15484470263569755325

namespace A335274

/-- `Δ[A052980(n)+A008998(n)]-A008998(n)` -/
def P15484470263569755325.Spec : Prop :=
  ∀ n, P15484470263569755325.a n = A335274 n

end A335274

/-! ## A335274.P1690432759579021199

`Δ[A019489(n)-A232059(n+1)]`
-/

namespace A335274.P1690432759579021199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019489 n - A232059 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A335274.P1690432759579021199

namespace A335274

/-- `Δ[A019489(n)-A232059(n+1)]` -/
def P1690432759579021199.Spec : Prop :=
  ∀ n, P1690432759579021199.a n = A335274 n

end A335274

/-! ## A335274.P4032608825881214259

`A020708(n)-Δ[A232059(n+1)]`
-/

namespace A335274.P4032608825881214259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232059 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020708 n - (f1 (n + 1) - f1 n)

end

end A335274.P4032608825881214259

namespace A335274

/-- `A020708(n)-Δ[A232059(n+1)]` -/
def P4032608825881214259.Spec : Prop :=
  ∀ n, P4032608825881214259.a n = A335274 n

end A335274

/-! ## A335274.P7069270524913333289

`Δ[A019489(n)-2*A193641(n+1)]`
-/

namespace A335274.P7069270524913333289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019489 n - 2 * A193641 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A335274.P7069270524913333289

namespace A335274

/-- `Δ[A019489(n)-2*A193641(n+1)]` -/
def P7069270524913333289.Spec : Prop :=
  ∀ n, P7069270524913333289.a n = A335274 n

end A335274

/-!
# A335275: 

The programs for A335275, there is no canonical definition to state claims against.
-/

/-! ## A335275.P9375627019983178434

`eq[1, A056191(n+1)]+1`
-/

namespace A335275.P9375627019983178434
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056191 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A335275.P9375627019983178434

/-! ## A335275.P1694583001456866046

`lt[A295663(n+1), 1]+1`
-/

namespace A335275.P1694583001456866046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295663 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A335275.P1694583001456866046

/-! ## A335275.P14392585859773085447

`record[A007913(n+1)*A056623(n+1)]`
-/

namespace A335275.P14392585859773085447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (n + 1) * A056623 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A335275.P14392585859773085447

/-! ## A335275.P3160392795626023969

`record[A056192(n+1)]`
-/

namespace A335275.P3160392795626023969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056192 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A335275.P3160392795626023969

/-! ## A335275.P15777128762549518079

`eq[1, A055229(n+1)]+1`
-/

namespace A335275.P15777128762549518079
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055229 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A335275.P15777128762549518079

/-! ## A335275.P1012735236214598823

`record[A000027(n+1)/A055229(n+1)]`
-/

namespace A335275.P1012735236214598823
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000027 (n + 1) : ℚ) / (A055229 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A335275.P1012735236214598823

/-! ## A335275.P11369462606373341244

`A220218(n+1)%A001550(n)`
-/

namespace A335275.P11369462606373341244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A220218 (n + 1)) (A001550 n)

end

end A335275.P11369462606373341244

/-! ## A335275.P10024892574298826410

`and(A018886(n+1), A220218(n+1))`
-/

namespace A335275.P10024892574298826410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A018886 (n + 1)) (A220218 (n + 1))

end

end A335275.P10024892574298826410

/-! ## A335275.P2640902850183544531

`and(A164291(n+2), A220218(n+1))`
-/

namespace A335275.P2640902850183544531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A164291 (n + 2)) (A220218 (n + 1))

end

end A335275.P2640902850183544531

/-! ## A335275.P3913183159390747210

`and(A060160(n+1), A220218(n+1))`
-/

namespace A335275.P3913183159390747210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A060160 (n + 1)) (A220218 (n + 1))

end

end A335275.P3913183159390747210

/-! ## A335275.P7933644974309731547

`and(A220218(n+1), A381707(n+1))`
-/

namespace A335275.P7933644974309731547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A220218 (n + 1)) (A381707 (n + 1))

end

end A335275.P7933644974309731547

/-! ## A335275.P219040251324131365

`and(A086827(n+1), A220218(n+1))`
-/

namespace A335275.P219040251324131365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A086827 (n + 1)) (A220218 (n + 1))

end

end A335275.P219040251324131365

/-!
# A335276: Perimeters of nonprimitive Heronian triangles whose smallest side length is a square.

The programs for A335276, there is no canonical definition to state claims against.
-/

/-! ## A335276.P8882074501008686898

`A094540(A059533(n+5))*A094564(n+1)`
-/

namespace A335276.P8882074501008686898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094540 (A059533 (n + 5)).toNat * A094564 (n + 1)

end

end A335276.P8882074501008686898

/-!
# A335277: First index of strictly increasing prime quartets.

The programs for A335277, there is no canonical definition to state claims against.
-/

/-! ## A335277.P1029326397268610208

`A000720(A054819(n+1))`
-/

namespace A335277.P1029326397268610208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A054819 (n + 1)).toNat

end

end A335277.P1029326397268610208

/-! ## A335277.P14725798499706782600

`A033270(A054820(n+1))`
-/

namespace A335277.P14725798499706782600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033270 (A054820 (n + 1)).toNat

end

end A335277.P14725798499706782600

/-! ## A335277.P7624537734611169267

`A082513(A054821(n+1))`
-/

namespace A335277.P7624537734611169267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082513 (A054821 (n + 1)).toNat

end

end A335277.P7624537734611169267

/-! ## A335277.P11194583164462491212

`A003963(p?[A054819(n+1)])`
-/

namespace A335277.P11194583164462491212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054819 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A335277.P11194583164462491212

/-! ## A335277.P3459891149887811198

`A026233(p?[A054819(n+1)])`
-/

namespace A335277.P3459891149887811198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054819 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026233 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A335277.P3459891149887811198

/-! ## A335277.P1432791831748756998

`A026238(p?[A054819(n+1)])`
-/

namespace A335277.P1432791831748756998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054819 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026238 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A335277.P1432791831748756998

/-! ## A335277.P4018572600078028663

`A055396(p?[A054819(n+1)])`
-/

namespace A335277.P4018572600078028663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054819 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A335277.P4018572600078028663

/-! ## A335277.P11010105756248516033

`A079067(p?[A054820(n+1)])`
-/

namespace A335277.P11010105756248516033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054820 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079067 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A335277.P11010105756248516033

/-! ## A335277.P5799461526932747120

`A230980(A054819(n+1)+1)`
-/

namespace A335277.P5799461526932747120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 (A054819 (n + 1) + 1).toNat

end

end A335277.P5799461526932747120

/-! ## A335277.P9164448701386590360

`A000720(A054820(n+1)-1)`
-/

namespace A335277.P9164448701386590360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A054820 (n + 1) - 1).toNat

end

end A335277.P9164448701386590360

/-!
# A335278: First index of strictly decreasing prime quartets.

The programs for A335278, there is no canonical definition to state claims against.
-/

/-! ## A335278.P335067466477827738

`A000720(A054804(n+1))`
-/

namespace A335278.P335067466477827738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A054804 (n + 1)).toNat

end

end A335278.P335067466477827738

/-! ## A335278.P11606113767096176432

`A033270(A054805(n+1))`
-/

namespace A335278.P11606113767096176432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033270 (A054805 (n + 1)).toNat

end

end A335278.P11606113767096176432

/-! ## A335278.P17629876854829525233

`A082513(A054806(n+1))`
-/

namespace A335278.P17629876854829525233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082513 (A054806 (n + 1)).toNat

end

end A335278.P17629876854829525233

/-! ## A335278.P1418728653713889783

`A003963(p?[A054804(n+1)])`
-/

namespace A335278.P1418728653713889783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054804 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A335278.P1418728653713889783

/-! ## A335278.P16272243514963306635

`A026233(p?[A054804(n+1)])`
-/

namespace A335278.P16272243514963306635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054804 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026233 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A335278.P16272243514963306635

/-! ## A335278.P9131652398630691267

`A026238(p?[A054804(n+1)])`
-/

namespace A335278.P9131652398630691267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054804 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026238 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A335278.P9131652398630691267

/-! ## A335278.P6556462595378923519

`A049084(p?[A054804(n+1)])`
-/

namespace A335278.P6556462595378923519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054804 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A335278.P6556462595378923519

/-! ## A335278.P17071654137903639801

`A055396(p?[A054804(n+1)])`
-/

namespace A335278.P17071654137903639801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054804 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A335278.P17071654137903639801

/-! ## A335278.P3258227280366849322

`A061395(p?[A054804(n+1)])`
-/

namespace A335278.P3258227280366849322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054804 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A335278.P3258227280366849322

/-! ## A335278.P6923582110011701065

`A079067(p?[A054805(n+1)])`
-/

namespace A335278.P6923582110011701065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054805 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079067 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A335278.P6923582110011701065

/-!
# A335279: Positions of first appearances in A124771 = number of distinct contiguous subsequences of compositions in standard order.

The programs for A335279, there is no canonical definition to state claims against.
-/

/-! ## A335279.P9481915309994302104

`or(A004525(n), A320847(A266287(n)))`
-/

namespace A335279.P9481915309994302104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A004525 n) (A320847 (A266287 n).toNat)

end

end A335279.P9481915309994302104

/-! ## A335279.P917437854066068717

`or(A031878(n+1), A106486(A242531(n+1)))`
-/

namespace A335279.P917437854066068717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A031878 (n + 1)) (A106486 (A242531 (n + 1)).toNat)

end

end A335279.P917437854066068717

/-! ## A335279.P7881215046338354659

`record[A124815(n+1)-A092081(n)]`
-/

namespace A335279.P7881215046338354659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124815 (n + 1) - A092081 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A335279.P7881215046338354659

/-! ## A335279.P11098884666565248419

`record[A124815(n+1)-A125105(n+1)]`
-/

namespace A335279.P11098884666565248419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124815 (n + 1) - A125105 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A335279.P11098884666565248419

/-! ## A335279.P8377985725611038046

`A121900(A078838(n+1))`
-/

namespace A335279.P8377985725611038046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121900 (A078838 (n + 1)).toNat

end

end A335279.P8377985725611038046

/-!
# A335280: Lexicographically earliest sequence of distinct positive terms whose Recamán transform has only distinct values.

The programs for A335280, there is no canonical definition to state claims against.
-/

/-! ## A335280.P5940621076192141045

`abs(A118201(n+1)-A118201(n))`
-/

namespace A335280.P5940621076192141045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A118201 (n + 1) - A118201 n|

end

end A335280.P5940621076192141045

/-! ## A335280.P4102579474721723730

`abs(Δ[A118201(n)])`
-/

namespace A335280.P4102579474721723730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118201 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A335280.P4102579474721723730

/-! ## A335280.P1722923614675803361

`gcd(Δ[A118201(n)], A000038(n))`
-/

namespace A335280.P1722923614675803361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118201 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (f1 (n + 1) - f1 n) (A000038 n)

end

end A335280.P1722923614675803361

/-! ## A335280.P17763265689150365814

`∑{d}[Δ[A118201(n)], A000010(#)]`
-/

namespace A335280.P17763265689150365814
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118201 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A335280.P17763265689150365814

/-! ## A335280.P13998849353828869242

`lcm(Δ[A118201(n)], A008836(n+1))`
-/

namespace A335280.P13998849353828869242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118201 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (f1 (n + 1) - f1 n) (A008836 (n + 1))

end

end A335280.P13998849353828869242

/-! ## A335280.P15431658229663125275

`A000196(Δ[A118201(n)]²)`
-/

namespace A335280.P15431658229663125275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118201 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 ((f1 (n + 1) - f1 n) ^ 2).toNat

end

end A335280.P15431658229663125275

/-!
# A335281: Perimeters of nonprimitive Heronian triangles whose middle side length is a square.

The programs for A335281, there is no canonical definition to state claims against.
-/

/-! ## A335281.P12781413132507259298

`A362669(A250292(n+2))`
-/

namespace A335281.P12781413132507259298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362669 (A250292 (n + 2)).toNat

end

end A335281.P12781413132507259298

/-!
# A335282: Lexicographically earliest strictly increasing sequence of positive integers whose Recamán transform has only distinct values.

The programs for A335282, there is no canonical definition to state claims against.
-/

/-! ## A335282.P17616290347405405626

`∑[∏{e}[A318679(A167749(n)+1), #+1]]`
-/

namespace A335282.P17616290347405405626
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318679 (A167749 n + 1).toNat

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, (Nat.factorization (f2 n).natAbs p + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A335282.P17616290347405405626

/-! ## A335282.P6973124775783638089

`lt[A065507(A051742(3*n+2)), A326352(2*n)]`
-/

namespace A335282.P6973124775783638089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065507 (A051742 (3 * n + 2)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326352 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A335282.P6973124775783638089

/-! ## A335282.P4016300706931348819

`lt[A346098(A299777(n+1)), A340962(n)]`
-/

namespace A335282.P4016300706931348819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346098 (A299777 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340962 (n + 12)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A335282.P4016300706931348819

/-! ## A335282.P7504734119345248261

`lt[A346098(A299777(n+1)), A008837(n+1)]`
-/

namespace A335282.P7504734119345248261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346098 (A299777 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008837 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A335282.P7504734119345248261

/-! ## A335282.P16588865596488027734

`lt[A141289(n+1), log(A161645(3*n+1))]`
-/

namespace A335282.P16588865596488027734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141289 (n + 1)

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.log (A161645 (3 * n + 1) : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A335282.P16588865596488027734

/-! ## A335282.P14965676290750033667

`∑[A105540(A216226(n)*A216278(n+1))]`
-/

namespace A335282.P14965676290750033667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105540 (A216226 n * A216278 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A335282.P14965676290750033667

/-! ## A335282.P6963490067052886056

`∑[A105556(A216226(n)*A216278(n+1))]`
-/

namespace A335282.P6963490067052886056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105556 (A216226 n * A216278 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A335282.P6963490067052886056

/-! ## A335282.P13476822409281485850

`∑[A133233(A156064(n)²)]`
-/

namespace A335282.P13476822409281485850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133233 (A156064 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A335282.P13476822409281485850

/-! ## A335282.P12767116443073863935

`∑[A026374(A007814(A008183(n)))]`
-/

namespace A335282.P12767116443073863935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026374 (A007814 (A008183 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A335282.P12767116443073863935

/-! ## A335282.P141095842704532361

`∑[A007318(A138618(A154435(n+3)))]`
-/

namespace A335282.P141095842704532361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A138618 (A154435 (n + 3)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A335282.P141095842704532361

/-!
# A335283: a(n) = 1 + Sum_{d|n, n/d odd, d < n} a(d).

The programs for A335283, there is no canonical definition to state claims against.
-/

/-! ## A335283.P3041399389639800206

`A067824((n+1)/2^val(n+1, 2))`
-/

namespace A335283.P3041399389639800206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067824 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ))).toNat

end

end A335283.P3041399389639800206

/-! ## A335283.P15721375617379003531

`A067824((n+1)/and(n+1, -(n+1)))`
-/

namespace A335283.P15721375617379003531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067824 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (Int.land (n + 1 : ℤ) (-(n + 1 : ℤ)) : ℚ))).toNat

end

end A335283.P15721375617379003531

/-! ## A335283.P10834236369674276281

`A335062(gcd(n+1, 3*(n+1)/and(n+1, -(n+1))))`
-/

namespace A335283.P10834236369674276281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335062 (Int.gcd (n + 1 : ℤ) (SequenceMachineLib.roundAway (3 * ((n + 1 : ℚ) / (Int.land (n + 1 : ℤ) (-(n + 1 : ℤ)) : ℚ)))))

end

end A335283.P10834236369674276281

/-! ## A335283.P14452063922784304564

`A067824(A000265(n+1))`
-/

namespace A335283.P14452063922784304564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067824 (A000265 (n + 1)).toNat

end

end A335283.P14452063922784304564

/-! ## A335283.P11328253225805669636

`A067824(A064989(n+1))`
-/

namespace A335283.P11328253225805669636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067824 (A064989 (n + 1)).toNat

end

end A335283.P11328253225805669636

/-! ## A335283.P5821619793105827063

`A067824(A153733(n)+1)`
-/

namespace A335283.P5821619793105827063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067824 (A153733 n + 1).toNat

end

end A335283.P5821619793105827063

/-! ## A335283.P13483038003061068304

`A067824(A348747(n+1))`
-/

namespace A335283.P13483038003061068304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067824 (A348747 (n + 1)).toNat

end

end A335283.P13483038003061068304

/-! ## A335283.P12646587986826452773

`A067824(A354092(n+1))`
-/

namespace A335283.P12646587986826452773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067824 (A354092 (n + 1)).toNat

end

end A335283.P12646587986826452773

/-! ## A335283.P6426034263964941546

`A067824(2*A025480(n)+1)`
-/

namespace A335283.P6426034263964941546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067824 (2 * A025480 n + 1).toNat

end

end A335283.P6426034263964941546

/-! ## A335283.P757808329772058650

`A335062(A000265(2*(n+1)))`
-/

namespace A335283.P757808329772058650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335062 (A000265 (2 * (n + 1))).toNat

end

end A335283.P757808329772058650

/-! ## A335283.P17192409339625430614

`A067824(A166466(n+1)/3)`
-/

namespace A335283.P17192409339625430614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067824 (SequenceMachineLib.roundAway ((A166466 (n + 1) : ℚ) / 3)).toNat

end

end A335283.P17192409339625430614

/-! ## A335283.P15073311137473467871

`A043529(n)*A378222(n+1)`
-/

namespace A335283.P15073311137473467871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043529 n * A378222 (n + 1)

end

end A335283.P15073311137473467871

/-! ## A335283.P7917799235821230351

`A067824(gcd(n+1, A166466(n+1)))`
-/

namespace A335283.P7917799235821230351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067824 (Int.gcd (n + 1 : ℤ) (A166466 (n + 1)))

end

end A335283.P7917799235821230351

/-! ## A335283.P1021998007471207415

`∑{d}[A000265(n+1), A002033(#-1)]`
-/

namespace A335283.P1021998007471207415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A002033 (d - 1)

end

end A335283.P1021998007471207415

/-! ## A335283.P16860784701646272419

`∑{d}[n+1, A035263(#)*A325144((n+1)/#)]`
-/

namespace A335283.P16860784701646272419
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A035263 d * A325144 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A335283.P16860784701646272419

/-! ## A335283.P16863261277292709426

`∑{d}[n+1, A059841(#-1)*A378222((n+1)/#)]`
-/

namespace A335283.P16863261277292709426
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A059841 (d - 1) * A378222 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A335283.P16863261277292709426

/-! ## A335283.P17678016286371427107

`A067824(A025480(n)+A025480(n)+1)`
-/

namespace A335283.P17678016286371427107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067824 (A025480 n + (A025480 n + 1)).toNat

end

end A335283.P17678016286371427107

/-! ## A335283.P10062011581775386029

`A067824(gcd(A166466(n+1), A270710(n)))`
-/

namespace A335283.P10062011581775386029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067824 (Int.gcd (A166466 (n + 1)) (A270710 n))

end

end A335283.P10062011581775386029

/-! ## A335283.P4609700219978180615

`A067824(A332819(n+1))`
-/

namespace A335283.P4609700219978180615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067824 (A332819 (n + 1)).toNat

end

end A335283.P4609700219978180615

/-!
# A335284: Numbers k > 1 such that, if p is the least prime dividing k, k is less than or equal to the product of all prime numbers up to (and including) p.

The programs for A335284, there is no canonical definition to state claims against.
-/

/-! ## A335284.P13287795820212063768

`record[A286942(n+2)]`
-/

namespace A335284.P13287795820212063768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286942 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A335284.P13287795820212063768

/-!
# A335285: a(n) is the greatest possible greatest part of any partition of n into prime parts.

The programs for A335285, the canonical program `A335285.P3875651009046137375` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A335285 has offset 2).

The definition of A335285 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A335285.P3875651009046137375

`A007917(xor(1, n-1)%(n+1)+2)`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A335285

/-- `A007917(xor(1, n-1)%(n+1)+2)` -/
def P3875651009046137375.Spec : Prop :=
  ∀ n, P3875651009046137375.a n = A335285 (n + 2)

theorem P3875651009046137375.correct : P3875651009046137375.Spec := by
  intro n
  simp only [A335285, Nat.add_sub_cancel]

end A335285

/-! ## A335285.P3368921035867240296

`A000040(A000720(A008836(n+1)^(n+1)+n+1))`
-/

namespace A335285.P3368921035867240296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A000720 (A008836 (n + 1) ^ (n + 1) + (n : ℤ) + 1).toNat).toNat

end

end A335285.P3368921035867240296

namespace A335285

/-- `A000040(A000720(A008836(n+1)^(n+1)+n+1))` -/
def P3368921035867240296.Spec : Prop :=
  ∀ n, P3368921035867240296.a n = A335285 (n + 2)

end A335285

/-! ## A335285.P9666715225508776246

`A000040(A000720(n+2)-and(n+1, A010051(n+1)))`
-/

namespace A335285.P9666715225508776246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A000720 (n + 2) - Int.land (n + 1 : ℤ) (A010051 (n + 1))).toNat

end

end A335285.P9666715225508776246

namespace A335285

/-- `A000040(A000720(n+2)-and(n+1, A010051(n+1)))` -/
def P9666715225508776246.Spec : Prop :=
  ∀ n, P9666715225508776246.a n = A335285 (n + 2)

end A335285

/-! ## A335285.P4786540971568714312

`A136548(A175028(n+2))`
-/

namespace A335285.P4786540971568714312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136548 (A175028 (n + 2)).toNat

end

end A335285.P4786540971568714312

namespace A335285

/-- `A136548(A175028(n+2))` -/
def P4786540971568714312.Spec : Prop :=
  ∀ n, P4786540971568714312.a n = A335285 (n + 2)

end A335285

/-! ## A335285.P9109619798534427509

`A136548(A010051(n+2)+A010051(n+2)+n+1)`
-/

namespace A335285.P9109619798534427509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136548 (A010051 (n + 2) + (A010051 (n + 2) + (n : ℤ)) + 1).toNat

end

end A335285.P9109619798534427509

namespace A335285

/-- `A136548(A010051(n+2)+A010051(n+2)+n+1)` -/
def P9109619798534427509.Spec : Prop :=
  ∀ n, P9109619798534427509.a n = A335285 (n + 2)

end A335285

/-! ## A335285.P5712395719116565665

`A139421(A086970(n)+1)`
-/

namespace A335285.P5712395719116565665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139421 (A086970 n + 1).toNat

end

end A335285.P5712395719116565665

namespace A335285

/-- `A139421(A086970(n)+1)` -/
def P5712395719116565665.Spec : Prop :=
  ∀ n, P5712395719116565665.a n = A335285 (n + 2)

end A335285

/-! ## A335285.P7598383726151120477

`A139421(2*(A086970(n)-n))`
-/

namespace A335285.P7598383726151120477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139421 (2 * (A086970 n - (n : ℤ))).toNat

end

end A335285.P7598383726151120477

namespace A335285

/-- `A139421(2*(A086970(n)-n))` -/
def P7598383726151120477.Spec : Prop :=
  ∀ n, P7598383726151120477.a n = A335285 (n + 2)

end A335285

/-! ## A335285.P12910110083820364223

`A006530((n+2)*A136548(n+1))`
-/

namespace A335285.P12910110083820364223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 ((n + 2 : ℤ) * A136548 (n + 1)).toNat

end

end A335285.P12910110083820364223

namespace A335285

/-- `A006530((n+2)*A136548(n+1))` -/
def P12910110083820364223.Spec : Prop :=
  ∀ n, P12910110083820364223.a n = A335285 (n + 2)

end A335285

/-! ## A335285.P7009788213456760435

`A006530((n+2)*A056240(n+2))`
-/

namespace A335285.P7009788213456760435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 ((n + 2 : ℤ) * A056240 (n + 2)).toNat

end

end A335285.P7009788213456760435

namespace A335285

/-- `A006530((n+2)*A056240(n+2))` -/
def P7009788213456760435.Spec : Prop :=
  ∀ n, P7009788213456760435.a n = A335285 (n + 2)

end A335285

/-!
# A335286: n is the a(n)-th positive integer having its sequence of exponents in canonical prime factorization.

The programs for A335286, there is no canonical definition to state claims against.
-/

/-! ## A335286.P542918661942504004

`A064839(∏{p}[n+1, #]^(val(n+1, 2)+1))`
-/

namespace A335286.P542918661942504004
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064839 ((∏ p ∈ Nat.primeFactors (f1 n), p) ^ (SequenceMachineLib.valuation (n + 1) 2 + 1))

end

end A335286.P542918661942504004

/-! ## A335286.P5817663321159397297

`A064839((n+1)*A069799(n+1))`
-/

namespace A335286.P5817663321159397297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064839 ((n + 1 : ℤ) * A069799 (n + 1)).toNat

end

end A335286.P5817663321159397297

/-! ## A335286.P10071628785022833786

`A064839((n+1)*A105119(n+1))`
-/

namespace A335286.P10071628785022833786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064839 ((n + 1 : ℤ) * A105119 (n + 1)).toNat

end

end A335286.P10071628785022833786

/-! ## A335286.P17535161019095323090

`A064839((n+1)*A295417(n+1))`
-/

namespace A335286.P17535161019095323090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064839 ((n + 1 : ℤ) * A295417 (n + 1)).toNat

end

end A335286.P17535161019095323090

/-! ## A335286.P17067775543265770836

`A064839(∏{p}[n+1, #]^A001511(n+1))`
-/

namespace A335286.P17067775543265770836
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064839 (SequenceMachineLib.roundAway (((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) ^ (A001511 (n + 1) : ℤ))).toNat

end

end A335286.P17067775543265770836

/-!
# A335287: Balanced numbers (A020492) k with a record value of sigma(k)/phi(k).

The programs for A335287, there is no canonical definition to state claims against.
-/

/-! ## A335287.P8798230202798191732

`A055234(record[A023897(n+1)])`
-/

namespace A335287.P8798230202798191732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023897 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055234 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A335287.P8798230202798191732

/-! ## A335287.P16138831738210891275

`A055234(record[A147569(n+1)/A147570(n+1)])`
-/

namespace A335287.P16138831738210891275
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A147569 (n + 1) : ℚ) / (A147570 (n + 1) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055234 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A335287.P16138831738210891275

/-! ## A335287.P9469759729933324383

`∩[A147806(2*(n+1)), A020492(A147807(n+1))]`
-/

namespace A335287.P9469759729933324383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147806 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020492 (A147807 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A335287.P9469759729933324383

/-!
# A335288: Unitary balanced numbers: numbers k such that uphi(k) (A047994) divides usigma(k) (A034448).

The programs for A335288, there is no canonical definition to state claims against.
-/

/-! ## A335288.P17310884499286660454

`eq[A047994(n+1), A323406(n+1)]+1`
-/

namespace A335288.P17310884499286660454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047994 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323406 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A335288.P17310884499286660454

/-! ## A335288.P5869109404160127702

`lt[A034448(n+1)%A047994(n+1), 2]+1`
-/

namespace A335288.P5869109404160127702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A034448 (n + 1)) (A047994 (n + 1))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A335288.P5869109404160127702

/-!
# A335291: Numbers m such that the delta(m) = abs(h(m+1) - h(m)) is smaller than delta(k) for all k < m, where h(m) is the harmonic mean of the divisors of m.

The programs for A335291, there is no canonical definition to state claims against.
-/

/-! ## A335291.P14428350827296240545

`∏{p}[A124529(n), A342499(#)]`
-/

namespace A335291.P14428350827296240545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124529 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A342499 p

end

end A335291.P14428350827296240545

/-!
# A335294: a(n) = pi(n) - pi(Sum_{k=1..n-1} a(k)) with a(1) = 1, where pi() is the prime counting function A000720.

The programs for A335294, the canonical program `A335294.P7381510664905925885` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A335294 has offset 1).

The definition of A335294 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A335294.P7381510664905925885

`1-Δ[A335660(C(n, n²)+n)]`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A335294

/-- `1-Δ[A335660(C(n, n²)+n)]` -/
def P7381510664905925885.Spec : Prop :=
  ∀ n, P7381510664905925885.a n = A335294 (n + 1)

theorem P7381510664905925885.correct : P7381510664905925885.Spec := by
  intro n
  simp only [A335294, Nat.add_sub_cancel]

end A335294

/-! ## A335294.P2993128330555449129

`1-Δ[A335660(A028310(n))]`
-/

namespace A335294.P2993128330555449129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335660 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (f1 (n + 1) - f1 n)

end

end A335294.P2993128330555449129

namespace A335294

/-- `1-Δ[A335660(A028310(n))]` -/
def P2993128330555449129.Spec : Prop :=
  ∀ n, P2993128330555449129.a n = A335294 (n + 1)

end A335294

/-! ## A335294.P7981458308245430599

`1-Δ[A335660(A000038(n)+n)]`
-/

namespace A335294.P7981458308245430599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335660 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (f1 (n + 1) - f1 n)

end

end A335294.P7981458308245430599

namespace A335294

/-- `1-Δ[A335660(A000038(n)+n)]` -/
def P7981458308245430599.Spec : Prop :=
  ∀ n, P7981458308245430599.a n = A335294 (n + 1)

end A335294

/-! ## A335294.P4621660057882808420

`A335660(A028310(n))+1-A335660(n+1)`
-/

namespace A335294.P4621660057882808420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335660 (A028310 n).toNat + (1 - A335660 (n + 1))

end

end A335294.P4621660057882808420

namespace A335294

/-- `A335660(A028310(n))+1-A335660(n+1)` -/
def P4621660057882808420.Spec : Prop :=
  ∀ n, P4621660057882808420.a n = A335294 (n + 1)

end A335294

/-! ## A335294.P3341190690797904850

`A335660(A233583(n+1))+1-A335660(n+1)`
-/

namespace A335294.P3341190690797904850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335660 (A233583 (n + 1)).toNat + (1 - A335660 (n + 1))

end

end A335294.P3341190690797904850

namespace A335294

/-- `A335660(A233583(n+1))+1-A335660(n+1)` -/
def P3341190690797904850.Spec : Prop :=
  ∀ n, P3341190690797904850.a n = A335294 (n + 1)

end A335294

/-! ## A335294.P3433870882764097887

`A335660(A233583(n+1))+A024000(A335660(n+1))`
-/

namespace A335294.P3433870882764097887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335660 (A233583 (n + 1)).toNat + A024000 (A335660 (n + 1)).toNat

end

end A335294.P3433870882764097887

namespace A335294

/-- `A335660(A233583(n+1))+A024000(A335660(n+1))` -/
def P3433870882764097887.Spec : Prop :=
  ∀ n, P3433870882764097887.a n = A335294 (n + 1)

end A335294

/-! ## A335294.P7760013878408559191

`1-Δ[A335660(A233583(n+1))]`
-/

namespace A335294.P7760013878408559191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335660 (A233583 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (f1 (n + 1) - f1 n)

end

end A335294.P7760013878408559191

namespace A335294

/-- `1-Δ[A335660(A233583(n+1))]` -/
def P7760013878408559191.Spec : Prop :=
  ∀ n, P7760013878408559191.a n = A335294 (n + 1)

end A335294

/-!
# A335295: Perimeters of nonprimitive Heronian triangles whose largest side length is a square.

The programs for A335295, there is no canonical definition to state claims against.
-/

/-! ## A335295.P2765028772392291829

`∩[A335104(n+1), A344882(n+1)]`
-/

namespace A335295.P2765028772392291829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335104 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344882 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A335295.P2765028772392291829

/-!
# A335296: Least index a(n) such that the sequences b(n,m) from A334539 are purely periodic after a(n).

The programs for A335296, there is no canonical definition to state claims against.
-/

/-! ## A335296.P4917522768770863371

`A228849(A258673(n+1)+1)`
-/

namespace A335296.P4917522768770863371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228849 (A258673 (n + 1) + 1).toNat

end

end A335296.P4917522768770863371

/-! ## A335296.P8853297195684170983

`A374638(A146036(n+1)+1)`
-/

namespace A335296.P8853297195684170983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374638 (A146036 (n + 1) + 1).toNat

end

end A335296.P8853297195684170983

/-! ## A335296.P1402656347829939337

`A080000(ceil(xor(1, 7*n)/4)%A202592(n))`
-/

namespace A335296.P1402656347829939337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080000 (Int.tmod ⌈(Nat.xor 1 (7 * n) : ℚ) / 4⌉ (A202592 n)).toNat

end

end A335296.P1402656347829939337

/-! ## A335296.P14540785044863509805

`A274640(A029710(2*n+3)*A370528(n))`
-/

namespace A335296.P14540785044863509805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274640 (A029710 (2 * n + 3) * A370528 n).toNat

end

end A335296.P14540785044863509805

/-!
# A335298: a(n) is the squared distance between the points P(n) and P(0) on a plane, n >= 0, such that the distance between P(n) and P(n+1) is n+1 and, going from P(n) to P(n+2), a 90-degree left turn is taken in P(n+1).

The programs for A335298, the canonical program `A335298.P14442783033930336052` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A335298 has offset 0).

The definition of A335298 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A335298.P14442783033930336052

`∑[lcm(n, n²%8)]`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A335298

/-- `∑[lcm(n, n²%8)]` -/
def P14442783033930336052.Spec : Prop :=
  ∀ n, (P14442783033930336052.a n : ℤ) = A335298 n

theorem P14442783033930336052.correct : P14442783033930336052.Spec := by
  intro n
  simp only [A335298]

end A335298

/-! ## A335298.P5139863819731576734

`∑[n*gcd(4, n)%4]`
-/

namespace A335298.P5139863819731576734
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (Nat.gcd 4 n % 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A335298.P5139863819731576734

namespace A335298

/-- `∑[n*gcd(4, n)%4]` -/
def P5139863819731576734.Spec : Prop :=
  ∀ n, (P5139863819731576734.a n : ℤ) = A335298 n

end A335298

/-! ## A335298.P4401333838535698087

`∑[n*sqrt(and(5, n²))]`
-/

namespace A335298.P4401333838535698087
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n : ℝ) * Real.sqrt (Nat.land 5 (n ^ 2) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A335298.P4401333838535698087

namespace A335298

/-- `∑[n*sqrt(and(5, n²))]` -/
def P4401333838535698087.Spec : Prop :=
  ∀ n, P4401333838535698087.a n = (A335298 n : ℝ)

end A335298

/-! ## A335298.P4109830147875696961

`∑[n*sqrt((n*n)%8)]`
-/

namespace A335298.P4109830147875696961
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n : ℝ) * Real.sqrt ((n * n % 8 : ℕ) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A335298.P4109830147875696961

namespace A335298

/-- `∑[n*sqrt((n*n)%8)]` -/
def P4109830147875696961.Spec : Prop :=
  ∀ n, P4109830147875696961.a n = (A335298 n : ℝ)

end A335298

/-! ## A335298.P12749658510151326449

`∑[n*and(n, gcd(2, n²))]`
-/

namespace A335298.P12749658510151326449
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Nat.land n (Nat.gcd 2 (n ^ 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A335298.P12749658510151326449

namespace A335298

/-- `∑[n*and(n, gcd(2, n²))]` -/
def P12749658510151326449.Spec : Prop :=
  ∀ n, (P12749658510151326449.a n : ℤ) = A335298 n

end A335298

/-! ## A335298.P4662784764189693663

`∑[n*5%(n%4+1)]`
-/

namespace A335298.P4662784764189693663
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (5 % (n % 4 + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A335298.P4662784764189693663

namespace A335298

/-- `∑[n*5%(n%4+1)]` -/
def P4662784764189693663.Spec : Prop :=
  ∀ n, (P4662784764189693663.a n : ℤ) = A335298 n

end A335298

/-! ## A335298.P16553418028811051983

`∑[n*and(n, 2-and(1, n))]`
-/

namespace A335298.P16553418028811051983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * Int.land (n : ℤ) (2 - (Nat.land 1 n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A335298.P16553418028811051983

namespace A335298

/-- `∑[n*and(n, 2-and(1, n))]` -/
def P16553418028811051983.Spec : Prop :=
  ∀ n, P16553418028811051983.a n = A335298 n

end A335298

/-! ## A335298.P345298740385720472

`∑[n*and(3, and(n, 3*n))]`
-/

namespace A335298.P345298740385720472
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Nat.land 3 (Nat.land n (3 * n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A335298.P345298740385720472

namespace A335298

/-- `∑[n*and(3, and(n, 3*n))]` -/
def P345298740385720472.Spec : Prop :=
  ∀ n, (P345298740385720472.a n : ℤ) = A335298 n

end A335298

/-! ## A335298.P1927573173287932131

`∑[n*(1-∑[(-1)^∑[n]])]`
-/

namespace A335298.P1927573173287932131
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ (∑ j ∈ Finset.range (n + 1), f3 j)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (1 - ∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A335298.P1927573173287932131

namespace A335298

/-- `∑[n*(1-∑[(-1)^∑[n]])]` -/
def P1927573173287932131.Spec : Prop :=
  ∀ n, P1927573173287932131.a n = A335298 n

end A335298

/-! ## A335298.P7329340038170227938

`ceil((char[or(2, abs(1-n))]+n)²/2)`
-/

namespace A335298.P7329340038170227938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 |1 - (n : ℤ)|

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((((if ∃ j, f1 j = (n : ℤ) then 1 else 0) + n) ^ 2 : ℕ) : ℚ) / 2⌉

end

end A335298.P7329340038170227938

namespace A335298

/-- `ceil((char[or(2, abs(1-n))]+n)²/2)` -/
def P7329340038170227938.Spec : Prop :=
  ∀ n, P7329340038170227938.a n = A335298 n

end A335298

/-! ## A335298.P9997561729570476083

`∑[n]+2*A242601(n)`
-/

namespace A335298.P9997561729570476083
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + 2 * A242601 n

end

end A335298.P9997561729570476083

namespace A335298

/-- `∑[n]+2*A242601(n)` -/
def P9997561729570476083.Spec : Prop :=
  ∀ n, P9997561729570476083.a n = A335298 n

end A335298

/-! ## A335298.P4400448450906712440

`A251610(n)+a(n-1)` with `a(0)=0`
-/

namespace A335298.P4400448450906712440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A251610 n + a (n - 1)

end

end A335298.P4400448450906712440

namespace A335298

/-- `A251610(n)+a(n-1)` -/
def P4400448450906712440.Spec : Prop :=
  ∀ n, P4400448450906712440.a n = A335298 n

end A335298

/-! ## A335298.P11509333540394658260

`a(n-1)+n*A007877(n)` with `a(0)=0`
-/

namespace A335298.P11509333540394658260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + (n : ℤ) * A007877 n

end

end A335298.P11509333540394658260

namespace A335298

/-- `a(n-1)+n*A007877(n)` -/
def P11509333540394658260.Spec : Prop :=
  ∀ n, P11509333540394658260.a n = A335298 n

end A335298

/-! ## A335298.P8120157537612324372

`A104563(n)+n*A021913(n)`
-/

namespace A335298.P8120157537612324372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104563 n + (n : ℤ) * A021913 n

end

end A335298.P8120157537612324372

namespace A335298

/-- `A104563(n)+n*A021913(n)` -/
def P8120157537612324372.Spec : Prop :=
  ∀ n, P8120157537612324372.a n = A335298 n

end A335298

/-! ## A335298.P10926586785759603442

`A030978(∑[and(n, 3*n)%4])`
-/

namespace A335298.P10926586785759603442
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land n (3 * n) % 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030978 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A335298.P10926586785759603442

namespace A335298

/-- `A030978(∑[and(n, 3*n)%4])` -/
def P10926586785759603442.Spec : Prop :=
  ∀ n, P10926586785759603442.a n = A335298 n

end A335298

/-! ## A335298.P6130554675855603410

`A104563(∑[A007877(n)])`
-/

namespace A335298.P6130554675855603410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007877 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104563 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A335298.P6130554675855603410

namespace A335298

/-- `A104563(∑[A007877(n)])` -/
def P6130554675855603410.Spec : Prop :=
  ∀ n, P6130554675855603410.a n = A335298 n

end A335298

/-! ## A335298.P13649616443087223368

`A104563(A021913(n)+n)`
-/

namespace A335298.P13649616443087223368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104563 (A021913 n + (n : ℤ)).toNat

end

end A335298.P13649616443087223368

namespace A335298

/-- `A104563(A021913(n)+n)` -/
def P13649616443087223368.Spec : Prop :=
  ∀ n, P13649616443087223368.a n = A335298 n

end A335298

/-! ## A335298.P9887015102096306371

`A104563(A098180(n+2)-2)`
-/

namespace A335298.P9887015102096306371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104563 (A098180 (n + 2) - 2).toNat

end

end A335298.P9887015102096306371

namespace A335298

/-- `A104563(A098180(n+2)-2)` -/
def P9887015102096306371.Spec : Prop :=
  ∀ n, P9887015102096306371.a n = A335298 n

end A335298

/-! ## A335298.P3684164448413613312

`A104563(1-A133872(n)+n)`
-/

namespace A335298.P3684164448413613312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104563 (1 - A133872 n + (n : ℤ)).toNat

end

end A335298.P3684164448413613312

namespace A335298

/-- `A104563(1-A133872(n)+n)` -/
def P3684164448413613312.Spec : Prop :=
  ∀ n, P3684164448413613312.a n = A335298 n

end A335298

/-! ## A335298.P17023225022351055915

`A104563(A133872(n+2)+n)`
-/

namespace A335298.P17023225022351055915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104563 (A133872 (n + 2) + (n : ℤ)).toNat

end

end A335298.P17023225022351055915

namespace A335298

/-- `A104563(A133872(n+2)+n)` -/
def P17023225022351055915.Spec : Prop :=
  ∀ n, P17023225022351055915.a n = A335298 n

end A335298

/-!
# A335299: a(0) = 0; for n > 0, a(n) = abs(a(n-1) - n) if not already in the sequence, otherwise a(n) = a(n-1) + n.

The programs for A335299, there is no canonical definition to state claims against.
-/

/-! ## A335299.P15038390916863338063

`A005132(n)%A063733(A034260(n+1))`
-/

namespace A335299.P15038390916863338063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005132 n) (A063733 (A034260 (n + 1)).toNat)

end

end A335299.P15038390916863338063

/-! ## A335299.P11094968219691864458

`(A209386(n)/2)%A063733(A034260(n+1))`
-/

namespace A335299.P11094968219691864458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A209386 n : ℚ) / 2)) (A063733 (A034260 (n + 1)).toNat)

end

end A335299.P11094968219691864458

/-! ## A335299.P1403948253607457005

`floor(A209387(n)/2)%A063733(A034260(n+1))`
-/

namespace A335299.P1403948253607457005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌊(A209387 n : ℚ) / 2⌋ (A063733 (A034260 (n + 1)).toNat)

end

end A335299.P1403948253607457005

/-! ## A335299.P5660297718919987997

`∑[n*A160357(n)]%A063733(A034260(n+1))`
-/

namespace A335299.P5660297718919987997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A160357 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A063733 (A034260 (n + 1)).toNat)

end

end A335299.P5660297718919987997

/-! ## A335299.P13639677367562918627

`(A063733(n+1)-1)%A063733(A034260(n+1))`
-/

namespace A335299.P13639677367562918627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A063733 (n + 1) - 1) (A063733 (A034260 (n + 1)).toNat)

end

end A335299.P13639677367562918627

/-! ## A335299.P2564415837429871209

`A001281(A209386(n))%A063733(A034260(n+1))`
-/

namespace A335299.P2564415837429871209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001281 (A209386 n).toNat) (A063733 (A034260 (n + 1)).toNat)

end

end A335299.P2564415837429871209

/-! ## A335299.P6119890846027953813

`A004524(A209387(n))%A063733(A034260(n+1))`
-/

namespace A335299.P6119890846027953813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004524 (A209387 n).toNat) (A063733 (A034260 (n + 1)).toNat)

end

end A335299.P6119890846027953813

/-! ## A335299.P17793854117096338181

`A004524(A209386(n)+1)%A063733(A034260(n+1))`
-/

namespace A335299.P17793854117096338181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004524 (A209386 n + 1).toNat) (A063733 (A034260 (n + 1)).toNat)

end

end A335299.P17793854117096338181

/-! ## A335299.P11674475070039937645

`A001281(A209387(n)-1)%A063733(A034260(n+1))`
-/

namespace A335299.P11674475070039937645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001281 (A209387 n - 1).toNat) (A063733 (A034260 (n + 1)).toNat)

end

end A335299.P11674475070039937645

