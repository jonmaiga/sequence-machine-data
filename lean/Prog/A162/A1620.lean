import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C015
import Seq.B000.C017
import Seq.B000.C019
import Seq.B000.C023
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C029
import Seq.B000.C033
import Seq.B000.C039
import Seq.B001.C000
import Seq.B001.C002
import Seq.B001.C005
import Seq.B002.C000
import Seq.B002.C001
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C002
import Seq.B007.C000
import Seq.B010.C000
import Seq.B011.C000
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
import Seq.Opaque.C025

/-!
# A162000: Primes with the property that p + nextprime(p) +/ - 1 is not prime.

The programs for A162000, there is no canonical definition to state claims against.
-/

/-! ## A162000.P3881918409615088562

`p?[record[A274462(n)+59]]`
-/

namespace A162000.P3881918409615088562
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274462 n + 59

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A162000.P3881918409615088562

/-!
# A162001: Initial members of prime triples (p, p+2, p+6) for which also the sum 3p+8 is prime.

The programs for A162001, there is no canonical definition to state claims against.
-/

/-! ## A162001.P17676270308089647428

`(A376013(n+1)-8)/3`
-/

namespace A162001.P17676270308089647428
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A376013 (n + 1) - 8 : ℚ) / 3

end

end A162001.P17676270308089647428

/-! ## A162001.P15329932803602696537

`∩[A001359(n+1), A230217(n+1)]`
-/

namespace A162001.P15329932803602696537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001359 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230217 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A162001.P15329932803602696537

/-! ## A162001.P12752190707575677990

`∩[A022004(n+1), A230217(n+1)]`
-/

namespace A162001.P12752190707575677990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022004 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230217 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A162001.P12752190707575677990

/-! ## A162001.P1794998060126552640

`∩[A230217(n+1), A341357(n+1)]`
-/

namespace A162001.P1794998060126552640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230217 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341357 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A162001.P1794998060126552640

/-! ## A162001.P8016466946994522765

`∩[A230217(n+1), A378983(n+1)]`
-/

namespace A162001.P8016466946994522765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230217 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378983 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A162001.P8016466946994522765

/-! ## A162001.P12379861109539114990

`∩[A054799(n+1), A230217(n+1)]`
-/

namespace A162001.P12379861109539114990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054799 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230217 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A162001.P12379861109539114990

/-! ## A162001.P16338759854462486460

`∩[A063700(n+1), A230217(n+1)]`
-/

namespace A162001.P16338759854462486460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063700 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230217 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A162001.P16338759854462486460

/-! ## A162001.P10897685368493788764

`∩[A111166(n+1), A230217(n+1)]`
-/

namespace A162001.P10897685368493788764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111166 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230217 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A162001.P10897685368493788764

/-! ## A162001.P15967159925000596145

`∩[A124588(n+1), A230217(n+1)]`
-/

namespace A162001.P15967159925000596145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124588 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230217 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A162001.P15967159925000596145

/-! ## A162001.P4604911062911205966

`∩[A181747(n+1), A230217(n+1)]`
-/

namespace A162001.P4604911062911205966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181747 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230217 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A162001.P4604911062911205966

/-! ## A162001.P4198288074761022050

`∩[A063693(n+1), A230217(n+1)]`
-/

namespace A162001.P4198288074761022050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063693 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230217 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A162001.P4198288074761022050

/-! ## A162001.P4651640209310341786

`∩[A230217(n+1), A280255(n+1)]`
-/

namespace A162001.P4651640209310341786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230217 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280255 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A162001.P4651640209310341786

/-! ## A162001.P15431953406444276314

`∩[A230217(n+1), A394509(n+1)]`
-/

namespace A162001.P15431953406444276314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230217 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394509 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A162001.P15431953406444276314

/-! ## A162001.P17337035287867605476

`∩[A230217(n+1), A395788(n+1)]`
-/

namespace A162001.P17337035287867605476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230217 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395788 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A162001.P17337035287867605476

/-! ## A162001.P4571535666325210693

`∩[A073534(n+1), A230217(n+1)]`
-/

namespace A162001.P4571535666325210693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073534 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230217 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A162001.P4571535666325210693

/-! ## A162001.P17655859555837010079

`∩[A230217(n+1), A280590(n+1)]`
-/

namespace A162001.P17655859555837010079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230217 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280590 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A162001.P17655859555837010079

/-! ## A162001.P15875327389208149754

`p?[A290130(n+1)-1]`
-/

namespace A162001.P15875327389208149754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290130 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A162001.P15875327389208149754

/-! ## A162001.P11574167564426467450

`∩[A001838(n+1), A230217(n+1)]`
-/

namespace A162001.P11574167564426467450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001838 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230217 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A162001.P11574167564426467450

/-! ## A162001.P16452340242284720485

`∩[A022004(n+1), A023210(n+1)]`
-/

namespace A162001.P16452340242284720485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022004 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023210 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A162001.P16452340242284720485

/-! ## A162001.P13849515988657264835

`∩[A022004(n+1), A073681(n+1)]`
-/

namespace A162001.P13849515988657264835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022004 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073681 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A162001.P13849515988657264835

/-!
# A162002: Numbers n for which 2^^n == 2^2^n (mod n); for the "^^" notation see A092188.

The programs for A162002, there is no canonical definition to state claims against.
-/

/-! ## A162002.P5703238286733515948

`lt[A302983(n+1), A032741(A218864(2*n+1))]`
-/

namespace A162002.P5703238286733515948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302983 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (A218864 (2 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A162002.P5703238286733515948

/-!
# A162003: Primes of the form 1 + (k+2)^2 + (k+4)^4, k>=0.

The programs for A162003, there is no canonical definition to state claims against.
-/

/-! ## A162003.P9067099071434673183

`p?[A002523(n+4)+(n+2)²]`
-/

namespace A162003.P9067099071434673183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002523 (n + 4) + ((n + 2) ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A162003.P9067099071434673183

/-!
# A162004: Primes of the form n+(n+3)^3, n>=0.

The programs for A162004, there is no canonical definition to state claims against.
-/

/-! ## A162004.P7528938611648946824

`p?[(n+3)^3+n]`
-/

namespace A162004.P7528938611648946824
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 3) ^ 3 + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A162004.P7528938611648946824

/-! ## A162004.P16798885462461348010

`∑{p}[p?[A000578(n+3)+n], #]`
-/

namespace A162004.P16798885462461348010
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (n + 3) + (n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A162004.P16798885462461348010

/-! ## A162004.P3964336807090039389

`or(1, p?[A000578(n+2)+abs(1-n)])`
-/

namespace A162004.P3964336807090039389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (n + 2) + |1 - (n : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A162004.P3964336807090039389

/-! ## A162004.P9691269626141281174

`round(sqrt(p?[A000578(n+4)+n+1]²+1))`
-/

namespace A162004.P9691269626141281174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (n + 4) + (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) ^ 2 + 1 : ℝ))

end

end A162004.P9691269626141281174

/-! ## A162004.P11849772248113955695

`p?[A079505(n+2)+A005843(n)]%A017441(n)`
-/

namespace A162004.P11849772248113955695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079505 (n + 2) + A005843 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A017441 n)

end

end A162004.P11849772248113955695

/-!
# A162005: The EG1 triangle.

The programs for A162005, there is no canonical definition to state claims against.
-/

/-! ## A162005.P8034087904380213097

`A325220(n)+char[32]`
-/

namespace A162005.P8034087904380213097
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  32

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325220 n + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A162005.P8034087904380213097

/-! ## A162005.P263153785646693153

`A325220(n*floor(n^(1/5)))`
-/

namespace A162005.P263153785646693153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325220 ((n : ℤ) * ⌊(n : ℝ) ^ ((1 : ℚ) / 5 : ℝ)⌋).toNat

end

end A162005.P263153785646693153

/-! ## A162005.P16308652070116473626

`A015526(n)*A325220(n)`
-/

namespace A162005.P16308652070116473626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015526 n * A325220 n

end

end A162005.P16308652070116473626

/-! ## A162005.P2889662005311030750

`A015600(n)*A325220(n)`
-/

namespace A162005.P2889662005311030750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015600 n * A325220 n

end

end A162005.P2889662005311030750

/-! ## A162005.P235122799497622720

`A015748(n)*A325220(n)`
-/

namespace A162005.P235122799497622720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015748 n * A325220 n

end

end A162005.P235122799497622720

/-!
# A162006: Second left hand column of the EG1 triangle A162005.

The programs for A162006, there is no canonical definition to state claims against.
-/

/-! ## A162006.P9076304561109067265

`A322230(∑[n+2]-1)`
-/

namespace A162006.P9076304561109067265
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322230 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A162006.P9076304561109067265

/-! ## A162006.P1914855427258186930

`record[gcd(A187784(n), A322230(n))]`
-/

namespace A162006.P1914855427258186930
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A187784 n) (A322230 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A162006.P1914855427258186930

/-! ## A162006.P4605001008942897260

`A325220(∑[n+1]+1)`
-/

namespace A162006.P4605001008942897260
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325220 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A162006.P4605001008942897260

/-! ## A162006.P968220738296242146

`record[ratio[A325220(A271324(n))]]`
-/

namespace A162006.P968220738296242146
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325220 (A271324 n).toNat

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A162006.P968220738296242146

/-! ## A162006.P18016839244709433288

`record[A325220(A061579(n)+2)]`
-/

namespace A162006.P18016839244709433288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325220 (A061579 n + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A162006.P18016839244709433288

/-!
# A162007: Third left hand column of the EG1 triangle A162005.

The programs for A162007, there is no canonical definition to state claims against.
-/

/-! ## A162007.P6759348230553973510

`A322230(∑[n+3])`
-/

namespace A162007.P6759348230553973510
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322230 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A162007.P6759348230553973510

/-! ## A162007.P10386938356457404859

`gcd(A182722(n), A322230(A141214(n)))`
-/

namespace A162007.P10386938356457404859
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A182722 n) (A322230 (A141214 n).toNat)

end

end A162007.P10386938356457404859

/-! ## A162007.P8205251635734804819

`lcm(A173887(n), A322230(A141214(n)))`
-/

namespace A162007.P8205251635734804819
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A173887 n) (A322230 (A141214 n).toNat)

end

end A162007.P8205251635734804819

/-! ## A162007.P11118804794058610394

`or(A010893(n), A322230(A141214(n)))`
-/

namespace A162007.P11118804794058610394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A010893 (n + 13)) (A322230 (A141214 n).toNat)

end

end A162007.P11118804794058610394

/-! ## A162007.P319718995202727496

`A322230(A141214(n))/A007318(n*char[2])`
-/

namespace A162007.P319718995202727496
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A322230 (A141214 n).toNat : ℚ) / (A007318 (n * (if ∃ j, f1 j = n then 1 else 0)) : ℚ)

end

end A162007.P319718995202727496

/-!
# A162008: Third right hand column of the EG1 triangle A162005.

The programs for A162008, the canonical program `A162008.P3239579074998696950` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A162008 has offset 1).

The definition of A162008 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A162008.P3239579074998696950

`(64*(n+1)²+112*(n+1)+30-432*(n+1)*9^(n+1)-405*9^(n+1)+375*25^(n+1))/128`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A162008

/-- `(64*(n+1)²+112*(n+1)+30-432*(n+1)*9^(n+1)-405*9^(n+1)+375*25^(n+1))/128` -/
def P3239579074998696950.Spec : Prop :=
  ∀ n, P3239579074998696950.a n = (A162008 (n + 1) : ℚ)

end A162008

/-! ## A162008.P2492701529220551252

`A322230(∑[n+2]+3)`
-/

namespace A162008.P2492701529220551252
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322230 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A162008.P2492701529220551252

namespace A162008

/-- `A322230(∑[n+2]+3)` -/
def P2492701529220551252.Spec : Prop :=
  ∀ n, P2492701529220551252.a n = A162008 (n + 1)

end A162008

/-! ## A162008.P453322942868203917

`A325220(∑[n+3])`
-/

namespace A162008.P453322942868203917
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325220 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A162008.P453322942868203917

namespace A162008

/-- `A325220(∑[n+3])` -/
def P453322942868203917.Spec : Prop :=
  ∀ n, P453322942868203917.a n = A162008 (n + 1)

end A162008

/-! ## A162008.P234344508979826058

`lcm(2, A325220(A141214(n)))`
-/

namespace A162008.P234344508979826058
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A325220 (A141214 n).toNat)

end

end A162008.P234344508979826058

namespace A162008

/-- `lcm(2, A325220(A141214(n)))` -/
def P234344508979826058.Spec : Prop :=
  ∀ n, (P234344508979826058.a n : ℤ) = A162008 (n + 1)

end A162008

/-!
# A162009: Fourth right hand column of the EG1 triangle A162005.

The programs for A162009, there is no canonical definition to state claims against.
-/

/-! ## A162009.P13639280498406285573

`A322230(A167614(n+2))`
-/

namespace A162009.P13639280498406285573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322230 (A167614 (n + 2)).toNat

end

end A162009.P13639280498406285573

/-! ## A162009.P6314219292379830224

`A322230(A052905(n)+8)`
-/

namespace A162009.P6314219292379830224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322230 (A052905 n + 8).toNat

end

end A162009.P6314219292379830224

/-! ## A162009.P4110341659649475236

`A322230(A055999(n)+9)`
-/

namespace A162009.P4110341659649475236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322230 (A055999 n + 9).toNat

end

end A162009.P4110341659649475236

/-! ## A162009.P15107621091523487477

`A322230(eq[3, A002262(n)])`
-/

namespace A162009.P15107621091523487477
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322230 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A162009.P15107621091523487477

/-! ## A162009.P1145011842571528094

`A322230(eq[8, A059268(n)])`
-/

namespace A162009.P1145011842571528094
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322230 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A162009.P1145011842571528094

/-!
# A162010: Fifth right hand column of the EG1 triangle A162005.

The programs for A162010, there is no canonical definition to state claims against.
-/

/-! ## A162010.P12529421117975779963

`A322230(eq[4, A002262(n)])`
-/

namespace A162010.P12529421117975779963
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322230 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A162010.P12529421117975779963

/-! ## A162010.P10451512125651416194

`A322230(eq[5, A002260(n+1)])`
-/

namespace A162010.P10451512125651416194
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322230 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A162010.P10451512125651416194

/-!
# A162012: The sequence of the absolute values of the a(n-2) coefficients of A162011.

The programs for A162012, there is no canonical definition to state claims against.
-/

/-! ## A162012.P1597707450095955220

`A162011(A011826(n+2))-A130716(n+2)`
-/

namespace A162012.P1597707450095955220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162011 (A011826 (n + 2)).toNat - A130716 (n + 2)

end

end A162012.P1597707450095955220

/-!
# A162014: Sequence related to the o.g.f.s. of the right hand columns of the EG1 triangle A162005.

The programs for A162014, there is no canonical definition to state claims against.
-/

/-! ## A162014.P8880752875624166894

`∏[-(4*(n+1)*n*a(n-1))]` with `a(0)=1, a(1)=8`
-/

namespace A162014.P8880752875624166894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 8] fun n f1 =>
  -(4 * ((n + 1 : ℤ) * ((n : ℤ) * f1 (n - 1))))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A162014.P8880752875624166894

/-!
# A162016: Numbers k such that the sum of the decimal digits of k is a substring of k and of k^3.

The programs for A162016, there is no canonical definition to state claims against.
-/

/-! ## A162016.P11129131106672180584

`lt[A069816(n), A173922(A257588(n))]`
-/

namespace A162016.P11129131106672180584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069816 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173922 (A257588 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A162016.P11129131106672180584

/-! ## A162016.P10169204499048794886

`∩[A029942(n+1), A161350(n+1)]`
-/

namespace A162016.P10169204499048794886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029942 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161350 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A162016.P10169204499048794886

/-! ## A162016.P10615774865767686554

`∩[A029942(n+1), A166508(n+1)]`
-/

namespace A162016.P10615774865767686554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029942 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166508 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A162016.P10615774865767686554

/-!
# A162017: Numbers k such that the sum of the decimal digits of k is a substring of k, of k^2 and of k^3.

The programs for A162017, there is no canonical definition to state claims against.
-/

/-! ## A162017.P12923043866541256323

`∩[A162015(n+1), A162016(n+1)]`
-/

namespace A162017.P12923043866541256323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162015 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162016 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A162017.P12923043866541256323

/-! ## A162017.P4782938186521926013

`A162015(A077168(n))`
-/

namespace A162017.P4782938186521926013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162015 (A077168 n).toNat

end

end A162017.P4782938186521926013

/-! ## A162017.P11918143249964868500

`A162015(n+1)+A000007(A161993(n))`
-/

namespace A162017.P11918143249964868500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162015 (n + 1) + A000007 (A161993 n).toNat

end

end A162017.P11918143249964868500

/-! ## A162017.P16900289834357309420

`A174617(A174617(n))+A162015(n+1)`
-/

namespace A162017.P16900289834357309420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174617 (A174617 n).toNat + A162015 (n + 1)

end

end A162017.P16900289834357309420

/-! ## A162017.P8389343180801459735

`A162015(n+1)*A168181(A053576(n))`
-/

namespace A162017.P8389343180801459735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162015 (n + 1) * A168181 (A053576 n).toNat

end

end A162017.P8389343180801459735

/-!
# A162018: Numbers n for which 2^^n != 2^2^n (mod n); for the "^^" notation see A092188.

The programs for A162018, there is no canonical definition to state claims against.
-/

/-! ## A162018.P11093151411155220783

`comp[A162002(n+1)-1]+1`
-/

namespace A162018.P11093151411155220783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162002 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A162018.P11093151411155220783

/-! ## A162018.P5540197401209217313

`comp[∪[A162002(n+1), A005843(n)²]]`
-/

namespace A162018.P5540197401209217313
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162002 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A162018.P5540197401209217313

/-! ## A162018.P1880172775570477105

`∩[A161992(n+1), comp[A162002(n+1)]]`
-/

namespace A162018.P1880172775570477105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161992 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162002 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A162018.P1880172775570477105

/-!
# A162019: Double-safe primes which are also double-Sophie Germain primes.

The programs for A162019, there is no canonical definition to state claims against.
-/

/-! ## A162019.P13538567174198385306

`(A157359(n+1)-3)/4`
-/

namespace A162019.P13538567174198385306
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A157359 (n + 1) - 3 : ℚ) / 4

end

end A162019.P13538567174198385306

/-! ## A162019.P14146088945344977008

`4*A023302(n+1)+3`
-/

namespace A162019.P14146088945344977008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A023302 (n + 1) + 3

end

end A162019.P14146088945344977008

/-! ## A162019.P6470717261804192805

`floor(A157359(n+1)/4)`
-/

namespace A162019.P6470717261804192805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A157359 (n + 1) : ℚ) / 4⌋

end

end A162019.P6470717261804192805

/-! ## A162019.P9549381221472987064

`A008683(A020483(n))+ceil(A157359(n+1)/4)`
-/

namespace A162019.P9549381221472987064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A020483 n).toNat + ⌈(A157359 (n + 1) : ℚ) / 4⌉

end

end A162019.P9549381221472987064

/-! ## A162019.P2198789869055360909

`∩[A066179(n+1), A101791(n+1)]`
-/

namespace A162019.P2198789869055360909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066179 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101791 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A162019.P2198789869055360909

/-! ## A162019.P3271337626792755541

`∩[2*A007700(n+1)+1, 4*A023250(n+1)+3]`
-/

namespace A162019.P3271337626792755541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A007700 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A023250 (n + 1) + 3

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A162019.P3271337626792755541

/-!
# A162021: Triple-safe primes which are also triple-Sophie Germain primes.

The programs for A162021, there is no canonical definition to state claims against.
-/

/-! ## A162021.P13199471144451909327

`8*A278932(n+1)+7`
-/

namespace A162021.P13199471144451909327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A278932 (n + 1) + 7

end

end A162021.P13199471144451909327

/-! ## A162021.P15036988696457081364

`16*A124514(n+1)-1`
-/

namespace A162021.P15036988696457081364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  16 * A124514 (n + 1) - 1

end

end A162021.P15036988696457081364

/-! ## A162021.P12754403171991228306

`A008683(A151800(n))+16*A124514(n+1)`
-/

namespace A162021.P12754403171991228306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A151800 n).toNat + 16 * A124514 (n + 1)

end

end A162021.P12754403171991228306

/-! ## A162021.P16589367286175621560

`A008683(A000043(n+1))+16*A124514(n+1)`
-/

namespace A162021.P16589367286175621560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A000043 (n + 1)).toNat + 16 * A124514 (n + 1)

end

end A162021.P16589367286175621560

/-! ## A162021.P8088127756771555002

`A008683(A002476(n+1))+16*A124514(n+1)`
-/

namespace A162021.P8088127756771555002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A002476 (n + 1)).toNat + 16 * A124514 (n + 1)

end

end A162021.P8088127756771555002

/-!
# A162022: Smallest prime factor of n-th odd composite integers A071904.

The programs for A162022, there is no canonical definition to state claims against.
-/

/-! ## A162022.P1288472452327306881

`p?[A020639(2*n+1)%(2*n+1)]`
-/

namespace A162022.P1288472452327306881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A020639 (2 * n + 1)) (2 * n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A162022.P1288472452327306881

/-! ## A162022.P15292215649682429062

`A020639(A071904(n+1))`
-/

namespace A162022.P15292215649682429062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A071904 (n + 1)).toNat

end

end A162022.P15292215649682429062

/-! ## A162022.P3225021003752162913

`A020639(eq[1, A107393(n)])`
-/

namespace A162022.P3225021003752162913
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107393 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A162022.P3225021003752162913

/-! ## A162022.P4816373923446456897

`A000040(A281681(n+1)+1)`
-/

namespace A162022.P4816373923446456897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A281681 (n + 1) + 1).toNat

end

end A162022.P4816373923446456897

/-! ## A162022.P12090789938993040339

`A006005(A281681(n+1)+1)`
-/

namespace A162022.P12090789938993040339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (A281681 (n + 1) + 1).toNat

end

end A162022.P12090789938993040339

/-! ## A162022.P3860153943190033035

`A020639(A309355(n+1)+1)`
-/

namespace A162022.P3860153943190033035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A309355 (n + 1) + 1).toNat

end

end A162022.P3860153943190033035

/-! ## A162022.P8624590022445091221

`A020639(A007921(n+1)+2)`
-/

namespace A162022.P8624590022445091221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A007921 (n + 1) + 2).toNat

end

end A162022.P8624590022445091221

/-! ## A162022.P15704811861540398108

`A020639(lt[1, A325937(n+1)]+1)`
-/

namespace A162022.P15704811861540398108
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325937 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A162022.P15704811861540398108

/-! ## A162022.P7911946333692783478

`A020639(2*lt[2, A000005(2*n+1)]+1)`
-/

namespace A162022.P7911946333692783478
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A162022.P7911946333692783478

/-! ## A162022.P10470585909540532880

`A020639(2*lt[A020639(2*n+1), n]+1)`
-/

namespace A162022.P10470585909540532880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (2 * n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (2 * SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1)

end

end A162022.P10470585909540532880

/-! ## A162022.P16152879534463131194

`p?[A020639(2*n+1)+A010051(2*n+1)]`
-/

namespace A162022.P16152879534463131194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (2 * n + 1) + A010051 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A162022.P16152879534463131194

/-! ## A162022.P14509632640985219519

`p?[A020639(2*n+1)*A005171(2*n+1)]`
-/

namespace A162022.P14509632640985219519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (2 * n + 1) * A005171 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A162022.P14509632640985219519

/-! ## A162022.P13800431400828673264

`A003961(A000040(A281681(n+1)))`
-/

namespace A162022.P13800431400828673264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (A000040 (A281681 (n + 1)).toNat).toNat

end

end A162022.P13800431400828673264

/-! ## A162022.P13026227270143915334

`A020639(A014076(n+2))`
-/

namespace A162022.P13026227270143915334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A014076 (n + 2)).toNat

end

end A162022.P13026227270143915334

/-! ## A162022.P3223783937125880818

`A020639(Δ[A163631(n+1)])`
-/

namespace A162022.P3223783937125880818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163631 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (f1 (n + 1) - f1 n).toNat

end

end A162022.P3223783937125880818

/-! ## A162022.P13839309592344738061

`p?[A281680(n)]`
-/

namespace A162022.P13839309592344738061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281680 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A162022.P13839309592344738061

/-! ## A162022.P59085130097743134

`A281680(A047845(n+2))`
-/

namespace A162022.P59085130097743134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281680 (A047845 (n + 2)).toNat

end

end A162022.P59085130097743134

/-! ## A162022.P3971502433767227645

`A281680(lt[1, A281680(n)])`
-/

namespace A162022.P3971502433767227645
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281680 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281680 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A162022.P3971502433767227645

/-! ## A162022.P6355346930897080134

`A281680(A053726(n+1)-1)`
-/

namespace A162022.P6355346930897080134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281680 (A053726 (n + 1) - 1).toNat

end

end A162022.P6355346930897080134

/-! ## A162022.P1499624352673350960

`p?[A074828(2*n+1)]`
-/

namespace A162022.P1499624352673350960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074828 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A162022.P1499624352673350960

/-!
# A162023: Exactly 10 consecutive odd integers starting with n are composite.

The programs for A162023, there is no canonical definition to state claims against.
-/

/-! ## A162023.P16759011500970962002

`eq[17, A029087(A007920(n))]`
-/

namespace A162023.P16759011500970962002
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  17

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029087 (A007920 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A162023.P16759011500970962002

/-!
# A162024: Number of n X n binary arrays with rows and columns, considered as binary numbers, in nondecreasing order, and all but the outermost row or column zero.

The programs for A162024, the canonical program `A162024.P2522845698747893363` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A162024 has offset 2).

The definition of A162024 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A162024.P2522845698747893363

`∑[a(n-1)+8]` with `a(0)=7, a(1)=13, a(2)=20`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A162024

/-- `∑[a(n-1)+8]` -/
def P2522845698747893363.Spec : Prop :=
  ∀ n, (P2522845698747893363.a n : ℤ) = A162024 (n + 2)

theorem P2522845698747893363.correct : P2522845698747893363.Spec := by
  intro n
  simp only [A162024, Nat.add_sub_cancel]

end A162024

/-! ## A162024.P13362712933909087741

`round((2/acot(n+1))²)+1`
-/

namespace A162024.P13362712933909087741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((2 / SequenceMachineLib.acot (n + 1 : ℝ)) ^ 2) + 1

end

end A162024.P13362712933909087741

namespace A162024

/-- `round((2/acot(n+1))²)+1` -/
def P13362712933909087741.Spec : Prop :=
  ∀ n, P13362712933909087741.a n = A162024 (n + 2)

end A162024

/-! ## A162024.P5133355577834748372

`a(n-1)+8*n+4` with `a(0)=7, a(1)=20`
-/

namespace A162024.P5133355577834748372
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [7, 20] fun n a =>
  a (n - 1) + (8 * n + 4)

end

end A162024.P5133355577834748372

namespace A162024

/-- `a(n-1)+8*n+4` -/
def P5133355577834748372.Spec : Prop :=
  ∀ n, (P5133355577834748372.a n : ℤ) = A162024 (n + 2)

end A162024

/-! ## A162024.P11717014913824094907

`∑[C(3, n+2)+8*n+4]`
-/

namespace A162024.P11717014913824094907
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 3 (n + 2) + (8 * n + 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A162024.P11717014913824094907

namespace A162024

/-- `∑[C(3, n+2)+8*n+4]` -/
def P11717014913824094907.Spec : Prop :=
  ∀ n, (P11717014913824094907.a n : ℤ) = A162024 (n + 2)

end A162024

/-! ## A162024.P11195418155961889288

`record[(n+3)^gcd(2, n+1)+4]`
-/

namespace A162024.P11195418155961889288
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 3) ^ Nat.gcd 2 (n + 1) + 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A162024.P11195418155961889288

namespace A162024

/-- `record[(n+3)^gcd(2, n+1)+4]` -/
def P11195418155961889288.Spec : Prop :=
  ∀ n, (P11195418155961889288.a n : ℤ) = A162024 (n + 2)

end A162024

/-! ## A162024.P5981941199929675913

`(2*(n+1))²+4-floor(acot(n))`
-/

namespace A162024.P5981941199929675913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * (n + 1)) ^ 2 + 4 : ℤ) - ⌊SequenceMachineLib.acot (n : ℝ)⌋

end

end A162024.P5981941199929675913

namespace A162024

/-- `(2*(n+1))²+4-floor(acot(n))` -/
def P5981941199929675913.Spec : Prop :=
  ∀ n, P5981941199929675913.a n = A162024 (n + 2)

end A162024

/-! ## A162024.P3579259567121173442

`floor(∑[acot(n)^3+8*n+4])`
-/

namespace A162024.P3579259567121173442
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.acot (n : ℝ) ^ 3 + (8 * n + 4 : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A162024.P3579259567121173442

namespace A162024

/-- `floor(∑[acot(n)^3+8*n+4])` -/
def P3579259567121173442.Spec : Prop :=
  ∀ n, P3579259567121173442.a n = A162024 (n + 2)

end A162024

/-! ## A162024.P2156015104222493

`record[xor(3, n+5)]+(2*n+1)²`
-/

namespace A162024.P2156015104222493
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 (n + 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + (2 * n + 1) ^ 2

end

end A162024.P2156015104222493

namespace A162024

/-- `record[xor(3, n+5)]+(2*n+1)²` -/
def P2156015104222493.Spec : Prop :=
  ∀ n, (P2156015104222493.a n : ℤ) = A162024 (n + 2)

end A162024

/-! ## A162024.P664003219978197065

`round((sqrt((n+1)²+2)+n+1)²)`
-/

namespace A162024.P664003219978197065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Real.sqrt ((n + 1) ^ 2 + 2 : ℝ) + (n + 1 : ℝ)) ^ 2)

end

end A162024.P664003219978197065

namespace A162024

/-- `round((sqrt((n+1)²+2)+n+1)²)` -/
def P664003219978197065.Spec : Prop :=
  ∀ n, P664003219978197065.a n = A162024 (n + 2)

end A162024

/-! ## A162024.P16045611066000257052

`floor(((n+1)*(acot((n+1)²)+2))²)`
-/

namespace A162024.P16045611066000257052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n + 1 : ℝ) * (SequenceMachineLib.acot ((n + 1) ^ 2 : ℝ) + 2)) ^ 2⌋

end

end A162024.P16045611066000257052

namespace A162024

/-- `floor(((n+1)*(acot((n+1)²)+2))²)` -/
def P16045611066000257052.Spec : Prop :=
  ∀ n, P16045611066000257052.a n = A162024 (n + 2)

end A162024

/-! ## A162024.P9024140656215144110

`(2*n+1)*record[xor(1, n+3)]+5`
-/

namespace A162024.P9024140656215144110
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 1) * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 5

end

end A162024.P9024140656215144110

namespace A162024

/-- `(2*n+1)*record[xor(1, n+3)]+5` -/
def P9024140656215144110.Spec : Prop :=
  ∀ n, (P9024140656215144110.a n : ℤ) = A162024 (n + 2)

end A162024

/-! ## A162024.P9327007094301221389

`8*n+6+A005899(n)`
-/

namespace A162024.P9327007094301221389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (8 * n + 6 : ℤ) + A005899 n

end

end A162024.P9327007094301221389

namespace A162024

/-- `8*n+6+A005899(n)` -/
def P9327007094301221389.Spec : Prop :=
  ∀ n, P9327007094301221389.a n = A162024 (n + 2)

end A162024

/-! ## A162024.P1153141078280009349

`A386486(n)+A017461(n)`
-/

namespace A162024.P1153141078280009349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386486 n + A017461 n

end

end A162024.P1153141078280009349

namespace A162024

/-- `A386486(n)+A017461(n)` -/
def P1153141078280009349.Spec : Prop :=
  ∀ n, P1153141078280009349.a n = A162024 (n + 2)

end A162024

/-! ## A162024.P6955880740252270130

`A184635(n+1)+A040002(n)`
-/

namespace A162024.P6955880740252270130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184635 (n + 1) + A040002 n

end

end A162024.P6955880740252270130

namespace A162024

/-- `A184635(n+1)+A040002(n)` -/
def P6955880740252270130.Spec : Prop :=
  ∀ n, P6955880740252270130.a n = A162024 (n + 2)

end A162024

/-! ## A162024.P4096848182503068814

`A180863(n+2)+A112335(n)`
-/

namespace A162024.P4096848182503068814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180863 (n + 2) + A112335 n

end

end A162024.P4096848182503068814

namespace A162024

/-- `A180863(n+2)+A112335(n)` -/
def P4096848182503068814.Spec : Prop :=
  ∀ n, P4096848182503068814.a n = A162024 (n + 2)

end A162024

/-! ## A162024.P3557563089038938991

`A005899(n)+2*A004767(n)`
-/

namespace A162024.P3557563089038938991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005899 n + 2 * A004767 n

end

end A162024.P3557563089038938991

namespace A162024

/-- `A005899(n)+2*A004767(n)` -/
def P3557563089038938991.Spec : Prop :=
  ∀ n, P3557563089038938991.a n = A162024 (n + 2)

end A162024

/-! ## A162024.P10248471391058813561

`A004273(n)²+A017581(n)+2`
-/

namespace A162024.P10248471391058813561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 n ^ 2 + (A017581 n + 2)

end

end A162024.P10248471391058813561

namespace A162024

/-- `A004273(n)²+A017581(n)+2` -/
def P10248471391058813561.Spec : Prop :=
  ∀ n, P10248471391058813561.a n = A162024 (n + 2)

end A162024

/-! ## A162024.P11575116497585461821

`2*A005893(n+1)-A000007(n)`
-/

namespace A162024.P11575116497585461821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A005893 (n + 1) - A000007 n

end

end A162024.P11575116497585461821

namespace A162024

/-- `2*A005893(n+1)-A000007(n)` -/
def P11575116497585461821.Spec : Prop :=
  ∀ n, P11575116497585461821.a n = A162024 (n + 2)

end A162024

/-! ## A162024.P8849681154157429197

`6*n+3-(A004277(n)-A078370(n))`
-/

namespace A162024.P8849681154157429197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (6 * n + 3 : ℤ) - (A004277 n - A078370 n)

end

end A162024.P8849681154157429197

namespace A162024

/-- `6*n+3-(A004277(n)-A078370(n))` -/
def P8849681154157429197.Spec : Prop :=
  ∀ n, P8849681154157429197.a n = A162024 (n + 2)

end A162024

/-!
# A162034: Number of n X n symmetric binary arrays with rows, considered as binary numbers, in nondecreasing order, and all main diagonal and antidiagonal elements zero.

The programs for A162034, there is no canonical definition to state claims against.
-/

/-! ## A162034.P12942547410332856117

`A306677(A041353(n)+1)`
-/

namespace A162034.P12942547410332856117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306677 (A041353 n + 1).toNat

end

end A162034.P12942547410332856117

/-! ## A162034.P3914692414156547833

`A005185((n+1)*A184339(n+1))`
-/

namespace A162034.P3914692414156547833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005185 ((n + 1 : ℤ) * A184339 (n + 1)).toNat

end

end A162034.P3914692414156547833

/-! ## A162034.P10044597480011537295

`A381434(A003724(n))+A081355(n)`
-/

namespace A162034.P10044597480011537295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381434 (A003724 n).toNat + A081355 n

end

end A162034.P10044597480011537295

/-!
# A162035: Number of n X n binary arrays with rows and columns, considered as binary numbers, in nondecreasing order, and all main diagonal and antidiagonal elements zero.

The programs for A162035, there is no canonical definition to state claims against.
-/

/-! ## A162035.P10444450661686145402

`A076027(∏[(n-1)/a(n-1)+1])` with `a(0)=1`
-/

namespace A162035.P10444450661686145402
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  ((n : ℤ) - 1 : ℚ) / f1 (n - 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076027 (SequenceMachineLib.roundAway (∏ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A162035.P10444450661686145402

/-! ## A162035.P9008244497457310365

`A076027(A000085(n))`
-/

namespace A162035.P9008244497457310365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076027 (A000085 n).toNat

end

end A162035.P9008244497457310365

/-!
# A162036: Number of n X n symmetric binary arrays with rows, considered as binary numbers, in nondecreasing order, and no more than 2 1's in any row.

The programs for A162036, there is no canonical definition to state claims against.
-/

/-! ## A162036.P14663046771391677625

`A051042(n)+record[A352541(n)]`
-/

namespace A162036.P14663046771391677625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352541 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051042 n + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A162036.P14663046771391677625

/-! ## A162036.P14031137738700971477

`A248608(A120895(n+1))+record[A352541(n)]`
-/

namespace A162036.P14031137738700971477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352541 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248608 (A120895 (n + 1)).toNat + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A162036.P14031137738700971477

/-!
# A162037: Number of n X n symmetric binary arrays with rows, considered as binary numbers, in nondecreasing order, and no more than 3 ones in any row.

The programs for A162037, there is no canonical definition to state claims against.
-/

/-! ## A162037.P5079752803042746467

`∑[A329401(∑[n!])]`
-/

namespace A162037.P5079752803042746467
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329401 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A162037.P5079752803042746467

/-!
# A162038: Number of n X n symmetric binary arrays with rows, considered as binary numbers, in nondecreasing order, and no more than 4 ones in any row.

The programs for A162038, there is no canonical definition to state claims against.
-/

/-! ## A162038.P1028339199464686522

`A261643(n+1)+∑[A317967(n)]`
-/

namespace A162038.P1028339199464686522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317967 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261643 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A162038.P1028339199464686522

/-!
# A162039: Number of n X n symmetric binary arrays with rows, considered as binary numbers, in nondecreasing order, and no more than 5 ones in any row.

The programs for A162039, there is no canonical definition to state claims against.
-/

/-! ## A162039.P16481835208848851086

`A093663(3*2^n)`
-/

namespace A162039.P16481835208848851086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093663 (3 * 2 ^ n)

end

end A162039.P16481835208848851086

/-!
# A162040: Number of n X n symmetric binary arrays with rows, considered as binary numbers, in nondecreasing order, and no more than 6 ones in any row.

The programs for A162040, there is no canonical definition to state claims against.
-/

/-! ## A162040.P964924513948008848

`record[A093663(n+2)]`
-/

namespace A162040.P964924513948008848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093663 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A162040.P964924513948008848

/-! ## A162040.P6016838045832868477

`A093663(2^(n+1))`
-/

namespace A162040.P6016838045832868477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093663 (2 ^ (n + 1))

end

end A162040.P6016838045832868477

/-!
# A162041: Number of n X n symmetric binary arrays with rows, considered as binary numbers, in nondecreasing order, and no more than 7 ones in any row.

The programs for A162041, there is no canonical definition to state claims against.
-/

/-! ## A162041.P1632892235777032225

`A125860(A217838(n+2))`
-/

namespace A162041.P1632892235777032225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125860 (A217838 (n + 2)).toNat

end

end A162041.P1632892235777032225

/-! ## A162041.P10325314240575836286

`A125860(A020752(n)-3)`
-/

namespace A162041.P10325314240575836286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125860 (A020752 n - 3).toNat

end

end A162041.P10325314240575836286

/-! ## A162041.P14271752799009317921

`record[A125860(A025901(n)+3)]`
-/

namespace A162041.P14271752799009317921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125860 (A025901 n + 3).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A162041.P14271752799009317921

/-! ## A162041.P4323660310942383468

`A125860(A134869(n+2)+A058276(2*n+1))`
-/

namespace A162041.P4323660310942383468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125860 (A134869 (n + 2) + A058276 (2 * n + 1)).toNat

end

end A162041.P4323660310942383468

/-!
# A162042: Number of n X n symmetric binary arrays with rows, considered as binary numbers, in nondecreasing order, and no more than 8 ones in any row.

The programs for A162042, there is no canonical definition to state claims against.
-/

/-! ## A162042.P12211109227641398326

`A162043(C(lt[∏{p}[2*n, 2*n/#²], n], n))`
-/

namespace A162042.P12211109227641398326
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), (2 * n : ℚ) / (p ^ 2 : ℚ)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162043 (Nat.choose (SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℚ)) n) n)

end

end A162042.P12211109227641398326

/-! ## A162042.P5200073338386847830

`A162043(lcm(n+1, lt[∏{p}[2*n, 2*n/#²], n]))`
-/

namespace A162042.P5200073338386847830
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), (2 * n : ℚ) / (p ^ 2 : ℚ)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162043 (Nat.lcm (n + 1) (SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℚ)) n))

end

end A162042.P5200073338386847830

/-! ## A162042.P12525712195923228112

`A016121(∑[A286831(n)])`
-/

namespace A162042.P12525712195923228112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286831 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016121 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A162042.P12525712195923228112

/-! ## A162042.P16472933187734523922

`A016121(A010352(n+1))`
-/

namespace A162042.P16472933187734523922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016121 (A010352 (n + 1)).toNat

end

end A162042.P16472933187734523922

/-!
# A162043: Number of n X n symmetric binary arrays with rows, considered as binary numbers, in nondecreasing order, and no more than 9 ones in any row.

The programs for A162043, there is no canonical definition to state claims against.
-/

/-! ## A162043.P8336521947594303985

`record[A125860(n+4)]`
-/

namespace A162043.P8336521947594303985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125860 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A162043.P8336521947594303985

/-! ## A162043.P15639112267545712767

`A125860(∑[n+2]+2)`
-/

namespace A162043.P15639112267545712767
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125860 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A162043.P15639112267545712767

/-! ## A162043.P11315319904620374893

`A016121(C(comp[10*n], n))`
-/

namespace A162043.P11315319904620374893
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016121 (Nat.choose (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) n)

end

end A162043.P11315319904620374893

/-! ## A162043.P12697005729612279519

`record[ceil(acot(n))*A125860(n)]`
-/

namespace A162043.P12697005729612279519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈SequenceMachineLib.acot (n : ℝ)⌉ * A125860 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A162043.P12697005729612279519

/-! ## A162043.P8688958474867335184

`Δ[A097713(A002998(n))]`
-/

namespace A162043.P8688958474867335184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097713 (A002998 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A162043.P8688958474867335184

/-!
# A162044: Number of n X n binary arrays with rows and columns, considered as binary numbers, in nondecreasing order, and no more than 2 ones in any row or column.

The programs for A162044, there is no canonical definition to state claims against.
-/

/-! ## A162044.P8702721448583797861

`A276086(n)+A000720(A370242(n+1))`
-/

namespace A162044.P8702721448583797861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276086 n + A000720 (A370242 (n + 1)).toNat

end

end A162044.P8702721448583797861

/-!
# A162047: Number of n X n binary arrays with rows and columns, considered as binary numbers, in nondecreasing order, and no more than 5 ones in any row or column.

The programs for A162047, there is no canonical definition to state claims against.
-/

/-! ## A162047.P17170943225492814156

`A171699(∑[4*(n+1)])`
-/

namespace A162047.P17170943225492814156
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171699 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A162047.P17170943225492814156

/-!
# A162048: Number of n X n binary arrays with rows and columns, considered as binary numbers, in nondecreasing order, and no more than 6 ones in any row or column.

The programs for A162048, there is no canonical definition to state claims against.
-/

/-! ## A162048.P7918726227951719406

`A374525(A014126(n))`
-/

namespace A162048.P7918726227951719406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374525 (A014126 n).toNat

end

end A162048.P7918726227951719406

/-! ## A162048.P18273345504146487427

`A089006((n+1)*A242093(n+1))`
-/

namespace A162048.P18273345504146487427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089006 ((n + 1 : ℤ) * A242093 (n + 1)).toNat

end

end A162048.P18273345504146487427

/-!
# A162049: Number of n X n binary arrays with rows and columns, considered as binary numbers, in nondecreasing order, and no more than 7 ones in any row or column.

The programs for A162049, there is no canonical definition to state claims against.
-/

/-! ## A162049.P10359864673544088774

`A089006(∑[A062947(n)])`
-/

namespace A162049.P10359864673544088774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062947 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089006 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A162049.P10359864673544088774

/-! ## A162049.P3034256749428052190

`A162051(∑[A060455(n)])`
-/

namespace A162049.P3034256749428052190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060455 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162051 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A162049.P3034256749428052190

/-! ## A162049.P1540835522187215881

`A089006((n+1)*A242093(n))`
-/

namespace A162049.P1540835522187215881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089006 ((n + 1 : ℤ) * A242093 n).toNat

end

end A162049.P1540835522187215881

/-!
# A162050: Number of n X n binary arrays with rows and columns, considered as binary numbers, in nondecreasing order, and no more than 8 ones in any row or column.

The programs for A162050, there is no canonical definition to state claims against.
-/

/-! ## A162050.P17005027480845277765

`A162051(∑[A131268(n)])`
-/

namespace A162050.P17005027480845277765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131268 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162051 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A162050.P17005027480845277765

/-! ## A162050.P6762099199133441343

`A089006(∑[A287022(n)])`
-/

namespace A162050.P6762099199133441343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287022 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089006 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A162050.P6762099199133441343

/-! ## A162050.P16496010114161612374

`A162051(∑[A277604(n)])`
-/

namespace A162050.P16496010114161612374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277604 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162051 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A162050.P16496010114161612374

/-!
# A162051: Number of n X n binary arrays with rows and columns, considered as binary numbers, in nondecreasing order, and no more than 9 ones in any row or column.

The programs for A162051, there is no canonical definition to state claims against.
-/

/-! ## A162051.P13932228103564874172

`A089006(A199343(n))`
-/

namespace A162051.P13932228103564874172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089006 (A199343 n).toNat

end

end A162051.P13932228103564874172

/-! ## A162051.P12037836598723438386

`A229794(∑[A082743(n)])`
-/

namespace A162051.P12037836598723438386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082743 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229794 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A162051.P12037836598723438386

/-! ## A162051.P7676895995430656282

`A229794(record[A053119(n)])`
-/

namespace A162051.P7676895995430656282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053119 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229794 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A162051.P7676895995430656282

/-! ## A162051.P9362212450732277843

`A229794(A050760(n+2))`
-/

namespace A162051.P9362212450732277843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229794 (A050760 (n + 2)).toNat

end

end A162051.P9362212450732277843

/-! ## A162051.P9730756920726821194

`A229794(∑[A061219(n+1)])`
-/

namespace A162051.P9730756920726821194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061219 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229794 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A162051.P9730756920726821194

/-!
# A162052: Number of n X n symmetric binary arrays with rows, considered as binary numbers, in nondecreasing order, and an even number of ones in each row.

The programs for A162052, there is no canonical definition to state claims against.
-/

/-! ## A162052.P9512751602408818292

`A243494(A044045(n))`
-/

namespace A162052.P9512751602408818292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243494 (A044045 n).toNat

end

end A162052.P9512751602408818292

/-! ## A162052.P18208976211390156000

`A225559(∑[A001831(n)])`
-/

namespace A162052.P18208976211390156000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001831 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225559 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A162052.P18208976211390156000

/-!
# A162053: Number of n X n binary arrays with rows and columns, considered as binary numbers, in nondecreasing order, and an even number of ones in each row or column.

The programs for A162053, there is no canonical definition to state claims against.
-/

/-! ## A162053.P13171718623548313825

`A001315(n)-A007954(A006896(n))`
-/

namespace A162053.P13171718623548313825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001315 n - A007954 (A006896 n).toNat

end

end A162053.P13171718623548313825

/-!
# A162054: Number of n X n symmetric binary arrays with rows, considered as binary numbers, in nondecreasing order, and an odd number of ones in each row.

The programs for A162054, there is no canonical definition to state claims against.
-/

/-! ## A162054.P7655851875312983025

`A048774(n)+∑[C(n, 2)]`
-/

namespace A162054.P7655851875312983025
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048774 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A162054.P7655851875312983025

/-! ## A162054.P17724665654575928008

`A087948(a(n-1))+n` with `a(0)=1, a(1)=1`
-/

namespace A162054.P17724665654575928008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A087948 (a (n - 1)).toNat + (n : ℤ)

end

end A162054.P17724665654575928008

/-!
# A162055: Number of n X n binary arrays with rows and columns, considered as binary numbers, in nondecreasing order, and an odd number of 1's in each row or column.

The programs for A162055, there is no canonical definition to state claims against.
-/

/-! ## A162055.P2060283849485025786

`and(-A006512(n+1), A332279(A000217(n)))`
-/

namespace A162055.P2060283849485025786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-A006512 (n + 1)) (A332279 (A000217 n).toNat)

end

end A162055.P2060283849485025786

/-! ## A162055.P17455191060124641350

`A062050(A097847(2*(n+1))*A220097(n))`
-/

namespace A162055.P17455191060124641350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062050 (A097847 (2 * (n + 1)) * A220097 n).toNat

end

end A162055.P17455191060124641350

/-!
# A162056: Number of n X n symmetric binary arrays with rows, considered as graycode numbers, in nondecreasing order.

The programs for A162056, there is no canonical definition to state claims against.
-/

/-! ## A162056.P13789657475525806811

`A162064(C(lt[0, ∏{digits}[n, #]], n))`
-/

namespace A162056.P13789657475525806811
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f3 n)).map fun (x : ℕ) => x).prod

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162064 (Nat.choose (SequenceMachineLib.nth (fun j => f1 j < f2 j) n) n)

end

end A162056.P13789657475525806811

/-! ## A162056.P1823340171471423456

`A162064(lt[lcm(6, (n+1)^3)/6, ∑{digits}[n, 10^#]])`
-/

namespace A162056.P1823340171471423456
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 6 ((n + 1) ^ 3) : ℚ) / 6

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f3 n)).map fun (x : ℕ) => 10 ^ x).sum

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162064 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n)

end

end A162056.P1823340171471423456

/-! ## A162056.P11369561041574710261

`A162064(gcd((n+1)²*(-1)^n, lt[0, ∏{digits}[n, (1-#)²]]))`
-/

namespace A162056.P11369561041574710261
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f3 n)).map fun (x : ℕ) => (1 - (x : ℤ)) ^ 2).prod

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162064 (Int.gcd (((n + 1) ^ 2 : ℤ) * (-1) ^ n) (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n : ℤ))

end

end A162056.P11369561041574710261

/-! ## A162056.P12959078264745318006

`A162064(A032555(n+1))`
-/

namespace A162056.P12959078264745318006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162064 (A032555 (n + 1)).toNat

end

end A162056.P12959078264745318006

/-! ## A162056.P17555207612226309453

`A162064(A073790(n)+1)`
-/

namespace A162056.P17555207612226309453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162064 (A073790 n + 1).toNat

end

end A162056.P17555207612226309453

/-!
# A162057: Number of n X n symmetric binary arrays with rows, considered as graycode numbers, in nondecreasing order, and no more than 2 ones in any row or column.

The programs for A162057, there is no canonical definition to state claims against.
-/

/-! ## A162057.P3186309303259811062

`A194806(2*A071729(n))`
-/

namespace A162057.P3186309303259811062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194806 (2 * A071729 n).toNat

end

end A162057.P3186309303259811062

/-! ## A162057.P375507256788085736

`A330143(A118986(n))+A002064(n)`
-/

namespace A162057.P375507256788085736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330143 (A118986 n).toNat + A002064 n

end

end A162057.P375507256788085736

/-!
# A162058: Number of n X n symmetric binary arrays with rows, considered as graycode numbers, in nondecreasing order, and no more than 3 ones in any row or column.

The programs for A162058, there is no canonical definition to state claims against.
-/

/-! ## A162058.P10760962814213096181

`A000720(A024822(n+2)+A000005(n+1)^n+7^n)`
-/

namespace A162058.P10760962814213096181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A024822 (n + 2) + (A000005 (n + 1) ^ n + (7 ^ n : ℤ))).toNat

end

end A162058.P10760962814213096181

/-!
# A162059: Number of n X n symmetric binary arrays with rows, considered as graycode numbers, in nondecreasing order, and no more than 4 ones in any row or column.

The programs for A162059, there is no canonical definition to state claims against.
-/

/-! ## A162059.P2283928304506350802

`A293993(2*n)+A226481(n)`
-/

namespace A162059.P2283928304506350802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293993 (2 * n) + A226481 n

end

end A162059.P2283928304506350802

/-!
# A162066: Number of n X n binary arrays with rows and columns, considered as graycode numbers, in nondecreasing order, and no more than 2 ones in any row or column.

The programs for A162066, there is no canonical definition to state claims against.
-/

/-! ## A162066.P3918419474621742171

`∑[A034973(A001006(2*n+3))]`
-/

namespace A162066.P3918419474621742171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034973 (A001006 (2 * n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A162066.P3918419474621742171

/-!
# A162074: Number of n X n symmetric binary arrays with rows, considered as graycode numbers, in nondecreasing order, and an even number of ones in each row.

The programs for A162074, there is no canonical definition to state claims against.
-/

/-! ## A162074.P5377740890620135392

`A353848(record[A107230(n)])`
-/

namespace A162074.P5377740890620135392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107230 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353848 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A162074.P5377740890620135392

/-! ## A162074.P16015981503904306921

`A353848(A060777(n+1))`
-/

namespace A162074.P16015981503904306921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353848 (A060777 (n + 1)).toNat

end

end A162074.P16015981503904306921

/-!
# A162075: Number of n X n binary arrays with rows and columns, considered as graycode numbers, in nondecreasing order, and an even number of 1's in each row or column.

The programs for A162075, there is no canonical definition to state claims against.
-/

/-! ## A162075.P6615622642404640235

`A072774(A224239(n+1))-A079693(2*(n+2))`
-/

namespace A162075.P6615622642404640235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072774 (A224239 (n + 1)).toNat - A079693 (2 * (n + 2))

end

end A162075.P6615622642404640235

/-!
# A162076: Number of n X n symmetric binary arrays with rows, considered as graycode numbers, in nondecreasing order, and an odd number of ones in each row.

The programs for A162076, there is no canonical definition to state claims against.
-/

/-! ## A162076.P7874987952400081465

`A100826(∏[or(1, n)])`
-/

namespace A162076.P7874987952400081465
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100826 (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A162076.P7874987952400081465

/-! ## A162076.P12236636941118850497

`A343228(or(1, n^n))`
-/

namespace A162076.P12236636941118850497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343228 (Nat.lor 1 (n ^ n))

end

end A162076.P12236636941118850497

/-!
# A162077: Number of n X n binary arrays with rows and columns, considered as graycode numbers, in nondecreasing order, and an odd number of ones in each row or column.

The programs for A162077, there is no canonical definition to state claims against.
-/

/-! ## A162077.P1421654797949570326

`A100795(10^∑[∑{e}[n, #]])`
-/

namespace A162077.P1421654797949570326
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100795 (10 ^ (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A162077.P1421654797949570326

/-!
# A162085: Number of n X n 0..2 arrays with rows and columns, considered as 3-ary numbers, in nondecreasing order.

The programs for A162085, there is no canonical definition to state claims against.
-/

/-! ## A162085.P12710560783401784453

`A229794(∑[n+2])`
-/

namespace A162085.P12710560783401784453
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229794 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A162085.P12710560783401784453

/-! ## A162085.P11041856694185044921

`A184137((n+1)²+n²)`
-/

namespace A162085.P11041856694185044921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184137 ((n + 1) ^ 2 + n ^ 2)

end

end A162085.P11041856694185044921

/-!
# A162086: Number of n X n 0..3 arrays with rows and columns, considered as 4-ary numbers, in nondecreasing order.

The programs for A162086, there is no canonical definition to state claims against.
-/

/-! ## A162086.P16148750009530410719

`A229794(∑[n+3]+1)`
-/

namespace A162086.P16148750009530410719
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229794 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A162086.P16148750009530410719

/-! ## A162086.P6685352819397090740

`A184129((n+1)²+n²)`
-/

namespace A162086.P6685352819397090740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184129 ((n + 1) ^ 2 + n ^ 2)

end

end A162086.P6685352819397090740

/-!
# A162087: Number of n X n 0..4 arrays with rows and columns, considered as 5-ary numbers, in nondecreasing order.

The programs for A162087, there is no canonical definition to state claims against.
-/

/-! ## A162087.P8089473071327350234

`A229794(C(n+4, 2)+n+1)`
-/

namespace A162087.P8089473071327350234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229794 (Nat.choose (n + 4) 2 + (n + 1))

end

end A162087.P8089473071327350234

/-! ## A162087.P8228863986147813077

`A229794(abs(n-2-∑[n+5]))`
-/

namespace A162087.P8228863986147813077
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229794 |(n : ℤ) - 2 - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)|.toNat

end

end A162087.P8228863986147813077

/-!
# A162088: Number of n X n 0..5 arrays with rows and columns, considered as 6-ary numbers, in nondecreasing order.

The programs for A162088, there is no canonical definition to state claims against.
-/

/-! ## A162088.P10346320123920768689

`A229794(Δ[A023545(n+1)])`
-/

namespace A162088.P10346320123920768689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229794 (f1 (n + 1) - f1 n).toNat

end

end A162088.P10346320123920768689

/-!
# A162089: 

The programs for A162089, there is no canonical definition to state claims against.
-/

/-! ## A162089.P15757044194135396848

`A229794(A052905(n+3))`
-/

namespace A162089.P15757044194135396848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229794 (A052905 (n + 3)).toNat

end

end A162089.P15757044194135396848

/-!
# A162092: Number of n X n symmetric binary arrays with rows, considered as binary numbers, in strictly increasing order, and no more than 2 ones in any row.

The programs for A162092, there is no canonical definition to state claims against.
-/

/-! ## A162092.P10843022133555089045

`A052545(n)+record[A336168(n)]`
-/

namespace A162092.P10843022133555089045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336168 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052545 n + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A162092.P10843022133555089045

/-! ## A162092.P17999383316976367405

`A024417(A082574(n+1)+2)`
-/

namespace A162092.P17999383316976367405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024417 (A082574 (n + 1) + 2).toNat

end

end A162092.P17999383316976367405

/-! ## A162092.P11472754960252681492

`A003059(A328111(n))+ceil(3^(n-1))`
-/

namespace A162092.P11472754960252681492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003059 (A328111 n).toNat + ⌈(3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉

end

end A162092.P11472754960252681492

/-!
# A162093: Number of n X n symmetric binary arrays with rows, considered as binary numbers, in strictly increasing order, and no more than 3 ones in any row.

The programs for A162093, there is no canonical definition to state claims against.
-/

/-! ## A162093.P14735384341893474638

`A213076(n+2)+dr(A098331(n))`
-/

namespace A162093.P14735384341893474638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213076 (n + 2) + (SequenceMachineLib.digitalRoot (A098331 n) : ℤ)

end

end A162093.P14735384341893474638

/-! ## A162093.P16335796774068867723

`A213076(n+2)+A163334(A065033(n))`
-/

namespace A162093.P16335796774068867723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213076 (n + 2) + A163334 (A065033 n).toNat

end

end A162093.P16335796774068867723

/-!
# A162094: Number of n X n symmetric binary arrays with rows, considered as binary numbers, in strictly increasing order, and no more than 4 ones in any row.

The programs for A162094, there is no canonical definition to state claims against.
-/

/-! ## A162094.P11321035565750960958

`A185150(9^n+5)`
-/

namespace A162094.P11321035565750960958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185150 (9 ^ n + 5)

end

end A162094.P11321035565750960958

/-!
# A162095: Number of n X n symmetric binary arrays with rows, considered as binary numbers, in strictly increasing order, and no more than 5 ones in any row.

The programs for A162095, there is no canonical definition to state claims against.
-/

/-! ## A162095.P13813833599842884752

`A162097((n+1)^(lcm(12, n)/12))`
-/

namespace A162095.P13813833599842884752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162097 (SequenceMachineLib.roundAway ((n + 1 : ℝ) ^ ((Nat.lcm 12 n : ℚ) / 12 : ℝ))).toNat

end

end A162095.P13813833599842884752

/-!
# A162096: Number of n X n symmetric binary arrays with rows, considered as binary numbers, in strictly increasing order, and no more than 6 ones in any row.

The programs for A162096, there is no canonical definition to state claims against.
-/

/-! ## A162096.P5656253499874283479

`A162097(∑[A014726(n)])`
-/

namespace A162096.P5656253499874283479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014726 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162097 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A162096.P5656253499874283479

/-! ## A162096.P10429534618786711687

`A162098(∑[A014726(n)])`
-/

namespace A162096.P10429534618786711687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014726 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162098 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A162096.P10429534618786711687

/-!
# A162097: Number of n X n symmetric binary arrays with rows, considered as binary numbers, in strictly increasing order, and no more than 7 ones in any row.

The programs for A162097, there is no canonical definition to state claims against.
-/

/-! ## A162097.P1288781979247366000

`A000027(A162098(n+1))`
-/

namespace A162097.P1288781979247366000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A162098 (n + 1)).toNat

end

end A162097.P1288781979247366000

/-! ## A162097.P1668721834517941485

`A000027(A162099(n+1))`
-/

namespace A162097.P1668721834517941485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A162099 (n + 1)).toNat

end

end A162097.P1668721834517941485

/-! ## A162097.P5539781467342938956

`A162099(∑[A286833(n+1)])`
-/

namespace A162097.P5539781467342938956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286833 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162099 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A162097.P5539781467342938956

/-!
# A162098: Number of n X n symmetric binary arrays with rows, considered as binary numbers, in strictly increasing order, and no more than 8 ones in any row.

The programs for A162098, there is no canonical definition to state claims against.
-/

/-! ## A162098.P8468957999210783802

`A162099((n+1)/∏{p}[n+1, #]*(n+1)/ceil(xor(n, n+1)/4))`
-/

namespace A162098.P8468957999210783802
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162099 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * ((n + 1 : ℚ) / (⌈(Nat.xor n (n + 1) : ℚ) / 4⌉ : ℚ)))).toNat

end

end A162098.P8468957999210783802

/-! ## A162098.P8888688281166106549

`A162099(∑[A286833(n)])`
-/

namespace A162098.P8888688281166106549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286833 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162099 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A162098.P8888688281166106549

/-! ## A162098.P1909521467643540529

`A162099(record[A239241(n)])`
-/

namespace A162098.P1909521467643540529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239241 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162099 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A162098.P1909521467643540529

/-! ## A162098.P18099620515671291269

`A162099(A000005(5^n))`
-/

namespace A162098.P18099620515671291269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162099 (A000005 (5 ^ n)).toNat

end

end A162098.P18099620515671291269

/-!
# A162099: Number of n X n symmetric binary arrays with rows, considered as binary numbers, in strictly increasing order, and no more than 9 ones in any row.

The programs for A162099, there is no canonical definition to state claims against.
-/

/-! ## A162099.P8633530698304879031

`A113080(∑[n+1]+2)+A008934(n+1)`
-/

namespace A162099.P8633530698304879031
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113080 (∑ j ∈ Finset.range (n + 1), f1 j + 2) + A008934 (n + 1)

end

end A162099.P8633530698304879031

/-! ## A162099.P604857962163040026

`A008934(n)+A008934(A082743(n))`
-/

namespace A162099.P604857962163040026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008934 n + A008934 (A082743 n).toNat

end

end A162099.P604857962163040026

/-! ## A162099.P12170730579959277237

`A008934(A032555(n+1))+A008934(n)`
-/

namespace A162099.P12170730579959277237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008934 (A032555 (n + 1)).toNat + A008934 n

end

end A162099.P12170730579959277237

/-! ## A162099.P3652307482989589301

`A008934(A032563(n+1))+A008934(n)`
-/

namespace A162099.P3652307482989589301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008934 (A032563 (n + 1)).toNat + A008934 n

end

end A162099.P3652307482989589301

/-! ## A162099.P5263078093100850004

`A008934(A056525(n+1))+A008934(n)`
-/

namespace A162099.P5263078093100850004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008934 (A056525 (n + 1)).toNat + A008934 n

end

end A162099.P5263078093100850004

